from mechanize import Browser
from lxml import etree
import sys
import cookielib
import os
import xml.etree.ElementTree
import psycopg2
import StringIO
import pycurl
import json
import time

TEST_FILE_DEF = "test.txt"
TRY_OPEN_404_DEF = 5

def perform_curl(method, request, data):
    try:
        c = pycurl.Curl() 
        c.setopt(pycurl.URL, request.encode())
        c.setopt(pycurl.FOLLOWLOCATION, 1)
        response = StringIO.StringIO()
        c.setopt(pycurl.WRITEFUNCTION, response.write)
        if (data != ""):
            c.setopt(pycurl.HTTPHEADER, ["Content-Type: application/json"])
            if (method == "POST"):
                c.setopt(pycurl.POST, 1)
            else:
                c.setopt(pycurl.CUSTOMREQUEST, method);
            c.setopt(pycurl.POSTFIELDSIZE, len(data));
            c.setopt(pycurl.POSTFIELDS, data);
        else:
            c.setopt(pycurl.CUSTOMREQUEST, method);
        success = False
        while not(success):
            try:
                c.perform()
                success = True
            except Exception, inst:
                if inst[0] != 6:
                    raise Exception("Internal error while executing " + method + " request " + request + " with data '" + data + "': " + str(inst))
        return response.getvalue()
    except Exception, inst:
        raise Exception("Internal error while executing " + method + " request " + request + " with data '" + data + "': " + str(inst))

def perform_curl_digest(request, user, password):
    try:
        c = pycurl.Curl() 
        c.setopt(pycurl.URL, request.encode())
        c.setopt(pycurl.FOLLOWLOCATION, 1)
        response = StringIO.StringIO()
        c.setopt(pycurl.WRITEFUNCTION, response.write)
        c.setopt(pycurl.USERPWD, user + ":" + password)
        c.setopt(pycurl.HTTPAUTH, pycurl.HTTPAUTH_DIGEST)
        success = False
        while not(success):
            try:
                c.perform()
                success = True
            except Exception, inst:
                if inst[0] != 6:
                    raise Exception("Internal error while executing " + method + " request " + request + " with data '" + data + "': " + str(inst))
        return response.getvalue()
    except Exception, inst:
        raise Exception("Internal error while executing " + method + " request " + request + " with data '" + data + "': " + str(inst))

def db_connect(conn_string):
    try:
        conn = psycopg2.connect(conn_string)
        conn.autocommit = True
        db = conn.cursor()
    except Exception, inst:
        raise Exception("Internal error: failed to connect to db with params " + conn_string + " because of " + str(inst))
    return (conn, db)

def exec_and_retrieve(db, sql, output = True):
    result = []
    try:
        db.execute(sql)
        if (output):
            res = db.fetchone()
            while (res != None):
                result += [{}]
                for j in range(len(db.description)):
                    if (res[j] == None):
                        result[-1][db.description[j].name] = None
                    else:
                        result[-1][db.description[j].name] = res[j]
                res = db.fetchone()
    except Exception, inst:
        raise Exception("Internal error while executing SQL command\n\t" + sql + "\nThe error is:\n\t" + str(inst))
    return result

def check_syntax(html, parser, lineno, save_anyway = None):
    try:
        tree = etree.XML(html, parser)
        if save_anyway:
            f = open(save_anyway, "w")
            f.write(html)
            f.close()
        return True
    except Exception as inst:
        print "HTML file obtained in line %d does not pass HTML validation, saved in file errors/error.%d.html" %(lineno, lineno)
        f = open("errors/error.%d.html" %lineno, "w")
        f.write(html)
        f.close()
        print "Error explanation: " + str(inst)
        return False

def xml_modify_rec(root, tag, value):
    if len(root) == 2:
        for i in [0, 1]:
            if root[i].tag == "param-name" and root[i].text == tag:
                root[(i + 1)%2].text = value
                return
    for child in root:
        xml_modify_rec(child, tag, value)

def xml_modify(xml_file, tag, value):
    root = xml.etree.ElementTree.parse(xml_file).getroot()
    xml_modify_rec(root, tag, value)
    content = xml.etree.ElementTree.tostring(root)
    f = open(xml_file, "w")
    f.write(content)
    f.close()

def get_image(html, line_ar):
    src_image = None
    count = int(line_ar[1])
    while count > 0 and src_image != -1:
        src_image = html[(0 if src_image == None else src_image + 1):].find("<img") + (0 if src_image == None else src_image + 1)
        count -= 1
    if src_image == -1 or src_image == None:
        return None
    close_tag = html[src_image:].find("/>")
    src_attr = html[src_image + 1:].find("src=")
    if close_tag < src_attr:
        return None
    src_image = (html[src_image:].split('src="'), html[src_image:].split("src='"))
    if len(src_image[0]) == 1 and len(src_image[1]) == 1:
        return None
    elif len(src_image[0]) != 1:
        return src_image[0][1].split('"')[0]
    else:
        return src_image[1][1].split("'")[0]

def get_struct(root):
    struct = {}
    struct["accounts"] = []
    struct["categories"] = []
    struct["products"] = []
    for account in root[0]:
        struct["accounts"] += [account.attrib]
    for cat in root[1]:
        struct["categories"] += [{"name": cat.attrib["name"]}]
        for elem in cat:
            if elem.tag == "{http://melatti.org/market}id":
                struct["categories"][-1]["id"] = elem.text
            elif elem.tag == "{http://melatti.org/market}image":
                if "src" in elem.attrib:
                    struct["categories"][-1]["image_src"] = elem.attrib["src"]
                if "alt" in elem.attrib:
                    struct["categories"][-1]["image_alt"] = elem.attrib["alt"]
            elif elem.tag == "{http://melatti.org/market}item":
                struct["products"] += [{"show": "show" not in elem.attrib or elem.attrib["show"] == "true", "idCat": struct["categories"][-1]["id"]}]
                for item_elem in elem:
                    if item_elem.tag != "{http://melatti.org/market}currency" and item_elem.tag != "{http://melatti.org/market}image":
                        struct["products"][-1][item_elem.tag.replace("{http://melatti.org/market}", "")] = item_elem.text
                    elif item_elem.tag == "{http://melatti.org/market}currency":
                        for curr in item_elem:
                            struct["products"][-1]["currency_" + curr.tag.replace("{http://melatti.org/market}", "")] = curr.text
                    else:
                        if "src" in item_elem.attrib:
                            struct["products"][-1]["image_src"] = item_elem.attrib["src"]
                        if "alt" in item_elem.attrib:
                            struct["products"][-1]["image_alt"] = item_elem.attrib["alt"]
    return struct

def from_xml_to_sql(db, xml_file, schema):
    root = xml.etree.ElementTree.parse(xml_file).getroot()
    struct = get_struct(root)
    sql = ""
    for account in struct["accounts"]:
        sql += "('%s', '%s'" %(account["username"], account["password"])
        if "realname" in account:
            sql += ", '%s'" %(account["realname"])
        else:
            sql += ", NULL"
        if "realsurname" in account:
            sql += ", '%s'" %(account["realsurname"])
        else:
            sql += ", NULL"
        sql += ", %s), " %(str(account["accountType"] == "administrator"))
    if sql:
        exec_and_retrieve(db, "ALTER SEQUENCE %s.account_id_seq RESTART" %schema, False)
        exec_and_retrieve(db, "INSERT INTO " + schema + ".account (username, password, realname, realsurname, is_admin) VALUES " + sql[:-2], False)
        exec_and_retrieve(db, "SELECT setval('" + schema + ".account_id_seq', " + str(len(struct["accounts"])) + ")", False)

    sql = ""
    cat_ids = []
    for cat in struct["categories"]:
        sql += "(%s, '%s'" %(cat["id"], cat["name"])
        cat_ids += [cat["id"]]
        if "image_src" in cat:
            sql += ", '%s'" %(cat["image_src"])
        else:
            sql += ", NULL"
        if "image_alt" in cat:
            sql += ", '%s'" %(cat["image_alt"])
        else:
            sql += ", NULL"
        sql += "), "
    if sql:
        exec_and_retrieve(db, "ALTER SEQUENCE %s.category_id_seq RESTART" %schema, False)
        exec_and_retrieve(db, "INSERT INTO " + schema + ". category (id, categ_name, image_path, image_descr) VALUES " + sql[:-2], False)
        exec_and_retrieve(db, "SELECT setval('" + schema + ".category_id_seq', " + str(len(struct["categories"])) + ")", False)

    sql = ""
    sql2 = ""
    currencies = {}
    item_id = 1
    for item in struct["products"]:
        sql += "(%d, '%s', %s, '%s', TIMESTAMP WITHOUT TIME ZONE '%s', %s" %(item_id, item["title"], item["price"], item["currency_name"], item["available"], str(item["show"]))
        sql2 += "(%d, %s), " %(item_id, item["idCat"])
        item_id += 1
        if item["currency_name"] not in currencies:
            currencies[item["currency_name"]] = {}
            if "currency_toEUR" in item:
                currencies[item["currency_name"]]["toEUR"] = item["currency_toEUR"]
            if "currency_toDollar" in item:
                currencies[item["currency_name"]]["toDollar"] = item["currency_toDollar"]
        if "description" in item:
            sql += ", '%s'" %(item["description"])
        else:
            sql += ", NULL"
        if "image_src" in item:
            sql += ", '%s'" %(item["image_src"])
        else:
            sql += ", NULL"
        if "image_alt" in item:
            sql += ", '%s'" %(item["image_alt"])
        else:
            sql += ", NULL"
        sql += "), "
    if sql:
        sql_curr = ""
        for curr in currencies:
            sql_curr += "('%s'" %(curr)
            if "toEUR" in currencies[curr]:
                sql_curr += ", %s" %(currencies[curr]["toEUR"])
            else:
                sql_curr += ", NULL"
            if "toDollar" in currencies[curr]:
                sql_curr += ", %s" %(currencies[curr]["toDollar"])
            else:
                sql_curr += ", NULL"
            sql_curr += "), "
        if sql_curr:
            exec_and_retrieve(db, "ALTER SEQUENCE %s.currency_id_seq RESTART" %schema, False)
            exec_and_retrieve(db, "INSERT INTO " + schema + ". currency (curr_name, to_EUR, to_dollar) VALUES " + sql_curr[:-2], False)
            exec_and_retrieve(db, "SELECT setval('" + schema + ".currency_id_seq', " + str(len(currencies)) + ")", False)
        exec_and_retrieve(db, "ALTER SEQUENCE %s.item_id_seq RESTART" %schema, False)
        exec_and_retrieve(db, "INSERT INTO " + schema + ". item (id, title, price, currency, available, show, description, image_path, image_descr) VALUES " + sql[:-2], False)
        exec_and_retrieve(db, "SELECT setval('" + schema + ".item_id_seq', " + str(len(struct["products"])) + ")", False)
        exec_and_retrieve(db, "ALTER SEQUENCE %s.categ_it_id_seq RESTART" %schema, False)
        exec_and_retrieve(db, "INSERT INTO " + schema + ". categ_it (item_id, categ_id) VALUES " + sql2[:-2], False)
        exec_and_retrieve(db, "SELECT setval('" + schema + ".categ_it_id_seq', " + str(len(struct["products"])) + ")", False)

def from_querystring_to_sql(schema, q):
    parts = q.split("/")
    res = "SELECT * FROM %s.%s" %(schema, parts[0])
    if (len(parts) > 1):
        if (parts[1][0] != "?"):
            res += " WHERE id = " + parts[1]
        else:
            first = True
            translate_op = {"eq": "=", "lt" : "<", "le": "<=", "gt" : ">", "ge": ">="}
            for p in parts[1].split("&"):
                if p.find("page_") == 0:
                    continue
                key_val = p.split("=")
                key_parts = key_val[0].split("_")
                res += " %s %s %s '%s'" %("WHERE" if first else "AND", str(key_parts[2:]).replace("['", "").replace("', '", "_").replace("']", ""), translate_op[key_parts[1]], key_val[1])
                first = False
    return res + " ORDER BY id"

def html_row(row, prec_dec, dec_attrs):
    formatf = "%." + prec_dec + "f"
    all_keys = row.keys()
    all_keys.sort()
    res = "<table><tr>"
    for key in all_keys:
        res += "<th>" + key + "</th>"
    res += "</tr><tr>"
    for key in all_keys:
        res += "<td>" + (str(row[key]) if key not in dec_attrs else (formatf %float(row[key]))) + "</td>"
    return res + "</tr></table>"
    
def cmp_html_db_res(html_rest, db_res, prec_dec, dec_attrs, page, max_rows):
    res = ""
    pointer = html_rest
    formatf = "%." + prec_dec + "f"
    for row in db_res[(page - 1)*max_rows:page*max_rows]:
        all_keys = row.keys()
        all_keys.sort()
        for key in all_keys:
            if row[key] != None:
                if key not in dec_attrs:
                    if isinstance(row[key], bool):
                        cmp_with_this = str(row[key]).replace("True", "true").replace("False", "false")
                    else:
                        cmp_with_this = str(row[key])
                else:
                    cmp_with_this = formatf %float(row[key])
            else:
                cmp_with_this = "null"
            found = pointer.find(cmp_with_this)
            if found == -1:
                res = "Missing the following row: " + html_row(row, prec_dec, dec_attrs)
                break
            pointer = pointer[found + 1:]
    return res

def post_from_data_to_sql(schema, table, d):
    j = json.loads(d)
    res = "BEGIN; "
    for row in j:
        res += "INSERT INTO %s.%s(" %(schema, table)
        for attr in row:
            res += attr + ", "
        res = res[:-2] + ") VALUES ("
        for attr in row:
            type_res = exec_and_retrieve(db, "select data_type from information_schema.columns where table_name = '%s' and column_name = '%s' and table_schema = '%s'" %(table, attr, schema), True)
            if type_res[0]["data_type"] == "timestamp without time zone":
                res += "TIMESTAMP WITHOUT TIME ZONE "
            res += "'" + str(row[attr]) + "', "
        res = res[:-2] + ") RETURNING id"
        for attr in row:
            res += ", " + attr
        res += "; "
    return res + "COMMIT;"

def put_from_data_to_sql(schema, table, d):
    j = json.loads(d)
    res = "BEGIN; "
    for row in j:
        res += "UPDATE %s.%s SET(" %(schema, table.split("/")[0])
        for attr in row:
            res += attr + ", "
        res = res[:-2] + ") = ("
        for attr in row:
            res += "'" + str(row[attr]) + "', "
        res = res[:-2] + ") WHERE id = '" + table.split("/")[1] + "' RETURNING id"
        for attr in row:
            res += ", " + attr
        res += "; "
    return res + "COMMIT;"

def cmp_insert_db_res(rest_res, conn, db, schema, table, json_str, prec_dec, dec_attrs, method):
    try:
        json_res = json.loads(rest_res)
    except Exception, inst:
        return "RESTful service did not answer with a JSON object: %s was returned" %rest_res
    if isinstance(json_res, dict) and "error" in json_res:
        if method == "POST":
            sql = post_from_data_to_sql(schema, table, json_str)
        else:
            sql = put_from_data_to_sql(schema, table, json_str)
        try:
            res = exec_and_retrieve(db, sql, True)
        except Exception, inst:
            j = {"error": str(inst)[str(inst).find("The error is:"):]}
            if (j == json_res):
                return ""
            return "Different errors when executing %s of %s: %s on the DB, %s on the RESTful service\n" %(method, json_str, json.dumps(j), json_res)
        return "It was possible to execute %s of %s without errors, but when executed on the RESTful service it returned %s\n" %(method, json_str, json_res)
    else:
        json_req = json.loads(json_str)
        # if len(json_res) != len(json_req):
        #     return "Mismatch between lengths: %d sent, %d returned by RESTful request" %(len(json_req), len(json_res))
        formatf = "%." + prec_dec + "f"
        other_i = 0
        for i in range(len(json_req)):
            if "id" in json_req[i]:
                is_id_present = exec_and_retrieve(db, "select id from %s.%s where id = %d" %(schema, table.split("/")[0], json_req[i]["id"]), True)
                if len(is_id_present) == 0:
                    continue
            for key in json_req[i]:
                if key not in json_res[other_i]:
                    return "Missing key %s" %(key)
                if key not in dec_attrs:
                    attr_res = exec_and_retrieve(db, "select data_type from information_schema.columns where column_name = '%s' and table_name = '%s' and table_schema = '%s'" %(key, table.split("/")[0], schema), True)
                    if attr_res[0]["data_type"].find("timestamp") == 0:
                        cmp_res = exec_and_retrieve(db, "select TIMESTAMP '%s' = TIMESTAMP '%s' as result" %(str(json_req[i][key]), str(json_res[other_i][key])), True)
                        cmp_this = [cmp_res[0]["result"], True]
                    elif attr_res[0]["data_type"] == "boolean":
                        cmp_this = [json_req[i][key] in ["True", "true", "t"], json_res[other_i][key]]
                    else:
                        cmp_this = [str(json_req[i][key]), str(json_res[other_i][key])]
                else:
                    cmp_this = [float(formatf %float(json_req[i][key])), json_res[other_i][key]]
                if cmp_this[0] != cmp_this[1]:
                    return "Mismatch in row number %d, attribute %s: value %s sent, %s retrieved" %(i, key, json_req[i][key], json_res[other_i][key])
            other_i += 1
        other_i = 0
        for i in range(len(json_req)):
            if "id" in json_req[i]:
                is_id_present = exec_and_retrieve(db, "select id from %s.%s where id = %d" %(schema, table.split("/")[0], json_req[i]["id"]), True)
                if len(is_id_present) == 0:
                    continue
            sql = "SELECT id"
            for key in json_req[i]:
                if key == "id":
                    continue
                sql += ", " + key
            sql += (" FROM %s.%s" %(schema, table.split("/")[0])) + " WHERE id = " + str(json_res[i]["id"])
            for key in json_req[i]:
                sql += " AND %s = %s" %(key, ("'" + str(json_req[i][key]) + "'") if key not in dec_attrs else (formatf %float(json_req[i][key])))
            res = exec_and_retrieve(db, sql, True)
            if (len(res) != 1):
                return "Row number %d, with value %s sent, does not seem to be stored on the DB" %(i, str(json_req[i]))
        return ""

def delete_from_data_to_sql(schema, db, table):
    res = "DELETE FROM %s.%s WHERE id = '%s' RETURNING id" %(schema, table.split("/")[0], table.split("/")[1])
    attr_res = exec_and_retrieve(db, "select column_name from information_schema.columns where table_name = '%s' and table_schema = '%s'" %(table.split("/")[0], schema), True)
    for attr in attr_res:
        if attr["column_name"] == "id":
            continue
        res += ", " + attr["column_name"]
    return res

def cmp_delete_db_res(rest_res, conn, db, schema, table, id_val):
    try:
        json_res = json.loads(rest_res)
    except Exception, inst:
        return "RESTful service did not answer with a JSON object: %s was returned" %rest_res
    if isinstance(json_res, dict) and "error" in json_res:
        sql = delete_from_data_to_sql(schema, db, table + "/" + str(id_val))
        try:
            res = exec_and_retrieve(db, sql, True)
        except Exception, inst:
            j = {"error": str(inst)[str(inst).find("The error is:"):]}
            if (j == json_res):
                return ""
            return "Different errors when executing %s of %s: %s on the DB, %s on the RESTful service\n" %(method, json_str, json.dumps(j), json_res)
        return "It was possible to execute DELETE %s without errors, but when executed on the RESTful service it returned %s\n" %(table, json_res)
    if len(json_res) > 1:
        return "Wrong JSON length: must be at most 1, %d returned instead\n" %(len(json_res))
    if len(json_res) == 0:
        sql = delete_from_data_to_sql(schema, db, table + "/" + str(id_val))
        try:
            res = exec_and_retrieve(db, sql, True)
        except Exception, inst:
            return "Executing %s of %s raised error %s on the DB, no error on the RESTful service\n" %(method, json_str, str(inst))
        if len(res) != 0:
            return "Executing %s of %s returned %s on the DB, returned the empty JSON on the RESTful service\n" %(method, json_str, json.dumps(res))
        return ""
    if "id" not in json_res[0]:
        return "Missing key \"id\" in JSON object returned by RESTful request\n"
    if json_res[0]["id"] != id_val:
        return "Wrong index: %d returned by RESTful request, %d expected\n" %(json_res[0]["id"], id_val)
    sql = "SELECT id FROM %s.%s WHERE id = %d" %(schema, table, id_val)
    res = exec_and_retrieve(db, sql, True)
    if (len(res) != 0):
        return "Row with id %d is still on the DB\n" %id_val
    return ""

if len(sys.argv) >= 2:
    test_file = sys.argv[1]
else:
    test_file = TEST_FILE_DEF
try:
    f = open("../WEB-INF/source/Makefile", "r")
    f.close()
except Exception as ex:
    print 'Unable to find file ../WEB-INF/source/Makefile, please refer to Section "Modalita\' di Consegna" of the project specifications'
    sys.exit(1)
try:
    f = open(test_file, "r")
except Exception as ex:
    print "Unable to open file test.txt because: " + str(ex)
    sys.exit(1)
test = f.readlines()
f.close()
parser = etree.XMLParser(ns_clean=True, resolve_entities=False)
br = Browser()
cj = cookielib.CookieJar()
br.set_cookiejar(cj)
br.addheaders = [('User-agent', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.1) Gecko/2008071615 Fedora/3.0.1-1.fc9 Firefox/3.0.1')]
lineno = 0
curr_test_passed = True
curr_test = 1
total_points = 0
points = 0
response = None
for line in test:
    try:
        #time.sleep(0.1)
        lineno += 1
        if line[0] == '#':
            continue
        line = line.replace("\n", "")
        line_ar = line.split("|")
        if line_ar[0] == "test_passed":
            if curr_test_passed:
                points += int(line_ar[1])
                print "Test " + str(int(curr_test)) + " passed! Added " + str(int(line_ar[1])) + " points, current score is " + str(int(points)) + "/" + str(total_points + int(line_ar[1]))
            else:
                print "Test " + str(int(curr_test)) + " did not pass! Lost " + str(int(line_ar[1])) + " points, current score is " + str(int(points)) + "/" + str(total_points + int(line_ar[1]))
            total_points += int(line_ar[1])
            curr_test += 1
            curr_test_passed = True
        elif curr_test_passed:
            if line_ar[0] == "copy":
                filename = os.path.join(*(line_ar[1].split("/")))
                try:
                    f = open(filename, "r")
                except Exception as ex:
                    print "Unable to open file " + line_ar[1] + " because: " + str(ex)
                    sys.exit(1)
                content = f.read()
                f.close()
                filename = os.path.join(*(line_ar[2].split("/")))
                try:
                    f = open(filename, "w")
                except Exception as ex:
                    print "Unable to open file " + line_ar[2] + " because: " + str(ex)
                    sys.exit(1)
                f.write(content)
                f.close()
            elif line_ar[0] == "open":
                count = 0
                # br.add_password(line_ar[1], "", "")
                while count < TRY_OPEN_404_DEF:
                    try:
                        response = br.open(line_ar[1])
                        break
                    except Exception as ex:
                        if str(ex) == "HTTP Error 404: Not Found":
                            count += 1
                        else:
                            raise(ex)
                br._factory.is_html = True
                curr_test_passed = check_syntax(response.get_data(), parser, lineno) and curr_test_passed
            elif line_ar[0] == "open_decl": #WARNING: cannot be further navigated, only to check auth
                count = 0
                # br.add_password(line_ar[1], line_ar[2], line_ar[3])
                res = perform_curl_digest(line_ar[1], line_ar[2], line_ar[3])
                if res.find("This request requires HTTP authentication") != -1 and line_ar[4] == "pass":
                    curr_test_passed = False
                    print "Page %s does not pass DIGEST authentication with user %s and password %s at line %d" %(line_ar[1], line_ar[2], line_ar[3], lineno)
                    continue
                if res.find("This request requires HTTP authentication") == -1 and line_ar[4] == "fail":
                    curr_test_passed = False
                    print "Page %s passes DIGEST authentication with user %s and password %s at line %d (it should not)" %(line_ar[1], line_ar[2], line_ar[3], lineno)
                    continue
                if res.find("This request requires HTTP authentication") != -1:
                    continue #The standard error page does not pass syntax check
                curr_test_passed = check_syntax(res, parser, lineno) and curr_test_passed
            elif line_ar[0] == "form":
                br.select_form(line_ar[1])
                inputs = {}
                for opt in line_ar[3:]:
                    if opt[0] != '"':
                        multiple = (opt[-1] == "+")
                        opt = opt[:-1]
                        inputs[opt] = [multiple, []]
                        last = opt
                    else:
                        inputs[last][1] += [opt[1:-1]]
                for name in inputs:
                    br[name] = inputs[name][1][0] if not(inputs[name][0]) else inputs[name][1]
                if line_ar[2] != "":
                    response = br.submit(line_ar[2])
                else:
                    response = br.submit()
                br._factory.is_html = True
                curr_test_passed = check_syntax(response.get_data(), parser, lineno) and curr_test_passed
            elif line_ar[0] == "link":
                try:
                    req = br.click_link(name=line_ar[1])
                    while count < TRY_OPEN_404_DEF:
                        try:
                            response = br.open(req)
                            break
                        except Exception as ex:
                            if str(ex) == "HTTP Error 404: Not Found":
                                count += 1
                            else:
                                raise(str(ex))
                    br._factory.is_html = True
                    curr_test_passed = check_syntax(response.get_data(), parser, lineno) and curr_test_passed
                except Exception as ex:
                    print "Cannot find link %s in HTML file obtained in line %d, saved in file errors/error.%d.html" %(line_ar[1], lineno, lineno)
                    filename = "errors/error.%d.html" %lineno
                    f = open(filename, "w")
                    f.write(response.get_data())
                    f.close()
                    curr_test_passed = False
            elif line_ar[0] == "save":
                filename = os.path.join(*(line_ar[1].split("/")))
                try:
                    f = open(filename, "w")
                except Exception as ex:
                    print "Unable to open file " + line_ar[1] + " because: " + str(ex)
                    sys.exit(1)
                f.write(response.get_data())
                f.close()
            elif line_ar[0] == "clear_cookies":
                cj.clear()
            elif line_ar[0] == "check_present":
                indexes = [response.get_data().find(item) for item in line_ar[1:]]
                indexes_sort = indexes[:]
                indexes_sort.sort()
                if indexes[:] != indexes_sort[:] or indexes_sort[0] == -1:
                    print "HTML file obtained in line %d does not pass check_present, saved in file errors/error.%d.html" %(lineno, lineno)
                    filename = "errors/error.%d.html" %lineno
                    f = open(filename, "w")
                    f.write("<!--Strings searched, should be present in ascending order: %s-->\n" %str(line_ar[1:]))
                    f.write("<!--Indexes: %s-->\n" %str(indexes))
                    f.write(response.get_data())
                    f.close()
                    curr_test_passed = False
            elif line_ar[0] == "check_not_present":
                indexes = [response.get_data().find(item) for item in line_ar[1:]]
                if set(indexes) != set([-1]):
                    print "HTML file obtained in line %d does not pass check_not_present, saved in file errors/error.%d.html" %(lineno, lineno)
                    filename = "errors/error.%d.html" %lineno
                    f = open(filename, "w")
                    f.write("<!--Strings searched should be NOT present: %s-->\n" %str(line_ar[1:]))
                    f.write("<!--Indexes: %s-->\n" %str(indexes))
                    f.write(response.get_data())
                    f.close()
                    curr_test_passed = False
            elif line_ar[0] == "block_cookies":
                # pol = cookielib.DefaultCookiePolicy()
                # pol.set_blocked_domains([line_ar[1]])
                # cj.set_policy(pol)
                cj.set_policy(cookielib.DefaultCookiePolicy(rfc2965=True, strict_ns_domain=cookielib.DefaultCookiePolicy.DomainStrict, allowed_domains=["out.com"]))
            elif line_ar[0] == "allow_cookies":
                # pol = cookielib.DefaultCookiePolicy()
                # pol.set_blocked_domains([])
                # cj.set_policy(pol)
                cj.set_policy(cookielib.DefaultCookiePolicy(rfc2965=True, strict_ns_domain=cookielib.DefaultCookiePolicy.DomainStrict, allowed_domains=None))
            elif line_ar[0] == "reload":
                br_man = Browser()
                cj_man = cookielib.CookieJar()
                br_man.set_cookiejar(cj_man)
                br_man.add_password('http://localhost:8080/manager/html/', login_manager, password_manager)
                response_man = br_man.open("http://localhost:8080/manager/html/")
                lines_man = response_man.get_data().splitlines()
                count_form = -1
                for line_man in lines_man:
                    if line_man.find("<form") != -1:
                        count_form += 1
                    if line_man.find("Reload") != -1 and line_man.find("restful%%5F2017%%5F%s" %matricola) != -1:
                        break
                br_man.select_form(nr = count_form)
                br_man.submit()
            elif line_ar[0] == "init":
                login_manager = line_ar[1]
                password_manager = line_ar[2]
                matricola = line_ar[3]
            elif line_ar[0] == "xml_modify":
                xml_modify(line_ar[1], line_ar[2], line_ar[3])
            elif line_ar[0] == "delete_all_db":
                (conn, db) = db_connect("dbname=%s host=localhost user=%s password=%s port=5432" %(line_ar[1], line_ar[2], line_ar[3]))
                d = open(line_ar[4], "r")
                db_ddl = d.readlines()
                d.close()
                inside_db = False
                for line_ddl in db_ddl:
                    if line_ddl == ("\\c " + line_ar[1]) + ";\n":
                        inside_db = True
                    elif line_ddl[0:2] == "\\c":
                        inside_db = False
                    elif line_ddl.find("create table") == 0 and inside_db:
                        try:
                            exec_and_retrieve(db, "drop table %s cascade" %line_ddl.split()[2], False)
                        except Exception as ex:
                            raise Exception("Unable to delete table " + line_ddl.split()[2] + " because of " + str(ex))
                inside = False
                inside_db = False
                sql = ""
                for line_ddl in db_ddl:
                    if line_ddl == ("\\c " + line_ar[1]) + ";\n":
                        inside_db = True
                    elif line_ddl[0:2] == "\\c":
                        inside_db = False
                    elif not(inside) and inside_db and line_ddl.find("create table") == 0:
                        inside = True
                        sql += line_ddl.replace("\n", "")
                    elif inside and line_ddl == ");\n":
                        inside = False
                        sql += ")"
                        try:
                            exec_and_retrieve(db, sql, False)
                        except Exception as ex:
                            raise Exception("Unable to perform DDL query " + sql + " because of " + str(ex))
                        sql = ""
                    elif inside:
                        sql += line_ddl.replace("\n", "")
                db.close()
                conn.close()
            elif line_ar[0] == "load_database_from_xml":
                (conn, db) = db_connect("dbname=%s host=localhost user=%s password=%s port=5432" %(line_ar[3], line_ar[4], line_ar[5]))
                try:
                    from_xml_to_sql(db, line_ar[1], line_ar[2])
                except Exception as ex:
                    raise Exception("Unable to load DB from XML file " + line_ar[1] + " because of " + str(ex))
                db.close()
                conn.close()
            elif line_ar[0] == "load_database_from_sql":
                (conn, db) = db_connect("dbname=%s host=localhost user=%s password=%s port=5432" %(line_ar[3], line_ar[4], line_ar[5]))
                try:
                    d = open(line_ar[1], "r")
                    db_sql = d.readlines()
                    d.close()
                    for sql in db_sql:
                        if sql == "":
                            continue
                        exec_and_retrieve(db, sql, False)
                except Exception as ex:
                    raise Exception("Unable to load DB from XML file " + line_ar[1] + " because of " + str(ex))
                db.close()
                conn.close()
            elif line_ar[0] == "check_if_equal":
                htmls = {}
                for i in [1, 2]:
                    while count < TRY_OPEN_404_DEF:
                        try:
                            response = br.open(line_ar[i])
                            break
                        except Exception as ex:
                            if str(ex) == "HTTP Error 404: Not Found":
                                count += 1
                            else:
                                raise(ex)
                    br._factory.is_html = True
                    htmls[i] = response.get_data()
                if htmls[1] != htmls[2]:
                    print "HTML files %s and %s obtained in line %d does not pass check_if_equal; see errors/error.%d.%s.html and errors/error.%d.%s.html " %(line_ar[1], line_ar[2], lineno, lineno, line_ar[1].split("/")[-1], lineno, line_ar[2].split("/")[-1])
                    for i in [1, 2]:
                        f = open("errors/error.%d.%s.html" %(lineno, line_ar[i].split("/")[-1]), "w")
                        f.write(htmls[i])
                        f.close()
                    curr_test_passed = False
            elif line_ar[0] == "check_if_equal_html" or line_ar[0] == "check_if_equal_json":
                if line_ar[0] == "check_if_equal_json":
                    rest_res = perform_curl("GET", line_ar[5] + line_ar[6], "")
                else:
                    while count < TRY_OPEN_404_DEF:
                        try:
                            response = br.open(line_ar[5] + line_ar[6])
                            break
                        except Exception as ex:
                            if str(ex) == "HTTP Error 404: Not Found":
                                count += 1
                            else:
                                raise(ex)
                    br._factory.is_html = True
                    rest_res = response.get_data()
                (conn, db) = db_connect("dbname=%s host=localhost user=%s password=%s port=5432" %(line_ar[2], line_ar[3], line_ar[4]))
                db_res = exec_and_retrieve(db, from_querystring_to_sql(line_ar[1], line_ar[6]), True)
                db.close()
                conn.close()
                diffs_res = cmp_html_db_res(rest_res, db_res, line_ar[7], line_ar[8:-2], int(line_ar[-2]), int(line_ar[-1]))
                if diffs_res != "":
                    curr_test_passed = False
                    filename = "errors/error.%d.html" %lineno
                    f = open(filename, "w")
                    f.write(diffs_res + rest_res)
                    f.close()
                    print "Request %s does not pass check_if_equal_html at line %d, check %s for details" %(line_ar[5] + line_ar[6], lineno, filename)
            elif line_ar[0] == "check_post" or line_ar[0] == "check_put":
                method = "POST" if line_ar[0] == "check_post" else "PUT"
                rest_res = perform_curl(method, line_ar[5] + line_ar[6], line_ar[7])
                (conn, db) = db_connect("dbname=%s host=localhost user=%s password=%s port=5432" %(line_ar[2], line_ar[3], line_ar[4]))
                diffs_res = cmp_insert_db_res(rest_res, conn, db, line_ar[1], line_ar[6], line_ar[7], line_ar[8], line_ar[9:], method)
                db.close()
                conn.close()
                if diffs_res != "":
                    curr_test_passed = False
                    filename = "errors/error.%d.html" %lineno
                    f = open(filename, "w")
                    f.write(diffs_res + rest_res)
                    f.close()
                    print "Request %s with data %s does not pass %s at line %d, check %s for details" %(line_ar[5] + line_ar[6], line_ar[7], line_ar[0], lineno, filename)
            elif line_ar[0] == "check_delete":
                rest_res = perform_curl("DELETE", line_ar[5] + line_ar[6], "")
                (conn, db) = db_connect("dbname=%s host=localhost user=%s password=%s port=5432" %(line_ar[2], line_ar[3], line_ar[4]))
                diffs_res = cmp_delete_db_res(rest_res, conn, db, line_ar[1], line_ar[6].split("/")[0], int(line_ar[6].split("/")[1]))
                db.close()
                conn.close()
                if diffs_res != "":
                    curr_test_passed = False
                    filename = "errors/error.%d.html" %lineno
                    f = open(filename, "w")
                    f.write(diffs_res + rest_res)
                    f.close()
                    print "Request %s does not pass check_delete at line %d, check %s for details" %(line_ar[5] + line_ar[6], lineno, filename)
            elif line_ar[0] == "exit":
                print "Exiting as required; correction aborted"
                sys.exit(1)
    except Exception as ex:
        if response != None:
            print "\n\nSomething went wrong at line %d of %s (line %d of main.py): %s\nLast available page is errors/error.%d.html" %(lineno, test_file, sys.exc_info()[-1].tb_lineno, str(ex), lineno)
            f = open("errors/error.%d.html" %lineno, "w")
            f.write(response.get_data())
            f.close()
        else:
            print "\n\nSomething went wrong at line %d of %s (line %d of main.py): %s\n" %(lineno, test_file, sys.exc_info()[-1].tb_lineno, str(ex))
        curr_test_passed = False
print "\n\nPROJECT EVALUATION: " + str(points) + "/" + str(total_points) + "\n"
db.close()
conn.close()

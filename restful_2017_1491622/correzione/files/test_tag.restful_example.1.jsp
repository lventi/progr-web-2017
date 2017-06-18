
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns = "http://www.w3.org/1999/xhtml" >
<head><title>RESTful Customized Tag Test</title></head>
<body>
<%!
        void printidResult(JspWriter out, bean.RestResult idResult) throws java.io.IOException {
	    out.println("<p>Whole result: " + (idResult.getJson() != null? idResult.getJson() : "") + "</p>");
	    out.println("<p>It contains " + (idResult.getNumRows()) + " rows</p>");
	    int i, j;
	    for (i = 0; i < idResult.getNumRows(); i++) {
		idResult.setIdRow(i);
		out.println("<p>" + i + "-th row is " + (idResult.isValidRow()? "" : "not ") + "valid</p>");
		out.println("<p>" + i + "-th row: " + idResult.getJsonRow() + "</p>");
		for (j = 0; j < idResult.getNumCols(); j++) {
		    idResult.setIdCol(j);
		    out.println("<p>" + j + "-th column is " + (idResult.isValidCol()? "" : "not ") + "valid</p>");
		    out.println("<p> Value at " + i + "-th row and " + j + "-th column is " + idResult.getValue() + "</p>");
		}
		idResult.setIdCol(j);
		out.println("<p>" + j + "-th column is " + (idResult.isValidCol()? "" : "not ") + "valid</p>");
	    }
	    idResult.setIdRow(i);
	    out.println("<p>" + i + "-th row is " + (idResult.isValidRow()? "" : "not ") + "valid</p>");
	}
%>
<%@ taglib uri="/WEB-INF/tld.tld" prefix="test"%>
<%
    bean.RestResult idResult;
%>
<test:rest table='category'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='GET' idRest='4'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' query='attr_lt_categ_name=06yuasYH7WBCRIF2NL&attr_le_id=3&attr_le_image_descr=GhTBYJ3OoyDerXnV8SRi&attr_lt_image_path=wWnv19TUXEy3fKxjFG4e'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='POST' json='[{"categ_name": "WKMHAjtOo15SGui0s", "image_path": "QgBxoe5NWVrnPhds049", "image_descr": "mGrfpxR5wA"}, {"categ_name": "TzbVkaYOFopZmxNjc", "image_path": "AKJi46b7HktT", "image_descr": "3tPws7p4VYN5Z80J"}, {"categ_name": "5IAEHNkKGMd8CJ", "image_path": "Iu160Jd8KecvS", "image_descr": "hLHiymIdgUCw"}, {"categ_name": "i4reVDUs6Zt", "image_path": "uAKTIaFe3f", "image_descr": "UZTfIsh3CQK"}, {"categ_name": "3LH0xaVokzbumdY", "image_path": "5X7C9oDiqJY84lB", "image_descr": "3RI5oDJ9sWa7FhUO"}, {"categ_name": "By4r0I1AhLK", "image_path": "3i5QrjzaS0VqC", "image_descr": "yB2xN16TIuAdbHO"}, {"categ_name": "Xs5IecrWjo", "image_path": "IyGTUcza9C", "image_descr": "Ix32uoLadsZSDv"}, {"categ_name": "C0WQeuR5x2Js8vIzUB", "image_path": "umcV9sqxUE7", "image_descr": "dUkjFf4S6IoJ"}, {"categ_name": "lF1ZrfD9A683jkTaRq2V", "image_path": "O1KxTEbucIe0jGd", "image_descr": "IVcnTkXbMe"}, {"categ_name": "JIUmvCfROZ5kKD96b7", "image_path": "4V6c0MRixJUzB3vlL", "image_descr": "fIuv2Np6YMVOUcFhG"}, {"categ_name": "Kf2Q4iqgFbov5s", "image_path": "9dI7fKgMlqOm0pxj", "image_descr": "dKRXsmBMLTjSJx31ab9y"}, {"categ_name": "uZMY687fyU", "image_path": "p0anRXJ5C1", "image_descr": "bdvuJsglMo"}, {"categ_name": "49BF5G3eRW8q1SY0", "image_path": "voNtXSlkm0PgJnwR", "image_descr": "jb9PWM8hL3R05TO1er"}, {"categ_name": "HqcB4G2Z7nMOb", "image_path": "0taD87mSeOL5VoG", "image_descr": "xkM4gEV3lQ0dW"}, {"categ_name": "sE3YtGSwbn", "image_path": "ZkcuV1FaGH", "image_descr": "VX3Ah4LUkj9layrwGQd"}, {"categ_name": "sS7GCldK12BEcYW3wDO", "image_path": "uCSD9QdY1Ugtxnp", "image_descr": "TozDOpVAdc1NM9B"}, {"categ_name": "J6Y8ikXRPNsWeK", "image_path": "12diTZOFwUfu", "image_descr": "WUKhNrptxs0Bj2iQ7G"}, {"categ_name": "rEXkO25n4pRH", "image_path": "KY2BOwCbptoGy8nmu", "image_descr": "KVyNk2ZLa18mi6QO"}, {"categ_name": "Z4reuVoMapnEQxK", "image_path": "53CBwmo8x1l", "image_descr": "KlYnpq9PosJLUgGvh"}, {"categ_name": "jJKN83peQvMZB", "image_path": "X40QztCYUP", "image_descr": "TpHfeLoAxNDbjKEZSRX8"}, {"categ_name": "F7sYEBCZmeayqzk39w", "image_path": "24n6h0xlQVoPZUqzCHR", "image_descr": "HcN8AeaFkWzh7PO4wuZg"}, {"categ_name": "0D5aC4Ytv2eXqrk", "image_path": "qTJHce0fVKUON4d", "image_descr": "cwsCH7UStAYI"}, {"categ_name": "Yn6NOMoaxgDmuKry", "image_path": "7zkoWVbuDAJ4El6Knq", "image_descr": "PchutarF96woKjYvC5"}, {"categ_name": "cOLhwSGVF7kmx6TJe9o", "image_path": "T6zQhMONI0kpSurPo", "image_descr": "k5CFLTnIiSDM32vUH"}, {"categ_name": "0AbgxS2lXEFtwWyON", "image_path": "WuAVkFaZpJ9Cb", "image_descr": "t7QOoLgmPeHcXhr"}, {"categ_name": "QRj0Oq1DCoyukEKI", "image_path": "vXU1e9gwVTECtYfP3cn", "image_descr": "jh5CLvKUAkWyYc"}, {"categ_name": "5wrHQehc3W1fG", "image_path": "bFlJKWLnoBj5", "image_descr": "VXKgwGSHDfI"}, {"categ_name": "FgLads20b7Q8VTt", "image_path": "uBKDsbtLvIJ5o", "image_descr": "1WEAw5R6cT7VKCXgBLfU"}, {"categ_name": "GhgdMTc7Q9NmHY", "image_path": "nMtKuPml8WZzog5ywiT", "image_descr": "e0jFoElfV8"}, {"categ_name": "sAeYcp4qHyKWzUCl36", "image_path": "IjHeKO6oJz1qLtYSv", "image_descr": "S6e7pl8mcI"}, {"categ_name": "NRYFvbz3ji", "image_path": "ENM6vYXPjQ1aKF0", "image_descr": "g0zsU4dvANfp2"}, {"categ_name": "PJ6ARbkjdhs0c1NZg5lF", "image_path": "vDLe1igFGy0B", "image_descr": "5AoJvKdz9bPjhqFyDL"}, {"categ_name": "NCyV4wt2ST", "image_path": "pa7dokWB63e2CA", "image_descr": "yrUFtjBpIVn6u"}, {"categ_name": "irp9qvbRsgBuJWUym", "image_path": "uVxfR2Xck0tP", "image_descr": "a8QMZFYUqxo4POKTG"}, {"categ_name": "V2IckjifJbW1wytaoT", "image_path": "KzdL6FEQtjX4SuTY", "image_descr": "CMyqNXR4h9n80mPrv"}, {"categ_name": "ZBzHtOl3JgRDUkGKcv", "image_path": "7jNTKazeqCJ8SOX1muL", "image_descr": "gIa9KnJ3r6L"}, {"categ_name": "9t6rdQpsED", "image_path": "Nkr3HjuFp7Oz0Z56", "image_descr": "SWsycOq9nKExXPTAM1U"}, {"categ_name": "PGoKaDI4QUd25siYwZ", "image_path": "MqxsGtljEb", "image_descr": "opKQ30XG6kb"}, {"categ_name": "i48J3fglphDj", "image_path": "rHN6QI7LWU", "image_descr": "YfGdSZs9CJ"}, {"categ_name": "IZ98rn7cLPuK", "image_path": "X7aQCHOrgWp4kKMJ", "image_descr": "xRi79aZmOkAnc"}, {"categ_name": "WBRGXQATNyic5nv4D8LH", "image_path": "waGLC36DpAhQ", "image_descr": "Xdp3T0qVI7"}, {"categ_name": "nNidKjgyYXFhSvTmwUb", "image_path": "BLfeZDSVdC2n79q", "image_descr": "EWZe1lzkjXdp"}, {"categ_name": "daKxAsLS7VRIQj", "image_path": "jQzly9aoMegST1NRnc", "image_descr": "MRriE0sSC7"}, {"categ_name": "lji0Q6DsYvUXHNr", "image_path": "gETG9Q1ROpAFC", "image_descr": "O48yk9RoiqZeEt"}, {"categ_name": "QPMzZtwTUhNR3", "image_path": "huBq9VZs3HD2MrnY4", "image_descr": "PryazGZYR4"}, {"categ_name": "K1afTzvg74y2Zir", "image_path": "EQLx0guMW8sZ1l", "image_descr": "uFTkYxJcN8G"}, {"categ_name": "v3ATwq78YsFOu5Lr2Uo", "image_path": "W8CdiDoOsPR7ceNfH", "image_descr": "mFgO6u5b2B7LWNPhv4"}, {"categ_name": "XEajPBgDwnmqWdQty2", "image_path": "PCu1IR4k2qclVDp7yibW", "image_descr": "etOElnC1VRSDaJ9rIP"}, {"categ_name": "2DTv3GC5t7dylu", "image_path": "5gpVza9Fh8LAGu", "image_descr": "KpMb1qhifPd"}, {"categ_name": "V5wUx9OsGd", "image_path": "OlYf2cNgPoKjmibxh18", "image_descr": "PsWz3RAoOjSd"}, {"categ_name": "FspxYICUAW8v", "image_path": "m5yK1xToAYwF2jZ6U7sX", "image_descr": "5eHEX0Op8mxS"}, {"categ_name": "1ApJzrgU5qtwnfaD8", "image_path": "WtFLZ0sG948oX3AuPEC", "image_descr": "6AzqUY3uO9yf7ep1I0HC"}, {"categ_name": "2hKUb3eVQv", "image_path": "2yHKfcWZbnP", "image_descr": "jPh6HuqnisX1pGToRa"}, {"categ_name": "Y2PHZGFN8UnDxJ05Xg7", "image_path": "1FRKGLpgWPYStl0v97", "image_descr": "sVdEPbqvmHNXLkZ5O"}, {"categ_name": "rXsADetd2ZiBhOVw", "image_path": "XcyYsdEmZAuJt6z8wCNv", "image_descr": "H4VNbxOUag5n"}, {"categ_name": "ZhPSKjGstb7VR6", "image_path": "TWEb3DmAplCiuG8jZ", "image_descr": "90Z3sRVeXWKPDI51rb"}, {"categ_name": "0ck5or1xf4", "image_path": "D3qEzMoALS", "image_descr": "D3aTlo0RUCvGOqJ8Eys"}, {"categ_name": "WEVoHrKxYGvC1ckdit", "image_path": "HkEQxP23GK", "image_descr": "K0v6Q5audF3ngI"}, {"categ_name": "uGjXis9f7vCaEQJxP", "image_path": "IiAlLPJz1bEH", "image_descr": "QCPeS9cpuFkgGjK"}, {"categ_name": "SzDu6fyh9QGEPaniJo", "image_path": "nwKhc3OoietH07IXPV1", "image_descr": "N0r29KnXilp4"}, {"categ_name": "EThB5gdxK78yuDQOSCRU", "image_path": "jQVbsy2gAd6h3pum", "image_descr": "Xuz3av5fRs2"}, {"categ_name": "2Cq5RAscBbtP6L", "image_path": "bNmxAOZHMQPVz3qCE", "image_descr": "KTqYuNGgmUJXpMAi"}, {"categ_name": "rGfIgClYPp5yhm9AF", "image_path": "w5K2AmnhvQci", "image_descr": "FuIz8di3v59gh"}, {"categ_name": "8ZpvxEbkXeV", "image_path": "eE0B5GlyVQcxniaP9z", "image_descr": "ex5tEP9MoALyzvpK6"}, {"categ_name": "o2nDSd8mEtJL", "image_path": "aYdE1UVqJmIkWQXAbD", "image_descr": "8hgp4YAMBcP"}, {"categ_name": "a9mhPBzJCS2", "image_path": "bjGmzuWp48", "image_descr": "ojikzDfWsmQUrHvO"}, {"categ_name": "p6RBNirUWduZ", "image_path": "SdesNinL2hp", "image_descr": "ZLkMKgQSlBfOqVX9"}, {"categ_name": "kSIsbraULZj2HwM7icd", "image_path": "hXUbtLTevV7DCH", "image_descr": "EPeg7FmX5b0VqfRs9Nr"}, {"categ_name": "UZVM0mF3rg", "image_path": "WMNGb7sxe0SQn25", "image_descr": "XhP6H7LWqYvtlUrToVe"}, {"categ_name": "YshS698WezVvET50Hc", "image_path": "06VtIoNcQik8BMZ", "image_descr": "KrptjkC1wA"}, {"categ_name": "6CA9GQJ5Tl2bKDwtxSYi", "image_path": "2wExhub0JG", "image_descr": "km4nFlJrBitOS"}, {"categ_name": "KwXJbfpT1MUYZ7h2Bry", "image_path": "a5dps7QF6K41WVkuB", "image_descr": "S2qNG97apOjd3"}, {"categ_name": "6NrJgYcA1GvRjVbPiL", "image_path": "9PSIfALk64cQMxGNbX", "image_descr": "tHf9bejYzNlv1uCky"}, {"categ_name": "34P2osDiZGhApJ0UjK", "image_path": "qQFsKzIuDg", "image_descr": "a12cEmTSoIr"}, {"categ_name": "mbB6zZ4igE", "image_path": "HGpFM3fz2AtqSJmBKZ1", "image_descr": "MUEamBqn6dfCk"}, {"categ_name": "zeEg2Th5AwPFZ", "image_path": "OGm26cwXr8uM1ZzPKn", "image_descr": "Vv8ZUuowersij"}, {"categ_name": "XHWIsoPiJaf4t", "image_path": "PQjH1aW0FYxJscmR2UL", "image_descr": "kR20NcFdJDHWmS1"}, {"categ_name": "5JxWryOzLXKEapm1VP", "image_path": "QD6E12r8vuGkNT", "image_descr": "snKiBcxMCHIPhV"}, {"categ_name": "2JeXYmAkgh65Cav", "image_path": "CTKVdcSb9NBo", "image_descr": "k0MBbw1O3F7dI2Vqvj"}, {"categ_name": "7KYegpRy9maioWPO4", "image_path": "kyRYDa0KITv5jpN", "image_descr": "QYtK8kXdxE"}, {"categ_name": "5JwrOlPBcfEt17", "image_path": "WAEyBplLcYR", "image_descr": "i8MwRZH5nCd3SDV"}, {"categ_name": "DdTuFk0sSPx", "image_path": "aWcZJPbD8B", "image_descr": "Mvi5QtPoRayb"}, {"categ_name": "tLTgv0WznsRbjNSG", "image_path": "qBRhpMOsEz76", "image_descr": "cs5SPAX86rR"}, {"categ_name": "xndj3tuh7Q", "image_path": "xPSpieEgX3nhzrGBc", "image_descr": "c0EnZQ8M2gARhye"}, {"categ_name": "wyds8gbe2W1hcBtA3", "image_path": "hYnogDEyqv", "image_descr": "VOrclhiUys"}, {"categ_name": "Lw8eSXZzhu", "image_path": "GixlDCL9tjn5KvHV", "image_descr": "jxKJ9L1lwuSVQXfsb48"}, {"categ_name": "MakFiKRDWQ9", "image_path": "O3BVn9qFrUgyHRkY1", "image_descr": "pkHjgGfVCclZ6X"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='1' json='[{"categ_name": "PHzty7hDv042sFVlfW", "id": 1, "image_descr": "3WGng1mNSyo", "image_path": "Phjv30xmkYWbg1NoaRME"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='2' json='[{"categ_name": "02QC1Tzhu6bxINE8Ki", "id": 2, "image_descr": "jgUc8hR4JQ", "image_path": "7JaGunPMWKv9"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='3' json='[{"categ_name": "iLlyCocK6IwzsnJX3uRb", "id": 3, "image_descr": "ziIayXmocRVlAnfJL", "image_path": "aBo4dQfZw8ixkLUN6P"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='4' json='[{"categ_name": "VPOzvr5GXesiRWZuKB0L", "id": 4, "image_descr": "BqrNoeFWt0", "image_path": "8EPXuK4jpmgShlTNDcdv"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='5' json='[{"categ_name": "NdAIShxMVu5", "id": 5, "image_descr": "NEAegHDaplf", "image_path": "pqNYDJz6LjM9ZSQW"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='6' json='[{"categ_name": "0tQpbKY7RnIrgwZF", "id": 6, "image_descr": "Utun31G9fp", "image_path": "SwIduRVe7v84fLYQxHDt"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='7' json='[{"categ_name": "aiPfD6EToKO0g", "id": 7, "image_descr": "eJ0cgzh17pIZ2bPj8Su", "image_path": "2pcmFzTt9l4BqOiAhnZ"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='8' json='[{"categ_name": "UwMKmsiIlrP1jT", "id": 8, "image_descr": "Dp35JHquYVOofT7cmh8", "image_path": "e5cDtXJ2UOq"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='9' json='[{"categ_name": "CJ50o7ZriKWwu1Nl3", "id": 9, "image_descr": "X4ek9hbKuVriFIHMST3D", "image_path": "JesfCpF2i7n"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='10' json='[{"categ_name": "lxYHOdNG5J9Z2o", "id": 10, "image_descr": "ziTo0Z3yt6bVMw7NDguH", "image_path": "PLxVZ2gX6N"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='11' json='[{"categ_name": "oCSVEBmKkIn", "id": 11, "image_descr": "MuaPepQ2hn3Y0bv7zO", "image_path": "wjuQl6vNPA"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='12' json='[{"categ_name": "yhrcL2DJVK", "id": 12, "image_descr": "pDkv5YG2rzxoV1i", "image_path": "fmvR5CqEXnJxT1zBI"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='13' json='[{"categ_name": "ejotHE37YQ", "id": 13, "image_descr": "JrmSy6OdNWZ", "image_path": "TinRmZpUIl2kj7Cd"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='14' json='[{"categ_name": "XLz0jm6k1g", "id": 14, "image_descr": "tEydcx6XLJhVkHjO2C5", "image_path": "vPU5GXibpwD"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='15' json='[{"categ_name": "IEugiTJVKbO8XLtp5", "id": 15, "image_descr": "fqK4clmLrBjbG", "image_path": "yGbohIYA4OjpE"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='16' json='[{"categ_name": "gRmtIMWaxBYZKDzje0", "id": 16, "image_descr": "3F1KfYh6MVn8uZjb", "image_path": "MWVe3FY8A2LNp"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='17' json='[{"categ_name": "85sFPHizKTeVfmQhn0", "id": 17, "image_descr": "Ph5poxM3nbYmukyOjU", "image_path": "EGo4RUXzZh"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='18' json='[{"categ_name": "dBFO5pYRqwVyae4r19", "id": 18, "image_descr": "nlYA5cywkLH3I9", "image_path": "83QSAuLJ4vjib7FegEG0"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='19' json='[{"categ_name": "x7rGmnaN1HMQ0hoAgZbs", "id": 19, "image_descr": "CB2V7i9hErFaUuLxX", "image_path": "QjsraBulObyeEV4IcRPt"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='20' json='[{"categ_name": "yqvctQJVGgplhIMC", "id": 20, "image_descr": "ZsvEy9XCjUeBmc", "image_path": "Byvl5mkeQguNrRbq4Ji"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='21' json='[{"categ_name": "VNdGbP5Fore", "id": 21, "image_descr": "g6puOzlLEI9SB", "image_path": "yErisPbDoJRlV178WaN"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='22' json='[{"categ_name": "kY7oSOUT6JzcaL", "id": 22, "image_descr": "Z0jhnR73tUmOqueQNaB", "image_path": "qt7iDUPYfyIrdXpCc0"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='23' json='[{"categ_name": "u1acfTLC7DjQqUR", "id": 23, "image_descr": "adrfuJXthm0LPy", "image_path": "am9Cshqd3I7ergzB"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='24' json='[{"categ_name": "dzWR3MTYNtifg", "id": 24, "image_descr": "8cAZ3hVaeKU9TFjB", "image_path": "VTeOyJrQtD0"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='25' json='[{"categ_name": "Zz8j3XRsIupFmc6Pt2", "id": 25, "image_descr": "FNVhZa0H6xzTi", "image_path": "hscCTmZfJ24zG"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='26' json='[{"categ_name": "jey7vwlNTf1JDmBLb", "id": 26, "image_descr": "Frcmx0PqjwX9VfdEDS", "image_path": "ArXcNtwmquxlMjZPn"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='27' json='[{"categ_name": "SlP2Az10eHVd", "id": 27, "image_descr": "meE215sZVMU8Kt", "image_path": "i30p8axmqAyZ"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='28' json='[{"categ_name": "rdykCq6sR8mShe", "id": 28, "image_descr": "fAU7cSJeIr", "image_path": "czWj1InhadXS"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='29' json='[{"categ_name": "KomkriCjGcT42uWBVz9g", "id": 29, "image_descr": "5VJvHPpkGrj2OFg13Al", "image_path": "6rOtoNAnVq"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='30' json='[{"categ_name": "B1MzLWtFh6pC8EyuOx", "id": 30, "image_descr": "JSiaxyeKA4RhnEFl", "image_path": "HrQMLxWzbpFhSduR"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='31' json='[{"categ_name": "gjv7GbSAkat", "id": 31, "image_descr": "MKCUczqAWVau", "image_path": "kr5N6HIfE21Gj"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='32' json='[{"categ_name": "EDGfzR83naj24PSK9Wy", "id": 32, "image_descr": "QB75N2nErjavU", "image_path": "nbOZNjapTK9"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='22'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='23'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='24'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='25'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='26'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='27'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='28'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='29'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='30'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='31'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='32'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='33'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='34'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='35'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='36'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='37'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='38'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='39'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='40'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='41'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='42'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='43'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='44'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='45'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='46'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='47'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='48'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='49'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='50'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='51'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='52'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='53'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='54'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='55'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='56'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='57'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='58'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='59'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='60'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='61'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='62'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='63'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='64'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='65'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='66'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='67'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='68'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='69'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='70'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='71'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='72'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='73'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='74'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='75'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='76'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='77'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='78'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='79'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='80'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='81'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='82'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='83'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='84'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='GET'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='GET' query='attr_gt_username=okLSQXd4mvKDhaJp&attr_eq_realname=FrBQOR3ZNbvU&attr_ge_is_admin=false&attr_ge_realsurname=0Amx5cTYn3DotjZ1pVq&attr_lt_password=leNkDdqo2HB58raIsKzv&attr_gt_id=1'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='POST' json='[{"username": "w0cdkITlHmR3SFPh", "realsurname": "Zu4958l1k7iKzqFPNx", "password": "Ps6cz3VnDMNhmw", "is_admin": "false", "realname": "dmEXCZtJT7fW9Kw"}, {"username": "9opgkVTxuWYQ", "realsurname": "mNF7RHVhqz", "password": "SO9hWVpcL6UnkfFYm4bs", "is_admin": "true", "realname": "fKL8UxHDegMWE"}, {"username": "dW7b8F9wUETzY4AKQhX", "realsurname": "JGCoqfayUr2TP6lYL", "password": "y3M9dUIuhV", "is_admin": "false", "realname": "S0AO5yVDqZJxRL"}, {"username": "nd0rDVFXTvN", "realsurname": "4jLd5Kx1CcOniwBf0Wh6", "password": "auib80hdMeXALTYI", "is_admin": "false", "realname": "P6VEQbOXxaJ8FGrSLg"}, {"username": "QRqDEz86GWfK", "realsurname": "1O248MTRxHmuv6Y", "password": "Feda7j8kfv1RPHB02", "is_admin": "false", "realname": "k83zKP4xMJD2"}, {"username": "hlbBd0Fj8UTRkLDPaC", "realsurname": "OaZ5bICAsPzfNQ", "password": "vtjK1I4uQkyWalJ5", "is_admin": "false", "realname": "1GXTwkoq7j6mpZavO"}, {"username": "SApFvP5V71b6sRhLn", "realsurname": "SpGzFCPd4QisOkwjxYZD", "password": "R8i6NleTrHDydIs1", "is_admin": "false", "realname": "BMl1mNcbsafG2vex8F"}, {"username": "zWqQ2Yr1vKSxTk7LDyFP", "realsurname": "G3bBrgkZ6qfc", "password": "arJzobx6VcpMAF0q9S", "is_admin": "true", "realname": "y0YEv4URwpqCK"}, {"username": "VWDZrdpLfUw23SbE97qm", "realsurname": "XWzDokrF5JUR9aVH", "password": "v1y8GxkFSPh90", "is_admin": "true", "realname": "qvWOJNsGfkAnpR"}, {"username": "tY0C1wfNiUrgjI9", "realsurname": "Dh2aukvsYcp7", "password": "mZa3Ck6DSMou1IJKs9G7", "is_admin": "false", "realname": "Qk1etxvSD3f2KPWpu50"}, {"username": "jczwu2PeaIXdpHS", "realsurname": "tNFvenL8ZyM", "password": "enNW2av4uyGBxY0s", "is_admin": "false", "realname": "LriyOKzjaxglHp3DV4"}, {"username": "2x7v3XMZfGOWd1", "realsurname": "fvwoa8C6VM", "password": "GZdjCPLnUX8", "is_admin": "false", "realname": "j54Lol8zwd"}, {"username": "rSYps02BWLf", "realsurname": "GEZDJBvl9RonqCM2rp", "password": "Iwo3TFCJicH8", "is_admin": "false", "realname": "tQyvn4KzF0squ"}, {"username": "ABxWYlqcIRTLn", "realsurname": "KxdRBfrkUpZacnCPst", "password": "pnP94voshVg", "is_admin": "true", "realname": "bH7SeBjo5QZTJrcW"}, {"username": "nZlWxp5s7C8dqMuh", "realsurname": "bafG4ptoIw6K", "password": "6Vn83xQHoe7ubT", "is_admin": "false", "realname": "lZnNaYcJboOPfH"}, {"username": "uCkxUia2YJhwn4tR", "realsurname": "HF6TvauWYe5pQqj3R", "password": "khrGPgwLTEvZd", "is_admin": "false", "realname": "V3aldy68rmT4cifkXEg"}, {"username": "eTELchqG72d0VwFKmi", "realsurname": "kswLTrjegdoRBECDAix", "password": "skaTtRPgLwWC5zmFGKV", "is_admin": "true", "realname": "W39iJVzdtw1D"}, {"username": "yGHzCtw53x", "realsurname": "BLNOF2uVC59eqXsgG", "password": "rgYbSd8a5zvmfoHXE", "is_admin": "false", "realname": "zhNysYD56ZRtA2"}, {"username": "nKsgbLk5JlY6", "realsurname": "4cLmyaYnb68P", "password": "sU38BXCN1EcmgYiy6M7", "is_admin": "true", "realname": "4fAHTy5gdp1EaVXZikR"}, {"username": "kMo1D8yKagN072xH6Brv", "realsurname": "S6rb0pNhiCa5Lo", "password": "mb65VlLhJoRNzc", "is_admin": "false", "realname": "i6cPDYxdJNpv4rzCI1"}, {"username": "aGsn0ClxiEJf", "realsurname": "iMEG72rDge3K", "password": "Ii6qyXR24EOTw", "is_admin": "true", "realname": "0VT2ftx6dUq3"}, {"username": "JBz6tNxGcPgklFM", "realsurname": "TGi5knXCJ7elzfu", "password": "56txbMzO3dNfo", "is_admin": "false", "realname": "4xt3TIzgRQ"}, {"username": "nOG4LfIVQkrxt", "realsurname": "WeBMtdZo29", "password": "UNHlxJOVpjynh4w5Qa", "is_admin": "false", "realname": "iSsfomEIBTW2rC"}, {"username": "dDUvbXj5zpHheMP", "realsurname": "jes1v7xrKVXE", "password": "Y5kGP2xvoA", "is_admin": "true", "realname": "1rIjiAeHPzVXv6"}, {"username": "l5hzg9DAjwq", "realsurname": "soRPJjIQFV95ABa1bhdH", "password": "icMwAgmLoRS", "is_admin": "false", "realname": "528v4KyYeZrA"}, {"username": "G2Rjhmbz60JaC", "realsurname": "ui8AmCdOKazvsLrfkS5", "password": "m5eBtvIzrXoqELihTZJj", "is_admin": "false", "realname": "uENlm23LIiMGJpd"}, {"username": "9TDXyMUfA21", "realsurname": "ZVGlRuNB0wLo2Mfgay", "password": "X1BEubqoywUcDrl", "is_admin": "true", "realname": "DS7ptlJ6mdYox"}, {"username": "T9G5MCYmoOelgK7Dz", "realsurname": "OgidNmu0MYfzoySqaswb", "password": "8NESGn6oH9JTYI", "is_admin": "false", "realname": "f4cCWtgT2F6"}, {"username": "BZ6Jbsqucezf", "realsurname": "PNJahL6pfWSj", "password": "DqSfUc35mou8", "is_admin": "true", "realname": "BTcawFZ9HoM6Ufk"}, {"username": "tYujPRLIdn8aNGiJg", "realsurname": "vxtAKWV8CIzm", "password": "cmsHt4hZFqQgr3i", "is_admin": "false", "realname": "lHXovRPUzS0r"}, {"username": "HIYRbk41F6NXptcQqj8O", "realsurname": "qxbDFrGNEM", "password": "lMSXO2I3ZAFs8xC", "is_admin": "false", "realname": "osDY84EN3g"}, {"username": "PaBJuGvUcTnxR0S", "realsurname": "kXu6HjTGN1KtyvfqgQFO", "password": "aEifBW0Y9HZeDpkM", "is_admin": "false", "realname": "eiYzTuF5Kpd"}, {"username": "1MyBYFPoEvGzbkWf6", "realsurname": "EF2XAhJvfVeOI3T", "password": "DpjNt2syLCFm6gKZTI7", "is_admin": "false", "realname": "qrNw2u3mf5Ul"}, {"username": "tDu0UzVbjF78knv6CEo", "realsurname": "sgYLTaMqAB0oRD6", "password": "So8Cawpvx7JudX", "is_admin": "false", "realname": "UvM4uQrOsCzobLTD2qH7"}, {"username": "Uw1zehgyuZDY", "realsurname": "DIuGb2oElm", "password": "XxB4UjLw9dq6o", "is_admin": "false", "realname": "BvSFioJCwTUhyr95LlD"}, {"username": "OhMy5Le1BxU09f", "realsurname": "Xcu4ghQ1li0N67fr", "password": "S47P8tHJ20uN1cjw5", "is_admin": "true", "realname": "vHxadTqwXozC9"}, {"username": "mLx2qNd6krpbh5nH", "realsurname": "10ZHI3VtndiCWNcwXLf7", "password": "NTdVhMbQZWeEGC8g", "is_admin": "true", "realname": "j2GRSzI3POtgZB9ix"}, {"username": "sQGy94xKmEkVha", "realsurname": "lYO7DJP0kXHCv", "password": "b5hv9Yncstei8B2m", "is_admin": "true", "realname": "tW93B5DmeYnyi"}, {"username": "2Yw58GRgJCnEy9e", "realsurname": "grYqosd5tGnX6Ue", "password": "6rwDaSfdW5A1oHcM", "is_admin": "true", "realname": "uD8y5jHLOh740XQ"}, {"username": "rRQdUnS3vjIC64Mkb", "realsurname": "fvWGcCwTyEdgADL", "password": "ZhXUQ7o2DT6dviEqC9l", "is_admin": "true", "realname": "S0AkW3OoU7N6iVYXIzZQ"}, {"username": "rxhV59asdcSH3T80oANP", "realsurname": "2sYFlzwNZcPO", "password": "D0gr4q3GlCEeBPA67", "is_admin": "true", "realname": "OMlevjGZU7XDAs1"}, {"username": "XlN4y26fThsp3", "realsurname": "qcajOl6YWg2mzCnkoLAM", "password": "iTAo5LOKVt9Ec1BNvSG", "is_admin": "true", "realname": "n9UdvFNrYXmGMje4WKos"}, {"username": "5t1AKGHshdTaCI29Mc", "realsurname": "OT7D4IwXcxHUAYufQR", "password": "A4D71Bzy2hmJUO6VKaMs", "is_admin": "true", "realname": "S97twLuW6yX25l0mizfU"}, {"username": "DAblTnHwOR3sFQUckV78", "realsurname": "vM9o5fTRmQeYH", "password": "waUWnsdkEgTV2flqJj", "is_admin": "false", "realname": "PgZatYRSIbHL"}, {"username": "8nWbBm6SfhjQxVPCoplZ", "realsurname": "TeAzMhGSsE4yUKfNFoc", "password": "cAgnobqQjONLs8mI", "is_admin": "true", "realname": "SECxWMqdaPfku0Dm7JVg"}, {"username": "OjBvR9qkCJVxcnI", "realsurname": "MsGrqmkdcS", "password": "3uZwOtGVqI6mgB", "is_admin": "false", "realname": "U0dpmkXJnNiKRHhzve"}, {"username": "P0b1qpkhXN9w5EVdjcuy", "realsurname": "2rkxJ8VRB5cnp", "password": "2RYcTv1CNz", "is_admin": "true", "realname": "Hio3JShaGnpFNgZs"}, {"username": "fVURDqAljOzMsmF", "realsurname": "qbudRzfkC9", "password": "1CfG4XzsNxLYHqenyW2E", "is_admin": "true", "realname": "4dQts8iO15hP9zAnNoY"}, {"username": "OYe0FuEDb8U", "realsurname": "4pvOe5yWHuhkVqPKX3QA", "password": "TrM6qk2Vlwyt", "is_admin": "true", "realname": "cIMPfN18EGXhng4z"}, {"username": "NR0PiCFaouvhqn2Tewkf", "realsurname": "hdRKV42bEFkQsGAN", "password": "EKLTJFb6jPugWfs7kxdn", "is_admin": "false", "realname": "Qwic4rguh0kRE"}, {"username": "aiq0oZxuw3HRe", "realsurname": "GXsLjgwVx1lqyJ2QM", "password": "s3OA1XC4kSGy", "is_admin": "true", "realname": "RGhzBDr3LkSiEa"}, {"username": "0sJDPScBapLgX", "realsurname": "gSdFJB4DbqmRw9", "password": "gDPaGYL7p1r", "is_admin": "true", "realname": "yoS31nxEOfwum2UGAg7v"}, {"username": "FgMt9y57qJdriSmpTH", "realsurname": "Si6XTDvAoPk", "password": "ABrLlHtkxN8UE5s", "is_admin": "false", "realname": "zlWk3v6OdILusy"}, {"username": "N8mPYFJMhs6Ioi3TfBq", "realsurname": "or5jFVxDnyt0", "password": "sFmh3XLkYJuwNQ4", "is_admin": "true", "realname": "nd9cQ3Y7MrejFlmCa"}, {"username": "gUSlI8mN9Fdvj1MpJa4R", "realsurname": "9vf7TgrMNxFseQhi", "password": "SUcwfkiJEKuys", "is_admin": "false", "realname": "GB6qAjEf2h40eritbPy"}, {"username": "CLcJbyS7ExDis", "realsurname": "Zdzug7qtwjfI2lUBH9W", "password": "dTkAZMajquGp", "is_admin": "true", "realname": "dr7gj1UXvMnwbpDz"}, {"username": "DSArCgevocf", "realsurname": "vHVbkzQCN6BEuUlJIi", "password": "liveupoK7WBmryD", "is_admin": "true", "realname": "iO6W87SDBrPenYujvR0"}, {"username": "uhnofa2z86CZ9q", "realsurname": "QypBlWPK2vGH0E", "password": "nMTL5ervKWHt", "is_admin": "false", "realname": "wpK4WaVsOm"}, {"username": "euiwdTLm2YNvCRtOD7", "realsurname": "zjeTia9sENJVG7RCu", "password": "UAe7cJXkyjNst0lxSKY", "is_admin": "true", "realname": "k4HE2YwMx3V1PFiGDZ"}, {"username": "1d3sFvwKQ4I", "realsurname": "5xDdhlIWTykLcgU", "password": "0AU6vl8J5ExGZHQez", "is_admin": "true", "realname": "JaOpQv15724Lg"}, {"username": "GYsXpkrzM4", "realsurname": "kluTfZGsCd1MHJtV3", "password": "9NnYV1zMZJ", "is_admin": "false", "realname": "6N1YhU4B7ILSaeTsFV0"}, {"username": "6UmzYrDjgNCnLPW", "realsurname": "yhTnx2KerXAd", "password": "UHscSdB1mfJD", "is_admin": "false", "realname": "uVBjIZKYmk"}, {"username": "bDfIZGhYrs8myOuFRHo", "realsurname": "dlY5Mz98h6LU0v", "password": "be3h5SLJrAd2K49CyGBx", "is_admin": "true", "realname": "rDBavx4kTt2XfRG"}, {"username": "T9dCy8LHOpjeFx16", "realsurname": "StGzFlKXV5cxbR3q", "password": "R4MeBOnQxFWuNd2", "is_admin": "true", "realname": "t5klz2dj1TIYx"}, {"username": "nZBdb967Ax0uFzQqPU", "realsurname": "4kEHtG97cfmdSMsF", "password": "YBZ9AW5MQUX7", "is_admin": "true", "realname": "6Qhr1TwgXqdpavKAly"}, {"username": "1tgYCsrTfWj5UGBLK", "realsurname": "H2O0p4EqsAWGyk", "password": "pJhcVjrzZNot7", "is_admin": "false", "realname": "WLqrx2fwCvZc51O"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='1' json='[{"username": "L4sX8fUFHdDIuzSEW", "realname": "vAKp5hQHz79Wqs", "realsurname": "fRnpeorX8ki2wEGZcIJ", "is_admin": "false", "password": "DvjMUKgqNdYQ4c", "id": 1}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='2' json='[{"username": "QzamCATIpNoy", "realname": "HoZXs6wCLBEKT7gd5", "realsurname": "Q4pli6OEcwmF8s", "is_admin": "false", "password": "liNQ1xPgbn", "id": 2}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='3' json='[{"username": "4GVQvc9zOHu7qZAMakN", "realname": "DduLaM7gjbeN", "realsurname": "EnSyBQU3WoCN7FhJe8V6", "is_admin": "true", "password": "OyswujJ4C8xQWilnGd7", "id": 3}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='4' json='[{"username": "f6G4jFDOlB", "realname": "mAqLVN1ODni", "realsurname": "iZE7nDPTBVd1Hh34NwUe", "is_admin": "true", "password": "kW4HCUuvDeryS7O23", "id": 4}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='5' json='[{"username": "Oea2diVPrsytC", "realname": "ZuOdnv6CHV", "realsurname": "Z5hrWq0PiyBtnX9", "is_admin": "false", "password": "Q2ktzSGx83Eqa", "id": 5}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='6' json='[{"username": "tJdYEv2KObrDwzaP", "realname": "JOUde8N2iI5yXv7n", "realsurname": "D01g6VUy7rG3ekqv", "is_admin": "true", "password": "Q2ckhCobJ6eyj0X", "id": 6}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='7' json='[{"username": "7vx9qXPVoApFa8kYH", "realname": "YcLiC305bjHg4uN8UZD6", "realsurname": "pCsXxWDioVja4cM", "is_admin": "false", "password": "pMkWXSeI8x", "id": 7}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='8' json='[{"username": "YG3jVM519ZPw", "realname": "Ucn1hop5T0NYW8iwx", "realsurname": "gERVickmWz0GdAhXQ", "is_admin": "true", "password": "csj5xiBdTYVAn4DKv", "id": 8}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='9' json='[{"username": "fy9tqAEwsPGI1RWzS2j6", "realname": "dLa5NnEJwU", "realsurname": "z31DeUY8j65vx", "is_admin": "true", "password": "XYjhHtK3nf", "id": 9}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='10' json='[{"username": "4Ys9jdnPg8BTeZy", "realname": "dTbCowlqNn", "realsurname": "KuiFtvxogbwDVSG", "is_admin": "true", "password": "qGV9klsv75wJYU0iug", "id": 10}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='11' json='[{"username": "OUMshYIApko8bL5HDz", "realname": "bNQ3PwrULidZ", "realsurname": "ego8N4SCkd", "is_admin": "false", "password": "OhcUQPoN0jpLIw", "id": 11}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='12' json='[{"username": "aOtLmx8upMQVjFgEyon", "realname": "fPLHDgE5SI", "realsurname": "mxuMN9YoCZh", "is_admin": "true", "password": "3AXNQpgVraxZ28t160Ku", "id": 12}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='13' json='[{"username": "zFRHu4n0c2VCLxr", "realname": "qrmRvPChE3", "realsurname": "bVJ2BEGsecn79qM4C1", "is_admin": "true", "password": "qUkjDlxYQrEAsW7X", "id": 13}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='14' json='[{"username": "PEcC39kX0QuLIOb", "realname": "EOivDj9hzdW5YQn4Gqc", "realsurname": "JN9P2gncueF", "is_admin": "false", "password": "KC6S7mfWypt", "id": 14}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='15' json='[{"username": "5pQGDOYxhStqk", "realname": "rgY6ICzNdo59", "realsurname": "EwTImtZQvs5ji8JrMd", "is_admin": "true", "password": "ilOQDaE91fybAv", "id": 15}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='16' json='[{"username": "ZJ6WeiMnGSYdIL", "realname": "JQIP7T46GxS18jbXkzH", "realsurname": "j431vdthqwW", "is_admin": "false", "password": "efsbOIE8MGg", "id": 16}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='17' json='[{"username": "4thpfgkUFEuaG6", "realname": "tZrJDFPeN8gkXIWK", "realsurname": "NgtpyK6FlGQ", "is_admin": "true", "password": "Z0fvlCNExjwBMUyJ4s", "id": 17}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='18' json='[{"username": "qAle9OxWvFGSPj5", "realname": "JijcdGyQq5gO6sXP", "realsurname": "skdfGIvViQqNCzo", "is_admin": "true", "password": "tEuGcqFgBNoAJ7fr84", "id": 18}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='19' json='[{"username": "m1AyQ3FMOVWCZIPEaiz", "realname": "yDwZ1rcx2fR", "realsurname": "j7p5PBqHFRbd", "is_admin": "true", "password": "xBQOoPJFzreKujhg3vD", "id": 19}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='20' json='[{"username": "YfO4drWUCMDh7X", "realname": "b9X8aGAwfdL", "realsurname": "NEKXnciDkOo70FPV5IJ", "is_admin": "false", "password": "IikeAMK6G4OFT", "id": 20}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='21' json='[{"username": "kCxgBdOAFNjWw", "realname": "oEtuD6BQep", "realsurname": "U6SXoZQcEAt4Ms", "is_admin": "true", "password": "yOPYAnzHrLK", "id": 21}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='22' json='[{"username": "uIpFZ3RxO7gs", "realname": "0Xf4M2lcndFypRvaTzZ", "realsurname": "JUl69AyDY7zP0QMWxSBV", "is_admin": "false", "password": "pNfsSQjDJa7bZwRL", "id": 22}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='23' json='[{"username": "wmNCr3YxM7p8c4UsI", "realname": "uhrfR42FLbgN", "realsurname": "LRwZkYOTtCQ65", "is_admin": "true", "password": "DpLFNnQVhc1iOgTr", "id": 23}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='24' json='[{"username": "JhLnuqe8o3KRtZBYH", "realname": "B10gzImlyjYnLbao", "realsurname": "cuhP7d8vge", "is_admin": "true", "password": "tIsq180zDR", "id": 24}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='25' json='[{"username": "g3p6wPiUsjmnktHD2O8Z", "realname": "vrs54uJye1LGFn2ZY", "realsurname": "eZ0yumJC3YnHdSWcf", "is_admin": "false", "password": "HVTf8t4vUCPcWKgq6mY", "id": 25}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='26' json='[{"username": "6A2JWXSxhR9MHCLzB", "realname": "T3M7sBh8bEdNGeq", "realsurname": "w1vcgWexu6aYNAlCb7Bz", "is_admin": "true", "password": "xQ9yLiHBjEIh5YenN1", "id": 26}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='27' json='[{"username": "PYwRx6M3ySme9g", "realname": "yGZDM9ixcF0JWp", "realsurname": "ejJA9oQ7bLOgtYc", "is_admin": "true", "password": "SWR743ke8PFfmj2C6giL", "id": 27}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='PUT' idRest='28' json='[{"username": "WLtBbjeoqY5XMzNa", "realname": "F0C4OSIELgUxaBV6qenw", "realsurname": "8L1RrSEqodTZ0blsCwjW", "is_admin": "true", "password": "4fBiC0WpmVUkKx91XLz", "id": 28}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='52'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='53'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='54'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='55'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='56'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='57'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='58'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='59'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='60'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='61'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='62'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='63'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='64'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='65'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='66'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='67'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='68'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='69'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='70'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='71'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='72'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='73'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='74'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='75'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='76'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='77'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='78'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='79'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='80'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='account' method='DELETE' idRest='81'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>

</body>
</html>

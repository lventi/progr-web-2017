
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
<test:rest table='aut_lib'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' idRest='14'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='GET' idRest='13'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='GET' idRest='16'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='GET' idRest='22'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='GET' idRest='4'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' idRest='10'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' idRest='21'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='GET' query='attr_lt_libroid=22&attr_le_autoreid=21&attr_ge_ultima_modifica=2005-03-12&attr_ge_id=23'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='POST' json='[{"libroid": "3", "autoreid": "8", "ultima_modifica": "2004-06-04"}, {"libroid": "7", "autoreid": "3", "ultima_modifica": "2002-03-26"}, {"libroid": "20", "autoreid": "14", "ultima_modifica": "2001-05-12"}, {"libroid": "13", "autoreid": "20", "ultima_modifica": "2000-01-20"}, {"libroid": "14", "autoreid": "20", "ultima_modifica": "2000-09-21"}, {"libroid": "16", "autoreid": "10", "ultima_modifica": "2007-04-22"}, {"libroid": "1", "autoreid": "22", "ultima_modifica": "2007-11-23"}, {"libroid": "24", "autoreid": "7", "ultima_modifica": "2000-10-24"}, {"libroid": "28", "autoreid": "21", "ultima_modifica": "2004-11-18"}, {"libroid": "27", "autoreid": "1", "ultima_modifica": "2007-06-01"}, {"libroid": "22", "autoreid": "19", "ultima_modifica": "2003-02-13"}, {"libroid": "8", "autoreid": "23", "ultima_modifica": "2004-09-19"}, {"libroid": "17", "autoreid": "19", "ultima_modifica": "2003-06-06"}, {"libroid": "36", "autoreid": "13", "ultima_modifica": "2007-11-14"}, {"libroid": "5", "autoreid": "1", "ultima_modifica": "2003-06-27"}, {"libroid": "24", "autoreid": "11", "ultima_modifica": "2007-09-19"}, {"libroid": "2", "autoreid": "20", "ultima_modifica": "2002-08-05"}, {"libroid": "28", "autoreid": "32", "ultima_modifica": "2003-02-12"}, {"libroid": "31", "autoreid": "30", "ultima_modifica": "2000-10-10"}, {"libroid": "25", "autoreid": "28", "ultima_modifica": "2006-04-21"}, {"libroid": "12", "autoreid": "26", "ultima_modifica": "2005-08-01"}, {"libroid": "9", "autoreid": "17", "ultima_modifica": "2009-10-18"}, {"libroid": "8", "autoreid": "13", "ultima_modifica": "2007-06-21"}, {"libroid": "39", "autoreid": "4", "ultima_modifica": "2005-08-16"}, {"libroid": "5", "autoreid": "16", "ultima_modifica": "2006-07-13"}, {"libroid": "20", "autoreid": "41", "ultima_modifica": "2006-03-16"}, {"libroid": "37", "autoreid": "23", "ultima_modifica": "2009-01-03"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='1' json='[{"libroid": "1", "autoreid": "8", "ultima_modifica": "2002-06-13", "id": 1}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='2' json='[{"libroid": "3", "autoreid": "12", "ultima_modifica": "2005-02-23", "id": 2}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='3' json='[{"libroid": "14", "autoreid": "20", "ultima_modifica": "2006-03-14", "id": 3}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='4' json='[{"libroid": "14", "autoreid": "4", "ultima_modifica": "2005-03-27", "id": 4}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='5' json='[{"libroid": "4", "autoreid": "8", "ultima_modifica": "2004-02-19", "id": 5}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='6' json='[{"libroid": "14", "autoreid": "15", "ultima_modifica": "2008-08-03", "id": 6}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='7' json='[{"libroid": "19", "autoreid": "11", "ultima_modifica": "2000-04-17", "id": 7}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='8' json='[{"libroid": "11", "autoreid": "14", "ultima_modifica": "2001-08-18", "id": 8}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='9' json='[{"libroid": "4", "autoreid": "13", "ultima_modifica": "2009-09-21", "id": 9}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='10' json='[{"libroid": "26", "autoreid": "13", "ultima_modifica": "2006-09-13", "id": 10}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='11' json='[{"libroid": "30", "autoreid": "14", "ultima_modifica": "2005-07-13", "id": 11}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='12' json='[{"libroid": "10", "autoreid": "15", "ultima_modifica": "2009-04-07", "id": 12}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='13' json='[{"libroid": "11", "autoreid": "12", "ultima_modifica": "2000-09-25", "id": 13}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='14' json='[{"libroid": "18", "autoreid": "9", "ultima_modifica": "2000-02-25", "id": 14}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='15' json='[{"libroid": "30", "autoreid": "12", "ultima_modifica": "2001-11-27", "id": 15}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='16' json='[{"libroid": "17", "autoreid": "2", "ultima_modifica": "2005-04-07", "id": 16}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='17' json='[{"libroid": "15", "autoreid": "7", "ultima_modifica": "2003-11-21", "id": 17}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='18' json='[{"libroid": "18", "autoreid": "25", "ultima_modifica": "2009-10-09", "id": 18}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='19' json='[{"libroid": "30", "autoreid": "16", "ultima_modifica": "2002-07-23", "id": 19}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='20' json='[{"libroid": "3", "autoreid": "32", "ultima_modifica": "2002-11-13", "id": 20}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='21' json='[{"libroid": "27", "autoreid": "29", "ultima_modifica": "2004-03-13", "id": 21}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='22' json='[{"libroid": "24", "autoreid": "27", "ultima_modifica": "2000-03-23", "id": 22}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='23' json='[{"libroid": "35", "autoreid": "18", "ultima_modifica": "2006-03-24", "id": 23}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='24' json='[{"libroid": "23", "autoreid": "10", "ultima_modifica": "2000-04-26", "id": 24}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='25' json='[{"libroid": "41", "autoreid": "15", "ultima_modifica": "2005-10-01", "id": 25}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='26' json='[{"libroid": "38", "autoreid": "39", "ultima_modifica": "2008-02-15", "id": 26}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='27' json='[{"libroid": "38", "autoreid": "32", "ultima_modifica": "2008-11-20", "id": 27}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='28' json='[{"libroid": "23", "autoreid": "14", "ultima_modifica": "2004-02-25", "id": 28}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='29' json='[{"libroid": "15", "autoreid": "28", "ultima_modifica": "2008-06-11", "id": 29}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='30' json='[{"libroid": "11", "autoreid": "32", "ultima_modifica": "2009-07-09", "id": 30}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='31' json='[{"libroid": "8", "autoreid": "2", "ultima_modifica": "2001-10-27", "id": 31}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='32' json='[{"libroid": "43", "autoreid": "22", "ultima_modifica": "2001-10-03", "id": 32}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='33' json='[{"libroid": "46", "autoreid": "4", "ultima_modifica": "2009-10-05", "id": 33}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='34' json='[{"libroid": "50", "autoreid": "6", "ultima_modifica": "2001-11-04", "id": 34}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='35' json='[{"libroid": "57", "autoreid": "15", "ultima_modifica": "2001-10-20", "id": 35}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='36' json='[{"libroid": "20", "autoreid": "40", "ultima_modifica": "2009-10-08", "id": 36}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='37' json='[{"libroid": "55", "autoreid": "43", "ultima_modifica": "2005-03-21", "id": 37}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='38' json='[{"libroid": "52", "autoreid": "14", "ultima_modifica": "2007-02-10", "id": 38}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='39' json='[{"libroid": "56", "autoreid": "58", "ultima_modifica": "2004-10-23", "id": 39}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='40' json='[{"libroid": "4", "autoreid": "41", "ultima_modifica": "2008-08-15", "id": 40}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='41' json='[{"libroid": "9", "autoreid": "38", "ultima_modifica": "2002-08-19", "id": 41}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='42' json='[{"libroid": "51", "autoreid": "9", "ultima_modifica": "2006-01-17", "id": 42}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='43' json='[{"libroid": "46", "autoreid": "40", "ultima_modifica": "2002-08-05", "id": 43}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='44' json='[{"libroid": "42", "autoreid": "53", "ultima_modifica": "2004-10-11", "id": 44}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='45' json='[{"libroid": "11", "autoreid": "22", "ultima_modifica": "2003-02-24", "id": 45}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='46' json='[{"libroid": "8", "autoreid": "7", "ultima_modifica": "2005-09-27", "id": 46}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='47' json='[{"libroid": "47", "autoreid": "48", "ultima_modifica": "2007-08-13", "id": 47}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='48' json='[{"libroid": "24", "autoreid": "22", "ultima_modifica": "2002-02-17", "id": 48}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='49' json='[{"libroid": "56", "autoreid": "14", "ultima_modifica": "2005-11-05", "id": 49}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='50' json='[{"libroid": "58", "autoreid": "43", "ultima_modifica": "2004-09-18", "id": 50}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='51' json='[{"libroid": "46", "autoreid": "10", "ultima_modifica": "2007-10-06", "id": 51}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='52' json='[{"libroid": "65", "autoreid": "50", "ultima_modifica": "2004-02-16", "id": 52}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='53' json='[{"libroid": "41", "autoreid": "55", "ultima_modifica": "2007-06-22", "id": 53}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='54' json='[{"libroid": "8", "autoreid": "47", "ultima_modifica": "2000-04-11", "id": 54}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='55' json='[{"libroid": "67", "autoreid": "37", "ultima_modifica": "2003-02-06", "id": 55}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='56' json='[{"libroid": "47", "autoreid": "10", "ultima_modifica": "2001-04-21", "id": 56}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='57' json='[{"libroid": "16", "autoreid": "8", "ultima_modifica": "2005-01-08", "id": 57}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='58' json='[{"libroid": "8", "autoreid": "42", "ultima_modifica": "2006-11-03", "id": 58}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='59' json='[{"libroid": "34", "autoreid": "10", "ultima_modifica": "2008-06-10", "id": 59}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='60' json='[{"libroid": "76", "autoreid": "23", "ultima_modifica": "2005-08-18", "id": 60}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='61' json='[{"libroid": "8", "autoreid": "79", "ultima_modifica": "2007-09-17", "id": 61}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='62' json='[{"libroid": "1", "autoreid": "34", "ultima_modifica": "2004-08-05", "id": 62}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='63' json='[{"libroid": "58", "autoreid": "38", "ultima_modifica": "2003-08-25", "id": 63}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='64' json='[{"libroid": "68", "autoreid": "7", "ultima_modifica": "2009-02-03", "id": 64}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='65' json='[{"libroid": "67", "autoreid": "4", "ultima_modifica": "2006-02-03", "id": 65}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='66' json='[{"libroid": "43", "autoreid": "40", "ultima_modifica": "2006-02-01", "id": 66}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='67' json='[{"libroid": "10", "autoreid": "50", "ultima_modifica": "2000-07-25", "id": 67}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='68' json='[{"libroid": "9", "autoreid": "22", "ultima_modifica": "2006-06-03", "id": 68}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='69' json='[{"libroid": "66", "autoreid": "43", "ultima_modifica": "2009-05-21", "id": 69}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='70' json='[{"libroid": "10", "autoreid": "15", "ultima_modifica": "2009-06-02", "id": 70}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='71' json='[{"libroid": "29", "autoreid": "74", "ultima_modifica": "2007-04-15", "id": 71}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='72' json='[{"libroid": "15", "autoreid": "52", "ultima_modifica": "2002-09-08", "id": 72}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='73' json='[{"libroid": "35", "autoreid": "14", "ultima_modifica": "2001-01-24", "id": 73}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='74' json='[{"libroid": "62", "autoreid": "79", "ultima_modifica": "2000-10-17", "id": 74}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='75' json='[{"libroid": "96", "autoreid": "37", "ultima_modifica": "2008-09-14", "id": 75}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='76' json='[{"libroid": "59", "autoreid": "67", "ultima_modifica": "2006-03-06", "id": 76}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='77' json='[{"libroid": "40", "autoreid": "16", "ultima_modifica": "2002-02-25", "id": 77}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='78' json='[{"libroid": "66", "autoreid": "47", "ultima_modifica": "2002-07-05", "id": 78}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='79' json='[{"libroid": "37", "autoreid": "73", "ultima_modifica": "2005-07-21", "id": 79}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='80' json='[{"libroid": "39", "autoreid": "23", "ultima_modifica": "2005-11-11", "id": 80}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='81' json='[{"libroid": "65", "autoreid": "69", "ultima_modifica": "2007-06-22", "id": 81}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='82' json='[{"libroid": "30", "autoreid": "17", "ultima_modifica": "2004-06-04", "id": 82}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='83' json='[{"libroid": "64", "autoreid": "62", "ultima_modifica": "2000-09-02", "id": 83}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='84' json='[{"libroid": "66", "autoreid": "105", "ultima_modifica": "2003-05-23", "id": 84}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='85' json='[{"libroid": "47", "autoreid": "98", "ultima_modifica": "2004-10-27", "id": 85}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='86' json='[{"libroid": "37", "autoreid": "94", "ultima_modifica": "2007-03-06", "id": 86}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='87' json='[{"libroid": "80", "autoreid": "61", "ultima_modifica": "2003-08-04", "id": 87}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='88' json='[{"libroid": "31", "autoreid": "45", "ultima_modifica": "2006-11-06", "id": 88}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='89' json='[{"libroid": "83", "autoreid": "3", "ultima_modifica": "2008-03-15", "id": 89}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='90' json='[{"libroid": "64", "autoreid": "26", "ultima_modifica": "2008-02-12", "id": 90}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='91' json='[{"libroid": "14", "autoreid": "3", "ultima_modifica": "2002-09-16", "id": 91}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='92' json='[{"libroid": "103", "autoreid": "3", "ultima_modifica": "2004-05-15", "id": 92}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='93' json='[{"libroid": "21", "autoreid": "49", "ultima_modifica": "2009-03-23", "id": 93}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='PUT' idRest='94' json='[{"libroid": "4", "autoreid": "47", "ultima_modifica": "2006-07-15", "id": 94}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='49'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='50'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='51'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='52'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='53'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='54'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='55'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='56'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='57'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='58'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='59'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='60'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='61'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='62'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='63'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='64'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='65'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='66'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='67'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='68'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='69'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='70'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='71'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='72'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='73'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='74'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='75'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='76'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='77'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='78'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='79'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='80'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='81'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='82'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='83'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='84'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='85'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='86'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='87'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='88'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='89'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='90'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='91'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='aut_lib' method='DELETE' idRest='92'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>

</body>
</html>

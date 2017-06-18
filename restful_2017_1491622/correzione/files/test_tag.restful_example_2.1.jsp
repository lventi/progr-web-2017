
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
<test:rest table='libro' method='GET'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='GET' idRest='1'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='GET' idRest='24'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' idRest='22'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='GET' idRest='19'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' idRest='7'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' idRest='18'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' idRest='9'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='GET' idRest='17'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='GET' idRest='4'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' idRest='2'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' idRest='0'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='GET' idRest='3'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' query='attr_gt_url=Z6Fk7jJms5whAT&attr_ge_abstract=MFASRJYa58nwoEk4&attr_ge_titolo=QkLd9IxXzhOD&attr_le_id=11&attr_ge_ultima_modifica=2002-08-18'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='POST' json='[{"url": "JjIXmor6PHxanUzD5GY", "abstract": "BtKWY7hH9vwCle4", "titolo": "GI538EFnXHy", "ultima_modifica": "2008-05-26"}, {"url": "hJAtiRw6vlsdUgEoVcOX", "abstract": "DPfV98JuCTvxbleBr0", "titolo": "DvBgy3Tlp9M1n42eC", "ultima_modifica": "2005-02-23"}, {"url": "Mg1tnDpQvkHNb", "abstract": "Y3Ai41onBSGXjv", "titolo": "NVXT7m0i52P", "ultima_modifica": "2006-08-12"}, {"url": "9H68LemrXKi", "abstract": "z6JeZPokIVv3WdQ", "titolo": "0Yfrb1lwmcFqt3U9a", "ultima_modifica": "2007-03-13"}, {"url": "OFEUAGB9XC8j", "abstract": "5z4IcySpPZi3F", "titolo": "Atig0IlOSVFa", "ultima_modifica": "2000-03-12"}, {"url": "KNib5LakH0rsxXcq", "abstract": "qJplLImC53", "titolo": "1YG2nK4RvrAzTcXLd", "ultima_modifica": "2001-01-21"}, {"url": "n4sNJfFo6luBELOK3bS", "abstract": "KOj4AMtVv7Uk9hC3", "titolo": "beSYnL362RJuk", "ultima_modifica": "2005-11-27"}, {"url": "UyV0ESJaRAW", "abstract": "3CmtVOd0ZNSixKYQ1h", "titolo": "05LK4hnI2F", "ultima_modifica": "2004-09-27"}, {"url": "KtwWLU0DH31R", "abstract": "EjbfgsP7Z3iW", "titolo": "4lQmz0GsdvkIu", "ultima_modifica": "2009-01-05"}, {"url": "zdthKwbviOq6P5", "abstract": "JuOeC2X3YhGPZnot", "titolo": "WmZBYEAgUiP9vO1", "ultima_modifica": "2000-08-18"}, {"url": "pYjDiUzEdr9tcl6e7gP", "abstract": "oG7VSPE4rZf", "titolo": "3oIjpGxvbNfnW", "ultima_modifica": "2008-09-09"}, {"url": "DQt9cm1Z6IvjL2q", "abstract": "uOnfval4b8Rj5ky01S", "titolo": "eOP17np3bJkc0", "ultima_modifica": "2003-01-11"}, {"url": "0dEQwVZmBkanxvNtWo", "abstract": "av0DrYKhw7Ei1Xt9F", "titolo": "JxAZjEMil1PmFzhoBw", "ultima_modifica": "2005-07-20"}, {"url": "zrgoZXwc4pMB9ktNIGuE", "abstract": "We4JxKmLPlHY1", "titolo": "WepLFXAQm84IZBNY", "ultima_modifica": "2003-06-10"}, {"url": "knHWZfYs6378", "abstract": "hryMm8Bdzk5pA", "titolo": "60LYSsPm25RuOy", "ultima_modifica": "2003-06-05"}, {"url": "4AZVlutbeL32OCzSR", "abstract": "sMx0KdcSglzvI", "titolo": "IbsTpLVA3D8kNjeQH", "ultima_modifica": "2003-02-09"}, {"url": "KxmgrfsJpPMH", "abstract": "bPtXl80DeS7OuUH9f", "titolo": "ICuLJR1fBGt4ZdAYc90", "ultima_modifica": "2004-08-21"}, {"url": "nlWkSLM5TBspw", "abstract": "WrtuGBbiIjOENDnHLV", "titolo": "t0f5NMihLz", "ultima_modifica": "2000-09-05"}, {"url": "4YbaMLgt2Rh", "abstract": "1ZxHvesK84Ib", "titolo": "ali264RXpZ7vBWDwmE1u", "ultima_modifica": "2004-03-25"}, {"url": "qQa2B3C4lG0cNk1J", "abstract": "el7Wk1SERYryDz5QoaO", "titolo": "2dSkAf3DLyqvV5c60", "ultima_modifica": "2003-02-23"}, {"url": "N2X1chmsxotJw4", "abstract": "9kmO7ZsD04S", "titolo": "PRYHNGcgu2B", "ultima_modifica": "2006-01-21"}, {"url": "14lRfB6NobYLuFSmn", "abstract": "sSNkBZtRy0G", "titolo": "BaXPdtsYbGvO9N4g0mL7", "ultima_modifica": "2003-01-21"}, {"url": "AnZowz4a0iHrNRjpP", "abstract": "V8lyQDucpGnSWCf", "titolo": "L8guapw9PsCNeQf", "ultima_modifica": "2000-04-12"}, {"url": "H90DWXq6jxhGLm1", "abstract": "pyDXAbPdNsSBkLCE6", "titolo": "kHhuCZdJraR", "ultima_modifica": "2009-09-20"}, {"url": "gPd3fjvbsEMKwYOQLmp", "abstract": "dAzns5aE4L", "titolo": "tTcERe5vUrWwV", "ultima_modifica": "2002-06-02"}, {"url": "stz1cEq3eiaX6b", "abstract": "KRVrljf6TqQwvoJP9s2", "titolo": "2zfdScToqkgBKJjPDY", "ultima_modifica": "2000-04-13"}, {"url": "AMlufVrNGg", "abstract": "neNpAm8JbgOaEkF9o", "titolo": "Fkheyf8lsNv5gnJSz", "ultima_modifica": "2002-04-03"}, {"url": "XsI6CTMNntQVwKW8r", "abstract": "du8nxb3ICETqR2t457", "titolo": "PJ4WM93goYhxFC2vASL", "ultima_modifica": "2001-03-02"}, {"url": "0nE32AhCzObfj8", "abstract": "2cuLz48gpv", "titolo": "51DajJQgLt2", "ultima_modifica": "2009-06-03"}, {"url": "QO5KiFxDfSJ2", "abstract": "XOx89efz0aCFpM4w", "titolo": "3Vm869soPj", "ultima_modifica": "2004-01-27"}, {"url": "moXbEzewDgCO6xTW90", "abstract": "QUVu3layNRLOsTBKGeo", "titolo": "iXxbw67Kpfh5W4gMJnuV", "ultima_modifica": "2005-08-12"}, {"url": "D0ZnFuKwGg", "abstract": "dgEFOAXaJikB", "titolo": "xwQqUlMuTZh2gAOIKo", "ultima_modifica": "2008-01-15"}, {"url": "lbgza8PIsBn", "abstract": "zjYsWVIF4ugqJ", "titolo": "jHcqflJvn5t", "ultima_modifica": "2007-11-19"}, {"url": "YnvZ6mluOVh2fQr1wX9", "abstract": "IGwZiPFnOv", "titolo": "nCI5EUxOJ0paH", "ultima_modifica": "2009-04-25"}, {"url": "SU20wMTuvcDqNfPKL", "abstract": "6bFJxzuD8gSsRqiy", "titolo": "jIoYDuEU6FKsWOTX4QmP", "ultima_modifica": "2003-02-22"}, {"url": "CF6TgnI2mJkP5Uw9", "abstract": "HyTPuABep3F4", "titolo": "gFNSYR7ocr6ntU", "ultima_modifica": "2008-09-08"}, {"url": "yFkPxrdhUJlaLOEIu", "abstract": "lwK65pzJbG", "titolo": "r1RFteWVxlZmI", "ultima_modifica": "2004-03-22"}, {"url": "cOuKYat48Cs", "abstract": "FOAtl5DLrnEoM", "titolo": "fDH2r0iGUWvBoj", "ultima_modifica": "2003-06-25"}, {"url": "71FVMN5RxLmY", "abstract": "To3OY2SpVnlNu", "titolo": "lgk8duBn21", "ultima_modifica": "2002-04-11"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='1' json='[{"url": "tML89BKjwvqxY", "abstract": "5IpX3Mj8lKOJd", "titolo": "t12DFa3JyxI5mgqTSwQ", "id": 1, "ultima_modifica": "2006-03-01"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='2' json='[{"url": "tBCNwo7M6cUWuzL9HJZ", "abstract": "1UWoLX0gB9QC8Zxf", "titolo": "U0pt5P4FkLXORq8ch", "id": 2, "ultima_modifica": "2009-09-14"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='3' json='[{"url": "10PHpu5GMi9AtUd", "abstract": "0AbFa39KyeXlZ5u8rQBm", "titolo": "9kzVjZLwuseWKANav", "id": 3, "ultima_modifica": "2001-10-04"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='4' json='[{"url": "9j5LJcG6qy", "abstract": "LBlEXGYQ9ZoHNVFx2", "titolo": "0Oj3LnvlcNRkIYeGU", "id": 4, "ultima_modifica": "2004-09-12"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='5' json='[{"url": "8EKZXLBv0jmsdYqMna29", "abstract": "h9ENnR0lcM2DmFPTWdo", "titolo": "XyTbu05WFp", "id": 5, "ultima_modifica": "2001-05-26"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='6' json='[{"url": "45YEBL9mSP", "abstract": "vkBUt2LoIbah", "titolo": "YDpc5kwbAUsmnM", "id": 6, "ultima_modifica": "2003-10-12"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='7' json='[{"url": "IfeKzJwRsuyLnGM", "abstract": "vNOBItUWqznoKQJ", "titolo": "xE5UGFa9g8YehtJV0Z", "id": 7, "ultima_modifica": "2002-06-10"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='8' json='[{"url": "AnGpQ807eKBs3DO", "abstract": "aWsBLA1Qh3ty", "titolo": "hLjRumoXdwxIyYEQNk", "id": 8, "ultima_modifica": "2004-11-05"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='9' json='[{"url": "CKYfOnAX9r", "abstract": "d3NAuabeTjmVKWEOwLCk", "titolo": "tOQcrqVhN3v0gaZ", "id": 9, "ultima_modifica": "2006-11-08"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='10' json='[{"url": "vRSgr2L59ZuG", "abstract": "pjyqdt2w3Z4", "titolo": "T4u6vYmha9HOGI", "id": 10, "ultima_modifica": "2008-10-01"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='11' json='[{"url": "XcsH0DSxN5UM4la8OT1i", "abstract": "CqSvPgbL0j7H", "titolo": "rWfIvVpuBcT8PbGM9", "id": 11, "ultima_modifica": "2001-03-24"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='12' json='[{"url": "iWp9uIb7toCLS", "abstract": "nM1ywlaqgjh6p", "titolo": "p7k6d8nGavQWO9g", "id": 12, "ultima_modifica": "2001-03-03"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='13' json='[{"url": "w2gNaYcorm8GxZ", "abstract": "enwDF54x0J3I", "titolo": "lGYwahvBdoO5US3X9", "id": 13, "ultima_modifica": "2000-03-11"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='14' json='[{"url": "NFkTAgyW9l0siGe26PmC", "abstract": "yiMXBVgHYxU3", "titolo": "iyO2tRUVhwno", "id": 14, "ultima_modifica": "2009-07-27"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='15' json='[{"url": "6DhHxbQkINMT7ozt4a", "abstract": "Jbeuxy7lc0NPAmQv", "titolo": "QvkCKYrlIgSA4OienyD", "id": 15, "ultima_modifica": "2002-07-12"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='16' json='[{"url": "QTgVN4UiyEYKqX", "abstract": "3Tf8VJEoS0", "titolo": "RI6sve4r9Nw83", "id": 16, "ultima_modifica": "2007-03-15"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='17' json='[{"url": "RLoQ3mWkfBMl4bEq", "abstract": "QfBI53lRdh", "titolo": "gMEK3Hv20OT", "id": 17, "ultima_modifica": "2006-03-09"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='18' json='[{"url": "IKZt4vPTGiN96Rpy1Hjw", "abstract": "D4hcH7sbVWLOjRNvfTxG", "titolo": "41FMORm5rPY3ETAofXBQ", "id": 18, "ultima_modifica": "2006-06-01"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='19' json='[{"url": "hrX6D8wGyf", "abstract": "KO9uysNjiYcCWvk6q74", "titolo": "BJVxsFZb7tryRPjI45", "id": 19, "ultima_modifica": "2000-09-03"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='20' json='[{"url": "YmbXzQRJMt", "abstract": "ZNJ7mpyDlgj4ac", "titolo": "AFw3GUTOgSmJxV", "id": 20, "ultima_modifica": "2009-02-02"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='21' json='[{"url": "BxpPCjr8cHd", "abstract": "AQiNKgEdzn", "titolo": "IZt4B6SfprncvU2Lgo3", "id": 21, "ultima_modifica": "2007-04-19"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='22' json='[{"url": "JHbGtS95d7", "abstract": "yMmFZGJ62Ewq5PRvU0i", "titolo": "qwbD4cUtsp5Q", "id": 22, "ultima_modifica": "2001-08-05"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='23' json='[{"url": "fAapVdOFnK", "abstract": "HxBPC0NT5yLRb7kYzjd", "titolo": "xTK4H53ObjACEFZ2mVN", "id": 23, "ultima_modifica": "2000-07-22"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='24' json='[{"url": "irX4laJLBkuxNn1", "abstract": "tRxy05id4VTqI", "titolo": "pOZGXmLeYdq", "id": 24, "ultima_modifica": "2005-09-07"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='25' json='[{"url": "RKpMnUwEqN7S3GL9xvoD", "abstract": "nJoEkuYtRzrX1c", "titolo": "ruH1bVn2WLIS", "id": 25, "ultima_modifica": "2000-08-17"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='26' json='[{"url": "rOCBpdgW8b", "abstract": "QfrPKXGqgSOMT8w5Nk", "titolo": "MexYC9iV10dGW3DB5Z", "id": 26, "ultima_modifica": "2008-07-24"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='27' json='[{"url": "OcquAwSaZWxd", "abstract": "lBMw4UGYkNKzxq", "titolo": "CZPShXDxF4zr", "id": 27, "ultima_modifica": "2007-09-02"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='28' json='[{"url": "wIpg5LsdHzxAu", "abstract": "opySWIiDV8Q", "titolo": "BaU5tskrw0hZqfTRNFHK", "id": 28, "ultima_modifica": "2002-02-22"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='29' json='[{"url": "qoAWp0M5Qu", "abstract": "Dd3Bf1QNyOaSuxLWlIYe", "titolo": "unCwWabPRLFJ", "id": 29, "ultima_modifica": "2002-03-12"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='30' json='[{"url": "MmBgiGy37xZfd2Q", "abstract": "DLjfk5WrhVOBv9cHTp", "titolo": "rvLMTjzsoCBA8D3fy", "id": 30, "ultima_modifica": "2003-04-13"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='31' json='[{"url": "go4IXm6fFnQESWyiA2", "abstract": "c5d8zAeThiX3nsajJCL", "titolo": "G290QFyvKA", "id": 31, "ultima_modifica": "2008-05-20"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='32' json='[{"url": "cH89bvPTRof", "abstract": "XvLZx8OiMUWDjAGBH", "titolo": "Zmih0D8kdx9oYTgONWI5", "id": 32, "ultima_modifica": "2007-02-12"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='33' json='[{"url": "lQzsD9bdyr6", "abstract": "Gri8uxIZU9jgy2", "titolo": "sAlkHKGbYOmhZ26P", "id": 33, "ultima_modifica": "2007-07-08"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='34' json='[{"url": "zmMYq4QeaV1wuKSjFo", "abstract": "RXdHMqoYatI", "titolo": "r760NpKfHiDIAntb", "id": 34, "ultima_modifica": "2000-02-22"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='35' json='[{"url": "If0Qu7pNtl", "abstract": "pw5Fe1CHvdoQ7", "titolo": "f9y1a8sDzI", "id": 35, "ultima_modifica": "2007-04-01"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='36' json='[{"url": "bEGVy7cno8F21", "abstract": "pLzW2XR0mInFsYOfk", "titolo": "H4L6fwQO5DB", "id": 36, "ultima_modifica": "2001-09-23"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='37' json='[{"url": "rR546D8I0NtTFi7gbG", "abstract": "HoQMF31czCPJBR8e2", "titolo": "pPvLsBcotieUQKafqCn", "id": 37, "ultima_modifica": "2003-05-17"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='38' json='[{"url": "AC8z3Wcfuv", "abstract": "RASHyez74ZY5fBEvw", "titolo": "aAXVRxKZeoDT", "id": 38, "ultima_modifica": "2006-06-10"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='PUT' idRest='39' json='[{"url": "z0LVUcxeWCHpXJuN7rht", "abstract": "p8Cvg9bXwAxG3QBKDN", "titolo": "mp4JBiCNnld", "id": 39, "ultima_modifica": "2006-06-07"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='28'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='29'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='30'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='31'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='32'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='33'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='34'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='35'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='36'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='37'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='38'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='39'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='40'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='41'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='42'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='43'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='44'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='45'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='46'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='47'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='48'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='49'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='50'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='51'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='52'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='53'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='54'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='55'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='56'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='57'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='58'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='59'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='60'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='61'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='62'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='63'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='64'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='65'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='66'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='67'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='68'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='69'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='70'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='71'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='72'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='73'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='74'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='75'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='76'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='77'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='78'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='79'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='libro' method='DELETE' idRest='80'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>

</body>
</html>

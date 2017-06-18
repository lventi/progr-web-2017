
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
<test:rest table='category' idRest='2'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' query='attr_lt_categ_name=68oTCBevDwxY2H&attr_eq_id=2&attr_le_image_descr=7EVu4wQ1OtMI&attr_ge_image_path=4afWmxUV3Nh1XvCSbq'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='POST' json='[{"categ_name": "ZXxAG2f7u1jv9Pd3C", "image_path": "hYjoqky9E5UWxNLd4", "image_descr": "ml54zWLsnEQo7eP"}, {"categ_name": "iPvQtXKqCfG", "image_path": "sC0487PTeMmSonxiGr5R", "image_descr": "FBvubdwnJjCN7H95Or6"}, {"categ_name": "FP9XdLzmnO", "image_path": "O2VZywCX0Uv6cYS", "image_descr": "aS85kujZ30wVqi"}, {"categ_name": "5j2O0An6aJgVDyB", "image_path": "b4tidgOrmfUwslH1zex", "image_descr": "yMI0iHQp8Xao"}, {"categ_name": "lTdRJFhXqSZIOLBNHKP", "image_path": "OQX30CFIT9JbjN", "image_descr": "1aHGMsvD2exOfE"}, {"categ_name": "DbXzinkphNPF", "image_path": "jKvkcdRYVQMa3sL", "image_descr": "sTVYgXhj3dPwym0"}, {"categ_name": "ofMQDh94UX8Cw3eGO", "image_path": "759OonZPL4", "image_descr": "6w45lSZWPOuVHNyjKD"}, {"categ_name": "2cDj5Tqw8EhQgWHYLZ", "image_path": "vj9KWyfItULao1", "image_descr": "kNPZJHTV3veCAmDOgc"}, {"categ_name": "UuQAo6LnK0", "image_path": "wVZOgIvkGmphb4A7yf", "image_descr": "5BWxFIvh8X"}, {"categ_name": "H91kyrsWac3MGzQVJn", "image_path": "AZlpJjsdak9qxFEhL3u", "image_descr": "TWwGNOqKEpshSeRPkayL"}, {"categ_name": "WaMTLygJ9Gdoc", "image_path": "Ao21lOd6NQFfySbWpH", "image_descr": "6N5e328firho4ZKFSOH"}, {"categ_name": "u6ilaGI20ny34h5FjW", "image_path": "WuUE8o36tn5iN0", "image_descr": "bEVs3cq0rpYoTG"}, {"categ_name": "ghu5tZ4rq9lQpBT", "image_path": "Cke951ZUAcRXtsTx3EOn", "image_descr": "sD6eXAl4IhZ3pFC"}, {"categ_name": "6ioBIKSabwcMJ", "image_path": "D98mTOXUZ3s2", "image_descr": "QSnjMswECX6hKmt"}, {"categ_name": "jKwIz6GSmAsRqg", "image_path": "j31LyY9PIKnSe0GA", "image_descr": "BMsuVR045OSNkA"}, {"categ_name": "ysGnNMT0QFqCZcmVAY", "image_path": "zom4YCxUMpv8bW", "image_descr": "6MLJ5ib39l"}, {"categ_name": "MGpctHQ7a9", "image_path": "CUiBNh9n1LTzkMl", "image_descr": "OjcIlHgQqAN"}, {"categ_name": "UYArBWfDJ6Ga", "image_path": "4c1Yts0vyo6VbE5FN", "image_descr": "gPebGc5tqQ"}, {"categ_name": "dM2tsuV5kPFnURH", "image_path": "7rf0pF2YPo1dWMvCXK4O", "image_descr": "T5SqY8ivfg4mG"}, {"categ_name": "KJYsW6fPlz85V", "image_path": "VKDu7SiQ1qhHjAkJoCn", "image_descr": "Vx1TN8f6dK2RtEObgjr"}, {"categ_name": "sChlx9F5yqVvrtY0wGzc", "image_path": "NzXlM1TAfPY7e4RQ8x", "image_descr": "Zx4XzPfdhULjycJ"}, {"categ_name": "yO4sWI5rAJbR", "image_path": "ZtX7TCce6JSGd2bnaPF", "image_descr": "Z1bpgVLqcCUW7ifdOX5"}, {"categ_name": "O0yBV7Nkx5AgUS3cwI", "image_path": "qmI1SeW4dl", "image_descr": "cISmVtzkWJaKTyqo0"}, {"categ_name": "gGf3k0bZUJ5N8", "image_path": "FcLYpv1jXSEZ0izWwoK", "image_descr": "CFKRcL8H3fJSDy"}, {"categ_name": "4gDEr10XGba", "image_path": "eRcpavxTEUt8", "image_descr": "4PuL8ao1vxkQeyH"}, {"categ_name": "rFthaQKP1LCi", "image_path": "5gvJOSwRbo6pN7tl1af", "image_descr": "5AfnKZUOb0zJvxLMiqCF"}, {"categ_name": "Eb8vkgw0uQGPjcse", "image_path": "41GDnRpivA9I6PgK", "image_descr": "ElHKzRBuyNW6DUtw"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='1' json='[{"categ_name": "gWPRyGJTqXc", "id": 1, "image_descr": "OVtocr4FdBjKaX6vG1JA", "image_path": "plgDjrcQhk"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='2' json='[{"categ_name": "HqcpiL3fg0hwv1B9yKds", "id": 2, "image_descr": "NyJCV38DFHKTci2", "image_path": "4rbIFeHctxTaPE2"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='3' json='[{"categ_name": "SjoCFNIuJElAc3Yq8Q", "id": 3, "image_descr": "pih1aLPEHNMuWX2l5fI", "image_path": "mv49FHTExQ0zi"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='4' json='[{"categ_name": "aWiTDnLMtNG", "id": 4, "image_descr": "MW9vxcYmZawCu", "image_path": "qp4GTgUnstfL1o"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='5' json='[{"categ_name": "AJlxZj0pGI97TMQg", "id": 5, "image_descr": "JWZSUokIy6h9ldmF", "image_path": "ihdBoVxQ2z0rEK85SW"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='6' json='[{"categ_name": "sA4YQeMlUIcaEVJtR", "id": 6, "image_descr": "4FnsgxMbCE9qJDjp", "image_path": "nGKikgMNuFdtZ"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='7' json='[{"categ_name": "KYtVbFImvQk5s", "id": 7, "image_descr": "LqTmXgciEAorG", "image_path": "AX7W8DzUEF1"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='8' json='[{"categ_name": "Wxr08N7Qea", "id": 8, "image_descr": "2QhKk6HvVCxBiztcj", "image_path": "x1XcwUCGBK"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='9' json='[{"categ_name": "CZ80hfnukJN5", "id": 9, "image_descr": "q2uNA5mTYzreiUoZ", "image_path": "tFS40YhgbDN"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='10' json='[{"categ_name": "O45dcwKnPuaQ", "id": 10, "image_descr": "QLjZrBJNdsmh7byA", "image_path": "oaSYpr24VC6xNc9dLki"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='11' json='[{"categ_name": "ckmWoO2tRVlbn", "id": 11, "image_descr": "587byFuWh0Ql", "image_path": "2RDIWxtlmirj"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='12' json='[{"categ_name": "tmp9r6Y8qD2", "id": 12, "image_descr": "shWKxHQ7mRk890pyL", "image_path": "R8FyaEcHgAWVQMprOY"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='13' json='[{"categ_name": "fYZNlhQiR1Hnjk9534", "id": 13, "image_descr": "TRBpjrW0I5", "image_path": "RaHv8ZpFK6dAwIj2G"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='14' json='[{"categ_name": "qApC6K2dtGvbnQ1l", "id": 14, "image_descr": "0j9CHvXzSVcN", "image_path": "LcHTOeFAqgpoEtKJiGf"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='15' json='[{"categ_name": "qhS0gtjJNIAObpcmlE", "id": 15, "image_descr": "20JfvSF6TK1hBjQ", "image_path": "l7rvGjLpo1FH5RaTJ"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='16' json='[{"categ_name": "8U9fWgZJhISHmaLBwt", "id": 16, "image_descr": "9EkJqT3CMKeX", "image_path": "IEPpsMqvYLBrAaWZH"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='17' json='[{"categ_name": "8hm7xelV421QnHkXEUJq", "id": 17, "image_descr": "rP9BwHNukX", "image_path": "cOdDP0f73Q"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='18' json='[{"categ_name": "t8pVAMiXT7yGW2C", "id": 18, "image_descr": "I0C2OexyvK7DiMAoj", "image_path": "JRFfeYIQGktsvE"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='19' json='[{"categ_name": "Lq9bzAGUo3xBwd6XOn", "id": 19, "image_descr": "Ds5KnJiLtlrbUTxZ4zh", "image_path": "mDvZe4NuEk91pwKWL7"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='20' json='[{"categ_name": "nB2U3pD8jSkTZez", "id": 20, "image_descr": "b4IWgUBYj0vNP", "image_path": "RSlIAhfupaXBzWc"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='21' json='[{"categ_name": "TYnjKXx89lVc", "id": 21, "image_descr": "jWwyr0Unx8Q", "image_path": "OpvBJLgE4Mn50Sw8eyXs"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='22' json='[{"categ_name": "0wGR3VzZfX25S", "id": 22, "image_descr": "rjlxepHEPkn6WQv8AZR", "image_path": "7DLuhJYRZtiOd"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='23' json='[{"categ_name": "ZirPj5deSO6UDKR", "id": 23, "image_descr": "W8pzYTMC5Le4", "image_path": "0VLeOkp9a8ZASTKtm"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='24' json='[{"categ_name": "b3LQ8N4FmA", "id": 24, "image_descr": "es1jO7oru6kqWJLP8Z", "image_path": "eZ1XrSa5lsRFGN"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='25' json='[{"categ_name": "mF5b3RjGXf6aMQ", "id": 25, "image_descr": "dLxXSJrl9vf", "image_path": "zEjrukQYs7"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='26' json='[{"categ_name": "vIfs3TV06egDB5aGKohx", "id": 26, "image_descr": "w1jMqvgs7mlp0", "image_path": "VS0EtLDNebyC3cYfUIzB"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='27' json='[{"categ_name": "Ij6Bvs3g57OPToeuMfyR", "id": 27, "image_descr": "RlBauGUnisJtcqLdD", "image_path": "vx0OklSWphu5yYzEJq"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='28' json='[{"categ_name": "Kh7qYZJON9", "id": 28, "image_descr": "ZOUm0R2sLukX16eD3gn", "image_path": "tFLzSOPqHQBW4yhwIx"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='29' json='[{"categ_name": "paW3JkMrULRvDqO7", "id": 29, "image_descr": "ZuRnIGzwioH9XTUBOLe", "image_path": "lYHDdTWR30"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='30' json='[{"categ_name": "SMn6Bw58s0foWOk", "id": 30, "image_descr": "9kZ8A2E6myVgbv", "image_path": "Fy9bujzqBDMNYso"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='31' json='[{"categ_name": "kBvrazLj4o", "id": 31, "image_descr": "SeqvKNnfpCtTWHm", "image_path": "sGYH2zKFV5CfU1o"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='32' json='[{"categ_name": "jhMEcbYoyvarplkXz", "id": 32, "image_descr": "rlWEcn4oeGBM3mDhS15s", "image_path": "ognCijHfKsu0ymAGUq"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='33' json='[{"categ_name": "IsXLUgRHm2u39pAZEw", "id": 33, "image_descr": "8G0L4O7Xdju", "image_path": "lWZjGX1Jao0C"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='34' json='[{"categ_name": "xDm0vw6sbUo", "id": 34, "image_descr": "SBhZ8HQw4F2jI", "image_path": "1FlL6V2jdXEmHre35D"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='35' json='[{"categ_name": "RYqoFOfyeAIKmTZC", "id": 35, "image_descr": "arpceHdijG8E4fTNst", "image_path": "Dhx30odWcPZbmJpMv"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='36' json='[{"categ_name": "nV4CsSpRQxulMX", "id": 36, "image_descr": "bykJMZmPKBjngNQh", "image_path": "61rGEA432FOwkDTH"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='37' json='[{"categ_name": "89nNlsmzZ1GY0vRWaV3A", "id": 37, "image_descr": "FIkqBPRl83pEtXcg", "image_path": "JKEunBRTpf3yDSsXI"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='38' json='[{"categ_name": "XikNZp6dD9PWLabTYO4F", "id": 38, "image_descr": "kmY7DEO2vVtzCdU0ZJ5", "image_path": "sfWD4qNO9H0enRBQ"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='39' json='[{"categ_name": "r2XO9lzmp8eMyQ", "id": 39, "image_descr": "RN2a9TVzEJMt6yGZhxl", "image_path": "WvPpz4UtrkyI"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='40' json='[{"categ_name": "YWiGTHJLg8", "id": 40, "image_descr": "1pjRZACu7s0aJxbN2", "image_path": "gqfcwA2ldBELF"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='41' json='[{"categ_name": "jLA1ql7p9ean65wmkCD", "id": 41, "image_descr": "tsy1He9BPUF", "image_path": "ZSFGTQAL9b0P5M"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='42' json='[{"categ_name": "aR5NXfUWvYnjgHkoeb9L", "id": 42, "image_descr": "JWA5yi4OMTvj", "image_path": "08CLsOexuZSlVg"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='43' json='[{"categ_name": "k53dWpREsqDOfUT", "id": 43, "image_descr": "mDCh2nIHpO4", "image_path": "RclxpGPei7"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='44' json='[{"categ_name": "uYClIamRDBMh", "id": 44, "image_descr": "zdjHhKXn57fcvetmg3x", "image_path": "A6ZjPUqCf2Gsetgul"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='45' json='[{"categ_name": "rljQAOsCTu4Ji1", "id": 45, "image_descr": "2jkWzV5t9nB6wfTUdA", "image_path": "a2suqOPQhFVlHe"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='46' json='[{"categ_name": "1ELvCdqKRXtHbpr", "id": 46, "image_descr": "SBgzUcNvwp1D", "image_path": "RXbnaDePrUo3CG"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='47' json='[{"categ_name": "3kJehvwQCLG", "id": 47, "image_descr": "nD0vIE8RJmroeBalsy", "image_path": "mQpgl6Afi9kqvx14d"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='48' json='[{"categ_name": "dbYuHskZMnig8yOjvRrh", "id": 48, "image_descr": "gTVjKkfiaxQLwz", "image_path": "265eNRpZrBMvDQJftl8k"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='49' json='[{"categ_name": "Yzxly7kI21C3", "id": 49, "image_descr": "dFKk9gl3c47tqv2wh", "image_path": "iV9IAgvaNKqB8"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='50' json='[{"categ_name": "fr4cZA5E0jXQvOs", "id": 50, "image_descr": "PMBrxXOiUHIsnN", "image_path": "T9QxzRK1lNJCEc"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='51' json='[{"categ_name": "BhTECqJV1xNcbOv", "id": 51, "image_descr": "bfVv5jDyUYRa", "image_path": "ijgvr4SwI0YEtxe"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='52' json='[{"categ_name": "zlFOyGjbkIma", "id": 52, "image_descr": "q0zbXrPa19ILKDlt", "image_path": "BXecd0L85VTgSwv"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='53' json='[{"categ_name": "VYLDmz1j98F5", "id": 53, "image_descr": "WpKxYHQhAwOtr268Sc", "image_path": "hLW8QO6DREib9"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='54' json='[{"categ_name": "EYsNuJdGPX6jxZ1CaKpT", "id": 54, "image_descr": "hyAD3slEajB8Nbf", "image_path": "vTWdmJhCKyOpQlg13"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='55' json='[{"categ_name": "zU6t7k9CMGaLHKS2", "id": 55, "image_descr": "CDe9Ic1Ttl", "image_path": "KsFLk1vW7CeUzy0g"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='56' json='[{"categ_name": "VlMUZhOeuK5HDBJ", "id": 56, "image_descr": "w9hBx5lsACMrujF", "image_path": "ISlrP37qepcWYCu"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='57' json='[{"categ_name": "C4Pv9FDUjopH8", "id": 57, "image_descr": "U12ektDZ8fFGMPJ", "image_path": "tlFCKuRPD0w"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='58' json='[{"categ_name": "D8QF4e5nmcH2", "id": 58, "image_descr": "rwGOivyxh3Y6RUfz79DM", "image_path": "JQmMRSbv2TgON"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='59' json='[{"categ_name": "VYzg82R13DiejCWNuTG", "id": 59, "image_descr": "wQbZuhz16PyM", "image_path": "MfwYKC5hBuNU"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='60' json='[{"categ_name": "hUCSOyHxIGNcqpPY921", "id": 60, "image_descr": "FhxRBAD4t5aKPMnmY", "image_path": "7KQFnR19VtdlI0iz"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='61' json='[{"categ_name": "oH95hgkXSumNM", "id": 61, "image_descr": "G2XJYETZyMaH8B5", "image_path": "xXSfaZTNiw2VBD7"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='62' json='[{"categ_name": "rfoLBKNj8Tub", "id": 62, "image_descr": "QZlYUMgIE69q", "image_path": "FdgivUhaSz97o"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='63' json='[{"categ_name": "dPBI9JVYlCzEvg6", "id": 63, "image_descr": "0wVDY4WSdi5r3c", "image_path": "is6Z7QYcp1gV"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='64' json='[{"categ_name": "ncMKPWzdNyYL84xH", "id": 64, "image_descr": "ZFJ6Xmnlry8Nv4P", "image_path": "5aUqdMmeKw6"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='65' json='[{"categ_name": "LVcgPSRI5JGmh", "id": 65, "image_descr": "CN8a7MtRHVgX260enWbc", "image_path": "3Ipw27iRX6ON"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='66' json='[{"categ_name": "BgE3n1t2XCFjqxZV7k", "id": 66, "image_descr": "cfCRDsT1omhqU93", "image_path": "meUaNldihKxOD"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='67' json='[{"categ_name": "RpTNQC2J7siGPnykxKY6", "id": 67, "image_descr": "OX70ZcCd3yWJki", "image_path": "9M4mR6nor7czbQ"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='68' json='[{"categ_name": "nSv9LF61EVQm4", "id": 68, "image_descr": "PWoDRgbHt4AX9TGuh3", "image_path": "pOlPaJqIv2jeQzu"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='69' json='[{"categ_name": "ctDjGKkL3UfriCYz", "id": 69, "image_descr": "i0Uyepd8X3ZArOK", "image_path": "MtmrDy78Q3UnLK"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='70' json='[{"categ_name": "Ri2cMuhDWUlx", "id": 70, "image_descr": "nBfQ1s4NLDaKWX2", "image_path": "E10oAdpnvg2"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='71' json='[{"categ_name": "7uUOQakzMF1NqWf4HC5", "id": 71, "image_descr": "l2VGOus483pQY", "image_path": "MmCaRtiBrOLuyQ2"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='72' json='[{"categ_name": "NJug4lR5VxDSLwf", "id": 72, "image_descr": "UoCPdhqrb9sL", "image_path": "ragfnToNY7u9MkI8"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='73' json='[{"categ_name": "M283eZdOrG", "id": 73, "image_descr": "isYWx1lEkBdtJmc4He", "image_path": "seaP9lJ5bDOUtr"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='74' json='[{"categ_name": "dohOk1NuGzCp", "id": 74, "image_descr": "OFjCSyfEoa7Pp91RGU23", "image_path": "OixQVX4WNR7610Uzph"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='75' json='[{"categ_name": "W32yzQxqf79RwB", "id": 75, "image_descr": "N1apHt5QLEdn", "image_path": "rbsxc9zgHqIitY"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='76' json='[{"categ_name": "aK8IZHD4VkWNQJbiw17", "id": 76, "image_descr": "ZoCBpYcD1WTJr", "image_path": "ICUd9eKNv1pbO0S"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='77' json='[{"categ_name": "UKTJZ6Lj40", "id": 77, "image_descr": "JOyeMuiYtHT40vwPLjG7", "image_path": "KDnm73AkGvezN"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='78' json='[{"categ_name": "9gsW6c5ASxl81MCjwEZ", "id": 78, "image_descr": "xm9KDTJliyF46", "image_path": "zmdX2EjnKw4Tcxrq"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='PUT' idRest='79' json='[{"categ_name": "boYFdBwD0uZkLOM9", "id": 79, "image_descr": "OAGFuR7zw3PJEoifH", "image_path": "1uw5mQ6NPWl"}]'/>
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
<test:rest table='category' method='DELETE' idRest='85'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='86'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='87'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='88'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='89'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='90'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='91'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='92'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='93'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='94'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='95'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='96'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='97'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='98'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='category' method='DELETE' idRest='99'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='GET'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' idRest='20'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' idRest='42'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' idRest='32'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' idRest='27'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' idRest='37'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='GET' idRest='1'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='GET' idRest='65'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='GET' idRest='45'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='GET' idRest='35'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' idRest='44'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='GET' idRest='50'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' idRest='53'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' idRest='15'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='GET' idRest='64'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='GET' idRest='48'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='GET' idRest='57'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' idRest='31'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' idRest='24'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' idRest='46'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' query='attr_eq_available=2003-02-26&attr_eq_description=OLq80h4azgYJHZb&attr_lt_title=1KQqRV9Ozx&attr_lt_price=645.04&attr_ge_show=false&attr_le_image_descr=DWyaOglEZYqKXSJIc&attr_gt_currency=LTjCpIz0bO1Q5loef&attr_le_id=3&attr_ge_image_path=BYTIhH5mjt8M'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='POST' json='[{"available": "2008-11-21", "description": "uqGTt5McNYKxmDFjL", "show": "true", "price": "586.98", "title": "0TOCp9w2KdS", "image_descr": "6B39xORqEAWyLQS0MGp", "currency": "Q1ptCnrZ0fSzvT", "image_path": "A6luJK09WiDXLbEYs"}, {"available": "2006-06-07", "description": "ekDPIXBZ0SErv3jYqad", "show": "false", "price": "989.33", "title": "3Vk1I0NFnfiOyACoveT", "image_descr": "OvP3lS8njV5bH", "currency": "xsa4Q8AHXLI3eymUn", "image_path": "gyaPrnDAp75RfEv"}, {"available": "2000-10-08", "description": "0zfP8thnZTQU", "show": "false", "price": "199.94", "title": "sFHYNh4eUv8", "image_descr": "AfkV6R5rpeoTL4vSxmKB", "currency": "vFb0ZQB7fR1JkDg8Lo", "image_path": "4PUQlpXyh6VgYNn0Wi7j"}, {"available": "2000-08-03", "description": "ITRJwuQbp6Zg38", "show": "true", "price": "229.39", "title": "C1eh9mfZkna3KStUg", "image_descr": "VvbeTj6uyAdklcxsp7", "currency": "EILMXhu6WVJQ0na", "image_path": "qjBD7YVtmGWQ14"}, {"available": "2000-02-01", "description": "zGL15aHxlRvC6fZpJ", "show": "true", "price": "313.0", "title": "OJ47Fw6YupzivWXbnrfj", "image_descr": "OecZIL5KoRN7MY", "currency": "lODioSNYxw2Mh5LRtW", "image_path": "KF7e8VDxWv"}, {"available": "2005-08-12", "description": "P8d9btSjTDaOq", "show": "true", "price": "323.05", "title": "0kYRjlPFTfvMq", "image_descr": "sE3Aak7G4YiPf0Ogn1", "currency": "kNaLWvDIAx", "image_path": "RWz8qt9vUQVJG"}, {"available": "2009-04-09", "description": "g80WKejwBOudF9", "show": "false", "price": "948.31", "title": "xu4tFv3UXfdP", "image_descr": "9B2qJfQjOpVsF8a", "currency": "FmZDEaNCRyh8jfio7u", "image_path": "XEeAaY9wQhp"}, {"available": "2003-09-08", "description": "xJeOuDkUZ1islV", "show": "false", "price": "297.78", "title": "97ROkS8EbhNVlK6HDu", "image_descr": "q3yeG9XUZA0zIB5siP", "currency": "o8lut7mknbB5", "image_path": "rdRoXFOE9VvKtib54x"}, {"available": "2003-09-14", "description": "BnyJA1zCMsR27", "show": "true", "price": "925.08", "title": "PmDIV3cUR4gNGTw", "image_descr": "TIyNLfYHJEzBAPqK", "currency": "2SknxZwOVPDtC1WF", "image_path": "K56TBiAaIsl"}, {"available": "2009-07-05", "description": "N7QAfRw0EtMLZSKb3U", "show": "true", "price": "218.84", "title": "hQRqXZ0FHWgMmP", "image_descr": "qOCNLGRhcn96orQi", "currency": "f5mcyj7QI2HUTavisolC", "image_path": "FcPaMtzgYUWyT"}, {"available": "2005-02-25", "description": "cFUpftzkedJ05CArxPZq", "show": "true", "price": "790.89", "title": "ilU6MC8z7bI4", "image_descr": "8OBozc9rj4iNWR", "currency": "VQrUvaOiFKYJkLt0", "image_path": "xar3yOLGZDhk"}, {"available": "2004-05-05", "description": "FVnp42YUtbrk8LM", "show": "true", "price": "717.29", "title": "rqtjUIweu4o2", "image_descr": "CTtKgSApa9qk", "currency": "RmAqOxJvnd4aN", "image_path": "bW10Bc2UJmqesR"}, {"available": "2002-11-13", "description": "XpTPUfiCVERanAedYxrF", "show": "false", "price": "867.76", "title": "T2cZN6x0vHQDpVb", "image_descr": "SxJbfr1m79cjW5nQM0ZV", "currency": "YlqS06nyvax", "image_path": "ROuENlChM4k"}, {"available": "2003-07-26", "description": "BP6m08boCN3qn4I9Zk", "show": "true", "price": "235.79", "title": "INUCyfbVFaiwRsEx3K", "image_descr": "AyjLf5H8JY93XrdR", "currency": "zFKJ8t0whRd1cBq6EevA", "image_path": "XlYhgDCcuPNVGb3"}, {"available": "2006-11-13", "description": "BUperGSc1WkVtlE", "show": "true", "price": "154.14", "title": "n9XyAfJD8Ol", "image_descr": "3IGLUN4CJy2Fuz", "currency": "UGR85vo2qSj", "image_path": "t7sRSGgbXrjkQLWZzhO"}, {"available": "2008-09-08", "description": "pfCdzEkNg8H6BUl2oO", "show": "false", "price": "457.52", "title": "31NKmzboWpTyE9i8xgR", "image_descr": "29z7WodmgJMrI", "currency": "hX3LgtGJqNMboKcOVnZC", "image_path": "w8RMlHhavY4xpCF7oT"}, {"available": "2000-04-03", "description": "IZXW7EJYybNu", "show": "true", "price": "126.91", "title": "yYPU1LzwcnKfZ", "image_descr": "cH9ihT8FaRX", "currency": "lQjo5R2afBUh0u1eWMTm", "image_path": "RxNLdfH0YIz"}, {"available": "2004-11-01", "description": "gSkrXCD0ohxwcaOHJ3", "show": "true", "price": "473.86", "title": "Df7jOZh8xT4LSKqNg", "image_descr": "StfeEnc908X", "currency": "RVnD0kqHWG69PLQB1", "image_path": "9FY3aGfLnCIk5JZWwu"}, {"available": "2006-08-16", "description": "jOX1ziDTn4ZPYF76m", "show": "true", "price": "228.53", "title": "ywGx9ETMPRFLY", "image_descr": "gamhB1ZEAStw67MlYdbf", "currency": "ZDKnpyu0X3hxegTrd", "image_path": "narRofxIqiwu5"}, {"available": "2007-10-04", "description": "qavyjm489T", "show": "true", "price": "357.81", "title": "QehGImgfHyOiza3P58b", "image_descr": "KSgYkQXx3HuU5", "currency": "srG8JLkcNM9wymAU0", "image_path": "5h3Svw8qel7DVz"}, {"available": "2008-02-05", "description": "XWMyBD6hk1b", "show": "false", "price": "463.81", "title": "sq6RtgxQNdiLpFlTf", "image_descr": "xKWCEA0sgby69", "currency": "YxRpwO1soEd3ykU", "image_path": "4fBUKjP7tlHLkAMpw8S0"}, {"available": "2008-09-17", "description": "R35Oaz7UjE", "show": "false", "price": "808.15", "title": "we2DEkTh6HFugCdpc3", "image_descr": "Ro6w5n8T2M", "currency": "0IktbVEZaAORLP2c7D", "image_path": "9vQgxcuFiIKT"}, {"available": "2003-06-01", "description": "bpLZ8GenVCzu", "show": "true", "price": "324.66", "title": "coISnmTEbZX6t1D", "image_descr": "duvhZsPcYxIFS67py", "currency": "9cyqheGaSVkELFrD", "image_path": "pJV8KrhE9i145"}, {"available": "2007-11-03", "description": "nDXxLCQt9Ud4gr", "show": "false", "price": "677.61", "title": "Zk9nQx1KiPv5", "image_descr": "YFyZHx9sMqUijOJtu0G", "currency": "AY43Ecd8KTi1FkX", "image_path": "96nJP3jiO4ar"}, {"available": "2009-10-09", "description": "OQ7hJ2LdXTup6ve", "show": "false", "price": "153.91", "title": "iDzP1txGehuc", "image_descr": "EWQIHaVDAt5zsm8Tgup", "currency": "rKN40Fu7dk2Y1UBtjlMZ", "image_path": "2yixWmcX73QsnPTL"}, {"available": "2009-11-22", "description": "yJ1E5pRMF6rc", "show": "false", "price": "268.61", "title": "VfOroP5z6eys", "image_descr": "Jh8ipdXCTRebck0L9", "currency": "HFTBmNf5RA6", "image_path": "JK5ZztdMnu0lbC"}, {"available": "2004-01-07", "description": "0NyhqF4WeDJjL91iA", "show": "false", "price": "981.14", "title": "KTjpvRao2Mrz3uf", "image_descr": "KWj6FaE7y1LYCHlI", "currency": "QosP3eBXKdS", "image_path": "UJajMKV7HNTs5DX"}, {"available": "2007-07-06", "description": "xkubjycmA9", "show": "true", "price": "870.97", "title": "69lZSwJFMptH", "image_descr": "v7tfycUaFLw", "currency": "gMIH60c4mpS7", "image_path": "12XnjxwcQ7IuMdVSzDpk"}, {"available": "2000-10-05", "description": "HIn2pyG3UScQmX", "show": "true", "price": "53.99", "title": "816vXPodtqRpA7Ywzf", "image_descr": "Q8Um0J94uya71Pwhr", "currency": "bYoi4PljOHXp", "image_path": "UJt4xSzN7hkw62"}, {"available": "2009-05-18", "description": "fqs6KWSkRCjn", "show": "true", "price": "358.03", "title": "Ze1FEHkIg4otAy", "image_descr": "2FwJIqaseBS3tD", "currency": "bjncCxKoU3utIymTi87", "image_path": "sDc1EgqYKJQ3j0"}, {"available": "2000-04-01", "description": "p3i6eMDCARJyxuHtv1Wh", "show": "true", "price": "262.82", "title": "XK2uwLe4VYOGSlip", "image_descr": "ZtuKhkgLplX1c6", "currency": "GFdCAoXy45HecvnqD", "image_path": "SWDx19X7A3ptIa"}, {"available": "2003-06-02", "description": "KsbSutVWyPL6vgBx", "show": "true", "price": "777.23", "title": "fOMJ4SjNce", "image_descr": "W92PwUxumovXZnIgTDBK", "currency": "UEp481qLKNtZobh", "image_path": "8aVnDiKAL3"}, {"available": "2009-07-22", "description": "m0EL3tcil7j", "show": "true", "price": "858.79", "title": "0YRVs4vGZ2DKyXM9", "image_descr": "G1miPLASZpr7t", "currency": "BPHyNTLxDVQ", "image_path": "1Kh7XlgTqjvUMHJe8"}, {"available": "2008-03-09", "description": "Kjow27pZhx49UMV", "show": "true", "price": "807.2", "title": "qKdg8R52l1AX", "image_descr": "Q98kcPsV7JIhrqbZz1", "currency": "UlCQADf8ivGLK", "image_path": "dwoMYFxICSXzKJZV"}, {"available": "2002-04-18", "description": "RB2AEY5lfw9O4", "show": "true", "price": "864.52", "title": "eg1K5pLPj8QxJBGb", "image_descr": "fuGoCD7Fyc3aMq", "currency": "8oDc2KufP5xY", "image_path": "EYmniOrso0CNyqu"}, {"available": "2005-11-09", "description": "NJ9RdmhletUWjH61qcAZ", "show": "true", "price": "146.89", "title": "wEvtSZVKUa5YxDgBbc", "image_descr": "9JqRBeDfV3pjOo7G", "currency": "wnfljPg9W4OkhroQm", "image_path": "NfZJ7WBKgR9Y3p"}, {"available": "2007-01-11", "description": "TlhGJmFZgOXMyIRnS", "show": "false", "price": "360.03", "title": "vj2Hs0MREnQFJ", "image_descr": "wKjZ0SE5P63Xs", "currency": "GPt3bv5w8EfiBnqhz", "image_path": "QJk2PoEtCpKh0O"}, {"available": "2002-02-20", "description": "8gRqbpPnoVlFJrNQkWZw", "show": "true", "price": "209.52", "title": "lL3dMrNSh60s7", "image_descr": "3MzmAbsKULxtGQhIja", "currency": "UO9lC2R07n5XMYGZ1Wzq", "image_path": "6xQrVHwo9BiyDqY"}, {"available": "2000-09-22", "description": "8suS7vbIMiwdQqBT", "show": "false", "price": "152.63", "title": "TC48IynQlV0mBwtix", "image_descr": "yE2ZdQb7Rhgwze", "currency": "Bw6hb5ZDfCSgnRda1A", "image_path": "20N3SuRx5k"}, {"available": "2007-04-11", "description": "cESvYykgzrht41", "show": "false", "price": "729.08", "title": "z6iMQtvTa25", "image_descr": "5TdleKUPub8C4XBHcR7t", "currency": "tgBIoNPRlm", "image_path": "EFN2rWYBxLqsImvi4C"}, {"available": "2001-02-04", "description": "pqbGM6NSAc9DnlRZyeE8", "show": "true", "price": "157.31", "title": "pM4e3m9KoP", "image_descr": "ZKJcd0q71nwx", "currency": "6mRk85KdNT", "image_path": "6wmKNnrv1QLaxBikedg9"}, {"available": "2006-06-18", "description": "w5ZjgpyWeT", "show": "false", "price": "581.78", "title": "KzhlIRMo7OS6e2BwtF", "image_descr": "KPYklXSbxns6m2y", "currency": "wIz0rfM7Bj4bP96HG", "image_path": "aMqgwUs1jpAm0"}, {"available": "2007-06-20", "description": "Un1woPMSCbtj3Tp", "show": "true", "price": "157.98", "title": "FpJ2MnKSBxHiRarCV5", "image_descr": "tNLh2nMu8O", "currency": "n3HXaTNI5MB", "image_path": "yGnTN7vrj3gxRc26U"}, {"available": "2006-11-23", "description": "cbezI0Tsoa9q", "show": "false", "price": "637.99", "title": "YOAbG2K3V1i9L", "image_descr": "N653vsVtPRhTFLe", "currency": "cKGkv5ozBeNgfM", "image_path": "bwOg5QptsCD4J"}, {"available": "2008-11-12", "description": "hWyw4QjUoKvMudAktD", "show": "false", "price": "626.17", "title": "cT8ziy3sXZFE95W", "image_descr": "0m5E3yqJIDL7NVe", "currency": "mlyJdrfGu5PtI7avgHw", "image_path": "O21QClKJ7NPkgtAWfLp"}, {"available": "2001-10-04", "description": "tlJ5hrdTw7Cn0qfs", "show": "false", "price": "803.73", "title": "3E8Domt6B59LQeXW4Kz", "image_descr": "HGTUvl4JwqLMA1Boza", "currency": "Tnkp4wexXYEHDu5", "image_path": "hygfrcoVzqT"}, {"available": "2001-10-10", "description": "rbpYsIO62df7FDtJM1", "show": "true", "price": "873.51", "title": "iBS3ytkvMfclnhgz", "image_descr": "WUzbSKwfhXpk", "currency": "i6shxAyrJ3d8k9EneKIf", "image_path": "QrBWaRyoDp"}, {"available": "2008-09-05", "description": "s0Eot9FPnzNMO36", "show": "true", "price": "655.63", "title": "HsJVIfgaLjQMT2dBn", "image_descr": "pWB5ntHEiMUqubC", "currency": "7vYX5zSK6wUcNd", "image_path": "VbegaGjZpwRAuFEnsL"}, {"available": "2003-11-14", "description": "ns63l2tFvarDfwp", "show": "false", "price": "890.35", "title": "OedBlv1JhC9i", "image_descr": "RxkZuF6AWOJIb8p", "currency": "wCd6P8u4YlZLzgMvf2", "image_path": "T7hfHLBmERXo4z0y5N9"}, {"available": "2005-03-04", "description": "V4ea8It0MQorAhmHd", "show": "false", "price": "1.62", "title": "pXBJTRCxv9l1Dm8cVg", "image_descr": "SypQvXKEubswtWn2r1", "currency": "USQTLXWyJEGxZe6Pc4n", "image_path": "amPGM3BsEqznTYKC"}, {"available": "2004-11-24", "description": "Uk8i4vyojHdt", "show": "true", "price": "942.45", "title": "7uHfFK3lQTaevjItAp", "image_descr": "E6fV8ylSWCnaM9I", "currency": "piOa01TSI9Qsuh", "image_path": "ynEAOvZiGPIosDS1CNge"}, {"available": "2000-10-12", "description": "Xvgs12zu68q3O5F0PB", "show": "true", "price": "86.9", "title": "YZ24NnDRzEy", "image_descr": "vib3s1oDGAt9P", "currency": "xdhH4bQL2Y", "image_path": "tlRJ4gsbDWv"}, {"available": "2000-05-27", "description": "RATu6DBte0zNaIFs17", "show": "true", "price": "531.77", "title": "hN35YIF92vky4u", "image_descr": "mH9Gb10sjLpP", "currency": "xOjrvC14wYK6HuJVhEoI", "image_path": "0PAxcqgGKoBQFE"}, {"available": "2003-04-16", "description": "wU5VMd1gFpKDtqyoNIjJ", "show": "true", "price": "513.03", "title": "elNUF45KpDnbj3da", "image_descr": "Mi1JhPV4AW", "currency": "ZbQzvlHoeD48P5mW3y0S", "image_path": "f7bJZd6pj3FxKuBRsye"}, {"available": "2009-07-24", "description": "e37RZKDc9ykAjVUv1", "show": "false", "price": "413.88", "title": "Bg1vL78CXV", "image_descr": "Z1UWYjgu4o", "currency": "Wj7tcvqIeOzpmx5CVQJa", "image_path": "5YSrlEvNZRLQXz9"}, {"available": "2004-09-03", "description": "5knwoBKMuYGpeACiJ", "show": "true", "price": "952.13", "title": "VPEAeHUGIhJDic1uL", "image_descr": "HjO2YsGoqlX", "currency": "f0Rg193zULe8o", "image_path": "wWiF60m3bThNSROCz"}, {"available": "2007-07-21", "description": "hgbfQk8Gv2Ru9jJI6V", "show": "false", "price": "198.36", "title": "sMEyzW0ogexSL", "image_descr": "3NlvhesAu81IKp", "currency": "0YKDgO3u5MICntQ2if", "image_path": "n2cZPkKLsR6Te87X"}, {"available": "2009-07-26", "description": "N2kfiXT4gD", "show": "true", "price": "822.23", "title": "aZ2wL5D0YGR", "image_descr": "kORbE1PQLl", "currency": "152B74zAN8Ef0TekWw", "image_path": "wKG20nADMzEPkshd31Y"}, {"available": "2007-10-06", "description": "jhHEZAQ5CWxk", "show": "true", "price": "344.87", "title": "HIhus6TjNObe1krxC", "image_descr": "hpgdxauXRniWPw", "currency": "6A2p0do7zQKYDaSk", "image_path": "K4GuSb58gAUBHy"}, {"available": "2003-10-10", "description": "3LUAEIru2q6m", "show": "false", "price": "293.94", "title": "OUR86ga9pGEh4", "image_descr": "i2BKC4VDyuxzrWI3ZLS", "currency": "ZVlYw9riCJek7hu", "image_path": "1i9OcWtldkYRDz"}, {"available": "2008-06-20", "description": "qN6frFXoiSVPM", "show": "true", "price": "940.11", "title": "tyQWpn4aCzFsS", "image_descr": "AOP5vSNTpzJ8LZuiQD", "currency": "b5Yahv8AFQSUqC", "image_path": "BpKcf90MqShx"}, {"available": "2004-01-18", "description": "c23gAR0YKha", "show": "false", "price": "878.78", "title": "7c2EieyA0wOnzXDP", "image_descr": "bjQszxHyJnBLw6EvX48", "currency": "kqbU4afeHjA", "image_path": "8sbf2elpaK0"}, {"available": "2003-05-12", "description": "ECAJNnX4bGOMl", "show": "false", "price": "930.12", "title": "UF7tzElCM5aHpvBR8jL", "image_descr": "V8ocEXgHAUJ9Gk", "currency": "C8TdfDutSW9", "image_path": "7mgL2dbAqDw1VBWP"}, {"available": "2006-02-11", "description": "0gesWGRvnE6tzm", "show": "false", "price": "929.61", "title": "eZ2zwvyUYh", "image_descr": "jhcu5awdoxpl", "currency": "dJ2KkaFyPE5Z", "image_path": "f3B4LiueGqZ8yS"}, {"available": "2000-06-03", "description": "eFOtE1WmpIr45", "show": "true", "price": "974.16", "title": "sPWvBkUJySxmMt85VAb6", "image_descr": "pLYzAh6Qqr", "currency": "QHqcAa4K3Vg6", "image_path": "m0DEtLJCIeYHRWb"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='1' json='[{"available": "2002-02-12", "description": "gYbeL2OyqQu", "show": "true", "price": "974.71", "title": "Aag7HSxZid", "image_descr": "pYaXUy2RMcCzFbSZof", "currency": "OaNJKvbVPDh", "id": 1, "image_path": "6o4Ox91lPn"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='2' json='[{"available": "2000-10-08", "description": "gp4CIyvQa6e98wFKdmnD", "show": "true", "price": "916.11", "title": "A93Xp2NsuIhgOnP", "image_descr": "OAPa6i4ec8", "currency": "qnSEhHZV4d5PFf0R", "id": 2, "image_path": "Ghkg6cOLJUvs"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='3' json='[{"available": "2008-06-15", "description": "V2Fl4MykmApH6a7R50", "show": "false", "price": "376.94", "title": "EkMLsfipYndSj19", "image_descr": "ve4REiqKbC95ynw", "currency": "Hun4bFolExJS1a0B", "id": 3, "image_path": "ymvSJqj8LE"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='4' json='[{"available": "2004-02-16", "description": "rHtaO6FPlSRNMfh8G7w", "show": "false", "price": "765.59", "title": "3WQxl0jkLKwBG429", "image_descr": "JuHAjd59XZhOLeYw", "currency": "xa6ypHjGfIlL", "id": 4, "image_path": "gct78BIauqU16Q"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='5' json='[{"available": "2005-10-03", "description": "1AR5ZUkdMpym3W", "show": "false", "price": "265.32", "title": "P6WSJ2rnvifk4RX9hjcx", "image_descr": "aV0Q5uUgqp3fNIyivmBb", "currency": "0T8QHBoJgbutlWca", "id": 5, "image_path": "cGCZXL6SRsx3Dd"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='6' json='[{"available": "2002-10-05", "description": "SLA47KMGn5zg", "show": "true", "price": "520.42", "title": "DhZaU2l6zePV9J3AGciH", "image_descr": "4mLsoKvFUy", "currency": "UtnBw9X1FOoYVPsuI", "id": 6, "image_path": "fErThBs2VPJv"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='7' json='[{"available": "2000-06-03", "description": "TNX16ySQIfa", "show": "true", "price": "818.15", "title": "upw15fa6M2Yb", "image_descr": "Tf1UstkGYv2w", "currency": "WvjQp73C4Acrnfi", "id": 7, "image_path": "UctTFozNi5Y8vfQJl"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='8' json='[{"available": "2007-09-21", "description": "ZaVYjlg9wrBWMvUe7KQ0", "show": "true", "price": "255.43", "title": "eWdOgFQLT8jE0", "image_descr": "Ke2inyJwD31hZfOdqB", "currency": "UF13o6PEr7GDkVmMIKgy", "id": 8, "image_path": "b7Q3eq9tGKO8JIA"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='9' json='[{"available": "2000-07-16", "description": "ZgmExDlU9Ae", "show": "false", "price": "713.58", "title": "qIlre1YuL4", "image_descr": "M48unZhtk6rwVHqYRg", "currency": "tLPZE71B9HhSOwKoGrT", "id": 9, "image_path": "e1fwjLPa2z97OnkM3N"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='10' json='[{"available": "2003-02-16", "description": "2FgklP9ULEytn", "show": "true", "price": "146.96", "title": "FhOYrzsGZn", "image_descr": "50SIWYjTQyvu2cJDLb", "currency": "4ihJxnXfbag5o", "id": 10, "image_path": "6lug5Ce2Sj1NMxV"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='11' json='[{"available": "2000-09-07", "description": "YdIs3x1A65T7bVqif", "show": "true", "price": "572.21", "title": "96EfghHncxGz7dI", "image_descr": "CWmJYf5nlwo3A", "currency": "ZydYsA2Bf8PFSvL", "id": 11, "image_path": "IBxyl0YefdLXUW"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='12' json='[{"available": "2009-09-10", "description": "6FU8A7e0dQckKSW", "show": "true", "price": "269.06", "title": "OC5mYSHJ9IUZKuNL", "image_descr": "ONBsgf6pVmxu9y5", "currency": "CN8odlqHJM", "id": 12, "image_path": "J6SN8d2pYUmx"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='13' json='[{"available": "2005-08-06", "description": "QmTG3f4WXNIs9Zw5", "show": "true", "price": "765.6", "title": "ke2AOtu7ojaQX1yHCSl", "image_descr": "32tQeWSklJdZ", "currency": "wMiFZn4OdQtYKpczHgo7", "id": 13, "image_path": "gUnrSF8Z9oXK5P"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='14' json='[{"available": "2005-06-21", "description": "fqe0Nyxowj", "show": "false", "price": "712.18", "title": "LXEtlaWRw8DxC0rYyh", "image_descr": "noCi4WVIwHuj", "currency": "XURlZ4t69IWbhi2Y", "id": 14, "image_path": "BAdjRQUzwG0VqIpY3vaC"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='15' json='[{"available": "2006-10-26", "description": "YQmCHEP8Rr4l9tOz5e", "show": "true", "price": "168.63", "title": "cRt1y7mdAN", "image_descr": "tW5yevIrTZXYdN", "currency": "sZ1kfvW9DlERK0A", "id": 15, "image_path": "OGpuehZCKy0qci"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='16' json='[{"available": "2001-07-06", "description": "bwKdk2hs0QyTpv36c", "show": "false", "price": "721.58", "title": "jmaLUFOgWZGJ2udyw", "image_descr": "GArnZ4QYm1khUift", "currency": "6vyBbKuX3tkOHa9fg", "id": 16, "image_path": "4jhDcsMbtKlrnB8C3"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='17' json='[{"available": "2009-11-23", "description": "MNQRBO64zcuHy", "show": "true", "price": "2.02", "title": "2p1PJ3MObXk6rR", "image_descr": "5CzafnDYFP", "currency": "my8WMAfOslFKZoBn", "id": 17, "image_path": "QVHeb96T8AUvNOnP"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='18' json='[{"available": "2001-04-01", "description": "YgT8EJC4PNfVq1", "show": "true", "price": "606.97", "title": "T8hd4XyuJ1kf3GjV9Y", "image_descr": "KcRsYb1VDqpP", "currency": "sr1w9E8GKUi2vXp70M", "id": 18, "image_path": "BxTKv7k0l539"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='19' json='[{"available": "2002-05-18", "description": "WdJkzOvRx0B", "show": "false", "price": "184.67", "title": "bdr5HnsfNeQ8CDoIBZK", "image_descr": "yubcZLhUgW0pTKdEHV4", "currency": "pHL3qWiuEAVTYB", "id": 19, "image_path": "Bdsqc0R475LN"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='20' json='[{"available": "2001-03-25", "description": "E0pJNFStZx", "show": "false", "price": "189.23", "title": "OWsq0fHcibzey53", "image_descr": "BAdgVEeJ5GL9D4v", "currency": "tcIsKqpoh1vuRg9Lk", "id": 20, "image_path": "aNLOGjtQHA0U3Rz"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='21' json='[{"available": "2009-04-08", "description": "UtBLFJei86l", "show": "false", "price": "76.82", "title": "Zy17A5WvH2", "image_descr": "qpQYUWniaI", "currency": "0iCLXqsYGmM2fy", "id": 21, "image_path": "JnwYc5qVlHpL"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='22' json='[{"available": "2005-06-22", "description": "GW5p2ewvJLs1Hr", "show": "true", "price": "594.96", "title": "7Lu35azHwSWZ", "image_descr": "TH0wRiKJ4IX", "currency": "k1AoaiD8U2nPbzLcmKt", "id": 22, "image_path": "NDY19tlEprPXT0SuWMI"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='23' json='[{"available": "2008-07-09", "description": "DahB0uLvsYHU", "show": "true", "price": "358.03", "title": "SyXjLVwxpb9s3UHhN8d", "image_descr": "q6t78ohmBZUT9", "currency": "wbtTleYEBR86J", "id": 23, "image_path": "nRpewqP8OWSjhzKNd5"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='24' json='[{"available": "2005-08-01", "description": "cgui8JAbSWlFXVh", "show": "true", "price": "592.86", "title": "oFGyV6sApkj1mZSg", "image_descr": "TK9pYIFGdl", "currency": "EpGmxAoaQk9", "id": 24, "image_path": "tYraeJXmwZPhi"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='25' json='[{"available": "2004-03-11", "description": "unMJbZYhf6KOUkLvFgi", "show": "false", "price": "212.54", "title": "wlvC48skpTZOq", "image_descr": "MLZygvEH6oQJuiNzKm", "currency": "IScHfljoiKNwUrmJ9sR", "id": 25, "image_path": "BV8aNgYZ3DtjOf"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='26' json='[{"available": "2008-05-01", "description": "RDJBaeg3SMhqzov", "show": "true", "price": "119.0", "title": "SWVLo5Buxl", "image_descr": "BbP8uSJ5c0xfwENl", "currency": "vkSFcmegpj", "id": 26, "image_path": "cKV1CThOjQHiu"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='27' json='[{"available": "2005-10-21", "description": "Iz9L0hEy3ned", "show": "false", "price": "565.87", "title": "U7Zws1pvGN", "image_descr": "cY8kF0mDbZ6u", "currency": "unlefgQF0VtMcImP3UhE", "id": 27, "image_path": "PVpltRCTq3Mbx2e4N"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='28' json='[{"available": "2000-03-05", "description": "lK3YscRVNryGMi", "show": "false", "price": "15.07", "title": "IGlfPCzurcEiJ05VXv", "image_descr": "HfhcypFQUdNGSOrlVe4v", "currency": "B03JjtZKkMWnVg6U", "id": 28, "image_path": "btO0rH5KRf42DGUMiBP"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='29' json='[{"available": "2007-04-03", "description": "4TwVeshqHZAnvJBz6bM", "show": "false", "price": "878.4", "title": "osF4ywOam3pz69", "image_descr": "J0R8MUhfCvB", "currency": "pe9iNwmWBD", "id": 29, "image_path": "q6YVrTjUsma"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='30' json='[{"available": "2002-07-19", "description": "GnNQOX5BgwrZlaWxK", "show": "true", "price": "637.36", "title": "Un56pTlmF3zScg", "image_descr": "Q4iewhaXV6WvDI", "currency": "agCJ2UTYmn63DRP", "id": 30, "image_path": "n2RsWHdvtfVBuEU"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='31' json='[{"available": "2003-09-20", "description": "u7ZL0DJk8CPHz", "show": "false", "price": "308.46", "title": "bX4ox7qEJCmK0IMiHl", "image_descr": "ROBTKsXvlUHPzyf7MNG8", "currency": "XqPMRuOW9Zi2w", "id": 31, "image_path": "bvxhogA6ZcDBTWlCR"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='32' json='[{"available": "2005-02-22", "description": "OU6F0PTnLhX4", "show": "true", "price": "380.75", "title": "i1J92EAeKojmqdVsbOH", "image_descr": "rVKuRXDLeynvUN6wqIb", "currency": "RN0KgfTsJUMY2", "id": 32, "image_path": "kvWIUoDS1VpgjT"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='33' json='[{"available": "2006-07-10", "description": "iwU8X4IbQlmB", "show": "false", "price": "966.88", "title": "WEhjyGmsFHVtcPgQBpq", "image_descr": "b0Bta6SG3DouMQsXfKpF", "currency": "TPXtlRq3vO9CQ6c8Z", "id": 33, "image_path": "D8qZ3Llu4wE"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='34' json='[{"available": "2006-11-19", "description": "8nkzgXTLhFBs02pRP", "show": "false", "price": "78.79", "title": "mzkaoXLfh2ZYInKFT0Vs", "image_descr": "3X4PDcrZAMQkKJh9GF", "currency": "FmItd57hZrU4a9pY0iS", "id": 34, "image_path": "ukWhOfMJN5T"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='35' json='[{"available": "2002-11-16", "description": "9GJHu63LMqhNati", "show": "true", "price": "527.4", "title": "kfnqu5xRrXpI4ys", "image_descr": "hpymYMsiDC4tBd", "currency": "CiJYzLE3dQM4H", "id": 35, "image_path": "NryBk2QPcWfO9"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='36' json='[{"available": "2006-04-16", "description": "5fxSDWGdQH", "show": "false", "price": "606.3", "title": "zRkX9utpKCABmg", "image_descr": "DE3c7Oayjw4Z6xM", "currency": "7BhGMdXVlqbzRsYfCJ", "id": 36, "image_path": "R0cAmEtS6NxrVp1h"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='37' json='[{"available": "2007-03-10", "description": "o9HIz76ebP2TlUfYC4w", "show": "true", "price": "455.66", "title": "2jSProyq4Wc9nuAmHZi1", "image_descr": "aVZtGINuFBKcT9zd6A", "currency": "NTP26LbmrCaR", "id": 37, "image_path": "xIpH9VQ84PdDNlfBJ"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='38' json='[{"available": "2002-10-02", "description": "20BTqySa4FuoENp", "show": "true", "price": "170.37", "title": "6iY8XAmOIgR", "image_descr": "hSuGZQsAw0lp", "currency": "JECbrAZxmcS", "id": 38, "image_path": "muVbpzU7QcnfS1BLAi"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='39' json='[{"available": "2003-04-12", "description": "yYsHDVq0xlFw5L", "show": "true", "price": "417.76", "title": "VTi6aCx0oWUR45fBpe", "image_descr": "cSyJWjLPp1RVlbeEG36", "currency": "J7cH3MyAFLkYs", "id": 39, "image_path": "aCwQG1bfnJVRy5iS"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='40' json='[{"available": "2003-04-08", "description": "nQxyvkeMBfA8Jc1IDuK7", "show": "true", "price": "437.69", "title": "jNnPBUsD8XdKepzy", "image_descr": "d9AJ8MDOXZnh2", "currency": "ipjDMY5Ry8qs0CWU", "id": 40, "image_path": "30m51IRUGMiYWz"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='41' json='[{"available": "2007-03-09", "description": "TZ82E1zkDmiABvOGKI", "show": "true", "price": "25.25", "title": "IaxtqVyKdSJeMG", "image_descr": "aLCVNx9cMQvH3", "currency": "KRnFNP4WlzZiSQ", "id": 41, "image_path": "6cMTqFod9ERh0"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='42' json='[{"available": "2004-09-04", "description": "kNyclEpARuj3eT6hGI", "show": "true", "price": "933.76", "title": "Yi1l6uDNbI", "image_descr": "sbgAXcFPnlLJx", "currency": "4e1ZCmwlJPyjn", "id": 42, "image_path": "AgW24LsXvBeVdFbQ"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='43' json='[{"available": "2005-02-08", "description": "01tcEZxS6wip2OPH", "show": "true", "price": "47.95", "title": "vi3RgLFySkDX", "image_descr": "9axgKHsI5m8vMwjBJFAS", "currency": "DJAZdvNo9frUMST6yO1B", "id": 43, "image_path": "SpImTYgw8P5Azh3kjXMf"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='44' json='[{"available": "2007-02-09", "description": "SV0nz6Rm59j", "show": "true", "price": "560.7", "title": "OCp3bLtANzZREKH", "image_descr": "e54dXCTFJvmM3", "currency": "PjKgaDu6wY42IfBv", "id": 44, "image_path": "ps2dSjEGYziZexuN6aP"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='45' json='[{"available": "2009-06-27", "description": "E59KieHmdc47lbSw", "show": "true", "price": "949.21", "title": "BlCFNrDJ0KTp5YH2Rcz", "image_descr": "HhLB9P0SOgXcdnw2uxGZ", "currency": "mjRXwLxBsi8KduHM", "id": 45, "image_path": "LQjifO8xSM"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='46' json='[{"available": "2002-06-07", "description": "r8WOXlGdyu", "show": "true", "price": "143.79", "title": "9WM4irlOmE", "image_descr": "8KLvSBycwgPZAiu14", "currency": "Q017l3jvNY", "id": 46, "image_path": "bU2TrXwSon"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='47' json='[{"available": "2000-04-13", "description": "GVanYJB2SLUkd8cQqIx", "show": "false", "price": "592.39", "title": "M6KZbIfkAFGOLH", "image_descr": "NQYgHJ6hXGSomqt", "currency": "mSCRKosP4nNOGV", "id": 47, "image_path": "AoEtbKdcqG9hTyn0"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='48' json='[{"available": "2001-02-18", "description": "VGQZF9Ba217", "show": "false", "price": "257.9", "title": "igpNf8AvXK", "image_descr": "dWi581uFXwfZyRPJ", "currency": "emJwUOIdAY9lVLQsc5r", "id": 48, "image_path": "hwLYfPCsGX3eWgM2Uv"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='49' json='[{"available": "2007-01-06", "description": "t96aN3ZrKB", "show": "true", "price": "366.42", "title": "h2zxyeu8MrK9ApPo70", "image_descr": "qDb5NuGwgxFzo", "currency": "IsFt2ZqzQ4x8uWbjdk", "id": 49, "image_path": "vgH4hlYcaVCMkzIN0S"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='50' json='[{"available": "2003-03-26", "description": "o5RNkpFBi3H7EJIhmG", "show": "true", "price": "524.01", "title": "Dv3lIkKb1TOfmpwUExW", "image_descr": "FKeb2zha9TO", "currency": "Xkxvg2z4Qtw", "id": 50, "image_path": "AhS0jd5Ve68WQg"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='51' json='[{"available": "2001-09-18", "description": "JY4scbZCvOHAI", "show": "false", "price": "228.68", "title": "GU74WLCNdOtF", "image_descr": "w4Pu75ORHhsEI", "currency": "k8ZUqwKCr0E4YvsT", "id": 51, "image_path": "KymOGp8lNoBwEP"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='52' json='[{"available": "2009-07-08", "description": "wldn2J6kDXi5ZH3puMo", "show": "true", "price": "629.7", "title": "0POwEds9CIGDARzVK", "image_descr": "qbkBsjzr275w0VN", "currency": "JyZ8fsF9Me", "id": 52, "image_path": "5os9MVJkTZIKieNqC7c1"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='53' json='[{"available": "2009-07-15", "description": "tedbsDWlug4PJq", "show": "false", "price": "305.58", "title": "DTgAjOpIkEZf", "image_descr": "DUNlq24MvK", "currency": "UFaTzh51lbwPQoKmsjH", "id": 53, "image_path": "fb78agIrNPETp"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='54' json='[{"available": "2005-04-05", "description": "61xJSDl9IhCW2e0", "show": "true", "price": "695.07", "title": "2fWHkpzLUD3BX6vN0T", "image_descr": "J0nZWyKLqH", "currency": "oFL2riaqIT", "id": 54, "image_path": "Wus2xEPLnZpm0"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='55' json='[{"available": "2003-09-08", "description": "Ou1WAXvMmhDE93N", "show": "false", "price": "949.39", "title": "Q7AoTKLpm6Et", "image_descr": "DMFlqbz7G3TL5p", "currency": "Nr9J8xk7KQL3S4Z2oy", "id": 55, "image_path": "8MHi27tgNPqwhQRx0O"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='56' json='[{"available": "2008-03-06", "description": "FsE5YJoSPzWLrb7O", "show": "true", "price": "648.16", "title": "saxLo4iQrd6", "image_descr": "gCMBYJeItwEHhkf965l", "currency": "Zh8OwPo7g5dq4X2AMC", "id": 56, "image_path": "jXsfzt0p2k9gmTJ"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='57' json='[{"available": "2007-10-16", "description": "YECqSRiXUvpGzLuV", "show": "false", "price": "519.79", "title": "KuNAhwibPe9R", "image_descr": "oNxqC0FO7lp9T8zkY", "currency": "KZ9evqJgCM8p", "id": 57, "image_path": "jpb4x9DB721"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='58' json='[{"available": "2003-01-06", "description": "WYUiOm0dhk2PTxj3QbIv", "show": "false", "price": "884.74", "title": "Ssnu7lz2BA", "image_descr": "VLm5EOd82wQU0Ix4P", "currency": "v1aIy2JMqi3p5", "id": 58, "image_path": "R0NK6lDb2e"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='59' json='[{"available": "2006-07-21", "description": "0GIK27mXcPNizSTYU", "show": "true", "price": "926.92", "title": "wCPtn59k7T", "image_descr": "x0esv8wEFjSdTyIzB", "currency": "TeROG6rC5pzHi4YXq0", "id": 59, "image_path": "9maASHCeUgE3kcK4xn7T"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='60' json='[{"available": "2000-04-09", "description": "BriaWGm17z5kfZT", "show": "true", "price": "432.01", "title": "6WkSmoDw7RJdfxargLVX", "image_descr": "Q4FIVx8cZ7ungCstJUWz", "currency": "qkJveHC97UXWQRKhg", "id": 60, "image_path": "2tjzCNULpMF"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='61' json='[{"available": "2000-02-07", "description": "QWSCAgPEIpmDJM", "show": "false", "price": "448.25", "title": "jNbBMoxUOWXY7aZuL", "image_descr": "rlGcp5iBePyw1UZSdv", "currency": "FLpyKmRiWfPOU2G09b", "id": 61, "image_path": "xRBDy3OrJ2eV7hpLu5"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='62' json='[{"available": "2004-10-11", "description": "LZrj2pAK1PV", "show": "true", "price": "567.56", "title": "0yDItmFB9raHeqZuQgs", "image_descr": "9dfNBECrkepDnm", "currency": "giW3Oyf97qRL4", "id": 62, "image_path": "olcYpymATk3SB6ts"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='63' json='[{"available": "2009-09-25", "description": "fhNQCgBA2neb643z", "show": "true", "price": "26.56", "title": "z6ZK3CwBSjovHLy", "image_descr": "DyzCB17XxR", "currency": "dVoPcEK5qxI7CreG8", "id": 63, "image_path": "W1Xex9SpIcyH"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='64' json='[{"available": "2003-05-20", "description": "6gWpdTGDtaO3EvcU8", "show": "true", "price": "701.27", "title": "QpH1jgqECx7KX2T", "image_descr": "zIQuje8EH3F", "currency": "WBf7qEIVt2Px8", "id": 64, "image_path": "aPyxORnpTQCYNH"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='65' json='[{"available": "2003-06-10", "description": "317mlRiEhQFC", "show": "false", "price": "114.43", "title": "nzcPfFMQNT1iCLrHK", "image_descr": "AlgGNMXWncTFU", "currency": "A5QOtlGH2VeNamq7", "id": 65, "image_path": "zQyLaOIXFM"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='66' json='[{"available": "2003-10-17", "description": "A5rIcYb0nMW", "show": "true", "price": "86.35", "title": "Bxw8JqFhcVtiQKgOC", "image_descr": "LE2aOlnmSBiefdU9", "currency": "VZC9NdHWaGLBEb1", "id": 66, "image_path": "CPIvue0TAyEO2"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='67' json='[{"available": "2000-03-08", "description": "OvoNK9nCLjHkYtE", "show": "false", "price": "585.58", "title": "MvihI6GmW2pqAxys", "image_descr": "uiqeV4LoM82zYXQIP", "currency": "IjZwU5v7nHalc", "id": 67, "image_path": "XNF5vCa0Hi32Yr7szTo"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='68' json='[{"available": "2004-07-04", "description": "VCTyEzDjZJnvofSa", "show": "false", "price": "457.79", "title": "F9oac7d5E2I1jqJLWPrU", "image_descr": "Fgxo5BbijTSYNJAXdD0", "currency": "3lcowEQpCUxTiNhnZu", "id": 68, "image_path": "BD72srJGlgnmoHeq1t"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='69' json='[{"available": "2009-06-05", "description": "fFhOzxUVLT20Gd", "show": "true", "price": "345.25", "title": "1m4XVqK6Ynibpkr3v", "image_descr": "LJZsreP5Xm0Kh", "currency": "zKVDFBIqpHWJX", "id": 69, "image_path": "TkDMsNLwyvg57IFEUqaP"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='70' json='[{"available": "2007-11-20", "description": "fy9PADuMQYm", "show": "true", "price": "292.81", "title": "L40uQ2z6TdP", "image_descr": "1A07TaNulCLDjFgtOPwZ", "currency": "hlRg5qXCKv", "id": 70, "image_path": "IkQrLX0PsJWouAptb"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='71' json='[{"available": "2003-10-15", "description": "kVoP570u6inAlqtd", "show": "false", "price": "53.52", "title": "ZLojirBqEHP5nxdVI0g", "image_descr": "q1wm9nDuVk0eol24t", "currency": "hZQWarJvy18CDbBueTR", "id": 71, "image_path": "P4MdGKH8w1I7"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='72' json='[{"available": "2009-04-15", "description": "hXvfIde29FiLzT", "show": "true", "price": "191.73", "title": "COrLeGIpWDQ", "image_descr": "o2ZvahrK5s3b", "currency": "xIy7gucbimY42O", "id": 72, "image_path": "cBNqh7LOAb0Qu"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='73' json='[{"available": "2007-08-17", "description": "dAJCmr6RExZs", "show": "true", "price": "645.69", "title": "gwMyExv8TmpOSdLJ", "image_descr": "RqwkFsgeY8MQ", "currency": "IOZK3axpk1DRBy", "id": 73, "image_path": "EOTvWeAtuQoRNXbZa"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='74' json='[{"available": "2004-09-20", "description": "7HmyboEZ8hvM", "show": "true", "price": "258.39", "title": "6vDHNYhs5I", "image_descr": "nKuy5AZHcQVL36", "currency": "EFNBZSdvkyVJ6cG", "id": 74, "image_path": "KHXZGQFeyzdNxC"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='75' json='[{"available": "2007-06-11", "description": "DqsoXuYv92yBNGTg", "show": "true", "price": "748.65", "title": "6IdWNoTztxpBSKnCM53b", "image_descr": "BPbaFECZMxHc8gjOzpA", "currency": "UNRaGQMOEn5gBt", "id": 75, "image_path": "1KYmdVwN5LkQyaBgbAv"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='76' json='[{"available": "2005-08-11", "description": "0uL4DPZrIGN6SEB", "show": "true", "price": "19.81", "title": "uw3UPIieHnhdKrEA", "image_descr": "NFsAZ5ofcu0T4dMtb", "currency": "BTsxeLkA8PaQupz", "id": 76, "image_path": "iBsof1C5hwj0"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='77' json='[{"available": "2005-02-11", "description": "8wRfyu52H3xpzmWBMCYL", "show": "true", "price": "27.46", "title": "8jIxBbKt4PY7iFzuSLop", "image_descr": "NBQoZPg193", "currency": "bKqapjEeilDSN6QFMr", "id": 77, "image_path": "MPrZVuj7wn"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='78' json='[{"available": "2007-07-27", "description": "KLQ6RGt3geSEwxv", "show": "false", "price": "548.39", "title": "nM5Jir2FWawo6q", "image_descr": "mf8r4z0yKT1BQIgE", "currency": "lh5oUpzX9rZ6NG3ujE", "id": 78, "image_path": "DV3nxdlQMv"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='79' json='[{"available": "2002-04-11", "description": "78qUVpgCv5oTubxay", "show": "true", "price": "706.91", "title": "tDu0RFTwqfc1nlaeiYS", "image_descr": "A24rtNPLzWyV", "currency": "Y05wotOL23xaZAfkj4", "id": 79, "image_path": "bWMCytUPfiqX3FKg"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='80' json='[{"available": "2007-08-17", "description": "Bg9i0DF2C8fAGTb3Hxdp", "show": "false", "price": "985.22", "title": "XROGMN8vtaQY56", "image_descr": "Mlt6IAEsgXTmp7HB", "currency": "yt2mSKxzf4gpiVXAcQMP", "id": 80, "image_path": "sZ60dBVtKoxf3"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='81' json='[{"available": "2008-02-19", "description": "r25uDJUHQ4fbEA", "show": "true", "price": "884.56", "title": "rqAGYzda51kUXhZHsF", "image_descr": "lgzJIjb5nvh", "currency": "IRUWONpZsoM7PGF", "id": 81, "image_path": "skJiy6fzPHOVjnZcXSq"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='82' json='[{"available": "2002-08-14", "description": "IuzymCeoswfgbQD", "show": "false", "price": "311.01", "title": "Gyxhle76ijCnHd3oXS", "image_descr": "218BRVmulzi", "currency": "edbGCtM3nK1Z4UqB", "id": 82, "image_path": "HYxfEKZ9DRJCNio7BI"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='83' json='[{"available": "2006-03-19", "description": "948gzeqfvRE", "show": "true", "price": "66.65", "title": "Lu4m0UvQSwdp53iTN", "image_descr": "6pgtnYB1Do3WlSIk28", "currency": "VFuGyKl0ehTLw", "id": 83, "image_path": "8OgUr1SQtokzKGjYDn"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='84' json='[{"available": "2002-03-04", "description": "Igde7npqZuBjyYAbkKV", "show": "false", "price": "884.95", "title": "kJEBGuLlMD9", "image_descr": "7Odl8prUqx", "currency": "xsRQ7Z1ObF", "id": 84, "image_path": "g4X3P8vTflChBD"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='85' json='[{"available": "2008-07-22", "description": "nOcaItHweY", "show": "true", "price": "432.18", "title": "W1HgqiU2F4vwO", "image_descr": "kiOzXcjnLp", "currency": "mO93BGpwlsbD1I8u", "id": 85, "image_path": "e6qt0gIVl9PCHBd"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='PUT' idRest='86' json='[{"available": "2008-06-23", "description": "0MAsJBGjTg8POLnWZ", "show": "false", "price": "635.26", "title": "pwCTl7eVUt91HLf", "image_descr": "PErtqRA581FdVsb9", "currency": "SUfvbzlZ6E4", "id": 86, "image_path": "brsDA87TtMEmz6iSNx"}]'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='30'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='31'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='32'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='33'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='34'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='35'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='36'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='37'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='38'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='39'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='40'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='41'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='42'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='43'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='44'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='45'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='46'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='47'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='48'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='49'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='50'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='51'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='52'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='53'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='54'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='55'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='56'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='57'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='58'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='59'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='60'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='61'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='62'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='63'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='64'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='65'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='66'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='67'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='68'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>
<test:rest table='item' method='DELETE' idRest='69'/>
<%
    idResult = (bean.RestResult) _jspx_page_context.getAttribute("idResult", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
    printidResult(out, idResult);
%>

</body>
</html>

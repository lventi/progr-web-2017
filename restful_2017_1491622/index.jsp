<html>
<!-- Compiled and minified CSS -->
<link rel="stylesheet" href="assets/materialize/css/materialize.min.css">

<!-- Compiled and minified JQuery -->
<script src="assets/jquery/jquery-3.2.1.min.js"></script>

<!-- Compiled and minified JavaScript -->
<script src="assets/materialize/js/materialize.min.js"></script>

<!-- Custom CSS -->
<link rel="stylesheet" href="assets/css/styles.css">

<%@page import="com.restful2017.servlet.DemoServlet"%>
<%@page import="com.restful2017.db.PostgreSql"%>

<% String DBName = "restful_example";%>
<% String DBSchema = "restful_example_schema";%>
<% String DBUser = "restful_example_user";%>
<% String DBPassword = "password";%>

<% PostgreSql postgreSql = new PostgreSql(DBName, DBSchema, DBUser, DBPassword);%>


<head>
    <meta charset="utf-8">
    <title>Restful 2017</title>
    <base href="/">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="restful_2017_1491622/assets/img/logo/favicon.png" type="image/x-icon">
</head>

<body>
    <div class="navbar-fixed">
        <nav class="white-text" id="nav-bar">
            <div class="container">
                <div class="nav-wrapper">
                    <img src="restful_2017_1491622/assets/img/logo/favicon.png" class="brand-logo" id="index-brand-logo">
                    <ul id="nav-mobile" class="right hide-on-med-and-down">
                        <li><a href="sass.html">Sass</a></li>
                        <li><a href="badges.html">Components</a></li>
                        <li><a href="collapsible.html">JavaScript</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

    <div class="container">
        <table class="striped">
            <thead>
            <tr>
                <th>Name</th>
                <th>Item Name</th>
                <th>Item Price</th>
            </tr>
            </thead>

            <tbody>
            <tr>
                <td><%= postgreSql.executeStatementSelect("SELECT * FROM restful_example_schema.autore;")%></td>
                <td><%= new DemoServlet().getString()%></td>
                <td>$0.87</td>
            </tr>
            <tr>
                <td>Alan</td>
                <td>Jellybean</td>
                <td>$3.76</td>
            </tr>
            <tr>
                <td>Jonathan</td>
                <td>Lollipop</td>
                <td>$7.00</td>
            </tr>
            </tbody>
        </table>
    </div>
</body>

</html>
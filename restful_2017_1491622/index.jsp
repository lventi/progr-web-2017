<html>
<!-- Compiled and minified CSS -->
<link rel="stylesheet" href="assets/materialize/css/materialize.min.css">

<!-- Compiled and minified JQuery -->
<script src="assets/jquery/jquery-3.2.1.min.js"></script>

<!-- Compiled and minified JavaScript -->
<script src="assets/materialize/js/materialize.min.js"></script>

<!-- Custom CSS -->
<link rel="stylesheet" href="assets/css/styles.css">

<head>
    <meta charset="utf-8">
    <title>Restful 2017</title>
    <base href="/">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="restful_2017_1491622/assets/img/logo/favicon.png" type="image/x-icon">
</head>

<body>

    <nav>
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

    <div class="container">
        <%
            double num = Math.random();
            if (num > 0.95) {
        %>
        <h2>You'll have a luck day!</h2><p>(<%= num %>)</p>
        <%
        } else {
        %>
        <h2>Well, life goes on ... </h2><p>(<%= num %>)</p>
        <%
            }
        %>
    </div>
</body>

</html>
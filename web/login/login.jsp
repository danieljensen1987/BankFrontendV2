<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            label {display: block;width: 8em;text-align: left;float: left;}
            #loginField {margin-left: auto;margin-right:auto ;margin-top :2em;width:20em;}
        </style>
        <title>Cphbank Login Page</title>
    </head>
    <body>
        <div id="banner"></div>
        <div id="main_menubar">
            <%@include file="../style/imp_scripts/menuTop.jsp" %>
        </div>
        <div id="wrapper">
            <fieldset id='loginField'>
                <legend>Login</legend>
                <form method="POST" action="Controller">
                    <div><label for="username">User name</label> <input type="text" name="username" id="username"></div>
                    <div><label for="password"> Password</label> <input type="password" name="password" id="password"></div>
                    <input type='submit' value='login'/>
                    <input type='hidden' name="command" value='login'/>
                </form>
                <p style='color:red'>${loginerror}</p>
            </fieldset>
        </div>
        <div id="footer">cphbank, Lundtoftevej 93, DK-2800 Kgs. Lyngby  Telefon: +45 12 34 56 67  kontakt@cphbank.dk  CVR: 4545 8181  EAN: 5798 000 56 0550</div>
    </body>
</html>
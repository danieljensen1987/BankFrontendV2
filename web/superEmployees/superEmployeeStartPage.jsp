<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <link rel="stylesheet" href="/BankFrontend/style/css/wrapper.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CphBank - SuperEmployee Page</title>
    </head>
    <body>
        <div id="banner"></div>
        <div id="main_menubar">
            <%@include file="../style/imp_scripts/menuTop.jsp" %>
        </div>
        <div id="wrapper"> 
            <div id="menu_left">
                <%@include file="../style/imp_scripts/menuLeft.jsp" %>
            </div>
            <div id="content">
                something here!
            </div>
        </div>        
        <div id="footer">cphbank, Lundtoftevej 93, DK-2800 Kgs. Lyngby  Telefon: +45 12 34 56 67  kontakt@cphbank.dk  CVR: 4545 8181  EAN: 5798 000 56 0550</div>
    </body>
</html>

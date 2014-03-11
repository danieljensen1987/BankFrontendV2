<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <link rel="stylesheet" href="/BankFrontend/style/css/employee.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CphBank - Employee Page</title>
    </head>
    <body>
        <div id="banner">
            
        </div>
        <div id="spacer"></div>
        <div id="main_menubar">
            <%@include file="../style/imp_scripts/loginLogoutButton.jsp" %>
        </div>
        <div id="se-mid"> Some content here</div>
        <div id="se-leftside-panel">
            <!-- <li><a href="ListAccounts">list account</a></li>-->
            <a href="Controller?command=se-list-customers">List customers</a><br/>
            <a href="Controller?command=save-customer">Create Customer</a><br/>
            <a href="Controller?command=prepair-account">Create Account</a>
            <!-- <li><a href="Controller?command=list-accounts">List accounts</a></li> -->
        </div>
        <div id="se-leftside-spacer"></div>
        
        <br/>
        <div id="spacer"></div>
        <div id="footer">cphbank, Lundtoftevej 93, DK-2800 Kgs. Lyngby  Telefon: +45 12 34 56 67  kontakt@cphbank.dk  CVR: 4545 8181  EAN: 5798 000 56 0550</div>
    </body>
</html>

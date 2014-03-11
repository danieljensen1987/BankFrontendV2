<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
            function DoNav(url)
            {
                document.location.href = url;
            }
        </script>
        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <link rel="stylesheet" href="/BankFrontend/style/css/employee.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cphbank account list</title>
    </head>
    <body>
        <div id="banner">
            <%@include file="../style/imp_scripts/loginLogoutButton.jsp" %>
        </div>
        <div id="spacer"></div>
        <div id="se-mid">
            ${message} for ${cpr} 
            <br/>
            There are ${accounts.size()} accounts at the moment:
            <table class="customer">
                <tr>
                    <th>Account number</th>
                    <th>Account type</th>
                    <th>Balance</th>
                    <th>Interest</th>
                </tr>
                <c:forEach var = "account" items = "${accounts}">

                    <tr class="customers" onclick="DoNav('Controller?command=list-accounts-detail&number=${account.number}')">
                        <td>${account.number}</td>
                        <td>${account.type}</td>
                        <td>${account.balance}</td>
                        <td>${accountDetails.interest.doubleValue()}%</td>
                    </tr>
                </c:forEach>
            </table>
            </div>
            <div id="se-leftside-spacer"></div>
            <div id="se-leftside-panel">
            <a href="Controller?command=prepair-transfer">Transfer money</a><br/>
            <a href="Controller?command=main">Back to main page</a>
            <a href="javascript:history.back()">Back</a>
            </div>
        <div id="spacer"></div>
        <div id="footer">cphbank, Lundtoftevej 93, DK-2800 Kgs. Lyngby  Telefon: +45 12 34 56 67  kontakt@cphbank.dk  CVR: 4545 8181  EAN: 5798 000 56 0550</div>
    </body>
</html>

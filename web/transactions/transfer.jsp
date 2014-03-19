<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <link rel="stylesheet" href="/BankFrontend/style/css/employee.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cphbank transfer Page</title>
    </head>
    <body>
        <div id="banner"></div>
        <div id="spacer"></div>
        <div id="main_menubar">
            <%@include file="../style/imp_scripts/loginLogoutButton.jsp" %>
        </div>
        
            <div id="se-mid">
                ${message} ${accountNumber}
                <form action="Controller">
                    <table>
                        <tr>
                            <th><label for="source">From Account</label></th>
                            <td><input type="text" name="source" id="source"></td>

                        </tr>
                        <tr>
                            <th><label for="target">To Account</label></th>
                            <td><input type="text" name="target" id="target"></td>
                        </tr>
                        <tr>
                            <th><label for="amount">Amount</label></th>
                            <td><input type="number" name="amount" id="amount"></td>
                        </tr>
                        <tr>
                            <th><label for="date">Date</label></th>
                            <td><input type="date" name="date" id="date"></td>
                        </tr>
                        <td>
                            <button type="submit" name="command" value="transferMoney" style="padding-left: auto">Accept</button>
                        </td>
                    </table>
                </form> 
            </div>
                <div id="se-leftside-spacer"></div>
                <div id="se-leftside-panel">
                    <a href="Controller?command=se-list-customers">List customers</a><br>
                    <a href="Controller?command=save-customer">Create Customer</a><br>
                    <a href="Controller?command=prepair-account">Create Account</a><br>
                    <a href="Controller?command=main">Back to Main Page</a><br>
                </div>
                <div id="spacer"></div>
        <div id="footer">cphbank, Lundtoftevej 93, DK-2800 Kgs. Lyngby  Telefon: +45 12 34 56 67  kontakt@cphbank.dk  CVR: 4545 8181  EAN: 5798 000 56 0550</div>
    </body>
</html>

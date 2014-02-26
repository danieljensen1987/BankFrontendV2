<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="default.css" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account list</title>
    </head>
    <body>
        <h1>Account list</h1>
        <hr/>
        ${message} for ${customer.cpr} 
        <br/>
        There are ${accounts.size()} accounts at the moment:
        <table>
            <tr>
                <th>Account number</th>
                <th>Account type</th>
                <th>Balance</th>
            </tr>
            <c:forEach var = "account" items = "${accounts}">
                <tr>
                    <td>${account.number}</td>
                    <td>${account.type}</td>
                    <td>${account.balance}</td>
                </tr>
            </c:forEach>
        </table>

        <!--<a href="Back">Back to main page</a> -->
        <a href="Controller?command=back">Back to main page</a>

    </body>
</html>

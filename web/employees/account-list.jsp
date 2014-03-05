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
        <link rel="stylesheet" href="default.css" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cphbank account list</title>
    </head>
    <body>
        <%@include file="/all/newjsp.jsp"%>
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

        <!--<a href="Back">Back to main page</a> -->
        |
        <a href="Controller?command=main">Back to main page</a>
        |
        <a href="javascript:history.back()">Back</a>
        |


    </body>
</html>

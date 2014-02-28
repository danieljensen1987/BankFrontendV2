<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="default.css" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Detail</title>
    </head>
    <body>
        <h1>Account Detail</h1>
        <hr/>
        ${message} for ${account.number} 
        <br/>

        <table>
            <tr>
                <th>Account type</th>
                <th>Account interest</th>
                <th>Transfers</th>
            </tr>
            <tr>
                <td>${accountDetail.type}</td>
                <td>${accountDetail.interest}</td>
            </tr>
            <c:forEach var = "transfers" items = "${transfers}">
                <tr>
                    <td>${accountDetail.type}</td>
                    <td>${accountDetail.interest}</td>
                    
                </tr>
            </c:forEach> 
        </table>

        <!--<a href="Back">Back to main page</a> -->
        <a href="Controller?command=main">Back to main page</a>
        <a href="javascript:history.back()">Back</a>

    </body>
</html>

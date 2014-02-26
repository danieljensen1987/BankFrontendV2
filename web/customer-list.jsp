<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="default.css" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer list</title>
    </head>
    <body>
        <h1>Customer list</h1>
        <hr/>
        <!--${message} for ${customer.cpr} 
        <br/> -->
        There are ${customers.size()} accounts at the moment:
        <table>
            <tr>
                <th>CPR</th>
                <th>Name</th>
                <th>Address</th>
                <th>Phone</th>
                <th>Email</th>
            </tr>
            <c:forEach var = "customer" items = "${customers}">
                <tr>
                    <td>${customer.cpr}</td>
                    <td>${customer.name}</td>
                    <td>${customer.address}</td>
                    <td>${customer.phone}</td>
                    <td>${customer.email}</td>
                    <td><a href="Controller?command=list-accounts&cpr=${customer.cpr}">Account</a></td>
                </tr>
            </c:forEach>
        </table>

        <!--<a href="Back">Back to main page</a> -->
        <a href="Controller?command=back">Back to main page</a>

    </body>
</html>

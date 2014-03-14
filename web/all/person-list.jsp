<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Person list</title>
    </head>
    <body>
        <h1>List of Persons</h1>
        <table>
            <tr>
                <th>CPR</th>
                <th>First name</th>
                <th>Last name</th>
                <th>Phone number</th>
            </tr>
            <c:forEach var="person" items = "${persons}">
                <tr>
                    <td>${person.cpr}</td>
                    <td>${person.firstName}</td>
                    <td>${person.lastName}</td>
                    <td>${person.phone}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>

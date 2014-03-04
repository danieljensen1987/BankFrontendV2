<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="default.css" type="text/css"/>
        <title>cphbank transfer Page</title>
    </head>
    <body>
        <%@include file="newjsp.jsp"%>
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
    </body>
</html>

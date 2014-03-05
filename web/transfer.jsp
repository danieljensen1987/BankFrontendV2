<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cphbank transfer Page</title>
    </head>
    <body>
        <div id="wrapper">
            <div id="banner">
                <div id="login">
                    <c:if test="${pageContext.request.isUserInRole('Customer')==true}">
                        <a href="Controller?command=customer-main">Customer main page</a>
                    </c:if >

                    <c:if test="${pageContext.request.isUserInRole('Employee')==true || 
                                  pageContext.request.isUserInRole('SuperEmployee')==true}">
                          <a href="Controller?command=employee-main">Employee Main page</a>
                    </c:if>

                    <c:if test="${pageContext.request.isUserInRole('SuperEmployee')==true}">
                        <a href="Controller?command=addcustomer">Add Customer</a>
                    </c:if>

                    <c:choose >
                        <c:when test="${pageContext.request.remoteUser== null}">
                            <a href="Controller?command=showlogin">Login</a>
                        </c:when>
                        <c:otherwise>
                            <a href="Controller?command=logout">Log out</a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
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
    </body>
</html>

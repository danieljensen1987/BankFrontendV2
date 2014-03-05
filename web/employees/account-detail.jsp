<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cphbank account detail</title>
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

            Details for account: ${accountNumber}
            <br/>
            <table>
                <tr>
                    <th>Date</th>
                    <th>amount</th>
                    <th>From account</th>
                </tr>
                <c:forEach var = "transfers" items = "${transfers}">
                    <tr>
                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${transfers.date}"/></td>                
                        <td>${transfers.amount}</td>                
                        <td>${transfers.accountNumber}</td>                
                    </tr>
                </c:forEach> 
            </table>
            |
            <a href="Controller?command=main">Back to main page</a>
            |
            <a href="javascript:history.back()">Back</a>
            |
            <a href="Controller?command=prepair-transfer">Transfer money</a>
            |
        </div>
    </body>
</html>

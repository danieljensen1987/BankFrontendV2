<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>


<html>
    <head>

        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cphbank - main page</title>
    </head>
    <body>
        <div id="wrapper">
            <div id="banner">
                <ul>
                    <c:if test="${pageContext.request.isUserInRole('Customer')==true}">
                        <li><a href="Controller?command=customer-main">Customer main page</a></li>
                        </c:if >

                    <c:if test="${pageContext.request.isUserInRole('Employee')==true || 
                                  pageContext.request.isUserInRole('SuperEmployee')==true}">
                          <li><a href="Controller?command=employee-main">Employee Main page</a></li>
                          </c:if>

                    <c:if test="${pageContext.request.isUserInRole('SuperEmployee')==true}">
                        <li><a href="Controller?command=addcustomer">Add Customer</a></li>
                        </c:if>

                    <c:choose >
                        <c:when test="${pageContext.request.remoteUser== null}">
                            <li><a href="Controller?command=showlogin">Login</a>
                            </c:when>
                            <c:otherwise>
                            <li><a href="Controller?command=logout">Log out</a></li>
                            </c:otherwise>
                        </c:choose>
                </ul>
            </div>
        </div>
    </body>
</html>

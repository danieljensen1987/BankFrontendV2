<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            label {display: block;width: 8em;text-align: left;float: left;}
            #loginField {margin-left: auto;margin-right:auto ;margin-top :2em;width:20em;}
        </style>
        <title>Login Page</title>
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
            <fieldset id='loginField'>
                <legend>Login</legend>
                <form method="POST" action="Controller">
                    <div><label for="username">User name</label> <input type="text" name="username" id="username"></div>
                    <div><label for="password"> Password</label> <input type="password" name="password" id="password"></div>
                    <input type='submit' value='login'/>
                    <input type='hidden' name="command" value='login'/>
                </form>
                <p style='color:red'>${loginerror}</p>
            </fieldset>
        </div>
    </body>
</html>
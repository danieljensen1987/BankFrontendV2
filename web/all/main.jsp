<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>


<html>
    <head>

        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cphbank - main page</title>
    </head>
    <body>

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
        <div id="spacer"></div>
        <div id="wrapper">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse consequat libero et ligula consequat ultricies. Nullam eu ultricies nisi, non scelerisque quam. Aliquam erat volutpat. Ut viverra ut enim id elementum. Aliquam vel lorem nunc. Integer ut felis vehicula mi posuere porta. Curabitur risus risus, porta non egestas vel, fermentum in ipsum. Duis nibh augue, vehicula eget lorem vitae, faucibus dignissim diam. Proin quis porttitor nibh. Nulla vitae elit interdum, faucibus turpis in, fermentum dui. Proin quis volutpat dolor, sed tempor sem. Aenean ut turpis ut ante sodales tincidunt.
        </div>
        <div id="spacer"></div>
        <div id="footer">cphbank, Lundtoftevej 93, DK-2800 Kgs. Lyngby  Telefon: +45 12 34 56 67  kontakt@cphbank.dk  CVR: 4545 8181  EAN: 5798 000 56 0550</div>
    </body>
</html>

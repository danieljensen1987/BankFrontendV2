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
        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cphbank account list</title>
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

        </div>
    </body>
</html>

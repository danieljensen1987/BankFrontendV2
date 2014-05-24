<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
            function DoNav(url)
            {
                document.location.href = url;
            }
        </script>
        <link rel="stylesheet" href="/BankFrontend/style/css/page.css"/>
        <link rel="stylesheet" href="/BankFrontend/style/css/employee.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cphbank - Customers List</title>
    </head>
    <body>
        <div id="content">
            <div id="banner">
                <div id="logo"></div>
                <div id="menu_top">
                    <%@include file="../scripts/jsp/menuTop.jsp" %>
                </div>
            </div>

            <div id="spacer"></div>

            <div id="wrapper">
                <div id="sidebar">
                    <div id="sidebar_content">
                        <div class="sidebar_title">LIST CUSTOMERS</div>
                        <ul class="sidebar_links">
                            <li class="sidebar_link"><a href="Controller?command=main">Back to main page</a></li>
                            <li class="sidebar_link"><a href="Controller?command=create-customer">New Customer</a></li>
                        </ul>
                    </div>
                </div>

                <div id="wrapper_content">
                    There are ${customers.size()} accounts at the moment:
                    <table class="customer">
                        <tr>
                            <th>CPR</th>
                            <th>Title</th>
                            <th>Name</th>
                            <th>Address</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <!-- <th>Action</th> -->
                        </tr>
                        <c:forEach var = "customer" items = "${customers}">
                            <tr class="customers" onclick="DoNav('Controller?command=list-accounts&cpr=${customer.cpr}')">
                                <td>${customer.cpr}</td>
                                <td></td>
                                <td>${customer.name}</td>
                                <td>${customer.address}</td>
                                <td>${customer.phone}</td>
                                <td>${customer.email}</td>
                                <!-- <td><a href="Controller?command=list-accounts&cpr=${customer.cpr}">Select Account</a></td> -->
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
            <div class="clear"></div>

            <div id="spacer"></div>

            <div id="footer">
                <div id="footer_content">
                    <%@include file="../scripts/jsp/footer.jsp" %></div>
            </div>
        </div>
    </body>
</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
        <title>Cphbank - Customer Details</title>
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
                        <div class="sidebar_title">CUSTOMER DETAILS</div>
                        <ul class="sidebar_links">
                            <li class="sidebar_link"><a href="Controller?command=edit-customer">Edit details</a></li>
                            <li class="sidebar_link"><a href="Controller?command=list-accounts&cpr=${customer.cpr}">List Accounts</a></li>
                            <li class="sidebar_link"><a href="Controller?command=prepair-account&cpr=${customer.cpr}">New Account</a></li>
                            <li class="sidebar_link"><a href="Controller?command=list-customers">Back to list</a></li>
                        </ul>
                    </div>
                </div>

                <div id="wrapper_content">
                    Details for Customer: ${customer.cpr}
                    <br/>
                    <table>
                        <tr>
                            <th>Title</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Address</th>
                            <th>Area code</th>
                            <th>Postal District</th>
                            <th>Phone number</th>
                            <th>E-mail</th>
                        </tr>

                        <tr class="customers" onclick="DoNav('Controller?command=edit-customer&customer=${customer.cpr}')">

                            <td>${customer.title}</td>                
                            <td>${customer.firstName}</td>                
                            <td>${customer.lastName}</td>                
                            <td>${customer.street}</td>                
                            <td>${customer.postalCode}</td>                
                            <td>${customer.postalDistrict}</td>                
                            <td>${customer.phone}</td>                
                            <td>${customer.email}</td>                
                        </tr>

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
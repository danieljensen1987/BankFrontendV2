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
        <link rel="stylesheet" href="/BankFrontend/style/css/employee.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cphbank customer list</title>
    </head>
    <body>
        <div id="banner"></div>
        <div id="main_menubar">
            <%@include file="../scripts/jsp/loginLogoutButton.jsp" %>
        </div>
        <div id="spacer"></div>
            <div id="se-mid">
        <!--${message} for ${customer.cpr} 
        <br/> -->
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
                            <td>${customer.title}</td>
                            <td>${customer.name}</td>
                            <td>${customer.address}</td>
                            <td>${customer.phone}</td>
                            <td>${customer.email}</td>
                            <!-- <td><a href="Controller?command=list-accounts&cpr=${customer.cpr}">Select Account</a></td> -->
                        </tr>
                    </c:forEach>
                </table>
            </div>
                <div id="se-leftside-spacer"></div>
                <div id="se-leftside-panel">
                    <li><a href="Controller?command=main">Back to main page</a></li>
                    <li><a href="Controller?command=create-customer">New Customer</a></li>
                </div>
                
        <div id="spacer"></div>
        <div id="footer">cphbank, Lundtoftevej 93, DK-2800 Kgs. Lyngby  Telefon: +45 12 34 56 67  kontakt@cphbank.dk  CVR: 4545 8181  EAN: 5798 000 56 0550</div>
    </body>
</html>

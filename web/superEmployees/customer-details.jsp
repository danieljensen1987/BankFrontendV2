<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <link rel="stylesheet" href="/BankFrontend/style/css/employee.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Details</title>
    </head>
    <body>
        <div id="banner"></div>
        <div id="spacer"></div>
        <div id="main_menubar">
            <%@include file="../style/imp_scripts/loginLogoutButton.jsp" %>
        </div>

            <div id="se-mid">
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

            <div id="se-leftside-spacer"></div>

            <div id="se-leftside-panel">
                <a href="Controller?command=edit-customer">Edit details</a><br/>
                <a href="Controller?command=list-accounts&cpr=${customer.cpr}">List Accounts</a><br/>
                <a href="Controller?command=prepair-account&cpr=${customer.cpr}">New Account</a><br/>
                <a href="Controller?command=list-customers">Back to list</a><br/>
                <a href="Controller?command=main">Back to main page</a><br/>
            </div>

                <div id="spacer"></div>
        <div id="footer">cphbank, Lundtoftevej 93, DK-2800 Kgs. Lyngby  Telefon: +45 12 34 56 67  kontakt@cphbank.dk  CVR: 4545 8181  EAN: 5798 000 56 0550</div>
    </body>
</html>
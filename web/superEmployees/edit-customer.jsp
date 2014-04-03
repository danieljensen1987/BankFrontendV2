<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <link rel="stylesheet" href="/BankFrontend/style/css/menuTop.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Customer form</title>
    </head>
    <body>
        <div id="banner"></div>
        <div id="main_menubar">
            <%@include file="../scripts/jsp/menuTop.jsp" %>
        </div>
        <div id="wrapper">
            <div id="menu_left">
                <%@include file="../scripts/jsp/menuLeft.jsp" %>
            </div>
            <div id="content">
                <h1>Edit Customer form</h1>
                <form action="Controller" method="POST">
                    <table>
                        <tr>
                            <th><label for="cpr">Cpr</label></th>
                            <td><input type="text" name="cpr" id="cpr" value="${customer.cpr}"></td>
                        </tr>
                        <tr>
                            <th><label for="title">Title</label></th>
                            <td><input type="text" name="title" id="title" value="${customer.title}"></td>
                        </tr>
                        <tr>
                            <th><label for="f_name">First name</label></th>
                            <td><input type="text" name="f_name" id="f_name" value="${customer.firstName}"></td>
                        </tr>
                        <tr>
                            <th><label for="l_name">Last name</label></th>
                            <td><input type="text" name="l_name" id="l_name" value="${customer.lastName}"></td>
                        </tr>
                        <tr>
                            <th><label for="street">Street address</label></th>
                            <td><input type="text" name="street" id="street" value="${customer.street}"></td>
                        </tr>
                        <tr>
                            <th><label for="postal-code">Postal code</label></th>
                            <td><input type="text" name="postal-code" id="postal-code" value="${customer.postalCode}"></td>
                        </tr>
                        <tr>
                            <th><label for="postal-district">Postal district</label></th>
                            <td><input type="text" name="postal-district" id="postal-district" value="${customer.postalDistrict}"></td>
                        </tr>
                        <tr>
                            <th><label for="phone">Telephone nr.</label></th>
                            <td><input type="text" name="phone" id="phone" value="${customer.phone}"></td>
                        </tr>
                        <tr>
                            <th><label for="email">E-mail</label></th>
                            <td><input type="text" name="email" id="email" value="${customer.email}"></td>
                        </tr>
                        <td>
                            <button type="submit" name="command" value="save-customer" style="padding-left: auto">Accept</button>
                            <button type="submit" name="command" value="customer-details" style="padding-left: auto"> Back</button>
                        </td>
                    </table>
                </form> 
            </div>
        </div>
        <div id="footer">cphbank, Lundtoftevej 93, DK-2800 Kgs. Lyngby  Telefon: +45 12 34 56 67  kontakt@cphbank.dk  CVR: 4545 8181  EAN: 5798 000 56 0550</div>
    </body>
</html>

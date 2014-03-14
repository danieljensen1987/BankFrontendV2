<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <link rel="stylesheet" href="/BankFrontend/style/css/menuTop.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>customer registration form</title>
    </head>
    <body>
        <div id="banner"></div>
        <div id="main_menubar">
            <%@include file="../style/imp_scripts/menuTop.jsp" %>
        </div>
        <div id="wrapper">
            <div id="menu_left">
                <%@include file="../style/imp_scripts/menuLeft.jsp" %>
            </div>
            <div id="content">
                <h1>customer registration form</h1>
                <form action="Controller" method="POST">
                    <table>
                        <tr>
                            <th><label for="cpr">Cpr. nr.</label></th>
                            <td><input type="text" name="cpr" id="cpr"></td>

                        </tr>
                        <tr>
                            <th><label for="title">Title</label></th>
                            <td><input type="text" name="title" id="title"></td>
                        </tr>
                        <tr>
                            <th><label for="f_name">First name</label></th>
                            <td><input type="text" name="f_name" id="f_name"></td>
                        </tr>
                        <tr>
                            <th><label for="l_name">Last name</label></th>
                            <td><input type="text" name="l_name" id="l_name"></td>
                        </tr>
                        <tr>
                            <th><label for="street">Street address</label></th>
                            <td><input type="text" name="street" id="street"></td>
                        </tr>
                        <tr>
                            <th><label for="postal-code">Postal code</label></th>
                            <td><input type="text" name="postal-code" id="postal-code"></td>
                        </tr>
                        <tr>
                            <th><label for="postal-district">Postal district</label></th>
                            <td><input type="text" name="postal-district" id="postal-district"></td>
                        </tr>
                        <tr>
                            <th><label for="phone">Telephone nr.</label></th>
                            <td><input type="text" name="phone" id="phone"></td>
                        </tr>
                        <tr>
                            <th><label for="email">E-mail</label></th>
                            <td><input type="text" name="email" id="email"></td>
                        </tr>
                        <td>
                            <button type="submit" name="command" value="save-customer" style="padding-left: auto">Accept</button>
                            <button type="submit" name="command" value="list-customers" style="padding-left: auto"> Back to Customers</button>         
                        </td>
                    </table>
                </form> 
            </div>
        </div>
        <div id="footer">cphbank, Lundtoftevej 93, DK-2800 Kgs. Lyngby  Telefon: +45 12 34 56 67  kontakt@cphbank.dk  CVR: 4545 8181  EAN: 5798 000 56 0550</div>
    </body>
</html>

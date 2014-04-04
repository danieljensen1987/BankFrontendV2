<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <link rel="stylesheet" href="/BankFrontend/style/css/employee.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create account form</title>
    </head>
    <body>
        <div id="banner"></div>
        <div id="spacer"></div>
        <div id="main_menubar">
            <%@include file="../scripts/jsp/loginLogoutButton.jsp" %>
        </div>

        <div id="se-mid">Create account form
                <form action="Controller" method="POST">
                    <table>
                        <tr>
                            <th><label for="cpr">Cpr. nr.</label></th>
                            <td><input type="text" name="cpr" id="cpr"></td>
                        </tr>
                        <tr>
                            <th><label for="interest">Interest</label></th>
                            <td><input type="text" name="interest" id="interest"></td>
                        </tr>
                        <td>
                            <button type="submit" name="command" value="create-account" style="padding-left: auto">Accept</button>
                        </td>
                    </table>
                </form>
            </div>
        <div id="se-leftside-spacer"></div>
        <div id="spacer"></div>
        <div id="footer">cphbank, Lundtoftevej 93, DK-2800 Kgs. Lyngby  Telefon: +45 12 34 56 67  kontakt@cphbank.dk  CVR: 4545 8181  EAN: 5798 000 56 0550</div>
    </body>
</html>

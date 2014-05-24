<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/page.css"/>
        <link rel="stylesheet" href="/BankFrontend/style/css/employee.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cphbank - Create Account</title>
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
                        <div class="sidebar_title">CREATE ACCOUNT</div>
                        <ul class="sidebar_links">
                        </ul>
                    </div>
                </div>

                <div id="wrapper_content">
                    <div id="wrapper_content">
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
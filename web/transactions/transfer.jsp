<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/page.css"/>
        <link rel="stylesheet" href="/BankFrontend/style/css/employee.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cphbank - Main Page</title>
    </head>
    <body>
        <input type="hidden" name="bankuri" id="bankuri">
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
                        <div class="sidebar_title">TRANSFER MONEY</div>
                        <ul class="sidebar_links">
                            <li class="sidebar_link"><a href="Controller?command=se-list-customers">List customers</a></li>
                            <li class="sidebar_link"><a href="Controller?command=save-customer">Create Customer</a></li>
                            <li class="sidebar_link"><a href="Controller?command=prepair-account">Create Account</a></li>
                        </ul>
                    </div>
                </div>

                <div id="wrapper_content">
                    ${message} ${accountNumber}
                    <form action="Controller">
                        <table>
                            <tr>
                                <th><label for="source">From Account</label></th>
                                <th><label for="sreg">reg no.</label></th>
                                <td><input type="text" name="sreg" id="sreg"></td>
                                <th><label for="source">acc no.</label></th>
                                <td><input type="text" name="source" id="source"></td>
                            </tr>
                            <tr>
                                <th><label for="target">To Account</label></th>
                                <th><label for="treg">reg no.</label></th>
                                <td><input type="text" name="treg" id="treg"></td>
                                <th><label for="target">acc no.</label></th>
                                <td><input type="text" name="target" id="target"></td>
                            </tr>
                            <tr>
                                <th><label for="amount">Amount</label></th>
                                <td><input type="number" name="amount" id="amount"></td>
                            </tr>
                            <tr>
                                <th><label for="date">Date</label></th>
                                <td><input type="date" name="date" id="date"></td>
                            </tr>
                            <td>
                                <button type="submit" name="command" value="transferMoney" style="padding-left: auto">Accept</button>
                            </td>
                        </table>
                    </form> 
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
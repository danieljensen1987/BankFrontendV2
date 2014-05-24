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
        <title>Cphbank - Account List</title>
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
                        <div class="sidebar_title">ACCOUNT LIST</div>
                        <ul class="sidebar_links">
                            <li class="sidebar_link"><a href="Controller?command=prepair-transfer">Transfer money</a></li>
                            <li class="sidebar_link"><a href="Controller?command=main">Back to main page</a></li>
                            <li class="sidebar_link"><a href="javascript:history.back()">Back</a></li>
                        </ul>
                    </div>
                </div>

                <div id="wrapper_content">
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
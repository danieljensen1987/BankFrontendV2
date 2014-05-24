<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
        <link rel="stylesheet" href="/BankFrontend/style/css/page.css"/>
        <link rel="stylesheet" href="/BankFrontend/style/css/employee.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cphbank - Acount Details</title>
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
                        <div class="sidebar_title">ACCOUNT DETAIL</div>
                        <ul class="sidebar_links">
                            <li class="sidebar_link"><a href="Controller?command=prepair-transfer">Transfer money</a></li>
                            <li class="sidebar_link"><a href="Controller?command=list-accounts&cpr=${cpr}">Account list</a></li>
                            <li class="sidebar_link"><a href="Controller?command=customer-details&cpr=${cpr}">Customer details</a></li>
                            <li class="sidebar_link"><a href="javascript:history.back()">Back</a></li>
                        </ul>
                    </div>
                </div>

                <div id="wrapper_content">
                    Details for account: ${accountNumber} ${cpr}
                    <br/>
                    <table>
                        <tr>
                            <th>Date</th>
                            <th>amount</th>
                            <th>From account</th>
                        </tr>
                        <c:forEach var = "transfers" items = "${transfers}">
                            <tr>
                                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${transfers.date}"/></td>                
                                <td>${transfers.amount}</td>                
                                <td>${transfers.accountNumber}</td>                
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
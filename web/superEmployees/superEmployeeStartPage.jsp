<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/page.css"/>
        <link rel="stylesheet" href="/BankFrontend/style/css/employee.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cphbank - SE Admin</title>
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
                        <div class="sidebar_title">SE ADMIN</div>
                        <ul class="sidebar_links">
                            <li class="sidebar_link"><a href="Controller?command=se-list-customers">List customers</a></li>
                            <li class="sidebar_link"><a href="Controller?command=create-customer">Create Customer</a></li>
                            <li class="sidebar_link"><a href="Controller?command=prepair-account">Create Account</a></li>
                        </ul>
                    </div>
                </div>

                <div id="wrapper_content">
                    something here!
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
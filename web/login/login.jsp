<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/page.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <style>
            label {display: block;width: 8em;text-align: left;float: left;}
            #loginField {margin-left: auto;margin-right:auto ;margin-top :2em;width:20em;}
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cphbank - Login</title>
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
                        <div class="sidebar_title">LOGIN</div>
                        <ul class="sidebar_links">

                        </ul>
                    </div>
                </div>

                <div id="wrapper_content">
                    <form method="POST" action="Controller">
                        <div><label for="username">User name</label> <input type="text" name="username" id="username"></div>
                        <div><label for="password"> Password</label> <input type="password" name="password" id="password"></div>
                        <input type='submit' value='login'/>
                        <input type='hidden' name="command" value='login'/>
                    </form>
                    <p style='color:red'>${loginerror}</p>
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
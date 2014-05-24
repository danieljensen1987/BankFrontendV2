<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/page.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cphbank - Confirmation</title>
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
                        <div class="sidebar_title">COMFIRMATION</div>
                        <ul class="sidebar_links">
                        </ul>
                    </div>
                </div>

                <div id="wrapper_content">
                    <div style="margin-left: auto;margin-right: auto;text-align: center;background-color: white">
                        <h2>Transaction confirmation</h2>
                        <hr/>
                        Transaction date: ${date}
                        <br/>
                        From account: ${src_acc}
                        <br/>
                        Amount: ${amnt}
                        <br/>
                        To account: ${targ_acc}
                        <br/>
                        <p>${message}</p>
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
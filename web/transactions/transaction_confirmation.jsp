<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <title>Transaction confirmation Page</title>
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
        <div id="footer">cphbank, Lundtoftevej 93, DK-2800 Kgs. Lyngby  Telefon: +45 12 34 56 67  kontakt@cphbank.dk  CVR: 4545 8181  EAN: 5798 000 56 0550</div>
    </body>
</html>

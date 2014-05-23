<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <link rel="stylesheet" href="/BankFrontend/style/css/main.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cphbank - Main Page</title>
    </head>
    <body>
        <div id="banner"></div>
        <div id="main_menubar">
            <%@include file="../scripts/jsp/menuTop.jsp" %>
        </div>
        <div id="wrapper">
            <div id="content">
                <div id="videcontainer_main">
                    <table id = "videotable_main">
                        <tr>
                            <td><div id="main_youtube"> 
                                    <iframe width="560" height="326" src="//www.youtube.com/embed/jiWHjv54anI" frameborder="0"></iframe>
                                </div></td>

                            <td id="videotable_menu_main"><div id = "main_top_right_cell">

                                    <br/><br/><br/><br/>       
                                    <a id="videocontainer_sidemenu_link" href="Controller?command=showlogin">Login</a><br/><br/>
                                    <a id="videocontainer_sidemenu_link" href="messageToBank.jsp">Write us a message</a><br/><br/>
                                    <a id="videocontainer_sidemenu_link" href="contact.jsp">Contact</a><br/><br/>
                                    <a id="videocontainer_sidemenu_link" href="newCustomer.jsp">Become a customer</a><br/><br/>
                                    
                                    <a id="videocontainer_sidemenu_link" href="Controller?command=greeting">Kom til mig!</a><br/>
                                    <a id="videocontainer_sidemenu_link" href="Controller?command=about">About us</a>
                                    


                                </div></td></tr></table>
                </div>
            </div>
        </div>
        <div id="spacer"></div>
        <div id="footer">cphbank, Lundtoftevej 93, DK-2800 Kgs. Lyngby  Telefon: +45 12 34 56 67  kontakt@cphbank.dk  CVR: 4545 8181  EAN: 5798 000 56 0550</div>
    </body>
</html>

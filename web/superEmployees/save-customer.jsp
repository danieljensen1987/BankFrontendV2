<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/page.css"/>
        
        
        <script src="/BankFrontend/scripts/js/jquery-1.9.1.js"></script>
        <script src = "/BankFrontend/scripts/js/validate.js"></script>
        <link rel="stylesheet" href="/BankFrontend/style/css/validation.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <script><%@include file="../scripts/js/ValidationRules.js" %></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cphbank - Save Customer</title>
        <script>
            function getResult() {
                $.ajax({
                    url: "WannabeKrak",
                    cache: false,
                    data: {
                        phone: $("#phone").val()
                    },
                    dataType: "json"}).done(function(data) {
                    $("#firstName").val(data.firstName);
                    $("#lastName").val(data.lastName);
                    $("#street").val(data.address);
                    $("#postalDistrict").val(data.city);
                    $("#postalCode").val(data.zip);
                    $("#email").val(data.email);
                });
                $.ajax({
                    url: "WBkrakRequest",
                    cache: false,
                    dataType: "text"
                }).done(function(data) {
                    $("#requestCount").append(data).html();
                });
            }
        </script>
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
                        <div class="sidebar_title">SAVE CUSTOMER</div>
                        <ul class="sidebar_links">
                        </ul>
                    </div>
                </div>

                <div id="wrapper_content">
                    <form id="myform" action="Controller" method="get" style="width: 582px;;margin-right: 0px">
                                <label for="cpr">Cpr. nr.</label>
                                <input type="text" name="cpr" id="cpr" placeholder="eg. 010288-2877"><br>
                                
                                <label for="title">Title</label>
                                <select>
                                    <option value="Mr.">Mr.</option>
                                    <option value="Mrs.">Mrs.</option>
                                    <option value="Ms.">Ms.</option>
                                    <option value="Sir">Sir</option>
                                    <option value="Dr.">Dr.</option>
                                </select><br>
                                
                                <label for="firstName">First name</label>
                                <input type="text" name="firstName" id="firstName" placeholder="eg. Jens"><br>
                                
                                <label for="lastName">Last name</label>
                                <input type="text" name="lastName" id="lastName" placeholder="eg. Jensen"><br>
                                
                                <label for="street">Street address</label>
                                <input type="text" name="street" id="street" placeholder="eg. Vangede 73, 1 tv."><br>
                                
                                <label for="postalCode">Postal code</label>
                                <input type="text" name="postalCode" id="postalCode" placeholder="eg. 2800"><br>
                                
                                <label for="postalDistrict">Postal district</label>
                                <input type="text" name="postalDistrict" id="postalDistrict" placeholder="eg. CPH"><br>
                                
                                <label for="phone">Telephone nr.</label>
                                <input type="text" name="phone" id="phone" placeholder="eg. 07086896"><br>
                                
                                <label for="email">E-mail</label>
                                <input type="text" name="email" id="email" placeholder="eg. a@a.com"><br>
                                
                            <button type="submit" name="command" value="save-customer" style="margin-left:170px">Accept</button>
                            <button type="button" onclick="getResult()">krak opslag</button>
                            
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
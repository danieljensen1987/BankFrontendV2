<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <link rel="stylesheet" href="/BankFrontend/style/css/employee.css"/>
        <script src="/BankFrontend/scripts/js/jquery-1.9.1.js"></script>
        <script src = "/BankFrontend/scripts/js/validate.js"></script>
        <link rel="stylesheet" href="/BankFrontend/style/css/validation.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <script><%@include file="../scripts/js/ValidationRules.js" %></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>customer registration form</title>
        <script>
            function getResult(){
                $.ajax({
                    url: "WannabeKrak",
                    cache: false,
                    data: {
                        phone: $("#phone").val()
                    },
                    dataType: "json"}).done(function(data){
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
                     }).done(function(data){
                         $("#requestCount").append(data).html();
                     });
            }
        </script>
    </head>
    <body>
        <div id="banner"></div>
        <div id="main_menubar">
            <%@include file="../scripts/jsp/loginLogoutButton.jsp" %>
        </div>
        <div id="requestCount"> Antal opslag: </div>
        <div id="se-mid">
            <!--original form width 782-->
            <form id="myform" action="Controller" method="get" style="width: 582px;;margin-right: 0px">
                <fieldset>
                    <legend>Registration form</legend>
                    <p>
                        <label for="cpr">Cpr. nr.</label>
                        <input type="text" name="cpr" id="cpr">
                    </p>
                    <p>
                        <label for="title">Title</label>
                        <select>
                            <option value="Mr.">Mr.</option>
                            <option value="Mrs.">Mrs.</option>
                            <option value="Ms.">Ms.</option>
                            <option value="Sir">Sir</option>
                            <option value="Dr.">Dr.</option>
                        </select>
                    </p>
                    <p>
                        <label for="firstName">First name</label>
                        <input type="text" name="firstName" id="firstName">
                    </p>
                    <p>
                        <label for="lastName">Last name</label>
                        <input type="text" name="lastName" id="lastName">
                    </p>
                    <p>
                        <label for="street">Street address</label>
                        <input type="text" name="street" id="street">
                    </p>
                    <p>
                        <label for="postalCode">Postal code</label>
                        <input type="text" name="postalCode" id="postalCode">
                    </p>
                    <p>
                        <label for="postalDistrict">Postal district</label>
                        <input type="text" name="postalDistrict" id="postalDistrict">
                    </p>
                    <p>
                        <label for="phone">Telephone nr.</label>
                        <input type="text" name="phone" id="phone">
                    </p>
                    <p>
                        <label for="email">E-mail</label>
                        <input type="text" name="email" id="email">
                    </p>
                </fieldset>
                <p>
                    <button type="submit" name="command" value="save-customer" style="margin-left:170px">Accept</button>
                    <a  id="krak"  onclick="getResult()">krak opslag</a>
                </p>
            </form>
            
        </div>
        <div id="se-leftside-spacer"></div>
        <div id="se-leftside-panel">
            <a href="Controller?command=se-list-customers" style="padding-left: auto"> Back to Customers</a>
        </div>
        <div id="footer">cphbank, Lundtoftevej 93, DK-2800 Kgs. Lyngby  Telefon: +45 12 34 56 67  kontakt@cphbank.dk  CVR: 4545 8181  EAN: 5798 000 56 0550</div>
    </body>
</html>

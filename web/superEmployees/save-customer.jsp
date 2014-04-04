<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <link rel="stylesheet" href="/BankFrontend/style/css/employee.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style >
            .container {width:45em;border: lightgray thin solid; padding: 1em; 
                        margin-left: auto;margin-right: auto;margin-top: 2em;margin-bottom: 3%;font-family: sans-serif;}
            #myform label {
                display: block;  width: 6em;text-align: left;
                float: left;margin-right: 0.5em;
            }
            fieldset {margin-bottom: 0.6em;}
            .fs1 {float: left; margin-right: 0.5em;} 
            .fs2 {clear: both;} 
        </style>
        <style type="text/css">
            #myform label.error {
                color:red; width:auto; font-size: small;
                float : right; display: block;
            }
            #myform input.error {
                border:1px solid red;
            }
        </style>

        <script src="/BankFrontend/scripts/js/jquery-1.9.1.js"></script>
        <!--    <script src="js/jquery.validate.js"></script>-->
        <script src="/BankFrontend/scripts/js/validate.js"></script>
        <script>
            $(document).ready(function() {
                // validate the comment form when it is submitted
                jQuery.validator.addMethod("lettersonly", function(value, element) {
                    return this.optional(element) || /^[a-å]+$/i.test(value);
                }, "Only letters");
                jQuery.validator.addMethod("numbersonly", function(value, element) {
                    return this.optional(element) || /^[0-9]+$/i.test(value);
                }, "Only numbers");
                $("#myform").validate({
                    rules: {
                        cpr: {required: true, minlength: 11, remote: "LookUpCprServlet"},
                        firstName: {required: true, minlength: 2, lettersonly: true},
                        lastName: {required: true, minlength: 2, lettersonly: true},
                        street: {required: true, minlength: 2, lettersonly: true},
                        postalCode: {required: true, minlength: 4, numbersonly: true},
                        postalDistrict: {required: true, minlength: 2, lettersonly: true},
                        phone: {required: true, minlength: 8, numbersonly: true},
                        email: {required: true, email: true}
                    },
                    messages: {
                        cpr: {
                            required: "Please enter your CPR number",
                            minlength: jQuery.format("At least {0} characters required!"),
                            remote: "Already excist"
                        },
                        firstName: {
                            required: "Please enter you first name",
                            minlength: jQuery.format("At least {0} characters required!")
                        },
                        lastName: {
                            required: "Please enter your last name",
                            minlength: jQuery.format("At least {0} characters required!")
                        },
                        street: {
                            required: "Please enter your address",
                            minlength: jQuery.format("At least {0} characters required!")
                        },
                        postalCode: {
                            required: "Please enter your postal code",
                            minlength: jQuery.format("At least {0} characters required!")
                        },
                        postalDistrict: {
                            required: "Please enter your city",
                            minlength: jQuery.format("At least {0} characters required!")
                        },
                        phone: {
                            required: "Please enter your phone number",
                            minlength: jQuery.format("At least {0} characters required!")
                        },
                        email: {
                            required: "Please enter your mail"
                        }
                    }
                    //          ,
                    //          errorLabelContainer: "#errors", wrapper: "div"
                });
            });
        </script>
        <title>customer registration form</title>
    </head>
    <body>
        <div id="banner"></div>
        <div id="spacer"></div>
        <div id="main_menubar">
            <%@include file="../scripts/jsp/loginLogoutButton.jsp" %>
        </div>
        <div id="se-mid">
            <form id="myform" action="Controller" method="get">
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
                    <button type="submit" name="command" value="save-customer" style="padding-left: auto">Accept</button>
                    
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

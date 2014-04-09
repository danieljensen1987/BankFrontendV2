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
            cpr: {required: true, minlength: 11, maxlength: 11, remote: "LookUpCprServlet"},
            firstName: {required: true, minlength: 2, lettersonly: true},
            lastName: {required: true, minlength: 2, lettersonly: true},
            street: {required: true, minlength: 2, lettersonly: false},
            postalCode: {required: true, minlength: 4, numbersonly: true},
            postalDistrict: {required: true, minlength: 2, lettersonly: true},
            phone: {required: true, minlength: 8, numbersonly: true},
            email: {required: true, email: true}
        },
        messages: {
            cpr: {
                required: "Please enter your CPR number",
                minlength: jQuery.format("At least {0} characters required!"),
                maxlength: jQuery.format("No more than {0} characters required!"),
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
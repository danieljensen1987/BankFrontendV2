<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Customer form</title>
    </head>
    <body>
        <h1>Edit Customer form</h1>
        <form action="Controller" method="POST">
            <table>
               <tr>
                    <th><label for="cpr">Cpr</label></th>
                    <td><input type="text" name="cpr" id="cpr" value="${customer.cpr}"></td>
                </tr>
                <tr>
                    <th><label for="title">Title</label></th>
                    <td><input type="text" name="title" id="title" value="${customer.title}"></td>
                </tr>
                <tr>
                    <th><label for="f_name">First name</label></th>
                    <td><input type="text" name="f_name" id="f_name" value="${customer.firstName}"></td>
                </tr>
                <tr>
                    <th><label for="l_name">Last name</label></th>
                    <td><input type="text" name="l_name" id="l_name" value="${customer.lastName}"></td>
                </tr>
<tr>
                    <th><label for="street">Street address</label></th>
                    <td><input type="text" name="street" id="street" value="${customer.street}"></td>
                </tr>
                <tr>
                    <th><label for="postal-code">Postal code</label></th>
                    <td><input type="text" name="postal-code" id="postal-code" value="${customer.postalCode}"></td>
                </tr>
                <tr>
                    <th><label for="postal-district">Postal district</label></th>
                    <td><input type="text" name="postal-district" id="postal-district" value="${customer.postalDistrict}"></td>
                </tr>
                <tr>
                    <th><label for="phone">Telephone nr.</label></th>
                    <td><input type="text" name="phone" id="phone" value="${customer.phone}"></td>
                </tr>
                <tr>
                    <th><label for="email">E-mail</label></th>
                    <td><input type="text" name="email" id="email" value="${customer.email}"></td>
                </tr>
                <td>
                  
                    <button type="submit" name="command" value="save-customer" style="padding-left: auto">Accept</button>
                    <button type="submit" name="command" value="customer-details" style="padding-left: auto"> Back</button>
                    
                </td>


            </table>

        </form> 

    </body>
</html>

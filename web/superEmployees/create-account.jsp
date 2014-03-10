<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create account form</title>
    </head>
    <body>
        <h1>Create account form</h1>
        <form action="Controller" method="POST">
            <table>
                <tr>
                    <th><label for="cpr">Cpr. nr.</label></th>
                    <td><input type="text" name="cpr" id="cpr"></td>
                </tr>
                <tr>
                    <th><label for="interest">Interest</label></th>
                    <td><input type="text" name="interest" id="interest"></td>
                </tr>
                <td>
                    <button type="submit" name="command" value="create-account" style="padding-left: auto">Accept</button>
                </td>
            </table>
        </form> 
    </body>
</html>

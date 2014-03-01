<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP transfer Page</title>
    </head>
    <body>
        <h1>Transfer money</h1>
        <hr/>
        <div>
        <table>
            
            <tr>
                <th>From Account</th>
                <td><input type="text" name="source" value=""/></td>
            </tr>
                <tr>
                    <th>To Account </th>
                    <td><input type="text" name="target" value=""/></td>
                </tr>
                
                <tr>
                    <th>Amount</th>
                    <td><input type="number" name="amount" value=""/></td>
                </tr>
                
                <tr>
                    <th>Date</th>
                    <td><input type="date" name="date" value=""/></td>
                </tr>
                
                <tr>
                    <th></th>
                    <td><input type="submit" name="accept" value="accept" style="margin-left: 63%"/></td>
                </tr>
                
                
        </table>
    </div>     
        
    </body>
</html>

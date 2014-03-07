<%-- 
    Document   : transaction_confirmation
    Created on : 07-03-2014, 10:29:16
    Author     : CP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <title>Transaction confirmation Page</title>
    </head>
    <body>
         <div id="banner">
            
        </div>
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
    </body>
</html>

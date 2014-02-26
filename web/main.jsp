<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <link rel="stylesheet" href="default.css" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Bank main page</title>
    </head>
    <body>
        <h1>This is bank main page${message}</h1>
        <hr/>
        <ul>
            <!-- <li><a href="ListAccounts">list account</a></li>-->
            <li><a href="Controller?command=list-customers">List customers</a></li>
            <!-- <li><a href="Controller?command=list-accounts">List accounts</a></li> -->
        </ul>
    </body>
</html>

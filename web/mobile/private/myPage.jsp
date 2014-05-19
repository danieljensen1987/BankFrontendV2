<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div data-role="page" id="one" data-theme="b" >
            <div data-role="header">
                <h1>My Page</h1>
            </div>

            <div data-role="content">
                <div>Hi ${pageContext.request.remoteUser}</div></br>
                <div>This is your personal page</div>
                <p><a href="../mobilePage.html" data-role="button" >Back</a></p>
            </div>

            <div data-role="footer" data-position="fixed">
                <h4>Page Footer</h4>
            </div>
        </div>
    </body>
</html>

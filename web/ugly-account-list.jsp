<%@page 
    contentType="text/html" 
    pageEncoding="UTF-8"
    import ="java.util.Collection,dk.cphbusiness.bank.contract.dto.AccountSummary"
    %>
<%
    Collection<AccountSummary> accounts
            = (Collection<AccountSummary>) request.getAttribute("accounts");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account list</title>
    </head>
    <body>
        <h1>Account list</h1>
        <hr/>
        There are <%=accounts.size()%> accounts.
        <hr/>
        <%
            for (AccountSummary account : accounts) {
        %>
        <%= account.getNumber()%> <%= account.getType()%><br/>
        <%
            }
        %>
    </body>
</html>

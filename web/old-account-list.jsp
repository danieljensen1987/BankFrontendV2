<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Account list</title>
  </head>
  <body>
    <h1>Account list</h1>
    <hr/>
    Accounts go here...
    
    <br/>
    <b>Don't and we mean DON'T do this ever!!!</b>
    <%
    for (int i = 1; i < 7; i++) {
      %>
      <h<%= i %>>Dette er overskrift #<%= i %></h<%= i %>>
      <%
      }
    %>

  </body>
</html>

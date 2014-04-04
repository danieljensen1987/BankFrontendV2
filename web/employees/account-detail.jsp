<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/BankFrontend/style/css/default.css"/>
        <link rel="stylesheet" href="/BankFrontend/style/css/employee.css"/>
        <link rel="shortcut icon" href="/BankFrontend/style/gfx/favicon.ico" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cphbank account detail</title>
    </head>
    <body>
        <div id="banner"></div>
        <div id="main_menubar">
            <%@include file="../scripts/jsp/loginLogoutButton.jsp" %>
        </div>
        <div id="se-mid">
                Details for account: ${accountNumber} ${cpr}
                <br/>
                <table>
                    <tr>
                        <th>Date</th>
                        <th>amount</th>
                        <th>From account</th>
                    </tr>
                    <c:forEach var = "transfers" items = "${transfers}">
                        <tr>
                            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${transfers.date}"/></td>                
                            <td>${transfers.amount}</td>                
                            <td>${transfers.accountNumber}</td>                
                        </tr>
                    </c:forEach> 
                </table>
            </div>
            <div id="se-leftside-spacer"></div>
            <div id="se-leftside-panel">
                <a href="Controller?command=prepair-transfer">Transfer money</a><br/>
                <a href="Controller?command=list-accounts&cpr=${cpr}">Account list</a><br/>    
                <a href="Controller?command=customer-details&cpr=${cpr}">Customer details</a><br/>    
                <!--<a href="Controller?command=se-list-customers">Customers</a><br/>-- !!needs security role!!-->    
                <a href="javascript:history.back()">Back</a><br/>
                <a href="Controller?command=main">Back to main page</a><br/>
            </div>
        <div id="spacer"></div>
        <div id="footer">cphbank, Lundtoftevej 93, DK-2800 Kgs. Lyngby  Telefon: +45 12 34 56 67  kontakt@cphbank.dk  CVR: 4545 8181  EAN: 5798 000 56 0550</div>
    </body>
</html>
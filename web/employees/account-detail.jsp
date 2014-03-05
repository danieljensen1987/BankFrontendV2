<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="default.css" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cphbank account detail</title>
    </head>
    <body>
        <%@include file="/all/newjsp.jsp"%>
        
        Details for account: ${accountNumber}
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
        |
        <a href="Controller?command=main">Back to main page</a>
        |
        <a href="javascript:history.back()">Back</a>
        |
        <a href="Controller?command=prepair-transfer">Transfer money</a>
        |

    </body>
</html>

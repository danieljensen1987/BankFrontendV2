<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="menu_top_content" style="float: left">
    <a href="Controller?command=main">HOME</a>&nbsp;&nbsp;&nbsp;
    <a href="Controller?command=about">ABOUT</a>&nbsp;&nbsp;&nbsp;
    <a href="">CONTACT</a>&nbsp;&nbsp;&nbsp;
    <a href="Controller?command=greeting">TEST</a>&nbsp;&nbsp;&nbsp;

    <c:if test="${pageContext.request.isUserInRole('Customer')==true}">
        <a href="Controller?command=customer-main">YOUR PAGE</a>&nbsp;&nbsp;&nbsp;
    </c:if >

    <c:if test="${pageContext.request.isUserInRole('Employee')==true}">
        <a href="Controller?command=employee-main">ADMING</a>&nbsp;&nbsp;&nbsp;
    </c:if>

    <c:if test="${pageContext.request.isUserInRole('SuperEmployee')==true}">
        <a href="Controller?command=super-employee-main">SE ADMIN</a>&nbsp;&nbsp;&nbsp;
        <a href="Controller?command=employee-main">ADMIN</a>&nbsp;&nbsp;&nbsp;
    </c:if>

    <c:choose >
        <c:when test="${pageContext.request.remoteUser== null}">
            <a href="Controller?command=showlogin">LOGIN</a>&nbsp;&nbsp;&nbsp;
        </c:when>
        <c:otherwise>
            <a href="Controller?command=logout">LOG OUT</a>&nbsp;&nbsp;&nbsp;
        </c:otherwise>
    </c:choose>
</div>
<div class="search">
    <input type="text" placeholder="SEARCH"/>
    <input type="submit" />
</div>

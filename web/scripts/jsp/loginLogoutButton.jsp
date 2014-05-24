<%-- 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="login">
    <a href="Controller?command=main">HOME</a>
    <a href="Controller?command=about">ABOUT</a>
    <a href="">CONTACT</a>
    <c:if test="${pageContext.request.isUserInRole('Customer')==true}">
        <a href="Controller?command=customer-main">|Customer main page</a>
    </c:if >

    <c:if test="${pageContext.request.isUserInRole('Employee')==true}">
        <a href="Controller?command=employee-main">|Employee Main page</a>
    </c:if>

    <c:if test="${pageContext.request.isUserInRole('SuperEmployee')==true}">
        <a href="Controller?command=super-employee-main">ADMIN</a>
        <a href="Controller?command=employee-main">|Employee Main page</a>
    </c:if>

    <c:choose >
        <c:when test="${pageContext.request.remoteUser== null}">
            <a href="Controller?command=showlogin">|LOGIN|</a>
        </c:when>
        <c:otherwise>
            <a href="Controller?command=logout">|LOG OUT</a>
        </c:otherwise>
    </c:choose>
</div>

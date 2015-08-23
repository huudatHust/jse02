<%-- 
    Document   : header
    Created on : Aug 12, 2015, 2:57:07 PM
    Author     : TRAN HUU DAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div id = "nav-account">
    <ul>
        <sec:authorize var="authenticated" access="authenticated"/>
        <c:choose>
            <c:when test="${authenticated}">
                <li id = "greeting">
                    <div>
                        Welcome <sec:authentication property="name"/>
                    </div>
                </li>
                <c:set var="logoutUrl" value="j_spring_security_logout"/>
                <li>
                    <a href = "${logoutUrl}">Logout</a>
                </li>
            </c:when>
            <c:otherwise>
                <c:url var = "loginUrl" value="/login"/>
                <li>
                    <a id="navLoginLink" href="${loginUrl}">Login</a>
                </li>
            </c:otherwise>
        </c:choose>
    </ul>
</div>
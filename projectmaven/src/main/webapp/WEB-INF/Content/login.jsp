<%-- 
    Document   : login
    Created on : Aug 12, 2015, 11:08:33 AM
    Author     : TRAN HUU DAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" value="please login" scope="request"/>
<c:url var="loginUrl" value="/j_spring_security_check"/>
<h1>${pageTitle}</h1>
<form action="${loginUrl}" method = "POST">
    <c:if test="${param.error != null}">
        <div class="alert alert-error">
            Failed to login.
            <c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
                Reason: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.
                                        message}" />
            </c:if>
        </div>
    </c:if>
    <c:if test="${param.logout != null}">
        <div class="alert alert-success">
            You have been logged out.
        </div>
    </c:if>
        
       Username :  <input type="text" size="30" name = "username"/><br/>
       Password : <input type="password" size="30" name = "password"/>
       <div>
           <input type="submit" value="Login"/>
       </div>
           
</form>
<%@ page import="org.hibernate.Session" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: modrzej
  Date: 06.04.2023
  Time: 12:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<h1 style="text-align: center">Welcome to Car Wiki</h1>
<div id="header">
    <div class="header-content" style="float: left"><button onclick="location.href='/brands'">Find a car</button></div>
    <c:if test="${loggedUser == null}">
        <div class="header-content" style="float: right"><button onclick="location.href='/register'">Register</button></div>
        <form:form method="post" modelAttribute="user" cssClass="header-content" cssStyle="float: right">
            <form:input path="username" placeholder="Username"/>
            <form:password path="password" placeholder="Password"/>
            <button type="submit">Login</button>
        </form:form>

    </c:if>
    <c:if test="${loggedUser.isSuperUser()}">
        <div style="float: left">
            <div class="header-content"><button onclick="location.href='/car/add'">Add a car</button></div>
            <div class="header-content"><button onclick="location.href='/car/list'">List all cars</button></div>
            <div class="header-content"><button onclick="location.href='/engine/list'">List all engines</button></div>
        </div>
    </c:if>
    <c:if test="${loggedUser != null}">
        <div style="float: right">
            <div class="header-content">Welcome ${loggedUser.getUsername()}</div>
            <div class="header-content"><button onclick="location.href='/account'">Account details</button> </div>
            <div class="header-content"><form action="${pageContext.request.contextPath}/logout" method="post">
                <button type="submit">Logout</button>
            </form> </div>
        </div>
    </c:if>
</div>
</body>
</html>

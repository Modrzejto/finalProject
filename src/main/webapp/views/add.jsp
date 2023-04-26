<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: modrzej
  Date: 06.04.2023
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--@elvariable id="user" type="pl.coderslab.model.User"--%>
    <form:form method="post" modelAttribute="user">
        <form:input path="username" title="Username" /> <br>
        <form:password path="password" title="Password" /> <br>
        <input type="submit">
    </form:form>

</body>
</html>

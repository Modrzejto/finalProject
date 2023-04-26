<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: modrzej
  Date: 26.04.2023
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form:form method="post" modelAttribute="review" action="/review/edit/submit">
        Score: <form:input path="score" value="${review.score}" />/10 <br>
        Comment: <form:textarea path="content" value="${review.content}" /> <br>
        <input type="hidden" name="url" value="/brands/${car.make}/${car.model}/${car.generation}/${car.id}" />
        <input type="hidden" name="carId" value="${car.id}" />
        <input type="hidden" name="userId" value="${review.user.id}" />
        <button type="submit">Edit</button>
    </form:form>
</body>
</html>

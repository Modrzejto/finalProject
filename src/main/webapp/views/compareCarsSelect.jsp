<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: modrzej
  Date: 22.04.2023
  Time: 19:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/compare/">
        <table border="1" cellpadding="10px" cellspacing="5px">
            <tr>
                <td>
                    <select name="firstId">
                        <c:forEach var="car" items="${cars}">
                            <option value="${car.id}">${car.make} ${car.model} ${car.generation} ${car.bodyType} ${car.engine.horsepower}HP</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <select name="secondId">
                        <c:forEach var="car" items="${cars}">
                            <option value="${car.id}">${car.make} ${car.model} ${car.generation} ${car.bodyType} ${car.engine.horsepower}HP</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <button type="submit" >Compare</button>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

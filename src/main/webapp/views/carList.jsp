<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: modrzej
  Date: 13.04.2023
  Time: 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<style type="text/css">
    .tg  {border-collapse:collapse;border-spacing:0;}
    .tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
        overflow:hidden;padding:0px 20px;word-break:normal;}
    .tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
        font-weight:normal;overflow:hidden;padding:0px 20px;word-break:normal;}
    .tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
    .tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
    <thead>
    <tr>
        <th class="tg-0pky">Make</th>
        <th class="tg-0pky">Model</th>
        <th class="tg-0pky">Generation</th>
        <th class="tg-0pky">Displacement</th>
        <th class="tg-0pky">Horsepower</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach items="${cars}" var="car">
        <tr>
            <td class="tg-0lax">${car.make}</td>
            <td class="tg-0lax">${car.model}</td>
            <td class="tg-0lax">${car.generation}</td>
            <td class="tg-0lax">${car.engine.displacement}</td>
            <td class="tg-0lax">${car.engine.horsepower}</td>
            <td><form action="/car/edit/${car.id}" method="get"><button type="submit">Edit</button> </form> </td>
            <td><form action="/car/delete/${car.id}" method="post"><button type="submit">Delete</button> </form> </td>
        </tr>
        </c:forEach>
    </tbody>
</table>
<br><br>
<div style="text-align: center"><button onclick="location.href='/'">Return</button></div>
</body>
</html>

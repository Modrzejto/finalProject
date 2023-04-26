<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: modrzej
  Date: 26.04.2023
  Time: 13:50
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
        <th class="tg-0pky">Production start</th>
        <th class="tg-0pky">Production end</th>
        <th class="tg-0pky">Displacement [cm^3]</th>
        <th class="tg-0pky">Fuel type</th>
        <th class="tg-0pky">Horsepower</th>
        <th class="tg-0pky">Torque [Nm]</th>
        <th class="tg-0pky">Motor mount</th>
        <th class="tg-0pky">Camshaft position</th>
        <th class="tg-0pky">Cylinders</th>
        <th class="tg-0pky">Cylinders arrangement</th>
        <th class="tg-0pky">Valves</th>
        <th class="tg-0pky">Compression ratio</th>
        <th class="tg-0pky">Injection type</th>
        <th class="tg-0pky">Engine code</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach var="engine" items="${engines}">
            <tr>
                <td class="tg-0lax">${engine.startProductionYear}</td>
                <td class="tg-0lax">${engine.endProductionYear}</td>
                <td class="tg-0lax">${engine.displacement}</td>
                <td class="tg-0lax">${engine.fuelType}</td>
                <td class="tg-0lax">${engine.horsepower} @ ${engine.hpRpm} Rpm</td>
                <td class="tg-0lax">${engine.torque} @ ${engine.torqueRpm} Rpm</td>
                <td class="tg-0lax">${engine.motorMount}</td>
                <td class="tg-0lax">${engine.camshaftLocation}</td>
                <td class="tg-0lax">${engine.cylinders}</td>
                <td class="tg-0lax">${engine.engineType}</td>
                <td class="tg-0lax">${engine.valves}</td>
                <td class="tg-0lax">${engine.compressionRatio}:1</td>
                <td class="tg-0lax">${engine.injectionType}</td>
                <td class="tg-0lax">${engine.engineCode}</td>
                <td class="tg-0lax"><button onclick="location.href='/engine/edit/${engine.id}'">Edit</button> </td>
                <td class="tg-0lax"><form method="post" action="/engine/delete/${engine.id}"><button type="submit">Delete</button> </form> </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<button onclick="location.href='/add/engine'">Add engine</button>
<button onclick="location.href='/'">Return</button>
</body>
</html>

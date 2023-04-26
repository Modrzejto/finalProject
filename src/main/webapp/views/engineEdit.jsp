<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: modrzej
  Date: 26.04.2023
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form:form method="post" modelAttribute="engine" action="/engine/edit/submit">
        <form:hidden path="id" value="${engine.id}" />
        <table>
            <tbody>
                <tr>
                    <th scope="row">Production years</th>
                    <td><form:input path="startProductionYear" value="${engine.startProductionYear}" /> - <form:input path="endProductionYear" value="${engine.endProductionYear}" /></td>
                </tr>
                <tr>
                    <th scope="row">Displacement</th>
                    <td><form:input path="displacement" value="${engine.displacement}" /> cm^3</td>
                </tr>
                <tr>
                    <th scope="row">Fuel type</th>
                    <td><form:select path="fuelType" multiple="false">
                        <form:option value="Gasoline" label="Gasoline" />
                        <form:option value="Diesel" label="Diesel" />
                    </form:select></td>
                </tr>
                <tr>
                    <th scope="row">Horsepower</th>
                    <td><form:input path="horsepower" value="${engine.horsepower}" /> HP @ <form:input path="hpRpm" value="${engine.hpRpm}" /> Rpm</td>
                </tr>
                <tr>
                    <th scope="row">Torque</th>
                    <td><form:input path="torque" value="${engine.torque}" /> Nm @ <form:input path="torqueRpm" value="${engine.torqueRpm}" /> Rpm</td>
                </tr>
                <tr>
                    <th scope="row">Motor mount</th>
                    <td><form:select path="motorMount" multiple="false">
                        <form:option value="Front, Horizontal" label="Front, Horizontal" />
                        <form:option value="Front, Vertical" label="Front, Vertical" />
                        <form:option value="Mid" label="Mid" />
                        <form:option value="Rear" label="Rear" />
                    </form:select></td>
                </tr>
                <tr>
                    <th scope="row">Camshaft placement</th>
                    <td><form:select path="camshaftLocation" multiple="false">
                        <form:option value="OHV" label="OHV" />
                        <form:option value="OHC (SOHC)" label="OHC (SOHC)" />
                        <form:option value="OHC (DOHC)" label="OHC (DOHC)" />
                    </form:select></td>
                </tr>
                <tr>
                    <th scope="row">Cylinders</th>
                    <td><form:input path="cylinders" value="${engine.cylinders}" /></td>
                </tr>
                <tr>
                    <th scope="row">Cylinder arrangement</th>
                    <td><form:select path="engineType">
                        <form:option value="V" label="V" />
                        <form:option value="Inline" label="Inline" />
                        <form:option value="Boxer" label="Boxer" />
                        <form:option value="Wankel" label="Wankel" />
                    </form:select></td>
                </tr>
                <tr>
                    <th scope="row">Valves</th>
                    <td><form:input path="valves" value="${engine.valves}" /></td>
                </tr>
                <tr>
                    <th scope="row">Compression ratio</th>
                    <td><form:input path="compressionRatio" value="${engine.compressionRatio}" /> :1</td>
                </tr>
                <tr>
                    <th scope="row">Injection type</th>
                    <td><form:select path="injectionType" multiple="false">
                        <form:option value="Carburetor" label="Carburetor" />
                        <form:option value="Single-Point" label="Single-Point" />
                        <form:option value="Multi-Point" label="Multi-Point" />
                        <form:option value="Sequeantial" label="Sequential" />
                        <form:option value="Direct" label="Direct" />
                    </form:select></td>
                </tr>
                <tr>
                    <th scope="row">Engine code</th>
                    <td><form:input path="engineCode" value="${engine.engineCode}" /></td>
                </tr>
            </tbody>
        </table>
        <button type="submit">Edit</button>
    </form:form>
    <button onclick="location.href='/engine/list'">Return</button>
</body>
</html>

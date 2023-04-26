<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: modrzej
  Date: 13.04.2023
  Time: 13:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form:form method="post" modelAttribute="Car">
        Make: <form:input path="make" /> <br>
        Model: <form:input path="model" /> <br>
        Generation: <form:input path="generation" /> <br>
        Production years: <form:input path="startProductionYear" /> to <form:input path="endProductionYear" /><br>
        Body type: <form:select path="bodyType" multiple="false">
            <form:option value="Wagon" label="Wagon" />
            <form:option value="Saloon" label="Saloon" />
            <form:option value="Coupe" label="Coupe" />
            <form:option value="Cabrio" label="Cabrio" />
            <form:option value="Hatchback" label="Hatchback" />
        </form:select> <br>
        Number of doors: <form:input path="doors" /> <br>
        Number of seats: <form:input path="seats" /> <br>
        Turning radius: <form:input path="turningRadius" /> <br>
        Length: <form:input path="length" /> <br>
        Width: <form:input path="width" /> <br>
        Height: <form:input path="height" /> <br>
        Wheelbase: <form:input path="wheelbase" /> <br>
        Track width front: <form:input path="trackWidthFront" /> <br>
        Track width back: <form:input path="trackWidthBack" /> <br>
        Front overhang: <form:input path="overhangFront" /> <br>
        Back overhang: <form:input path="overhangBack" /> <br>
        Clearance: <form:input path="clearance" /> <br>
        Max trunk capacity: <form:input path="maxTrunkCapacity" /> <br>
        Min truck capacity: <form:input path="minTrunkCapacity" /> <br>
        Engine: <form:select path="engine" multiple="false">
            <c:forEach items="${engines}" var="engine">
                <form:option value="${engine}" label="${engine.engineCode} - ${engine.horsepower}HP" />
            </c:forEach>
        </form:select> <br>
        Gearbox type: <form:select path="gearboxType" multiple="false">
            <form:option value="Manual" label="Manual" />
            <form:option value="Automatic" label="Automatic" />
        </form:select> <br>
        Drivetrain: <form:select path="drivetrain" multiple="false">
            <form:option value="FWD" label="FWD" />
            <form:option value="RWD" label="RWD" />
            <form:option value="AWD" label="AWD" />
            <form:option value="4x4" label="4x4" />
        </form:select> <br>
        Max speed: <form:input path="VMax" /> <br>
        Acceleration (0-100) <form:input path="acceleration" /> <br>
        Fuel consumption (Mixed): <form:input path="fuelConsumptionMX" /> <br>
        Fuel consumption (City): <form:input path="fuelConsumptionCT" /> <br>
        Fuel tank capacity: <form:input path="fuelTankCapacity" /> <br>
        Range (Mixed): <form:input path="rangeMX" /> <br>
        Range (City): <form:input path="rangeCT" /> <br>
        Kerb weight: <form:input path="kerbWeight" /> <br>
        Max gross weight: <form:input path="maxGrossWeight" /> <br>
        <input type="submit" value="Add Car">
    </form:form>
    <button onclick="location.href='/add/engine'">Add Engine</button>
    <button onclick="location.href='/'">Return</button>
</body>
</html>

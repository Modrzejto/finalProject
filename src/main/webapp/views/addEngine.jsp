<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: modrzej
  Date: 13.04.2023
  Time: 13:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--@elvariable id="Engine" type="pl.coderslab.model.Engine"--%>
    <form:form modelAttribute="Engine" method="post">
        Production years: <form:input path="startProductionYear" /> to <form:input path="endProductionYear" /> <br>
        Displacement: <form:input path="displacement" /><br>
        Fuel type: <form:select path="fuelType" multiple="false">
            <form:option value="Gasoline" label="Gasoline" />
            <form:option value="Diesel" label="Diesel" />
        </form:select> <br>
        Horsepower: <form:input path="horsepower" /> at <form:input path="hpRpm" /> RPM<br>
        Torque: <form:input path="torque" /> at <form:input path="torqueRpm" /> RPM<br>
        Motor mount: <form:select path="motorMount" multiple="false">
            <form:option value="Front, Horizontal" label="Front, Horizontal" />
            <form:option value="Front, Vertical" label="Front, Vertical" />
            <form:option value="Mid" label="Mid" />
            <form:option value="Rear" label="Rear" />
        </form:select> <br>
        Camshaft location: <form:select path="camshaftLocation" multiple="false">
            <form:option value="OHV" label="OHV" />
            <form:option value="OHC (SOHC)" label="OHC (SOHC)" />
            <form:option value="OHC (DOHC)" label="OHC (DOHC)" />
        </form:select> <br>
        Cylinders: <form:input path="cylinders" /><br>
        Cylinder arrangement: <form:select path="engineType">
            <form:option value="V" label="V" />
            <form:option value="Inline" label="Inline" />
            <form:option value="Boxer" label="Boxer" />
            <form:option value="Wankel" label="Wankel" />
        </form:select> <br>
        Number of valves: <form:input path="valves" /> <br>
        Compression ratio: <form:input path="compressionRatio" />:1 <br>
        Injection type: <form:select path="injectionType" multiple="false">
            <form:option value="Carburetor" label="Carburetor" />
            <form:option value="Single-Point" label="Single-Point" />
            <form:option value="Multi-Point" label="Multi-Point" />
            <form:option value="Sequeantial" label="Sequential" />
            <form:option value="Direct" label="Direct" />
        </form:select> <br>
        Engine code: <form:input path="engineCode" /><br>
        <input type="submit" value="Add Engine"> <br>
    </form:form>

    <button onclick="window.location.href='/'">Back</button>
</body>
</html>

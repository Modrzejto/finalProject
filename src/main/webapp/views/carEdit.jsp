<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: modrzej
  Date: 26.04.2023
  Time: 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Editing ${car.make} ${car.model} ${car.generation} ${car.bodyType} ${car.engine.displacementFormatted} ${car.engine.horsepower}HP ${car.engine.startProductionYear}-${car.engine.endProductionYear}</h1>
    <form:form method="post" modelAttribute="car" action="/car/edit/submit">
        <form:hidden path="id" value="${car.id}" />
        <table>
            <tbody>
            <tr>
                <th scope="row">Number of doors: </th>
                <td><form:input path="doors" value="${car.doors}" /></td>
            </tr>
            <tr>
                <th scope="row">Number of seats: </th>
                <td><form:input path="seats" value="${car.seats}" /></td>
            </tr>
            <tr>
                <th scope="row">Turning radius: </th>
                <td><form:input path="turningRadius" value="${car.turningRadius}" /> m</td>
            </tr>
            </tbody>
        </table>
        <h3>Exterior dimensions</h3>
        <table>
            <tbody>
            <tr>
                <th scope="row">Length: </th>
                <td><form:input path="length" value="${car.length}" /> mm</td>
            </tr>
            <tr>
                <th scope="row">Width: </th>
                <td><form:input path="width" value="${car.width}" /> mm</td>
            </tr>
            <tr>
                <th scope="row">Wheelbase: </th>
                <td><form:input path="wheelbase" value="${car.wheelbase}" /> mm</td>
            </tr>
            <tr>
                <th scope="row">Track width front: </th>
                <td><form:input path="trackWidthFront" value="${car.trackWidthFront}" /> mm</td>
            </tr>
            <tr>
                <th scope="row">Track width back: </th>
                <td><form:input path="trackWidthBack" value="${car.trackWidthBack}" /> mm</td>
            </tr>
            <tr>
                <th scope="row">Overhang front: </th>
                <td><form:input path="overhangFront" value="${car.overhangFront}" /> mm</td>
            </tr>
            <tr>
                <th scope="row">Overhang back: </th>
                <td><form:input path="overhangBack" value="${car.overhangBack}" /> mm</td>
            </tr>
            <tr>
                <th scope="row">Clearance: </th>
                <td><form:input path="clearance" value="${car.clearance}" /> mm</td>
            </tr>
            </tbody>
        </table>

        <table>
            <tbody>
                <tr>
                    <th scope="row">Engine</th>
                    <td><form:select path="engine" multiple="false">
                        <c:forEach items="${engines}" var="engineVar">
                            <form:option value="${engineVar}" label="${engineVar.engineCode} ${engineVar.displacementFormatted} ${engineVar.horsepower}HP" />
                        </c:forEach>
                    </form:select> </td>
                </tr>
            </tbody>
        </table>

        <h3>Drivetrain</h3>

        <table>
            <tbody>
            <tr>
                <th scope="row">Gearbox type: </th>
                <td><form:select path="gearboxType" multiple="false">
                    <form:option value="Manual" label="Manual" />
                    <form:option value="Automatic" label="Automatic" />
                </form:select> </td>
            </tr>
            <tr>
                <th scope="row">Drivetrain: </th>
                <td><form:select path="drivetrain" multiple="false">
                    <form:option value="FWD" label="FWD" />
                    <form:option value="RWD" label="RWD" />
                    <form:option value="AWD" label="AWD" />
                    <form:option value="4x4" label="4x4" />
                </form:select></td>
            </tr>
            </tbody>
        </table>

        <h3>Performance</h3>

        <table>
            <tbody>
            <tr>
                <th scope="row">Max speed: </th>
                <td><form:input path="VMax" value="${car.VMax}" /> km/h</td>
            </tr>
            <tr>
                <th scope="row">Acceleration (0-100 km/h): </th>
                <td><form:input path="acceleration" value="${car.acceleration}" /> s</td>
            </tr>
            </tbody>
        </table>

        <h3>Fuel consumption</h3>

        <table>
            <tbody>
            <tr>
                <th scope="row">Avg. consumption (Mixed): </th>
                <td><form:input path="fuelConsumptionMX" value="${car.fuelConsumptionMX}" /> l/100km</td>
            </tr>
            <tr>
                <th scope="row">Avg. consumption (City): </th>
                <td><form:input path="fuelConsumptionCT" value="${car.fuelConsumptionCT}" /> l/100km</td>
            </tr>
            </tbody>
        </table>

        <h3>Range</h3>

        <table>
            <tbody>
            <tr>
                <th scope="row">Fuel tank capacity: </th>
                <td><form:input path="fuelTankCapacity" value="${car.fuelTankCapacity}" /> l</td>
            </tr>
            <tr>
                <th scope="row">Range (Mixed): </th>
                <td><form:input path="rangeMX" value="${car.rangeMX}" /> km</td>
            </tr>
            <tr>
                <th scope="row">Range (City): </th>
                <td><form:input path="rangeCT" value="${car.rangeCT}" /> km</td>
            </tr>
            </tbody>
        </table>

        <h3>Weight</h3>

        <table>
            <tbody>
            <tr>
                <th scope="row">Kerb weight: </th>
                <td><form:input path="kerbWeight" value="${car.kerbWeight}" /> kg</td>
            </tr>
            <tr>
                <th scope="row">Max gross weight: </th>
                <td><form:input path="maxGrossWeight" value="${car.maxGrossWeight}" /> kg</td>
            </tr>
            </tbody>
        </table>
        <button type="submit">Submit</button>
    </form:form>
</body>
</html>

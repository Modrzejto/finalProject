<h1>${car.make} ${car.model} ${car.generation} ${car.bodyType} ${car.engine.displacementFormatted} ${car.engine.horsepower}HP ${car.engine.startProductionYear}-${car.engine.endProductionYear}</h1>
<h2>Body details</h2>
<h3>Basic details</h3>
<table>
    <tbody>
    <tr>
        <th scope="row">Number of doors: </th>
        <td>${car.doors}</td>
    </tr>
    <tr>
        <th scope="row">Number of seats: </th>
        <td>${car.seats}</td>
    </tr>
    <tr>
        <th scope="row">Turning radius: </th>
        <td>${car.turningRadius} m</td>
    </tr>
    </tbody>
</table>
<h3>Exterior dimensions</h3>
<table>
    <tbody>
    <tr>
        <th scope="row">Length: </th>
        <td>${car.length} mm</td>
    </tr>
    <tr>
        <th scope="row">Width: </th>
        <td>${car.width} mm</td>
    </tr>
    <tr>
        <th scope="row">Wheelbase: </th>
        <td>${car.wheelbase} mm</td>
    </tr>
    <tr>
        <th scope="row">Track width front: </th>
        <td>${car.trackWidthFront} mm</td>
    </tr>
    <tr>
        <th scope="row">Track width back: </th>
        <td>${car.trackWidthBack} mm</td>
    </tr>
    <tr>
        <th scope="row">Overhang front: </th>
        <td>${car.overhangFront} mm</td>
    </tr>
    <tr>
        <th scope="row">Overhang back: </th>
        <td>${car.overhangBack} mm</td>
    </tr>
    <tr>
        <th scope="row">Clearance: </th>
        <td>${car.clearance} mm</td>
    </tr>
    </tbody>
</table>

<h3>Engine details</h3>
<table>
    <tbody>
    <tr>
        <th scope="row">Production years: </th>
        <td>${car.engine.startProductionYear} - ${car.engine.endProductionYear}</td>
    </tr>
    <tr>
        <th scope="row">Displacement: </th>
        <td>${car.engine.displacement} cm^3</td>
    </tr>
    <tr>
        <th scope="row">Fuel type: </th>
        <td>${car.engine.fuelType}</td>
    </tr>
    <tr>
        <th scope="row">Horsepower: </th>
        <td>${car.engine.horsepower} HP @ ${car.engine.hpRpm} RPM</td>
    </tr>
    <tr>
        <th scope="row">Torque: </th>
        <td>${car.engine.torque} Nm @ ${car.engine.torqueRpm} RPM</td>
    </tr>
    <tr>
        <th scope="row">Motor mount: </th>
        <td>${car.engine.motorMount}</td>
    </tr>
    <tr>
        <th scope="row">Camshaft position: </th>
        <td>${car.engine.camshaftLocation}</td>
    </tr>
    <tr>
        <th scope="row">Cylinders: </th>
        <td>${car.engine.cylinders}</td>
    </tr>
    <tr>
        <th scope="row">Cylinder arrangement: </th>
        <td>${car.engine.engineType}</td>
    </tr>
    <tr>
        <th scope="row">Valves: </th>
        <td>${car.engine.valves}</td>
    </tr>
    <tr>
        <th scope="row">Compression ratio: </th>
        <td>${car.engine.compressionRatio}:1</td>
    </tr>
    <tr>
        <th scope="row">Injection type: </th>
        <td>${car.engine.injectionType}</td>
    </tr>
    <c:if test="${car.engine.engineCode != null}">
        <tr>
            <th scope="row">Engine code: </th>
            <td>${car.engine.engineCode}</td>
        </tr>
    </c:if>
    </tbody>
</table>

<h3>Drivetrain</h3>

<table>
    <tbody>
    <tr>
        <th scope="row">Gearbox type: </th>
        <td>${car.gearboxType}</td>
    </tr>
    <tr>
        <th scope="row">Drivetrain: </th>
        <td>${car.drivetrain}</td>
    </tr>
    </tbody>
</table>

<h3>Performance</h3>

<table>
    <tbody>
    <tr>
        <th scope="row">Max speed: </th>
        <td>${car.VMax} km/h</td>
    </tr>
    <tr>
        <th scope="row">Acceleration (0-100 km/h): </th>
        <td>${car.acceleration} s</td>
    </tr>
    </tbody>
</table>

<h3>Fuel consumption</h3>

<table>
    <tbody>
    <tr>
        <th scope="row">Avg. consumption (Mixed): </th>
        <td>${car.fuelConsumptionMX} l/100km</td>
    </tr>
    <tr>
        <th scope="row">Avg. consumption (City): </th>
        <td>${car.fuelConsumptionCT} l/100km</td>
    </tr>
    </tbody>
</table>

<h3>Range</h3>

<table>
    <tbody>
    <tr>
        <th scope="row">Fuel tank capacity: </th>
        <td>${car.fuelTankCapacity} l</td>
    </tr>
    <tr>
        <th scope="row">Range (Mixed): </th>
        <td>${car.rangeMX} km</td>
    </tr>
    <tr>
        <th scope="row">Range (City): </th>
        <td>${car.rangeCT} km</td>
    </tr>
    </tbody>
</table>

<h3>Weight</h3>

<table>
    <tbody>
    <tr>
        <th scope="row">Kerb weight: </th>
        <td>${car.kerbWeight} kg</td>
    </tr>
    <tr>
        <th scope="row">Max gross weight: </th>
        <td>${car.maxGrossWeight} kg</td>
    </tr>
    </tbody>
</table>
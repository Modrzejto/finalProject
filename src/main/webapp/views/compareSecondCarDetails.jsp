<div class="secondCarDetails">
    <h1>${secondCar.make} ${secondCar.model} ${secondCar.generation} ${secondCar.bodyType} ${secondCar.engine.displacementFormatted} ${secondCar.engine.horsepower}HP ${secondCar.engine.startProductionYear}-${secondCar.engine.endProductionYear}</h1>
    <h2>Body details</h2>
    <h3>Basic details</h3>
    <table>
        <tbody>
        <tr>
            <th scope="row">Number of doors: </th>
            <td>${secondCar.doors}</td>
        </tr>
        <tr>
            <th scope="row">Number of seats: </th>
            <td>${secondCar.seats}</td>
        </tr>
        <tr>
            <th scope="row">Turning radius: </th>
            <td>${secondCar.turningRadius} m</td>
        </tr>
        </tbody>
    </table>
    <h3>Exterior dimensions</h3>
    <table>
        <tbody>
        <tr>
            <th scope="row">Length: </th>
            <td>${secondCar.length} mm</td>
        </tr>
        <tr>
            <th scope="row">Width: </th>
            <td>${secondCar.width} mm</td>
        </tr>
        <tr>
            <th scope="row">Wheelbase: </th>
            <td>${secondCar.wheelbase} mm</td>
        </tr>
        <tr>
            <th scope="row">Track width front: </th>
            <td>${secondCar.trackWidthFront} mm</td>
        </tr>
        <tr>
            <th scope="row">Track width back: </th>
            <td>${secondCar.trackWidthBack} mm</td>
        </tr>
        <tr>
            <th scope="row">Overhang front: </th>
            <td>${secondCar.overhangFront} mm</td>
        </tr>
        <tr>
            <th scope="row">Overhang back: </th>
            <td>${secondCar.overhangBack} mm</td>
        </tr>
        <tr>
            <th scope="row">Clearance: </th>
            <td>${secondCar.clearance} mm</td>
        </tr>
        </tbody>
    </table>

    <h3>Engine details</h3>
    <table>
        <tbody>
        <tr>
            <th scope="row">Production years: </th>
            <td>${secondCar.engine.startProductionYear} - ${secondCar.engine.endProductionYear}</td>
        </tr>
        <tr>
            <th scope="row">Displacement: </th>
            <td>${secondCar.engine.displacement} cm^3</td>
        </tr>
        <tr>
            <th scope="row">Fuel type: </th>
            <td>${secondCar.engine.fuelType}</td>
        </tr>
        <tr>
            <th scope="row">Horsepower: </th>
            <td>${secondCar.engine.horsepower} HP @ ${secondCar.engine.hpRpm} RPM</td>
        </tr>
        <tr>
            <th scope="row">Torque: </th>
            <td>${secondCar.engine.torque} Nm @ ${secondCar.engine.torqueRpm} RPM</td>
        </tr>
        <tr>
            <th scope="row">Motor mount: </th>
            <td>${secondCar.engine.motorMount}</td>
        </tr>
        <tr>
            <th scope="row">Camshaft position: </th>
            <td>${secondCar.engine.camshaftLocation}</td>
        </tr>
        <tr>
            <th scope="row">Cylinders: </th>
            <td>${secondCar.engine.cylinders}</td>
        </tr>
        <tr>
            <th scope="row">Cylinder arrangement: </th>
            <td>${secondCar.engine.engineType}</td>
        </tr>
        <tr>
            <th scope="row">Valves: </th>
            <td>${secondCar.engine.valves}</td>
        </tr>
        <tr>
            <th scope="row">Compression ratio: </th>
            <td>${secondCar.engine.compressionRatio}:1</td>
        </tr>
        <tr>
            <th scope="row">Injection type: </th>
            <td>${secondCar.engine.injectionType}</td>
        </tr>
        <c:if test="${secondCar.engine.engineCode != null}">
            <tr>
                <th scope="row">Engine code: </th>
                <td>${secondCar.engine.engineCode}</td>
            </tr>
        </c:if>
        </tbody>
    </table>

    <h3>Drivetrain</h3>

    <table>
        <tbody>
        <tr>
            <th scope="row">Gearbox type: </th>
            <td>${secondCar.gearboxType}</td>
        </tr>
        <tr>
            <th scope="row">Drivetrain: </th>
            <td>${secondCar.drivetrain}</td>
        </tr>
        </tbody>
    </table>

    <h3>Performance</h3>

    <table>
        <tbody>
        <tr>
            <th scope="row">Max speed: </th>
            <td>${secondCar.VMax} km/h</td>
        </tr>
        <tr>
            <th scope="row">Acceleration (0-100 km/h): </th>
            <td>${secondCar.acceleration} s</td>
        </tr>
        </tbody>
    </table>

    <h3>Fuel consumption</h3>

    <table>
        <tbody>
        <tr>
            <th scope="row">Avg. consumption (Mixed): </th>
            <td>${secondCar.fuelConsumptionMX} l/100km</td>
        </tr>
        <tr>
            <th scope="row">Avg. consumption (City): </th>
            <td>${secondCar.fuelConsumptionCT} l/100km</td>
        </tr>
        </tbody>
    </table>

    <h3>Range</h3>

    <table>
        <tbody>
        <tr>
            <th scope="row">Fuel tank capacity: </th>
            <td>${secondCar.fuelTankCapacity} l</td>
        </tr>
        <tr>
            <th scope="row">Range (Mixed): </th>
            <td>${secondCar.rangeMX} km</td>
        </tr>
        <tr>
            <th scope="row">Range (City): </th>
            <td>${secondCar.rangeCT} km</td>
        </tr>
        </tbody>
    </table>

    <h3>Weight</h3>

    <table>
        <tbody>
        <tr>
            <th scope="row">Kerb weight: </th>
            <td>${secondCar.kerbWeight} kg</td>
        </tr>
        <tr>
            <th scope="row">Max gross weight: </th>
            <td>${secondCar.maxGrossWeight} kg</td>
        </tr>
        </tbody>
    </table>
</div>
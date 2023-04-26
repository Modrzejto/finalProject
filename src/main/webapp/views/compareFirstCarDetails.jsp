<div class="carDetails">
    <h1>${firstCar.make} ${firstCar.model} ${firstCar.generation} ${firstCar.bodyType} ${firstCar.engine.displacementFormatted} ${firstCar.engine.horsepower}HP ${firstCar.engine.startProductionYear}-${firstCar.engine.endProductionYear}</h1>
    <h2>Body details</h2>
    <h3>Basic details</h3>
    <table>
        <tbody>
        <tr>
            <th scope="row">Number of doors: </th>
            <td>${firstCar.doors}</td>
        </tr>
        <tr>
            <th scope="row">Number of seats: </th>
            <td>${firstCar.seats}</td>
        </tr>
        <tr>
            <th scope="row">Turning radius: </th>
            <td>${firstCar.turningRadius} m</td>
        </tr>
        </tbody>
    </table>
    <h3>Exterior dimensions</h3>
    <table>
        <tbody>
        <tr>
            <th scope="row">Length: </th>
            <td>${firstCar.length} mm</td>
        </tr>
        <tr>
            <th scope="row">Width: </th>
            <td>${firstCar.width} mm</td>
        </tr>
        <tr>
            <th scope="row">Wheelbase: </th>
            <td>${firstCar.wheelbase} mm</td>
        </tr>
        <tr>
            <th scope="row">Track width front: </th>
            <td>${firstCar.trackWidthFront} mm</td>
        </tr>
        <tr>
            <th scope="row">Track width back: </th>
            <td>${firstCar.trackWidthBack} mm</td>
        </tr>
        <tr>
            <th scope="row">Overhang front: </th>
            <td>${firstCar.overhangFront} mm</td>
        </tr>
        <tr>
            <th scope="row">Overhang back: </th>
            <td>${firstCar.overhangBack} mm</td>
        </tr>
        <tr>
            <th scope="row">Clearance: </th>
            <td>${firstCar.clearance} mm</td>
        </tr>
        </tbody>
    </table>

    <h3>Engine details</h3>
    <table>
        <tbody>
        <tr>
            <th scope="row">Production years: </th>
            <td>${firstCar.engine.startProductionYear} - ${firstCar.engine.endProductionYear}</td>
        </tr>
        <tr>
            <th scope="row">Displacement: </th>
            <td>${firstCar.engine.displacement} cm^3</td>
        </tr>
        <tr>
            <th scope="row">Fuel type: </th>
            <td>${firstCar.engine.fuelType}</td>
        </tr>
        <tr>
            <th scope="row">Horsepower: </th>
            <td>${firstCar.engine.horsepower} HP @ ${firstCar.engine.hpRpm} RPM</td>
        </tr>
        <tr>
            <th scope="row">Torque: </th>
            <td>${firstCar.engine.torque} Nm @ ${firstCar.engine.torqueRpm} RPM</td>
        </tr>
        <tr>
            <th scope="row">Motor mount: </th>
            <td>${firstCar.engine.motorMount}</td>
        </tr>
        <tr>
            <th scope="row">Camshaft position: </th>
            <td>${firstCar.engine.camshaftLocation}</td>
        </tr>
        <tr>
            <th scope="row">Cylinders: </th>
            <td>${firstCar.engine.cylinders}</td>
        </tr>
        <tr>
            <th scope="row">Cylinder arrangement: </th>
            <td>${firstCar.engine.engineType}</td>
        </tr>
        <tr>
            <th scope="row">Valves: </th>
            <td>${firstCar.engine.valves}</td>
        </tr>
        <tr>
            <th scope="row">Compression ratio: </th>
            <td>${firstCar.engine.compressionRatio}:1</td>
        </tr>
        <tr>
            <th scope="row">Injection type: </th>
            <td>${firstCar.engine.injectionType}</td>
        </tr>
        <c:if test="${firstCar.engine.engineCode != null}">
            <tr>
                <th scope="row">Engine code: </th>
                <td>${firstCar.engine.engineCode}</td>
            </tr>
        </c:if>
        </tbody>
    </table>

    <h3>Drivetrain</h3>

    <table>
        <tbody>
        <tr>
            <th scope="row">Gearbox type: </th>
            <td>${firstCar.gearboxType}</td>
        </tr>
        <tr>
            <th scope="row">Drivetrain: </th>
            <td>${firstCar.drivetrain}</td>
        </tr>
        </tbody>
    </table>

    <h3>Performance</h3>

    <table>
        <tbody>
        <tr>
            <th scope="row">Max speed: </th>
            <td>${firstCar.VMax} km/h</td>
        </tr>
        <tr>
            <th scope="row">Acceleration (0-100 km/h): </th>
            <td>${firstCar.acceleration} s</td>
        </tr>
        </tbody>
    </table>

    <h3>Fuel consumption</h3>

    <table>
        <tbody>
        <tr>
            <th scope="row">Avg. consumption (Mixed): </th>
            <td>${firstCar.fuelConsumptionMX} l/100km</td>
        </tr>
        <tr>
            <th scope="row">Avg. consumption (City): </th>
            <td>${firstCar.fuelConsumptionCT} l/100km</td>
        </tr>
        </tbody>
    </table>

    <h3>Range</h3>

    <table>
        <tbody>
        <tr>
            <th scope="row">Fuel tank capacity: </th>
            <td>${firstCar.fuelTankCapacity} l</td>
        </tr>
        <tr>
            <th scope="row">Range (Mixed): </th>
            <td>${firstCar.rangeMX} km</td>
        </tr>
        <tr>
            <th scope="row">Range (City): </th>
            <td>${firstCar.rangeCT} km</td>
        </tr>
        </tbody>
    </table>

    <h3>Weight</h3>

    <table>
        <tbody>
        <tr>
            <th scope="row">Kerb weight: </th>
            <td>${firstCar.kerbWeight} kg</td>
        </tr>
        <tr>
            <th scope="row">Max gross weight: </th>
            <td>${firstCar.maxGrossWeight} kg</td>
        </tr>
        </tbody>
    </table>
</div>
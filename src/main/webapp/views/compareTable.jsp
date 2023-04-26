<div class="carDetails" id="middle" style="text-align: center">
  <h1>Comparison</h1>
  <h2>Body details</h2>
  <h3>Basic details</h3>

  <table class="comparisonTable">
    <tbody>
    <tr>
      <td>${firstCar.doors - secondCar.doors}</td>
    </tr>
    <tr>
      <td>${firstCar.seats - secondCar.seats}</td>
    </tr>
    <tr>
      <td>${firstCar.turningRadius - secondCar.turningRadius} m</td>
    </tr>
    </tbody>
  </table>
  <h3>Exterior dimensions</h3>
  <table class="comparisonTable">
    <tbody>
    <tr>
      <td>${firstCar.length - secondCar.length} mm</td>
    </tr>
    <tr>
      <td>${firstCar.width - secondCar.width} mm</td>
    </tr>
    <tr>
      <td>${firstCar.wheelbase - secondCar.wheelbase} mm</td>
    </tr>
    <tr>
      <td>${firstCar.trackWidthFront - secondCar.trackWidthFront} mm</td>
    </tr>
    <tr>
      <td>${firstCar.trackWidthBack - secondCar.trackWidthBack} mm</td>
    </tr>
    <tr>
      <td>${firstCar.overhangFront - secondCar.overhangFront} mm</td>
    </tr>
    <tr>
      <td>${firstCar.overhangBack - secondCar.overhangBack} mm</td>
    </tr>
    <tr>
      <td>${firstCar.clearance - secondCar.clearance} mm</td>
    </tr>
    </tbody>
  </table>
  <h3>Engine details</h3>
  <table class="comparisonTable">
    <tbody>
    <tr>
      <td>N/A</td>
    </tr>
    <tr>
      <td>${firstCar.engine.displacement - secondCar.engine.displacement} cm^3</td>
    </tr>
    <tr>
      <td>N/A</td>
    </tr>
    <tr>
      <td>${firstCar.engine.horsepower - secondCar.engine.horsepower} HP</td>
    </tr>
    <tr>
      <td>${firstCar.engine.torque - secondCar.engine.torque} Nm</td>
    </tr>
    <tr>
      <td>N/A</td>
    </tr>
    <tr>
      <td>N/A</td>
    </tr>
    <tr>
      <td>${firstCar.engine.cylinders - secondCar.engine.cylinders}</td>
    </tr>
    <tr>
      <td>N/A</td>
    </tr>
    <tr>
      <td>${firstCar.engine.valves - secondCar.engine.valves}</td>
    </tr>
    <tr>
      <td>${firstCar.engine.compressionRatio - secondCar.engine.compressionRatio}</td>
    </tr>
    <tr>
      <td>N/A</td>
    </tr>
    <tr>
      <td>N/A</td>
    </tr>
    </tbody>
  </table>
  <h3>Drivetrain</h3>
  <table class="comparisonTable">
    <tbody>
    <tr>
      <td>N/A</td>
    </tr>
    <tr>
      <td>N/A</td>
    </tr>
    </tbody>
  </table>
  <h3>Performance</h3>
  <table class="comparisonTable">
    <tbody>
    <tr>
      <td>${firstCar.VMax - secondCar.VMax} km/h</td>
    </tr>
    <tr>
      <td>${firstCar.acceleration - secondCar.acceleration} s</td>
    </tr>
    </tbody>
  </table>
  <h3>Fuel consumption</h3>
  <table class="comparisonTable">
    <tr>
      <td><fmt:formatNumber value="${firstCar.fuelConsumptionMX - secondCar.fuelConsumptionMX}" maxFractionDigits="1" /> l/100km</td>
    </tr>
    <tr>
      <td><fmt:formatNumber value="${firstCar.fuelConsumptionCT - secondCar.fuelConsumptionCT}" maxFractionDigits="1" /> l/100km</td>
    </tr>
  </table>
  <h3>Range</h3>
  <table class="comparisonTable">
    <tbody>
    <tr>
      <td>${firstCar.fuelTankCapacity - secondCar.fuelTankCapacity} l</td>
    </tr>
    <tr>
      <td>${firstCar.rangeMX - secondCar.rangeMX} km</td>
    </tr>
    <tr>
      <td>${firstCar.rangeCT - secondCar.rangeMX} km</td>
    </tr>
    </tbody>
  </table>
  <h3>Weight</h3>
  <table class="comparisonTable">
    <tbody>
    <tr>
      <td>${firstCar.kerbWeight - secondCar.kerbWeight} kg</td>
    </tr>
    <tr>
      <td>${firstCar.maxGrossWeight - secondCar.maxGrossWeight} kg</td>
    </tr>
    </tbody>
  </table>
</div>
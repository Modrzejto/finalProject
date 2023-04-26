package pl.coderslab.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "cars")
@Getter
@Setter
@ToString
public class Car {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String make;
    private String model;
    private String generation;
    private String startProductionYear;
    private String endProductionYear;
    private String bodyType;
    private String doors;
    private String seats;
    private String turningRadius;
    private String width;
    private String length;
    private String height;
    private String wheelbase;
    private String trackWidthFront;
    private String trackWidthBack;
    private String overhangFront;
    private String overhangBack;
    private String clearance;
    private String maxTrunkCapacity;
    private String minTrunkCapacity;
    @OneToOne
    private Engine engine;
    private String gearboxType;
    private String drivetrain;
    private String vMax;
    private String acceleration;
    private String fuelConsumptionMX;
    private String fuelConsumptionCT;
    private String fuelTankCapacity;
    private String rangeMX;
    private String rangeCT;
    private String kerbWeight;
    private String maxGrossWeight;
    @OneToMany(mappedBy = "car")
    private List<Review> review;
}

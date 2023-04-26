package pl.coderslab.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Table(name = "engines")
@Getter
@Setter
@ToString
public class Engine {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String startProductionYear;
    private String endProductionYear;
    private short displacement;
    private double displacementFormatted;
    private String fuelType;
    private String horsepower;
    private String hpRpm;
    private String torque;
    private String torqueRpm;
    private String motorMount;
    private String camshaftLocation;
    private byte cylinders;
    private String engineType;
    private byte valves;
    private String compressionRatio;
    private String injectionType;
    private String engineCode;
}

package pl.coderslab.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.Car;
import pl.coderslab.model.Engine;

import java.util.List;

@Repository
public interface CarRepo extends JpaRepository<Car, Long> {
    Car findCarByMakeAndModelAndEngine_Id(String make, String model, Long engineId);
}

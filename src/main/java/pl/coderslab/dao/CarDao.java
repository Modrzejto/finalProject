package pl.coderslab.dao;

import org.apache.commons.math3.util.Precision;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.Car;
import pl.coderslab.model.Engine;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Repository
@Transactional
public class CarDao implements Dao<Car> {
    @PersistenceContext
    EntityManager em;

    @Override
    public void add(Car o) {
        em.persist(o);
    }

    @Override
    public Car findById(Long id) {
        return em.find(Car.class, id);
    }

    @Override
    public void update(Car o) {
        em.merge(o);
    }

    @Override
    public void delete(Car o) {
        em.remove(o);
    }

    @Autowired
    CarRepo carRepo;

    public List<Car> findAllElements() {
        return carRepo.findAll();
    }

    public List<String> findAllBrands() {
        List<String> makes = new ArrayList<>();
        for (Car car : findAllElements()) {
            makes.add(car.getMake());
        }
        return makes.stream().distinct().toList();
    }

    public List<String> findAllModelsByMake(String make) {
        List<String> models = new ArrayList<>();
        for (Car car : findAllElements()) {
            if (car.getMake().equalsIgnoreCase(make)) {
                models.add(car.getModel());
            }
        }
        return models.stream().distinct().toList();
    }

    public List<String> findGenerationsByModel(String model, String make) {
        List<String> generations = new ArrayList<>();
        for (Car car : findAllElements()) {
            if (car.getMake().equalsIgnoreCase(make)) {
                if (car.getModel().equalsIgnoreCase(model)) {
                    generations.add(car.getGeneration());
                }
            }
        }
        return generations.stream().distinct().toList();
    }

    public List<Engine> findEnginesByGeneration(String make, String model, String generation) {
        List<Engine> engines = new ArrayList<>();
        for (Car car : findAllElements()) {
            if (car.getMake().equalsIgnoreCase(make) && car.getModel().equalsIgnoreCase(model) && car.getGeneration().equalsIgnoreCase(generation)) {
                engines.add(car.getEngine());
            }
        }
        return engines;
    }

    public Car findCarByMakeModelEngineId(String make, String model, Long engineId) {
        return carRepo.findCarByMakeAndModelAndEngine_Id(make, model, engineId);
    }
}

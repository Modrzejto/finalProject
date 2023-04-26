package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.dao.CarDao;
import pl.coderslab.dao.EngineDao;
import pl.coderslab.model.Car;
import pl.coderslab.model.Engine;

import java.util.List;

@Controller
@RequestMapping("/car")
public class CarController {
    private final EngineDao engineDao;
    private final CarDao carDao;

    public CarController(EngineDao engineDao, CarDao carDao) {
        this.engineDao = engineDao;
        this.carDao = carDao;
    }

    @GetMapping("/add")
    public String viewAddForm(Model model) {
        Car car = new Car();
        model.addAttribute("Car", car);
        return "addCar";
    }

    @PostMapping("/add")
    public String addCar(Car car) {
        carDao.add(car);
        return "redirect:/car/add";
    }

    @GetMapping("/list")
    public String listCars() {
        return "carList";
    }

    @PostMapping("/delete/{carId}")
    public String deleteCar(@PathVariable Long carId) {
        carDao.delete(carDao.findById(carId));
        return "redirect:/car/list";
    }

    @GetMapping("/edit/{carId}")
    public String editCar(@PathVariable Long carId, Model model) {
        model .addAttribute("car", carDao.findById(carId));
        return "carEdit";
    }

    @PostMapping("/edit/submit")
    public String editCarSubmit(Car car) {
        carDao.update(car);
        return "redirect:/";
    }

    @ModelAttribute("engines")
    public List<Engine> engines() {
        return engineDao.findAllElements();
    }

    @ModelAttribute("cars")
    public List<Car> cars() {
        return carDao.findAllElements();
    }
}

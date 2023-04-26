package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.dao.CarDao;
import pl.coderslab.model.Car;

import java.util.List;

@Controller
@RequestMapping("/compare")
public class CompareController {
    private final CarDao carDao;

    public CompareController(CarDao carDao) {
        this.carDao = carDao;
    }

    @GetMapping("/")
    public String viewForm(Model model) {
        model.addAttribute("cars", cars());
        return "compareCarsSelect";
    }

    @PostMapping("/")
    public String compare(@RequestParam(name = "firstId") long firstID, @RequestParam(name = "secondId") long secondId, Model model) {
        model.addAttribute("firstCar", carDao.findById(firstID));
        model.addAttribute("secondCar", carDao.findById(secondId));
        return "compare";
    }

    @ModelAttribute
    public List<Car> cars() {
        return carDao.findAllElements();
    }

    @ModelAttribute
    public List<String> models(String make) {
        return carDao.findAllModelsByMake(make);
    }
}

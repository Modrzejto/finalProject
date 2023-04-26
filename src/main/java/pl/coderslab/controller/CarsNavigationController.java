package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import pl.coderslab.dao.CarDao;
import pl.coderslab.dao.ReviewDao;
import pl.coderslab.model.Review;

import javax.servlet.http.HttpSession;

@Controller
public class CarsNavigationController {
    private final CarDao carDao;
    private final ReviewDao reviewDao;

    public CarsNavigationController(CarDao carDao, ReviewDao reviewDao) {
        this.carDao = carDao;
        this.reviewDao = reviewDao;
    }

    @GetMapping("/brands")
    public String viewBrands(Model model) {
        model.addAttribute("brands", carDao.findAllBrands());
        return "carBrands";
    }

    @GetMapping("/brands/{make}")
    public String viewModels(@PathVariable String make, Model model) {
        model.addAttribute("models", carDao.findAllModelsByMake(make));
        return "carModels";
    }

    @GetMapping("/brands/{make}/{model}")
    public String viewGenerations(@PathVariable String make, @PathVariable String model, Model modelModel) {
        modelModel.addAttribute("generations", carDao.findGenerationsByModel(model, make));
        return "carGenerations";
    }

    @GetMapping("/brands/{make}/{model}/{generation}")
    public String viewEngines(@PathVariable String make, @PathVariable String model, Model modelModel, @PathVariable String generation) {
        modelModel.addAttribute("engines", carDao.findEnginesByGeneration(make, model, generation));
        return "carEngines";
    }

    @GetMapping("/brands/{make}/{model}/{generation}/{engineId}")
    public String viewCarDetails(@PathVariable String make, @PathVariable String model, @PathVariable Long engineId, Model modelModel, @PathVariable String generation, HttpSession session) {
        modelModel.addAttribute("car", carDao.findCarByMakeModelEngineId(make, model, engineId));
        modelModel.addAttribute("user", session.getAttribute("loggedInUser"));
        modelModel.addAttribute("review", new Review());
        modelModel.addAttribute("allReviews", reviewDao.findAllReviewByCarId(carDao.findCarByMakeModelEngineId(make, model, engineId).getId()));
        return "carDetails";
    }
}
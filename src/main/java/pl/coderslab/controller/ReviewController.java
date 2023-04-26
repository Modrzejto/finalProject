package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.dao.CarDao;
import pl.coderslab.dao.ReviewDao;
import pl.coderslab.dao.UserDao;
import pl.coderslab.model.Review;

@Controller
public class ReviewController {
    private final ReviewDao reviewDao;
    private final CarDao carDao;
    private final UserDao userDao;

    public ReviewController(ReviewDao reviewDao, CarDao carDao, UserDao userDao) {
        this.reviewDao = reviewDao;
        this.carDao = carDao;
        this.userDao = userDao;
    }

    @PostMapping("/review/add")
    public String addReview(Review review, @RequestParam String url, @RequestParam Long carId, @RequestParam Long userId) {
        review.setCar(carDao.findById(carId));
        review.setUser(userDao.findUserById(userId));
        reviewDao.add(review);
        return "redirect:" + url;
    }

    @PostMapping("/review/delete/{reviewId}")
    public String deleteReview(@PathVariable Long reviewId, @RequestParam String url) {
        reviewDao.delete(reviewDao.findById(reviewId));
        return "redirect:" + url;
    }

    @PostMapping("/review/edit/{reviewId}")
    public String editReview(@PathVariable Long reviewId, @RequestParam String url, Model model, @RequestParam Long carId, @RequestParam Long userId) {
        model.addAttribute("review", reviewDao.findById(reviewId));
        model.addAttribute("url", url);
        model.addAttribute("car", carDao.findById(carId));
        model.addAttribute("user", userDao.findUserById(userId));
        return "reviewEdit";
    }

    @PostMapping("/review/edit/submit")
    public String editReviewSubmit(@RequestParam String url, Review review, @RequestParam Long carId, @RequestParam Long userId) {
        review.setCar(carDao.findById(carId));
        review.setUser(userDao.findUserById(userId));
        reviewDao.update(review);
        return "redirect:" + url;
    }
}

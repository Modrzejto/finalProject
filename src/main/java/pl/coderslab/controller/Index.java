package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import pl.coderslab.dao.UserDao;
import pl.coderslab.model.User;

import javax.servlet.http.HttpSession;

@Controller
public class Index {
    private final UserDao userDao;

    public Index(UserDao userDao) {
        this.userDao = userDao;
    }

    @GetMapping("/")
    public String index(Model model, HttpSession session) {
        model.addAttribute("user", new User());
        model.addAttribute("loggedUser", session.getAttribute("loggedInUser"));
        return "index";
    }

    @PostMapping("/")
    public String login(User user, HttpSession session) {
        if (userDao.validate(user)) {
            session.setAttribute("loggedInUser", userDao.findUserByUsername(user.getUsername()));
        }

        return "redirect:/";
    }

    @PostMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("loggedInUser");
        return "redirect:/";
    }
}

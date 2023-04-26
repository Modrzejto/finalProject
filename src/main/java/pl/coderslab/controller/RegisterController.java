package pl.coderslab.controller;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.dao.UserDao;
import pl.coderslab.model.User;

@Controller
public class RegisterController {
    private final UserDao userDao;

    public RegisterController(UserDao userDao) {
        this.userDao = userDao;
    }

    @GetMapping("/register")
    public String viewForm(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "add";
    }

    @PostMapping("/register")
    public String addUser(User user) {
        user.setSuperUser(false);
        user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));
        userDao.addUser(user);
        return "redirect:/";
    }
}

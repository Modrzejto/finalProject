package pl.coderslab.controller;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.dao.UserDao;
import pl.coderslab.model.User;

import javax.servlet.http.HttpSession;

@Controller
public class AccountController {
    private final UserDao userDao;

    public AccountController(UserDao userDao) {
        this.userDao = userDao;
    }

    @GetMapping("/account")
    public String viewAccounts(Model model, HttpSession session) {
        model.addAttribute("user", session.getAttribute("loggedInUser"));
        model.addAttribute("modelUser", new User());
        model.addAttribute("allUsers", userDao.findAllUsers());
        return "accountDetails";
    }

    @PostMapping("/account")
    public String changePwd(HttpSession session, @RequestParam String oldPwd, @RequestParam String newPwd, @RequestParam String confirmNewPwd) {
        System.out.println(oldPwd + " " + newPwd + " " + confirmNewPwd);
        User currentUser = (User) session.getAttribute("loggedInUser");
        if (BCrypt.checkpw(oldPwd, currentUser.getPassword())) {
            if (newPwd.equals(confirmNewPwd)) {
                currentUser.setPassword(BCrypt.hashpw(newPwd, BCrypt.gensalt()));
                userDao.editUser(currentUser);
            }
        }
        return "redirect:/account";
    }

    @PostMapping("/account/remove/{userId}")
    public String removeUser(@PathVariable Long userId) {
        userDao.removeUser(userDao.findUserById(userId));
        return "redirect:/account";
    }

    @PostMapping("/account/grant/{userId}")
    public String grantSuperUser(@PathVariable Long userId) {
        User user = userDao.findUserById(userId);
        user.setSuperUser(true);
        userDao.editUser(user);
        return "redirect:/account";
    }

    @PostMapping("/account/revoke/{userId}")
    public String revokeSuperUser(@PathVariable Long userId) {
        User user = userDao.findUserById(userId);
        user.setSuperUser(false);
        userDao.editUser(user);
        return "redirect:/account";
    }
}

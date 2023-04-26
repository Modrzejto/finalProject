//package pl.coderslab.finalProject;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//@Controller
//public class FinalProjectController {
//    private final UserRepository userRepository;
//    private final UserDao userDao;
//
//    public FinalProjectController(UserRepository userRepository, UserDao userDao) {
//        this.userRepository = userRepository;
//        this.userDao = userDao;
//    }
//
//    @GetMapping("/")
//    public String hello() {
//        return "/hello";
//    }
//
//    @GetMapping("/add")
//    public String viewAddForm(Model model) {
//        User user = new User();
//        model.addAttribute(user);
//        return "/add";
//    }
//
//    @PostMapping("/add")
//    public String add(User user) {
//        user.setEnabled(true);
//        userDao.addUser(user);
//        return "/add";
//    }
//
//    @GetMapping("/view")
//    @ResponseBody
//    public String view() {
//        return userRepository.findUsers().toString();
//    }
//}

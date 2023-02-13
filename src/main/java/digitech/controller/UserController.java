package digitech.controller;

import digitech.model.Service;
import digitech.model.User;
import digitech.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("/user/login")
    public RedirectView login(@RequestParam String email,@RequestParam String password, Model model) {
//         Update the user in the database
        User user = userService.login(email,password);
        if(user!=null)
        {
            model.addAttribute("user",user);
            return new RedirectView("/");
        }else{
            return new RedirectView("/login");
        }

    }
    @PostMapping("/user/signup")
    public RedirectView signUp(@RequestParam String email,@RequestParam String password,@RequestParam String name, Model model) {
//         Update the user in the database
        User user = userService.signUp(email,password,name);
        if(user!=null)
        {
            model.addAttribute("User",user);
            return new RedirectView("/login");
        }else{
            return new RedirectView("/signup");
        }

    }
}

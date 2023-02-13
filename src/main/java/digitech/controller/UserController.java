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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("/user/login")
    public RedirectView login(@RequestParam String email,@RequestParam String password, RedirectAttributes redirectAttributes) {
//         Update the user in the database
        User user = userService.login(email,password);

        if(user!=null)
        {
            Long id = user.getId();
            redirectAttributes.addFlashAttribute("user",user);
            switch (user.getRole().getRoleName()){
                case "ADMIN":
                    return new RedirectView("/admin");
                case "USER":
                    return new RedirectView("/user/"+id);
                case "EMPLOYEE":
                    return new RedirectView("/employee/"+id);
            }

        }else{
            return new RedirectView("/login");
        }

        return null;
    }
    @PostMapping("/user/signup")
    public RedirectView signUp(@RequestParam String email,@RequestParam String password,@RequestParam String name, Model model) {
//         Update the user in the database
        User user = userService.signUp(email,password,name);
        if(user!=null)
        {
            return new RedirectView("/login");
        }else{
            return new RedirectView("/signup");
        }

    }
}

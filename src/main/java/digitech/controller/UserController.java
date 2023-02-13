package digitech.controller;

import digitech.model.User;
import digitech.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;
import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private HttpServletRequest request;
    @GetMapping("/user/profile")
    public String userProfilePage(){
        return "user_profile";
    }

    @PostMapping("/user/login")
    public RedirectView login(@RequestParam String email, @RequestParam String password, RedirectAttributes redirectAttributes, HttpServletRequest request) {
        User user = userService.login(email, password);
        if (user != null) {
            Long id = user.getId();
            request.getSession().setAttribute("user", user);
            switch (user.getRole().getRoleName()) {
                case "ADMIN":
                    return new RedirectView("/admin");
                case "USER":
                    return new RedirectView("/");
                case "EMPLOYEE":
                    return new RedirectView("/employee");
            }
        } else {
            redirectAttributes.addFlashAttribute("errorMessage", "Invalid email or password");
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


    @PostMapping(value = "/user/event/register")
    void registerEvent(@RequestParam Long userId, @RequestParam Long eventId) {
        userService.registerEvent(userId, eventId);
        //TODO: add redirection
    }
    @PostMapping(value = "/user/buy_serice")
    void buyService(@RequestParam Long userId, @RequestParam Long serviceId) {
        userService.buyService(userId, serviceId);
        //TODO: add redirection
    }

    @PostMapping(value = "/user/training/enroll")
    void enrollTraining(@RequestParam Long userId, @RequestParam Long trainingId) {
        userService.enrollTraining(userId, trainingId);
        //TODO: add redirection
    }

}

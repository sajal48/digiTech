package digitech.controller;

import digitech.dto.UserDto;
import digitech.model.ServiceDetails;
import digitech.model.Training;
import digitech.model.User;
import digitech.service.AdminService;
import digitech.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private AdminService adminService;



    @Autowired
    private HttpServletRequest request;
    @GetMapping("/user/profile")
    public String userProfilePage(Model model){
        User user = (User) request.getSession().getAttribute("user");
        List<Training> myTraining = new ArrayList<>(user.getMyTrainings());
        model.addAttribute("myTraining",myTraining);
        List<ServiceDetails> myServices = new ArrayList<>(userService.getMyServices(user));
        model.addAttribute("myServices",myServices);
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
    @PostMapping(value = "/user/buy_service")
    RedirectView buyService(@RequestParam Long userId, @RequestParam Long serviceId) {
        userService.buyService(userId, serviceId);
        return new RedirectView("/services");
    }

    @PostMapping(value = "/user/training/enroll")
    RedirectView enrollTraining(@RequestParam Long userId, @RequestParam Long trainingId) {

        userService.enrollTraining(userId, trainingId);
        return new RedirectView("/trainings");
    }

    @PostMapping("/user/update_user")
    public RedirectView updateUser(@ModelAttribute UserDto userDto, Model model) {
//         Update the user in the database
        adminService.updateUser(userDto);

        return new RedirectView("/");
    }

}

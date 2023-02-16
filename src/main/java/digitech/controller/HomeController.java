package digitech.controller;

import digitech.model.*;
import digitech.service.AdminService;
import digitech.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Controller
public class HomeController {

    @Autowired
    private AdminService adminService;
    @Autowired
    private UserService userService;

    @Autowired
    HttpServletRequest request;

    @RequestMapping("/testform")
    public String test(Model model) {
        System.out.println("form-test");
        return "service_form";
    }

    @RequestMapping("/admin/service_form")
    public String serviceForm(Model model) {
        System.out.println("form-test");
        return "service_form";
    }

    @RequestMapping("/not_authorized")
    public String notAuthorized() {
        System.out.println("not_authorized");
        return "not_authorized";
    }

    @RequestMapping("/not_found")
    public String notFound() {
        System.out.println("404: no found!");
        return "not_found";
    }

    @RequestMapping("/")
    public String home() {
        List<Service> services = adminService.getServies();
        List<Event> events = adminService.getEvents();
        List<Training> trainings = adminService.getTrainings();

        User user=(User) request.getSession().getAttribute("user");
        if(user!=null){
            List<Service> myServices = new ArrayList<>(userService.ownedServices(user.getId()));
            request.getSession().setAttribute("myServices", myServices);
            List<Training> myTraining = new ArrayList<>(user.getMyTrainings());
            request.getSession().setAttribute("myTraining", myTraining);
        }

        request.getSession().setAttribute("services", services);
        request.getSession().setAttribute("trainings", trainings);
        request.getSession().setAttribute("events", events);

        System.out.println("index");
        return "index";
    }

    @GetMapping("/login")
    String login() {
        return "login";
    }

    @GetMapping("/logout")
    RedirectView logout() {
        request.getSession().setAttribute("user", null);
        request.getSession().setAttribute("isLoggedIn", false);
        return new RedirectView("/login");
    }

    @GetMapping("/signup")
    String signup() {
        return "signup";
    }

    @RequestMapping("/about")
    public String about() {
        System.out.println("about");
        return "about";
    }

    @RequestMapping("/events")
    public String events() {
        request.getSession().setAttribute("events", adminService.getEvents());
        User u = (User) request.getSession().getAttribute("user");

        if (u != null) {
            User user = adminService.getUser(u.getId());
            request.getSession().setAttribute("user",user);
            Set<Event> m = user.getRegisteredAtEvent();
            List<Event> myEvent = new ArrayList<>(m);
            request.getSession().setAttribute("myEvent", myEvent);
        }
        return "events";
    }

    @RequestMapping("/services")
    public String services() {
        request.getSession().setAttribute("services", adminService.getServies());
        User u = (User) request.getSession().getAttribute("user");

        if (u != null) {
            User user = adminService.getUser(u.getId());
            request.getSession().setAttribute("user",user);
            List<Service> myServices = new ArrayList<>(userService.ownedServices(user.getId()));
            request.getSession().setAttribute("myServices", myServices);
        }
        System.out.println("services");
        return "services";
    }

    @RequestMapping("/admin/user")
    public String serviceForm() {
        System.out.println("service_form");
        return "add_user";
    }

    @RequestMapping("/admin/add_service")
    public String addServiceForm() {
        System.out.println("service_form");
        return "add_service";
    }

    @RequestMapping("/event-form")
    public String eventForm() {
        System.out.println("event_form");
        return "event_form";
    }

    @RequestMapping("/training-registration")
    public String trainingRegistrationForm() {
        System.out.println("training_registration_form");
        return "training_registration_form";
    }

    @RequestMapping("/new-file")
    public String newFile() {
        System.out.println("new_file");
        return "new_file";
    }

    @RequestMapping("/trainings")
    public String trainings() {
        request.getSession().setAttribute("trainings", adminService.getTrainings());
       User u = (User) request.getSession().getAttribute("user");

        if (u != null) {
            User user = adminService.getUser(u.getId());
            request.getSession().setAttribute("user",user);
            Set<Training> m = user.getMyTrainings();
            List<Training> myTraining = new ArrayList<>(m);
            request.getSession().setAttribute("myTraining", myTraining);
        }
        System.out.println("trainings");
        return "trainings";
    }

    @RequestMapping("/privacy_policy")
    public String privacyPolicy() {
        System.out.println("trainings");
        return "privacy_policy";
    }
}

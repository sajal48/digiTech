package digitech.controller;

import digitech.dao.TrainingDao;
import digitech.dto.EventDto;
import digitech.dto.TrainingDto;
import digitech.dto.UserDto;
import digitech.model.Event;
import digitech.model.Training;
import digitech.model.User;
import digitech.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

    @GetMapping("/admin")
    public String adminDashBoard(Model model){
        List<User> users = adminService.getUsers();
        List<Event> events=adminService.getEvents();
        List<Training> trainings = adminService.getTrainings();
        model.addAttribute("users",users);
        model.addAttribute("events",events);
        model.addAttribute("trainings",trainings);
        return "admin_dashboard";
    }

    @GetMapping("/admin/init_roles")
    public void initRoles() {
        adminService.initRoles();
    }

    @GetMapping("admin/user")
    String addUser() {
        return "add_user";
    }
    @PostMapping("/admin/user/update")
    String editUser(@RequestParam("id") int id, Model model) {
        User user = adminService.getUser(id);
        model.addAttribute("user", user);
        return "update_user";
    }
    @PostMapping("/admin/event/update")
    String editEvent(@RequestParam("id") Long id, Model model) {
        Event event = adminService.getEvent(id);
        model.addAttribute("event", event);
        return "update_event";
    }
    @GetMapping("admin/event")
    String addEvent() {
        return "add_event";
    }

    @GetMapping("admin/course")
    String addCourse() {
        return "add_course";
    }

    // ----------------USER SECTION ------------------

    @PostMapping(value = "/admin/user")
    RedirectView createUser(@ModelAttribute UserDto userDto) {
        adminService.createUser(userDto);
        System.out.println(" User created " + userDto);
        //TODO: change redirection
        return new RedirectView("/testform");
    }
    @PostMapping("/admin/update_user")
    public RedirectView updateUser(@ModelAttribute UserDto userDto,Model model) {
//         Update the user in the database
        adminService.updateUser(userDto);
        List<User> users = adminService.getUsers();
        List<Event> events=adminService.getEvents();
        model.addAttribute("users",users);
        model.addAttribute("events",events);
        return new RedirectView("/admin");
    }
    @GetMapping("/admin/delete_user/{id}")
    public RedirectView deleteUser(@PathVariable long id,Model model) {
//         Update the user in the database
        adminService.deleteUser(id);
        List<User> users = adminService.getUsers();
        List<Event> events=adminService.getEvents();
        model.addAttribute("users",users);
        model.addAttribute("events",events);
        return new RedirectView("/admin");

    }


    // ----------------EVENTS SECTION ------------------

    @PostMapping(value = "/admin/event")
    RedirectView createEvent(@ModelAttribute EventDto eventDto) {
        Event event = Event.builder()
                .name(eventDto.getName())
                .details(eventDto.getDetails())
                .date(eventDto.getDate())
                .location(eventDto.getLocation())
                .build();
          adminService.createEvent(event);
        System.out.println("Eventsdto: " + eventDto);
        System.out.println("Event: " + event);
        //TODO: add redirection
        return new RedirectView("/admin");
    }

    @GetMapping("/admin/events")
    public void getEvents() {
        List<Event> events = adminService.getEvents();
        System.out.println("Total events: " + events);
        //TODO: ADD modal return
    }

    @GetMapping("/admin/event/{id}")
    public void getEvent(@PathVariable("id") Long id) {
        Event event = adminService.getEvent(id);
        System.out.println("event: " + event);
        //TODO: ADD modal return
    }

    @PostMapping(value = "/admin/update_event")
    public RedirectView updateEvent(@ModelAttribute Event event,Model model) {
        adminService.updateEvent(event);
        List<User> users = adminService.getUsers();
        List<Event> events=adminService.getEvents();
        model.addAttribute("users",users);
        model.addAttribute("events",events);
        return new RedirectView("/admin");
    }

    @GetMapping("/admin/event/delete/{id}")
    public RedirectView deleteEvent(@PathVariable("id") long id,Model model) {
        adminService.deleteEvent(id);
        List<User> users = adminService.getUsers();
        List<Event> events=adminService.getEvents();
        model.addAttribute("users",users);
        model.addAttribute("events",events);
        return new RedirectView("/admin");
    }

    @PostMapping(value = "/admin/event/register")
    void registerEvent(@RequestParam Long userId, @RequestParam Long eventId) {
        adminService.registerEvent(userId, eventId);
        //TODO: add redirection
    }



    // ----------------TRAINING SECTION ------------------

    @PostMapping(value = "/admin/training")
    RedirectView createTraining(@ModelAttribute TrainingDto trainingDto) {
        adminService.createTraining(trainingDto);
        System.out.println("trainingdto: " + trainingDto);
        //TODO: add redirection
        return new RedirectView("/admin");
    }

    @GetMapping("/admin/trainings")
    public void getTrainings() {
        List<Training> trainings = adminService.getTrainings();
        System.out.println("Total training: " + trainings);
        //TODO: ADD modal return
    }


    @PostMapping(value = "/admin/update_training")
    public RedirectView updateTraining(@ModelAttribute Training training,Model model) {
        adminService.updateTraining(training);
        List<User> users = adminService.getUsers();
        List<Event> events=adminService.getEvents();
        List<Training> trainings=adminService.getTrainings();
        model.addAttribute("users",users);
        model.addAttribute("events",events);
        model.addAttribute("trainings",trainings);

        return new RedirectView("/admin");
    }
    @RequestMapping("admin/course/update")
    public String trainingUpdateForm(@ModelAttribute Training training,Model model) {
        adminService.updateTraining(training);
        List<Training> trainings=adminService.getTrainings();
        model.addAttribute("trainings",trainings);
        return "update_course";
    }







    @GetMapping("/admin/employees")
    public void getEmployees() {
        //adminService.getEmployees();
        System.out.println("Total users: " + adminService.getEmployees());
        //TODO: ADD modal return
    }

//    @GetMapping("/admin")
//    public String adminDashboard() {
//        employeeService.getTasks();
//        System.out.println("Total tasks: " + employeeService.getTasks());
//        //TODO: ADD modal return
//        return "admin_dashboard";
//    }


//    @PostMapping(value = "/admin/user")
////    @ResponseBody
////    @RequestMapping(path = "/admin/user", method = RequestMethod.POST)
//    RedirectView createUser(@ModelAttribute UserDto userDto) {
//        User user = User.builder()
//                .email(userDto.getEmail())
//                .password(userDto.getPassword())
//                .name(userDto.getName())
//                .build();
//        User createdUser = userService.createUser(user);
//        System.out.println(createdUser + " User created");
//        return new RedirectView("/testform");
//    }
//
//    @GetMapping("/admin/users")
//    public void getUsers() {
//        userService.getUsers();
//        System.out.println("Total users: " + userService.getUsers());
//        //TODO: ADD modal return
//    }
//

//
//    @PostMapping(value = "/admin/task")
//    void createTask(@ModelAttribute TaskDto taskDto) {
//        Task task = Task.builder()
//                .title(taskDto.getTitle())
//                .description(taskDto.getDescription())
//                .build();
//          adminService.createTask(task);
//        //TODO: add redirection
//    }
//
//    @GetMapping("/admin/tasks")
//    public void getTasks() {
//        employeeService.getTasks();
//        System.out.println("Total tasks: " + employeeService.getTasks());
//        //TODO: ADD modal return
//    }
//
//
//


}

package digitech.controller;

import digitech.dto.EventDto;
import digitech.dto.UserDto;
import digitech.model.Event;


import digitech.model.User;
import digitech.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;


import java.util.List;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

    @GetMapping("/admin/init_roles")
    public void initRoles() {
       adminService.initRoles();
    }


    // ----------------EVENTS SECTION ------------------

    @PostMapping(value = "/admin/event")
    void createEvent(@ModelAttribute EventDto eventDto) {
        Event event = Event.builder()
                .name(eventDto.getName())
                .details(eventDto.getDetails())
                .date(eventDto.getDate())
                .build();
          adminService.createEvent(event);
        //TODO: add redirection
    }

    @GetMapping("/admin/events")
    public void getEvents() {
         List<Event> events=  adminService.getEvents();
        System.out.println("Total events: " + events);
        //TODO: ADD modal return
    }

    @PutMapping(value = "/admin/event")
    void updateEvent(@ModelAttribute EventDto eventDto) {
        Event event = Event.builder()
                .id(eventDto.getId())
                .name(eventDto.getName())
                .details(eventDto.getDetails())
                .date(eventDto.getDate())
                .build();
        adminService.updateEvent(event);
        //TODO: add redirection
    }

    @GetMapping("/admin/event/{id}")
    public void getEvent(@PathVariable("id") Long id) {
        Event event=  adminService.getEvent(id);
        System.out.println("event: " + event);
        //TODO: ADD modal return
    }

    @DeleteMapping("/admin/event/{id}")
    public void deleteEvent(@PathVariable("id") Long id) {
         adminService.deleteEvent(id);
        //TODO: ADD modal return
    }

    @PostMapping(value = "/admin/event/register")
    void registerEvent(@RequestParam Long userId, @RequestParam Long eventId) {
        adminService.registerEvent(userId,eventId);
        //TODO: add redirection
    }




        @PostMapping(value = "/admin/employee")
        RedirectView createEmployee(@ModelAttribute UserDto userDto) {
        User user = User.builder()
                .email(userDto.getEmail())
                .password(userDto.getPassword())
                .name(userDto.getName())
                .build();
//        adminService.createEmployee(user);
        System.out.println(" User created "+ user);
        //TODO: change redirection
        return new RedirectView("/testform");
    }

    @GetMapping("/admin/employees")
    public void getEmployees() {
        adminService.getEmployees();
        System.out.println("Total users: " + adminService.getEmployees());
        //TODO: ADD modal return
    }










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

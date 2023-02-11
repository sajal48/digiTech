package digitech.controller;

import digitech.dto.TaskDto;
import digitech.dto.UserDto;
import digitech.model.Task;
import digitech.model.User;
import digitech.service.impl.AdminServiceImpl;
import digitech.service.impl.EmployeeServiceImpl;
import digitech.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class AdminController {
    @Autowired
    private UserServiceImpl userService;
    @Autowired
    private EmployeeServiceImpl employeeService;

    @Autowired
    private AdminServiceImpl adminService;


    @PostMapping(value = "/admin/user")
//    @ResponseBody
//    @RequestMapping(path = "/admin/user", method = RequestMethod.POST)
    RedirectView createUser(@ModelAttribute UserDto userDto) {
        User user = User.builder()
                .email(userDto.getEmail())
                .password(userDto.getPassword())
                .name(userDto.getName())
                .build();
        User createdUser = userService.createUser(user);
        System.out.println(createdUser + " User created");
        return new RedirectView("/testform");
    }

    @GetMapping("/admin/users")
    public void getUsers() {
        userService.getUsers();
        System.out.println("Total users: " + userService.getUsers());
        //TODO: ADD modal return
    }

    @PostMapping(value = "/admin/employee")
    RedirectView createEmployee(@ModelAttribute UserDto userDto) {
        User user = User.builder()
                .email(userDto.getEmail())
                .password(userDto.getPassword())
                .name(userDto.getName())
                .build();
        User createdEmployee =  employeeService.createEmployee(user);
        System.out.println(createdEmployee + " User created");
        //TODO: change redirection
        return new RedirectView("/testform");
    }

    @GetMapping("/admin/employees")
    public void getEmployees() {
        employeeService.getEmployees();
        System.out.println("Total users: " + employeeService.getEmployees());
        //TODO: ADD modal return
    }

    @PostMapping(value = "/admin/task")
    void createTask(@ModelAttribute TaskDto taskDto) {
        Task task = Task.builder()
                .title(taskDto.getTitle())
                .description(taskDto.getDescription())
                .build();
          adminService.createTask(task);
        //TODO: add redirection
    }

    @GetMapping("/admin/tasks")
    public void getTasks() {
        employeeService.getTasks();
        System.out.println("Total tasks: " + employeeService.getTasks());
        //TODO: ADD modal return
    }






}

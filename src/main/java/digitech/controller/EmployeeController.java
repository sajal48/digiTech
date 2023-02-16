package digitech.controller;

import digitech.model.Task;
import digitech.model.User;
import digitech.service.AdminService;
import digitech.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class EmployeeController {
    @Autowired
    EmployeeService employeeService;

    @Autowired
    private HttpServletRequest request;
    @Autowired
    private AdminService adminService;

    @GetMapping("/employee")
    public String employeeDashboard(Model model) {
        User u = (User) request.getSession().getAttribute("user");
        User user = adminService.getUser(u.getId());
        request.getSession().setAttribute("user",user);
        List<Task> myTaks = employeeService.myTasks(user.getId());
        model.addAttribute("myTasks", myTaks);
        return "employee_dashboard";
    }

    @PostMapping("/employee/taskStatus")
    public RedirectView taskStatus(@RequestParam long taskId) {
        employeeService.changeTaskStatus(taskId, true);
        return new RedirectView("/employee");
    }
}

package digitech.controller;

import digitech.model.Task;
import digitech.model.User;
import digitech.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class EmployeeController {
    @Autowired
    EmployeeService employeeService;
    private HttpServletRequest request;
    @GetMapping("/employee")
    public String employeeDashboard(){
        User user=(User) request.getSession().getAttribute("user");
        List<Task> myTaks =employeeService.myTasks(user.getId());
        request.getSession().setAttribute("myTasks",myTaks);
        return "employee_dashboard";
    }

    @GetMapping("/employee/taskStatus")
    public void taskStatus(@RequestParam long taskId,boolean status){
       employeeService.changeTaskStatus(taskId,status);
    }


}

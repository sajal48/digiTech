package digitech.service.impl;

import digitech.dao.EventDao;
import digitech.dao.RoleDao;
import digitech.dao.TaskDao;
import digitech.dao.UserDao;
import digitech.model.Event;
import digitech.model.Role;
import digitech.model.Task;
import digitech.model.User;
import digitech.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private TaskDao taskDao;

    @Autowired
    private RoleDao roleDao;

    @Autowired
    private UserDao userDao;

    @Autowired
    private EventDao eventDao;

    @Override
    public List<Task> getTasks() {
        return taskDao.getAll();
    }

    @Override
    public Event getEvent(Long eventId) {
        return eventDao.get(eventId);
    }

    @Override
    public void markDone(Long taskId, boolean status) {
        Task task = taskDao.get(taskId);
        task.builder().status(status).build();
        taskDao.save(task);
    }

    @Override
    public List<User> getEmployees() {
        List<User> users = userDao.getAll();
        List<User> employee = users.stream().filter((user -> user.getRole().getRoleName().equals("EMPLOYEE"))).collect(Collectors.toList());
        return  employee;
    }

    @Override
    public User createEmployee(User user) {
        List<Role> roles = roleDao.getAll();

        Role employeeRole = roles.stream().filter(role -> "EMPLOYEE".equals(role.getRoleName()))
                .findAny()
                .orElse(null);
        user.builder().role(employeeRole).build();
        userDao.save(user);
        return user;

    }

    @Override
    public User updateEmployee(User user) {
        User updatedUser = userDao.get(user.getId());
        updatedUser.builder()
                .email(user.getEmail())
                .password(user.getPassword())
                .tasks(user.getTasks())
                .build();
        userDao.save(updatedUser);
        return  updatedUser;
    }
}

package digitech.service;

import digitech.model.Event;
import digitech.model.Task;
import digitech.model.User;

import java.util.List;
public interface EmployeeService {

    public List<Task> getTasks();
    public Event getEvent(Long eventId);
    public void markDone(Long TaskId, boolean status);

    public List<User> getEmployees();
    public User createEmployee(User user);
    public User updateEmployee(User user);


}

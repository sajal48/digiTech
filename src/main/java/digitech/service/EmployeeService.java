package digitech.service;

import digitech.dao.ServiceDetailsDao;
import digitech.dao.TaskDao;
import digitech.dao.UserDao;
import digitech.model.ServiceDetails;
import digitech.model.Task;
import digitech.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

@Service
public class EmployeeService {

    @Autowired
    private ServiceDetailsDao detailsDao;
    @Autowired
    private UserDao userDao;

    @Autowired
    private TaskDao taskDao;

    public List<Task> myTasks(Long userId){
        List<Task> tasks = taskDao.getAll().stream().filter(e-> Objects.equals(e.getAssignTo().getId(), userId)).collect(Collectors.toList());
        return  tasks;
    }

    public void changeTaskStatus(Long taskId,boolean status){
        Task task = taskDao.get(taskId);
        task.setStatus(status);
        taskDao.update(task);
    }


}

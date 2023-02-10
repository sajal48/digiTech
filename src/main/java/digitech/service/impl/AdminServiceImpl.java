package digitech.service.impl;

import digitech.dao.EventDao;
import digitech.dao.TaskDao;
import digitech.dao.UserDao;
import digitech.model.Event;
import digitech.model.Task;
import digitech.model.User;
import digitech.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class AdminServiceImpl  implements AdminService {
    @Autowired
    private TaskDao taskDao;
    @Autowired
    private UserDao userDao;

    @Autowired
    private EventDao eventDao;

    @Override
    public void assignTask(List<User> users, Long taskId) {
        Task task = taskDao.get(taskId);
        Set<User> userSet = new HashSet<>();
        users.stream().map((user)->userSet.add(user));
        task.builder().assignTo(userSet).build();
        taskDao.save(task);

    }

    @Override
    public List<Task> getTasks() {
        return taskDao.getAll();
    }

    @Override
    public void postEvent() {
    //TODO
    }

    @Override
    public void createEvent(Event event) {
        eventDao.save(event);
    }

    @Override
    public void updateEvent(Event e) {
        Event event = eventDao.get(e.getId());
        event.builder().name(e.getName()).date(e.getDate()).registrations(e.getRegistrations()).build();
        eventDao.save(event);
    }

    @Override
    public List<User> getUsers() {
        List<User> users = userDao.getAll();
        List<User> users1 = new ArrayList<>();
        users1 = users.stream().filter((user -> user.getRole().getRoleName().equals("USER"))).collect(Collectors.toList());
        return  users1;

    }
}

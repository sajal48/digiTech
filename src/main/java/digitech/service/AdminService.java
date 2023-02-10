package digitech.service;

import digitech.model.Event;
import digitech.model.Task;
import digitech.model.User;

import java.util.List;

public interface AdminService {

    public void assignTask(List<User> users, Long eventId);
    public List<Task> getTasks();

    public void postEvent();
    public void createEvent(Event event);
    public void updateEvent(Event event);

    public List<User> getUsers();





}

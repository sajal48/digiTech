package digitech.service;

import digitech.dao.EventDao;
import digitech.dao.RoleDao;
import digitech.dao.TaskDao;
import digitech.dao.UserDao;
import digitech.model.Event;
import digitech.model.Role;
import digitech.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class AdminService {

    @Autowired
    private RoleDao roleDao;

    @Autowired
    private TaskDao taskDao;

    @Autowired
    private UserDao userDao;

    @Autowired
    private EventDao eventDao;




    public void initRoles() {
        roleDao.save(Role.builder().roleName("ADMIN").build());
        roleDao.save(Role.builder().roleName("EMPLOYEE").build());
        roleDao.save(Role.builder().roleName("USER").build());
    }


    public void createEvent(Event event){
        eventDao.save(event);
    }
    public void updateEvent(Event event){
        Event e = eventDao.get(event.getId());
        e.setName(event.getName());
        e.setDetails(event.getDetails());
        e.setDate(event.getDate());
        eventDao.save(e);
    }

    public List<Event> getEvents(){
        return eventDao.getAll();
    }
    public Event getEvent(Long id){
        return eventDao.get(id);
    }
    public void deleteEvent(Long id){
         eventDao.delete(id);
    }

    public void registerEvent(Long userId, Long eventId){
        User user = userDao.get(userId);
        Event event = eventDao.get(eventId);
        user.getRegisteredAtEvent().add(event);
        userDao.save(user);
    }

    public User createEmployee(User user){
        List<Role> roles = roleDao.getAll();
        Role employeeRole = roles.stream().filter(role -> "EMPLOYEE".equals(role.getRoleName()))
                .findAny()
                .orElse(null);
        user.builder().role(employeeRole).build();
        userDao.save(user);
        return user;
    }

    public List<User> getEmployees() {
        List<User> users = userDao.getAll();
        List<User> employee = users.stream().filter((user -> user.getRole().getRoleName().equals("EMPLOYEE"))).collect(Collectors.toList());
        return  employee;
    }
}

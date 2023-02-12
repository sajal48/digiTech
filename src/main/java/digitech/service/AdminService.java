package digitech.service;

import digitech.dao.*;
import digitech.dto.TrainingDto;
import digitech.dto.UserDto;
import digitech.model.Event;
import digitech.model.Role;
import digitech.model.Training;
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

    @Autowired
    private TrainingDao trainingDao;




    public void initRoles() {
        roleDao.save(Role.builder().roleName("ADMIN").build());
        roleDao.save(Role.builder().roleName("EMPLOYEE").build());
        roleDao.save(Role.builder().roleName("USER").build());
    }


    // ------- Event Section -------

    public void createEvent(Event event){
        eventDao.save(event);
    }
    public void updateEvent(Event event){
        eventDao.update(event);
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

    // ------- User Section -------

    public void createUser(UserDto userDto){
        List<Role> roles = roleDao.getAll();
        Role setRole = roles.stream().filter(role -> userDto.getRole().equals(role.getRoleName()))
                .findAny()
                .orElse(null);

        userDao.save(User.builder()
                        .email(userDto.getEmail())
                        .name(userDto.getName())
                        .password(userDto.getPassword())
                        .role(setRole)
                .build());
    }
    public List<User> getUsers(){
        List<User> users=userDao.getAll();
        return users;
    }
    public User getUser(long id){

        return getUsers().stream().filter(user-> user.getId()== id).findAny().orElse(null);
    }
    public List<User> getEmployees() {
        List<User> users = getUsers();
        List<User> employee = users.stream().filter((user -> user.getRole().getRoleName().equals("EMPLOYEE"))).collect(Collectors.toList());
        return  employee;
    }
    public void updateUser(UserDto user) {
        User existingUser = userDao.findByEmail(user.getEmail());
//        existingUser.setId(existingUser.getId());
        existingUser.setName(user.getName());
        existingUser.setEmail(user.getEmail());
        existingUser.setPassword(user.getPassword());
        List<Role> roles = roleDao.getAll();
        Role setRole = roles.stream().filter(role -> user.getRole().equals(role.getRoleName()))
                .findAny()
                .orElse(null);
        existingUser.setRole(setRole);
        userDao.updateUser(existingUser);
    }
    public void deleteUser(Long userId){
      userDao.delete(userId);
    }


    // ------- Training Section -------

    public void createTraining(TrainingDto trainingDto){
        trainingDao.save(
                Training.builder()
                        .name(trainingDto.getName())
                        .description(trainingDto.getDescription())
                        .cost(trainingDto.getCost())
                        .build()
        );

    }
    public List<Training> getTrainings(){
        return trainingDao.getAll();
    }
    public void updateTraining(Training training){
        Training existingTraining = trainingDao.get(training.getId());
        existingTraining.setName(training.getName());
        existingTraining.setDescription(training.getDescription());
        existingTraining.setCost(training.getCost());
        trainingDao.updateTraining(existingTraining);
    }
}

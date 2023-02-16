package digitech.service;

import digitech.dao.*;
import digitech.dto.*;
import digitech.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class AdminService {
    @Autowired
    private RoleDao roleDao;
    @Autowired
    private TaskDao taskDao;
    @Autowired
    private ServiceDetailsDao serviceDetailsDao;
    @Autowired
    private UserDao userDao;
    @Autowired
    private EventDao eventDao;
    @Autowired
    private TrainingDao trainingDao;
    @Autowired
    private ServiceDao serviceDao;

    public void initRoles() {
        roleDao.save(Role.builder().roleName("ADMIN").build());
        roleDao.save(Role.builder().roleName("EMPLOYEE").build());
        roleDao.save(Role.builder().roleName("USER").build());
    }

    public void initAdmin() {
        List<Role> roles = roleDao.getAll();
        Role setRole = roles.stream().filter(role -> "ADMIN".equals(role.getRoleName()))
                .findAny()
                .orElse(null);
        userDao.save(User.builder()
                .email("admin@gmail.com")
                .name("admin")
                .password("1234")
                .role(setRole)
                .build());
    }

    // ------- Event Section -------

    public void createEvent(Event event) {
        eventDao.save(event);
    }

    public void updateEvent(Event event) {
        eventDao.update(event);
    }

    public List<Event> getEvents() {
        return eventDao.getAll();
    }

    public Event getEvent(Long id) {
        return eventDao.get(id);
    }

    public void deleteEvent(Long id) {
        eventDao.delete(id);
    }

    // ------- User Section -------

    public void createUser(UserDto userDto) {
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

    public List<User> getUsers() {
        List<User> users = userDao.getAll();
        return users;
    }

    public User getUser(long id) {

        return getUsers().stream().filter(user -> user.getId() == id).findAny().orElse(null);
    }

    public List<User> getEmployees() {
        List<User> users = getUsers();
        List<User> employee = users.stream().filter((user -> user.getRole().getRoleName().equals("EMPLOYEE"))).collect(Collectors.toList());
        return employee;
    }

    public void updateUser(UserDto user) {
        User existingUser = userDao.findByEmail(user.getEmail());
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

    public void deleteUser(Long userId) {
        userDao.delete(userId);
    }

    // ------- Training Section -------

    public void createTraining(TrainingDto trainingDto) {
        trainingDao.save(
                Training.builder()
                        .name(trainingDto.getName())
                        .description(trainingDto.getDescription())
                        .cost(trainingDto.getCost())
                        .build()
        );
    }

    public List<Training> getTrainings() {
        return trainingDao.getAll();
    }

    public void updateTraining(Training training) {
        Training existingTraining = trainingDao.get(training.getId());
        existingTraining.setName(training.getName());
        existingTraining.setDescription(training.getDescription());
        existingTraining.setCost(training.getCost());
        trainingDao.updateTraining(existingTraining);
    }

    // ------- Service Section -------

    public void createService(ServiceDto serviceDto) {
        serviceDao.save(
                digitech.model.Service.builder()
                        .name(serviceDto.getName())
                        .description(serviceDto.getDescription())
                        .cost(serviceDto.getCost())
                        .build()
        );
    }

    public List<digitech.model.Service> getServies() {
        return serviceDao.getAll();
    }

    public digitech.model.Service getService(Long id) {
        return serviceDao.get(id);
    }

    public void updateService(digitech.model.Service service) {
        digitech.model.Service existingService = serviceDao.get(service.getId());
        existingService.setName(service.getName());
        existingService.setDescription(service.getDescription());
        existingService.setCost(service.getCost());
        serviceDao.update(existingService);
    }

    public void deleteService(Long id) {
        serviceDao.delete(id);
    }

    public void deleteCourse(long id) {
        trainingDao.delete(id);
    }

    //relation operations

    public void assignTask(Long detailsId, Long userId) {
        User user = userDao.get(userId);
        ServiceDetails details = serviceDetailsDao.get(detailsId);
        Task task = Task.builder()
                .assignTo(user)
                .serviceDetails(details)
                .build();
        taskDao.save(task);
        details.setAssigned(true);
        serviceDetailsDao.update(details);
    }

    public List<ServiceDetails> getServiceDetails() {
        return serviceDetailsDao.getAll();
    }

    public CourseDetailsDto getCourseDetails(long courseId) {
        Training training = trainingDao.get(courseId);
        List<User> users = userDao.getAll();
        List<User> b_user = new ArrayList<>();
        for (User user:users) {
            if(user.getMyTrainings().contains(training)){
               b_user.add(user);
            }
        }
        return new CourseDetailsDto(courseId,training.getName(),b_user);
    }

    public EventDetailsDto getEventDetails(long eventId) {
        Event event = eventDao.get(eventId);
        List<User> users = userDao.getAll();
        List<User> b_user = new ArrayList<>();
        for (User user:users) {
            if(user.getRegisteredAtEvent().contains(event)){
                b_user.add(user);
            }
        }
        return new EventDetailsDto(eventId,event.getName(),b_user);

    }
}

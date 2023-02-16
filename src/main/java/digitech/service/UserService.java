package digitech.service;

import digitech.dao.*;
import digitech.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class UserService {
    @Autowired
    private UserDao userDao;
    @Autowired
    private RoleDao roleDao;
    @Autowired
    private EventDao eventDao;
    @Autowired
    private TrainingDao trainingDao;
    @Autowired
    private ServiceDao serviceDao;
    @Autowired
    private ServiceDetailsDao serviceDetailsDao;

    public User login(String email, String password) {
        User user = userDao.findByEmail(email);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;

    }

    public User signUp(String email, String password, String name) {
        List<Role> roles = roleDao.getAll();
        Role setRole = roles.stream().filter(role -> "USER".equals(role.getRoleName()))
                .findAny()
                .orElse(null);

        userDao.save(User.builder()
                .email(email)
                .name(name)
                .password(password)
                .role(setRole)
                .build());
        return userDao.findByEmail(email);

    }

    public void registerEvent(Long userId, Long eventId) {
        User user = userDao.get(userId);
        Event event = eventDao.get(eventId);
        user.getRegisteredAtEvent().add(event);
        userDao.updateUser(user);
    }

    public void buyService(Long userId, Long serviceId) {
        User user = userDao.get(userId);
        digitech.model.Service service = serviceDao.get(serviceId);
        ServiceDetails details = ServiceDetails.builder()
                .serviceFor(user)
                .service(service)
                .build();
        serviceDetailsDao.save(details);
    }
    public List<digitech.model.Service> ownedServices(long userId){
        List<ServiceDetails> allServices = serviceDetailsDao.getAll();
        List<digitech.model.Service> mine = new ArrayList<>();
        for(ServiceDetails s : allServices){
            if(s.getServiceFor().getId().equals(userId)){
                mine.add(s.getService());
            }
        }
        return  mine;
    }

    public void enrollTraining(Long userId, Long trainingId) {
        User user = userDao.get(userId);
        Training training = trainingDao.get(trainingId);
        user.getMyTrainings().add(training);
        userDao.updateUser(user);
    }

    public List<ServiceDetails> getMyServices(long id) {
        User user = userDao.get(id);
        List<ServiceDetails> serviceDetails = serviceDetailsDao.getAll();
        List<ServiceDetails> myServices = serviceDetails.stream().filter(e -> e.getServiceFor().getId().equals(user.getId())).collect(Collectors.toList());
        return myServices;
    }


}
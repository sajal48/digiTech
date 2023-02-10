package digitech.service;

import digitech.model.Event;
import digitech.model.User;
import org.springframework.context.annotation.Bean;

import java.util.List;


public interface UserService {

    public User login(String username,String password);
    public User register(User user);
    public void enroll(Long userId, Long eventId);
    public List<User> getUsers();
    public User createUser();
    public User updateUser();

}


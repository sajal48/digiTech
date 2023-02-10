package digitech.service.impl;

import digitech.dao.EventDao;
import digitech.dao.UserDao;
import digitech.model.Event;
import digitech.model.User;
import digitech.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private EventDao eventDao;

    @Override
    public User login(String username, String password) {
        //TODO
        return null;
    }

    @Override
    public User register(User user) {
        //
        return null;
    }

    @Override
    public void enroll(Long userId, Long eventId) {
        User user = userDao.get(userId);
        Event event = eventDao.get(eventId);
        event.getRegistrations().add(user);
        eventDao.save(event);

    }

    @Override
    public List<User> getUsers() {
        List<User> users = userDao.getAll();
        List<User> users1 = users.stream().filter((user -> user.getRole().getRoleName().equals("USER"))).collect(Collectors.toList());
        return  users1;
    }

    @Override
    public User createUser() {
        //TODO
        return null;
    }

    @Override
    public User updateUser() {
        //TODO
        return null;
    }
}

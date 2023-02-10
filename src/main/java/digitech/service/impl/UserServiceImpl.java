package digitech.service.impl;

import digitech.dao.EventDao;
import digitech.dao.RoleDao;
import digitech.dao.UserDao;
import digitech.model.Event;
import digitech.model.Role;
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

    @Autowired
    private RoleDao roleDao;

    @Override
    public User login(String username, String password) {
        //TODO
        return null;
    }

    @Override
    public User register(User user) {
        //TODO
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
        return users1;
    }

    @Override
    public User createUser(User user) {
        List<Role> roles = roleDao.getAll();

        Role userRole = roles.stream().filter(role -> "USER".equals(role.getRoleName()))
                .findAny()
                .orElse(null);
        user.setRole(userRole);
        userDao.save(user);
        return user;

    }

    @Override
    public User updateUser(User user) {
        User updatedUser = userDao.get(user.getId());
        updatedUser.setPassword(user.getPassword());
        updatedUser.setName(user.getName());
        userDao.save(updatedUser);
        return updatedUser;
    }
}

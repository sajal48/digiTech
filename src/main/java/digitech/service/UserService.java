package digitech.service;

import digitech.dao.RoleDao;
import digitech.dao.UserDao;
import digitech.model.Role;
import digitech.model.User;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService  {

    @Autowired
    private UserDao userDao;
    @Autowired
    private RoleDao roleDao;


    public User login(String email, String password){
        User user = userDao.findByEmail(email);
        if( user!=null && user.getPassword().equals(password)){
            return user;
        }
        return null;

    }

    public User signUp(String email, String password,String name){
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


}

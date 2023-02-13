package digitech.service;

import digitech.dao.RoleDao;
import digitech.dao.UserDao;
import digitech.model.Role;
import digitech.model.User;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserService implements UserDetailsService {

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


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userDao.findByEmail(username);
        if (user == null) {
            throw new UsernameNotFoundException("Username not found");
        }
        return new org.springframework.security.core.userdetails.User(user.getEmail(), user.getPassword(),
                getGrantedAuthorities(user));
    }

    private List<GrantedAuthority> getGrantedAuthorities(User user) {
        List<GrantedAuthority> authorities = new ArrayList<>();
            authorities.add(new SimpleGrantedAuthority(user.getRole().getRoleName()));

        return authorities;
}


}

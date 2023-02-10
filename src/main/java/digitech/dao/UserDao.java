package digitech.dao;

import digitech.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Component
public class UserDao {
    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public void save(User user){
        this.hibernateTemplate.save(user);
    }


    public User get(Long id){
        User user = this.hibernateTemplate.get(User.class,id);
        return user;
    }

    @Transactional
    public void delete(Long id){
        User user =  this.hibernateTemplate.get(User.class,id);
        this.hibernateTemplate.delete(user);
    }

    public List<User> getAll(){
        List<User> users = this.hibernateTemplate.loadAll(User.class);
        return users;
    }

}

package digitech.dao;

import digitech.model.User;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
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
    public void save(User user) {
        this.hibernateTemplate.save(user);
    }

    @Transactional
    public void updateUser(User user) {
        this.hibernateTemplate.update(user);
    }

    public User get(Long id) {
        User user = this.hibernateTemplate.get(User.class, id);
        return user;
    }

    public User findByEmail(String email) {
        DetachedCriteria criteria = DetachedCriteria.forClass(User.class);
        criteria.add(Restrictions.eq("email", email));
        List<User> users = (List<User>) this.hibernateTemplate.findByCriteria(criteria);
        if (users.size() > 0) {
            return users.get(0);
        } else {
            return null;
        }
    }

    @Transactional
    public void delete(Long id) {
        User user = this.hibernateTemplate.get(User.class, id);
        this.hibernateTemplate.delete(user);
    }

    public List<User> getAll() {
        List<User> users = this.hibernateTemplate.loadAll(User.class);
        return users;
    }
}

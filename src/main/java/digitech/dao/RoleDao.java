package digitech.dao;


import digitech.model.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Component
@Transactional
public class RoleDao {
    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public void save(Role role) {
        this.hibernateTemplate.save(role);
    }

    @Transactional
    public void delete(Long id) {
        Role role = this.hibernateTemplate.get(Role.class, id);
        this.hibernateTemplate.delete(role);
    }

    public Role get(Long id) {
        Role role = this.hibernateTemplate.get(Role.class, id);
        return role;
    }

    public List<Role> getAll() {
        List<Role> roles = this.hibernateTemplate.loadAll(Role.class);
        return roles;
    }
}

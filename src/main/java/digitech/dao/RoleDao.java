package digitech.dao;


import digitech.model.Role;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class RoleDao {
    @Autowired
    private HibernateTemplate hibernateTemplate;


    public void save(Role role){
        this.hibernateTemplate.save(role);
    }

    public void delete(Long id){
        Role role =  this.hibernateTemplate.get(Role.class,id);
        this.hibernateTemplate.delete(role);
    }


    public Role get(Long id){
        Role role = this.hibernateTemplate.get(Role.class,id);
        return role;
    }


    public List<Role> getAll(){
        List<Role> roles = this.hibernateTemplate.loadAll(Role.class);
        return roles;
    }

}

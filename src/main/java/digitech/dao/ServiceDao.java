package digitech.dao;

import digitech.model.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Component
public class ServiceDao {
    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public void save(Service service) {
        this.hibernateTemplate.save(service);
    }

    @Transactional
    public void update(Service service) {
        this.hibernateTemplate.update(service);
    }

    @Transactional
    public void delete(Long id) {
        Service service = this.hibernateTemplate.get(Service.class, id);
        this.hibernateTemplate.delete(service);
    }

    public Service get(Long id) {
        Service service = this.hibernateTemplate.get(Service.class, id);
        return service;
    }

    public List<Service> getAll() {
        List<Service> services = this.hibernateTemplate.loadAll(Service.class);
        return services;
    }
}

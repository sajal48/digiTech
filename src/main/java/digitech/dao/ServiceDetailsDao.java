package digitech.dao;

import digitech.model.ServiceDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Component
public class ServiceDetailsDao {
    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public void save(ServiceDetails serviceDetails) {
        this.hibernateTemplate.save(serviceDetails);
    }

    @Transactional
    public void update(ServiceDetails serviceDetails) {
        this.hibernateTemplate.update(serviceDetails);
    }

    @Transactional
    public void delete(Long id) {
        ServiceDetails serviceDetails = this.hibernateTemplate.get(ServiceDetails.class, id);
        this.hibernateTemplate.delete(serviceDetails);
    }

    public ServiceDetails get(Long id) {
        ServiceDetails serviceDetails = this.hibernateTemplate.get(ServiceDetails.class, id);
        return serviceDetails;
    }

    public List<ServiceDetails> getAll() {
        List<ServiceDetails> serviceDetailss = this.hibernateTemplate.loadAll(ServiceDetails.class);
        return serviceDetailss;
    }
}

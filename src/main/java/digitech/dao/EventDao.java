package digitech.dao;


import digitech.model.Event;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Component
public class EventDao {
    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public void save(Event event) {
        this.hibernateTemplate.save(event);
    }

    @Transactional
    public void delete(Long id) {
        Event event = this.hibernateTemplate.get(Event.class, id);
        this.hibernateTemplate.delete(event);
    }

    @Transactional
    public void update(Event event) {
        this.hibernateTemplate.update(event);
    }

    public Event get(Long id) {
        Event event = this.hibernateTemplate.get(Event.class, id);
        return event;
    }

    public List<Event> getAll() {
        List<Event> events = this.hibernateTemplate.loadAll(Event.class);
        return events;
    }
}
package digitech.dao;


import digitech.model.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Component
public class TaskDao {
    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public void save(Task task) {
        this.hibernateTemplate.save(task);
    }

    @Transactional
    public void delete(Long id) {
        Task task = this.hibernateTemplate.get(Task.class, id);
        this.hibernateTemplate.delete(task);
    }

    @Transactional
    public void update(Task task) {
        this.hibernateTemplate.update(task);
    }

    public Task get(Long id) {
        Task task = this.hibernateTemplate.get(Task.class, id);
        return task;
    }

    public List<Task> getAll() {
        List<Task> tasks = this.hibernateTemplate.loadAll(Task.class);
        return tasks;
    }
}


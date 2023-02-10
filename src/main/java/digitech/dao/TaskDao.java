package digitech.dao;


import digitech.model.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class TaskDao {
    @Autowired
    private HibernateTemplate hibernateTemplate;


    public void save(Task task){
        this.hibernateTemplate.save(task);
    }

    public void delete(Long id){
        Task task =  this.hibernateTemplate.get(Task.class,id);
        this.hibernateTemplate.delete(task);
    }


    public Task get(Long id){
        Task task = this.hibernateTemplate.get(Task.class,id);
        return task;
    }

    public List<Task> getAll(){
        List<Task> tasks = this.hibernateTemplate.loadAll(Task.class);
        return tasks;
    }

}


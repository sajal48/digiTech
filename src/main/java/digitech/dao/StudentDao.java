package digitech.dao;

import digitech.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Component
public class StudentDao {
    @Autowired
    private HibernateTemplate hibernateTemplate;


    public void add(Student student){
        this.hibernateTemplate.save(student);
    }

    public List<Student> getAll(){
        List<Student> students =this.hibernateTemplate.loadAll(Student.class);
        return students;
    }

    @Transactional
    public void remove(int id){
        Student s = this.hibernateTemplate.load(Student.class,id);
        this.hibernateTemplate.delete(s);
    }

    public Student get(int id){
        return  this.hibernateTemplate.get(Student.class,id);
    }

}

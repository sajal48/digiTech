package digitech.dao;

import digitech.model.Training;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Component
public class TrainingDao {
    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public void save(Training training) {
        this.hibernateTemplate.save(training);
    }

    @Transactional
    public void delete(Long id) {
        Training training = this.hibernateTemplate.get(Training.class, id);
        this.hibernateTemplate.delete(training);
    }

    @Transactional
    public void updateTraining(Training training) {
        this.hibernateTemplate.update(training);
    }

    public Training get(Long id) {
        Training training = this.hibernateTemplate.get(Training.class, id);
        return training;
    }

    public List<Training> getAll() {
        List<Training> trainings = this.hibernateTemplate.loadAll(Training.class);
        return trainings;
    }
}

package digitech.service;

import digitech.dao.StudentDao;
import digitech.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentService {
    @Autowired
    private StudentDao st;

    public void add(Student s){
        st.add(s);
    }
}

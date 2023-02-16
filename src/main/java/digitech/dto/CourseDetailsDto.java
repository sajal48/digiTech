package digitech.dto;

import digitech.model.User;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;
@Data
@AllArgsConstructor
public class CourseDetailsDto {
    private long courseId;
    private String courseName;
    private List<User> customers;
}

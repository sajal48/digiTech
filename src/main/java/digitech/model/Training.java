package digitech.model;

import javax.persistence.*;
import java.util.Set;

@Entity
public class Training {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String description;
    private Long cost;

    @ManyToMany
    @JoinTable(
            name = "enrolled_user",
            joinColumns = @JoinColumn(name = "training_id"),
            inverseJoinColumns = @JoinColumn(name = "d_user_id"))
    private Set<User> enrolledUser;


}
package digitech.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Set;


@Entity(name = "d_user")
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String email;
    private String password;
    private String name;
    @OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "role_id")
    private Role role;

    @OneToMany (fetch = FetchType.EAGER )
    @JoinTable(
            name = "e_task",
            joinColumns = @JoinColumn(name = "d_user_id"),
            inverseJoinColumns = @JoinColumn(name = "task_id"))
    private Set<Task> tasks ;

    @ManyToMany(fetch = FetchType.EAGER ,mappedBy = "registrations")
    private Set<Event> registeredAtEvent;

    @ManyToMany (fetch = FetchType.EAGER, mappedBy = "enrolledUser")
    private Set<Training> enrolledAt;

    @OneToMany (fetch = FetchType.EAGER, mappedBy = "serviceFor")
    private Set<ServiceDetails> myServices;
}

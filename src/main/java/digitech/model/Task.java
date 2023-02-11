package digitech.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Set;

@Entity
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Task {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private boolean status;

    @ManyToOne
    @JoinColumn(name = "service_details_id")
    private ServiceDetails serviceDetails;
    @ManyToMany(fetch = FetchType.EAGER ,mappedBy = "tasks")
    private Set<User> assignTo;
}

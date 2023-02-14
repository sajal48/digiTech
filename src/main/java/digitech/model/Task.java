package digitech.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Task {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private boolean status = false;
    @ManyToOne
    @JoinColumn(name = "service_details_id")
    private ServiceDetails serviceDetails;
    @ManyToOne(fetch = FetchType.EAGER)
    private User assignTo;
}
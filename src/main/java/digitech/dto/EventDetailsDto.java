package digitech.dto;

import digitech.model.User;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class EventDetailsDto {
    private long eventId;
    private String eventName;
    private List<User> customers;
}

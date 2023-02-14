package digitech.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EventDto {
    private String name;
    private String details;
    private String location;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date date;
}
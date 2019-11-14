package academy.learnprogramming.model;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDate;

@Setter
@Getter
@ToString
@EqualsAndHashCode(of = "id")
public class TodoItem {
    //== fields ==
    private int id;
    private String title;
    private String details;
    private LocalDate deadline;


    // == constructor==
    public TodoItem(String title, String details, LocalDate deadline) {
        this.title = title;
        this.details = details;
        this.deadline = deadline;
    }


}

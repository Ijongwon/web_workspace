package sample.dto;



import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@Builder


public class Money {
	private int custno;
	private String custname;
	private String grade;
	private int price;

	
	
}

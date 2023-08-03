package sample.dto;



import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.ToString;

@Builder
@AllArgsConstructor
@Getter
@ToString

public class JProduct {
	private String pcode;
	private String category;
	private String pname;
	private int price;
}

package programers;

import java.util.ArrayList;
import java.util.List;

/*my_string	queries	result
"rermgorpsam"	[[2, 3], [0, 7], [5, 9], [6, 10]]	"programmers"*/
public class dd {
	int k = 0;

	public static void main(String[] args) {
		List<Integer> answer = new ArrayList<>();
		for (int i = 0; i < 10; i++) {
			answer.add(i+2);//[2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
		}
		answer.remove(0);
		answer.remove(1);
		System.out.println(answer);
		
	}
}

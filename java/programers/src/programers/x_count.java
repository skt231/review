package programers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/*my_string	queries	result
"rermgorpsam"	[[2, 3], [0, 7], [5, 9], [6, 10]]	"programmers"*/
public class x_count {

	public static void main(String[] args) {
		System.out.println(solution("oxooxoxxox"));//
		System.out.println(solution("xabcxdefxghi"));

	}

	public static List<Integer> solution(String myString) {
		List<Integer> answer = new ArrayList<>();
		String[] str_arr = myString.split("");
		int count = 0;
		if (str_arr[0] == "x") {
			answer.add(0);
		} else {
			for (int i = 0; i < str_arr.length; i++) {
				if (!str_arr[i].equals("x")) {
					count++;
					System.out.println(count);
				} else {
					answer.add(count);
					count = 0;
				}
			}
		}

		if (str_arr[str_arr.length - 1].equals("x")) {
			answer.add(0);
		}else {
			answer.add(count);
		}

		return answer;
	}
}

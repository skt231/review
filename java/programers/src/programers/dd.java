package programers;

import java.util.Arrays;

/*my_string	queries	result
"rermgorpsam"	[[2, 3], [0, 7], [5, 9], [6, 10]]	"programmers"*/
public class dd {
	int k = 0;

	public static void main(String[] args) {
		String my_string = "rermgorpsam";
		int[][] queries = { { 2, 3 }, { 0, 7 }, { 5, 9 }, { 6, 10 } };
		System.out.println(solution(my_string, queries));

	}

	public static String solution(String my_string, int[][] queries) {
		String answer = "";
		String temp = "";
		String[] arr_my_string = my_string.split("");
		for (int i = 0; i < queries.length; i++) {
			temp = String.valueOf(my_string.charAt(queries[i][0]));
			arr_my_string[queries[i][0]] = String.valueOf(my_string.charAt(queries[i][1]));
			arr_my_string[queries[i][1]] = String.valueOf(temp);
  			System.out.println(Arrays.toString(arr_my_string));
		}
		for (String i : arr_my_string) {
			answer += i;
		}
		return answer;
	}
}

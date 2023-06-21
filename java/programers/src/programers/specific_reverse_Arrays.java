package programers;

import java.util.Arrays;

//문자열 my_string과 정수 s, e가 매개변수로 주어질 때, my_string에서 인덱스 s부터 인덱스 e까지를 뒤집은 문자열을 return 하는 solution 함수를 작성해 주세요.
//		my_string			s	e	result
//		"Progra21Sremm3"	6	12	"ProgrammerS123"
//		"Stanley1yelnatS"	4	10	"Stanley1yelnatS"
public class specific_reverse_Arrays {

	public static void main(String[] args) {

		String my_string = "Progra21Sremm3";
		int s = 6;
		int e = 12;
		System.out.println(solution(my_string, s, e));
	}

	public static String solution(String my_string, int s, int e) {
		String answer = "";
		String[] Array_my_string = my_string.split("");
		for (int i = s; i <= (s + e) / 2; i++) {
			int end = s + e - i;
			String str = Array_my_string[i];

			Array_my_string[i] = Array_my_string[end];
			Array_my_string[end] = str;
		}
		for (String str : Array_my_string) {
			answer += str;
		}
		return answer;
	}

}

package programers;

import java.util.ArrayList;
import java.util.List;

//알파벳 대소문자로만 이루어진 문자열 my_string이 주어질 때, my_string에서 'A'의 개수, my_string에서 'B'의 개수,..., 
//my_string에서 'Z'의 개수, my_string에서 'a'의 개수, my_string에서 'b'의 개수,..., my_string에서 'z'의 개수를 순서대로 담은 길이 52의 정수 배열을 
//return 하는 solution 함수를 작성해 주세요.
//예시
//	my_string		result
//	"Programmers"	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0]
/*입출력 예 #1
예제 1번의 my_string에서 'P'가 1개, 'a'가 1개, 'e'가 1개, 'g'가 1개, 'm'이 2개, 'o'가 1개, 'r'가 3개, 's'가 1개 있으므로 
[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 
0, 0, 0, 0, 2, 0, 1, 0, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0]를 return 합니다.*/
public class count_Array {

	public static void main(String[] args) {
		System.out.println(solution("Programmers"));

	}

	public static List<Integer> solution(String my_string) {
		char A = 'A';
		char a = 'a';
		List<Integer> answer = new ArrayList<>();
		// 대문자
		for (char ch = 'A'; ch <= 'Z'; ch++) {
			int count = 0;
			for (char c : my_string.toCharArray()) {
				if (c == ch) {
					count++;
				}
			}
			answer.add(count);
		}

		// 소문자
		for (char ch = 'a'; ch <= 'z'; ch++) {
			int count = 0;
			for (char c : my_string.toCharArray()) {
				if (c == ch) {
					count++;
				}
			}
			answer.add(count);
		}

		return answer;
	}
}

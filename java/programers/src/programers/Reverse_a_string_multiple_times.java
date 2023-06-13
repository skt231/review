package programers;

/*문자열 my_string과 이차원 정수 배열 queries가 매개변수로 주어집니다. queries의 원소는 [s, e] 형태로, 
my_string의 인덱스 s부터 인덱스 e까지를 뒤집으라는 의미입니다. my_string에 queries의 명령을 순서대로 처리한 후의 문자열을 return 하는 solution 함수를 작성해 주세요.
		
		my_string	queries	result
		"rermgorpsam"	[[2, 3], [0, 7], [5, 9], [6, 10]]	"programmers"*/
public class Reverse_a_string_multiple_times {

	public static void main(String[] args) {
		int[][] queries = { { 2, 3 }, { 0, 7 }, { 5, 9 }, { 6, 10 } };
		System.out.println(solution("rermgorpsam", queries));
	}

	public static String solution(String my_string, int[][] queries) {
		char[] arr = my_string.toCharArray();

		for (int[] query : queries) {
			int start = query[0];
			int end = query[1];

			// 문자열 뒤집기
			while (start < end) {
				char temp = arr[start];
				arr[start] = arr[end];
				arr[end] = temp;
				start++;
				end--;
			}
		}

		return String.valueOf(arr);
	}
}

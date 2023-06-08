package programers;

public class blk_2 {

	public static void main(String[] args) {
		System.out.println(solution(" i    love  you"));

	}

	public static String[] solution(String my_string) {
		String[] answer = my_string.trim().split("\\s+");// \\s+는 하나 이상의 연속된 공백 문자와 일치하는 패턴을 나타냅니다.
															// 예를 들어, "Hello World Java Programming" 문자열에서
//											\\s+ 패턴을 사용하면 공백 문자 사이에 있는 여러 개의 공백을 하나의 공백으로 취급하여 문자열을 분할할 수 있습니다.

		return answer;
	}

}

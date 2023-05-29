package programers;

//어떤 문자열에 대해서 접두사는 특정 인덱스까지의 문자열을 의미합니다. 예를 들어, "banana"의 모든 접두사는 "b", "ba", "ban", "bana", "banan", "banana"입니다.
//문자열 my_string과 is_prefix가 주어질 때, is_prefix가 my_string의 접두사라면 1을, 아니면 0을 return 하는 solution 함수를 작성해 주세요.
//"banana"	"ban"	1
//"banana"	"nan"	0
public class check_prefix {

	public static void main(String[] args) {
		String my_string = "banana";
		String is_prefix = "nan";
		System.out.println(solution(my_string, is_prefix));

	}

	public static int solution(String my_string, String is_prefix) {
		int answer = 0;
		if (my_string.contains(is_prefix)) {
			for (int i = 0; i < my_string.length(); i++) {
				if (my_string.charAt(0) == is_prefix.charAt(0) && my_string.charAt(1) == is_prefix.charAt(1)) {
					answer=1;
				}

			}
		}

		return answer;
	}

}

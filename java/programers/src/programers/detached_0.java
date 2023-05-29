package programers;

//정수로 이루어진 문자열 n_str이 주어질 때, n_str의 가장 왼쪽에 처음으로 등장하는 0들을 뗀 문자열을 return하도록 solution 함수를 완성해주세요.
//"0010"	"10"
//"854020"	"854020"
public class detached_0 {

	public static void main(String[] args) {
		String n_str = "0010";
		System.out.println(solution(n_str));

	}

	public static String solution(String n_str) {

		return String.valueOf(Integer.parseInt(n_str));

	}
}

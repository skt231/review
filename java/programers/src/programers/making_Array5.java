package programers;

import java.util.ArrayList;
import java.util.List;

/*문자열 배열 intStrs와 정수 k, s, l가 주어집니다. intStrs의 원소는 숫자로 이루어져 있습니다.
배열 intStrs의 각 원소마다 s번 인덱스에서 시작하는 길이 l짜리 부분 문자열을 잘라내 정수로 변환합니다. 
이때 변환한 정수값이 k보다 큰 값들을 담은 배열을 return 하는 solution 함수를 완성해 주세요.
		intStrs	k	s	l	result
		["0123456789","9876543210","9999999999999"]	50000	5	5	[56789, 99999]*/
public class making_Array5 {

	public static void main(String[] args) {
		String[] intStrs = { "0123456789", "9876543210", "9999999999999" };
		int k = 50000;
		int s = 5;
		int l = 5;
		System.out.println(solution(intStrs, k, s, l));

	}

	public static List<Integer> solution(String[] intStrs, int k, int s, int l) {
		List<Integer> answer = new ArrayList<>();
		for (int i = 0; i < intStrs.length; i++) {
			String str = "";
			for (int n = s; n < s + l; n++) {
				str += String.valueOf(intStrs[i].charAt(n));
				System.out.println(str);
				if (Integer.parseInt(str) > k) {
					answer.add(Integer.valueOf(str));

				}
			}

		}
		return answer;
	}

}

package programers;

import java.util.ArrayList;
import java.util.List;

/*정수 l과 r이 주어졌을 때, l 이상 r이하의 정수 중에서 숫자 "0"과 "5"로만 이루어진 모든 정수를 오름차순으로 저장한 배열을 return 하는 solution 함수를 완성해 주세요.
만약 그러한 정수가 없다면, -1이 담긴 배열을 return 합니다.
		l	r	result
		5	555	[5, 50, 55, 500, 505, 550, 555]
		10	20	[-1]*/
public class Making_array_2 {

	public static void main(String[] args) {
		System.out.println(solution(5, 555));
	}

	public static List<Integer> solution(int l, int r) {
		List<Integer> answer = new ArrayList<>();
		for (int i = l; i <= r; i++) {
			String[] arr = String.valueOf(i).split("");
			int cal = 0;
			for (int j = 0; j < arr.length; j++) {
				if (Integer.parseInt(arr[j]) % 5 == 0) {
					cal++;
					if (cal == arr.length) {
						answer.add(i);
					}

				}
			}
		}
		if (answer.size() == 0) {
			answer.add(-1);
		}
		return answer;
	}

}

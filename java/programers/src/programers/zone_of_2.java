package programers;

import java.util.ArrayList;
import java.util.List;

/*정수 배열 arr가 주어집니다. 배열 안의 2가 모두 포함된 가장 작은 연속된 부분 배열을 return 하는 solution 함수를 완성해 주세요.
단, arr에 2가 없는 경우 [-1]을 return 합니다.
		arr							result
		--------------------------------------------
		[1, 2, 1, 4, 5, 2, 9]		[2, 1, 4, 5, 2]
		[1, 2, 1]					[2]
		[1, 1, 1]					[-1]
		[1, 2, 1, 2, 1, 10, 2, 1]	[2, 1, 2, 1, 10, 2]*/
public class zone_of_2 {

	public static void main(String[] args) {
		int[] arr = { 1, 2, 1, 4, 5, 2, 9 };
		System.out.println(solution(arr));
	}

	public static List<Integer> solution(int[] arr) {
		List<Integer> answer = new ArrayList<>();
		int cnt = 0;
		for (int i = 0; i < arr.length; i++) {
			if (arr[i] == 2) {
				cnt++;
			}
		}
		if (cnt == 0) {
			answer.add(-1);
		} else if (cnt == 1) {
			answer.add(2);
		} else {
			int start = 0;
			int end = 0;
			for (int i = 0; i < arr.length; i++) {
				if (arr[i] == 2) {
					start = i;
					break;
				}
			}
			for (int i = arr.length - 1; i >= 0; i--) {
				if (arr[i] == 2) {
					end = i;
					break;
				}
			}
			for (int i = start; i <= end; i++) {
				answer.add(arr[i]);
			}
		}

		return answer;
	}

}

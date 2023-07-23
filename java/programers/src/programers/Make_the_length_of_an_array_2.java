package programers;

import java.util.ArrayList;
import java.util.List;

/*정수 배열 arr이 매개변수로 주어집니다. arr의 길이가 2의 정수 거듭제곱이 되도록 arr 뒤에 정수 0을 추가하려고 합니다. 
arr에 최소한의 개수로 0을 추가한 배열을 return 하는 solution 함수를 작성해 주세요.
		arr					result
		[1, 2, 3, 4, 5, 6]	[1, 2, 3, 4, 5, 6, 0, 0]
		[58, 172, 746, 89]	[58, 172, 746, 89]
				*/
public class Make_the_length_of_an_array_2 {

	public static void main(String[] args) {
		int[] arr = { 58, 172, 746, 89 };
		System.out.println(solution(arr));
	}

	public static List<Integer> solution(int[] arr) {
		List<Integer> answer = new ArrayList<>();

		int n = 0;
		for (int i = 0; i < arr.length; i++) {
			if (arr.length > Math.pow(2, n)) {
				n++;
			} else if (arr.length == Math.pow(2, n)) {
				break;
			}
		}

		int len = (int) Math.pow(2, n);

		for (int i = 0; i < arr.length; i++) {
			answer.add(arr[i]);
		}
		if (len > arr.length) {
			for (int i = arr.length; i < len; i++) {
				answer.add(0);
			}
		}

		return answer;
	}

}

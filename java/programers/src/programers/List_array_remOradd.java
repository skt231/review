package programers;

/*아무 원소도 들어있지 않은 빈 배열 X가 있습니다. 길이가 같은 정수 배열 arr과 boolean 배열 flag가 매개변수로 주어질 때, 
 * flag를 차례대로 순회하며 flag[i]가 true라면 X의 뒤에 arr[i]를 arr[i] × 2 번 추가하고, flag[i]가 
 * false라면 X에서 마지막 arr[i]개의 원소를 제거한 뒤 X를 return 하는 solution 함수를 작성해 주세요.
		arr				flag								result
		[3, 2, 4, 1, 3]	[true, false, true, false, false]	[3, 3, 3, 3, 4, 4, 4, 4]*/
import java.util.ArrayList;
import java.util.List;

public class List_array_remOradd {
	int k = 0;

	public static void main(String[] args) {
		int[] arr = { 3, 2, 4, 1, 3 };
		boolean[] flag = { true, false, true, false, false };// [3, 3, 3, 3, 4, 4, 4, 4]
		System.out.println(solution(arr, flag));
	}

	public static List<Integer> solution(int[] arr, boolean[] flag) {
		List<Integer> answer = new ArrayList<>();
		for (int i = 0; i < flag.length; i++) {
			if (flag[i]) {
				for (int j = 0; j < arr[i] * 2; j++) {
					answer.add(arr[i]);
				}
			}

			else {
				int leth = answer.size();
				for (int j = leth - 1; j >= leth - arr[i]; j--) {
					answer.remove(j);
				}

			}
		}

		return answer;
	}

}

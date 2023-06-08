package programers;

import java.util.Arrays;

/*정수 배열 arr와 2차원 정수 배열 queries이 주어집니다. queries의 원소는 각각 하나의 query를 나타내며, [s, e, k] 꼴입니다.
각 query마다 순서대로 s ≤ i ≤ e인 모든 i에 대해 k보다 크면서 가장 작은 arr[i]를 찾습니다.
각 쿼리의 순서에 맞게 답을 저장한 배열을 반환하는 solution 함수를 완성해 주세요.
단, 특정 쿼리의 답이 존재하지 않으면 -1을 저장합니다.
-----------------------------------------------------------------
arr				|	queries					      |	result
-----------------------------------------------------------------
[0, 1, 2, 4, 3]	|  [[0, 4, 2],[0, 3, 2],[0, 2, 2]] | [3, 4, -1]
*/

public class Sequence_and_Interval_Queries_2 {

	public static void main(String[] args) {
		int[] arr = { 0, 1, 2, 4, 3 };
		int[][] queries = { { 0, 4, 2 }, { 0, 3, 2 }, { 0, 2, 2 } };
		System.out.println(Arrays.toString(solution(arr, queries)));
	}

	public static int[] solution(int[] arr, int[][] queries) {
		int[] answer = new int[queries.length];
		Arrays.fill(answer, -1);
		System.out.println(Arrays.toString(answer));
		for (int i = 0; i < queries.length; i++) {
			int ts = queries[i][0];
			for (int j = queries[i][0]; j <= queries[i][1]; j++) {
				if (arr[j] > queries[i][2]) {
					if (answer[i] == -1 || arr[j] < ts) {
						ts = arr[j];
						answer[i] = ts;
					}

				}
			}

		}
		return answer;
	}

}

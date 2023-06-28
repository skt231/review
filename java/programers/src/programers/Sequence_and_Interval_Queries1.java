package programers;

import java.util.Arrays;

/*정수 배열 arr와 2차원 정수 배열 queries이 주어집니다. queries의 원소는 각각 하나의 query를 나타내며, [s, e] 꼴입니다.

각 query마다 순서대로 s ≤ i ≤ e인 모든 i에 대해 arr[i]에 1을 더합니다.

위 규칙에 따라 queries를 처리한 이후의 arr를 return 하는 solution 함수를 완성해 주세요.
		arr				queries					result
		[0, 1, 2, 3, 4]	[[0, 1],[1, 2],[2, 3]]	[1, 3, 4, 4, 4]*/
public class Sequence_and_Interval_Queries1 {

	public static void main(String[] args) {
		int[] arr = { 0, 1, 2, 3, 4 };
		int[][] queries = { { 0, 1 }, { 1, 2 }, { 2, 3 } };
		System.out.println(Arrays.toString(solution(arr, queries)));

	}

	public static int[] solution(int[] arr, int[][] queries) {
		int[] answer = {};
		for (int i = 0; i < queries.length; i++) {
			for (int j = queries[i][0]; j <= queries[i][1]; j++) {
				arr[j] += 1;
			}
		}
		return arr;
	}

}

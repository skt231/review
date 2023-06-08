package programers;

import java.util.Arrays;

public class dd {
	int k = 0;

	public static void main(String[] args) {
		int[] arr = { 0, 1, 2, 4, 3 };
		int[][] queries = { { 0, 4, 2 }, { 0, 3, 2 }, { 0, 2, 2 } }; // [3, 4, -1]
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

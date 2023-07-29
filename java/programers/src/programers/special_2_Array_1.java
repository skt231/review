package programers;

import java.util.Arrays;

/*정수 n이 매개변수로 주어질 때, 다음과 같은 n × n 크기의 이차원 배열 arr를 return 하는 solution 함수를 작성해 주세요.
		n	result
		3	[[1, 0, 0], [0, 1, 0], [0, 0, 1]]
		6	[[1, 0, 0, 0, 0, 0], [0, 1, 0, 0, 0, 0], [0, 0, 1, 0, 0, 0], [0, 0, 0, 1, 0, 0], [0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 1]]
		1	[[1]]
				*/
public class special_2_Array_1 {

	public static void main(String[] args) {
		int n = 0;
		System.out.println(Arrays.deepToString(solution(n)));

	}

	public static int[][] solution(int n) {
		int[][] answer = new int[n][n];
		for (int i = 0; i < answer.length; i++) {
			System.out.println(9);
			for (int j = 0; j < answer[i].length; j++) {
				if (j != i) {
					answer[i][j] = 0;
				} else {
					answer[i][j] = 1;
				}
			}
		}
		return answer;
	}

}

package programers;

/*n × n 크기의 이차원 배열 arr이 매개변수로 주어질 때, arr이 다음을 만족하면 1을 아니라면 0을 return 하는 solution 함수를 작성해 주세요.
0 ≤ i, j < n인 정수 i, j에 대하여 arr[i][j] = arr[j][i]
		arr																					result
		[[5, 192, 33], [192, 72, 95], [33, 95, 999]]										1
		[[19, 498, 258, 587], [63, 93, 7, 754], [258, 7, 1000, 723], [587, 754, 723, 81]]	0
	*/
public class special_array_2 {

	public static void main(String[] args) {
//		int[][] arr = { { 5, 192, 33 }, { 192, 72, 95 }, { 1133, 95, 999 } };
		int[][] arr = { { 19, 498, 258, 587 }, { 63, 93, 7, 754 }, { 258, 7, 1000, 723 }, { 587, 754, 723, 81 } };
		System.out.println(solution(arr));
	}

	public static int solution(int[][] arr) {
		int answer = 0;
		boolean end = false;
		for (int i = 0; i < arr.length; i++) {
			if (end) {
				break;
			}
			for (int j = 0; j < arr[i].length; j++) {
				if (arr[i][j] == arr[j][i]) {
					answer = 1;
				} else {
					answer = 0;
					end = true;
					break;
				}

			}
		}
		return answer;
	}

}

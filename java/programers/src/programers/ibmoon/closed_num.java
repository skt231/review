package programers.ibmoon;

public class closed_num {

	public static void main(String[] args) {
		int[] array = { 3, 10, 28 };
		int n = 20;
		System.out.println(solution(array, n));
	}

	public static int solution(int[] array, int n) {
		int answer = array[0];

		for (int i = 1; i < array.length; i++) {
			int diff_answer = Math.abs(answer - n);
			int diff = Math.abs(array[i] - n);
			if (diff_answer > diff|| (diff == diff_answer && array[i] < answer)) {
				answer = array[i];
			}
			if (diff_answer == 0) {
				answer = array[i];
			}
		}
		return answer;
	}

}

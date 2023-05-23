package programers;

import java.util.Arrays;

public class except_behind_5rd {

	public static void main(String[] args) {
		int[] num_list = { 12, 4, 15, 46, 38, 1, 14, 56, 32, 10 };
		System.out.println(solution(num_list));

	}

	public static String solution(int[] num_list) {
		int[] answer = new int[num_list.length - 5];
		Arrays.sort(num_list);
		int k = 0;
		for (int i = 5; i < num_list.length; i++) {
			answer[k] = num_list[i];
			k++;
		}
		return Arrays.toString(answer);
	}

}

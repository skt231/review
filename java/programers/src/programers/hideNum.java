package programers;

import java.util.Arrays;

public class hideNum {

	public static void main(String[] args) {
		int[] num_list = { 4, 2, 6, 1, 7, 6 };
		System.out.println(hideNumber(num_list, 4));

	}

	public static String hideNumber(int[] num_list, int n) {

		int[] answer = new int[(int) (num_list.length / n)+1];
		int k = 0;
		System.out.println(answer.length);
		for (int i = 0; i < answer.length; i++) {
			System.out.println(i);
			answer[i] = num_list[k];
			k += n;
		}
		return Arrays.toString(answer);
	}

}

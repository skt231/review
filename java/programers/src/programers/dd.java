package programers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class dd {
	int k = 0;

	public static void main(String[] args) {
		List<Integer> answer = new ArrayList<>();
		for (int i = 5; i < 100; i++) {
			String[] arr = String.valueOf(i).split("");
//			System.out.println(Arrays.toString(arr));
			for (int j = 0; j < arr.length; j++) {
				int cal = 0;
				if (Integer.parseInt(arr[j]) % 5 == 0) {
					cal++;
					if (cal == arr.length) {
						System.out.println(arr[j]);
						answer.add(i);
					}
				} else {
					answer.add(-1);
					break;
				}
			}
		}
	}
}
package programers.ibmoon;

import java.util.ArrayList;
import java.util.List;

public class composite {
	public static void main(String[] args) {
		int num = 10;
		List<Integer> numbers = new ArrayList<>();
		for (int i = 4; i <= num; i++) {
			int count = 0;
			for (int j = 1; j <= i; j++) {
				if (i % j == 0) {
					count++;
				}
			}
			if (count >= 3) {
				numbers.add(i);
			}
		}
		System.out.println(numbers.size());
	}
}

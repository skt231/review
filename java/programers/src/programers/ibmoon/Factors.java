package programers.ibmoon;

import java.util.ArrayList;
import java.util.List;

public class Factors {
	public static void main(String[] args) {
		int n = 24;
		System.out.println(solution(n));

	}

	public static List<Integer> solution(int n) {
		List<Integer> answer = new ArrayList<>();
		for (int i = 1; i <= n; i++) {
			if (n % i == 0) {
				answer.add(i);
			}
		}
		return answer;
	}
}

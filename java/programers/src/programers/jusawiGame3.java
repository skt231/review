package programers;

import java.util.Arrays;
import java.lang.Math;

/*1부터 6까지 숫자가 적힌 주사위가 네 개 있습니다. 네 주사위를 굴렸을 때 나온 숫자에 따라 다음과 같은 점수를 얻습니다.
네 주사위에서 나온 숫자가 모두 p로 같다면 1111 × p점을 얻습니다.
세 주사위에서 나온 숫자가 p로 같고 나머지 다른 주사위에서 나온 숫자가 q(p ≠ q)라면 (10 × p + q)2 점을 얻습니다.
주사위가 두 개씩 같은 값이 나오고, 나온 숫자를 각각 p, q(p ≠ q)라고 한다면 (p + q) × |p - q|점을 얻습니다.
어느 두 주사위에서 나온 숫자가 p로 같고 나머지 두 주사위에서 나온 숫자가 각각 p와 다른 q, r(q ≠ r)이라면 q × r점을 얻습니다.
네 주사위에 적힌 숫자가 모두 다르다면 나온 숫자 중 가장 작은 숫자 만큼의 점수를 얻습니다.
네 주사위를 굴렸을 때 나온 숫자가 정수 매개변수 a, b, c, d로 주어질 때, 얻는 점수를 return 하는 solution 함수를 작성해 주세요.
s
		a	b	c	d	result
		2	2	2	2	2222
		4	1	4	4	1681
		6	3	3	6	27
		2	5	2	6	30
		6	4	2	5	2*/
public class jusawiGame3 {

	public static void main(String[] args) {
		System.out.println(solution(4, 1, 4, 4));

	}

	public static int solution(int a, int b, int c, int d) {
		int[] dice = { a, b, c, d };
		Arrays.sort(dice); // 주사위 숫자를 정렬하여 점수 계산에 사용
		int answer = 0;
		// 네 주사위에서 나온 숫자가 모두 p로 같다면 1111 × p점을 얻습니다.
		if (a == b && b == c && c == d && d == a) {
			answer = 1111 * a;
		}

		// 세 주사위에서 나온 숫자가 p로 같고 나머지 다른 주사위에서 나온 숫자가 q(p ≠ q)라면 (10 × p + q)2 점을 얻습니다.
		if (a == b && b == c && c == d && d != a) {
			answer = (10 * a + d) * 2;
		} else if (a == b && b != c && c == d) {
			answer = (10 * a + c) * 2;
		} else if (a != b && b == c && c == d) {
			answer = (10 * a + b) * 2;
		} else if (a != b && b == c && c != d) {
			answer = (10 * b + a) * 2;
		}

		// 주사위가 두 개씩 같은 값이 나오고, 나온 숫자를 각각 p, q(p ≠ q)라고 한다면 (p + q) × |p - q|점을 얻습니다.
		if (a == b && c == d && b != c) {
			answer = (a + c) * Math.abs(a - c);
		} else if (a == c && b == d && c != d) {
			answer = (a + b) * Math.abs(a - b);
		} else if (a == d && b == c && d != b) {
			answer = (a + b) * Math.abs(a - b);
		}

		// 어느 두 주사위에서 나온 숫자가 p로 같고 나머지 두 주사위에서 나온 숫자가 각각 p와 다른 q, r(q ≠ r)이라면 q × r점을
		// 얻습니다.
		if (a == b && c != d) {
			answer = c * d;
		} else if (a == c && b != d) {
			answer = b * d;
		} else if (a == d && b != c) {
			answer = b * c;
		} else if (b == c && a != d) {
			answer = a * d;
		} else if (b == d && a != c) {
			answer = a * c;
		} else if (c == d && a != b) {
			answer = a * b;
		}

		// 네 주사위에 적힌 숫자가 모두 다르다면 나온 숫자 중 가장 작은 숫자 만큼의 점수를 얻습니다.

		int shortest = dice[0];
		for (int i = 0; i < dice.length;) {
			if (dice[i] < shortest) {
				shortest = dice[i];
			}
			answer = shortest;
		}
		return answer;

	}
}

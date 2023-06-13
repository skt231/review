package programers;

/*1부터 6까지 숫자가 적힌 주사위가 네 개 있습니다. 네 주사위를 굴렸을 때 나온 숫자에 따라 다음과 같은 점수를 얻습니다.
네 주사위에서 나온 숫자가 모두 p로 같다면 1111 × p점을 얻습니다.
세 주사위에서 나온 숫자가 p로 같고 나머지 다른 주사위에서 나온 숫자가 q(p ≠ q)라면 (10 × p + q)2 점을 얻습니다.
주사위가 두 개씩 같은 값이 나오고, 나온 숫자를 각각 p, q(p ≠ q)라고 한다면 (p + q) × |p - q|점을 얻습니다.
어느 두 주사위에서 나온 숫자가 p로 같고 나머지 두 주사위에서 나온 숫자가 각각 p와 다른 q, r(q ≠ r)이라면 q × r점을 얻습니다.
네 주사위에 적힌 숫자가 모두 다르다면 나온 숫자 중 가장 작은 숫자 만큼의 점수를 얻습니다.
네 주사위를 굴렸을 때 나온 숫자가 정수 매개변수 a, b, c, d로 주어질 때, 얻는 점수를 return 하는 solution 함수를 작성해 주세요.
a	b	c	d	result
2	2	2	2	2222
4	1	4	4	1681
6	3	3	6	27
2	5	2	6	30
6	4	2	5	2*/
public class jusawiGame_3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	public static int solution(int a, int b, int c, int d) {
		int answer = 0;
		if (a == b) {
			if (a == c) {
				if (d == a)
					answer = 1111 * a;
				else
					answer = (10 * a + d) * (10 * a + d);
			} else {
				if (d == a)
					answer = (10 * a + c) * (10 * a + c);
				else if (d == c)
					answer = (a + c) * Math.abs(a - c);
				else
					answer = c * d;
			}
		} else {
			if (a == c) {
				if (d == a)
					answer = (10 * a + b) * (10 * a + b);
				else if (d == b)
					answer = (a + b) * Math.abs(a - b);
				else
					answer = b * d;
			} else if (b == c) {
				if (d == a)
					answer = (a + b) * Math.abs(a - b);
				else if (d == b)
					answer = (10 * b + a) * (10 * b + a);
				else
					answer = a * d;
			} else {
				if (d == a)
					answer = b * c;
				else if (d == b)
					answer = a * c;
				else if (d == c)
					answer = a * b;
				else {
					int x = Math.min(a, b), y = Math.min(c, d);
					answer = Math.min(x, y);
				}
			}
		}
		return answer;
	}
}

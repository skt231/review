package programers;

public class dd {
	int k = 0;

	public static void main(String[] args) {
		int a = 2;
		int b = 3;
		int c = 1;
		
		int answer = 0;
		if (a != b && b != c && a != c) {
			answer = a + b + c;
		} else if ((a != b && b != c && a == c) || (a != b && b == c && a != c) || (a == b && b != c && a != c)) {
			answer = (int) ((a + b + c) * (Math.pow(a, 2) + Math.pow(b, 2) + Math.pow(c, 2)));
		} else if (a == b && b == c && a == c) {
			answer = (int) ((a + b + c) * (Math.pow(a, 2) + Math.pow(b, 2) + Math.pow(c, 2))
					* (Math.pow(a, 3) + Math.pow(b, 3) + Math.pow(c, 3)));
		}
		System.out.println(answer);
	}
}

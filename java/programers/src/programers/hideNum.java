package programers;

public class hideNum {

	public static void main(String[] args) {
		System.out.println(hideNumber("aAb1B2cC34oOp"));

	}

	public static int hideNumber(String my_string) {
		int answer = 0;
		for (int i = 0; i < my_string.length(); i++) {
			System.out.println(i);
			for (int j = 0; j <= 9; j++) {
				if (String.valueOf(my_string.charAt(i)) == Integer.toString(j)) {
					System.out.println(j);
					answer += Integer.valueOf(my_string.charAt(i));
				}
			}
		}
		return answer;

	}
}

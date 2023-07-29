package programers;

public class dd {

	public static void main(String[] args) {
		String picture = ".xx...xx.";
		System.out.println(solution(picture));
	}

	public static String solution(String picture) {
		String answer = "";
		for (int i = 0; i < picture.length() - 1; i++) {
			for (int j = 0; j < 2; j++) {
				answer += picture.charAt(i);
			}

		}
		return answer;
	}

}

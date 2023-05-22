package programers;

import java.util.Arrays;

public class ULchange {

	public static void main(String[] args) {
		String[] strArr = { "AAA", "BBB", "CCC", "DDD" };
		System.out.println(area(strArr));
	}

	public static String area(String[] strArr) {
		String[] answer = new String[strArr.length];
		for (int i = 0; i < strArr.length; i++) {
			String str = strArr[i];
			char[] chars = str.toCharArray();
			for (int j = 0; j < chars.length; j++) {
				char c = chars[j];
				if (i % 2 == 1) {
					if (Character.isLowerCase(c)) {
						chars[j] = Character.toUpperCase(c);
					}
				} else {
					if (Character.isUpperCase(c)) {
						chars[j] = Character.toLowerCase(c);
					}
				}
			}
			answer[i] = new String(chars);
		}
		return Arrays.toString(answer);
	}
}

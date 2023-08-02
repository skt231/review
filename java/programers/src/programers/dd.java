package programers;

import java.util.HashMap;
import java.util.Map;

public class dd {

	public static void main(String[] args) {

		Map<Integer, Character> alphaMap = new HashMap<>();
		String age = "23";
		String result = "";


		for (int i = 0; i <= 25; i++) {
			char ch = (char) (i + 97);
			alphaMap.put(i, ch);
		}

	
		for (int i = 0; i < age.length(); i++) {
			int digit = Integer.parseInt(String.valueOf(age.charAt(i)));
			char ch = alphaMap.get(digit);
			result += ch;
		}

		System.out.println(result); 
	}

}

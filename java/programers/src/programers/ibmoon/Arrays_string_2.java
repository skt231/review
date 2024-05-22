package programers.ibmoon;

import java.util.Arrays;

public class Arrays_string_2 {

	  public static String solution(String myString) {
	        StringBuilder result = new StringBuilder();

	        for (char c : myString.toCharArray()) {
	            result.append(Character.isUpperCase(c) ? Character.toLowerCase(c) : c);
	        }

	        char[] charArray = result.toString().toCharArray();
	        Arrays.sort(charArray);

	        return new String(charArray);
	    }

	    public static void main(String[] args) {
	        String originalString = "BacdFe";
	        String sortedString = solution(originalString);

	        System.out.println("Original String: " + originalString);
	        System.out.println("Sorted String  : " + sortedString);
	    }
}

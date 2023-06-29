package programers;
/*문자열 myString과 pat가 주어집니다. myString의 부분 문자열중 pat로 끝나는 가장 긴 부분 문자열을 찾아서 return 하는 solution 함수를 완성해 주세요.
		myString	pat		result
		"AbCdEFG"	"dE"	"AbCdE"
		"AAAAaaaa"	"a"		"AAAAaaaa"*/

public class Find_the_longest_partial_string_ending_in_a_specific_string {

	public static void main(String[] args) {
		String myString = "ABCDdEFdE";
		String pat = "dE";
		System.out.println(solution(myString, pat));

	}

	public static String solution(String myString, String pat) {
		String answer = "";
		  if (myString.contains(pat)) {
		        for (int i = 0; i < myString.length(); i++) {
		            if (String.valueOf(myString.charAt(i)).equals(String.valueOf(pat.charAt(pat.length() - 1)))) {
		                String substr = myString.substring(0, i + 1);
		                if (substr.endsWith(pat) && substr.length() > answer.length()) {
		                    answer = substr;
		                }
		            }
		        }
		    }
		    return answer;
		}

}

package programers;

//문자열 myString과 pat이 주어집니다. myString에서 pat이 등장하는 횟수를 return 하는 solution 함수를 완성해 주세요.
/*myString	pat			result
"banana"	"ana"		2
"aaaa"		"aa"		3*/
public class count_String {

	public static void main(String[] args) {
		String myString = "banana";
		String pat = "ana";
		System.out.println(solution(myString, pat));

	}

	public static int solution(String myString, String pat) {
		 int cnt = 0;
		    for (int i = 0; i <= myString.length() - pat.length(); i++) {
		        String substr = myString.substring(i, i + pat.length());
		        if (substr.equals(pat)) {
		            cnt++;
		        }
		    }
		    return cnt;
		}

}

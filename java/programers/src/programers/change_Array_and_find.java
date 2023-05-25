package programers;

//문자 "A"와 "B"로 이루어진 문자열 myString과 pat가 주어집니다. myString의 "A"를 "B"로, "B"를 "A"로 바꾼 문자열의 연속하는 부분 문자열 중 pat이 있으면 1을 아니면 
//0을 return 하는 solution 함수를 완성하세요.
//myString | pat   | result
//---------------------
//"ABBAA" |	"AABB" | 1
//"ABAB"  |	"ABAB" | 0
//-----------------------
public class change_Array_and_find {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String myString = "ABBAA";
		String pat = "AABB";
		System.out.println(solution(myString, pat));
	}

	public static int solution(String myString, String pat) {
		int answer = 0;
		String rpString = "";
		// change 'A'->'B','B'->'A'
		for (int i = 0; i < myString.length(); i++) {
			if (myString.charAt(i) == 'A') {
				rpString += String.valueOf(myString.charAt(i)).replace(myString.charAt(i), 'B');
			} else if (myString.charAt(i) == 'B') {
				rpString += String.valueOf(myString.charAt(i)).replace(myString.charAt(i), 'A');
			}
		}
		System.out.println(rpString);
		// if it contains pat...
		if (rpString.contains(pat)) {
			answer = 1;
		} else {
			answer = 0;
		}
		return answer;
	}

}

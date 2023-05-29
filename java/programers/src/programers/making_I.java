package programers;

public class making_I {
//	알파벳 소문자로 이루어진 문자열 myString이 주어집니다. 알파벳 순서에서 "l"보다 앞서는 모든 문자를 "l"로 바꾼 문자열을 return 하는 solution 함수를 완성해 주세요.
//	"abcdevwxyz"	"lllllvwxyz"
//	"jjnnllkkmm"	"llnnllllmm"
	public static void main(String[] args) {
		System.out.println(solution("abcdevwxyz"));
	}
	 public static String solution(String myString) {
	        String answer = "";
	        for(int i=0;i<myString.length();i++){
	            if(String.valueOf(myString.charAt(i)).matches("[a-k]+")) {
	            	answer += String.valueOf(myString.charAt(i)).replace(String.valueOf(myString.charAt(i)),"l");
	            }else {
	            	answer += myString.charAt(i);
	            }
	            
	        }
	        return answer;
	    }

}

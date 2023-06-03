package programers;
//문자열 my_string과 두 정수 m, c가 주어집니다. my_string을 한 줄에 m 글자씩 가로로 적었을 때 
//왼쪽부터 세로로 c번째 열에 적힌 글자들을 문자열로 return 하는 solution 함수를 작성해 주세요.
//my_string					m	c	result
//"ihrhbakrfpndopljhygc"	4	2	"happy"
//"programmers"				1	1	"programmers"
public class reading_saero {

	public static void main(String[] args) {
	
		System.out.println(solution("ihrhbakrfpndopljhygc",4,2));
		

	} public static String solution(String my_string, int m, int c) {
        String answer = "";
        for(int j=0;j<my_string.length();j += m){
                answer += String.valueOf(my_string.charAt(j+c-1));
        }
        return answer;
    }

}

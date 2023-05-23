package programers;
//문자열 my_string과 정수 n이 매개변수로 주어질 때, my_string의 뒤의 n글자로 이루어진 문자열을 return 하는 solution 함수를 작성해 주세요.
public class array_behind_n {

	public static void main(String[] args) {
		System.out.println(solution("ProgrammerS123", 11));

	}
    public static String solution(String my_string, int n) {
        String answer = "";
        for(int i=my_string.length()-n;i<my_string.length();i++){
        	System.out.println(i);
        	System.out.println(my_string.charAt(i));
            answer += String.valueOf(my_string.charAt(i));
        }
        return answer;
    }

}

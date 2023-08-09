package programers.ibmoon;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/*머쓱이는 친구에게 모스부호를 이용한 편지를 받았습니다. 그냥은 읽을 수 없어 이를 해독하는 프로그램을 만들려고 합니다. 문자열 letter가 매개변수로 주어질 때,
letter를 영어 소문자로 바꾼 문자열을 return 하도록 solution 함수를 완성해보세요.
모스부호는 다음과 같습니다.

morse = { 
    '.-':'a','-...':'b','-.-.':'c','-..':'d','.':'e','..-.':'f',
    '--.':'g','....':'h','..':'i','.---':'j','-.-':'k','.-..':'l',
    '--':'m','-.':'n','---':'o','.--.':'p','--.-':'q','.-.':'r',
    '...':'s','-':'t','..-':'u','...-':'v','.--':'w','-..-':'x',
    '-.--':'y','--..':'z'
}

letter						result
".... . .-.. .-.. ---"		"hello"
".--. -.-- - .... --- -."	"python"
*/
public class mosssession {

	public static void main(String[] args) {
		String letter = ".... . .-.. .-.. ---";
		System.out.println(solution(letter));

	}

	public static String solution(String letter) {
		String answer = "";
		Map<String, String> morseMap = new HashMap<>();
		String[][] morse = { { ".-", "a" }, { "-...", "b" }, { "-.-.", "c" }, { "-..", "d" }, { ".", "e" },
				{ "..-.", "f" }, { "--.", "g" }, { "....", "h" }, { "..", "i" }, { ".---", "j" }, { "-.-", "k" },
				{ ".-..", "l" }, { "--", "m" }, { "-.", "n" }, { "---", "o" }, { ".--.", "p" }, { "--.-", "q" },
				{ ".-.", "r" }, { "...", "s" }, { "-", "t" }, { "..-", "u" }, { "...-", "v" }, { ".--", "w" },
				{ "-..-", "x" }, { "-.--", "y" }, { "--..", "z" } };
		for (int i = 0; i < morse.length; i++) {
			morseMap.put(morse[i][0], morse[i][1]);
		}
		String[] morseStr = letter.split(" ");
		System.out.println(Arrays.toString(morseStr));
		for (int i = 0; i < morseStr.length; i++) {
			answer += morseMap.get(morseStr[i]);
		}

		return answer;
	}

}

package programers;

/*a							b					result
"582"						"734"				"1316"
"18446744073709551615"	"287346502836570928366"	"305793246910280479981"
"0"						"0"						"0"
*/
import java.math.BigInteger;

public class sum_two {

	public static void main(String[] args) {
		System.out.println(solution("582", "734"));

	}

	public static String solution(String a, String b) {
		String answer = "";
		BigInteger a_bigInt = new BigInteger(a);
		BigInteger b_bigInt = new BigInteger(b);
		BigInteger result = a_bigInt.add(b_bigInt);
		answer = String.valueOf(result.toString());
		return answer;
	}

}

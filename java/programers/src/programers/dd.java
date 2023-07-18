package programers;

public class dd {

	public static void main(String[] args) {
	    System.out.println(solution("43 + 12"));
	}

	public static int solution(String binomial) {
		binomial=binomial.replace(" ", "");
	    String[] parts = binomial.split("[\\+\\-\\*]"); // 연산자를 기준으로 수식 분리

	    int operand1 = Integer.parseInt(parts[0]);
	    String operator = binomial.replaceAll("[\\d\\s]", ""); // 숫자와 공백 제거
	    int operand2 = Integer.parseInt(parts[1]);

	    int result = 0;

	    switch (operator) {
	        case "+":
	            result = operand1 + operand2;
	            break;
	        case "-":
	            result = operand1 - operand2;
	            break;
	        case "*":
	            result = operand1 * operand2;
	            break;
	    }

	    return result;
	}

}

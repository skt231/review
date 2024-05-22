package programers.ibmoon;

public class test {
	public static void main(String[] args) {
		String sick = "3-4=-3";
		 int result = evaluateExpression(sick);
		 System.out.println("결과: " + result);
	}
	 private static int evaluateExpression(String expression) {
	        String[] tokens = expression.split("=");
	        String leftOperand = tokens[0];
	        String rightOperand = tokens[1];

	        int leftResult = evaluateOperand(leftOperand);
	        int rightResult = evaluateOperand(rightOperand);

	        return leftResult - rightResult;
	    }
	  private static int evaluateOperand(String operand) {
	        String[] tokens = operand.split("-");
	        int result = Integer.parseInt(tokens[0]);

	        for (int i = 1; i < tokens.length; i++) {
	            result -= Integer.parseInt(tokens[i]);
	        }

	        return result;
	    }
}

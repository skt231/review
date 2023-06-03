package programers;

//boolean 변수 x1, x2, x3, x4가 매개변수로 주어질 때, 다음의 식의 true/false를 return 하는 solution 함수를 작성해 주세요.
//(x1 ∨ x2) ∧ (x3 ∨ x4)
//?------------------------------------------?
//x1		x2		x3		x4		result
//---------------------------------------
//false	true	true	true	true
//true	false	false	false	false
//-----------------------------------------------
//	x	 |	y	|	x ∨ y  |  x ∧ y
//----------------------------------
//	T	 |	T	|	 T	   |	T
//	T	 |	F	|	 T	   |	F
//	F	 |	T	|	 T	   |	F
//	F	 |	F	|	 F	   |	F
//-----------------------------
public class calcul_boolean {

	public static void main(String[] args) {
		System.out.println(solution(true, true, true, true));

	}

	public static boolean solution(boolean x1, boolean x2, boolean x3, boolean x4) {
		 boolean result1 = false;
	        boolean result2 = false;
	        boolean answer = false;
	        if(x1 || x2){
	            result1 = true;
	        }
	        if(x3 || x4){
	            result2 = true;
	        }
	        if(result1 && result2){
	            answer = true;
	        }
	        return answer;
	}

}

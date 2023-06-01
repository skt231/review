package programers;

//두 정수 a, d와 길이가 n인 boolean 배열 included가 주어집니다. 첫째항이 a, 공차가 d인 등차수열에서 included[i]가 i + 1항을 의미할 때,
//이 등차수열의 1항부터 n항까지 included가 true인 항들만 더한 값을 return 하는 solution 함수를 작성해 주세요.
//a b    included							result
//3	4	[true, false, false, true, true]	37
//7	1	[false, false, false, true, false, false, false]	10
public class Adding_Specific_Terms_of_an_Arithmetic_Sequence {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		boolean[] included = { true, false, false, true, true };
		System.out.println(solution(3, 4, included));
	}

	public static int solution(int a, int d, boolean[] included) {
		int[] arr = new int[included.length];
		int answer = 0;
		arr[0] = a;
		int temp = a;
		for (int i = 1; i < included.length; i++) {
			temp += d;
			arr[i] = temp;
		}
		for (int i = 0; i < included.length; i++) {
			if (included[i]) {
				answer += arr[i];
			}
		}
		return answer;
	}

}

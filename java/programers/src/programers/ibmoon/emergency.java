package programers.ibmoon;

import java.util.Arrays;

/*외과의사 머쓱이는 응급실에 온 환자의 응급도를 기준으로 진료 순서를 정하려고 합니다. 정수 배열 emergency가 매개변수로 주어질 때 응급도가 
높은 순서대로 진료 순서를 정한 배열을 return하도록 solution 함수를 완성해주세요.
emergency					result
[3, 76, 24]				[3, 1, 2]
[1, 2, 3, 4, 5, 6, 7]	[7, 6, 5, 4, 3, 2, 1]
[30, 10, 23, 6, 100]	[2, 4, 3, 5, 1]
*/
public class emergency {

	public static void main(String[] args) {
		int[] emergency = { 1, 2, 3, 4, 5, 6, 7};
		System.out.println(Arrays.toString(solution(emergency)));

	}

	public static int[] solution(int[] emergency) {
		int[] answer = new int[emergency.length];
		int[] copy_em = Arrays.copyOf(emergency, emergency.length);
		Arrays.sort(copy_em);
		
		for (int i = 0; i < copy_em.length; i++) {
			for (int j = 0; j < emergency.length; j++) {
				if (copy_em[i] == emergency[j]) {
					answer[j] = copy_em.length - i;
				}
			}
		}
//		System.out.println(Arrays.toString(emergency));

		return answer;
	}

}

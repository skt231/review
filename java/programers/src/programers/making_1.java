package programers;

//위와 같이 4번의 나누기 연산으로 1이 되었습니다.
//정수들이 담긴 리스트 num_list가 주어질 때, num_list의 모든 원소를 1로 만들기 위해서 필요한 나누기 연산의 횟수를 return하도록 solution 함수를 완성해주세요.
//num_list				result
//[12, 4, 15, 1, 14]	11
public class making_1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] num_list = { 12, 4, 15, 1, 14 };
		System.out.println(solution(num_list));
	}

	public static int solution(int[] num_list) {
//		int answer = 0;
//
//		for (int i = 0; i < num_list.length; i++) {
//			System.out.println(num_list[i]);
//			if (num_list[i] % 2 == 0) {
//				for (int j = 0; j < num_list[i] / 2; j++) {
//					if (num_list[i] % 2 != 0) {
//						num_list[i] -= 1;
//						answer++;
//						System.out.println(num_list[i]);
//					}
//					num_list[i] /= 2;
//					answer++;
//					System.out.println(num_list[i]);
//				}
//
//			} else if (num_list[i] % 2 == 1) {
//				num_list[i] -= 1;
//				answer++;
//				for (int j = 0; j < num_list[i] / 2; j++) {
//					if (num_list[i] % 2 != 0) {
//						num_list[i] -= 1;
//						answer++;
//						System.out.println(num_list[i]);
//					}
//					num_list[i] /= 2;
//					answer++;
//					System.out.println(num_list[i]);
//				}
//			} else if (num_list[i] == 1) {
//				break;
//			}
//		}
//		return answer;
		  int answer = 0;

	        for(int i=0; i<num_list.length; i++){ 
	            int n = num_list[i];

	            for(;n > 1;){
	                n /= 2;
	                answer++;
	            }
	        }

	        return answer;
	}

}

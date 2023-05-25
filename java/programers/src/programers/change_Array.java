package programers;
///정수 리스트 num_list와 정수 n이 주어질 때, num_list를 n 번째 원소 이후의 원소들과 n 번째까지의 원소들로 나눠 

import java.util.Arrays;

//n 번째 원소 이후의 원소들을 n 번째까지의 원소들 앞에 붙인 리스트를 return하도록 solution 함수를 완성해주세요.

//[2, 1, 6]	1	--> [1, 6, 2]
//[5, 2, 1, 7, 5]	3	--> [7, 5, 5, 2, 1]
public class change_Array {

	public static void main(String[] args) {
		int[] num_list = { 2, 1, 6 };
		int n = 1;
		System.out.println(Arrays.toString(solution(num_list, n)));

	}

	public static int[] solution(int[] num_list, int n) {
		int[] answer = new int[num_list.length];
		int j = 0;
		for (int i = n; i < num_list.length; i++) {
			answer[j] = num_list[i];
			j++;
		}
		for (int i = 0; i < n; i++) {
			answer[j] += num_list[i];
			j++;
		}
		return answer;
	}

}

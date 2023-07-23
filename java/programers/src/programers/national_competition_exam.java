package programers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/*0번부터 n - 1번까지 n명의 학생 중 3명을 선발하는 전국 대회 선발 고사를 보았습니다. 등수가 높은 3명을 선발해야 하지만, 
개인 사정으로 전국 대회에 참여하지 못하는 학생들이 있어 참여가 가능한 학생 중 등수가 높은 3명을 선발하기로 했습니다.
각 학생들의 선발 고사 등수를 담은 정수 배열 rank와 전국 대회 참여 가능 여부가 담긴 boolean 배열 attendance가 매개변수로 주어집니다.
전국 대회에 선발된 학생 번호들을 등수가 높은 순서대로 각각 a, b, c번이라고 할 때 10000 × a + 100 × b + c를 return 하는 solution 함수를 작성해 주세요.
		rank					attendance										result
		----------------------------------------------------------------------------------
		[3, 7, 2, 5, 4, 6, 1]	[false, true, true, true, true, false, false]	20403
		[1, 2, 3]				[true, true, true]								102
		[6, 1, 5, 2, 3, 4]		[true, false, true, false, false, true]			50200*/
public class national_competition_exam {
	public static void main(String[] args) {
		int[] rank = { 3, 7, 2, 5, 4, 6, 1 };
		boolean[] attdance = { false, true, true, true, true, false, false };

		System.out.println(solution(rank, attdance));

	}

	public static int solution(int[] rank, boolean[] attendance) {
		List<Integer> arr_rank = new ArrayList<>();
		Map<Integer, Boolean> mapRank = new HashMap<>();

		for (int i = 0; i < rank.length; i++) {
			mapRank.put(rank[i], attendance[i]);
		}

		for (Map.Entry<Integer, Boolean> entry : mapRank.entrySet()) {
			int key = entry.getKey();
			Boolean value = entry.getValue();
			if (value) {
				arr_rank.add(key);
				if (arr_rank.size() == 3) {
					break;
				}
			}
		}
		int first = 0;

		int second = 0;

		int third = 0;

		for (int i = 0; i < rank.length; i++) {
			if (rank[i] == arr_rank.get(0)) {
				first = i;
			} else if (rank[i] == arr_rank.get(1)) {
				second = i;
			} else if (rank[i] == arr_rank.get(2)) {
				third = i;
			}
		}
		int answer = 10000 * first + 100 * second + third;

		return answer;
	}

}

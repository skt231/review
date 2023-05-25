package programers;

import java.util.Arrays;

//오늘 해야 할 일이 담긴 문자열 배열 todo_list와 각각의 일을 지금 마쳤는지를 나타내는 boolean 배열 finished가 매개변수로 주어질 때, 
//todo_list에서 아직 마치지 못한 일들을 순서대로 담은 문자열 배열을 return 하는 solution 함수를 작성해 주세요.
//			todo_list													finished						result
//["problemsolving", "practiceguitar", "swim", "studygraph"]	[true, false, true, false]	["practiceguitar", "studygraph"]
public class things_to_do {

	public static void main(String[] args) {
		String[] todo_list = { "problemsolving", "practiceguitar", "swim", "studygraph" };
		boolean[] finished = { true, false, true, false };
		System.out.println(Arrays.toString(solution(todo_list,finished)));
	}

	public static String[] solution(String[] todo_list, boolean[] finished) {
		int k = 0;
		for (int i = 0; i < finished.length; i++) {
			if (!finished[i]) {// boolean은 그냥 이런식으로 아무것도 안적어도 됨 참이면 k++ 작동(!붙이면 거짓이면...)
				k++;
			}
		}
		String[] answer = new String[k];
		// todo_list와 finished 비교
		int idx = 0;
		for (int i = 0; i < todo_list.length; i++) {
			if (!finished[i]) {
				answer[idx] = todo_list[i];
				idx++;
			}
		}
		return answer;
	}

}

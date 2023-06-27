package programers;

import java.util.ArrayList;
import java.util.List;

/*문자열 리스트 str_list에는 "u", "d", "l", "r" 네 개의 문자열이 여러 개 저장되어 있습니다. 
str_list에서 "l"과 "r" 중 먼저 나오는 문자열이 "l"이라면 해당 문자열을 기준으로 왼쪽에 있는 문자열들을 순서대로 담은 리스트를,
먼저 나오는 문자열이 "r"이라면 해당 문자열을 기준으로 오른쪽에 있는 문자열들을 순서대로 담은 리스트를 return하도록 solution 함수를 완성해주세요. 
"l"이나 "r"이 없다면 빈 리스트를 return합니다.
str_list				result
---------------------------------
["u", "u", "l", "r"]	["u", "u"]
["l"]					[]*/
public class Left_Right {

	public static void main(String[] args) {
//		String[] str_list = { "u", "u", "l", "r" };
		String[] str_list = { "l"};
		System.out.println(solution(str_list));

	}

	public static List<String> solution(String[] str_list) {
		List<String> answer = new ArrayList<>();
		boolean lFirst = false;
		int leftIndex = 0;
		boolean rFirst = false;
		int RightIndex = 0;
		for (int i = 0; i < str_list.length; i++) {
			if (str_list[i].equals("l")) {
				lFirst = true;
				leftIndex = i;
				break;
			} else if (str_list[i].equals("r")) {
				rFirst = true;
				RightIndex = i;
				break;
			}
		}

		if (lFirst) {
			for (int j = 0; j < leftIndex; j++) {
				answer.add(str_list[j]);
			}
		} else if (rFirst) {
			for (int j = RightIndex + 1; j < str_list.length; j++) {
				answer.add(str_list[j]);
			}
		}

		return answer;
	}

}

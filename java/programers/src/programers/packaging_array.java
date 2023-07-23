package programers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/*문자열 배열 strArr이 주어집니다. strArr의 원소들을 길이가 같은 문자열들끼리 그룹으로 묶었을 때 가장 개수가 많은 그룹의 크기를 return 하는 solution 함수를 완성해 주세요.
		strArr						result
		["a","bc","d","efg","hi"]	2
		*/
public class packaging_array {

	public void main(String[] args) {
		String[] strArr = { "a", "bc", "d", "efg", "hi" };
		System.out.println(solution(strArr));

	}

	public static int solution(String[] strArr) {
		Map<Integer, List<String>> groupMap = new HashMap<>();

		for (String str : strArr) {
			int len = str.length();
			if (!groupMap.containsKey(len)) {
				groupMap.put(len, new ArrayList<>());
			}
			groupMap.get(len).add(str);
		}
		int maxGroupSize = 0;
		for (List<String> group : groupMap.values()) {
			int groupSize = group.size();
			if (groupSize > maxGroupSize) {
				maxGroupSize = groupSize;
			}
		}
		return maxGroupSize;
	}
}

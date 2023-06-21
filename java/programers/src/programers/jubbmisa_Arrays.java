package programers;

import java.util.Arrays;

/*
어떤 문자열에 대해서 접미사는 특정 인덱스부터 시작하는 문자열을 의미합니다. 예를 들어, "banana"의 모든 접미사는 "banana", "anana", "nana", "ana", "na", "a"입니다.
문자열 my_string이 매개변수로 주어질 때, my_string의 모든 접미사를 사전순으로 정렬한 문자열 배열을 return 하는 solution 함수를 작성해 주세요.
		my_string	result
		"banana"	["a", "ana", "anana", "banana", "na", "nana"]
		"programmers"	["ammers", "ers", "grammers", "mers", "mmers", "ogrammers", "programmers", "rammers", "rogrammers", "rs", "s"]
*/
public class jubbmisa_Arrays {

	public static void main(String[] args) {
		System.out.println(Arrays.toString(solution("banana")));

	}

	public static String[] solution(String my_string) {
		int length = my_string.length();
		String[] suffixes = new String[length];

		// 모든 접미사 생성
		for (int i = 0; i < length; i++) {
			suffixes[i] = my_string.substring(i);
			System.out.println(suffixes[i]);
		}

		// 접미사 배열을 사전순으로 정렬
		Arrays.sort(suffixes);

		return suffixes;
	}
}

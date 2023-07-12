package programers;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class cut_array_and_Array {
	/*
	 * "axbxcxdx" ["a","b","c","d"] "dxccxbbbxaaaa" ["aaaa","bbb","cc","d"]
	 */
	public static void main(String[] args) {
		System.out.println(solution("dxccxbbbxxaaaa"));
	}

	public static List<String> solution(String myString) {
		List<String> answer = new ArrayList<>();
		int start = 0;
		for(int i=0;i<myString.length();i++) {
			if (myString.charAt(i) != 'x') {
				   start=i;
				   break;
				}
		}
		
		
			for (int i = start; i < myString.length(); i++) {
				String str = "";
				if (myString.charAt(i) == 'x') {
					for (int j = start; j < i; j++) {
						str += myString.charAt(j);
					}
					if(str != null) {
					answer.add(str);
					}
					for(int k=0;i<myString.length();i++) {
						if (myString.charAt(i) != 'x') {
							   start=i;
							   break;
							}
					}
				}
			}
		
		if (myString.charAt(myString.length() - 1) != 'x') {
			String last_str = "";
			for (int i = start; i < myString.length(); i++) {

				last_str += myString.charAt(i);
			}
			if(last_str != null) {
			answer.add(last_str);
			}
		}
		answer.sort(Comparator.naturalOrder());
		return answer;
	}

}

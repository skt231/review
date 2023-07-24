package programers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/*문자열들이 담긴 리스트가 주어졌을 때, 모든 문자열들을 순서대로 합친 문자열을 꼬리 문자열이라고 합니다. 꼬리 문자열을 만들 때 특정 문자열을 포함한 문자열은 제외시키려고 합니다.
 *  예를 들어 문자열 리스트 ["abc", "def", "ghi"]가 있고 문자열 "ef"를 포함한 문자열은 제외하고 꼬리 문자열을 만들면 "abcghi"가 됩니다.
문자열 리스트 str_list와 제외하려는 문자열 ex가 주어질 때, str_list에서 ex를 포함한 문자열을 제외하고 만든 꼬리 문자열을 return하도록 solution 함수를 완성해주세요.
str_list				ex		result
---------------------------------------
["abc", "def", "ghi"]	"ef"	"abcdghi"
["abc", "bbc", "cbc"]	"c"		"abbbb"
		*/
public class tail_Array {

	public static void main(String[] args) {
		String[] str_list = { "abc", "bbc", "cbc" };
		System.out.println(solution(str_list, "c"));
	}

	public static String solution(String[] str_list, String ex) {
		List<String> L_answer = new ArrayList<>();
		String answer="";
		for (String str : str_list) {
			if (str.contains(ex)) {
		        String[] strs = str.split("");
		        System.out.println(Arrays.toString(strs));
		        String[] ex_str = ex.split("");
		        System.out.println(Arrays.toString(ex_str));
		        for (int i = 0; i < strs.length; i++) {
		            for (int j = 0; j < ex_str.length; j++) {
		                if (strs[i].equals(ex_str[j])) {
		                    strs[i] = strs[i].replace(ex_str[j], ""); 
		                }
		            }
		        }
		        String re_str = "";
		        System.out.println(re_str);
		        for (String i : strs) {
		            System.out.println(i);
		            re_str += i;
		        }
		        str = re_str; 
		        System.out.println(str);
		        L_answer.add(str);
		    }else {
		    	L_answer.add(str);
		    }
			System.out.println(L_answer);
		}
//		System.out.println(Arrays.toString(str_list));
		for(int i=0;i<L_answer.size();i++) {
			answer += L_answer.get(i);
		}
		return answer;
	}

}

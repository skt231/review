package programers;

import java.util.ArrayList;
import java.util.List;

/*my_string	queries	result
"rermgorpsam"	[[2, 3], [0, 7], [5, 9], [6, 10]]	"programmers"*/
public class dd {
	int k = 0;

	public static void main(String[] args) {
		char A = 'A';
		String b = "apporoograpemmemprs";
		List<Character> answer = new ArrayList<>();
		b=b.replace('a', 'b');

		System.out.println(b);
	}
	public List<Integer> solution(int n, int[] slicer, int[] num_list) {
	    List<Integer> answer = new ArrayList<>();
	    if(n == 1){
	        for(int i = slicer[0]; i <= slicer[1]; i++){
	            answer.add(num_list[i]);
	        }
	    }else if(n == 2){
	        for(int i = slicer[0]; i < num_list.length; i++){
	            answer.add(num_list[i]);
	        }
	    }else if(n == 3){
	        for(int i = slicer[0]; i <= slicer[1]; i++){
	            answer.add(num_list[i]);
	        }
	    }else if(n == 4){
	        for(int i = slicer[0]; i <= slicer[1]; i += slicer[2]){
	            answer.add(num_list[i]);
	        }
	    }
	    return answer;
	}

}

package programers;

import java.util.ArrayList;
import java.util.List;

public class add_arrayVlaue_n {

	public static void main(String[] args) {
		int[] arr= {5, 1, 4};
			System.out.println(solution(arr));

	}
	public static List<Integer> solution(int[] arr) {
        List<Integer> answer=new ArrayList<>();
        for(int i=0;i<arr.length;i++){
        	System.out.println("i= "+i);
        	System.out.println(i+"="+arr[i]);
            for(int j=0;j<arr[i];j++){
            	System.out.println("j= "+j);
                answer.add(arr[i]);
            }
        }
        return answer;
    }

}

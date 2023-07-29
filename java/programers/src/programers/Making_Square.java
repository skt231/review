package programers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/*이차원 정수 배열 arr이 매개변수로 주어집니다. arr의 행의 수가 더 많다면 열의 수가 행의 수와 같아지도록 각 행의 끝에 0을 추가하고, 
열의 수가 더 많다면 행의 수가 열의 수와 같아지도록 각 열의 끝에 0을 추가한 이차원 배열을 return 하는 solution 함수를 작성해 주세요.
		arr																	result
		[[572, 22, 37], [287, 726, 384], [85, 137, 292], [487, 13, 876]]	[[572, 22, 37, 0], [287, 726, 384, 0], [85, 137, 292, 0], [487, 13, 876, 0]]
		[[57, 192, 534, 2], [9, 345, 192, 999]]	[[57, 192, 534, 2], [9, 345, 192, 999], [0, 0, 0, 0], [0, 0, 0, 0]]
		[[1, 2], [3, 4]]	[[1, 2], [3, 4]]	
				*/
public class Making_Square {

	public static void main(String[] args) {
		int[][] arr = { { 572, 22, 37 }, { 287, 726, 384 }};
		System.out.println(solution(arr));

	}

	public static List<List<Integer>> solution(int[][] arr) {

		List<List<Integer>> answer = new ArrayList<>();
		for (int i = 0; i < arr.length; i++) {
			List<Integer> rowList = new ArrayList<>();
			for (int j = 0; j < arr[i].length; j++) {
				rowList.add(arr[i][j]);

			}
			if (rowList.size() % 2 != 0) {
				rowList.add(0);
			}
			answer.add(rowList);
		}
		for (int[] idx : arr) {
			List<Integer> rowList = new ArrayList<>();
			if (idx.length >= answer.size()) {
				for (int j = answer.size(); j < idx.length; j++) {
				    rowList.add(0);
				}
				answer.add(rowList);
			}
			
		}

		return answer;

	}

}

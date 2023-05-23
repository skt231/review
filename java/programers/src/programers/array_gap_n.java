package programers;

import java.util.ArrayList;
import java.util.List;

//정수 리스트 num_list와 정수 n이 주어질 때, num_list의 첫 번째 원소부터 마지막 원소까지 n개 간격으로 저장되어있는 원소들을 차례로 담은 리스트를 return하도록 
//solution 함수를 완성해주세요.
class array_gap_n {
    public int[] solution(int[] num_list, int n) {
        List<Integer> resultList = new ArrayList<>();

        for (int i = 0; i < num_list.length; i += n) {
            resultList.add(num_list[i]);
        }

        int[] answer = new int[resultList.size()];
        for (int i = 0; i < resultList.size(); i++) {
            answer[i] = resultList.get(i);
        }

        return answer;
    }

    public static void main(String[] args) {
    	array_gap_n solution = new array_gap_n();

        // 예시 입력
        int[] num_list = {1, 2, 3, 4, 5, 6};
        int n = 2;

        // 솔루션 함수 호출
        int[] result = solution.solution(num_list, n);

        // 결과 출력
        for (int num : result) {
            System.out.print(num + " ");
        }
    }
}

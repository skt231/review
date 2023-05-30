//package programers;
//
//import java.util.ArrayList;
//import java.util.Arrays;
//import java.util.Collections;
//import java.util.Comparator;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
////외과의사 머쓱이는 응급실에 온 환자의 응급도를 기준으로 진료 순서를 정하려고 합니다. 정수 배열 emergency가 매개변수로 주어질 때 
////응급도가 높은 순서대로 진료 순서를 정한 배열을 return하도록 solution 함수를 완성해주세요.
////[3, 76, 24]	[3, 1, 2]
////[1, 2, 3, 4, 5, 6, 7]	[7, 6, 5, 4, 3, 2, 1]
////[30, 10, 23, 6, 100]	[2, 4, 3, 5, 1]
//public class Setting_the_order_of_treatment {
//
//	public static void main(String[] args) {
//		int[] emergency = { 3, 76, 24 };
//		System.out.println(Arrays.toString(solution(emergency)));
//
//	}
//
//	public static int[] solution(int[] emergency) {
//		int aswer = 0;
//		Map<Integer, Integer> map = new HashMap<>();
//		for (int i = 0; i < emergency.length; i++) {
//			map.put(i, emergency[i]);
//		}
//
//		List<Map.Entry<Integer, Integer>> list = new ArrayList<>(map.entrySet());
//
//		// 응급도를 기준으로 내림차순으로 정렬
//		for (int i = 0; i < emergency.length - 1; i++) {
//			for (int j = i + 1; j < emergency.length; j++) {
//				if (emergency[emergency[i]] < emergency[emergency[j]]) {
//					int temp = emergency[i];
//					emergency[i] = emergency[j];
//					emergency[j] = temp;
//				}
//			}
//		}
//		System.out.println(Arrays.toString(emergency));
//		/*
//		 * int[] result = new int[emergency.length]; for (int i = 0; i < list.size();
//		 * i++) { result[i] = list.get(i).getKey(); }
//		 */
//
//		return emergency;
//
//	}
//
//}

package programers;

import java.util.ArrayList;
import java.util.List;

/*직사각형 형태의 그림 파일이 있고, 이 그림 파일은 1 × 1 크기의 정사각형 크기의 픽셀로 이루어져 있습니다. 
 그림 파일을 나타낸 문자열 배열 picture과 정수 k가 매개변수로 주어질 때, 이 그림 파일을 가로 세로로 k배 늘린 그림 파일을 나타내도록 문자열 배열을 
 return 하는 solution 함수를 작성해 주세요.
		 picture																						k	result
		 [".xx...xx.", "x..x.x..x", "x...x...x", ".x.....x.", "..x...x..", "...x.x...", "....x...."]	2	["..xxxx......xxxx..", "..xxxx......xxxx..", "xx....xx..xx....xx", "xx....xx..xx....xx", "xx......xx......xx", "xx......xx......xx", "..xx..........xx..", "..xx..........xx..", "....xx......xx....", "....xx......xx....", "......xx..xx......", "......xx..xx......", "........xx........", "........xx........"]
		 ["x.x", ".x.", "x.x"]	3	["xxx...xxx", "xxx...xxx", "xxx...xxx", "...xxx...", "...xxx...", "...xxx...", "xxx...xxx", "xxx...xxx", "xxx...xxx"]
*/
public class size_big {

	public static void main(String[] args) {
		String[] picture = { ".xx...xx.", "x..x.x..x", "x...x...x", ".x.....x.", "..x...x..", "...x.x...",
				"....x...." };
		System.out.println(solution(picture, 2));

	}

	public static List<String> solution(String[] picture, int k) {
		List<String> answer = new ArrayList<>();
		List<List<String>> pictures = new ArrayList<>();
		for (int i = 0; i < picture.length; i++) {
			for (String str : picture) {
				List<String> rowList = new ArrayList<>();
				for (char ch : str.toCharArray()) {
					for (int j = 0; j < k; j++) {
						rowList.add(String.valueOf(ch));
					}
				}
				pictures.add(rowList);
			}

		}
        for (int i = 0; i < picture.length * k; i++) {
            StringBuilder result = new StringBuilder();
            for (String str : pictures.get(i)) {
                result.append(str);
            }
            answer.add(result.toString());
        }
        return answer;
    }
}
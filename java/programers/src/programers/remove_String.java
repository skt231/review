package programers;

import java.util.Arrays;

/*문자열 my_string과 정수 배열 indices가 주어질 때, my_string에서 
indices의 원소에 해당하는 인덱스의 글자를 지우고 이어 붙인 문자열을 return 하는 solution 함수를 작성해 주세요.
			my_string				indices							result
		"apporoograpemmemprs"	[1, 16, 6, 15, 0, 10, 11, 3]	"programmers"
				입출력 예 #1

				예제 1번의 my_string의 인덱스가 잘 보이도록 표를 만들면 다음과 같습니다.

				index		0	1	2	3	4	5	6	7	8	9	10	11	12	13	14	15	16	17	18
				my_string	a	p	p	o	r	o	o	g	r	a	p	e	m	m	e	m	p	r	s
				indices에 있는 인덱스의 글자들을 지우고 이어붙이면 "programmers"가 되므로 이를 return 합니다.*/
public class remove_String {

	public static void main(String[] args) {
		String my_string = "apporoograpemmemprs";
		int[] indices = { 1, 16, 6, 15, 0, 10, 11, 3 };
		System.out.println(solution(my_string, indices));

	}

	public static String solution(String my_string, int[] indices) {
		StringBuilder sb = new StringBuilder(my_string);

		// 인덱스를 역순으로 정렬하여 뒤에서부터 지우기
		Arrays.sort(indices);
		for (int i = indices.length - 1; i >= 0; i--) {
			int index = indices[i];
			sb.deleteCharAt(index);
		}

		return sb.toString();
	}

}

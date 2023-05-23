package programers;

public class sum_while_bigger_than_number {

	public static void main(String[] args) {
		int[] numbers= {34, 5, 71, 29, 100, 34};
		System.out.println(solution(numbers, 123));
	}
	 public static int solution(int[] numbers, int n) {
	        int sum=0;
	        for(int i=0;i<numbers.length;i++){
	            sum += numbers[i];
	            System.out.println(sum);
	            if(sum > n){
	                break;
	            }
	        }
	        return sum;
	    }

}

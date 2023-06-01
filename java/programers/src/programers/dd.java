package programers;

public class dd {
	int k = 0;

	public static void main(String[] args) {
		int [] a= {1,3,5,4,7,9,6};
		int temp=a[0];
		
		for(int i=0;i<a.length;i++) {
			if(a[i]<temp) {
				temp=a[i];
			}
		}
		System.out.println(temp);
	}
}
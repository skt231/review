package programers;

public class dd {
	int k = 0;

	public static void main(String[] args) {
		int a=12;
		int temp=0;
		int cnt=0;
		for(int i=0;i<a/2;i++) {
			a /=2;
			cnt++;
			if(a %2 !=0) {
				a /=a;
				cnt++;
			}
		}
		System.out.println(a);
		System.out.println(cnt);
	}
}
package programers.ibmoon;

/*개미 군단이 사냥을 나가려고 합니다. 개미군단은 사냥감의 체력에 딱 맞는 병력을 데리고 나가려고 합니다.
장군개미는 5의 공격력을, 병정개미는 3의 공격력을 일개미는 1의 공격력을 가지고 있습니다. 
예를 들어 체력 23의 여치를 사냥하려고 할 때, 일개미 23마리를 데리고 가도 되지만, 장군개미 네 마리와 병정개미 한 마리를 데리고 간다면 
더 적은 병력으로 사냥할 수 있습니다. 사냥감의 체력 hp가 매개변수로 주어질 때, 사냥감의 체력에 딱 맞게 최소한의 병력을 구성하려면 
몇 마리의 개미가 필요한지를 return하도록 solution 함수를 완성해주세요.

장군개미는 5의 공격력, 병정개미는 3의 공격력, 일개미는 1의 공격력

hp	result
23	5
24	6
999	201*/
public class ant_war {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int hp = 23;
		System.out.println(solution(hp));

	}

	public static int solution(int hp) {
		int answer = 0;
		int work = 1;
		int solider = 3;
		int gemeral = 5;
		int maxWork = hp / work;
		int maxSolider = hp / solider;
		int maxGemeral = hp / gemeral;
		for (int i = 0; i <= maxWork; i++) {
			for (int j = 0; j <= maxSolider; j++) {
				for (int k = 0; k <= maxGemeral; k++) {
					int sum = i * work + j * solider + k * gemeral;
					if (sum == hp) {
						answer = i + j + k;
						return answer;
					}
				}
			}
		}
		return answer;

	}

}
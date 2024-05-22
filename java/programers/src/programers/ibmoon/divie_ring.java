package programers.ibmoon;

import java.math.BigInteger;

public class divie_ring {
	public static void main(String[] args) {
	
	}
	public static int solution(int balls, int share) {
        BigInteger answer = BigInteger.ZERO;
        BigInteger differ = BigInteger.valueOf(balls - share);
        BigInteger dif_val = BigInteger.ONE;
        BigInteger balls_val = BigInteger.ONE;
        BigInteger share_val = BigInteger.ONE;

        for (int i = 1; i <= differ.intValue(); i++) {
            dif_val = dif_val.multiply(BigInteger.valueOf(i));
        }

        for (int i = 1; i <= balls; i++) {
            balls_val = balls_val.multiply(BigInteger.valueOf(i));
        }

        for (int i = 1; i <= share; i++) {
            share_val = share_val.multiply(BigInteger.valueOf(i));
        }

        answer = balls_val.divide(dif_val.multiply(share_val));

        return answer.intValue();
    }
}

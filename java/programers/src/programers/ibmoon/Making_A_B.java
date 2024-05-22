package programers.ibmoon;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

public class Making_A_B {


	    public static void main(String[] args) {
	        String str = "abc";
	        List<String> permutations = generatePermutations(str);
	        for (String permutation : permutations) {
	            System.out.println(permutation);
	        }
	    }
	    private static List<String> generatePermutations(String str) {
	        List<String> permutations = new ArrayList<>();
	        generatePermutationsHelper(permutations, "", str);
	        return permutations;
	    }

	    private static void generatePermutationsHelper(List<String> permutations, String prefix, String remaining) {
	        int n = remaining.length();
	        if (n == 0) {
	            permutations.add(prefix);
	        } else {
	            for (int i = 0; i < n; i++) {
	                generatePermutationsHelper(permutations, prefix + remaining.charAt(i),
	                        remaining.substring(0, i) + remaining.substring(i + 1, n));
	            }
	        }
	    }
	}


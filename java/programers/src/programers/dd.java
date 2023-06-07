package programers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Random;

public class dd {
	int k = 0;

	public static void main(String[] args) {

	}

	public class Draw {

		private static final List<Product> products = Arrays.asList(
				new Product("CHICKEN", "B", "2023-03-23T02:20:19+09:00"),
				new Product("CIDER", "A", "2021-02-10T02:28:56+09:00"),
				new Product("COLA", "A", "2021-03-21T01:00:32+09:00"));

		public static List<String> draw(int number_of_draws, long time) {
			List<String> results = new ArrayList<>();
			for (int i = 0; i < number_of_draws; i++) {
				Product product = products.get(new Random().nextInt(products.size()));
				if (product.getExpirationDate().compareTo(new Date(time)) < 0) {
					results.add("꽝");
				} else {
					String grade = product.getGrade();
					double probability = grade.equals("A") ? 0.9 : 0.1;
					if (new Random().nextDouble() < probability) {
						results.add(product.getName());
					} else {
						results.add("꽝");
					}
				}
			}
			return results;
		}

		public class Product {

			private String name;
			private String grade;
			private Date expirationDate;

			public Product(String name, String grade, Date expirationDate) {
				this.name = name;
				this.grade = grade;
				this.expirationDate = expirationDate;
			}

			public String getName() {
				return name;
			}

			public String getGrade() {
				return grade;
			}

			public Date getExpirationDate() {
				return expirationDate;
			}

		}

	}
}
package kokeilu;

import java.util.Locale;

public class MuotoiltuTulostus {
	public static void main(String[] args) {
		double luku = 3.12345678;
		double luku2 = 5.123123;

		System.out.println("Tulostellaan");
		System.out.println("Tulos: " + luku);

// Tulostus 2 desimaalin tarkkuudella

		System.out.printf("Tulos: %.2f ja toinen luku on %.4f \n", luku, luku2);

// Tulostus 3 desimaalin tarkkudella, 15 merkki‰ leve‰‰n

		System.out.printf("Tulos: %15.3f \n", luku);

	}
}

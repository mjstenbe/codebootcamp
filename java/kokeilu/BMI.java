package kokeilu;

import java.util.InputMismatchException;
import java.util.Scanner;

public class BMI {

	public static void main(String[] args) {

		Scanner lukija = new Scanner(System.in);
		double BMI = 0;

		try {
			System.out.print("Anna pituus: ");
			double pituus = lukija.nextDouble();
//test
			System.out.println("Anna paino: ");
			double paino = lukija.nextDouble();

			BMI = paino / (pituus * pituus);

		} catch (ArithmeticException e) {
			System.out.println("Laskussa Tapahtui virhe!");
			System.exit(0);
		} catch (InputMismatchException e) {
			System.out.println("Syötit jotain muuta kuin numeron!");
			System.exit(0);
		} catch (Exception e) {
			System.out.println("Tapahtui virhe!");
			System.exit(0);
		}
		// double BMI = paino / Math.pow(pituus,2);

		System.out.println("BMI: " + BMI);
		System.out.printf("BMI %.2f \n", BMI);

//		BMI alle 18,5: Alipaino.
//		BMI 18,5–25: Normaalipaino.
//		BMI 25–30: Ylipaino eli lievä lihavuus.
//		BMI 30–40: Vaikea lihavuus.
//		
		if (BMI < 25) {
			System.out.println("Alipaino");
		} else if (BMI < 25) {
			System.out.println("Normaalipaino");
		} else if (BMI < 30) {
			System.out.println("Ylipaino");
		}

		lukija.close();

	}
}

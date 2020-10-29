package kokeilu;

import java.util.Scanner;

public class Lukemista {
	public static void main(String[] args) {
		String kayttajanNimi;

		Scanner lukija = new Scanner(System.in);

		System.out.print("Anna nimesi: ");
		kayttajanNimi = lukija.nextLine();
		
		System.out.println("Hei vaan " + kayttajanNimi);
		System.out.println("Anna pituutesi: ");

		double pituus = lukija.nextDouble();
		System.out.println("Olet: " + pituus + " pitkä.");
		
		lukija.close();

	}
}

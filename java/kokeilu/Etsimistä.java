package kokeilu;

import java.util.Scanner;

public class Etsimist� {

	public static void main(String[] args) {

		String[] kaupungit = { "Helsinki", "Turku", "Tampere" };
		Scanner lukija = new Scanner(System.in);

		System.out.println("Anna etsitt�v�: ");
		String etsitt�v� = lukija.nextLine();

		for (int i = 0; i < kaupungit.length; i++) {
			if (kaupungit[i].equalsIgnoreCase(etsitt�v�)) {
				System.out.println("L�ytyi indeksist� " + i);
			}
		}
	}

}

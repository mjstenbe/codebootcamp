package kokeilu;

import java.util.Scanner;

public class Etsimistä {

	public static void main(String[] args) {

		String[] kaupungit = { "Helsinki", "Turku", "Tampere" };
		Scanner lukija = new Scanner(System.in);

		System.out.println("Anna etsittävä: ");
		String etsittävä = lukija.nextLine();

		for (int i = 0; i < kaupungit.length; i++) {
			if (kaupungit[i].equalsIgnoreCase(etsittävä)) {
				System.out.println("Löytyi indeksistä " + i);
			}
		}
	}

}

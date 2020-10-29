/* T‰m‰ on ensimm‰inen demo-ohjelma Eclipsell‰
 * Se tulostaa ruudulle tekstin "Hoi maailma!
 * 
 */
package kokeilu;

public class testi {
	// T‰ss‰ on ohjelman p‰‰metodi
	public static void main(String[] args) {

		int ika = 15;
		final double desimaali = 3.14;

		String nimi = "Mika";
		char merkki = 'M';
		var t = 45;

		int luku1 = 12;
		int luku2 = 15;
		int tulos;
		tulos = luku1 * luku2;

		System.out.println(luku1 + luku2);
		System.out.println(tulos);
		System.out.println(tulos++);
		System.out.println(tulos++);
		System.out.println(tulos++);
		
		
		System.out.println("\"Hoi Maailma!\"");

		System.out.print("Tervehdys " + nimi);
		System.out.println(" Olet jo " + ika + " vuotta.");

	}

}

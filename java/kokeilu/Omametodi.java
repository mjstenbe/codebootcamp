package kokeilu;

public class Omametodi {

	public static void main(String[] args) {
		System.out.println("Nyt ollaan main-metodissa!");
		omaMetodi();
		System.out.println("Nyt ollaan taas main-metodissa.");
		summa(2, 5, 2);
		summa(12, 234, 123);
		int tallessa = toinenSumma(234, 2332, 23334);
		BMI.main(null);
	}

	private static void omaMetodi() {
		System.out.println("Nyt ollaan omassa metodissa!");
		toinenMetodi();
	}

	private static void toinenMetodi() {
		System.out.println("Kolmas metodi!");
	}

	private static void summa(int eka, int toka, int kolmas) {
		System.out.println(eka + toka + kolmas);
	}

	private static int toinenSumma(int eka, int toka, int kolmas) {
		int summa = eka + toka + kolmas;
		System.out.println(summa);
		return summa;
	}

}

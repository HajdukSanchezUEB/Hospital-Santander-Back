import javax.swing.JOptionPane;

public class main {
	
	public static void main(String[] args) {
		long TInicio, TFin, tiempo; // Variables para determinar el tiempo de ejecución
		TInicio = System.currentTimeMillis(); // Tomamos la hora en que inicio el algoritmo y la almacenamos en la
												// variable inicio
		mostrarFactorial();

		TFin = System.currentTimeMillis(); // Tomamos la hora en que finalizó el algoritmo y la almacenamos en la
											// variable T
		tiempo = TFin - TInicio; // Calculamos los milisegundos de diferencia
		System.out.println("Tiempo de ejecución en milisegundos: " + tiempo); // Mostramos en pantalla el tiempo de
																				// ejecución en milisegundos
	}

	int number1;
	static int number2;


	public static String c() {
		StringBuilder builder = new StringBuilder();
		while (true) {
//				demora(1);
			builder.append(number2 + ":" + factorial(number2) + "\n");
			number2++;
			if (number2 == 40) {
				return builder.toString();

			}
		}

	}

	public static float factorial(float n) {
		float resultado = 1;
		for (float i = 1; i <= n; i++) {
			resultado *= i;
		}
		return resultado;
	}

	public static void demora(int segundos) {
		try {
			Thread.sleep(segundos * 1000);
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public static void mostrarFactorial() {
		JOptionPane.showMessageDialog(null, c());

	}

}

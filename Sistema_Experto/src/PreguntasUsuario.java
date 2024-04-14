import java.util.Scanner;

public class PreguntasUsuario {
    Scanner scanner;

    // Constructor
    PreguntasUsuario() {
        scanner = new Scanner(System.in);
    }

    // Método para hacer preguntas al usuario y almacenar las respuestas
    Computadora hacerPreguntas() {
        Computadora computadora = new Computadora("Desconocido", "Desconocido", "Desconocido", "Desconocido", 0, 0,
                "", 0, "Desconocido", "Desconocido", 0);

        System.out.println("¿Sabes de computadoras? (sí/no)");
        String sabeDeComputadoras = scanner.nextLine();

        if (sabeDeComputadoras.equalsIgnoreCase("no")) {
            System.out.println("¿Quieres la computadora para: Estudio, Profesional o Gaming?");
            computadora.tipoUso = scanner.nextLine();

            System.out.println("¿Cuánto presupuesto tienes?");
            computadora.precio = scanner.nextDouble();
        } else {
            System.out.println("¿Qué CPU prefieres, AMD o Intel?");
            computadora.cpu = scanner.nextLine();

            System.out.println("Indica el modelo del CPU:");
            computadora.modeloCpu = scanner.nextLine();

            System.out.println("¿Qué GPU prefieres, Radeon o Nvidia?");
            computadora.gpu = scanner.nextLine();

            System.out.println("Indica el modelo de GPU:");
            computadora.modeloGpu = scanner.nextLine();

            System.out.println("¿Cuánta RAM quieres (en GB)?");
            computadora.ram = scanner.nextInt();

            System.out.println("¿Cuánta ROM quieres (en GB)?");
            computadora.rom = scanner.nextInt();

            System.out.println("¿Qué tipo de pantalla quieres?");
            computadora.tipoPantalla = scanner.nextLine();

            System.out.println("¿Cuántas pulgadas quieres?");
            computadora.tamañoPantalla = scanner.nextFloat();

            System.out.println("¿Quieres Gamer o Profesional?");
            computadora.tipoUso = scanner.nextLine();
        }

        return computadora;
    }
}

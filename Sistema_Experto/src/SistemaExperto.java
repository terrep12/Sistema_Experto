import java.util.ArrayList;

public class SistemaExperto {
    BaseDeDatos baseDeDatos;
    PreguntasUsuario preguntasUsuario;
    BuscarYGuardar buscarYGuardar;

    // Constructor
    SistemaExperto() {
        baseDeDatos = new BaseDeDatos();
        preguntasUsuario = new PreguntasUsuario();
        buscarYGuardar = new BuscarYGuardar();
    }

    public static void main(String[] args) {
        // Crear una instancia del sistema experto
        SistemaExperto sistemaExperto = new SistemaExperto();

        // Hacer preguntas al usuario y almacenar las respuestas
        Computadora computadora = sistemaExperto.preguntasUsuario.hacerPreguntas();

        // Buscar en la base de datos y guardar el resultado en una lista
        ArrayList<String> modelosCoincidentes = sistemaExperto.buscarYGuardar.buscarYGuardar(computadora);

        // Si se encontraron coincidencias, imprimir los modelos de las laptops
        if (!modelosCoincidentes.isEmpty()) {
            System.out.println("Se encontraron las siguientes laptops con características similares:");
            for (String modelo : modelosCoincidentes) {
                System.out.println(modelo);
            }
        } else {
            System.out.println("No se encontraron laptops con las características especificadas.");
        }
    }
}

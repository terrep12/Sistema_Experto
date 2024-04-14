import java.util.ArrayList;

public class BuscarYGuardar {
    BaseDeDatos baseDeDatos;

    // Constructor
    BuscarYGuardar() {
        baseDeDatos = new BaseDeDatos();
    }

    // Método para buscar computadoras en la base de datos que coincidan con al
    // menos 5 características
    ArrayList<String> buscarYGuardar(Computadora computadora) {
        ArrayList<String> modelosCoincidentes = new ArrayList<>();

        for (Computadora c : baseDeDatos.computadoras) {
            int contador = 0;

            if (c.cpu.equals(computadora.cpu))
                contador++;
            if (c.modeloCpu.equals(computadora.modeloCpu))
                contador++;
            if (c.gpu.equals(computadora.gpu))
                contador++;
            if (c.modeloGpu.equals(computadora.modeloGpu))
                contador++;
            if (c.ram == computadora.ram)
                contador++;
            if (c.rom == computadora.rom)
                contador++;
            if (c.tipoPantalla.equals(computadora.tipoPantalla))
                contador++;
            if (c.tamañoPantalla == computadora.tamañoPantalla)
                contador++;
            if (c.tipoUso.equals(computadora.tipoUso))
                contador++;

            if (contador >= 5) {
                modelosCoincidentes.add(c.modelo + " - " + c.precio);
            }
        }

        return modelosCoincidentes;
    }
}

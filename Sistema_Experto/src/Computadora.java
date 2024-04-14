public class Computadora {
    String cpu;
    String modeloCpu;
    String gpu;
    String modeloGpu;
    int ram;
    int rom;
    String tipoPantalla;
    Float tamañoPantalla;
    String tipoUso;
    String modelo;
    double precio;

    // Constructor
    Computadora(String cpu, String modeloCpu, String gpu, String modeloGpu, int ram, int rom, String tipoPantalla,
            float tamañoPantalla, String tipoUso, String modelo, double precio) {
        this.cpu = cpu;
        this.modeloCpu = modeloCpu;
        this.gpu = gpu;
        this.modeloGpu = modeloGpu;
        this.ram = ram;
        this.rom = rom;
        this.tipoPantalla = tipoPantalla;
        this.tamañoPantalla = tamañoPantalla;
        this.tipoUso = tipoUso;
        this.modelo = modelo;
        this.precio = precio;
    }
}

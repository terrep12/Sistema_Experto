import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class BaseDeDatos {
    ArrayList<Computadora> computadoras;
    Connection conexion;

    // Constructor
    BaseDeDatos() {
        computadoras = new ArrayList<>();

        try {
            // Cargar el driver JDBC para SQLite
            Class.forName("org.sqlite.JDBC");

            // Establecer la conexión con la base de datos
            conexion = DriverManager.getConnection("jdbc:sqlite:Sistema_Experto/db/computadoras.db");

            // Cargar las computadoras de la base de datos
            cargarComputadoras();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Método para agregar una computadora a la base de datos
    void agregarComputadora(Computadora computadora) {
        try {
            Statement statement = conexion.createStatement();
            statement.executeUpdate(
                    "INSERT INTO computadoras (cpu, modeloCpu, gpu, modeloGpu, ram, rom, tipoPantalla, tamañoPantalla, tipoUso,precio) VALUES ('"
                            +
                            computadora.cpu + "', '" +
                            computadora.modeloCpu + "', '" +
                            computadora.gpu + "', '" +
                            computadora.modeloGpu + "', " +
                            computadora.ram + ", " +
                            computadora.rom + ", '" +
                            computadora.tipoPantalla + "', " +
                            computadora.tamañoPantalla + ", '" +
                            computadora.tipoUso + "'," +
                            computadora.precio + ", ')");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Método para cargar las computadoras de la base de datos
    void cargarComputadoras() {
        try {
            Statement statement = conexion.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM computadoras");

            while (resultSet.next()) {
                Computadora computadora = new Computadora(
                        resultSet.getString("cpu"),
                        resultSet.getString("modeloCpu"),
                        resultSet.getString("gpu"),
                        resultSet.getString("modeloGpu"),
                        resultSet.getInt("ram"),
                        resultSet.getInt("rom"),
                        resultSet.getString("tipoPantalla"),
                        resultSet.getFloat("tamañoPantalla"),
                        resultSet.getString("tipoUso"),
                        resultSet.getString("modelo"),
                        resultSet.getDouble("precio"));

                computadoras.add(computadora);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

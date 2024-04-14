public class Nodo {
    int t; // Grado mínimo (define el rango para número de claves)
    Computadora[] claves; // Un arreglo de claves
    int n; // Número actual de claves
    Nodo[] hijos; // Un arreglo de hijos
    boolean hoja; // Es verdadero cuando el nodo es hoja. De lo contrario, es falso

    // Constructor
    Nodo(int t, boolean hoja) {
        this.t = t;
        this.hoja = hoja;
        this.claves = new Computadora[2 * t - 1];
        this.hijos = new Nodo[2 * t];
        this.n = 0;
    }

    // Método para dividir el hijo y de este nodo
    void dividirHijo(int i, Nodo y) {
        // Crear un nuevo nodo que va a almacenar (t-1) claves de y
        Nodo z = new Nodo(y.t, y.hoja);
        z.n = t - 1;

        // Copiar las últimas (t-1) claves de y a z
        for (int j = 0; j < t - 1; j++)
            z.claves[j] = y.claves[j + t];

        // Copiar los últimos t hijos de y a z
        if (!y.hoja) {
            for (int j = 0; j < t; j++)
                z.hijos[j] = y.hijos[j + t];
        }

        // Reducir el número de claves en y
        y.n = t - 1;

        // Como este nodo va a tener un nuevo hijo,
        // crear espacio para el nuevo hijo
        for (int j = n; j >= i + 1; j--)
            hijos[j + 1] = hijos[j];

        // Enlazar el nuevo hijo a este nodo
        hijos[i + 1] = z;

        // Una clave de y se moverá a este nodo. Encontrar la ubicación de
        // la nueva clave y mover todas las claves mayores un espacio adelante
        for (int j = n - 1; j >= i; j--)
            claves[j + 1] = claves[j];

        // Copiar la clave del medio de y a este nodo
        claves[i] = y.claves[t - 1];

        // Incrementar el número de claves en este nodo
        n = n + 1;
    }

    // Método para insertar una clave no llena
    void insertarNoLleno(Computadora k) {
        // Inicializar el índice como el índice del elemento más a la derecha
        int i = n - 1;

        // Si este es un nodo hoja
        if (hoja) {
            // Lo siguiente hace dos cosas:
            // a) Encuentra la ubicación de la nueva clave para ser insertada
            // b) Mueve todas las claves mayores a un espacio adelante
            while (i >= 0 && claves[i].precio > k.precio) {
                claves[i + 1] = claves[i];
                i--;
            }

            // Insertar la nueva clave en la ubicación encontrada
            claves[i + 1] = k;
            n = n + 1;
        } else {
            // Si este nodo no es hoja

            // Encontrar el hijo que va a tener la nueva clave
            while (i >= 0 && claves[i].precio > k.precio)
                i--;

            // Ver si el hijo encontrado está lleno
            if (hijos[i + 1].n == 2 * t - 1) {
                // Si el hijo está lleno, entonces dividirlo
                dividirHijo(i + 1, hijos[i + 1]);

                // Después de dividir, la clave del medio de hijos[i] sube y
                // hijos[i] se divide en dos. Ver cuál de los dos va a tener
                // la nueva clave
                if (claves[i + 1].precio < k.precio)
                    i++;
            }
            hijos[i + 1].insertarNoLleno(k);
        }
    }

    // Método para buscar una clave en el subárbol enraizado con este nodo
    Nodo buscar(Computadora k) {
        // Encontrar la primera clave mayor o igual a k
        int i = 0;
        while (i < n && claves[i].precio < k.precio)
            i++;

        // Si la clave encontrada es igual a k, devolver este nodo
        if (claves[i].precio == k.precio)
            return this;

        // Si la clave k no se encuentra aquí y este es un nodo hoja
        if (hoja)
            return null;

        // Ir al hijo apropiado
        return hijos[i].buscar(k);
    }
}

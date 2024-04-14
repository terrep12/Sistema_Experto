**Sistema Experto Recomendación de Laptops**

Este proyecto es un sistema experto que ayuda a los usuarios a seleccionar una computadora basándose en sus preferencias y presupuesto. El sistema se conecta a una base de datos MySQL local, donde almacena y recupera información sobre diferentes modelos de computadoras.

**El sistema está compuesto por varias clases:**

- **Clase Computadora:** Esta clase representa una computadora con varias características como el CPU, el modelo del CPU, la GPU, el modelo de la GPU, la RAM, la ROM, el tipo de pantalla, el tamaño de la pantalla, el tipo de uso, el modelo y el precio.
- **Clase PreguntasUsuario:** Esta clase maneja las preguntas al usuario. Si el usuario no sabe de computadoras, le pregunta para qué quiere la computadora y cuánto presupuesto tiene. Si el usuario sabe de computadoras, hace preguntas más detalladas sobre las características que prefiere.
- **Clase BaseDeDatos:** Esta clase se conecta a la base de datos MySQL, carga los datos de las computadoras desde la base de datos y proporciona un método para agregar nuevas computadoras a la base de datos.
- **Clase BuscarYGuardar:** Esta clase tiene un método buscarYGuardar que compara las características de una computadora proporcionada con las computadoras en la base de datos. Si al menos 5 características coinciden, el modelo y el precio de la computadora se agregan a la lista modelosCoincidentes, que luego se devuelve.
- **Clase SistemaExperto:** Esta es la clase principal que coordina todas las demás clases. Crea instancias de BaseDeDatos, PreguntasUsuario y BuscarYGuardar. Luego, hace preguntas al usuario para obtener las características deseadas de la computadora, busca en la base de datos las computadoras que coinciden con esas características y finalmente imprime los modelos de las computadoras coincidentes.

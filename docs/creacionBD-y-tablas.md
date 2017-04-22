### Crear una tabla (CREATE TABLE...)	

¿Dónde, cómo se va a crear la base de datos, las tablas, etc?

Abrir el workbench, ya una vez que se inició la sesión correctamente, se verá algo como se muestra en la imagen (sin código, todo en blanco). Si no se llegara a ver ese panel en blanco dónde se escribe el código se puede abrir de la siguiente manera:

- Se puede ir a "File" y seleccionar la opción "New Query tab" y sino, abajo de esa opción hay un ícono que parece una hoja y dice "SQL +", ambas opciones sirven.
En este panel se va a codear lenguaje SQL (Structured Query Language), acá iría el código para crear la base de datos, crear tablas, actualizar datos, insertar datos y consultarlos. Una vez que se tiene el código, se selecciona el código y para ejecutarlo, dar clic en la imagen que está en ese mismo panel, la imagen de rayo.

![Creación de tablas](https://github.com/Eri02/intro-a-base-de-datos-relacional/blob/gh-pages/img/creacionTablas.png)


### Crear base de datos (CREATE DATABASE...)		

Antes de crear la tabla para clientes, tenemos que crear la base de datos dónde se van a alojar las tablas. El código que necesitamos    para crear la base es CREATE DATABASE nombreDeLaBase. Para el ejemplo, quedaría algo así:		

`CREATE DATABASE BDPTF;`

**BDPTF** es el nombre que se le va a dar a la base de datos. Puede ser cualquiera.
		
Después de esto se le tiene que indicar al motor, qué base debe usar para trabajar, para eso escribimos algo así:		

`USE BDPTF;`		

Ahora sí, con la BD creada y luego de indicarle sobre qué base se va a trabajar, pasamos a crear la tabla para guardar los datos de los  clientes. 

```

CREATE TABLE Clientes
(cli_idCliente INTEGER PRIMARY KEY AUTO_INCREMENT UNIQUE,
cli_nombre VARCHAR(60) NOT NULL,
cli_apellido VARCHAR(60) NOT NULL,
cli_nroCuit BIGINT UNIQUE,
cli_direccion VARCHAR(60),
cli_idBarrio SMALLINT REFERENCES Barrios,
cli_ciudad VARCHAR(60),
cli_codPostal VARCHAR(10),
cli_telefono VARCHAR(60)
);

```		

Ahora, unas aclaraciones sobre la creación de la tabla Clientes:	

- Las columnas que se les va a crear a cada tabla van dentro de paréntesis.		
- Primero se escribe el nombre de la columna y luego el tipo de dato.		
- Los tipos de datos varían según el motor de base de datos que se use.		
- Algunos motores de bases de datos son case sensitive, o sea, que distinguen entre mayúsculas y minúsculas, en este caso MySQL no lo     es, pero esto se debe tener en cuenta.		
- El punto y coma ";" se usa para finalizar una sentencia, en el caso de la creación de la tabla Clientes, si luego viniese otra tabla     es necesario finalizar con un ";" y después de esto escribir el códgio correspondiente a la creación de otra tabla, si no hubiese       código siguiente a esto, puede omitirse el punto y coma.		
		
De la misma forma que se creó la tabla Clientes, debemos crear las tablas provincias, productos, facturas y facturasDetalle; los datos que se le van a agregar a cada una de estas tablas, en general, queda a elección del creador, esto se elige en base a cada necesidad. De todas formas, se deja una sugerencia de la creación de tablas e inserción de datos.

Además, se deja el script de creación, estructura y datos, en la carpeta "Script". Este script ya tiene los datos y sus tablas, lo que se debe hacer es importarlo en el workbench. Para esto, ir a la opción "Server", luego a "Data import", ahí selecionar la opción "Import form self-contained file", luego dar clic en el botón "Start import".

![Import](https://github.com/Eri02/intro-a-base-de-datos-relacional/blob/gh-pages/img/import.png)



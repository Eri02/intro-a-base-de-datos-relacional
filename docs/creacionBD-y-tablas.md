### Crear una tabla (CREATE TABLE...)		

### Crear base de datos (CREATE DATABASE...)		

Antes de crear la tabla para clientes, tenemos que crear la base de datos dónde se van a alojar las tablas. El código que necesitamos    para crear la base es CREATE DATABASE nombreDeLaBase. Para el ejemplo, quedaría algo así:		

Sintaxis
`CREATE DATABASE BDPTF;`

**BDPTF** es el nombre que se le va a dar a la base de datos. Puede ser cualquiera.
	
		
Después de esto se le tiene que indicar al motor, qué base debe usar para trabajar, para eso escribimos algo así:		

Sintaxis
`USE BDPTF;`		

Ahora sí, con la BD creada y luego de indicarle sobre qué base se va a trabajar, pasamos a crear la tabla para guardar los datos de los  clientes. 

Sintaxis		
```		
CREATE TABLE Clientes		
(codCliente INTEGER PRIMARY KEY,		
nombre VARCHAR(60) NOT NULL,		
apellido VARCHAR(60) NOT NULL,		
nroCuit BIGINT UNIQUE,		
empresa VARCHAR(60),		
direccion1 VARCHAR(60),		
direccion2 VARCHAR(60),		
codProvincia SMALLINT REFERENCES Provincias,		
ciudad VARCHAR(60),		
codPostal VARCHAR(10),		
teléfono VARCHAR(60)		
);		
```		
Ahora, unas aclaraciones sobre la creación de la tabla Clientes:	

- Las columnas que se les va a crear a cada tabla van dentro de paréntesis.		
- Primero se escribe el nombre de la columna y luego el tipo de dato.		
- Los tipos de datos varían según el motor de base de datos que se use.		
- Algunos motores de bases de datos son case sensitive, o sea, que distinguen entre mayúsculas y minúsculas, en este caso MySQL no lo     es, pero esto se debe tener en cuenta.		
- El punto y coma ";" se usa para finalizar una sentencia, en el caso de la creación de la tabla Clientes, si luego viniese otra tabla     es necesario finalizar con un ";" y después de esto escribir el códgio correspondiente a la creación de otra tabla, si no hubiese       código siguiente a esto, puede omitirse el punto y coma.		
		
De la misma forma que se creó la tabla Clientes, debemos crear las tablas provincias, productos, facturas y facturasDetalle; los datos que se le van a agregar a cada una de estas tablas, en general, queda a elección del creador, esto se elige en base a cada necesidad. De todas formas, se deja una sugerencia en el repositorio junto al DER correspondiente.	

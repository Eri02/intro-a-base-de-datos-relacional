# Introducción a una Base de Datos Relacional	
	
## ¿Qué es una base de datos relacional?		
		
   Desde el punto de vista informático, la base de datos es un sistema formado por un conjunto de datos almacenados en discos que          permiten el acceso directo a ellos y un conjunto de programas que manipulen ese conjunto de datos.		
   		
   Pensemoslo como un almacén, en un almacén guardamos cosas, todo aquello que consideremos importante, necesario y que luego vayamos a    querer utilizar. Es así como debemos ver a la base de datos, como un almacén dónde vamos a guardar un gran volumen de datos pero de      forma organizada, de esta manera nos va a ser fácil acceder a ellos cada vez que los necesitemos. 		
    		
### **¿De qué forma accedemos a este almacén?**		
 		
   Accedemos a través de consultas (query), las cuáles se realizan a través de un lenguaje en especifico, ese lenguaje se llama            SQL(Structured Query Language - Lenguaje de consultas estructurado).		
    		
   Ahora, si decimos que vamos a tratar a hablar sobre una base de datos relacional, esta tiene ciertas características:		
    		
- Una base de datos se compone de varias tablas o relaciones.		
- No pueden existir dos tablas con el mismo nombre ni registro.			
- Cada tabla es a su vez un conjunto de campos (columnas) y registros (filas).			
- La relación entre una tabla padre y un hijo se lleva a cabo por medio de las claves primarias y claves foráneas (o ajenas).		
- Las claves primarias son la clave principal de un registro dentro de una tabla y estas deben cumplir con la integridad de datos.
- Las claves ajenas se colocan en la tabla hija, contienen el mismo valor que la clave primaria del registro padre; por medio de estas 	   se hacen las formas relacionales.		

## ¿CPara qué sirve una base de datos? ¿Cuándo usar una base de datos?			
  Cuando tengamos que manejar y guardar mucha información. ¿Dónde podemos pensar que manejan bases de datos? Por ejemplo, empresas de     telefonía que necesitan guardar información de sus clientes, datos personales, facturación; cada vez que creamos un usuario en alguna   web, esa web necesita una base de datos para guardar nuestros usuarios y contraseñas.	

  Resumiendo, uso una base de datos cuando quiero guardar datos que no quiero perder, datos que quiero que perduren en el tiempo.	
**Antes de empezar con una BD, empecemos por modelarla, para eso necesitamos _Un DER_**		

## ¿De qué trata el tutorial?

## A quién está orientado del curso
El tutorial está orientado a todo aquel que quiera dar sus primeros pasos en bases de datos relacionales.

## Conocimientos previos

- Contar con manejo básico de una pc.
- HTML básico (Para saber como armar un formulario de logueo simple).
- Tener instalado un servidor (Para enviar los datos, la instalación se encontrará más abajo).

## Contenidos

1. Instalación del motor de base de datos (MySQL).
2. Creación de base de datos y tablas.
3. Inserción de datos.


## Referencias


# DER (Diagrama de entidad-relación)		
 		
### **¿Qué es un DER?**		

  Es una técnica de modelado de datos que crea una ilustración de las _entidades_ de un sistema de información y las _relaciones_ entre   las entidades.		
	
  Los DER modelan los requisitos de almacenamiento de datos de una organización con tres componentes principales: **entidades,             atributos y relaciones**.		

**1. Entidades:** Representan personas, lugares, elementos, eventos, o conceptos.		
     Una entidad puede ser un objeto con existencia física como: una persona, un animal, una casa, etc. (entidad concreta); o un objeto      con existencia conceptual como: un puesto de trabajo, una asignatura de clases, un nombre, etc. (entidad abstracta).		
	
**2. Atributos:** Representan propiedades o cualidades descriptivas de una entidad. Estos son también conocidos como elementos de            datos.		
     Una entidad está descrita y se representa por sus características o atributos. Por ejemplo, la entidad **Persona** tiene por            atributos: Nombre, Apellido, Género, Estatura, Peso, Fecha de nacimiento.		
      		
**3. Relaciones:** Representan los enlaces entre las entidades.		
  		
### Restricciones		
		
**a) Cardinalidad**		
    
   Dado un conjunto de relaciones en el que participan dos o más conjuntos de entidades, la correspondencia de cardinalidad indica el      número de entidades con las que puede estar relacionada una entidad dada.		
    
   Dados los conjuntos de entidades A y B, la correspondencia de cardinalidades puede ser:		
 		
  _Uno a Uno:_ (1:1) Una entidad A se relaciona con solo un registro en una entidad B. (ejemplo dos entidades, profesor y                  departamento, con llaves primarias, código_profesor y jefe_depto respectivamente, un profesor solo puede ser jefe de un departamento  c  y un departamento solo puede tener un jefe).		
    		
  _Uno a muchos:_ (1:N) Una entidad en A se relaciona con cero o muchos registros en una entidad B. Pero los registros de B solamente      se relacionan con un registro en A. (ejemplo: dos entidades, vendedor y ventas, con llaves primarias, código_vendedor y venta,          respectivamente, un vendedor puede tener muchas ventas pero una venta solo puede tener un vendedor).		
 		
  _Muchos a Uno:_ (N:1) Una entidad en A se relaciona exclusivamente con una entidad en B. Pero una entidad en B se puede relacionar        con 0 o muchas entidades en A (ejemplo empleado-centro de trabajo).		
		
  _Muchos a Muchos:_ (N:M) Una entidad en A se puede relacionar con 0 o con muchas entidades en B y viceversa (ejemplo asociaciones-        ciudadanos, donde muchos ciudadanos pueden pertenecer a una misma asociación, y cada ciudadano puede pertenecer a muchas   		    asociaciones    distintas).		
 
 **b) Modalidad**		
   
   Dado un conjunto de relaciones R en el cual participa un conjunto de entidades A, dicha participación puede ser de dos tipos:				
  _Obligatoria:_ Cuando cada entidad en A participa en al menos una relación de R.		
  _Opcional:_ Cuando al menos una entidad en A NO participa en alguna relación de R.		
    		
 		
  ![DER](http://www.hermosaprogramacion.com/wp-content/uploads/2014/07/entidad-relacion-1.jpg)		
   		
  Ahora, para que entendamos que son todas esas cosas que mecionamos, entidades, atributos, relaciones, ect, tenemos este pequeño DER. 			
  En el DER, tenemos 3 entidades, la _entidad_ CLIENTE, FACTURA y PRODUCTO, las cuales tienen sus respectivos _atributos_. En el caso de   la entidad CLIENTE, esta tiene por atributos id_cliente (primary key, luego veremos qué es), nombre, apellido, dirección,               fecha_nacimiento, telefono, email y categoría. FACTURA, tiene num_factura, id_cliente (foreign key, luego veremos qué es) este sería     el atributo por el cúal la entidad CLIENTE y la entidad FACTURA se relacionan, bueno siguiendo con los atributos, fecha e id_producto,   acá pasa lo mismo, FACTURA se relaciona con PRODUCTO por medio de este atributo ¿Por qué necesito relacionar esto? bueno, pensemos un   poco, ¿Qué datos necesito en una factura? ¿Qué debe conocer una factura para poder mostrarme la cuenta de todo?, necesita el producto,   de hecho una factura me muestra los productos y listo pero en una base de datos no me conviene cargar directamente en FACTURA, nombre   de producto, valor, cantidad, etc, ¿Por qué no me conviene? Porque al llenar tantos datos uso recursos de más, hago más pesada la BD y   con ello lenta, entonces nos abstraemos y solo guardamos un atributo por el cuál dos entidades se van a relacionar y por medio de ese   atributo, voy a tener cuando lo necesite, los datos de ese producto en una factura. Con ese id_producto, al conocerlo, si queremos más   detalle de ese producto, nos basta solo con su id, este nos ayudaría a traer sus demás atributos,por ejemplo nombre, precio, stock,     etc.		
  		
  **_Acá hay un video en el cuál van creando un DER._**		
   [Modelo entidad-relación](https://www.youtube.com/watch?v=bxdKRHgLTSg) 		
 	
## Claves		
 		
**1. Clave primaria (PK)**		
 
   Es un campo o a una combinación de campos que identifica de forma única a cada fila de una tabla. Una clave primaria comprende de        esta   manera una columna o conjunto de columnas. No puede haber dos filas en una tabla que tengan la misma clave primaria.		
 		
**2. Clave foránea (FK)**		
		
   Es una limitación referencial entre dos tablas. La clave foránea identifica una columna o grupo de columnas en una tabla (tabla hija    o referendo) que se refiere a una columna o grupo de columnas en otra tabla (tabla maestra o referenciada). Las columnas en la tabla    referendo deben ser la clave primaria u otra clave candidata en la tabla referenciada.		
		
# Primeros pasos con una base de datos		

### Instalación de motor de base de datos		
		
Instalar un motor de base de datos. Sepan que hay gran variedad y se eligen en base a nuestras necesidades y requerimientos. En este     caso encontrarán los pasos para instalar y trabajar con MySQL Workbench. 		
[Descargar MySQL acá](http://dev.mysql.com/get/Downloads/MySQLInstaller/mysql-installer-community-5.7.11.0.msi)		
Instalar el MySQL en la configuracion Developer, ahí pueden crear ustedes el usuario y contraseña que quieran, o tomar como             sugerencia User: root pass:admin	

Una vez que se haya instalado, abren el workbench y verán algo así:

![Inicio de workbench](http://enriqueincioch.azurewebsites.net/wp-content/uploads/2015/05/MySQLAzure04.png)

En ese panel verán todas las conexiones que vayan creando, en este caso, solo verán una pero pueden ir creando más en ese signo más "+" que está marcado en rojo.

Cuando se hace clic en la conexión les va a pedir la contraseña, escriben "admin" o la que hayan elegido. Luego verán esto:

![Primera vista - Query](http://wb.fabforce.eu/wp-content/uploads/Screen-Shot-2013-06-14-at-6.58.22-PM-800x515.png)
	
### Crear una tabla (CREATE TABLE...)		

Ahora, una vez que está la base instalada, tomemos como ejemplo un negocio, uno de ventas de productos del cuál queremos guardar los     datos de los clientes junto con la facturación correspondiente.		
		
Pensemos un momento en qué datos deberíamos guardar...		

En el caso del cliente, necesitaremos datos como:		
- Nombre 		
- Apellido		
- Nro de Cuit		
- Dirección		
- Código de provincia		
- Ciudad		
- Código postal		
- Teléfono		
		
### Crear base de datos (CREATE DATABASE...)		

Antes de crear la tabla para clientes, tenemos que crear la base de datos dónde se van a alojar las tablas. El código que necesitamos    para crear la base es CREATE DATABASE nombreDeLaBase. Para el ejemplo, quedaría algo así:		

Sintaxis
`CREATE DATABASE BDPTF;`		
		
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
		
### Insertar datos (INSERT)

- La sentencia INSERT, inserta datos en tablas existentes.
- Se puede usar la palabra clave DEFAULT para poner una columna a su valor por defecto de forma explícita. (Nuevo en MySQL 4.0.3.) Esto   hace más sencillo escribir sentencias INSERT que asignan valores a casi todas las columnas, porque permite la escritura de una lista     VALUES incompleta, que no incluye un valor para cada columna de la tabla. En otro caso, se debería escribir la lista de nombres de       columnas correspondiente a cada valor en la lista VALUES.
- En las columnas que tienen tipo de dato con valor autoincremental se escribe el campo como NULL y el motor incrementará el valor         correspondiente. 
- Si no se especifica una lista de columnas para INSERT ... VALUES, se deben proporcionar valores para **TODAS** las columnas en la       lista VALUES(), además estos valores deben ir en el mismo orden que tienen las columnas.

Se pueden insertar datos de la sgte forma:

Sintaxis
```
INSERT INTO nombreDeLaTabla (column1, column2, column3,...) 
VALUES (val1, val2,val3,...);
```
O...
```
INSERT INTO nombreDeLaTabla 
VALUES (val1, val2,val3,...);
```
O... varias filas en un solo insert:
```
INSERT INTO nombreDeLaTabla 
VALUES (val1, val2,val3,...),
VALUES (val1, val2,val3,...),
VALUES (val1, val2,val3,...);
...
```

### Actualizar de datos (UPDATE)

- La sentencia UPDATE se utiliza para actualizar los registros existentes en una tabla.
- La cláusula WHERE especifica el registro o registros que deben actualizarse. Si se omite la cláusula WHERE, todos los registros serán   actualizados.

Sintaxis

```
UPDATE nombreDeTabla
SET column=val
WHERE unaColumna = valor;
```
También se puede modificar más de una columna por vez

```
UPDATE nombreDeTabla
SET column1=val1, column2=val2,...
WHERE unaColumna = valor;
```

### Eliminar filas (DELETE)	

- La sentencia DELETE se utiliza para eliminar filas en una tabla.
- La cláusula WHERE especifica el registro o registros que se deben eliminar. Si se omite la cláusula WHERE, todos los registros serán     borrados

Sintaxis

```
DELETE FROM nombreDeTabla
WHERE column=valor;
```

```
DELETE FROM nombreDeTabla
WHERE column1=valor1 AND olumn=valor2;
```

### Eliminar tabla (DROP)

La sentencia DROP TABLE se utiliza para eliminar una tabla.

```
DROP TABLE nombreDeTabla
```

### Eliminar datos, NO la tabla (TRUNCATE)

La sentencia TRUNCATE sirve para eliminar datos de una tabla sin eliminar la tabla en sí.

Sintaxis
```
TRUNCATE TABLE nombreDeTabla
```

### Agregar, eliminar o modificar columnas (ALTER TABLE)

La sentencia ALTER TABLE sirve para agregar, eliminar o modificar **COLUMNAS** en una tabla **EXISTENTE**

Para agregar una columna:

Sintaxis
```
ALTER TABLE nombreDeTabla
ADD nombreColumna tipoDeDato
```

Para eliminar una columna:

Sintaxis
```
ALTER TABLE nombreDeTabla
DROP COLUMN nombreColumna
```

Para modificar el tipo de datos de una columna:

Sintaxis
```
ALTER TABLE nombreDeTabla
MODIFY COLUMN nombreColumna tipoDeDato
```

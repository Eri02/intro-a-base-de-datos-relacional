# Modelado de datos - DER (Diagrama de entidad-relación)		
 		
### ¿Qué es un DER?		
  Es una herramienta que permite modelar las entidades de un sistema de información. Este diagrama permite representar las entidades más   importantes, sus relaciones y atributos.
 	
  Los DER modelan los requisitos de almacenamiento de datos de una organización con tres componentes principales: **entidades,             atributos y relaciones**.		

**1. Entidades:** Representan personas, lugares, elementos, eventos, o conceptos.		
     Una entidad puede ser un objeto con existencia física como: una persona, un animal, una casa, etc. (entidad concreta); o un objeto      con existencia conceptual como: un puesto de trabajo, una asignatura de clases, un nombre, etc. (entidad abstracta).		
	
**2. Atributos:** Representan propiedades o cualidades descriptivas de una entidad. Estos son también conocidos como elementos de            datos.		
     Una entidad está descrita y se representa por sus características o atributos. Por ejemplo, la entidad **Persona** tiene por            atributos: Nombre, Apellido, Género, Estatura, Peso, Fecha de nacimiento.		
      		
**3. Relaciones:** Representan los enlaces entre las entidades.		
  		
### Restricciones		

**a) Cardinalidad**		
    
  Dado un conjunto de relaciones en el que participan dos o más conjuntos de entidades, la correspondencia de cardinalidad indica el       número de entidades con las que puede estar relacionada una entidad dada.		
    
  Dados los conjuntos de entidades A y B, la correspondencia de cardinalidades puede ser:		
 		
 _Uno a Uno:_ (1:1) Una entidad A se relaciona con solo un registro en una entidad B. (ejemplo dos entidades, profesor y                   departamento, con llaves primarias, código_profesor y jefe_depto respectivamente, un profesor solo puede ser jefe de un departamento     y un departamento solo puede tener un jefe).		
    		
 _Uno a muchos:_ (1:N) Una entidad en A se relaciona con cero o muchos registros en una entidad B. Pero los registros de B solamente       se relacionan con un registro en A. (ejemplo: dos entidades, vendedor y ventas, con llaves primarias, código_vendedor y venta,           respectivamente, un vendedor puede tener muchas ventas pero una venta solo puede tener un vendedor).		
 		
 _Muchos a Uno:_ (N:1) Una entidad en A se relaciona exclusivamente con una entidad en B. Pero una entidad en B se puede relacionar       con 0 o muchas entidades en A (ejemplo empleado-centro de trabajo).		
		
 _Muchos a Muchos:_ (N:M) Una entidad en A se puede relacionar con 0 o con muchas entidades en B y viceversa (ejemplo asociaciones-       ciudadanos, donde muchos ciudadanos pueden pertenecer a una misma asociación, y cada ciudadano puede pertenecer a muchas   		   asociaciones    distintas).		
 
**b) Modalidad**		
   
  Dado un conjunto de relaciones R en el cual participa un conjunto de entidades A, dicha participación puede ser de dos tipos:				
 _Obligatoria:_ Cuando cada entidad en A participa en al menos una relación de R.		
 _Opcional:_ Cuando al menos una entidad en A NO participa en alguna relación de R.		
    		
 		
 ![DER](http://www.hermosaprogramacion.com/wp-content/uploads/2014/07/entidad-relacion-1.jpg)		
   		
Ahora, para que entendamos que son todas esas cosas que mecionamos, entidades, atributos, relaciones, ect, tenemos este pequeño DER. 			
En el DER, tenemos 3 entidades, la _entidad_ CLIENTE, FACTURA y PRODUCTO, las cuales tienen sus respectivos _atributos_. En el caso de  la entidad CLIENTE, esta tiene por atributos id_cliente (primary key, luego veremos qué es), nombre, apellido, dirección,               fecha_nacimiento, telefono, email y categoría. FACTURA, tiene num_factura, id_cliente (foreign key, luego veremos qué es) este sería     el atributo por el cúal la entidad CLIENTE y la entidad FACTURA se relacionan, bueno siguiendo con los atributos, fecha e id_producto,   acá pasa lo mismo, FACTURA se relaciona con PRODUCTO por medio de este atributo ¿Por qué necesito relacionar esto? bueno, pensemos un   poco, ¿Qué datos necesito en una factura? ¿Qué debe conocer una factura para poder mostrarme la cuenta de todo?, necesita el producto,   de hecho una factura me muestra los productos y listo pero en una base de datos no me conviene cargar directamente en FACTURA, nombre   de producto, valor, cantidad, etc, ¿Por qué no me conviene? Porque al llenar tantos datos uso recursos de más, hago más pesada la BD y   con ello lenta, entonces nos abstraemos y solo guardamos un atributo por el cuál dos entidades se van a relacionar y por medio de ese   atributo, voy a tener cuando lo necesite, los datos de ese producto en una factura. Con ese id_producto, al conocerlo, si queremos más   detalle de ese producto, nos basta solo con su id, este nos ayudaría a traer sus demás atributos,por ejemplo nombre, precio, stock,     etc.		
  		
**_Acá hay un video en el cuál van creando un DER._**		
[Modelo entidad-relación](https://www.youtube.com/watch?v=bxdKRHgLTSg) 
   
### Aplicación
   
Se pide:
1. Realizar el DER, indicando la cardinalidad, las claves primarias y foráneas.
2. Crear las tablas que sean convenientes según los siguientes datos.

Se tiene un emprendimiento, el cuál ofrece productos a la venta. Actualmente, se venían guardando los datos de los clientes en un documento, datos como, los datos personales de los clientes, las facturas y su detalle. El emprendimiento cada día va generando más ingresos, produciento más productos para la venta, de tal modo que la cantidad de clientes ha ido creciendo y se necesita   otra manera de guardar sus datos y sus compras. Además, se quiere premiar a los clientes que más consumo realicen pero al tener sus datos guardados en un simple documento se hace muy complicado procesar sus datos para ver quiénes son los clientes como más compras realizadas.
Por este motivo, se pensó  y se decidió que lo mejor sería usar una base de datos relacional (En este caso, MySQL). 

Se sabe que se necesita guardar datos relevante para su posterior análisis, para esto se pensó cuáles serían estos datos y se muestran acontinuación:   

**Clientes**

Nombre, apellido, nro de Cuit, , teléfono, dirección, ciudad, barrio, código postal.

**Facturas**

Factura, fecha , fechaVencimiento, productos.

Tal como se ve, parece que se necesita poco, sin embargo, pensemos un poco, por cada cliente se guardaran los datos mencionados pero en algunos campos se generarán datos repetidos, los cuales no quiere decir que estén mal pero implicarán mayor uso de recursos. ¿A qué se refiere esto? Cada campo se guarda con un tipo de datos distinto (cada uno pide espacio a memoria), los nombres y apellidos son caracteres para los cuales debemos de asumir un máximo de espacio requerido porque no se puede saber cuántos caracteres se van a necesitar, por ese motivo decimos que el tipo de datos será VARCHAR y la cantidad máxima 60. En el caso de nombre y apellido del cliente, para la entidad cliente, esto es algo que no se puede evitar pero en el caso de los barrios sí. ¿De qué nos sirve pedir espacio para los nombres de los barrios? Si en muchos casos los barrios se van a repetir ¿No estaría pidiendo espacio y usando recursos de más? Sí, así es, si guardamos en la tabla clientes el nomnbre de cada barrio por cada cliente, estaríamos usando espacio de forma ineficiente, esto a largo plazo, es perjudicial, ya que mientras más datos tengamos, más recursos pedimos y usamos, esto ralentiza la base de datos y en este caso de forma innesaria. La solución a este problema se conoce como _Normalización_ [Más info acá](https://es.wikipedia.org/wiki/Normalizaci%C3%B3n_de_bases_de_datos), en palabras simples, iremos separando en otras tablas ciertos datos que serán repetitivos, como los barrios, de tal manera que en vez de poner el nombre del barrio al que pertenece el cliente, se le asignará un código (número) ¿Por qué? Porque se consumen menos recursos si se le asigna un número que si le agina nombre por nombre de barrio a cada cliente. Mencionado esto se procede a separar datos que se consideren repetitivos.

Clientes guardaría los siguientes datos:
  
**Clientes**

código de cliente, Nombre, apellido, nro de Cuit, , teléfono, dirección, ciudad, código de barrio, código postal. Nótese que se va a guardar códgio de barrio y no el nombre del barrio.

En el caso de las facturas para algo similar con los productos, conviene más manejar los datos los productos con algún código de producto que guardar nombre por nombre. En este caso también podemos separar algunos datos más para su mejor procesamiento. 
En facturas se va a guardar, número de factura, fecha, fecha de vencimiento y código de cliente (Por lo mencionado unos párrafos más arriba, es más conveniete relacionar cada factura con el código del cliente que con el nombre y apellido). ¿Dónde quedan los productos, el precio del producto, la cantidad? Bueno, esos datos los vamos a guardar en Facturas Detalle.

**FacturasDetalle**

número de factura,nro de ítem, código de producto, cantidad, importe.

Algo importante es que ese nro de factura, es el mismo que en Facturas, si no, no podrían manipularse si no tienen relación alguna. Lo mismo para código de producto, ese código de producto debe existir en la tabla Productos, con ese código de producto se podrá hacer el cálculo correspondiente al importe que saldrá al tomar el código de producto para consultar el precio unitario en productos, entonces, con la "cantidad" que se tiene en factura detalle y el "precio unitario" en Productos, se hace la cuenta y se tendrá el importe total por producto.

Entonces, las entidades con sus atributos quedarán de la siguiente manera:

**Clientes**

código de cliente, Nombre, apellido, nro de Cuit, , teléfono, dirección, ciudad, código de barrio, código postal.

**Facturas**

Factura, fecha , fechaVencimiento, código de cliente.

**FacturasDetalle**

número de factura,nro de ítem, código de producto, cantidad, importe.

**Productos**

Código de producto, nombre de producto, precio unitario.

**Barrios**

Código de barrio, nombre de barrio.

Acontinuación se deja el DER correspondiente a la solución de este problema.


![DER Solución](https://github.com/Eri02/intro-a-base-de-datos-relacional/blob/gh-pages/BDPTFDER.png)

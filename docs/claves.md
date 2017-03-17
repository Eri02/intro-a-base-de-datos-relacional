## Clave primara y clave foránea		
 		
[Modelo Relacional](http://4.bp.blogspot.com/-tUwf6nU-FLM/UWzga4Ymt7I/AAAAAAAAAIg/8R8GNhcOej8/s1600/propiedades+entidad+relacion.png)
		
**1. Clave primaria (PK)**		
 
Es un campo elegido para identificar de forma única a cada fila (registro) de una tabla. La elección de la clave primaria es muy          importante ya que se utiliza para distinguir un registro con el fin de que se pueda  tener acceso a ellos, organizarlos y manipularlos.
Gracias a la elección correcta de una  clave primaria o primary key se asegura que al manipular los registros, no se esté manipulando     repetidos, o sea que, se evita redundancia de datos. 
  
¿Cómo elegir una primary key?

Se tiene que asegurar que al elegir ese campo, el registro al cuál pertenece sea único, para esto se pueden revisar todos los campos y ver cuál aseguraría que esto se cumpla, por ejemplo el DNI, un legajo, etc. Sin embargo, para un mejor manejo de datos se suelen crear los campos identificadores (ID) pero no solo se trata de crear un ID y ya, se trata de asegurarse que sea único, para esto cada motor de base de datos cuenta con constraints o restricciones (PK,FK, NOT NULL, UNIQUE, CHECK, DEFAULT).

Para la aplicación mencionada, se está usando en cada tabla el campo identificador.

**Clientes**: cli_idCliente, pro_idProducto, f_idFactura, etc.

Algo más de [constraints](http://www.1keydata.com/es/sql/sql-constraint.php)
 		
**2. Clave foránea (FK)**		
		
La clave foránea o foreign key identifica una columna o grupo de columnasen una tabla (tabla hija o referendo) que se refiere a una columna o grupo de columnas en otra tabla (tabla padre o referenciada). Las columnas en la tabla referendo deben ser la clave primaria en la tabla. En palabras más simples, es la clave por la cuál se van a relacionar las tablas.

Por ejemplo en el DER de la aplicación tenemos:

[DER](https://github.com/Eri02/intro-a-base-de-datos-relacional/blob/gh-pages/BDPTFDER.png)

Veamos la tabla **Clientes** y **Facturas** tenemos que _cli_idCliente_ y _f_idFactura_ son primary key, además en facturas hay un campo llamado f_idCliente, este campo hace referencia a la tabla clientes, este campo es primary key en la tabla **Clientes**, este campo es clave foránea en la tabla **Factura**.

En el DER no se aprecia tan claramente, acontinuación se deja el código de la creación de la tabla:

**Cientes**

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

**Facturas**

```

CREATE TABLE Facturas
(f_idFactura INTEGER PRIMARY KEY AUTO_INCREMENT UNIQUE,
f_fechaFactura DATE NOT NULL,
f_idCliente INTEGER NOT NULL REFERENCES Clientes,
f_fechaVencimiento DATE NOT NULL CHECK (fechaVencimiento >= fechaFactura)
);

```

De esta misma forma se deben ir creando las claves para las tablas **Productos, Barrios y FacturasDetalle**

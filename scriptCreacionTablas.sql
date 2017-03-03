USE BDPTF; /*Indico qué base de datos usar*/

/*Creación de tablas*/

CREATE TABLE Barrios
(codBarrio SMALLINT PRIMARY KEY AUTO_INCREMENT,
nombreBarrio VARCHAR(60)
);

CREATE TABLE Productos
(codProducto SMALLINT PRIMARY KEY,
nombreProducto VARCHAR(60) NOT NULL,
precioUnitario NUMERIC(12,2)
);

CREATE TABLE Clientes
(codCliente INTEGER PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(60) NOT NULL,
apellido VARCHAR(60) NOT NULL,
nroCuit BIGINT UNIQUE,
empresa VARCHAR(60), /* eliminar columna*/ 
direccion1 VARCHAR(60),
codBarrio SMALLINT REFERENCES Barrios,
ciudad VARCHAR(60),
codPostal VARCHAR(10),
telefono VARCHAR(60)
);

/* codCliente, nombre, apellido, nroCuit, empresa, direccion1, codPronvincia, ciudad, codPostal, telefono */

CREATE TABLE Facturas
(nroFactura INTEGER PRIMARY KEY AUTO_INCREMENT,
fechaFactura DATE NOT NULL,
codCliente INTEGER NOT NULL REFERENCES Clientes,
fechaVencimiento DATE NOT NULL CHECK (fechaVencimiento >= fechaFactura)
);

CREATE TABLE FacturasDetalle
(nroFactura INTEGER REFERENCES Facturas,
nroItem SMALLINT,
codProducto INTEGER REFERENCES Productos,
precioUnitario NUMERIC(12,2),
cantidad INTEGER NOT NULL CHECK (cantidad >0),
PRIMARY KEY (nroFactura,nroItem)
);

/* ********************************************************************************************************* */
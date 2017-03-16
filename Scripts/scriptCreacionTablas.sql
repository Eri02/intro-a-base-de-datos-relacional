USE BDPTF; /*Indico qué base de datos usar*/

/*Creación de tablas*/

CREATE TABLE Barrios
(ba_codBarrio SMALLINT PRIMARY KEY AUTO_INCREMENT,
ba_nombreBarrio VARCHAR(60)
);

CREATE TABLE Productos
(pro_codProduto SMALLINT PRIMARY KEY,
pro_nombreProducto VARCHAR(60) NOT NULL,
pro_precioUnitario NUMERIC(12,2)
);
USE BDPTF;
CREATE TABLE Clientes
(cli_codCliente INTEGER PRIMARY KEY AUTO_INCREMENT,
cli_nombre VARCHAR(60) NOT NULL,
cli_apellido VARCHAR(60) NOT NULL,
cli_nroCuit BIGINT UNIQUE,
cli_direccion VARCHAR(60),
cli_codBarrio SMALLINT REFERENCES Barrios,
cli_ciudad VARCHAR(60),
cli_codPostal VARCHAR(10),
cli_telefono VARCHAR(60)
);

/* codCliente, nombre, apellido, nroCuit, empresa, direccion1, codPronvincia, ciudad, codPostal, telefono */

CREATE TABLE Facturas
(f_nroFactura INTEGER PRIMARY KEY AUTO_INCREMENT,
f_fechaFactura DATE NOT NULL,
f_codCliente INTEGER NOT NULL REFERENCES Clientes,
f_fechaVencimiento DATE NOT NULL CHECK (fechaVencimiento >= fechaFactura)
);
USE BDPTF;
CREATE TABLE FacturasDetalle
(fdet_nroFactura INTEGER REFERENCES Facturas,
fdet_nroItem SMALLINT,
fdet_codProducto INTEGER REFERENCES Productos,
fdet_precioUnitario NUMERIC(12,2),
fdet_cantidad INTEGER NOT NULL CHECK (cantidad >0),
PRIMARY KEY (fdet_nroFactura,fdet_nroItem)
);

/* ********************************************************************************************************* */
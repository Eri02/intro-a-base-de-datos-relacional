CREATE DATABASE BDPTF;

USE BDPTF;

CREATE TABLE Provincias
(codTipoLlamado SMALLINT PRIMARY KEY,
nombreProvincia VARCHAR(60)
);

CREATE TABLE Productos
(codProducto SMALLINT PRIMARY KEY,
nombreProducto VARCHAR(60) NOT NULL,
precioUnitario NUMERIC(12,2)
);

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

CREATE TABLE Facturas
(nroFactura INTEGER PRIMARY KEY,
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
)
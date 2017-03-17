
/*CREATE TABLE Barrios
(ba_idBarrio SMALLINT PRIMARY KEY AUTO_INCREMENT UNIQUE,
ba_nombreBarrio VARCHAR(60)
);
*/

USE BDPTF;

INSERT INTO Barrios VALUES
(NULL, 'Agronomía'),
(NULL, 'Almagro'),
(NULL, 'Balvanera'),
(NULL, 'Barracas'),
(NULL,'Belgrano'),
(NULL,'Boedo'),
(NULL,'Caballito'),
(NULL,'Chacarita'),
(NULL,'Coghlan'),
(NULL,'Colegiales'),
(NULL,'Constitución'),
(NULL,'Flores'),
(NULL,'Floresta'),
(NULL,'La Boca'),
(NULL,'La Paternal'),
(NULL,'Liniers'),
(NULL,'Mataderos'),
(NULL,'Monte Castro'),
(NULL,'Monte Castro'),
(NULL,'Montserrat'),
(NULL,'Nueva Pompeya'),
(NULL,'Nuñez'),
(NULL,'Palermo'),
(NULL,'Parque Chacabuco'),
(NULL,'Parque Chas'),
(NULL,'Parque Patricios'),
(NULL,'Puerto Matadero'),
(NULL,'Recoleta'),
(NULL,'Retiro'),
(NULL,'Saavedra'),
(NULL,'San Cristóbal'),
(NULL,'San Nicolás'),
(NULL,'San Telmo'),
(NULL,'Versalles'),
(NULL,'Villa Crespo'),
(NULL,'Villa Devoto'),
(NULL,'Villa General Mitre'),
(NULL,'Villa Lugano'),
(NULL,'Villa Luro'),
(NULL,'Villa Ortúzar'),
(NULL,'Villa Pueyrredón'),
(NULL,'Villa Real'),
(NULL,'Villa Riachuelo'),
(NULL,'Villa Santa Rita'),
(NULL,'Villa Soldati'),
(NULL,'Villa Urquiza'),
(NULL,'Villa del Parque'),
(NULL,'Vélez Sarsfield');

SELECT * FROM Barrios
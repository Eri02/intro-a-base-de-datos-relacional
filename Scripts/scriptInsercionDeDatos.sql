USE BDPTF;

/*Inserción de datos*/

/* codCliente, nombre, apellido, nroCuit, direccion1, codPronvincia, ciudad, codPostal, telefono */
INSERT INTO Clientes VALUES
(1,'EDUARDO CLEMENTE','AZCARATE', NULL, 'EL MAESTRO', NULL,'CABA', NULL, NULL);

INSERT INTO Clientes VALUES
(NULL,'ANA','PERSICO', NULL, 'EL MAESTRO', NULL,'CABA', NULL, NULL); /*Inserto datos sin columna codCliente, al ser autoincremtal se inserta solo el código sgte*/

INSERT INTO Clientes VALUES /*Inserto varios registros juntos*/
(NULL,'OMAR','TONIOLO', NULL, '', NULL,'CABA', NULL, NULL),
(NULL,'NORMA','FUCCENECO', NULL, '', NULL,'CABA', NULL, NULL),
(NULL,'MARIA','BORGO', NULL, '', NULL,'CABA', NULL, NULL),
(NULL,'JORGE','RODRIGEZ', NULL, '', NULL,'CABA', NULL, NULL),
(NULL,'JULIO','OTAZO', NULL, '', NULL,'CABA', NULL, NULL);

INSERT INTO Clientes VALUES
(NULL,'ROBERTO','VERON', NULL, 'LIBERTADOR 458', NULL,'CABA', NULL, NULL),
(NULL,'LUIS','GUERINI', NULL, 'ESPAÑA 123', NULL,'CABA', NULL, NULL),
(NULL,'AIDA','TASSO', NULL, 'ALVEAR 789', NULL,'CABA', NULL, NULL);
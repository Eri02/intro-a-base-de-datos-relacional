USE BDPTF; /*Indica qué BD usar*/

/* Elimino columna*/
ALTER TABLE Clientes DROP COLUMN direccion2;  
ALTER TABLE Clientes DROP COLUMN empresa;

/*Modifico datos*/
/*En la tabla Clientes se va a modificar el campo direccion1 dónde codCliente sea igual a 2*/
UPDATE Clientes 
    SET direccion1 = 'COLON'
    WHERE codCliente = '2';

/*En la tabla Clientes se va a modificar el campo direccion1 con la dirección SALTA dónde codCliente esté vacío */   
UPDATE clientes
	SET direccion1 = 'SALTA'
    WHERE direccion1 = '';
    
ALTER TABLE Clientes
	MODIFY COLUMN nroCuit INT;
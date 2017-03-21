### Insertar datos (INSERT)

- Mediante la sentencia INSERT se realiza la carga de datos a las tablas existentes.
- En las columnas que tienen tipo de dato con valor autoincremental se escribe el campo como NULL y el motor incrementará el valor         correspondiente. 
- Si no se especifica una lista de columnas para INSERT ... VALUES, se deben proporcionar valores para **TODAS** las columnas en la       lista VALUES(), además estos valores deben ir en el mismo orden que tienen las columnas.

Se pueden insertar datos de la siguiente forma:

Especificando nombre de columna y el respectivo valor a insertar, registro por registro...

```
INSERT INTO nombreDeLaTabla (column1, column2, column3,...) 
VALUES (val1, val2,val3,...);
```

Omitiendo el nombre de la columna pero colocando en orden los valores a insertar...

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
Por ejemplo en la aplicación propuesta se fueron insertando los datos correspondientes a los productos de la siguiente manera:

```
INSERT INTO Productos VALUES
(NULL,'MERCADERIAS VARIAS', 290.90),
(NULL,'COMISION " CLARO"',104850.00),
(NULL,'VENTAS DE LANA Y CUEROS',19409.99),
(NULL,'HACIENDA OVINA',35477.56),
(NULL,'ADAMS X 20u. MENTA',0.00),
(NULL,'HALLS X12 STRONG',6.26),
(NULL,'ADAMS X 20u.TUTTIF.',4.00),
(NULL,'HALLS FREE X12 MENTOL',6.92),
(NULL,'CHICLE CLORETS blist. X 12u.',3.00),
(NULL,'ADAMS X 20u. MENTOL',4.00)
...
```
Recordermos que la tabla Productos tiene las siguientes columnas: pro_idProduto, pro_nombreProducto, pro_precioUnitario, nótese que los valores están escritos manteniendo ese orden para evitar que el motor dé error y no cargue los datos. Además, en el primer campo, está en NULL, es porque se quiere que se vaya insertando el campo pro_idProducto de forma automática sin tener que colocar a mano número por número. El motor detecta que ese campo es autoincremental, detecta null, e incrementa sin problema.

### Actualizar de datos (UPDATE)

- Mediante esta sentencia se puede ir actualizando aquellos datos que fueron cambiando, por ejemplo, si tenemos un listado de precios,     que como tales siempre cambian, haciendo un update de la columna correspondiente a precios se puede actualizar sus valores.
- La cláusula WHERE especifica el registro o registros que deben actualizarse. Si se omite la cláusula WHERE, todos los registros serán   actualizados.

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

```
TRUNCATE TABLE nombreDeTabla
```

### Agregar, eliminar o modificar columnas (ALTER TABLE)

La sentencia ALTER TABLE sirve para agregar, eliminar o modificar **COLUMNAS** en una tabla **EXISTENTE**

Para agregar una columna:

```
ALTER TABLE nombreDeTabla
ADD nombreColumna tipoDeDato
```

Para eliminar una columna:

```
ALTER TABLE nombreDeTabla
DROP COLUMN nombreColumna
```

Para modificar el tipo de datos de una columna:

```
ALTER TABLE nombreDeTabla
MODIFY COLUMN nombreColumna tipoDeDato
```

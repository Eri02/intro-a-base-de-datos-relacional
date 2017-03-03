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

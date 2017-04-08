# Consultas

## ¿Qué es una query?

Una query es una consulta, es algo similar a hacer preguntas pero no de esa forma literalmente. Estas consultas se realizan por medio de un lenguaje en específico, SQL (structured query language). 

### ¿Qué permite realizar una query?

Permite consultar, recuperar información de interés de una base de datos, así como también hacer cambios(insert, update, truncate, etc) sobre ella.

## Realizando consultas

Para esto:
- Abir Mysql
- Ir a File, new query tab
- Una vez en ese panel, se pueden realizar las consultas requeridas.

Ahora, se quiere conocer todos los barrios que contiene la base de datos BDPTF, para conocerlos todos sin excepción, hacemos lo siguiente:

`SELECT * FROM BDPTF.barrios`

o luego de hacer un USE BDPTF, solo bastaría con 

`SELECT * FROM barrios`

- **SELECT** le indica al motor qué se quiere seleccionar.
- El * (asterisco) sirve para indicar que queremos que devuelva todos los datos.
- **FROM** le indica al motor de dónde traer los datos, de qué tabla debe recuperarlos.

Se pide conocer las facturas para un determinado cliente

```
select f_idCliente, f_idFactura from facturas
where f_idCliente = 1
```

Pero... ¿Cuál es el nombre de ese cliente? No sé, no recuerdo, no tengo porqué saber quién es el cliente con id = 1, para eso se tiene que hacer una consulta, sabiendo que los nombres y apellidos están en la tabla clientes...

```
select cli_nombre, cli_apellido from clientes
where cli_idCliente = 1
```

Quiero saber todos los datos de ese cliente...

```
select * from clientes
where cli_idCliente = 1

```

No puedo identificar el barrio en el que vive, ese cli_idBarrio no me dice nada...

```
select cli_nombre, cli_apellido, ba_nombreBarrio from clientes, barrios
where cli_idCliente = 1 and cli_idBarrio = ba_idBarrio

```

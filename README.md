# Introducción a las Bases de Datos Relacionales
	
## ¿Qué es una base de datos relacional?		
		
  Una base de datos es un sistema formado por un conjunto de datos almacenados en discos que permiten el acceso directo a ellos.
  
  Pensemoslo como un almacén, en un almacén en el cual guardamos cosas. En este almacén guardaremos todo aquello que consideremos  	   importante, necesario, algo que se necesita que perdure en el tiemp, ya que estos datos serán utilizados para el análisis requerido     según sea el caso. 
  
  En una base de datos, los datos se guardan de forma organizada, de esta manera será más fácil acceder a ellos cada vez que sea           necesario.
    		
### **¿De qué forma utlizamos los datos guardados?**		
 		
  A través de consultas (query), se van a poder realizar la manipulación y/o análisis de datos. Estas consultas se realizan a través de   un lenguaje en especifico, ese lenguaje se llama SQL(Structured Query Language - Lenguaje de consultas estructurado).		
    		
 Ya que vamos a tratar sobre una base de datos relacional, esta tiene ciertas características:		
    		
- Una base de datos se compone de varias tablas o relaciones.		
- No pueden existir dos tablas con el mismo nombre ni registro.			
- Cada tabla es a su vez un conjunto de campos (columnas) y registros (filas).			
- La relación entre una tabla padre y un hijo se lleva a cabo por medio de las claves primarias y claves foráneas (o ajenas).		
- Las claves primarias son la clave principal de un registro dentro de una tabla y estas deben cumplir con la integridad de datos.
- Las claves ajenas se colocan en la tabla hija, contienen el mismo valor que la clave primaria del registro padre; por medio de estas 	   se hacen las formas relacionales.		

## ¿Para qué sirve una base de datos? ¿Cuándo usar una base de datos?

  Cuando tengamos que manejar y guardar mucha información. ¿En qué situaciones se usan las bases de datos? Por ejemplo, en empresas de     telefonía que necesitan guardar información de sus clientes, datos personales, facturación; cada vez que creamos un usuario en alguna   web, esa web necesita una base de datos para guardar nuestros usuarios y contraseñas.	

**Antes de empezar con una BD, empecemos por modelarla, para eso necesitamos _Un DER_**		

## ¿Qué se va a tratar?

La idea es dar los primeros bases con una base de datos relacional, estos pasos se irán dando sobre un ejemplo. Se van a manejar datos de clientes, de los cuales queremos guardar sus datos personales, factura, el detalle de estas, los productos, etc.

## A quién está orientado este material

Está orientado a todo aquel que quiera dar sus primeros pasos en bases de datos relacionales.

## Conocimientos previos

- Contar con manejo básico de una pc.
- HTML básico (Para saber como armar un formulario de logueo simple).
- Tener instalado un servidor (Para enviar los datos, la instalación se encontrará más abajo).

## Contenidos

1. [Instalación del motor de base de datos (MySQL)](https://eri02.github.io/intro-a-base-de-datos-relacional/docs/instalacion-bd.html)
2. [Modelado de datos - DER (Diagrama de entidad relación)](https://eri02.github.io/intro-a-base-de-datos-relacional/docs/modelado-DER.html)
3. [Claves](https://eri02.github.io/intro-a-base-de-datos-relacional/docs/claves.html)
4. [Creación de base de datos y tablas](https://eri02.github.io/intro-a-base-de-datos-relacional/docs/creacionBD-y-tablas.html)
5. [Inserción, modificación de datos y tablas](https://eri02.github.io/intro-a-base-de-datos-relacional/docs/insercion-y-modificacion.html)


## Referencias	

[Base de datos relacional](https://es.wikipedia.org/wiki/Base_de_datos_relacional)
[DER](https://es.wikipedia.org/wiki/Modelo_entidad-relaci%C3%B3n#Base_te.C3.B3rica_y_conceptual)
	
		

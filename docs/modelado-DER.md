# Modelado de datos - DER (Diagrama de entidad-relación)		
 		
### **¿Qué es un DER?**		

  Es una técnica de modelado de datos que crea una ilustración de las _entidades_ de un sistema de información y las _relaciones_ entre   las entidades.		
	
  Los DER modelan los requisitos de almacenamiento de datos de una organización con tres componentes principales: **entidades,             atributos y relaciones**.		

**1. Entidades:** Representan personas, lugares, elementos, eventos, o conceptos.		
     Una entidad puede ser un objeto con existencia física como: una persona, un animal, una casa, etc. (entidad concreta); o un objeto      con existencia conceptual como: un puesto de trabajo, una asignatura de clases, un nombre, etc. (entidad abstracta).		
	
**2. Atributos:** Representan propiedades o cualidades descriptivas de una entidad. Estos son también conocidos como elementos de            datos.		
     Una entidad está descrita y se representa por sus características o atributos. Por ejemplo, la entidad **Persona** tiene por            atributos: Nombre, Apellido, Género, Estatura, Peso, Fecha de nacimiento.		
      		
**3. Relaciones:** Representan los enlaces entre las entidades.		
  		
### Restricciones		
		
**a) Cardinalidad**		
    
   Dado un conjunto de relaciones en el que participan dos o más conjuntos de entidades, la correspondencia de cardinalidad indica el      número de entidades con las que puede estar relacionada una entidad dada.		
    
   Dados los conjuntos de entidades A y B, la correspondencia de cardinalidades puede ser:		
 		
  _Uno a Uno:_ (1:1) Una entidad A se relaciona con solo un registro en una entidad B. (ejemplo dos entidades, profesor y                  departamento, con llaves primarias, código_profesor y jefe_depto respectivamente, un profesor solo puede ser jefe de un departamento    y un departamento solo puede tener un jefe).		
    		
  _Uno a muchos:_ (1:N) Una entidad en A se relaciona con cero o muchos registros en una entidad B. Pero los registros de B solamente      se relacionan con un registro en A. (ejemplo: dos entidades, vendedor y ventas, con llaves primarias, código_vendedor y venta,          respectivamente, un vendedor puede tener muchas ventas pero una venta solo puede tener un vendedor).		
 		
  _Muchos a Uno:_ (N:1) Una entidad en A se relaciona exclusivamente con una entidad en B. Pero una entidad en B se puede relacionar        con 0 o muchas entidades en A (ejemplo empleado-centro de trabajo).		
		
  _Muchos a Muchos:_ (N:M) Una entidad en A se puede relacionar con 0 o con muchas entidades en B y viceversa (ejemplo asociaciones-        ciudadanos, donde muchos ciudadanos pueden pertenecer a una misma asociación, y cada ciudadano puede pertenecer a muchas   		    asociaciones    distintas).		
 
 **b) Modalidad**		
   
   Dado un conjunto de relaciones R en el cual participa un conjunto de entidades A, dicha participación puede ser de dos tipos:				
  _Obligatoria:_ Cuando cada entidad en A participa en al menos una relación de R.		
  _Opcional:_ Cuando al menos una entidad en A NO participa en alguna relación de R.		
    		
 		
  ![DER](http://www.hermosaprogramacion.com/wp-content/uploads/2014/07/entidad-relacion-1.jpg)		
   		
  Ahora, para que entendamos que son todas esas cosas que mecionamos, entidades, atributos, relaciones, ect, tenemos este pequeño DER. 			
  En el DER, tenemos 3 entidades, la _entidad_ CLIENTE, FACTURA y PRODUCTO, las cuales tienen sus respectivos _atributos_. En el caso de   la entidad CLIENTE, esta tiene por atributos id_cliente (primary key, luego veremos qué es), nombre, apellido, dirección,               fecha_nacimiento, telefono, email y categoría. FACTURA, tiene num_factura, id_cliente (foreign key, luego veremos qué es) este sería     el atributo por el cúal la entidad CLIENTE y la entidad FACTURA se relacionan, bueno siguiendo con los atributos, fecha e id_producto,   acá pasa lo mismo, FACTURA se relaciona con PRODUCTO por medio de este atributo ¿Por qué necesito relacionar esto? bueno, pensemos un   poco, ¿Qué datos necesito en una factura? ¿Qué debe conocer una factura para poder mostrarme la cuenta de todo?, necesita el producto,   de hecho una factura me muestra los productos y listo pero en una base de datos no me conviene cargar directamente en FACTURA, nombre   de producto, valor, cantidad, etc, ¿Por qué no me conviene? Porque al llenar tantos datos uso recursos de más, hago más pesada la BD y   con ello lenta, entonces nos abstraemos y solo guardamos un atributo por el cuál dos entidades se van a relacionar y por medio de ese   atributo, voy a tener cuando lo necesite, los datos de ese producto en una factura. Con ese id_producto, al conocerlo, si queremos más   detalle de ese producto, nos basta solo con su id, este nos ayudaría a traer sus demás atributos,por ejemplo nombre, precio, stock,     etc.		
  		
  **_Acá hay un video en el cuál van creando un DER._**		
   [Modelo entidad-relación](https://www.youtube.com/watch?v=bxdKRHgLTSg) 

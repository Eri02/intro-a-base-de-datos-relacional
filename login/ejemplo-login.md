# Login básico

## ¿Qué necesitamos para esto?

- Un editor de texto a elección (Sublime text, Atom, Notepad ++, etc).
- Descargar xampp
- MySQL (Ya lo tenemos por lo visto anteriormente).
- Conocimientosde php, html.

## ¿Qué haremos?

La idea es crear un simple formulario de registro de usuarios, una vez creado, este usuario se tendría que poder loguear sin problema,algo como esto:

![Registro](https://github.com/Eri02/intro-a-base-de-datos-relacional/blob/gh-pages/img/registro.png)

## ¿Qué es xampp?

Xampp es un servidor independiente, es de software libre, esto quiere decir que se puede descargar gratuitamente sin problemas.

Xampp, es una herramienta que permite probar los sitios webs de forma local a medida que se van desarrollando, por ejemplo cuando se quiere ver como va un index, basta con abrir el archivo en el navegador pero si se quiere probar que determinada web que se creó envíe ciertos datos a una base de datos, con solo abrir ese archivo .html no basta, en ahí cuando interviene xampp, se levanta el servidor y listo, con eso se pueden cargar datos en el navegador y verificar en la base de datos que efectivamente los datos se están enviando correctamente.

### Instalación

La instalación es simple, requiere descargar y ejecutar el instalador. Para descargarlo, el enlace está 
[Acá](https://www.apachefriends.org/es/index.html)

Recomendación: Revisar las preguntas frecuentes sobre xampp, [Acá](https://www.apachefriends.org/es/faq_windows.html)

## Empezando con xampp

Una vez que se ejecutó todo correctamente:

- Ir a la carpera dónde se instaló, por defecto se instala en C:\xampp, o dónde elijan ustedes.
- Una vez dentro de la carpeta xampp ir a la carpeta htdocs, C:\xampp\htdocs, aquí se debe guardar el contenido web a probar, por lo       tanto la url sería por ejemplo con un archivo index.html, la url sería "http://localhost/index.html". Si está en alguna carpeta dentro   de htdocs, la url sería "http://localhost/unaCarpeta/index.html"

![htdocs](https://github.com/Eri02/intro-a-base-de-datos-relacional/blob/gh-pages/img/htdocs.png)

- Para empezar a probar el sitio web se tiene que levantar el servidor, para esto se debe abrir a xampp (aplicación de escritorio descargada) y hacer clic en el botón "Start" que está en la   misma fila de donde dice "Apache", tal como se muestra en la imagen, para detenerlo, volverle a dar clic, verán que ahora dice "stop",   esto es porque ya se había iniciado el servidor.

![xampp](https://github.com/Eri02/intro-a-base-de-datos-relacional/blob/gh-pages/img/xampp.png)

Para conectar el formulario se necesita de código php, el cuál permitirá la conexión con la base de datos a la cuál se le quiere enviar los datos a guardar.

En los archivos php, por ejemplo en regirtra-usuario.php, al inicio se especifican los datos mencionados anteriormente:

```
<?php 
$host_db  = "localhost"; // se espicifica que se conectará a localhost
$user_db  = "root"; // usuario
$pass_db  = "admin"; // contraseña
$db_name  = "LOGIN"; // nombre de la base de datos a dónde irá a dar los datos
$tbl_name = "usuarios"; // la tabla en la cuál se almacenarán los usuarios que se creen
...
```

En la carpeta [Login](https://github.com/Eri02/intro-a-base-de-datos-relacional/tree/gh-pages/login), se deja el código correspondiente a este ejemplo, los archivos html, php y css.





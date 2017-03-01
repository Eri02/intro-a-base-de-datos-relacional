<?php

session_start();

if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true) {
}else{
	echo "Esta página es solo para usuarios registrados. <br>";
	echo "<br><a href='login.html'>Login</a>";
	echo "<br><a href='index.html'>Registrame</a>";

exit;
}

$now = time();

if ($now > $_SESSION['expire']) {
	session_destroy();
	echo "Su sesión ha terminado, <a href='login.html'>Necesita iniciar sesión nuevamente</a>";
exit;
}

?>


<!DOCTYPE html> 
<head>
	<title> Panel de control</title>
 </head>

<body> 
	<h1>Panel de Control</h1>
		<p>Aqui irian los enlaces que le permitirian al usuario editar su perfil o cualquier otra cosa que desees.</p>
	<ul>
	 	<li>Editar Perfil</li>
		<li>Editar Preferencias</li>
		<li>Editar configuración</li>
	</ul>	  
	 
	<br>

	<a href=logout.php>Cerrar Sesion X </a>
</body>
</html>
 
<?php

session_start();
unset($_SESSION['username']);
session_destroy();

header('http://localhost/Prueba/login.html')

?>
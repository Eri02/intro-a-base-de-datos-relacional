CREATE DATABASE LOGIN;

DROP TABLE IF EXISTS `usuarios`;

USE LOGIN;
CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT UNIQUE,
  `nombre_usuario` varchar(32) NOT NULL,
  `password` varchar(80) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) 
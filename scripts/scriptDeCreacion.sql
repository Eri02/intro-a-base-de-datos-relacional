CREATE DATABASE  IF NOT EXISTS `bdptf` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bdptf`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: bdptf
-- ------------------------------------------------------
-- Server version	5.7.11-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `barrios`
--

DROP TABLE IF EXISTS `barrios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barrios` (
  `ba_idBarrio` smallint(6) NOT NULL AUTO_INCREMENT,
  `ba_nombreBarrio` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`ba_idBarrio`),
  UNIQUE KEY `ba_idBarrio` (`ba_idBarrio`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barrios`
--

LOCK TABLES `barrios` WRITE;
/*!40000 ALTER TABLE `barrios` DISABLE KEYS */;
INSERT INTO `barrios` VALUES (1,'Agronomía'),(2,'Almagro'),(3,'Balvanera'),(4,'Barracas'),(5,'Belgrano'),(6,'Boedo'),(7,'Caballito'),(8,'Chacarita'),(9,'Coghlan'),(10,'Colegiales'),(11,'Constitución'),(12,'Flores'),(13,'Floresta'),(14,'La Boca'),(15,'La Paternal'),(16,'Liniers'),(17,'Mataderos'),(18,'Monte Castro'),(19,'Monte Castro'),(20,'Montserrat'),(21,'Nueva Pompeya'),(22,'Nuñez'),(23,'Palermo'),(24,'Parque Chacabuco'),(25,'Parque Chas'),(26,'Parque Patricios'),(27,'Puerto Matadero'),(28,'Recoleta'),(29,'Retiro'),(30,'Saavedra'),(31,'San Cristóbal'),(32,'San Nicolás'),(33,'San Telmo'),(34,'Versalles'),(35,'Villa Crespo'),(36,'Villa Devoto'),(37,'Villa General Mitre'),(38,'Villa Lugano'),(39,'Villa Luro'),(40,'Villa Ortúzar'),(41,'Villa Pueyrredón'),(42,'Villa Real'),(43,'Villa Riachuelo'),(44,'Villa Santa Rita'),(45,'Villa Soldati'),(46,'Villa Urquiza'),(47,'Villa del Parque'),(48,'Vélez Sarsfield');
/*!40000 ALTER TABLE `barrios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `cli_idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `cli_nombre` varchar(60) NOT NULL,
  `cli_apellido` varchar(60) NOT NULL,
  `cli_nroCuit` bigint(20) DEFAULT NULL,
  `cli_direccion` varchar(60) DEFAULT NULL,
  `cli_idBarrio` smallint(6) DEFAULT NULL,
  `cli_codPostal` varchar(10) DEFAULT NULL,
  `cli_telefono` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`cli_idCliente`),
  UNIQUE KEY `cli_idCliente` (`cli_idCliente`),
  UNIQUE KEY `cli_nroCuit` (`cli_nroCuit`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'EDUARDO','AZCARATE',NULL,'EL MAESTRO',1,NULL,NULL),(2,'ANA','PERSICO',NULL,'EL MAESTRO',2,NULL,NULL),(3,'OMAR','TONIOLO',NULL,'Salcedo 1700',20,NULL,NULL),(4,'NORMA','FUCCENECO',NULL,'',48,NULL,NULL),(5,'MARIA','BORGO',NULL,'',45,NULL,NULL),(6,'JORGE','RODRIGEZ',NULL,'',14,NULL,NULL),(7,'JULIO','OTAZO',NULL,'',10,NULL,NULL),(8,'ROBERTO','VERON',NULL,'LIBERTADOR 458',25,NULL,NULL),(9,'LUIS','GUERINI',NULL,'ESPAÑA 123',5,NULL,NULL),(10,'AIDA','TASSO',NULL,'ALVEAR 789',47,NULL,NULL),(11,'CECLIA','TISONNI',NULL,'',48,NULL,NULL),(12,'ALEJANDRA','LAIÑO',NULL,'',5,NULL,NULL),(13,'MIA','RODRIGUEZ',NULL,'',6,NULL,NULL),(14,'KATY','ROSUL',NULL,'',8,NULL,NULL),(15,'DIANA','RIOS',NULL,'',15,NULL,NULL),(16,'MICHAEL','ESPINOZA',NULL,'',40,NULL,NULL),(17,'JORGE','DÍAZ',NULL,'',46,NULL,NULL),(18,'AGUSTÍN','SOZA',NULL,'',10,NULL,NULL),(19,'SANTIAGO','CICCILI',NULL,'',14,NULL,NULL),(20,'HUGO','AMAYA',NULL,'',13,NULL,NULL),(21,'LAUTARO','VILLAGRAN',NULL,'',4,NULL,NULL),(22,'RENZO','VILLAVICENCIO',NULL,'',2,NULL,NULL),(23,'ESTEFANI','BERMEJO',NULL,'',30,NULL,NULL),(24,'ANTONIO','GONZALES',NULL,'',35,NULL,NULL),(25,'SILVINA','LOPEZ',NULL,'',34,NULL,NULL),(26,'LILIANA','FERNANDEZ',NULL,'',32,NULL,NULL),(27,'ARMANDO','GOMEZ',NULL,'',37,NULL,NULL),(28,'MOISÉS','SOSA',NULL,'',20,NULL,NULL),(29,'DAVID','TORRES',NULL,'',21,NULL,NULL),(30,'ROXANA','RUIZ',NULL,'',27,NULL,NULL),(31,'CARLOS','CASTRO',NULL,'AV. BOEDO 1500',26,NULL,NULL),(32,'ANDRÉ','ROMERO',NULL,'AV.CABILDO',21,NULL,NULL),(33,'FRANCO','VAZQUEZ',NULL,'',9,NULL,NULL),(34,'ANDREA','ACOSTA',NULL,'AV. PUEYRREDON',11,NULL,NULL),(35,'ARTURO','GIMENEZ',NULL,'MEDRANO 900',17,NULL,NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas` (
  `f_idFactura` int(11) NOT NULL AUTO_INCREMENT,
  `f_fechaFactura` date NOT NULL,
  `f_idCliente` int(11) NOT NULL,
  `f_fechaVencimiento` date NOT NULL,
  PRIMARY KEY (`f_idFactura`),
  UNIQUE KEY `f_idFactura` (`f_idFactura`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,'2010-01-23',1,'2010-02-23'),(2,'2010-01-23',1,'2010-02-23'),(3,'2010-01-23',2,'2010-02-23'),(4,'2011-07-21',2,'2011-08-21'),(5,'2011-07-21',3,'2011-08-21'),(6,'2011-07-21',3,'2011-08-21'),(7,'2011-07-21',4,'2011-08-21'),(8,'2011-09-18',4,'2011-10-18'),(9,'2011-09-18',5,'2011-10-21'),(10,'2011-09-18',5,'2011-10-21'),(11,'2011-10-03',6,'2011-11-03'),(12,'2011-10-03',6,'2011-11-03'),(13,'2011-10-03',7,'2011-11-03'),(14,'2011-10-03',7,'2011-11-03'),(15,'2011-10-03',8,'2011-11-03'),(16,'2011-10-03',8,'2011-11-03'),(17,'2011-10-03',9,'2011-11-03'),(18,'2011-10-03',9,'2011-11-03'),(19,'2011-10-03',10,'2011-11-03'),(20,'2011-10-03',10,'2011-11-03'),(21,'2011-10-03',11,'2011-11-03'),(22,'2011-10-03',11,'2011-11-03'),(23,'2011-10-03',12,'2011-11-03'),(24,'2011-10-03',12,'2011-11-03'),(25,'2011-10-03',13,'2011-11-03'),(26,'2011-10-30',13,'2011-11-30'),(27,'2011-10-30',14,'2011-11-30'),(28,'2011-10-30',14,'2011-11-30'),(29,'2011-10-30',15,'2011-11-30'),(30,'2011-10-30',15,'2011-11-30'),(31,'2011-11-06',16,'2011-12-07'),(32,'2011-11-06',16,'2011-12-07'),(33,'2011-11-06',17,'2011-12-07'),(34,'2011-11-06',18,'2011-12-07'),(35,'2011-11-06',18,'2011-12-07'),(36,'2011-11-06',19,'2011-12-07'),(37,'2011-11-06',19,'2011-12-07'),(38,'2011-11-06',20,'2011-12-07'),(39,'2011-11-06',20,'2011-12-07'),(40,'2011-11-08',21,'2011-12-09'),(41,'2011-11-08',21,'2011-12-09'),(42,'2011-11-08',22,'2011-12-09'),(43,'2011-11-08',23,'2011-12-09'),(44,'2011-11-08',24,'2011-12-09'),(45,'2011-11-08',25,'2011-12-09'),(46,'2011-11-08',26,'2011-12-09'),(47,'2011-11-19',27,'2011-12-20'),(48,'2011-11-19',28,'2011-12-20'),(49,'2011-11-19',29,'2011-12-20'),(50,'2011-11-19',30,'2011-12-20'),(51,'2011-11-19',31,'2011-12-20'),(52,'2011-11-19',32,'2011-12-20'),(53,'2011-11-19',33,'2011-12-20'),(54,'2011-11-20',34,'2011-12-20'),(55,'2011-11-20',35,'2011-12-20'),(56,'2011-11-20',22,'2011-12-20'),(57,'2011-11-20',15,'2011-12-20'),(58,'2011-11-20',26,'2011-12-20'),(59,'2011-11-20',23,'2011-12-20'),(60,'2011-11-20',24,'2011-12-20'),(61,'2011-11-21',25,'2011-12-21'),(62,'2011-11-21',28,'2011-12-21'),(63,'2011-11-21',21,'2011-12-21'),(64,'2011-11-21',15,'2011-12-21'),(65,'2011-11-21',25,'2011-12-21'),(66,'2011-11-21',26,'2011-12-21'),(67,'2011-11-21',27,'2011-12-21'),(68,'2011-11-21',28,'2011-12-21'),(69,'2011-11-08',29,'2011-12-09'),(70,'2011-11-08',30,'2011-12-09'),(71,'2011-11-08',31,'2011-12-09'),(72,'2011-11-19',32,'2011-12-19'),(73,'2011-11-19',33,'2011-12-19'),(74,'2011-11-19',14,'2011-12-19'),(75,'2011-11-19',12,'2011-12-19'),(76,'2011-11-19',1,'2011-12-19'),(77,'2011-11-19',2,'2011-12-19'),(78,'2011-11-19',3,'2011-12-19'),(79,'2011-11-20',5,'2011-12-20'),(80,'2011-11-20',6,'2011-12-20'),(81,'2011-11-20',7,'2011-12-20'),(82,'2011-11-20',8,'2011-12-20'),(83,'2011-11-20',9,'2011-12-20'),(84,'2011-11-20',10,'2011-12-20'),(85,'2011-11-20',11,'2011-12-20'),(86,'2011-11-21',12,'2011-12-21'),(87,'2011-11-21',17,'2011-12-21'),(88,'2011-11-21',18,'2011-12-21'),(89,'2011-11-21',19,'2011-12-21'),(90,'2011-11-21',5,'2011-12-21'),(91,'2011-11-21',6,'2011-12-21'),(92,'2011-11-21',7,'2011-12-21'),(93,'2011-11-21',2,'2011-12-21');
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturasdetalle`
--

DROP TABLE IF EXISTS `facturasdetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturasdetalle` (
  `fdet_idFactura` int(11) NOT NULL,
  `fdet_nroItem` smallint(6) NOT NULL AUTO_INCREMENT,
  `fdet_idProducto` int(11) DEFAULT NULL,
  `fdet_cantidad` int(11) NOT NULL,
  `fdet_importe` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`fdet_idFactura`,`fdet_nroItem`),
  UNIQUE KEY `fdet_nroItem` (`fdet_nroItem`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturasdetalle`
--

LOCK TABLES `facturasdetalle` WRITE;
/*!40000 ALTER TABLE `facturasdetalle` DISABLE KEYS */;
INSERT INTO `facturasdetalle` VALUES (2,1,2,2,209700.00),(2,2,3,2,38819.98),(2,3,3,2,38819.98),(3,4,4,3,106432.68),(3,5,5,3,0.00),(4,6,6,3,18.78),(4,7,7,3,12.00),(4,8,4,3,106432.68),(5,9,6,4,25.04),(5,10,7,5,20.00),(5,11,8,6,41.52),(5,12,9,2,6.00),(5,13,10,7,28.00),(6,14,4,3,106432.68),(6,15,4,3,106432.68),(6,16,6,4,25.04),(6,17,7,5,20.00),(6,18,8,6,41.52),(6,19,9,2,6.00),(7,20,10,7,28.00),(7,21,4,3,106432.68),(7,22,6,4,25.04),(7,23,7,5,20.00),(8,24,8,6,41.52),(8,25,9,2,6.00),(8,26,10,7,28.00),(8,27,4,3,106432.68),(8,28,6,4,25.04),(8,29,7,5,20.00),(8,30,8,6,41.52),(9,31,9,2,6.00),(9,32,10,7,28.00),(9,33,4,3,106432.68),(9,34,6,4,25.04),(9,35,7,5,20.00),(9,36,8,6,41.52),(10,37,9,2,6.00),(10,38,10,7,28.00),(11,39,4,3,106432.68),(11,40,6,4,25.04),(11,41,7,5,20.00),(11,42,8,6,41.52),(11,43,9,2,6.00),(11,175,9,2,6.00),(11,247,9,2,6.00),(12,44,10,7,28.00),(13,45,4,3,106432.68),(13,46,6,4,25.04),(13,47,7,5,20.00),(13,48,8,6,41.52),(14,49,9,2,6.00),(14,50,10,7,28.00),(14,51,4,3,106432.68),(14,52,6,4,25.04),(14,53,7,5,20.00),(15,54,8,6,41.52),(15,55,9,2,6.00),(15,56,10,7,28.00),(15,57,4,3,106432.68),(15,58,6,4,25.04),(16,59,7,5,20.00),(16,60,8,6,41.52),(16,61,9,2,6.00),(16,62,10,7,28.00),(17,63,4,3,106432.68),(17,64,6,4,25.04),(17,65,7,5,20.00),(17,66,8,6,41.52),(18,67,9,2,6.00),(18,68,10,7,28.00),(18,69,4,3,106432.68),(18,70,6,4,25.04),(18,71,7,5,20.00),(19,72,8,6,41.52),(19,73,9,2,6.00),(19,74,10,7,28.00),(19,75,4,3,106432.68),(20,76,6,4,25.04),(20,77,7,5,20.00),(20,78,8,6,41.52),(20,79,9,2,6.00),(20,80,10,7,28.00),(20,81,4,3,106432.68),(20,82,6,4,25.04),(21,83,7,5,20.00),(21,84,8,6,41.52),(21,85,9,2,6.00),(21,99,9,2,6.00),(22,86,10,7,28.00),(22,87,4,3,106432.68),(22,88,6,4,25.04),(22,100,10,7,28.00),(22,101,4,3,106432.68),(22,102,6,4,25.04),(22,162,10,7,28.00),(22,163,4,3,106432.68),(22,234,10,7,28.00),(22,235,4,3,106432.68),(23,89,7,5,20.00),(23,90,8,6,41.52),(23,91,9,2,6.00),(23,92,10,7,28.00),(23,103,7,5,20.00),(23,104,8,6,41.52),(23,105,9,2,6.00),(23,106,10,7,28.00),(24,93,4,3,106432.68),(24,107,4,3,106432.68),(25,94,6,4,25.04),(25,95,7,5,20.00),(25,108,6,4,25.04),(25,109,7,5,20.00),(26,96,8,6,41.52),(26,110,8,6,41.52),(27,97,9,2,6.00),(27,111,9,2,6.00),(28,98,10,7,28.00),(28,112,10,7,28.00),(29,149,9,2,6.00),(29,221,9,2,6.00),(30,113,9,2,6.00),(30,114,10,7,28.00),(30,158,6,4,25.04),(30,230,6,4,25.04),(31,115,4,3,106432.68),(31,159,7,5,20.00),(31,231,7,5,20.00),(32,120,10,7,28.00),(32,164,6,4,25.04),(32,192,10,7,28.00),(32,236,6,4,25.04),(33,165,7,5,20.00),(33,237,7,5,20.00),(34,183,4,3,106432.68),(34,255,4,3,106432.68),(36,138,10,7,28.00),(36,172,8,6,41.52),(36,210,10,7,28.00),(36,244,8,6,41.52),(38,144,10,7,28.00),(38,216,10,7,28.00),(39,150,10,7,28.00),(39,222,10,7,28.00),(41,116,6,4,25.04),(41,117,7,5,20.00),(41,160,8,6,41.52),(41,161,9,2,6.00),(41,232,8,6,41.52),(41,233,9,2,6.00),(43,121,4,3,106432.68),(43,122,6,4,25.04),(43,166,8,6,41.52),(43,193,4,3,106432.68),(43,194,6,4,25.04),(43,238,8,6,41.52),(45,130,8,6,41.52),(45,131,9,2,6.00),(45,184,6,4,25.04),(45,202,8,6,41.52),(45,203,9,2,6.00),(45,256,6,4,25.04),(47,139,4,3,106432.68),(47,211,4,3,106432.68),(48,143,9,2,6.00),(48,145,4,3,106432.68),(48,215,9,2,6.00),(48,217,4,3,106432.68),(49,151,4,3,106432.68),(49,223,4,3,106432.68),(50,152,6,4,25.04),(50,155,9,2,6.00),(50,156,10,7,28.00),(50,157,4,3,106432.68),(50,224,6,4,25.04),(50,227,9,2,6.00),(50,228,10,7,28.00),(50,229,4,3,106432.68),(51,118,8,6,41.52),(51,190,8,6,41.52),(51,262,8,6,41.52),(53,123,7,5,20.00),(53,167,9,2,6.00),(53,195,7,5,20.00),(53,239,9,2,6.00),(55,132,10,7,28.00),(55,133,4,3,106432.68),(55,185,7,5,20.00),(55,204,10,7,28.00),(55,205,4,3,106432.68),(55,257,7,5,20.00),(57,141,7,5,20.00),(57,213,7,5,20.00),(58,146,6,4,25.04),(58,218,6,4,25.04),(60,153,7,5,20.00),(60,154,8,6,41.52),(60,186,10,7,28.00),(60,225,7,5,20.00),(60,226,8,6,41.52),(60,258,10,7,28.00),(61,119,9,2,6.00),(61,191,9,2,6.00),(61,263,9,2,6.00),(62,176,10,7,28.00),(62,248,10,7,28.00),(63,124,8,6,41.52),(63,168,10,7,28.00),(63,196,8,6,41.52),(63,240,10,7,28.00),(64,125,9,2,6.00),(64,126,10,7,28.00),(64,127,4,3,106432.68),(64,197,9,2,6.00),(64,198,10,7,28.00),(64,199,4,3,106432.68),(65,134,6,4,25.04),(65,206,6,4,25.04),(67,142,8,6,41.52),(67,214,8,6,41.52),(68,147,7,5,20.00),(68,219,7,5,20.00),(71,187,4,3,106432.68),(71,259,4,3,106432.68),(72,177,4,3,106432.68),(72,249,4,3,106432.68),(74,128,6,4,25.04),(74,129,7,5,20.00),(74,169,4,3,106432.68),(74,200,6,4,25.04),(74,201,7,5,20.00),(74,241,4,3,106432.68),(75,171,7,5,20.00),(75,243,7,5,20.00),(76,135,7,5,20.00),(76,207,7,5,20.00),(77,140,6,4,25.04),(77,173,9,2,6.00),(77,212,6,4,25.04),(77,245,9,2,6.00),(78,174,10,7,28.00),(78,246,10,7,28.00),(79,148,8,6,41.52),(79,220,8,6,41.52),(81,188,6,4,25.04),(81,260,6,4,25.04),(82,178,6,4,25.04),(82,250,6,4,25.04),(85,170,6,4,25.04),(85,242,6,4,25.04),(86,136,8,6,41.52),(86,137,9,2,6.00),(86,208,8,6,41.52),(86,209,9,2,6.00),(91,189,7,5,20.00),(91,261,7,5,20.00),(93,179,7,5,20.00),(93,180,8,6,41.52),(93,181,9,2,6.00),(93,182,10,7,28.00),(93,251,7,5,20.00),(93,252,8,6,41.52),(93,253,9,2,6.00),(93,254,10,7,28.00);
/*!40000 ALTER TABLE `facturasdetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `pro_idProducto` smallint(6) NOT NULL,
  `pro_nombreProducto` varchar(60) NOT NULL,
  `pro_precioUnitario` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`pro_idProducto`),
  UNIQUE KEY `pro_idProduto` (`pro_idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'MERCADERIAS VARIAS',290.90),(2,'COMISION \" CLARO\"',104850.00),(3,'VENTAS DE LANA Y CUEROS',19409.99),(4,'HACIENDA OVINA',35477.56),(5,'ADAMS X 20u. MENTA',0.00),(6,'HALLS X12 STRONG',6.26),(7,'ADAMS X 20u.TUTTIF.',4.00),(8,'HALLS FREE X12 MENTOL',6.92),(9,'CHICLE CLORETS blist. X 12u.',3.00),(10,'ADAMS X 20u. MENTOL',4.00),(11,'BUBBALOO X 60u. LIMALIMON',6.50),(12,'HALLS FREE X12 MENTA',6.92),(13,'BUBBALOO X 60u. MENTA',6.50),(14,'CHICLE CLORETS X 20u.',8.44),(15,'PASTILLA CLORETS X 12u.',4.83),(16,'BUBBALOO X 60u. TUTTIF.',6.50),(17,'BUBBALOO X 60u. BANANA',6.50),(18,'BUBBALOO X 60u. BOLA CRISTAL',6.50),(19,'HALLS VITA C X12 NARANJA',6.26),(20,'BUBBALOO X 60u. COLA',6.50),(21,'BUBBALOO X 60u. UVA',6.50),(22,'ADAMS 100 X 2 TUTTIF.',6.00),(23,'ADAMS 100 X 2 MENTOL',6.00),(24,'HALLS EXTREME X15 STRONG',7.54),(25,'HALLS EXTREME X15 CHERRY',7.54),(26,'HALLS EXTREME X15 MENTOL',7.54),(27,'HALLS FREE X12 STRONG',6.92),(28,'HALLS FREE X12 FRUTILLA',6.92),(29,'HALLS VITA C X12 FRUTILLA',6.26),(30,'HALLS VITA C X12 LIMON',6.26),(31,'HALLS VITA C X12 POMELO',6.26),(32,'HALLS X12 MENTOL',6.26),(33,'HALLS X12 CHERRY',6.26),(34,'HALLS X12 FRUTILLA',6.26),(35,'HALLS X12 UVA VERDE',6.26),(36,'HALLS X12 COOL MINT',6.26),(37,'HALLS X12 MIEL LIMON',6.26),(38,'HALLS X12 CREME MORA',6.26),(39,'HALLS X12 CREME FRUTILLA',6.26),(40,'HALLS X 60u. CHERRY',2.94),(41,'HALLS X 60u. MENTOL',2.94),(42,'HALLS X 60u. STRONG',2.94),(43,'BUBBA SPLASH X 60 FRUTILLA',2.00),(44,'BUBBA SPLASH X 60 MORA',2.00),(45,'BUBBALOO X 60u. ACILOCO',6.50),(46,'HALLS X12 CREAMY DURAZNO',6.26),(47,'ADAMS 30 X 8u. MENTA',11.79),(48,'ADAMS 30 X 8u. MENTOL',11.79),(49,'HALLS X 12u. MENTA-LYPTUS',6.26),(50,'HALLS FREE BOX X12 MENTOL',6.92),(51,'HALLS FREE BOX X12 STRONG',6.92),(52,'BUBBALOO X 60u. BUBBA-BOO',6.50),(53,'HALLS X12 AIR MINTS',6.26),(54,'BUBBALOO COLA bonificacion',0.01),(55,'BUBBALOO LIMONADA bonificacion',0.01),(56,'HALLS FUSION X15u FTAS.VERDES',8.29),(57,'BUBBALOO X 60u. YOGHURT',6.50),(58,'ADAMS 30 X 8u. GREEN KICK',11.79),(59,'ADAMS 30 X 8u. RED RUSH',11.79),(60,'BUBBALOO X 60u. MANZANA',6.50),(61,'HALLS X12 CREAMY MANZANA',6.26),(62,'BUBBALOO X 60u. MIX nja/frut.',6.50),(63,'HALLS MENTA CRUNCHY X 20u.',9.46),(64,'ADAMS SPINBALL X 30u.',8.48),(65,'BUBBALOO X 60u. choc/frut/vain.',6.50),(66,'HALLS X12 CREAMY LEMON PIE',6.26),(67,'HALLS MORA CRUNCHY X 20u.',9.46),(68,'BUBBALOO RADICAL MENTA X 18u.',7.50),(69,'BUBBALOO RADICAL LIM/FRUT X 18u.',7.50),(70,'BUBBALOO RADICAL TUTTIFRU X 18u.',7.50),(71,'HALLS CHOCO MINT X 15u.',8.29),(72,'CHICLE SUPER HEROES X 110u.',5.65),(73,'HALLS X12 LEMON LYPTUS',6.26),(74,'CHICLETS STICK FRUTILLA X 16u.',7.53),(75,'BUBBALOO X 60u. FRESH FRUTILLA',6.50),(76,'BUBBALOO X 60u. mision secreta',6.50),(77,'CHICLETS FRES/FUSION cer/nar X100u.',12.36),(78,'CHICLETS FUSION mta/cer/nar X30u.',10.90),(79,'BUBBALOO X 60u. CEREZA ROCKS',6.50),(80,'TARJETAS C.T.I. DE $ 10',10.00),(81,'TARJETAS C.T.I. DE $ 20',20.00),(82,'TARJETAS C.T.I. DE $ 15',5.00),(83,'TARJETAS C.T.I. DE $ 30',30.00),(84,'TARJETAS C.T.I. DE $ 50',50.00),(85,'TARJETAS C.T.I. DE $ 100',100.00),(86,'TARJETAS C.T.I. DE $ 5',5.00),(87,'LENGUETAZO HIGH SCHOOL',10.70),(88,'PASTILLA SUPER HEROES X 12u.',5.54),(89,'PAST. BELDENT X 12u. MENTA',13.52),(90,'PALITOS SELVA BANANA X 220u.',5.85),(91,'BAZOOKA X 120u. MENTA',5.76),(92,'MEDIA HORA X 200u.',5.00),(93,'FUERTES X 12u. MENTA',3.40),(94,'PALITOS SELVA FRU/VAIN X 220u.',6.69),(95,'ECLAIRS X 600g.',7.20);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



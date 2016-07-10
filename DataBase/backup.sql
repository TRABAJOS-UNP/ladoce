-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: localhost    Database: bdla12
-- ------------------------------------------------------
-- Server version	5.5.25a

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
-- Dumping data for table `cancha`
--

LOCK TABLES `cancha` WRITE;
/*!40000 ALTER TABLE `cancha` DISABLE KEYS */;
INSERT INTO `cancha` VALUES (1,1,'0001',1),(2,2,'0001',1),(3,3,'0001',1),(4,4,'0001',1),(5,4,'0001',2),(6,1,'0001',2),(7,2,'0001',2),(8,3,'0001',2);
/*!40000 ALTER TABLE `cancha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'0000',5);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Piura','0000');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detallereserva`
--

LOCK TABLES `detallereserva` WRITE;
/*!40000 ALTER TABLE `detallereserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallereserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dirige`
--

LOCK TABLES `dirige` WRITE;
/*!40000 ALTER TABLE `dirige` DISABLE KEYS */;
/*!40000 ALTER TABLE `dirige` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `distrito`
--

LOCK TABLES `distrito` WRITE;
/*!40000 ALTER TABLE `distrito` DISABLE KEYS */;
INSERT INTO `distrito` VALUES (1,'Piura','0000',1),(2,'Castilla','0000',1);
/*!40000 ALTER TABLE `distrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `gerente`
--

LOCK TABLES `gerente` WRITE;
/*!40000 ALTER TABLE `gerente` DISABLE KEYS */;
INSERT INTO `gerente` VALUES (1,'0000',1);
/*!40000 ALTER TABLE `gerente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `historialcancha`
--

LOCK TABLES `historialcancha` WRITE;
/*!40000 ALTER TABLE `historialcancha` DISABLE KEYS */;
/*!40000 ALTER TABLE `historialcancha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `historialgerente`
--

LOCK TABLES `historialgerente` WRITE;
/*!40000 ALTER TABLE `historialgerente` DISABLE KEYS */;
/*!40000 ALTER TABLE `historialgerente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `historialsede`
--

LOCK TABLES `historialsede` WRITE;
/*!40000 ALTER TABLE `historialsede` DISABLE KEYS */;
/*!40000 ALTER TABLE `historialsede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `operador`
--

LOCK TABLES `operador` WRITE;
/*!40000 ALTER TABLE `operador` DISABLE KEYS */;
INSERT INTO `operador` VALUES (1,'0000',6),(2,'0000',7);
/*!40000 ALTER TABLE `operador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `parametro`
--

LOCK TABLES `parametro` WRITE;
/*!40000 ALTER TABLE `parametro` DISABLE KEYS */;
INSERT INTO `parametro` VALUES ('0000','Habilitado','se le permite usar el sistema','HABILITADO'),('0001','Dehabilitado','No se le permite usar el sistema','DESHABILITADO'),('0002','En Proceso','La reserva esta esperando a ser exitosa','EN_PROCESO'),('0003','Anulada','La reserva fue anulada por quien la creo','ANULADA'),('0004','Fallida','La reserva no concluyo con exito','FALLIDA'),('0005','Exitosa','La reserva ha concluido con exito','EXITOSA'),('0006','Visitante','Un visitante cualquiera de la pagina web','VISITANTE'),('0007','Cliente','Un cliente que realiza la reserva, debidamente logeado','CLIENTE'),('0008','Operador','Un operador que Adm. una sede, debidamente logeado','OPERADOR'),('0009','Gerente','El gerente, Adm. del sistema, debidamente logeado','GERENTE');
/*!40000 ALTER TABLE `parametro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `preciohora`
--

LOCK TABLES `preciohora` WRITE;
/*!40000 ALTER TABLE `preciohora` DISABLE KEYS */;
INSERT INTO `preciohora` VALUES (1,'LUNES','06:00:00','07:00:00',20.00),(2,'LUNES','07:00:00','08:00:00',20.00),(3,'LUNES','08:00:00','09:00:00',20.00),(4,'LUNES','09:00:00','10:00:00',20.00),(5,'LUNES','10:00:00','11:00:00',20.00),(6,'LUNES','11:00:00','12:00:00',20.00),(7,'LUNES','12:00:00','13:00:00',20.00),(8,'LUNES','13:00:00','14:00:00',20.00),(9,'LUNES','14:00:00','15:00:00',20.00),(10,'LUNES','15:00:00','16:00:00',20.00),(11,'LUNES','16:00:00','17:00:00',20.00),(12,'LUNES','17:00:00','18:00:00',20.00),(13,'LUNES','18:00:00','19:00:00',20.00),(14,'LUNES','19:00:00','20:00:00',20.00),(15,'LUNES','20:00:00','21:00:00',20.00),(16,'LUNES','21:00:00','22:00:00',20.00),(17,'LUNES','22:00:00','23:00:00',20.00),(18,'LUNES','23:00:00','00:00:00',20.00),(19,'MARTES','06:00:00','07:00:00',20.00),(20,'MARTES','07:00:00','08:00:00',20.00),(21,'MARTES','08:00:00','09:00:00',20.00),(22,'MARTES','09:00:00','10:00:00',20.00),(23,'MARTES','10:00:00','11:00:00',20.00),(24,'MARTES','11:00:00','12:00:00',20.00),(25,'MARTES','12:00:00','13:00:00',20.00),(26,'MARTES','13:00:00','14:00:00',20.00),(27,'MARTES','14:00:00','15:00:00',20.00),(28,'MARTES','15:00:00','16:00:00',20.00),(29,'MARTES','16:00:00','17:00:00',20.00),(30,'MARTES','17:00:00','18:00:00',20.00),(31,'MARTES','18:00:00','19:00:00',20.00),(32,'MARTES','19:00:00','20:00:00',20.00),(33,'MARTES','20:00:00','21:00:00',20.00),(34,'MARTES','21:00:00','22:00:00',20.00),(35,'MARTES','22:00:00','23:00:00',20.00),(36,'MARTES','23:00:00','00:00:00',20.00),(37,'MIERCOLES','06:00:00','07:00:00',20.00),(38,'MIERCOLES','07:00:00','08:00:00',20.00),(39,'MIERCOLES','08:00:00','09:00:00',20.00),(40,'MIERCOLES','09:00:00','10:00:00',20.00),(41,'MIERCOLES','10:00:00','11:00:00',20.00),(42,'MIERCOLES','11:00:00','12:00:00',20.00),(43,'MIERCOLES','12:00:00','13:00:00',20.00),(44,'MIERCOLES','13:00:00','14:00:00',20.00),(45,'MIERCOLES','14:00:00','15:00:00',20.00),(46,'MIERCOLES','15:00:00','16:00:00',20.00),(47,'MIERCOLES','16:00:00','17:00:00',20.00),(48,'MIERCOLES','17:00:00','18:00:00',20.00),(49,'MIERCOLES','18:00:00','19:00:00',20.00),(50,'MIERCOLES','19:00:00','20:00:00',20.00),(51,'MIERCOLES','20:00:00','21:00:00',20.00),(52,'MIERCOLES','21:00:00','22:00:00',20.00),(53,'MIERCOLES','22:00:00','23:00:00',20.00),(54,'MIERCOLES','23:00:00','00:00:00',20.00),(55,'JUEVES','06:00:00','07:00:00',20.00),(56,'JUEVES','07:00:00','08:00:00',20.00),(57,'JUEVES','08:00:00','09:00:00',20.00),(58,'JUEVES','09:00:00','10:00:00',20.00),(59,'JUEVES','10:00:00','11:00:00',20.00),(60,'JUEVES','11:00:00','12:00:00',20.00),(61,'JUEVES','12:00:00','13:00:00',20.00),(62,'JUEVES','13:00:00','14:00:00',20.00),(63,'JUEVES','14:00:00','15:00:00',20.00),(64,'JUEVES','15:00:00','16:00:00',20.00),(65,'JUEVES','16:00:00','17:00:00',20.00),(66,'JUEVES','17:00:00','18:00:00',20.00),(67,'JUEVES','18:00:00','19:00:00',20.00),(68,'JUEVES','19:00:00','20:00:00',20.00),(69,'JUEVES','20:00:00','21:00:00',20.00),(70,'JUEVES','21:00:00','22:00:00',20.00),(71,'JUEVES','22:00:00','23:00:00',20.00),(72,'JUEVES','23:00:00','00:00:00',20.00),(73,'VIERNES','06:00:00','07:00:00',20.00),(74,'VIERNES','07:00:00','08:00:00',20.00),(75,'VIERNES','08:00:00','09:00:00',20.00),(76,'VIERNES','09:00:00','10:00:00',20.00),(77,'VIERNES','10:00:00','11:00:00',20.00),(78,'VIERNES','11:00:00','12:00:00',20.00),(79,'VIERNES','12:00:00','13:00:00',20.00),(80,'VIERNES','13:00:00','14:00:00',20.00),(81,'VIERNES','14:00:00','15:00:00',20.00),(82,'VIERNES','15:00:00','16:00:00',20.00),(83,'VIERNES','16:00:00','17:00:00',20.00),(84,'VIERNES','17:00:00','18:00:00',20.00),(85,'VIERNES','18:00:00','19:00:00',20.00),(86,'VIERNES','19:00:00','20:00:00',20.00),(87,'VIERNES','20:00:00','21:00:00',20.00),(88,'VIERNES','21:00:00','22:00:00',20.00),(89,'VIERNES','22:00:00','23:00:00',20.00),(90,'VIERNES','23:00:00','00:00:00',20.00),(91,'SABADO','06:00:00','07:00:00',20.00),(92,'SABADO','07:00:00','08:00:00',20.00),(93,'SABADO','08:00:00','09:00:00',20.00),(94,'SABADO','09:00:00','10:00:00',20.00),(95,'SABADO','10:00:00','11:00:00',20.00),(96,'SABADO','11:00:00','12:00:00',20.00),(97,'SABADO','12:00:00','13:00:00',20.00),(98,'SABADO','13:00:00','14:00:00',20.00),(99,'SABADO','14:00:00','15:00:00',20.00),(100,'SABADO','15:00:00','16:00:00',20.00),(101,'SABADO','16:00:00','17:00:00',20.00),(102,'SABADO','17:00:00','18:00:00',20.00),(103,'SABADO','18:00:00','19:00:00',20.00),(104,'SABADO','19:00:00','20:00:00',20.00),(105,'SABADO','20:00:00','21:00:00',20.00),(106,'SABADO','21:00:00','22:00:00',20.00),(107,'SABADO','22:00:00','23:00:00',20.00),(108,'SABADO','23:00:00','00:00:00',20.00),(109,'DOMINGO','06:00:00','07:00:00',20.00),(110,'DOMINGO','07:00:00','08:00:00',20.00),(111,'DOMINGO','08:00:00','09:00:00',20.00),(112,'DOMINGO','09:00:00','10:00:00',20.00),(113,'DOMINGO','10:00:00','11:00:00',20.00),(114,'DOMINGO','11:00:00','12:00:00',20.00),(115,'DOMINGO','12:00:00','13:00:00',20.00),(116,'DOMINGO','13:00:00','14:00:00',20.00),(117,'DOMINGO','14:00:00','15:00:00',20.00),(118,'DOMINGO','15:00:00','16:00:00',20.00),(119,'DOMINGO','16:00:00','17:00:00',20.00),(120,'DOMINGO','17:00:00','18:00:00',20.00),(121,'DOMINGO','18:00:00','19:00:00',20.00),(122,'DOMINGO','19:00:00','20:00:00',20.00),(123,'DOMINGO','20:00:00','21:00:00',20.00),(124,'DOMINGO','21:00:00','22:00:00',20.00),(125,'DOMINGO','22:00:00','23:00:00',20.00),(126,'DOMINGO','23:00:00','00:00:00',20.00);
/*!40000 ALTER TABLE `preciohora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (1,'Piura','0000',1);
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sede`
--

LOCK TABLES `sede` WRITE;
/*!40000 ALTER TABLE `sede` DISABLE KEYS */;
INSERT INTO `sede` VALUES (1,'sede 1','jr siempre viva','0001',NULL,2),(2,'sede 2','jr jsdsajdk mnxz','0001',NULL,1);
/*!40000 ALTER TABLE `sede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin@admin.com','admin1234','Administrador','Administrador',NULL,'75763466','0008','0000'),(5,'cliente1@gmail.com','0123456789','roger','zapata',NULL,'46273844','0007','0000'),(6,'operador1@gmail.com','0123456789','elver','colmenares',NULL,'76973844','0008','0000'),(7,'operado2@gmail.com','123456789','juan','guerrero',NULL,'74538233','0008','0000');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-10 12:09:59

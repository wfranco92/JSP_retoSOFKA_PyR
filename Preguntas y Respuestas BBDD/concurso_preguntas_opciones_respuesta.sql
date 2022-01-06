-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: concurso_preguntas
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `opciones_respuesta`
--

DROP TABLE IF EXISTS `opciones_respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opciones_respuesta` (
  `idopciones_respuesta` int NOT NULL AUTO_INCREMENT,
  `respuesta_enunciado` varchar(45) NOT NULL,
  `correcta` int NOT NULL,
  `idpregunta` int NOT NULL,
  PRIMARY KEY (`idopciones_respuesta`),
  KEY `idpregunta_idx` (`idpregunta`),
  CONSTRAINT `idpregunta` FOREIGN KEY (`idpregunta`) REFERENCES `pregunta` (`idpregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones_respuesta`
--

LOCK TABLES `opciones_respuesta` WRITE;
/*!40000 ALTER TABLE `opciones_respuesta` DISABLE KEYS */;
INSERT INTO `opciones_respuesta` VALUES (1,'Gabriel García Márquez',1,1),(2,'Héctor Abad Faciolince',0,1),(3,'Julio Cortázar',0,1),(4,'Paulo Coelho',0,1),(5,'Steve Jobs',0,2),(6,'Marck Zuckerberg',0,2),(7,'Bill Gates',1,2),(8,'Linus Torvalds',0,2),(9,'Brasil',0,3),(10,'Estados Unidos',0,3),(11,'China',0,3),(12,'Rusia',1,3),(13,'5',1,4),(14,'3',0,4),(15,'6',0,4),(16,'4',0,4),(17,'Juan Pablo II',0,5),(18,'Francisco',1,5),(19,'Benedicto',0,5),(20,'Pablo',0,5),(21,'Nemesio Camacho El campin',0,6),(22,'Wembley Stadium',0,6),(23,'Santiago Bernabeu',1,6),(24,'Camp nou',0,6),(25,'Inglaterra',0,7),(26,'Brasil',1,7),(27,'Argentina',0,7),(28,'Alemania',0,7),(29,'Londres, Inglaterra',0,8),(30,'Massachussets, Estados Unidos',1,8),(31,'Rio de Janeiro, Brasil',0,8),(32,'Pekin, China',0,8),(33,'Golf',1,9),(34,'Baloncesto',0,9),(35,'Futbol',0,9),(36,'Tennis',0,9),(37,'Estados Unidos',0,10),(38,'Belgica',0,10),(39,'Italia',1,10),(40,'Argentina',0,10),(41,'50 estados',1,11),(42,'52 estados',0,11),(43,'48 estados',0,11),(44,'45 estados',0,11),(45,'1564',0,12),(46,'1462',0,12),(47,'1492',1,12),(48,'1592',0,12),(49,'Ra',1,13),(50,'Anubis',0,13),(51,'Amon',0,13),(52,'Osiris',0,13),(53,'Thomas Jefferson',0,14),(54,'Abraham Lincoln',0,14),(55,'George Washington',1,14),(56,'Harry S. Truman',0,14),(57,'Ingles',0,15),(58,'Mandarin',1,15),(59,'Español',0,15),(60,'Ruso',0,15),(61,'Voltio',0,16),(62,'Amperio',1,16),(63,'Vatio',0,16),(64,'Newton',0,16),(65,'Animal',0,17),(66,'protoctista ',0,17),(67,'monera',0,17),(68,'fungi',1,17),(69,'Alexander Fleming',1,18),(70,'Marie Curie',0,18),(71,'Manuel Elkin Patarroyo',0,18),(72,'Louis Pasteur',0,18),(73,'Oxigeno',0,19),(74,'Hidrogeno',1,19),(75,'Nitrogeno',0,19),(76,'Helio',0,19),(77,'Neutron',0,20),(78,'Proton',0,20),(79,'Positron',0,20),(80,'Electron',1,20),(81,'Edvard Munch',1,21),(82,'Claude Monet',0,21),(83,'Rembrandt',0,21),(84,'Francisco de Goya',0,21),(89,'Valenciano',0,22),(90,'Gallego',1,22),(91,'Italiano',0,22),(92,'Euskera',0,22),(93,'8 años',0,23),(94,'5 años',1,23),(95,'10 años',0,23),(96,'12 años',0,23),(97,'Metrópolis',1,24),(98,'Luces de la ciudad',0,24),(99,'La última carcajada',0,24),(100,'Nosferatu',0,24),(101,'Korea',0,25),(102,'Egipto',0,25),(103,'Marruecos',0,25),(104,'Japon',1,25);
/*!40000 ALTER TABLE `opciones_respuesta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-06 11:00:42

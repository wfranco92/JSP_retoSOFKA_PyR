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
-- Table structure for table `logs_juego`
--

DROP TABLE IF EXISTS `logs_juego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs_juego` (
  `idlogs_juego` int NOT NULL AUTO_INCREMENT,
  `jugador` varchar(45) NOT NULL,
  `puntos` int NOT NULL,
  `rondas` int NOT NULL,
  PRIMARY KEY (`idlogs_juego`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs_juego`
--

LOCK TABLES `logs_juego` WRITE;
/*!40000 ALTER TABLE `logs_juego` DISABLE KEYS */;
INSERT INTO `logs_juego` VALUES (1,'null null',100,5),(2,'null null',100,5),(3,'null null',100,5),(4,'null null',100,5),(5,'null null',100,5),(6,'null null',100,5),(7,'null null',100,5),(8,'null null',100,5),(9,'Willian Franco',100,5),(10,'null null',100,5),(11,'Willian Franco',100,5),(12,'Willian Franco',100,5),(13,'Jenny Chavez',5,1),(14,'Willian Franco',5,1),(15,'Willian Franco',5,1),(16,'Willian Franco',0,1),(17,'Willian Franco',0,1),(18,'Jenny Chavez',0,1),(19,'Jenny Chavez',5,1),(20,'Jenny Chavez',0,1),(21,'Jenny Chavez',25,1),(22,'Jenny Chavez',5,1),(23,'Carlos Torresl',5,1),(24,'Willian Franco',5,1),(25,'Willian Franco',0,1),(26,'Willian Franco',0,1),(27,'Willian Franco',100,5),(28,'null null',100,5),(29,'null null',100,5),(30,'Jenny Chavez',0,1),(31,'Jenny Chavez',0,1),(32,'Willian Franco',25,1),(33,'Willian Franco',5,1),(34,'Willian Franco',15,1),(35,'Willian Franco',30,1),(36,'Willian Franco',0,1);
/*!40000 ALTER TABLE `logs_juego` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-06 11:00:41

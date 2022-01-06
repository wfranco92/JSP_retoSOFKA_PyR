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
-- Table structure for table `pregunta`
--

DROP TABLE IF EXISTS `pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pregunta` (
  `idpregunta` int NOT NULL AUTO_INCREMENT,
  `enunciado` varchar(100) NOT NULL,
  `id_categoria` int NOT NULL,
  PRIMARY KEY (`idpregunta`),
  KEY `id_categoria_idx` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta`
--

LOCK TABLES `pregunta` WRITE;
/*!40000 ALTER TABLE `pregunta` DISABLE KEYS */;
INSERT INTO `pregunta` VALUES (1,'¿Quién escribió \"Cien años de soledad\"? ',1),(2,'¿Quién es el fundador de Microsoft?',1),(3,'¿Cual es el pais con extension geografica mas grande del mundo?',1),(4,'¿Cuantos continentes existen?',1),(5,'¿Cual es el nombre del papa en la actualidad?',1),(6,'¿Cómo se llama el estadio de fútbol del Real Madrid?',2),(7,'¿Qué país ha ganado más mundiales de fútbol?',2),(8,'¿Dónde se inventó el baloncesto?',2),(9,'¿En qué deporte destaca Tiger Woods?',2),(10,'¿Dónde se celebró la Copa Mundial de la FIFA en 1994? ',2),(11,'¿Cuántos estados tiene integrados Estados Unidos?',3),(12,'¿En qué año fue el descubrimiento de América?',3),(13,'¿Cuál era el nombre del dios del Sol en el Antiguo Egipto?',3),(14,'¿Quién fue el primer presidente de Estados Unidos?',3),(15,'¿Cuál es la lengua más hablada del mundo?',3),(16,'¿Cómo se llama la unidad de intensidad de la corriente eléctrica?',4),(17,'¿A qué reino de seres vivos pertenecen las levaduras?',4),(18,'¿Quién descubrió la penicilina?',4),(19,'¿Cuál es el elemento más abundante de la Tierra?',4),(20,'¿Cuál es el nombre de las partículas subatómicas de carga negativa?',4),(21,'¿Cómo se llama el pintor noruego autor de la obra “El Grito”?',5),(22,'¿En qué otro idioma, además del castellano, escribió la novelista y poetisa Rosalía de Castro?',5),(23,'¿Un lustro cuántos años son?',5),(24,'¿Qué película muda de ciencia ficción fue creada por Fritz Lang en 1927?',5),(25,' ¿De qué país es originario el tipo de poesía conocido como haiku?',5);
/*!40000 ALTER TABLE `pregunta` ENABLE KEYS */;
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

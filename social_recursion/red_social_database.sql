-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: amistad3
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `gustos`
--

DROP TABLE IF EXISTS `gustos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gustos` (
  `idPersona` int NOT NULL,
  `peliculaFavorita` varchar(45) DEFAULT NULL,
  `juegoFavorito` varchar(45) DEFAULT NULL,
  `libroFavorito` varchar(45) DEFAULT NULL,
  `deporteFavorito` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPersona`),
  CONSTRAINT `fk_Gustos_Persona1` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gustos`
--

LOCK TABLES `gustos` WRITE;
/*!40000 ALTER TABLE `gustos` DISABLE KEYS */;
INSERT INTO `gustos` VALUES (1,'Los Increibles','Halo','El Quijote','Futbol'),(2,'Shrek','Halo','Harry Potter','Handball'),(3,'Top Gun','Fortnite','Percy Jackson','Futbol'),(4,'Los Vengadores','Fall Guys',NULL,'Futbol'),(5,'Spider-Man 2','Fallout 4','Metro 2033','Basktet'),(6,'Shrek','Fortnite','El Quijote','Futbol'),(7,'Los Increibles','BeamNG',NULL,NULL),(8,'Coco','Fortnite','Harry Potter',NULL),(9,'Los Increibles','Call of Duty',NULL,'Futbol'),(10,'Los Vengadores','Fortnite','Percy Jackson','Volley'),(11,'Liga de la Justicia','GTA V','Juego de Tronos','Futbol'),(12,'Sonic','FIFA 22',NULL,'Futbol'),(13,'Titanic','Fortnite','Metro 2033','Basket'),(14,'Top Gun','God of War','Mr. Mercedes','Rugby'),(15,'Los Increibles',NULL,'Harry Potter','Volley'),(16,'Los Vengadores','Fortnite','La Piramide Roja','Rugby'),(17,'Coco',NULL,'Juego de Tronos','Tenis'),(18,NULL,'Fallout 4','El Socialismo','Basket'),(19,'La Era del Hielo','Damas','Metro 2033','Esgrima'),(20,'Los Vengadores','Ajedrez','El Principito','Ping Pong');
/*!40000 ALTER TABLE `gustos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `idPersona` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `genero` varchar(45) NOT NULL,
  `edad` varchar(45) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Marcos','Gomez','M','19','2002-12-23'),(2,'Sergio','Flores','M','19','2002-10-03'),(3,'Florencia','Ramayo','F','19','2002-07-01'),(4,'Ana','Gonzales','F','21','2000-12-09'),(5,'Ignacio','Diaz','M','20','2001-03-05'),(6,'Sofia','Rodriguez','F','23','1998-04-30'),(7,'Angela','Perez','F','20','2001-02-28'),(8,'Rocio','De Santa','F','18','2003-08-15'),(9,'Gabriel','Rojo','M','19','2002-12-18'),(10,'Cristian','Bale','M','24','1997-01-01'),(11,'Agustin','Rosales','M','21','2000-10-10'),(12,'Jose','Armando','M','20','2001-03-11'),(13,'Luisina','Reyes','F','20','2001-09-12'),(14,'Agostina','Suarez','F','22','1999-04-17'),(15,'Lamar','Davis','M','18','2003-05-05'),(16,'Denzel','Washington','M','24','1996-09-13'),(17,'Elena','Rosario','F','21','2000-06-10'),(18,'Rut','De Lopez','F','19','2002-12-01'),(19,'Enzo','Torres','M','21','2000-03-16'),(20,'Candela','Ibanies','F','18','2003-07-07');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `red_social`
--

DROP TABLE IF EXISTS `red_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `red_social` (
  `idPersona` int NOT NULL,
  `idConocido` int NOT NULL,
  PRIMARY KEY (`idPersona`,`idConocido`),
  KEY `fk_Amistad_Persona1_idx` (`idConocido`),
  CONSTRAINT `fk_Amistad_Persona` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `red_social`
--

LOCK TABLES `red_social` WRITE;
/*!40000 ALTER TABLE `red_social` DISABLE KEYS */;
INSERT INTO `red_social` VALUES (1,0),(2,1),(3,1),(4,1),(5,1),(6,2),(7,2),(8,3),(9,3),(10,4),(11,4),(12,5),(13,5),(14,6),(15,6),(16,6),(19,10),(20,11),(17,16),(18,16);
/*!40000 ALTER TABLE `red_social` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-29  1:37:33

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: rede_s
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_desc` varchar(300) DEFAULT NULL,
  `img` varchar(300) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (80,'hello, world!','',12,'2024-06-17 22:21:25'),(81,'hello, world!','',5,'2024-06-17 22:23:50'),(82,'boa noite rpzd','',2,'2024-06-17 22:26:47'),(83,'oii','',8,'2024-06-19 02:59:22'),(84,'','1718766075223error.png',21,'2024-06-19 03:01:15'),(85,'boa noite!','',21,'2024-06-19 03:01:50'),(88,'???? CURIOSIDADE: Bruna Marquezine nunca perdeu para o Neymar em uma competição.','1719441226956bm.jpg',23,'2024-06-26 22:33:46'),(90,'VEJA: Cristo Redentor é atingido por raio e fotógrafo capta o momento exato do acontecido.','1719441352337ney.jfif',23,'2024-06-26 22:35:52'),(91,'Carregou aí?','1719441478059ney.jfif',23,'2024-06-26 22:37:58'),(92,'VEJA: Imagem de boto \'sorrindo\' na Amazônia vence concurso mundial de fotografia.','1719441582562ney.jfif',23,'2024-06-26 22:39:42'),(94,'PINTURA!','1719442513149bm.jfif',23,'2024-06-26 22:55:13'),(95,'','1719925213255error.png',1,'2024-07-02 13:00:13'),(96,'q sono','',1,'2024-07-02 13:00:20'),(97,'!! GRAVE','1719926514666fundo.jpg',1,'2024-07-02 13:21:54');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-02 10:29:45

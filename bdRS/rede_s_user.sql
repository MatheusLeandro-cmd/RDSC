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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `userImg` varchar(1000) DEFAULT NULL,
  `bgImg` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'pexis','px@gmail.com','$2b$08$7Sy4bgPb39hSDlf8vuXgn./Je48aI6uDgu48NUX1liTNglwDXu8Pm','https://i.pinimg.com/474x/23/b9/72/23b972cd7e341576d80cf8cea428f8c7.jpg','https://i.pinimg.com/originals/ce/f4/36/cef436f1312af0d8cf63e5127fd9c7c9.jpg'),(2,'px','pxx@gmail.com','$2b$08$a926D4Or3P7WqmWL.2MueeEkjIhiTvlL/hiFKBfJeQ1LMtnG6H.Zq',NULL,NULL),(3,'pex','px1@gmail.com','$2b$08$jwN3GCMytaksh73oJSaX9.t5mKFGQyaHIdhyzrgvaRP/R.R5oPxky',NULL,NULL),(4,'pex','px2@gmail.com','$2b$08$mABwNe4YugelaTDUOWdnQ.DR3kmHECMC8PdHMEFRibURnkvEAqzkm',NULL,NULL),(5,'chv','chv@gmail.com','$2b$08$kXKktbauh2QUYSphAGsWnOjX9UYX6pEiXNFem2OHh2.ABiechLVau',NULL,NULL),(6,'px','x','$2b$08$pcPA46rkB5EV7FFRWU2I8.4nYGVYJi9wBZf7oUwDp5HqdMOQuxgQC',NULL,NULL),(7,'prii','p@gmail.com','$2b$08$lnNec7lbk6TH7Hc.G.A1f.U30if5gcZW2dv5Xo3qOlDMhDoAGmqGu',NULL,NULL),(8,'sd','s','$2b$08$PMkqgnxQ4kVTAKU1Qzkd4OnDI0k2GFS3y8DXYwrSujaCCm7dM3ziC',NULL,NULL),(9,'sd','ss','$2b$08$23M8ysvipRfpnD1.S/T2KOsWWOcN8F.7866SgMw5eERF/Mm9aNpC.',NULL,NULL),(10,'sd','sss','$2b$08$P156GlYLARYnFxVey3VQqOmP7t5OHf9tTgZcWpiDHu6sYA4uhwhXi',NULL,NULL),(11,'s','s2','$2b$08$oHFRE/.RsX/YlHoo.qZo8uv4yyOtZrU./acVNmQOEH4zDJHxINsPy',NULL,NULL),(12,'d','d','$2b$08$gWh11oR4Y9LbW8OARbazQ.Kjn3hlHk5Ln2RxtdBkVUUQ56aAaEVBu',NULL,NULL),(13,'pxs','hey@gmail.com','$2b$08$XFTlzdr/lKXZyVDS4f3y2.9wTSxVtbF3KI8tZblZ8KluYaWnPqyH.',NULL,NULL),(14,'pxs','heey@gmail.com','$2b$08$Rb.J1KryryHIm1knGYIpb..17QbYp4xaDW0IRqWxqruoWtg2Q1hBu',NULL,NULL),(15,'pxs','heey1@gmail.com','$2b$08$q.JecHxz..3V6HubqzDR.u4l/zjBDbkmnvMjqFJjrATayl4m7YdOO',NULL,NULL),(16,'prii','pritext@gmail.com','$2b$08$R78rRM4oSGPRshmlHENuCOrBYeh0JoYvRlbmBGtr5aeYnIA/e5mLy',NULL,NULL),(17,'d','ssda','$2b$08$VMEr5NC6gX7VuMRnprGBiuPIekTOPp7A9EhTYrpl7n2x9/SKounUq',NULL,NULL),(18,'pri','priii@gmail.com','$2b$08$7RbvV33b8kqxrgZzchrALeIm0Wi6AOKEXvZqYs8/Hq22DDz.g4EFa',NULL,NULL),(19,'pri','priii@gmail.com','$2b$08$sbMm9O0Y5xIcSfJknRKMM.m3it48vlb9zqBRlDwf2BugwXtb3kGSG',NULL,NULL),(20,'1','1','$2b$08$e6lPn/PIDgBdCw52ufvtxOTUrelsumX0/QUpJ41OKcMnTs8GjVbUm',NULL,NULL),(21,'Cheva','chevamaria@gmail.com','$2b$08$H3cTEqXY1FfSFnf64p2su.RqbHQ0RBn4nP3o/si0Y3ENCtW7MGCe2',NULL,NULL),(22,'pri','pri@gmail.com','$2b$08$4OVUHRtq3g6O2VkUK7mTWegKp1W2MGwOoB.9/sqnFrTgvA6AzHyK2',NULL,NULL),(23,'Choquei','choquei@gmail.com','$2b$08$DWZj.6/psLzPbY8qu2r4ye1ZAat4fJyvv9MxBQX70I5a2Kj5PoOtK','https://pbs.twimg.com/profile_images/1624042710037299200/_wiCdKIW_400x400.jpg','https://pbs.twimg.com/profile_banners/953378142198161409/1676134162/1500x500'),(24,'pri','pri77@gmail.com','$2b$08$qn/VIDcUc2QUynwDrfuj4.vva0MI7TydzciPjMROW3eCZsOu9PRji',NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-02 10:29:44

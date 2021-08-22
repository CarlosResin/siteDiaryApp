-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: sitediarydb
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `role_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'johnlennon@gmail.com','John','Lennon','John2021','engineer'),(2,'paulmccartney@gmail.com','Paul','McCartney','Paul2021','admin'),(3,'carlosresin@gmail.com','Carlos ','Resin','$2a$10$z0.b3PbPyzrsFXOxlA.W3eExQH9Zyhe16Y.9Pa.OLmp6j3ONyymOC','admin'),(7,'paulmccartney1@gmail.com','Paul1','McCartne1y','Paul12021','admin'),(9,'liam@hotmail.com','Liam','Mc','$2a$10$ypJ4BMAivZsAGKxKq0jHWOUSDKblaUBgAwD578MOt0vjNclpTCQGC','admin'),(10,'admin@admin.com','admin','admin','$2a$10$yzA4EWZbwwlomoedAmP0m.JiKODtNOQZb/KFmJcgkNtpPU9k.auPO','admin'),(11,'jessica@hotmail.com','Jessica','Demoi','$2a$10$Edzm3XuGupGkxrphmHXvSutRbCCM272eWIieaTRlCL3GymeXMsvHa','Manager'),(12,'jessica@jessica.com','Jessica','Rum','$2a$10$7ZkHQMcsnj0bf/PGSxtzCuccIa1RLiL7rmOHBDCUKNMZEf7pt3RQ2','Manager'),(13,'newuser@gmail.com','New','User','$2a$10$43srt9UD64Gfef8VebLurODb9E3Gbdn0XNAEAp6DTMgicQQ8wOxM.','admin'),(14,'Mark@gmail.com','Mark','Lewy','$2a$10$RLdy0s103QktzpVZHVIasexMAUdYafCtfMWGJYysIGNmOQPPUv7qK','Aldi'),(15,'James@hotmail.com','James','Daniel','$2a$10$fedN.QuYoZsX1miZnx34KOZviniNbR9i.V/hgX727DdeLewxzXoUu','Surveyor');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-22 10:48:52

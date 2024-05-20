CREATE DATABASE  IF NOT EXISTS `hospital` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospital`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES (1,'Apollo Hospitals','2024-05-20 05:12:10','2024-05-20 05:12:10'),(2,'Jawaharlal Nehru Medical College and Hospital','2024-05-20 05:12:10','2024-05-20 05:12:10'),(3,'Indira Gandhi Institute of Medical Sciences (IGIMS)','2024-05-20 05:12:10','2024-05-20 05:12:10'),(4,'AIIMS - All India Institute Of Medical Science','2024-05-20 05:12:10','2024-05-20 05:12:10'),(5,'King Edward Memorial Hospital','2024-05-20 05:12:10','2024-05-20 05:12:10'),(6,'Christian Medical College and Hospital','2024-05-20 05:12:10','2024-05-20 05:12:10'),(7,'St. John\'s Medical College Hospital','2024-05-20 05:12:10','2024-05-20 05:12:10'),(8,'Sanjay Gandhi Postgraduate Institute of Medical Sciences','2024-05-20 05:12:10','2024-05-20 05:12:10'),(9,'Postgraduate Institute of Medical Education and Research','2024-05-20 05:12:10','2024-05-20 05:12:10'),(10,'Grant Medical College and Sir J.J. Group of Hospitals','2024-05-20 05:12:10','2024-05-20 05:12:10'),(11,'Maulana Azad Medical College','2024-05-20 05:12:10','2024-05-20 05:12:10'),(12,'Lady Hardinge Medical College','2024-05-20 05:12:10','2024-05-20 05:12:10'),(13,'B.J. Medical College','2024-05-20 05:12:10','2024-05-20 05:12:10'),(14,'Stanley Medical College','2024-05-20 05:12:10','2024-05-20 05:12:10'),(15,'Kasturba Medical College','2024-05-20 05:12:10','2024-05-20 05:12:10'),(16,'Madras Medical College','2024-05-20 05:12:10','2024-05-20 05:12:10'),(17,'Seth GS Medical College','2024-05-20 05:12:10','2024-05-20 05:12:10'),(18,'Armed Forces Medical College','2024-05-20 05:12:10','2024-05-20 05:12:10'),(19,'JIPMER','2024-05-20 05:12:10','2024-05-20 05:12:10'),(20,'Nizam\'s Institute of Medical Sciences','2024-05-20 05:12:10','2024-05-20 05:12:10');
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `PsychiatristId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`),
  UNIQUE KEY `email_3` (`email`),
  UNIQUE KEY `email_4` (`email`),
  UNIQUE KEY `email_5` (`email`),
  UNIQUE KEY `email_6` (`email`),
  UNIQUE KEY `email_7` (`email`),
  UNIQUE KEY `email_8` (`email`),
  UNIQUE KEY `email_9` (`email`),
  UNIQUE KEY `email_10` (`email`),
  UNIQUE KEY `email_11` (`email`),
  UNIQUE KEY `email_12` (`email`),
  UNIQUE KEY `email_13` (`email`),
  KEY `PsychiatristId` (`PsychiatristId`),
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`PsychiatristId`) REFERENCES `psychiatrists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `patients_ibfk_10` FOREIGN KEY (`PsychiatristId`) REFERENCES `psychiatrists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `patients_ibfk_11` FOREIGN KEY (`PsychiatristId`) REFERENCES `psychiatrists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `patients_ibfk_2` FOREIGN KEY (`PsychiatristId`) REFERENCES `psychiatrists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `patients_ibfk_3` FOREIGN KEY (`PsychiatristId`) REFERENCES `psychiatrists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `patients_ibfk_4` FOREIGN KEY (`PsychiatristId`) REFERENCES `psychiatrists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `patients_ibfk_5` FOREIGN KEY (`PsychiatristId`) REFERENCES `psychiatrists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `patients_ibfk_6` FOREIGN KEY (`PsychiatristId`) REFERENCES `psychiatrists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `patients_ibfk_7` FOREIGN KEY (`PsychiatristId`) REFERENCES `psychiatrists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `patients_ibfk_8` FOREIGN KEY (`PsychiatristId`) REFERENCES `psychiatrists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `patients_ibfk_9` FOREIGN KEY (`PsychiatristId`) REFERENCES `psychiatrists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Patients_PsychiatristId_foreign_idx` FOREIGN KEY (`PsychiatristId`) REFERENCES `psychiatrists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Md Aatif Hasan','Kolkata','aatifhasan00@gmail.com','+918804197589','Secure123','1716136756038-download.jpeg','2024-05-19 16:39:16','2024-05-19 16:39:16',NULL),(2,'Patient 1','123 Main St','patient1@example.com','1234567890','password123','http://example.com/photo1.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',1),(3,'Patient 2','456 Main St','patient2@example.com','1234567891','password123','http://example.com/photo2.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',1),(4,'Patient 3','789 Main St','patient3@example.com','1234567892','password123','http://example.com/photo3.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',2),(5,'Patient 4','123 Elm St','patient4@example.com','1234567893','password123','http://example.com/photo4.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',2),(6,'Patient 5','456 Elm St','patient5@example.com','1234567894','password123','http://example.com/photo5.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',3),(7,'Patient 6','789 Elm St','patient6@example.com','1234567895','password123','http://example.com/photo6.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',3),(8,'Patient 7','123 Oak St','patient7@example.com','1234567896','password123','http://example.com/photo7.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',4),(9,'Patient 8','456 Oak St','patient8@example.com','1234567897','password123','http://example.com/photo8.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',4),(10,'Patient 9','123 Pine St','patient9@example.com','1234567898','password123','http://example.com/photo9.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',5),(11,'Patient 10','456 Pine St','patient10@example.com','1234567899','password123','http://example.com/photo10.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',5),(12,'Patient 11','789 Pine St','patient11@example.com','1234567800','password123','http://example.com/photo11.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',6),(13,'Patient 12','123 Cedar St','patient12@example.com','1234567801','password123','http://example.com/photo12.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',6),(14,'Patient 13','456 Cedar St','patient13@example.com','1234567802','password123','http://example.com/photo13.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',7),(15,'Patient 14','789 Cedar St','patient14@example.com','1234567803','password123','http://example.com/photo14.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',7),(16,'Patient 15','123 Birch St','patient15@example.com','1234567804','password123','http://example.com/photo15.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',8),(17,'Patient 16','456 Birch St','patient16@example.com','1234567805','password123','http://example.com/photo16.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',8),(18,'Patient 17','789 Birch St','patient17@example.com','1234567806','password123','http://example.com/photo17.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',9),(19,'Patient 18','123 Maple St','patient18@example.com','1234567807','password123','http://example.com/photo18.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',9),(20,'Patient 19','456 Maple St','patient19@example.com','1234567808','password123','http://example.com/photo19.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',10),(21,'Patient 20','789 Maple St','patient20@example.com','1234567809','password123','http://example.com/photo20.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',10),(22,'Patient 21','123 Walnut St','patient21@example.com','1234567810','password123','http://example.com/photo21.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',11),(23,'Patient 22','456 Walnut St','patient22@example.com','1234567811','password123','http://example.com/photo22.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',11),(24,'Patient 23','789 Walnut St','patient23@example.com','1234567812','password123','http://example.com/photo23.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',12),(25,'Patient 24','123 Cherry St','patient24@example.com','1234567813','password123','http://example.com/photo24.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',12),(26,'Patient 25','456 Cherry St','patient25@example.com','1234567814','password123','http://example.com/photo25.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',13),(27,'Patient 26','789 Cherry St','patient26@example.com','1234567815','password123','http://example.com/photo26.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',13),(28,'Patient 27','123 Ash St','patient27@example.com','1234567816','password123','http://example.com/photo27.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',14),(29,'Patient 28','456 Ash St','patient28@example.com','1234567817','password123','http://example.com/photo28.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',14),(30,'Patient 29','789 Ash St','patient29@example.com','1234567818','password123','http://example.com/photo29.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',15),(31,'Patient 30','123 Poplar St','patient30@example.com','1234567819','password123','http://example.com/photo30.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',15),(32,'Patient 31','456 Poplar St','patient31@example.com','1234567820','password123','http://example.com/photo31.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',16),(33,'Patient 32','789 Poplar St','patient32@example.com','1234567821','password123','http://example.com/photo32.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',16),(34,'Patient 33','123 Fir St','patient33@example.com','1234567822','password123','http://example.com/photo33.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',17),(35,'Patient 34','456 Fir St','patient34@example.com','1234567823','password123','http://example.com/photo34.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',17),(36,'Patient 35','789 Fir St','patient35@example.com','1234567824','password123','http://example.com/photo35.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',18),(37,'Patient 36','123 Willow St','patient36@example.com','1234567825','password123','http://example.com/photo36.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',18),(38,'Patient 37','456 Willow St','patient37@example.com','1234567826','password123','http://example.com/photo37.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',19),(39,'Patient 38','789 Willow St','patient38@example.com','1234567827','password123','http://example.com/photo38.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',19),(40,'Patient 39','123 Redwood St','patient39@example.com','1234567828','password123','http://example.com/photo39.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',20),(41,'Patient 40','456 Redwood St','patient40@example.com','1234567829','password123','http://example.com/photo40.jpg','2024-05-20 11:01:14','2024-05-20 11:01:14',20);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psychiatrists`
--

DROP TABLE IF EXISTS `psychiatrists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `psychiatrists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `HospitalId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `HospitalId` (`HospitalId`),
  CONSTRAINT `psychiatrists_ibfk_1` FOREIGN KEY (`HospitalId`) REFERENCES `hospitals` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `psychiatrists_ibfk_10` FOREIGN KEY (`HospitalId`) REFERENCES `hospitals` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `psychiatrists_ibfk_11` FOREIGN KEY (`HospitalId`) REFERENCES `hospitals` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `psychiatrists_ibfk_12` FOREIGN KEY (`HospitalId`) REFERENCES `hospitals` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `psychiatrists_ibfk_2` FOREIGN KEY (`HospitalId`) REFERENCES `hospitals` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `psychiatrists_ibfk_3` FOREIGN KEY (`HospitalId`) REFERENCES `hospitals` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `psychiatrists_ibfk_4` FOREIGN KEY (`HospitalId`) REFERENCES `hospitals` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `psychiatrists_ibfk_5` FOREIGN KEY (`HospitalId`) REFERENCES `hospitals` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `psychiatrists_ibfk_6` FOREIGN KEY (`HospitalId`) REFERENCES `hospitals` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `psychiatrists_ibfk_7` FOREIGN KEY (`HospitalId`) REFERENCES `hospitals` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `psychiatrists_ibfk_8` FOREIGN KEY (`HospitalId`) REFERENCES `hospitals` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `psychiatrists_ibfk_9` FOREIGN KEY (`HospitalId`) REFERENCES `hospitals` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psychiatrists`
--

LOCK TABLES `psychiatrists` WRITE;
/*!40000 ALTER TABLE `psychiatrists` DISABLE KEYS */;
INSERT INTO `psychiatrists` VALUES (1,'Dr. John Doe','2024-05-20 05:14:36','2024-05-20 05:14:36',1),(2,'Dr. Jane Smith','2024-05-20 05:14:36','2024-05-20 05:14:36',1),(3,'Dr. Emily Davis','2024-05-20 05:14:36','2024-05-20 05:14:36',2),(4,'Dr. Michael Brown','2024-05-20 05:14:36','2024-05-20 05:14:36',2),(5,'Dr. Sarah Johnson','2024-05-20 05:14:36','2024-05-20 05:14:36',3),(6,'Dr. William Wilson','2024-05-20 05:14:36','2024-05-20 05:14:36',3),(7,'Dr. Linda Martinez','2024-05-20 05:14:36','2024-05-20 05:14:36',4),(8,'Dr. James Anderson','2024-05-20 05:14:36','2024-05-20 05:14:36',4),(9,'Dr. Richard Thomas','2024-05-20 05:14:36','2024-05-20 05:14:36',5),(10,'Dr. Barbara Jackson','2024-05-20 05:14:36','2024-05-20 05:14:36',5),(11,'Dr. Patricia Harris','2024-05-20 05:14:36','2024-05-20 05:14:36',6),(12,'Dr. Charles Clark','2024-05-20 05:14:36','2024-05-20 05:14:36',6),(13,'Dr. Christopher Lewis','2024-05-20 05:14:36','2024-05-20 05:14:36',7),(14,'Dr. Karen Lee','2024-05-20 05:14:36','2024-05-20 05:14:36',7),(15,'Dr. Nancy Walker','2024-05-20 05:14:36','2024-05-20 05:14:36',8),(16,'Dr. Betty Hall','2024-05-20 05:14:36','2024-05-20 05:14:36',8),(17,'Dr. Mark Allen','2024-05-20 05:14:36','2024-05-20 05:14:36',9),(18,'Dr. Sandra Young','2024-05-20 05:14:36','2024-05-20 05:14:36',9),(19,'Dr. Jason Hernandez','2024-05-20 05:14:36','2024-05-20 05:14:36',10),(20,'Dr. Donna King','2024-05-20 05:14:36','2024-05-20 05:14:36',10),(21,'Dr. Matthew Wright','2024-05-20 05:14:36','2024-05-20 05:14:36',11),(22,'Dr. Angela Scott','2024-05-20 05:14:36','2024-05-20 05:14:36',11),(23,'Dr. Joshua Green','2024-05-20 05:14:36','2024-05-20 05:14:36',12),(24,'Dr. Kimberly Adams','2024-05-20 05:14:36','2024-05-20 05:14:36',12),(25,'Dr. Paul Baker','2024-05-20 05:14:36','2024-05-20 05:14:36',13),(26,'Dr. Laura Gonzalez','2024-05-20 05:14:36','2024-05-20 05:14:36',13),(27,'Dr. Steven Nelson','2024-05-20 05:14:36','2024-05-20 05:14:36',14),(28,'Dr. Debra Carter','2024-05-20 05:14:36','2024-05-20 05:14:36',14),(29,'Dr. Eric Mitchell','2024-05-20 05:14:36','2024-05-20 05:14:36',15),(30,'Dr. Maria Perez','2024-05-20 05:14:36','2024-05-20 05:14:36',15),(31,'Dr. Kevin Roberts','2024-05-20 05:14:36','2024-05-20 05:14:36',16),(32,'Dr. Lisa Turner','2024-05-20 05:14:36','2024-05-20 05:14:36',16),(33,'Dr. Brian Phillips','2024-05-20 05:14:36','2024-05-20 05:14:36',17),(34,'Dr. Dorothy Campbell','2024-05-20 05:14:36','2024-05-20 05:14:36',17),(35,'Dr. Ronald Parker','2024-05-20 05:14:36','2024-05-20 05:14:36',18),(36,'Dr. Amy Evans','2024-05-20 05:14:36','2024-05-20 05:14:36',18),(37,'Dr. Jeffrey Edwards','2024-05-20 05:14:36','2024-05-20 05:14:36',19),(38,'Dr. Margaret Collins','2024-05-20 05:14:36','2024-05-20 05:14:36',19),(39,'Dr. Frank Stewart','2024-05-20 05:14:36','2024-05-20 05:14:36',20),(40,'Dr. Shirley Morris','2024-05-20 05:14:36','2024-05-20 05:14:36',20);
/*!40000 ALTER TABLE `psychiatrists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-20 15:09:36

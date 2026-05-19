CREATE DATABASE  IF NOT EXISTS `jobseeker` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jobseeker`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: jobseeker
-- ------------------------------------------------------
-- Server version	8.4.3

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
-- Table structure for table `listings`
--

DROP TABLE IF EXISTS `listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `salary` varchar(45) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `requirements` longtext,
  `benefits` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_listings_users_idx` (`user_id`),
  CONSTRAINT `fk_listings_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listings`
--

LOCK TABLES `listings` WRITE;
/*!40000 ALTER TABLE `listings` DISABLE KEYS */;
INSERT INTO `listings` VALUES (1,1,'Call Center Agent','We are looking for a customer-focused call center agent to handle inbound customer inquiries and provide excellent support services.','28000','bpo, customer service, voice, support','Metro BPO Solutions','Ayala Avenue','Makati City','Metro Manila','0917-456-2389','careers@metrobpo.ph','At least Senior High School graduate with good English communication skills.','Night differential, HMO, paid training, performance bonuses','2026-05-18 14:31:35'),(2,2,'Virtual Assistant','Seeking a reliable virtual assistant to manage emails, schedules, and administrative tasks for international clients.','35000','virtual assistant, remote, admin, work from home','RemotePro PH','IT Park','Cebu City','Cebu','0921-774-9921','jobs@remotepro.ph','Strong organizational skills and experience using Google Workspace or Microsoft Office.','Work-from-home setup, internet allowance, flexible schedule','2026-05-18 14:33:55'),(3,3,'Software Engineer','We are seeking a skilled software engineer to develop scalable web and mobile applications for local and international clients.','90000','development. coding, java, python','Tech Solutions PH Inc.','Bonifacio Global City','Taguig City','Metro Manila','0918-334-8890','info@techsolutionsph.com','Bachelor’s degree in Computer Science or related field with 3+ years of development experience.','HMO, flexible work hours, hybrid setup, paid certifications','2026-05-18 14:37:34'),(4,4,'Graphic Designer','Create engaging visual content for social media campaigns, branding, and digital advertisements.','30000','design, photoshop, branding, creative','Creative Pixels Studio','Session Road','Baguio City','Benguet','0935-882-7710','hr@creativepixels.ph','Proficiency in Adobe Photoshop and Illustrator with a strong design portfolio','Rice allowance, paid leaves, annual team outings','2026-05-18 14:42:56'),(8,5,'Delivery Rider','Deliver packages safely and efficiently within assigned areas while maintaining excellent customer service.','22000','delivery, logistics, rider, courier','Swift Express PH','Diversion Road','Iloilo City','Iloilo ','0928-661-7722','apply@swiftexpress.ph','Valid driver’s license and familiarity with local routes.','Fuel allowance, incentives, accident insurance','2026-05-18 14:44:52'),(9,6,'Registered Nurse','Provide quality patient care and assist physicians in hospital and clinical operations.','40000','healthcare, nurse, hospital, medical','St. Raphael Medical Center','McArthur Highway','Angeles City','Pampanga','0916-228-5544','recruitment@straphaelmed.ph','Licensed Registered Nurse with strong patient care skills.','Health insurance, overtime pay, free uniforms','2026-05-18 17:34:48');
/*!40000 ALTER TABLE `listings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Chynna Lacsa','ChyLacsa@gmail.com','123456','Sto. Domingo','Nueva Eciija','2026-05-18 14:05:11'),(2,'Miko Domingo','MikoD@gmail.com','246810','Zaragoza','Nueva Ecija','2026-05-18 14:07:36'),(3,'Areown Dapne Venus','AreownaV@gmai.com','3691215','General Mamerto Natividad','Nueva Ecija','2026-05-18 14:10:54'),(4,'Stephanie Claire Caingcoy','StephCaingcoy@gmaiil.com','123456','Baler','Aurora','2026-05-18 14:41:56'),(5,'Hazel Kim Maglanoc','KimMaglanoc@gmail.com','246810','Penaranda','Nueva Ecija','2026-05-18 14:42:47'),(6,'Alexa Macapagal','MacapagalLex@gmail.com','12123434','Angeles City','Pampanga','2026-05-18 17:32:00'),(7,'Kento Mikami','kento.mikami28@gmail.com','$2y$10$2ortFUWuqG6v049VmSGHb.J8t8o08KcOlSkz5nSEZ..ICPLPWG3OW','Cabiao','Nueva Ecija','2026-05-19 00:31:34');
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

-- Dump completed on 2026-05-19 12:51:06

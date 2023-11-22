-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: alone
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
-- Table structure for table `contestant_experiences`
--

DROP TABLE IF EXISTS `contestant_experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contestant_experiences` (
  `Contestant_ID` int NOT NULL,
  `Experience_ID` int NOT NULL,
  KEY `Experience_ID_idx` (`Experience_ID`) /*!80000 INVISIBLE */,
  KEY `Contestant_ID` (`Contestant_ID`),
  KEY `Contestant_ID_idx` (`Contestant_ID`),
  CONSTRAINT `Contestant_ID` FOREIGN KEY (`Contestant_ID`) REFERENCES `contestants` (`Contestant_ID`),
  CONSTRAINT `Experience_ID` FOREIGN KEY (`Experience_ID`) REFERENCES `experience_descriptions` (`Experience_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contestant_experiences`
--

LOCK TABLES `contestant_experiences` WRITE;
/*!40000 ALTER TABLE `contestant_experiences` DISABLE KEYS */;
INSERT INTO `contestant_experiences` VALUES (0,1),(0,2),(0,3),(1,4),(1,5),(1,6),(2,5),(2,4),(2,7),(3,8),(3,3),(4,4),(5,9),(5,10),(6,11),(6,4),(6,3),(7,5),(7,3),(7,4),(7,10),(8,5),(8,11),(8,3),(9,2),(9,11),(9,6),(10,6),(10,5),(11,5),(11,11),(11,6),(12,9),(12,8),(13,3),(13,6),(14,6),(14,9),(15,11),(15,6),(16,6),(16,9),(17,5),(17,9),(17,2),(18,12),(19,9),(19,7),(20,8),(20,5),(21,8),(21,3),(21,6),(22,3),(23,6),(23,5),(23,8),(24,3),(24,8),(25,5),(25,3),(26,5),(27,7),(27,5),(28,13),(29,1),(29,6),(30,4),(30,5),(30,6),(30,14),(31,14),(31,7),(31,5),(32,14),(32,5),(32,6),(33,14),(33,8),(33,6),(33,5),(34,6),(34,11),(34,14),(35,12),(35,6),(35,14),(36,11),(36,9),(36,14),(37,6),(37,3),(37,14),(38,7),(38,6),(38,14),(39,3),(39,6),(39,8),(39,14),(40,8),(40,10),(40,11),(41,3),(41,6),(41,8),(42,6),(42,12),(42,11),(42,8),(43,11),(43,5),(44,8),(44,6),(45,8),(45,10),(45,11),(46,9),(46,5),(46,6),(47,2),(47,11),(48,9),(48,6),(48,8),(48,11),(49,11),(50,11),(50,5),(50,4),(51,8),(51,6),(51,3),(51,11),(52,8),(52,10),(53,6),(54,6),(54,9),(54,10),(54,11),(55,12),(55,3),(56,6),(56,11),(57,8),(57,11),(58,11),(58,9),(59,6),(59,5),(60,11),(60,3),(60,8),(61,8),(62,5),(63,8),(63,6),(64,11),(64,3),(65,8),(65,9),(65,1),(66,6),(66,8),(67,8),(67,5),(68,11),(68,10),(69,11),(69,8),(70,9),(70,1),(70,10),(71,8),(71,11),(71,10),(71,4),(72,6),(72,8),(72,3),(72,5),(73,4),(73,11),(74,9),(74,6),(75,11),(75,3),(76,11),(76,4),(77,11),(78,11),(79,10),(79,5),(79,8);
/*!40000 ALTER TABLE `contestant_experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contestant_items`
--

DROP TABLE IF EXISTS `contestant_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contestant_items` (
  `Contestant_ID` int NOT NULL,
  `Item_ID` int NOT NULL,
  `Quantity` int NOT NULL,
  KEY `Contestant_ID_idx` (`Contestant_ID`),
  KEY `Item_ID_idx` (`Item_ID`),
  CONSTRAINT `Item_Contestant_ID` FOREIGN KEY (`Contestant_ID`) REFERENCES `contestants` (`Contestant_ID`),
  CONSTRAINT `Item_ID` FOREIGN KEY (`Item_ID`) REFERENCES `item_descriptions` (`Item_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contestant_items`
--

LOCK TABLES `contestant_items` WRITE;
/*!40000 ALTER TABLE `contestant_items` DISABLE KEYS */;
INSERT INTO `contestant_items` VALUES (0,1,1),(0,2,1),(0,3,1),(0,4,1),(0,5,1),(0,6,1),(0,7,1),(0,8,1),(0,9,1),(0,10,1),(1,1,1),(1,6,1),(1,3,1),(1,4,1),(1,11,1),(1,12,2),(1,2,1),(1,13,1),(1,9,1),(2,7,1),(2,6,1),(2,2,1),(2,14,1),(2,3,1),(2,4,1),(2,8,1),(2,15,1),(2,10,1),(2,16,1),(3,4,1),(3,1,1),(3,6,1),(3,2,1),(3,3,1),(3,17,2),(3,7,1),(3,12,1),(3,10,1),(4,13,1),(4,6,1),(4,2,1),(4,3,1),(4,4,1),(4,5,1),(4,7,1),(4,8,1),(4,18,1),(4,10,1),(5,17,1),(5,13,1),(5,6,1),(5,2,1),(5,3,1),(5,4,1),(5,7,1),(5,15,1),(5,12,1),(5,10,1),(6,3,1),(6,13,1),(6,1,1),(6,6,1),(6,2,1),(6,17,1),(6,4,1),(6,7,1),(6,10,1),(6,11,1),(7,17,1),(7,13,1),(7,6,1),(7,2,1),(7,3,1),(7,4,1),(7,7,1),(7,8,1),(7,12,1),(7,10,1),(8,1,1),(8,6,1),(8,2,1),(8,4,1),(8,3,1),(8,5,1),(8,7,1),(8,15,1),(8,10,1),(8,16,1),(9,14,1),(9,13,1),(9,1,1),(9,6,1),(9,2,1),(9,17,1),(9,3,1),(9,4,1),(9,7,1),(9,15,1),(10,10,1),(10,4,1),(10,3,1),(10,7,1),(10,1,1),(10,6,1),(10,2,1),(10,14,1),(10,8,1),(10,12,1),(11,10,1),(11,3,1),(11,7,1),(11,1,1),(11,6,1),(11,4,1),(11,2,1),(11,8,1),(11,13,1),(11,12,1),(12,10,1),(12,4,1),(12,3,1),(12,7,1),(12,1,1),(12,6,1),(12,2,1),(12,8,1),(12,11,1),(12,12,1),(13,10,1),(13,4,1),(13,19,1),(13,7,1),(13,1,1),(13,6,1),(13,2,1),(13,8,1),(13,12,2),(14,6,1),(14,4,1),(14,3,1),(14,20,1),(14,1,1),(14,11,1),(14,2,1),(14,21,1),(14,12,2),(15,6,1),(15,10,1),(15,4,1),(15,3,1),(15,7,1),(15,1,1),(15,2,1),(15,8,1),(15,15,1),(15,9,1),(16,6,1),(16,4,1),(16,3,1),(16,7,1),(16,1,1),(16,10,1),(16,2,1),(16,8,1),(16,12,2),(17,10,1),(17,4,1),(17,3,1),(17,7,1),(17,1,1),(17,6,1),(17,2,1),(17,8,1),(17,12,2),(18,10,1),(18,4,1),(18,3,1),(18,7,1),(18,1,1),(18,6,1),(18,2,1),(18,8,1),(18,17,1),(18,12,1),(19,6,1),(19,4,1),(19,3,1),(19,7,1),(19,1,1),(19,10,1),(19,2,1),(19,14,1),(19,8,1),(19,12,1),(20,22,1),(20,2,1),(20,6,1),(20,3,1),(20,4,1),(20,18,1),(20,7,1),(20,13,1),(20,1,1),(20,11,1),(21,1,1),(21,3,1),(21,4,1),(21,5,1),(21,13,1),(21,2,1),(21,7,1),(21,15,1),(21,10,1),(21,12,1),(22,2,1),(22,14,1),(22,6,1),(22,10,1),(22,3,1),(22,8,1),(22,7,1),(22,13,1),(22,4,1),(22,12,1),(23,6,1),(23,2,1),(23,3,1),(23,4,1),(23,7,1),(23,15,1),(23,8,1),(23,9,1),(23,10,1),(23,12,1),(24,13,1),(24,4,1),(24,2,1),(24,3,1),(24,7,1),(24,10,1),(24,17,1),(24,1,1),(24,12,2),(25,6,1),(25,10,1),(25,13,1),(25,3,1),(25,7,1),(25,15,1),(25,1,1),(25,2,1),(25,4,1),(25,12,1),(26,13,1),(26,10,1),(26,1,1),(26,2,1),(26,21,1),(26,6,1),(26,3,1),(26,4,1),(26,7,1),(26,12,1),(27,10,1),(27,11,1),(27,13,1),(27,7,1),(27,3,1),(27,4,1),(27,2,1),(27,15,1),(27,1,1),(27,9,1),(28,2,1),(28,3,1),(28,7,1),(28,16,1),(28,4,1),(28,1,1),(28,13,1),(28,6,1),(28,10,1),(28,12,1),(29,13,1),(29,6,1),(29,1,1),(29,10,1),(29,4,1),(29,2,1),(29,3,1),(29,7,1),(29,12,2),(30,12,2),(30,1,1),(30,6,1),(30,3,1),(30,4,1),(30,11,1),(30,2,1),(30,13,1),(30,9,1),(31,10,1),(31,13,1),(31,7,1),(31,3,1),(31,4,1),(31,11,1),(31,2,1),(31,15,1),(31,1,1),(31,9,1),(32,10,1),(32,2,1),(32,3,1),(32,4,1),(32,13,1),(32,1,1),(32,7,1),(32,9,1),(32,12,2),(33,6,1),(33,2,1),(33,3,1),(33,4,1),(33,7,1),(33,15,1),(33,8,1),(33,9,1),(33,10,1),(33,12,1),(34,9,1),(34,6,1),(34,2,1),(34,3,1),(34,15,1),(34,10,1),(34,7,1),(34,4,1),(34,1,1),(34,12,1),(35,11,1),(35,6,1),(35,1,1),(35,2,1),(35,7,1),(35,4,1),(35,3,1),(35,15,1),(35,12,1),(35,9,1),(36,3,1),(36,10,1),(36,4,1),(36,12,1),(36,5,1),(36,2,1),(36,15,1),(36,7,1),(36,1,1),(36,6,1),(37,10,1),(37,1,1),(37,2,1),(37,4,1),(37,11,1),(37,3,1),(37,7,1),(37,8,1),(37,9,1),(37,12,1),(38,6,1),(38,1,1),(38,10,1),(38,9,1),(38,7,1),(38,15,1),(38,2,1),(38,4,1),(38,19,1),(38,12,1),(39,5,1),(39,1,1),(39,2,1),(39,3,1),(39,4,1),(39,13,1),(39,7,1),(39,15,1),(39,10,1),(39,12,1),(40,13,1),(40,1,1),(40,6,1),(40,2,1),(40,19,1),(40,4,1),(40,7,1),(40,15,1),(40,9,1),(40,11,1),(41,4,1),(41,15,1),(41,1,1),(41,2,1),(41,3,1),(41,10,1),(41,11,1),(41,7,1),(41,13,1),(41,12,1),(42,2,1),(42,3,1),(42,10,2),(42,7,1),(42,8,1),(42,6,1),(42,12,1),(42,13,1),(42,15,1),(43,2,1),(43,4,1),(43,10,1),(43,1,1),(43,3,1),(43,13,1),(43,9,1),(43,17,1),(43,15,1),(43,7,1),(44,13,1),(44,3,1),(44,6,1),(44,2,1),(44,1,1),(44,10,1),(44,15,1),(44,7,1),(44,4,1),(44,9,1),(45,7,1),(45,6,1),(45,11,1),(45,1,1),(45,2,1),(45,3,1),(45,9,1),(45,12,1),(45,4,1),(45,13,1),(46,2,1),(46,1,1),(46,11,1),(46,6,1),(46,3,1),(46,4,1),(46,9,1),(46,7,1),(46,12,2),(47,11,1),(47,1,1),(47,6,1),(47,2,1),(47,3,1),(47,4,1),(47,7,1),(47,15,1),(47,9,1),(47,10,1),(48,2,1),(48,15,1),(48,13,1),(48,1,1),(48,3,1),(48,12,1),(48,10,1),(48,4,1),(48,7,1),(48,6,1),(49,1,1),(49,2,1),(49,6,1),(49,10,1),(49,7,1),(49,15,1),(49,4,1),(49,3,1),(49,22,1),(49,13,1),(50,1,1),(50,4,1),(50,8,1),(50,3,1),(50,9,1),(50,6,1),(50,11,1),(50,10,1),(50,15,1),(50,2,1),(51,6,1),(51,10,1),(51,3,1),(51,4,1),(51,2,1),(51,1,1),(51,9,1),(51,7,1),(51,15,1),(51,13,1),(52,9,1),(52,7,1),(52,8,1),(52,6,1),(52,3,1),(52,2,1),(52,13,1),(52,4,1),(52,15,1),(52,11,1),(53,15,1),(53,8,1),(53,7,1),(53,11,1),(53,6,1),(53,12,1),(53,4,1),(53,3,1),(53,13,1),(53,2,1),(54,1,1),(54,2,1),(54,4,1),(54,13,1),(54,11,1),(54,3,1),(54,6,1),(54,9,1),(54,7,1),(54,15,1),(55,2,1),(55,13,1),(55,3,1),(55,7,1),(55,9,1),(55,5,1),(55,1,1),(55,6,1),(55,10,1),(55,4,1),(56,11,1),(56,15,1),(56,7,1),(56,9,1),(56,6,1),(56,1,1),(56,4,1),(56,3,1),(56,2,1),(56,8,1),(57,10,1),(57,6,1),(57,15,1),(57,3,1),(57,4,1),(57,11,1),(57,7,1),(57,2,1),(57,13,1),(57,9,1),(58,2,1),(58,3,1),(58,4,1),(58,7,1),(58,15,1),(58,9,1),(58,11,1),(58,13,1),(58,1,1),(58,6,1),(59,13,1),(59,2,1),(59,1,1),(59,6,1),(59,11,1),(59,4,1),(59,7,1),(59,3,1),(59,23,1),(59,15,1),(60,15,1),(60,2,1),(60,3,1),(60,6,1),(60,1,1),(60,11,1),(60,13,1),(60,7,1),(60,9,1),(60,4,1),(61,2,1),(61,11,1),(61,6,1),(61,1,1),(61,3,1),(61,4,1),(61,7,1),(61,9,1),(61,13,1),(61,15,1),(62,2,1),(62,3,1),(62,10,1),(62,1,1),(62,12,1),(62,4,1),(62,9,1),(62,7,1),(62,15,1),(62,13,1),(63,2,1),(63,3,1),(63,6,1),(63,1,1),(63,17,1),(63,15,1),(63,9,1),(63,7,1),(63,11,1),(63,13,1),(64,9,1),(64,2,1),(64,11,1),(64,7,1),(64,3,1),(64,15,1),(64,13,1),(64,1,1),(64,6,1),(64,4,1),(65,15,1),(65,2,1),(65,3,1),(65,4,1),(65,13,1),(65,9,1),(65,7,1),(65,6,1),(65,1,1),(65,11,1),(66,13,1),(66,7,1),(66,10,1),(66,1,1),(66,2,1),(66,15,1),(66,3,1),(66,5,1),(66,12,1),(66,9,1),(67,2,1),(67,3,1),(67,4,1),(67,11,1),(67,1,1),(67,6,1),(67,9,1),(67,7,1),(67,15,1),(67,13,1),(68,2,1),(68,4,1),(68,3,1),(68,6,1),(68,1,1),(68,11,1),(68,9,1),(68,7,1),(68,15,1),(68,12,1),(69,1,1),(69,3,1),(69,4,1),(69,15,1),(69,11,1),(69,2,1),(69,6,1),(69,7,1),(69,13,1),(69,12,1),(70,15,1),(70,2,1),(70,6,1),(70,11,1),(70,4,1),(70,3,1),(70,13,1),(70,9,1),(70,7,1),(70,24,1),(71,4,1),(71,3,1),(71,6,1),(71,7,1),(71,1,1),(71,13,1),(71,15,1),(71,2,1),(71,9,1),(71,11,1),(72,13,1),(72,2,1),(72,3,1),(72,4,1),(72,7,1),(72,15,1),(72,9,1),(72,11,1),(72,6,1),(72,12,1),(73,2,1),(73,17,1),(73,6,1),(73,1,1),(73,11,1),(73,4,1),(73,7,1),(73,3,1),(73,9,1),(73,15,1),(74,25,1),(74,11,1),(74,4,1),(74,9,1),(74,1,1),(74,2,1),(74,3,1),(74,26,1),(74,13,1),(74,15,1),(75,4,1),(75,2,1),(75,15,1),(75,11,1),(75,25,1),(75,3,1),(75,6,1),(75,13,1),(75,9,1),(75,7,1),(76,13,1),(76,2,1),(76,15,1),(76,7,1),(76,4,1),(76,6,1),(76,3,1),(76,9,1),(76,11,1),(76,1,1),(77,2,1),(77,15,1),(77,11,1),(77,25,1),(77,3,1),(77,4,1),(77,6,1),(77,13,1),(77,9,1),(77,7,1),(78,2,1),(78,15,1),(78,11,1),(78,3,1),(78,4,1),(78,9,1),(78,7,1),(78,13,1),(78,1,1),(78,6,1),(79,15,1),(79,6,1),(79,10,1),(79,11,1),(79,4,1),(79,2,1),(79,9,1),(79,7,1),(79,3,1),(79,12,1);
/*!40000 ALTER TABLE `contestant_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contestant_origins`
--

DROP TABLE IF EXISTS `contestant_origins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contestant_origins` (
  `Origin_ID` int NOT NULL,
  `City` varchar(40) NOT NULL,
  `State/Province` varchar(40) NOT NULL,
  `Country` varchar(40) NOT NULL,
  `Avg_Winter_Low` int DEFAULT NULL,
  PRIMARY KEY (`Origin_ID`),
  KEY `Origin_ID_UNIQUE` (`Origin_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contestant_origins`
--

LOCK TABLES `contestant_origins` WRITE;
/*!40000 ALTER TABLE `contestant_origins` DISABLE KEYS */;
INSERT INTO `contestant_origins` VALUES (1,'Blairsville','Georgia','United States',27),(2,'Lincoln','Nebraska','United States',17),(3,'Bellingham','Massachusetts','United States',16),(4,'Quasqueton','Iowa','United States',13),(5,'Pittsburgh','Pennsylvania','United States',24),(6,'Albemarle','North Carolina','United States',32),(7,'Saint John','New Brunswick','Canada',13),(8,'Windsor','Ontario','Canada',20),(9,'Umatilla','Florida','United States',48),(10,'Jackson','Ohio','United States',23),(11,'Kentwood','Michigan','United States',19),(12,'Rush City','Minnesota','United States',5),(13,'Santa Pola','Valencia','Spain',45),(14,'Portland','Oregon','United States',37),(15,'Augusta','Georgia','United States',41),(16,'Boulder','Utah','United States',20),(17,'Lewis','Colorado','United States',19),(18,'Aiken','South Carolina','United States',34),(19,'Homer','Alaska','United States',20),(20,'Coolidge','Arizona','United States',36),(21,'Appleton','Maine','United States',15),(22,'Edna Bay','Alaska','United States',32),(23,'Port McNeill','British Columbia','Canada',35),(24,'Salt Lake City','Utah','United States',28),(25,'Lopez Island','Washington','United States',35),(26,'Canal Flats','British Columbia','Canada',11),(27,'Mahanoy City','Pennsylvania','United States',19),(28,'Mantua','Ohio','United States',24),(29,'Caledon','Ontario','Canada',14),(30,'Langhorne','Pennsylvania','United States',20),(31,'Fox','Alaska','United States',-6),(32,'Skowhegan','Maine','United States',7),(33,'Raymond','Washington','United States',35),(34,'Fox Lake','Illinois','United States',16),(35,'Anchorage','Alaska','United States',16),(36,'Lynchburg','Virginia','United States',25),(37,'Grass Valley','California','United States',33),(38,'Fort Collins','Colorado','United States',18),(39,'Echo Bay','British Columbia','Canada',33),(40,'Mullingar','Saskatchewan','Canada',-6),(41,'San Antonio','Texas','United States',41),(42,'Vancouver','Washington','United States',35),(43,'Monument','Colorado','United States',17),(44,'Lubbock','Texas','United States',28),(45,'Red Devil','Alaska','United States',35),(46,'Flathead Valley','Montana','United States',35),(47,'Espanola','Ontario','Canada',35),(48,'Indianapolis','Indiana','United States',35),(49,'Redding','California','United States',37),(50,'Sisters','Oregon','United States',21),(51,'Sturgis','Kentucky','United States',26),(52,'Plattsmouth','Nebraska','United States',20),(53,'Henry','Tennessee','United States',27),(54,'Kendrick','Idaho','United States',37),(55,'Otis','Oregon','United States',38),(56,'Exeter','England','United Kingdom',37),(57,'Inian Islands','Alaska','United States',28),(58,'Wellsboro','Pennsylvania','United States',18),(59,'East Jordan','Michigan','United States',16),(60,'St. Croix','US Virgin Islands','U.S. Virgin Islands',71),(61,'Cherryfield','Maine','United States',12),(62,'Oak Ridge','Tennessee','United States',30),(63,'Laramie','Wyoming','United States',9),(64,'Pinawa','Manitoba','Canada',-4),(65,'Sandpoint','Idaho','United States',23),(66,'Montreal','Quebec','Canada',14),(67,'Fayetteville','Arkansas','United States',27),(68,'Pagosa Springs','Colorado','United States',6),(69,'Earlysville','Virginia','United States',30),(70,'Bellevue','Idaho','United States',15),(71,'Juneau','Alaska','United States',27);
/*!40000 ALTER TABLE `contestant_origins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contestants`
--

DROP TABLE IF EXISTS `contestants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contestants` (
  `Contestant_ID` int NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Age` int NOT NULL,
  `Sex` varchar(6) NOT NULL,
  `Partner` varchar(3) NOT NULL,
  `Kids` varchar(3) NOT NULL,
  `Origin_ID` int NOT NULL,
  `Season_ID` int NOT NULL,
  PRIMARY KEY (`Contestant_ID`),
  UNIQUE KEY `Contestant_ID_UNIQUE` (`Contestant_ID`),
  KEY `Origin_ID_idx` (`Origin_ID`),
  KEY `Season_ID` (`Season_ID`),
  CONSTRAINT `Origin_ID` FOREIGN KEY (`Origin_ID`) REFERENCES `contestant_origins` (`Origin_ID`),
  CONSTRAINT `Season_ID` FOREIGN KEY (`Season_ID`) REFERENCES `seasons` (`Season_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contestants`
--

LOCK TABLES `contestants` WRITE;
/*!40000 ALTER TABLE `contestants` DISABLE KEYS */;
INSERT INTO `contestants` VALUES (0,'Alan Kay',40,'Male','Yes','Yes',1,1),(1,'Sam Larson',22,'Male','Yes','Yes',2,1),(2,'Mitch Mitchell',34,'Male','Yes','Yes',3,1),(3,'Lucas Miller',32,'Male','Yes','No',4,1),(4,'Dustin Feher',37,'Male','Yes','No',5,1),(5,'Brant McGee',44,'Male','Yes','Yes',6,1),(6,'Wayne Russell',46,'Male','Yes','Yes',7,1),(7,'Joe Robinet',24,'Male','Yes','Yes',8,1),(8,'Chris Weatherman',41,'Male','Yes','Yes',9,1),(9,'Josh Chavez',31,'Male','Yes','Yes',10,1),(10,'David McIntyre',50,'Male','No','Yes',11,2),(11,'Larry Roberts',44,'Male','Yes','Yes',12,2),(12,'Jose Martinez Amoedo',45,'Male','Yes','Yes',13,2),(13,'Nicole Apelian',45,'Female','Yes','Yes',14,2),(14,'Justin Vititoe',35,'Male','No','No',15,2),(15,'Randy Champagne',28,'Male','No','No',16,2),(16,'Mike Lowe',55,'Male','No','No',17,2),(17,'Tracy Wilson',44,'Female','No','Yes',18,2),(18,'Mary Kate Green',36,'Female','No','Yes',19,2),(19,'Desmond White',37,'Male','No','No',20,2),(20,'Zachary Fowler',36,'Male','Yes','Yes',21,3),(21,'Carleigh Fairchild',28,'Female','No','No',22,3),(22,'Megan Hanacek',41,'Female','Yes','Yes',23,3),(23,'Dave Nessia',49,'Male','No','No',24,3),(24,'Callie North',27,'Female','No','No',25,3),(25,'Greg Ovens',53,'Male','No','Yes',26,3),(26,'Dan Wowak',34,'Male','Yes','Yes',27,3),(27,'Britt Ahart',40,'Male','No','Yes',28,3),(28,'Zachary Gault',22,'Male','No','No',29,3),(29,'Jim Shields',37,'Male','Yes','No',30,3),(30,'Sam Larson',24,'Male','Yes','Yes',2,5),(31,'Britt Ahart',41,'Male','No','Yes',28,5),(32,'Larry Roberts',46,'Male','Yes','Yes',12,5),(33,'Dave Nessia',50,'Male','No','No',24,5),(34,'Randy Champagne',31,'Male','No','No',16,5),(35,'Brooke Whipple',45,'Female','Yes','Yes',31,5),(36,'Jesse Bosdell',32,'Male','No','No',32,5),(37,'Nicole Apelian',47,'Female','Yes','Yes',33,5),(38,'Brad Richardson',24,'Male','No','No',34,5),(39,'Carleigh Fairchild',30,'Female','No','No',35,5),(40,'Jordan Jonas',35,'Male','Yes','No',36,6),(41,'Woniya Thibeault',42,'Female','No','No',37,6),(42,'Nathan Donnelly',39,'Male','Yes','No',25,6),(43,'Barry Karcher',39,'Male','Yes','Yes',38,6),(44,'Nikki van Schyndel',44,'Female','No','No',39,6),(45,'Michelle Wohlberg',31,'Female','Yes','Yes',40,6),(46,'Brady Nicholls',36,'Male','Yes','Yes',41,6),(47,'Ray Livingston',43,'Male','Yes','Yes',42,6),(48,'Donny Dust',38,'Male','Yes','Yes',43,6),(49,'Tim Backus',55,'Male','No','Yes',44,6),(50,'Roland Welker',47,'Male','No','No',45,7),(51,'Callie Russell',31,'Female','No','No',46,7),(52,'Kielyn Marrone',33,'Female','Yes','No',47,7),(53,'Amós Rodriguez',40,'Male','No','No',48,7),(54,'Mark D\'Ambrosio',33,'Male','No ','Yes',42,7),(55,'Joe Nicholas',31,'Male','No','No',49,7),(56,'Joel Van Der Loon',34,'Male','Yes','Yes',50,7),(57,'Keith Syers',45,'Male','Yes','Yes',51,7),(58,'Correy Hawk',30,'Male','No','No',52,7),(59,'Shawn Helton',43,'Male','Yes','Yes',53,7),(60,'Clay Hayes',40,'Male','Yes','Yes',54,8),(61,'Biko Wright',29,'Male','Yes','Yes',55,8),(62,'Theresa Emmerich Kamper',40,'Female','No','No',56,8),(63,'Colter Barnes',36,'Male','No','No',57,8),(64,'Rose Anna Moore',43,'Female','No','Yes',58,8),(65,'Nate Weber',47,'Male','Yes','Yes',59,8),(66,'Matt Corradino',42,'Male','Yes','Yes',60,8),(67,'Michelle Finn',46,'Female','Yes','No',61,8),(68,'Jordon Bell',43,'Male','Yes','Yes',62,8),(69,'Tim Madsen',48,'Male','No','No',63,8),(70,'Juan Pablo Quiñonez',30,'Male','Yes','No',64,9),(71,'Karie Lee Knoke',57,'Female','Yes','No',65,9),(72,'Teimojin Tan',31,'Male','No','No',66,9),(73,'Adam Riley',36,'Male','Yes','No',67,9),(74,'Jessie Krebs',49,'Female','Yes','No',68,9),(75,'Tom Garstang',35,'Male','Yes','No',69,9),(76,'Terry Burns',30,'Male','No','No',19,9),(77,'Benji Hill',46,'Male','Yes','Yes',70,9),(78,'Igor Limansky',39,'Male','Yes','No',24,9),(79,'Jacques Turcotte',23,'Male','Yes','No',71,9);
/*!40000 ALTER TABLE `contestants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience_descriptions`
--

DROP TABLE IF EXISTS `experience_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience_descriptions` (
  `Experience_ID` int NOT NULL,
  `Description` varchar(40) NOT NULL,
  PRIMARY KEY (`Experience_ID`),
  KEY `Experience_ID_UNIQUE` (`Experience_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience_descriptions`
--

LOCK TABLES `experience_descriptions` WRITE;
/*!40000 ALTER TABLE `experience_descriptions` DISABLE KEYS */;
INSERT INTO `experience_descriptions` VALUES (1,'Health Care'),(2,'Police'),(3,'Plant Experience'),(4,'Solo Trips'),(5,'Bushcrafting'),(6,'Survival School'),(7,'Boy Scout'),(8,'Rural Living'),(9,'Military'),(10,'Cold Weather'),(11,'Hunter'),(12,'Firefighter'),(13,'Solo Camping'),(14,'Alone');
/*!40000 ALTER TABLE `experience_descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_descriptions`
--

DROP TABLE IF EXISTS `item_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_descriptions` (
  `Item_ID` int NOT NULL,
  `Description` varchar(30) NOT NULL,
  PRIMARY KEY (`Item_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_descriptions`
--

LOCK TABLES `item_descriptions` WRITE;
/*!40000 ALTER TABLE `item_descriptions` DISABLE KEYS */;
INSERT INTO `item_descriptions` VALUES (1,'Saw'),(2,'Sleeping bag'),(3,'Pot'),(4,'Ferro rod'),(5,'Canteen'),(6,'Axe'),(7,'Fishing line and hooks'),(8,'Gill net'),(9,'Snare wire'),(10,'Knife'),(11,'Multitool'),(12,'Food ration'),(13,'Paracord'),(14,'Bivy bag'),(15,'Bow and arrows'),(16,'Sharpening stone'),(17,'Tarp'),(18,'Slingshot'),(19,'Frying pan'),(20,'Climbing Rope'),(21,'Hammock'),(22,'Shovel'),(23,'Scotch eyed auger'),(24,'Emergency rations'),(25,'Salt'),(26,'Machete');
/*!40000 ALTER TABLE `item_descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reason_descriptions`
--

DROP TABLE IF EXISTS `reason_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reason_descriptions` (
  `Reason_ID` int NOT NULL,
  `Description` text NOT NULL,
  PRIMARY KEY (`Reason_ID`),
  KEY `Reason_ID_UNIQUE` (`Reason_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reason_descriptions`
--

LOCK TABLES `reason_descriptions` WRITE;
/*!40000 ALTER TABLE `reason_descriptions` DISABLE KEYS */;
INSERT INTO `reason_descriptions` VALUES (1,'Victor'),(2,'Missed family, hunger'),(3,'Missed family'),(4,'No desire to stay'),(5,'Fear of weather'),(6,'Consumed unsafe water'),(7,'Fear of wild animals'),(8,'Lost fire starter'),(9,'Fell into cold water'),(10,'Injury with sharp object'),(11,'BMI too low; evacuated'),(12,'Broke multiple teeth'),(13,'Too cold / hypothermia'),(14,'Constipation due to poor diet'),(15,'Pre-existing Illness'),(16,'Unable to find food'),(17,'Shelter fire'),(18,'Consumed unsafe food'),(19,'Injury from fall'),(20,'Frostbite, malnutrition'),(21,'Illness/injury caused by malnutrition');
/*!40000 ALTER TABLE `reason_descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `results` (
  `Contestant_ID` int NOT NULL,
  `Reason_ID` int NOT NULL,
  `Season` int NOT NULL,
  `Position` int NOT NULL,
  `Duration` int NOT NULL,
  UNIQUE KEY `Contestant_ID_UNIQUE` (`Contestant_ID`),
  KEY `Res_Reason_ID_idx` (`Reason_ID`),
  CONSTRAINT `Res_Contestant_ID` FOREIGN KEY (`Contestant_ID`) REFERENCES `contestants` (`Contestant_ID`),
  CONSTRAINT `Res_Reason_ID` FOREIGN KEY (`Reason_ID`) REFERENCES `reason_descriptions` (`Reason_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (0,1,1,1,56),(1,2,1,2,55),(2,3,1,3,43),(3,4,1,4,39),(4,5,1,5,8),(5,6,1,6,6),(6,7,1,7,4),(7,8,1,8,4),(8,7,1,9,2),(9,7,1,10,1),(10,1,2,1,66),(11,2,2,2,64),(12,9,2,3,59),(13,3,2,4,57),(14,4,2,5,35),(15,3,2,6,21),(16,3,2,7,21),(17,7,2,8,8),(18,10,2,9,7),(19,7,2,10,0),(20,1,3,1,87),(21,11,3,2,86),(22,12,3,3,78),(23,11,3,4,73),(24,4,3,5,72),(25,13,3,6,51),(26,3,3,7,51),(27,3,3,8,35),(28,10,3,9,8),(29,3,3,10,2),(30,1,5,1,60),(31,3,5,2,56),(32,3,5,3,41),(33,4,5,4,36),(34,3,5,5,35),(35,3,5,6,28),(36,14,5,7,24),(37,15,5,8,9),(38,16,5,9,7),(39,10,5,10,5),(40,1,6,1,77),(41,16,6,2,73),(42,17,6,3,72),(43,11,6,4,69),(44,11,6,5,52),(45,14,6,6,48),(46,3,6,7,32),(47,16,6,8,19),(48,18,6,9,8),(49,19,6,10,4),(50,1,7,1,100),(51,20,7,2,89),(52,16,7,3,80),(53,16,7,4,58),(54,18,7,5,44),(55,16,7,6,44),(56,16,7,7,40),(57,18,7,8,22),(58,19,7,9,12),(59,8,7,10,10),(60,1,8,1,74),(61,16,8,2,73),(62,11,8,3,69),(63,11,8,4,67),(64,20,8,5,37),(65,18,8,6,24),(66,2,8,7,22),(67,16,8,8,21),(68,3,8,9,19),(69,21,8,10,6),(70,1,9,1,78),(71,21,9,2,75),(72,3,9,3,63),(73,16,9,4,52),(74,16,9,5,46),(75,21,9,6,43),(76,18,9,7,42),(77,18,9,8,27),(78,21,9,9,20),(79,3,9,10,15);
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seasons`
--

DROP TABLE IF EXISTS `seasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seasons` (
  `Season_ID` int NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Prize` varchar(10) NOT NULL,
  PRIMARY KEY (`Season_ID`),
  KEY `Season_ID_UNIQUE` (`Season_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seasons`
--

LOCK TABLES `seasons` WRITE;
/*!40000 ALTER TABLE `seasons` DISABLE KEYS */;
INSERT INTO `seasons` VALUES (1,'Quatsino, British Columbia, Canada','500,000'),(2,'Quatsino, British Columbia, Canada','500,000'),(3,'Patagonia, Argentina','500,000'),(5,'Northern Mongolia, Asia','500,000'),(6,'Great Slave Lake, Northwest Territory, Canada','500,000'),(7,'Great Slave Lake, Northwest Territory, Canada','500,000'),(8,'Chilko Lake, British Columbia, Canada','1,000,000'),(9,'Big River, Labrador, Canada','500,000');
/*!40000 ALTER TABLE `seasons` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-03 17:33:43

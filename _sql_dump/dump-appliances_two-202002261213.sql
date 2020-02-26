-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: appliances_two
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appliance_items`
--

DROP TABLE IF EXISTS `appliance_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appliance_items` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `MAKER` varchar(35) NOT NULL,
  `MODEL` varchar(35) NOT NULL,
  `CATEGORY` varchar(35) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appliance_items`
--

LOCK TABLES `appliance_items` WRITE;
/*!40000 ALTER TABLE `appliance_items` DISABLE KEYS */;
INSERT INTO `appliance_items` VALUES (1,'Instant pot','7-in-1 Vortex','Air Fryer'),(3,'Bialetti','Moka 6 Cup Express','Espresso Maker'),(4,'Ninja Pro','Nutri-BL456','Blender'),(5,'Sunbeam','x11 -Four Slot','Toaster'),(6,'Instant Pot','DUO EVO Plus','Pressure Cooker'),(7,'Ronco','Rhinestone Stud Setter','Stud Setter'),(8,'Ronco','Chop-O-Matic','hand food processor'),(9,'Bialetti','1.5 Liter Ceramic Kettle','Electric Kettle'),(10,'Ronco','Dial-O-Matic','Hand Chopper'),(11,'Bialetti','.85 Liter Ceramic Kettle','Electric Kettle'),(12,'Bertazzoni','Pro-F366-GAS-XT','6 Brass Burner - Gas Range'),(13,'Bertazzoni','Pro-CS30X','Convection Steam Oven'),(14,'Delonghi','Livenza SW-12 Panini Plates','Panini Replacement Plates'),(15,'Delonghi','Livenza Compact SW-12','Panini Press'),(16,'JackCrap','JackCrap','JackCrap'),(17,'JackCrap2','JackCrap2','JackCrap2'),(18,'JackCrap3','JackCrap3','JackCrap3'),(20,'AlphaCrap1','AlphaCrap1','AlphaCrap1');
/*!40000 ALTER TABLE `appliance_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_on_list`
--

DROP TABLE IF EXISTS `items_on_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items_on_list` (
  `ITEM_ID` int NOT NULL,
  `LIST_ID` int NOT NULL,
  KEY `LIST_ID` (`LIST_ID`),
  KEY `ITEM_ID` (`ITEM_ID`),
  CONSTRAINT `items_on_list_ibfk_1` FOREIGN KEY (`LIST_ID`) REFERENCES `list_details` (`LIST_ID`),
  CONSTRAINT `items_on_list_ibfk_2` FOREIGN KEY (`ITEM_ID`) REFERENCES `appliance_items` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_on_list`
--

LOCK TABLES `items_on_list` WRITE;
/*!40000 ALTER TABLE `items_on_list` DISABLE KEYS */;
INSERT INTO `items_on_list` VALUES (13,1),(12,1),(15,2),(14,2),(11,3),(14,3),(3,4),(8,4);
/*!40000 ALTER TABLE `items_on_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_details`
--

DROP TABLE IF EXISTS `list_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list_details` (
  `LIST_ID` int NOT NULL AUTO_INCREMENT,
  `LIST_NAME` varchar(30) DEFAULT NULL,
  `TRIP_DATE` date DEFAULT NULL,
  `SHOPPER_ID` int DEFAULT NULL,
  PRIMARY KEY (`LIST_ID`),
  KEY `SHOPPER_ID` (`SHOPPER_ID`),
  CONSTRAINT `list_details_ibfk_1` FOREIGN KEY (`SHOPPER_ID`) REFERENCES `shopper` (`SHOPPER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_details`
--

LOCK TABLES `list_details` WRITE;
/*!40000 ALTER TABLE `list_details` DISABLE KEYS */;
INSERT INTO `list_details` VALUES (1,'Piccolo\'s Shopping List','2020-02-25',4),(2,'Alfonzo\'s Shopping List','2020-02-25',5),(3,'Bruno\'s Shopping List','2020-02-25',6),(4,'Contaldo\'s Shopping List','2020-02-25',7);
/*!40000 ALTER TABLE `list_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopper`
--

DROP TABLE IF EXISTS `shopper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopper` (
  `SHOPPER_ID` int NOT NULL AUTO_INCREMENT,
  `SHOPPER_NAME` varchar(30) NOT NULL,
  PRIMARY KEY (`SHOPPER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopper`
--

LOCK TABLES `shopper` WRITE;
/*!40000 ALTER TABLE `shopper` DISABLE KEYS */;
INSERT INTO `shopper` VALUES (1,'Junior'),(2,'Minore'),(3,'Giancoli'),(4,'Piccolo'),(5,'Alfonzo'),(6,'Bruno'),(7,'Contaldo'),(8,'DeleteMe List'),(9,'JackCrapList'),(10,'JackCrap2'),(11,'JackCrap3'),(12,'JackCrap3 b'),(13,'JackCrapAlpha'),(14,'AlphaCrap1'),(15,'AlphaCrap1'),(16,'Nifty');
/*!40000 ALTER TABLE `shopper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'appliances_two'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-26 12:13:49

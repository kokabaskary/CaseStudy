-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: casestudy
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contactinfo`
--

DROP TABLE IF EXISTS `contactinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contactinfo` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactinfo`
--

LOCK TABLES `contactinfo` WRITE;
/*!40000 ALTER TABLE `contactinfo` DISABLE KEYS */;
INSERT INTO `contactinfo` VALUES (25,'shahnaz12@yahoo.com','Love ','Shahnaz','Info');
/*!40000 ALTER TABLE `contactinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customcake`
--

DROP TABLE IF EXISTS `customcake`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customcake` (
  `id` bigint(20) NOT NULL,
  `cakeFilling` varchar(255) DEFAULT NULL,
  `cakeFlavor` varchar(255) DEFAULT NULL,
  `cakeFrosting` varchar(255) DEFAULT NULL,
  `cakeSize` varchar(255) DEFAULT NULL,
  `priceOnFilling` double DEFAULT NULL,
  `priceOnFlavor` double DEFAULT NULL,
  `priceOnFrosting` double DEFAULT NULL,
  `priceOnSize` double DEFAULT NULL,
  `totalPrice` double DEFAULT NULL,
  `orders_id` bigint(20) DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKphf20fsybl0safb55wmutybk9` (`orders_id`),
  CONSTRAINT `FKphf20fsybl0safb55wmutybk9` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customcake`
--

LOCK TABLES `customcake` WRITE;
/*!40000 ALTER TABLE `customcake` DISABLE KEYS */;
INSERT INTO `customcake` VALUES (1,'FRESH_FRUITS','BROWNIES','FRESH_CREAM','EIGHT_INCH',0,0,0,0,0,NULL,'2019-05-28 23:00:00'),(2,'CHOCOLATE_GANACHE_FILLING','MOCHA','CHOCOLATE_GANACHE','SIX_INCH',0,0,0,0,0,NULL,NULL),(3,'BUTTERCREAM_FILLING','POUND_CAKE','BUTTERCREAM','SIX_INCH',10,10,10,35,65,NULL,NULL),(4,'FRESH_FRUITS','KENTUCKY_BUTTER','FRESH_CREAM','EIGHT_INCH',15,12,15,55,97,NULL,'2019-05-29 23:00:00');
/*!40000 ALTER TABLE `customcake` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `fName` varchar(25) DEFAULT NULL,
  `lName` varchar(25) DEFAULT NULL,
  `sMobile` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `loginUser_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs90m1nxac0oei7eg04dtygr63` (`user_id`),
  KEY `FKig3xl7jmu9qnnmj9w416vaihg` (`loginUser_id`),
  CONSTRAINT `FKig3xl7jmu9qnnmj9w416vaihg` FOREIGN KEY (`loginUser_id`) REFERENCES `loginuser` (`id`),
  CONSTRAINT `FKs90m1nxac0oei7eg04dtygr63` FOREIGN KEY (`user_id`) REFERENCES `loginuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (21,'NYC','Dania','Askary','929-231-9074','New York','240 Greenwich  street','10286',22,NULL),(26,'ajax','Maqsood','Husnain','556-987-2345','toronto','23 hillside','65478',NULL,27),(30,'Toronto','Sana','Zaidi','929-231-9078','Qubec','124 Green town','10286',NULL,31),(34,'NYC','Dania','Askary','929-231-9074','New York','240 Greenwich  street','10286',NULL,35),(37,'NYC','Namoo','Askary','567-987-9090','New York','240 Greenwich  street','10286',NULL,38);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer_orders` (
  `Customer_id` bigint(20) NOT NULL,
  `orders_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_3djfisy9es1a5xhixl7s3nx7t` (`orders_id`),
  KEY `FKghalnp2026aevnar12uqyi4k` (`Customer_id`),
  CONSTRAINT `FKghalnp2026aevnar12uqyi4k` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKl8wrme8ascf1gfce42vdkom9n` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_orders`
--

LOCK TABLES `customer_orders` WRITE;
/*!40000 ALTER TABLE `customer_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (39),(39),(39),(39),(39),(39),(39);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquirycustomer`
--

DROP TABLE IF EXISTS `inquirycustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inquirycustomer` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `eventDate` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `peopleServing` int(11) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquirycustomer`
--

LOCK TABLES `inquirycustomer` WRITE;
/*!40000 ALTER TABLE `inquirycustomer` DISABLE KEYS */;
INSERT INTO `inquirycustomer` VALUES (6,'sajjad123@yahoo.com','2019-05-29 23:00:00','Hi','Sajjad Askary',25,'888-666-6789'),(8,'sajjad123@yahoo.com','2019-05-29 23:00:00','Hi','Sajjad Askary',25,'888-666-6789'),(10,'sajjad123@yahoo.com','2019-05-29 23:00:00','Hi','Sajjad Askary',25,'888-666-6789'),(12,'sajjad123@yahoo.com','2019-05-29 23:00:00','Hi','Sajjad Askary',25,'888-666-6789'),(14,'sajjad123@yahoo.com','2019-05-29 23:00:00','Hi','Sajjad Askary',25,'888-666-6789'),(24,'hassan@gmail.com','2019-05-31 23:00:00','Whats up?','Hassan',25,'908-765-2345');
/*!40000 ALTER TABLE `inquirycustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiryform`
--

DROP TABLE IF EXISTS `inquiryform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inquiryform` (
  `id` bigint(20) NOT NULL,
  `cakeFilling` varchar(255) DEFAULT NULL,
  `cakeFlavor` varchar(255) DEFAULT NULL,
  `cakeFrosting` varchar(255) DEFAULT NULL,
  `cakeSize` varchar(255) DEFAULT NULL,
  `priceOnFilling` double DEFAULT NULL,
  `priceOnFlavor` double DEFAULT NULL,
  `priceOnFrosting` double DEFAULT NULL,
  `priceOnSize` double DEFAULT NULL,
  `totalPrice` double DEFAULT NULL,
  `inquiryCustomer_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK64w7467w8qko0xahjycbpcxe2` (`inquiryCustomer_id`),
  CONSTRAINT `FK64w7467w8qko0xahjycbpcxe2` FOREIGN KEY (`inquiryCustomer_id`) REFERENCES `inquirycustomer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiryform`
--

LOCK TABLES `inquiryform` WRITE;
/*!40000 ALTER TABLE `inquiryform` DISABLE KEYS */;
INSERT INTO `inquiryform` VALUES (5,'CHOCOLATE_GANACHE_FILLING','COFFEE_CAKE','CHOCOLATE_GANACHE','TEN_INCH',10,12,15,90,127,6),(7,'CHOCOLATE_GANACHE_FILLING','COFFEE_CAKE','CHOCOLATE_GANACHE','TEN_INCH',10,12,15,90,127,8),(9,'CHOCOLATE_GANACHE_FILLING','COFFEE_CAKE','CHOCOLATE_GANACHE','TEN_INCH',10,12,15,90,127,10),(11,'CHOCOLATE_GANACHE_FILLING','COFFEE_CAKE','CHOCOLATE_GANACHE','TEN_INCH',10,12,15,90,127,12),(13,'CHOCOLATE_GANACHE_FILLING','COFFEE_CAKE','CHOCOLATE_GANACHE','TEN_INCH',10,12,15,90,127,14),(23,'FRESH_FRUITS','POUND_CAKE','CHOCOLATE_GANACHE','EIGHT_INCH',15,10,15,55,95,24);
/*!40000 ALTER TABLE `inquiryform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginuser`
--

DROP TABLE IF EXISTS `loginuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `loginuser` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginuser`
--

LOCK TABLES `loginuser` WRITE;
/*!40000 ALTER TABLE `loginuser` DISABLE KEYS */;
INSERT INTO `loginuser` VALUES (22,'kokabaskary@gmail.com','1234567'),(27,'maq25@gmail.com','5678'),(31,'sana@gmail.com','5678'),(35,'kokabaskary@gmail.com','456'),(38,'askary@gmail.com','123');
/*!40000 ALTER TABLE `loginuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `orderDate` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `totalPrice` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-17 11:08:56

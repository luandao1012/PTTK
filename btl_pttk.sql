-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: btl_pttk
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Pass` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK6mett28ruhadcrimdr5illfuc` (`CustomerID`),
  CONSTRAINT `FK6mett28ruhadcrimdr5illfuc` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,1,'luan','12345',NULL,'0',NULL),(2,10,'dung','123456',NULL,'0',NULL),(4,16,'dung1','123456',NULL,'0',NULL),(5,17,'dungx','123456',NULL,'0',NULL),(6,18,'luan1','123456',NULL,'0',NULL),(7,19,'dungxx','123456789',NULL,'0',NULL),(8,20,NULL,NULL,NULL,'0',NULL),(9,21,'dungx12','12345678',NULL,'0',NULL),(10,22,'quangdung','12345678',NULL,'0',NULL),(11,23,'quangdung1','12345678',NULL,'0',NULL),(12,24,'quangdung12','12345678',NULL,'0',NULL),(13,25,'dungn4','12345678',NULL,'0',NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Street` varchar(255) DEFAULT NULL,
  `CustomerID` int NOT NULL,
  `District` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK839a9l0sktylcf94y74cw48qg` (`CustomerID`),
  CONSTRAINT `FK839a9l0sktylcf94y74cw48qg` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,NULL,10,NULL,'Ha Noi'),(2,NULL,14,NULL,'Ha Noi'),(3,NULL,16,NULL,'Ha Noi'),(4,NULL,17,NULL,'Ha Noi'),(5,NULL,18,NULL,'Ha Noi'),(6,NULL,19,NULL,', , , '),(7,NULL,20,NULL,NULL),(8,NULL,21,NULL,'Ha Noi'),(9,NULL,22,NULL,'Ha Noi'),(10,NULL,23,NULL,'Ha Noi'),(11,NULL,24,NULL,'Ha Noi'),(12,NULL,25,NULL,'Ha Noi');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Phone` varchar(255) DEFAULT NULL,
  `Mail` varchar(255) DEFAULT NULL,
  `Gender` bit(1) DEFAULT NULL,
  `Dob` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NOT NULL,
  `Quantity` int DEFAULT NULL,
  `ItemID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cart_item_idx` (`ItemID`),
  KEY `cart_customer` (`CustomerID`),
  CONSTRAINT `cart_customer` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`ID`),
  CONSTRAINT `cart_item` FOREIGN KEY (`ItemID`) REFERENCES `item` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (3,1,4,2),(4,1,10,2),(5,1,10,5);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Giày Nike'),(2,'Giày ADIAS'),(3,'Giày MLB');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `Content` varchar(255) DEFAULT NULL,
  `Create_Date` datetime(6) DEFAULT NULL,
  `Order_Detail` int DEFAULT NULL,
  `itemid` int DEFAULT NULL,
  `orderid` int DEFAULT NULL,
  `oder_detailid` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `orders_detail_idx` (`Order_Detail`),
  KEY `FKbwl3fihyiilv08y5jrxe5qkgp` (`itemid`),
  KEY `FKpj65tlc6ss64rdq5i5ttcxd6b` (`orderid`),
  KEY `FKr40ikj6wu49rucgn99qwrmwah` (`oder_detailid`),
  CONSTRAINT `FKbwl3fihyiilv08y5jrxe5qkgp` FOREIGN KEY (`itemid`) REFERENCES `item` (`ID`),
  CONSTRAINT `FKpj65tlc6ss64rdq5i5ttcxd6b` FOREIGN KEY (`orderid`) REFERENCES `orders` (`ID`),
  CONSTRAINT `FKr40ikj6wu49rucgn99qwrmwah` FOREIGN KEY (`oder_detailid`) REFERENCES `order_detail` (`ID`),
  CONSTRAINT `orders_comment` FOREIGN KEY (`Order_Detail`) REFERENCES `order_detail` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Phone` varchar(255) DEFAULT NULL,
  `Mail` varchar(255) DEFAULT NULL,
  `Gender` bit(1) DEFAULT NULL,
  `MemberLevel` int DEFAULT NULL,
  `Dob` varchar(45) DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  `full_name_id` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKglkhkmh2vyn790ijs6hiqqpi` (`address_id`),
  KEY `FKch3fktgacto1v9xjia8a7mylj` (`full_name_id`),
  CONSTRAINT `FKch3fktgacto1v9xjia8a7mylj` FOREIGN KEY (`full_name_id`) REFERENCES `fullname` (`ID`),
  CONSTRAINT `FKglkhkmh2vyn790ijs6hiqqpi` FOREIGN KEY (`address_id`) REFERENCES `address` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'0123456789','abcd@gmail.com',_binary '\0',1,NULL,NULL,NULL),(2,'123456789','dung0@gmail.com',NULL,1,NULL,NULL,NULL),(3,'123456789','dung1@gmail.com',NULL,1,NULL,NULL,NULL),(4,'123456789','dung2@gmail.com',NULL,1,NULL,NULL,NULL),(5,'123456789','dung3@gmail.com',NULL,1,NULL,NULL,NULL),(6,'123456789','dung4@gmail.com',NULL,1,NULL,NULL,NULL),(7,'123456789','dung5@gmail.com',NULL,1,NULL,NULL,NULL),(8,'123456789','dung6@gmail.com',NULL,1,NULL,NULL,NULL),(9,'123456789','dung7@gmail.com',NULL,1,NULL,NULL,NULL),(10,'123456789','dung@gmail.com',NULL,1,NULL,NULL,NULL),(11,'123456789','dung@gmail.com',NULL,1,NULL,NULL,NULL),(12,'123456789','dung@gmail.com',NULL,1,NULL,NULL,NULL),(13,'123456789','dung1@gmail.com',NULL,1,NULL,NULL,NULL),(14,'123456789','dung10@gmail.com',NULL,1,NULL,NULL,NULL),(15,'123456789','dung11@gmail.com',NULL,1,NULL,NULL,NULL),(16,'123456789','dung12@gmail.com',NULL,1,NULL,NULL,NULL),(17,'123456789','dungx@gmail.com',NULL,0,NULL,NULL,NULL),(18,'123456789','luan123@gmail.com',_binary '',0,'10/12/2001',NULL,NULL),(19,'0123456789','dungxx@gmail.com',_binary '',0,'02/12/2022',NULL,NULL),(20,NULL,NULL,NULL,0,NULL,NULL,NULL),(21,'0123456789','dungx12@gmail.com',_binary '',0,'02/12/2022',NULL,NULL),(22,'0123456789','quangdung@gmail.com',_binary '',0,'02/12/2022',NULL,NULL),(23,'0123456789','quangdung1@gmail.com',_binary '',0,'02/12/2022',NULL,NULL),(24,'0123456789','quangdung12@gmail.com',_binary '',0,'02/12/2022',NULL,NULL),(25,'0123456789','dungn4@gmail.com',_binary '',0,'15/02/2001',NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fullname`
--

DROP TABLE IF EXISTS `fullname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fullname` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `CustomerID` int NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fullname_customer_idx` (`CustomerID`),
  CONSTRAINT `fullname_customer` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fullname`
--

LOCK TABLES `fullname` WRITE;
/*!40000 ALTER TABLE `fullname` DISABLE KEYS */;
INSERT INTO `fullname` VALUES (1,NULL,NULL,17,'Dung','Dang Quang'),(2,NULL,NULL,18,'Luan','Dao Van'),(3,NULL,NULL,19,'Quang Dung','Dang'),(4,NULL,NULL,20,NULL,NULL),(5,NULL,NULL,21,'Quang Dung','Dang'),(6,NULL,NULL,22,'Quang Dung','Dang'),(7,NULL,NULL,23,'Quang Dung','Dang'),(8,NULL,NULL,24,'Quang Dung','Dang'),(9,NULL,NULL,25,'Quang Dung','Dang');
/*!40000 ALTER TABLE `fullname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ShoesID` int NOT NULL,
  `Price` float NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Image1` varchar(255) DEFAULT NULL,
  `Image2` varchar(255) DEFAULT NULL,
  `Image3` varchar(255) DEFAULT NULL,
  `Rating` float DEFAULT NULL,
  `Discount` float DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKItem389800` (`ShoesID`),
  CONSTRAINT `FKItem389800` FOREIGN KEY (`ShoesID`) REFERENCES `shoes` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,1,2541600,'GIÀY NIKE AIR FORCE 1 SHADOW SE WOMEN’S “SOLAR RED” DB3902-100','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668762493/PTTK/Item1/16032022040324_50_1_ful7xc_amfe4f.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668762474/PTTK/Item1/50_4_thumb_rbvnxq_xefy7i.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668762445/PTTK/Item1/50_2_thumb_m8fkrj_nn8cux.jpg',4.5,0),(2,2,2100000,'GIÀY NIKE SB DELTA FORCE VULC NAM - TRẮNG','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668787408/PTTK/Item2/giay-nike-sb-delta-force-vulc-nam-trang-04-550x550_yq7rh9.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668787373/PTTK/Item2/giay-nike-sb-delta-force-vulc-nam-trang-01-550x550_lzlcja.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668787345/PTTK/Item2/giay-nike-sb-delta-force-vulc-nam-trang-02-550x550_mq3zsw.jpg',4.4,0),(3,3,2899000,'GIÀY NIKE QUEST 4 NAM- XÁM CAM','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668787586/PTTK/Item3/giay-nike-quest-4-nam-xam-cam-02-550x550_bdaekv.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668787517/PTTK/Item3/giay-nike-quest-4-nam-xam-cam-04-550x550_sgyl1p.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668787505/PTTK/Item3/giay-nike-quest-4-nam-xam-cam-01-550x550_lrgcfm.jpg',4.3,0),(4,4,3120000,'GIÀY NIKE AIR FLIGHT LEGACY LAKERS NAM - TRẮNG','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668791108/PTTK/Item4/giay-nike-air-flight-legacy-lakers-nam-trang-04-550x550_sxd0k2.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668787819/PTTK/Item4/giay-nike-air-flight-legacy-lakers-nam-trang-02-550x550_uwvbe2.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668787790/PTTK/Item4/giay-nike-air-flight-legacy-lakers-nam-trang-01-550x550_kuxijy.jpg',4.4,0),(5,5,2799900,'GIÀY ADIDAS SUPERNOVA+ NAM - ĐEN TRẮNG','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668791356/PTTK/Item5/giay-adidas-supernova_-nam-den-trang-02-550x550_vgynxu.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668791335/PTTK/Item5/giay-adidas-supernova_-nam-den-trang-01-550x550_orln8d.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668791369/PTTK/Item5/giay-adidas-supernova_-nam-den-trang-04-550x550_os3esx.jpg',4.6,0),(6,6,2689900,'GIÀY ADIDAS ADVANCOURT BASE NAM NỮ - TRẮNG ĐEN','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668791457/PTTK/Item6/giay-adidas-advancourt-base-nam-nu-trang-den-02-550x550_gomj1b.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668791432/PTTK/Item6/giay-adidas-advancourt-base-nam-nu-trang-den-01-550x550_yllfw4.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668791476/PTTK/Item6/giay-adidas-advancourt-base-nam-nu-trang-den-04-550x550_vzpoiq.jpg',4.7,0),(7,7,2590000,'GIÀY ADIDAS HOOPS 2.0 NAM - TRẮNG','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668791651/PTTK/Item7/giay-adidas-hoops-2-nam-trang-02-550x550_pn6tsq.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668791582/PTTK/Item7/giay-adidas-hoops-2-nam-trang-01-550x550_ixtxl0.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668791667/PTTK/Item7/giay-adidas-hoops-2-nam-trang-03-550x550_reyjvp.jpg',4.8,0),(8,8,3120000,'GIÀY ADIDAS X9000L3 NAM - ĐEN TRẮNG','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668791809/PTTK/Item8/giay-adidas-x900l3-nam-den-trang-01-550x550_szorbl.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668791796/PTTK/Item8/giay-adidas-x900l3-nam-den-trang-02-550x550_v1tot8.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668791829/PTTK/Item8/giay-adidas-x900l3-nam-den-trang-03-550x550_meqexp.jpg',4.9,0),(9,9,2499000,'Giày MLB BigBall Chunky P Boston Red Sox Ivory','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668792234/PTTK/Item9/giay-mlb-bigball-chunky-p-boston-red-sox-ivory-32shc2111-43i-3_ux7zoo.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668792208/PTTK/Item9/giay-mlb-bigball-chunky-p-boston-red-sox-ivory-32shc2111-43i-1_ocbegt.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668792244/PTTK/Item9/giay-mlb-bigball-chunky-p-boston-red-sox-ivory-32shc2111-43i-9_smgwde.jpg',5,0),(10,10,2399000,'Giày MLB Bigball Chunky A New York Yankees Ivory','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668792384/PTTK/Item10/giay-mlb-bigball-chunky-a-new-york-yankees-ivory-3ashc101n-50ivs-1_jmhzni.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668792393/PTTK/Item10/giay-mlb-bigball-chunky-a-new-york-yankees-ivory-3ashc101n-50ivs-4_ubiwtb.jpg','https://res.cloudinary.com/dp4fkm6ke/image/upload/v1668792408/PTTK/Item10/giay-mlb-bigball-chunky-a-new-york-yankees-ivory-3ashc101n-50ivs-7_lr8jvk.jpg',4.3,0);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int DEFAULT NULL,
  `ItemID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `item_detail_idx` (`ItemID`),
  KEY `order_detail_idx` (`OrderID`),
  CONSTRAINT `item_detail` FOREIGN KEY (`ItemID`) REFERENCES `item` (`ID`),
  CONSTRAINT `order_detail` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (1,9,1,1),(2,9,2,2),(3,10,2,3),(4,10,3,2),(5,11,2,3),(6,12,2,1),(7,13,2,1),(8,15,2,1),(9,16,2,1),(10,18,2,6),(11,18,3,3),(12,19,1,1),(13,19,2,1),(14,20,1,1),(15,21,1,2),(16,21,2,1),(17,21,4,1),(18,21,3,1),(19,21,10,1);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Order_Date` date DEFAULT NULL,
  `PaymentID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `oder_customer_idx` (`CustomerID`),
  KEY `order_payment_idx` (`PaymentID`),
  CONSTRAINT `order_customer` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`ID`),
  CONSTRAINT `order_payment` FOREIGN KEY (`PaymentID`) REFERENCES `payment` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (9,17,'Pending','2022-12-03',19),(10,17,'Pending','2022-12-03',20),(11,17,'Pending','2022-12-03',21),(12,17,'Pending','2022-12-03',22),(13,17,'Pending','2022-12-03',23),(14,17,'Pending','2022-12-03',24),(15,17,'Pending','2022-12-03',25),(16,17,'Pending','2022-12-03',26),(17,17,'Pending','2022-12-03',27),(18,17,'Pending','2022-12-03',28),(19,17,'Pending','2022-12-03',29),(20,17,'Pending','2022-12-03',30),(21,17,'Pending','2022-12-03',31);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Created_Date` date DEFAULT NULL,
  `Total` float NOT NULL,
  `Cash_Tendered` float DEFAULT NULL,
  `Account_Number` varchar(255) DEFAULT NULL,
  `Name_Bank` varchar(255) DEFAULT NULL,
  `ShipmentID` int DEFAULT NULL,
  `dtype` varchar(31) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `payment_shipment_idx` (`ShipmentID`),
  CONSTRAINT `payment_shipment` FOREIGN KEY (`ShipmentID`) REFERENCES `shipment` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'2022-11-24',8400000,NULL,NULL,NULL,NULL,'',NULL,NULL),(2,'2022-11-24',21000000,NULL,NULL,NULL,NULL,'',NULL,NULL),(3,'2022-11-24',27999000,NULL,NULL,NULL,NULL,'',NULL,NULL),(4,'2022-11-24',8400000,NULL,NULL,NULL,NULL,'',NULL,NULL),(5,'2022-11-24',21000000,NULL,NULL,NULL,NULL,'',NULL,NULL),(6,'2022-11-24',27999000,NULL,NULL,NULL,NULL,'',NULL,NULL),(7,'2022-11-24',8400000,NULL,NULL,NULL,NULL,'',NULL,NULL),(8,'2022-11-24',21000000,NULL,NULL,NULL,NULL,'',NULL,NULL),(9,'2022-11-24',27999000,NULL,NULL,NULL,NULL,'',NULL,NULL),(10,'2022-11-24',8400000,NULL,NULL,NULL,NULL,'',NULL,NULL),(11,'2022-11-24',8400000,NULL,NULL,NULL,NULL,'',NULL,NULL),(12,'2022-11-24',8697000,NULL,NULL,NULL,NULL,'',NULL,NULL),(13,'2022-11-25',12600000,NULL,NULL,NULL,NULL,'',NULL,NULL),(14,'2022-11-25',8400000,NULL,NULL,NULL,NULL,'',NULL,NULL),(15,'2022-11-25',8697000,NULL,NULL,NULL,NULL,'',NULL,NULL),(16,'2022-12-02',2899000,NULL,NULL,NULL,NULL,'',NULL,NULL),(17,'2022-12-02',2799900,NULL,NULL,NULL,NULL,'',NULL,NULL),(18,'2022-12-03',6758100,NULL,NULL,NULL,9,'Payment',NULL,NULL),(19,'2022-12-03',6758100,NULL,NULL,NULL,10,'Payment',NULL,NULL),(20,'2022-12-03',12218000,NULL,NULL,NULL,11,'Payment',NULL,NULL),(21,'2022-12-03',6316500,NULL,NULL,NULL,12,'Payment',NULL,NULL),(22,'2022-12-03',2116500,NULL,NULL,NULL,13,'Payment',NULL,NULL),(23,'2022-12-03',2116500,NULL,NULL,NULL,14,'Payment',NULL,NULL),(24,'2022-12-03',2116500,NULL,NULL,NULL,15,'Payment',NULL,NULL),(25,'2022-12-03',2116500,NULL,NULL,NULL,16,'Payment',NULL,NULL),(26,'2022-12-03',2220000,NULL,NULL,NULL,17,'Payment',NULL,NULL),(27,'2022-12-03',6758100,NULL,NULL,NULL,18,'Payment',NULL,NULL),(28,'2022-12-03',6758100,NULL,NULL,NULL,19,'Payment',NULL,NULL),(29,'2022-12-03',4761600,NULL,NULL,NULL,20,'Payment',NULL,NULL),(30,'2022-12-03',2558100,NULL,NULL,NULL,21,'Payment',NULL,NULL),(31,'2022-12-03',15617700,NULL,NULL,NULL,22,'Payment',NULL,NULL);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producer`
--

DROP TABLE IF EXISTS `producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producer` (
  `ID` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producer`
--

LOCK TABLES `producer` WRITE;
/*!40000 ALTER TABLE `producer` DISABLE KEYS */;
INSERT INTO `producer` VALUES (1,'Nike','a'),(2,'ADIDAS','a'),(3,'MLB','a');
/*!40000 ALTER TABLE `producer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Rate` int NOT NULL,
  `Order_Detail` int DEFAULT NULL,
  `itemid` int DEFAULT NULL,
  `orderid` int DEFAULT NULL,
  `order_detailid` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `order_detail_idx` (`Order_Detail`),
  KEY `FKlmwry8hcuy2a1y53el31y60c6` (`itemid`),
  KEY `FK8hvnvte8kxl68ds777ewkn340` (`orderid`),
  KEY `FKnlq139jbamuobwohm86hrykao` (`order_detailid`),
  CONSTRAINT `FK8hvnvte8kxl68ds777ewkn340` FOREIGN KEY (`orderid`) REFERENCES `orders` (`ID`),
  CONSTRAINT `FKlmwry8hcuy2a1y53el31y60c6` FOREIGN KEY (`itemid`) REFERENCES `item` (`ID`),
  CONSTRAINT `FKnlq139jbamuobwohm86hrykao` FOREIGN KEY (`order_detailid`) REFERENCES `order_detail` (`ID`),
  CONSTRAINT `orders_detail` FOREIGN KEY (`Order_Detail`) REFERENCES `order_detail` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment`
--

DROP TABLE IF EXISTS `shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Price` float NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment`
--

LOCK TABLES `shipment` WRITE;
/*!40000 ALTER TABLE `shipment` DISABLE KEYS */;
INSERT INTO `shipment` VALUES (1,0,NULL,NULL,NULL),(2,0,NULL,NULL,NULL),(3,0,NULL,NULL,NULL),(4,0,NULL,NULL,NULL),(5,0,NULL,NULL,NULL),(6,0,NULL,NULL,NULL),(7,0,NULL,NULL,NULL),(8,0,NULL,NULL,NULL),(9,16500,NULL,'123456789',NULL),(10,16500,NULL,'123456789',NULL),(11,120000,NULL,'123456789',NULL),(12,16500,NULL,'123456789',NULL),(13,16500,NULL,'123456789',NULL),(14,16500,NULL,'123456789',NULL),(15,16500,NULL,'123456789',NULL),(16,16500,NULL,'123456789',NULL),(17,120000,NULL,'123456789',NULL),(18,16500,NULL,'123456789',NULL),(19,16500,NULL,'123456789',NULL),(20,120000,NULL,'123456789',NULL),(21,16500,NULL,'123456789',NULL),(22,16500,NULL,'123456789',NULL);
/*!40000 ALTER TABLE `shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoes`
--

DROP TABLE IF EXISTS `shoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoes` (
  `ID` int NOT NULL,
  `Size1` varchar(255) DEFAULT NULL,
  `Size2` int DEFAULT NULL,
  `Size3` int DEFAULT NULL,
  `Quantity` int NOT NULL,
  `Description` varchar(10000) DEFAULT NULL,
  `ProducerID` int NOT NULL,
  `CategoryID` int NOT NULL,
  `Brand` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKShoes954159` (`CategoryID`),
  KEY `FKShoes179614` (`ProducerID`),
  CONSTRAINT `FKShoes179614` FOREIGN KEY (`ProducerID`) REFERENCES `producer` (`ID`),
  CONSTRAINT `FKShoes954159` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoes`
--

LOCK TABLES `shoes` WRITE;
/*!40000 ALTER TABLE `shoes` DISABLE KEYS */;
INSERT INTO `shoes` VALUES (1,'39',40,41,17,'Bảng màu của “Solar Red” gồm sắc đỏ mặt trời cùng xanh mòng biển trên nền trắng tuyết, tối giản nhưng vừa đủ để tái hiện những thiết kế đặc trưng của Bruce Kilgore’s thập niên 80. Không những vậy, chất liệu da phủ khắp phần upper với những đường cắt xẻ tinh tế và công nghệ Air êm ái từ đế giày sẽ cho bạn một cảm giác vừa hoài cổ lại vừa trẻ trung, năng động.',1,1,'Nike'),(2,'38',39,40,19,'Giày Nike SB Delta Force Vulc mẫu giày thời trang basic không bao giờ lỗi mốt, chắc chắn ai cũng sẽ cần một đôi để có thể đi bất cứ nơi đâu đều rất phù hợp. Nike SB Delta Force Vulc phần upper có chất liệu da cao cấp, đế cao su tự nhiên bền đẹp với thời gian.',1,1,'Nike'),(3,'38',40,41,19,'Giày Giày Nike Quest 4 là mẫu giày được thiết kế cực kỳ đẹp và tinh tế với đặc điểm rất thoáng khí, êm và rất nhẹ. Đây là mẫu giày có thể sử dụng trong mọi hoạt động hàng ngày. Với phần upper làm bằng chất liệu vải mesh mềm mại và thoáng giúp vận động thoải mái. Phần đế giữa bằng vật liệu siêu nhẹ khiến cho Nike Quest 4 là mẫu giày rất được yêu thích.',1,1,'Nike'),(4,'38',39,40,19,'Giày Nike Air Flight Legacy một mẫu giày thời trang cổ trung đầy mê hoặc. Lấy cảm hứng từ dòng giày bóng rổ nổi tiếng, Nike Air Flight Legacy chắc chắn là sản phẩm mà tín đồ thời trang không thể bỏ qua. Với chất liệu da cao cấp và đế với công nghệ Nike Air độc quyền vừa vững chắc lại rất êm ái. Phối màu tinh tế là một trong những điểm cộng Nike Air Flight Legacy.',1,1,'Nike'),(5,'39',40,41,20,'Giày adidas Supernova+ là mẫu giày thể thao có thiết kế rất đẹp, cùng với đó là công nghệ đỉnh cao với những vật liệu cao cấp độc quyền của Adidas. adidas Supernova+ là mẫu giày mà dân thể thao không thể bỏ qua.',2,2,'Adidas'),(6,'38',39,40,20,'Giày adidas Advancourt Base được thiết kế basic cho các tín đồ yêu thời trang. Với các kiểu thiết kế Original này bạn sẽ không bao giờ lo lắng chuyện đôi giày của bạn bị lỗi mốt theo năm tháng. Màu sắc trẻ trung, năng động dễ dàng chiều lòng được các Outfit khác nhau của bạn. Upper chất liệu da cao cấp, bền đẹp. Đế cao su, tạo cảm giác thoải mái khi di chuyển.',2,2,'Adidas'),(7,'39',40,41,20,'Giày adidas Hoops 2.0 phiên bản nâng cấp rất được ưu chuộng của dòng adidas Hoops . Adidas Hoop 2.0 với phần upper được kết hợp hoàn hảo từ các chất liệu vải, da lộn, da trơn cao cấp giúp đôi giày thật sự đẹp và thời trang. Giày adidas Hoops 2.0 chắc chắn sẽ là một mẫu giày không thể nào bỏ qua được trong năm nay.',2,2,'Adidas'),(8,'37',38,39,20,'Giày adidas X9000L3 có thiết kế thời trang, khỏe khắn và năng động. Với công nghệ đế Eva kết hợp với Boost trứ danh giúp đôi giày cực kỳ êm và đàn hồi trợ lực rất tốt cho bàn chân. Đặc biệt hơn lớp lót giày làm từ tảo giúp làm sạch môi trường nước bị ô nhiễm.',2,2,'Adidas'),(9,'40',41,42,20,'MLB là tên viết tắt của Major League Baseball, là liên đoàn bóng chày nổi tiếng và lâu đời nhất của Hoa Kỳ và Canada. MLB Korea chính là thương hiệu thời trang lấy cảm hứng từ bộ môn thể thao này, và New York Yankees, Boston và LA Dodgers chính là những đội bóng nổi tiếng được ưu ái đưa lên những sản phẩm thời trang của MLB Korea, tạo nên một phong cách thời trang đường phố được giới trẻ khắp nơi ưa chuộng.',3,3,'MLB'),(10,'36',37,38,19,'Nếu đã trót lỡ đắm chìm vào thế giới thời trang của MLB Korea thì không thể bỏ qua bộ sưu tập giày MLB BigBall Chunky A - được ra mắt dựa trên tên gọi dành cho người ném bóng giỏi nhất trong bộ môn bóng chày được gọi là Ace. Thừa hưởng tất cả những ưu điểm vượt trội của dòng BigBall Chunky, các mẫu giày đều có cho mình vẻ ngoài hầm hố, bắt mắt, và vô cùng phù hợp để phối cùng những bộ outfit đậm chất thời trang đường phố, chắc chắn sẽ khiến bạn hài lòng về những gì mà MLB mang lại.',3,3,'MLB');
/*!40000 ALTER TABLE `shoes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-04 23:20:04

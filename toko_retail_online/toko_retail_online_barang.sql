-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: toko_retail_online
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
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `barang` (
  `id_barang` int NOT NULL AUTO_INCREMENT,
  `id_penjual` int DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `varian` varchar(255) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `harga` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_barang`),
  KEY `id_penjual` (`id_penjual`),
  CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_penjual`) REFERENCES `penjual` (`id_penjual`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang`
--

LOCK TABLES `barang` WRITE;
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` VALUES (1,1,'Laptop','Model A',10,1000.00,'laptop1.jpg'),(2,1,'Smartphone','Model B',20,500.00,'smartphone1.jpg'),(3,2,'T-Shirt','Large',30,20.00,'tshirt1.jpg'),(4,2,'Jeans','Medium',15,40.00,'jeans1.jpg'),(5,1,'Tablet','Model X',5,300.00,'tablet1.jpg'),(6,3,'Mouse','Wireless',50,15.00,'mouse1.jpg'),(7,4,'Keyboard','USB',40,12.00,'keyboard1.jpg'),(8,5,'Camera','Model C',8,200.00,'camera1.jpg'),(9,2,'Sweater','Medium',25,25.00,'sweater1.jpg'),(10,4,'Bag','Backpack',12,35.00,'bag1.jpg'),(11,3,'Monitor','Full HD',7,150.00,'monitor1.jpg'),(12,1,'Printer','Laser',10,70.00,'printer1.jpg'),(13,5,'Earphones','In-Ear',30,10.00,'earphones1.jpg'),(14,3,'TV','55 inch',6,400.00,'tv1.jpg'),(15,4,'Gaming Mouse','RGB',20,30.00,'gamingmouse1.jpg'),(16,1,'Laptop','Model A',10,1000.00,'laptop1.jpg'),(17,1,'Smartphone','Model B',20,500.00,'smartphone1.jpg'),(18,2,'T-Shirt','Large',30,20.00,'tshirt1.jpg'),(19,2,'Jeans','Medium',15,40.00,'jeans1.jpg'),(20,1,'Tablet','Model X',5,300.00,'tablet1.jpg'),(21,3,'Mouse','Wireless',50,15.00,'mouse1.jpg'),(22,4,'Keyboard','USB',40,12.00,'keyboard1.jpg'),(23,5,'Camera','Model C',8,200.00,'camera1.jpg'),(24,2,'Sweater','Medium',25,25.00,'sweater1.jpg'),(25,4,'Bag','Backpack',12,35.00,'bag1.jpg'),(26,3,'Monitor','Full HD',7,150.00,'monitor1.jpg'),(27,1,'Printer','Laser',10,70.00,'printer1.jpg'),(28,5,'Earphones','In-Ear',30,10.00,'earphones1.jpg'),(29,3,'TV','55 inch',6,400.00,'tv1.jpg'),(30,4,'Gaming Mouse','RGB',20,30.00,'gamingmouse1.jpg');
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-11 16:41:15

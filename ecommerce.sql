CREATE DATABASE  IF NOT EXISTS `ecommerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecommerce`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `city` varchar(60) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone_no` int NOT NULL,
  `address` varchar(100) NOT NULL,
  `pin_code` int NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('C001','John Doe','New York','john.doe@example.com',1234567890,'123 Main St',10001),('C002','Jane Smith','Los Angeles','jane.smith@example.com',987654321,'456 Elm St',90001),('C003','Alice Johnson','Chicago','alice.johnson@example.com',1122334455,'789 Pine St',60601),('C004','Bob Brown','Houston','bob.brown@example.com',667788990,'101 Maple St',77001),('C005','Charlie Davis','Phoenix','charlie.davis@example.com',1231231234,'202 Oak St',85001),('C006','David Wilson','Philadelphia','david.wilson@example.com',555666777,'303 Cedar St',19019),('C007','Eve Clark','San Antonio','eve.clark@example.com',444555666,'404 Birch St',78201),('C008','Frank White','San Diego','frank.white@example.com',999888777,'505 Walnut St',92101),('C009','Grace Hall','Dallas','grace.hall@example.com',222333444,'606 Spruce St',75001),('C010','Henry Lee','San Jose','henry.lee@example.com',777666555,'707 Fir St',95101),('C011','Karen Thompson','New York','karen.thompson@example.com',551234567,'456 Broadway',10001),('C012','Richard Lee','Los Angeles','richard.lee@example.com',234567890,'123 Main St',90001),('C013','Laura Brown','Chicago','laura.brown@example.com',129876543,'789 Oak St',60601),('C014','Michael Davis','Houston','michael.davis@example.com',714567890,'101 Elm St',77001),('C015','Emily Chen','Phoenix','emily.chen@example.com',602234567,'202 Maple St',85001);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(10) NOT NULL,
  `product_id` varchar(10) NOT NULL,
  `quantity` double NOT NULL,
  `total_price` double NOT NULL,
  `payment_mode` varchar(60) NOT NULL,
  `order_date` datetime DEFAULT NULL,
  `order_status` varchar(20) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,'C001','P001',1,950,'Credit Card','2024-08-01 10:00:00','Shipped'),(2,'C002','P002',1,650,'Debit Card','2024-08-02 11:00:00','Delivered'),(3,'C003','P003',2,240,'PayPal','2024-08-03 12:00:00','Processing'),(4,'C004','P004',1,380,'Credit Card','2024-08-04 13:00:00','Shipped'),(5,'C005','P005',2,440,'Debit Card','2024-08-05 14:00:00','Delivered'),(6,'C006','P006',1,100,'PayPal','2024-08-06 15:00:00','Processing'),(7,'C007','P007',1,470,'Credit Card','2024-08-07 16:00:00','Shipped'),(8,'C008','P008',1,750,'Debit Card','2024-08-08 17:00:00','Delivered'),(9,'C009','P009',3,270,'PayPal','2024-08-09 18:00:00','Processing'),(10,'C010','P010',2,90,'Credit Card','2024-08-10 19:00:00','Shipped'),(11,'C011','P011',1,120,'Credit Card','2024-08-11 10:00:00','Shipped'),(12,'C012','P012',2,120,'Debit Card','2024-08-12 11:00:00','Delivered'),(13,'C013','P013',3,120,'PayPal','2024-08-13 12:00:00','Processing'),(14,'C014','P014',1,750,'Credit Card','2024-08-14 13:00:00','Shipped'),(15,'C015','P015',2,180,'Debit Card','2024-08-15 14:00:00','Delivered'),(16,'C004','P004',1,380,'Credit Card','2024-08-04 13:00:00','Shipped'),(17,'C004','P004',1,400,'Credit Card','2024-08-24 13:00:00','Shipped'),(18,'C008','P008',1,800,'Debit Card','2024-08-18 17:00:00','Delivered'),(19,'C013','P007',1,100,'Credit Card','2024-08-24 17:00:00','Processing'),(20,'C001','P017',2,300,'Credit Card','2024-08-17 16:00:00','Cancelled'),(21,'C008','P018',3,400,'Debit Card','2024-08-18 17:00:00','Returned'),(22,'C002','P019',1,500,'PayPal','2024-08-19 18:00:00','Cancelled'),(23,'C002','P020',2,600,'Credit Card','2024-08-20 19:00:00','Returned'),(24,'C001','P019',1,500,'PayPal','2024-08-19 18:00:00','Cancelled'),(25,'C012','P020',2,600,'Credit Card','2024-08-24 19:00:00','Shipped'),(26,'C012','P020',2,600,'Credit Card','2024-08-26 19:00:00','Processing'),(27,'C009','P020',2,600,'Credit Card','2024-08-20 19:00:00','Delivered'),(28,'C002','P025',2,600,'Credit Card','2024-08-20 19:00:00','Delivered'),(29,'C004','P020',2,600,'Credit Card','2024-08-24 19:00:00','Shipped'),(30,'C006','P016',1,200,'PayPal','2024-08-19 15:00:00','Returned'),(31,'C007','P017',2,300,'Credit Card','2024-08-07 16:00:00','Delivered'),(32,'C015','P018',3,400,'Debit Card','2024-08-07 17:00:00','Delivered'),(33,'C001','P001',1,950,'PayPal','2024-08-27 10:00:00','Processing'),(34,'C002','P002',1,650,'Credit Card','2024-08-27 11:00:00','Shipped'),(35,'C003','P006',1,100,'Debit Card','2024-08-27 12:00:00','Delivered'),(36,'C004','P011',1,120,'PayPal','2024-08-27 13:00:00','Processing'),(37,'C005','P014',1,750,'Credit Card','2024-08-27 14:00:00','Shipped'),(38,'C014','P014',1,750,'Credit Card','2024-08-27 14:00:00','Shipped');
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` varchar(10) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `category` varchar(65) NOT NULL,
  `sub_category` varchar(45) NOT NULL,
  `original_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('P001','Laptop','Electronics','Computers',1000,950,50),('P002','Smartphone','Electronics','Mobile Phones',700,650,100),('P003','Headphones','Electronics','Audio',150,120,200),('P004','Tablet','Electronics','Computers',400,380,75),('P005','Smartwatch','Electronics','Wearables',250,220,150),('P006','Bluetooth Speaker','Electronics','Audio',120,100,180),('P007','Gaming Console','Electronics','Gaming',500,470,60),('P008','Digital Camera','Electronics','Photography',800,750,40),('P009','External Hard Drive','Electronics','Storage',100,90,120),('P010','Wireless Mouse','Electronics','Computers',50,45,300),('P011','Gaming Keyboard','Electronics','Gaming',150,120,80),('P012','Wireless Earbuds','Electronics','Audio',80,60,150),('P013','Power Bank','Electronics','Accessories',50,40,200),('P014','Smart TV','Electronics','Home Entertainment',800,750,50),('P015','Fitness Tracker','Electronics','Wearables',100,90,120),('P016','Organic Rice','Grocery','Food',20,18,100),('P017','Moisturizing Cream','Beauty','Skincare',30,25,80),('P018','Summer Dress','Fashion','Clothing',40,35,60),('P019','Protein Powder','Grocery','Health Supplements',50,45,120),('P020','Lipstick','Beauty','Makeup',25,20,150),('P021','Leather Wallet','Fashion','Accessories',60,55,90),('P022','Granola Bars','Grocery','Snacks',15,12,200),('P023','Shampoo','Beauty','Haircare',20,18,100),('P024','Sneakers','Fashion','Footwear',80,75,80),('P025','Yogurt','Grocery','Dairy',10,9,150);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-27 12:55:37

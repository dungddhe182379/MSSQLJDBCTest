CREATE DATABASE  IF NOT EXISTS `carpipi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `carpipi`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: carpipi
-- ------------------------------------------------------
-- Server version	8.0.41

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
  `userId` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `roleId` int DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  KEY `fk_role` (`roleId`),
  CONSTRAINT `fk_role` FOREIGN KEY (`roleId`) REFERENCES `roles` (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'admin_user','password123','Trịnh','Vũ','nam','admin@example.com','0327066228','390',1,'img_testing.jpg'),(2,'marketing_user1','password123','Trịnh Văn','Vũ','nam','marketing1@example.com','0327066228','dfasdfasdfads',2,'Gearvn_gundam_-3-scaled.jpg'),(3,'marketing_user2','password123','Marketing','Staff2','Male','marketing2@example.com','0123456781','Marketing Address 2',2,'avatar-trang-4.jpg'),(4,'sales_user1','password123','Sales','Staff1','Female','sales1@example.com','0123456782','Sales Address 1',3,'avatar-trang-4.jpg'),(5,'sales_user2','password123','Sales','Staff2','Male','sales2@example.com','0123456783','Sales Address 2',3,'avatar-trang-4.jpg'),(6,'customer_user1','password123','Customer','One','Female','customer1@example.com','0123456784','Customer Address 1',4,'avatar-trang-4.jpg'),(7,'customer_user2','password123','Customer','Two','Male','customer2@example.com','0123456785','Customer Address 2',4,'avatar-trang-4.jpg'),(8,'customer_user3','password123','Customer','Three','Female','customer3@example.com','0123456786','Customer Address 3',4,'avatar-trang-4.jpg'),(9,'customer_user4','password123','Customer','Four','Male','customer4@example.com','0123456787','Customer Address 4',4,'avatar-trang-4.jpg'),(10,'customer_user5','password123','Customer','Five','Nam','customer5@example.com','14254325234523','Customer Address 5',4,'avatar-trang-4.jpg'),(11,'tuan','hehehe','Trịnh','Tuấn','Nam','tuantvhe180495@fpt.edu.vn','0327066228','390',4,'img_testing.jpg'),(12,'lanphan','123','phan','Tuấn','Nam','phanhoanglan3@gmail.com','12345324','390',4,'avatar-trang-4.jpg'),(13,'lanphan','123','Lan','Phan Hoàng','nu','phanhoanglan@gmail.com','0975530024','Ngách 173/59 Hoàng Hoa Thám',4,'avatar-trang-4.jpg'),(14,'lovanlamthon2002@gmail.com','1234567a','Anh','Tuấn','nam','lovanlamthon2002@gmail.com','098645343','ádasdasdasdas',4,'avatar-trang-4.jpg'),(15,'tuan','sa123','Trịnh','Tuấn','nam','tuanabcabc2k4@gmail.com','0327066228','390',4,'https://cellphones.com.vn/sforum/wp-content/uploads/2023/10/avatar-trang-4.jpg'),(16,'tuan','hehehe','Trịnh','Tuấn','nam','tuanabcabc2k@gmail.com','0327066228','390',4,'https://cellphones.com.vn/sforum/wp-content/uploads/2023/10/avatar-trang-4.jpg'),(17,'tuan','hahaha','Trịnh','Tuấn','nam','tuanabcabc2k5@gmail.com','0327066228','5600',4,'Gearvn_gundam_-3-scaled.jpg');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `blogId` int NOT NULL,
  `brandId` int DEFAULT NULL,
  `postId` int DEFAULT NULL,
  `blogTitle` varchar(255) DEFAULT NULL,
  `blogTime` datetime DEFAULT NULL,
  `blogImage` varchar(255) DEFAULT NULL,
  `blogImageText` varchar(255) DEFAULT NULL,
  `blogInfo1` text,
  `blogInfo2` text,
  PRIMARY KEY (`blogId`),
  KEY `fk_post` (`postId`),
  KEY `fk_brand_unique` (`brandId`),
  CONSTRAINT `fk_brand_unique` FOREIGN KEY (`brandId`) REFERENCES `brand` (`brandId`),
  CONSTRAINT `fk_post` FOREIGN KEY (`postId`) REFERENCES `post` (`postId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,1,1,'Thông tin chung về các mẫu xe Audi 2024 nổi bật','2024-09-24 00:00:00','https://img.tinxe.vn/resize/1000x-/2022/10/21/uU7VvIGZ/audi-e-tron-gt-tinxe5-8de1-1137.jpg','Tổng thể ngoại thất của Audi e-tron GT.','Thiết kế ngoại thất','Giá xe ô tô  Audi');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brandId` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Mercedes-Benz','https://s3-alpha.figma.com/hub/file/1549348164/a235fd4b-8505-4bfd-a4f6-5ecde9174bda-cover.png'),(2,'Audi','https://banner2.cleanpng.com/20171201/7dd/av2c6i9da.webp'),(3,'Volkswagen','https://e7.pngegg.com/pngimages/529/754/png-clipart-volkswagen-vw-logo-transport-cars.png'),(4,'BMW','https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/BMW.svg/1024px-BMW.svg.png'),(5,'Porsche','https://avatars.githubusercontent.com/u/75478603?s=280&v=4');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cartId` int NOT NULL,
  `userId` int DEFAULT NULL,
  `productId` varchar(6) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  PRIMARY KEY (`cartId`),
  KEY `fk_cart_user` (`userId`),
  KEY `fk_cart_product` (`productId`),
  CONSTRAINT `fk_cart_product` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`),
  CONSTRAINT `fk_cart_user` FOREIGN KEY (`userId`) REFERENCES `account` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `colorId` int NOT NULL,
  `colorName` varchar(50) NOT NULL,
  PRIMARY KEY (`colorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'Đen'),(2,'Trắng'),(3,'Đỏ'),(4,'Xám'),(5,'Bạc'),(6,'Xanh Dương'),(7,'Xanh Đậm'),(8,'Nâu'),(9,'Xanh'),(10,'Vàng'),(11,'Tím');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colorofcar`
--

DROP TABLE IF EXISTS `colorofcar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colorofcar` (
  `productId` varchar(6) NOT NULL,
  `colorId` int NOT NULL,
  PRIMARY KEY (`productId`,`colorId`),
  KEY `fk_color` (`colorId`),
  CONSTRAINT `fk_color` FOREIGN KEY (`colorId`) REFERENCES `color` (`colorId`),
  CONSTRAINT `fk_product_color` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colorofcar`
--

LOCK TABLES `colorofcar` WRITE;
/*!40000 ALTER TABLE `colorofcar` DISABLE KEYS */;
INSERT INTO `colorofcar` VALUES ('1',1),('2',1),('3',1),('1',2),('2',2),('4',2),('1',3),('2',3),('3',3),('4',3),('3',6),('4',6);
/*!40000 ALTER TABLE `colorofcar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard`
--

DROP TABLE IF EXISTS `dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard` (
  `dashboardId` int NOT NULL,
  `date` date DEFAULT NULL,
  `data` text,
  `roleId` int DEFAULT NULL,
  PRIMARY KEY (`dashboardId`),
  KEY `fk_dashboard_role` (`roleId`),
  CONSTRAINT `fk_dashboard_role` FOREIGN KEY (`roleId`) REFERENCES `roles` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard`
--

LOCK TABLES `dashboard` WRITE;
/*!40000 ALTER TABLE `dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetail` (
  `orderDetailId` int NOT NULL,
  `orderId` int DEFAULT NULL,
  `productId` varchar(6) DEFAULT NULL,
  `orderStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`orderDetailId`),
  KEY `fk_orderdetail_order` (`orderId`),
  KEY `fk_orderdetail_product` (`productId`),
  CONSTRAINT `fk_orderdetail_order` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`),
  CONSTRAINT `fk_orderdetail_product` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderId` int NOT NULL,
  `userId` int DEFAULT NULL,
  `totalPrice` decimal(10,2) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `shipperId` int DEFAULT NULL,
  `saleId` int DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `fk_orders_user` (`userId`),
  KEY `fk_orders_shipper` (`shipperId`),
  KEY `fk_orders_sale` (`saleId`),
  CONSTRAINT `fk_orders_sale` FOREIGN KEY (`saleId`) REFERENCES `sale` (`saleId`),
  CONSTRAINT `fk_orders_shipper` FOREIGN KEY (`shipperId`) REFERENCES `shipper` (`shipperId`),
  CONSTRAINT `fk_orders_user` FOREIGN KEY (`userId`) REFERENCES `account` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `paymentId` int NOT NULL,
  `orderId` int DEFAULT NULL,
  `paymentMethod` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`paymentId`),
  KEY `fk_payment_order` (`orderId`),
  CONSTRAINT `fk_payment_order` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `postId` int NOT NULL,
  `roleId` int DEFAULT NULL,
  `postInfo` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`postId`),
  KEY `fk_post_role` (`roleId`),
  KEY `fk_post_user` (`userId`),
  CONSTRAINT `fk_post_role` FOREIGN KEY (`roleId`) REFERENCES `roles` (`roleId`),
  CONSTRAINT `fk_post_user` FOREIGN KEY (`userId`) REFERENCES `account` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,2,'hehehehe','https://cdn.tuoitre.vn/thumb_w/1200/471584752817336320/2023/7/12/kia-seltos-2022-16891538917941492958969.jpg',1);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productimages`
--

DROP TABLE IF EXISTS `productimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productimages` (
  `imageId` int NOT NULL AUTO_INCREMENT,
  `productId` varchar(6) DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`imageId`),
  KEY `fk_productimage_product` (`productId`),
  CONSTRAINT `fk_productimage_product` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productimages`
--

LOCK TABLES `productimages` WRITE;
/*!40000 ALTER TABLE `productimages` DISABLE KEYS */;
INSERT INTO `productimages` VALUES (1,'1','https://dailymercedes-benz.com.vn/wp-content/uploads/2023/08/mercedes-benz_0014_glc-300-4matic-X254-600x338.png'),(2,'1','https://dailymercedes-benz.com.vn/wp-content/uploads/2023/08/mercedes-benz_0005_glc-300-4matic-X254-600x338.png'),(3,'1','https://dailymercedes-benz.com.vn/wp-content/uploads/2023/08/mercedes-benz_0008_glc-300-4matic-X254-600x338.png'),(4,'2','https://dailymercedes-benz.com.vn/wp-content/uploads/2023/08/mercedes-benz_0012_glc-200-4matic-X254b-600x338.png'),(5,'2','https://dailymercedes-benz.com.vn/wp-content/uploads/2023/08/mercedes-benz_0009_glc-200-4matic-X254-600x338.png'),(6,'2','https://dailymercedes-benz.com.vn/wp-content/uploads/2023/08/mercedes-benz_0000_glc-200-4matic-X254-600x338.png'),(7,'3','https://dailymercedes-benz.com.vn/wp-content/uploads/2023/02/C-200-Avantgarde-Xam-Graphite-01-600x338.jpg'),(8,'3','https://dailymercedes-benz.com.vn/wp-content/uploads/2023/02/C-200-Avantgarde-Xam-Graphite-03-600x338.jpg'),(9,'3','https://dailymercedes-benz.com.vn/wp-content/uploads/2023/02/C-200-Avantgarde-do-00-600x338.jpg'),(10,'4','https://dailymercedes-benz.com.vn/wp-content/uploads/2023/02/C-200-Avantgarde-Plus-Trang-Polar-600x338.jpg'),(11,'4','https://dailymercedes-benz.com.vn/wp-content/uploads/2023/02/C-200-Avantgarde-Plus-Trang-Polar-03-600x338.jpg'),(12,'4','https://dailymercedes-benz.com.vn/wp-content/uploads/2023/02/C-200-Avantgarde-Plus-Xanh-Cavansite-600x338.jpg');
/*!40000 ALTER TABLE `productimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `productId` varchar(6) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `seatNumber` int DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `fuel` varchar(20) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `description` text,
  `VAT` decimal(5,2) DEFAULT NULL,
  `supplierId` int DEFAULT NULL,
  `brandId` int DEFAULT NULL,
  `segmentId` int DEFAULT NULL,
  `styleId` int DEFAULT NULL,
  PRIMARY KEY (`productId`),
  KEY `fk_supplier` (`supplierId`),
  KEY `fk_brand` (`brandId`),
  KEY `fk_segment` (`segmentId`),
  KEY `fk_style` (`styleId`),
  CONSTRAINT `fk_brand` FOREIGN KEY (`brandId`) REFERENCES `brand` (`brandId`),
  CONSTRAINT `fk_segment` FOREIGN KEY (`segmentId`) REFERENCES `segment` (`segmentId`),
  CONSTRAINT `fk_style` FOREIGN KEY (`styleId`) REFERENCES `style` (`styleId`),
  CONSTRAINT `fk_supplier` FOREIGN KEY (`supplierId`) REFERENCES `supplies` (`supplyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('1','Mercedes-Benz GLC 300 4MATIC (X254)',5,2799000000.00,'Xăng',10,'Mercedes-Benz GLC 300 4MATIC mang đến trải nghiệm lái xe cao cấp với động cơ xăng mạnh mẽ 2.0L turbo, sản sinh công suất 255 mã lực. Hệ dẫn động 4MATIC toàn thời gian cung cấp sự ổn định tối ưu trên mọi loại địa hình. Với thiết kế ngoại thất hiện đại và sang trọng cùng nội thất rộng rãi, tiện nghi, GLC 300 đáp ứng nhu cầu của những người yêu thích SUV hạng sang cỡ trung. Các tính năng an toàn và công nghệ tiên tiến như hệ thống hỗ trợ lái và giải trí cao cấp làm tăng thêm sự thoải mái và an tâm khi lái xe.',10.00,1,1,7,1),('2','Mercedes-Benz GLC 200 4MATIC (X254)',5,2290000000.00,'Xăng',10,'Mercedes-Benz GLC 200 4MATIC là lựa chọn lý tưởng cho những ai tìm kiếm một SUV hạng sang với giá cả phải chăng. Xe được trang bị động cơ xăng 2.0L turbo, cung cấp 197 mã lực, kết hợp với hệ dẫn động 4MATIC giúp cải thiện khả năng bám đường và ổn định. Thiết kế của GLC 200 ấn tượng với vẻ ngoài thể thao và nội thất cao cấp, bao gồm ghế da, hệ thống giải trí MBUX, và các tính năng an toàn tiên tiến. GLC 200 là sự kết hợp hoàn hảo giữa hiệu suất và tiện nghi.',10.00,1,1,7,1),('3','Mercedes-Benz C 200 Avantgarde (V1)',5,1599000000.00,'Xăng',10,'Mercedes-Benz C200 Avantgarde là mẫu sedan hạng sang cỡ nhỏ với thiết kế thanh lịch và thể thao. Được trang bị động cơ xăng 1.5L turbo, C200 Avantgarde cung cấp 154 mã lực, mang lại hiệu suất lái xe mượt mà và tiết kiệm nhiên liệu. Nội thất của C200 được trang bị các vật liệu cao cấp, hệ thống giải trí hiện đại và công nghệ hỗ trợ lái tiên tiến. Phiên bản Avantgarde nổi bật với các chi tiết thiết kế đặc trưng và sự chăm sóc tỉ mỉ đến từng chi tiết, đáp ứng nhu cầu của những người yêu thích sự sang trọng và hiệu suất.',10.00,1,2,5,2),('4','Mercedes-Benz C 200 Avantgarde Plus (V1)',5,1849000000.00,'Xăng',10,'Mercedes-Benz C200 Avantgarde Plus nâng cấp từ phiên bản Avantgarde với các trang bị và công nghệ cao cấp hơn. Xe được trang bị động cơ xăng 1.5L turbo, sản sinh công suất 154 mã lực, kết hợp với hệ thống dẫn động cầu trước. Với nội thất sang trọng, các tính năng tiện nghi như ghế da cao cấp, hệ thống âm thanh Burmester và màn hình giải trí MBUX, C200 Avantgarde Plus mang đến trải nghiệm lái xe thoải mái và phong cách. Các công nghệ an toàn tiên tiến giúp bảo vệ hành khách và tăng cường sự an tâm khi di chuyển.',10.00,1,2,4,2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `roleId` int NOT NULL,
  `roleName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin'),(2,'marketing'),(3,'sale'),(4,'customer'),(5,'shipper');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale` (
  `saleId` int NOT NULL,
  `saleName` varchar(255) DEFAULT NULL,
  `discount` decimal(5,2) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`saleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segment`
--

DROP TABLE IF EXISTS `segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `segment` (
  `segmentId` int NOT NULL,
  `segmentName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`segmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segment`
--

LOCK TABLES `segment` WRITE;
/*!40000 ALTER TABLE `segment` DISABLE KEYS */;
INSERT INTO `segment` VALUES (1,'A'),(2,'B'),(3,'C'),(4,'D'),(5,'E'),(6,'F'),(7,'S');
/*!40000 ALTER TABLE `segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipper`
--

DROP TABLE IF EXISTS `shipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipper` (
  `shipperId` int NOT NULL,
  `shipperName` varchar(255) DEFAULT NULL,
  `contactInfo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`shipperId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipper`
--

LOCK TABLES `shipper` WRITE;
/*!40000 ALTER TABLE `shipper` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `style`
--

DROP TABLE IF EXISTS `style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `style` (
  `styleId` int NOT NULL,
  `styleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`styleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `style`
--

LOCK TABLES `style` WRITE;
/*!40000 ALTER TABLE `style` DISABLE KEYS */;
INSERT INTO `style` VALUES (1,'Sedan'),(2,'SUV'),(3,'Hatchback'),(4,'Coupe'),(5,'Convertible (Mui trần)'),(6,'MPV'),(7,'CUV'),(8,'Pickup'),(9,'Van'),(10,'Sports car'),(11,'Wagon'),(12,'Cabriolet'),(13,'Roadster'),(14,'SUV Coupe'),(15,'Sportback'),(16,'Crossover'),(17,'Convertible');
/*!40000 ALTER TABLE `style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplies`
--

DROP TABLE IF EXISTS `supplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplies` (
  `supplyId` int NOT NULL,
  `supplyName` varchar(255) DEFAULT NULL,
  `supplyLocation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`supplyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplies`
--

LOCK TABLES `supplies` WRITE;
/*!40000 ALTER TABLE `supplies` DISABLE KEYS */;
INSERT INTO `supplies` VALUES (1,'Mercedes-Benz','Đức'),(2,'Porsche AG','Đức'),(3,'Audi','Đức'),(4,'Volkswagen','Đức'),(5,'BMW','Đức');
/*!40000 ALTER TABLE `supplies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-30 23:41:56

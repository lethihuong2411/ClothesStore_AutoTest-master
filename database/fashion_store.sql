-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: fashion_store
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Gucci','gucci',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04'),(2,'Louis Vuitton','louis-vuitton',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04'),(3,'Hermes','hermes',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04'),(4,'Prada','prada',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04'),(5,'Chanel','chanel',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04'),(6,'Burberry','burberry',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04'),(7,'Fendi','fendi',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04'),(8,'Givenchy','givenchy',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04'),(9,'Dior','dior',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04'),(10,'Palido','palido',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Đỗ Hoàng Minh Anh','voicoixinhgai271297@gmail.com','1111','2023-03-27 21:38:50','2023-03-27 21:38:50');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `birthday` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `gender` tinyint NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `score_awards` double(8,2) NOT NULL DEFAULT '0.00',
  `money_payment_transactions` double(8,2) NOT NULL DEFAULT '0.00',
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`,`phone_number`),
  UNIQUE KEY `customers_phone_number_unique` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Lê Thị Hương','2001-01-01',0,'0987654321','số 11a Ngõ 282 Nguyễn Huy Tưởng','$2y$10$7mjyYic4usj7kTX6cTD6GuWQ9wXwgPBXm65sKTe4k8pBN4a6siYla',18.00,908.00,'fHHPDh4PTb1SHk3JzTDiivuXuwfmJ1NVSE2IVsxoA4mQW9tzyWozkk1q8K3f',1,'2021-03-13 02:13:26','2021-12-18 16:06:29'),(2,'Lê Thị Hương','2001-01-01',0,'(+84)0335046969','số 11a Ngõ 282 Nguyễn Huy Tưởng','$2a$12$HhaN2zpWSBMIX/s7lwwEg.M5hm7C97K0iBhjeFi.hRD/Cq8JXEBd.',18.00,908.00,'LxviUIDXmRqWrNiEJNj3hISEEHbE8zysZsnArVGIBWdLxMBSgdqtnwy0J9e8',1,'2021-03-13 02:13:26','2021-03-13 02:13:26'),(3,'Lê Thị Hương','2001-01-01',0,'0123456789','số 11a Ngõ 282 Nguyễn Huy Tưởng','$2a$12$QvvXiDrskT6HnRk3q1y6FeylTHS1L9dF8oHasVNcC2lshY9mgCoZ2',0.00,0.00,'ZIbNFpWET8jQoshh87PkwwliEgbgShxwTmdyoUz4qtSBqsr4Y0036BR4z0lO',1,'2021-03-13 02:13:26','2021-03-13 02:13:26'),(4,'Lê Thị Hương','2001-01-01',0,'0963852741','số 11a Ngõ 282 Nguyễn Huy Tưởng','$2a$12$bE7Xhow.rjkoI9MXeC65wOakW7f6wJplOyK2s3GFkvdzx177z8FMS',0.00,0.00,'uFsKejudigzo4DTqkZGcHDa7nuEhZy1yK8fXjpbYnYZttEBpt0MrnVnoZ284',1,'2021-03-13 02:13:26','2021-03-13 02:13:26');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `product_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `price` double(8,2) NOT NULL,
  `price_sale` double(8,2) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (211,'ORD20230328220154RIY',514,'ÁO PHAO CỔ MŨ VIỀN LÔNG','ao-phao-co-mu-vien-long','SKUP04376',2,790.00,790.00,0,'2023-03-28 22:01:54','2023-03-28 22:01:54'),(212,'ORD20230328220409S2U',513,'ÁO SƠ MI PHỐI NƠ BẢN LỚN','ao-so-mi-phoi-no-ban-lon','SKUP14460',1,1190.00,440.30,0,'2023-03-28 22:04:09','2023-03-28 22:04:09');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,'Nữ','nu','2023-03-27 15:08:57','2023-03-27 15:08:57'),(2,'Nam','nam','2023-03-27 15:08:57','2023-03-27 15:08:57'),(3,'Trẻ em','tre-em','2023-03-27 15:08:57','2023-03-27 15:08:57'),(4,'Khác','khac','2023-03-27 15:08:57','2023-03-27 15:08:57');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `product_category_id` int unsigned NOT NULL,
  `brand_id` int unsigned NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `price_sale` double(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `bought` int NOT NULL DEFAULT '0',
  `view_count` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_ibfk_1` (`product_category_id`),
  KEY `products_ibfk_2` (`brand_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=555 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (512,'ÁO SƠ MI TAY BỒNG','ao-so-mi-tay-bong','SKUP12810',1,10,'<p>Áo sơ mi trơn, dáng xuông. Chất liệu lưới thoáng mát. Cổ áo dáng tròn với phần cách điệu xuyên thấu. Tay áo dài bo ống.</p>','160664977120201129183611mBTNMXhoRAohYGJNDaLuexRpnv5MYw0FgVDU7DB8.jpeg',990.00,495.00,98,6,102,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(513,'ÁO SƠ MI PHỐI NƠ BẢN LỚN','ao-so-mi-phoi-no-ban-lon','SKUP14460',1,4,'<p>Áo sơ mi được làm từ chất liệu voan nhẹ. Dáng áo suông, tay áo rộng được bo ở phần đầu ống. Dọc thân áo là khuy kim loại ánh vàng. Cổ áo cách điệu với tơ thắt to bản. Set áo có kèm áo 2 dây ở trong.</p>','160664994820201129183908tXPyOD112p0bDto0aWkA5bic9F76wOPw7O0J9E79.jpeg',1190.00,440.30,99,1,100,1,'2023-03-27 15:22:04','2023-04-06 19:17:30'),(514,'ÁO PHAO CỔ MŨ VIỀN LÔNG','ao-phao-co-mu-vien-long','SKUP04376',1,1,'<p>Áo lụa cổ tàu cài khuy cách điệu bằng viền vải voan xếp nhúm. Áo tay hến dáng ngắn. Chất liệu vải lụa mềm mát, mang lại cảm giác thoải mái tuyệt đối khi diện.</p>','160665032920201129184529GxAfhCg9nwrNfzT7y2PORt4XfVjmNJxqhliJGlcx.jpeg',790.00,790.00,100,20,7,1,'2023-03-27 15:22:04','2023-03-28 21:58:48'),(515,'ÁO SƠ MI LỤA CÀI KHUY ẨN','ao-so-mi-lua-cai-khuy-an','SKUP15932',1,3,'<p>Thiết kế áo sơ mi phối túi trước ngực mang lại sự khỏe khoắn, trẻ trung và mát mẻ trong những ngày hè. Chất liệu lụa mỏng nhẹ, dáng áo ôm gọn gàng phù hợp mix cùng nhiều kiểu quần, chân váy khác nhau.</p>','160665072920201129185209vV8js3v0NLXj7eVYmubrimZQWFYZEJKbuc8MAWuh.jpeg',990.00,990.00,100,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(516,'ÁO SƠ MI LỤA THÊU VIỀN','ao-so-mi-lua-theu-vien','SKUP18059',1,2,'<p>Một thiết kế áo với gam màu nữ tính. Chất liệu lụa nhẹ nhàng cùng chi tiết thêu viền tạo kiểu giúp nàng trở nên yêu kiều hơn. Mix áo cùng chân  váy hoặc quần đều là sự lựa chọn hoàn hảo cho nàng đi làm và đi chơi.</p>','160665211420201129191514y1nBexQZaKEpcVku0a6Lg5AkNJ2j4H6FBc7NRVDt.jpeg',1090.00,1090.00,100,5,1,1,'2023-03-27 15:22:04','2023-04-06 19:13:00'),(517,'ÁO TRỄ VAI BO CHUN','ao-tre-vai-bo-chun','SKUP14466',1,1,'<p>Áo trễ vai chất liệu vải thô, thiết kế bo chun dáng ngắn, tay áo lửng, phía trước là hàng khuy cách điệu.</p>','160665286520201129192745rYZNBSffyvmiz3f4fsDBJxQkyKU4eZmpecCdyt6y.jpeg',890.00,890.00,100,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(518,'ÁO PHAO LÔNG VŨ CỔ MŨ','ao-phao-long-vu-co-mu','SKUP11288',1,7,'<p>Áo phao lông vũ dáng suông. Cổ mũ có dây kéo điều chỉnh, dài tay. Có 2 túi kéo khóa bên hông. Cài bằng khóa kéo phía trước. Vải chần bông cách đều.</p>','160665301420201129193014tjSBxzRDCl8HgZ1wWyhKen1jWUA3XHVZXk1cVBbO.jpeg',2850.00,1197.00,100,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(538,'ÁO PHAO GILE BÉ GÁI','ao-phao-gile-be-gai','SKUP10376',3,10,'<p>Áo khoác phao gile bé gái cổ tròn, tay sát nách. 2 túi chéo 2 bên. Cài bằng dây kéo khóa phía trước.</p>','160666167920201129215439uOMU5zreapKf6JWMNzApM7rSYap3AM6lFGBqXMCz.jpeg',1190.00,499.80,100,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(539,'ÁO KHOÁC PHAO CỔ MŨ VIỀN LÔNG','ao-khoac-phao-co-mu-vien-long','SKUP13468',3,2,'<p>Áo khoác may kiểu chần bông có mũ trùm đầu viền lông, dài tay, bo thun gân co giãn cổ tay. Cài khóa kéo phía trước (bấm khuy bên ngoài), cổ thấp, có mũ trùm đầu. Có 2 túi vuông khuy bấm phía trước.</p>','160666465220201129224412stCgjkN0hnbtxf3lAaBHRUD96gbqiMpHDQdECUgm.jpeg',541.80,541.80,100,12,57,1,'2023-03-27 15:22:04','2023-03-27 15:22:04');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `customer_id` int unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `customer_notes` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `notes` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `amount` double(8,2) NOT NULL,
  `score_awards` double(8,2) NOT NULL DEFAULT '0.00',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id_unique` (`order_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `transactions_ibfk_6` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `wishlists_ibfk_1` (`customer_id`),
  CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-15 21:58:04

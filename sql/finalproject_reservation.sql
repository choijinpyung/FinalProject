CREATE DATABASE  IF NOT EXISTS `finalproject` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `finalproject`;
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: finalproject-sist0615.crsfihj2wlpy.ap-northeast-2.rds.amazonaws.com    Database: finalproject
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `reserve_id` varchar(100) NOT NULL,
  `info_id` varchar(100) NOT NULL,
  `reserve_name` varchar(45) NOT NULL,
  `reserve_hp` varchar(45) NOT NULL,
  `room_num` int NOT NULL,
  `accom_num` int NOT NULL,
  `accom_name` varchar(45) NOT NULL,
  `room_name` varchar(45) NOT NULL,
  `reserve_amount` int NOT NULL,
  `reserve_checkin` varchar(100) NOT NULL,
  `reserve_checkout` varchar(100) NOT NULL,
  `reserve_status` varchar(45) NOT NULL,
  `reserve_coupon` varchar(45) NOT NULL,
  `reserve_day` datetime NOT NULL,
  PRIMARY KEY (`reserve_id`),
  UNIQUE KEY `idx_UNIQUE` (`idx`),
  KEY `room_num_idx` (`room_num`),
  KEY `info_id_idx` (`info_id`),
  KEY `accom_num_idx` (`accom_num`),
  CONSTRAINT `info_id` FOREIGN KEY (`info_id`) REFERENCES `info` (`info_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`accom_num`) REFERENCES `accom` (`accom_num`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `room_num` FOREIGN KEY (`room_num`) REFERENCES `room` (`room_num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (87,'2dcb-ebc3-7c85','wlsvud5789','최진평','010-4621-1989',191,79,'신라스테이 구로','체크인 시 배정',80000,'2023-12-04 12:00','2023-12-05 00:00','예약완료','적용안함','2023-12-04 20:59:49'),(95,'4757-161d-e6fa','ssung2sin','이성신','010-8507-6929',149,47,'서울신라호텔','그랜드 코너 디럭스',670000,'2023-12-05 17:00','2023-12-06 11:00','예약완료','적용안함','2023-12-05 10:39:00'),(94,'5289-3b1d-a514','wlsvud5789','최진평','010-4621-1989',184,65,'호텔 더 디자이너스 건대','스탠다드 더블',70000,'2023-12-05 20:00','2023-12-06 13:00','예약완료','적용안함','2023-12-05 10:32:51'),(84,'61ba-3a58-0d7e','wlsvud5789','최진평','010-4621-1989',184,65,'호텔 더 디자이너스 건대','스탠다드 더블',70000,'2023-12-04 20:00','2023-12-05 13:00','예약완료','적용안함','2023-12-04 20:56:48'),(90,'7543-d2bb-89bd','wlsvud5789','최진평','010-4621-1989',134,46,'지엘시티호텔 인천공항','프리미어 더블',180000,'2023-12-04 20:00','2023-12-05 12:00','예약완료','적용안함','2023-12-04 21:03:09'),(91,'8175-6e0e-e35d','ssung2sin','이성신','010-8507-6929',145,47,'서울신라호텔','디럭스 더블',420000,'2023-12-9 17:00','2023-12-10 11:00','예약완료','적용안함','2023-12-05 01:59:44'),(85,'84b1-39b6-e040','wlsvud5789','최진평','010-4621-1989',130,74,'테이크호텔','디럭스',70000,'2023-12-04 8:00','2023-12-05 11:00','예약완료','적용안함','2023-12-04 20:58:19'),(89,'c133-5318-427b','wlsvud5789','최진평','010-4621-1989',201,82,'부산 오실라','Royal Ocean 스위트2 방3',118500,'2023-12-04 16:00','2023-12-05 11:00','예약완료','적용안함','2023-12-04 21:01:42'),(88,'f67e-abe5-9fb3','wlsvud5789','최진평','010-4621-1989',197,81,'글래드 여의도','스탠다드 더블 (연박불가)',109000,'2023-12-04 17:00','2023-12-05 11:00','예약완료','적용안함','2023-12-04 21:00:35'),(86,'fea1-89f6-f096','wlsvud5789','최진평','010-4621-1989',136,49,'호텔 휘슬락 바이 베스트웨스턴','디럭스',80000,'2023-12-04 8:00','2023-12-05 10:00','예약완료','적용안함','2023-12-04 20:59:04');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 17:48:47

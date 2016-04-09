-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: webmusic
-- ------------------------------------------------------
-- Server version	5.6.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `commentsid` int(11) NOT NULL AUTO_INCREMENT,
  `fortype` int(11) NOT NULL,
  `enetityid` int(11) NOT NULL,
  `commentscontext` text NOT NULL,
  `commentdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`commentsid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,0,3,'好听','2016-03-27 16:00:00','haha'),(2,0,3,'[object HTMLTextAreaElement]','2016-03-27 16:00:00','haha'),(3,0,3,'不错,很经典的歌曲','2016-03-27 16:00:00','haha'),(4,0,3,'[object HTMLTextAreaElement]','2016-03-27 16:00:00','haha'),(5,0,3,'这首诞生于1995年由高桥洋子演唱的主题曲作为卡拉OK的必点曲目占据排行榜长达19年，压倒性的人气也让这首歌成为了动漫歌曲的代表。由于这首歌和所配的片头动画与整部动画相符合，再加上新世纪福音战士的巨大影响力和此歌曲所配片头动画的巨大视觉冲击力，使得这首歌成为最经典的动漫歌曲之一。','2016-03-27 16:00:00','haha'),(6,0,27,'银TM','2016-03-28 16:00:00','haha'),(7,0,27,'无节操动漫','2016-03-28 16:00:00','haha'),(8,0,27,'好看','2016-03-28 16:00:00','haha'),(9,0,27,'测试2','2016-03-28 16:00:00','makubex'),(10,0,42,'淳朴的乡下风','2016-03-28 16:00:00','haha'),(11,0,42,'好听','2016-03-28 16:00:00','haha'),(12,0,42,'点赞','2016-03-28 16:00:00','haha'),(13,0,43,' 这首诞生于1995年由高桥洋子演唱的主题曲作为卡拉OK的必点曲目占据排行榜长达19年，压倒性的人气也让这首歌成为了动漫歌曲的代表。由于这首歌和所配的片头动画与整部动画相符合，再加上新世纪福音战士的巨大影响力和此歌曲所配片头动画的巨大视觉冲击力，使得这首歌成为最经典的动漫歌曲之一。','2016-03-28 16:00:00','haha'),(14,1,2,'哎哟 ，不错哦','2016-03-28 16:00:00','haha'),(15,1,2,'再来一发','2016-03-28 16:00:00','haha'),(16,1,2,'badapple','2016-03-28 16:00:00','haha'),(17,1,3,'犬夜叉','2016-03-29 16:00:00','makubex'),(18,1,7,'热血','2016-03-29 16:00:00','makubex'),(19,1,8,'轻松 诙谐','2016-03-29 16:00:00','makubex'),(20,1,15,'歌神','2016-03-29 16:00:00','makubex'),(21,1,10,'千本樱','2016-03-29 16:00:00','makubex'),(22,0,45,'歌神','2016-03-29 16:00:00','makubex'),(23,0,46,'儿时的记忆','2016-03-29 16:00:00','makubex'),(24,0,49,'普通的disco 普通的摇~~~~~~~~~~~~~~~~~·','2016-03-29 16:00:00','makubex'),(25,0,50,'测试','2016-03-29 16:00:00','makubex'),(26,0,54,'感动','2016-03-29 16:00:00','makubex');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-07 14:50:39

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
-- Table structure for table `mv`
--

DROP TABLE IF EXISTS `mv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mv` (
  `mvid` int(11) NOT NULL AUTO_INCREMENT,
  `mvname` varchar(255) NOT NULL,
  `mvsrc` varchar(255) DEFAULT NULL,
  `player` varchar(255) NOT NULL,
  `album` varchar(255) DEFAULT NULL,
  `colletpoint` int(11) DEFAULT '0',
  `playcount` int(11) DEFAULT '0',
  `uploadtime` date DEFAULT NULL,
  `img` text,
  `other` text,
  PRIMARY KEY (`mvid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mv`
--

LOCK TABLES `mv` WRITE;
/*!40000 ALTER TABLE `mv` DISABLE KEYS */;
INSERT INTO `mv` VALUES (7,'一拳超人 （ONE原作的网络漫画）','/webmusic/upload/9A1D0151ADC6351AEF9CA35A70C17006.mp4','一拳超人 （ONE原作的网络漫画）','一拳超人 （ONE原作的网络漫画）',0,0,'2016-03-30','/webmusic/upload/b2de9c82d158ccbfa1f6592d1ad8bc3eb135415b.jpg','《一拳超人》（日语：ワンパンマン），又译《一击男》，是日本网络漫画家ONE的幽默格斗漫画，该作品以一个漫画原稿软件ComicStudio PC 制作，于2009年7月3日在ONE的个人网站开始连载，虽然画功粗糙，但却于日本网络大热，根据日本NHK2012年9月2日播出的“网络漫画革命”调查，《一拳超人》于该年观看总数超过1000万次，平均每天有高达20,000点击。现在持续于ONE的网站连载中。[1] \r\n2012年初，漫画家村田雄介在Twitter上与ONE讨论合作创作“重制版”的构思。2012年6月14日，村田雄介以原作为蓝本创作了“一拳超人﹣重制版”，英文名为 ONE PUNCH MAN re-make，于集英社的网上漫画杂志《邻座的Young jump》上连载。集英社于2012年12月开始为“一拳超人﹣重制版”发行单行本，2015年由台湾东立出版社取得中文版版权。\r\n截至重制版日文单行本第9卷发行时，累计突破650万部。[2-3] '),(8,'日常 （京都动画公司制作动画）','/webmusic/upload/29D90141AE41F4FCE0E6D7E963006CBD.mp4','日常 （京都动画公司制作动画）','日常 （京都动画公司制作动画）',0,0,'2016-03-30','/webmusic/upload/728da9773912b31b2cc995798618367adab4e13d.jpg','电视动画《日常》是根据日本漫画家あらゐけいいち同名漫画改编的电视动画，由京都动画制作，于2011年4月3日播出，共26话。重制版于2012年1月1日开始在NHK教育频道播出，删减后共12话。OVA于2011年3月12日发售。'),(9,'bad apple （nomico演唱的歌曲）','/webmusic/upload/badapple.mp4','bad apple （nomico演唱的歌曲）','bad apple （nomico演唱的歌曲）',0,0,'2016-03-30','/webmusic/upload/8694a4c27d1ed21b8ea54a0eaf6eddc450da3fe8.jpg','Bad Apple!!原为系列作品《东方Project》第四作《东方幻想乡》3面道中主题曲，之后此曲被改编成同人曲目，其中最为人熟知的是由nomico演唱的同人音乐。[1] '),(10,'千本樱 （初音ミク歌曲）','/webmusic/upload/759D0139B0059BF3142051B3A85F33F8.mp4','千本樱 （初音ミク歌曲）','千本樱 （初音ミク歌曲）',0,0,'2016-03-30','/webmusic/upload/4b90f603738da9771c7e53b6b251f8198718e3de.jpg','千本桜（せんぼんざくら）是黒うさP于2011年9月17日投稿至Niconico动画（ニコニコ动画）[1]  的单曲作品，初音ミク的代表曲目之一，歌曲以大正时代为背景，歌颂了大正时代的日本的清新风气与大正天皇的严明，并有黒うさP原作，一斗まる绘画的同名小说出版以及石见翔子的同名漫画。\r\n千本桜传入中国市场时已经在日本流行几周；清新、史诗、共荣、樱花、纯洁等词语差不多可以成为这首歌曲的专用代名词，而在中国，这首歌曲几乎都会在各大漫展上出现过，尤其是2011年9月后半旬至后三年这段歌曲红遍全球的黄金时间，几乎人人都在谈论此曲。\r\n本曲曾获得“向世界夸赞的日本名曲100首”奖项，获得了第25名的好成绩，其节目在东京电视台放送过，人气更是达到了顶峰。\r\n于平成二十八年二月十一日(公元2016年2月11日)播放量突破1000万，成为继《みくみくにしてあげる♪【してやんよ】》(把你给MIKUMIKU掉)《メルト》(melt)之后，VOCALOID的第三首神话曲。\r\n（注：“黒うさP”现有两种译法，一种是官方译法：黑修符；另一种是将“黑”与“うさP”分开来翻译：黑兔P。）'),(11,'悠哉日常大王 （あっと作画的漫画）','/webmusic/upload/575D0141961C52A47FF4F956500A30FD.mp4','悠哉日常大王 （あっと作画的漫画）','悠哉日常大王 （あっと作画的漫画）',0,0,'2016-03-30','/webmusic/upload/a2cc7cd98d1001e929064815ba0e7bec54e797f5.jpg','《悠哉日常大王》是日本漫画家あっと创作的漫画，在Media Factory发行的《月刊Comic Alive》连载中。\r\n该作品以某个乡下地方的学校“旭丘分校”为舞台，描述由于父母的工作关系而迁居到乡下地方的一条萤，与越谷姐妹、宫内姐妹等人的日常故事。舞台是一个到处竖着“注意牛过路”的指示牌，巴士不等五个小时不会来的乡下地方。'),(12,'The Phoenix','/webmusic/upload/Fall Out Boy - The Phoenix.mp4','fall out boy','The Phoenix',0,0,'2016-03-30','/webmusic/upload/79f0f736afc37931486c076fe8c4b74543a9116b.jpg','Fall out boy是来自芝加哥的一个乐队，组建于2001年，曾获格莱美提名。充满年轻活力朝气，畅快将庞克的不羁气焰完全释放，些许EMO风格夹带流畅声线， Fall Out Boy虽然和时下偶像团体般，在团名中加入个\"Boy\"字眼，但是，他们可完全不按常理出牌，踢爆时下做作男孩偶像团体的面具，给你最热血的新世代之音！[1]'),(13,'黑键 （林俊杰演唱歌曲）','/webmusic/upload/B60D014DB791DA04FED92B0D61ECFF1A.mp4','林俊杰','林俊杰',0,0,'2016-03-30','/webmusic/upload/241f95cad1c8a786657a74b06409c93d70cf503f.jpg','《黑键》收录在林俊杰第11张个人专辑《新地球GENESIS》中，由五月天阿信作词，林俊杰作曲并演唱。也是2015年DOTA2亚洲邀请赛的主题曲[1]  。'),(14,'Angel Beats! （P.A.WORKS制作的原创动画）','/webmusic/upload/5A3E0153B6EF16672E4582EDDD9C677B.mp4','Angel Beats! （P.A.WORKS制作的原创动画）','Angel Beats! （P.A.WORKS制作的原创动画）',0,0,'2016-03-30','/webmusic/upload/1ad5ad6eddc451dac334aa52b5fd5266d116324c.jpg','《Angel Beats!》（日文：エンジェルビーツ，台湾译名：天使的脉动）是由Key、ANIPLEX、电击G\'s magazine合作的包括动画、漫画等一系列相关作品的企划。动画由P.A.WORKS制作，于2010年4月开始播放，其中本篇共13话，DVD收录特别篇“ANOTHER EPILOGUE”1话，特别篇“SPECIAL EPISODE”1话，Blu-ray BOX收录的特别篇“Hell\'s Kitchen”1话。[1] \r\n'),(15,'饿狼传说 （张学友音乐专辑）','/webmusic/upload/FC960130106FBCAF9DFFCD811DBD9FE9.mp4','张学友','饿狼传说 （张学友音乐专辑）',0,0,'2016-03-30','/webmusic/upload/9213b07eca806538aa812e4494dda144ad34827a.jpg','《饿狼传说》是香港歌手张学友发行第十四张粤语专辑，唱片制作人欧丁玉，宝丽金唱片公司制作发行。这张唱片亦被认为是一张类似EP类型的粤语唱片。');
/*!40000 ALTER TABLE `mv` ENABLE KEYS */;
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

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
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `songid` int(11) NOT NULL AUTO_INCREMENT,
  `songname` varchar(255) NOT NULL,
  `songsrc` varchar(255) DEFAULT NULL,
  `player` varchar(255) NOT NULL,
  `album` varchar(255) DEFAULT NULL,
  `colletpoint` int(11) DEFAULT '0',
  `playcount` int(11) DEFAULT '0',
  `uploadtime` date DEFAULT NULL,
  `other` text,
  `img` text,
  PRIMARY KEY (`songid`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (46,'残酷天使纲领','/webmusic/upload/高橋洋子 - 残酷な天使のテーゼ.mp3','eva','新世纪福音战士',0,0,'2016-03-30','《新世纪福音战士》是由龙之子工作室和GAINAX两家日本动画公司共同制作的原创动画作品，于1995年10月4日播放，全26集。\r\n动画中革命性的强烈意识流手法，大量宗教、哲学意象的运用，在日本社会掀起被称为“社会现象”程度的巨大回响与冲击，并成为日本动画史上的一座里程碑，同时被公认为日本历史中最伟大的动画之一。[1] ','/webmusic/upload/aebc6e94big.jpg'),(47,'Pray （银魂第一首OP）','/webmusic/upload/川瀬智子 - Pray.mp3','Pray （银魂第一首OP）','Pray （银魂第一首OP）',0,0,'2016-03-30','这一首歌是银魂的第一首op，旋律轻快动人，让人印象深刻。在剧场版银魂“完结篇永远的万事屋”最后也放颂了一次这首OP，有着结束就是开始的意思，意味着银魂不会完结。','/webmusic/upload/344be1fe9925bc31b6d2a34a5edf8db1c9137097.jpg'),(48,'悠哉日常大王 （あっと作画的漫画）','/webmusic/upload/nano.RIPE - こだまことだま.mp3','悠哉日常大王 （あっと作画的漫画）','悠哉日常大王 （あっと作画的漫画）',0,0,'2016-03-30','《悠哉日常大王》是日本漫画家あっと创作的漫画，在Media Factory发行的《月刊Comic Alive》连载中。\r\n该作品以某个乡下地方的学校“旭丘分校”为舞台，描述由于父母的工作关系而迁居到乡下地方的一条萤，与越谷姐妹、宫内姐妹等人的日常故事。舞台是一个到处竖着“注意牛过路”的指示牌，巴士不等五个小时不会来的乡下地方。','/webmusic/upload/20140427124617_WKVF4.jpg'),(49,'普通DISCO （VOCALOID中文曲）','/webmusic/upload/disco.mp3','洛天依','普通DISCO （VOCALOID中文曲）',0,0,'2016-03-30','《普通DISCO》是2015年3月21日由ilem上载至哔哩哔哩的Vocaloid原创歌曲，中文VOCALOID著名制作人ilem的第18首投稿作品[1]  ，由洛天依与言和合唱，于2015年3月21日 10:01发布于中文弹幕视频网站bilibili。[1] \r\n本曲在2016年1月1日达到3,230,000的点击量[1]  ，截止2016年2月18日达到4,013,000的点击量[1]  ，为中文VOCALOID传说曲。\r\n该曲还是ilem的第一首传说曲。[2]  同时也是洛天依的第一首传说曲、言和的第一首传说曲，[2]  第一首VOCALOID中文传说曲、到2016年为止播放数最多的VOCALOID中文曲。[2] \r\n2015年12月31日，该歌曲首次打破“次元障壁”，在湖南卫视跨年晚会上由李宇春演唱。[3] ','/webmusic/upload/u=298215650,2242533504&fm=21&gp=0.jpg'),(50,'罪恶王冠','/webmusic/upload/bajiansq.mp3','罪恶王冠','罪恶王冠',0,0,'2016-03-30','《罪恶王冠》是2011年10月放送的一部以超能力战斗为题材的原创动画，于2011年7月号《Newtype》月刊公布原创企划，Production I.G制作，荒木哲郎监督。剧情创作采用双系列构成制，由脚本家吉野弘幸、大河内一楼负责，音乐主要创作人为泽野弘之。','/webmusic/upload/c83d70cf3bc79f3d39032877bda1cd11738b2993.jpg'),(51,'Butter-fly','/webmusic/upload/和田光司 - Butter-Fly.mp3','Butter-fly','Butter-fly',0,0,'2016-03-30','utter-fly》[1]  是由和田光司演唱，千绵伟功谱曲填词，渡部チェル编写的摇滚单曲，因作为动画《数码宝贝》 的主题曲而广为人知，之前一直默默无闻的演唱者和田光司本人亦因此曲而一战成名，正式出道乐坛。光司本人共演唱过三个版本的《Butter-fly》：普通版[2]  、剧场版片尾的抒情版[3]  和《数码宝贝》大结局中的钢琴版[4]  ，另有藤田淑子等一众《数码宝贝》配音演员合唱的版本。2014年和田光司在数码宝贝15周年纪念活动中再次献声，但如今他的声音因咽喉肿瘤已经干瘪沙哑，高音上不去了[5-6]  。2015年，歌曲和田光司重新录音，成为《数码宝贝大冒险tri》的主题曲','/webmusic/upload/aa18972bd40735fa641c210298510fb30e240898.jpg'),(52,'Charlotte （P.A.WORKS原创的电视动画）','/webmusic/upload/Lia - Bravely You.mp3','Charlotte （P.A.WORKS原创的电视动画）','Charlotte （P.A.WORKS原创的电视动画）',0,0,'2016-03-30','《Charlotte（夏洛特）》是一部由游戏制作公司Key与ANIPLEX联合企划、P.A.WORKS制作的日本原创动画，也是麻枝准自2010年的《Angel Beats!》以来时隔五年再次参与剧本创作的动画。放送之前特番《Charlotte～新的“命运”的开始～》于2015年6月20日放送，在6月29日则放送有纪念特番。电视动画于2015年7月4日首播，全13话，另有TV未放送的特别篇授予BD&DVD第7卷中。','/webmusic/upload/4610b912c8fcc3ce7dcdfbdd9745d688d53f20ca.jpg'),(53,'干物妹！小埋 （サンカクヘッド作画的漫画）','/webmusic/upload/田中あいみ - かくしん的☆めたまるふぉ～ぜっ!.mp3','干物妹！小埋 （サンカクヘッド作画的漫画）','干物妹！小埋 （サンカクヘッド作画的漫画）',0,0,'2016-03-30','《干物妹！小埋》是由日本サンカクヘッド(Sankaku Head)作画的漫画，起初在集英社的《奇迹JUMP》2012年10号和11号以《干物妹小埋！》（干物妹 うまるちゃん!）标题试载，然后迁移到《周刊YOUNG JUMP》2013年15号开始连载。故事背景设定在东京都八王子市，讲述在外面是贤淑高贵，但回到家后立即变成宅在家中喜欢ACGN的干物女小埋和照顾她生活的哥哥，与好友们间日常生活喜剧故事。\r\n外传《平行世界奇迹跳跃（ひもうと!うまるちゃんS）》为原作作者所画的外传篇，主要围绕四个女主角的非主线故事，最早于《奇迹JUMP》2013年15号开始不定期连载，之后2014年3月20日又在niconico静画开始连载。另一部外传《秋田妹海老名!(秋田妹!えびなちゃん)》也将在2015年11月底开始连载。','/webmusic/upload/bd315c6034a85edfdf788ea04f540923dc5475b8.jpg'),(54,'CLANNAD','/webmusic/upload/折戸伸治 - 潮鳴り.mp3','CLANNAD','CLANNAD',0,0,'2016-03-30','《CLANNAD》是日本游戏品牌Key继《Kanon》、《AIR》后发行的第三款恋爱冒险游戏，游戏于2004年4月28日发行PC初回限定版，并依此为原作改编或扩充跨媒体制作的作品。\r\n游戏PC版在最初公开时的预定发售日期是2002年，后来预定发售日被延期至2003年，之后再一次被延期至2004年4月28日，相比最初的预定延期了2年。在剧情设计上，延续了Key社出品的前两部作品的特点。但与前两部有所不同的是，本作在发布伊始即确定为全年龄对象。因其剧情大部分发生于春季，亦被视为Key社游戏“季节组曲”中的“春”。','/webmusic/upload/d043ad4bd11373f0c117f33ca60f4bfbfbed046c.jpg'),(55,'K','/webmusic/upload/angela - KINGS.mp3','K','K',0,0,'2016-04-07','KKKKKKKK','/webmusic/upload/null'),(56,'K','/webmusic/upload/angela - KINGS.mp3','K','K',0,0,'2016-04-07','KKKKKKKK','/webmusic/upload/null'),(57,'k','/webmusic/upload/123.mp3','k','k',0,0,'2016-04-07','kkkkk','/webmusic/upload/null'),(58,'k','/webmusic/upload/123.mp3','k','k',0,0,'2016-04-07','kkkkk','/webmusic/upload/64380cd7912397dde813b3145d82b2b7d0a287b3.jpg');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-07 14:50:40

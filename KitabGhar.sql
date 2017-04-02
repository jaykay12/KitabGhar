-- MySQL dump 10.13  Distrib 5.1.33, for Win32 (ia32)
--
-- Host: localhost    Database: eBookalya
-- ------------------------------------------------------
-- Server version	5.1.33-community

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `bookid` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `publication` varchar(50) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `subcategory` varchar(20) DEFAULT NULL,
  `queryid` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `coverimage` varchar(50) DEFAULT NULL,
  `downloadpath` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bookid`),
  UNIQUE KEY `queryid` (`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES ('ACA1000','Computer System Architecture','Morris Mano','International Edition','Academic','Engineering',189949,30,'Morris-Mano CO.png','Sorry.jsp'),('ACA1001','Discrete Mathematics and its Applications','Kenneth H. Rosen','International Edition','Academic','Engineering',158902,30,'Rosen DS.png','Sorry.jsp'),('ACA1002','Operating System Concepts','Silberchatz','International Edition','Academic','Engineering',149896,40,'Silberchatz OS.png','Sorry.jsp'),('ACA1003','Computer Organization And Architecture','William Stallings','International Edition','Academic','Engineering',120122,30,'William Stallings CO.png','Sorry.jsp'),('ACA1004','Operating System : Internals and Design Principles','William Stallings','International Edition','Academic','Engineering',158352,30,'William Stallings OS.png','Sorry.jsp'),('NOV1000','5 point Someone','Chetan Bhagat','Rupa Publications','Novel','Romantic',101011,20,'FivePointSomeone.png',NULL),('NOV1001','2 States: The Story of My Marriage','Chetan Bhagat','Rupa Publications','Novel','Romantic',104451,20,'TwoStates.jpg','2 States-The Story of My Marriage.pdf'),('NOV1002','The 3 Mistakes of My Life','Chetan Bhagat','Rupa Publications','Novel','Romantic',185514,20,'The3MistakesofMyLife.png','Sorry.jsp'),('NOV1003','Half Girlfriend','Chetan Bhagat','Rupa Publications','Novel','Romantic',105324,20,'HalfGirlfriend.png','Sorry.jsp'),('NOV1004','Revolution 2020','Chetan Bhagat','Rupa Publications','Novel','Romantic',100813,20,'Revolution2020.png','Sorry.jsp'),('NOV1005','One Night At The Call Center','Chetan Bhagat','Rupa Publications','Novel','Romantic',122471,20,'OneNightAtTheCallCenter.png','Sorry.jsp'),('PROG1000','Beginning PHP6, Apache, MySQL','Timothy Boronczyk','Wrox Publications','Programming','LAMPStack',127262,50,'BeginningPHP6,Apache,MySQL.png','Sorry.jsp'),('PROG1001','Head First PHP & MySQL','Michael Morrison','O Reilly','Programming','LAMPStack',121095,30,'HeadFirstPHP-MySQL.png','Sorry.jsp'),('PROG1002','PHP, MySQL, Javascript & CSS','Robin Nixon','O Reilly Publications','Programming','LAMPStack',185494,30,'PHP,MySQL,JS and CSS.png','Sorry.jsp'),('PROG1003','Learning PHP, MySQL, JavaScript, CSS & HTML5','Robin Nixon','O Reilly Publications','Programming','LAMPStack',150006,30,'PHP,MySQL,JS,CSS and HTML5.png','Sorry.jsp'),('PROG1004','Beginning CSS','Ian Pouncy','Wrox Publications','Programming','WebDesigning',150363,30,'BeginningCSS.png','Sorry.jsp'),('PROG1005','Beginning HTML and CSS','Rob Larsen','Wrox Publications','Programming','WebDesigning',158720,30,'BeginningHTML-CSS.png','Sorry.jsp'),('PROG1006','CSS3 Foundations','Ian Lunn','Treehouse Publications','Programming','WebDesigning',192550,20,'CSS3-Foundations.png','Sorry.jsp'),('PROG1007','CSS : The Missing Manual','David Sawyer McFarland','O Reilly Publications','Programming','WebDesigning',199303,30,'CSS-TheMissingManual.png','Sorry.jsp'),('PROG1008','Head First HTML','Eric Freeman','International Edition','Programming','WebDesigning',186780,30,'HeadFirstHTML.png','Sorry.jsp'),('PROG1009','HTML, XHTML & CSS For Dummies','Jeff Noble','International Edition','Programming','WebDesigning',140381,20,'HTML-CSSForDummies.png','Sorry.jsp'),('PROG1010','Beginning Responsive Web Design','Jonathan Fielding','Apress Publications','Programming','WebDesigning',131147,20,'ResponsiveWebDesign.png','Sorry.jsp');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `reviewid` varchar(20) NOT NULL,
  `bookid` varchar(20) DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `timing` time DEFAULT NULL,
  `review` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`reviewid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES ('00001','ACA1000','jaykay12','2024-02-20','12:00:00','heyy execellent book'),('00002','ACA1003','kiwi','2024-09-20','23:50:00','heyy execellent one good book');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shelfs`
--

DROP TABLE IF EXISTS `shelfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shelfs` (
  `tid` int(11) NOT NULL DEFAULT '0',
  `bookid` varchar(10) DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelfs`
--

LOCK TABLES `shelfs` WRITE;
/*!40000 ALTER TABLE `shelfs` DISABLE KEYS */;
INSERT INTO `shelfs` VALUES (103012,'NOV1002','Narendra',0),(109092,'NOV1004','deshpal1962',0),(143464,'PROG1000','deshpal1962',0),(149898,'ACA1002','jalaz12',0);
/*!40000 ALTER TABLE `shelfs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userid` varchar(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `queryid` int(11) DEFAULT NULL,
  `tokens` int(11) DEFAULT NULL,
  `profilepic` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `queryid` (`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('anita22','Anita Chaudhary','anitachaudhary1966@gmail.com','83349cbdac695f3943635a4fd1aaa7d0','9759946845','Saharanpur',103260,100,'IMG_20150417_131238711.jpg'),('Bansal','Pavan','saurabh@sk.com','e63c4cdb72bf34f5959ecb2455fd6bcb','1234567890','Hutdfg',159120,100,'default.png'),('cheenu16','Shikha Choudhary','shikha1604@gmail.com','e2c4047e554648eb00ea0fe58586c2dd','987654321','Noida',127201,100,'default.png'),('deshpal1962','Deshpal Singh','deshpal.aec@gmail.com','bbc00ec92c010eba64db247f5bc1b353','8755944473','Meerut',149918,30,'KIWI N DAD.jpg'),('Harsh12','Harsh Choudhary','harsh123@gmail.com','d4e3730e8cba214f85cddae5f9331d74','7814167578','Chandigarh',107224,100,'4.jpg'),('jalaz12','Jalaz Choudhary','jalazkumar1208@gmail.com','995ac47c2ac42de7217d7586cdf433ed','9882875581','Saharanpur',109703,60,'IMG_20151219_012731.jpg'),('jaykay12','Jalaz Kumar','jalazcool@gmail.com','995ac47c2ac42de7217d7586cdf433ed','9882552289','Almora',109034,100,'IMG_20160606_2112551.jpg'),('kharita','Mukesh','mukeshnithcse@gmail.com','a883bde368145d717b99c70594fd6069','9805075216','Jodhpur',188441,100,'IMG_20160203_000132.jpg'),('kiwi','Deepshikha','Deepshikha@gmail.com','de5949721e6352f01dfef317c3e898a8','9560980638','Gurgaon',192574,100,'58.jpg'),('Narendra','Narendra Dodwaria','narendra@gmail.com','25d55ad283aa400af464c76d713c07ad','9882541148','Nawa city',195296,80,'default.png'),('rohit15','Rohit Choudhary','rohitlibra23@gmail.com','2d235ace000a3ad85f590e321c89bb99','987654321','Ghaziabad',131164,100,'default.png'),('saurabh','Saurabh','saurabh@sk.com','41d6ad0761a5d27a9e1bd567041ce9e9','1234567890','Patna',161385,100,'default.png');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-02  7:19:29

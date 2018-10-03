-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: kitabghar
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `publication` varchar(100) DEFAULT 'Self Published',
  `category` varchar(20) DEFAULT NULL,
  `subcategory` varchar(20) DEFAULT NULL,
  `queryid` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `coverimage` varchar(100) DEFAULT 'default.jpg',
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
INSERT INTO `books` VALUES ('ACAD1000','Compilers - Dragon Book','Aho Ullman','Addison Wesley','Academic','TOC',136484,40,'AhoCOMPILER.png','Sorry.jsp'),('ACAD1001','Electronic Devices and Circuit Theory','Robert Boylestad','Prentice Hall','Academic','NonCSE',180150,40,'BoylestadECE.png','Sorry.jsp'),('ACAD1002','Introduction to Algorithms','Thomas Cormen','MIT Press','Academic','DSAlgo',127542,50,'CormenALGO.png','Sorry.jsp'),('ACAD1003','Principles of Soft Computing','S N Deepa','Wiley','Academic','ML',113419,20,'DeepaSC.png','Sorry.jsp'),('ACAD1004','Graph Theory','Narsimon Deo','Prentice Hall','Academic','DSAlgo',130905,30,'DeoGRAPH.png','Sorry.jsp'),('ACAD1005','Data Communications and Networking','Behrouz Forouzan','Prentice Hall','Academic','CN',125616,30,'ForouzanCN.png','Sorry.jsp'),('ACAD1006','Cryptography & Network Security','Behrouz Forouzan','McGraw Hill','Academic','Crypto',199941,40,'ForouzanCRYPTO.png','Sorry.jsp'),('ACAD1007','Network Security Hacks','Andrew Lockhart','OReilly','Academic','Crypto',111040,10,'HackerCN.png','Sorry.jsp'),('ACAD1008','Machine Learning for Hackers','Drew Conway','OReilly','Academic','ML',126064,20,'HackerML.png','Sorry.jsp'),('ACAD1009','Hacking Exposed','Joel Scambey','','Academic','Crypto',146210,10,'HackerNOR.png','Sorry.jsp'),('ACAD1010','Data Mining','Jiawei Han','MK Press','Academic','ML',110264,40,'HanDM.png','Sorry.jsp'),('ACAD1011','Head First Networking','Al Anderson','OReilly','Academic','CN',108693,30,'HeadFirstCN.png','Sorry.jsp'),('ACAD1012','Computer Graphics','Hearn Baker','Prentice Hall','Academic','CG',131124,20,'HearnBakerCG.png','Sorry.jsp'),('ACAD1013','Introduction to MATLAB','Boss L. Spencer','MIT Press','Academic','NonCSE',130026,30,'IntroMLAB.png','Sorry.jsp'),('ACAD1014','Introduction to Software Engineering','Pankaj Jalote','Springer','Academic','SE',100048,30,'JaloteSE.png','Sorry.jsp'),('ACAD1015','Modern Digital and Analog Communication','B P Lathi','Oxford','Academic','NonCSE',172982,30,'LathiCOMM.png','Sorry.jsp'),('ACAD1016','Simulation Modelling & Analysis','Law Kelton','McGraw Hill','Academic','Sim',136788,20,'LawSIMULATION.png','Sorry.jsp'),('ACAD1017','Computer System Architecture','Morris Mano','Pearson Press','Academic','CO',138374,20,'ManoCO.png','Sorry.jsp'),('ACAD1018','Digital Design','Morris Mano','Pearson Press','Academic','NonCSE',105576,30,'ManoDD.png','Sorry.jsp'),('ACAD1019','Theory of Computer Science','KLP Mishra','Prentice Hall','Academic','TOC',123313,30,'MishraTOC.png','Sorry.jsp'),('ACAD1020','Computer Organization and Design','Patterson Hennessy','MK Press','Academic','CO',195359,30,'PattersonCO.png','Sorry.jsp'),('ACAD1021','Digital Image Processing','William Pratt','Wiley','Academic','CG',141762,10,'PratDIP.png','Sorry.jsp'),('ACAD1022','Software Engineering','Roger Pressman','McGraw Hill','Academic','SE',103844,20,'PressmanSE.png','Sorry.jsp'),('ACAD1023','Engineering Optimization','S S Rao','Wiley','Academic','NonCSE',174884,30,'RaoOPTI.png','Sorry.jsp'),('ACAD1024','OpenGL Programming Guide','Dave Shreiner','Addison Wesley','Academic','CG',167667,20,'RedbookOPENGL.png','Sorry.jsp'),('ACAD1025','Artificial Intelligence','Rich Knight','McGraw Hill','Academic','ML',126599,20,'RichKnightAI.png','Sorry.jsp'),('ACAD1026','Discrete Mathematics','Kenneth Rosen','McGraw Hill','Academic','DS',106030,30,'RosenDS.png','Sorry.jsp'),('ACAD1027','Computer Networking','Kurose Ross','Pearson Press','Academic','CN',149033,30,'RossCN.png','Sorry.jsp'),('ACAD1028','Probability','Sheldon Ross','Pearson Press','Academic','Maths',151540,20,'RossPROB.png','Sorry.jsp'),('ACAD1029','Artificial Intelligence','Russel Norvig','Prentice Hall','Academic','ML',195899,40,'RusselAI.png','Sorry.jsp'),('ACAD1030','Computer Algorithms','Sartaj Sahni','Orient Black Swan','Academic','DSAlgo',196373,20,'SahniALGO.png','Sorry.jsp'),('ACAD1031','CUDA By Example','Jason Sanders','NVIDIA','Academic','CG',130925,0,'SandersCUDA.png','Sorry.jsp'),('ACAD1032','Discrete Mathematics','Lipschutz','Schaum Outlines','Academic','Maths',126481,20,'SchaumDISCRETE.png','Sorry.jsp'),('ACAD1033','Linear Algebra','Lipschutz','Schaum Outlines','Academic','Maths',172771,10,'SchaumLA.png','Sorry.jsp'),('ACAD1034','Algorithms','Robert Sedgewick','Addison Wesley','Academic','DSAlgo',180388,30,'SedgewickALGO.png','Sorry.jsp'),('ACAD1035','Database System Concepts','Henry Korth','McGraw Hill','Academic','DBMS',117943,40,'SilberchatzDBMS.png','Sorry.jsp'),('ACAD1036','Operating System Concepts','Silberschatz','Wiley','Academic','OS',179877,20,'SilberchatzOS.png','Sorry.jsp'),('ACAD1037','Computer Organization and Architecture - Eighth Edition','William Stallings','Pearson Press','Academic','CO',110211,30,'StallingsCO.png','Sorry.jsp'),('ACAD1038','Cryptography & Network Security - Fifth Edition','William Stallings','Prentice Hall','Academic','Crypto',124647,30,'StallingsCrypto5.png','Sorry.jsp'),('ACAD1039','Cryptography & Network Security - Fourth Edition','William Stallings','Prentice Hall','Academic','Crypto',164861,20,'StallingsCRYPTO4.png','Sorry.jsp'),('ACAD1040','Cryptography & Network Security - Sixth Edition','William Stallings','Prentice Hall','Academic','Crypto',109500,30,'StallingsCRYPTO6.png','Sorry.jsp'),('ACAD1041','Operating System Principles','William Stallings','Macmillan USA','Academic','OS',102302,30,'StallingsOS.png','Sorry.jsp'),('ACAD1042','Discrete Mathematics with Applications','Susanna S. Epp','Cengage Learning','Academic','DS',171887,30,'SusanneDISCRETE.png','Sorry.jsp'),('ACAD1043','Computer Networks','Tanenbaum','Prentice Hall','Academic','CN',199071,30,'TanenbaumCN.png','Sorry.jsp'),('ACAD1044','Electrical Technology','B L Theraja','S. Chand','Academic','NonCSE',142585,30,'TharejaEE.png','Sorry.jsp'),('ACAD1045','Modern Engineering Physics','AS Vasudeva','S. Chand','Academic','NonCSE',155725,30,'VasudevPHY.png','Sorry.jsp'),('NOV1000','The 3 Mistakes of My Life','Chetan Bhagat','Rupa Publications','Novel','InNew',149147,30,'3Mistakes.png','Sorry.jsp'),('NOV1001','Allegiant','Veronika Roth','','Novel','Foreign',103487,30,'Allegiant.jpg','Sorry.jsp'),('NOV1003','Anything For You Maam','Tushar Raheja','','Novel','InNew',135424,20,'AnthingMam.jpg','Sorry.jsp'),('NOV1004','World Best Boyfriend','Durjoy Datta','Penguin Books','Novel','InNew',186968,30,'BestBoyfriend.jpg','Sorry.jsp'),('NOV1005','The Bro Code','Barney Stinson','','Novel','Foreign',118320,10,'BroCode.png','Sorry.jsp'),('NOV1006','One Night at the Call Centre','Chetan Bhagat','Rupa Publications','Novel','InNew',126393,20,'CallCenter.png','Sorry.jsp'),('NOV1007','Insight of Just Friends','Sumrit Shahi','Rupa Publications','Novel','InNew',185363,30,'CanJustFriends.jpg','Sorry.jsp'),('NOV1008','An Abundance of Katherines','John Green','','Novel','Foreign',129086,10,'Catherines.png','Sorry.jsp'),('NOV1009','Divergent','Veronika Roth','','Novel','Foreign',118753,30,'Divergent.jpg','Sorry.jsp'),('NOV1010','Your Dreams are Mine Now','Ravinder Singh','Penguin Books','Novel','InNew',166052,30,'DreamsMine.jpg','Sorry.jsp'),('NOV1011','The Fault in our Stars','John Green','Dutton Books','Novel','Foreign',103023,60,'FaultStars.png','Sorry.jsp'),('NOV1012','This Love that feels Right','Ravinder Singh','Penguin Books','Novel','InNew',172997,20,'FeelsRight.jpg','Sorry.jsp'),('NOV1013','At First Sight','Nicolas Sparks','Grand Central Publishing','Novel','Foreign',103810,20,'Firstsight.png','Sorry.jsp'),('NOV1014','5 Points Someone','Chetan Bhagat','Rupa Publications','Novel','InNew',181444,30,'FivePoint.png','Sorry.jsp'),('NOV1015','I Too Had a Love Story','Ravinder Singh','Penguin Books','Novel','InNew',195506,30,'HadLoveStory.png','Sorry.jsp'),('NOV1016','Half Girlfriend','Chetan Bhagat','Rupa Publications','Novel','InNew',130019,20,'HalfGirlfriend.png','Sorry.jsp'),('NOV1017','The Hobbit','J R R Tolkein','Allen & Unwin','Novel','Foreign',155442,60,'Hobbit.png','Sorry.jsp'),('NOV1018','Hold My Hand','Durjoy Datta','Penguin Books','Novel','InNew',111370,20,'HoldHand.jpg','Sorry.jsp'),('NOV1019','Will You Still Love Me?','Ravinder Singh','Penguin Books','Novel','InNew',111845,20,'HoldMyHands.jpg','Sorry.jsp'),('NOV1020','Harry Potter and The Prisoner of Azkaban','JK Rowling','Bloomsbury','Novel','Foreign',165856,50,'HPAzkaban.jpeg','Sorry.jsp'),('NOV1021','Harry Potter and The Chamber of Secrets','JK Rowling','Bloomsbury','Novel','Foreign',170037,50,'HPChamber.jpg','Sorry.jsp'),('NOV1022','Harry Potter and The Deathly Hallows','JK Rowling','Bloomsbury','Novel','Foreign',163373,50,'HPDeathly.png','Sorry.jsp'),('NOV1023','Harry Potter and The Philosopher Stone','JK Rowling','Bloomsbury','Novel','Foreign',184586,50,'HPPhilosopher.jpg','Sorry.jsp'),('NOV1024','Harry Potter and The Order of the Phoenix','JK Rowling','Bloomsbury','Novel','Foreign',130329,50,'HPPhoenix.jpg','Sorry.jsp'),('NOV1025','Harry Potter and The Half Blood Prince','JK Rowling','Bloomsbury','Novel','Foreign',100849,50,'HPPrince.jpg','Sorry.jsp'),('NOV1026','Harry Potter and The Sorcerer Stone','JK Rowling','Bloomsbury','Novel','Foreign',190391,50,'HPSorcerer.jpg','Sorry.jsp'),('NOV1027','The Hunger Games','Suzanne Collins','Stochalistic Publications','Novel','Foreign',136805,20,'HungerGames.png','Sorry.jsp'),('NOV1028','Our Impossible Love','Durjoy Datta','Penguin Books','Novel','InNew',171294,30,'ImpossibleLove.jpg','Sorry.jsp'),('NOV1029','Insurgent','Veronika Roth','HarperCollins','Novel','Foreign',134096,30,'Insurgent.jpg','Sorry.jsp'),('NOV1030','Just Friends','Sumrit Shahi','Mahaveer Publications','Novel','InNew',105239,30,'JustFriends.jpg','Sorry.jsp'),('NOV1031','Never Kiss Your Best Friend','Sumrit Shahi','Rupa Publications','Novel','InNew',109885,20,'KissBestFriend.jpg','Sorry.jsp'),('NOV1032','Till the Last Breath','Durjoy Datta','Penguin Books','Novel','InNew',196616,20,'LastBreadth.jpg','Sorry.jsp'),('NOV1033','The Road Less Travelled','Scott Peck','Simon & Schuster','Novel','Foreign',117165,10,'LessTravelled.jpg','Sorry.jsp'),('NOV1034','A Lot like Love','Sumrit Shahi','Penguin Books','Novel','InNew',195353,20,'LilChocolate.jpg','Sorry.jsp'),('NOV1035','When Only Love Remains','Durjoy Datta','Penguin Books','Novel','InNew',106769,20,'LoveRemains.jpg','Sorry.jsp'),('NOV1036','The Immortals of Meluha','Amish Tripathi','Westland Press','Novel','InOld',111234,40,'Meluha.jpg','Sorry.jsp'),('NOV1037','To Kill A Mockingbird','Harper Lee','J B Lippincott','Novel','Foreign',182300,40,'Mockingbird.png','Sorry.jsp'),('NOV1038','The Secrets of the Nagas','Amish Tripathi','Westland Press','Novel','InOld',159702,40,'Nagas.jpg','Sorry.jsp'),('NOV1039','If its not forever..','Durjoy Datta','Penguin Books','Novel','InNew',134138,20,'NotForever.jpg','Sorry.jsp'),('NOV1040','Now That You Are Rich','Durjoy Datta','Grapevine Publishers','Novel','InNew',119285,20,'NowYouRich.jpg','Sorry.jsp'),('NOV1041','Of Course I Love You','Durjoy Datta','Grapevine Publishers','Novel','InNew',103969,20,'OfCourse.jpg','Sorry.jsp'),('NOV1042','Paper Towns','John Green','Dutton Books','Novel','Foreign',101609,10,'PaperTowns.png','Sorry.jsp'),('NOV1043','Pride & Prejudice','Jane Austen','Thomas Egerton','Novel','Foreign',107070,10,'PridePrejudice.jpg','Sorry.jsp'),('NOV1044','Revolution 2020','Chetan Bhagat','Rupa Publications','Novel','InNew',196402,30,'Revolution2020.png','Sorry.jsp'),('NOV1045','She Broke Up','Durjoy Datta','Penguin Books','Novel','InNew',160783,20,'SheBrokeUp.jpg','Sorry.jsp'),('NOV1046','Train To Pakistan','Khushwant Singh','Penguin Books','Novel','InOld',146640,20,'TrainToPakistan.jpg','Sorry.jsp'),('NOV1047','The Oath of the Vayuputras','Amish Tripathi','Westland Press','Novel','InOld',122815,40,'Vayuputras.jpg','Sorry.jsp'),('NOV1048','Like it Happened Yesterday','Ravinder Singh','Penguin Books','Novel','InNew',155389,20,'Yesterday.jpg','Sorry.jsp'),('NOV1049','You Were My Crush!','Durjoy Datta','Penguin Books','Novel','InNew',142087,20,'YouCrush.jpg','Sorry.jsp'),('PROG1000','Beginning PHP, Apache and MySQL','Timothy Boronczyk','Wrox','Programming','PHP',154427,60,'BegAMP.png','Sorry.jsp'),('PROG1001','Beginning CSS','Ian Pouncey','Wrox','Programming','UI',187898,40,'BegCSS.png','Sorry.jsp'),('PROG1002','Beginning Python','James Payne','Wrox','Programming','Python',170802,30,'BegPy.png','Sorry.jsp'),('PROG1003','Beginning HTML and CSS','Rob Larsen','Wrox','Programming','UI',157910,30,'BegWD.png','Sorry.jsp'),('PROG1004','Java The Complete Reference','Herbert Schildt','Oracle Press','Programming','Java',168702,20,'CompRefJ.png','Sorry.jsp'),('PROG1005','Javascript Cookbook','Shelley Powers','OReilly','Programming','JS',173504,10,'CookbookJS.png','Sorry.jsp'),('PROG1006','Python Web Development with Django','Jeff Forceir','','Programming','Python',185954,20,'DjangoWD.png','Sorry.jsp'),('PROG1007','HTML & CSS for dummies','Jeff Noble','','Programming','UI',108399,20,'DummiesHC.png','Sorry.jsp'),('PROG1008','Effective JavaScript','David Herman','Prentice Hall','Programming','JS',176996,20,'EffectiveJS.png','Sorry.jsp'),('PROG1009','Flask Web Development','Miguel Grinberg','OReilly','Programming','Python',192761,20,'FlaskWD.png','Sorry.jsp'),('PROG1010','CSS3 Foundations','Ian Lunn','treehouse','Programming','UI',147841,10,'FoundCSS.png','Sorry.jsp'),('PROG1011','Android Programming','Bill Phillips','Big Nerd Ranch','Programming','Android',132992,20,'GuideAD.png','Sorry.jsp'),('PROG1012','The Linux Command Line','William Shotts','No Starch Press','Programming','Linux',116460,0,'GuideLINUX.png','Sorry.jsp'),('PROG1013','Programming Ruby','Dave Thomas','Facets','Programming','Ruby',134458,30,'GuideRAILS.png','Sorry.jsp'),('PROG1014','Head First HTML with CSS','Elisabeth Freeman','OReilly','Programming','UI',105258,10,'HeadFirstHTML.png','Sorry.jsp'),('PROG1015','Head First Servlets & JSP','Bryan Basham','OReilly','Programming','Java',177414,30,'HeadFirstJSP.png','Sorry.jsp'),('PROG1016','Head First PHP & MySQL','Lynn Beighley','OReilly','Programming','PHP',194471,20,'HeadFirstMP.png','Sorry.jsp'),('PROG1017','Head First Python','Paul Barry','OReilly','Programming','Python',151012,30,'HeadFirstPY.png','Sorry.jsp'),('PROG1018','Learning Python','Mark Lutz','OReilly','Programming','Python',198798,30,'LearnPY.png','Sorry.jsp'),('PROG1019','Getting MEAN','Simon Holmes','Hanning','Programming','JS',105205,40,'MEANStackWE.png','Sorry.jsp'),('PROG1020','CSS The Missing Manual','David Sawyer','OReilly','Programming','UI',138343,10,'MissManualCSS.png','Sorry.jsp'),('PROG1021','JQuery Novice to Ninja','Earle Castledine','Sitepoint','Programming','JS',179283,0,'NinjaJQY.png','Sorry.jsp'),('PROG1022','Secrets of the JavaScript Ninja','John Resig','Hanning','Programming','JS',115230,20,'NinjaJS.png','Sorry.jsp'),('PROG1023','The Official Ubuntu Book','Matthew Helmke','','Programming','Linux',124498,0,'OfficialLINUX.png','Sorry.jsp'),('PROG1024','The Principles of Object Oriented JavaScript','Nicholas Zakas','No Starch Press','Programming','JS',102029,20,'OOPS.png','Sorry.jsp'),('PROG1025','Learning PHP, JS & CSS','Robin Nixon','OReilly','Programming','PHP',105007,20,'PM-JS-C.png','Sorry.jsp'),('PROG1026','Learning PHP, JS, CSS & HTML','Robin Nixon','OReilly','Programming','PHP',103283,0,'PM-JS-CH.png','Sorry.jsp'),('PROG1027','Understanding C Pointers','Richard Reese','OReilly','Programming','CPP',144640,10,'PointersC.png','Sorry.jsp'),('PROG1028','Professional JavaScript','Nicholas Zakas','Wrox','Programming','JS',154531,20,'ProfJS.png','Sorry.jsp'),('PROG1029','Python Programming','Michael Dauson','','Programming','Python',105324,0,'ProgPY.png','Sorry.jsp'),('PROG1030','Agile Web Development with Rails','RailsWD.png','Facets','Programming','Ruby',186692,10,'RailsWD.png','Sorry.jsp'),('PROG1031','Beginning Web Design','Jonathan Fielding','APress','Programming','UI',145572,20,'ResponsiveWD.png','Sorry.jsp'),('PROG1032','C Programming Guide','Dennis Ritchie','Prentice Hall','Programming','CPP',128718,30,'RichieC.png','Sorry.jsp'),('PROG1033','Web Scraping with Python','Ryan Mitchell','OReilly','Programming','Python',143767,20,'ScrapingPY.png','Sorry.jsp'),('PROG1034','Think Python','Allen B. Downey','OReilly','Programming','Python',198947,30,'ThinkPY.png','Sorry.jsp');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `connections`
--

DROP TABLE IF EXISTS `connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `connections` (
  `cid` int(11) NOT NULL,
  `follower_id` varchar(20) DEFAULT NULL,
  `follow_id` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connections`
--

LOCK TABLES `connections` WRITE;
/*!40000 ALTER TABLE `connections` DISABLE KEYS */;
/*!40000 ALTER TABLE `connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `reviewid` varchar(20) NOT NULL,
  `bookid` varchar(20) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `review` varchar(1000) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reviewid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES ('jalaz.kumarACAD1000','ACAD1000','jalaz.kumar','Really Good Book, for Academic Purposes.',4,'2018-09-30 02:53:28'),('jalaz.kumarACAD1001','ACAD1001','jalaz.kumar','Too Hard to grasp up.',2,'2018-09-30 02:53:49'),('jalaz.kumarACAD1002','ACAD1002','jalaz.kumar','Wonderful Book, for basic of Data Structures & Algorithms. Good for Advanced level as well.',5,'2018-09-30 02:54:34'),('jalaz.kumarACAD1003','ACAD1003','jalaz.kumar','Nice Book, on Soft Computing. Indian Writers always Rocks.',4,'2018-09-30 02:55:06'),('jalaz.kumarACAD1004','ACAD1004','jalaz.kumar','Your Review Here, ',4,'2018-09-30 02:55:18'),('jalaz.kumarACAD1005','ACAD1005','jalaz.kumar','',2,'2018-09-30 02:55:30'),('jalaz.kumarACAD1008','ACAD1008','jalaz.kumar','Not good for learners. Highly recommended for experts.',1,'2018-09-30 02:56:01'),('jalaz.kumarACAD1010','ACAD1010','jalaz.kumar','Excellent book on Data Mining & AI. Used for the course curriculum of NITH',4,'2018-09-30 02:57:17');
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
  `bookid` varchar(20) NOT NULL,
  `userid` varchar(20) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelfs`
--

LOCK TABLES `shelfs` WRITE;
/*!40000 ALTER TABLE `shelfs` DISABLE KEYS */;
INSERT INTO `shelfs` VALUES (100576,'PROG1005','saurabh.kumar'),(102946,'NOV1015','jalaz.kumar'),(107677,'PROG1009','jalaz.kumar'),(123131,'ACAD1030','bimal.lauhney'),(125633,'PROG1023','jalaz.kumar'),(130490,'PROG1030','sukhbir.singh'),(132247,'PROG1003','saurabh.kumar'),(146188,'ACAD1009','sukhbir.singh'),(151886,'PROG1012','bimal.lauhney'),(156265,'ACAD1004','bimal.lauhney'),(167179,'NOV1046','bimal.lauhney'),(168023,'PROG1004','sukhbir.singh'),(170811,'NOV1033','sukhbir.singh'),(171297,'NOV1046','jalaz.kumar'),(177939,'ACAD1042','bimal.lauhney'),(184311,'PROG1013','sukhbir.singh'),(187625,'PROG1011','sukhbir.singh'),(188858,'PROG1023','bimal.lauhney'),(189088,'PROG1023','sukhbir.singh'),(189923,'NOV1017','saurabh.kumar');
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
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `city` varchar(20) DEFAULT NULL,
  `queryid` int(11) NOT NULL,
  `tokens` int(11) DEFAULT NULL,
  `profilepic` varchar(50) DEFAULT 'default.png',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `queryid` (`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('akhilesh.kumar','Akhilesh Kumar','akhilesh.kumar@gmail.com','8ff16144547abc3939f0d11cce7dc887','9878767676','Banda',167416,100,'akhilesh.jpeg'),('anita.rani','Anita Rani','anita.rani@gmail.com','35063f67991237a06dcf7185f5587e1e','9887654321','Saharanpur',181283,100,'anita.jpg'),('atul.kumar','Atul Kumar','atul.kumar.prajapati@gmail.com','f4ab7eddbdd73c2cc291b330e9a69f11','9882238075','Kanpur',118522,100,'atulkumar.jpeg'),('bimal.lauhney','Bimalkant Lauhney','bimal.lauhney@gmail.com','aae73747721e64d4da79e177dcb38507','9878987894','Rudraprayag',149432,0,'bimal.jpeg'),('deep.shikha','Deepshikha','dkdeepshikhaa@gmail.com','db29735f9989709d33778dc58168ff0a','9876543210','Saharanpur',191211,100,'Deepu.jpg'),('deshpal.aec','Deshpal Singh','deshpal1962@gmail.com','a3043d6e0a3beb5bc0899ac0baf7a8bb','8755944473','Meerut',151232,100,'deshpal.jpg'),('govind.bisht','Govind Bisht','govind.bisht@gmail.com','f708f892d765e4adcaf2902f5eb066e6','8767876563','Almora',198330,100,'govind.jpeg'),('jalaz.kumar','Jalaz Kumar','jalazkumar1208@gmail.com','bfedb108f5ef51906c4b577bba590776','9882552289','Saharanpur',110157,30,'jalaz.jpg'),('mukesh.kharita','Mukesh Kharita','mukeshnithcse@gmail.com','d35f6c6a31fdf45e5ee4058b1adb534c','6787678789','Jaipur',151208,100,'mukesh.jpeg'),('narendra.dodwaria','Narendra Dodwaria','narendra.dodwaria@gmail.com','7bebef290f4b69b1b6595c98e84e98da','7898779898','Sikar',182628,100,'narendra.jpeg'),('pavan.bansal','Pavan Bansal','pavan.bansal@gmail.com','28bae51670dbd54d1a504de101708d4a','8787865543','Gwalior',131210,100,'pavan.jpeg'),('saurabh.kumar','Saurabh Kumar','saurabh0402@gmail.com','1160c2b751f657eb21965860f81b7fd9','9882552389','Patna',116437,0,'saurabh.jpeg'),('shubham.bhatt','Shubham Bhatt','shubham.bhatt@gmail.com','4cdd4687f830775cbab329e5e1289604','9759947092','Almora',144412,100,'shubham.jpeg'),('sukhbir.singh','Sukhbir Singh','sukhbir947@gmail.com','3773fd7f1041e30689b978b90ba6eb6c','9882546092','Jaipur',135030,0,'sukhbir.jpeg');
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

--sorry Dump completed on 2018-09-30  3:04:50

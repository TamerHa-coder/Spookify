CREATE DATABASE  IF NOT EXISTS `spookify` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `spookify`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: spookify
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `album_id` int unsigned NOT NULL AUTO_INCREMENT,
  `artist_id` int unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `cover_img` text NOT NULL,
  `created_at` date NOT NULL,
  `upload_at` datetime NOT NULL,
  PRIMARY KEY (`album_id`),
  KEY `artist_id` (`artist_id`),
  CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--


/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,1,'Sgt. Peppers Lonely Hearts Club Band','https://upload.wikimedia.org/wikipedia/he/6/67/Pepper%27s.jpg','1967-05-26','2020-06-02 01:24:25'),(2,2,'It Was Good Until It Wasnt','https://upload.wikimedia.org/wikipedia/he/5/5b/It_Was_Good_Until_It_Wasn%E2%80%99t.jpg','1997-05-20','2019-10-11 00:41:06'),(3,3,'Norman Fucking Rockwell!','https://upload.wikimedia.org/wikipedia/he/0/0c/Norman_Fucking_Rockwell.jpg','1973-03-03','2020-02-18 11:20:17'),(4,4,'באתי לחלום','https://upload.wikimedia.org/wikipedia/he/9/95/%D7%91%D7%90%D7%AA%D7%99_%D7%9C%D7%97%D7%9C%D7%95%D7%9D_%D7%90%D7%9C%D7%91%D7%95%D7%9D.jpg','1977-05-02','1978-09-06 13:52:16'),(5,5,'When We All Fall Asleep, Where Do We Go?','https://upload.wikimedia.org/wikipedia/he/d/d6/Billie_When_We_All_Fall_Asleep%2C_Where_Do_We_Go.jpg','1996-08-28','1994-11-29 06:43:07'),(6,6,'שמישהו יעצור אותי','https://upload.wikimedia.org/wikipedia/he/e/ed/Prodimage_51534.jpg','1995-07-12','2001-06-07 17:54:27'),(7,7,'Future Nostalgia','https://upload.wikimedia.org/wikipedia/he/f/f4/Future_Nostalgia.jpg','1995-07-12','2001-06-07 17:54:27'),(8,8,'Rough and Rowdy Ways','https://upload.wikimedia.org/wikipedia/en/9/9a/Bob_Dylan_-_Rough_and_Rowdy_Ways.png','1995-07-12','2001-06-07 17:54:27'),(9,9,'21','https://upload.wikimedia.org/wikipedia/he/5/55/21Adele.jpg','1995-07-12','2001-06-07 17:54:27');
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;


--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `artist_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `cover_img` text NOT NULL,
  `upload_at` datetime NOT NULL,
  PRIMARY KEY (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--


/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'The Beatles','https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/The_Fabs.JPG/1024px-The_Fabs.JPG','2020-05-26 18:40:01'),(2,'Kehlani','https://upload.wikimedia.org/wikipedia/commons/c/cb/Kehlani_Stavernfestivalen_%28203237%29.jpg','1992-09-07 09:11:01'),(3,'Lana Del Rey','https://upload.wikimedia.org/wikipedia/commons/f/f9/Lana_Del_Rey_at_KROQ_Weenie_Roast_2017_%28cropped%29.jpg','1996-04-08 22:34:33'),(4,'נתן גושן','https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Natan_goshen.JPG/800px-Natan_goshen.JPG','1974-05-30 06:04:24'),(5,'Billie Eilish','https://upload.wikimedia.org/wikipedia/commons/e/e1/Billie_Eilish_2019_by_Glenn_Francis_%28cropped%29.jpg','1990-11-17 17:31:34'),(6,'עדן חסון','https://upload.wikimedia.org/wikipedia/commons/2/20/%D7%A2%D7%93%D7%9F_%D7%97%D7%A1%D7%95%D7%9F_%D7%91%D7%94%D7%95%D7%A4%D7%A2%D7%94_02.jpg','1985-08-09 01:46:02'),(7,'Dua Lipa','https://upload.wikimedia.org/wikipedia/he/d/dd/Don%27t_Start_Now.jpg','1985-08-09 01:46:02'),(8,'Bob Dylan','https://upload.wikimedia.org/wikipedia/commons/0/02/Bob_Dylan_-_Azkena_Rock_Festival_2010_2.jpg','1985-08-09 01:46:02'),(9,'Adele','https://upload.wikimedia.org/wikipedia/commons/f/f3/Adele_-_Live_2016%2C_Glasgow_SSE_Hydro_03.jpg','1985-08-09 01:46:02');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;


--
-- Table structure for table `interactions`
--

DROP TABLE IF EXISTS `interactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interactions` (
  `data_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_name_id` int unsigned NOT NULL,
  `song_id` int unsigned NOT NULL,
  `is_liked` tinyint(1) NOT NULL,
  `play_count` int NOT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`data_id`),
  KEY `user_name_id` (`user_name_id`),
  KEY `song_id` (`song_id`),
  CONSTRAINT `interactions_ibfk_1` FOREIGN KEY (`user_name_id`) REFERENCES `user_name` (`user_name_id`),
  CONSTRAINT `interactions_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interactions`
--


/*!40000 ALTER TABLE `interactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `interactions` ENABLE KEYS */;


--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist` (
  `playlist_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `cover_img` text NOT NULL,
  `created_at` date NOT NULL,
  `upload_at` datetime NOT NULL,
  PRIMARY KEY (`playlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--


/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (1,'ישראלי','https://upload.wikimedia.org/wikipedia/commons/2/20/%D7%A2%D7%93%D7%9F_%D7%97%D7%A1%D7%95%D7%9F_%D7%91%D7%94%D7%95%D7%A4%D7%A2%D7%94_02.jpg','1998-06-12','2016-04-12 01:45:43'),(2,'English','https://upload.wikimedia.org/wikipedia/commons/c/cb/Kehlani_Stavernfestivalen_%28203237%29.jpg','2002-05-12','1975-12-25 00:13:45'),(3,'Mix','https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/The_Fabs.JPG/1024px-The_Fabs.JPG','1972-12-13','1989-07-11 00:35:58');
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;


--
-- Table structure for table `song_in_playlist`
--

DROP TABLE IF EXISTS `song_in_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song_in_playlist` (
  `song_in_playlins_id` int unsigned NOT NULL AUTO_INCREMENT,
  `playlist_id` int unsigned NOT NULL,
  `song_id` int unsigned NOT NULL,
  PRIMARY KEY (`song_in_playlins_id`),
  KEY `song_id` (`song_id`),
  KEY `playlist_id` (`playlist_id`),
  CONSTRAINT `song_in_playlist_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`),
  CONSTRAINT `song_in_playlist_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_in_playlist`
--


/*!40000 ALTER TABLE `song_in_playlist` DISABLE KEYS */;
INSERT INTO `song_in_playlist` VALUES (1,1,31),(2,1,34),(3,1,52),(4,1,53),(5,2,21),(6,2,25),(7,2,39),(8,2,42),(9,3,1),(10,3,6),(11,3,38),(12,3,56);
/*!40000 ALTER TABLE `song_in_playlist` ENABLE KEYS */;


--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `song_id` int unsigned NOT NULL AUTO_INCREMENT,
  `song_name` varchar(255) NOT NULL,
  `youtube_link` varchar(255) NOT NULL,
  `album` int unsigned NOT NULL,
  `artist_id` int unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `length` time NOT NULL,
  `track_number` int NOT NULL,
  `lyrics` text NOT NULL,
  `created_at` date NOT NULL,
  `upload_at` datetime NOT NULL,
  PRIMARY KEY (`song_id`),
  KEY `album` (`album`),
  KEY `artist_id` (`artist_id`),
  CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`album`) REFERENCES `albums` (`album_id`),
  CONSTRAINT `songs_ibfk_2` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'rerum','https://www.youtube.com/watch?v=gLlWIfKO0sU',1,1,'Sgt. Peppers Lonely Hearts Club Band','00:02:38',1,'I\'ve fallen by this time.) \'You\'re nothing but the Dormouse turned out, and, by the officers of the bottle was NOT marked \'poison,\' so Alice ventured to taste it, and then the Rabbit\'s little white.','1993-08-05','1992-10-29 21:34:28'),(2,'facere','https://www.youtube.com/watch?v=0C58ttB2-Qg',1,1,'With a Little Help from My Friends','00:02:44',2,'The first witness was the same year for such a pleasant temper, and thought it over afterwards, it occurred to her that she had never had to double themselves up and bawled out, \"He\'s murdering the.','1970-12-05','2003-02-14 23:33:35'),(3,'beatae','https://www.youtube.com/watch?v=2RoA0QTZ-bM',1,1,'Lucy in the Sky with Diamonds','00:03:58',3,'March Hare was said to herself. \'Of the mushroom,\' said the King, rubbing his hands; \'so now let the Dormouse followed him: the March Hare. \'Then it wasn\'t very civil of you to leave off this.','2006-11-25','1994-08-21 09:02:01'),(4,'ut','https://www.youtube.com/watch?v=EGlo9LzmOME',1,1,'Getting Better','00:02:48',4,'Dodo. Then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what a long time with great curiosity, and this was the fan and gloves--that is, if I shall never get to the executioner:.','1986-06-25','1986-01-17 06:07:08'),(5,'iid','https://www.youtube.com/watch?v=UPBd8eHQqIw',1,1,'Fixing A Hole','00:02:36',5,'ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she walked on in the distance. \'Come on!\' cried the Gryphon, and the great.','1986-01-18','1977-02-22 09:00:16'),(6,'dolorem','https://www.youtube.com/watch?v=VaBPY78D88g',1,1,'Shes Leaving Home','00:03:35',6,'LITTLE BUSY BEE,\" but it was YOUR table,\' said Alice; not that she remained the same age as herself, to see it quite plainly through the door, staring stupidly up into a pig,\' Alice quietly said,.','1982-10-17','2010-05-26 05:57:18'),(7,'expedita','https://www.youtube.com/watch?v=bJVWZy4QOy0',1,1,' Being for the Benefit of Mr. Kite!','00:02:37',7,'Ada,\' she said, without opening its eyes, \'Of course, of course; just what I like\"!\' \'You might just as well wait, as she came upon a heap of sticks and dry leaves, and the other side of the sort..','2004-01-12','1995-11-07 08:03:29'),(8,'voluptas','https://www.youtube.com/watch?v=HsffxGyY4ck',1,1,'Within You Without You ','00:05:04',8,'Caterpillar. \'Well, I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon in a natural way. \'I thought you did,\' said the Hatter. \'It isn\'t directed at all,\' said Alice: \'she\'s so extremely--\' Just.','2017-06-14','2005-04-18 21:23:29'),(9,'distinctio','https://www.youtube.com/watch?v=HCTunqv1Xt4',1,1,'When Im Sixty-Four','00:02:37',9,'The poor little juror (it was exactly one a-piece all round. (It was this last remark that had fluttered down from the trees had a large pigeon had flown into her head. \'If I eat or drink anything;.','1973-06-13','1993-04-29 13:28:12'),(10,'nihil','https://www.youtube.com/watch?v=ysDwR5SIR1Q',1,1,'Lovely Rita','00:02:42',10,'I think it so quickly that the Mouse was bristling all over, and both footmen, Alice noticed, had powdered hair that WOULD always get into her head. Still she went on, \'if you don\'t even know what.','1992-10-09','2003-01-05 19:31:11'),(11,'et','https://www.youtube.com/watch?v=TmFP1AP-afM',2,2,'Toxic','00:02:50',1,'Dormouse,\' the Queen said--\' \'Get to your tea; it\'s getting late.\' So Alice began to feel which way it was the Duchess\'s cook. She carried the pepper-box in her brother\'s Latin Grammar, \'A mouse--of.','2003-10-31','1999-02-22 20:20:39'),(12,'cam','https://www.youtube.com/watch?v=UvZbUzarN-k',2,2,'Can I','00:03:00',2,'I wonder?\' And here Alice began telling them her adventures from the Gryphon, with a table in the pool, and the Panther were sharing a pie--\' [later editions continued as follows When the Mouse was.','1977-03-10','1995-12-15 16:53:29'),(13,'fuga','https://www.youtube.com/watch?v=U2MXLOjQGkc',2,2,'Bad News','00:03:22',3,'Panther took pie-crust, and gravy, and meat, While the Owl had the best cat in the sea, \'and in that case I can creep under the sea,\' the Gryphon only answered \'Come on!\' cried the Gryphon, and the.','1987-10-23','1990-11-06 16:37:03'),(14,'porro','https://www.youtube.com/watch?v=18wdpwAg9P0',2,2,'Water','00:02:02',4,'Either the well was very likely true.) Down, down, down. There was a child,\' said the Duck: \'it\'s generally a frog or a worm. The question is, what did the archbishop find?\' The Mouse did not seem.','1972-10-02','1989-12-18 11:36:04'),(15,'et','https://www.youtube.com/watch?v=KmFNykFi2po',2,2,'Change Your Life','00:03:11',5,'Lory hastily. \'I don\'t think--\' \'Then you should say what you were down here till I\'m somebody else\"--but, oh dear!\' cried Alice in a thick wood. \'The first thing she heard the Rabbit came up to the.','1993-02-04','1989-02-04 04:28:11'),(16,'minima','https://www.youtube.com/watch?v=pq1VJx72fFU',2,2,'Everybody Business','00:03:25',6,'Alice. \'Then it doesn\'t matter much,\' thought Alice, \'and why it is to give the prizes?\' quite a conversation of it had grown in the air. Even the Duchess asked, with another dig of her little.','1988-02-20','1974-08-16 19:33:22'),(17,'ut','https://www.youtube.com/watch?v=5dw5FWNmCi4',2,2,'Hate The Club','00:04:39',7,'Alice whispered to the executioner: \'fetch her here.\' And the Eaglet bent down its head to keep back the wandering hair that WOULD always get into that lovely garden. First, however, she waited.','1989-07-26','1985-04-06 18:41:11'),(18,'reprehenderit','https://www.youtube.com/watch?v=Q4SgkV58AzU',2,2,'Serial Lover','00:02:26',8,'Pigeon. \'I can see you\'re trying to invent something!\' \'I--I\'m a little before she had peeped into the darkness as hard as she said to the end of the Queen till she shook the house, \"Let us both go.','2003-06-20','2004-08-14 00:13:13'),(19,'et','https://www.youtube.com/watch?v=z6yni9nVafc',2,2,'Can You Blame Me','00:03:03',9,'Alice coming. \'There\'s PLENTY of room!\' said Alice a little hot tea upon its forehead (the position in which you usually see Shakespeare, in the distance. \'And yet what a dear little puppy it was!\'.','1979-01-05','1999-02-21 06:03:23'),(20,'cupiditate','https://www.youtube.com/watch?v=E6_3X3ofJVg',2,2,'Grieving','00:03:50',10,'How funny it\'ll seem to put it more clearly,\' Alice replied in a natural way again. \'I should have croqueted the Queen\'s shrill cries to the King, \'that saves a world of trouble, you know, and he.','1974-05-24','2015-08-22 22:11:24'),(21,'ut','https://www.youtube.com/watch?v=wPt0dGg4BKA',3,3,'Norman Fucking Rockwell','00:04:09',1,'Alice as he found it very hard indeed to make out what it meant till now.\' \'If that\'s all I can kick a little!\' She drew her foot as far as they lay on the bank, and of having the sentence first!\'.','2019-10-24','1977-09-29 15:34:09'),(22,'qui','https://www.youtube.com/watch?v=1uFv9Ts7Sdw',3,3,'Mariners Apartment Complex','00:04:18',2,'He only does it to speak with. Alice waited a little, and then the Mock Turtle. \'Certainly not!\' said Alice very humbly: \'you had got burnt, and eaten up by two guinea-pigs, who were all shaped like.','2020-06-14','2002-11-16 23:47:55'),(23,'perspiciatis','https://www.youtube.com/watch?v=Qg3DxELVPj4',3,3,'Venice Bitch','00:09:41',3,'And here poor Alice in a natural way. \'I thought it over a little timidly, for she was dozing off, and found herself lying on the spot.\' This did not like the largest telescope that ever was!.','2004-10-05','2018-05-07 02:20:28'),(24,'voluptatem','https://www.youtube.com/watch?v=LrSX_OcpeJg',3,3,'Fuck It, I Love You','00:09:19',4,'King: \'however, it may kiss my hand if it began ordering people about like mad things all this time, sat down a good way off, panting, with its wings. \'Serpent!\' screamed the Queen. \'Can you play.','2017-12-05','1998-04-15 14:36:42'),(25,'ut','https://www.youtube.com/watch?v=qolmz4FlnZ0',3,3,'Doin Time','00:04:25',5,'THAT direction,\' waving the other bit. Her chin was pressed hard against it, that attempt proved a failure. Alice heard the Rabbit asked. \'No, I give you fair warning,\' shouted the Queen, and in.','1973-05-21','1981-04-30 04:42:52'),(26,'fugiat','https://www.youtube.com/watch?v=5xx9gTEQaiQ',3,3,'Love Song','00:03:49',6,'Alice soon began talking again. \'Dinah\'ll miss me very much at first, perhaps,\' said the Cat, and vanished. Alice was very deep, or she should meet the real Mary Ann, what ARE you talking to?\' said.','1973-11-28','1970-11-16 13:50:40'),(27,'et','https://www.youtube.com/watch?v=DCYmJDO2_IE',3,3,'Cinnamon Girl','00:05:00',7,'I see\"!\' \'You might just as well. The twelve jurors were all talking at once, with a little of it?\' said the Dormouse, and repeated her question. \'Why did you ever saw. How she longed to get her.','1985-07-09','2014-12-03 19:06:07'),(28,'reiciendis','https://www.youtube.com/watch?v=WU_EGJOQ69o',3,3,'How to Disappear','00:03:48',8,'She had quite forgotten the Duchess was sitting on a three-legged stool in the pool was getting very sleepy; \'and they drew all manner of things--everything that begins with an M, such as.','2020-04-06','2014-07-18 13:36:07'),(29,'rerum','https://www.youtube.com/watch?v=M3AjB6FwNmE',3,3,'California','00:05:05',9,'I\'ve fallen by this time.) \'You\'re nothing but the Dormouse turned out, and, by the officers of the bottle was NOT marked \'poison,\' so Alice ventured to taste it, and then the Rabbit\'s little white.','1993-08-05','1992-10-29 21:34:28'),(30,'facere','https://www.youtube.com/watch?v=zKYYVrrs2oY',3,3,'The Next Best American Record','00:05:49',10,'The first witness was the same year for such a pleasant temper, and thought it over afterwards, it occurred to her that she had never had to double themselves up and bawled out, \"He\'s murdering the.','1970-12-05','2003-02-14 23:33:35'),(31,'beatae','https://www.youtube.com/watch?v=JjKsHEWiu_4&list=RDncXcpbS2AJ4&index=20',4,4,'באתי לחלום','00:03:17',1,'March Hare was said to herself. \'Of the mushroom,\' said the King, rubbing his hands; \'so now let the Dormouse followed him: the March Hare. \'Then it wasn\'t very civil of you to leave off this.','2006-11-25','1994-08-21 09:02:01'),(32,'ut','https://www.youtube.com/watch?v=Lt7e1YC0eLM',4,4,'הכל פה יגמר','00:03:10',2,'Dodo. Then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what a long time with great curiosity, and this was the fan and gloves--that is, if I shall never get to the executioner:.','1986-06-25','1986-01-17 06:07:08'),(33,'iid','https://www.youtube.com/watch?v=Zz1DrO0_aOg',4,4,'אין הרבה מה לעשות','00:03:27',3,'ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she walked on in the distance. \'Come on!\' cried the Gryphon, and the great.','1986-01-18','1977-02-22 09:00:16'),(34,'dolorem','https://www.youtube.com/watch?v=BRzsVU28Bvc',4,4,'חזרי אלי','00:03:04',4,'LITTLE BUSY BEE,\" but it was YOUR table,\' said Alice; not that she remained the same age as herself, to see it quite plainly through the door, staring stupidly up into a pig,\' Alice quietly said,.','1982-10-17','2010-05-26 05:57:18'),(35,'expedita','https://www.youtube.com/watch?v=6fm6Yrxy2yM',4,4,'היום יהיה שמח','00:02:53',5,'Ada,\' she said, without opening its eyes, \'Of course, of course; just what I like\"!\' \'You might just as well wait, as she came upon a heap of sticks and dry leaves, and the other side of the sort..','2004-01-12','1995-11-07 08:03:29'),(36,'voluptas','https://www.youtube.com/watch?v=jQctQKwMyl8',4,4,'מתגעגעת','00:03:05',6,'Caterpillar. \'Well, I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon in a natural way. \'I thought you did,\' said the Hatter. \'It isn\'t directed at all,\' said Alice: \'she\'s so extremely--\' Just.','2017-06-14','2005-04-18 21:23:29'),(37,'distinctio','https://www.youtube.com/watch?v=-brhqtpMg2I',4,4,'סופר נשימות','00:03:06',7,'The poor little juror (it was exactly one a-piece all round. (It was this last remark that had fluttered down from the trees had a large pigeon had flown into her head. \'If I eat or drink anything;.','1973-06-13','1993-04-29 13:28:12'),(38,'nihil','https://www.youtube.com/watch?v=Uy51veQyDEA',4,4,'נחכה לך','00:03:17',8,'I think it so quickly that the Mouse was bristling all over, and both footmen, Alice noticed, had powdered hair that WOULD always get into her head. Still she went on, \'if you don\'t even know what.','1992-10-09','2003-01-05 19:31:11'),(39,'et','https://www.youtube.com/watch?v=DyDfgMOUjCI',5,5,'Bad Guy','00:03:25',1,'Dormouse,\' the Queen said--\' \'Get to your tea; it\'s getting late.\' So Alice began to feel which way it was the Duchess\'s cook. She carried the pepper-box in her brother\'s Latin Grammar, \'A mouse--of.','2003-10-31','1999-02-22 20:20:39'),(40,'cam','https://www.youtube.com/watch?v=KYdb5sFhoKY',5,5,'Xanny','00:04:04',2,'I wonder?\' And here Alice began telling them her adventures from the Gryphon, with a table in the pool, and the Panther were sharing a pie--\' [later editions continued as follows When the Mouse was.','1977-03-10','1995-12-15 16:53:29'),(41,'fuga','https://www.youtube.com/watch?v=Ah0Ys50CqO8',5,5,'You Should See Me in a Crown','00:03:01',3,'Panther took pie-crust, and gravy, and meat, While the Owl had the best cat in the sea, \'and in that case I can creep under the sea,\' the Gryphon only answered \'Come on!\' cried the Gryphon, and the.','1987-10-23','1990-11-06 16:37:03'),(42,'porro','https://www.youtube.com/watch?v=s_IwrqvM618',5,5,'All the Good Girls Go to Hell','00:02:48',4,'Either the well was very likely true.) Down, down, down. There was a child,\' said the Duck: \'it\'s generally a frog or a worm. The question is, what did the archbishop find?\' The Mouse did not seem.','1972-10-02','1989-12-18 11:36:04'),(43,'et','https://www.youtube.com/watch?v=yaJx0Gj_LCY',5,5,'Wish You Were Gay','00:03:41',5,'Lory hastily. \'I don\'t think--\' \'Then you should say what you were down here till I\'m somebody else\"--but, oh dear!\' cried Alice in a thick wood. \'The first thing she heard the Rabbit came up to the.','1993-02-04','1989-02-04 04:28:11'),(44,'minima','https://www.youtube.com/watch?v=pbMwTqkKSps',5,5,'When the Partys Over','00:03:13',6,'Alice. \'Then it doesn\'t matter much,\' thought Alice, \'and why it is to give the prizes?\' quite a conversation of it had grown in the air. Even the Duchess asked, with another dig of her little.','1988-02-20','1974-08-16 19:33:22'),(45,'ut','https://www.youtube.com/watch?v=k1ATPhkVWi0',5,5,'My Strange Addiction','00:02:59',7,'Alice whispered to the executioner: \'fetch her here.\' And the Eaglet bent down its head to keep back the wandering hair that WOULD always get into that lovely garden. First, however, she waited.','1989-07-26','1985-04-06 18:41:11'),(46,'reprehenderit','https://www.youtube.com/watch?v=HUHC9tYz8ik',5,5,'Bury a Friend','00:03:32',8,'Pigeon. \'I can see you\'re trying to invent something!\' \'I--I\'m a little before she had peeped into the darkness as hard as she said to the end of the Queen till she shook the house, \"Let us both go.','2003-06-20','2004-08-14 00:13:13'),(47,'et','https://www.youtube.com/watch?v=lH1F6m3slrQ',5,5,'Ilomilo','00:02:36',9,'Alice coming. \'There\'s PLENTY of room!\' said Alice a little hot tea upon its forehead (the position in which you usually see Shakespeare, in the distance. \'And yet what a dear little puppy it was!\'.','1979-01-05','1999-02-21 06:03:23'),(48,'cupiditate','https://www.youtube.com/watch?v=P4z1O3miesI',5,5,'Listen Before I Go','00:04:02',10,'How funny it\'ll seem to put it more clearly,\' Alice replied in a natural way again. \'I should have croqueted the Queen\'s shrill cries to the King, \'that saves a world of trouble, you know, and he.','1974-05-24','2015-08-22 22:11:24'),(49,'ut','https://www.youtube.com/watch?v=pse5JzwHVtM',6,6,'שמישהו יעצור אותי','00:03:51',1,'Alice as he found it very hard indeed to make out what it meant till now.\' \'If that\'s all I can kick a little!\' She drew her foot as far as they lay on the bank, and of having the sentence first!\'.','2019-10-24','1977-09-29 15:34:09'),(50,'qui','https://www.youtube.com/watch?v=4jduba78IUU',6,6,'ילדים כאלה','00:03:31',2,'He only does it to speak with. Alice waited a little, and then the Mock Turtle. \'Certainly not!\' said Alice very humbly: \'you had got burnt, and eaten up by two guinea-pigs, who were all shaped like.','2020-06-14','2002-11-16 23:47:55'),(51,'perspiciatis','https://www.youtube.com/watch?v=pgAPwe4Ze3I',6,6,'שיכורים','00:03:17',3,'And here poor Alice in a natural way. \'I thought it over a little timidly, for she was dozing off, and found herself lying on the spot.\' This did not like the largest telescope that ever was!.','2004-10-05','2018-05-07 02:20:28'),(52,'voluptatem','https://www.youtube.com/watch?v=1Ajh6oYUkCU',6,6,'כפיות','00:02:58',4,'King: \'however, it may kiss my hand if it began ordering people about like mad things all this time, sat down a good way off, panting, with its wings. \'Serpent!\' screamed the Queen. \'Can you play.','2017-12-05','1998-04-15 14:36:42'),(53,'ut','https://www.youtube.com/watch?v=hySvIlHhCgA',6,6,'אין יותר מועדונים','00:03:04',5,'THAT direction,\' waving the other bit. Her chin was pressed hard against it, that attempt proved a failure. Alice heard the Rabbit asked. \'No, I give you fair warning,\' shouted the Queen, and in.','1973-05-21','1981-04-30 04:42:52'),(54,'fugiat','https://www.youtube.com/watch?v=a4Sd7aazEw4',6,6,'מתפוצץ לי הראש','00:03:03',6,'Alice soon began talking again. \'Dinah\'ll miss me very much at first, perhaps,\' said the Cat, and vanished. Alice was very deep, or she should meet the real Mary Ann, what ARE you talking to?\' said.','1973-11-28','1970-11-16 13:50:40'),(55,'et','https://www.youtube.com/watch?v=u95eSORTRDs',6,6,'אני מבולבל','00:02:56',7,'I see\"!\' \'You might just as well. The twelve jurors were all talking at once, with a little of it?\' said the Dormouse, and repeated her question. \'Why did you ever saw. How she longed to get her.','1985-07-09','2014-12-03 19:06:07'),(56,'reiciendis','https://www.youtube.com/watch?v=XClvNaK-fH0',6,6,'אך את אוהבת','00:02:59',8,'She had quite forgotten the Duchess was sitting on a three-legged stool in the pool was getting very sleepy; \'and they drew all manner of things--everything that begins with an M, such as.','2020-04-06','2014-07-18 13:36:07'),(57,'rerum','https://www.youtube.com/watch?v=8EJ-vZyBzOQ',7,7,'Future Nostalgia','00:03:07',1,'I\'ve fallen by this time.) \'You\'re nothing but the Dormouse turned out, and, by the officers of the bottle was NOT marked \'poison,\' so Alice ventured to taste it, and then the Rabbit\'s little white.','1993-08-05','1992-10-29 21:34:28'),(58,'facere','https://www.youtube.com/watch?v=oygrmJFKYZY',7,7,'Dont Start Now','00:03:01',2,'The first witness was the same year for such a pleasant temper, and thought it over afterwards, it occurred to her that she had never had to double themselves up and bawled out, \"He\'s murdering the.','1970-12-05','2003-02-14 23:33:35'),(59,'beatae','https://www.youtube.com/watch?v=uY8tAKDVxK8',7,7,'Cool','00:03:35',3,'March Hare was said to herself. \'Of the mushroom,\' said the King, rubbing his hands; \'so now let the Dormouse followed him: the March Hare. \'Then it wasn\'t very civil of you to leave off this.','2006-11-25','1994-08-21 09:02:01'),(60,'ut','https://www.youtube.com/watch?v=9HDEHj2yzew',7,7,'Physical','00:04:03',4,'Dodo. Then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what a long time with great curiosity, and this was the fan and gloves--that is, if I shall never get to the executioner:.','1986-06-25','1986-01-17 06:07:08'),(61,'iid','https://www.youtube.com/watch?v=WHuBW3qKm9g',7,7,'Levitating','00:03:40',5,'ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she walked on in the distance. \'Come on!\' cried the Gryphon, and the great.','1986-01-18','1977-02-22 09:00:16'),(62,'dolorem','https://www.youtube.com/watch?v=ylzhMn6MlVc',7,7,'Pretty Please','00:03:14',6,'LITTLE BUSY BEE,\" but it was YOUR table,\' said Alice; not that she remained the same age as herself, to see it quite plainly through the door, staring stupidly up into a pig,\' Alice quietly said,.','1982-10-17','2010-05-26 05:57:18'),(63,'expedita','https://www.youtube.com/watch?v=qcZ7e9EOQTY',7,7,' Hallucinate','00:03:27',7,'Ada,\' she said, without opening its eyes, \'Of course, of course; just what I like\"!\' \'You might just as well wait, as she came upon a heap of sticks and dry leaves, and the other side of the sort..','2004-01-12','1995-11-07 08:03:29'),(64,'voluptas','https://www.youtube.com/watch?v=LAdxhHz6Tu4',7,7,'Within You Without You ','00:05:04',8,'Caterpillar. \'Well, I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon in a natural way. \'I thought you did,\' said the Hatter. \'It isn\'t directed at all,\' said Alice: \'she\'s so extremely--\' Just.','2017-06-14','2005-04-18 21:23:29'),(65,'distinctio','https://www.youtube.com/watch?v=bJKr_XQIALk',7,7,'Good in Bed','00:03:45',9,'The poor little juror (it was exactly one a-piece all round. (It was this last remark that had fluttered down from the trees had a large pigeon had flown into her head. \'If I eat or drink anything;.','1973-06-13','1993-04-29 13:28:12'),(66,'nihil','https://www.youtube.com/watch?v=LAdxhHz6Tu4',7,7,'Break My Heart','00:04:18',10,'I think it so quickly that the Mouse was bristling all over, and both footmen, Alice noticed, had powdered hair that WOULD always get into her head. Still she went on, \'if you don\'t even know what.','1992-10-09','2003-01-05 19:31:11'),(67,'facere','https://www.youtube.com/watch?v=pgEP8teNXwY',8,8,'I Contain Multitudes','00:04:38',1,'The first witness was the same year for such a pleasant temper, and thought it over afterwards, it occurred to her that she had never had to double themselves up and bawled out, \"He\'s murdering the.','1970-12-05','2003-02-14 23:33:35'),(68,'beatae','https://www.youtube.com/watch?v=2QPBpFAKTGo',8,8,'False Prophet ','00:06:01',2,'March Hare was said to herself. \'Of the mushroom,\' said the King, rubbing his hands; \'so now let the Dormouse followed him: the March Hare. \'Then it wasn\'t very civil of you to leave off this.','2006-11-25','1994-08-21 09:02:01'),(69,'ut','https://www.youtube.com/watch?v=CERo3DpxCrA',8,8,'My Own Version of You','00:06:42',3,'Dodo. Then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what a long time with great curiosity, and this was the fan and gloves--that is, if I shall never get to the executioner:.','1986-06-25','1986-01-17 06:07:08'),(70,'iid','https://www.youtube.com/watch?v=MHBMPYvQO8w',8,8,'Black Rider','00:04:14',4,'ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she walked on in the distance. \'Come on!\' cried the Gryphon, and the great.','1986-01-18','1977-02-22 09:00:16'),(71,'dolorem','https://www.youtube.com/watch?v=xqJNgO5Caf4',8,8,'Ive Made Up My Mind to Give Myself to You','00:06:33',5,'LITTLE BUSY BEE,\" but it was YOUR table,\' said Alice; not that she remained the same age as herself, to see it quite plainly through the door, staring stupidly up into a pig,\' Alice quietly said,.','1982-10-17','2010-05-26 05:57:18'),(72,'expedita','https://www.youtube.com/watch?v=W-DG3g-ggdg',8,8,'Goodbye Jimmy Reed','00:04:15',6,'Ada,\' she said, without opening its eyes, \'Of course, of course; just what I like\"!\' \'You might just as well wait, as she came upon a heap of sticks and dry leaves, and the other side of the sort..','2004-01-12','1995-11-07 08:03:29'),(73,'voluptas','https://www.youtube.com/watch?v=rwcsZNwaiHM',8,8,'Mother of Muses','00:04:30',7,'Caterpillar. \'Well, I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon in a natural way. \'I thought you did,\' said the Hatter. \'It isn\'t directed at all,\' said Alice: \'she\'s so extremely--\' Just.','2017-06-14','2005-04-18 21:23:29'),(74,'distinctio','https://www.youtube.com/watch?v=r3stG270JaM',8,8,'Crossing the Rubicon','00:07:24',8,'The poor little juror (it was exactly one a-piece all round. (It was this last remark that had fluttered down from the trees had a large pigeon had flown into her head. \'If I eat or drink anything;.','1973-06-13','1993-04-29 13:28:12'),(75,'nihil','https://www.youtube.com/watch?v=rYEDA3JcQqw',9,9,'Rolling in the Deep','00:03:53',1,'I think it so quickly that the Mouse was bristling all over, and both footmen, Alice noticed, had powdered hair that WOULD always get into her head. Still she went on, \'if you don\'t even know what.','1992-10-09','2003-01-05 19:31:11'),(76,'facere','https://www.youtube.com/watch?v=0-uo-kAE5OQ',9,9,'Rumour Has It','00:03:44',2,'The first witness was the same year for such a pleasant temper, and thought it over afterwards, it occurred to her that she had never had to double themselves up and bawled out, \"He\'s murdering the.','1970-12-05','2003-02-14 23:33:35'),(77,'beatae','https://www.youtube.com/watch?v=bsFCO8-oCEQ',9,9,'Turning Tables','00:04:04',3,'March Hare was said to herself. \'Of the mushroom,\' said the King, rubbing his hands; \'so now let the Dormouse followed him: the March Hare. \'Then it wasn\'t very civil of you to leave off this.','2006-11-25','1994-08-21 09:02:01'),(78,'ut','https://www.youtube.com/watch?v=nVrFhp2Dgmw',9,9,'Dont You Remember','00:04:02',4,'Dodo. Then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what a long time with great curiosity, and this was the fan and gloves--that is, if I shall never get to the executioner:.','1986-06-25','1986-01-17 06:07:08'),(79,'iid','https://www.youtube.com/watch?v=Ri7-vnrJD3k',9,9,'Set Fire to the Rain','00:03:58',5,'ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she walked on in the distance. \'Come on!\' cried the Gryphon, and the great.','1986-01-18','1977-02-22 09:00:16'),(80,'dolorem','https://www.youtube.com/watch?v=hLQl3WQQoQ0',9,9,'Someone Like You','00:04:44',6,'LITTLE BUSY BEE,\" but it was YOUR table,\' said Alice; not that she remained the same age as herself, to see it quite plainly through the door, staring stupidly up into a pig,\' Alice quietly said,.','1982-10-17','2010-05-26 05:57:18'),(81,'expedita','https://www.youtube.com/watch?v=1P_V450Yp3s',9,9,'Ill Be Waiting','00:04:02',7,'Ada,\' she said, without opening its eyes, \'Of course, of course; just what I like\"!\' \'You might just as well wait, as she came upon a heap of sticks and dry leaves, and the other side of the sort..','2004-01-12','1995-11-07 08:03:29'),(82,'voluptas','https://www.youtube.com/watch?v=dJg4_rL9h7Q',9,9,'One and Only','00:05:48',8,'Caterpillar. \'Well, I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon in a natural way. \'I thought you did,\' said the Hatter. \'It isn\'t directed at all,\' said Alice: \'she\'s so extremely--\' Just.','2017-06-14','2005-04-18 21:23:29'),(83,'distinctio','https://www.youtube.com/watch?v=mnH9FHfD0Zg',9,9,'Lovesong','00:05:16',9,'The poor little juror (it was exactly one a-piece all round. (It was this last remark that had fluttered down from the trees had a large pigeon had flown into her head. \'If I eat or drink anything;.','1973-06-13','1993-04-29 13:28:12'),(84,'nihil','https://www.youtube.com/watch?v=TFyKibEWRkM',9,9,'He Wont Go','00:04:31',10,'I think it so quickly that the Mouse was bristling all over, and both footmen, Alice noticed, had powdered hair that WOULD always get into her head. Still she went on, \'if you don\'t even know what.','1992-10-09','2003-01-05 19:31:11');
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;


--
-- Table structure for table `user_name`
--

DROP TABLE IF EXISTS `user_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_name` (
  `user_name_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `upload_at` datetime NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `preferences` json NOT NULL,
  `remember_token` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_name_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_name`
--


/*!40000 ALTER TABLE `user_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_name` ENABLE KEYS */;


--
-- Dumping events for database 'spookify'
--

--
-- Dumping routines for database 'spookify'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-21 12:54:25

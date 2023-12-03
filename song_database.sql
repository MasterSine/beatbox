-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_esp32songs
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_songs`
--

DROP TABLE IF EXISTS `tbl_songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_songs` (
  `song__BPM` int(11) NOT NULL,
  `song_URL` varchar(255) DEFAULT NULL,
  `song_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`song__BPM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_songs`
--

LOCK TABLES `tbl_songs` WRITE;
/*!40000 ALTER TABLE `tbl_songs` DISABLE KEYS */;
INSERT INTO `tbl_songs` VALUES (60,'https://drive.google.com/file/d/1dmA2I1UaVJdQM2lYZ0A3Mx3rFcoHeuj7/view?usp=drive_link','Nocture_Op_9_No_3'),(65,'https://drive.google.com/file/d/1r-zK_bPzde8dvK6HIoZ_XJwlJ_raNczA/view?usp=drive_link','Lacrimosa'),(70,'https://drive.google.com/file/d/1BYq50Y-yXQ8auUcIpE4wzVAyrnS-10He/view?usp=drive_link','You_Got_A_Friend_In_Me'),(75,'https://drive.google.com/file/d/1N5_2h61RfuBj6dyFRjQlAY9mgPrkexu9/view?usp=drive_link','I_Knew_You_Were_Trouble'),(80,'https://drive.google.com/file/d/1lgWuqp_O89XWYtQmapqyt9kagEoxx8GI/view?usp=drive_link','Blaze_Of_Glory'),(85,'https://drive.google.com/file/d/16O2vWKbzQDAc2ZmlM9J3SOC8ksnAzrv4/view?usp=drive_link','Passing_Through'),(90,'https://drive.google.com/file/d/1mDd6HvMvyPY3-ifXwlFwexFPN9SgGwc2/view?usp=drive_link','Kill_Bill'),(95,'https://drive.google.com/file/d/1lZYEIv7OhdLzMuItCyQTmokYRYkc6Mnk/view?usp=drive_link','Perfect'),(100,'https://drive.google.com/file/d/1xzguyg9KgTW_0OtrHqakg6lRG3aonEWk/view?usp=drive_link','I_Want_It_That_Way'),(105,'https://drive.google.com/file/d/1DHJ6Fq07QLm8N8bKVqaWzVuSs-bk_UZ4/view?usp=drive_link','Problem'),(110,'https://drive.google.com/file/d/1V022usC_68uUFyf4Y4ZLEYmuNpJtA06M/view?usp=drive_link','Dance_The_Night'),(115,'https://drive.google.com/file/d/1HTWDKY4BRFc_6WzXesIIrC_5z1R7Z1jA/view?usp=drive_link','Pineapple_Sunrise'),(120,'https://drive.google.com/file/d/1uFqs39L4Kgomg1PbwCiSO2R2Sc1t6KF2/view?usp=drive_link','Its_My_Life'),(125,'https://drive.google.com/file/d/1vNVN5YDYcTqU_8C0r-jyv7Kc1olSMCf3/view?usp=drive_link','Seven_Nation_Army'),(130,'https://drive.google.com/file/d/1Lr6WrFuh3Z4jo_UkDWGtyXrtSKXXegri/view?usp=drive_link','Damn'),(135,'https://drive.google.com/file/d/1Y2EbkuVcq_xifuR2g-8SAEQwLUecZk7J/view?usp=drive_link','Die_For_You'),(140,'https://drive.google.com/file/d/1USA5alf52qI88vE-dfplQdImw2kEpXuB/view?usp=drive_link','Viva_La_Vida'),(145,'https://drive.google.com/file/d/1TKCsPe9pOQh3mi89h3kqGLsXy6Pbv_y7/view?usp=drive_link','SOMEBODY'),(150,'https://drive.google.com/file/d/1LAst8oz5dXDqKakoBFHOK9VdUjCGwUJa/view?usp=drive_link','PUPPET_SHOW'),(160,'https://drive.google.com/file/d/1yBwtZMH_YpWxaV2XNSTc3CO6SJGdDlX6/view?usp=drive_link','Shake_It_Off'),(170,'https://drive.google.com/file/d/1ciW9Vudwdx0u5jvrtM2XdSYF3H9MA8l5/view?usp=drive_link','Stressed_Out'),(180,'https://drive.google.com/file/d/11IZomZQsQBOlRgyeS0L9JwO2Ek0rtARo/view?usp=drive_link','Fireflies'),(190,'https://drive.google.com/file/d/18t7YcO4LZq7cy4cfH6hFTQtAcToWmSio/view?usp=drive_link','Animals'),(200,'https://drive.google.com/file/d/1wk-fS781qAU3olF05AX0bomu0n8pX_rf/view?usp=drive_link','Shelter');
/*!40000 ALTER TABLE `tbl_songs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

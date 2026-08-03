-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: new_db
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `gothic_horror_movies`
--

DROP TABLE IF EXISTS `gothic_horror_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gothic_horror_movies` (
  `movie_id` int NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `release_year` int DEFAULT NULL,
  `director` varchar(100) DEFAULT NULL,
  `budget_millions` decimal(6,2) DEFAULT NULL,
  `marketing_budget_millions` decimal(6,2) DEFAULT '0.00',
  `revenue_millions` decimal(6,2) DEFAULT NULL,
  `secondary_revenue_millions` decimal(6,2) DEFAULT '0.00',
  `imdb_rating` decimal(3,1) DEFAULT NULL,
  `gothic_subgenre` varchar(50) DEFAULT NULL,
  `distribution_type` varchar(50) DEFAULT 'Theatrical',
  `retention_score` decimal(3,1) DEFAULT NULL,
  `risk_level` varchar(30) DEFAULT 'medium',
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gothic_horror_movies`
--

LOCK TABLES `gothic_horror_movies` WRITE;
/*!40000 ALTER TABLE `gothic_horror_movies` DISABLE KEYS */;
INSERT INTO `gothic_horror_movies` VALUES (1,'Bram Stoker Dracula',1992,'Francis Ford Coppola',40.00,20.00,215.80,75.53,7.4,'Vampire Romance','Theatrical',NULL,'high risk / high reward'),(2,'Interview with the Vampire',1994,'Neil Jordan',60.00,30.00,223.70,78.30,7.5,'Vampire Drama','Theatrical',NULL,'high risk / high reward'),(3,'Crimson Peak',2015,'Guillermo del Toro',55.00,27.50,74.70,26.15,6.5,'Gothic Romance','Theatrical',NULL,'high risk / high reward'),(4,'Only Lovers Left Alive',2013,'Jim Jarmusch',7.00,3.50,7.60,2.66,7.2,'Gothic Romance','Theatrical',NULL,'high risk / high reward'),(5,'Frankenstein',2025,'Guillermo del Toro',120.00,18.00,110.00,0.00,7.4,'Gothic Horror','Streaming',9.2,'low risk / fixed margin'),(6,'Sleepy Hollow',1999,'Tim Burton',100.00,50.00,206.10,72.14,7.3,'Supernatural Mystery','Theatrical',NULL,'high risk / high reward'),(7,'The Others',2001,'Alejandro Amenabar',17.00,8.50,209.90,73.47,7.6,'Haunted House/Ghost','Theatrical',NULL,'high risk / high reward'),(8,'Van Helsing',2004,'Stephen Sommers',160.00,80.00,300.20,105.07,6.1,'Dark Fantasy','Theatrical',NULL,'high risk / high reward'),(9,'Sweeney Todd',2007,'Tim Burton',50.00,25.00,153.40,53.69,7.3,'Gothic Musical','Theatrical',NULL,'high risk / high reward'),(10,'The Wolfman',2010,'Joe Johnston',150.00,75.00,142.60,49.91,6.2,'Werewolf Gothic','Theatrical',NULL,'high risk / high reward'),(11,'I,Frankenstein',2014,'Stuart Beattie',65.00,32.50,76.80,26.88,5.1,'Action Gothic','Theatrical',NULL,'high risk / high reward'),(12,'Victor Frankenstein',2015,'Paul McGuigan',40.00,20.00,34.20,11.97,6.0,'Gothic Sci-Fi','Theatrical',NULL,'high risk / high reward'),(13,'The Craft',1996,'Andrew Fleming',15.00,7.50,55.70,19.50,6.4,'Gothic Witchcraft','Theatrical',NULL,'high risk / high reward'),(14,'From Hell',2001,'Albert Hughes',35.00,17.50,74.50,26.08,6.7,'Gothic Mystery','Theatrical',NULL,'high risk / high reward'),(15,'Guillermo del Toros Pinocchio',2022,'Guillermo del Toro',35.00,5.25,85.00,0.00,7.6,'Dark Fantasy','Streaming',9.3,'low risk / fixed margin'),(16,'The Pale Blue Eye',2022,'Scott Cooper',72.00,10.80,95.00,0.00,6.6,'Gothic Mystery','Streaming',9.0,'low risk / fixed margin'),(17,'Velvet Buzzsaw',2019,'Dan Gilroy',21.00,3.15,30.00,0.00,5.7,'Satirical Horror','Streaming',8.7,'low risk / fixed margin'),(18,'Knock at the Cabin',2023,'M. Night Shyamalan',20.00,3.00,54.00,0.00,6.1,'Psychological Gothic','Streaming',8.8,'low risk / fixed margin'),(19,'Mr. Harrigans Phone',2022,'John Lee Hancock',16.00,2.40,35.00,0.00,6.0,'Gothic Drama','Streaming',8.8,'low risk / fixed margin'),(20,'Run Rabbit Run',2023,'Daina Reid',12.00,1.80,22.00,0.00,5.0,'Psychological Horror','Streaming',8.5,'low risk / fixed margin'),(21,'My Best Friends Exorcism',2022,'Damon Thomas',15.00,2.25,28.00,0.00,5.3,'Gothic Comedy','Streaming',8.6,'low risk / fixed margin'),(22,'No One Will Save You',2023,'Brian Duffield',22.00,3.30,45.00,0.00,6.3,'Sci-Fi Horror','Streaming',8.9,'low risk / fixed margin'),(23,'Theres Something Wrong with the Children',2023,'Roxanne Benjamin',8.00,1.20,14.00,0.00,4.9,'Mystery Horror','Streaming',8.5,'low risk / fixed margin');
/*!40000 ALTER TABLE `gothic_horror_movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-01 21:47:23

-- MySQL dump 10.13  Distrib 9.3.0, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	9.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `customer_emails`
--

DROP TABLE IF EXISTS `customer_emails`;
/*!50001 DROP VIEW IF EXISTS `customer_emails`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_emails` AS SELECT 
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `referral_id` int DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `last_name_first_name_idx` (`last_name`,`first_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Fred','Fish',NULL,'FFish@gmail.com'),(2,'Larry','Lobster',1,'LLobster@gmail.com'),(3,'Bubble','Bass',2,'BBass@gmail.com'),(5,'Pearl','Krabs',NULL,'PKrabs@gmail.com');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `hourly_pay` decimal(5,2) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `job` varchar(25) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `supervisor_id` int DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '0',
  `team_id` int DEFAULT (NULL),
  `refresh_token` varchar(550) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `teamId_foreignkey` (`team_id`),
  CONSTRAINT `teamId_foreignkey` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('EugeneK','12345678',1,'Eugene','Krab',100.00,208000.00,'manager','2023-01-02',NULL,0,NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6IkV1Z2VuZUsiLCJpYXQiOjE3NTY5NzU4OTYsImV4cCI6MTc1NzA2MjI5Nn0.hCPIOcFobX4x1eAYvwGR_3t4NW9KkM97_4tqz6ch0Gk'),('SquidwardT','12345678',2,'Squidward','Tentacles',16.00,33280.00,'Project Manager','2023-01-03',5,0,NULL,NULL),('SpongebobS','12345678',3,'Spongebob','Squarepants',13.50,28080.00,'Project Engineer','2024-01-04',5,0,1,NULL),('PatrickS','12345678',4,'Patrick','Star',13.50,28080.00,'Project Engineer','2023-01-05',5,0,2,NULL),('SandyC','12345678',5,'Sandy','Cheeks',18.25,37960.00,'Project Engineer','2023-01-06',1,0,3,NULL),('SheldonP','12345678',6,'Sheldon','Plankton',10.00,20800.00,'Project Engineer','2023-01-07',5,0,4,NULL),('PearlK','12345678',7,'Pearl','Krabs',25.00,52000.00,'Project Engineer','2023-02-01',1,1,NULL,NULL),('KarenP','12345678',8,'Karen','Plankton',30.00,62400.00,'Project Engineer','2022-11-15',6,1,NULL,NULL),('LarryL','12345678',9,'Larry','Lobster',14.00,29120.00,'Project Engineer','2023-03-10',5,1,NULL,NULL),('NatP','12345678',10,'Nat','Peterson',13.75,28600.00,'Foreman','2023-04-05',5,1,1,NULL),('Tom','12345678',11,'Tom','Johnson',12.50,26000.00,'Technician','2023-05-12',5,1,1,NULL),('Fred','12345678',12,'Fred','Fish',12.50,26000.00,'Technician','2023-05-15',5,1,1,NULL),('Nebby','12345678',13,'Nebby','Star',11.00,22880.00,'Foreman','2023-06-01',5,1,2,NULL),('Barny','12345678',14,'Barny','Fish',11.00,22880.00,'Technician','2023-06-10',5,1,2,NULL),('Martha','12345678',15,'Marthanah','Starfish',13.00,27040.00,'Technician','2023-07-01',5,1,2,NULL),('Betsy','12345678',16,'Betsy','Krabs',13.25,27560.00,'Technician','2023-07-15',5,1,2,NULL),('Gary','12345678',17,'Gary','Snail',18.00,37440.00,'Technician','2023-08-01',1,1,2,NULL),('MermaidMan','12345678',18,'Mermaid','Man',17.50,36400.00,'Foreman','2023-08-10',1,1,3,NULL),('BarnacleBoy','12345678',19,'Barnacle','Boy',10.50,21840.00,'Technician','2023-09-01',5,0,3,NULL),('KingNeptune','12345678',20,'King','Neptune',50.00,104000.00,'Technician','2023-09-15',NULL,1,3,NULL),('DirtyBubble','12345678',21,'Dirty','Bubble',9.50,19760.00,'Technician','2023-10-01',5,0,3,NULL),('JohnDoe','password123',37,'John','Doe',22.50,46800.00,'Foreman','2023-07-01',2,1,4,NULL),('JaneSmith','securepass',38,'Jane','Smith',25.75,53560.00,'Technician','2023-07-05',1,1,4,NULL),('MikeJohnson','mikepass',39,'Mike','Johnson',19.00,39520.00,'Technician','2023-07-10',5,1,4,NULL),('SarahWilson','sarah123',40,'Sarah','Wilson',21.25,44200.00,'Technician','2023-07-15',2,1,4,NULL),('DavidBrown','davidpass',41,'David','Brown',17.50,36400.00,'Technician','2023-07-20',5,1,4,NULL),('EmilyDavis','emily456',42,'Emily','Davis',23.00,47840.00,'Technician','2023-08-01',2,1,1,NULL),('RobertLee','robertpass',43,'Robert','Lee',26.50,55120.00,'Technician','2023-08-05',1,1,1,NULL),('LisaTaylor','lisa789',44,'Lisa','Taylor',20.00,41600.00,'Technician','2023-08-10',5,1,NULL,NULL),('ChrisMartin','chrispass',45,'Chris','Martin',24.25,50440.00,'Technician','2023-08-15',2,1,NULL,NULL),('AmyClark','amypass',46,'Amy','Clark',18.75,39000.00,'Technician','2023-08-20',5,1,NULL,NULL),('KevinWhite','kevin123',47,'Kevin','White',27.00,56160.00,'Technician','2023-09-01',1,1,NULL,NULL),('MichelleHall','michellepass',48,'Michelle','Hall',22.00,45760.00,'Technician','2023-09-05',2,1,NULL,NULL),('BrianScott','brian456',49,'Brian','Scott',19.50,40560.00,'Technician','2023-09-10',5,1,NULL,NULL),('JessicaKing','jessicapass',50,'Jessica','King',25.00,52000.00,'Technician','2023-09-15',2,1,NULL,NULL),('DanielYoung','daniel789',51,'Daniel','Young',28.50,59280.00,'Technician','2023-09-20',1,1,NULL,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_hourly_pay_insert` BEFORE INSERT ON `employees` FOR EACH ROW set new.salary = (new.hourly_pay * 2080) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_salary_insert` AFTER INSERT ON `employees` FOR EACH ROW update expenses
set expense_total = expense_total + new.salary
where expense_name = "salaries" */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_hourly_pay_update` BEFORE UPDATE ON `employees` FOR EACH ROW set new.salary = (new.hourly_pay * 2080) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_salary_update` AFTER UPDATE ON `employees` FOR EACH ROW update expenses
set expense_total = expense_total + (new.salary - old.salary)
where expense_name = "salaries" */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_salary_delete` AFTER DELETE ON `employees` FOR EACH ROW update expenses
set expense_total = expense_total - old.salary
where expense_name = "salaries" */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `expense_id` int NOT NULL,
  `expense_name` varchar(50) DEFAULT NULL,
  `expense_total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`expense_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1,'salaries',1608360.00),(2,'supplies',0.00),(3,'taxes',0.00);
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `date` date DEFAULT (curdate()),
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'Project Delay Alert - Downtown Plaza','The elevator installation at Downtown Plaza is 5 days behind schedule due to delayed shipment of control systems. Client has been notified but requires updated timeline by EOD.','2025-08-30'),(2,'Safety Inspection Required','Quarterly safety audit for all installation teams is overdue. Please schedule inspections for teams working at Sky Tower, Oceanview Condos, and Medical Center projects.','2025-08-30'),(3,'Budget Approval Needed - Hospital Project','Additional $8,500 required for structural reinforcements at City Hospital project. Engineering team has submitted revised plans for your review.','2025-08-30'),(4,'New Contract Awarded','We have been awarded the 15-elevator contract for the new financial district tower. Project kickoff meeting scheduled for next Monday 10 AM.','2025-08-30'),(5,'Team Performance Review','Q3 performance metrics available. Team Alpha shows 98% on-time completion while Team Beta needs improvement at 78%. Review detailed reports in dashboard.','2025-08-30'),(6,'Urgent: Permit Issue - 45 Park Avenue','Building department has halted work at 45 Park Avenue due to missing electrical permits. Immediate action required to avoid $5,000 daily penalties.','2025-08-30'),(7,'Maintenance Contract Renewal','Annual service contracts for 25 buildings expire in 15 days. Several clients are requesting price negotiations for extended coverage.','2025-08-30'),(8,'Equipment Maintenance Due','Hydraulic lift equipment #L-203 and traction machine #T-117 are due for scheduled maintenance. Downtime required: 2 days each.','2025-08-30'),(9,'Installation Checklist Pending','Final installation checklist for Maple Heights project due today. Quality assurance requires documentation before client handover.','2025-08-30'),(10,'Client Meeting Scheduled','Pre-installation coordination meeting with ABC Corp architects scheduled for tomorrow 2:00 PM. Bring updated floor plans and shaft drawings.','2025-08-30'),(11,'Parts Delivery Confirmed','Guidance systems and door operators for your current project delivered to site this morning. Inventory check required before installation begins.','2025-08-30'),(12,'Design Modification Request','Architect requested changes to car interior specifications for Luxury Towers project. Revised drawings available in project folder.','2025-08-30'),(13,'Safety Certification Renewal','Your elevated work platform certification expires in 10 days. Please schedule renewal training with safety department.','2025-08-30'),(14,'Progress Report Overdue','Weekly progress report for Midtown Office project not submitted. Project dashboard shows incomplete data for client review.','2025-08-30'),(15,'Team Reassignment Notice','Two senior technicians reassigned to your project starting Monday. Review updated team roster and schedule adjustments needed.','2025-08-30'),(16,'Load Test Results Ready','Performance test results for elevator #LT-304 available. All parameters within tolerance - ready for certification documentation.','2025-08-30'),(17,'Warranty Documentation','Manufacturer warranty paperwork requires your signature before client handover tomorrow. Documents available in main office.','2025-08-30'),(18,'Weather Advisory','Severe weather warning issued for tomorrow. All outdoor installation work at construction sites may be affected. Plan accordingly.','2025-08-30'),(19,'Subcontractor Delay','Electrical subcontractor missed scheduled work date at Oceanfront project. Rescheduling required - client expecting update by 3 PM today.','2025-08-30'),(20,'Inspection Approved','City inspector approved phase 2 installation at Commerce Building. You may proceed with machine room equipment installation.','2025-08-30'),(21,'Inventory Shortage Alert','Controller cabinets backordered - expected 10-day delay. Consider revising project timeline for affected installations.','2025-08-30'),(22,'Client Change Order','Client requested additional floor stop at penthouse level - requires engineering review and pricing adjustment. Urgent response needed.','2025-08-30'),(23,'Quality Control Issue','QC team identified rail alignment issues in shaft #3 at Financial District project. Requires correction before proceeding with car installation.','2025-08-30'),(34,'test','test body','2025-09-01'),(35,'test','test body','2025-09-01'),(36,'test','test body','2025-09-01');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_recipients`
--

DROP TABLE IF EXISTS `notification_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_recipients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `notification_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notification_id` (`notification_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `notification_recipients_ibfk_1` FOREIGN KEY (`notification_id`) REFERENCES `notification` (`notification_id`),
  CONSTRAINT `notification_recipients_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_recipients`
--

LOCK TABLES `notification_recipients` WRITE;
/*!40000 ALTER TABLE `notification_recipients` DISABLE KEYS */;
INSERT INTO `notification_recipients` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,3),(10,10,3),(11,11,3),(12,12,4),(13,13,4),(14,14,4),(15,15,5),(16,16,5),(17,17,5),(18,18,6),(19,19,6),(20,20,6),(21,21,7),(22,22,7),(23,23,7),(24,36,3),(25,36,4),(26,36,5),(27,36,6),(28,36,7),(29,36,8),(30,36,9);
/*!40000 ALTER TABLE `notification_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int DEFAULT NULL,
  `product_name` varchar(25) DEFAULT NULL,
  `price` decimal(4,2) NOT NULL DEFAULT '0.00',
  UNIQUE KEY `product_name` (`product_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (100,'hamburger',3.99),(101,'fires',1.89),(102,'soda',1.00),(103,'ice cream',1.49),(104,'straw',0.00),(105,'napkin',0.00),(106,'fork',0.00),(107,'spoon',0.00);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lift_name` varchar(255) NOT NULL,
  `description` text,
  `cap` int DEFAULT NULL,
  `created_at` date DEFAULT (curdate()),
  `drive` varchar(255) NOT NULL,
  `door_operator` varchar(255) NOT NULL,
  `speed` int NOT NULL,
  `control` varchar(255) NOT NULL,
  `stops` int DEFAULT NULL,
  `serving_floor` varchar(255) NOT NULL,
  `travel` varchar(255) NOT NULL,
  `power_supply` varchar(255) NOT NULL,
  `shaft` varchar(255) NOT NULL,
  `shaft_size` varchar(255) NOT NULL,
  `car_size` varchar(255) NOT NULL,
  `door_size` varchar(255) NOT NULL,
  `overhead_height` int NOT NULL,
  `pit_depth` int NOT NULL,
  `status` enum('active','inactive','manufacturing','completed') NOT NULL DEFAULT 'manufacturing',
  `progress` int DEFAULT '0',
  `manufacturing_end_date` date DEFAULT NULL,
  `project_end_date` date DEFAULT NULL,
  `team_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'SkyLift 1004','High-speed passenger lift for a commercial buildings.',600,'2025-06-10','Gearless Traction','Automatic Sliding',8,'Microprocessor',11,'B1-F12','40m','3-Phase 415V','Concrete','2.5m x 2.5m','2.1m x 1.5m','1.2m x 2.1m',4500,1500,'active',25,'2025-08-08','2025-10-27',1),(44,'Office Tower Elevator A','High-speed passenger elevator for new office building',700,'2025-05-17','Gearless Traction','Automatic Center Opening',4,'Microprocessor',10,'1-10','45m','3-phase 415V','Concrete','2.5m x 2.5m','2.1m x 1.5m','1.2m x 2.1m',4500,1500,'active',85,'2025-07-23','2025-10-11',2),(45,'Residential Lift B','Medium-speed lift for apartment complex',900,'2025-05-22','Machine Room Less','Automatic Slide',7,'V3F',8,'1-8','28m','3-phase 380V','Concrete','2.2m x 2.2m','2.0m x 1.5m','1.1m x 2.0m',4200,1300,'active',92,'2025-07-25','2025-10-13',3),(46,'Hospital Service Elevator','Heavy-duty service elevator for medical equipment transport',100,'2025-05-07','Hydraulic','Automatic Side Opening',1,'PLC',6,'B-5','25m','3-phase 400V','Steel Frame','3m x 3.5m','2.5m x 2.5m','2.0m x 2.5m',4000,1200,'active',78,'2025-07-16','2025-10-04',4),(47,'Shopping Mall Panoramic','Glass observation elevator for shopping center atrium',100,'2025-04-27','Gearless Traction','Automatic Glass',1,'MPC',5,'G-4','20m','3-phase','Glass & Steel','2500x2500mm','1800x1600mm','1200x2200mm',3500,900,'active',95,'2025-07-06','2025-09-24',NULL),(48,'Warehouse Freight Lift','Industrial cargo lift for warehouse operations',100,'2025-05-12','Geared Traction','Manual Roller',1,'Relay',4,'1-4','15m','3-phase','Structural Steel','3000x3000mm','2500x2200mm','2000x2500mm',2800,800,'active',88,'2025-07-21','2025-10-09',NULL),(265,'Omega-XL Passenger Elevator','High-capacity elevator for commercial buildings with advanced safety features',2000,'2025-07-05','Traction','Automatic Sliding',180,'Microprocessor V3F',15,'B2 to L15','45m','380V 3Phase','Concrete','2000x2000mm','1600x1400mm','1100',3500,1200,'manufacturing',65,'2025-09-18',NULL,NULL),(266,'Hydro-Lift Freight Elevator','Heavy duty freight elevator for industrial applications',5000,'2025-07-22','Hydraulic','Vertical Bi-Parting',60,'Relay Logic',8,'G to L7','25m','415V 3Phase','Structural Steel','3000x3000mm','2800x2700mm','1400',4200,1500,'manufacturing',45,'2025-10-10',NULL,NULL),(267,'Eco-Mini Residential Elevator','Space-saving elevator for residential buildings with energy-efficient operation',400,'2025-08-14','Machine-Room-Less','Swing',90,'Solid State',5,'G to L4','15m','220V 1Phase','Pre-fabricated','1200x1200mm','900x900mm','800',2300,950,'manufacturing',75,'2025-10-23',NULL,NULL),(268,'','',NULL,'2025-09-02','','',0,'',0,'','0','','','','','',0,0,'manufacturing',0,NULL,NULL,NULL),(269,'C Esporsado','test project',12,'2025-09-02','aa','aa',12,'aa',12,'aa','40','aa','aa','aa','aa','aa',43,41,'manufacturing',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_members`
--

DROP TABLE IF EXISTS `team_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_members` (
  `id` int NOT NULL AUTO_INCREMENT,
  `team_id` int DEFAULT NULL,
  `emp_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `team_id` (`team_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `team_members_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`),
  CONSTRAINT `team_members_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_members`
--

LOCK TABLES `team_members` WRITE;
/*!40000 ALTER TABLE `team_members` DISABLE KEYS */;
INSERT INTO `team_members` VALUES (1,1,3),(2,1,10),(3,1,11),(4,1,12),(5,1,42),(6,1,43),(7,2,4),(8,2,13),(9,2,14),(10,2,15),(11,2,16),(12,2,17),(27,3,5),(28,3,18),(29,3,19),(30,3,20),(31,3,21),(32,4,6),(33,4,37),(34,4,38),(35,4,39),(36,4,40),(37,4,41);
/*!40000 ALTER TABLE `team_members` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_name` AFTER INSERT ON `team_members` FOR EACH ROW BEGIN
    -- SQL statements to be executed after each row insertion
    update employees set team_id = NEW.team_id where employee_id = NEW.emp_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_employee_team_id` AFTER UPDATE ON `team_members` FOR EACH ROW BEGIN
	update employees e set e.team_id = NEW.team_id where employee_id = NEW.emp_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_employee_team_id_null` AFTER UPDATE ON `team_members` FOR EACH ROW BEGIN
	update employees e set e.team_id = null where not exists (select * from team_members b where e.employee_id = b.emp_id );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `team_id` int NOT NULL AUTO_INCREMENT,
  `team_name` varchar(255) NOT NULL,
  `project_id` int DEFAULT (NULL),
  PRIMARY KEY (`team_id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Team Alpha',1),(2,'Team Beta',44),(3,'Team Charlie',45),(4,'Team Delta',46);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_project_team_id` AFTER UPDATE ON `teams` FOR EACH ROW BEGIN
	update projects p set p.team_id = NEW.team_id where id = NEW.project_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `amount` decimal(5,2) DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `fk_transactions_id` (`customer_id`),
  CONSTRAINT `fk_transactions_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1007 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1000,4.99,3,'2023-01-01'),(1001,2.89,2,'2023-01-01'),(1002,3.38,3,'2023-01-02'),(1003,4.99,1,'2023-01-02'),(1004,1.00,NULL,'2023-01-03'),(1006,5.48,NULL,'2023-01-03');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `customer_emails`
--

/*!50001 DROP VIEW IF EXISTS `customer_emails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_emails` AS select `customers`.`email` AS `email` from `customers` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-04 20:01:36

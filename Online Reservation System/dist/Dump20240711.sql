-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinereservationsystem
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `cancel`
--

DROP TABLE IF EXISTS cancel;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE cancel (
  pnr varchar(20) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  cancelno varchar(20) DEFAULT NULL,
  tcode varchar(20) DEFAULT NULL,
  ddate varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancel`
--

LOCK TABLES cancel WRITE;
/*!40000 ALTER TABLE cancel DISABLE KEYS */;
INSERT INTO cancel VALUES ('PNR-750709','Tania Aggarwal','589476','2003','Jul 15, 2024'),('PNR-586459','Tania Aggarwal','992838','1001','Jul 15, 2024'),('PNR-915455','Tania Aggarwal','922809','1001','Jul 12, 2024'),('PNR-80119','Tania Aggarwal','268072','1001','Jul 15, 2024');
/*!40000 ALTER TABLE cancel ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS login;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE login (
  username varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES login WRITE;
/*!40000 ALTER TABLE login DISABLE KEYS */;
INSERT INTO login VALUES ('admin','admin'),('Nilmoni_888','Vf1a8bab6#'),('Biplab96','12345'),('Nilmoni888','123654789'),('SRK','555');
/*!40000 ALTER TABLE login ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS passenger;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE passenger (
  `name` varchar(20) DEFAULT NULL,
  nationality varchar(20) DEFAULT NULL,
  phone varchar(15) DEFAULT NULL,
  address varchar(50) DEFAULT NULL,
  aadhar varchar(20) DEFAULT NULL,
  gender varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES passenger WRITE;
/*!40000 ALTER TABLE passenger DISABLE KEYS */;
INSERT INTO passenger VALUES ('Biplab Das','Indian','8653326358','Durgapur,West Bengal','8981716216','Male'),('Tania Aggarwal','Indian','8327563133','Mumbai,Maharashtra','74123698','Female'),('Shah Rukh Khan','Indian','8452578545','Delhi,India','78945612','Male'),('Pranab Das','Indian','9609630783','10/14,Anadapuri,Benachity,Durgapur-13','85296374','Male');
/*!40000 ALTER TABLE passenger ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS reservation;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE reservation (
  PNR varchar(15) DEFAULT NULL,
  TICKET varchar(20) DEFAULT NULL,
  aadhar varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  nationality varchar(30) DEFAULT NULL,
  trainname varchar(15) DEFAULT NULL,
  traincode varchar(20) DEFAULT NULL,
  src varchar(30) DEFAULT NULL,
  des varchar(30) DEFAULT NULL,
  ddate varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES reservation WRITE;
/*!40000 ALTER TABLE reservation DISABLE KEYS */;
INSERT INTO reservation VALUES ('PNR-88472','TIC-9280','8981716216','Biplab Das','Indian','IRCTC-11212','1001','Delhi','Mumbai','Jul 18, 2024');
/*!40000 ALTER TABLE reservation ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train`
--

DROP TABLE IF EXISTS train;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE train (
  t_code varchar(20) DEFAULT NULL,
  t_name varchar(20) DEFAULT NULL,
  `source` varchar(40) DEFAULT NULL,
  destination varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train`
--

LOCK TABLES train WRITE;
/*!40000 ALTER TABLE train DISABLE KEYS */;
INSERT INTO train VALUES ('1009','IRCTC-15034','Delhi','Surat'),('2006','IRCTC-21033','Mumbai','Pune'),('4008','IRCTC-446107','Kolkata','Ahmedabad '),('3001','IRCTC-31212','Bangalore','Mumbai'),('5002','IRCTC-51453','Jaipur','Bangalore'),('1001','IRCTC-11212','Delhi','Mumbai'),('2001','IRCTC-21212','Mumbai','Delhi'),('5001','IRCTC-51212','Jaipur','Mumbai'),('2002','IRCTC-21453','Mumbai','Bangalore'),('4001','IRCTC-41212','Kolkata','Mumbai'),('3002','IRCTC-31453','Bangalore','Delhi'),('6001','IRCTC-61212','Pune','Mumbai'),('1002','IRCTC-11453','Delhi','Bangalore'),('7001','IRCTC-71212','Hyderabad','Mumbai'),('4002','IRCTC-41453','Kolkata','Bangalore'),('8001','IRCTC-81212','Ahmedabad','Mumbai'),('2003','IRCTC-21112','Mumbai','Kolkata'),('9001','IRCTC-91212','Surat','Mumbai'),('2009','IRCTC-25034','Mumbai','Surat'),('5006','IRCTC-51033','Jaipur','Pune'),('6002','IRCTC-61453','Pune','Bangalore'),('2004','IRCTC-23222','Mumbai','Chennai'),('7002','IRCTC-71453','Hyderabad','Bangalore'),('8002','IRCTC-81453','Ahmedabad','Bangalore'),('9002','IRCTC-91453','Surat','Bangalore'),('1003','IRCTC-11112','Delhi','Kolkata'),('3004','IRCTC-33222','Bangalore','Chennai'),('3003','IRCTC-31112','Bangalore','Kolkata'),('4003','IRCTC-41112','Kolkata','Delhi'),('5003','IRCTC-51112','Jaipur','Kolkata'),('6003','IRCTC-61112','Pune','Kolkata'),('7003','IRCTC-71112','Hyderabad','Kolkata'),('8003','IRCTC-81112','Ahmedabad','Kolkata'),('9003','IRCTC-91112','Surat','Kolkata'),('2005','IRCTC-24092','Mumbai','Jaipur'),('1004','IRCTC-13222','Delhi','Chennai'),('2008','IRCTC-26107','Mumbai','Ahmedabad '),('1005','IRCTC-14092','Delhi','Jaipur'),('2007','IRCTC-23752','Mumbai','Hyderabad'),('3007','IRCTC-33752','Bangalore','Hyderabad'),('4006','IRCTC-41033','Kolkata','Pune'),('5007','IRCTC-53752','Jaipur','Hyderabad'),('9007','IRCTC-93752','Chennai','Hyderabad'),('3009','IRCTC-35034','Bangalore','Surat'),('1007','IRCTC-13752','Delhi','Hyderabad'),('5421','IRCTC-498852','Ranchi','Delhi'),('4655','IRCTC-701569','Kolkata','Bhubaneswar'),('1758','IRCTC-165067','Bhubeneswar','Ranchi'),('8741','IRCTC-411587','Patiala','Kolkata'),('1006','IRCTC-11033','Delhi','Pune'),('3005','IRCTC-34092','Bangalore','Jaipur'),('3008','IRCTC-36107','Bangalore','Ahmedabad '),('4005','IRCTC-44092','Kolkata','Jaipur'),('9005','IRCTC-94092','Chennai','Jaipur'),('5005','IRCTC-54092','Jaipur','Chennai'),('6007','IRCTC-63752','Pune','Hyderabad'),('1008','IRCTC-16107','Delhi','Ahmedabad '),('3006','IRCTC-31033','Bangalore','Pune'),('9007','IRCTC-93752','Surat','Hyderabad'),('8007','IRCTC-83752','Ahmedabad','Hyderabad'),('7008','IRCTC-76107','Hyderabad','Ahmedabad '),('6008','IRCTC-66107','Pune','Ahmedabad '),('9009','IRCTC-95034','Chennai','Delhi'),('4009','IRCTC-45034','Kolkata','Surat'),('6004','IRCTC-63222','Pune','Chennai'),('7005','IRCTC-74092','Hyderabad','Jaipur'),('4004','IRCTC-43222','Kolkata','Chennai'),('8008','IRCTC-86107','Ahmedabad','Delhi '),('4007','IRCTC-43752','Kolkata','Hyderabad'),('5004','IRCTC-53222','Jaipur','Delhi'),('8005','IRCTC-84092','Ahmedabad','Jaipur'),('5008','IRCTC-56107','Jaipur','Ahmedabad '),('7007','IRCTC-73752','Hyderabad','Delhi'),('5009','IRCTC-55034','Jaipur','Surat'),('6005','IRCTC-64092','Pune','Jaipur'),('6006','IRCTC-61033','Pune','Delhi'),('7004','IRCTC-73222','Hyderabad','Chennai'),('9005','IRCTC-94092','Surat','Jaipur'),('8004','IRCTC-83222','Ahmedabad','Chennai'),('7006','IRCTC-71033','Hyderabad','Pune'),('6009','IRCTC-65034','Pune','Surat'),('7009','IRCTC-75034','Hyderabad','Surat'),('9004','IRCTC-93222','Surat','Chennai'),('8006','IRCTC-81033','Ahmedabad','Pune'),('9108','IRCTC-96107','Chennai','Ahmedabad '),('8009','IRCTC-85034','Ahmedabad','Surat'),('9009','IRCTC-95034','Surat','Delhi'),('9006','IRCTC-91033','Chennai','Pune'),('9108','IRCTC-96107','Surat','Ahmedabad '),('9004','IRCTC-93222','Chennai','Surat'),('9006','IRCTC-91033','Surat','Pune');
/*!40000 ALTER TABLE train ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-11  0:10:37

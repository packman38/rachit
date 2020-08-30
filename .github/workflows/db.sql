/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.51-38.1-log : Database - mydemodb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mydemodb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mydemodb`;

/*Table structure for table `banknames` */

DROP TABLE IF EXISTS `banknames`;

CREATE TABLE `banknames` (
  `BID` int(11) NOT NULL AUTO_INCREMENT,
  `BankName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`BID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `banknames` */

insert  into `banknames`(`BID`,`BankName`) values (1,'IDBI'),(2,'ICICI'),(3,'Bank of India'),(4,'PNB'),(5,'SBI'),(6,'HDFC LTD.'),(7,'AXIS Bank'),(8,'Bank of Baroda'),(9,'YES Bank'),(10,'Canara Bank');

/*Table structure for table `bookings` */

DROP TABLE IF EXISTS `bookings`;

CREATE TABLE `bookings` (
  `BID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(50) DEFAULT NULL,
  `MovieName` varchar(50) DEFAULT NULL,
  `MovieTime` time DEFAULT NULL,
  `Mobile` varchar(10) DEFAULT NULL,
  `BookingTime` datetime DEFAULT NULL,
  `Status` varchar(10) DEFAULT 'Active',
  PRIMARY KEY (`BID`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `bookings` */

insert  into `bookings`(`BID`,`UserName`,`MovieName`,`MovieTime`,`Mobile`,`BookingTime`,`Status`) values (12,'asd','asd','00:00:00','9988776655','2020-08-29 12:24:12','Active'),(10,'yrytdd','dhoom2','00:00:00','9988776655','2020-08-29 09:56:51','Active'),(13,'asd','asd','12:00:00','9988776655','2020-08-29 12:24:59','Active'),(11,'Muni','IronMan','09:00:00','9988776655','2020-08-29 10:29:15','Active'),(8,'new','no name','15:01:00','9988776655','2020-08-29 05:51:38','Active');

/*Table structure for table `cards` */

DROP TABLE IF EXISTS `cards`;

CREATE TABLE `cards` (
  `CID` int(11) DEFAULT NULL,
  `CardHolderName` varchar(50) DEFAULT NULL,
  `Validity` date DEFAULT NULL,
  `CardType` varchar(10) DEFAULT NULL,
  `CardNumber` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cards` */

/*Table structure for table `documents` */

DROP TABLE IF EXISTS `documents`;

CREATE TABLE `documents` (
  `DID` int(11) NOT NULL AUTO_INCREMENT,
  `UID` int(11) DEFAULT NULL,
  `DocumentName` varchar(30) DEFAULT NULL,
  `DocumentNumber` varchar(20) DEFAULT NULL,
  `UploadDate` datetime DEFAULT NULL,
  `Status` varchar(10) DEFAULT 'Pending',
  PRIMARY KEY (`DID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `documents` */

insert  into `documents`(`DID`,`UID`,`DocumentName`,`DocumentNumber`,`UploadDate`,`Status`) values (1,1,'Aadhar',NULL,'2018-02-19 00:00:00','Approved'),(2,1,'VoterCard',NULL,'2018-02-19 00:00:00','Approved'),(3,1,'PanCard',NULL,'2018-02-20 00:00:00','Rejected'),(5,1,'maxresdefault_live.jpg',NULL,'2018-02-27 18:54:57','Approved'),(6,1,'maxresdefault_live.jpg','180227192420','2018-02-27 19:24:30','Approved'),(7,1,'Home.png','180227195129','2018-02-27 19:51:32','Approved'),(8,2,'maxresdefault_live.jpg','180227201731','2018-02-27 20:17:31','Pending'),(9,2,'advancedsettings.png','180329220928','2018-03-29 09:39:30','Pending'),(10,8,'train.png','180330003539','2018-03-29 12:05:41','Approved'),(11,10,'Online loan approval system.do','180330050857','2018-03-29 22:08:58','Rejected'),(12,10,'Untitled.png','180330051233','2018-03-29 22:12:34','Pending'),(13,10,'Untitled.png','180330051235','2018-03-29 22:12:36','Rejected'),(14,10,'Untitled.png','180330051238','2018-03-29 22:12:39','Approved'),(15,11,'abundance-agriculture-bananas-','180331135409','2018-03-31 06:54:09','Approved'),(16,12,'Untitled.png','180401192035','2018-04-01 10:20:39','Approved'),(17,12,'Untitled.png','180402082239','2018-04-01 23:22:45','Pending'),(18,13,'A K Rathore Tute3.pdf','180529090139','2018-05-29 00:01:39','Pending');

/*Table structure for table `feedbacks` */

DROP TABLE IF EXISTS `feedbacks`;

CREATE TABLE `feedbacks` (
  `FID` int(11) NOT NULL AUTO_INCREMENT,
  `Feedback` varchar(2000) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Mobile` varchar(15) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `feedbacks` */

insert  into `feedbacks`(`FID`,`Feedback`,`Name`,`Mobile`,`Email`,`CreatedOn`) values (1,'asdasdasdasdasd','hello',NULL,'hello@gmail.com','2018-03-26 22:44:26'),(2,'asd asd asd asd ','hello',NULL,'mohit.xxx@gmail.com','2018-03-26 22:55:27'),(3,'new feedbacknew feedback new feedback','new feedback',NULL,'customer@gmail.com','2018-03-31 21:10:59'),(4,'','',NULL,'mohit.xxx@gmail.com','2018-03-31 22:35:05'),(5,'s','s',NULL,'shreyashi@gmail.com','2018-04-01 04:13:40'),(6,'cannot upload documents','Shreyashi',NULL,'shreyashi@gmail.com','2018-04-01 10:40:37'),(7,'No query','Priya',NULL,'priyasrivastava@gmail.com','2019-12-04 08:39:33');

/*Table structure for table `loanplans` */

DROP TABLE IF EXISTS `loanplans`;

CREATE TABLE `loanplans` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BankName` varchar(50) DEFAULT NULL,
  `Interest` varchar(20) DEFAULT NULL,
  `Amount` double DEFAULT NULL,
  `Tenure` varchar(20) DEFAULT NULL,
  `Details` varchar(2000) DEFAULT NULL,
  `PlanType` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

/*Data for the table `loanplans` */

insert  into `loanplans`(`ID`,`BankName`,`Interest`,`Amount`,`Tenure`,`Details`,`PlanType`) values (1,'IDBI',' 7.85%-8.90%',1000000,'1-10 Year',NULL,'PersonalLoan'),(2,'ICICI','8.45% - 8.85%',300000,'3-30 Year',NULL,'PersonalLoan'),(3,'Bank of India','5.37%-6.24%',1000000,'3-20 Year',NULL,'PersonalLoan'),(4,'PNB','7.45%-7.95%',300000,'1-30 Year',NULL,'PersonalLoan'),(5,'SBI','8.35%-8.70%',200000,'1-15 Year',NULL,'PersonalLoan'),(6,'HDFC LTD','8.35%-8.60%',200000,'1-30 Year',NULL,'PersonalLoan'),(7,'AXIS Bank','8.35%-11.75%',1000000,'2-25 Year',NULL,'PersonalLoan'),(8,'Bank of Baroda','8.35%-9.35%',1000000,'1-20 Year',NULL,'PersonalLoan'),(9,'YES Bank','9.35%-10.50%',150000,'1-15 Year',NULL,'PersonalLoan'),(10,'Canara Bank','8.45%-8.65%',200000,'2-20 Year',NULL,'PersonalLoan'),(11,'IDBI','7.15%-8.25%',300000,'1-15 Year',NULL,'HomeLoan'),(12,'ICICI','8.25%-9.15%',1000000,'2-15 Year',NULL,'HomeLoan'),(13,'Bank of India','6.85%-7.90%',1000000,'2-25 Year',NULL,'HomeLoan'),(14,'PNB','7.45%-9.10%',200000,'1-30 Year',NULL,'HomeLoan'),(15,'SBI','8.10%-8.90%',300000,'1-10 Year',NULL,'HomeLoan'),(16,'HDFC LTD.','9.10%-9.40%',1000000,'1-30 Year',NULL,'HomeLoan'),(17,'AXIS Bank','8.10%-8.75%',300000,'1-25 Year',NULL,'HomeLoan'),(18,'Bank of Baroda','7.60%-8.90%',200000,'2-30 Year',NULL,'HomeLoan'),(19,'YES Bank','8-50%-9.20%',1000000,'3-30 Year',NULL,'HomeLoan'),(20,'Canara Bank','6.95%-7.30%',500000,'5-15 Year',NULL,'HomeLoan'),(21,'IDBI','5.40%-7.50%',100000,'1-5 Year',NULL,'EducationLoan'),(22,'ICICI','6-20%-7.40%',200000,'1-5 Year',NULL,'EducationLoan'),(23,'Bank of India','5.90%-6.90%',300000,'1-5 Year',NULL,'EducationLoan'),(24,'PNB','6.60%-7.10%',100000,'1-5 Year',NULL,'EducationLoan'),(25,'SBI','5.70%-6.20%',200000,'1-5 Year',NULL,'EducationLoan'),(26,'HDFC LTD','6.80%-7.40%',300000,'1-5 Year',NULL,'EducationLoan'),(27,'AXIS Bank','5.80%-7.90%',100000,'1-5 Year',NULL,'EducationLoan'),(28,'Bank of Baroda','6.45%-6.90%',200000,'1-5 Year',NULL,'EducationLoan'),(29,'YES Bank','5.50%-6.60%',200000,'1-5 Year',NULL,'EducationLoan'),(30,'Canara Bank','6.20%-7.10%',100000,'1-5 Year',NULL,'EducationLoan'),(31,'IDBI','5.90%-6.40%',400000,'5-30 Year',NULL,'CarLoan'),(32,'ICICI','6.20%-8.50%',300000,'3-25 Year',NULL,'CarLoan'),(33,'Bank of India','7.40%-8.40%',1000000,'4-30 Year',NULL,'CarLoan'),(34,'PNB','8.90%-10.35%',800000,'2-25 Year',NULL,'CarLoan'),(35,'SBI','7.90%-9.85%',500000,'3-30 Year',NULL,'CarLoan'),(36,'HDFC LTD.','9.20%-11.45%',500000,'4-30 Year',NULL,'CarLoan'),(37,'AXIS Bank','9.35%-11.35%',200000,'2-25 Year',NULL,'CarLoan'),(38,'Bank of Baroda','8.40%-11.50%',400000,'3-30 Year',NULL,'CarLoan'),(39,'YES Bank','9.20%-11.40%',300000,'4-30 Year',NULL,'CarLoan'),(40,'Canara Bank','8.30%-11.40%',600000,'1-30 Year',NULL,'CarLoan'),(41,'IDBI','7.45%-9.45%',100000,'2-15 Year',NULL,'BikeLoan'),(42,'ICICI','8.45%-10.55%',300000,'2-25 Year',NULL,'BikeLoan'),(43,'Bank of India','7.45%-8.45%',200000,'1-15 Year',NULL,'BikeLoan'),(44,'PNB','8.60%-9.50%',200000,'2-20 Year',NULL,'BikeLoan'),(45,'SBI','7.95%-8.40%',300000,'1-15 Year',NULL,'BikeLoan'),(46,'HDFC LTD.','9.10%-10.55%',100000,'2-15 Year',NULL,'BikeLoan'),(47,'AXIS Bank','8.15%-9.35%',200000,'1-20 Year',NULL,'BikeLoan'),(48,'Bank of Baroda','8.45%-9.35%',500000,'2-25 Year',NULL,'BikeLoan'),(49,'YES Bank','9.10%-10.50%',200000,'1-15 Year',NULL,'BikeLoan'),(50,'Canara Bank','7.20%-9.50%',100000,'2-15 Year',NULL,'BikeLoan'),(51,'IDBI','6.50%-8.50%',200000,'1-10 Year',NULL,'UsedCarLoan'),(52,'ICICI','7.70%-8.50%',500000,'2-15 Year',NULL,'UsedCarLoan'),(53,'Bank of Baroda','9.15%-10.50%',200000,'1-15 Year',NULL,'UsedCarLoan'),(54,'PNB','9.40%-9.90%',200000,'1-20 Year',NULL,'UsedCarLoan'),(55,'SBI','7.40%-8.50%',300000,'2-25 Year',NULL,'UsedCarLoan'),(56,'HDFC LTD.','8.40%-9.90%',100000,'1-15 Year',NULL,'UsedCarLoan'),(57,'AXIS Bank','7.20%-9.50%',200000,'2-20 Year',NULL,'UsedCarLoan'),(58,'Bank of Baroda','8.30%-9.50%',100000,'1-15 Year',NULL,'UsedCarLoan'),(59,'YES Bank','7.40%-10.50%',200000,'2-20 Year',NULL,'UsedCarLoan'),(60,'Canara Bank','9.40%-9.90%',100000,'1-25 Year',NULL,'UsedCarLoan');

/*Table structure for table `loans` */

DROP TABLE IF EXISTS `loans`;

CREATE TABLE `loans` (
  `LID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UID` bigint(20) DEFAULT NULL,
  `PID` bigint(20) DEFAULT NULL,
  `PurchasingDate` date DEFAULT NULL,
  `Status` varchar(10) DEFAULT 'Pending',
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `loans` */

insert  into `loans`(`LID`,`UID`,`PID`,`PurchasingDate`,`Status`) values (1,1,7,'2018-03-30','Approved'),(2,10,1,'2018-03-30','Pending'),(3,11,1,'2018-03-31','Approved'),(4,10,1,'2018-03-31','Approved'),(5,1,1,'2018-03-31','Approved'),(6,10,1,'2018-03-31','Pending'),(7,10,1,'2018-03-31','Pending'),(8,10,6,'2018-04-01','Pending'),(9,10,2,'2018-04-01','Pending'),(10,12,26,'2018-04-01','Pending'),(11,1,2,'2019-12-02','Pending'),(12,1,2,'2019-12-02','Pending');

/*Table structure for table `loantypes` */

DROP TABLE IF EXISTS `loantypes`;

CREATE TABLE `loantypes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TypeName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `loantypes` */

insert  into `loantypes`(`ID`,`TypeName`) values (1,'PersonalLoan'),(2,'HomeLoan'),(3,'EducationLoan'),(4,'CarLoan'),(5,'BikeLoan'),(6,'UsedCarLoan');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `OID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CourierType` varchar(20) DEFAULT 'Normal',
  `Weight` varchar(15) DEFAULT '0',
  `Size` varchar(20) DEFAULT 'No Size',
  `MaterialType` varchar(20) DEFAULT NULL,
  `SpecialCare` varchar(5) DEFAULT 'No',
  `Source` varchar(50) DEFAULT 'Source Station',
  `Destination` varchar(50) DEFAULT 'Destination Station',
  `Distance` int(11) DEFAULT '1',
  `CourierCost` float DEFAULT '100',
  `EstimatedTime` tinyint(4) DEFAULT '1',
  `Description` varchar(500) DEFAULT 'No Description',
  `Status` varchar(15) DEFAULT 'Pending',
  `OrderDate` datetime DEFAULT NULL,
  `UID` bigint(20) DEFAULT '1',
  `OrderNumber` varchar(15) DEFAULT 'ODR123456',
  `CareerUID` bigint(20) DEFAULT '1',
  `OTP` varchar(6) DEFAULT '000000',
  PRIMARY KEY (`OID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `orders` */

insert  into `orders`(`OID`,`CourierType`,`Weight`,`Size`,`MaterialType`,`SpecialCare`,`Source`,`Destination`,`Distance`,`CourierCost`,`EstimatedTime`,`Description`,`Status`,`OrderDate`,`UID`,`OrderNumber`,`CareerUID`,`OTP`) values (1,'Business','<1','','Fragile','No','lko','del',20,160,24,'','Order Placed','2020-06-15 19:45:28',1,'ODR074515',19,'000000'),(2,'Quick','Less than 1','','Fragile','No','lko','del',5,25,1,'','Order Placed','2020-06-15 20:25:20',3,'ODR082315',1,'000000'),(3,'Business','Less than 1','','Fragile','No','Home','Office',5,40,24,'','Order Placed','2020-06-15 20:27:45',3,'ODR032716',1,'000000'),(4,'Quick','Less than 1','','Fragile','Yes','Hdhdh','Gdgjkgf',5,25,1,'','Order Placed','2020-06-15 21:26:42',4,'ODR042616',1,'000000'),(5,'Business','Less than 1','','Fragile','No','Home','Office',5,40,24,'','Order Placed','2020-06-15 21:28:16',3,'ODR042816',1,'000000'),(6,'Quick','Less than 1','','Fragile','Yes','Office','Home',30,150,1,'','Order Placed','2020-06-15 21:30:06',3,'ODR043016',1,'000000'),(7,'Business','Less than 1','','Fragile','Yes','Home','Office',10,80,24,'','Order Placed','2020-06-17 23:31:26',3,'ODR063018',1,'000000'),(8,'Business','15-20','','Fragile','No','Home','Office',10,80,24,'','Order Placed','2020-06-17 23:46:47',3,'ODR064518',1,'000000'),(9,'Business','Less than 1','','Fragile','No','Home','Office',10,80,24,'','Order Placed','2020-06-19 09:09:33',3,'ODR040919',1,'000000'),(10,'Quick','Less than 1','','Fragile','No','Home','Office',5,25,1,'','Order Placed','2020-06-23 01:25:36',3,'ODR082523',1,'000000'),(11,'Business','5-10','','Non-Fragile','No','Home','Office',10,80,24,'','Order Placed','2020-07-02 02:33:57',3,'ODR093302',1,'000000'),(12,'Business','Less than 1','','Fragile','No','Hdhdh','Dhhdhd',5,40,24,'','Order Placed','2020-08-12 06:14:45',4,'ODR011012',1,'000000'),(13,'Business','Less than 1','','Fragile','No','Home','Office',10,80,24,'','Order Placed','2020-08-12 06:35:10',3,'ODR013412',1,'000000'),(14,'Business','Less than 1','','Fragile','No','Home','Office',10,80,24,'','Order Placed','2020-08-12 06:35:16',3,'ODR013412',1,'000000'),(15,'Quick','1-5','','Non-Fragile','Yes','Office','Home',20,100,1,'','Order Placed','2020-08-12 06:36:29',3,'ODR013612',1,'000000'),(16,'Quick','1-5','','Non-Fragile','Yes','Office','Home',20,100,1,'','Order Placed','2020-08-12 06:36:30',3,'ODR013612',1,'000000'),(17,'Business','Less than 1','','Fragile','No','Home','Office',5,40,24,'','Order Placed','2020-08-12 21:00:48',3,'ODR040013',1,'000000'),(18,'Business','1-5','','Non-Fragile','Yes','Gomti nagar','Home',20,160,24,'','Order Placed','2020-08-13 02:04:08',3,'ODR090313',1,'000000'),(19,'Business','1-5','','Non-Fragile','Yes','Gomti nagar','Home',20,160,24,'','Order Placed','2020-08-13 02:04:13',3,'ODR090313',1,'000000'),(20,'Business','1-5','','Non-Fragile','Yes','Gomti nagar','Home',20,160,24,'','Order Placed','2020-08-13 02:04:15',3,'ODR090313',1,'000000'),(21,'Business','1-5','','Non-Fragile','Yes','Gomti nagar','Home',20,160,24,'','Order Placed','2020-08-13 02:04:16',3,'ODR090313',1,'000000'),(22,'Business','1-5','','Non-Fragile','Yes','Gomti nagar','Home',20,160,24,'','Order Placed','2020-08-13 02:04:19',3,'ODR090313',1,'000000'),(23,'Business','1-5','','Non-Fragile','Yes','Gomti nagar','Home',20,160,24,'','Order Placed','2020-08-13 02:04:20',3,'ODR090313',1,'000000'),(24,'Business','1-5','','Non-Fragile','Yes','Gomti nagar','Home',20,160,24,'','Order Placed','2020-08-13 02:04:22',3,'ODR090313',1,'000000'),(25,'Business','1-5','','Non-Fragile','Yes','Gomti nagar','Home',20,160,24,'','Order Placed','2020-08-13 02:04:41',3,'ODR090313',1,'000000');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `PID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(50) DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `TotalCost` bigint(20) DEFAULT NULL,
  `Installment` int(11) DEFAULT NULL,
  `Months` int(11) DEFAULT NULL,
  `EffectiveCost` bigint(20) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

/*Data for the table `products` */

insert  into `products`(`PID`,`ProductName`,`Type`,`TotalCost`,`Installment`,`Months`,`EffectiveCost`,`Description`) values (1,'Business Loan','PersonalLoan',1000000,5000,22,1000,'BANK:- SBI, Documents Required:- Adhar Card,Voter Id,Pan Card,Business Card,Photos(10),Business Plot Papers.'),(2,'Mera Ghar','HomeLoan',2000000,2500,50,1000,'BANK:- SBI, Document Required:- Adhar Card, Pan Card,Business Card, Lease Paaper'),(3,'Ashiyana','HomeLoan',1300000,13000,120,1000,'BANK:- ICICI, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present bankers'),(4,'Gulistaan','HomeLoan',5000000,6000,90,5200000,'BANK:- ICICI, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(5,'Bhavan','HomeLoan',10000000,8000,90,1000,'BANK:- PNB, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(6,'Samriddhi','PersonalLoan',3000000,5000,60,1000,'BANK:- IDBI, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(7,'Medical Help','PersonalLoan',5000000,5100,111,1000,'BANK:- BANK OF INDIA, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(11,'Super Bike','BikeLoan',2000000,14000,120,1000,'BANK:- HDFC LTD, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(12,'Double Wheel','BikeLoan',1000000,8000,12,2000,'BANK:- CANARA BANK, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(13,'Unsecured Two Wheeler','BikeLoan',2000000,14000,22,1000,'BANK:- YES BANK, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(14,'Secured Two Wheeler','BikeLoan',3000000,18000,360,1000,'BANK:- AXIS BANK, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(15,'Biker ','BikeLoan',1000000,16000,120,1000,'BANK:- BANK OD BARODA, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(16,'Hire Purchase Scheme','CarLoan',2000000,12000,72,1000,'BANK:- IDBI, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(17,'Margin Money','CarLoan',1500000,14000,64,1000,'BANK:- IDBI, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(18,'Security Deposit Scheme','CarLoan',2000000,10000,360,1000,'BANK:- ICICI, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(19,'Lease Financing Purchase','CarLoan',1200000,12000,120,1000,'BANK:- BANK OF INDIA, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(20,'Four Wheeler','CarLoan',2000000,18000,240,1000,'BANK:- PNB, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(21,'Undergraduate Student','EducationLoan',3000000,15000,90,1000,'BANK:- SBI, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(22,'Graduate Student','EducationLoan',2500000,3000,360,1000,'BANK:- HDFC LTC, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(23,'Professional Student','EducationLoan',2000000,20000,120,1000,'BANK:- AXIS BANK, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(24,'Career Education','EducationLoan',1500000,10000,240,1000,'BANK:- BANK OF BARODA, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(25,'Cost of Passage','EducationLoan',1000000,8000,60,1000,'BANK:- YES BANK, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(26,'Wedding Loan','PersonalLoan',2500000,10000,240,1000,'BANK:- CANARA BANK, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(27,'Holiday Loan','PersonalLoan',2500000,10000,160,1000,'BANK:- IDBI, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(28,'Freshers Funding','PersonalLoan',2000000,10000,200,1000,'BANK:- ICICI, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(29,'NRI Personal Loan','PersonalLoan',1500000,20000,320,1000,'BANK:- BANK OF INDIA, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(30,'TOP-UP Loan','PersonalLoan',2500000,14000,240,1000,'BANK:- PNB, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(31,'Land Purchase','HomeLoan',3000000,16000,120,1000,'BANK:- SBI, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(32,'Home Construction','HomeLoan',1500000,14000,190,1000,'BANK:- HDFC LTD, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(33,'Home Extenttion','HomeLoan',2000000,8000,22,1000,'BANK:- AXIS BANK, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(34,'Composit Loan','HomeLoan',2500000,11000,200,1000,'BANK:- BANK OF BARODA, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(35,'Home Purchase','HomeLoan',1500000,12000,240,1000,'BANK:- YES BANK, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(36,'Home Renovation','HomeLoan',2000000,12000,240,1000,'BANK:- CANARA BANK, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(37,'Used Four Wheeler','UsedCarLoan',1000000,1000,360,1000,'BANK:- IDBI, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(38,'Lease Finance','UsedCarLoan',2000000,20000,36,1000,'BANK:- ICICI, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(39,'Margin Money','UsedCarLoan',1500000,12000,48,1000,'BANK:- PNB, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(40,'Security Deposit','UsedCarLoan',2500000,16000,60,1000,'BANK:- SBI, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(41,'Secured Car','UsedCarLoan',1000000,10000,72,1000,'BANK:- HDFC LTD, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker'),(42,'Unsecured Car','UsedCarLoan',2000000,12000,84,1000,'BANK:- SBI, Document Required:- Identity proof(Adhar Card or PAN Card), Address Proof,Proof of Business, Statement of personal assets, Identification of signature from his/her present banker');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `UID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `PWD` varchar(20) DEFAULT NULL,
  `Mobile` varchar(15) NOT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Status` varchar(10) DEFAULT 'Free',
  `Description` varchar(1000) DEFAULT 'No Description',
  `UserType` varchar(10) DEFAULT 'User',
  `Balance` int(11) DEFAULT '10000',
  `RegisteredOn` datetime DEFAULT NULL,
  `Aadhar` varchar(12) DEFAULT '000000000000',
  `PAN` varchar(10) DEFAULT 'xxxxxxxxxx',
  `CustomerID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`UID`,`Mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`UID`,`UserName`,`Email`,`PWD`,`Mobile`,`Address`,`Status`,`Description`,`UserType`,`Balance`,`RegisteredOn`,`Aadhar`,`PAN`,`CustomerID`) values (1,'Admin','admin@gmail.com','aa','7007502987','F-61 Samar vihar Colony, Alambagh Lucknow','Approved','No Description','Admin',20000,'2019-03-01 17:21:30','000000000000','9182736455','1'),(2,'Rachit','rachit@gmail.com','aa','7355129703','PANNO1234XPANNO1234XPANNO1234X','Free','No Description','Employee',10000,'2020-05-07 23:31:59','111111111111','PANNO1234X','CUST113107'),(3,'Jai Hind','hindjai005@gmail.com','aa','9935125967','Home no. 49, senani vehar\r\nPGI road, telibagh','Free','No Description','Employee',10000,'2020-06-10 01:03:02','332571199003','AWSPH3337S','CUST080302'),(4,'Shivam Sharma','shivamsharma.10oct@gmail.com','aa','8173857854','3/163 vinamra khand gomti nagar\r\nnear amity international school','Free','No Description','Employee',10000,'2020-06-10 01:04:17','252345345222','AWSTH3337S','CUST080417'),(19,'Employee','emp@gmail.com','aa','',NULL,'Free','No Description','Employee',10000,NULL,'000000000000','xxxxxxxxxx',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

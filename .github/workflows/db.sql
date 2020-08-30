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

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
 `PWD` varchar(20) DEFAULT NULL,
 `CustomerID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`UID`,`UserName`,`PWD`,`CustomerID`) values (1,'Admin','aa','1'),(2,'Rachit','aa','CUST113107');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

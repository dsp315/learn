/*
SQLyog Professional v12.09 (64 bit)
MySQL - 5.7.17-log : Database - student
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`student` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `student`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adm_no` varchar(10) COLLATE utf8_bin NOT NULL,
  `adm_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `adm_pwd` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`adm_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `admin` */

insert  into `admin`(`adm_no`,`adm_name`,`adm_pwd`) values ('1001','王校长','202CB962AC59075B964B07152D234B70'),('1002','张主任','202CB962AC59075B964B07152D234B70'),('1003','杨老师','202CB962AC59075B964B07152D234B70'),('1004','李同学','202CB962AC59075B964B07152D234B70');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `stu_no` varchar(10) COLLATE utf8_bin NOT NULL,
  `stu_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `stu_age` varchar(10) COLLATE utf8_bin NOT NULL,
  `stu_gender` int(5) NOT NULL,
  `stu_college` varchar(50) COLLATE utf8_bin NOT NULL,
  `stu_hometown` varchar(50) COLLATE utf8_bin NOT NULL,
  `stu_tel` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`stu_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `student` */

insert  into `student`(`stu_no`,`stu_name`,`stu_age`,`stu_gender`,`stu_college`,`stu_hometown`,`stu_tel`) values ('183010301','白锦涛','18',1,'Law','陕西','15510011111'),('183010302','张伟','19',1,'Philosophy','北京','18703302001'),('183010303','王伟','18',1,'agronomy','上海','15502023030'),('183010304','王芳','20',0,'Art','陕西','13333330330'),('183010305','李娜','18',0,'history','贵州','18891002332'),('183010306','刘伟','20',1,'Management','云南','15561002366'),('183010307','张敏','19',0,'literature','河北','16653369856'),('183010308','李静','20',0,'Medical Science','深圳','15663101563'),('183010309','张丽','21',0,'Law','河南','14459687741'),('183010310','王静','19',0,'agronomy','山西','15567910223'),('183010311','王丽','18',0,'Neo Confucianism','黑龙江','16663696680'),('183010312','李强','20',1,'economics','西藏','16645646132'),('183010313','张静','19',0,'literature','河北','16646467978'),('183010314','李敏','20',1,'agronomy','湖北','16465465489'),('183010315','王敏','19',0,'Neo Confucianism','湖南','13246544963'),('183010316','王磊','22',1,'Medical Science','江苏','16645496451'),('183010317','王勇','22',1,'agronomy','浙江','14464564564'),('183010318','王艳','19',0,'literature','海南','15545645646'),('183010319','张磊','20',1,'Law','安徽','17754564446'),('183010320','黄东','19',1,'history','上海','14654655476'),('183010321','刘栋','20',1,'Philosophy','四川','18845666458'),('183010322','刘洋','19',1,'Management','重庆','14564896546'),('183010323','张明','19',1,'history','甘肃','19946457448'),('183010324','王娟','20',0,'Management','湖南','16645646456'),('183010325','王强','21',1,'history','山西','18879744644'),('183010326','高强','20',1,'agronomy','浙江','19997845467'),('183010327','刘强','18',1,'literature','四川','17978456465'),('183010328','王斌','19',1,'literature','辽宁','17778794645'),('183010329','张斌','19',1,'economics','河南','19978745462'),('183010330','李斌','19',1,'Neo Confucianism','河北','17975649748'),('1830103301','张霞','20',0,'History','湖北','17755545644');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

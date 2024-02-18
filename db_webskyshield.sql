/*
SQLyog - Free MySQL GUI v5.19
Host - 5.0.15-nt : Database - db_web_skyshield
*********************************************************************
Server version : 5.0.15-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `db_web_skyshield`;

USE `db_web_skyshield`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `image1` */

DROP TABLE IF EXISTS `image1`;

CREATE TABLE `image1` (
  `image_code` int(11) NOT NULL auto_increment,
  `image_name` varchar(20) default NULL,
  `image_type` varchar(20) default NULL,
  `hash_tag` varchar(90) default NULL,
  PRIMARY KEY  (`image_code`),
  KEY `FK_image1` (`image_type`),
  CONSTRAINT `image1_ibfk_1` FOREIGN KEY (`image_type`) REFERENCES `image_details` (`image_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `image1` */

insert into `image1` (`image_code`,`image_name`,`image_type`,`hash_tag`) values (1,'dog1.jpg','dog','f660d12afda01c731f47beb3e86f310f');
insert into `image1` (`image_code`,`image_name`,`image_type`,`hash_tag`) values (2,'cat2.jpg','cat','d897066a44e7713ba1d2b583d3540df1');
insert into `image1` (`image_code`,`image_name`,`image_type`,`hash_tag`) values (3,'dog3.jpg','dog','806504a0b98080437ae9154d3fe04c6d');
insert into `image1` (`image_code`,`image_name`,`image_type`,`hash_tag`) values (4,'cat4.jpg','cat','633822420b7a3132e688f0e266406777');
insert into `image1` (`image_code`,`image_name`,`image_type`,`hash_tag`) values (5,'cat1.jpg','cat','56c0dbe8a15bf9b237820cf83f7008dd');
insert into `image1` (`image_code`,`image_name`,`image_type`,`hash_tag`) values (6,'dog2.jpg','dog','b850a8bef9e84648b60d5d658e0b9cb8');
insert into `image1` (`image_code`,`image_name`,`image_type`,`hash_tag`) values (7,'cat3.jpg','cat','607904087e7499383886a95a1e46d5bf');
insert into `image1` (`image_code`,`image_name`,`image_type`,`hash_tag`) values (8,'dog4.jpg','dog','9cf82bcabdc7d550f950f9a137f082d4');
insert into `image1` (`image_code`,`image_name`,`image_type`,`hash_tag`) values (9,'dog5.jpg','dog','6cf612b19417f7ffa94aa080a07413e3');

/*Table structure for table `image_details` */

DROP TABLE IF EXISTS `image_details`;

CREATE TABLE `image_details` (
  `image_tcode` int(11) NOT NULL auto_increment,
  `image_type` varchar(20) NOT NULL,
  PRIMARY KEY  (`image_tcode`,`image_type`),
  KEY `image_type` (`image_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `image_details` */

insert into `image_details` (`image_tcode`,`image_type`) values (1,'cat');
insert into `image_details` (`image_tcode`,`image_type`) values (2,'dog');

/*Table structure for table `m_admin` */

DROP TABLE IF EXISTS `m_admin`;

CREATE TABLE `m_admin` (
  `id` int(11) NOT NULL auto_increment,
  `adminid` varchar(50) default NULL,
  `adminname` varchar(50) default NULL,
  `adminpass` varchar(50) default NULL,
  `gender` varchar(50) default NULL,
  `email` varchar(100) default NULL,
  `phone` varchar(20) default NULL,
  `city` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_admin` */

insert into `m_admin` (`id`,`adminid`,`adminname`,`adminpass`,`gender`,`email`,`phone`,`city`) values (1,'admin','priya','admin','female','priya@gmail.com','9876787678','bangaloree');

/*Table structure for table `m_attackers_ip` */

DROP TABLE IF EXISTS `m_attackers_ip`;

CREATE TABLE `m_attackers_ip` (
  `id` int(11) NOT NULL auto_increment,
  `hacked_userid` varchar(50) default NULL,
  `ip_address` varchar(50) default NULL,
  `status` varchar(30) default 'active',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_attackers_ip` */

insert into `m_attackers_ip` (`id`,`hacked_userid`,`ip_address`,`status`) values (1,'nisi','192.168.1.11','active');
insert into `m_attackers_ip` (`id`,`hacked_userid`,`ip_address`,`status`) values (2,'nisi','192.168.1.11','active');

/*Table structure for table `m_file` */

DROP TABLE IF EXISTS `m_file`;

CREATE TABLE `m_file` (
  `file_id` int(11) NOT NULL auto_increment,
  `file_name` varchar(50) default NULL,
  `file_owner` varchar(50) default NULL,
  `file_pass_key` varchar(50) default NULL,
  PRIMARY KEY  (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_file` */

insert into `m_file` (`file_id`,`file_name`,`file_owner`,`file_pass_key`) values (1,'css style.txt','nisi','4LsjK2Eh');
insert into `m_file` (`file_id`,`file_name`,`file_owner`,`file_pass_key`) values (2,'css style.txt','nisi','FH7GgDEY');
insert into `m_file` (`file_id`,`file_name`,`file_owner`,`file_pass_key`) values (3,'product.txt','nisi','d0Lr5knq');
insert into `m_file` (`file_id`,`file_name`,`file_owner`,`file_pass_key`) values (4,'product.txt','nisi','duZYYGxH');
insert into `m_file` (`file_id`,`file_name`,`file_owner`,`file_pass_key`) values (5,'blockchain.txt','nisi','ZE57cnzk');

/*Table structure for table `m_user` */

DROP TABLE IF EXISTS `m_user`;

CREATE TABLE `m_user` (
  `u_id` int(10) NOT NULL auto_increment,
  `u_user` varchar(50) default NULL,
  `u_pass` varchar(50) default NULL,
  `u_name` varchar(50) default NULL,
  `u_city` varchar(50) default NULL,
  `u_state` varchar(50) default NULL,
  `u_email` varchar(50) default NULL,
  PRIMARY KEY  (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_user` */

insert into `m_user` (`u_id`,`u_user`,`u_pass`,`u_name`,`u_city`,`u_state`,`u_email`) values (1,'null','null','null','null','null','null');
insert into `m_user` (`u_id`,`u_user`,`u_pass`,`u_name`,`u_city`,`u_state`,`u_email`) values (2,'priya','priya','priya','blr','ka','priya@dhsinformatics.com');
insert into `m_user` (`u_id`,`u_user`,`u_pass`,`u_name`,`u_city`,`u_state`,`u_email`) values (3,'anu','anu','anu','blr','ka','priya@dhsinformatics.com');
insert into `m_user` (`u_id`,`u_user`,`u_pass`,`u_name`,`u_city`,`u_state`,`u_email`) values (4,'subham191','Subham@9435','subham','bangalore','karnataka','subhamprasad191@gmail.com');
insert into `m_user` (`u_id`,`u_user`,`u_pass`,`u_name`,`u_city`,`u_state`,`u_email`) values (5,'rtfgr','rgtr','dfdr','rtr','rt','priya@dhsinformatics.com');
insert into `m_user` (`u_id`,`u_user`,`u_pass`,`u_name`,`u_city`,`u_state`,`u_email`) values (6,'naveen','naveen','naveen','blr','ka','priya@dhsinformatics.com');
insert into `m_user` (`u_id`,`u_user`,`u_pass`,`u_name`,`u_city`,`u_state`,`u_email`) values (7,'nisi','nisi','nisi','blr','ka','priya@dhsinformatics.com');

/*Table structure for table `table_fs` */

DROP TABLE IF EXISTS `table_fs`;

CREATE TABLE `table_fs` (
  `id` int(10) NOT NULL auto_increment,
  `ip_address` varchar(100) NOT NULL,
  `username` varchar(150) NOT NULL,
  `failed_attempt` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `table_fs` */

insert into `table_fs` (`id`,`ip_address`,`username`,`failed_attempt`) values (1,'192.168.1.11','nisi',5);

/*Table structure for table `table_ft` */

DROP TABLE IF EXISTS `table_ft`;

CREATE TABLE `table_ft` (
  `id` int(10) NOT NULL auto_increment,
  `username` varchar(150) NOT NULL,
  `failed_attempt` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `table_ft` */

insert into `table_ft` (`id`,`username`,`failed_attempt`) values (1,'naveen',0);
insert into `table_ft` (`id`,`username`,`failed_attempt`) values (2,'nisi',0);

/*Table structure for table `table_w` */

DROP TABLE IF EXISTS `table_w`;

CREATE TABLE `table_w` (
  `id` int(10) NOT NULL auto_increment,
  `ip_address` varchar(100) NOT NULL,
  `username` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `table_w` */

insert into `table_w` (`id`,`ip_address`,`username`) values (1,'192.168.1.11','nisi');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema shop_online
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ shop_online;
USE shop_online;

--
-- Table structure for table `shop_online`.`category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL auto_increment,
  `cat_name` varchar(20) default NULL,
  `cat_desc` varchar(20) default NULL,
  PRIMARY KEY  (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_online`.`category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`cat_id`,`cat_name`,`cat_desc`) VALUES 
 (1,'Electronics','Usable product'),
 (2,'Cosmetics','Womens product'),
 (3,'Stationary','Student product'),
 (4,'Habijabi','ssadcsadcsdc ');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Table structure for table `shop_online`.`product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL auto_increment,
  `subcat_id` int(11) default NULL,
  `pro_name` varchar(20) default NULL,
  `pro_qty` int(11) default NULL,
  `pro_price` float default NULL,
  `pro_url` varchar(30) default NULL,
  `pro_desc` varchar(30) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_product` (`subcat_id`),
  CONSTRAINT `fk_product` FOREIGN KEY (`subcat_id`) REFERENCES `subcategory` (`subcat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_online`.`product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`,`subcat_id`,`pro_name`,`pro_qty`,`pro_price`,`pro_url`,`pro_desc`) VALUES 
 (2,6,'Gel Pen',150,20,'images.jpg','German jell pen'),
 (3,2,'LED  television',25,35000,'dellPc.jpg','vule disi'),
 (4,4,'Lios',23,125,'lipstick.jpg','Normal Black'),
 (5,5,'PaperClip',20,150,'paperclip.jpg','Good'),
 (6,4,'ppp',100,50,'paperclip.jpg','best'),
 (7,4,'Sunglass',5,300,'sunglass.jpg','Eriner Sunglass'),
 (8,7,'Mukut',1,100,'mukut-500x500.png','Intisha');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Table structure for table `shop_online`.`subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE `subcategory` (
  `subcat_id` int(11) NOT NULL auto_increment,
  `cat_id` int(11) default NULL,
  `subcat_name` varchar(20) default NULL,
  `subcat_desc` varchar(25) default NULL,
  PRIMARY KEY  (`subcat_id`),
  KEY `fk_subcategory` (`cat_id`),
  CONSTRAINT `fk_subcategory` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_online`.`subcategory`
--

/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` (`subcat_id`,`cat_id`,`subcat_name`,`subcat_desc`) VALUES 
 (1,1,'Computer','Personal Computer'),
 (2,1,'TV','Watching television'),
 (3,1,'Calculator','Calculative machine'),
 (4,2,'Lipstick','lips color'),
 (5,3,'Book','Class 9-11'),
 (6,3,'Pen','writing pen'),
 (7,4,'Gold','Gold');
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

# ************************************************************
# Sequel Pro SQL dump
# Версия 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Адрес: localhost (MySQL 5.7.26)
# Схема: auto_db
# Время создания: 2021-09-05 21:02:44 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Дамп таблицы products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`)
VALUES
	(55,'Citroen','Citroen berlingo','http://192.168.1.155/uploads/1630874674citroenBerlingo.png',20000),
	(56,'Mazda','Mazda CX','http://192.168.1.155/uploads/1630874704[PROXY]',30000),
	(57,'BMW','BMW X3','http://192.168.1.155/uploads/1630874999[PROXY]',40000),
	(58,'Citroen','Citroen berlingo','http://192.168.1.155/uploads/1630875159citroenBerlingo.png',20000),
	(59,'Tesla','Tesla ModelX','http://192.168.1.155/uploads/1630875230teslaModeLX.png',40500),
	(60,'Skoda','Skoda Fabia','http://192.168.1.155/uploads/1630875263skodaFabia.png',40500),
	(61,'Renault','Renault Duster','http://192.168.1.155/uploads/1630875294renaultDuster.png',21000),
	(62,'BMW','BMW 5','http://192.168.1.155/uploads/1630875316bmw5.png',35000),
	(63,'Citroen','Citroen AC','http://192.168.1.155/uploads/1630875344citroenAc.png',25000),
	(64,'Cooper','Cooper','http://192.168.1.155/uploads/1630875403cooper.png',25000),
	(65,'Lexuss','Lexuss 20','http://192.168.1.155/uploads/1630875423lexuss20.png',36000),
	(66,'Mazda','Mazda CX','http://192.168.1.155/uploads/1630875444mazdaCx.png',36000),
	(67,'Mitsubishi','Mitsubishi 200','http://192.168.1.155/uploads/1630875468mitsubishi200.png',26000),
	(68,'Opel','Opel Astra','http://192.168.1.155/uploads/1630875491opelAstra.png',18000),
	(69,'Porhe','Porhe Cayen','http://192.168.1.155/uploads/1630875513porheCayen.png',42000),
	(70,'Renault','Renault Duster','http://192.168.1.155/uploads/1630875707renaultDuster.png',16000);

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

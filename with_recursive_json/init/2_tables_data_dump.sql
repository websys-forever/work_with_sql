-- MySQL dump 10.13  Distrib 8.0.17, for Linux (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Dumping data for table `abandoned_carts`
--

LOCK TABLES `abandoned_carts` WRITE;
/*!40000 ALTER TABLE `abandoned_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `abandoned_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,1,'2019-07-30 19:00:00','2019-07-30 19:00:00'),(3,21,'2019-07-30 19:00:00','2019-07-30 19:00:00');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `carts_products`
--

LOCK TABLES `carts_products` WRITE;
/*!40000 ALTER TABLE `carts_products` DISABLE KEYS */;
INSERT INTO `carts_products` VALUES (9,5,26509),(12,3,13156),(13,8,25642),(13,29,2755),(14,19,21720),(6,18,13404),(5,10,10924),(3,24,4),(4,12,21332),(10,13,21482),(6,5,1984),(15,14,18148),(6,8,20061),(15,25,17331),(16,27,917),(14,25,6617),(6,16,11799),(18,26,8478),(6,12,5730),(4,19,751),(17,9,29253),(6,12,26543),(7,29,6017),(15,24,18085),(8,29,4674),(9,20,21289),(17,21,20058),(4,20,1326),(1,9,17432),(4,17,14190),(7,12,10096),(14,1,8247),(8,13,28459),(9,3,5418),(6,10,25304),(20,30,22057),(11,14,18863),(17,12,23503),(1,6,25198),(9,16,10258),(18,19,11912),(5,5,8458),(9,3,10567),(6,28,22708),(18,3,24452),(3,1,5),(12,3,29681),(11,17,19824),(19,20,12201),(22,1,5);
/*!40000 ALTER TABLE `carts_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Комплектующие для ПК','pc',0),(2,'Переферия','pereferia',0),(3,'Ноутбуки','laptops',0),(4,'Телефоны/Смартфоны','phones',0),(5,'Материнские платы','motherboards',1),(6,'Процессоры','cpu',1),(7,'Оперативная память','memory',1),(8,'Принтеры','printers',2),(9,'Источники бесперебойного питания','apc',2),(10,'Офисные ноутбуки','office_laptops',3),(11,'Игровые ноутбуки','gamers_laptops',3),(12,'Высокопроизводительные ноутбуки','high_end_laptops',3),(21,'DDR3','ddr3',7),(22,'DDR4','ddr4',7),(23,'i3 3000 1th','i3_3000_1th',6),(24,'i7_3000_1th','i7_3000_1th',6);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `categories_attributes`
--

LOCK TABLES `categories_attributes` WRITE;
/*!40000 ALTER TABLE `categories_attributes` DISABLE KEYS */;
INSERT INTO `categories_attributes` VALUES (1,'et do','p'),(2,'in','sint o'),(4,'test_attr','test_attr_value'),(5,'cupi','ullamco l'),(5,'test_attr','fugia'),(5,'test_attr','test_attr_value'),(6,'in v','et dolore'),(7,'co','quis no'),(7,'Duis ','dolor in '),(7,'ips','paria'),(9,'E','in culpa '),(10,'dolor','deser'),(10,'ei','Du'),(10,'et d','labo'),(10,'mol','aliqu'),(10,'s','p'),(11,'ex ea','i');
/*!40000 ALTER TABLE `categories_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'oremipsumdo',3),(2,'emipsumdo',2),(3,'do',7),(4,'orLoremi',8),(5,'olorLoremips',4),(6,'ipsum',5),(7,'olorLoremipsu',7),(8,'L',10),(9,'lorLor',5),(10,'mipsumdolorLor',6),(11,'Москва',11),(12,'Санкт-Петербург',12),(13,'Ульяновск',13),(14,'Владимир',14),(15,'Екатеринбург',15),(16,'Курган',16),(17,'Тюмень',17),(18,'Омск',18),(19,'Томск',19),(20,'Иркутск',20);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Россия'),(2,'Казахстан'),(3,'Белоруссия'),(4,'Украина'),(5,'Бразилия'),(6,'Аргентина'),(7,'Германия'),(8,'Франция'),(9,'Англия'),(10,'Китай'),(11,'Япония'),(12,'Корея'),(21,'PSLORE'),(22,'OREMIP'),(23,'MIPS'),(24,'IPSLOREM'),(25,'MIPS'),(26,'LOREMI'),(27,'OREMIPS'),(28,'LOREMIPS'),(29,'LOREMIPS'),(30,'PSLOREMI');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'m.Lorem ipsum dolor s','1','mipsumdolorLore',2831007.34,3,'ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut'),(2,'veniam, quis nostrud exercitat','2','mdolor',2972067.91,6,'consequat. Duis aute irure dolor in reprehenderit in vo'),(3,'nisi ut aliquip ','3','oremips',9406288.40,3,'ex ea commodo consequat. Duis aute irure dolor in reprehenderit in volupt'),(4,'id est labo','4','ipsum',7840652.42,6,'veniam, quis no'),(5,'sed do e','5','lorLorem',6925928.92,4,'eu fugiat nulla pariatur. Excepteur sint occaec'),(6,'in voluptate velit esse cil','6','ipsum',3131477.64,1,'reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excep'),(7,'eu fugiat nulla pariatur. Exc','7','dolorLo',8475587.50,3,'dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat n'),(8,'anim id est','8','mdolorLoremips',8307411.90,3,'minim veniam, quis nostrud exercitation ullamco'),(9,'in voluptate velit esse cillum','9','sumdo',1827090.60,7,'Duis aute irure dolo'),(10,'proident, sunt','10','psumdolorLorem',2325624.91,5,'dolor in reprehenderit in volup'),(11,'commodo consequat. Duis aute i','11','lorLorem',75933.20,7,'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu '),(12,'veniam, quis nostrud ','12','lorLoremips',4292469.84,5,'in voluptate velit esse cillum do'),(13,'in voluptate velit esse ci','13','rLoremipsumdolo',5314065.21,1,'non proident, sunt in culpa qui officia deserunt'),(14,'borum.Lorem','14','dolorLor',5315041.17,7,'elit, sed do eiusmod tempor in'),(15,'adipisci','15','rLoremipsumdol',1138183.50,10,'esse cillum dolore eu fu'),(16,'ipsum dolor sit amet,','16','dolorLor',4189116.21,9,'laboris nisi ut aliquip ex ea c'),(17,'adipiscing elit, sed','17','psumdolo',3810401.75,9,'in voluptate velit esse cillum dolore eu fugiat nulla pariatu'),(18,'amet, c','18','emipsumdolo',3826688.80,10,'velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,'),(19,'laboris nisi ut','19','mdolor',4106023.17,8,'officia deserunt mollit anim id est laborum.Lo'),(20,'non pr','20','rLoremipsu',6038141.85,7,'culpa qui officia deserunt mol');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES (1,'lorLoremi',5,'ut labore et do'),(2,'olorLor',9,'esse cillum dolore e'),(3,'emipsumdo',8,'quis nostrud exe'),(4,'remipsum',9,'deserunt mol'),(5,'olorL',9,'sit amet, c'),(6,'olorLoremips',8,'consequat. Duis '),(7,'olorLoremipsu',10,'officia deser'),(8,'orLoremipsumdo',5,'occaecat cup'),(9,'psumdolorLo',8,'Excepteur s'),(10,'dolorLorem',8,'aute irure dolor in');
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,10,1,6439868.37,2595507.12,5472782.76,1125391.15,'ул. Новый адрес доставки, д. 10, кв. 21','1999-12-31 19:00:00','1999-12-31 19:00:00'),(2,6,2,8478884.32,8914121.55,5589549.20,315330.58,'exercitation ullamco laboris nis','1999-12-31 19:00:00','1999-12-31 19:00:00'),(3,1,3,5441677.41,6897135.80,39075.97,4171397.91,'commodo consequat. Duis aute irure dolo','1999-12-31 19:00:00','1999-12-31 19:00:00'),(4,16,4,3346491.81,1738354.15,1586529.81,3994841.82,'ad minim veniam, quis nostrud exercitat','1999-12-31 19:00:00','1999-12-31 19:00:00'),(5,19,5,8554057.11,5727344.60,93889.71,1132850.11,'exercitation ullamc','1999-12-31 19:00:00','1999-12-31 19:00:00'),(6,18,6,6951554.70,4981068.76,2133147.70,7257107.17,'velit esse cillum dolore eu fugiat nulla pariatur. Exce','1999-12-31 19:00:00','1999-12-31 19:00:00'),(7,16,7,1968395.18,6572834.40,7439242.21,2931431.80,'commodo consequat. Duis aute irure dolor in reprehenderit in volupt','1999-12-31 19:00:00','1999-12-31 19:00:00'),(8,11,8,670986.42,1514176.54,5807754.79,4042772.86,'cupidatat non proident, sunt in culpa qui officia deserunt mollit a','1999-12-31 19:00:00','1999-12-31 19:00:00'),(9,6,9,8326154.28,9484758.80,3013103.70,3531176.75,'ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ull','1999-12-31 19:00:00','1999-12-31 19:00:00'),(10,16,10,7028039.30,3207324.20,5856215.98,2778152.68,'ut labore et dolore magna','1999-12-31 19:00:00','1999-12-31 19:00:00'),(11,3,11,3250824.90,3929197.19,4546291.45,2999210.13,'ve','1999-12-31 19:00:00','1999-12-31 19:00:00'),(12,11,12,2519722.55,4598745.85,5279538.34,2035149.96,'mollit anim id est laborum.Lorem ipsum do','1999-12-31 19:00:00','1999-12-31 19:00:00'),(13,10,13,6785274.83,4014725.87,7098421.99,6048043.40,'nulla pariatur. Excepteur sint occaecat cupidatat non proident,','1999-12-31 19:00:00','1999-12-31 19:00:00'),(14,17,14,1541029.45,3478345.23,4898193.50,8801634.57,'dolore eu fugiat nulla pariatur. Excep','1999-12-31 19:00:00','1999-12-31 19:00:00'),(15,7,15,5242307.31,7292346.48,4793173.40,3442250.00,'tempor incid','1999-12-31 19:00:00','1999-12-31 19:00:00'),(16,20,16,3163782.00,9828339.41,8963425.90,2995122.30,'in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat','1999-12-31 19:00:00','1999-12-31 19:00:00'),(17,11,17,1476239.62,4823140.93,4573226.26,6152345.30,'i','1999-12-31 19:00:00','1999-12-31 19:00:00'),(18,8,18,5027898.30,7066724.70,5385879.28,4352548.75,'mollit anim id est laborum.L','1999-12-31 19:00:00','1999-12-31 19:00:00'),(19,5,19,4083310.26,2708923.68,5295157.88,4638655.30,'sint occaecat cupidatat non proi','1999-12-31 19:00:00','1999-12-31 19:00:00'),(20,4,20,1102892.35,2038949.20,151849.33,328950.61,'dolor sit amet, ','1999-12-31 19:00:00','1999-12-31 19:00:00'),(21,16,21,8538740.22,7781225.18,7984608.66,8148013.30,'sit amet','1999-12-31 19:00:00','1999-12-31 19:00:00'),(22,10,22,2577445.19,2703041.37,7997456.44,6137871.75,'commodo consequat. Duis','1999-12-31 19:00:00','1999-12-31 19:00:00'),(23,19,23,5778241.24,2643910.58,5572062.99,1406086.73,'consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','1999-12-31 19:00:00','1999-12-31 19:00:00'),(24,11,24,3634817.36,4953543.50,3911075.80,566306.77,'enim ad minim veniam, quis nostrud ex','1999-12-31 19:00:00','1999-12-31 19:00:00'),(25,20,25,6231808.44,7764748.40,2929502.96,8588135.28,'a','1999-12-31 19:00:00','1999-12-31 19:00:00'),(26,2,26,6371954.87,2529547.98,2534328.30,3696997.74,'consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat ','1999-12-31 19:00:00','1999-12-31 19:00:00'),(27,5,27,9817581.93,811246.44,528300.53,6951040.99,'cupidatat non proident,','1999-12-31 19:00:00','1999-12-31 19:00:00'),(28,7,28,1620070.54,6452151.63,5031939.79,5170880.37,'in culpa qui officia deserunt mollit anim id est laborum.Lorem ip','1999-12-31 19:00:00','1999-12-31 19:00:00'),(29,13,29,4903609.90,5926058.23,7538631.49,5009389.63,'pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui ','1999-12-31 19:00:00','1999-12-31 19:00:00'),(30,11,30,4924548.55,2936645.69,5500777.59,4122514.82,'ex ea commodo consequat. Duis aute ','1999-12-31 19:00:00','1999-12-31 19:00:00'),(31,17,31,1745325.59,8137277.69,2690724.60,2638443.87,'sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dol','1999-12-31 19:00:00','1999-12-31 19:00:00'),(32,6,32,9441935.30,1224750.70,1488403.10,4421297.86,'elit, sed do eiusmod tempor incididunt ut labore ','1999-12-31 19:00:00','1999-12-31 19:00:00'),(33,20,33,8406537.53,598933.80,3718272.10,2986800.60,'nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor','1999-12-31 19:00:00','1999-12-31 19:00:00'),(34,2,34,11878.10,5282195.70,5691417.10,1351273.16,'ipsum d','1999-12-31 19:00:00','1999-12-31 19:00:00'),(35,16,35,9671748.70,4857002.53,8704302.58,8581557.44,'qui officia deserunt mollit anim id est laborum.Lorem ipsum do','1999-12-31 19:00:00','1999-12-31 19:00:00'),(36,15,36,5161799.26,5806981.59,8403930.42,8362356.82,'ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostr','1999-12-31 19:00:00','1999-12-31 19:00:00'),(37,11,37,1957631.47,6836236.35,5149826.84,6508793.66,'non proident, sunt in culpa qui officia deserunt mollit anim ','1999-12-31 19:00:00','1999-12-31 19:00:00'),(38,16,38,6302109.56,1493618.48,2786476.59,5025780.48,'inc','1999-12-31 19:00:00','1999-12-31 19:00:00'),(39,5,39,9731460.47,3743140.85,5085587.29,52188.94,'proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem','1999-12-31 19:00:00','1999-12-31 19:00:00'),(40,6,40,5869803.18,998657.83,7525664.40,9826573.70,'culpa qui officia de','1999-12-31 19:00:00','1999-12-31 19:00:00'),(41,10,41,1444299.46,9580389.59,7047201.86,6672570.70,'do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut','1999-12-31 19:00:00','1999-12-31 19:00:00'),(42,5,42,8678221.60,9552828.00,3954888.15,3925897.26,'deserunt mollit anim','1999-12-31 19:00:00','1999-12-31 19:00:00'),(43,3,43,5486797.71,9468011.20,8234018.65,4711230.30,'ut ','1999-12-31 19:00:00','1999-12-31 19:00:00'),(44,8,44,3230798.30,6665098.90,7206422.50,4526036.72,'incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, q','1999-12-31 19:00:00','1999-12-31 19:00:00'),(45,6,45,9175354.75,5466652.70,2672014.81,3699796.35,'elit, sed do eiusmod tempor incididunt u','1999-12-31 19:00:00','1999-12-31 19:00:00'),(46,5,46,2256627.33,3863963.75,3465184.63,8970859.36,'mollit anim id est laborum.Lorem ip','1999-12-31 19:00:00','1999-12-31 19:00:00'),(47,6,47,6276514.67,9098219.99,3701018.15,5659495.36,'et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco la','1999-12-31 19:00:00','1999-12-31 19:00:00'),(48,15,48,4225620.65,3921274.40,7894506.62,3214577.29,'qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet','1999-12-31 19:00:00','1999-12-31 19:00:00'),(49,3,49,1077365.80,8259225.17,1606599.62,7272597.97,'nisi ut aliquip ex ea commodo consequat. Duis aute irure ','1999-12-31 19:00:00','1999-12-31 19:00:00'),(50,11,50,101106.00,5503937.82,304211.72,791593.41,'ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod','1999-12-31 19:00:00','1999-12-31 19:00:00'),(51,15,1,2040.00,764.00,120.00,1396.00,'esse cillum dolore eu fu','2019-08-03 08:22:46','2019-08-03 08:22:46'),(55,15,1,2040.00,764.00,100.00,1376.00,'esse cillum dolore eu fu','2019-08-03 10:19:52','2019-08-03 10:19:52'),(56,15,1,2040.00,764.00,100.00,1376.00,'esse cillum dolore eu fu','2019-08-03 10:43:29','2019-08-03 10:43:29'),(57,15,1,2040.00,764.00,100.00,1376.00,'esse cillum dolore eu fu','2019-08-03 10:47:40','2019-08-03 10:47:40'),(58,15,1,1700.00,700.00,100.00,1100.00,'esse cillum dolore eu fu','2019-08-03 11:04:30','2019-08-03 11:04:30');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orders_products`
--

LOCK TABLES `orders_products` WRITE;
/*!40000 ALTER TABLE `orders_products` DISABLE KEYS */;
INSERT INTO `orders_products` VALUES (10,1,7568),(14,1,10490),(27,1,622),(32,1,15280),(48,1,27034),(55,1,8),(56,1,8),(57,1,8),(58,1,5),(14,2,4299),(26,2,4990),(43,2,29207),(18,3,29899),(21,3,21430),(43,3,23716),(48,3,31445),(3,4,16625),(6,4,6840),(7,4,13945),(7,4,32666),(20,4,14696),(28,4,6385),(40,4,31615),(41,4,5757),(42,4,1102),(46,4,28281),(3,5,11155),(8,5,4979),(22,5,7978),(45,5,22718),(35,6,24267),(42,6,18538),(27,7,3601),(31,7,4196),(39,7,626),(39,7,25258),(41,7,3015),(49,7,11901),(9,8,8141),(23,8,30983),(38,8,4864),(41,8,20634),(44,8,9398),(17,9,26643),(20,9,9394),(24,9,17395),(24,9,19269),(40,9,14783),(41,9,27026),(2,10,1126),(6,10,25105),(9,10,15678),(9,10,22375),(29,10,28846),(50,10,31305),(23,11,5463),(45,11,28579),(1,12,19458),(18,12,31959),(20,12,14735),(39,12,10849),(6,13,28398),(21,13,355),(35,13,10745),(30,14,15526),(34,14,19276),(37,14,4661),(40,14,27942),(46,14,21921),(19,16,8976),(28,16,9568),(36,16,23836),(50,16,8144),(2,17,31129),(14,17,24102),(1,18,1819),(8,18,32687),(33,18,19846),(39,18,2395),(55,18,2),(56,18,2),(57,18,2),(20,19,24079),(29,19,15325),(29,19,16660),(30,19,1471),(16,20,869),(28,20,28492),(49,20,14368),(25,21,3972),(33,21,31779),(44,21,32602),(46,21,31289),(16,22,31160),(29,22,22922),(37,22,10201),(50,22,7172),(10,24,223),(28,24,14408),(35,24,23119),(45,24,29738),(50,24,14649),(55,24,4),(56,24,4),(57,24,4),(58,24,4),(10,25,21572),(10,25,21939),(13,25,22521),(17,25,25727),(9,26,2219),(11,26,31839),(20,26,16171),(40,26,21566),(5,27,4238),(26,27,3965),(32,27,26661),(43,27,2540),(6,28,3813),(7,28,6078),(25,28,4225),(26,28,23782),(29,28,6243),(37,28,31771),(20,29,8675),(21,30,19717),(26,30,10710),(34,30,13956),(35,30,22991),(36,30,22917),(44,30,17318);
/*!40000 ALTER TABLE `orders_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'ОЗУ Hynix 2200 8 Гб','hunix_2200_8_gb',11719,22,4,100.00,20,'1999-12-31 19:00:00','1999-12-31 19:00:00','','picture2.jpg'),(2,'i7 870 3000 Гц','i7_870_3000_gz',5775,24,9,10000.00,88,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(3,'in culpa qui','',32507,6,10,6733718.44,-45,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(4,'sint occaecat cu','',27017,2,4,9713985.32,36,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(5,'adi','',17008,NULL,7,6382323.36,-93,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(6,'in reprehen','',15325,NULL,5,7178946.49,-105,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(7,'ea commodo c','',4621,NULL,6,2212347.28,-24,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(8,'do eiusm','',29843,1,7,9352351.57,110,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(9,'nisi ','',2440,11,6,4371503.47,11,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(10,'cillu','',5788,9,6,3068162.57,44,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(11,'nostrud exercitati','',4555,12,10,3615749.38,-108,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(12,'u','',12014,8,4,3230842.49,-38,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(13,'eu fugiat n','',21469,5,5,2702793.12,-115,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(14,'Duis ','',5437,NULL,7,5974864.14,101,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(15,'E','',391,NULL,2,7438593.72,-18,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(16,'qui','',22007,NULL,9,4057316.50,-103,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(17,'dese','',27590,12,5,2060987.40,-81,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(18,'u','',26701,11,9,20.00,10,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(19,'quis','',19857,4,5,6896538.13,-115,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(20,'Except','',814,NULL,6,5067910.58,51,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(21,'in voluptate velit e','',17217,NULL,10,1041166.65,-51,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(22,'elit, sed do eiu','',30778,4,1,2261155.40,59,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(23,'officia deserunt mol','',7502,10,2,9192053.34,17,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(24,'deseru','',29676,8,2,300.00,50,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(25,'mollit anim id ','',5915,NULL,8,9697779.87,23,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(26,'es','',24097,NULL,2,9847923.29,-60,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(27,'cupidat','',30863,11,7,395604.38,-65,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(28,'Duis','',22149,NULL,7,3495018.88,-5,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(29,'sint occaecat','',19357,8,4,9869252.28,21,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(30,'n','',27737,11,7,1897991.13,-96,'1999-12-31 19:00:00','1999-12-31 19:00:00','','');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products_attributes`
--

LOCK TABLES `products_attributes` WRITE;
/*!40000 ALTER TABLE `products_attributes` DISABLE KEYS */;
INSERT INTO `products_attributes` VALUES (1,'Объем','8 Гб'),(1,'Частота','2200 Гц'),(2,'Сокет','478'),(2,'Частота','3000 Гц'),(19,'veli','incididun'),(20,'n','sunt in '),(20,'qu','amet, '),(23,'n','minim v'),(24,'exer','deseru'),(26,'ani','sun'),(27,'in ','U'),(27,'m','ul'),(29,'Dui','ut labo'),(30,'l','proide');
/*!40000 ALTER TABLE `products_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products_images`
--

LOCK TABLES `products_images` WRITE;
/*!40000 ALTER TABLE `products_images` DISABLE KEYS */;
INSERT INTO `products_images` VALUES (1,'pic1.jpg',1),(1,'picture2.jpg',1),(2,'id est l',1),(2,'quis nostr',1),(3,'i',1),(4,'a',1),(5,'id',1),(5,'moll',1),(6,'amet, c',1),(6,'enim ad m',1),(8,'cup',1),(8,'volup',1),(10,'veniam',1),(11,'adi',1),(11,'Ut eni',1),(13,'amet,',1),(15,'in vol',1),(15,'ull',1),(16,'commodo',1),(16,'sin',1),(18,'e',1),(18,'volupta',1),(19,'nisi ',1),(19,'nostrud ex',1),(21,'non proi',1),(22,'amet, cons',1),(22,'re',1),(24,'cupidata',1),(28,'sun',1),(29,'quis',1),(29,'tem',1);
/*!40000 ALTER TABLE `products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products_prices_history`
--

LOCK TABLES `products_prices_history` WRITE;
/*!40000 ALTER TABLE `products_prices_history` DISABLE KEYS */;
INSERT INTO `products_prices_history` VALUES (28,16,4387506.41,-95,'1999-12-31 19:00:00'),(1,2,1615858.72,43,'1999-12-31 19:00:00'),(25,3,5177779.44,-15,'1999-12-31 19:00:00'),(24,8,3436327.28,38,'1999-12-31 19:00:00'),(20,14,6044838.84,-96,'1999-12-31 19:00:00'),(19,7,8987606.48,23,'1999-12-31 19:00:00'),(1,20,7389670.48,108,'1999-12-31 19:00:00'),(15,15,2218020.54,-82,'1999-12-31 19:00:00'),(19,13,4469039.81,-78,'1999-12-31 19:00:00'),(13,4,3727004.94,88,'1999-12-31 19:00:00'),(1,10,7565747.10,-112,'1999-12-31 19:00:00'),(5,6,3183233.74,118,'1999-12-31 19:00:00'),(11,12,6356213.79,-29,'1999-12-31 19:00:00'),(3,20,2768877.60,17,'1999-12-31 19:00:00'),(25,7,1704583.11,58,'1999-12-31 19:00:00'),(1,1,6437080.12,15,'1999-12-31 19:00:00'),(13,1,5052959.14,77,'1999-12-31 19:00:00'),(3,12,7279682.31,93,'1999-12-31 19:00:00'),(11,14,6911880.20,48,'1999-12-31 19:00:00'),(6,14,8076001.50,-28,'1999-12-31 19:00:00'),(22,19,317388.23,-24,'1999-12-31 19:00:00'),(18,19,8898777.69,-50,'1999-12-31 19:00:00'),(26,7,6783116.18,-89,'1999-12-31 19:00:00'),(27,6,7089102.18,18,'1999-12-31 19:00:00'),(22,9,8383159.47,-21,'1999-12-31 19:00:00'),(4,10,8977419.84,20,'1999-12-31 19:00:00'),(20,8,781129.90,-3,'1999-12-31 19:00:00'),(24,20,6088893.16,80,'1999-12-31 19:00:00'),(23,13,9371688.12,-18,'1999-12-31 19:00:00'),(20,5,7942180.47,113,'1999-12-31 19:00:00'),(11,10,8111791.24,-117,'1999-12-31 19:00:00'),(27,3,8284461.14,-71,'1999-12-31 19:00:00'),(5,7,9795234.82,125,'1999-12-31 19:00:00'),(30,9,1792917.75,-111,'1999-12-31 19:00:00'),(24,3,3046399.74,62,'1999-12-31 19:00:00'),(11,13,4316513.70,92,'1999-12-31 19:00:00'),(30,13,3478149.23,-38,'1999-12-31 19:00:00'),(8,9,1566282.72,74,'1999-12-31 19:00:00'),(2,8,4625340.48,48,'1999-12-31 19:00:00'),(22,1,9968459.40,-4,'1999-12-31 19:00:00'),(24,17,6775342.28,-125,'1999-12-31 19:00:00'),(27,12,5848115.69,55,'1999-12-31 19:00:00'),(10,11,4643352.77,-23,'1999-12-31 19:00:00'),(23,2,3891855.23,64,'1999-12-31 19:00:00'),(14,9,5409781.84,60,'1999-12-31 19:00:00'),(28,13,4314821.24,-93,'1999-12-31 19:00:00'),(14,15,295501.33,-63,'1999-12-31 19:00:00'),(27,12,5847760.40,-67,'1999-12-31 19:00:00'),(30,10,4852161.60,-63,'1999-12-31 19:00:00'),(8,13,4256648.38,-43,'1999-12-31 19:00:00');
/*!40000 ALTER TABLE `products_prices_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products_providers`
--

LOCK TABLES `products_providers` WRITE;
/*!40000 ALTER TABLE `products_providers` DISABLE KEYS */;
INSERT INTO `products_providers` VALUES (6,1),(13,1),(17,3),(2,5),(17,7),(19,7),(3,9),(7,9),(9,9),(10,9),(9,17),(5,19),(10,19),(19,19),(8,20),(13,21),(14,21),(8,23),(10,24),(16,24),(12,25),(18,25),(2,26),(16,26),(19,26),(8,28),(19,28),(20,28),(3,30),(17,30);
/*!40000 ALTER TABLE `products_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products_shops_quantity`
--

LOCK TABLES `products_shops_quantity` WRITE;
/*!40000 ALTER TABLE `products_shops_quantity` DISABLE KEYS */;
INSERT INTO `products_shops_quantity` VALUES (16,1,11162),(23,1,16136),(6,2,4225),(11,2,19378),(6,3,17876),(13,3,8723),(21,3,28666),(14,4,12910),(17,4,25194),(18,4,5898),(22,4,6494),(25,4,9582),(12,5,31663),(13,5,1586),(14,5,12095),(11,6,9951),(17,6,27135),(20,6,16971),(1,7,32699),(5,7,4046),(20,7,16639),(30,7,5759),(14,8,18235),(21,8,14169),(24,8,20876),(7,9,32132),(19,9,27843),(23,10,16908),(24,10,11620);
/*!40000 ALTER TABLE `products_shops_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (1,'eiusmod t',6,'nulla'),(2,'labori',8,'sint occaecat cupidatat non '),(3,'e',6,'eu fugiat nul'),(4,'labori',4,'amet, consectet'),(5,'do ',5,'proident, sunt i'),(6,'sint ',4,'Duis aute irure'),(7,'veli',9,'magna'),(8,'magn',6,'ullamco laboris nisi ut al'),(9,'adipis',7,'ex ea commodo '),(10,'si',3,'nisi ut aliquip ex ea comm'),(11,'lab',4,'dolor sit '),(12,'do',6,'cill'),(13,'rum.Lorem',1,'cillum dolore eu fugia'),(14,'id es',5,'in'),(15,'ulla',10,'ut labore et dolore magna'),(16,'eiusmod te',10,'sint o'),(17,'dolore ',9,'i'),(18,'n',6,'laboris nisi ut aliquip'),(19,'non proid',3,'um.Lorem ipsum d'),(20,'a',7,'nostrud exercita');
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'dolLo',29),(2,'Lo',30),(3,'Lorem ',29),(4,'dolLorem ipsum',21),(5,'dolLo',29),(6,'ipsu',28),(7,'ipsum dolLorem',24),(8,'ipsum dolLorem',23),(9,'ipsum dolLorem',24),(10,'Lo',27),(11,'Московская область',1),(12,'Ленинградская область',1),(13,'Ульяновская область',1),(14,'Владимирская область',1),(15,'Свердловская область',1),(16,'Курганская область',1),(17,'Тюменская область',1),(18,'Омская область',1),(19,'Томская область',1),(20,'Иркутская область',1);
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Lorem'),(2,'sum'),(3,'rem'),(4,'oremi'),(5,'umLoremips');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,'m.adipiscingelitse',13,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(2,'eu fugiat nulla par',15,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(3,'temporincididuntutlabore e',14,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(4,'sunt in culpa qui officia',13,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(5,'anim id est lab',1,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(6,'fugiat',12,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(7,'ex e',16,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(8,'proident, ',9,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(9,'consequat.',4,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(10,'cupidatat non proident, sunt ',4,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(11,'et dolore magna al',19,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(12,'temporin',4,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(13,'ex ea commodo ',1,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(14,'in reprehenderit in v',7,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(15,'Ut ',14,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(16,'laboris nisi ut aliquip ex',20,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(17,'sint ',16,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(18,'magna aliqua. Ut enim ad',16,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(19,'temporincididuntut',3,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(20,'Duis aute irure dolor in repr',20,'1999-12-31 19:00:00','1999-12-31 19:00:00'),(21,'erwjf',15,'1999-12-31 19:00:00','1999-12-31 19:00:00');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES (1,2,'est laborum.Lor','u','1'),(2,3,'tempor inc','dolor','2'),(3,9,'an','tempor in','3'),(4,10,'eu fugiat nul','anim id','4'),(5,4,'esse cill','in vol','5'),(6,5,'tempor incididun','enim','6'),(7,8,'sint occaecat ','et dolo','7'),(8,5,'lab','t','8'),(9,7,'pariatur. Exce','dolore','9'),(10,6,'labo','exercitati','10');
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'orLorem ipsum','1','excepteur sint occae',5,6,'Excepteur sint occaec','1999-12-31 19:00:00','1999-12-31 19:00:00'),(2,'dolorLorem ip','2','elit, sed',2,10,'sint occaecat c','1999-12-31 19:00:00','1999-12-31 19:00:00'),(3,'ipsum dol','3','qui',5,4,'aute irure dolor in reprehend','1999-12-31 19:00:00','1999-12-31 19:00:00'),(4,'ipsum dolorL','4','ullamco laboris nis',2,9,'aliq','1999-12-31 19:00:00','1999-12-31 19:00:00'),(5,'ipsum ','5','est la',4,4,'in vol','1999-12-31 19:00:00','1999-12-31 19:00:00'),(6,'ipsum ','6','et dol',2,3,'aut','1999-12-31 19:00:00','1999-12-31 19:00:00'),(7,'dolorLor','7','commodo consequat. ',4,5,'aliqu','1999-12-31 19:00:00','1999-12-31 19:00:00'),(8,'ip','8','cillu',1,1,'id est laborum.Lorem i','1999-12-31 19:00:00','1999-12-31 19:00:00'),(9,'dolorLore','9','quis nostrud exerci',4,7,'ullam','1999-12-31 19:00:00','1999-12-31 19:00:00'),(10,'dolor','10','qui officia dese',1,2,'non proident, sunt in culpa ','1999-12-31 19:00:00','1999-12-31 19:00:00'),(11,'ip','11','ullamco laboris ni',1,10,'anim id est laborum.Lorem ipsu','1999-12-31 19:00:00','1999-12-31 19:00:00'),(12,'dolorL','12','non ',2,3,'in voluptate ','1999-12-31 19:00:00','1999-12-31 19:00:00'),(13,'dolorLorem','13','eu fug',3,5,'ir','1999-12-31 19:00:00','1999-12-31 19:00:00'),(14,'olorLorem ip','14','sunt in ',5,7,'laboris nisi u','1999-12-31 19:00:00','1999-12-31 19:00:00'),(15,'Lorem','15','adipisci',5,1,'elit, sed do eius','1999-12-31 19:00:00','1999-12-31 19:00:00'),(16,'ipsum dolorLo','16','ad mini',3,7,'enim ','1999-12-31 19:00:00','1999-12-31 19:00:00'),(17,'dolorLorem','17','exercit',4,4,'dolore ','1999-12-31 19:00:00','1999-12-31 19:00:00'),(18,'rLorem ipsum do','18','i',4,9,'ad minim veniam, quis nostrud ','1999-12-31 19:00:00','1999-12-31 19:00:00'),(19,'ipsum dolor','19','consequat. duis a',2,3,'.Lorem i','1999-12-31 19:00:00','1999-12-31 19:00:00'),(20,'dolorLo','20','velit esse c',2,10,'velit esse c','1999-12-31 19:00:00','1999-12-31 19:00:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-17 13:28:10

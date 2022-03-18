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
INSERT INTO `carts_products` VALUES (3,2,26509),(3,5,13404),(1,3,10924),(3,6,4),(1,4,21332),(1,1,5);
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
INSERT INTO `manufacturers` VALUES (1,'lorLoremi',5,'ut labore et do'),(2,'olorLor',9,'esse cillum dolore e'),(3,'emipsumdo',8,'quis nostrud exe'),(4,'remipsum',9,'deserunt mol'),(5,'olorL',9,'sit amet, c'),(6,'olorLoremips',8,'consequat. Duis '),(7,'olorLoremipsu',10,'officia deser'),(8,'orLoremipsumdo',5,'occaecat cup'),(9,'psumdolorLo',8,'Excepteur s'),(10,'dolorLorem',8,'aute irure dolor in'),(11,'HP',8,'fsdafa4327948'),(12,'MSI',5,'fshhjrr4');
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,10,4,10150.00,0.00,500.00,10650.00,'ул. Новый адрес доставки, д. 10, кв. 21','1999-12-31 19:00:00','1999-12-31 19:00:00'),(2,6,4,70200.00,0.00,1000.00,71200.00,'exercitation ullamco laboris nis','1999-12-31 19:00:00','1999-12-31 19:00:00'),(3,1,4,86000.00,0.00,1000.00,87000.00,'commodo consequat. Duis aute irure dolo','1999-12-31 19:00:00','1999-12-31 19:00:00'),(4,16,4,9255000.00,0.00,10000.00,9265000.00,'ad minim veniam, quis nostrud exercitat','1999-12-31 19:00:00','1999-12-31 19:00:00'),(59,20,1,300.00,0.00,300.00,600.00,'consequat. Duis aute irure dolocommodo ','1999-12-31 19:00:00','1999-12-31 19:00:00');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orders_products`
--

LOCK TABLES `orders_products` WRITE;
/*!40000 ALTER TABLE `orders_products` DISABLE KEYS */;
INSERT INTO `orders_products` VALUES (1,1,10),(1,2,20),(2,3,2),(1,4,1),(3,5,20),(59,5,3),(4,6,1),(2,31,1),(3,32,1),(4,33,3);
/*!40000 ALTER TABLE `orders_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'ОЗУ Hynix 2200 8 Гб','hunix_2200_8_gb',11719,22,4,200.00,10,'1999-12-31 19:00:00','1999-12-31 19:00:00','','picture2.jpg'),(2,'i7 870 3000 Гц','i7_870_3000_gz',5775,24,9,400.00,10,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(3,'ОЗУ Kingston 1333 4 Гб','kingston_1333_4_gb',32507,22,10,100.00,20,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(4,'ОЗУ Kingston 1800 4 Гб','kingston_1800_4_gb',27017,22,4,150.00,20,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(5,'i5 770 3000 Гц','i5_770_3000_gz',17008,24,7,300.00,20,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(6,'Pentium 3 1000 Гц','pentium_3_1000_gz',15325,24,5,9000000.00,20,'1999-12-31 19:00:00','1999-12-31 19:00:00','',''),(31,'Ноутбук HP 6720','hp_6720',32421,12,11,70000.00,10,'1999-12-31 19:00:00','1999-12-31 19:00:00','','picture3.jpg'),(32,'Ноутбук MSI 9990','msi_9990',43246,12,12,80000.00,10,'1999-12-31 19:00:00','1999-12-31 19:00:00','','picture4.jpg'),(33,'Ноутбук HP High 3000','hp_high_3000',13216,12,11,255000.00,10,'1999-12-31 19:00:00','1999-12-31 19:00:00','','pict.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products_attributes`
--

LOCK TABLES `products_attributes` WRITE;
/*!40000 ALTER TABLE `products_attributes` DISABLE KEYS */;
INSERT INTO `products_attributes` VALUES (1,'Объем','8 Гб'),(1,'Частота','2200 Гц'),(2,'Сокет','478'),(2,'Частота','3000 Гц');
/*!40000 ALTER TABLE `products_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products_images`
--

LOCK TABLES `products_images` WRITE;
/*!40000 ALTER TABLE `products_images` DISABLE KEYS */;
INSERT INTO `products_images` VALUES (1,'pic1.jpg',1),(1,'picture2.jpg',1),(2,'id est l',1),(2,'quis nostr',1),(3,'i',1),(4,'a',1),(5,'id',1),(5,'moll',1),(6,'amet, c',1),(6,'enim ad m',1);
/*!40000 ALTER TABLE `products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products_prices_history`
--

LOCK TABLES `products_prices_history` WRITE;
/*!40000 ALTER TABLE `products_prices_history` DISABLE KEYS */;
INSERT INTO `products_prices_history` VALUES (1,2,1615858.72,43,'1999-12-31 19:00:00'),(1,20,7389670.48,108,'1999-12-31 19:00:00'),(1,10,7565747.10,-112,'1999-12-31 19:00:00'),(5,6,3183233.74,118,'1999-12-31 19:00:00'),(3,20,2768877.60,17,'1999-12-31 19:00:00'),(1,1,6437080.12,15,'1999-12-31 19:00:00'),(3,12,7279682.31,93,'1999-12-31 19:00:00'),(6,14,8076001.50,-28,'1999-12-31 19:00:00'),(4,10,8977419.84,20,'1999-12-31 19:00:00'),(5,7,9795234.82,125,'1999-12-31 19:00:00'),(2,8,4625340.48,48,'1999-12-31 19:00:00');
/*!40000 ALTER TABLE `products_prices_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products_providers`
--

LOCK TABLES `products_providers` WRITE;
/*!40000 ALTER TABLE `products_providers` DISABLE KEYS */;
INSERT INTO `products_providers` VALUES (2,2,100.00),(6,1,50.00),(13,1,150.00),(17,1,100.00),(17,2,150.00),(19,2,200.00);
/*!40000 ALTER TABLE `products_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products_shops_quantity`
--

LOCK TABLES `products_shops_quantity` WRITE;
/*!40000 ALTER TABLE `products_shops_quantity` DISABLE KEYS */;
INSERT INTO `products_shops_quantity` VALUES (1,1,300),(1,2,400),(2,2,1000),(1,3,200),(2,3,500),(2,9,50);
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

-- Dump completed on 2019-08-21 11:51:15

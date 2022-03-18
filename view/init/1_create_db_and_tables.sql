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
-- Table structure for table `abandoned_carts`
--

DROP TABLE IF EXISTS `abandoned_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abandoned_carts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Тип INT UNSIGNED чтобы увеличить диапазон значений',
  `cart_id` int(10) unsigned NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  `session_id` int(10) unsigned NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  `created_at` datetime NOT NULL COMMENT 'Дата, время создания корзины',
  `updated_at` datetime NOT NULL COMMENT 'Дата, время изменения корзины',
  `archived_at` datetime NOT NULL COMMENT 'Дата, время архивации корзины',
  PRIMARY KEY (`id`),
  KEY `abandoned_carts_ibfk_2` (`session_id`),
  KEY `cart_id` (`cart_id`),
  CONSTRAINT `abandoned_carts_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `abandoned_carts_ibfk_3` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` int(10) unsigned NOT NULL COMMENT 'Тип INT UNSIGNED чтобы увеличить диапазон значений',
  `created_at` datetime NOT NULL COMMENT 'Дата, время создания',
  `updated_at` datetime NOT NULL COMMENT 'Дата, время изменения',
  PRIMARY KEY (`id`),
  UNIQUE KEY `session_id` (`session_id`) COMMENT 'Уникальный индекс вводится для ускориния поиска и ограничения дубликатов, т.к. за сессией будет закреплена только одна корзина',
  CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carts_products`
--

DROP TABLE IF EXISTS `carts_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts_products` (
  `cart_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `quantity` smallint(5) unsigned NOT NULL COMMENT 'Наврятли количество товаров будет превышать 65535',
  KEY `cart_id` (`cart_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `carts_products_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `carts_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Тип INT UNSIGNED чтобы увеличить диапазон значений',
  `name` varchar(150) NOT NULL COMMENT 'Ограниченной длины, т.к. названия категорий должны быть небольшими',
  `slug` varchar(255) NOT NULL COMMENT 'ЧПУ url категории',
  `parent_id` int(10) unsigned DEFAULT '0' COMMENT 'Тип INT UNSIGNED чтобы увеличить диапазон значений. По умолчанию 0 означает самый верхний уровень иерархии категорий. Если NULL значит категория не задана, будет отображаться "без категории"',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `categories_attributes`
--

DROP TABLE IF EXISTS `categories_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_attributes` (
  `category_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ на категорию',
  `attribute_name` varchar(100) NOT NULL COMMENT 'Ограниченный размер, т.к. не нужны длинные названия',
  `attribute_value` varchar(200) NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  PRIMARY KEY (`category_id`,`attribute_name`,`attribute_value`),
  CONSTRAINT `categories_attributes_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Тип INT UNSIGNED чтобы увеличить диапазон значений',
  `name` varchar(100) NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  `region_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `region_id` (`region_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Тип INT UNSIGNED чтобы увеличить диапазон значений',
  `name` varchar(100) NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Тип INT UNSIGNED чтобы увеличить диапазон значений',
  `fio` varchar(255) NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  `phone` varchar(30) NOT NULL COMMENT 'Не знаю, что действительно будет лучше int или varchar. Если бы нужна была возможность хранения телефонов в разных форматах, например, кто-то укажет "добавочный 1012", то думаю можно было бы выбрать формат varchar. Но если требовать только номера сотовых телефонов, тогда думаю лучше выбрать тип INT. Если я ошибаюсь поправьте пожалуйста!',
  `email` varchar(254) NOT NULL COMMENT 'Допустимое ограничение для email',
  `balance` decimal(9,2) unsigned DEFAULT NULL COMMENT 'Выбран точный тип для денежных значений',
  `city_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ на город покупателя',
  `customer_address` varchar(255) NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `customers_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Тип INT UNSIGNED чтобы увеличить диапазон значений',
  `name` varchar(255) NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  `city_id` int(10) unsigned DEFAULT NULL COMMENT 'Внешний ключ на город производителя',
  `local_address` varchar(255) NOT NULL DEFAULT '' COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `manufacturers_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Тип INT UNSIGNED чтобы увеличить диапазон значений',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ на покупателя',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT 'Статус заказа внутренне будет храниться цифрами, думаю запросы с цифровыми статусами будут работать быстрее, чем с текстовыми',
  `order_price` decimal(9,2) unsigned NOT NULL COMMENT 'Выбран точный тип для денежных значений',
  `discount` decimal(9,2) unsigned DEFAULT NULL COMMENT 'Выбран точный тип для денежных значений',
  `delivery_price` decimal(9,2) unsigned NOT NULL COMMENT 'Выбран точный тип для денежных значений',
  `total_price` decimal(9,2) unsigned NOT NULL COMMENT 'Выбран точный тип для денежных значений',
  `order_address` varchar(255) DEFAULT '' COMMENT 'Возможно адрес доставки будет отличаться от адреса в профиле покупателя. Ограниченный размер, т.к. значения будут не большими',
  `created_at` datetime NOT NULL COMMENT 'Время создания заказа',
  `updated_at` datetime NOT NULL COMMENT 'Время изменения заказа',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `orders_chk_1` CHECK ((`total_price` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orders_products`
--

DROP TABLE IF EXISTS `orders_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_products` (
  `order_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ на заказ',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ на продукт',
  `quantity` smallint(5) unsigned NOT NULL COMMENT 'Наврятли количество товаров будет превышать 65535',
  PRIMARY KEY (`order_id`,`product_id`,`quantity`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orders_products_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `orders_products_chk_1` CHECK ((`quantity` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Тип INT UNSIGNED чтобы увеличить диапазон значений',
  `name` varchar(255) NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  `slug` varchar(255) NOT NULL COMMENT 'ЧПУ url товара',
  `article` mediumint(8) unsigned NOT NULL COMMENT 'Наврятли значения артикулов товаров будут превышать 16777215',
  `category_id` int(10) unsigned DEFAULT NULL COMMENT 'Внешний ключ на категорию',
  `manufacturer_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ на производителя',
  `regular_price` decimal(9,2) NOT NULL COMMENT 'Базовая цена. Выбран точный тип для денежных значений',
  `discount` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Процент скидки',
  `created_at` datetime NOT NULL COMMENT 'Дата, время создания',
  `updated_at` datetime NOT NULL COMMENT 'Дата, время изменения',
  `description` text NOT NULL COMMENT 'Полное описание товара будет переменной длины',
  `image` varchar(255) NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `manufacturer_id` (`manufacturer_id`),
  FULLTEXT KEY `description` (`description`) COMMENT 'Полнотекстовый индекс для ускориния поиска по описанию товара',
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `products_chk_1` CHECK ((`regular_price` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `products_attributes`
--

DROP TABLE IF EXISTS `products_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_attributes` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ на товар',
  `attribute_name` varchar(255) NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  `attribute_value` varchar(255) NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  PRIMARY KEY (`product_id`,`attribute_name`,`attribute_value`),
  CONSTRAINT `products_attributes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `products_images`
--

DROP TABLE IF EXISTS `products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_images` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ на товар',
  `image` varchar(255) NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`product_id`,`image`),
  CONSTRAINT `products_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `products_prices_history`
--

DROP TABLE IF EXISTS `products_prices_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_prices_history` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ на товар',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ на сотрудника',
  `regular_price` decimal(9,2) unsigned NOT NULL COMMENT 'Выбран точный тип для денежных значений',
  `discount` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Процент скидки на товар',
  `created_at` datetime NOT NULL COMMENT 'Дата, время создания',
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `products_prices_history_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `products_prices_history_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Цены на продукты. Цены обычные и скидочные';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `products_providers`
--

DROP TABLE IF EXISTS `products_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_providers` (
  `provider_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ на поставщика',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ на товар',
  `purchase_price` decimal(9,2) NOT NULL COMMENT 'Закупочная цена',
  PRIMARY KEY (`provider_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `products_providers_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_providers_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `products_purchase_prices`
--

DROP TABLE IF EXISTS `products_purchase_prices`;
/*!50001 DROP VIEW IF EXISTS `products_purchase_prices`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `products_purchase_prices` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `url`,
 1 AS `names_path`,
 1 AS `attributes`,
 1 AS `min_purchase_price`,
 1 AS `max_purchase_price`,
 1 AS `all_shops_quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products_shops_quantity`
--

DROP TABLE IF EXISTS `products_shops_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_shops_quantity` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ на продукт',
  `shop_id` smallint(5) unsigned NOT NULL COMMENT 'Внешний ключ на магазин',
  `quantity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '65535 значений должно хватить для количества товаров',
  UNIQUE KEY `shop_id` (`shop_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `products_shops_quantity_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `products_shops_quantity_ibfk_3` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Тип INT UNSIGNED чтобы увеличить диапазон значений',
  `name` varchar(255) NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  `city_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ на город производителя',
  `local_address` varchar(255) NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `providers_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `regions_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Типа tinyint UNSIGNED должно хватить для всех возможных типов ролей',
  `role_name` varchar(30) NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Тип INT UNSIGNED чтобы увеличить диапазон значений',
  `session_str_id` varchar(32) NOT NULL COMMENT 'На SO нашел комментарий где писали, что используют 32 символа для хранения id покупателя, думаю 32 символа должно хватить',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Внешний ключ на покупателя. Если не установлен, значит посетитель не авторизован или не зарегистрирован',
  `created_at` datetime NOT NULL COMMENT 'Дата, время создания',
  `updated_at` datetime NOT NULL COMMENT 'Дата, время изменения',
  PRIMARY KEY (`id`),
  UNIQUE KEY `session_str_id` (`session_str_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shops` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Тип SMALLINT UNSIGNED 65535 значений должно хватить',
  `city_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ на город магазина',
  `local_address` varchar(255) NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  `work_time` varchar(40) NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  `work_phones` varchar(30) NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `shops_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Тип INT UNSIGNED чтобы увеличить диапазон значений',
  `fio` varchar(255) NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  `phone` varchar(30) NOT NULL COMMENT 'Выбрал varchar чтобы была возможность хранить телефоны в разных форматах',
  `email` varchar(254) NOT NULL COMMENT 'Допустимое ограничение для email',
  `role_id` tinyint(3) unsigned NOT NULL COMMENT 'Внешний ключ на тип роли пользователя',
  `city_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ на город покупателя',
  `work_address` varchar(255) NOT NULL COMMENT 'Ограниченный размер, т.к. значения будут не большими',
  `created_at` datetime NOT NULL COMMENT 'Дата, время создания',
  `updated_at` datetime NOT NULL COMMENT 'Дата, время изменения',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `products_purchase_prices`
--

/*!50001 DROP VIEW IF EXISTS `products_purchase_prices`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`supplier`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `products_purchase_prices` AS with recursive `categories_cte` (`id`,`parent_id`,`names_path`,`url_path`) as (select `categories`.`id` AS `id`,`categories`.`parent_id` AS `parent_id`,`categories`.`name` AS `name`,`categories`.`slug` AS `slug` from `categories` where (`categories`.`parent_id` = 0) union all select `c`.`id` AS `id`,`c`.`parent_id` AS `parent_id`,concat(`c_cte`.`names_path`,'/',`c`.`name`) AS `CONCAT(c_cte.names_path, '/', c.name)`,concat(`c_cte`.`url_path`,'/',`c`.`slug`) AS `CONCAT(c_cte.url_path, '/', c.slug)` from (`categories` `c` join `categories_cte` `c_cte` on((`c`.`parent_id` = `c_cte`.`id`)))) select `p`.`id` AS `id`,`p`.`name` AS `name`,concat(`cte`.`url_path`,'/',`p`.`slug`) AS `url`,`cte`.`names_path` AS `names_path`,`pa`.`attributes` AS `attributes`,`pp`.`min_purchase_price` AS `min_purchase_price`,`pp`.`max_purchase_price` AS `max_purchase_price`,`psq`.`all_shops_quantity` AS `all_shops_quantity` from ((((`products` `p` join `categories_cte` `cte` on((`cte`.`id` = `p`.`category_id`))) join (select `products_attributes`.`product_id` AS `product_id`,json_objectagg(`products_attributes`.`attribute_name`,`products_attributes`.`attribute_value`) AS `attributes` from `products_attributes` group by `products_attributes`.`product_id`) `pa` on((`p`.`id` = `pa`.`product_id`))) join (select `products_providers`.`product_id` AS `product_id`,min(`products_providers`.`purchase_price`) AS `min_purchase_price`,max(`products_providers`.`purchase_price`) AS `max_purchase_price` from `products_providers` group by `products_providers`.`product_id`) `pp` on((`p`.`id` = `pp`.`product_id`))) join (select `products_shops_quantity`.`product_id` AS `product_id`,sum(`products_shops_quantity`.`quantity`) AS `all_shops_quantity` from `products_shops_quantity` group by `products_shops_quantity`.`product_id`) `psq` on((`p`.`id` = `psq`.`product_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:16:36

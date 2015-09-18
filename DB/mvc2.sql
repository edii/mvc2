-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Сен 18 2015 г., 13:21
-- Версия сервера: 5.5.44-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `mvc2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `antispamcode`
--

CREATE TABLE IF NOT EXISTS `antispamcode` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `antispamCodeSession` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `code` varchar(10) NOT NULL DEFAULT '',
  `antispamCodeDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `antispamCodeSession` (`antispamCodeSession`),
  KEY `code` (`code`),
  KEY `antispamCodeDate` (`antispamCodeDate`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2365 ;

--
-- Дамп данных таблицы `antispamcode`
--

INSERT INTO `antispamcode` (`id`, `antispamCodeSession`, `code`, `antispamCodeDate`) VALUES
(2350, '201002051319163c8607f658964243a5fed1e7b6765adf', '5HHG5', '2010-05-05 12:54:42'),
(2358, '201006051131416e598b3115f4b19293caec1786f2f9e6', 'XUZ9U', '2010-05-06 11:32:21'),
(2359, '2010060512231961e60ff2978ac67bd66983ec1a99beae', 'L7RW4', '2010-05-06 12:29:05'),
(2360, '201006051244337bf6105f5ff8e3ad19cd52fbf0b3c5da', 'PDNGG', '2010-05-06 12:45:28'),
(2361, '20100605130440b17824c6488f4db5979f1712992da845', 'H643H', '2010-05-06 01:12:10'),
(2362, '201006051346166490a45b5917f8a2d6ddd4776a183584', 'LDLHT', '2010-05-06 01:47:02'),
(2363, '20100605142915b9aed795212613eb808051f2543031e6', '3PE48', '2010-05-06 02:29:17'),
(2364, '20100605162225f9537238da6e9a533334e9f1f267481b', 'KSXU9', '2010-05-06 04:23:44'),
(2356, '20100505204259597fa3005318babae6f099e7c6bd652d', 'KLV4F', '2010-05-05 09:29:02'),
(2357, '201002051734152ea4edeb938924633f5ffc6dfd737c7f', 'B9V8U', '2010-05-06 04:04:07'),
(2353, '201005051549588cdee40aa4a223f2c8ba67c5e97938f9', 'TVPDA', '2010-05-05 03:54:02'),
(2354, '20100505162714e2fe957a6903e5c9fbd8d96181f910cc', 'GELVU', '2010-05-05 04:36:04'),
(2355, '20100305125215f2153345701c117fd9286fffe98c3f75', '6Z78T', '2010-05-05 05:50:31'),
(2352, '201005051509041a9b0991d5240d0606d1639c99409820', 'NZG72', '2010-05-05 03:10:16'),
(2351, '20100505091315be2107f84d5e726d56995fd58db8381b', 'S4B38', '2010-05-05 09:16:01');

-- --------------------------------------------------------

--
-- Структура таблицы `backuplog`
--

CREATE TABLE IF NOT EXISTS `backuplog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `OwnerID` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `UserID` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `fileName` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `fileSize` int(22) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `backuplog`
--

INSERT INTO `backuplog` (`id`, `OwnerID`, `UserID`, `timeCreated`, `type`, `fileName`, `path`, `fileSize`) VALUES
(6, 'root', 'root', '2010-09-29 17:56:20', 'full', '2010_09_29_17_5620_backup.tar', 'http://bestmoments.com.ua/backups/', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE IF NOT EXISTS `cache` (
  `id` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OwnerID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `UserID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeSaved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeStart` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeEnd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `module` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `class` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `method` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `arguments` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `value` text COLLATE utf8_bin NOT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `Type` (`type`),
  KEY `Module` (`module`),
  KEY `Class` (`class`),
  KEY `method` (`method`),
  KEY `arguments` (`arguments`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `click`
--

CREATE TABLE IF NOT EXISTS `click` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UserID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `createdIP` varchar(31) COLLATE utf8_bin NOT NULL DEFAULT '',
  `sessionID` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `clickCreatorID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `code` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `clickCreatorID` (`clickCreatorID`),
  KEY `code` (`code`),
  KEY `timeCreated` (`timeCreated`),
  KEY `UserID` (`UserID`),
  KEY `sessionID` (`sessionID`),
  KEY `createdIP` (`createdIP`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `langfield`
--

CREATE TABLE IF NOT EXISTS `langfield` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `timeSaved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `code` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `UserID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OwnerID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '1',
  `value` text CHARACTER SET utf8 NOT NULL,
  `fileDescription` text CHARACTER SET utf8 NOT NULL,
  `fileValue` text COLLATE utf8_bin NOT NULL,
  `languages` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lockMode` char(1) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `UserID` (`UserID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `hidden` (`hidden`),
  KEY `languages` (`languages`),
  KEY `lockMode` (`lockMode`),
  KEY `timeSaved` (`timeSaved`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `langfield`
--

INSERT INTO `langfield` (`id`, `timeSaved`, `code`, `UserID`, `OwnerID`, `hidden`, `value`, `fileDescription`, `fileValue`, `languages`, `lockMode`) VALUES
(1, '2009-09-06 20:55:08', '-add', '11365480442009090300213830q111', '', 1, 'Добавить', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `hidden` int(1) NOT NULL DEFAULT '0',
  `default` int(2) NOT NULL DEFAULT '0',
  `code` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` text COLLATE utf8_bin NOT NULL,
  `icon` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `iconActive` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `position` int(5) NOT NULL DEFAULT '0',
  `locale` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'ru_ru',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `hidden` (`hidden`),
  KEY `position` (`position`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=35 ;

--
-- Дамп данных таблицы `language`
--

INSERT INTO `language` (`id`, `hidden`, `default`, `code`, `name`, `icon`, `iconActive`, `position`, `locale`) VALUES
(6, 0, 1, 'ru', '<ru>Русский</ru><en>Русский</en>', '', '', 2, 'ru_ru'),
(34, 0, 0, 'en', '<ru>Английский</ru><en>Английский</en>', '', '', 4, 'en_en');

-- --------------------------------------------------------

--
-- Структура таблицы `layout`
--

CREATE TABLE IF NOT EXISTS `layout` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(30) COLLATE utf8_bin NOT NULL,
  `UserID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OwnerID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '1',
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeSaved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `group` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8_bin NOT NULL,
  `preview` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icon` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` text COLLATE utf8_bin NOT NULL,
  `position` int(5) NOT NULL DEFAULT '0',
  `comments` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `UserID` (`UserID`,`OwnerID`,`hidden`),
  KEY `group` (`group`),
  KEY `position` (`position`),
  KEY `code` (`code`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `layout`
--

INSERT INTO `layout` (`id`, `code`, `UserID`, `OwnerID`, `hidden`, `timeCreated`, `timeSaved`, `group`, `name`, `image`, `preview`, `icon`, `description`, `position`, `comments`) VALUES
(3, 'dark', 'root', 'root', 1, '2009-01-25 12:29:46', '2009-01-25 12:29:46', 'main', 'Темно-серый', '', '', '', '', 0, ''),
(2, 'default', 'root', 'root', 1, '2009-01-25 12:23:43', '2009-01-25 12:23:43', 'main', 'Дизайн по умолчанию', '', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `note`
--

CREATE TABLE IF NOT EXISTS `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OwnerID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '1',
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeSaved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `adminID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `createdIP` varchar(31) COLLATE utf8_bin NOT NULL DEFAULT '',
  `creatorID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `creatorCode` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `accessType` char(1) COLLATE utf8_bin NOT NULL DEFAULT '',
  `content` text COLLATE utf8_bin NOT NULL,
  `contactValue` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `contactType` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `UserID` (`UserID`,`OwnerID`,`hidden`),
  KEY `creatorID` (`creatorID`),
  KEY `creatorCode` (`creatorCode`),
  KEY `type` (`type`),
  KEY `accessType` (`accessType`),
  KEY `contactType` (`contactType`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=32 ;

--
-- Дамп данных таблицы `note`
--

INSERT INTO `note` (`id`, `UserID`, `OwnerID`, `hidden`, `timeCreated`, `timeSaved`, `adminID`, `createdIP`, `creatorID`, `creatorCode`, `type`, `accessType`, `content`, `contactValue`, `contactType`) VALUES
(1, '11365480442009012415325321p111', 'root', 1, '2009-01-25 14:43:12', '2009-01-25 14:43:12', '', '', '17', 'website', '', 'C', 'вфывы\r\nвфывыф', '', ''),
(2, '11365480442009012415325321p111', 'root', 1, '2009-01-25 14:43:16', '2009-01-25 14:43:16', '', '', '17', 'website', '', 'C', 'фывфыв\r\nфывфыв', '', ''),
(3, '11365480442009012415325321p111', 'root', 1, '2009-01-25 14:45:35', '2009-01-25 14:45:35', '', '', '17', 'website', '', 'C', 'фывфыв\r\nфывфыв', '', ''),
(4, '11365480442009012415325321p111', 'root', 1, '2009-01-25 14:51:17', '2009-01-25 14:51:17', '', '', '17', 'owner', '', 'C', 'фывфыв ыфафы', '', ''),
(5, '11365480442009012415325321p111', 'root', 1, '2009-01-25 14:51:25', '2009-01-25 14:51:25', '', '', '17', 'owner', '', 'C', 'фв фывфвф вфы', '', ''),
(6, '11365480442009012415325321p111', 'root', 1, '2009-01-25 14:53:36', '2009-01-25 14:53:36', '', '', '17', 'owner', '', 'C', 'еееее', '', ''),
(8, '11365480442009012523465528c111', 'root', 1, '2009-04-06 01:50:25', '2009-04-06 01:50:25', '', '', '17', 'owner', '', 'C', 'lkknjljk', '', ''),
(9, '11365480442009012523465528c111', 'root', 1, '2009-04-08 01:36:52', '2009-04-08 01:36:52', '', '', '32', 'owner', '', 'C', 'Ключевые слова от Яндекс\r\n\r\nнародные лечения   	165389\r\nлечение народными средствами 	104244\r\nнародные методы лечения 	25110\r\nлечение народной медициной 	9588\r\nнародные способы лечения 	6826\r\nнародное лечение гайморита 	3389\r\nлечение миомы народными средствами 	3241\r\nнародное лечение простатита 	3008\r\nнародное лечение геморроя 	2914\r\nнародное лечение псориаза 	2675\r\nнародное лечение молочницы 	2634\r\nлечение гайморита народными средствами 	2599\r\nмиома матки лечение народными средствами 	2595\r\nнародные рецепты лечения 	2234\r\nлечение волос народными средствами 	2224\r\nлечение кисты народными средствами 	2173\r\nлечение простатита народными средствами 	2086\r\nцистит лечение народными средствами 	2034\r\nлечение геморроя народными средствами 	1967\r\nпсориаз лечение народными средствами 	1904\r\nмастопатия лечение народными средствами 	1719\r\nлечение щитовидной железы народными средствами 	1695\r\nлечение молочницы народными средствами 	1612\r\nлечение насморка народными средствами 	1571\r\nэндометриоз лечение народными средствами 	1560\r\nлечение бронхита народными средствами 	1522\r\nнародные средства лечения кашля 	1487\r\nлечение рака народными средствами 	1472\r\nлечение грибка народными средствами 	1234\r\nлечение диабета народными средствами 	1222\r\nлечение суставов народными средствами 	1219\r\nлечение печени народными средствами 	1210\r\nнародное лечение волос 	1195\r\nлечение герпеса народными средствами 	1172\r\nнародное лечение кисты 	1172\r\nнародное лечение миомы 	1150\r\nлечение алкоголизма народными средствами 	1129\r\nлечение грыжи народными средствами 	1065\r\nлечение кисты яичника народными средствами 	1033\r\nлечение остеохондроза народными средствами 	997\r\nлечение почек народными средствами 	973\r\nвыпадение волос лечение народными средствами 	957\r\nнародное лечение рака 	956\r\nлечение сахарного диабета народными средствами 	939\r\nлечение полипов народными средствами 	936\r\nангина лечение народными средствами 	932\r\nлечение панкреатита народными средствами 	905\r\nлечение желудка народными средствами 	897\r\nлечение поджелудочной железы народными средствами 	861\r\nцистит народное лечение 	852\r\n\r\nнародные лечения   	165389\r\nлечение народными средствами 	104244\r\nнародные методы лечения 	25110\r\nлечение народной медициной 	9588\r\nнародные способы лечения 	6826\r\nнародное лечение гайморита 	3389\r\nлечение миомы народными средствами 	3241\r\nнародное лечение простатита 	3008\r\nнародное лечение геморроя 	2914\r\nнародное лечение псориаза 	2675\r\nнародное лечение молочницы 	2634\r\nлечение гайморита народными средствами 	2599\r\nмиома матки лечение народными средствами 	2595\r\nнародные рецепты лечения 	2234\r\nлечение волос народными средствами 	2224\r\nлечение кисты народными средствами 	2173\r\nлечение простатита народными средствами 	2086\r\nцистит лечение народными средствами 	2034\r\nлечение геморроя народными средствами 	1967\r\nпсориаз лечение народными средствами 	1904\r\nмастопатия лечение народными средствами 	1719\r\nлечение щитовидной железы народными средствами 	1695\r\nлечение молочницы народными средствами 	1612\r\nлечение насморка народными средствами 	1571\r\nэндометриоз лечение народными средствами 	1560\r\nлечение бронхита народными средствами 	1522\r\nнародные средства лечения кашля 	1487\r\nлечение рака народными средствами 	1472\r\nлечение грибка народными средствами 	1234\r\nлечение диабета народными средствами 	1222\r\nлечение суставов народными средствами 	1219\r\nлечение печени народными средствами 	1210\r\nнародное лечение волос 	1195\r\nлечение герпеса народными средствами 	1172\r\nнародное лечение кисты 	1172\r\nнародное лечение миомы 	1150\r\nлечение алкоголизма народными средствами 	1129\r\nлечение грыжи народными средствами 	1065\r\nлечение кисты яичника народными средствами 	1033\r\nлечение остеохондроза народными средствами 	997\r\nлечение почек народными средствами 	973\r\nвыпадение волос лечение народными средствами 	957\r\nнародное лечение рака 	956\r\nлечение сахарного диабета народными средствами 	939\r\nлечение полипов народными средствами 	936\r\nангина лечение народными средствами 	932\r\nлечение панкреатита народными средствами 	905\r\nлечение желудка народными средствами 	897\r\nлечение поджелудочной железы народными средствами 	861\r\nцистит народное лечение 	852\r\n\r\n', '', ''),
(10, '11365480442009012523465528c111', 'root', 1, '2009-04-08 01:41:54', '2009-04-08 01:41:54', '', '', '32', 'owner', '', 'C', 'Слова по Google\r\nнародное лечение - 5 400	 \r\nнародная медицина лечение - 1 900	 \r\nнародные лечение - 2 400\r\nнародное лечения - 320	 \r\nнародные лечения - 12 100	 \r\nнародная медицина рецепты - 390\r\nнародная медицина - 27 100	 \r\nнародные рецепты лечение - 320	\r\nлечение печени народными средствами - 110\r\nлечения народными средствами - 110\r\nнародные рецепты лечения - 1000\r\nнародные средства лечение - 1300\r\nнародные средства лечения - 4400\r\nнародные средства при лечении - 210\r\nлечение народные методы - 720\r\nнародные средства для лечения - 480\r\nнародные способы лечения - 1600\r\nлечение волос народными средствами - 170\r\nгайморит лечение - 2900\r\nпростатит лечение - 2400\r\nмолочница лечение - 2400\r\nмедицина лечение - 3600\r\nлечение профилактика - 2400\r\nлечение беременность - 1000', '', ''),
(11, '11365480442009012523465528c111', 'root', 1, '2009-04-15 02:33:49', '2009-04-15 02:33:49', '', '', '38', 'owner', '', 'C', 'Статьи,\r\n\r\nhttp://www.obzor-tv.ru/\r\nhttp://www.tvmaster.ru/link.html\r\n\r\n', '', ''),
(12, '11365480442009012523465528c111', 'root', 1, '2009-04-15 02:39:24', '2009-04-15 02:39:24', '', '', '38', 'owner', '', 'C', 'жк телевизоры 27 100	 \r\nlcd телевизор 18 100	\r\nремонт телевизоров  14 800	\r\nтелевизоры lcd 14 800\r\nтелевизор купить 9 900\r\nsamsung телевизоры 6 600\r\nплазменный телевизор 6 600\r\nphilips телевизоры 5 400	 \r\nвыбор телевизора 3 600\r\nlg телевизоры 2 400\r\npanasonic телевизоры 2 400	 \r\nsharp телевизоры  1 900	\r\ntoshiba телевизоры 1 900	 \r\nпродажа телевизоров 1 900\r\nтелевизоры цены 1 900	\r\nтест телевизоров 1 900\r\n32 телевизоры 1 600	\r\nтелевизоры купить 1 600	\r\nlcd или плазма 1 300	 \r\nвыбор телевизора жк	1 300	\r\nобзор телевизоров 1300\r\nотзывы телевизоры 880	\r\nплазма телевизор 880	 \r\nсравнение телевизоров 880	\r\nфорум телевизоры 880	\r\nплазменный телевизор panasonic 720	 \r\njvc телевизоры 590	\r\nтелевизоры обзор 590\r\nтелевизоры продажа 590	\r\n 	\r\n \r\n ', '', ''),
(13, '11365480442009012523465528c111', 'root', 1, '2009-04-25 19:02:51', '2009-04-25 19:02:51', '', '', '34', 'owner', '', 'C', 'Обзор партнерок:\r\nhttp://www.partprog.ru/\r\nhttp://allpp.ru/dir/\r\n', '', ''),
(14, '11365480442009012523465528c111', 'root', 1, '2009-04-25 19:16:58', '2009-04-25 19:16:58', '', '', '34', 'owner', '', 'C', 'http://einvest.ru/', '', ''),
(15, '11365480442009012523465528c111', 'root', 1, '2009-05-07 00:33:42', '2009-05-07 00:33:42', '', '', '15', 'owner', '', 'C', 'mydigitallife.info - отлично сделан сайт как блог обзоров', '', ''),
(17, '11365480442009012523465528c111', 'root', 1, '2009-05-14 23:32:34', '2009-05-14 23:32:34', '', '', '39', 'owner', '', 'C', 'onlineguru.ru', '', ''),
(18, '11365480442009012523465528c111', 'root', 1, '2009-05-14 23:33:54', '2009-05-14 23:33:54', '', '', '39', 'owner', '', 'C', 'http://flesh.ru/', '', ''),
(20, 'root', 's46', 1, '2009-09-15 09:29:40', '2009-09-15 09:29:40', 'root', '', '11365480442009091410593826e111', 'customer', '', 'C', 'test test comments', '', ''),
(21, 'root', 's46', 1, '2009-09-15 09:43:14', '2009-09-15 09:43:14', 'root', '', '1136548044200909141005508d1111', 'customer', '', 'C', 'dsfe', '', ''),
(22, 'root', 's46', 1, '2009-09-15 09:44:02', '2009-09-15 09:44:02', 'root', '', '1136548044200909141005508d1111', 'customer', '', 'C', 'dsfe', '', ''),
(23, 'root', 's46', 1, '2009-09-16 23:41:16', '2009-09-16 23:41:16', 'root', '', '11365480442009091410593826e111', 'customer', '', 'C', 'sdgs', '', ''),
(24, 'root', 's46', 1, '2009-09-16 23:42:04', '2009-09-16 23:42:04', 'root', '', '11365480442009091410593826e111', 'customer', '', 'C', 'sdgs', '', ''),
(25, 'root', 's46', 1, '2009-09-16 23:43:18', '2009-09-16 23:43:18', 'root', '', '11365480442009091410593826e111', 'customer', '', 'C', 'sdgs', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `owner`
--

CREATE TABLE IF NOT EXISTS `owner` (
  `OwnerID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UserID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeSaved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `code` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '4',
  `type` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `paymentType` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'null',
  `paymentStatus` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'null',
  `paymentTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `domain` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `default` int(2) NOT NULL DEFAULT '0',
  `style` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'default',
  `location` int(11) NOT NULL DEFAULT '1',
  `currencies` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'UAH',
  `GMT` int(2) NOT NULL DEFAULT '2',
  `image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `imagePreview` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CSSURL` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `counterCode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'ua',
  `adCodeActivation` char(1) COLLATE utf8_bin NOT NULL DEFAULT '',
  `numberOfBackLinks` int(11) unsigned NOT NULL DEFAULT '0',
  `language` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mail` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT 'null',
  `administratorsEmails` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT 'null',
  `supportEmail` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT 'null',
  PRIMARY KEY (`OwnerID`),
  KEY `domain` (`domain`),
  KEY `location` (`location`),
  KEY `adCodeActivation` (`adCodeActivation`),
  KEY `group` (`group`),
  KEY `language` (`language`),
  KEY `numberOfBackLinks` (`numberOfBackLinks`),
  KEY `status` (`status`),
  KEY `paymentType` (`paymentType`),
  KEY `paymentStatus` (`paymentStatus`),
  KEY `paymentTime` (`paymentTime`),
  KEY `hidden` (`hidden`),
  KEY `code` (`code`),
  KEY `UserID` (`UserID`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `owner`
--

INSERT INTO `owner` (`OwnerID`, `UserID`, `timeCreated`, `timeSaved`, `code`, `hidden`, `status`, `type`, `group`, `paymentType`, `paymentStatus`, `paymentTime`, `domain`, `default`, `style`, `location`, `currencies`, `GMT`, `image`, `icon`, `imagePreview`, `CSSURL`, `counterCode`, `adCodeActivation`, `numberOfBackLinks`, `language`, `mail`, `administratorsEmails`, `supportEmail`) VALUES
(1, 'root', '0000-00-00 00:00:00', '2014-07-22 14:22:55', 'root', 0, 1, 'companysite', '', '', '', '0000-00-00 00:00:00', 'mvc.dev', 1, 'lemberg', 0, '|UAH|', 0, '', '', '', 'http://', '', '', 0, 'ru', 'edii87shadow@gmail.com', 'edii87shadow@gmail.com', '');

-- --------------------------------------------------------

--
-- Структура таблицы `owneralias`
--

CREATE TABLE IF NOT EXISTS `owneralias` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UserID` varchar(30) NOT NULL,
  `timeCreated` datetime NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '1',
  `OwnerID` varchar(30) NOT NULL,
  `domain` varchar(50) NOT NULL DEFAULT '1',
  `aliasLanguage` char(2) NOT NULL,
  `aliasURLFormat` char(5) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`),
  KEY `OwnerID` (`OwnerID`),
  KEY `domain` (`domain`),
  KEY `aliasLanguage` (`aliasLanguage`),
  KEY `aliasURLFormat` (`aliasURLFormat`),
  KEY `timeCreated` (`timeCreated`),
  KEY `hidden` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `owneralias`
--

INSERT INTO `owneralias` (`id`, `UserID`, `timeCreated`, `hidden`, `OwnerID`, `domain`, `aliasLanguage`, `aliasURLFormat`) VALUES
(1, 'root', '2010-07-04 21:37:58', 1, 'bestmoments', 'eng.bestmoments.com.ua', 'en', 'nowww'),
(2, 'root', '2011-01-09 22:25:28', 1, 'bestmoments', 'ukr.bestmoments.com.ua', 'ua', 'nowww'),
(3, 'root', '2012-07-17 10:23:48', 1, 'ksport', 'lembergcoach.com', 'en', 'nowww'),
(4, 'root', '2012-07-17 10:24:18', 1, 'ksport', 'lembergcoach.ru', 'ru', 'nowww');

-- --------------------------------------------------------

--
-- Структура таблицы `ownerbox`
--

CREATE TABLE IF NOT EXISTS `ownerbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `OwnerID` varchar(30) COLLATE utf8_bin NOT NULL,
  `timeCreated` datetime NOT NULL,
  `timeSaved` datetime NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `code` varchar(100) COLLATE utf8_bin NOT NULL,
  `optionsEditorBoxCode` varchar(100) COLLATE utf8_bin NOT NULL,
  `groups` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '|minisite|',
  `sides` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '|center|',
  `comments` text COLLATE utf8_bin NOT NULL,
  `position` int(5) unsigned NOT NULL DEFAULT '1',
  `systemFunctions` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `UserID` (`OwnerID`),
  KEY `timeCreated` (`timeCreated`),
  KEY `timeSaved` (`timeSaved`),
  KEY `hidden` (`hidden`),
  KEY `groups` (`groups`),
  KEY `sides` (`sides`),
  KEY `optionsEditorBoxCode` (`optionsEditorBoxCode`),
  KEY `position` (`position`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=32 ;

--
-- Дамп данных таблицы `ownerbox`
--

INSERT INTO `ownerbox` (`id`, `OwnerID`, `timeCreated`, `timeSaved`, `hidden`, `name`, `description`, `code`, `optionsEditorBoxCode`, `groups`, `sides`, `comments`, `position`, `systemFunctions`) VALUES
(11, 'root', '2009-09-05 13:49:27', '2010-05-10 21:22:28', 1, '<en>News</en><fr>News</fr><nl>News</nl><ru>Новости</ru>', '', 'news.getNewsArticlesNews', '', '|companysite|eshop|reagency|reportal|bizdirectory|cardealer|websolution|', '|center|', '', 30, '|news.NewsArticlesNews|'),
(13, 'root', '2009-09-05 13:51:32', '2010-05-10 21:22:28', 1, '<en>Сontact form</en><el>Сontact form</el><eg>Сontact form</eg><de>Сontact form</de><fr>Сontact form</fr><es>Сontact form</es><it>Сontact form</it><tu>Сontact form</tu><ru>Контактная форма</ru>', '', 'mail.contactForm', '', '|Accommodation|minisite|companysite|eshop|reagency|reportal|bizdirectory|cardealer|websolution|', '|center|', '', 16, '|all|'),
(14, 'root', '2009-09-05 13:52:49', '2010-05-10 21:22:28', 1, '<en>Member area</en><fr>Member area</fr><nl>Member area</nl><ru>Панель учетной записи пользователя</ru>', '', 'core.myHome', '', '|companysite|eshop|reagency|reportal|bizdirectory|cardealer|websolution|', '|center|', '', 32, '|all|'),
(15, 'root', '2009-09-05 13:53:58', '2010-05-10 21:22:28', 1, '<en>Website registration</en><fr>Website registration</fr><nl>Website registration</nl><ru>Регистрация нового сайта</ru>', '', 'core.registerOwner', '', '|websolution|', '|center|', '', 34, '|submission.directory|'),
(16, 'root', '2009-09-05 14:07:40', '2010-05-10 21:22:28', 1, '<en>Page</en><el>Page</el><eg>Page</eg><de>Page</de><fr>Page</fr><es>Page</es><it>Page</it><tu>Page</tu><ru>Страница сайта</ru>', '', 'core.page', '', '|Accommodation|minisite|companysite|eshop|reagency|reportal|bizdirectory|cardealer|websolution|', '|center|', '', 12, '|all|'),
(17, 'root', '2009-09-05 14:12:03', '2010-05-10 21:22:28', 1, '<en>Text box</en><el>Text box</el><eg>Text box</eg><de>Text box</de><fr>Text box</fr><es>Text box</es><it>Text box</it><tu>Text box</tu><ru>Текстовый блок</ru>', '', 'core.textbox', '', '|Accommodation|minisite|companysite|eshop|reagency|reportal|bizdirectory|cardealer|websolution|', '|left|right|bottom|free|', '', 10, '|all|'),
(18, 'root', '2009-09-05 14:28:38', '2010-05-10 21:22:28', 1, '<en>Properties listing</en><el>Properties listing</el><eg>Properties listing</eg><de>Properties listing</de><fr>Properties listing</fr><es>Properties listing</es><it>Properties listing</it><tu>Properties listing</tu><ru>Список объектов недвижимости</ru>', '', 'resource.getResourceOfferProperties', 'resource.getResourceOffersBoxOptionsProperty', '|Accommodation|reagency|reportal|', '|center|', '', 22, '|resource.PropertiesManager|'),
(19, 'root', '2009-09-05 14:31:18', '2010-05-10 21:22:28', 1, '<en>Featured properties</en><el>Featured properties</el><eg>Featured properties</eg><de>Featured properties</de><fr>Featured properties</fr><es>Featured properties</es><it>Featured properties</it><tu>Featured properties</tu><ru>Featured properties</ru>', '', 'resource.getResourceOfferFeaturedProperties', 'resource.getResourceOffersBoxOptionsProperty', '|reagency|reportal|', '|left|right|', '', 24, '|resource.PropertiesManager|'),
(20, 'root', '2009-09-06 13:52:52', '2010-05-10 21:22:28', 1, '<en>Website menu links</en><el>Website menu links</el><eg>Website menu links</eg><de>Website menu links</de><fr>Website menu links</fr><es>Website menu links</es><it>Website menu links</it><tu>Website menu links</tu><ru>Ссылки меню сайта</ru>', '', 'seo.getSEOLinks', '', '|Accommodation|minisite|companysite|eshop|reagency|reportal|bizdirectory|cardealer|websolution|', '|top|left|center|right|bottom|free|', '', 14, '|all|'),
(21, 'root', '2009-10-12 21:11:05', '2010-05-10 21:22:28', 1, '<en>News sidebox</en><fr>Nouveauté sidebox</fr><nl>News sidebox</nl><ru>Блок последних новостей</ru>', '', 'news.getNewsArticlesNews', '', '|minisite|companysite|eshop|reagency|reportal|bizdirectory|cardealer|websolution|', '|left|right|', '', 28, '|news.NewsArticlesNews|'),
(26, 'root', '2009-11-23 19:18:32', '2010-05-10 21:22:28', 1, '<en>Ads list</en><fr>Ads list</fr><nl>Ads list</nl><ru>Объявления</ru>', '', 'resource.getResourceOffers', '', '|companysite|eshop|', '|center|', '', 20, '|resourceAdsManager|');

-- --------------------------------------------------------

--
-- Структура таблицы `ownerboxes`
--

CREATE TABLE IF NOT EXISTS `ownerboxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `OwnerID` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `OwnerBoxID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `OwnerID` (`OwnerID`),
  KEY `OwnerBoxID` (`OwnerBoxID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ownerboxtypes`
--

CREATE TABLE IF NOT EXISTS `ownerboxtypes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `OwnerBoxID` int(11) unsigned NOT NULL DEFAULT '0',
  `type` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `OwnerBoxID` (`OwnerBoxID`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=525 ;

--
-- Дамп данных таблицы `ownerboxtypes`
--

INSERT INTO `ownerboxtypes` (`id`, `OwnerBoxID`, `type`) VALUES
(273, 11, 'websolution'),
(272, 11, 'cardealer'),
(271, 11, 'bizdirectory'),
(465, 13, 'reportal'),
(464, 13, 'reagency'),
(463, 13, 'eshop'),
(462, 13, 'companysite'),
(286, 14, 'websolution'),
(285, 14, 'cardealer'),
(284, 14, 'bizdirectory'),
(295, 15, 'websolution'),
(461, 13, 'minisite'),
(283, 14, 'reportal'),
(282, 14, 'reagency'),
(270, 11, 'reportal'),
(269, 11, 'reagency'),
(457, 16, 'bizdirectory'),
(456, 16, 'reportal'),
(455, 16, 'reagency'),
(454, 16, 'eshop'),
(433, 17, 'reportal'),
(432, 17, 'reagency'),
(431, 17, 'eshop'),
(430, 17, 'companysite'),
(429, 17, 'minisite'),
(448, 18, 'Accommodation'),
(444, 20, 'reportal'),
(443, 20, 'reagency'),
(442, 20, 'eshop'),
(441, 20, 'companysite'),
(440, 20, 'minisite'),
(266, 21, 'websolution'),
(265, 21, 'cardealer'),
(264, 21, 'bizdirectory'),
(263, 21, 'reportal'),
(262, 21, 'reagency'),
(261, 21, 'eshop'),
(260, 21, 'companysite'),
(453, 16, 'companysite'),
(452, 16, 'minisite'),
(268, 11, 'eshop'),
(267, 11, 'companysite'),
(281, 14, 'eshop'),
(280, 14, 'companysite'),
(259, 21, 'minisite'),
(297, 24, 'reportal'),
(296, 24, 'reagency'),
(209, 25, 'cardealer'),
(208, 25, 'bizdirectory'),
(207, 25, 'reportal'),
(206, 25, 'reagency'),
(205, 25, 'eshop'),
(204, 25, 'companysite'),
(203, 25, 'minisite'),
(210, 25, 'websolution'),
(428, 17, 'Accommodation'),
(451, 16, 'Accommodation'),
(439, 20, 'Accommodation'),
(460, 13, 'Accommodation'),
(300, 26, 'companysite'),
(301, 26, 'eshop'),
(354, 27, 'cardealer'),
(353, 27, 'bizdirectory'),
(352, 27, 'reportal'),
(351, 27, 'reagency'),
(350, 27, 'eshop'),
(349, 27, 'companysite'),
(348, 27, 'minisite'),
(347, 27, 'Accommodation'),
(355, 27, 'websolution'),
(427, 29, 'bizdirectory'),
(426, 29, 'reportal'),
(425, 29, 'reagency'),
(424, 29, 'eshop'),
(423, 29, 'companysite'),
(437, 28, 'Accommodation'),
(422, 29, 'minisite'),
(421, 29, 'Accommodation'),
(434, 17, 'bizdirectory'),
(435, 17, 'cardealer'),
(436, 17, 'websolution'),
(438, 28, 'reagency'),
(445, 20, 'bizdirectory'),
(446, 20, 'cardealer'),
(447, 20, 'websolution'),
(449, 18, 'reagency'),
(450, 18, 'reportal'),
(458, 16, 'cardealer'),
(459, 16, 'websolution'),
(466, 13, 'bizdirectory'),
(467, 13, 'cardealer'),
(468, 13, 'websolution'),
(473, 19, 'reportal'),
(472, 19, 'reagency'),
(524, 31, 'reportal'),
(523, 31, 'reagency'),
(522, 31, 'Accommodation');

-- --------------------------------------------------------

--
-- Структура таблицы `owner_lang`
--

CREATE TABLE IF NOT EXISTS `owner_lang` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) DEFAULT '1',
  `OwnerID` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `introPage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `pagebox`
--

CREATE TABLE IF NOT EXISTS `pagebox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `OwnerID` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `UserID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timeCreated` datetime NOT NULL,
  `timeSaved` datetime NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '1',
  `code` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT 'core.textbox',
  `pageTitle` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pageContent` text CHARACTER SET utf8 NOT NULL,
  `pageTemplate` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT 'default',
  `pageArguments` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `OwnerID` (`OwnerID`),
  KEY `UserID` (`UserID`),
  KEY `timeCreated` (`timeCreated`),
  KEY `hidden` (`hidden`),
  KEY `code` (`code`),
  KEY `pageTitle` (`pageTitle`),
  KEY `timeSaved` (`timeSaved`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=56 ;

-- --------------------------------------------------------

--
-- Структура таблицы `pageboxes`
--

CREATE TABLE IF NOT EXISTS `pageboxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `OwnerID` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `UserID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timeCreated` datetime NOT NULL,
  `timeSaved` datetime NOT NULL,
  `pageSide` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `pagePosition` int(11) DEFAULT '1',
  `pageCode` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT 'main',
  `pageID` int(11) NOT NULL,
  `pageLanguage` char(2) COLLATE utf8_bin NOT NULL,
  `pageIsForLink` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `OwnerID` (`OwnerID`),
  KEY `UserID` (`UserID`),
  KEY `pageCode` (`pageCode`),
  KEY `pageID` (`pageID`),
  KEY `pageSide` (`pageSide`),
  KEY `pagePosition` (`pagePosition`),
  KEY `timeCreated` (`timeCreated`),
  KEY `timeSaved` (`timeSaved`),
  KEY `pageIsForLink` (`pageIsForLink`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=138 ;

--
-- Дамп данных таблицы `pageboxes`
--

INSERT INTO `pageboxes` (`id`, `OwnerID`, `UserID`, `timeCreated`, `timeSaved`, `pageSide`, `pagePosition`, `pageCode`, `pageID`, `pageLanguage`, `pageIsForLink`) VALUES
(104, 'root', 'root', '2009-11-27 13:52:02', '2009-11-27 13:52:02', 'right', 2, 'home', 1, 'ru', 'N');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `postID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UserID` int(100) NOT NULL,
  `OwnerID` int(100) NOT NULL,
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeSaved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `typeID` int(100) NOT NULL DEFAULT '0',
  `hidden` int(2) NOT NULL DEFAULT '1',
  `status` enum('inherit','auto-draff','trash','publish') NOT NULL DEFAULT 'publish',
  `pingStatus` int(2) NOT NULL DEFAULT '0',
  `alias` varchar(255) NOT NULL,
  `toPing` int(100) NOT NULL DEFAULT '0',
  `pinged` int(100) NOT NULL DEFAULT '0',
  `catID` int(100) NOT NULL,
  `commentCount` int(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`postID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`postID`, `UserID`, `OwnerID`, `timeCreated`, `timeSaved`, `typeID`, `hidden`, `status`, `pingStatus`, `alias`, `toPing`, `pinged`, `catID`, `commentCount`) VALUES
(1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, 'publish', 0, 'test', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `posts_cat`
--

CREATE TABLE IF NOT EXISTS `posts_cat` (
  `catID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pcatID` int(11) NOT NULL,
  `UserID` int(100) NOT NULL,
  `OwnerID` int(100) NOT NULL,
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeSaved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hidden` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`catID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `posts_cat_lang`
--

CREATE TABLE IF NOT EXISTS `posts_cat_lang` (
  `cplID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) NOT NULL,
  `cpID` int(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`cplID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `posts_lang`
--

CREATE TABLE IF NOT EXISTS `posts_lang` (
  `plID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) NOT NULL DEFAULT '1',
  `postID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`plID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `posts_lang`
--

INSERT INTO `posts_lang` (`plID`, `lang_id`, `postID`, `title`, `content`) VALUES
(1, 6, 1, 'test_ru', 'test_ru'),
(2, 34, 1, 'test_en', 'test_en');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `langID` int(2) NOT NULL DEFAULT '0',
  `alias` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `UserID` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `OwnerID` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeSaved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `categoryID` int(11) NOT NULL DEFAULT '0',
  `extraCategoryID` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` longtext NOT NULL,
  `metaTitle` varchar(255) DEFAULT NULL,
  `metaDescription` mediumtext,
  `metaKeywords` longtext,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hidden` (`hidden`),
  KEY `categoryID` (`categoryID`),
  KEY `extraCategoryID` (`extraCategoryID`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `langID`, `alias`, `UserID`, `OwnerID`, `hidden`, `timeCreated`, `timeSaved`, `categoryID`, `extraCategoryID`, `name`, `code`, `price`, `description`, `metaTitle`, `metaDescription`, `metaKeywords`, `icon`) VALUES
(1, 0, 'test', 'root', 'root', 0, '2015-05-14 14:33:01', '2015-05-15 10:02:37', 1, 0, 'test', 'test', 100.00, 'test 1 33', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `products_category`
--

CREATE TABLE IF NOT EXISTS `products_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `UserID` varchar(30) NOT NULL,
  `OwnerID` varchar(30) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeSaved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `alias` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `titleIcon` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `intro` mediumtext,
  `description` mediumtext,
  `position` int(11) NOT NULL DEFAULT '0',
  `metaTitle` varchar(255) DEFAULT NULL,
  `metaDescription` mediumtext,
  `metaKeywords` text,
  `showProducts` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hidden` (`hidden`),
  KEY `timeCreated` (`timeCreated`),
  KEY `parentID` (`parentID`),
  KEY `code` (`alias`),
  KEY `name` (`name`),
  KEY `position` (`position`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `products_category`
--

INSERT INTO `products_category` (`id`, `parentID`, `UserID`, `OwnerID`, `hidden`, `timeCreated`, `timeSaved`, `alias`, `logo`, `titleIcon`, `name`, `intro`, `description`, `position`, `metaTitle`, `metaDescription`, `metaKeywords`, `showProducts`) VALUES
(1, 0, '1', '1', 0, '2015-05-14 18:25:05', '0000-00-00 00:00:00', 'cat1', NULL, NULL, 'cat1', NULL, 'cat1', 0, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `reference`
--

CREATE TABLE IF NOT EXISTS `reference` (
  `id` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `UserID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OwnerID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '1',
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeSaved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` text COLLATE utf8_bin NOT NULL,
  `type` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT 'dropdown',
  `modules` text COLLATE utf8_bin NOT NULL,
  `module` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `accessGroups` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `hidden` (`hidden`),
  KEY `code` (`code`),
  KEY `OwnerID` (`OwnerID`),
  KEY `UserID` (`UserID`),
  KEY `timeCreated` (`timeCreated`,`timeSaved`),
  KEY `module` (`module`),
  KEY `accessGroups` (`accessGroups`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `reference`
--

INSERT INTO `reference` (`id`, `code`, `UserID`, `OwnerID`, `hidden`, `timeCreated`, `timeSaved`, `name`, `type`, `modules`, `module`, `accessGroups`) VALUES
('1', 'ReferenceType', '1', 'root', 1, '0000-00-00 00:00:00', '2009-11-12 17:20:23', '<en>Presentation Type</en><fr>Presentation Type</fr><nl>Presentation Type</nl><ru>Presentation Type</ru>', 'dropdown', '', '', ''),
('4', 'ResourceTypeFieldsPlaces', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Extra fields places</en><fr>Extra fields places</fr>', 'checkboxes', '', '', ''),
('5', 'DataTypes', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Data types</en><fr>Data types</fr>', 'dropdown', '', '', ''),
('6', 'PermAll', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Activation status</fr><en>Activation status</en>', 'dropdown', '', '', ''),
('7', 'YesNo', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Boolean (Yes/No)</fr><en>Boolean (Yes/No)</en>', 'dropdown', '', '', ''),
('11', 'ViewBox.BoxSide', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Box sides</fr><en>Box sides</en>', 'dropdown', '', '', ''),
('12', 'transport', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Transportation companies</fr><en>Transportation companies</en>', 'dropdown', '', '', ''),
('13', 'bannerplace', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Banner place</fr><en>Banner place</en>', 'dropdown', '', '', ''),
('14', 'target', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Target</fr><en>Target</en>', 'dropdown', '', '', ''),
('16', 'ViewType', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Layout types</fr><en>Layout types</en>', 'dropdown', '', '', ''),
('17', 'ResourceTypeField.ResourceTypeFieldMode', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Resource field type</fr><en>Resource field type</en>', 'dropdown', '', '', ''),
('18', 'plusminus', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>PlusMinus</fr><en>PlusMinus</en>', 'dropdown', '', '', ''),
('19', 'ResourceTemplate', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Templates</en><fr>Templates</fr>', 'dropdown', '', '', ''),
('20', 'Resource.ResourceStatus', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Status</en><fr>Status</fr>', 'dropdown', '', '', ''),
('36', 'Resource.ResourceAccessType', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Resources function type</en><fr>Resources function type</fr>', 'dropdown', '', '', ''),
('21', 'ResourceComment.ResourceCommentContactType', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Contact type for comments</en><fr>Contact type for comments</fr>', 'radioboxes', '', '', ''),
('25', 'ResourceOrderPaymentStatus', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Payment Status</en><fr>Payment Status</fr>', 'dropdown', '', '', ''),
('26', 'ResourceOrderStatus', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Order Status</en><fr>Order Status</fr>', 'dropdown', '', '', ''),
('27', 'fonts', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Font families</fr>', 'dropdown', '', '', ''),
('28', 'fontstyles', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Font styles</fr>', 'dropdown', '', '', ''),
('29', 'fontweights', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Font weights</fr>', 'dropdown', '', '', ''),
('30', 'fontsizes', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Font sizes</fr>', 'dropdown', '', '', ''),
('31', 'fontdecorations', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Font decorations</fr>', 'dropdown', '', '', ''),
('32', 'Resource.ResourcePaidRate', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Administrator''s rating</en>', 'dropdown', '', '', ''),
('33', 'Resource.ResourceReviewsRate', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Reviews rating</en>', 'dropdown', '', '', ''),
('34', 'Resource.ResourceFeaturedOptions', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Featured options</en>', 'checkboxes', '', '', ''),
('35', 'ResourceType.ResourceTypeHiddenPlaces', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Resource type places</en>', 'checkboxes', '', '', ''),
('37', 'Resource.ResourceLocation', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Resource Location</en><fr>Resource Location</fr>', 'dropdown', '', '', ''),
('38', 'ResourceCategory.ResourceCategoryHiddenPlaces', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Categories hidden places</en><fr>Categories hidden places</fr>', 'checkboxes', '', '', ''),
('39', 'HelpArticleType', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Help Article Type</fr>', 'dropdown', '', '', ''),
('40', 'SynchronizationType', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Synchronization Types</fr>', 'dropdown', '', '', ''),
('41', 'LockMode', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Synchronization lock mode</fr>', 'dropdown', '', '', ''),
('42', 'Section.SectionViewOptions', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Page listing options</fr>', 'checkboxes', '', '', ''),
('43', 'Section.SectionActionOptions', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Page actions options (page link bar)</fr>', 'checkboxes', '', '', ''),
('44', 'Section.SectionCommentsOptions', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Page comments options</fr>', 'checkboxes', '', '', ''),
('48', 'Section.SectionViewType', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Items shown on page</fr>', 'dropdown', '', '', ''),
('49', 'SectionGroup.SectionGroupType', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Section group type</en>', 'dropdown', '', '', ''),
('50', 'SectionGroup.SectionGroupViewOptions', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Section group view options</en>', 'checkboxes', '', '', ''),
('51', 'Language.LanguageTranslationType', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Language translation types</en><fr>Language translation types</fr>', 'dropdown', '', '', ''),
('52', 'ResourceType.ResourceTypeAction', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Resource type actions</en>', 'dropdown', '', '', ''),
('11365480442006040319043581m211', 'PropertyTemplate', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Property template</en><fr>Property template</fr>', 'dropdown', '', '', ''),
('11365480442006040319043581m111', 'PropertyType.PropertyTypeHiddenPlaces', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Property type hidden places</en><fr>Property type hidden places</fr>', 'checkboxes', '', '', ''),
('1136548044200604031910210z1111', 'PropertyTypeField.PropertyTypeFieldMode', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Property field mode</en><fr>Property field mode</fr>', 'dropdown', '', '', ''),
('11365480442006040319120096v111', 'PropertyTypeField.PropertyTypeFieldHidenPlaces', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Property field hidden places</en><fr>Property field hidden places</fr>', 'checkboxes', '', '', ''),
('11365480442006040322314381r111', 'Property.PropertyFeaturedOptions', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Featured propertis places</en><fr>Featured propertis places</fr>', 'checkboxes', '', '', ''),
('11365480442006040323005675u111', 'Property.PropertyActionType', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Property action type</en><fr>Property action type</fr>', 'dropdown', '', '', ''),
('11365480442006040921244344d111', 'PropertyTypeField.PropertyTypeFieldParts', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Property information parts</en><fr>Property information parts</fr>', 'checkboxes', '', '', ''),
('11365480442006041016085452d111', 'PropertyResourceType', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Property Resource Type</en><fr>Property Resource Type</fr>', 'dropdown', '', '', ''),
('11365480442006041300391546v111', 'Property.PropertyStatus', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Property activation status</en><fr>Property activation status</fr>', 'dropdown', '', '', ''),
('11365480442006041312544352x111', 'PropertyOrderPaymentStatus', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Property order paymetn status</en><fr>Property order paymetn status</fr>', 'dropdown', '', '', ''),
('11365480442006041312562439q111', 'PropertyOrderStatus', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Property order status</en><fr>Property order status</fr>', 'dropdown', '', '', ''),
('11365480442006050103522987r111', 'Currency', 'root', 'root', 4, '2006-05-01 03:52:29', '2006-05-01 03:52:29', '<en>Currencies refference</en>', 'dropdown', '', '', ''),
('11365480442006050104084232y111', 'Property.PropertyPriceComments', 'root', 'root', 4, '2006-05-01 04:08:42', '2006-05-01 04:13:48', '<en>Property price comments</en>', 'checkboxes', '', '', ''),
('11365480442006051312071812l111', 'RegionType', 'root', 'root', 4, '2006-05-13 12:07:18', '2006-05-13 12:07:18', '<en>Region type</en>', 'dropdown', '', '', ''),
('11365480442006060909533955r111', 'Property.DecorationOrder', 'root', 'root', 4, '2006-06-09 09:53:39', '2006-06-13 03:20:21', '<en>Decorative order</en>', 'dropdown', '', '', ''),
('11365480442006062509175374o111', 'Property.PropertyPriceRangeSearch', 'root', 'root', 4, '2006-06-25 09:17:53', '2006-06-25 09:17:53', '<en>Property price range</en>', 'dropdown', '', '', ''),
('11365480442006061308035056c111', 'Property.PropertyLeasehold', 'root', 'root', 4, '2006-06-13 08:03:50', '2006-06-13 08:56:50', '<en>No of years (if leasehold selected)</en>', 'dropdown', '', '', ''),
('11365480442006061307440372n111', 'Property.PropertyTenure', 'root', 'root', 4, '2006-06-13 07:44:03', '2006-06-13 08:54:01', '<en>Tenure</en>', 'dropdown', '', '', ''),
('11365480442006061308322367z111', 'Property.PropertyType', 'root', 'root', 4, '2006-06-13 08:32:23', '2006-06-13 08:32:23', '<en>Type of property</en>', 'dropdown', '', '', ''),
('11365480442006062707470694t111', 'Property.PropertyDistancePostCodeSearch', 'root', 'root', 4, '2006-06-27 07:47:06', '2006-06-27 07:47:06', '<en>Property distance from Post Code</en>', 'dropdown', '', '', ''),
('11365480442006061811475348z111', 'UserTypeField.UserTypeFieldGroups', 'root', 'root', 4, '2006-06-18 11:47:53', '2006-06-18 11:47:53', '<en>Registration form fields groups</en>', 'checkboxes', '', '', ''),
('11365480442006093017315696d111', 'NewsFeed.NewsFeedStatus', 'root', 'root', 4, '2006-09-30 17:31:56', '2006-09-30 17:31:56', '<en>News - Feed status</en><ru>News - Feed status</ru><ua>News - Feed status</ua>', 'dropdown', '', '', ''),
('1136548044200610141500213p1111', 'encodings', 'root', 'root', 4, '2006-10-14 15:00:21', '2006-10-14 15:00:36', '<en>Encodings</en><ru>Encodings</ru><ua>Encodings</ua>', 'dropdown', '', '', ''),
('11365480442007021819424670x111', 'NewsArticle.NewsArticleType', 'root', 'root', 4, '2007-02-18 19:42:46', '2007-02-18 19:42:46', '<en>News articles type</en><ru>Типы статей</ru>', 'dropdown', '', '', ''),
('11365480442007030423353619m111', 'NewsFeed.NewsFeedType', 'root', 'root', 4, '2007-03-04 23:35:36', '2007-03-04 23:35:36', '<en>News - indexer types</en><ru>News - типы индексаторов</ru>', 'dropdown', '', '', ''),
('11365480442007032512550674g111', 'NewsArticle.NewsArticleRating', 'root', 'root', 4, '2007-03-25 12:55:06', '2007-03-25 12:55:06', '<en>News article rates</en><ru>Рейтинги вестей</ru>', 'dropdown', '', '', ''),
('11365480442007033019070382y111', 'NewsFeed.NewsFeedPresentationMode', 'root', 'root', 4, '2007-03-30 19:07:03', '2007-03-30 19:07:03', '<en>News - articles presentation mode</en><ru>News - способ представления статей</ru>', 'dropdown', '', '', ''),
('11365480442006102114151298c111', 'WebSite.WebSiteType', 'root', 'root', 4, '2006-10-21 14:15:12', '2006-10-21 14:15:12', '<en>Web site types</en><ru>Web site types</ru>', 'dropdown', '', '', ''),
('11365480442006102114260852l111', 'WebSite.WebSiteActionType', 'root', 'root', 4, '2006-10-21 14:26:08', '2006-10-21 14:26:08', '<en>Web site action types</en><ru>Web site action types</ru>', 'dropdown', '', '', ''),
('11365480442006102114274737u111', 'WebSite.WebSiteStatus', 'root', 'root', 4, '2006-10-21 14:27:47', '2006-10-21 14:27:47', '<en>Web site status</en><ru>Web site status</ru>', 'dropdown', '', '', ''),
('11365480442006102114455980s111', 'WebSite.WebSiteExchangeType', 'root', 'root', 4, '2006-10-21 14:45:59', '2006-10-21 14:45:59', '<en>Web site exchange links method</en><ru>Web site exchange links method</ru>', 'dropdown', '', '', ''),
('11365480442006102114481067t111', 'WebSite.WebSiteExchangePRType', 'root', 'root', 4, '2006-10-21 14:48:10', '2006-10-21 14:48:10', '<en>Web site exchange links with PR mode</en><ru>Web site exchange links with PR mode</ru>', 'dropdown', '', '', ''),
('11365480442006103001335833r111', 'WebSiteKeyword.KeywordImportFields', 'root', 'root', 4, '2006-10-30 01:33:58', '2006-10-30 01:34:11', '<en>Submission - keywords import fields</en><ru>Submission - keywords import fields</ru>', 'dropdown', '', '', ''),
('11365480442007040118254779t111', 'NewsCategory.NewsCategoryFilterOptions', 'root', 'root', 4, '2007-04-01 18:25:47', '2007-04-01 18:25:47', '<en>News - news filter options</en><ru>News - news filter options</ru>', 'checkboxes', '', '', ''),
('11365480442007062314300356n111', 'Owner.OwnerFunctions', 'root', 'root', 4, '2007-06-23 14:30:03', '2007-06-23 14:30:03', '<en>Virtual website functions</en><ru>Функции персонального вебсайта</ru>', 'checkboxes', '', '', ''),
('11365480442007062318391012c111', 'Owner.OwnerType', 'root', 'root', 4, '2007-06-23 18:39:10', '2007-06-23 18:39:10', '<en>Core - owner types</en><ru>Core - типы подсистем</ru>', 'dropdown', '', '', ''),
('11365480442007062522125138x111', 'Owner.OwnerOptions', 'root', 'root', 4, '2007-06-25 22:12:51', '2009-04-18 15:38:22', '<en>Core - Owner options</en><ru>Core - Опции персонального вебсайта</ru>', 'checkboxes', '', '', ''),
('11365480442007062817044391b111', 'MonthNames', 'root', 'root', 4, '2007-06-28 17:04:43', '2007-06-28 17:04:43', '<en>Month names</en><ru>Названия месяцев</ru><ua>Названия месяцев</ua>', 'dropdown', '', '', ''),
('1136548044200709021853458i1111', 'NewsArticle.NewsArticleSourceType', 'root', 'root', 4, '2007-09-02 18:53:45', '2007-09-02 18:53:45', '<en>News - news sources types</en><ru>News - типы источников статей</ru><ua>News - типы источников статей</ua>', 'dropdown', '', '', ''),
('11365480442007090814215348y111', 'NewsArticle.NewsArticleProcessingStatus', 'root', 'root', 4, '2007-09-08 14:21:53', '2007-09-08 14:21:53', '<en>News processing status</en><ru>News - статус обработки статьи</ru><ua>News - статус обработки статьи</ua>', 'dropdown', '', '', ''),
('11365480442007090814571235l111', 'NewsArticle.CommentsTypes', 'root', 'root', 4, '2007-09-08 14:57:12', '2007-09-08 14:57:12', '<en>News - comments types for ads</en><ru>News - типы комментариев для объявлений</ru><ua>News - типы комментариев для объявлений</ua>', 'dropdown', '', '', ''),
('11365480442007100323430210j111', 'Layouts', 'root', 'root', 4, '2007-10-03 23:43:02', '2007-10-03 23:43:02', '<en>System layouts</en><ru>System layouts</ru>', 'dropdown', '', '', ''),
('11365480442008043014064248i111', 'Form.FormStatus', 'root', 'root', 4, '2008-04-30 14:06:42', '2008-04-30 14:06:42', '<en>Forms - processing statuses</en><fr>Forms - processing statuses</fr>', 'dropdown', '', '', ''),
('11365480442008043015012421l111', 'Owner.OwnerGroup', 'root', 'root', 4, '2008-04-30 15:01:24', '2008-04-30 15:01:24', '<en>Owner groups</en><fr>Owner groups</fr>', 'dropdown', '', '', ''),
('1136548044200805211043186v1111', 'WebSite.WebSitePaymentStatus', 'root', 'root', 4, '2008-05-21 10:43:18', '2008-05-27 14:46:15', '<en>Web site payment status</en><fr>Statuts des paiements</fr>', 'dropdown', '', '', ''),
('11365480442008052410444273s111', 'Styles', 'root', 'root', 4, '2008-05-24 10:44:42', '2008-05-24 10:44:42', '<en>Styles</en><fr>Styles</fr>', 'dropdown', '', '', ''),
('11365480442008052714592797g111', 'UserField_11_FirstName', 'root', 'root', 4, '2008-05-27 14:59:27', '2008-05-27 14:59:27', '', '', '', '', ''),
('11365480442006121000565645y111', 'ResourceAuthor.ResourceAuthorActivities', 'root', 'root', 4, '2006-12-10 00:56:56', '2006-12-10 00:59:37', '<en>Companies activities</en><ru>Виды деятельности</ru>', 'checkboxes', '', '', ''),
('11365480442006121001003496z111', 'ResourceAuthor.ResourceAuthorMarkets', 'root', 'root', 4, '2006-12-10 01:00:34', '2006-12-10 01:02:14', '<en>Markets</en><ru>Региональные рынки</ru>', 'checkboxes', '', '', ''),
('11365480442006121001015420x111', 'ResourceAuthor.ResourceAuthorCategories', 'root', 'root', 4, '2006-12-10 01:01:54', '2006-12-10 01:02:23', '<en>Companies categories</en><ru>Отраслевые рынки</ru>', 'checkboxes', '', '', ''),
('11365480442006121001055951z111', 'ResourceAuthor.ResourceAuthorPresentationOptions', 'root', 'root', 4, '2006-12-10 01:05:59', '2006-12-10 01:05:59', '<en>Author presentation options</en><ru>Опции представления компании</ru>', 'checkboxes', '', '', ''),
('11365480442006121001090969t111', 'ResourceAuthor.ResourceAuthorFeaturedOptions', 'root', 'root', 4, '2006-12-10 01:09:09', '2006-12-10 01:09:09', '<en>Authors featured options</en><ru>Специальные опции для базы фирм</ru>', 'checkboxes', '', '', ''),
('11365480442006121001103967c111', 'ResourceAuthor.ResourceAuthorStatus', 'root', 'root', 4, '2006-12-10 01:10:39', '2006-12-10 01:10:39', '<en>Author''s status</en><ru>Статус фирмы</ru>', 'dropdown', '', '', ''),
('11365480442007041516270393j111', 'ParserAgent.ParserAgentType', 'root', 'root', 4, '2007-04-15 16:27:03', '2007-04-15 16:27:03', '<en>Parser - agent types</en><ru>Parser - типы индексаторов</ru>', 'dropdown', '', '', ''),
('11365480442007041516365415v111', 'ParserAgent.ParserAgentPresentationMode', 'root', 'root', 4, '2007-04-15 16:36:54', '2007-04-15 16:36:54', '<en>Parser - info presentation mode</en><ru>Parser - виды представления данных</ru>', 'dropdown', '', '', ''),
('11365480442007041517354350m111', 'ParserAgent.ParserAgentStatus', 'root', 'root', 4, '2007-04-15 17:35:43', '2007-04-15 17:35:43', '<en>Parser - agent development status</en><ru>Parser - статус индексатора</ru>', 'dropdown', '', '', ''),
('11365480442007042116225918g111', 'ParserAgent.ParserAgentProcessingType', 'root', 'root', 4, '2007-04-21 16:22:59', '2007-04-21 16:22:59', '<en>Parser - data types</en><ru>Parser - типы данных обрабатываемых парсером</ru>', 'dropdown', '', '', ''),
('11365480442007042116325696p111', 'ParserAgent.ParserAgentContentType', 'root', 'root', 4, '2007-04-21 16:32:56', '2007-04-21 16:32:56', '<en>Parser - content type</en><ru>Parser - тип контента</ru>', 'dropdown', '', '', ''),
('11365480442007050111412368r111', 'ResourceOffer.ResourceOfferType', 'root', 'it', 4, '2007-05-01 11:41:23', '2007-05-01 11:41:23', '<en>Resource - resource offer type</en><ru>Resource - типы объявлений</ru>', 'dropdown', '', '', ''),
('11365480442007052620360191i111', 'ParserAgent.ParserAgentProcessingOptions', 'root', 'root', 4, '2007-05-26 20:36:01', '2007-05-26 20:36:01', '<en>Parser - processing options</en><ru>Parser - опции отработки индексатора</ru>', 'checkboxes', '', '', ''),
('11365480442007092302293846x111', 'ResourceOffer.CommentsTypes', 'root', 'root', 4, '2007-09-23 02:29:38', '2007-09-23 02:29:38', '<en>Resource - type of comments for offer</en><ru>Resource - типы сообщений к объявлению</ru>', 'dropdown', '', '', ''),
('11365480442007111421204335j111', 'resourceOffer.resourceOfferOrderByDropdown', 'root', 'root', 4, '2007-11-14 21:20:43', '2007-11-14 21:20:43', '<fr>ResourceOffer Order By Dropdown</fr>', 'dropdown', '', '', ''),
('11365480442007111712592225h111', 'ResourceTypeField.ResourceTypeFieldSearchOptions', 'root', 'root', 4, '2007-11-17 12:59:22', '2007-11-17 12:59:22', '<en>Resource - fields places options</en><fr>Resource - fields places options</fr>', 'dropdown', '', '', ''),
('11365480442007111713033976l111', 'ResourceTypeFieldSearchOptionsTypes', 'root', 'root', 4, '2007-11-17 13:03:39', '2007-11-17 13:03:39', '<en>Resource - search fields type</en><fr>Resource - search fields type</fr>', 'dropdown', '', '', ''),
('11365480442007112418082548d111', 'PriceRange', 'root', 'root', 4, '2007-11-24 18:08:25', '2007-11-24 18:08:25', '<en>Resource - Price range</en><fr>Resource - Price range</fr>', 'dropdown', '', '', ''),
('11365480442008010417142375q111', 'BillingOrder.OrderPaymentStatus', 'root', 'root', 4, '2008-01-04 17:14:23', '2008-01-04 17:14:23', '<en>Billing - order payment statuses</en><fr>Billing - order payment statuses</fr>', 'dropdown', '', '', ''),
('11365480442008010420482590a111', 'BillingTransaction.TransactionReason', 'root', 'root', 4, '2008-01-04 20:48:25', '2008-01-04 20:48:25', '<en>Billing - transaction reason</en><fr>Billing - transaction reason</fr>', 'dropdown', '', '', ''),
('11365480442008011217582656o111', 'PropertyOrderBy', 'root', 'root', 4, '2008-01-12 17:58:26', '2008-03-16 15:49:16', '<fr>PropertyOrderBy</fr><en>Property - order by</en><ru>Property - order by</ru><ua>Property - order by</ua>', 'dropdown', '', '', ''),
('1136548044200801262130074o1111', 'ResourceOrder.ResourceOrderIntention', 'root', 'root', 4, '2008-01-26 21:30:07', '2008-01-26 21:30:07', '<en>Resource - order intention</en>', 'dropdown', '', '', ''),
('1136548044200801271753302t1111', 'ResourceOffer.ResourceOfferStatus', 'root', 'root', 4, '2008-01-27 17:53:30', '2008-01-27 17:53:30', '<en>Resource offer - client status</en>', 'dropdown', '', '', ''),
('11365480442008020101500222g111', 'ResourceOffer.ResourceOfferSourceType', 'root', 'root', 4, '2008-02-01 01:50:02', '2008-02-01 01:50:02', '<en>Resource offers - source type</en>', 'dropdown', '', '', ''),
('11365480442008022402411214c111', 'SearchSections', 'root', '', 4, '2008-02-24 02:41:12', '2008-02-24 02:41:12', '<en>Search sections</en>', 'dropdown', '', '', ''),
('11365480442008030919434344r111', 'ResourceAuthor.ResourceAuthorOrderByDropdown', 'root', 'root', 4, '2008-03-09 19:43:43', '2008-03-09 19:43:43', '<en>Resource author  - Order by list</en>', 'dropdown', '', '', ''),
('11365480442008031100234478f111', 'TagGroups', 'root', 'root', 4, '2008-03-11 00:23:44', '2008-03-11 00:23:44', '<en>Core - Tag groups</en>', 'dropdown', '', '', ''),
('11365480442008031616171421w111', 'WebSiteOrderBy', 'root', 'root', 4, '2008-03-16 16:17:14', '2008-03-16 16:17:14', '<en>Submission - web site order by</en><ru>Submission - web site order by</ru><ua>Submission - web site order by</ua>', 'dropdown', '', '', ''),
('11365480442008041123031975p111', 'ResourceCategory.ResourceCategoryGroup', 'root', 'root', 4, '2008-04-11 23:03:19', '2008-04-11 23:03:19', '<en>Resource - category groups</en>', 'dropdown', '', '', ''),
('11365480442008041318522063v111', 'ParserAgent.ParserAgentTask', 'root', 'root', 4, '2008-04-13 18:52:20', '2008-04-13 18:52:20', '<en>Parser - agent task</en>', 'dropdown', '', '', ''),
('11365480442008092410514490q111', 'ResourceAuthor.ResourceAuthorType', 'root', 'root', 4, '2008-09-24 10:51:44', '2008-09-24 10:51:44', '<en>Resource author - types</en><ru>Resource author - types</ru>', 'dropdown', '', '', ''),
('11365480442008102420113072t111', 'WebSite.WebSiteAccessType', 'root', 'root', 4, '2008-10-24 20:11:30', '2008-10-24 20:11:30', '<en>Submission - access type  - free or paid</en><ru>Submission - access type  - free or paid</ru>', 'dropdown', '', '', ''),
('11365480442008102420191684r111', 'WebSite.WebSiteReviewsRate', 'root', 'root', 4, '2008-10-24 20:19:16', '2008-10-24 20:19:16', '<en>Submission - website rating</en><ru>Submission - website rating</ru>', 'dropdown', '', '', ''),
('11365480442008062016434041d111', 'WebSiteLink.WebSiteLinkStatus', 'root', 'root', 4, '2008-06-20 16:43:40', '2008-06-20 16:43:40', '<en>Submission - Link submission status</en><ru>Submission - Link submission status</ru>', 'dropdown', '', '', ''),
('11365480442008102620240971o111', 'WebSiteLinkKeyword.WebSiteLinkKeywordType', 'root', 'root', 4, '2008-10-26 20:24:09', '2008-10-26 20:24:09', '<en>Submission - keywords type</en><ru>Submission - keywords type</ru>', 'dropdown', '', '', ''),
('11365480442008103101492830l111', 'WebSiteLink.WebSiteLinkStatusExchange', 'root', 'root', 4, '2008-10-31 01:49:28', '2008-10-31 01:49:28', '<en>Submission - website links statuses for exchange</en><ru>Submission - website links statuses for exchange</ru>', 'dropdown', '', '', ''),
('11365480442008110123022595l111', 'WebSiteLink.WebSiteLinkStatusBuylink', 'root', 'root', 4, '2008-11-01 23:02:25', '2008-11-01 23:02:25', '<en>Submission - website links statuses for links sale</en><ru>Submission - website links statuses for links sale</ru>', 'dropdown', '', '', ''),
('11365480442008032123381680x111', 'ResourceAuthor.ResourceAuthorReminderMode', 'root', 'root', 4, '2008-03-21 23:38:16', '2008-03-21 23:38:16', '<en>Resource author - reminder mode</en><ru>Resource author - способы уведомления</ru>', 'checkboxes', '', '', ''),
('11365480442008032218164082l111', 'ResourceOffer.ResourceOfferOwnerType', 'root', 'root', 4, '2008-03-22 18:16:40', '2008-03-22 18:16:40', '<en>Resource offer - Owner type</en><ru>Resource offer - Тип заказчика</ru>', 'dropdown', '', '', ''),
('1136548044200803221825598c1111', 'ResourceOffer.ResourceOfferCompletionDate', 'root', 'root', 4, '2008-03-22 18:25:59', '2008-03-22 18:25:59', '<en>Resource offer - Completion Date</en><ru>Resource offer - время выполнения заказа</ru>', 'dropdown', '', '', ''),
('11365480442008032218320686q111', 'ResourceOffer.ResourceOfferNumberOfOffers', 'root', 'root', 4, '2008-03-22 18:32:06', '2008-03-22 18:32:06', '<en>Resource offers - Max Number Of Offers</en><ru>Resource offers - Максимлаьное количество предложений</ru>', 'dropdown', '', '', ''),
('11365480442008032219010264v111', 'ResourceOffer.ResourceOfferPurpose', 'root', 'root', 4, '2008-03-22 19:01:02', '2008-03-22 19:01:02', '<en>Resource offer - purpose of request</en><ru>Resource offer - цель заявки</ru>', 'dropdown', '', '', ''),
('11365480442008032300331993p111', 'ResourceOffer.ResourceOfferLeadRate', 'root', 'root', 4, '2008-03-23 00:33:19', '2008-03-23 00:33:19', '<en>Resource offer - lead rates</en><ru>Resource offer - цены за сделку</ru>', 'dropdown', '', '', ''),
('11365480442008033019455840s111', 'User.Status', 'root', 'root', 4, '2008-03-30 19:45:58', '2008-03-30 19:45:58', '<en>User - Status</en><ru>User - статус подтверждения регитсрации</ru>', 'dropdown', '', '', ''),
('11365480442008110215384893r111', 'ResourceOffer.ResourceOfferSupplierType', 'root', 'root', 4, '2008-11-02 15:38:48', '2008-11-02 15:38:48', '<en>Resource offer  - supplier type</en><ru>Resource offer  - supplier type</ru>', 'dropdown', '', '', ''),
('1136548044200811030054011u1111', 'WebSite.FileTypes', 'root', 'root', 4, '2008-11-03 00:54:01', '2008-11-03 00:54:01', '<en>Submission - documents and file types</en><ru>Submission - documents and file types</ru>', 'dropdown', '', '', ''),
('1136548044200806232345024o1111', 'Task.TaskPriority', 'root', 'root', 4, '2008-06-23 23:45:02', '2008-06-23 23:45:02', '<en>Tasks manager - Tasks priorities</en><fr>Tasks manager - Tasks priorities</fr>', 'dropdown', '', '', ''),
('11365480442008062323471588b111', 'Task.TaskStatus', 'root', 'root', 4, '2008-06-23 23:47:15', '2008-06-23 23:47:15', '<en>Tasks manager - Tasks statuses</en><fr>Tasks manager - Tasks statuses</fr>', 'dropdown', '', '', ''),
('1136548044200806232349162e1111', 'Task.SearchMode', 'root', 'root', 4, '2008-06-23 23:49:16', '2008-06-23 23:49:16', '<en>Tasks manager - Search mode for tasks</en><fr>Tasks manager - Search mode for tasks</fr>', 'dropdown', '', '', ''),
('11365480442008063018220718f111', 'User.UserCategories', 'root', 'root', 4, '2008-06-30 18:22:07', '2008-06-30 18:23:07', '<en>User - categories</en><fr>User - categories</fr>', 'checkboxes', '', '', ''),
('11365480442008110300544389g111', 'WebSiteFileTypes', 'root', 'root', 4, '2008-11-03 00:54:43', '2008-11-03 00:59:35', '<en>Submission - documents and file types</en><ru>Submission - documents and file types</ru>', 'dropdown', '', '', ''),
('11365480442008110922072091g111', 'BillingPaymentamounts', 'root', 'root', 4, '2008-11-09 22:07:20', '2008-11-09 22:07:20', '<en>Billing - payment amounts to deposit into account</en><ru>Billing - payment amounts to deposit into account</ru>', 'dropdown', '', '', ''),
('11365480442008111612150625y111', 'SearchEngines', 'root', 'root', 4, '2008-11-16 12:15:06', '2008-11-16 12:15:06', '<en>Submission - search engines</en><ru>Submission - search engines</ru>', 'dropdown', '', '', ''),
('11365480442008111622272173y111', 'WebSite.WebSitePaymentType', 'root', 'root', 4, '2008-11-16 22:27:21', '2008-11-16 22:27:21', '<en>Submission - payment types (packages)</en><ru>Submission - payment types (packages)</ru>', 'dropdown', '', '', ''),
('11365480442008112222551052s111', 'WebSite.WebSitePageRank', 'root', 'root', 4, '2008-11-22 22:55:10', '2008-11-22 22:55:10', '<en>Submission - page rank</en><ru>Submission - page rank</ru>', 'dropdown', '', '', ''),
('11365480442008112401550798i111', 'SupportTicket.SupportTicketType', 'root', 'root', 4, '2008-11-24 01:55:07', '2008-11-24 01:55:07', '<en>Support - Ticket type</en><ru>Support - Ticket type</ru>', 'dropdown', '', '', ''),
('11365480442008112401553582t111', 'SupportTicket.SupportTicketPriority', 'root', 'root', 4, '2008-11-24 01:55:35', '2008-11-24 01:55:35', '<en>Support - Ticket priority</en><ru>Support - Ticket priority</ru>', 'dropdown', '', '', ''),
('11365480442008112401560887y111', 'SupportTicket.SupportTicketStatus', 'root', 'root', 4, '2008-11-24 01:56:08', '2008-11-24 03:01:54', '<en>Support - Ticket status</en><ru>Support - Ticket status</ru>', 'dropdown', '', '', ''),
('11365480442008112800353564k111', 'SupportRequest.SupportRequestTypewebdirectory', 'root', 'root', 4, '2008-11-28 00:35:35', '2008-11-28 00:38:52', '<de>Support - web directory update request subjects</de><en>Support - web directory update request subjects</en><fr>Support - web directory update request subjects</fr><ru>Support - web directory update request subjects</ru>', 'dropdown', '', '', ''),
('11365480442008112800444698m111', 'SupportRequest.SupportRequestStatus', 'root', 'root', 4, '2008-11-28 00:44:46', '2008-11-28 00:44:46', '<de>Support - request status</de><en>Support - request status</en><fr>Support - request status</fr><ru>Support - request status</ru>', 'dropdown', '', '', ''),
('11365480442008120819311030l111', 'WebSiteCategory.WebSiteCategoryGroup', 'root', 'root', 4, '2008-12-08 19:31:10', '2008-12-08 19:31:10', '<de>Submission - Category group</de><en>Submission - Category group</en><fr>Submission - Category group</fr><ru>Submission - Category group</ru>', 'dropdown', '', '', ''),
('11365480442008121221354532t111', 'SupportRequest.SupportRequestTypewebsite', 'root', 'root', 4, '2008-12-12 21:35:45', '2008-12-12 21:35:45', '<de>Support - web site update request subjects</de><en>Support - web site update request subjects</en><fr>Support - web site update request subjects</fr><ru>Support - web site update request subjects</ru>', 'dropdown', '', '', ''),
('11365480442008122200545133i111', 'Owner.OwnerPaymentType', 'root', 'root', 4, '2008-12-22 00:54:51', '2008-12-22 00:54:51', '<en>Core - Owner payment types</en><ru>Core - Owner payment types</ru>', 'dropdown', '', '', ''),
('11365480442008122701535379p111', 'Owner.OwnerStatus', 'root', 'root', 4, '2008-12-27 01:53:53', '2008-12-27 01:53:53', '<en>Core - Owner website status</en><ru>Core - Owner website status</ru>', 'dropdown', '', '', ''),
('11365480442009012420395436i111', 'OwnerRootDomains', 'root', 'root', 4, '2009-01-24 20:39:54', '2009-01-24 20:39:54', '<en>Core - root domains</en><ru>Core - root domains</ru>', 'dropdown', '', '', ''),
('11365480442009012512084684p111', 'Layout.LayoutGroup', 'root', 'root', 4, '2009-01-25 12:08:46', '2009-01-25 12:08:46', '<en>Сore - layouts group</en><ru>Сore - layouts group</ru>', 'dropdown', '', '', ''),
('11365480442009013120072999b111', 'SEOPage.SEOPageBox', 'root', 'root', 4, '2009-01-31 20:07:29', '2009-01-31 20:07:29', '<en>SEO - seo page functions</en><ru>SEO - seo page functions</ru>', 'dropdown', '', '', ''),
('11365480442009041818461113q111', 'Owner.OwnerURLFormat', 'root', 'root', 4, '2009-04-18 18:46:11', '2009-04-18 18:46:11', '<en>Core - Owner URL format</en><ru>Core - Owner URL format</ru>', 'dropdown', '', '', ''),
('11365480442009042821202738g111', 'SEOPage.SEOPageOptions', 'root', 'root', 4, '2009-04-28 21:20:27', '2009-04-28 21:20:27', '<en>SEO - page options</en><ru>SEO - page options</ru>', 'checkboxes', '', '', ''),
('11365480442009091001471729b111', 'PageBoxes.PageBoxIsForLink', 'root', 'root', 4, '2009-09-10 01:47:17', '2009-09-10 01:47:17', '<en>Core - PageBox is for page</en><ru>Core - PageBox is for page</ru>', 'dropdown', '', '', ''),
('11365480442009091221394225o111', 'ResourceOfferPropertyCategories', 'root', 'root', 4, '2009-09-12 21:39:42', '2009-09-12 21:39:42', '<en>Resource offer - real estate categories</en><ru>Resource offer - real estate categories</ru>', 'dropdown', '', '', ''),
('11365480442009091409045260d111', 'Mail.OrderClients', 'root', 's46', 4, '2009-09-14 09:04:52', '2009-09-14 09:04:52', '<en>Mail Order Clients</en><fr>Mail Order Clients</fr><ru>Mail Order Clients</ru>', 'dropdown', '', '', ''),
('11365480442009091409470117d111', 'Mail.OrderLastSent', 'root', 's46', 4, '2009-09-14 09:47:01', '2009-09-14 09:47:01', '<en>Mail Order Last Sent</en><fr>Mail Order Last Sent</fr><ru>Mail Order Last Sent</ru>', 'dropdown', '', '', ''),
('11365480442009091410155496q111', 'ResourceOffer.property.ResourceOfferType', 'root', 'root', 4, '2009-09-14 10:15:54', '2009-09-14 10:49:05', '<en>ResourceOffer - Avertisement type</en><fr>ResourceOffer - Type de annonce</fr><nl>ResourceOffer - Type de annonce</nl><ru>ResourceOffer - Тип объявления</ru>', 'dropdown', '', '', ''),
('11365480442009091413300818m111', 'ResourceOffer.property.ResourceOfferStatus', 'root', 'root', 4, '2009-09-14 13:30:08', '2009-09-14 13:30:08', '<en>ResourceOffer - Property status</en><fr>ResourceOffer - Property status</fr><nl>ResourceOffer - Property status</nl><ru>ResourceOffer - Property status</ru>', 'dropdown', '', '', ''),
('11365480442009092519375180f111', 'Owner.OwnerPaymentStatus', 'root', 'root', 4, '2009-09-25 19:37:51', '2009-09-25 19:37:51', '<en>Core - owner payment status</en><fr>Core - owner payment status</fr><nl>Core - owner payment status</nl><ru>Core - owner payment status</ru>', 'dropdown', '', '', ''),
('11365480442009101816321424u111', 'ResourceOffer.property.ResourceOfferFeaturedType', 'root', 'root', 4, '2009-10-18 16:32:14', '2009-10-18 16:33:05', '<en>Resource offer - featured types for real estate</en><fr>Resource offer - featured types for real estate</fr><nl>Resource offer - featured types for real estate</nl><ru>Resource offer - featured types for real estate</ru>', 'dropdown', '', '', ''),
('11365480442009102323111833f111', 'ResourceTypeField.ResourceTypeFieldParts-property', 'root', 'root', 4, '2009-10-23 23:11:18', '2009-10-23 23:11:18', '<en>Resource - property fields groups</en><fr>Resource - property fields groups</fr><nl>Resource - property fields groups</nl><ru>Resource - property fields groups</ru>', 'dropdown', '', '', ''),
('11365480442009102718191492l111', 'SearchFormViewType', 'root', 'root', 4, '2009-10-27 18:19:14', '2009-10-27 18:19:14', '<en>Search form type</en><fr>Search form type</fr><nl>Search form type</nl><ru>Тип формы поиска</ru>', 'dropdown', '', '', ''),
('11365480442009102718455190o111', 'ListMode', 'root', 'root', 4, '2009-10-27 18:45:51', '2009-10-27 18:45:51', '<en>ListMode</en><fr>ListMode</fr><nl>ListMode</nl><ru>ListMode</ru>', 'dropdown', '', '', ''),
('11365480442009102914482159k111', 'ResourceOfferVehicleCategories', 'root', 'root', 4, '2009-10-29 14:48:21', '2009-10-29 14:48:21', '<en>Vehicle Categories</en><fr>Vehicle Categories</fr><nl>Vehicle Categories</nl><ru>Vehicle Categories</ru>', 'dropdown', '', '', ''),
('11365480442009111300243961v111', 'ResourceField.Bedrooms', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', '<en>Bedrooms</en><fr>Bedrooms</fr><nl>Bedrooms</nl><ru>Bedrooms</ru>', 'dropdown', '', 'resource', ''),
('11365480442009111300243977x411', 'ResourceField.Bathrooms', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', '<en>Bathrooms</en><fr>Salles de bain</fr><nl>Bathrooms</nl><ru>Bathrooms</ru>', 'dropdown', '', 'resource', ''),
('11365480442009111300243958r711', 'ResourceField.Quality', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', '<en>Quality, work to do</en><fr>Etat de la maison</fr><nl>Quality, work to do</nl><ru>Quality, work to do</ru>', 'checkboxes', '', 'resource', ''),
('11365480442009111300243936o311', 'ResourceField.Zoning', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', '<en>Situation</en><fr>Zoning</fr><nl>Situation</nl><ru>Situation</ru>', 'checkboxes', '', 'resource', ''),
('11365480442009111300243944c111', 'ResourceField.ExteriorFeatures', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', '<en>Exterior features</en><fr>Features</fr><nl>Features</nl><ru>Features</ru>', 'checkboxes', '', 'resource', ''),
('11365480442009111300243926j811', 'ResourceField.Neighbours', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', '<en>Situation neighbours</en><fr>Situation neighbours</fr><nl>Situation neighbours</nl><ru>Расположение дома</ru>', 'dropdown', '', 'resource', ''),
('11365480442009111300243990x211', 'ResourceField.orientation', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', '<en>Orientation</en><fr>Orientation</fr><nl>Orientation</nl><ru>Географическое расположение дома</ru>', 'dropdown', '', 'resource', ''),
('11365480442009111300243956p711', 'ResourceField.Situation_other', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', '<en>Other situation</en><fr>Other situation</fr><nl>Other situation</nl><ru>Прочие параметры расположения</ru>', 'dropdown', '', 'resource', ''),
('11365480442009111300243917r411', 'ResourceField.Age', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', '<en>Age of property</en><fr>Age of property</fr><nl>Age of property</nl><ru>Age of property</ru>', 'dropdown', '', 'resource', ''),
('11365480442009111300243915n811', 'ResourceField.Energylabel', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', '<en>Energy label</en><fr>Energy label</fr><nl>Energy label</nl><ru>Energy label</ru>', 'dropdown', '', 'resource', ''),
('11365480442009111300243921f711', 'ResourceField.Heating', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', '<en>Heating</en><fr>Chauffage</fr><nl>Heating</nl><ru>Отопление</ru>', 'checkboxes', '', 'resource', ''),
('11365480442009111300243951m711', 'ResourceField.ContractIsExclusive', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', '<en>Exclusive contract?</en><fr>Mandat exclusive?</fr><nl>Aleenverkoop recht?</nl><ru>Контракт эксклюзивный?</ru>', 'dropdown', '', 'resource', ''),
('11365480442009111300243973q101', 'ResourceField.ApartmentFeatures', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', '<en>Apartment features</en><fr>Apartment features</fr><nl>Apartment features</nl><ru>Apartment features</ru>', 'checkboxes', '', 'resource', ''),
('11365480442009111300243963t711', 'ResourceField.OtherFeaturesEnergy', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', '<en>Other features</en><fr>Exterior features</fr><nl>Exterior features</nl><ru>Exterior features</ru>', 'checkboxes', '', 'resource', ''),
('11365480442009111300243969t211', 'ResourceField.tonegotiate', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', '<en>To negotiate</en><fr>To negotiate</fr><nl>To negotiate</nl><ru>To negotiate</ru>', 'radioboxes', '', 'resource', ''),
('11365480442009111300243976r511', 'ResourceField.climatisation', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', '<en>Climatisation</en><fr>Climatisation</fr><nl>Climatisation</nl><ru>Climatisation</ru>', 'dropdown', '', 'resource', ''),
('1136548044200911130151477l1111', 'ResourceField.OtherPropertyFeatures', 'root', 'root', 4, '2009-11-13 01:51:47', '2009-11-13 01:51:47', '<en>Other property features</en>', 'dropdown', '', '', ''),
('11365480442010071900161159m111', 'OrderStatuses', 'root', 'bestmoments', 4, '2010-07-19 00:16:11', '2010-07-19 00:16:11', '<ru>Order Statuses</ru><en>Order Statuses</en>', 'dropdown', '', '', ''),
('11365480442010090712165475i111', 'OptionGenerate', 'root', 'root', 4, '2010-09-07 12:16:54', '2010-09-07 12:16:54', '<ru>OptionGenerate</ru><en>OptionGenerate</en>', 'dropdown', '', '', ''),
('11365480442010101812123259x111', 'OrderStatusesYN', 'root', 'bestmoments', 4, '2010-10-18 12:12:32', '2010-10-18 12:12:32', '<ru>Статусы зказов</ru><en>Статусы зказов</en>', 'dropdown', '', '', ''),
('11365480442010120103255198c111', 'OptionDC', 'root', 'bestmoments', 4, '2010-12-01 03:25:51', '2010-12-01 03:25:51', '<ru>Номиналы скидочных карт</ru><en>Номиналы скидочных карт</en>', 'dropdown', '', '', ''),
('11365480442011052517413210c111', 'HotelRating', 'root', 'rai', 4, '2011-05-25 17:41:32', '2011-05-25 17:41:32', '<ru>Hotel Rating</ru><en>Hotel Rating</en>', 'dropdown', '', '', ''),
('11365480442011061123493641v111', 'RaiOrderStatus', 'root', 'rai', 4, '2011-06-11 23:49:36', '2011-06-11 23:49:36', '<ru>Статусы заказов</ru><en>Статусы заказов</en>', 'dropdown', '', '', ''),
('11365480442012101117472373h111', 'ProductItems', 'root', 'ksport', 4, '2012-10-11 17:47:23', '2012-10-11 17:47:23', '<ru>Тип</ru><en>Type</en>', 'dropdown', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `referenceoption`
--

CREATE TABLE IF NOT EXISTS `referenceoption` (
  `id` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `UserID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OwnerID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeSaved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hidden` tinyint(1) NOT NULL DEFAULT '1',
  `referenceID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` text COLLATE utf8_bin NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `color` varchar(7) COLLATE utf8_bin NOT NULL,
  `icon` varchar(150) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `code` (`code`),
  KEY `UserID` (`UserID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `referenceID` (`referenceID`),
  KEY `timeCreated` (`timeCreated`,`timeSaved`),
  KEY `hidden` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `referenceoption`
--

INSERT INTO `referenceoption` (`id`, `code`, `UserID`, `OwnerID`, `timeCreated`, `timeSaved`, `hidden`, `referenceID`, `name`, `position`, `color`, `icon`) VALUES
('1', 'dropdown', '1', '', '0000-00-00 00:00:00', '2009-11-12 19:31:42', 1, '1', '<en>Drop down</en><fr>Drop down</fr><nl>Drop down</nl><ru>Drop down</ru>', 2, '', ''),
('3', 'checkboxes', '1', '', '0000-00-00 00:00:00', '2009-11-12 19:31:42', 1, '1', '<en>Checkboxes</en><fr>Checkboxes</fr><nl>Checkboxes</nl><ru>Checkboxes</ru>', 6, '', ''),
('5', 'radioboxes', '1', '', '0000-00-00 00:00:00', '2009-11-12 19:31:42', 1, '1', '<en>Radioboxes</en><fr>Radioboxes</fr><nl>Radioboxes</nl><ru>Radioboxes</ru>', 8, '', ''),
('6', 'list', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '4', '<en>Items list</en><fr>Items list</fr>', 4, '', ''),
('7', 'details', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '4', '<en>Item details</en><fr>Item details</fr>', 6, '', ''),
('8', 'edit', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '4', '<en>Edit form</en><fr>Edit form</fr>', 8, '', ''),
('9', 'text', '1', '', '0000-00-00 00:00:00', '2009-10-23 17:01:32', 1, '5', '<en>Text area</en><fr>Text area</fr><nl>Text area</nl><ru>Text area</ru>', 6, '', ''),
('10', 'dropdown', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', '<fr>Drop down</fr><en>Drop down</en>', 14, '', ''),
('11', 'checkboxes', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', '<fr>Checkboxes</fr><en>Checkboxes</en>', 18, '', ''),
('12', 'radioboxes', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', '<fr>Radioboxes</fr><en>Radioboxes</en>', 20, '', ''),
('13', 'date', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', '<fr>Date</fr><en>Date</en>', 22, '', ''),
('14', 'time', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', '<fr>Time</fr><en>Time</en>', 24, '', ''),
('15', 'number', '1', '', '0000-00-00 00:00:00', '2009-10-23 17:02:16', 1, '5', '<en>Decimal number</en><fr>Decimal number</fr><nl>Decimal number</nl><ru>Decimal number</ru>', 12, '', ''),
('16', '1', '1', '', '0000-00-00 00:00:00', '2010-07-17 22:05:42', 1, '6', '<ru>Активно</ru><en>Active</en>', 2, '', ''),
('17', '4', '1', '', '0000-00-00 00:00:00', '2010-07-17 22:05:42', 1, '6', '<ru>Заблокировано</ru><en>Blocked</en>', 4, '', ''),
('18', 'N', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '7', '<fr>No</fr><en>No</en>', 14, '', ''),
('19', 'Y', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '7', '<fr>Yes</fr><en>Yes</en>', 42, '', ''),
('20', 'top', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11', '<fr>Top</fr><en>Top</en>', 16, '', ''),
('21', 'left', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11', '<fr>Left</fr><en>Left</en>', 44, '', ''),
('22', 'center', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11', '<fr>Center</fr><en>Center</en>', 62, '', ''),
('23', 'right', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11', '<fr>Right</fr><en>Right</en>', 68, '', ''),
('24', 'bottom', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11', '<fr>Bottom</fr><en>Bottom</en>', 72, '', ''),
('25', 'system', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11', '<fr>System</fr><en>System</en>', 76, '', ''),
('26', 'image', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', '<fr>Image</fr><en>Image</en>', 28, '', ''),
('27', 'file', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', '<fr>File</fr><en>File</en>', 30, '', ''),
('28', 'tnt', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '12', '<fr>TNT</fr><en>TNT</en>', 18, '', ''),
('29', 'ups', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '12', '<fr>UPS</fr><en>UPS</en>', 46, '', ''),
('30', 'left', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '13', '<fr>Left</fr><en>Left</en>', 4, '', ''),
('31', 'right', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '13', '<fr>Right</fr><en>Right</en>', 6, '', ''),
('32', 'center', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '13', '<fr>Center</fr><en>Center</en>', 8, '', ''),
('33', '_blank', '1', '', '0000-00-00 00:00:00', '2009-09-02 13:04:38', 1, '14', '<en>New window</en><ru>В новом окне</ru>', 4, '', ''),
('34', '_self', '1', '', '0000-00-00 00:00:00', '2009-09-02 13:05:29', 1, '14', '<en>Current window</en><ru>В текущем окне</ru>', 2, '', ''),
('35', 'front', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '16', '<fr>Front-end</fr><en>Front-end</en>', 24, '', ''),
('36', 'admin', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '16', '<fr>Admin panel</fr><en>Admin panel</en>', 52, '', ''),
('37', 'attribute', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '17', '<en>Extra field</en><fr>Extra field</fr>', 26, '', ''),
('38', 'option', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '17', '<en>Extra option</en><fr>Extra option</fr>', 54, '', ''),
('39', '+', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '18', '<fr>+</fr><en>+</en>', 28, '', ''),
('40', '-', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '18', '<fr>-</fr><en>-</en>', 56, '', ''),
('41', 'products', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '19', '<en>Products</en><fr>Products</fr>', 12, '', ''),
('42', 'offers', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '19', '<en>Offers</en><fr>Offers</fr>', 14, '', ''),
('43', 'search', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '4', '<en>Search form</en><fr>Search form</fr>', 2, '', ''),
('44', 'active', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '20', '<en>Active</en><fr>Active</fr>', 1, '', ''),
('45', 'hidden', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '20', '<en>Hidden</en><fr>Hidden</fr>', 2, '', ''),
('46', 'input', 'root', 'root', '0000-00-00 00:00:00', '2009-10-23 17:01:18', 1, '5', '<en>Language field</en><fr>Language field</fr><nl>Language field</nl><ru>Language field</ru>', 4, '', ''),
('47', 'multiple', 'root', 'root', '0000-00-00 00:00:00', '2009-10-23 17:02:47', 1, '5', '<en>Multiple drop down</en><fr>Multiple drop down</fr><nl>Multiple drop down</nl><ru>Multiple drop down</ru>', 16, '', ''),
('48', 'money', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', '<en>Money</en><fr>Money</fr>', 32, '', ''),
('49', 'onlyname', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '21', '<en>Only mention my name</en><fr>Only mention my name</fr>', 1, '', ''),
('50', 'email', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '21', '<en>Link to my email</en><fr>Link to my email</fr>', 2, '', ''),
('51', 'emailandwebsite', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '21', '<en>Link to my email and website</en><fr>Link to my email and website</fr>', 3, '', ''),
('52', 'color', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', '<fr>Color</fr><en>Color</en>', 34, '', ''),
('54', 'Arial', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '27', '<fr>Arial</fr>', 1, '', ''),
('55', 'Courrier', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '27', '<fr>Courrier</fr>', 2, '', ''),
('56', 'Times', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '27', '<fr>Times</fr>', 3, '', ''),
('57', 'Verdana', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '27', '<fr>Verdana</fr>', 4, '', ''),
('58', 'normal', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '28', '<fr>Normal</fr>', 2, '', ''),
('59', 'italic', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '28', '<fr>Italic</fr>', 4, '', ''),
('60', 'normal', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '29', '<fr>Normal</fr>', 2, '', ''),
('61', 'bold', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '29', '<fr>Bold</fr>', 4, '', ''),
('62', '9', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', '<fr>9</fr>', 1, '', ''),
('63', '10', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', '<fr>10</fr>', 2, '', ''),
('64', '11', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', '<fr>11</fr>', 3, '', ''),
('65', '12', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', '<fr>12</fr>', 4, '', ''),
('66', '13', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', '<fr>13</fr>', 5, '', ''),
('67', '14', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', '<fr>14</fr>', 6, '', ''),
('68', '16', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', '<fr>16</fr>', 7, '', ''),
('69', '18', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', '<fr>18</fr>', 8, '', ''),
('70', '20', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', '<fr>20</fr>', 9, '', ''),
('71', '24', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', '<fr>24</fr>', 10, '', ''),
('72', '30', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', '<fr>30</fr>', 11, '', ''),
('73', '36', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', '<fr>36</fr>', 12, '', ''),
('74', '48', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', '<fr>48</fr>', 13, '', ''),
('75', 'none', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '31', '<fr>None</fr>', 1, '', ''),
('76', 'underline', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '31', '<fr>Underline</fr>', 2, '', ''),
('77', 'line-through', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '31', '<fr>Line through</fr>', 3, '', ''),
('78', 'oblique', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '28', '<fr>Oblique</fr>', 5, '', ''),
('79', '1', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '32', '<en>1</en>', 1, '', ''),
('80', '2', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '32', '<en>2</en>', 2, '', ''),
('81', '3', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '32', '<en>3</en>', 3, '', ''),
('82', '4', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '32', '<en>4</en>', 4, '', ''),
('83', '5', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '32', '<en>5</en>', 5, '', ''),
('84', '1', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '33', '<en>1</en>', 1, '', ''),
('85', '2', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '33', '<en>2</en>', 2, '', ''),
('86', '3', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '33', '<en>3</en>', 3, '', ''),
('87', '4', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '33', '<en>4</en>', 4, '', ''),
('88', '5', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '33', '<en>5</en>', 5, '', ''),
('89', 'home', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '34', '<en>Home page</en><fr>Home page</fr>', 2, '', ''),
('90', 'type1', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '34', '<en>Deal of the day</en><fr>Coup de coeur </fr>', 4, '', ''),
('91', 'submit', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '35', '<en>Submit resource</en>', 1, '', ''),
('92', 'view', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '35', '<en>View resources (tabs)</en>', 2, '', ''),
('93', 'edit', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '35', '<en>Edit resource</en>', 3, '', ''),
('95', 'articles', 'root', 'root', '0000-00-00 00:00:00', '2006-09-24 05:22:50', 1, '19', '<en>Articles</en><ru>Articles</ru><ua>Articles</ua>', 2, '', ''),
('96', 'new', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '26', '<en>New</en>', 1, '', ''),
('97', 'processing', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '26', '<en>Processing</en>', 1, '', ''),
('98', 'preparedforshipment', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '26', '<en>Prepared for shipment</en>', 2, '', ''),
('99', 'shiped', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '26', '<en>Shiped</en><fr>Shiped</fr>', 3, '', ''),
('100', 'completed', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '26', '<en>Completed</en><fr>Completed</fr>', 4, '', ''),
('101', 'canceled', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '26', '<en>Canceled</en><fr>Canceled</fr>', 5, '', ''),
('102', 'onhold', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '26', '<en>On hold</en><fr>On hold</fr>', 6, '', ''),
('103', 'paid', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '25', '<en>Paid</en><fr>Paid</fr>', 1, '', ''),
('104', 'notpaid', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '25', '<en>Not paid</en><fr>Not paid</fr>', 2, '', ''),
('105', 'partlypaid', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '25', '<en>Partly paid</en><fr>Partly paid</fr>', 3, '', ''),
('111', 'fixed', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '36', '<en>Fixed price</en><fr>Fixed price</fr>', 2, '', ''),
('110', 'bid', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '36', '<en>Bidding</en><fr>Bidding</fr>', 1, '', ''),
('108', 'type2', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '34', '<en>Featured page 2</en><fr>Featured page 2</fr>', 6, '', ''),
('109', 'type3', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '34', '<en>Featured page 3</en><fr>Featured page 3</fr>', 8, '', ''),
('112', 'none', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '36', '<en>No price ad</en><fr>No price ad</fr>', 3, '', ''),
('113', 'paris', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '37', '<en>Paris</en><fr>Paris</fr>', 1, '', ''),
('114', 'new', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '19', '', 8, '', ''),
('115', 'news', 'root', 'root', '0000-00-00 00:00:00', '2006-09-24 05:23:02', 1, '19', '<fr>News</fr><en>News</en><ru>News</ru><ua>News</ua>', 4, '', ''),
('118', 'tree', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '38', '<en>Categories menu</en><fr>Categories menu</fr>', 1, '', ''),
('119', 'dropdown', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '38', '<en>Categories drop down</en><fr>Categories drop down</fr>', 2, '', ''),
('120', 'main', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '38', '<en>Categories center listing</en><fr>Categories center listing</fr>', 3, '', ''),
('124', 'faq', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '39', '<fr>FAQ</fr>', 3, '', ''),
('122', 'tips', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '39', '<fr>Tips</fr>', 2, '', ''),
('123', 'helparticle', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '39', '<fr>Help Article</fr>', 1, '', ''),
('125', 'all', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '40', '<fr>All sides</fr>', 1, '', ''),
('126', 'put', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '40', '<fr>Put to central server</fr>', 2, '', ''),
('127', 'get', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '40', '<fr>Get from centra server</fr>', 3, '', ''),
('128', 'l', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '41', '<fr>Locked</fr>', 4, '', ''),
('129', 'p', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '41', '<fr>Lock to put</fr>', 8, '', ''),
('130', 'g', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '41', '<fr>Lock to get</fr>', 6, '', ''),
('131', 'n', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '41', '<fr>Not locked</fr>', 2, '', ''),
('132', 'currentleveltop', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '42', '<fr>Show current level pages in top drop down</fr>', 1, '', ''),
('133', 'lowerleveltop', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '42', '<fr>Show lower level of pages in top drop down</fr>', 2, '', ''),
('134', 'lowerlevellist', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '42', '<fr>Show lower level pages in the list</fr>', 3, '', ''),
('135', 'back', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '43', '<fr>Activate back link</fr>', 1, '', ''),
('136', 'print', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '43', '<fr>Activate print link</fr>', 2, '', ''),
('137', 'pdf', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '43', '<fr>Activate PDF link</fr>', 3, '', ''),
('138', 'addtofavorite', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '43', '<fr>Activate add to favorite link</fr>', 4, '', ''),
('139', 'sendtofriend', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '43', '<fr>Activate send to friend link</fr>', 5, '', ''),
('140', 'active', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '44', '<fr>Activate comments</fr>', 2, '', ''),
('141', 'date', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '44', '<fr>Show date for comments</fr>', 4, '', ''),
('143', 'hideintros', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '42', '<fr>Hide intro text from lower level pages listed</fr>', 4, '', ''),
('144', 'showresources', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '48', '<fr>Show products and offers</fr>', 1, '', ''),
('145', 'showintroinmenu', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '42', '<fr>Show page intro in menu</fr>', 5, '', ''),
('146', 'sitemap', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '50', '<en>Hide from sitemap</en>', 2, '', ''),
('147', 'menu', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '49', '<en>Menu</en>', 1, '', ''),
('148', 'system', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '49', '<en>System</en>', 2, '', ''),
('149', 'layout', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '49', '<en>Layout links</en>', 3, '', ''),
('150', 'manually', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '51', '<en>Manually translation</en><fr>Manually translation</fr>', 1, '', ''),
('151', 'babelfish', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '51', '<en>Babelfish</en><fr>Babelfish</fr>', 2, '', ''),
('152', 'allowners', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '50', '<en>Available for all owners</en><fr>Available for all owners</fr>', 3, '', ''),
('153', 'shoppingcart', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '52', '<en>Shopping cart</en>', 2, '', ''),
('154', 'sellbid', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '52', '<en>Sell bid</en>', 4, '', ''),
('155', 'buybid', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '52', '<en>Buy bid</en>', 6, '', ''),
('156', 'enquiry', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '52', '<en>Enquiry</en>', 7, '', ''),
('157', 'order', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '52', '<en>Order</en>', 8, '', ''),
('158', 'no', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '52', '<en>No forms</en>', 9, '', ''),
('11365480442006040319074938s111', 'island', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040319043581m211', '<en>Island</en><fr>Island</fr>', 1, '', ''),
('11365480442006040319084092l111', 'addproperty', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040319043581m111', '<en>Add property</en><fr>Add property</fr>', 1, '', ''),
('11365480442006040319090717e111', 'list', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040319043581m111', '<en>Property types list</en><fr>Property types list</fr>', 2, '', ''),
('11365480442006040319105360x111', 'field', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '1136548044200604031910210z1111', '<en>Extra field</en><fr>Extra field</fr>', 1, '', ''),
('11365480442006040319111770k111', 'option', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '1136548044200604031910210z1111', '<en>Extra option (selected during ordering)</en><fr>Extra option (selected during ordering)</fr>', 2, '', ''),
('11365480442006040319123068b111', 'list', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040319120096v111', '<en>List of properties</en><fr>List of properties</fr>', 4, '', ''),
('11365480442006040319143092v111', 'details', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040319120096v111', '<en>Property details</en><fr>Property details</fr>', 6, '', ''),
('11365480442006041016093272i111', 'photo', 'root', 'root', '0000-00-00 00:00:00', '2006-04-22 18:06:47', 1, '11365480442006041016085452d111', '<fr>Photo</fr><en>Photos</en>', 2, '', ''),
('11365480442006040322321551a111', 'home', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040322314381r111', '<en>Homepage</en><fr>Homepage</fr>', 1, '', ''),
('11365480442006040322322727j111', 'top10', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040322314381r111', '<en>Top10</en><fr>Top10</fr>', 2, '', ''),
('11365480442006040323011347o111', 'sell', 'root', 'root', '0000-00-00 00:00:00', '2006-04-22 09:09:03', 1, '11365480442006040323005675u111', '<fr>To sell</fr><en>Property for sale</en>', 2, '', ''),
('11365480442006040323012442w111', 'rent', 'root', 'root', '0000-00-00 00:00:00', '2006-04-22 09:09:16', 1, '11365480442006040323005675u111', '<fr>To rent</fr><en>Rental property</en>', 4, '', ''),
('11365480442006040323013717z111', 'buy', 'root', 'root', '0000-00-00 00:00:00', '2006-05-01 20:31:58', 1, '11365480442006040323005675u111', '<fr>Buy request</fr><en>Request to buy or rent a property</en>', 6, '', ''),
('11365480442006040921253137b111', 'main', 'root', 'root', '0000-00-00 00:00:00', '2006-05-01 11:04:48', 1, '11365480442006040921244344d111', '<fr>Main</fr><en>Property profile</en>', 2, '', ''),
('11365480442006040921254722s111', 'owner', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040921244344d111', '<en>Owner fields</en><fr>Owner fields</fr>', 6, '', ''),
('1136548044200604092126020z1111', 'admin', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040921244344d111', '<en>Admnistrator</en><fr>Admnistrator</fr>', 8, '', ''),
('11365480442006040921263319p111', 'agent', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040921244344d111', '<en>Agents fields</en><fr>Agents fields</fr>', 10, '', ''),
('11365480442006042304184468o111', 'companies', 'root', 'root', '2006-04-23 04:18:44', '2006-04-23 04:18:44', 1, '19', '<en>Companies</en>', 10, '', ''),
('11365480442006041016100845j111', 'video', 'root', 'root', '0000-00-00 00:00:00', '2006-04-22 18:07:10', 1, '11365480442006041016085452d111', '<fr>File</fr><en>Video presentations</en>', 6, '', ''),
('11365480442006041300393063c111', 'underOffer', 'root', 'root', '0000-00-00 00:00:00', '2006-06-13 09:30:31', 1, '11365480442006041300391546v111', '<fr>Ative</fr><en>Under offer</en>', 4, '', ''),
('11365480442006041300394314r111', 'temporarilyUnavailable', 'root', 'root', '0000-00-00 00:00:00', '2006-06-13 09:30:59', 1, '11365480442006041300391546v111', '<fr>Hidden</fr><en>Temporarily unavailable </en>', 6, '', ''),
('11365480442006041309213099q111', 'forSale', 'root', 'root', '0000-00-00 00:00:00', '2006-06-13 09:29:56', 1, '11365480442006041300391546v111', '<fr>New</fr><en>For sale</en>', 2, '', ''),
('11365480442006041312550199k111', 'notpaid', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006041312544352x111', '<en>Not paid</en><fr>Not paid</fr>', 1, '', ''),
('11365480442006041312551229q111', 'paid', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006041312544352x111', '<en>Paid</en><fr>Paid</fr>', 2, '', ''),
('11365480442006041312553564p111', 'partlypaid', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006041312544352x111', '<en>Partly paid</en><fr>Partly paid</fr>', 3, '', ''),
('11365480442006041312554887l111', 'sent', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006041312544352x111', '<en>Payment sent</en><fr>Payment sent</fr>', 4, '', ''),
('1136548044200604131256430y1111', 'new', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006041312562439q111', '<en>New</en><fr>New</fr>', 1, '', ''),
('11365480442006041312570788j111', 'discussion', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006041312562439q111', '<en>In discussion</en><fr>In discussion</fr>', 2, '', ''),
('11365480442006041312572312n111', 'accepted', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006041312562439q111', '<en>Accepted</en><fr>Accepted</fr>', 3, '', ''),
('11365480442006041413595693n111', 'location', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', '<en>Location</en><fr>Location</fr>', 26, '', ''),
('11365480442006041415184951v111', 'char', 'root', 'root', '0000-00-00 00:00:00', '2009-10-23 17:00:49', 1, '5', '<en>Character</en><fr>Character</fr><nl>Character</nl><ru>Character</ru>', 2, '', ''),
('11365480442006051312073954r111', 'continent', 'root', 'root', '2006-05-13 12:07:39', '2010-05-15 23:29:59', 4, '11365480442006051312071812l111', '<ru>Continent</ru><en>Continent</en>', 6, '', ''),
('11365480442006050103524470r111', 'USD', 'root', 'root', '2006-05-01 03:52:44', '2010-02-13 00:23:11', 1, '11365480442006050103522987r111', '<en>USD</en><el>USD</el><eg>USD</eg><de>USD</de><>USD</><fr>USD</fr><es>USD</es><it>USD</it><tu>USD</tu><ru>USD</ru>', 4, '', ''),
('11365480442006050103530629s111', 'EUR', 'root', 'root', '2006-05-01 03:53:06', '2010-02-13 00:23:11', 1, '11365480442006050103522987r111', '<en>EUR</en><el>EUR</el><eg>EUR</eg><de>EUR</de><>EUR</><fr>EUR</fr><es>EUR</es><it>EUR</it><tu>EUR</tu><ru>EUR</ru>', 6, '', ''),
('11365480442006050103534464k111', 'GBP', 'root', 'root', '2006-05-01 03:53:44', '2010-02-13 00:23:11', 4, '11365480442006050103522987r111', '<en>GBP</en><el>GBP</el><eg>GBP</eg><de>GBP</de><fr>GBP</fr><es>GBP</es><it>GBP</it><tu>GBP</tu><ru>GBP</ru>', 8, '', ''),
('11365480442006050103535715i111', 'CAD', 'root', 'root', '2006-05-01 03:53:57', '2010-02-13 00:23:11', 4, '11365480442006050103522987r111', '<en>CAD</en><el>CAD</el><eg>CAD</eg><de>CAD</de><fr>CAD</fr><es>CAD</es><it>CAD</it><tu>CAD</tu><ru>CAD</ru>', 10, '', ''),
('11365480442006050103540935x111', 'AUD', 'root', 'root', '2006-05-01 03:54:09', '2010-02-13 00:23:11', 4, '11365480442006050103522987r111', '<en>AUD</en><el>AUD</el><eg>AUD</eg><de>AUD</de><fr>AUD</fr><es>AUD</es><it>AUD</it><tu>AUD</tu><ru>AUD</ru>', 12, '', ''),
('11365480442006050103543838e111', 'JPY', 'root', 'root', '2006-05-01 03:54:38', '2010-02-13 00:23:11', 4, '11365480442006050103522987r111', '<en>JPY</en><el>JPY</el><eg>JPY</eg><de>JPY</de><fr>JPY</fr><es>JPY</es><it>JPY</it><tu>JPY</tu><ru>JPY</ru>', 14, '', ''),
('1136548044200605010354582u1111', 'RUB', 'root', 'root', '2006-05-01 03:54:58', '2010-02-13 00:23:11', 4, '11365480442006050103522987r111', '<en>RUB</en><el>RUB</el><eg>RUB</eg><de>RUB</de><fr>RUB</fr><es>RUB</es><it>RUB</it><tu>RUB</tu><ru>RUB</ru>', 16, '', ''),
('11365480442006050103551194l111', 'CNY', 'root', 'root', '2006-05-01 03:55:11', '2010-02-13 00:23:11', 4, '11365480442006050103522987r111', '<en>CNY</en><el>CNY</el><eg>CNY</eg><de>CNY</de><fr>CNY</fr><es>CNY</es><it>CNY</it><tu>CNY</tu><ru>CNY</ru>', 18, '', ''),
('11365480442006050103553038o111', 'CHF', 'root', 'root', '2006-05-01 03:55:30', '2010-02-13 00:23:11', 4, '11365480442006050103522987r111', '<en>CHF</en><el>CHF</el><eg>CHF</eg><de>CHF</de><fr>CHF</fr><es>CHF</es><it>CHF</it><tu>CHF</tu><ru>CHF</ru>', 20, '', ''),
('11365480442006050104090136y111', 'negotiable', 'root', 'root', '2006-05-01 04:09:01', '2006-05-01 04:09:01', 1, '11365480442006050104084232y111', '<en>Negotiable</en>', 2, '', ''),
('11365480442006050104101162r111', 'financing', 'root', 'root', '2006-05-01 04:10:11', '2006-05-01 04:10:11', 1, '11365480442006050104084232y111', '<en>Financing Available</en>', 4, '', ''),
('11365480442006050104115872n111', 'night', 'root', 'root', '2006-05-01 04:11:58', '2006-05-01 04:13:17', 1, '11365480442006050104084232y111', '<en>Rent per night</en>', 6, '', ''),
('11365480442006050104120825f111', 'week', 'root', 'root', '2006-05-01 04:12:08', '2006-05-01 04:12:08', 1, '11365480442006050104084232y111', '<en>Rent per week</en>', 8, '', ''),
('11365480442006050104121763z111', 'month', 'root', 'root', '2006-05-01 04:12:17', '2006-05-01 04:12:17', 1, '11365480442006050104084232y111', '<en>Rent per month</en>', 10, '', ''),
('11365480442006050111041289c111', 'contact', 'root', 'root', '2006-05-01 11:04:12', '2006-05-01 11:05:06', 1, '11365480442006040921244344d111', '<en>Contact information</en>', 4, '', ''),
('11365480442006051312091898y111', 'continentr', 'root', 'root', '2006-05-13 12:09:18', '2010-05-15 23:29:59', 4, '11365480442006051312071812l111', '<ru>Continental region</ru><en>Continental region</en>', 8, '', ''),
('11365480442006051312100529h111', 'region', 'root', 'root', '2006-05-13 12:10:05', '2010-05-15 23:29:59', 4, '11365480442006051312071812l111', '<ru>Region/State</ru><en>Region/State</en>', 12, '', ''),
('1136548044200605131210158e1111', 'country', 'root', 'root', '2006-05-13 12:10:15', '2010-05-15 23:29:59', 4, '11365480442006051312071812l111', '<ru>Страна</ru><en>Country</en><>Страна</>', 10, '', ''),
('11365480442006051312112782e111', 'city', 'root', 'root', '2006-05-13 12:11:27', '2010-05-15 23:29:59', 4, '11365480442006051312071812l111', '<ru>City</ru><en>City</en>', 14, '', ''),
('11365480442006051312121914s111', 'district', 'root', 'root', '2006-05-13 12:12:19', '2010-05-15 23:29:59', 4, '11365480442006051312071812l111', '<ru>City district</ru><en>City district</en>', 16, '', ''),
('11365480442006051407043477c111', 'virtual', 'root', 'root', '2006-05-14 07:04:34', '2006-05-14 07:04:34', 1, '50', '<en>Show in virtual website sitemap</en>', 4, '', ''),
('11365480442006060909565984f111', 'excellent', 'root', 'root', '2006-06-09 09:56:59', '2006-06-09 09:56:59', 1, '11365480442006060909533955r111', '<en>Excellent</en>', 2, '', ''),
('1136548044200606090957389x1111', 'verygood', 'root', 'root', '2006-06-09 09:57:38', '2006-06-09 09:57:38', 1, '11365480442006060909533955r111', '<en>Very good</en>', 4, '', ''),
('11365480442006061302522271y111', 'good', 'root', 'root', '2006-06-13 02:52:22', '2006-06-13 02:52:22', 1, '11365480442006060909533955r111', '<en>Good</en>', 6, '', ''),
('11365480442006061302531595h111', 'aboveAverage', 'root', 'root', '2006-06-13 02:53:15', '2006-06-13 02:57:03', 1, '11365480442006060909533955r111', '<en>Above average</en>', 8, '', ''),
('1136548044200606130257581w1111', 'needsMinorDecoration', 'root', 'root', '2006-06-13 02:57:58', '2006-06-13 02:57:58', 1, '11365480442006060909533955r111', '<en>Needs minor decoration</en>', 9, '', ''),
('11365480442006061302595262z111', 'needsCompleteRedecoration', 'root', 'root', '2006-06-13 02:59:52', '2006-06-13 02:59:52', 1, '11365480442006060909533955r111', '<en>Needs complete redecoration</en>', 10, '', ''),
('11365480442006061303013642n111', 'majorWorkRequired', 'root', 'root', '2006-06-13 03:01:36', '2006-06-13 03:01:36', 1, '11365480442006060909533955r111', '<en>Major work required</en>', 11, '', ''),
('11365480442006062508285921x111', 'edit', 'root', 'root', '2006-06-25 08:28:59', '2006-06-25 08:28:59', 1, '11365480442006040319120096v111', '<en>Edit or add property form</en>', 9, '', ''),
('1136548044200606250828335v1111', 'search', 'root', 'root', '2006-06-25 08:28:33', '2006-06-25 08:28:33', 1, '11365480442006040319120096v111', '<en>Full search form</en>', 8, '', ''),
('11365480442006062508282277k111', 'quicksearch', 'root', 'root', '2006-06-25 08:28:22', '2006-06-25 08:28:22', 1, '11365480442006040319120096v111', '<en>Quick search form</en>', 7, '', ''),
('11365480442006061307454551k111', 'freehold', 'root', 'root', '2006-06-13 07:45:45', '2006-06-13 07:45:45', 1, '11365480442006061307440372n111', '<en>Freehold</en>', 1, '', ''),
('11365480442006061307462017h111', 'leasehold', 'root', 'root', '2006-06-13 07:46:20', '2006-06-13 07:46:20', 1, '11365480442006061307440372n111', '<en>Leasehold</en>', 2, '', ''),
('1136548044200606130746492g1111', 'shareOfFreehold', 'root', 'root', '2006-06-13 07:46:49', '2006-06-13 07:46:49', 1, '11365480442006061307440372n111', '<en>Share of Freehold</en>', 3, '', ''),
('11365480442006061307471931x111', 'leasehold', 'root', 'root', '2006-06-13 07:47:19', '2006-06-13 07:47:19', 1, '11365480442006061307440372n111', '<en>Leasehold</en>', 4, '', ''),
('1136548044200606130805460r1111', 'less50years', 'root', 'root', '2006-06-13 08:05:46', '2006-06-13 08:05:46', 1, '11365480442006061308035056c111', '<en>Less than 50 years</en>', 2, '', ''),
('11365480442006062708303813y111', 'years50', 'root', 'root', '2006-06-27 08:30:38', '2006-06-27 08:30:38', 1, '11365480442006061308035056c111', '<en>50+</en>', 3, '', ''),
('11365480442006061308070185q111', 'years60', 'root', 'root', '2006-06-13 08:07:01', '2006-06-13 08:07:01', 1, '11365480442006061308035056c111', '<en>60+</en>', 6, '', ''),
('11365480442006061308072711b111', 'years75', 'root', 'root', '2006-06-13 08:07:27', '2006-06-13 08:07:27', 1, '11365480442006061308035056c111', '<en>75+</en>', 8, '', ''),
('11365480442006061308075231c111', 'year85', 'root', 'root', '2006-06-13 08:07:52', '2006-06-13 08:07:52', 1, '11365480442006061308035056c111', '<en>85+</en>', 10, '', ''),
('1136548044200606130808236m1111', 'year90', 'root', 'root', '2006-06-13 08:08:23', '2006-06-13 08:08:23', 1, '11365480442006061308035056c111', '<en>90+</en>', 12, '', ''),
('11365480442006061308085019t111', 'year95', 'root', 'root', '2006-06-13 08:08:50', '2006-06-13 08:08:50', 1, '11365480442006061308035056c111', '<en>95+</en>', 14, '', ''),
('1136548044200606130809119m1111', 'year100', 'root', 'root', '2006-06-13 08:09:11', '2006-06-13 08:09:11', 1, '11365480442006061308035056c111', '<en>100+</en>', 16, '', ''),
('11365480442006061308325916u111', 'house', 'root', 'root', '2006-06-13 08:32:59', '2006-06-13 08:32:59', 1, '11365480442006061308322367z111', '<en>Terraced House</en>', 1, '', ''),
('11365480442006061308334918h111', 'semi', 'root', 'root', '2006-06-13 08:33:49', '2006-06-13 08:33:49', 1, '11365480442006061308322367z111', '<en>Semi Detached</en>', 2, '', ''),
('11365480442006061308342267e111', 'detached', 'root', 'root', '2006-06-13 08:34:22', '2006-06-13 08:34:22', 1, '11365480442006061308322367z111', '<en>Detached</en>', 3, '', ''),
('11365480442006061308344180j111', 'flat', 'root', 'root', '2006-06-13 08:34:41', '2006-06-13 08:34:41', 1, '11365480442006061308322367z111', '<en>Flat</en>', 4, '', ''),
('11365480442006061308350962r111', 'bungalow', 'root', 'root', '2006-06-13 08:35:09', '2006-06-13 08:35:09', 1, '11365480442006061308322367z111', '<en>Bungalow</en>', 5, '', ''),
('11365480442006061308353696x111', 'maisonette', 'root', 'root', '2006-06-13 08:35:36', '2006-06-13 08:35:36', 1, '11365480442006061308322367z111', '<en>Maisonette</en>', 6, '', ''),
('11365480442006061308360197f111', 'studio', 'root', 'root', '2006-06-13 08:36:01', '2006-06-13 08:36:01', 1, '11365480442006061308322367z111', '<en>Studio</en>', 7, '', ''),
('11365480442006062509191827u111', '50000', 'root', 'root', '2006-06-25 09:19:18', '2006-06-25 09:28:08', 1, '11365480442006062509175374o111', '<en>50,000</en>', 2, '', ''),
('1136548044200606250919331h1111', '100000', 'root', 'root', '2006-06-25 09:19:33', '2006-06-25 09:21:47', 1, '11365480442006062509175374o111', '<en>100,000</en>', 4, '', ''),
('11365480442006062509195125u111', '150000', 'root', 'root', '2006-06-25 09:19:51', '2006-06-25 09:21:31', 1, '11365480442006062509175374o111', '<en>150,000</en>', 6, '', ''),
('11365480442006062509221235x111', '200000', 'root', 'root', '2006-06-25 09:22:12', '2006-06-25 09:22:12', 1, '11365480442006062509175374o111', '<en>200,000</en>', 8, '', ''),
('11365480442006062509222357k111', '250000', 'root', 'root', '2006-06-25 09:22:23', '2006-06-25 09:22:23', 1, '11365480442006062509175374o111', '<en>250,000</en>', 10, '', ''),
('11365480442006062509223318e111', '300000', 'root', 'root', '2006-06-25 09:22:33', '2006-06-25 09:22:33', 1, '11365480442006062509175374o111', '<en>300,000</en>', 12, '', ''),
('11365480442006062509224475g111', '350000', 'root', 'root', '2006-06-25 09:22:44', '2006-06-25 09:22:44', 1, '11365480442006062509175374o111', '<en>350,000</en>', 14, '', ''),
('11365480442006062509225893e111', '400000', 'root', 'root', '2006-06-25 09:22:58', '2006-06-25 09:22:58', 1, '11365480442006062509175374o111', '<en>400,000</en>', 16, '', ''),
('11365480442006062509230954s111', '450000', 'root', 'root', '2006-06-25 09:23:09', '2006-06-25 09:23:09', 1, '11365480442006062509175374o111', '<en>450,000</en>', 18, '', ''),
('11365480442006062509232120i111', '500000', 'root', 'root', '2006-06-25 09:23:21', '2006-06-25 09:23:21', 1, '11365480442006062509175374o111', '<en>500,000</en>', 20, '', ''),
('1136548044200606250923459l1111', '600000', 'root', 'root', '2006-06-25 09:23:45', '2006-06-25 09:23:45', 1, '11365480442006062509175374o111', '<en>600,000</en>', 22, '', ''),
('11365480442006062509235879g111', '700000', 'root', 'root', '2006-06-25 09:23:58', '2006-06-25 09:23:58', 1, '11365480442006062509175374o111', '<en>700,000</en>', 24, '', ''),
('11365480442006062509240925z111', '800000', 'root', 'root', '2006-06-25 09:24:09', '2006-06-25 09:24:09', 1, '11365480442006062509175374o111', '<en>800,000</en>', 26, '', ''),
('11365480442006062509241951s111', '900000', 'root', 'root', '2006-06-25 09:24:19', '2006-06-25 09:24:19', 1, '11365480442006062509175374o111', '<en>900,000</en>', 28, '', ''),
('11365480442006062509250926v111', '1000000', 'root', 'root', '2006-06-25 09:25:09', '2006-06-25 09:25:09', 1, '11365480442006062509175374o111', '<en>1,000,000</en>', 30, '', ''),
('11365480442006062509253347y111', '1250000', 'root', 'root', '2006-06-25 09:25:33', '2006-06-25 09:25:33', 1, '11365480442006062509175374o111', '<en>1,250,000</en>', 32, '', ''),
('11365480442006062509255481u111', '1500000', 'root', 'root', '2006-06-25 09:25:54', '2006-06-25 09:25:54', 1, '11365480442006062509175374o111', '<en>1,500,000</en>', 34, '', ''),
('1136548044200606250926053m1111', '1750000', 'root', 'root', '2006-06-25 09:26:05', '2006-06-25 09:26:05', 1, '11365480442006062509175374o111', '<en>1,750,000</en>', 36, '', ''),
('1136548044200606250926196o1111', '2000000', 'root', 'root', '2006-06-25 09:26:19', '2006-06-25 09:26:19', 1, '11365480442006062509175374o111', '<en>2,000,000</en>', 38, '', ''),
('11365480442006062708291777u111', 'less1miles', 'root', 'root', '2006-06-27 08:29:17', '2006-06-27 08:29:17', 1, '11365480442006062707470694t111', '<en>less then 1ml</en>', 1, '', ''),
('11365480442006062708313022v111', 'miles5', 'root', 'root', '2006-06-27 08:31:30', '2006-06-27 08:31:30', 1, '11365480442006062707470694t111', '<en>5+</en>', 2, '', ''),
('11365480442006062708315424n111', 'miles10', 'root', 'root', '2006-06-27 08:31:54', '2006-06-27 08:31:54', 1, '11365480442006062707470694t111', '<en>10+</en>', 3, '', ''),
('1136548044200606181148247w1111', 'main', 'root', 'root', '2006-06-18 11:48:24', '2007-09-01 18:42:07', 1, '11365480442006061811475348z111', '<en>Main personal information</en><ru>Контактные данные</ru><ua>Main personal information</ua>', 2, '', ''),
('11365480442007021819431132e111', '1', 'root', 'root', '2007-02-18 19:43:11', '2008-09-29 23:26:46', 1, '11365480442007021819424670x111', '<en>Articles</en><ru>Статьи</ru>', 2, '', ''),
('11365480442006092405222161x111', 'rss', 'root', 'root', '2006-09-24 05:22:21', '2006-09-24 05:22:21', 1, '19', '<en>RSS</en><ru>RSS</ru><ua>RSS</ua>', 6, '', ''),
('11365480442006092405235291v111', 'links', 'root', 'root', '2006-09-24 05:23:52', '2006-09-24 05:23:52', 1, '19', '<en>Links</en><ru>Links</ru><ua>Links</ua>', 7, '', ''),
('11365480442006093017321610n111', 'new', 'root', 'root', '2006-09-30 17:32:16', '2007-03-08 15:23:14', 1, '11365480442006093017315696d111', '<ua>New</ua><en>Добавлен</en><ru>Добавлен</ru>', 2, '', ''),
('11365480442006093017323074c111', 'active', 'root', 'root', '2006-09-30 17:32:30', '2007-03-08 15:23:42', 1, '11365480442006093017315696d111', '<ua>Active</ua><en>Active</en><ru>Живой режим</ru>', 10, '', ''),
('11365480442006093017324690j111', 'test', 'root', 'root', '2006-09-30 17:32:46', '2007-03-08 15:24:26', 1, '11365480442006093017315696d111', '<ua>Pending</ua><en>Тестовый режим (разработка)</en><ru>Тестовый режим  (разработка)</ru>', 4, '', ''),
('11365480442006101415005247n111', 'utf-8', 'root', 'root', '2006-10-14 15:00:52', '2007-08-19 21:49:09', 1, '1136548044200610141500213p1111', '<en>utf-8</en><ru>utf-8</ru><ua>utf-8</ua>', 4, '', ''),
('11365480442006101415010839e111', 'windows-1251', 'root', 'root', '2006-10-14 15:01:08', '2007-08-19 21:49:03', 1, '1136548044200610141500213p1111', '<en>Cyrillic - windows-1251</en><ru>Cyrillic - windows-1251</ru><ua>Cyrillic - windows-1251</ua>', 2, '', ''),
('1136548044200610141502043p1111', 'iso-8859-1', 'root', 'root', '2006-10-14 15:02:04', '2006-10-14 15:02:26', 1, '1136548044200610141500213p1111', '<en>Western - iso-8859-1</en><ru>Western - iso-8859-1</ru><ua>Western - iso-8859-1</ua>', 6, '', ''),
('11365480442007021819432819a111', '2', 'root', 'root', '2007-02-18 19:43:28', '2007-02-18 19:43:28', 1, '11365480442007021819424670x111', '<en>Ads</en><ru>Объявление</ru>', 4, '', ''),
('11365480442007030414531117x111', 'changed', 'root', 'root', '2007-03-04 14:53:11', '2007-03-04 14:53:11', 1, '11365480442006093017315696d111', '<en>Changed</en><ru>Поменялся источник</ru>', 8, '', ''),
('11365480442007030423355918n111', 'rss', 'root', 'root', '2007-03-04 23:35:59', '2007-03-04 23:35:59', 1, '11365480442007030423353619m111', '<en>RSS</en><ru>RSS</ru>', 1, '', ''),
('1136548044200703042336236d1111', 'html', 'root', 'root', '2007-03-04 23:36:23', '2007-03-04 23:36:23', 1, '11365480442007030423353619m111', '<en>HTML</en><ru>HTML</ru>', 2, '', ''),
('1136548044200703042336365k1111', 'articles', 'root', 'root', '2007-03-04 23:36:36', '2007-03-04 23:36:36', 1, '11365480442007030423353619m111', '<en>Articles</en><ru>Articles</ru>', 3, '', ''),
('11365480442007030815250421p111', 'pending', 'root', 'root', '2007-03-08 15:25:04', '2007-03-08 15:25:04', 1, '11365480442006093017315696d111', '<en>On hold</en><ru>Отложен</ru>', 12, '', ''),
('11365480442007030912165335u111', 'windows-1252', 'root', 'root', '2007-03-09 12:16:53', '2007-03-09 12:17:11', 1, '1136548044200610141500213p1111', '<en>Western - windows-1252</en><ru>Western - windows-1252</ru>', 8, '', ''),
('1136548044200703251258122a1111', '1', 'root', 'root', '2007-03-25 12:58:12', '2007-03-25 12:58:12', 1, '11365480442007032512550674g111', '<en>1</en><ru>1</ru>', 1, '', ''),
('11365480442007032512582276a111', '2', 'root', 'root', '2007-03-25 12:58:22', '2007-03-25 12:58:22', 1, '11365480442007032512550674g111', '<en>2</en><ru>2</ru>', 2, '', ''),
('11365480442007032514280514o111', '3', 'root', 'root', '2007-03-25 14:28:05', '2007-03-25 14:28:05', 1, '11365480442007032512550674g111', '<en>3</en><ru>3</ru>', 3, '', ''),
('11365480442007032514281591u111', '4', 'root', 'root', '2007-03-25 14:28:15', '2007-03-25 14:28:15', 1, '11365480442007032512550674g111', '<en>4</en><ru>4</ru>', 4, '', ''),
('11365480442007032514282361a111', '5', 'root', 'root', '2007-03-25 14:28:23', '2007-03-25 14:28:23', 1, '11365480442007032512550674g111', '<en>5</en><ru>5</ru>', 5, '', ''),
('11365480442007032514283135x111', '6', 'root', 'root', '2007-03-25 14:28:31', '2007-03-25 14:28:31', 1, '11365480442007032512550674g111', '<en>6</en><ru>6</ru>', 6, '', ''),
('11365480442007032514283858w111', '7', 'root', 'root', '2007-03-25 14:28:38', '2007-03-25 14:28:38', 1, '11365480442007032512550674g111', '<en>7</en><ru>7</ru>', 7, '', ''),
('11365480442007032514284519c111', '8', 'root', 'root', '2007-03-25 14:28:45', '2007-03-25 14:28:45', 1, '11365480442007032512550674g111', '<en>8</en><ru>8</ru>', 8, '', ''),
('1136548044200703251428537v1111', '9', 'root', 'root', '2007-03-25 14:28:53', '2007-03-25 14:28:53', 1, '11365480442007032512550674g111', '<en>9</en><ru>9</ru>', 9, '', ''),
('11365480442007032514290125l111', '10', 'root', 'root', '2007-03-25 14:29:01', '2007-03-25 14:29:01', 1, '11365480442007032512550674g111', '<en>10</en><ru>10</ru>', 10, '', ''),
('11365480442007033019074318b111', '1', 'root', 'root', '2007-03-30 19:07:43', '2007-03-30 19:07:43', 1, '11365480442007033019070382y111', '<en>Show all available data</en><ru>Показывать всю информацию</ru>', 1, '', ''),
('11365480442007033019080759o111', '2', 'root', 'root', '2007-03-30 19:08:07', '2007-03-30 19:08:07', 1, '11365480442007033019070382y111', '<en>Show only intro</en><ru>Показывать только интро</ru>', 2, '', ''),
('11365480442007033019083637m111', '3', 'root', 'root', '2007-03-30 19:08:36', '2007-03-30 19:08:36', 1, '11365480442007033019070382y111', '<en>Show 50% of the article</en><ru>Показать 50% статьи</ru>', 3, '', ''),
('11365480442006102114155565g111', 'link', 'root', 'root', '2006-10-21 14:15:55', '2006-10-21 14:22:37', 1, '11365480442006102114151298c111', '<en>Linked web site</en><ru>Linked web site</ru>', 4, '', ''),
('11365480442006102114160866v111', 'directory', 'root', 'root', '2006-10-21 14:16:08', '2006-10-21 14:18:14', 1, '11365480442006102114151298c111', '<en>Web sites directory</en><ru>Web sites directory</ru>', 6, '', ''),
('11365480442006102114162187r111', 'search', 'root', 'root', '2006-10-21 14:16:21', '2006-10-21 14:16:21', 1, '11365480442006102114151298c111', '<en>Search engine</en><ru>Search engine</ru>', 8, '', ''),
('11365480442006102114164735j111', 'top', 'root', 'root', '2006-10-21 14:16:47', '2006-10-21 14:40:13', 1, '11365480442006102114151298c111', '<en>TOP search engine or directory</en><ru>TOP search engine or directory</ru>', 14, '', ''),
('11365480442006102114171027y111', 'ads', 'root', 'root', '2006-10-21 14:17:10', '2006-10-21 14:19:20', 1, '11365480442006102114151298c111', '<en>Classified ads website</en><ru>Classified ads website</ru>', 12, '', ''),
('11365480442006102114172514r111', 'articles', 'root', 'root', '2006-10-21 14:17:25', '2006-10-21 14:19:30', 1, '11365480442006102114151298c111', '<en>Articles directory</en><ru>Articles directory</ru>', 10, '', ''),
('11365480442006102114174960t111', 'rss', 'root', 'root', '2006-10-21 14:17:49', '2006-10-21 14:19:51', 1, '11365480442006102114151298c111', '<en>RSS feeds directory</en><ru>RSS feeds directory</ru>', 16, '', ''),
('1136548044200610211422120w1111', 'website', 'root', 'root', '2006-10-21 14:22:12', '2006-10-21 14:22:12', 1, '11365480442006102114151298c111', '<en>Registered web site</en><ru>Registered web site</ru>', 2, '', ''),
('11365480442006102114262677m111', 'manually', 'root', 'root', '2006-10-21 14:26:26', '2006-10-21 14:26:26', 1, '11365480442006102114260852l111', '<en>Manually submission</en><ru>Manually submission</ru>', 1, '', ''),
('1136548044200610211426543u1111', 'auto', 'root', 'root', '2006-10-21 14:26:54', '2006-10-21 14:26:54', 1, '11365480442006102114260852l111', '<en>Automatical submission</en><ru>Automatical submission</ru>', 2, '', ''),
('11365480442006102114280289r111', 'active', 'root', 'root', '2006-10-21 14:28:02', '2007-04-01 12:08:13', 1, '11365480442006102114274737u111', '<en>Active</en><ru>Active</ru>', 4, '', ''),
('11365480442006102114282213x111', 'hidden', 'root', 'root', '2006-10-21 14:28:22', '2006-10-21 14:28:22', 1, '11365480442006102114274737u111', '<en>Hidden from directory</en><ru>Hidden from directory</ru>', 6, '', ''),
('11365480442006102114283911w111', 'blocked', 'root', 'root', '2006-10-21 14:28:39', '2006-10-21 14:28:39', 1, '11365480442006102114274737u111', '<en>Blocked from system</en><ru>Blocked from system</ru>', 8, '', ''),
('1136548044200610211435591h1111', 'sale', 'root', 'root', '2006-10-21 14:35:59', '2006-10-21 14:35:59', 1, '11365480442006102114151298c111', '<en>Websites who offers links for sale</en><ru>Websites who offers links for sale</ru>', 18, '', ''),
('11365480442006102114375148o111', 'textads', 'root', 'root', '2006-10-21 14:37:51', '2006-10-21 14:39:01', 1, '11365480442006102114151298c111', '<en>Text ads network</en><ru>Text ads network</ru>', 20, '', ''),
('11365480442006102114380918s111', 'ppc', 'root', 'root', '2006-10-21 14:38:09', '2006-10-21 14:38:09', 1, '11365480442006102114151298c111', '<en>PPC network</en><ru>PPC network</ru>', 22, '', ''),
('11365480442006102114383360s111', 'banner', 'root', 'root', '2006-10-21 14:38:33', '2006-10-21 14:38:33', 1, '11365480442006102114151298c111', '<en>Banners exchange system</en><ru>Banners exchange system</ru>', 24, '', ''),
('11365480442006102114393033b111', 'linksecahnge', 'root', 'root', '2006-10-21 14:39:30', '2006-10-21 14:39:30', 1, '11365480442006102114151298c111', '<en>Links exchange network</en><ru>Links exchange network</ru>', 26, '', ''),
('11365480442006102114394480n111', 'affiliate', 'root', 'root', '2006-10-21 14:39:44', '2006-10-21 14:39:44', 1, '11365480442006102114151298c111', '<en>Affiliate systems</en><ru>Affiliate systems</ru>', 28, '', ''),
('1136548044200610211446381e1111', 'N', 'root', 'root', '2006-10-21 14:46:38', '2006-10-21 14:46:38', 1, '11365480442006102114455980s111', '<en>Do not exchange links automatically</en><ru>Do not exchange links automatically</ru>', 1, '', '');
INSERT INTO `referenceoption` (`id`, `code`, `UserID`, `OwnerID`, `timeCreated`, `timeSaved`, `hidden`, `referenceID`, `name`, `position`, `color`, `icon`) VALUES
('11365480442006102114473116j111', 'Y', 'root', 'root', '2006-10-21 14:47:31', '2006-10-21 14:47:31', 1, '11365480442006102114455980s111', '<en>Exchange links automatically with websites who fits to your exchange profile</en><ru>Exchange links automatically with websites who fits to your exchange profile</ru>', 2, '', ''),
('11365480442006102114483783f111', 'Y', 'root', 'root', '2006-10-21 14:48:37', '2006-10-21 14:48:37', 1, '11365480442006102114481067t111', '<en>Exchnage links with all websites</en><ru>Exchnage links with all websites</ru>', 1, '', ''),
('11365480442006102114491356p111', 'N', 'root', 'root', '2006-10-21 14:49:13', '2006-10-21 14:49:13', 1, '11365480442006102114481067t111', '<en>Exchnage links only with websites with the same or higher Google Page Rank</en><ru>Exchnage links only with websites with the same or higher Google Page Rank</ru>', 2, '', ''),
('11365480442006103001343487l111', 'KeywordName', 'root', 'root', '2006-10-30 01:34:34', '2007-04-01 17:01:27', 1, '11365480442006103001335833r111', '<en>Keyword name</en><ru>Ключевое слово</ru>', 2, '', ''),
('11365480442006103001344911f111', 'KeywordNumber', 'root', 'root', '2006-10-30 01:34:49', '2007-04-01 17:01:54', 1, '11365480442006103001335833r111', '<en>Keyword rate</en><ru>Количество запрсов в поисковиках</ru>', 4, '', ''),
('11365480442007040112080426u111', 'new', 'root', 'root', '2007-04-01 12:08:04', '2007-04-01 12:08:04', 1, '11365480442006102114274737u111', '<en>Just added</en><ru>Just added</ru>', 2, '', ''),
('11365480442007040118262645r111', 'date', 'root', 'root', '2007-04-01 18:26:26', '2007-04-01 18:26:26', 1, '11365480442007040118254779t111', '<en>Do not filter by date</en><ru>Do not filter by date</ru>', 2, '', ''),
('11365480442007040118263931h111', 'location', 'root', 'root', '2007-04-01 18:26:39', '2007-04-01 18:26:51', 1, '11365480442007040118254779t111', '<en>Do not filter by location</en><ru>Do not filter by location</ru>', 4, '', ''),
('11365480442007040119043850s111', '3', 'root', 'root', '2007-04-01 19:04:38', '2007-04-01 19:04:38', 1, '11365480442007021819424670x111', '<en>Catalog</en><ru>Каталог</ru>', 6, '', ''),
('11365480442007052823044315b111', 'partlocation', 'root', 'root', '2007-05-28 23:04:43', '2007-05-28 23:04:43', 1, '11365480442007040118254779t111', '<en>Filter by location partly</en><ru>Фильтровать по региону частично</ru>', 5, '', ''),
('11365480442007062314310577t111', 'forum', 'root', 'root', '2007-06-23 14:31:05', '2007-06-23 14:31:05', 1, '11365480442007062314300356n111', '<en>Forum</en><ru>Форум</ru>', 1, '', ''),
('11365480442007062314312723u111', 'blogmodule', 'root', 'root', '2007-06-23 14:31:27', '2007-06-23 14:31:27', 1, '11365480442007062314300356n111', '<en>Blog</en><ru>Блог</ru>', 1, '', ''),
('11365480442007062318395539f111', 'minisite', 'root', 'root', '2007-06-23 18:39:55', '2009-11-30 21:49:06', 1, '11365480442007062318391012c111', '<en>Mini Site</en><ru>Mini Site</ru>', 4, '', ''),
('1136548044200706231840346k1111', 'companysite', 'root', 'root', '2007-06-23 18:40:34', '2009-11-30 21:49:06', 1, '11365480442007062318391012c111', '<en>Company Site</en><ru>Company Site</ru>', 6, '', ''),
('11365480442007062318520369y111', 'eshop', 'root', 'root', '2007-06-23 18:52:03', '2009-11-30 21:49:06', 1, '11365480442007062318391012c111', '<en>eShop</en><ru>eShop</ru>', 8, '', ''),
('1136548044200908262316363b1111', 'reagency', 'root', 'root', '2009-08-26 23:16:36', '2009-11-30 21:49:06', 1, '11365480442007062318391012c111', '<en>Real Estate Agency</en><ru>Real Estate Agency</ru>', 10, '', ''),
('11365480442007100601264589a111', 'SubmissionIsRequiredValidation', 'root', 'root', '2007-10-06 01:26:45', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', '<en>Web directory: manually validation of new links</en><fr>Web directory: manually validation of new links</fr><nl>Web directory: manually validation of new links</nl><ru>Каталог ссылок: утверждать вручную все новые ссылки даже после автоматической проверки</ru>', 22, '', ''),
('11365480442009042822060580p111', 'SEOPageHideRightMenu', 'root', 'root', '2009-04-28 22:06:05', '2009-04-28 22:06:05', 1, '11365480442009042821202738g111', '<en>Hide right column</en><ru>Скрыть правое меню</ru>', 4, '', ''),
('11365480442007062817052617o111', '01', 'root', 'root', '2007-06-28 17:05:26', '2007-08-07 14:30:38', 1, '11365480442007062817044391b111', '<en>January, jun</en><ru>январь, янв</ru><ua>січень, січ</ua>', 2, '', ''),
('11365480442007080714320050k111', '02', 'root', 'root', '2007-08-07 14:32:00', '2007-08-07 14:32:00', 1, '11365480442007062817044391b111', '<en>february, feb</en><ru>февраль, фев</ru><ua>лютий, лют</ua>', 4, '', ''),
('11365480442007080109215210m111', 'koi8-u', 'root', 'root', '2007-08-01 09:21:52', '2007-08-01 09:21:52', 1, '1136548044200610141500213p1111', '<en>Ukrainian - KOI8</en><ru>Ukrainian - KOI8</ru><ua>Ukrainian - KOI8</ua>', 10, '', ''),
('11365480442007080714331998q111', '03', 'root', 'root', '2007-08-07 14:33:19', '2007-08-07 14:33:19', 1, '11365480442007062817044391b111', '<en>march, mar</en><ru>март, мар</ru><ua>березень, бер</ua>', 6, '', ''),
('11365480442007080714351572g111', '04', 'root', 'root', '2007-08-07 14:35:15', '2007-08-07 14:35:42', 1, '11365480442007062817044391b111', '<en>april, apr</en><ru>апрель, апр</ru><ua>квітень, кві</ua>', 8, '', ''),
('1136548044200708071436513p1111', '05', 'root', 'root', '2007-08-07 14:36:51', '2007-08-07 14:37:43', 1, '11365480442007062817044391b111', '<en>may, may</en><ru>май, май</ru><ua>травень, травн, тра</ua>', 10, '', ''),
('11365480442007080714384234v111', '06', 'root', 'root', '2007-08-07 14:38:42', '2007-08-07 14:38:42', 1, '11365480442007062817044391b111', '<en>june, jun</en><ru>июнь, июн</ru><ua>червень, чер</ua>', 11, '', ''),
('11365480442007080714394881r111', '07', 'root', 'root', '2007-08-07 14:39:48', '2007-08-07 14:39:48', 1, '11365480442007062817044391b111', '<en>july, jul</en><ru>июль, июл</ru><ua>липень, лип</ua>', 12, '', ''),
('11365480442007080714410698e111', '08', 'root', 'root', '2007-08-07 14:41:06', '2007-08-07 14:41:06', 1, '11365480442007062817044391b111', '<en>august, aug</en><ru>август, авг</ru><ua>серпень, серп</ua>', 13, '', ''),
('11365480442007080714420830p111', '09', 'root', 'root', '2007-08-07 14:42:08', '2007-08-07 14:42:08', 1, '11365480442007062817044391b111', '<en>september, sep</en><ru>сентябрь, сен</ru><ua>вересень, вер</ua>', 14, '', ''),
('11365480442007080714430294n111', '10', 'root', 'root', '2007-08-07 14:43:02', '2007-08-07 14:43:02', 1, '11365480442007062817044391b111', '<en>october, oct</en><ru>октябрь, окт</ru><ua>жовтень, жов</ua>', 15, '', ''),
('11365480442007080714440437r111', '11', 'root', 'root', '2007-08-07 14:44:04', '2007-08-07 14:44:04', 1, '11365480442007062817044391b111', '<en>november, nov</en><ru>ноябрь, ноя</ru><ua>листопад, лист</ua>', 16, '', ''),
('11365480442007080714450345m111', '12', 'root', 'root', '2007-08-07 14:45:03', '2007-08-07 14:45:03', 1, '11365480442007062817044391b111', '<en>december, dec</en><ru>декабрь, дек</ru><ua>грудень, груд</ua>', 17, '', ''),
('11365480442007080719225015t111', 'nonews', 'root', 'root', '2007-08-07 19:22:50', '2007-08-07 19:22:50', 1, '11365480442006093017315696d111', '<en>No news</en><ru>Проверить, нет новостей за последнее время</ru><ua>Проверить, нет новостей за последнее время</ua>', 14, '', ''),
('11365480442007080719232642q111', 'correct', 'root', 'root', '2007-08-07 19:23:26', '2007-08-07 19:23:46', 1, '11365480442006093017315696d111', '<en>Correct</en><ru>Исправить</ru><ua>Исправить</ua>', 6, '', ''),
('11365480442007080815415485a111', 'syserr', 'root', 'root', '2007-08-08 15:41:54', '2007-08-08 15:45:55', 1, '11365480442006093017315696d111', '<en>System problem</en><ru>Проблема в системе</ru><ua>Проблема в системе</ua>', 16, '', ''),
('1136548044200708192148410t1111', 'koi8', 'root', 'root', '2007-08-19 21:48:41', '2007-08-19 21:48:41', 1, '1136548044200610141500213p1111', '<en>Russian - KOI8</en><ru>Russian - KOI8</ru><ua>Russian - KOI8</ua>', 12, '', ''),
('11365480442007090119174740p111', 'details', 'root', 'root', '2007-09-01 19:17:47', '2007-09-01 19:17:47', 1, '11365480442006061811475348z111', '<en>About me</en><ru>О себе</ru><ua>О себе</ua>', 3, '', ''),
('11365480442007090119281296x111', 'settings', 'root', 'root', '2007-09-01 19:28:12', '2007-09-01 19:28:12', 1, '11365480442006061811475348z111', '<en>Settings</en><ru>Настройки</ru><ua>Настройки</ua>', 4, '', ''),
('11365480442007090218544280p111', '1', 'root', 'root', '2007-09-02 18:54:42', '2007-09-02 18:54:42', 1, '1136548044200709021853458i1111', '<en>Parsed</en><ru>Отпарсены автоматически</ru><ua>Отпарсены автоматически</ua>', 1, '', ''),
('11365480442007090218550524v111', '2', 'root', 'root', '2007-09-02 18:55:05', '2007-09-02 18:55:05', 1, '1136548044200709021853458i1111', '<en>Add by user</en><ru>Добавлены пользователем</ru><ua>Добавлены пользователем</ua>', 2, '', ''),
('11365480442007090814224663v111', '9', 'root', 'root', '2007-09-08 14:22:46', '2007-09-08 14:22:46', 1, '11365480442007090814215348y111', '<en>Ok</en><ru>Полностью обработано</ru><ua>Полностью обработано</ua>', 1, '', ''),
('11365480442007090814233389a111', '1', 'root', 'root', '2007-09-08 14:23:33', '2007-09-08 14:23:33', 1, '11365480442007090814215348y111', '<en>Region is not linked</en><ru>Не присвоен регион</ru><ua>Не присвоен регион</ua>', 1, '', ''),
('11365480442007090814243976d111', '2', 'root', 'root', '2007-09-08 14:24:39', '2007-09-08 14:24:39', 1, '11365480442007090814215348y111', '<en>Location is added autoatically</en><ru>Регион присовен автоматически</ru><ua>Регион присовен автоматически</ua>', 2, '', ''),
('11365480442007090814253726e111', '4', 'root', 'root', '2007-09-08 14:25:37', '2007-09-08 14:25:37', 1, '11365480442007090814215348y111', '<en>Cleaned</en><ru>Дубликаты удалены автоматически</ru><ua>Дубликаты удалены автоматически</ua>', 3, '', ''),
('1136548044200709081457388e1111', 'public', 'root', 'root', '2007-09-08 14:57:38', '2007-09-08 14:57:38', 1, '11365480442007090814571235l111', '<en>Публичный вопрос</en><ru>Публичный вопрос</ru><ua>Публичный вопрос</ua>', 2, '', ''),
('11365480442007090814580515c111', 'private', 'root', 'root', '2007-09-08 14:58:05', '2007-09-08 14:58:17', 1, '11365480442007090814571235l111', '<en>Скрытый вопрос (только для автора)</en><ru>Скрытый вопрос (только для автора)</ru><ua>Скрытый вопрос (только для автора)</ua>', 4, '', ''),
('11365480442007100323432251o111', 'default', 'root', 'root', '2007-10-03 23:43:22', '2009-11-18 12:52:13', 1, '11365480442007100323430210j111', '<en>Default</en><fr>Default</fr><nl>Default</nl><ru>Дизайн по умолчанию</ru>', 6, '', ''),
('11365480442008122200555057d111', '-', 'root', 'root', '2008-12-22 00:55:50', '2008-12-22 00:57:59', 1, '11365480442008122200545133i111', '<en>Demo</en><ru>Демо (бесплатно)</ru>', 2, '', ''),
('1136548044200710060127250s1111', 'SubmissionIsBackLinkRequired', 'root', 'root', '2007-10-06 01:27:25', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', '<en>Web directory: back link is required?</en><fr>Web directory: back link is required?</fr><nl>Web directory: back link is required?</nl><ru>Каталог ссылок: установка обратных ссылок обязательна</ru>', 18, '', ''),
('11365480442009041818464140m111', 'www', 'root', 'root', '2009-04-18 18:46:41', '2009-11-27 13:43:29', 1, '11365480442009041818461113q111', '<en>With www</en><ru>С www</ru>', 1, '', ''),
('11365480442009041818465935s111', 'nowww', 'root', 'root', '2009-04-18 18:46:59', '2009-11-27 13:43:29', 1, '11365480442009041818461113q111', '<en>Without www</en><ru>Без www</ru>', 2, '', ''),
('11365480442008042501123545i111', 'SubmissionPaidLinks', 'root', 'root', '2008-04-25 01:12:35', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', '<en>Web directory: paid links option</en><fr>Only paid listing</fr><nl>Web directory: paid links option</nl><ru>Каталог ссылок: платное размещение ссылок</ru>', 20, '', ''),
('11365480442009041815590453t111', 'CoreSerchForm', 'root', 'root', '2009-04-18 15:59:04', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', '<en>Search: activate website search</en><fr>Поиск: Включить поиск по сайту</fr><nl>Поиск: Включить поиск по сайту</nl><ru>Поиск: Включить поиск по сайту</ru>', 12, '', ''),
('11365480442009041817292264l111', 'core.myHome', 'root', 'root', '2009-04-18 17:29:22', '2009-04-18 17:29:22', 1, '11365480442009013120072999b111', '<en>Member area</en><ru>Панель управления</ru>', 16, '', ''),
('11365480442008042501141329x111', 'dark', 'root', 'root', '2008-04-25 01:14:13', '2009-11-18 12:52:13', 1, '11365480442007100323430210j111', '<en>Dark grey</en><fr>Dark grey</fr><nl>Dark grey</nl><ru>Темно-серый</ru>', 10, '', ''),
('11365480442008043014070589w111', 'new', 'root', 'root', '2008-04-30 14:07:05', '2008-04-30 14:07:05', 1, '11365480442008043014064248i111', '<en>Just received</en><fr>Just received</fr>', 1, '', ''),
('11365480442008043014072725z111', 'read', 'root', 'root', '2008-04-30 14:07:27', '2008-04-30 14:07:27', 1, '11365480442008043014064248i111', '<en>Read</en><fr>Read</fr>', 2, '', ''),
('11365480442008043014075322c111', 'completed', 'root', 'root', '2008-04-30 14:07:53', '2008-04-30 14:07:53', 1, '11365480442008043014064248i111', '<en>Completed</en><fr>Completed</fr>', 3, '', ''),
('11365480442008043014081770h111', 'delete', 'root', 'root', '2008-04-30 14:08:17', '2008-04-30 14:08:17', 1, '11365480442008043014064248i111', '<en>Delete</en><fr>Delete</fr>', 4, '', ''),
('11365480442008043015140468a111', 'property', 'root', 'root', '2008-04-30 15:14:04', '2008-08-20 13:05:12', 1, '11365480442008043015012421l111', '<fr>Devis catalogs</fr><en>Real estate catalogs</en><ru>Real estate catalogs</ru>', 4, '', ''),
('11365480442008043015142038r111', 'cars', 'root', 'root', '2008-04-30 15:14:20', '2008-04-30 15:14:20', 1, '11365480442008043015012421l111', '<en>Cars catalogs</en><fr>Cars catalogs</fr>', 6, '', ''),
('11365480442008043015143613d111', 'general', 'root', 'root', '2008-04-30 15:14:36', '2008-04-30 15:14:36', 1, '11365480442008043015012421l111', '<en>General catalogs</en><fr>General catalogs</fr>', 8, '', ''),
('11365480442008043015145693n111', 'zakaz', 'root', 'root', '2008-04-30 15:14:56', '2008-08-20 13:05:40', 1, '11365480442008043015012421l111', '<fr>Referencement catalog</fr><en>Zakaz tovarov catalogs</en><ru>Zakaz tovarov catalogs</ru>', 10, '', ''),
('11365480442008052110433470q111', 'notpaid', 'root', 'root', '2008-05-21 10:43:34', '2008-05-27 14:46:45', 1, '1136548044200805211043186v1111', '<en>Not paid</en><fr>En attente de paiement</fr>', 2, '', ''),
('11365480442008052110434784j111', 'paid', 'root', 'root', '2008-05-21 10:43:47', '2008-05-27 14:46:53', 1, '1136548044200805211043186v1111', '<en>Paid</en><fr>Payé</fr>', 4, '', ''),
('11365480442008052114532555k111', 'root', 'root', 'root', '2008-05-21 14:53:25', '2008-05-21 14:53:25', 1, '11365480442008043015012421l111', '<en>Main group (root)</en><fr>Main group (root)</fr>', 2, '', ''),
('11365480442008052410455587z111', 'default', 'root', 'root', '2008-05-24 10:45:55', '2008-05-24 10:45:55', 1, '11365480442008052410444273s111', '<en>Default style</en><fr>Default style</fr>', 1, '', ''),
('11365480442008052410464026j111', 'default-grey', 'root', 'root', '2008-05-24 10:46:40', '2008-05-24 10:46:40', 1, '11365480442008052410444273s111', '<en>Default grey</en><fr>Default grey</fr>', 2, '', ''),
('11365480442008122100184148t111', 'SubmissionBlockAdd', 'root', 'root', '2008-12-21 00:18:41', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', '<en>Submission: block visitors to add their links</en><fr>Submission: block visitors to add their links</fr><nl>Submission: block visitors to add their links</nl><ru>Каталог ссылок: запретить посетителям добавлять ссылки</ru>', 24, '', ''),
('11365480442009042821210130b111', 'SEOPageHideTitle', 'root', 'root', '2009-04-28 21:21:01', '2009-04-28 21:21:41', 1, '11365480442009042821202738g111', '<en>Hide page title</en><ru>Скрыть заголовок страницы</ru>', 2, '', ''),
('11365480442009042822053426r111', 'SEOPageHideLeftMenu', 'root', 'root', '2009-04-28 22:05:34', '2009-04-28 22:05:34', 1, '11365480442009042821202738g111', '<en>Hide left column</en><ru>Скрыть левое меню</ru>', 3, '', ''),
('11365480442006121001005720a111', 'Ukraine', 'root', 'root', '2006-12-10 01:00:57', '2006-12-10 01:00:57', 1, '11365480442006121001003496z111', '<en>Ukraine</en><ru>Украина</ru>', 1, '', ''),
('11365480442006121001012093w111', 'Russia', 'root', 'root', '2006-12-10 01:01:20', '2006-12-10 01:01:20', 1, '11365480442006121001003496z111', '<en>Russia</en><ru>Россия</ru>', 2, '', ''),
('11365480442006121001030354h111', 'computers', 'root', 'root', '2006-12-10 01:03:03', '2006-12-10 01:03:03', 1, '11365480442006121001015420x111', '<en>Computers</en><ru>Компьютерное оборудование</ru>', 1, '', ''),
('11365480442006121001033672n111', 'electronics', 'root', 'root', '2006-12-10 01:03:36', '2006-12-10 01:03:36', 1, '11365480442006121001015420x111', '<en>ellectronics</en><ru>Бытовая эллектроника</ru>', 2, '', ''),
('11365480442006121001040573j111', 'industrial', 'root', 'root', '2006-12-10 01:04:05', '2006-12-10 01:04:05', 1, '11365480442006121001015420x111', '<en>Industrial equipment</en><ru>Промышленное оборудование</ru>', 3, '', ''),
('11365480442006121001062754h111', 'showemail', 'root', 'root', '2006-12-10 01:06:27', '2006-12-10 01:06:27', 1, '11365480442006121001055951z111', '<en>Show email instead of contact form link</en><ru>Показывать email адрес вместо контактной формы</ru>', 1, '', ''),
('11365480442006121001082652v111', 'showstats', 'root', 'root', '2006-12-10 01:08:26', '2006-12-10 01:08:26', 1, '11365480442006121001055951z111', '<en>Show stats to visitor</en><ru>Показывать статистику посещений на карточку фирмы</ru>', 2, '', ''),
('11365480442006121001093574b111', 'showonhomepage', 'root', 'root', '2006-12-10 01:09:35', '2006-12-10 01:09:35', 1, '11365480442006121001090969t111', '<en>Show on homepage</en><ru>Показывать на первой странице</ru>', 1, '', ''),
('11365480442006121001100534j111', 'specialoffersbox', 'root', 'root', '2006-12-10 01:10:05', '2006-12-10 01:10:05', 1, '11365480442006121001090969t111', '<en>Show on special companies fbox</en><ru>Показывать в блоках специальных фирм</ru>', 2, '', ''),
('11365480442006121001110370k111', 'active', 'root', 'root', '2006-12-10 01:11:03', '2008-12-04 16:46:04', 1, '11365480442006121001103967c111', '<de>Active</de><en>Active</en><fr>Active</fr><ru>Активна</ru>', 2, '', ''),
('11365480442006121001111580o111', 'hidden', 'root', 'root', '2006-12-10 01:11:15', '2006-12-10 01:11:15', 1, '11365480442006121001103967c111', '<en>Hidden</en><ru>Скрыть</ru>', 4, '', ''),
('11365480442007041516274061t111', 'html', 'root', 'root', '2007-04-15 16:27:40', '2007-04-15 16:27:40', 1, '11365480442007041516270393j111', '<en>HTML pages</en><ru>HTML страницы</ru>', 2, '', ''),
('11365480442007041516281396u111', 'rss', 'root', 'root', '2007-04-15 16:28:13', '2007-04-15 16:28:13', 1, '11365480442007041516270393j111', '<en>RSS feeds</en><ru>RSS источники</ru>', 4, '', ''),
('11365480442007041516283196w111', 'xml', 'root', 'root', '2007-04-15 16:28:31', '2008-01-08 18:34:17', 1, '11365480442007041516270393j111', '<ru>XML источники</ru><en>XML feeds</en><fr>XML feeds</fr>', 8, '', ''),
('11365480442007042121545652u111', 'csv', 'root', 'root', '2007-04-21 21:54:56', '2007-04-21 21:54:56', 1, '11365480442007041516270393j111', '<en>CSV</en><ru>CSV источник</ru>', 10, '', ''),
('11365480442008010818333231a111', 'rss-google-property', 'root', 'root', '2008-01-08 18:33:32', '2008-01-08 18:38:18', 1, '11365480442007041516270393j111', '<en>RSS - Google Base Property feed</en><fr>RSS - Google Base Property feed</fr>', 6, '', ''),
('11365480442007041516373351j111', '1', 'root', 'root', '2007-04-15 16:37:33', '2007-04-15 16:37:33', 1, '11365480442007041516365415v111', '<en>Full info</en><ru>Вся доступная информация</ru>', 1, '', ''),
('11365480442007041516375792z111', '2', 'root', 'root', '2007-04-15 16:37:57', '2007-04-15 16:37:57', 1, '11365480442007041516365415v111', '<en>Product description only</en><ru>Только общее описание товара</ru>', 1, '', ''),
('11365480442007041517361545c111', 'new', 'root', 'root', '2007-04-15 17:36:15', '2007-10-08 23:25:57', 1, '11365480442007041517354350m111', '<en>Just added</en><ru>Добавлен</ru>', 8, '', ''),
('11365480442007041517373275z111', 'test', 'root', 'root', '2007-04-15 17:37:32', '2007-04-15 17:37:32', 1, '11365480442007041517354350m111', '<en>Test mode (development)</en><ru>Тестовый (режим разработки)</ru>', 10, '', ''),
('1136548044200704151738043p1111', 'active', 'root', 'root', '2007-04-15 17:38:04', '2007-10-08 23:28:56', 1, '11365480442007041517354350m111', '<en>Live mode</en><ru>Активный (живой режим)</ru>', 18, '', ''),
('11365480442007041517382892r111', 'hold', 'root', 'root', '2007-04-15 17:38:28', '2007-10-08 23:30:07', 1, '11365480442007041517354350m111', '<en>On hold</en><ru>Отложен</ru>', 20, '', ''),
('11365480442007100823242846i111', 'notv', 'root', 'root', '2007-10-08 23:24:28', '2007-10-08 23:24:28', 1, '11365480442007041517354350m111', '<en>Added but not validated</en><ru>Добавлен но не утвержден</ru>', 2, '', ''),
('1136548044200710082324520v1111', 'dolater', 'root', 'root', '2007-10-08 23:24:52', '2007-10-08 23:26:15', 1, '11365480442007041517354350m111', '<en>To do later</en><ru>Пока не делать</ru>', 4, '', ''),
('11365480442007100823253799c111', 'new1', 'root', 'root', '2007-10-08 23:25:37', '2007-10-08 23:26:06', 1, '11365480442007041517354350m111', '<en>Waiting for development priority 1</en><ru>Добавлен - приоритет 1</ru>', 6, '', ''),
('11365480442007100823270514x111', 'mcats', 'root', 'root', '2007-10-08 23:27:05', '2007-10-08 23:27:05', 1, '11365480442007041517354350m111', '<en>Match categories in code</en><ru>Отработать категории</ru>', 12, '', ''),
('11365480442007100823273381b111', 'correct', 'root', 'root', '2007-10-08 23:27:33', '2007-10-08 23:27:33', 1, '11365480442007041517354350m111', '<en>Correct</en><ru>Исправить</ru>', 14, '', ''),
('11365480442007100823281859s111', 'changed', 'root', 'root', '2007-10-08 23:28:18', '2007-10-08 23:28:18', 1, '11365480442007041517354350m111', '<en>Source is changed</en><ru>Поменялся источник</ru>', 16, '', ''),
('11365480442007100823294936g111', 'nonews', 'root', 'root', '2007-10-08 23:29:49', '2007-10-08 23:29:49', 1, '11365480442007041517354350m111', '<en>Check - No new items for long time</en><ru>Проверить, нет записей за последнее время</ru>', 22, '', ''),
('11365480442007100823304968m111', 'syserr', 'root', 'root', '2007-10-08 23:30:49', '2007-10-08 23:30:49', 1, '11365480442007041517354350m111', '<en>System error</en><ru>Проблема в системе</ru>', 23, '', ''),
('11365480442007100823312245k111', 'neverdo', 'root', 'root', '2007-10-08 23:31:22', '2007-10-08 23:31:22', 1, '11365480442007041517354350m111', '<en>Never do</en><ru>Отклонен - не делать</ru>', 24, '', ''),
('11365480442007042116233851w111', 'ResourceOffer', 'root', 'root', '2007-04-21 16:23:38', '2007-04-21 21:56:03', 1, '11365480442007042116225918g111', '<en>Ads and products(ResourceOffer)</en><ru>Цены и объявления (ResourceOffer)</ru>', 2, '', ''),
('11365480442007042116241059q111', 'NewsArticle', 'root', 'root', '2007-04-21 16:24:10', '2007-04-21 16:24:10', 1, '11365480442007042116225918g111', '<en>News and Articles (NewsArticle)</en><ru>Новости и статьи (NewsArticle)</ru>', 6, '', ''),
('1136548044200704212155520v1111', 'Resource', 'root', 'root', '2007-04-21 21:55:52', '2007-04-21 21:55:52', 1, '11365480442007042116225918g111', '<en>Catalog (Resource)</en><ru>Каталог (Resource)</ru>', 4, '', ''),
('11365480442007051301442425v111', 'ResourceAuthor', 'root', 'root', '2007-05-13 01:44:24', '2007-05-13 01:44:24', 1, '11365480442007042116225918g111', '<en>Companies (ResourceAuthor)</en><ru>Компании (ResourceAuthor)</ru>', 3, '', ''),
('11365480442007042116331171z111', 'ad', 'root', 'root', '2007-04-21 16:33:11', '2007-04-21 16:33:11', 1, '11365480442007042116325696p111', '<en>Ads</en><ru>Объявления</ru>', 1, '', ''),
('1136548044200704211633289y1111', 'price', 'root', 'root', '2007-04-21 16:33:28', '2007-04-21 16:33:28', 1, '11365480442007042116325696p111', '<en>Prices</en><ru>Цены</ru>', 2, '', ''),
('11365480442007042116334874w111', 'tender', 'root', 'root', '2007-04-21 16:33:48', '2007-04-21 16:33:48', 1, '11365480442007042116325696p111', '<en>Tenders</en><ru>Запросы на закупку</ru>', 3, '', ''),
('11365480442007042121563512l111', 'catalog', 'root', 'root', '2007-04-21 21:56:35', '2007-04-21 21:56:35', 1, '11365480442007042116325696p111', '<en>Catalog</en><ru>Каталог</ru>', 4, '', ''),
('11365480442007051301453691o111', 'other', 'root', 'root', '2007-05-13 01:45:36', '2007-05-13 01:45:36', 1, '11365480442007042116325696p111', '<en>Other</en><ru>Прочее</ru>', 1, '', ''),
('11365480442007050111421732r111', 'ad', 'root', 'it', '2007-05-01 11:42:17', '2008-02-24 17:55:54', 1, '11365480442007050111412368r111', '<ru>Продаю, предлагаю</ru><fr>Properties for sale</fr><en>Offering</en>', 2, '', ''),
('11365480442007050111423894w111', 'tender', 'root', 'it', '2007-05-01 11:42:38', '2008-02-24 17:53:01', 1, '11365480442007050111412368r111', '<ru>Куплю, требуется</ru><fr>Request to buy or rent</fr><en>Wanted</en>', 4, '', ''),
('11365480442007052620370122k111', 'updateitems', 'root', 'root', '2007-05-26 20:37:01', '2007-05-26 20:37:01', 1, '11365480442007052620360191i111', '<en>Update items on next run</en><ru>Обновлять существующие записи при каждом срабатывании (необходимо для обновления цен от электронных магазинов)</ru>', 1, '', ''),
('11365480442007092302304524j111', 'public', 'root', 'root', '2007-09-23 02:30:45', '2007-11-07 21:24:06', 1, '11365480442007092302293846x111', '<en>Public question (visible on this page)</en><ru>Публичный вопрос</ru><fr>Question publique (visible sur cette page)</fr>', 2, '', ''),
('1136548044200709230231240l1111', 'private', 'root', 'root', '2007-09-23 02:31:24', '2007-11-07 21:24:16', 1, '11365480442007092302293846x111', '<en>Private (visible only by ad publisher)</en><ru>Скрытый вопрос (только для автора)</ru><fr>Question privée (uniquement visible par l''annonceur)</fr>', 4, '', ''),
('11365480442007111421213625z111', 'TimeCreated_ASC', 'root', 'root', '2007-11-14 21:21:36', '2009-11-24 19:45:10', 1, '11365480442007111421204335j111', '<en>Oldest first</en><fr>les plus anciennes</fr><nl>Oldest first</nl><ru>Дате - старые вверху</ru>', 6, '', ''),
('11365480442007111421234764w111', 'ResourceOfferPrice_ASC', 'root', 'root', '2007-11-14 21:23:47', '2009-11-24 19:45:10', 1, '11365480442007111421204335j111', '<en>Cheapest first</en><fr>Prix les plus bas</fr><nl>Cheapest first</nl><ru>Цене - дешевые вверху</ru>', 8, '', ''),
('11365480442007111421563186m111', 'TimeCreated_DESC', 'root', 'root', '2007-11-14 21:56:31', '2009-11-24 19:45:10', 1, '11365480442007111421204335j111', '<en>Newest first</en><fr>les plus récentes</fr><nl>Newest first</nl><ru>Дате - новые вверху</ru>', 4, '', ''),
('11365480442007111421585686k111', 'ResourceOfferPrice_DESC', 'root', 'root', '2007-11-14 21:58:56', '2009-11-24 19:45:10', 1, '11365480442007111421204335j111', '<en>Expensive first</en><fr>Prix les plus hauts</fr><nl>Expensive first</nl><ru>Цене - дорогие вверху</ru>', 10, '', ''),
('11365480442007111713002329q111', 'searchform', 'root', 'root', '2007-11-17 13:00:23', '2007-11-17 13:00:23', 1, '11365480442007111712592225h111', '<en>Show field on quick search form</en><fr>Show field on quick search form</fr>', 1, '', ''),
('11365480442007111713004267l111', 'searchdetailed', 'root', 'root', '2007-11-17 13:00:42', '2007-11-17 13:00:42', 1, '11365480442007111712592225h111', '<en>Show field on detailed search form</en><fr>Show field on detailed search form</fr>', 2, '', ''),
('11365480442007111713010174e111', 'searchprofile', 'root', 'root', '2007-11-17 13:01:01', '2007-11-17 13:01:01', 1, '11365480442007111712592225h111', '<en>Show on search profile form</en><fr>Show on search profile form</fr>', 3, '', ''),
('11365480442007111713012314o111', 'searchadmin', 'root', 'root', '2007-11-17 13:01:23', '2007-11-17 13:01:23', 1, '11365480442007111712592225h111', '<en>Show field on admin search form</en><fr>Show field on admin search form</fr>', 4, '', ''),
('11365480442007111713040616p111', 'input', 'root', 'root', '2007-11-17 13:04:06', '2007-11-17 13:04:06', 1, '11365480442007111713033976l111', '<en>Input field</en><fr>Input field</fr>', 1, '', ''),
('11365480442007111713041946x111', 'dropdown', 'root', 'root', '2007-11-17 13:04:19', '2007-11-17 13:04:19', 1, '11365480442007111713033976l111', '<en>Drop down</en><fr>Drop down</fr>', 2, '', ''),
('11365480442007111713043866t111', 'multiple', 'root', 'root', '2007-11-17 13:04:38', '2007-11-17 13:04:38', 1, '11365480442007111713033976l111', '<en>Multiple drop down</en><fr>Multiple drop down</fr>', 3, '', ''),
('11365480442007111713045646r111', 'checkboxes', 'root', 'root', '2007-11-17 13:04:56', '2007-11-17 13:04:56', 1, '11365480442007111713033976l111', '<en>List of checkboxes</en><fr>List of checkboxes</fr>', 4, '', ''),
('11365480442007111713051718g111', 'range', 'root', 'root', '2007-11-17 13:05:17', '2007-11-17 13:05:17', 1, '11365480442007111713033976l111', '<en>Range with 2 input fields (from - to)</en><fr>Range with 2 input fields (from - to)</fr>', 5, '', ''),
('11365480442007111713053576t111', 'rangedropdown', 'root', 'root', '2007-11-17 13:05:35', '2007-11-17 13:05:35', 1, '11365480442007111713033976l111', '<en>Range with 2 drop downs</en><fr>Range with 2 drop downs</fr>', 6, '', ''),
('11365480442007112418095743i111', '50000', 'root', 'root', '2007-11-24 18:09:57', '2007-11-24 18:10:21', 1, '11365480442007112418082548d111', '<en>&euro; 50.000</en><fr>&euro; 50.000</fr>', 2, '', ''),
('11365480442007112418114620c111', '100000', 'root', 'root', '2007-11-24 18:11:46', '2007-11-24 18:11:46', 1, '11365480442007112418082548d111', '<en>&euro; 100.000</en><fr>&euro; 100.000</fr>', 3, '', ''),
('11365480442007112418120212j111', '150000', 'root', 'root', '2007-11-24 18:12:02', '2007-11-24 18:12:02', 1, '11365480442007112418082548d111', '<en>&euro; 150.000</en><fr>&euro; 150.000</fr>', 4, '', ''),
('11365480442008010417153170f111', 'notpaid', 'root', 'root', '2008-01-04 17:15:31', '2008-12-11 11:31:59', 1, '11365480442008010417142375q111', '<de>Nicht bezahlt</de><en>Not paid</en><fr>Impayée</fr><ru>Не оплачено</ru>', 2, '', ''),
('11365480442008010417154386l111', 'paid', 'root', 'root', '2008-01-04 17:15:43', '2008-12-11 11:32:08', 1, '11365480442008010417142375q111', '<de>Bezahlt</de><en>Paid</en><fr>Payée</fr><ru>Оплачено</ru>', 4, '', ''),
('1136548044200811220224302o1111', 'cancelled', 'root', 'root', '2008-11-22 02:24:30', '2008-12-11 11:32:20', 1, '11365480442008010417142375q111', '<de>Annuliert</de><en>Cancelled</en><fr>Annulée</fr><ru>Отменено</ru>', 6, '', ''),
('11365480442008010420492420d111', 'deposit', 'root', 'root', '2008-01-04 20:49:24', '2008-01-04 20:49:24', 1, '11365480442008010420482590a111', '<en>Deposited money</en><fr>Deposited money</fr>', 1, '', ''),
('11365480442008010420494028x111', 'buy', 'root', 'root', '2008-01-04 20:49:40', '2008-01-04 20:49:40', 1, '11365480442008010420482590a111', '<en>Payment for services</en><fr>Payment for services</fr>', 2, '', ''),
('1136548044200801121759070i1111', 'datedesc', 'root', 'root', '2008-01-12 17:59:07', '2010-02-01 12:49:54', 1, '11365480442008011217582656o111', '<en>Newest first</en><el>Newest first</el><eg>Newest first</eg><de>Newest first</de><fr>Les plus neufs</fr><es>Newest first</es><it>Newest first</it><tu>Newest first</tu><ru>Newest first</ru>', 1, '', ''),
('1136548044200801121759475z1111', 'dateasc', 'root', 'root', '2008-01-12 17:59:47', '2010-02-01 12:49:54', 1, '11365480442008011217582656o111', '<en>Oldest first</en><el>Oldest first</el><eg>Oldest first</eg><de>Oldest first</de><fr>Les plus vieux</fr><es>Oldest first</es><it>Oldest first</it><tu>Oldest first</tu><ru>Oldest first</ru>', 2, '', ''),
('11365480442008011218001346a111', 'priceasc', 'root', 'root', '2008-01-12 18:00:13', '2010-02-01 12:49:54', 1, '11365480442008011217582656o111', '<en>Cheapest first</en><el>Cheapest first</el><eg>Cheapest first</eg><de>Cheapest first</de><fr>Les moins chers</fr><es>Cheapest first</es><it>Cheapest first</it><tu>Cheapest first</tu><ru>Cheapest first</ru>', 3, '', ''),
('11365480442008011218003762u111', 'pricedesc', 'root', 'root', '2008-01-12 18:00:37', '2010-02-01 12:49:54', 1, '11365480442008011217582656o111', '<en>Expensive first</en><el>Expensive first</el><eg>Expensive first</eg><de>Expensive first</de><fr>Les plus chers</fr><es>Expensive first</es><it>Expensive first</it><tu>Expensive first</tu><ru>Expensive first</ru>', 4, '', ''),
('11365480442008011218010617d111', 'alias', 'root', 'root', '2008-01-12 18:01:06', '2010-02-01 12:49:54', 1, '11365480442008011217582656o111', '<en>Order by ref number</en><el>Order by ref number</el><eg>Order by ref number</eg><de>Order by ref number</de><fr>Trié par réf n°</fr><es>Order by ref number</es><it>Order by ref number</it><tu>Order by ref number</tu><ru>Order by ref number</ru>', 5, '', ''),
('11365480442008012621331679k111', '6months', 'root', 'root', '2008-01-26 21:33:16', '2008-01-27 00:57:27', 1, '1136548044200801262130074o1111', '<en>I am hoping to purchase within the next 6 months</en>', 2, '', ''),
('11365480442008012621333579i111', '12months', 'root', 'root', '2008-01-26 21:33:35', '2008-01-27 00:58:52', 1, '1136548044200801262130074o1111', '<en>I intend to buy within the next 12 months </en>', 4, '', ''),
('11365480442008012621335370s111', 'research', 'root', 'root', '2008-01-26 21:33:53', '2008-01-27 00:59:03', 1, '1136548044200801262130074o1111', '<en>I am researching the market</en>', 6, '', ''),
('11365480442008012717535287r111', '1', 'root', 'root', '2008-01-27 17:53:52', '2008-12-09 14:18:44', 1, '1136548044200801271753302t1111', '<de>Active</de><en>Active</en><fr>Active</fr><ru>Активное</ru>', 2, '', ''),
('1136548044200801271754043z1111', '2', 'root', 'root', '2008-01-27 17:54:04', '2008-11-02 17:50:50', 1, '1136548044200801271753302t1111', '<en>Hidden</en><ru>Скрытое</ru>', 4, '', ''),
('11365480442008012717550354h111', '4', 'root', 'root', '2008-01-27 17:55:03', '2008-11-02 17:50:59', 1, '1136548044200801271753302t1111', '<en>To be deleted</en><ru>На удаление</ru>', 6, '', ''),
('11365480442008020101502912k111', '1', 'root', 'root', '2008-02-01 01:50:29', '2008-02-01 01:50:29', 1, '11365480442008020101500222g111', '<en>Added or changed manually</en>', 1, '', ''),
('11365480442008020101504854z111', '2', 'root', 'root', '2008-02-01 01:50:48', '2008-02-01 01:50:48', 1, '11365480442008020101500222g111', '<en>Read from website or feed</en>', 2, '', ''),
('11365480442008112321394655m111', 'web-directory', 'root', 'root', '2008-11-23 21:39:46', '2008-11-27 14:55:35', 1, '11365480442008022402411214c111', '<de>Webkataloge</de><en>Catalogs</en><fr>Annuaires</fr><ru>Каталог сайтов</ru>', 2, '', ''),
('11365480442008092811462099b111', 'articles', 'root', 'root', '2008-09-28 11:46:20', '2008-11-27 14:55:43', 1, '11365480442008022402411214c111', '<de>Aktikel</de><en>Articles</en><fr>Articles</fr><ru>Статьи</ru>', 4, '', ''),
('11365480442008030919442453m111', 'KeywordWeight_DESC', 'root', 'root', '2008-03-09 19:44:24', '2008-03-16 15:51:30', 1, '11365480442008030919434344r111', '<en>Relevancy</en><ru>Relevancy</ru><ua>Relevancy</ua>', 2, '', ''),
('11365480442008030919444366c111', 'TimeCreated_DESC', 'root', 'root', '2008-03-09 19:44:43', '2008-03-16 15:50:40', 1, '11365480442008030919434344r111', '<en>Newest first</en><ru>Newest first</ru><ua>Newest first</ua>', 6, '', ''),
('11365480442008030919445524s111', 'TimeCreated_ASC', 'root', 'root', '2008-03-09 19:44:55', '2008-03-09 19:44:55', 1, '11365480442008030919434344r111', '<en>Oldest first</en>', 8, '', ''),
('11365480442008030919454056u111', 'ResourceAuthorName_ASC', 'root', 'root', '2008-03-09 19:45:40', '2008-03-16 15:53:20', 1, '11365480442008030919434344r111', '<en>Alphabetically</en><ru>Alphabetically</ru><ua>Alphabetically</ua>', 4, '', ''),
('11365480442008031100240123w111', 'keyword', 'root', 'root', '2008-03-11 00:24:01', '2008-03-11 00:24:01', 1, '11365480442008031100234478f111', '<en>Keywords</en>', 1, '', ''),
('11365480442008031100241645m111', 'brand', 'root', 'root', '2008-03-11 00:24:16', '2008-03-11 00:24:16', 1, '11365480442008031100234478f111', '<en>Brands</en>', 2, '', ''),
('11365480442008031100250355j111', 'colour', 'root', 'root', '2008-03-11 00:25:03', '2008-03-11 00:25:03', 1, '11365480442008031100234478f111', '<en>Colours</en>', 3, '', ''),
('11365480442008031616173432k111', 'KeywordWeight_DESC', 'root', 'root', '2008-03-16 16:17:34', '2008-03-16 16:17:34', 1, '11365480442008031616171421w111', '<en>Relevancy</en><ru>Relevancy</ru><ua>Relevancy</ua>', 1, '', ''),
('11365480442008031616175934p111', 'WebSiteTitle_ASC', 'root', 'root', '2008-03-16 16:17:59', '2008-03-16 16:17:59', 1, '11365480442008031616171421w111', '<en>Alphabetically</en><ru>Alphabetically</ru><ua>Alphabetically</ua>', 2, '', ''),
('11365480442008031616181750m111', 'TimeCreated_DESC', 'root', 'root', '2008-03-16 16:18:17', '2008-03-16 16:18:17', 1, '11365480442008031616171421w111', '<en>Newest first</en><ru>Newest first</ru><ua>Newest first</ua>', 3, '', ''),
('11365480442008031616183885k111', 'TimeCreated_ASC', 'root', 'root', '2008-03-16 16:18:38', '2008-03-16 16:18:38', 1, '11365480442008031616171421w111', '<en>Oldest first</en><ru>Oldest first</ru><ua>Oldest first</ua>', 4, '', ''),
('11365480442008041123033651j111', 'ad', 'root', 'root', '2008-04-11 23:03:36', '2008-11-02 14:23:13', 1, '11365480442008041123031975p111', '<en>Ads</en><ru>Объявления</ru>', 4, '', ''),
('11365480442008041123041715e111', 'services', 'root', 'root', '2008-04-11 23:04:17', '2008-11-02 14:22:52', 1, '11365480442008041123031975p111', '<en>Services</en><ru>Услуги</ru>', 2, '', ''),
('11365480442008041318525638e111', 'mactchcats', 'root', 'root', '2008-04-13 18:52:56', '2008-04-13 18:52:56', 1, '11365480442008041318522063v111', '<en>Match categories</en>', 1, '', ''),
('11365480442008041318531415f111', 'updatelinks', 'root', 'root', '2008-04-13 18:53:14', '2008-04-13 18:53:14', 1, '11365480442008041318522063v111', '<en>Change links format</en>', 2, '', ''),
('11365480442008041318532865z111', 'comments', 'root', 'root', '2008-04-13 18:53:28', '2008-04-13 18:53:28', 1, '11365480442008041318522063v111', '<en>See in comments</en>', 1, '', ''),
('11365480442008041318534690q111', 'done', 'root', 'root', '2008-04-13 18:53:46', '2008-04-13 18:53:46', 1, '11365480442008041318522063v111', '<en>All done</en>', 3, '', ''),
('11365480442008092410520253o111', 'company', 'root', 'root', '2008-09-24 10:52:02', '2008-12-04 15:11:03', 1, '11365480442008092410514490q111', '<de>Geschäftlich</de><en>Company</en><fr>Professionnel</fr><ru>Компания</ru>', 2, '', ''),
('11365480442008092410521628z111', 'privat', 'root', 'root', '2008-09-24 10:52:16', '2008-12-04 15:11:15', 1, '11365480442008092410514490q111', '<de>Privat</de><en>Privat</en><fr>Particulier</fr><ru>Частное лицо</ru>', 4, '', ''),
('11365480442008102420124495m111', 'free', 'root', 'root', '2008-10-24 20:12:44', '2008-12-01 17:09:46', 1, '11365480442008102420113072t111', '<de>Kostenlos ohne Backlink</de><en>Free and back link is not required</en><fr>Gratuit sans lien retour</fr><ru>Не требуется обратная ссылка</ru>', 2, '', ''),
('11365480442008102420131746y111', 'paid', 'root', 'root', '2008-10-24 20:13:17', '2008-12-01 17:11:31', 1, '11365480442008102420113072t111', '<de>Bezahlbar</de><en>Paid only</en><fr>Payant</fr><ru>Только платная регистрация</ru>', 6, '', ''),
('11365480442008102420144896t111', 'backlink', 'root', 'root', '2008-10-24 20:14:48', '2008-12-01 17:10:30', 1, '11365480442008102420113072t111', '<de>Kostenlos mit Backlink</de><en>Free but back link required</en><fr>Gratuit avec lien retour</fr><ru>Требуется обратная ссылка</ru>', 4, '', ''),
('1136548044200811291654378r1111', 'undefined', 'root', 'root', '2008-11-29 16:54:37', '2008-12-01 17:11:45', 1, '11365480442008102420113072t111', '<de>Andere</de><en>Undefined</en><fr>Autre</fr><ru>Неизвестно</ru>', 10, '', ''),
('1136548044200812021122327n1111', 'manually', 'root', 'root', '2008-12-02 11:22:32', '2008-12-09 11:35:09', 1, '11365480442008102420113072t111', '<de>Kontakt mit dem Webmaster</de><en>Contact with webmaster</en><fr>Contact avec le webmaster</fr><ru>Связаться с вебмастером</ru>', 8, '', ''),
('11365480442008102420205245u111', '1', 'root', 'root', '2008-10-24 20:20:52', '2008-12-15 16:58:11', 1, '11365480442008102420191684r111', '<de>1 - Unbefriedigendes Niveau - später zu versuchen</de><en>1 - lowest level - try it later</en><fr>1 - Niveau insatisfaisant - à essayer plus tard</fr><ru>1 - сайт очень низкого уровня - можно попробовать позже</ru>', 2, '', ''),
('11365480442008102420231827r111', '2', 'root', 'root', '2008-10-24 20:23:18', '2008-12-15 16:58:19', 1, '11365480442008102420191684r111', '<de>2 - Neue Website oder besseres Niveau - zu versuchen</de><en>2 - new website or a better level - give it try</en><fr>2 - Nouveau site ou niveau plus satisfaisant - à essayer</fr><ru>2 - новый сайт или низкий уровень - можно попробовать</ru>', 4, '', ''),
('11365480442008102420232459j111', '3', 'root', 'root', '2008-10-24 20:23:24', '2008-12-15 16:58:47', 1, '11365480442008102420191684r111', '<de>3 - Mittleres Niveau - kann für die Eintragungen benutzt werden</de><en>3 - middle level - you can use it for submission</en><fr>3 - Niveau moyen - peut être utilisé pour les soumissions</fr><ru>3 - сайт среднего уровня  - стоит рассмотреть</ru>', 6, '', ''),
('11365480442008102420243896n111', '4', 'root', 'root', '2008-10-24 20:24:38', '2008-12-15 16:59:33', 1, '11365480442008102420191684r111', '<de>4 - Gutes Niveau - für die Eintragungen zu benutzen</de><en>4 - good level - it is worth to use for submssion</en><fr>4 - Bon niveau - à utiliser pour les soumissions</fr><ru>4 - хороший сайт - стоит использовать</ru>', 8, '', ''),
('11365480442008102420251351i111', '5', 'root', 'root', '2008-10-24 20:25:13', '2008-12-15 17:00:11', 1, '11365480442008102420191684r111', '<de>5 - Sehr gutes Niveau - muss für die Eintragungen benutzt werden</de><en>5 - very good level - it is a must to use for submission</en><fr>5 - Très bon niveau - doit être utilisé pour les soumissions</fr><ru>5 - отличный сайт - обязательно использовать</ru>', 10, '', ''),
('11365480442008102420284015f111', '6', 'root', 'root', '2008-10-24 20:28:40', '2008-12-15 17:01:39', 1, '11365480442008102420191684r111', '<de>Performantes Niveau (wie google, yahoo, ...)</de><en>TOP level (like google, yahoo etc.)</en><fr>Niveau performant (comme google, yahoo, ...)</fr><ru>ТОП сайты (как google, yandex, bigmir)</ru>', 12, '', ''),
('11365480442008112713061263c111', '-1', 'root', 'root', '2008-11-27 13:06:12', '2008-12-15 16:53:10', 1, '11365480442008102420191684r111', '<de>SPAM Website - zu löschen</de><en>SPAM website, to be deleted</en><fr>Site SPAM - à supprimer</fr><ru>СПАМ сайт или сайта больше нет - удалить из базы</ru>', 14, '', ''),
('11365480442008112916163775z111', '-2', 'root', 'root', '2008-11-29 16:16:37', '2008-12-15 16:51:40', 1, '11365480442008102420191684r111', '<de>Unbestimmt</de><en>Undefined</en><fr>Indéfini</fr><ru>Не определено</ru>', 18, '', ''),
('11365480442008120215181574d111', '-3', 'root', 'root', '2008-12-02 15:18:15', '2008-12-15 16:52:36', 1, '11365480442008102420191684r111', '<de>Website ist momentan nicht verfügbar</de><en>Website is temporarly not available</en><fr>Le site ne répond pas actuellement</fr><ru>Сайт временно не доступен или с вирусами</ru>', 16, '', ''),
('11365480442008062016504189u111', 'check', 'root', 'root', '2008-06-20 16:50:41', '2008-10-31 22:19:17', 1, '11365480442008062016434041d111', '<fr>Soumis: vérifier back link</fr><en>Submited - check back link</en><ru>Зарегистрировано НО проверить наличие ссылки в каталоге</ru>', 6, '', ''),
('11365480442008062016455982k111', 'reademail', 'root', 'root', '2008-06-20 16:45:59', '2008-10-31 22:10:37', 1, '11365480442008062016434041d111', '<fr>Attente e-mail confirmation</fr><en>It is needed to read email from directory and make required actions</en><ru>Прочитать почту и выполнить действия из письма</ru>', 2, '', ''),
('11365480442008062016462733v111', 'addbacklink', 'root', 'root', '2008-06-20 16:46:27', '2008-10-31 22:11:30', 1, '11365480442008062016434041d111', '<fr>Ajouter un lien retour sur notre site</fr><en>Add back link from us to them</en><ru>Установить ссылку на каталог</ru>', 4, '', ''),
('1136548044200806201647010l1111', 'notrespondin', 'root', 'root', '2008-06-20 16:47:01', '2008-10-31 22:12:55', 1, '11365480442008062016434041d111', '<fr>Le site ne répond pas</fr><en>Website is not responding</en><ru>Сайт каталога не доступен</ru>', 12, '', ''),
('11365480442008062016480296x111', 'completed', 'root', 'root', '2008-06-20 16:48:02', '2008-10-31 22:21:06', 1, '11365480442008062016434041d111', '<fr>Soumission terminée</fr><en>SUBMISSION COMPLETED (the link is checked and available)</en><ru>РЕГИСТРАЦИЯ ОКОНЧЕНА (ссылка в каталоге проверена)</ru>', 8, '', ''),
('11365480442008062016494826h111', 'cancelled', 'root', 'root', '2008-06-20 16:49:48', '2008-06-30 15:11:29', 1, '11365480442008062016434041d111', '<en>Submission denied</en><fr>Soumission refusée</fr><ru>Отказано в регистрации</ru>', 14, '', ''),
('11365480442008062711123972d111', 'nobacklink', 'root', 'root', '2008-06-27 11:12:39', '2008-10-31 23:17:18', 1, '11365480442008062016434041d111', '<fr>Back link supprimé</fr><en>WARNING! Back link removed</en><ru>ВНИМАНИЕ! Обратная ссылка удалена - проверить</ru>', 16, '', ''),
('11365480442008103122143050w111', 'hold', 'root', 'root', '2008-10-31 22:14:30', '2008-10-31 22:14:30', 1, '11365480442008062016434041d111', '<en>On hold</en><ru>Пропустить регистрцию в каталоге</ru>', 10, '', ''),
('11365480442008102620243865b111', '1', 'root', 'root', '2008-10-26 20:24:38', '2008-10-26 20:25:44', 1, '11365480442008102620240971o111', '<en>Keyword</en><ru>Ссылка - ключевое слово</ru>', 2, '', ''),
('11365480442008102620245684o111', '2', 'root', 'root', '2008-10-26 20:24:56', '2008-10-26 20:24:56', 1, '11365480442008102620240971o111', '<en>Article</en><ru>Статья</ru>', 4, '', ''),
('11365480442008102620251663i111', '3', 'root', 'root', '2008-10-26 20:25:16', '2008-10-26 20:25:16', 1, '11365480442008102620240971o111', '<en>Ad</en><ru>Объявление</ru>', 6, '', ''),
('11365480442008103101495180v111', 'linkrequested', 'root', 'root', '2008-10-31 01:49:51', '2008-10-31 09:57:49', 1, '11365480442008103101492830l111', '<en>1. Received new requests</en><ru>1. Полученные новые запросы на обмен ссылками</ru>', 2, '', ''),
('1136548044200810310150154i1111', 'linkaccepted', 'root', 'root', '2008-10-31 01:50:15', '2008-10-31 09:59:07', 1, '11365480442008103101492830l111', '<en>2. Accepted requests</en><ru>2. Запросы утвержденные получателем и ожидающие активации</ru>', 4, '', '');
INSERT INTO `referenceoption` (`id`, `code`, `UserID`, `OwnerID`, `timeCreated`, `timeSaved`, `hidden`, `referenceID`, `name`, `position`, `color`, `icon`) VALUES
('11365480442008103101511949f111', 'linkcompleted', 'root', 'root', '2008-10-31 01:51:19', '2008-11-01 19:07:46', 1, '11365480442008103101492830l111', '<en>LINK EXCHANGE DONE</en><ru>ОБМЕН ВЫПОЛНЕН</ru>', 6, '', ''),
('11365480442008103101514842q111', 'linkbacklost', 'root', 'root', '2008-10-31 01:51:48', '2008-10-31 10:02:37', 1, '11365480442008103101492830l111', '<en>WARNING! Back link removed</en><ru>ВНИМАНИЕ! Обратная ссылка удалена - проверить</ru>', 8, '', ''),
('1136548044200810310152097i1111', 'linkrequestedsent', 'root', 'root', '2008-10-31 01:52:09', '2008-11-01 18:47:08', 1, '11365480442008103101492830l111', '<en>Sent requests</en><ru>Отправленные запросы на обмен - в ожидании ответа получателем</ru>', 10, '', ''),
('11365480442008103101523445q111', 'linkdeclined', 'root', 'root', '2008-10-31 01:52:34', '2008-10-31 10:05:34', 1, '11365480442008103101492830l111', '<en>Declined requests</en><ru>Обмен отказан или заблокирован</ru>', 14, '', ''),
('11365480442008110118492595x111', 'linkacceptedsent', 'root', 'root', '2008-11-01 18:49:25', '2008-11-01 18:49:25', 1, '11365480442008103101492830l111', '<en>Links exchnage requests validated and awaiting for activation by exchange initiator</en><ru>Утвержденные запросы отправленные на активацию - в ожидании ответа инициатором обмена</ru>', 12, '', ''),
('11365480442008110123034032y111', 'buylinkrequested', 'root', 'root', '2008-11-01 23:03:40', '2008-11-08 22:30:17', 1, '11365480442008110123022595l111', '<en>New received requests to buy links</en><ru>Новые принятые запросы на покупку ссылок</ru>', 2, '', ''),
('11365480442008110123045938m111', 'buylinkaccepted', 'root', 'root', '2008-11-01 23:04:59', '2008-11-02 02:27:35', 1, '11365480442008110123022595l111', '<en>Accepted requests to buy links</en><ru>Утвержденные запросы на покупку ссылок</ru>', 6, '', ''),
('11365480442008110123063764a111', 'buylinkcompleted', 'root', 'root', '2008-11-01 23:06:37', '2008-11-02 02:17:36', 1, '11365480442008110123022595l111', '<en>PAID AND INSTALLED LINKS</en><ru>КУПЛЕННЫЕ ССЫЛКИ</ru>', 8, '', ''),
('1136548044200811012307554n1111', 'buylinkbacklost', 'root', 'root', '2008-11-01 23:07:55', '2008-11-02 02:19:54', 1, '11365480442008110123022595l111', '<en>WARNING! Paid link is deleted - check it</en><ru>ВНИМАНИЕ! Оплаченная ссылка удалена - проверить</ru>', 10, '', ''),
('11365480442008110123150243h111', 'buylinkdeclined', 'root', 'root', '2008-11-01 23:15:02', '2008-11-01 23:15:02', 1, '11365480442008110123022595l111', '<en>Declined requests to buy links</en><ru>Отказанные запросы на покупку ссылок</ru>', 16, '', ''),
('11365480442008110123171870l111', 'buylinkonhold', 'root', 'root', '2008-11-01 23:17:18', '2008-11-01 23:18:21', 1, '11365480442008110123022595l111', '<en>Pending requests to buy links</en><ru>Отложенные запросы на покупку ссылок</ru>', 18, '', ''),
('11365480442008110202185515s111', 'buylinkacceptedsent', 'root', 'root', '2008-11-02 02:18:55', '2008-11-08 16:46:46', 1, '11365480442008110123022595l111', '<en>Sent validated requests to buy</en><ru>Отправленные предложения на продажу ссылок</ru>', 12, '', ''),
('1136548044200811020219235v1111', 'buylinksold', 'root', 'root', '2008-11-02 02:19:23', '2008-11-02 02:19:23', 1, '11365480442008110123022595l111', '<en>SOLD LINKS</en><ru>ПРОДАННЫЕ ССЫЛКИ</ru>', 14, '', ''),
('11365480442008110722083359o111', 'buylinkrequestsent', 'root', 'root', '2008-11-07 22:08:33', '2008-11-07 22:08:33', 1, '11365480442008110123022595l111', '<en>Sent requests to buy links</en><ru>Отправленные запросы на покупку ссылок</ru>', 4, '', ''),
('11365480442008110816462959k111', 'buylinkonholdsent', 'root', 'root', '2008-11-08 16:46:29', '2008-11-08 16:46:29', 1, '11365480442008110123022595l111', '<en>Replied requests to buy link set on hold</en><ru>Отложенные предложения на продажу ссылок</ru>', 20, '', ''),
('11365480442008032123393356k111', 'email', 'root', 'root', '2008-03-21 23:39:33', '2008-03-21 23:39:33', 1, '11365480442008032123381680x111', '<en>Email</en><ru>По email</ru>', 1, '', ''),
('11365480442008032123400473d111', 'sms', 'root', 'root', '2008-03-21 23:40:04', '2008-03-21 23:40:04', 1, '11365480442008032123381680x111', '<en>SMS</en><ru>По SMS</ru>', 2, '', ''),
('11365480442008032218170561e111', 'person', 'root', 'root', '2008-03-22 18:17:05', '2008-12-16 11:57:19', 1, '11365480442008032218164082l111', '<de>Privatperson</de><en>Privat person</en><fr>Particulier</fr><ru>Частное лицо</ru>', 2, '', ''),
('11365480442008032218174819g111', 'privat', 'root', 'root', '2008-03-22 18:17:48', '2008-12-16 11:59:32', 1, '11365480442008032218164082l111', '<de>Einzelunternehmen</de><en>Privant enterpreneur</en><fr>Entreprise individuelle</fr><ru>Частный предприниматель</ru>', 4, '', ''),
('11365480442008032218184351w111', 'company', 'root', 'root', '2008-03-22 18:18:43', '2008-12-16 11:59:44', 1, '11365480442008032218164082l111', '<de>Unternehmen</de><en>Company</en><fr>Société</fr><ru>Предприятие</ru>', 6, '', ''),
('11365480442008032218190894m111', 'gov', 'root', 'root', '2008-03-22 18:19:08', '2008-12-16 12:00:49', 1, '11365480442008032218164082l111', '<de>Staatlich</de><en>Government</en><fr>Service public</fr><ru>Государственная организация</ru>', 8, '', ''),
('11365480442008032218264325n111', 'immediate', 'root', 'root', '2008-03-22 18:26:43', '2008-12-16 14:36:42', 1, '1136548044200803221825598c1111', '<de>Sofort</de><en>Immediate</en><fr>Immédiatement</fr><ru>Немедленно</ru>', 2, '', ''),
('11365480442008032218271336m111', 'month', 'root', 'root', '2008-03-22 18:27:13', '2008-12-16 14:39:08', 1, '1136548044200803221825598c1111', '<de>Innerhalb eines Monats</de><en>Within a motnh</en><fr>Dans 1 mois</fr><ru>В течение месяца</ru>', 6, '', ''),
('11365480442008032218273556u111', 'week', 'root', 'root', '2008-03-22 18:27:35', '2008-12-16 14:38:43', 1, '1136548044200803221825598c1111', '<de>Innerhalb einer Woche</de><en>Within a week</en><fr>Dans 1 semaine</fr><ru>В течение недели</ru>', 4, '', ''),
('1136548044200803221828443k1111', '3months', 'root', 'root', '2008-03-22 18:28:44', '2008-12-16 14:39:25', 1, '1136548044200803221825598c1111', '<de>1-3 Monate</de><en>1-3 months</en><fr>1-3 mois</fr><ru>В течение 3-х месяцев</ru>', 8, '', ''),
('1136548044200803221829218h1111', 'later', 'root', 'root', '2008-03-22 18:29:21', '2008-12-16 14:39:47', 1, '1136548044200803221825598c1111', '<de>Mehr als 3 Monate</de><en>3+ months</en><fr>Plus de 3 mois</fr><ru>Не ранее чем через 3 месяца</ru>', 10, '', ''),
('11365480442008032218330340c111', '3', 'root', 'root', '2008-03-22 18:33:03', '2008-03-30 15:28:24', 1, '11365480442008032218320686q111', '<en>Up to 3</en><ru>Не более 3-х</ru>', 4, '', ''),
('11365480442008032218351353y111', '5', 'root', 'root', '2008-03-22 18:35:13', '2008-03-22 18:35:13', 1, '11365480442008032218320686q111', '<en>Up to 5</en><ru>Не более 5-ти</ru>', 6, '', ''),
('11365480442008032218353331z111', '10', 'root', 'root', '2008-03-22 18:35:33', '2008-03-22 18:58:17', 1, '11365480442008032218320686q111', '<en>Up to 10</en><ru>Не более 10-ти</ru>', 10, '', ''),
('11365480442008032218361016p111', '7', 'root', 'root', '2008-03-22 18:36:10', '2008-03-22 18:58:25', 1, '11365480442008032218320686q111', '<en>Up to 7</en><ru>Не более 7-ми</ru>', 8, '', ''),
('11365480442008032218374097n111', '100', 'root', 'root', '2008-03-22 18:37:40', '2008-03-22 18:59:52', 1, '11365480442008032218320686q111', '<en>Untill I am happy</en><ru>Неограниченно</ru>', 12, '', ''),
('11365480442008033015281114d111', '1', 'root', 'root', '2008-03-30 15:28:11', '2008-03-30 15:28:11', 1, '11365480442008032218320686q111', '<en>Just 1 offer</en><ru>Только одно предложение</ru>', 2, '', ''),
('11365480442008032219022171e111', 'myself', 'root', 'root', '2008-03-22 19:02:21', '2008-12-16 11:56:20', 1, '11365480442008032219010264v111', '<de>Privat</de><en>For myself</en><fr>A titre privé</fr><ru>Купить для себя</ru>', 2, '', ''),
('11365480442008032219024559u111', 'rader', 'root', 'root', '2008-03-22 19:02:45', '2008-12-16 11:56:32', 1, '11365480442008032219010264v111', '<de>Für den Verkauf</de><en>To sell</en><fr>Destiné à la vente</fr><ru>Посредник</ru>', 4, '', ''),
('11365480442008032219032313e111', 'pricerequest', 'root', 'root', '2008-03-22 19:03:23', '2008-12-16 11:56:47', 1, '11365480442008032219010264v111', '<de>Zur Information</de><en>Price request</en><fr>A titre d''information</fr><ru>Узнать цену</ru>', 6, '', ''),
('11365480442008032300352113i111', '3', 'root', 'root', '2008-03-23 00:35:21', '2008-03-26 22:54:35', 1, '11365480442008032300331993p111', '<en>3 €</en><ru>3 €</ru>', 6, '', ''),
('11365480442008032300364999x111', '5', 'root', 'root', '2008-03-23 00:36:49', '2008-03-26 23:23:41', 1, '11365480442008032300331993p111', '<en>5 €</en><ru>5 €</ru>', 8, '', ''),
('11365480442008032300374355n111', '7', 'root', 'root', '2008-03-23 00:37:43', '2008-03-26 23:23:58', 1, '11365480442008032300331993p111', '<en>7 €</en><ru>7 €</ru>', 10, '', ''),
('11365480442008032300375728y111', '10', 'root', 'root', '2008-03-23 00:37:57', '2008-03-26 23:24:14', 1, '11365480442008032300331993p111', '<en>10 €</en><ru>10 €</ru>', 12, '', ''),
('11365480442008032622533955g111', '0.5', 'root', 'root', '2008-03-26 22:53:39', '2008-03-26 22:53:39', 1, '11365480442008032300331993p111', '<en>0.5 €</en><ru>0.5 €</ru>', 2, '', ''),
('11365480442008032622534991k111', '1', 'root', 'root', '2008-03-26 22:53:49', '2008-03-26 22:53:49', 1, '11365480442008032300331993p111', '<en>1 €</en><ru>1 €</ru>', 4, '', ''),
('1136548044200803301946247u1111', '1', 'root', 'root', '2008-03-30 19:46:24', '2008-03-30 19:47:52', 1, '11365480442008033019455840s111', '<en>Not confirmed</en><ru>Регистрация не подтверждена</ru>', 2, '', ''),
('11365480442008033019465986d111', '2', 'root', 'root', '2008-03-30 19:46:59', '2008-03-30 19:47:59', 1, '11365480442008033019455840s111', '<en>Confirmed</en><ru>Регистрация подтверждена</ru>', 6, '', ''),
('11365480442009091409473050y111', 'Date', 'root', 's46', '2009-09-14 09:47:30', '2009-09-14 09:47:30', 1, '11365480442009091409470117d111', '<en>Order by date</en><fr>Order by date</fr><ru>Сортировать по дате</ru>', 1, '', ''),
('11365480442008110215402090s111', '1', 'root', 'root', '2008-11-02 15:40:20', '2008-11-02 15:40:20', 1, '11365480442008110215384893r111', '<en>Private or Company</en><ru>Не имеет значение</ru>', 1, '', ''),
('11365480442008110215404384o111', '2', 'root', 'root', '2008-11-02 15:40:43', '2008-11-02 15:40:43', 1, '11365480442008110215384893r111', '<en>Company only</en><ru>Только компания</ru>', 2, '', ''),
('11365480442008110215410539v111', '3', 'root', 'root', '2008-11-02 15:41:05', '2008-11-02 15:41:05', 1, '11365480442008110215384893r111', '<en>Private only</en><ru>Только частное лицо</ru>', 3, '', ''),
('11365480442008062323453194s111', 'low', 'root', 'root', '2008-06-23 23:45:31', '2008-12-01 14:37:26', 1, '1136548044200806232345024o1111', '<de>Langsame</de><en>Low</en><fr>Lente</fr><ru>Низский</ru>', 2, '', ''),
('11365480442008062323455560c111', 'normal', 'root', 'root', '2008-06-23 23:45:55', '2008-12-01 14:37:32', 1, '1136548044200806232345024o1111', '<de>Normale</de><en>Normal</en><fr>Normale</fr><ru>Нормальный</ru>', 4, '', ''),
('11365480442008062323461455b111', 'urgent', 'root', 'root', '2008-06-23 23:46:14', '2008-12-01 14:37:42', 1, '1136548044200806232345024o1111', '<de>Dringende</de><en>Urgent</en><fr>Urgente</fr><ru>Срочный</ru>', 6, '', ''),
('11365480442008062323463441h111', 'topurgent', 'root', 'root', '2008-06-23 23:46:34', '2008-12-01 14:37:48', 1, '1136548044200806232345024o1111', '<de>Sehr dringende</de><en>Top urgent</en><fr>Très urgente</fr><ru>Очень срочный</ru>', 8, '', ''),
('11365480442008062323473919r111', 'new', 'root', 'root', '2008-06-23 23:47:39', '2008-12-01 14:35:50', 1, '11365480442008062323471588b111', '<de>Neue</de><en>New</en><fr>Nouvelle</fr><ru>Новая</ru>', 2, '', ''),
('11365480442008062323475971q111', 'completed', 'root', 'root', '2008-06-23 23:47:59', '2008-12-01 14:34:53', 1, '11365480442008062323471588b111', '<de>Erledigt</de><en>Completed</en><fr>Achevée</fr><ru>Выполнена</ru>', 8, '', ''),
('11365480442008062323482134f111', 'canceled', 'root', 'root', '2008-06-23 23:48:21', '2008-12-01 14:35:19', 1, '11365480442008062323471588b111', '<de>Gelöscht</de><en>Deleted</en><fr>Supprimée</fr><ru>Отменена</ru>', 10, '', ''),
('11365480442008062323595263i111', 'In-Progression', '11365480442008062320483624j111', 'root', '2008-06-23 23:59:52', '2008-12-01 14:33:06', 1, '11365480442008062323471588b111', '<de>In Bearbeitung</de><en>In Progression</en><fr>En cours</fr><ru>В процессе исполнения</ru>', 6, '', ''),
('1136548044200807081213082g1111', 'callreminder', 'root', 'root', '2008-07-08 12:13:08', '2008-12-01 14:32:48', 1, '11365480442008062323471588b111', '<de>Erinnerung</de><en>Call Reminder</en><fr>Rappel</fr><ru>Напоминание</ru>', 4, '#FF0033', ''),
('1136548044200806232349418g1111', 'todo', 'root', 'root', '2008-06-23 23:49:41', '2008-12-01 14:16:52', 1, '1136548044200806232349162e1111', '<de>Arbeiten zu erledigen</de><en>Tasks I nedd to do</en><fr>Tâches à effectuer</fr><ru>Задачи для меня</ru>', 2, '', ''),
('11365480442008062323500251b111', 'my', 'root', 'root', '2008-06-23 23:50:02', '2008-12-01 14:17:18', 1, '1136548044200806232349162e1111', '<de>Zugeteilte Aufgaben</de><en>Tasks I created</en><fr>Tâches attribuées</fr><ru>Задачи созданные мной</ru>', 4, '', ''),
('11365480442008063018223571e111', 'development', 'root', 'root', '2008-06-30 18:22:35', '2008-06-30 18:22:35', 1, '11365480442008063018220718f111', '<en>Development projects</en><fr>Development projects</fr>', 2, '', ''),
('11365480442008063018224558s111', 'trucks', 'root', 'root', '2008-06-30 18:22:45', '2008-07-06 18:51:42', 1, '11365480442008063018220718f111', '<en>Trucks</en><fr>Trucks</fr>', 8, '#FF9900', ''),
('11365480442008063018225972s111', 'devis', 'root', 'root', '2008-06-30 18:22:59', '2008-06-30 18:22:59', 1, '11365480442008063018220718f111', '<en>Devis</en><fr>Devis</fr>', 12, '', ''),
('11365480442008063018232181o111', 'catalogs', 'root', 'root', '2008-06-30 18:23:21', '2008-06-30 18:23:21', 1, '11365480442008063018220718f111', '<en>Catalogs</en><fr>Catalogs</fr>', 14, '', ''),
('11365480442008070309164461n111', 'publila', '11365480442008062320483624j111', 'root', '2008-07-03 09:16:44', '2008-07-03 09:16:44', 1, '11365480442008063018220718f111', '<en>publila</en><fr>publila</fr>', 10, '', ''),
('11365480442008071810443990d111', 'backlink', '11365480442008062320483624j111', 'root', '2008-07-18 10:44:39', '2008-07-18 10:44:46', 1, '11365480442008063018220718f111', '<en>backlink</en><fr>backlink</fr>', 4, '#FF6600', ''),
('1136548044200807181042583o1111', 'omnicar', '11365480442008062320483624j111', 'root', '2008-07-18 10:42:58', '2008-07-18 10:42:58', 1, '11365480442008063018220718f111', '<en>omnicar</en><fr>omnicar</fr>', 16, '#FF0099', ''),
('11365480442008071810403417r111', 'Referencement', '11365480442008062320483624j111', 'root', '2008-07-18 10:40:34', '2008-07-18 10:42:08', 1, '11365480442008063018220718f111', '<en>Referencement</en><fr>Referencement</fr>', 6, '#CC99FF', ''),
('11365480442008071811050373i111', 'omnicar-prospec', '11365480442008062320483624j111', 'root', '2008-07-18 11:05:03', '2008-07-18 11:05:15', 1, '11365480442008063018220718f111', '<en>omnicar prospec</en><fr>omnicar prospec</fr>', 18, '#999966', ''),
('11365480442008110300552043o111', 'report', 'root', 'root', '2008-11-03 00:55:20', '2008-11-28 17:01:50', 1, '11365480442008110300544389g111', '<de>Bericht</de><en>Report</en><fr>Rapport</fr><ru>Отчет</ru>', 4, '', ''),
('11365480442008110300561297u111', 'tz', 'root', 'root', '2008-11-03 00:56:12', '2008-11-28 17:02:58', 1, '11365480442008110300544389g111', '<de>Aufgabenliste</de><en>Task list</en><fr>Liste des tâches</fr><ru>Техзадание</ru>', 6, '', ''),
('11365480442008110300571825d111', 'otherdoc', 'root', 'root', '2008-11-03 00:57:18', '2008-11-28 17:03:13', 1, '11365480442008110300544389g111', '<de>Andere</de><en>Other document</en><fr>Autre</fr><ru>Документ</ru>', 8, '', ''),
('11365480442008110300573026i111', 'file', 'root', 'root', '2008-11-03 00:57:30', '2008-11-28 17:01:20', 1, '11365480442008110300544389g111', '<de>Datei</de><en>File</en><fr>Fichier</fr><ru>Файл</ru>', 2, '', ''),
('11365480442008110922220675v111', '10', 'root', 'root', '2008-11-09 22:22:06', '2008-12-09 01:02:38', 1, '11365480442008110922072091g111', '<de>10 €</de><en>10 USD</en><fr>10 €</fr><ru>10 USD</ru>', 4, '', ''),
('1136548044200811092222277j1111', '20', 'root', 'root', '2008-11-09 22:22:27', '2008-12-09 01:02:54', 1, '11365480442008110922072091g111', '<de>20 €</de><en>20 USD</en><fr>20 €</fr><ru>20 USD</ru>', 6, '', ''),
('11365480442008110922224748i111', '50', 'root', 'root', '2008-11-09 22:22:47', '2008-12-09 01:03:08', 1, '11365480442008110922072091g111', '<de>50 €</de><en>50 USD</en><fr>50 €</fr><ru>50 USD</ru>', 8, '', ''),
('11365480442008110922230361b111', '100', 'root', 'root', '2008-11-09 22:23:03', '2008-12-09 01:03:21', 1, '11365480442008110922072091g111', '<de>100 €</de><en>100 USD</en><fr>100 €</fr><ru>100 USD</ru>', 10, '', ''),
('11365480442008120901021490e111', '5', 'root', 'root', '2008-12-09 01:02:14', '2008-12-09 01:02:14', 1, '11365480442008110922072091g111', '<de>5 €</de><en>5 USD</en><fr>5 €</fr><ru>5 USD</ru>', 2, '', ''),
('11365480442008111612152258b111', 'google', 'root', 'root', '2008-11-16 12:15:22', '2008-11-16 12:15:22', 1, '11365480442008111612150625y111', '<en>Google</en><ru>Google</ru>', 1, '', ''),
('11365480442008111612153637j111', 'yahoo', 'root', 'root', '2008-11-16 12:15:36', '2008-11-16 12:15:36', 1, '11365480442008111612150625y111', '<en>Yahoo</en><ru>Yahoo</ru>', 2, '', ''),
('11365480442008111612160426w111', 'yandex', 'root', 'root', '2008-11-16 12:16:04', '2008-11-16 12:16:04', 1, '11365480442008111612150625y111', '<en>Yandex</en><ru>Yandex</ru>', 3, '', ''),
('1136548044200811162227498q1111', '-', 'root', 'root', '2008-11-16 22:27:49', '2008-12-09 13:50:36', 1, '11365480442008111622272173y111', '<de>Demo</de><en>Demo</en><fr>Démo</fr><ru>Демо</ru>', 2, '', ''),
('1136548044200811162228099z1111', 'base', 'root', 'root', '2008-11-16 22:28:09', '2008-12-09 13:50:54', 1, '11365480442008111622272173y111', '<de>Basic</de><en>Base</en><fr>Basic</fr><ru>Базовый</ru>', 4, '', ''),
('11365480442008111622282343u111', 'profi', 'root', 'root', '2008-11-16 22:28:23', '2008-12-09 13:51:02', 1, '11365480442008111622272173y111', '<de>Profi</de><en>Profi</en><fr>Pro</fr><ru>Профи</ru>', 6, '', ''),
('11365480442008112222595969l111', '1', 'root', 'root', '2008-11-22 22:59:59', '2008-12-09 11:40:20', 1, '11365480442008112222551052s111', '<de>PR 1</de><en>PR 1</en><fr>PR 1</fr><ru>PR 1</ru>', 4, '', ''),
('11365480442008112223000680q111', '2', 'root', 'root', '2008-11-22 23:00:06', '2008-12-09 11:40:34', 1, '11365480442008112222551052s111', '<de>PR 2</de><en>PR 2</en><fr>PR 2</fr><ru>PR 2</ru>', 6, '', ''),
('11365480442008112223001328p111', '3', 'root', 'root', '2008-11-22 23:00:13', '2008-12-09 11:41:01', 1, '11365480442008112222551052s111', '<de>PR 3</de><en>PR 3</en><fr>PR 3</fr><ru>PR 3</ru>', 8, '', ''),
('11365480442008112223002032d111', '4', 'root', 'root', '2008-11-22 23:00:20', '2008-12-09 11:41:16', 1, '11365480442008112222551052s111', '<de>PR 4</de><en>PR 4</en><fr>PR 4</fr><ru>PR 4</ru>', 10, '', ''),
('11365480442008112223002742s111', '5', 'root', 'root', '2008-11-22 23:00:27', '2008-12-09 11:41:28', 1, '11365480442008112222551052s111', '<de>PR 5</de><en>PR 5</en><fr>PR 5</fr><ru>PR 5</ru>', 12, '', ''),
('11365480442008112223003565j111', '6', 'root', 'root', '2008-11-22 23:00:35', '2008-12-09 11:41:40', 1, '11365480442008112222551052s111', '<de>PR 6</de><en>PR 6</en><fr>PR 6</fr><ru>PR 6</ru>', 14, '', ''),
('11365480442008112223004232x111', '7', 'root', 'root', '2008-11-22 23:00:42', '2008-12-09 11:41:52', 1, '11365480442008112222551052s111', '<de>PR 7</de><en>PR 7</en><fr>PR 7</fr><ru>PR 7</ru>', 16, '', ''),
('11365480442008112223004911a111', '8', 'root', 'root', '2008-11-22 23:00:49', '2008-12-09 11:42:05', 1, '11365480442008112222551052s111', '<de>PR 8</de><en>PR 8</en><fr>PR 8</fr><ru>PR 8</ru>', 18, '', ''),
('11365480442008112223005653b111', '9', 'root', 'root', '2008-11-22 23:00:56', '2008-12-09 11:42:22', 1, '11365480442008112222551052s111', '<de>PR 9</de><en>PR 9</en><fr>PR 9</fr><ru>PR 9</ru>', 20, '', ''),
('11365480442008112223010910y111', '10', 'root', 'root', '2008-11-22 23:01:09', '2008-12-09 11:42:38', 1, '11365480442008112222551052s111', '<de>PR 10</de><en>PR 10</en><fr>PR 10</fr><ru>PR 10</ru>', 22, '', ''),
('11365480442008120911384286h111', '', '1136548044200812031630392l1111', 'websubmiter', '2008-12-09 11:38:42', '2008-12-09 11:38:42', 1, '11365480442008112222551052s111', '', 24, '', ''),
('11365480442008120911390188y111', 'PR0', '1136548044200812031630392l1111', 'websubmiter', '2008-12-09 11:39:01', '2008-12-09 11:40:00', 1, '11365480442008112222551052s111', '<de>PR 0</de><en>PR 0</en><fr>PR 0</fr><ru>PR 0</ru>', 2, '', ''),
('11365480442008112401564135d111', 'tech', 'root', 'root', '2008-11-24 01:56:41', '2008-12-03 13:47:06', 1, '11365480442008112401550798i111', '<de>Technisch</de><en>Technical request</en><fr>Technique</fr><ru>Технический вопрос</ru>', 4, '', ''),
('11365480442008112401571519v111', 'billing', 'root', 'root', '2008-11-24 01:57:15', '2008-12-03 11:58:41', 1, '11365480442008112401550798i111', '<de>Rechnung</de><en>Billing request</en><fr>Facturation</fr><ru>Вопрос по платежам</ru>', 6, '', ''),
('11365480442008112401580033c111', 'functions', 'root', 'root', '2008-11-24 01:58:00', '2008-12-03 13:46:49', 1, '11365480442008112401550798i111', '<de>Benutzung</de><en>Functions question</en><fr>Utilisation</fr><ru>Вопрос по функциям</ru>', 2, '', ''),
('11365480442008112401585758y111', '1', 'root', 'root', '2008-11-24 01:58:57', '2008-12-03 11:54:18', 1, '11365480442008112401553582t111', '<de>Kritische</de><en>Critical</en><fr>Critique</fr><ru>Критический</ru>', 8, '', ''),
('1136548044200811240159133w1111', '2', 'root', 'root', '2008-11-24 01:59:13', '2008-12-03 11:53:37', 1, '11365480442008112401553582t111', '<de>Dringende</de><en>Urgent</en><fr>Urgente</fr><ru>Срочный</ru>', 6, '', ''),
('11365480442008112401593158m111', '3', 'root', 'root', '2008-11-24 01:59:31', '2008-12-03 11:54:12', 1, '11365480442008112401553582t111', '<de>Normale</de><en>Normal</en><fr>Normale</fr><ru>Нормальный</ru>', 4, '', ''),
('1136548044200811240159502v1111', '4', 'root', 'root', '2008-11-24 01:59:50', '2008-12-03 11:54:07', 1, '11365480442008112401553582t111', '<de>Langsam</de><en>Low</en><fr>Lente</fr><ru>Низский</ru>', 2, '', ''),
('11365480442008112402005180f111', '1', 'root', 'root', '2008-11-24 02:00:51', '2008-11-24 02:00:51', 1, '11365480442008112401560887y111', '<en>Not read yet</en><ru>Не прочитан</ru>', 2, '', ''),
('11365480442008112402011644p111', '2', 'root', 'root', '2008-11-24 02:01:16', '2008-11-24 02:01:56', 1, '11365480442008112401560887y111', '<en>Answered by admin</en><ru>Ответ от администратора</ru>', 4, '', ''),
('11365480442008112402013960j111', '3', 'root', 'root', '2008-11-24 02:01:39', '2008-11-24 02:02:07', 1, '11365480442008112401560887y111', '<en>Client reply</en><ru>Ответ от клиента</ru>', 6, '', ''),
('11365480442008112800364522h111', 'update', 'root', 'root', '2008-11-28 00:36:45', '2008-11-28 00:36:45', 1, '11365480442008112800353564k111', '<de>Update directory details</de><en>Update directory details</en><fr>Update directory details</fr><ru>Внесите измнение</ru>', 2, '', ''),
('11365480442008112800371652q111', 'delete', 'root', 'root', '2008-11-28 00:37:16', '2008-11-28 00:37:16', 1, '11365480442008112800353564k111', '<de>Delete directory</de><en>Delete directory</en><fr>Delete directory</fr><ru>Удалить каталог</ru>', 4, '', ''),
('1136548044200811280037520w1111', 'other', 'root', 'root', '2008-11-28 00:37:52', '2008-11-28 00:38:03', 1, '11365480442008112800353564k111', '<de>Other subject</de><en>Other subject</en><fr>Other subject</fr><ru>Иная тема (описать в комментариях)</ru>', 6, '', ''),
('1136548044200811280045146a1111', '1', 'root', 'root', '2008-11-28 00:45:14', '2008-11-28 00:45:14', 1, '11365480442008112800444698m111', '<de>Sent</de><en>Sent</en><fr>Sent</fr><ru>Отправлен</ru>', 1, '', ''),
('1136548044200811280045391t1111', '2', 'root', 'root', '2008-11-28 00:45:39', '2008-11-28 00:45:39', 1, '11365480442008112800444698m111', '<de>Completed</de><en>Completed</en><fr>Completed</fr><ru>Выполнен</ru>', 2, '', ''),
('11365480442008112800455647c111', '3', 'root', 'root', '2008-11-28 00:45:56', '2008-11-28 00:45:56', 1, '11365480442008112800444698m111', '<de>Cancelled</de><en>Cancelled</en><fr>Cancelled</fr><ru>Отменен</ru>', 3, '', ''),
('11365480442008121021013283h111', 'directory', 'root', 'root', '2008-12-10 21:01:32', '2008-12-10 21:01:32', 1, '11365480442008120819311030l111', '<de>Directories</de><en>Directories</en><fr>Directories</fr><ru>Каталоги</ru>', 1, '', ''),
('11365480442008121021015098c111', 'website', 'root', 'root', '2008-12-10 21:01:50', '2008-12-10 21:01:50', 1, '11365480442008120819311030l111', '<de>Websites</de><en>Websites</en><fr>Websites</fr><ru>Сайты</ru>', 2, '', ''),
('11365480442008121221361832b111', 'updatecategory', 'root', 'root', '2008-12-12 21:36:18', '2008-12-12 21:36:18', 1, '11365480442008121221354532t111', '<de>Update category</de><en>Update category</en><fr>Update category</fr><ru>Поменять категорию</ru>', 1, '', ''),
('11365480442008121221371736m111', 'updaterating', 'root', 'root', '2008-12-12 21:37:17', '2008-12-12 21:37:17', 1, '11365480442008121221354532t111', '<de>Review the rating</de><en>Review the rating</en><fr>Review the rating</fr><ru>Пересмотреть рейтинг</ru>', 2, '', ''),
('11365480442008121221375276x111', 'otherupdate', 'root', 'root', '2008-12-12 21:37:52', '2008-12-12 21:37:52', 1, '11365480442008121221354532t111', '<de>Other update request</de><en>Other update request</en><fr>Other update request</fr><ru>Другая проблема</ru>', 3, '', ''),
('11365480442008121221401818w111', 'newcategory', 'root', 'root', '2008-12-12 21:40:18', '2008-12-12 21:40:18', 1, '11365480442008121221354532t111', '<de>New categiry suggestion</de><en>New categiry suggestion</en><fr>New categiry suggestion</fr><ru>Предложить новую категорию</ru>', 1, '', ''),
('11365480442008122100053218b111', 'ArticlesDontUseSuggestion', 'root', 'root', '2008-12-21 00:05:32', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', '<en>Articles: do not let visitors to suggest articles</en><fr>Articles: do not let visitors to suggest articles</fr><nl>Articles: do not let visitors to suggest articles</nl><ru>Каталог статей: запретить посетителям предлагать статьи</ru>', 14, '', ''),
('11365480442009041819540080q111', 'core.registerOwner', 'root', 'root', '2009-04-18 19:54:00', '2009-04-18 19:54:00', 1, '11365480442009013120072999b111', '<en>Website creation</en><ru>Создание сайта</ru>', 17, '', ''),
('11365480442008122100280750p111', 'SubmissionIsBackLinkPrefered', 'root', 'root', '2008-12-21 00:28:07', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', '<en>Web directory: back links is not required but ask for it as a bonus</en><fr>Web directory: back links is not required but ask for it as a bonus</fr><nl>Web directory: back links is not required but ask for it as a bonus</nl><ru>Каталог ссылок: рекомендовать установку обратной ссылки но не выполнять проверки</ru>', 16, '', ''),
('11365480442009041817430547a111', 'CoreBottomMenuOn', 'root', 'root', '2009-04-18 17:43:05', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', '<en>Menu: Switch on bottom menu</en><fr>Menu: Switch on bottom menu</fr><nl>Menu: Switch on bottom menu</nl><ru>Меню: Включить нижнее меню</ru>', 8, '', ''),
('11365480442009041817414974x111', 'CoreTopMenuOn', 'root', 'root', '2009-04-18 17:41:49', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', '<en>Menu: Switch on top menu</en><fr>Menu: Switch on top menu</fr><nl>Menu: Switch on top menu</nl><ru>Меню: Включить верхнее меню</ru>', 2, '', ''),
('11365480442008122200562440h111', 'start', 'root', 'root', '2008-12-22 00:56:24', '2008-12-22 00:56:24', 1, '11365480442008122200545133i111', '<en>Start</en><ru>Старт</ru>', 4, '', ''),
('11365480442008122200564131f111', 'profi', 'root', 'root', '2008-12-22 00:56:41', '2008-12-22 00:56:41', 1, '11365480442008122200545133i111', '<en>Profi</en><ru>Профи</ru>', 6, '', ''),
('1136548044200812270154214k1111', '4', 'root', 'root', '2008-12-27 01:54:21', '2008-12-27 01:54:21', 1, '11365480442008122701535379p111', '<en>Under construction</en><ru>Сайт в разработке</ru>', 1, '', ''),
('11365480442008122701544783m111', '1', 'root', 'root', '2008-12-27 01:54:47', '2008-12-27 01:54:47', 1, '11365480442008122701535379p111', '<en>Website is online</en><ru>Сайт активен</ru>', 2, '', ''),
('11365480442009012420502488v111', 'ws10.ru', 'root', 'root', '2009-01-24 20:50:24', '2009-01-24 20:50:24', 1, '11365480442009012420395436i111', '<en>ws10.ru</en><ru>ws10.ru</ru>', 2, '', ''),
('11365480442009012512133380l111', 'main', 'root', 'root', '2009-01-25 12:13:33', '2009-01-25 12:13:33', 1, '11365480442009012512084684p111', '<en>Main group</en><ru>Общие дизайны</ru>', 1, '', ''),
('11365480442009012421383713w111', 'obzorniki.ru', 'root', 'root', '2009-01-24 21:38:37', '2009-01-25 23:22:11', 1, '11365480442009012420395436i111', '<en>obzorniki.ru</en><ru>obzorniki.ru</ru>', 4, '', ''),
('11365480442009013120084832a111', 'news.getNewsArticlesArticles', 'root', 'root', '2009-01-31 20:08:48', '2009-01-31 20:15:58', 1, '11365480442009013120072999b111', '<en>Articles</en><ru>Каталог статей</ru>', 4, '', ''),
('11365480442009012512135673g111', 'sport', 'root', 'root', '2009-01-25 12:13:56', '2009-01-25 12:13:56', 1, '11365480442009012512084684p111', '<en>Sport</en><ru>Спорт</ru>', 2, '', ''),
('11365480442009013120130077q111', 'news.getNewsArticlesNews', 'root', 'root', '2009-01-31 20:13:00', '2009-01-31 20:16:09', 1, '11365480442009013120072999b111', '<en>News</en><ru>Новости</ru>', 6, '', ''),
('11365480442009013120134832l111', 'news.getNewsArticlesBlog', 'root', 'root', '2009-01-31 20:13:48', '2009-01-31 20:13:48', 1, '11365480442009013120072999b111', '<en>Blog</en><ru>Блог</ru>', 8, '', ''),
('11365480442009013120141082h111', 'page', 'root', 'root', '2009-01-31 20:14:10', '2009-01-31 20:14:10', 1, '11365480442009013120072999b111', '<en>Page</en><ru>Страница сайта</ru>', 2, '', ''),
('11365480442009013120170481f111', 'submission.getWebSites', 'root', 'root', '2009-01-31 20:17:04', '2009-01-31 20:17:04', 1, '11365480442009013120072999b111', '<en>Websites directory</en><ru>Каталог сайтов</ru>', 10, '', ''),
('11365480442009013120195041f111', 'submission.getTopWebSites', 'root', 'root', '2009-01-31 20:19:50', '2009-01-31 20:22:43', 1, '11365480442009013120072999b111', '<en>Websites directory - Top websites</en><ru>Каталог сайтов - избранные сайты</ru>', 12, '', ''),
('11365480442009013120222481q111', 'submission.getNewWebSites', 'root', 'root', '2009-01-31 20:22:24', '2009-01-31 20:22:24', 1, '11365480442009013120072999b111', '<en>Websites directory - new websites</en><ru>Каталог сайтов - новые сайты</ru>', 14, '', ''),
('11365480442009013120241746a111', 'mail.contactForm', 'root', 'root', '2009-01-31 20:24:17', '2009-01-31 20:24:17', 1, '11365480442009013120072999b111', '<en>Contact form</en><ru>Контактная форма</ru>', 15, '', ''),
('11365480442009042822064193a111', 'SEOPageHideTopMenu', 'root', 'root', '2009-04-28 22:06:41', '2009-04-28 22:06:41', 1, '11365480442009042821202738g111', '<en>Hide top menu</en><ru>Скрыть верхнее меню</ru>', 5, '', ''),
('11365480442009042822071012p111', 'SEOPageHideBottomMenu', 'root', 'root', '2009-04-28 22:07:10', '2009-04-28 22:07:10', 1, '11365480442009042821202738g111', '<en>Hide bottom menu</en><ru>Скрыть нижнее меню</ru>', 6, '', ''),
('11365480442009042822082553i111', 'SEOPageHideCenter', 'root', 'root', '2009-04-28 22:08:25', '2009-04-28 22:08:25', 1, '11365480442009042821202738g111', '<en>Hide center content</en><ru>Скрыть содержимое в центре страницы</ru>', 7, '', ''),
('11365480442009042822102949g111', 'SEOPageHideForVisitors', 'root', 'root', '2009-04-28 22:10:29', '2009-04-28 22:10:29', 1, '11365480442009042821202738g111', '<en>Give access only to loged in users</en><ru>Дать доступ только для зарегистрированных пользователей</ru>', 7, '', ''),
('11365480442009042822110579t111', 'SEOPagePaidAccess', 'root', 'root', '2009-04-28 22:11:05', '2009-04-28 22:11:05', 1, '11365480442009042821202738g111', '<en>Paid access only</en><ru>Платный доступ к странице</ru>', 7, '', ''),
('11365480442009061822353465p111', 'interx', 'root', 'root', '2009-06-18 22:35:34', '2009-11-18 12:52:13', 1, '11365480442007100323430210j111', '<en>interx</en><fr>interx</fr><nl>interx</nl><ru>interx</ru>', 12, '', ''),
('11365480442009061822353465zz11', 'mgm', 'root', 'root', '2009-06-18 22:35:34', '2009-11-18 12:52:13', 1, '11365480442007100323430210j111', '<en>mgm</en><fr>mgm</fr><nl>mgm</nl><ru>mgm</ru>', 14, '', ''),
('11365480442009081422595524s111', 'custom', 'root', 'root', '2009-08-14 22:59:55', '2009-11-18 12:52:13', 1, '11365480442007100323430210j111', '<en>Custom design</en><fr>Custom design</fr><nl>Custom design</nl><ru>Индивидуальный дизайн</ru>', 8, '', ''),
('11365480442009082623170323x111', 'reportal', 'root', 'root', '2009-08-26 23:17:03', '2009-11-30 21:49:06', 1, '11365480442007062318391012c111', '<en>Real Estate Portal</en><ru>Real Estate Portal</ru>', 12, '', ''),
('11365480442009082623173118f111', 'bizdirectory', 'root', 'root', '2009-08-26 23:17:31', '2009-11-30 21:49:06', 1, '11365480442007062318391012c111', '<en>Biz Directory</en><ru>Biz Directory</ru>', 14, '', ''),
('11365480442009083120452668p111', 'property', 'root', 'root', '2009-08-31 20:45:26', '2009-11-18 12:52:13', 1, '11365480442007100323430210j111', '<en>Property</en><fr>Property</fr><nl>Property</nl><ru>Недвижимость</ru>', 16, '', ''),
('1136548044200909021306276b1111', 'frame', 'root', 'root', '2009-09-02 13:06:27', '2009-09-02 13:07:21', 1, '14', '<en>Popup frame</en><ru>В всплывающем окне</ru>', 6, '', ''),
('11365480442009090421395149e111', 'free', 'root', 'root', '2009-09-04 21:39:51', '2009-09-04 21:39:51', 1, '11', '<en>Free position</en><ru>Free position</ru>', 73, '', ''),
('11365480442009090513570247g111', 'websolution', 'root', 'root', '2009-09-05 13:57:02', '2009-11-30 21:49:06', 1, '11365480442007062318391012c111', '<en>Websites development company</en><ru>Сайт компании по созданию сайтов</ru>', 18, '', ''),
('11365480442009091001474355l111', '', 'root', 'root', '2009-09-10 01:47:43', '2009-09-10 01:55:16', 1, '11365480442009091001471729b111', '<en>Hide</en><ru>Скрыть</ru>', 2, '', ''),
('11365480442009091001484798g111', 'N', 'root', 'root', '2009-09-10 01:48:47', '2009-09-10 01:48:47', 1, '11365480442009091001471729b111', '<en>Show on all pages</en><ru>Показать на всех страницах</ru>', 4, '', ''),
('11365480442009091001491756n111', 'Y', 'root', 'root', '2009-09-10 01:49:17', '2009-09-10 01:49:17', 1, '11365480442009091001471729b111', '<en>Show on current page only</en><ru>Показать только на текущей странице</ru>', 6, '', ''),
('11365480442009091023400891z111', 'property', 'root', 'root', '2009-09-10 23:40:08', '2009-09-10 23:40:08', 1, '19', '<en>Properties</en><ru>Недвижимость</ru>', 15, '', ''),
('11365480442009091222213588w111', '1', 'root', 'root', '2009-09-12 22:21:35', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Apartment</en><fr>Appartementen</fr><nl>Apartement</nl><ru>Квартира</ru>', 2, '', ''),
('11365480442009091222274056i111', '2', 'root', 'root', '2009-09-12 22:27:40', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>House</en><fr>Maison</fr><nl>Woonhuis</nl><ru>Дом</ru>', 10, '', ''),
('11365480442009112318125395r111', '17', 'root', 'root', '2009-11-23 18:12:53', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Bungalow</en><fr>Pavillon</fr><nl>Bungalow</nl><ru>Бунгало</ru>', 12, '', ''),
('11365480442009091222344182o111', '3', 'root', 'root', '2009-09-12 22:34:41', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Farm</en><fr>Ferme</fr><nl>Boerderij</nl><ru>Дом с земельным учатком</ru>', 28, '', ''),
('11365480442009091413163180l111', '9', 'root', 'root', '2009-09-14 13:16:31', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Grand town house</en><fr>Hôtel particulier</fr><nl>Stads heren huis</nl><ru>Grand town house</ru>', 16, '', ''),
('11365480442009091222373717h111', '4', 'root', 'root', '2009-09-12 22:37:37', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Castle, estate</en><fr>Châteaux, manoirs</fr><nl>Châteaux, landhuizen</nl><ru>Châteaux, manor house</ru>', 34, '', ''),
('11365480442009091222394624m111', '5', 'root', 'root', '2009-09-12 22:39:46', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Land</en><fr>Terrain</fr><nl>Grond</nl><ru>Земля под застройку</ru>', 44, '', ''),
('11365480442009091222410967n111', '6', 'root', 'root', '2009-09-12 22:41:09', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Commercial property</en><fr>Commerces</fr><nl>Businesses</nl><ru>Коммерческая недвижимость</ru>', 56, '', ''),
('11365480442009091222424311f111', '7', 'root', 'root', '2009-09-12 22:42:43', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Barns and ruins</en><fr>Granges et ruines</fr><nl>Schuren, ruïnes e.d.</nl><ru>Сараи, развалины</ru>', 60, '', ''),
('11365480442009091222443464i111', '10', 'root', 'root', '2009-09-12 22:44:34', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Other property</en><fr>Autre</fr><nl>Overige</nl><ru>Другая недвижимость</ru>', 72, '', ''),
('11365480442009091413310091t111', '1', 'root', 'root', '2009-09-14 13:31:00', '2009-11-18 18:19:25', 1, '11365480442009091413300818m111', '<en>Our Favourite</en><fr>Coup Couer</fr><nl>Moet U zien !</nl><ru>Спецпредложение</ru>', 1, '', ''),
('11365480442009091409051552x111', 'Blocked', 'root', 's46', '2009-09-14 09:05:15', '2009-09-14 09:05:15', 1, '11365480442009091409045260d111', '<en>Show disactivated clients</en><fr>Show disactivated clients</fr><ru>Show disactivated clients</ru>', 1, '', ''),
('11365480442009091409053438y111', 'Name', 'root', 's46', '2009-09-14 09:05:34', '2009-09-14 09:05:34', 1, '11365480442009091409045260d111', '<en>Order by name</en><fr>Order by name</fr><ru>Order by name</ru>', 2, '', ''),
('11365480442009091409055081f111', 'LastMessage', 'root', 's46', '2009-09-14 09:05:50', '2009-09-14 09:05:50', 1, '11365480442009091409045260d111', '<en>Order by last message</en><fr>Order by last message</fr><ru>Order by last message</ru>', 3, '', ''),
('11365480442009091409491021b111', 'Subject', 'root', 's46', '2009-09-14 09:49:10', '2009-09-14 09:49:10', 1, '11365480442009091409470117d111', '<en>Order by subject</en><fr>Order by subject</fr><ru>Сортировать по теме</ru>', 2, '', ''),
('11365480442009091409494471t111', 'Client', 'root', 's46', '2009-09-14 09:49:44', '2009-09-14 09:49:44', 1, '11365480442009091409470117d111', '<en>Order by client</en><fr>Order by client</fr><ru>Order by client</ru>', 3, '', ''),
('11365480442009091409501525o111', 'LastWeek', 'root', 's46', '2009-09-14 09:50:15', '2009-09-14 09:50:15', 1, '11365480442009091409470117d111', '<en>Show last week</en><fr>Show last week</fr><ru>Показать последнюю неделю</ru>', 4, '', ''),
('11365480442009091409512785k111', 'LastMonth', 'root', 's46', '2009-09-14 09:51:27', '2009-09-14 09:51:27', 1, '11365480442009091409470117d111', '<en>Show last month</en><fr>Show last month</fr><ru>Показать последний месяц</ru>', 5, '', ''),
('11365480442009091410170045g111', 'sale', 'root', 'root', '2009-09-14 10:17:00', '2009-09-14 10:17:00', 1, '11365480442009091410155496q111', '<en>For sale</en><fr>Vente</fr><nl>Verkoop</nl><ru>Продажа</ru>', 1, '', ''),
('11365480442009091410172574x111', 'rent', 'root', 'root', '2009-09-14 10:17:25', '2009-09-14 10:17:25', 1, '11365480442009091410155496q111', '<en>To rent</en><fr>Location</fr><nl>Huur</nl><ru>Аренда</ru>', 2, '', ''),
('11365480442009091410250915g111', 'holiday-rental', 'root', 'root', '2009-09-14 10:25:09', '2009-09-14 10:25:09', 1, '11365480442009091410155496q111', '<en>Holiday rental</en><fr>Location saisonnier</fr><nl>Seizoens huur</nl><ru>Аренда на день</ru>', 3, '', ''),
('11365480442009091410254077w111', 'development', 'root', 'root', '2009-09-14 10:25:40', '2009-09-14 10:25:40', 1, '11365480442009091410155496q111', '<en>New development</en><fr>A construire</fr><nl>Nieuwbouwprojecten</nl><ru>Новостройки</ru>', 4, '', ''),
('11365480442009091413140728a111', '8', 'root', 'root', '2009-09-14 13:14:07', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Loft</en><fr>Loft-Atelier</fr><nl>Loft-atelier</nl><ru>Loft</ru>', 4, '', ''),
('11365480442009091413171112s111', '11', 'root', 'root', '2009-09-14 13:17:11', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Parking</en><fr>Parking</fr><nl>Parking</nl><ru>Паркинг</ru>', 58, '', ''),
('11365480442009091413174561j111', '12', 'root', 'root', '2009-09-14 13:17:45', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Barges</en><fr>Peniche</fr><nl>Booten</nl><ru>Barges</ru>', 68, '', ''),
('11365480442009091413183337r111', '13', 'root', 'root', '2009-09-14 13:18:33', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Gîte business</en><fr>Complexe avec gîtes</fr><nl>Bungalow park</nl><ru>Bungalow park</ru>', 62, '', ''),
('11365480442009091413204065k111', '14', 'root', 'root', '2009-09-14 13:20:40', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Investment building</en><fr>Immeuble</fr><nl>Investering Gebouw</nl><ru>Новостройки</ru>', 54, '', ''),
('11365480442009091413314379f111', '2', 'root', 'root', '2009-09-14 13:31:42', '2009-11-18 18:19:25', 1, '11365480442009091413300818m111', '<en>Price decrease</en><fr>Prix en baisse</fr><nl>Prijs verlaging</nl><ru>Снижена цена</ru>', 2, '', ''),
('11365480442009091413321617n111', '3', 'root', 'root', '2009-09-14 13:32:16', '2009-11-18 18:19:25', 1, '11365480442009091413300818m111', '<en>Make an offer</en><fr>Fair un offre !</fr><nl>Maak een bod !</nl><ru>Make an offer</ru>', 3, '', ''),
('1136548044200909141332534e1111', '4', 'root', 'root', '2009-09-14 13:32:53', '2009-11-18 18:19:25', 1, '11365480442009091413300818m111', '<en>For sale only with us</en><fr>Mandat exclusive</fr><nl>Allenverkoop recht</nl><ru>Эксклюзивное предложение</ru>', 4, '', ''),
('11365480442009091413334327k111', '5', 'root', 'root', '2009-09-14 13:33:43', '2009-11-18 18:19:25', 1, '11365480442009091413300818m111', '<en>Sold subject to contract</en><fr>Vendu sous compromis</fr><nl>Verkocht, onder vorbehoud</nl><ru>Оформление продажи</ru>', 5, '', ''),
('1136548044200909141334147z1111', '10', 'root', 'root', '2009-09-14 13:34:14', '2009-11-18 18:19:25', 1, '11365480442009091413300818m111', '<en>Sold</en><fr>Vendu</fr><nl>Verkocht</nl><ru>Продано</ru>', 6, '', ''),
('11365480442009091413343838i111', '20', 'root', 'root', '2009-09-14 13:34:38', '2009-11-18 18:19:25', 1, '11365480442009091413300818m111', '<en>Rented</en><fr>Loue</fr><nl>Verhuurd</nl><ru>Арендовано</ru>', 7, '', ''),
('1136548044200909251941461k1111', 'paid', 'root', 'root', '2009-09-25 19:41:46', '2009-09-25 19:41:46', 1, '11365480442009092519375180f111', '<en>Paid</en><fr>Paid</fr><nl>Paid</nl><ru>Paid</ru>', 1, '', ''),
('11365480442009092519415959o111', 'notpaid', 'root', 'root', '2009-09-25 19:41:59', '2009-09-25 19:41:59', 1, '11365480442009092519375180f111', '<en>Not paid</en><fr>Not paid</fr><nl>Not paid</nl><ru>Not paid</ru>', 2, '', ''),
('11365480442009101200062052k111', 'tissot', 'root', 's49', '2009-10-12 00:06:20', '2009-11-18 12:52:13', 1, '11365480442007100323430210j111', '<en>tissot watch</en><fr>tissot watch</fr><nl>tissot watch</nl><ru>Часы tissot</ru>', 18, '', ''),
('11365480442009101816343593u111', '1', 'root', 'root', '2009-10-18 16:34:35', '2009-10-18 16:35:02', 1, '11365480442009101816321424u111', '<en>Featured</en><fr>Featured</fr><nl>Featured</nl><ru>Спецпредложения</ru>', 2, '', ''),
('11365480442009101816345469k111', '2', 'root', 'root', '2009-10-18 16:34:54', '2009-10-18 16:34:54', 1, '11365480442009101816321424u111', '<en>Homepage</en><fr>Homepage</fr><nl>Homepage</nl><ru>Homepage</ru>', 4, '', ''),
('11365480442009101817171894u111', 'int', 'root', 'root', '2009-10-18 17:17:18', '2009-10-18 17:17:18', 1, '5', '<en>Integer</en><fr>Integer</fr><nl>Integer</nl><ru>Integer</ru>', 10, '', ''),
('11365480442009102117512197o111', 'cardealer', 'root', 'root', '2009-10-21 17:51:21', '2009-11-30 21:49:06', 1, '11365480442007062318391012c111', '<en>Car dealer website</en><ru>Сайт автодилера</ru>', 16, '', ''),
('11365480442009102118010930q111', 'vehicle', 'root', 'root', '2009-10-21 18:01:09', '2009-11-18 12:52:13', 1, '11365480442007100323430210j111', '<en>Vehicle</en><fr>Vehicle</fr><nl>Vehicle</nl><ru>Vehicle</ru>', 20, '', ''),
('11365480442009102316573248d111', 'html', 'root', 'root', '2009-10-23 16:57:32', '2009-10-23 17:01:51', 1, '5', '<en>HTML area</en><fr>HTML area</fr><nl>HTML area</nl><ru>HTML area</ru>', 8, '', ''),
('11365480442009102317035160g111', 'dropdowncheckboxes', 'root', 'root', '2009-10-23 17:03:51', '2009-10-23 17:03:51', 1, '5', '<en>Checkboxes as drop down</en><fr>Checkboxes as drop down</fr><nl>Checkboxes as drop down</nl><ru>Checkboxes as drop down</ru>', 19, '', ''),
('11365480442009102323140468h111', 'situation', 'root', 'root', '2009-10-23 23:14:04', '2009-10-23 23:43:04', 1, '11365480442009102323111833f111', '<en>Situation</en><fr>Situation</fr><nl>Ligging</nl><ru>Расположение</ru>', 2, '', ''),
('1136548044200910271718192v1111', 'vehicle', 'root', 'root', '2009-10-27 17:18:19', '2009-10-27 17:18:19', 1, '19', '<en>Vehicles</en><fr>Vehicles</fr><nl>Vehicles</nl><ru>Vehicles</ru>', 16, '', ''),
('11365480442009102323153536s111', 'apartments', 'root', 'root', '2009-10-23 23:15:35', '2009-10-23 23:15:35', 1, '11365480442009102323111833f111', '<en>Apartment details</en><fr>Immeuble details</fr><nl>Gebouw info</nl><ru>Параметры квартиры</ru>', 4, '', ''),
('11365480442009102323162671m111', 'exterior', 'root', 'root', '2009-10-23 23:16:26', '2009-10-23 23:16:26', 1, '11365480442009102323111833f111', '<en>Exterior</en><fr>Exterieur</fr><nl>Buiten</nl><ru>Exterior</ru>', 6, '', ''),
('11365480442009102323165922o111', 'energy', 'root', 'root', '2009-10-23 23:16:59', '2009-10-23 23:16:59', 1, '11365480442009102323111833f111', '<en>Energy</en><fr>Utilitairs</fr><nl>Energie</nl><ru>Отопление</ru>', 8, '', ''),
('11365480442009102718195713b111', 'none', 'root', 'root', '2009-10-27 18:19:57', '2009-10-27 18:19:57', 1, '11365480442009102718191492l111', '<en>No search form</en><fr>No search form</fr><nl>No search form</nl><ru>Скрыть форму поиска</ru>', 2, '', ''),
('11365480442009102718203656p111', 'small', 'root', 'root', '2009-10-27 18:20:36', '2009-10-27 18:23:22', 1, '11365480442009102718191492l111', '<en>Small search form</en><fr>Small search form</fr><nl>Small search form</nl><ru>Минимальная форма поиска</ru>', 6, '', ''),
('11365480442009102718211947a111', 'default', 'root', 'root', '2009-10-27 18:21:19', '2009-10-27 18:23:09', 1, '11365480442009102718191492l111', '<en>Default search form</en><fr>Default search form</fr><nl>Default search form</nl><ru>Обычная форма поиска</ru>', 4, '', '');
INSERT INTO `referenceoption` (`id`, `code`, `UserID`, `OwnerID`, `timeCreated`, `timeSaved`, `hidden`, `referenceID`, `name`, `position`, `color`, `icon`) VALUES
('11365480442009102718215044k111', 'exstended', 'root', 'root', '2009-10-27 18:21:50', '2009-10-27 18:21:50', 1, '11365480442009102718191492l111', '<en>Extended search form</en><fr>Extended search form</fr><nl>Extended search form</nl><ru>Расширенная форма поиска</ru>', 8, '', ''),
('11365480442009102718481826o111', 'detailed', 'root', 'root', '2009-10-27 18:48:18', '2009-10-27 18:48:18', 1, '11365480442009102718455190o111', '<en>Detailed list</en><fr>Detailed list</fr><nl>Detailed list</nl><ru>Расширенный список</ru>', 1, '', ''),
('11365480442009102718485711n111', 'gallery', 'root', 'root', '2009-10-27 18:48:57', '2009-10-27 18:48:57', 1, '11365480442009102718455190o111', '<en>Photo gallery</en><fr>Photo gallery</fr><nl>Photo gallery</nl><ru>Галлерея фотографий</ru>', 2, '', ''),
('11365480442009102718492077w111', 'table', 'root', 'root', '2009-10-27 18:49:20', '2009-10-27 18:49:20', 1, '11365480442009102718455190o111', '<en>Table</en><fr>Table</fr><nl>Table</nl><ru>Таблица</ru>', 3, '', ''),
('1136548044200910271849415h1111', 'map', 'root', 'root', '2009-10-27 18:49:41', '2009-10-27 18:49:41', 1, '11365480442009102718455190o111', '<en>Google map</en><fr>Google map</fr><nl>Google map</nl><ru>Карта</ru>', 4, '', ''),
('11365480442009102914511617h111', '9', 'root', 'root', '2009-10-29 14:51:16', '2009-10-29 14:51:16', 1, '11365480442009102914482159k111', '<en>Bus</en><fr>Autocar</fr><nl>Bus</nl><ru>Туристические автобусы</ru>', 2, '', ''),
('11365480442009102914521530t111', '24', 'root', 'root', '2009-10-29 14:52:15', '2009-10-29 14:53:42', 1, '11365480442009102914482159k111', '<en>Car</en><fr>Voiture</fr><nl>Car</nl><ru>Автомобиль</ru>', 6, '', ''),
('11365480442009102914533656b111', '5', 'root', 'root', '2009-10-29 14:53:36', '2009-10-29 14:53:36', 1, '11365480442009102914482159k111', '<en>Truck -  7,5 t</en><fr>Camion - 7,5 t</fr><nl>Truck -  7,5 t</nl><ru>Автопоезд</ru>', 4, '', ''),
('11365480442009110801220320o111', 'dropdowncheckboxes', 'root', 'root', '2009-11-08 01:22:03', '2009-11-12 19:31:42', 1, '1', '<en>Drop down with checkboxes</en><fr>Drop down with checkboxes</fr><nl>Drop down with checkboxes</nl><ru>Drop down with checkboxes</ru>', 3, '', ''),
('11365480442009111113211865g111', '10', 'root', 's46', '2009-11-11 13:21:18', '2009-11-11 13:21:18', 1, '11365480442007021819424670x111', '<en>Region Info</en><fr>Region Info</fr><nl>Region Info</nl>', 7, '', ''),
('11365480442009111300243949k511', 'no', 'root', 'root', '2009-11-13 00:24:39', '2010-02-23 23:41:42', 4, '11365480442009111300243977x411', '<en>No bathroom and no shower</en><el>No bathroom and no shower</el><eg>No bathroom and no shower</eg><de>No bathroom and no shower</de><fr>No bathroom and no shower</fr><es>No bathroom and no shower</es><it>No bathroom and no shower</it><tu>No bathroom and no shower</tu><ru>No bathroom and no shower</ru>', 14, '', ''),
('11365480442009111300243995y811', 'torestore', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:33:04', 1, '11365480442009111300243958r711', '<en>Work to be planned</en><fr>Travaux a prevoir</fr><nl>Werk is nodig</nl><ru>Трубуется ремонт</ru>', 8, '', 'root/icons/i20090917021239-h-ss1.gif'),
('11365480442009111300243918i911', 'habitable', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:33:04', 1, '11365480442009111300243958r711', '<en>Livable</en><fr>Habitable</fr><nl>Basis is goed</nl><ru>Удовлетворительное</ru>', 6, '', 'root/icons/i20090917021209-h-ss4.gif'),
('11365480442009111300243910c101', 'good', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:33:03', 1, '11365480442009111300243958r711', '<en>Good quality</en><fr>Bon etat</fr><nl>Goede staat</nl><ru>Хорошее состояние</ru>', 4, '', 'root/icons/i20090917021130-h-ss5.gif'),
('11365480442009111300243917t111', 'no', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:33:04', 1, '11365480442009111300243958r711', '<en>Unknown</en><fr>Unknown</fr><nl>Unknown</nl><ru>Unknown</ru>', 10, '', 'root/icons/i20090917021324-h-ss3.gif'),
('11365480442009111300243927u211', 'perfect', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:33:03', 1, '11365480442009111300243958r711', '<en>Excellent quality</en><fr>Excellent, rien a faire</fr><nl>Perfekt, als nieuw</nl><ru>Превосходное состояние</ru>', 2, '', 'root/icons/i20090917021107-h-ss6.gif'),
('11365480442009111300243942o411', 'town', 'root', 'root', '2009-11-13 00:24:39', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', '<en>Town</en><fr>Ville</fr><nl>Dorp</nl><ru>Городок</ru>', 4, '', 'root/icons/i20090917003743-h-t.gif'),
('11365480442009111300243954a511', 'village', 'root', 'root', '2009-11-13 00:24:39', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', '<en>Village (no shops)</en><fr>Bourg (pas de commerces)</fr><nl>Dorp zonder winkels</nl><ru>Село</ru>', 8, '', 'root/icons/i20090916143752-h-gr.gif'),
('11365480442009111300243996s611', 'сountryside', 'root', 'root', '2009-11-13 00:24:39', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', '<en>Country side</en><fr>Сampagne</fr><nl>Landelijk</nl><ru>Сельская местность</ru>', 14, '', 'root/icons/i20090917004912-h-c.gif'),
('11365480442009111300243928n711', 'sea-side', 'root', 'root', '2009-11-13 00:24:39', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', '<en>Sea side</en><fr>Mer</fr><nl>Aan de kust</nl><ru>У моря</ru>', 16, '', 'root/icons/i20090917005827-h-sea.gif'),
('11365480442009111300243955u811', 'other', 'root', 'root', '2009-11-13 00:24:39', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', '<en>Other</en><fr>Other</fr><nl>Other</nl><ru>Other</ru>', 20, '', 'root/icons/i20090917014739-h-ot.gif'),
('11365480442009111300243986n911', 'city', 'root', 'root', '2009-11-13 00:24:39', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', '<en>City</en><fr>Centre ville</fr><nl>Stad</nl><ru>Город</ru>', 2, '', 'root/icons/i20090916143706-h-sity.gif'),
('11365480442009111300243942f101', 'mountains', 'root', 'root', '2009-11-13 00:24:39', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', '<en>In the mountains</en><fr>Montagne</fr><nl>In de bergen</nl><ru>В горах</ru>', 18, '', 'root/icons/i20090917014327-h-m.gif'),
('11365480442009111300243987i211', 'cellar', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', '<en>(Wine) Cellar</en> ', 1, '', ''),
('11365480442009111300243936u311', 'courtyard', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', '<en>Courtyard</en><fr>Courtyard</fr>', 2, '', ''),
('11365480442009111300243988r411', 'fields', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', '<en>Fields</en><fr>Fields</fr>', 3, '', ''),
('11365480442009111300243990q511', 'garden', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', '<en>Garden</en><fr>Garden</fr>', 5, '', ''),
('11365480442009111300243965i611', 'indoor-pool', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', '<en>Indoor pool</en><fr>Indoor pool</fr>', 8, '', ''),
('11365480442009111300243962i711', 'outside-pool', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', '<en>Outside pool</en><fr>Outside pool</fr>', 9, '', ''),
('1136548044200911130024395o8111', 'terrace', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', '<en>Terrace</en><fr>Terrace</fr>', 10, '', ''),
('11365480442009111300243926e911', 'water-nearby', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', '<en>Water nearby</en><fr>Water nearby</fr>', 11, '', ''),
('11365480442009111300243967j101', 'barn', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', '<en>Work shed / Barn</en><fr>Work shed / Barn</fr>', 12, '', ''),
('1136548044200911130024397w1111', 'extension', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', '<en>Extension possibility</en><fr>Extension possibility</fr>', 13, '', ''),
('11365480442009111300243915x211', 'balcony', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', '<en>Balcony</en><fr>Balcony</fr>', 14, '', ''),
('11365480442009111300243928z311', 'enclosedgarden', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', '<en>Enclosed garden</en><fr>Jardin Clos</fr><nl>Afgesloten tuin</nl><ru>Зимний сад</ru>', 6, '', ''),
('11365480442009111300243963k411', 'vegetablegarden', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', '<en>Vegetable garden</en><fr>Potager</fr><nl>Groente tuin</nl><ru>Огород</ru>', 6, '', ''),
('11365480442009111300243955c511', 'woodstorage', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', '<en>Wood storage</en><fr>Bucher</fr><nl>Hout opslag ruimte</nl><ru>Сарай</ru>', 15, '', ''),
('11365480442009111300243926n611', 'workshop', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', '<en>Work shop</en><fr>Atelier</fr><nl>Werk plaats</nl><ru>Мастерскя</ru>', 16, '', ''),
('11365480442009111300243986q711', 'tenniscourt', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', '<en>Tennis court</en><fr>Tennis</fr><nl>Tennis</nl><ru>Тенисный корт</ru>', 11, '', ''),
('11365480442009111300243992c911', 'attached', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243926j811', '<en>Attached</en><fr>Mitoyen</fr><nl>Niet vrijstaand</nl><ru>Присоединен к дргому дому</ru>', 1, '', ''),
('1136548044200911130024393s1011', 'detached', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243926j811', '<en>Detached</en><fr>Indepedant</fr><nl>Vrijstaand</nl><ru>Рядом с другими домами</ru>', 2, '', ''),
('11365480442009111300243910n111', 'isolated', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243926j811', '<en>Isolated</en><fr>Au calme</fr><nl>Afgezonderd</nl><ru>Отдельно стоящий дом</ru>', 3, '', ''),
('11365480442009111300243926m311', 'south', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243990x211', '<en>South</en><fr>Sud</fr><nl>Zuid</nl><ru>На юг</ru>', 1, '', ''),
('11365480442009111300243985i411', 'west', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243990x211', '<en>West</en><fr>Ouest</fr><nl>West</nl><ru>На запад</ru>', 2, '', ''),
('11365480442009111300243986a511', 'north', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243990x211', '<en>North</en><fr>Nord</fr><nl>Noord</nl><ru>На север</ru>', 3, '', ''),
('11365480442009111300243974y611', 'east', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243990x211', '<en>East</en><fr>Est</fr><nl>Oost</nl><ru>На восток</ru>', 4, '', ''),
('1136548044200911130032418f1111', 'ьagnificentview', 'root', 'root', '2009-11-13 00:32:41', '2009-11-13 00:32:41', 1, '11365480442009111300243956p711', '', 1, '', ''),
('11365480442009111300243993y911', 'magnificentview', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243956p711', '<en>Magnificent view</en><fr>Vue magnifique</fr><nl>Prachtig uitzicht</nl><ru>Превосходный вид из окна</ru>', 1, '', ''),
('11365480442009111300243962y101', 'waterview', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243956p711', '<en>View of water</en><fr>Vue sur eau</fr><nl>Uitzicht op water</nl><ru>С видом на воду</ru>', 2, '', ''),
('11365480442009111300243953d111', 'quietarea', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243956p711', '<en>Quiet area</en><fr>Quiet area</fr><nl>Quiet area</nl><ru>Тихое место</ru>', 3, '', ''),
('11365480442009111300243981o211', 'private', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243956p711', '<en>Private</en><fr>Sans vis a vis</fr><nl>Geen inkijk</nl><ru>Приватная атмосфера</ru>', 4, '', ''),
('11365480442009111300243924v311', 'nearskislopes', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243956p711', '<en>Near ski slopes</en><fr>Proche piste de ski</fr><nl>Dichtbij ski piste</nl><ru>Возле лыжных склонов</ru>', 5, '', ''),
('11365480442009111300243993r511', 'old', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243917r411', '<en>Old</en><fr>Ancien</fr><nl>Oud huis</nl><ru>Старое</ru>', 1, '', ''),
('1136548044200911130024399p6111', 'recent', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243917r411', '<en>Recent</en><fr>Neuf</fr><nl>Nieuw huis</nl><ru>Недавнее</ru>', 2, '', ''),
('11365480442009111300243979t711', 'new', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243917r411', '<en>New</en><fr>New</fr><nl>New</nl><ru>Новостройка</ru>', 3, '', ''),
('11365480442009111300243981f911', 'no', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243915n811', '<en>Not available</en><fr>Non disponible</fr><nl>Niet beschikbaar</nl><ru>Not available</ru>', 1, '', ''),
('11365480442009111300243916b101', 'A', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243915n811', '<en>A</en><fr>A</fr><nl>A</nl><ru>A</ru>', 2, '', ''),
('11365480442009111300243944h111', 'B', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243915n811', '<en>B</en><fr>B</fr><nl>B</nl><ru>B</ru>', 3, '', ''),
('11365480442009111300243964k211', 'C', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243915n811', '<en>C</en><fr>C</fr><nl>C</nl><ru>C</ru>', 4, '', ''),
('11365480442009111300243991q311', 'D', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243915n811', '<en>D</en><fr>D</fr><nl>D</nl><ru>D</ru>', 5, '', ''),
('11365480442009111300243940e411', 'E', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243915n811', '<en>E</en><fr>E</fr><nl>E</nl>', 6, '', ''),
('11365480442009111300243996c511', 'F', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243915n811', '<en>F</en><fr>F</fr><nl>F</nl><ru>F</ru>', 7, '', ''),
('11365480442009111300243977w611', 'G', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243915n811', '<en>G</en><fr>G</fr>', 8, '', ''),
('11365480442009111300243989s811', 'no', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243921f711', '<en>No central heating</en><fr>Pas de chauffage</fr><nl>Geen centrale verwarming</nl><ru>Нет центрального отопления</ru>', 2, '', ''),
('11365480442009111300243977g911', 'oil', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243921f711', '<en>Oil fired</en><fr>Fuel</fr><nl>Olie gestookt</nl><ru>Oil fired</ru>', 4, '', ''),
('11365480442009111300243986f101', 'gasbotlle', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243921f711', '<en>Gas botlle fired</en><fr>Chauffage au Gaz/Propane</fr><nl>Gas gestookt</nl><ru>Gas botlle fired</ru>', 6, '', ''),
('11365480442009111300243969h111', 'gas', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243921f711', '<en>Mains gas fired</en><fr>Au gaz de ville</fr><nl>Gas gemeente</nl><ru>Газовое</ru>', 8, '', ''),
('11365480442009111300243978g211', 'electric', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243921f711', '<en>Electric</en><fr>Electrique</fr><nl>Elektrisch</nl><ru>Электричство</ru>', 9, '', ''),
('11365480442009111300243989m311', 'geothermal', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243921f711', '<en>Heat exhanger (geothermal)</en><fr>Echangeur (geothermal)</fr><nl>Warmte wisselaar (geothermie)</nl><ru>Геотермическое</ru>', 10, '', ''),
('11365480442009111300243943k411', 'air', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243921f711', '<en>Heat exchanger (air)</en><fr>Exchangeur (aero)</fr><nl>Warmte wisselaar (lucht)</nl><ru>Heat exchanger (air)</ru>', 11, '', ''),
('11365480442009111300243998u511', 'wood', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243921f711', '<en>Wood ( chip) fired</en><fr>Au Bois (pelets)</fr><nl>Hout gestookt</nl><ru>Wood ( chip) fired</ru>', 12, '', ''),
('11365480442009111300243911v611', 'solarpanels', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243921f711', '<en>Heat exchanger ( solar panels)</en><fr>Exchanger (panneaux solaires)</fr><nl>Warmte wisselaar ( zon pannelen)</nl><ru>Солнечиные батареи</ru>', 13, '', ''),
('11365480442009111300243973i811', 'N', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243951m711', '<en>No</en><fr>Non</fr><nl>No</nl><ru>Нет</ru>', 1, '', ''),
('11365480442009111300243916i911', 'Y', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243951m711', '<en>Yes</en><fr>Oui</fr><nl>Yes</nl><ru>Да</ru>', 2, '', ''),
('11365480442009111300243970s111', 'interphone', 'root', 'root', '2009-11-13 00:24:39', '2010-01-20 00:55:28', 1, '11365480442009111300243973q101', '<en>Interphone</en><el>Interphone</el><eg>Interphone</eg><de>Interphone</de><fr>Interphone</fr><es>Interphone</es><it>Interphone</it><tu>Interphone</tu><ru>Домофон</ru>', 6, '', ''),
('11365480442009111300243965w211', 'codeaccess', 'root', 'root', '2009-11-13 00:24:39', '2010-01-20 00:55:28', 1, '11365480442009111300243973q101', '<en>Access with code</en><el>Access with code</el><eg>Access with code</eg><de>Access with code</de><fr>Digicode ascenceur</fr><es>Access with code</es><it>Access with code</it><tu>Access with code</tu><ru>Кодовый замок</ru>', 8, '', ''),
('11365480442009111300243925p311', 'lift', 'root', 'root', '2009-11-13 00:24:39', '2010-01-20 00:55:28', 1, '11365480442009111300243973q101', '<en>Elevator</en><el>Elevator</el><eg>Elevator</eg><de>Elevator</de><fr>Elevator</fr><es>Elevator</es><it>Elevator</it><tu>Elevator</tu><ru>Лифт</ru>', 10, '', ''),
('11365480442009111300243989a411', 'сaretaker', 'root', 'root', '2009-11-13 00:24:39', '2010-01-20 00:55:28', 1, '11365480442009111300243973q101', '<en>Caretaker</en><el>Caretaker</el><eg>Caretaker</eg><de>Caretaker</de><fr>Guardian</fr><es>Caretaker</es><it>Caretaker</it><tu>Caretaker</tu><ru>Консьерж</ru>', 12, '', ''),
('11365480442009111300243931n511', 'lastfloor', 'root', 'root', '2009-11-13 00:24:39', '2010-01-20 00:55:28', 1, '11365480442009111300243973q101', '<en>Is on last floor?</en><el>Is on last floor?</el><eg>Is on last floor?</eg><de>Is on last floor?</de><fr>Dernier etage?</fr><es>Is on last floor?</es><it>Is on last floor?</it><tu>Is on last floor?</tu><ru>Последний этаж?</ru>', 2, '', ''),
('11365480442009111300243938c611', 'groundfloor', 'root', 'root', '2009-11-13 00:24:39', '2010-01-20 00:55:28', 1, '11365480442009111300243973q101', '<en>Is on ground floor?</en><el>Is on ground floor?</el><eg>Is on ground floor?</eg><de>Is on ground floor?</de><fr>Is on ground floor?</fr><es>Is on ground floor?</es><it>Is on ground floor?</it><tu>Is on ground floor?</tu><ru>Is on ground floor?</ru>', 4, '', ''),
('1136548044200911130024394s8111', 'airconditioning', 'root', 'root', '2009-11-13 00:24:39', '2010-01-28 00:45:03', 1, '11365480442009111300243963t711', '<en>air conditioning</en><el>Air conditioning</el><eg>Air conditioning</eg><de>Air conditioning</de><>Кондиционеры</><fr>Climatise</fr><es>Air conditioning</es><it>Air conditioning</it><tu>Air conditioning</tu><ru>Кондиционеры</ru>', 1, '', ''),
('11365480442009111300243977e911', 'waterwell', 'root', 'root', '2009-11-13 00:24:39', '2010-01-28 00:45:03', 1, '11365480442009111300243963t711', '<en>Water well</en><el>Water well</el><eg>Water well</eg><de>Water well</de><>Очистка воды</><fr>Eau du puit</fr><es>Water well</es><it>Water well</it><tu>Water well</tu><ru>Очистка воды</ru>', 2, '', ''),
('1136548044200911130024391a1011', 'watersource', 'root', 'root', '2009-11-13 00:24:39', '2010-01-28 00:45:03', 1, '11365480442009111300243963t711', '<en>Water source</en><el>Water source</el><eg>Water source</eg><de>Water source</de><fr>Eau du source</fr><es>Water source</es><it>Water source</it><tu>Water source</tu><ru>Water source</ru>', 3, '', ''),
('1136548044200911130024393n1111', 'rainwater', 'root', 'root', '2009-11-13 00:24:39', '2010-01-28 00:45:03', 1, '11365480442009111300243963t711', '<en>Rain water collection</en><el>Rain water collection</el><eg>Rain water collection</eg><de>Rain water collection</de><fr>Eau du pluie collecte</fr><es>Rain water collection</es><it>Rain water collection</it><tu>Rain water collection</tu><ru>Rain water collection</ru>', 4, '', ''),
('11365480442009111300243910g311', 'N', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243969t211', '<en>No</en><fr>No</fr><nl>No</nl><ru>No</ru>', 1, '', ''),
('11365480442009111300243947u411', 'Y', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243969t211', '<en>Yes</en><fr>Yes</fr><nl>Yes</nl><ru>Yes</ru>', 2, '', ''),
('11365480442009111300243987s611', 'CARRIER', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243976r511', '<en>CARRIER</en><fr>CARRIER</fr><nl>CARRIER</nl><ru>CARRIER</ru>', 1, '', ''),
('11365480442009111300243993k711', 'OUI', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243976r511', '<en>Yes</en><fr>OUI</fr><nl>Ya</nl><ru>Да</ru>', 2, '', ''),
('1136548044200911130024393q8111', 'NON', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243976r511', '<en>NO</en><fr>NON</fr><nl>Nein</nl><ru>Нет</ru>', 3, '', ''),
('11365480442009111300243942o911', 'NVEKTAR', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243976r511', '<en>NVEKTAR</en><fr>NVEKTAR</fr><nl>NVEKTAR</nl><ru>NVEKTAR</ru>', 4, '', ''),
('11365480442009111300243974g101', 'SUTRAK', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243976r511', '<en>SUTRAK</en><fr>SUTRAK</fr><nl>SUTRAK</nl><ru>SUTRAK</ru>', 5, '', ''),
('11365480442009111301514715u211', 'broadband', 'root', 'root', '2009-11-13 01:51:47', '2009-11-13 01:51:47', 1, '1136548044200911130151477l1111', '<en>Broadband available</en><fr>Adsl disponible</fr><nl>Breedband internet</nl><ru>Скоростной интернет</ru>', 2, '', ''),
('11365480442009111301522279o111', 'alarm', 'root', 'root', '2009-11-13 01:52:22', '2009-11-13 01:52:22', 1, '1136548044200911130151477l1111', '<en>Alarm installed</en><fr>Alarm disponible</fr><nl>Alarm aanwezig</nl><ru>Сигнализация</ru>', 4, '', ''),
('11365480442009111711063124c111', 'defaultleft', 'root', 'root', '2009-11-17 11:06:31', '2009-11-18 12:52:13', 1, '11365480442007100323430210j111', '<en>Grey with left column</en><fr>Grey with left column</fr><nl>Grey with left column</nl><ru>Серый</ru>', 22, '', ''),
('11365480442009111712564496a111', 'CoreUserAreaOff', 'root', 'root', '2009-11-17 12:56:44', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', '<en>Menu: Switch off member area</en><fr>Menu: Switch off member area</fr><nl>Menu: Switch off member area</nl><ru>Меню: Выключить меню пользователя</ru>', 10, '', ''),
('11365480442009112318102126d111', '15', 'root', 'root', '2009-11-23 18:10:21', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Duplex</en><fr>Duplex</fr><nl>Duplex</nl><ru>Duplex</ru>', 6, '', ''),
('11365480442009112318104375z111', '16', 'root', 'root', '2009-11-23 18:10:43', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Penthouse</en><fr>Penthouse</fr><nl>Penthouse</nl><ru>Penthouse</ru>', 8, '', ''),
('11365480442009112318154681l111', '18', 'root', 'root', '2009-11-23 18:15:46', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Village house</en><fr>Maison de bourg</fr><nl>Dorps huis</nl><ru>Дом в селе</ru>', 14, '', ''),
('11365480442009112318182711y111', '19', 'root', 'root', '2009-11-23 18:18:27', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Cottage</en><fr>Fermette</fr><nl>Cottage</nl><ru>Котедж</ru>', 18, '', ''),
('11365480442009112318193143a111', '20', 'root', 'root', '2009-11-23 18:19:31', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>House (not modern)</en><fr>Maison authentique</fr><nl>Stenen huis</nl><ru>Старинный дом</ru>', 20, '', ''),
('1136548044200911231820148b1111', '21', 'root', 'root', '2009-11-23 18:20:14', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Modern house</en><fr>Maison moderne</fr><nl>Modern huis</nl><ru>Новый современный дом</ru>', 22, '', ''),
('11365480442009112318205765p111', '22', 'root', 'root', '2009-11-23 18:20:57', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Wooden chalet</en><fr>Chalet en bois</fr><nl>Houten chalet</nl><ru>Деревянный дом</ru>', 24, '', ''),
('11365480442009112318214047u111', '23', 'root', 'root', '2009-11-23 18:21:40', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>House with guest house</en><fr>Maison avec gite</fr><nl>Huis met gasten huis</nl><ru>Дом с домом для гостей</ru>', 26, '', ''),
('11365480442009112318223644f111', '24', 'root', 'root', '2009-11-23 18:22:36', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Equestrian farm</en><fr>Ferme équestre</fr><nl>Paarden</nl><ru>Equestrian farm</ru>', 32, '', ''),
('1136548044200911231827341v1111', '25', 'root', 'root', '2009-11-23 18:27:34', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Farm + 1 hectare</en><fr>Ferme + 1 hectare</fr><nl>Boerderij + 1 hectare</nl><ru>Ферма с гектаром земли</ru>', 30, '', ''),
('11365480442009112318285934o111', '26', 'root', 'root', '2009-11-23 18:28:59', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Mill</en><fr>Moulin</fr><nl>Molen</nl><ru>Мельница</ru>', 36, '', ''),
('11365480442009112318293027a111', '27', 'root', 'root', '2009-11-23 18:29:30', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Château</en><fr>Château</fr><nl>Kasteel</nl><ru>Château</ru>', 38, '', ''),
('11365480442009112318302684x111', '28', 'root', 'root', '2009-11-23 18:30:26', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Manoir</en><fr>Manoir</fr><nl>Land Huis</nl><ru>Manoir</ru>', 40, '', ''),
('11365480442009112318305925g111', '29', 'root', 'root', '2009-11-23 18:30:59', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Maison de Maître</en><fr>Maison de Maître</fr><nl>Notaris woning</nl><ru>Maison de Maître</ru>', 42, '', ''),
('11365480442009112318315725m111', '30', 'root', 'root', '2009-11-23 18:31:57', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Constructible land</en><fr>Terrain avec CU</fr><nl>Bebouwbare grond</nl><ru>Земля по застройку</ru>', 46, '', ''),
('11365480442009112318324419v111', '31', 'root', 'root', '2009-11-23 18:32:44', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Lake</en><fr>Etang</fr><nl>Meer</nl><ru>Озеро</ru>', 48, '', ''),
('11365480442009112318332749q111', '32', 'root', 'root', '2009-11-23 18:33:27', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Fields</en><fr>Près</fr><nl>Veld</nl><ru>Поле</ru>', 50, '', ''),
('11365480442009112318340540m111', '33', 'root', 'root', '2009-11-23 18:34:05', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', '<en>Woods</en><fr>Bois</fr><nl>Bos</nl><ru>Лес</ru>', 52, '', ''),
('11365480442009112318363519h111', '34', 'root', 'root', '2009-11-23 18:36:35', '2009-11-23 18:36:35', 1, '11365480442009091221394225o111', '<en>Camping business</en><fr>Camping</fr><nl>Camping</nl><ru>Camping</ru>', 64, '', ''),
('11365480442009112318370716k111', '35', 'root', 'root', '2009-11-23 18:37:07', '2009-11-23 18:37:07', 1, '11365480442009091221394225o111', '<en>Bed en Breakfast </en><fr>Chambre d’hôtes</fr><nl>Bed en Breakfast</nl><ru>Bed en Breakfast</ru>', 66, '', ''),
('11365480442009112318382727u111', '36', 'root', 'root', '2009-11-23 18:38:27', '2009-11-23 18:38:27', 1, '11365480442009091221394225o111', '<en>Church</en><fr>Eglise</fr><nl>Kerk</nl><ru>Здание церкви</ru>', 70, '', ''),
('11365480442009112318475861m111', 'townout', 'root', 'root', '2009-11-23 18:47:58', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', '<en>Outskirts of town</en><fr>Periphery de ville</fr><nl>Rand van de stad</nl><ru>Пригород</ru>', 6, '', 'root/images/options/200911/20091123184758-h-t.gif'),
('11365480442009112318495643a111', 'villagedge', 'root', 'root', '2009-11-23 18:49:56', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', '<en>Edge of village</en><fr>Proche de village</fr><nl>Rand van dorp</nl><ru>На краю села</ru>', 10, '', 'root/images/options/200911/20091123184956-h-gr.gif'),
('11365480442009112318512098r111', 'hamlet', 'root', 'root', '2009-11-23 18:51:20', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', '<en>Hamlet</en><fr>Hameau</fr><nl>Gehucht</nl><ru>Хутор</ru>', 12, '', 'root/images/options/200911/20091123185120-h-gr.gif'),
('11365480442010071900164063c111', 'N', 'root', 'bestmoments', '2010-07-19 00:16:40', '2010-09-16 14:52:27', 1, '11365480442010071900161159m111', '<ru>Нет</ru><en>No</en>', 2, '', ''),
('11365480442010071900165581w111', 'Y', 'root', 'bestmoments', '2010-07-19 00:16:55', '2010-09-16 14:52:27', 1, '11365480442010071900161159m111', '<ru>Да</ru><en>Yes</en>', 6, '', ''),
('11365480442010051523292249e111', 'main-region', 'root', 'yachts', '2010-05-15 23:29:22', '2010-05-15 23:29:59', 1, '11365480442006051312071812l111', '<ru>Основной регион</ru><en>Main region</en><>Основной регион</>', 2, '', ''),
('1136548044201005152329491u1111', 'sub-region', 'root', 'yachts', '2010-05-15 23:29:49', '2010-05-15 23:29:59', 1, '11365480442006051312071812l111', '<ru>Внутренний регион</ru><en>Sub region</en><>Внутренний регион</>', 4, '', ''),
('11365480442010090712181259i111', '250', 'root', 'root', '2010-09-07 12:18:12', '2010-09-07 12:18:12', 1, '11365480442010090712165475i111', '<ru>250</ru><en>250</en>', 16, '', ''),
('1136548044201009071218235a1111', '400', 'root', 'root', '2010-09-07 12:18:23', '2010-09-07 12:18:23', 1, '11365480442010090712165475i111', '<ru>400</ru><en>400</en>', 14, '', ''),
('11365480442010090712183066h111', '600', 'root', 'root', '2010-09-07 12:18:30', '2010-09-07 12:18:30', 1, '11365480442010090712165475i111', '<ru>600</ru><en>600</en>', 12, '', ''),
('11365480442010090712184546m111', '800', 'root', 'root', '2010-09-07 12:18:45', '2010-09-07 12:18:45', 1, '11365480442010090712165475i111', '<ru>800</ru><en>800</en>', 10, '', ''),
('11365480442010090712185548u111', '1200', 'root', 'root', '2010-09-07 12:18:55', '2010-09-07 12:18:55', 1, '11365480442010090712165475i111', '<ru>1200</ru><en>1200</en>', 8, '', ''),
('1136548044201009071219054q1111', '1500', 'root', 'root', '2010-09-07 12:19:05', '2010-09-07 12:19:05', 1, '11365480442010090712165475i111', '<ru>1500</ru><en>1500</en>', 6, '', ''),
('11365480442010090712191547l111', '2000', 'root', 'root', '2010-09-07 12:19:15', '2010-09-07 12:19:15', 1, '11365480442010090712165475i111', '<ru>2000</ru><en>2000</en>', 4, '', ''),
('1136548044201009071219240h1111', '4000', 'root', 'root', '2010-09-07 12:19:24', '2010-09-07 12:19:24', 1, '11365480442010090712165475i111', '<ru>4000</ru><en>4000</en>', 2, '', ''),
('11365480442010091411190091o111', 'NFP', 'root', 'bestmoments', '2010-09-14 11:19:00', '2010-09-16 14:52:27', 1, '11365480442010071900161159m111', '<ru>Не полностью</ru><en>не полностью.</en>', 4, '', ''),
('11365480442010101812124535w111', 'Y', 'root', 'bestmoments', '2010-10-18 12:12:45', '2010-10-18 12:12:45', 1, '11365480442010101812123259x111', '<ru>Да</ru><en>Да</en>', 2, '', ''),
('11365480442010101812125773c111', 'N', 'root', 'bestmoments', '2010-10-18 12:12:57', '2010-10-18 12:12:57', 1, '11365480442010101812123259x111', '<ru>Нет</ru><en>Нет</en>', 4, '', ''),
('11365480442010120103260284r111', '3', 'root', 'bestmoments', '2010-12-01 03:26:02', '2010-12-01 03:26:02', 1, '11365480442010120103255198c111', '<ru>3%</ru><en>3%</en>', 2, '', ''),
('11365480442010120103260797v111', '5', 'root', 'bestmoments', '2010-12-01 03:26:07', '2010-12-01 03:26:07', 1, '11365480442010120103255198c111', '<ru>5%</ru><en>5%</en>', 4, '', ''),
('11365480442010120103261756m111', '7', 'root', 'bestmoments', '2010-12-01 03:26:17', '2010-12-01 03:26:17', 1, '11365480442010120103255198c111', '<ru>7%</ru><en>7%</en>', 6, '', ''),
('1136548044201012010326329n1111', '10', 'root', 'bestmoments', '2010-12-01 03:26:32', '2010-12-01 03:26:32', 1, '11365480442010120103255198c111', '<ru>10%</ru><en>10%</en>', 8, '', ''),
('11365480442010120103264652h111', '15', 'root', 'bestmoments', '2010-12-01 03:26:46', '2010-12-01 03:26:46', 1, '11365480442010120103255198c111', '<ru>15%</ru><en>15%</en>', 10, '', ''),
('11365480442010120103265625x111', '20', 'root', 'bestmoments', '2010-12-01 03:26:56', '2010-12-01 03:26:56', 1, '11365480442010120103255198c111', '<ru>20%</ru><en>20%</en>', 12, '', ''),
('11365480442011052517413993f111', '1', 'root', 'rai', '2011-05-25 17:41:39', '2011-05-25 17:41:39', 1, '11365480442011052517413210c111', '<ru>1</ru><en>1</en>', 2, '', ''),
('11365480442011052517414162i111', '2', 'root', 'rai', '2011-05-25 17:41:41', '2011-05-25 17:41:41', 1, '11365480442011052517413210c111', '<ru>2</ru><en>2</en>', 4, '', ''),
('11365480442011052517414581n111', '3', 'root', 'rai', '2011-05-25 17:41:45', '2011-05-25 17:41:45', 1, '11365480442011052517413210c111', '<ru>3</ru><en>3</en>', 6, '', ''),
('11365480442011052517415013b111', '4', 'root', 'rai', '2011-05-25 17:41:50', '2011-05-25 17:41:50', 1, '11365480442011052517413210c111', '<ru>4</ru><en>4</en>', 8, '', ''),
('11365480442011052517420022c111', '5', 'root', 'rai', '2011-05-25 17:42:00', '2011-05-25 17:42:00', 1, '11365480442011052517413210c111', '<ru>5</ru><en>5</en>', 10, '', ''),
('11365480442011052517421181w111', '6', 'root', 'rai', '2011-05-25 17:42:11', '2011-05-25 17:42:11', 1, '11365480442011052517413210c111', '<ru>5 Deluxe</ru><en>5 Deluxe</en>', 12, '', ''),
('11365480442011061123495144i111', '1', 'root', 'rai', '2011-06-11 23:49:51', '2011-06-11 23:49:51', 1, '11365480442011061123493641v111', '<ru>Новый</ru><en>Новый</en>', 2, '', ''),
('1136548044201106112350019z1111', '2', 'root', 'rai', '2011-06-11 23:50:01', '2011-06-11 23:50:01', 1, '11365480442011061123493641v111', '<ru>В обработке</ru><en>В обработке</en>', 4, '', ''),
('11365480442011061123503188w111', '3', 'root', 'rai', '2011-06-11 23:50:31', '2011-06-11 23:50:31', 1, '11365480442011061123493641v111', '<ru>Обработан</ru><en>Обработан</en>', 6, '', ''),
('11365480442011061123504036d111', '4', 'root', 'rai', '2011-06-11 23:50:40', '2011-06-11 23:50:40', 1, '11365480442011061123493641v111', '<ru>Отменен</ru><en>Отменен</en>', 8, '', ''),
('1136548044201112241434110u1111', 'almira', 'root', 'ksport', '2011-12-24 14:34:11', '2011-12-24 14:34:11', 1, '11365480442007100323430210j111', '<ru>Алмира груп</ru><en>Алмира груп</en>', 4, '', ''),
('11365480442012050515225934b111', 'UAH', 'root', 'ksport', '2012-05-05 15:22:59', '2012-05-05 15:22:59', 1, '11365480442006050103522987r111', '<ru>грн</ru><en>грн</en>', 2, '', ''),
('11365480442012071709202969o111', 'lemberg', 'root', 'ksport', '2012-07-17 09:20:29', '2012-07-17 09:20:29', 1, '11365480442007100323430210j111', '<ru>lembergcoach</ru><en>lembergcoach</en>', 2, '', ''),
('11365480442012101117474644l111', '12', 'root', 'ksport', '2012-10-11 17:47:46', '2012-10-11 17:47:46', 1, '11365480442012101117472373h111', '<ru>Lemberg 12 m</ru><en>Lemberg 12 m</en>', 4, '', ''),
('11365480442012101117475785g111', '10', 'root', 'ksport', '2012-10-11 17:47:57', '2012-10-11 17:47:57', 1, '11365480442012101117472373h111', '<ru>Lemberg 10 m</ru><en>Lemberg 10 m</en>', 2, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `id` int(30) unsigned NOT NULL AUTO_INCREMENT,
  `hidden` int(2) NOT NULL DEFAULT '0',
  `inMenu` int(2) NOT NULL DEFAULT '0',
  `alias` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OwnerID` int(100) DEFAULT NULL,
  `UserID` int(100) DEFAULT NULL,
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeSaved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `languages` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parentID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `groupID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `layout` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `box` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `boxStyle` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `accessGroups` text COLLATE utf8_bin,
  `arguments` text COLLATE utf8_bin,
  `link` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `target` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `name` text COLLATE utf8_bin,
  `title` text COLLATE utf8_bin,
  `description` text COLLATE utf8_bin,
  `keywords` text COLLATE utf8_bin,
  `position` int(11) DEFAULT NULL,
  `introContent` text COLLATE utf8_bin NOT NULL,
  `content` longtext COLLATE utf8_bin NOT NULL,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `viewOptions` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `controller` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'home',
  `action` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'static',
  `view` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'index',
  `url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '/',
  `rout` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `homepage` int(2) NOT NULL DEFAULT '0',
  `styleMenu` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `OwnerID` (`OwnerID`),
  KEY `UserID` (`UserID`),
  KEY `parentID` (`parentID`),
  KEY `groupID` (`groupID`),
  KEY `layout` (`layout`),
  KEY `position` (`position`),
  KEY `languages` (`languages`),
  KEY `timeCreated` (`timeCreated`),
  KEY `timeSaved` (`timeSaved`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=54 ;

--
-- Дамп данных таблицы `section`
--

INSERT INTO `section` (`id`, `hidden`, `inMenu`, `alias`, `OwnerID`, `UserID`, `timeCreated`, `timeSaved`, `type`, `languages`, `parentID`, `groupID`, `layout`, `box`, `boxStyle`, `accessGroups`, `arguments`, `link`, `target`, `name`, `title`, `description`, `keywords`, `position`, `introContent`, `content`, `clicks`, `viewOptions`, `controller`, `action`, `view`, `url`, `rout`, `homepage`, `styleMenu`) VALUES
(1, 0, 0, 'home', 1, 1, '0000-00-00 00:00:00', '2014-08-05 10:33:10', 'admin', '', '0', '1', '', '', '', NULL, NULL, NULL, NULL, 'home', NULL, NULL, NULL, NULL, '', '', 0, '', 'home', 'index', '', '', '', 0, NULL),
(2, 0, 0, 'login', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 'login', NULL, NULL, NULL, NULL, '', '', 0, '', 'home', 'login', '', '', '', 0, NULL),
(10, 0, 0, 'owner', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 'owner', NULL, NULL, NULL, NULL, '', '', 0, '', 'owner', 'index', '', 'owner', '', 0, NULL),
(11, 0, 1, 'manager', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', '', '10', '', '', '', '', NULL, NULL, NULL, NULL, 'Owner manager (Edit/Add)', NULL, NULL, NULL, NULL, '', '', 0, '', 'owner', 'manager', '', 'owner/manager', '', 0, NULL),
(12, 0, 0, 'section', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 'Section', NULL, NULL, NULL, NULL, '', '', 0, '', 'section', 'index', '', 'section', '', 0, NULL),
(13, 0, 1, 'manager', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', '', '12', '', '', '', '', NULL, NULL, NULL, NULL, 'Sections manager (Edit/Add)', NULL, NULL, NULL, NULL, '', '', 0, '', 'section', 'manager', '', 'section/manager', '', 0, NULL),
(15, 0, 1, 'delete', 1, 1, '2014-01-28 15:55:43', '0000-00-00 00:00:00', 'admin', '', '10', '', '', '', '', NULL, NULL, NULL, NULL, 'Delete', NULL, NULL, NULL, NULL, '', '', 0, '', 'owner', 'delete', 'index', 'owner/delete', NULL, 0, NULL),
(16, 0, 1, 'delete', 1, 1, '2014-01-28 16:23:23', '0000-00-00 00:00:00', 'admin', '', '12', '', '', '', '', NULL, NULL, NULL, NULL, 'Delete', NULL, NULL, NULL, NULL, '', '', 0, '', 'section', 'delete', 'index', 'section/delete', NULL, 0, NULL),
(21, 0, 0, 'cats', 1, 1, '2014-01-31 17:28:20', '0000-00-00 00:00:00', 'admin', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 'Cats', NULL, NULL, NULL, NULL, '', '', 0, '', 'cats', 'index', 'index', 'cats', NULL, 0, NULL),
(22, 0, 1, 'manager', 1, 1, '2014-01-31 18:04:42', '0000-00-00 00:00:00', 'admin', '', '21', '', '', '', '', NULL, NULL, NULL, NULL, 'Cats manager (Edit/Add)', NULL, NULL, NULL, NULL, '', '', 0, '', 'cats', 'manager', 'index', 'cats/manager', NULL, 0, NULL),
(25, 0, 1, 'delete', 1, 1, '2014-02-01 18:29:10', '0000-00-00 00:00:00', 'admin', '', '21', '', '', '', '', NULL, NULL, NULL, NULL, 'Delete', NULL, NULL, NULL, NULL, '', '', 0, '', 'cats', 'delete', 'index', 'cats/delete', NULL, 0, NULL),
(26, 0, 0, 'post', 1, 1, '2014-02-01 18:42:28', '0000-00-00 00:00:00', 'admin', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 'Post', NULL, NULL, NULL, NULL, '', '', 0, '', 'post', 'index', 'index', 'post', NULL, 0, NULL),
(27, 0, 1, 'manager', 1, 1, '2014-02-01 18:47:11', '0000-00-00 00:00:00', 'admin', '', '26', '', '', '', '', NULL, NULL, NULL, NULL, 'Post manager (Edit/Add)', NULL, NULL, NULL, NULL, '', '', 0, '', 'post', 'manager', 'index', 'post/manager', NULL, 0, NULL),
(29, 0, 1, 'delete', 1, 1, '2014-02-01 18:52:30', '0000-00-00 00:00:00', 'admin', '', '26', '', '', '', '', NULL, NULL, NULL, NULL, 'Delete', NULL, NULL, NULL, NULL, '', '', 0, '', 'post', 'delete', 'index', 'post/delete', NULL, 0, NULL),
(30, 0, 0, 'users', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 'Users', 'Users', NULL, NULL, NULL, '', '', 0, '', 'users', 'index', 'index', 'users', NULL, 0, NULL),
(33, 0, 1, 'post', 1, 1, '2014-02-21 17:44:00', '2014-02-27 10:31:20', 'front', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 'post', NULL, NULL, NULL, NULL, '', '', 0, '', 'post', 'index', 'index', 'post', NULL, 0, NULL),
(34, 0, 1, 'manager', 1, 1, '2014-02-25 15:40:49', '0000-00-00 00:00:00', 'admin', '', '30', '', '', '', '', NULL, NULL, NULL, NULL, 'User manager (Edit/Add)', NULL, NULL, NULL, NULL, '', '', 0, '', 'users', 'manager', 'index', 'users/manager', NULL, 0, NULL),
(35, 1, 0, 'user', 1, 1, '2014-02-27 09:32:52', '2015-05-16 08:40:47', 'front', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 'User', NULL, NULL, NULL, NULL, '', '', 0, '', 'user', 'index', 'index', 'user', NULL, 0, NULL),
(36, 0, 0, 'sgroup', 1, 1, '2014-03-11 19:13:20', '0000-00-00 00:00:00', 'admin', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 'Меню', NULL, NULL, NULL, NULL, '', '', 0, '', 'sgroup', 'index', 'index', 'sgroup', NULL, 0, NULL),
(37, 0, 1, 'manager', 1, 1, '2014-03-11 20:11:33', '2014-03-11 23:15:05', 'admin', '', '36', '', '', '', '', NULL, NULL, NULL, NULL, 'Manager Section Group', NULL, NULL, NULL, NULL, '', '', 0, '', 'sgroup', 'manager', 'index', 'sgroup/manager', NULL, 0, NULL),
(38, 0, 1, 'delete', 1, 1, '2014-03-11 20:51:27', '2014-03-11 23:14:48', 'admin', '', '36', '', '', '', '', NULL, NULL, NULL, NULL, 'Delete', NULL, NULL, NULL, NULL, '', '', 0, '', 'sgroup', 'delete', 'index', 'sgroup/delete', NULL, 0, NULL),
(39, 0, 0, 'usergroup', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', '', '30', '', '', '', '', NULL, NULL, NULL, NULL, 'User Group', 'User Group', 'User Group', 'User Group', NULL, 'User Group', 'User Group', 0, '', 'usergroup', 'listing', 'index', 'usergroup', NULL, 0, NULL),
(40, 0, 1, 'manager', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', '', '30', '', '', '', '', NULL, NULL, NULL, NULL, 'User Group Manager', NULL, NULL, NULL, NULL, '', '', 0, '', 'usergroup', 'manager', 'index', 'usergroup/manager', NULL, 0, NULL),
(41, 0, 1, 'delete', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '30', '', '', '', '', NULL, NULL, NULL, NULL, 'User Group Delete', NULL, NULL, NULL, NULL, '', '', 0, '', 'usergroup', 'delete', 'index', 'usergroup/delete', NULL, 0, NULL),
(42, 1, 1, 'ajax', 1, 1, '2014-08-01 22:15:01', '2014-08-04 16:24:16', 'admin', '', '12', '', '', '', '', NULL, NULL, NULL, NULL, 'ajax', NULL, NULL, NULL, NULL, '', '', 0, '', 'section', 'ajax', 'index', 'section/ajax', NULL, 0, NULL),
(46, 0, 1, 'ajax', 1, 1, '2014-08-06 16:01:15', '2014-08-06 16:02:02', 'admin', '', '12', '', '', '', '', NULL, NULL, NULL, NULL, 'Section Ajax', NULL, NULL, NULL, NULL, '<p>Section Ajax</p>', '<p>Section Ajax</p>', 0, '', 'section', 'ajax', 'index', 'section/ajax', NULL, 0, NULL),
(47, 0, 0, 'products', 1, 1, '2015-05-15 09:34:00', '0000-00-00 00:00:00', 'admin', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 'products', NULL, NULL, NULL, NULL, 'products', 'products', 0, '', 'products', 'list', 'index', 'products', NULL, 0, NULL),
(48, 0, 0, 'manager', 1, 1, '2015-05-15 09:59:27', '0000-00-00 00:00:00', 'admin', '', '47', '', '', '', '', NULL, NULL, NULL, NULL, 'Manager (Add/Edit)', NULL, NULL, NULL, NULL, 'Manager (Add/Edit)', 'Manager (Add/Edit)', 0, '', 'products', 'manager', 'index', 'products/manager', NULL, 0, NULL),
(49, 0, 0, 'category', 1, 1, '2015-05-15 10:00:15', '0000-00-00 00:00:00', 'admin', '', '47', '', '', '', '', NULL, NULL, NULL, NULL, 'category', NULL, NULL, NULL, NULL, 'category', 'category', 0, '', 'productsCategory', 'list', 'index', 'products/categories', NULL, 0, NULL),
(50, 0, 0, 'manager', 1, 1, '2015-05-15 10:01:49', '0000-00-00 00:00:00', 'admin', '', '47', '', '', '', '', NULL, NULL, NULL, NULL, 'manager', NULL, NULL, NULL, NULL, 'manager', 'manager', 0, '', 'productsCategory', 'manager', 'index', 'products/categories/manager', NULL, 0, NULL),
(51, 0, 1, 'videonablyudenie', 1, 1, '2015-05-16 08:43:59', '0000-00-00 00:00:00', 'front', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 'Видеонаблюдение', NULL, NULL, NULL, NULL, 'videonablyudenie', 'videonablyudenie', 0, '', 'home', 'content', 'index', 'videonablyudenie', NULL, 0, NULL),
(52, 0, 1, 'about', 1, 1, '2015-05-16 09:58:42', '0000-00-00 00:00:00', 'front', '', '51', '', '', '', '', NULL, NULL, NULL, NULL, 'About', NULL, NULL, NULL, NULL, 'About', 'About', 0, '', 'home', 'content', 'index', 'videonablyudenie/about', NULL, 0, NULL),
(53, 0, 1, 'cat1', 1, 1, '2015-05-16 18:57:53', '0000-00-00 00:00:00', 'front', '', '51', '', '', '', '', NULL, NULL, NULL, NULL, 'cat1', NULL, NULL, NULL, NULL, 'cat1', 'cat1', 0, '', 'shop', 'index', 'index', 'videonablyudenie/cat1', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sectiongroup`
--

CREATE TABLE IF NOT EXISTS `sectiongroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OwnerID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `UserID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeSaved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` text COLLATE utf8_bin,
  `accessGroups` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  `module` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `viewOptions` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `code` (`code`),
  KEY `OwnerID` (`OwnerID`),
  KEY `UserID` (`UserID`),
  KEY `accessGroups` (`accessGroups`),
  KEY `position` (`position`),
  KEY `viewOptions` (`viewOptions`),
  KEY `hidden` (`hidden`),
  KEY `timeCreated` (`timeCreated`,`timeSaved`),
  FULLTEXT KEY `viewOptions_2` (`viewOptions`),
  FULLTEXT KEY `accessGroups_2` (`accessGroups`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `sectiongroup`
--

INSERT INTO `sectiongroup` (`id`, `code`, `OwnerID`, `UserID`, `hidden`, `timeCreated`, `timeSaved`, `name`, `accessGroups`, `type`, `position`, `module`, `viewOptions`) VALUES
(1, 'main', '', '1', 0, '0000-00-00 00:00:00', '2008-04-30 13:36:32', '<en>Left menu</en><fr>Left menu</fr>', '|root|admin|content|owner|', 'layout', 10, 'core', ''),
(2, 'top', '', '1', 0, '0000-00-00 00:00:00', '2010-06-20 21:00:52', '<ua>Top menu</ua><ru>Top menu</ru><us>Top menu</us><en>Top menu</en>', '|root|admin|content|owner|', 'menu', 8, 'core', '|allowners|virtual|'),
(3, 'bottom', '', '1', 0, '0000-00-00 00:00:00', '2010-06-20 21:04:59', '<ua>Bottom menu</ua><ru>Bottom menu</ru><us>Bottom menu</us><en>Bottom menu</en>', '|root|admin|content|owner|', 'menu', 16, 'core', '|allowners|');

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('167b76e1e264e27a00a8bf6b5b843d4a', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:40.0) Gecko/20100101 Firefox/40.0', 1442570564, 'a:9:{s:10:"session_id";s:32:"167b76e1e264e27a00a8bf6b5b843d4a";s:10:"ip_address";s:9:"127.0.0.1";s:10:"user_agent";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:40.0) Gecko/20100101 Firefox/40.0";s:13:"last_activity";i:1442570564;s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"login";s:4:"root";s:5:"email";s:14:"root@gmail.com";s:8:"validate";b:1;}'),
('6b1a84c329f1b18780816a9997b3cc65', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:40.0) Gecko/20100101 Firefox/40.0', 1439904481, 'a:9:{s:10:"session_id";s:32:"6b1a84c329f1b18780816a9997b3cc65";s:10:"ip_address";s:9:"127.0.0.1";s:10:"user_agent";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:40.0) Gecko/20100101 Firefox/40.0";s:13:"last_activity";i:1439904481;s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"login";s:4:"root";s:5:"email";s:14:"root@gmail.com";s:8:"validate";b:1;}');

-- --------------------------------------------------------

--
-- Структура таблицы `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OwnerID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `UserID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeSaved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `module` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `variableName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `value` text COLLATE utf8_bin,
  `name` text COLLATE utf8_bin,
  `valueType` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT 'text',
  `valueOptions` text COLLATE utf8_bin NOT NULL,
  `type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT 'editable',
  `reference` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_bin NOT NULL,
  `sectionID` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `boxID` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `OwnerID` (`OwnerID`),
  KEY `UserID` (`UserID`),
  KEY `module` (`module`),
  KEY `variableName` (`variableName`),
  KEY `valueType` (`valueType`),
  KEY `type` (`type`),
  KEY `position` (`position`),
  KEY `timeCreated` (`timeCreated`,`timeSaved`),
  KEY `sectionID` (`sectionID`,`boxID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `setting`
--

INSERT INTO `setting` (`id`, `OwnerID`, `UserID`, `timeCreated`, `timeSaved`, `module`, `group`, `variableName`, `value`, `name`, `valueType`, `valueOptions`, `type`, `reference`, `position`, `description`, `sectionID`, `boxID`) VALUES
('1', 'root', '1', '0000-00-00 00:00:00', '2010-07-04 21:43:18', '', '1', 'SiteName', '<ru>Best Moments</ru><en>Best Moments</en>', '<en>Website name</en><fr>Website name</fr>', 'text', '', 'editable', '', 2, '<en>Web site name used in titles and emails</en><fr>Web site name used in titles and emails</fr>', '', ''),
('2', 'root', '11365480442006050104523652y111', '0000-00-00 00:00:00', '2010-07-04 21:43:18', '', '1', 'SiteTitle', '<ru>Best Moments</ru><en>Best Moments</en>', '<en>Website title</en><fr>Website title</fr>', 'text', '', 'editable', '', 16, '<en>Title used for search engines</en><fr>Title used for search engines</fr>', '', ''),
('11365480442007100616255168o111', 'root', 'root', '2007-10-06 16:25:51', '2010-07-04 21:43:18', '', '1', 'SettingAdCode1', '', '<en>Ad code 1</en><ru>Ad code 1</ru>', 'text', '', 'editable', '', 64, '', '', ''),
('11365480442006090916544653q111', 'root', 'root', '2006-09-09 16:54:46', '2010-07-04 21:43:18', '', '1', 'lang', 'ru', '<en>Default language</en><ru>Default language</ru>', 'input', '', 'editable', '', 54, '', '', ''),
('97', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'ColumnHeaderActivation', 'N', '<en>Are columns headers and footers active?</en><fr>Are columns headers and footers active?</fr>', 'dropdown', '', 'editable', 'YesNo', 14, '', '', ''),
('7', 'root', '11365480442006050104523652y111', '0000-00-00 00:00:00', '2009-09-17 01:41:24', '', '7', 'currency', 'EUR &euro;', '<fr>Euro</fr><en>Euro</en>', 'money', '', 'editable', '', 1, '<fr>Euro</fr><en>Euro</en>', '', ''),
('8', 'root', '11365480442006050104523652y111', '0000-00-00 00:00:00', '2009-12-28 13:58:46', '', '7', 'DefaultStyle', 'style1', '<fr>Default style</fr><en>Default style</en>', 'dropdown', 'style1|Style 1;\r\nstyle2|Style 2;', 'editable', '', 29, '', '', ''),
('9', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column1Width', '200', '<fr>Column 1 width</fr>', 'input', '', 'editable', '', 24, '', '', ''),
('10', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column2Width', '574', '<fr>Column 2 width</fr>', 'input', '', 'editable', '', 26, '', '', ''),
('11', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column3Width', '200', '<fr>Column 3 width</fr>', 'input', '', 'editable', '', 28, '', '', ''),
('12', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Gap1Width', '10', '<fr>Gap 1 width</fr>', 'input', '', 'editable', '', 30, '', '', ''),
('13', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Gap2Width', '10', '<fr>Gap 2 width</fr>', 'input', '', 'editable', '', 32, '', '', ''),
('14', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.MainTableWidth', '994', '<fr>Main table width</fr>', 'input', '', 'editable', '', 34, '', '', ''),
('15', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.PageColor', '#FFFFFF', '<fr>Page color</fr>', 'color', '', 'editable', '', 40, '', '', ''),
('16', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.PageBackground', '', '<fr>Page background</fr>', 'image', '', 'editable', '', 42, '', '', ''),
('17', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TitleFont', 'Verdana', '<fr>Title Font Family</fr>', 'dropdown', '', 'editable', 'fonts', 62, '', '', ''),
('22', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.SubTitleFont', 'Verdana', '<fr>Subtitle font family</fr>', 'dropdown', '', 'editable', 'fonts', 72, '', '', ''),
('18', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TitleColor', '#000000', '<fr>Title color</fr>', 'color', '', 'editable', '', 64, '', '', ''),
('19', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TitleSize', '14', '<fr>Title size</fr>', 'dropdown', '', 'editable', 'fontsizes', 66, '', '', ''),
('20', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TitleStyle', 'normal', '<fr>Title style</fr>', 'dropdown', '', 'editable', 'fontstyles', 68, '', '', ''),
('21', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TitleWeight', 'bold', '<fr>Title weight</fr>', 'dropdown', '', 'editable', 'fontweights', 70, '', '', ''),
('23', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.LinkColor', '#006699', '<fr>Link color</fr>', 'color', '', 'editable', '', 54, '', '', ''),
('24', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.LinkHoverColor', '#CC0000', '<fr>Link with mouse over color</fr>', 'color', '', 'editable', '', 58, '', '', ''),
('25', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.SubTitleColor', '#069', '<fr>Subtitle color</fr>', 'color', '', 'editable', '', 74, '', '', ''),
('26', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.SubTitleSize', '12', '<fr>Subtitle size</fr>', 'dropdown', '', 'editable', 'fontsizes', 76, '', '', ''),
('27', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.SubTitleStyle', 'normal', '<fr>Subtitle style</fr>', 'dropdown', '', 'editable', 'fontstyles', 78, '', '', ''),
('28', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.SubTitleWeight', 'normal', '<fr>Subtitle weight</fr>', 'dropdown', '', 'editable', 'fontweights', 80, '', '', ''),
('29', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TextFont', 'Verdana', '<fr>Text font family</fr>', 'dropdown', '', 'editable', 'fonts', 44, '', '', ''),
('30', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TextColor', '#000000', '<fr>Text color</fr>', 'color', '', 'editable', '', 46, '', '', ''),
('31', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TextSize', '11', '<fr>Text size</fr>', 'dropdown', '', 'editable', 'fontsizes', 48, '', '', ''),
('32', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TextStyle', 'normal', '<fr>Text style</fr>', 'dropdown', '', 'editable', 'fontstyles', 50, '', '', ''),
('33', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TextWeight', 'normal', '<fr>Text weight</fr>', 'dropdown', '', 'editable', 'fontweights', 52, '', '', ''),
('34', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.LinkDecoration', 'none', '<fr>Link decoration</fr>', 'dropdown', '', 'editable', 'fontdecorations', 56, '', '', ''),
('35', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.LinkHoverDecoration', 'none', '<fr>Mouse over link decoration</fr>', 'dropdown', '', 'editable', 'fontdecorations', 60, '', '', ''),
('36', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.BoxHeaderFont', 'Verdana', '<fr>Box header font family</fr>', 'dropdown', '', 'editable', 'fonts', 86, '', '', ''),
('37', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.BoxHeaderColor', '#FFFFFF', '<fr>Box header text color</fr>', 'color', '', 'editable', '', 88, '', '', ''),
('38', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.BoxHeaderSize', '13', '<fr>Box header text size</fr>', 'dropdown', '', 'editable', 'fontsizes', 90, '', '', ''),
('39', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.BoxHeaderStyle', 'normal', '<fr>Box header text style</fr>', 'dropdown', '', 'editable', 'fontstyles', 92, '', '', ''),
('40', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.BoxHeaderWeight', 'bold', '<fr>Box header text weight</fr>', 'dropdown', '', 'editable', 'fontweights', 94, '', '', ''),
('41', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column1HeaderImage', '', '<fr>Column1 Header Image</fr>', 'image', '', 'editable', '', 102, '', '', ''),
('43', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column2HeaderImage', '', '<fr>Column2 Header Image</fr>', 'image', '', 'editable', '', 104, '', '', ''),
('46', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column3HeaderImage', '', '<fr>Column3 Header Image</fr>', 'image', '', 'editable', '', 106, '', '', ''),
('47', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column1FooterImage', '', '<fr>Column1 Footer Image</fr>', 'image', '', 'editable', '', 108, '', '', ''),
('48', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column2FooterImage', '', '<fr>Column2FooterImage</fr>', 'image', '', 'editable', '', 110, '', '', ''),
('49', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column3FooterImage', '', '<fr>Column3FooterImage</fr>', 'image', '', 'editable', '', 112, '', '', ''),
('64', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.ColumnBorderColor', '#505050', '<fr>Columns Border Color</fr>', 'color', '', 'editable', '', 100, '', '', ''),
('51', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.PageFooterHTML', '', '<fr>Page Footer HTML</fr>', 'text', '', 'editable', '', 6, '', '', ''),
('52', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.PageHeaderImage', NULL, '<fr>Page Header Image</fr>', 'image', '', 'editable', '', 4, '', '', ''),
('53', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.PageFooterImage', NULL, '<fr>Page Footer Image</fr>', 'image', '', 'editable', '', 8, '', '', ''),
('54', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column1HeaderColor', '#E0E0E0', '<fr>Column1 Header Color</fr>', 'color', '', 'editable', '', 114, '', '', ''),
('55', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column2HeaderColor', '#E0E0E0', '<fr>Column2 Header Color</fr>', 'color', '', 'editable', '', 116, '', '', ''),
('56', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column3HeaderColor', '#E0E0E0', '<fr>Column3 Header Color</fr>', 'color', '', 'editable', '', 118, '', '', ''),
('57', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column1FooterColor', '#E0E0E0', '<fr>Column1 Footer Color</fr>', 'color', '', 'editable', '', 120, '', '', ''),
('58', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column2FooterColor', '#E0E0E0', '<fr>Column2 Footer Color</fr>', 'color', '', 'editable', '', 122, '', '', ''),
('59', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column3FooterColor', '#E0E0E0', '<fr>Column3 Footer Color</fr>', 'color', '', 'editable', '', 124, '', '', ''),
('60', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.MainTableBackgroundImage', '', '<fr>Main Table Background Image</fr>', 'image', '', 'editable', '', 36, '', '', ''),
('61', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.MainTableBackgroundColor', '#FFFFFF', '<fr>Main Table Background Color</fr>', 'color', '', 'editable', '', 38, '', '', ''),
('63', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.PageHeaderHTML', '', '<fr>Page Header HTML</fr>', 'text', '', 'editable', '', 2, '', '', ''),
('93', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'NoImageIcon', 'root/images/settings/20060421182203-noimage.gif', '<en>No image icon</en><fr>No image icon</fr>', 'image', '', 'editable', '', 22, '', '', ''),
('94', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'BiddingOfferFields', '| |bids|minbid|maxbid|quickprice|expiration|', '<en>Bidding offer fields activation</en><fr>Bidding offer fields activation</fr>', 'checkboxes', 'bids|Number of proposals;\r\nminbid|Minimum amount proposed;\r\nmaxbid|Maximum amount proposed;\r\nquickprice|Quicksale price;\r\nexpiration|Expiration date/time;', 'editable', '', 2, '', '', ''),
('95', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '9', 'SessionUseLoginForRegistration', 'Y', '<en>Use login for registration?</en><fr>Use login for registration?</fr>', 'dropdown', '', 'editable', 'YesNo', 2, '', '', ''),
('96', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'RandomFileNameMode', 'N', '<en>User random filename for uploaded files?</en><fr>User random filename for uploaded files?</fr>', 'dropdown', '', 'editable', 'YesNo', 24, '', '', ''),
('88', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:34:59', '', '3', 'MailHost', '', '<en>SMTP Server host</en>', 'input', '', 'editable', '', 6, '', '', ''),
('89', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:34:59', '', '3', 'MailUser', '', '<en>SMTP server user</en>', 'input', '', 'editable', '', 8, '', '', ''),
('90', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:34:59', '', '3', 'MailPassword', '', '<en>SMTP server password</en>', 'input', '', 'editable', '', 10, '', '', ''),
('65', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column1BackgroundColor', '#FFFFFF', '<fr>Column 1 background color</fr>', 'color', '', 'editable', '', 126, '', '', ''),
('66', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column1BackgroundImage', NULL, '<fr>Column 1 background image</fr>', 'image', '', 'editable', '', 128, '', '', ''),
('67', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column2BackgroundColor', '#FFFFFF', '<fr>Column 2 background color</fr>', 'color', '', 'editable', '', 130, '', '', ''),
('68', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column2BackgroundImage', NULL, '<fr>Column 2 background image</fr>', 'image', '', 'editable', '', 132, '', '', ''),
('69', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column3BackgroundColor', '#FFFFFF', '<fr>Column 3 background color</fr>', 'color', '', 'editable', '', 134, '', '', ''),
('70', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column3BackgroundImage', NULL, '<fr>Column 3 background image</fr>', 'image', '', 'editable', '', 136, '', '', ''),
('71', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.BoxHeaderBackgroundColor', '#006699', '<fr>Box header background color</fr>', 'color', '', 'editable', '', 96, '', '', ''),
('72', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.BoxHeaderBackgroundImage', NULL, '<fr>Box header background image</fr>', 'image', '', 'editable', '', 98, '', '', ''),
('73', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'UseImageResize', 'Y', '<fr>Use image resize?</fr>', 'dropdown', '', 'editable', 'YesNo', 4, '', '', ''),
('74', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'UseImagePreview', 'Y', '<fr>Use image preview?</fr>', 'dropdown', '', 'editable', 'YesNo', 6, '', '', ''),
('75', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'UseImageIcon', 'Y', '<fr>Use image icon?</fr>', 'dropdown', '', 'editable', 'YesNo', 8, '', '', ''),
('76', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'ImageWidthLimit', '1200', '<fr>Full Image Width Limit</fr>', 'input', '', 'editable', '', 10, '', '', ''),
('77', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'ImageHeightLimit', '1200', '<fr>Full Image Height Limit</fr>', 'input', '', 'editable', '', 12, '', '', ''),
('78', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'ImageIconWidthLimit', '170', '<fr>Icon image width limit</fr>', 'input', '', 'editable', '', 18, '', '', ''),
('79', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'ImageIconHeightLimit', '130', '<fr>Icon image height limit</fr>', 'input', '', 'editable', '', 20, '', '', ''),
('80', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'ImagePreviwWidthLimit', '480', '<fr>Preview image width limit</fr>', 'input', '', 'editable', '', 14, '', '', ''),
('81', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'ImagePreviewHeightLimit', '400', '<fr>Preview image height limit</fr>', 'input', '', 'editable', '', 16, '', '', ''),
('82', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:34:59', '', '3', 'MailEncoding', 'utf-8', '<fr>Emails encoding</fr>', 'input', '', 'editable', '', 2, '', '', ''),
('83', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:34:59', '', '3', 'MailMode', 'mail', '<fr>Mailing system mode</fr>', 'dropdown', 'mail|Mail function;\r\nsmtp|SMTP server;\r\nlocal|Testing mode;', 'editable', '', 4, '', '', ''),
('84', 'root', '11365480442006050104523652y111', '0000-00-00 00:00:00', '2010-07-04 21:43:18', '', '1', 'SiteMail', 'jjboun@gmail.com', '<fr>Website main email address</fr>', 'input', '', 'editable', '', 42, '<fr>Is used in from field for all emails sent by system</fr>', '', ''),
('91', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:35:00', '', '3', 'SMSRemindStatus', 'Y', '<en>SMS reminds activation status</en>', 'dropdown', '', 'editable', 'YesNo', 12, '', '', ''),
('92', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:35:00', '', '3', 'SMSRemindEmail', '380677743999@sms.kyivstar.net', '<en>Email address of SMS reminder</en>', 'input', '', 'editable', '', 14, '', '', ''),
('85', 'root', 'root', '0000-00-00 00:00:00', '2010-07-04 21:29:52', '', '2', 'ItemsPerPage', '10', '<en>Items per page</en><fr>Items per page</fr>', 'input', '', 'editable', '', 6, '<en>Number of items per page</en><fr>Number of items per page</fr>', '', ''),
('86', 'root', 'root', '0000-00-00 00:00:00', '2010-07-04 21:29:52', '', '2', 'PagesPerBar', '6', '<en>Pages per group</en><fr>Pages per group</fr>', 'input', '', 'editable', '', 8, '<en>Number of pages spliter per group</en><fr>Number of pages spliter per group</fr>', '', ''),
('87', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 13:58:46', '', '7', 'HTMLEditorMode', 'Y', '<en>HTML editor activation</en><fr>HTML editor activation</fr>', 'dropdown', 'Y|Yes;\r\nN|No;', 'editable', '', 2, '<en>HTML editor activation</en><fr>HTML editor activation</fr>', '', ''),
('103', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.SubTitleLineHeight', NULL, '<fr>Subtitle line height for forms</fr>', 'input', '', 'editable', '', 84, '', '', ''),
('105', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'ResourceCategoriesMode', 'one', '<fr>Categories mode</fr>', 'dropdown', 'multiple|Multiple categories per resource;\r\none|One category per resource;', 'editable', '', 8, '<fr>Posibility to link a resource to one ore to more categories</fr>', '', ''),
('104', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'ResourcesDefaultOrder', 'Resource.TimeCreated DESC', '<en>Default ordering</en><fr>Default ordering for resources</fr>', 'dropdown', 'Resource.ResourceAlias, Resource.ResourceID ASC| By Code/Name and ID ascendent;\r\nResource.ResourceID DESC|By ID descendent;\r\nResource.ResourceAlias ASC|By Code/Name ascendent;\r\nResource.TimeCreated DESC|By time descendent;\r\nResource.ResourcePosition ASC|By position ascendent;\r\n', 'editable', '', 4, '', '', ''),
('102', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.SubTitleLineBackground', NULL, '<fr>Subtitle background for forms</fr>', 'color', '', 'editable', '', 82, '', '', ''),
('100', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '13', 'style1.LeftBoxStyle1.BoxHTML', '<en><table width=&quot;100%&quot; cellspacing=&quot;1&quot; cellpadding=&quot;1&quot; border=&quot;1&quot; align=&quot;&quot;>\r\n    <tbody>\r\n        <tr style=&quot;color: rgb(255, 255, 255);&quot;>\r\n            <td bgcolor=&quot;#3300ff&quot; align=&quot;center&quot;>{title}</td>\r\n        </tr>\r\n        <tr>\r\n            <td>{content}</td>\r\n        </tr>\r\n    </tbody>\r\n</table></en><fr><table width=&quot;100%&quot; cellspacing=&quot;1&quot; cellpadding=&quot;1&quot; border=&quot;1&quot; align=&quot;&quot;>\r\n    <tbody>\r\n        <tr style=&quot;color: rgb(255, 255, 255);&quot;>\r\n            <td bgcolor=&quot;#3300ff&quot; align=&quot;center&quot;>{title}</td>\r\n        </tr>\r\n        <tr>\r\n            <td>{content}</td>\r\n        </tr>\r\n    </tbody>\r\n</table></fr>', '<en>Box HTML</en><fr>Box HTML</fr>', 'text', '', 'editable', '', 1, '', '', ''),
('101', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '15', 'style1.CenterBoxStyle1.BoxHTML', '<en><table width=&quot;100%&quot; cellspacing=&quot;1&quot; cellpadding=&quot;1&quot; border=&quot;1&quot; align=&quot;&quot;>\r\n    <tbody>\r\n        <tr style=&quot;color: rgb(255, 255, 255);&quot;>\r\n            <td bgcolor=&quot;#3300ff&quot; align=&quot;center&quot;>{title}</td>\r\n        </tr>\r\n        <tr>\r\n            <td>{content}</td>\r\n        </tr>\r\n    </tbody>\r\n</table></en><fr><table width=&quot;100%&quot; cellspacing=&quot;1&quot; cellpadding=&quot;1&quot; border=&quot;1&quot; align=&quot;&quot;>\r\n    <tbody>\r\n        <tr style=&quot;color: rgb(255, 255, 255);&quot;>\r\n            <td bgcolor=&quot;#3300ff&quot; align=&quot;center&quot;>{title}</td>\r\n        </tr>\r\n        <tr>\r\n            <td>{content}</td>\r\n        </tr>\r\n    </tbody>\r\n</table></fr>', '<en>Box HTML</en><fr>Box HTML</fr>', 'text', '', 'editable', '', 1, '', '', ''),
('106', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'ResourceFeaturedPlacesMode', 'one', '<fr>Featured places mode</fr>', 'dropdown', 'multiple|Multiple featured place per resource;\r\none|One featured place per resource;', 'editable', '', 12, '<fr>Possibility to link a resource to one or more featured places</fr>', '', ''),
('107', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'ResourceCategoriesManagementModeAdmin', 'expandable', '<fr>Categories management mode in admin</fr>', 'dropdown', 'all|Full tree;\r\nexpandable|Expandable tree;', 'editable', '', 14, '<fr>Full tree or expandable mode for administration of categories</fr>', '', ''),
('108', 'root', 'root', '0000-00-00 00:00:00', '2006-04-16 07:11:02', '', '16', 'synchronizationServerRemote', 'http://www.', '<fr>Remote scynhronization server url</fr>', 'input', '', 'editable', '', 2, '', '', ''),
('109', 'root', '11365480442005122404190897z111', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'ResourceValidationMode', 'Y', '<fr>Is required resource validation by admin?</fr>', 'dropdown', '', 'editable', 'YesNo', 16, '', '', ''),
('110', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'ResourceCategoriesDefaultOrder', 'ResourceCategoryPosition', '<en>Categories default ordering</en><fr>Categories default ordering</fr>', 'dropdown', 'ResourceCategoryPosition|Category position;\r\nResourceCategoryAlias|Category name/code;\r\nResourceCategoryID|CategoryID;\r\nrandom|Random;', 'editable', '', 6, '', '', ''),
('111', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'ResourcesInSubcategoriesMode', 'Y', '<fr>Show resources in subcategories when a subcategory is seletced?</fr>', 'dropdown', '', 'editable', 'YesNo', 10, '', '', ''),
('122', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.DisableTopMenu', 'N', '<en>Disable top menu?</en>', 'dropdown', '', 'editable', 'YesNo', 16, '', '', ''),
('123', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.DisableBottomMenu', 'N', '<en>Disable bottom menu?</en>', 'dropdown', '', 'editable', 'YesNo', 18, '', '', ''),
('115', 'root', '11365480442006030318390276c111', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '1', 'SystemLicense', '100012', '<fr>License</fr>', 'input', '', 'editable', '', 12, '', '', ''),
('116', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'UseResourceCategories', 'Y', '<fr>Are categories active?</fr>', 'dropdown', 'N|No;\r\nY|Yes;', 'editable', '', 18, '<fr>Products can work with categories or categories as pages. Select Yes to use categories instead of pages.</fr>', '', ''),
('117', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.popupheight', '500', '<en>Popup height</en>', 'input', '', 'editable', '', 10, '', '', ''),
('118', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.popupwith', '700', '<en>Popup with</en>', 'input', '', 'editable', '', 12, '', '', ''),
('119', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 13:58:46', '', '7', 'ActivateAddLink', 'blocked', '<en>Activate Add Link</en><fr>Activate Add Link</fr>', 'dropdown', 'active|Active;blocked|Blocked;', 'editable', '', 15, '', '', ''),
('120', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.DisableRightColumn', 'N', '<en>Disable right column?</en>', 'dropdown', '', 'editable', 'YesNo', 20, '', '', ''),
('121', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.DisableLeftColumn', 'N', '<en>Disable left column?</en>', 'dropdown', '', 'editable', 'YesNo', 22, '', '', ''),
('124', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.InputFieldFontSize', '10', '<en>Textfield, textarea, drop down, buttons font size</en><fr>Textfield, textarea, drop down, buttons font size</fr>', 'dropdown', '', 'editable', 'fontsizes', 50, '', '', ''),
('125', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.InputFieldFontColor', '#006699', '<en>Textfield, textarea, drop down, buttons font color</en><fr>Textfield, textarea, drop down, buttons font color</fr>', 'color', '', 'editable', '', 52, '', '', ''),
('126', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.InputFieldBackgroundColor', '#FFFF99', '<en>Textfield, textarea, drop down, buttons background color</en><fr>Textfield, textarea, drop down, buttons background color</fr>', 'color', '', 'editable', '', 54, '', '', ''),
('127', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 13:58:46', '', '7', 'HTMLEditorWidth', '650', '<en>HTML editor width</en><fr>HTML editor width</fr>', 'input', '', 'editable', '', 4, '', '', ''),
('128', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 13:58:46', '', '7', 'HTMLEditorHeight', '400', '<en>HTML editor height</en><fr>HTML editor height</fr>', 'input', '', 'editable', '', 6, '', '', ''),
('129', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 13:58:46', '', '7', 'HTMLEditorButtons', 'Default', '<en>HTML editor buttons set</en><fr>HTML editor buttons set</fr>', 'dropdown', 'Basic|Basic;\r\nDefault|Default;\r\nNoForms|No Forms;\r\nAdvanced|Advanced;', 'editable', '', 8, '', '', ''),
('130', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 13:58:46', '', '7', 'LnaguageFrontSwitcherType', 'icons', '<en>Language front switcher type</en>', 'dropdown', 'icons|Flags list;\r\ndropdown|Drop down list;', 'editable', '', 10, '', '', ''),
('131', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 13:58:46', '', '7', 'LanguageAdminSwitcherType', 'icons', '<en>Language admin switcher type</en>', 'dropdown', 'icons|Flags;\r\ndropdown|Drop down;', 'editable', '', 12, '', '', ''),
('132', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'CategoryTopResourceMode', 'toplisting', '<en>Category top elements mode</en>', 'dropdown', 'topcheckbox|Show manually selected elements;\r\nlast|Show last added elements;\r\ntoplisting|Show first 10 elements in listing;', 'editable', '', 20, '', '', ''),
('133', 'root', 'root', '0000-00-00 00:00:00', '2006-09-09 18:23:22', '', '8', 'CategoryTopResourcesNumber', '10', '<en>Number of elements on category top page</en>', 'input', '', 'editable', '', 22, '', '', ''),
('134', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'CategoryUseType', 'Y', '<en>Use resource type per category</en>', 'dropdown', '', 'editable', 'YesNo', 24, '', '', ''),
('135', 'root', 'root', '0000-00-00 00:00:00', '2010-07-04 21:29:52', '', '2', 'OwnerManagedElements', '| |sitemap|settings|langfields|', '<en>Owner managed elements</en><fr>Owner managed elements</fr>', 'checkboxes', 'sitemap|Sitemap;\r\nsettings|Settings;\r\nlangfields|Language fields;\r\nresources|Resources;\r\ncategories|Categories;\r\nproperties|Properties;\r\n', 'editable', '', 4, '', '', ''),
('11365480442010012418292362j111', 'root', 'root', '2010-01-24 18:29:23', '2010-03-09 20:28:39', '', '1136548044200605070808114k1111', 'TerminalID', 'E0129618', '<en>TerminalID</en>', 'input', '', 'editable', '', 4, '', '', ''),
('142', 'shop', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '1', 'SiteName', '<en>Shop</en><fr>Shop</fr>', '<en>Website name</en><fr>Website name</fr>', 'text', '', 'editable', '', 10, '<en>Web site name used in titles and emails</en><fr>Web site name used in titles and emails</fr>', '', ''),
('147', 'shop', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '1', 'SiteTitle', '<en>Shop title</en><fr>Shop title</fr>', '<en>Website title</en><fr>Website title</fr>', 'text', '', 'editable', '', 38, '<en>Title used for search engines</en><fr>Title used for search engines</fr>', '', ''),
('146', 'root', 'root', '0000-00-00 00:00:00', '2010-07-04 21:29:52', '', '2', 'DefaultOwner', 'root', '<en>Default owner ID</en><fr>Default owner ID</fr>', 'input', '', 'editable', '', 2, '', '', ''),
('148', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'ImageResizeUseImagemagick', 'Y', '<en>Use Imagemagick for resize</en><fr>Use Imagemagick for resize</fr>', 'dropdown', '', 'editable', 'YesNo', 2, '', '', ''),
('149', 'root', 'root', '0000-00-00 00:00:00', '2010-07-04 21:29:52', '', '2', 'Copyright', '<ru>©</ru><en>©</en>', '<en>Copyright</en><fr>Copyright</fr>', 'text', '', 'editable', '', 10, '', '', ''),
('11365480442007100616265842q111', 'root', 'root', '2007-10-06 16:26:58', '2010-07-04 21:43:18', '', '1', 'SettingAdCode2', '', '<en>Ad code 2</en><ru>Релкамный код 2</ru>', 'text', '', 'editable', '', 70, '', '', ''),
('11365480442006101407501585c111', 'root', 'root', '2006-10-14 07:50:15', '2010-07-04 21:43:18', '', '1', 'GMT', '', '<en>Time diference from GMT</en><ru>Time diference from GMT</ru><ua>Time diference from GMT</ua>', 'char', '', 'editable', '', 56, '', '', ''),
('1136548044200610141603206h1111', 'root', 'root', '2006-10-14 16:03:20', '2007-03-09 15:15:19', '', '1136548044200610141602365k1111', 'NewsFeedMaxArticles', '10000', '<en>Default limit of articles per feed</en><ru>Default limit of articles per feed</ru><ua>Default limit of articles per feed</ua>', 'char', '', 'editable', '', 1, '', '', ''),
('11365480442006050210273919n111', 'root', 'root', '2006-05-02 10:27:39', '2006-05-02 11:15:14', '', '17', 'PropertiesDefaultOrder', 'Property.PropertyPaidRate DESC, Property.TimeSaved DESC', '<en>Properties default order</en>', 'dropdown', 'Property.PropertyAlias|Property code;\r\nProperty.PropertyPaidRate|Paid rate;\r\nProperty.PropertyPaidRate DESC, Property.TimeSaved DESC|Paid rate and time;', 'editable', '', 10, '', '', ''),
('150', 'root', 'root', '0000-00-00 00:00:00', '2010-07-04 21:29:52', '', '2', 'Version', '<ru>XCMSPro 2.1.2</ru><en>XCMSPro 2.1.2</en>', '<en>Version</en><fr>Version</fr>', 'text', '', 'editable', '', 12, '', '', ''),
('151', 'root', 'root', '0000-00-00 00:00:00', '2006-05-02 11:15:14', '', '17', 'UsePaymentForPropertyOrders', 'N', '<en>Use payment for property orders?</en><fr>Use payment for property orders?</fr>', 'dropdown', '', 'editable', 'YesNo', 4, '', '', ''),
('152', 'root', 'root', '0000-00-00 00:00:00', '2006-05-02 11:15:14', '', '17', 'UseMutliplePropertiesPerOrder', 'N', '<en>Allow to order more then 1 property?</en><fr>Allow to order more then 1 property?</fr>', 'dropdown', '', 'editable', 'YesNo', 2, '', '', ''),
('153', 'root', 'root', '0000-00-00 00:00:00', '2006-05-02 11:15:14', '', '17', 'PropertyDefaultLocation', '|', '<en>Default location</en><fr>Default location</fr>', 'location', '', 'editable', '', 8, '', '', ''),
('11365480442006050320081239n111', 'root', '11365480442006050104523652y111', '2006-05-03 20:08:12', '2010-07-04 21:43:18', '', '1', 'SiteKeywords', '<ru>Best Moments</ru><en>Best Moments</en>', '<en>Web site keywords</en>', 'text', '', 'editable', '', 22, '', '', ''),
('11365480442006061811552235n111', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '9', 'RegistrationIsEmailConfirmationRequired', 'N', '<en>Is email confirmation required?</en><fr>Is email confirmation required?</fr>', 'dropdown', '', 'editable', 'YesNo', 6, '', '', ''),
('11365480442006050105115423e111', 'root', 'root', '2006-05-01 05:11:54', '2006-05-02 11:15:14', '', '17', 'UsePropertyTypeFields', 'N', '<en>Use extra fields for each type of property?</en>', 'dropdown', '', 'editable', 'YesNo', 6, '', '', ''),
('11365480442006050320084250i111', 'root', '11365480442006050104523652y111', '2006-05-03 20:08:42', '2010-07-04 21:43:18', '', '1', 'SiteDescription', '<ru>Best Moments</ru><en>Best Moments</en>', '<en>Website description</en>', 'text', '', 'editable', '', 34, '<en>Description meta tag general content</en>', '', ''),
('11365480442006101416041770f111', 'root', 'root', '2006-10-14 16:04:17', '2007-03-09 15:15:19', '', '1136548044200610141602365k1111', 'NewsFeedMaxDays', '90', '<en>Default limit of days per feed</en><ru>Default limit of days per feed</ru><ua>Default limit of days per feed</ua>', 'char', '', 'editable', '', 2, '', '', ''),
('11365480442006061811504647v111', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '9', 'RegistrationIsValidationRequired', 'N', '<en>Is administrator validation required?</en><fr>Is administrator validation required?</fr>', 'dropdown', '', 'editable', 'YesNo', 4, '', '', ''),
('11365480442006050708083933v111', 'root', 'root', '2006-05-07 08:08:39', '2010-03-09 20:28:39', '', '1136548044200605070808114k1111', 'UseMultipleCurrencies', 'Y', '<en>User multiple currencies</en>', 'dropdown', '', 'editable', 'YesNo', 8, '', '', ''),
('11365480442006050808484173l111', 'root', '11365480442006050104523652y111', '2006-05-08 08:48:41', '2010-07-04 21:29:52', '', '2', 'AdministratorsEmails', 'jjboun@gmail.com', '<en>Administrators emails</en>', 'char', '', 'editable', '', 16, '', '', ''),
('11365480442006051407083514g111', 'root', 'root', '2006-05-14 07:08:35', '2010-07-04 21:29:52', '', '2', 'OwnerGenerateSectionsMode', 'Y', '<en>Generate main menu when a new owner is created?</en>', 'dropdown', '', 'editable', 'YesNo', 14, '', '', ''),
('11365480442006051407525575t111', 'root', '11365480442006050104523652y111', '2006-05-14 07:52:55', '2010-07-04 21:43:18', '', '1', 'VirtualWebsiteLayout', 'virtual', '<en>Virtual website layout</en>', 'dropdown', 'virtual|Virtual default;\r\nvirtual1|Virtual 1;', 'editable', '', 40, '', '', ''),
('1136548044200605141000351v1111', 'root', 'root', '2006-05-14 10:00:35', '2010-07-04 21:43:18', '', '1', 'WebSiteHeader', NULL, '<en>Website header</en>', 'image', '', 'editable', '', 52, '', '', ''),
('11365480442006101416051136z111', 'root', 'root', '2006-10-14 16:05:11', '2007-03-09 15:15:19', '', '1136548044200610141602365k1111', 'NewsFeedUpdatePeriod', '5', '<en>Default period of news feed processing</en><ru>Default period of news feed processing</ru><ua>Default period of news feed processing</ua>', 'char', '', 'editable', '', 3, '', '', ''),
('1136548044200710061627271f1111', 'root', 'root', '2007-10-06 16:27:27', '2010-07-04 21:43:18', '', '1', 'SettingAdCode3', '', '<en>Ad code 3</en><ru>Реламный код 3</ru>', 'text', '', 'editable', '', 78, '', '', ''),
('11365480442009091214502719i111', 's46', 'root', '2009-09-12 14:50:27', '2009-09-12 22:27:39', '', '5', 'ImageWidthLimit', '800', '<fr>Use image icon?</fr><en><fr>Full Image Width Limit</fr></en>', 'input', '', 'editable', '', 10, '', '', ''),
('11365480442009091214502770f211', 's46', 'root', '2009-09-12 14:50:27', '2009-09-12 22:27:39', '', '5', 'ImageHeightLimit', '600', '<fr>Use image icon?</fr><en><fr>Full Image Height Limit</fr></en>', 'input', '', 'editable', '', 12, '', '', ''),
('11365480442009091214502780i311', 's46', 'root', '2009-09-12 14:50:27', '2009-09-12 22:27:39', '', '5', 'ImagePreviwWidthLimit', '400', '<fr>Use image icon?</fr><en><fr>Preview image width limit</fr></en>', 'input', '', 'editable', '', 14, '', '', ''),
('11365480442009091214502794i411', 's46', 'root', '2009-09-12 14:50:27', '2009-09-12 22:27:39', '', '5', 'ImagePreviewHeightLimit', '300', '<fr>Use image icon?</fr><en><fr>Preview image height limit</fr></en>', 'input', '', 'editable', '', 16, '', '', ''),
('11365480442009091214502738j511', 's46', 'root', '2009-09-12 14:50:27', '2009-09-12 22:27:39', '', '5', 'ImageIconWidthLimit', '170', '<fr>Use image icon?</fr><en><fr>Icon image width limit</fr></en>', 'input', '', 'editable', '', 18, '', '', ''),
('11365480442009091214502778x611', 's46', 'root', '2009-09-12 14:50:27', '2009-09-12 22:27:39', '', '5', 'ImageIconHeightLimit', '130', '<fr>Use image icon?</fr><en><fr>Icon image height limit</fr></en>', 'input', '', 'editable', '', 20, '', '', ''),
('11365480442009091214502719h711', 's46', 'root', '2009-09-12 14:50:27', '2009-09-12 22:27:39', '', '5', 'NoImageIcon', NULL, '<en>No image icon</en><fr>No image icon</fr>', 'image', '', 'editable', '', 22, '', '', ''),
('1136548044200909162225369z1111', 's46', 'root', '2009-09-16 22:25:36', '2009-09-16 22:25:36', '', '1', 'SiteName', '<en>Undefined</en><fr>Undefined</fr><nl>Undefined</nl>', '<en>Website name</en><fr>Website name</fr>', 'text', '', 'editable', '', 8, '<en>Web site name used in titles and emails</en><fr>Web site name used in titles and emails</fr>', '', ''),
('11365480442009091622253652g211', 's46', 'root', '2009-09-16 22:25:36', '2009-09-16 22:25:36', '', '1', 'SiteTitle', '<en>Undefined</en><fr>Undefined</fr><nl>Undefined</nl>', '<en>Website title</en><fr>Website title</fr>', 'text', '', 'editable', '', 14, '<en>Title used for search engines</en><fr>Title used for search engines</fr>', '', ''),
('11365480442009091622253650k311', 's46', 'root', '2009-09-16 22:25:36', '2009-09-16 22:25:36', '', '1', 'SiteKeywords', '<en>Undefined</en><fr>Undefined</fr><nl>Undefined</nl>', '<en>Web site keywords</en>', 'text', '', 'editable', '', 28, '', '', ''),
('11365480442009091622253651b411', 's46', 'root', '2009-09-16 22:25:36', '2009-09-16 22:25:36', '', '1', 'SiteDescription', '<en>Hosting</en><fr>Hosting</fr><nl>Hosting</nl>', '<en>Website description</en>', 'text', '', 'editable', '', 32, '<en>Description meta tag general content</en>', '', ''),
('11365480442009091622253668l511', 's46', 'root', '2009-09-16 22:25:36', '2009-09-16 22:25:36', '', '1', 'SiteMail', 'jjboun@gmail.com', '<en><fr>Website main email address</fr></en>', 'input', '', 'editable', '', 44, '<en><fr>Is used in from field for all emails sent by system</fr></en>', '', ''),
('11365480442009091622253670b611', 's46', 'root', '2009-09-16 22:25:36', '2009-09-16 22:25:36', '', '1', 'SettingAdCode1', '', '<en>Ad code 1</en><ru>Ad code 1</ru>', 'text', '', 'editable', '', 60, '', '', ''),
('11365480442009091622253642o711', 's46', 'root', '2009-09-16 22:25:36', '2009-09-16 22:25:36', '', '1', 'SettingAdCode2', '', '<en>Ad code 2</en><ru>Релкамный код 2</ru>', 'text', '', 'editable', '', 66, '', '', ''),
('11365480442009091622253676v811', 's46', 'root', '2009-09-16 22:25:36', '2009-09-16 22:25:36', '', '1', 'SettingAdCode3', '', '<en>Ad code 3</en><ru>Реламный код 3</ru>', 'text', '', 'editable', '', 74, '', '', ''),
('11365480442010012418291044e111', 'root', 'root', '2010-01-24 18:29:10', '2010-03-09 20:28:39', '', '1136548044200605070808114k1111', 'MerchantID', '6930531', '<en>MerchantID</en>', 'input', '', 'editable', '', 2, '', '', ''),
('11365480442009101921174524a111', 's47', 'root', '2009-10-19 21:17:45', '2009-10-19 21:18:45', '', '1', 'WebSiteHeader', 's47/images/settings/20091019211745-header.jpg', '<en>Website header</en>', 'image', '', 'editable', '', 48, '', '', ''),
('11365480442009101921175359x111', 's47', 'root', '2009-10-19 21:17:53', '2009-10-19 21:18:45', '', '1', 'SiteName', '<en>Undefined</en><fr>Undefined</fr><nl>Undefined</nl><ru>Неопределен</ru>', '<en>Website name</en><fr>Website name</fr>', 'text', '', 'editable', '', 6, '<en>Web site name used in titles and emails</en><fr>Web site name used in titles and emails</fr>', '', ''),
('11365480442009101921175357k211', 's47', 'root', '2009-10-19 21:17:53', '2009-10-19 21:18:45', '', '1', 'SiteTitle', '<en>Undefined</en><fr>Undefined</fr><nl>Undefined</nl><ru>Неопределен</ru>', '<en>Website title</en><fr>Website title</fr>', 'text', '', 'editable', '', 20, '<en>Title used for search engines</en><fr>Title used for search engines</fr>', '', ''),
('11365480442009101921175343t311', 's47', 'root', '2009-10-19 21:17:53', '2009-10-19 21:18:45', '', '1', 'SiteKeywords', '<en>Undefined</en><fr>Undefined</fr><nl>Undefined</nl><ru>Неопределен</ru>', '<en>Web site keywords</en>', 'text', '', 'editable', '', 26, '', '', ''),
('11365480442009101921175381x411', 's47', 'root', '2009-10-19 21:17:53', '2009-10-19 21:18:45', '', '1', 'SiteDescription', '<en>Hosting</en><fr>Hosting</fr><nl>Hosting</nl><ru>Хостинг</ru>', '<en>Website description</en>', 'text', '', 'editable', '', 30, '<en>Description meta tag general content</en>', '', ''),
('11365480442009101921175373y511', 's47', 'root', '2009-10-19 21:17:53', '2009-10-19 21:18:45', '', '1', 'SettingAdCode1', '', '<en>Ad code 1</en><ru>Ad code 1</ru>', 'text', '', 'editable', '', 58, '', '', ''),
('11365480442009101921175330u611', 's47', 'root', '2009-10-19 21:17:53', '2009-10-19 21:18:45', '', '1', 'SettingAdCode2', '', '<en>Ad code 2</en><ru>Релкамный код 2</ru>', 'text', '', 'editable', '', 72, '', '', ''),
('11365480442009101921175364v711', 's47', 'root', '2009-10-19 21:17:53', '2009-10-19 21:18:45', '', '1', 'SettingAdCode3', '', '<en>Ad code 3</en><ru>Реламный код 3</ru>', 'text', '', 'editable', '', 80, '', '', ''),
('11365480442010011823265388m111', 'root', '1', '2010-01-18 23:26:53', '2010-07-04 21:43:18', '', '1', 'SiteLogo', '', '<ru><en>Logo</en><fr>Logo</fr></ru>', 'image', '', 'editable', '', 46, '<ru><en>Website logo image</en><fr>Website logo image</fr></ru>', '', ''),
('1136548044201005061947122a1111', 'yachts', 'root', '2010-05-06 19:47:12', '2010-05-06 19:47:12', '', '1', 'SiteLogo', 'yachts/images/settings/201005/20100506194712-logo.png', '<ru><en>Logo</en><fr>Logo</fr></ru>', 'image', '', 'editable', '', 46, '<ru><en>Website logo image</en><fr>Website logo image</fr></ru>', '', ''),
('11365480442010012900101374k111', 'root', 'root', '2010-01-29 00:10:13', '2010-07-04 21:43:18', '', '1', 'PaymentEmail', 'jjboun@gmail.com', '<en>Payment Email</en>', 'input', '', 'editable', '', 1, '', '', ''),
('11365480442010070200200144h111', 'mas', 'root', '2010-07-02 00:20:01', '2010-07-04 21:28:28', '', '1', 'SiteName', '<ru>Best Moments</ru><en>Best Moments</en>', '<ua><en>Website name</en><fr>Website name</fr></ua>', 'text', '', 'editable', '', 2, '<ua><en>Web site name used in titles and emails</en><fr>Web site name used in titles and emails</fr></ua>', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `settinggroup`
--

CREATE TABLE IF NOT EXISTS `settinggroup` (
  `id` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `code` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `UserID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OwnerID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeSaved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `parentID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` text COLLATE utf8_bin,
  `description` text COLLATE utf8_bin,
  `accessGroups` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `module` (`module`),
  KEY `accessGroups` (`accessGroups`),
  KEY `UserID` (`UserID`,`OwnerID`,`parentID`),
  KEY `hidden` (`hidden`),
  KEY `timeCreated` (`timeCreated`,`timeSaved`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `settinggroup`
--

INSERT INTO `settinggroup` (`id`, `code`, `UserID`, `OwnerID`, `hidden`, `timeCreated`, `timeSaved`, `parentID`, `module`, `name`, `description`, `accessGroups`) VALUES
('1', 'main', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'core', '<en>Main website settings</en><fr>Main website settings</fr>', '<en>Main website settings</en><fr>Main website settings</fr>', '|all|'),
('2', 'system', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'core', '<en>System main settings</en><fr>System main settings</fr>', '<en>System main settings</en><fr>System main settings</fr>', '|root|'),
('3', 'EmailSettings', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'core', '<en>Email settings</en><fr>Email settings</fr>', '', ''),
('4', 'style1', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '<en>Stylesheet 1</en><fr>Stylesheet 1</fr>', '<en>Stylesheet 1</en><fr>Stylesheet 1</fr>', ''),
('5', 'files', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '<fr>File manager settings</fr><en>File manager settings</en>', '<fr>File manager settings</fr><en>File manager settings</en>', ''),
('6', 'style2', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '<fr>Stylesheet 2</fr><en>Stylesheet 2</en>', '<fr>Stylesheet 2</fr><en>Stylesheet 2</en>', ''),
('7', 'systemprefs', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '<en>System preferences</en><fr>System preferences</fr>', '', '|root|'),
('8', 'resource', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '<en>Offers/Products/Resources settings</en><fr>Offers/Products/Resources settings</fr>', '', '|root|admin|'),
('9', 'session', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '<en>Session (login/logout) settings</en><fr>Session (login/logout) settings</fr>', '', '|root|'),
('13', 'style1.LeftBoxStyle1', 'root', 'root', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '4', '', '<en>Left box style 1</en><fr>Left box style 1</fr>', '', ''),
('15', 'style1.CenterBoxStyle1', 'root', 'root', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '4', '', '<en>Center box style 1</en><fr>Center box style 1</fr>', '', ''),
('16', 'webServices', 'root', 'root', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '<fr>Web services</fr>', '', '|root|'),
('17', 'property', 'root', 'root', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'property', '<en>Property module settings</en><fr>Property module settings</fr>', '<en>Property module settings</en><fr>Property module settings</fr>', '|root|admin|'),
('11365480442006041605375159g111', 'poll', 'root', 'root', 0, '2006-04-16 05:37:51', '2006-04-16 05:37:51', '', 'poll', '<en>Poll module settings</en><fr>Poll module settings</fr>', '', '|root|admin|'),
('1136548044200605070808114k1111', 'billing', 'root', 'root', 0, '2006-05-07 08:08:11', '2006-05-07 08:08:11', '', 'billing', '<en>Billing settings</en>', '', '|root|admin|content|owner|'),
('11365480442006051316535339p111', 'virtual', 'root', 'root', 0, '2006-05-13 16:53:53', '2006-05-13 16:53:53', '', 'core', '<en>Virtual websites settings</en>', '', '|user|root|admin|content|owner|'),
('1136548044200610141602365k1111', 'news', 'root', 'root', 0, '2006-10-14 16:02:36', '2006-10-14 16:02:36', '', 'news', '<en>News module settings</en><ru>News module settings</ru><ua>News module settings</ua>', '', ''),
('11365480442010051021082974q111', '.', 'root', 'yachts', 0, '2010-05-10 21:08:29', '2010-05-10 21:08:29', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `stylesetting`
--

CREATE TABLE IF NOT EXISTS `stylesetting` (
  `id` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OwnerID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `UserID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeSaved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `code` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `variableName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `value` text COLLATE utf8_bin,
  `name` text COLLATE utf8_bin,
  `valueType` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT 'text',
  `valueOptions` text COLLATE utf8_bin NOT NULL,
  `type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT 'editable',
  `reference` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `OwnerID` (`OwnerID`),
  KEY `UserID` (`UserID`),
  KEY `variableName` (`variableName`),
  KEY `valueType` (`valueType`),
  KEY `type` (`type`),
  KEY `position` (`position`),
  KEY `timeCreated` (`timeCreated`,`timeSaved`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `stylesetting`
--

INSERT INTO `stylesetting` (`id`, `OwnerID`, `UserID`, `timeCreated`, `timeSaved`, `code`, `variableName`, `value`, `name`, `valueType`, `valueOptions`, `type`, `reference`, `position`, `description`) VALUES
('1136548044200805241119073x1111', 'root', 'root', '2008-05-24 11:19:07', '2008-05-24 11:19:07', '', 'StyleLayout', NULL, '<en>Style layout</en><fr>Style layout</fr>', 'char', '', 'editable', '', 1, '');

-- --------------------------------------------------------

--
-- Структура таблицы `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `OwnerID` int(100) DEFAULT NULL,
  `adminID` int(100) DEFAULT NULL,
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeSaved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeStart` datetime DEFAULT NULL,
  `timeEnd` datetime DEFAULT NULL,
  `createdIP` varchar(31) COLLATE utf8_bin DEFAULT NULL,
  `savedIP` varchar(31) COLLATE utf8_bin DEFAULT NULL,
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `groupID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userName` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `login` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `passwordEnabled` char(1) COLLATE utf8_bin DEFAULT 'N',
  `deleted` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'N',
  `timeDeleted` datetime DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `ownerParentID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `owners` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lastVisit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userParentID` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `avatarPath` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fullName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `gender` enum('W','M') CHARACTER SET utf8 DEFAULT NULL,
  `moreInfo` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `userLanguage` int(2) NOT NULL DEFAULT '1',
  `userFields` text CHARACTER SET utf8,
  `avatarFname` varchar(255) CHARACTER SET utf8 DEFAULT '',
  PRIMARY KEY (`userID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `adminID` (`adminID`),
  KEY `hidden` (`hidden`),
  KEY `groupID` (`groupID`),
  KEY `email` (`email`),
  KEY `userName` (`userName`),
  KEY `password` (`password`),
  KEY `passwordEnabled` (`passwordEnabled`),
  KEY `deleted` (`deleted`),
  KEY `status` (`status`),
  KEY `ownerParentID` (`ownerParentID`),
  KEY `owners` (`owners`),
  KEY `userParentID` (`userParentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`userID`, `OwnerID`, `adminID`, `timeCreated`, `timeSaved`, `timeStart`, `timeEnd`, `createdIP`, `savedIP`, `hidden`, `groupID`, `email`, `userName`, `login`, `password`, `passwordEnabled`, `deleted`, `timeDeleted`, `status`, `ownerParentID`, `owners`, `lastVisit`, `userParentID`, `avatarPath`, `fullName`, `gender`, `moreInfo`, `userLanguage`, `userFields`, `avatarFname`) VALUES
(1, 1, 1, '0000-00-00 00:00:00', '2014-07-30 23:42:36', '2014-02-06 00:00:00', NULL, '127.0.0.1', '127.0.0.1', 1, '1,2,5', 'root@gmail.com', 'root', 'root', '5f4dcc3b5aa765d61d8327deb882cf99', 'Y', 'N', NULL, 0, 'root', 'root', '0000-00-00 00:00:00', '0', '/upload/avatar/resize/1/', 'shadow', 'M', 'Test example', 1, NULL, 'avatar2.jpeg'),
(3, 1, 1, '2014-02-25 16:38:06', '2014-02-25 17:24:33', '2014-05-06 00:00:00', NULL, '127.0.0.1', '127.0.0.1', 0, '1', 'test@te.ua', 'test', 'test', '5f4dcc3b5aa765d61d8327deb882cf99', 'Y', 'N', NULL, 0, 'root', 'root', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '', 1, NULL, ''),
(4, 1, 1, '2014-02-27 11:23:26', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 0, '1', 'ms@airweb.ua', 'maks', 'maks', '', 'N', 'N', NULL, 0, '', NULL, '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '', 1, NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `userfield`
--

CREATE TABLE IF NOT EXISTS `userfield` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `UserID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `typeFieldID` int(11) NOT NULL DEFAULT '0',
  `fieldValue` text COLLATE utf8_bin NOT NULL,
  `fieldValueNumber` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fieldValueTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `userfields`
--

CREATE TABLE IF NOT EXISTS `userfields` (
  `id` varchar(30) NOT NULL,
  `UserID` varchar(30) NOT NULL DEFAULT '',
  `UserFieldMode` char(1) NOT NULL DEFAULT 'R',
  `firstName` text NOT NULL,
  `lastName` text NOT NULL,
  `userRating` decimal(10,2) NOT NULL DEFAULT '0.00',
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `personTitle` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `UserID` (`UserID`),
  KEY `userFieldMode` (`UserFieldMode`),
  KEY `userRating` (`userRating`),
  KEY `phone` (`phone`),
  KEY `country` (`country`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `userfields`
--

INSERT INTO `userfields` (`id`, `UserID`, `UserFieldMode`, `firstName`, `lastName`, `userRating`, `phone`, `country`, `personTitle`) VALUES
('11365480442009040420020565l211', '11365480442009040420020592y111', 'R', 'Aurel', 'Test3', 0.00, '', '', ''),
('11365480442009040419305749j211', '1136548044200904041930570l1111', 'R', 'Aurel', 'Chebotar', 0.00, '', '', ''),
('11365480442008122021403426a211', '1136548044200812202140347y1111', 'R', 'Aurel', 'Chebotar', 0.00, '', '', ''),
('11365480442009011720095384r211', '11365480442009011720095341t111', 'R', 'Natasha', 'Chebotar', 0.00, '', '', ''),
('11365480442009040419522712h211', '11365480442009040419522659h111', 'R', 'Aurel', 'Chebotar2', 0.00, '', '', ''),
('11365480442009012523465538l211', '11365480442009012523465528c111', 'R', 'Aurel', 'test2601', 0.00, '', '', ''),
('11365480442009020615480544s211', '11365480442009020615480534u111', 'R', 'Александр', 'Кононенко', 0.00, '', '', ''),
('11365480442009032421115881o211', '1136548044200903242111589i1111', 'R', 'Serghei', 'Isac', 0.00, '', '', ''),
('11365480442009061822082264i211', '11365480442009061822082266y111', 'R', 'Sergey', 'Isac', 0.00, '', '', ''),
('11365480442009071212422844p211', '11365480442009071212422839y111', 'R', 'Валерий', 'Боянчук', 0.00, '', '', ''),
('11365480442009080215113218o211', '11365480442009080215113239y111', 'R', 'Алексндр ', 'Носенко', 0.00, '', '', ''),
('1136548044200909022351247l2111', '11365480442009090223512434r111', 'R', 'Benjamin', 'Haas', 0.00, '', '', ''),
('11365480442009090300213883g211', '11365480442009090300213830q111', 'R', 'Loire', 'Owner', 672.00, '', '', ''),
('11365480442009091410055196s211', '1136548044200909141005508d1111', 'R', 'Violeta1', 'Chebotari', 0.00, '', '', ''),
('11365480442009091410593854w211', '11365480442009091410593826e111', 'R', 'Test 2', 'test ', 0.00, '', '', ''),
('11365480442009091719185673p211', '11365480442009091719185564l111', 'R', 'Violeta 2', 'Lats', 0.00, '', '', ''),
('11365480442009091722595087w211', '11365480442009091722595029d111', 'R', 'Violeta', 'Lats 2 ', 0.00, '', '', ''),
('11365480442009091723135215b211', '11365480442009091723135226p111', 'R', 'Violeta 3', 'Lats 3', 0.00, '', '', ''),
('11365480442009100116523756h211', '1136548044200910011652365e1111', 'R', 'cratecare.com', 'Admin', 0.00, '', '', ''),
('11365480442009100617065183s211', '11365480442009100617065164x111', 'R', 'Konstantin', 'Harabara', 0.00, '', '', ''),
('11365480442009101021344950u211', '11365480442009101021344833h111', 'R', 'Konstantin', 'Harabara', 0.00, '', '', ''),
('11365480442009101214260481n211', '11365480442009101214260314g111', 'R', 'benjamin', 'Haas', 0.00, '', '', ''),
('11365480442009102117515579e211', '11365480442009102117515464m111', 'R', 'asdf', 'asdf', 24.00, '', '', ''),
('1136548044200910292338204a2111', '11365480442009102923381931l111', 'R', 'Aurel', 'Test', 0.00, '', '', ''),
('11365480442009111615475349i211', '11365480442009111615475394o111', 'R', 'Дмитрий', '', 0.00, '(067) 440-74-05', '', ''),
('11365480442009112611364444o211', '11365480442009112611364414c111', 'R', 'Sergey', 'Kulik', 0.00, '', '', ''),
('11365480442009112619294060o211', '11365480442009112619294047t111', 'R', 'sdcsdc', 'dcsdc', 0.00, '    ', 'dfsdfs', 'mr'),
('11365480442010012714201360g211', '11365480442010012714201211l111', 'R', 'First name', 'Last name', 0.00, '939584565', '', ''),
('11365480442010012717593153j211', '11365480442010012717593076a111', 'R', 'dddddd', 'cccccc', 0.00, '23456789', '', ''),
('11365480442010012718021987l211', '11365480442010012718021956g111', 'R', 'dddddd', 'cccccc', 0.00, '23456789', '', ''),
('11365480442010012818434355x211', '11365480442010012818434222w111', 'R', 'Violeta', 'test', 0.00, '123456', '', ''),
('11365480442010020113212291j211', '11365480442010020113212231c111', 'R', 'ssss', 'dddd', 0.00, '234567', '', ''),
('11365480442010020113275782q211', '1136548044201002011327556a1111', 'R', 'eeeee', 'ddd', 0.00, '12345678', '', ''),
('11365480442010020113300983y211', '11365480442010020113300819d111', 'R', 'sssss', 'aaaa', 0.00, '2345678', '', ''),
('11365480442010020113350470s211', '11365480442010020113350352l111', 'R', 'sssss', 'aaaaa', 0.00, '23456', '', ''),
('1136548044201002011338263g2111', '11365480442010020113382547a111', 'R', 'ss', 'aaaa', 0.00, '234567', '', ''),
('1136548044201002011351365h2111', '11365480442010020113513625y111', 'R', 'ss', 'aaaa', 0.00, '234567', '', ''),
('11365480442010020113545790d211', '1136548044201002011354561g1111', 'R', 'wwww', 'sss', 0.00, '234', '', ''),
('11365480442010020114440965e211', '1136548044201002011444093c1111', 'R', 'ssss', 'xxxx', 0.00, '2345', '', ''),
('11365480442010020115124779c211', '11365480442010020115124656r111', 'R', 'ss', 'cc', 0.00, '234567', '', ''),
('11365480442010020218075149m211', '11365480442010020218075149u111', 'R', 'Violeta', 'Chebotari', 0.00, '456768954', '', ''),
('1136548044201002021821074k2111', '1136548044201002021821077t1111', 'R', 'David', 'Barnett', 0.00, '2343658', '', ''),
('11365480442010020220055399w211', '11365480442010020220055329h111', 'R', 'Violeta', 'Chebotari', 0.00, '4567890987', '', ''),
('11365480442010020220450816i211', '11365480442010020220450741k111', 'R', 'Violeta', 'Chebotari', 0.00, '2347586', '', ''),
('11365480442010020312571244q211', '11365480442010020312571266p111', 'R', 'tyjt', 'tyyj', 0.00, '564654', 'fghgfh  hf hgf', 'mr'),
('11365480442010020417292267r211', '11365480442010020417292215y111', 'R', 'Violeta', 'Chebotari', 0.00, '12345678', 'France', ''),
('11365480442010020515320418n211', '11365480442010020515320425f111', 'R', 'Andre', 'Tester', 0.00, '34554675', 'France', ''),
('11365480442010020516001113n211', '11365480442010020516001191j111', 'R', 'Andre', 'Barnett', 0.00, '12345678', 'France', ''),
('11365480442010021014072847i211', '11365480442010021014072853g111', 'R', 'Andre', 'Barnett', 0.00, '32543', 'dsgdgf', ''),
('11365480442010021014145526h211', '11365480442010021014145560d111', 'R', 'Andre', 'cccccc', 0.00, '12345678', 'USA', ''),
('11365480442010021014225471y211', '11365480442010021014225493n111', 'R', 'Osea', 'Tera', 0.00, '32445677', 'dsdfghj', ''),
('11365480442010021014350553w211', '11365480442010021014350447l111', 'R', 'test', 'test', 0.00, 'asdf', 'asd', ''),
('11365480442010021014350590b211', '11365480442010021014350474s111', 'R', 'David', 'Chebotari', 0.00, '12345678', 'dsdfghj', ''),
('1136548044201002101513050j2111', '11365480442010021015130442i111', 'R', 'FGhjijsax', 'NBJHUHU', 0.00, '654645654', 'fgdfgdfg', 'mr'),
('11365480442010021023451198t211', '11365480442010021023451128g111', 'R', 'Jjhjjhj', 'Gknnjsjsj', 0.00, '42332545', 'Hjfhfbff', 'mr'),
('11365480442010021201093876m211', '11365480442010021201093778b111', 'R', 'Test', 'Aurel', 0.00, '123456', 'France', ''),
('11365480442010021201391557k211', '11365480442010021201391559e111', 'R', 'asdf', 'asdf', 0.00, 'asdf', 'asdf', ''),
('11365480442010021217481043c211', '11365480442010021217481089y111', 'R', 'Test', 'Aurel', 0.00, '3456', 'Ukraine', ''),
('11365480442010021218080276z211', '11365480442010021218080150s111', 'R', 'fdgdfsg sdf', 'dfgsdg f', 0.00, '1234567', 'fdgsdfgsdf', ''),
('11365480442010021218115860n211', '11365480442010021218115774y111', 'R', 'Dfgdgdd', 'Jgfgfff', 0.00, '74574574745', 'Uganda', ''),
('11365480442010022316594427d211', '11365480442010022316594464m111', 'R', 'Fabrisio', 'Konte', 0.00, '9876543', 'Italy', ''),
('11365480442010022416580144z211', '11365480442010022416580166e111', 'R', 'test', 'test2', 0.00, '545', 'Ukraine', ''),
('11365480442010022612540521m211', '11365480442010022612540564n111', 'R', 'Andre', 'Barnett', 0.00, '123456', 'France', 'mrs'),
('11365480442010022617082791g211', '11365480442010022617082796s111', 'R', 'Violeta', 'Tester', 0.00, '35345646', 'USA', 'dr'),
('11365480442010030922114337f211', '11365480442010030922114337z111', 'R', 'Miroslav', 'Repka', 0.00, 'repkamiroslav', 'Slovakia', 'mr'),
('11365480442010030122410881d211', '11365480442010030122410838o111', 'R', 'dsfds', 'fsdfdf', 0.00, '543543', 'fdgfdgdf', 'mr'),
('11365480442010032914055344d211', '11365480442010032914055387b111', 'R', 'Murat', 'Efe', 0.00, '+90 533 212 5444', 'Istanbul', 'mr'),
('11365480442010031200432540q211', '11365480442010031200432545l111', 'R', 'Tatiana', 'Pirson', 0.00, '0033617414130', 'France', 'mrs'),
('1136548044201003122314286g2111', '11365480442010031223142873n111', 'R', 'Patrick', 'Patrick', 0.00, '969915880007', 'Patrick', 'mr'),
('11365480442010031518252064j211', '11365480442010031518252018s111', 'R', 'ali', 'barut', 0.00, '+90 530 547 99 12', 'turkey', 'mr'),
('11365480442010031716501986j211', '11365480442010031716501990s111', 'R', 'Katerina', 'Kotova', 0.00, '', 'Russia', 'mr'),
('11365480442010031722460753u211', '11365480442010031722460740f111', 'R', 'qwe', 'def', 0.00, 'asdf', 'asd', 'mr'),
('1136548044201003182246145p2111', '11365480442010031822461490l111', 'R', 'John ', 'Darmanin', 0.00, '00356 21376956 mob; 00356 99476595', '', 'mr'),
('1136548044201003221840022m2111', '11365480442010032218400239q111', 'R', 'marco', 'fernandez martinez', 0.00, '', '', 'mr'),
('11365480442010032221202894a211', '11365480442010032221202842j111', 'R', 'dfsg', 'fdsdfg', 0.00, '', '', 'mr'),
('11365480442010033012132585u211', '11365480442010033012132597f111', 'R', 'Ibrahim', 'TURKEN', 0.00, '+352621223399', 'LUXEMBOURG- KOERICH', 'mr'),
('11365480442010033114522529q211', '11365480442010033114522549h111', 'R', 'Srinivasagopalan', 'Iyengar', 0.00, '00447813216394', 'UK', 'mr'),
('11365480442010040122484095p211', '11365480442010040122484018i111', 'R', 'davide', 'barile', 0.00, '00393296315671', 'Italia', 'mr'),
('11365480442010040421064434u211', '11365480442010040421064434z111', 'R', 'Brian', 'Felakos', 0.00, '+19178818809', 'New York', 'mr'),
('11365480442010040522392540d211', '11365480442010040522392594x111', 'R', 'вадим', 'корешков', 0.00, '+375296716678, skype bud8881', 'минск', 'mr'),
('1136548044201004061025008e2111', '11365480442010040610250013p111', 'R', 'Евгения', 'Биняковская', 0.00, '8-903-500-66-80', 'Россия', 'miss'),
('11365480442010040723274063x211', '11365480442010040723274016k111', 'R', 'LUIS ALEXANDER', 'DUARTE', 0.00, '+218914519339', 'TRIPOLI (LIBYA)', 'mr'),
('11365480442010040813230346y211', '1136548044201004081323030x1111', 'R', 'Олег', 'Белоконь', 0.00, '050 131 70 43         ICG 279796745', 'Кременчуг', 'mr'),
('11365480442010041020365822u211', '11365480442010041020365885w111', 'R', 'Eienne', 'jolivet', 0.00, '+31616861395', 'The Netherlands', 'mr'),
('11365480442010041109021518f211', '11365480442010041109021512l111', 'R', 'kris', 'kris', 0.00, 'kris', 'USA', 'mr'),
('11365480442010041316470337f211', '11365480442010041316470386x111', 'R', 'Derrick', 'Sutter', 0.00, '+49 15788498368', 'Berlin, Germany', 'mr'),
('11365480442010041319153813n211', '1136548044201004131915388x1111', 'R', 'Александр', 'Хазов', 0.00, '271158820 - ICQ, 8-903-760-32-81', 'Москва', 'mr'),
('11365480442010041423480478x211', '1136548044201004142348044r1111', 'R', 'Gianni', 'Boy', 0.00, '', '', 'mr'),
('11365480442010041500154493n211', '11365480442010041500154441g111', 'R', 'MASSIMILIANO', 'BOTTINI', 0.00, '+39 3492489765', 'ITALY', 'mr'),
('1136548044201004151359350h2111', '11365480442010041513593510q111', 'R', 'Romolo', 'Sansone', 0.00, '00393381165225', 'ITALY-  L''AQUILA ', 'mr'),
('1136548044201004151635184n2111', '11365480442010041516351818s111', 'R', 'Moti', 'Rozanes', 0.00, '  41765797274', 'Geneva Switzerland', 'mr'),
('11365480442010041601131585u211', '11365480442010041601131591v111', 'R', 'alexandra', 'shaduk', 0.00, '', 'russia', 'mr'),
('11365480442010041617534869a211', '11365480442010041617534852c111', 'R', 'Sean', 'Dillon', 0.00, '+380955212911', 'Ukraine', 'mr'),
('11365480442010041821552431u211', '11365480442010041821552498g111', 'R', 'Jurhar', 'Bostjan', 0.00, '+7 926 4904865', 'Slovenia/Russia', 'mr'),
('11365480442010041914010126l211', '11365480442010041914010199r111', 'R', 'Андрей', 'Килин', 0.00, '+7-926-346-56-28', 'Россия, Москва', 'mr'),
('11365480442010041915184945z211', '11365480442010041915184950g111', 'R', 'Александр', 'Широков', 0.00, '+7 903 665 36 86', 'Россия Москва', 'mr'),
('11365480442010041923322188g211', '11365480442010041923322134o111', 'R', 'Анна', 'и', 0.00, '+7 926 844 83 44', 'Москва', 'miss'),
('11365480442010042018005024h211', '1136548044201004201800508n1111', 'R', 'Ahmed', 'Naveed', 0.00, 'skype: buzinessedge', 'Pakistan', 'mr'),
('11365480442010042022050076t211', '11365480442010042022050040h111', 'R', 'ricardo', 'peironcely', 0.00, '¡34 629175077', 'madrid_ spain', 'mr'),
('11365480442010042212412513z211', '11365480442010042212412527y111', 'R', 'Виктория', 'Назарова', 0.00, 'icq 206048083', 'Россия', 'miss'),
('1136548044201004231314176t2111', '11365480442010042313141768r111', 'R', 'вероника', 'кудинова', 0.00, '+7-926-077-03-16', 'Москва', 'mr'),
('1136548044201004242139033t2111', '11365480442010042421390323x111', 'R', 'Наталия', 'Жукова', 0.00, '', '', 'ms'),
('11365480442010042515322832s211', '11365480442010042515322834x111', 'R', 'Яна', 'Портнова', 0.00, '+79105123548', 'Россия, Москва', 'ms'),
('11365480442010042618382025q211', '11365480442010042618382027x111', 'R', 'Ilpo', 'Meklin', 0.00, ' 358408312132', 'Finland', 'mr'),
('11365480442010042701340976i211', '11365480442010042701340923s111', 'R', 'jairo', 'gomez', 0.00, '201 214-2593', 'USA', 'mr'),
('11365480442010042809320477h211', '11365480442010042809320424r111', 'R', 'Елена', 'Чурсинова', 0.00, '+79261421852', 'Россия (Москва)', 'ms'),
('11365480442010042705332437o211', '11365480442010042705332436t111', 'R', 'Marina', 'Forkosh', 0.00, '216-3377303', 'USA', 'mr'),
('11365480442010042823094975t211', '11365480442010042823094931z111', 'R', 'Dubois - Deborde', 'Hubert', 0.00, '+33662987077', 'France', 'mr'),
('11365480442010043003132296c211', '11365480442010043003132265n111', 'R', 'Luke', '', 0.00, '', '', 'mr'),
('11365480442010043018095246u211', '11365480442010043018095271v111', 'R', 'Emmanouel', 'VOUGIOUKAS', 0.00, ' 30 6972770040', 'Volos, GREECE', 'mr'),
('11365480442010050115121431j211', '11365480442010050115121488f111', 'R', 'Stéphanie and Alain', 'ORDRONNEAU', 0.00, '0033621652037', 'FRANCE', 'mr'),
('11365480442010050122540154u211', '11365480442010050122540150o111', 'R', 'Kesidis', 'Akis', 0.00, '00381-63-203949', 'Serbia-Grecia', 'mr'),
('11365480442010050318303680x211', '11365480442010050318303659x111', 'R', 'Tom', 'Eckert', 0.00, '', '', 'mr'),
('11365480442010050417081956p211', '1136548044201005041708195w1111', 'R', 'pablo', 'rodriguez', 0.00, '+34626373285', 'Madrid, Spain', 'mr'),
('1136548044201005041738327m2111', '11365480442010050417383263g111', 'R', 'habib ', 'sahla', 0.00, '00971504223796', 'dubai', 'mr'),
('11365480442010050521340095b211', '11365480442010050521340096i111', 'R', 'ALEXEI', 'MOISEENKOV', 0.00, '+79031302012', 'RU', 'mr'),
('11365480442010050612465852j211', '11365480442010050612465857y111', 'R', 'Мария', 'Недоборова', 0.00, '+7 926 232 87 78, icq 192492558', 'Москва', 'mr'),
('11365480442010050613132354a211', '11365480442010050613132339g111', 'R', 'Кирилл', 'Пугач ', 0.00, '+79269056777, icq 332838987', 'Россия, Москва', 'mr'),
('11365480442010050616252215c211', '1136548044201005061625227t1111', 'R', 'Pascal', 'Hinnen', 0.00, '0041 786768649', 'Switzerland Zürich', 'mr'),
('11365480442010051519160197b211', '11365480442010051519160197e111', 'R', '', '', 0.00, '', '', ''),
('11365480442011033117595537p211', '11365480442011033117595586b111', 'R', '', '', 0.00, '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `usergroup`
--

CREATE TABLE IF NOT EXISTS `usergroup` (
  `groupID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `OwnerID` int(100) DEFAULT NULL,
  `userID` int(100) DEFAULT NULL,
  `timeCreated` datetime DEFAULT '0000-00-00 00:00:00',
  `timeSaved` datetime DEFAULT '0000-00-00 00:00:00',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `rights` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `position` smallint(3) DEFAULT '0',
  `activate` int(3) DEFAULT '0',
  `type` varchar(255) CHARACTER SET utf8 DEFAULT '',
  PRIMARY KEY (`groupID`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `usergroup`
--

INSERT INTO `usergroup` (`groupID`, `OwnerID`, `userID`, `timeCreated`, `timeSaved`, `name`, `rights`, `description`, `position`, `activate`, `type`) VALUES
(1, 1, 1, '0000-00-00 00:00:00', '2014-07-30 21:16:19', 'Registered users/customers', '', '', 0, 1, 'admin'),
(2, 1, 1, '0000-00-00 00:00:00', '2010-09-28 03:44:38', 'Root administrators', '', '', 0, 1, ''),
(3, 1, 1, '0000-00-00 00:00:00', '2010-09-28 03:45:06', 'Administrators', '', '', 0, 1, ''),
(4, 1, 1, '0000-00-00 00:00:00', '2012-09-25 17:24:45', 'Content managers', '', '', 0, 1, '');

-- --------------------------------------------------------

--
-- Структура таблицы `userindex`
--

CREATE TABLE IF NOT EXISTS `userindex` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UserID` varchar(30) NOT NULL,
  KEY `id` (`id`),
  KEY `UserID` (`UserID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=139 ;

--
-- Дамп данных таблицы `userindex`
--

INSERT INTO `userindex` (`id`, `UserID`) VALUES
(1, '11365480442009012523465528c111'),
(2, '11365480442009020615480534u111'),
(3, '1136548044200903242111589i1111'),
(4, '11365480442009011720095341t111'),
(5, '11365480442009040419522659h111'),
(6, '11365480442009040420020592y111'),
(7, '1136548044200903242111589i1111'),
(8, '11365480442009061822082266y111'),
(9, '11365480442009071212422839y111'),
(10, '11365480442009080215113239y111'),
(11, '11365480442009090223512434r111'),
(12, '11365480442009090300213830q111'),
(13, '1136548044200910011652365e1111'),
(14, '11365480442009100617065164x111'),
(15, '11365480442009101021344833h111'),
(16, '11365480442009101214260314g111'),
(17, '11365480442009102117515464m111'),
(18, '11365480442009102923381931l111'),
(19, '11365480442009111615475394o111'),
(20, '11365480442010012714201211l111'),
(21, '11365480442010012715463060d111'),
(22, '11365480442010012716022598d111'),
(23, '11365480442010012716074646k111'),
(24, '11365480442010012716154894a111'),
(25, '11365480442010012716175429r111'),
(26, '11365480442010012716211231z111'),
(27, '11365480442010012716223895m111'),
(28, '11365480442010012716233333s111'),
(29, '11365480442010012716253293m111'),
(30, '11365480442010012716264351v111'),
(31, '1136548044201001271629322q1111'),
(32, '11365480442010012716313320z111'),
(33, '11365480442010012716475434i111'),
(34, '11365480442010012716545759s111'),
(35, '11365480442010012717223975o111'),
(36, '11365480442010012717254769f111'),
(37, '11365480442010012717424816s111'),
(38, '11365480442010012717450865v111'),
(39, '11365480442010012717455766b111'),
(40, '11365480442010012717473069p111'),
(41, '11365480442010012717495467g111'),
(42, '11365480442010012717503641z111'),
(43, '11365480442010012717562573m111'),
(44, '11365480442010012717593076a111'),
(45, '11365480442010012718021956g111'),
(46, '11365480442010012818434222w111'),
(47, '11365480442010020113212231c111'),
(48, '1136548044201002011327556a1111'),
(49, '11365480442010020113300819d111'),
(50, '11365480442010020113350352l111'),
(51, '11365480442010020113382547a111'),
(52, '11365480442010020113513625y111'),
(53, '1136548044201002011354561g1111'),
(54, '1136548044201002011444093c1111'),
(55, '11365480442010020115124656r111'),
(56, '11365480442010020218075149u111'),
(57, '1136548044201002021821077t1111'),
(58, '11365480442010020220055329h111'),
(59, '11365480442010020220450741k111'),
(60, '11365480442010020312571266p111'),
(61, '11365480442010020416542215o111'),
(62, '11365480442010020417292215y111'),
(63, '11365480442010020515320425f111'),
(64, '11365480442010020516001191j111'),
(65, '11365480442010021014072853g111'),
(66, '11365480442010021014145560d111'),
(67, '11365480442010021014225493n111'),
(68, '11365480442010021014350474s111'),
(69, '11365480442010021014350447l111'),
(70, '11365480442010021015130442i111'),
(71, '11365480442010021023451128g111'),
(72, '11365480442010021201093778b111'),
(73, '11365480442010021201391559e111'),
(74, '11365480442010021217481089y111'),
(75, '11365480442010021218080150s111'),
(76, '11365480442010021218115774y111'),
(77, '11365480442010022316594464m111'),
(78, '11365480442010022416580166e111'),
(79, '11365480442010022612540564n111'),
(80, '11365480442010022617082796s111'),
(81, '11365480442010030122410838o111'),
(82, '11365480442010030922114337z111'),
(83, '11365480442010031200432545l111'),
(84, '11365480442010031223142873n111'),
(85, '11365480442010031518252018s111'),
(86, '11365480442010031716501990s111'),
(87, '11365480442010031722460740f111'),
(88, '11365480442010031822461490l111'),
(89, '11365480442010032218400239q111'),
(90, '11365480442010032221202842j111'),
(91, '11365480442010032914055387b111'),
(92, '11365480442010033012132597f111'),
(93, '11365480442010033114522549h111'),
(94, '11365480442010040122484018i111'),
(95, '11365480442010040421064434z111'),
(96, '11365480442010040522392594x111'),
(97, '11365480442010040610250013p111'),
(98, '11365480442010040723274016k111'),
(99, '1136548044201004081323030x1111'),
(100, '11365480442010041020365885w111'),
(101, '11365480442010041109021512l111'),
(102, '11365480442010041316470386x111'),
(103, '1136548044201004131915388x1111'),
(104, '1136548044201004142348044r1111'),
(105, '11365480442010041500154441g111'),
(106, '11365480442010041513593510q111'),
(107, '11365480442010041516351818s111'),
(108, '11365480442010041601131591v111'),
(109, '11365480442010041617534852c111'),
(110, '11365480442010041821552498g111'),
(111, '11365480442010041914010199r111'),
(112, '11365480442010041915184950g111'),
(113, '11365480442010041923322134o111'),
(114, '1136548044201004201800508n1111'),
(115, '11365480442010042022050040h111'),
(116, '11365480442010042212412527y111'),
(117, '11365480442010042313141768r111'),
(118, '11365480442010042421390323x111'),
(119, '11365480442010042515322834x111'),
(120, '11365480442010042618382027x111'),
(121, '11365480442010042701340923s111'),
(122, '11365480442010042705332436t111'),
(123, '11365480442010042809320424r111'),
(124, '11365480442010042823094931z111'),
(125, '11365480442010043003132265n111'),
(126, '11365480442010043018095271v111'),
(127, '11365480442010050115121488f111'),
(128, '11365480442010050122540150o111'),
(129, '11365480442010050318303659x111'),
(130, '1136548044201005041708195w1111'),
(131, '11365480442010050417383263g111'),
(132, '11365480442010050521340096i111'),
(133, '11365480442010050612465857y111'),
(134, '11365480442010050613132339g111'),
(135, '1136548044201005061625227t1111'),
(136, '11365480442011033117595586b111'),
(137, '11365480442011033118000987e111'),
(138, '1136548044201209251636066g1111');

-- --------------------------------------------------------

--
-- Структура таблицы `usertypefield`
--

CREATE TABLE IF NOT EXISTS `usertypefield` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeFieldAlias` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `UserID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `OwnerID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '2',
  `hidden` tinyint(1) NOT NULL DEFAULT '4',
  `userGroupID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `typeFieldName` text COLLATE utf8_bin NOT NULL,
  `typeFieldPosition` int(11) NOT NULL DEFAULT '0',
  `typeFieldType` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `typeFieldHidenPlaces` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `typeFieldGroups` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `UserID` (`UserID`,`OwnerID`,`hidden`),
  KEY `typeFieldPosition` (`typeFieldPosition`),
  KEY `typeFieldAlias` (`typeFieldAlias`),
  KEY `userGroupID` (`userGroupID`),
  KEY `typeFieldType` (`typeFieldType`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=60 ;

--
-- Дамп данных таблицы `usertypefield`
--

INSERT INTO `usertypefield` (`id`, `typeFieldAlias`, `UserID`, `OwnerID`, `hidden`, `userGroupID`, `typeFieldName`, `typeFieldPosition`, `typeFieldType`, `typeFieldHidenPlaces`, `typeFieldGroups`) VALUES
(1, 'FirstName', 'root', 'root', 4, 'user', '<en>First name</en><fr>First name</fr><nl>First name</nl><ru>Имя</ru>', 4, 'input', '', ''),
(2, 'LastName', 'root', 'root', 4, 'user', '<en>Last name</en><fr>Last name</fr><nl>Last name</nl><ru>Фамилия</ru>', 6, 'input', '', ''),
(13, 'LastName', 'root', 'root', 4, 'root', '<fr>Last name</fr><en>Last name</en><ru>Last name</ru><ua>Last name</ua>', 4, 'input', '', ''),
(12, 'FirstName', 'root', 'root', 4, 'root', '<fr>First name</fr><en>First name</en><ru>First name</ru><ua>First name</ua>', 6, 'input', '', ''),
(21, 'FirstName', 'root', 'root', 4, 'admin', '<fr>11111</fr><en>First name</en><ru>First name</ru><ua>First name</ua>', 2, 'input', '', '|main|'),
(38, 'LastName', 'root', 'root', 4, 'admin', '<en>Last name</en><ru>Last name</ru><ua>Last name</ua>', 4, 'input', '', '|main|'),
(54, 'UserRating', 'root', 'root', 4, 'user', '<en>Rating</en><ru>Рейтинг</ru><ua>Рейтинг</ua>', 12, 'number', '', ''),
(57, 'Phone', 'root', 'root', 4, 'user', '<en>Phone number</en><fr>Phone number</fr><nl>Phone number</nl><ru>Номер телефона</ru>', 8, 'char', '', '|main|'),
(55, 'FirstName', 'root', 'root', 4, 'owner', '<en>First name</en><ru>Имя</ru>', 2, 'char', '', '|main|'),
(56, 'LastName', 'root', 'root', 4, 'owner', '<en>Last name</en><ru>Фамилия</ru>', 4, 'char', '', '|main|'),
(58, 'Country', 'root', 'ap1', 4, 'user', '<en>Country</en><el>Country</el><eg>Country</eg><de>Country</de><fr>Pays</fr><es>Country</es><it>Country</it><tu>Country</tu><ru>Страна</ru>', 10, 'char', '', '|main|');

-- --------------------------------------------------------

--
-- Структура таблицы `usertypeoption`
--

CREATE TABLE IF NOT EXISTS `usertypeoption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userTypeOptionAlias` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `UserID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `OwnerID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '2',
  `hidden` tinyint(1) NOT NULL DEFAULT '4',
  `userTypeFieldID` int(11) NOT NULL DEFAULT '0',
  `userTypeOptionName` text COLLATE utf8_bin NOT NULL,
  `userTypeOptionPosition` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `UserID` (`UserID`,`OwnerID`,`hidden`),
  KEY `userTypeOptionPosition` (`userTypeOptionPosition`),
  KEY `userTypeOptionAlias` (`userTypeOptionAlias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Структура таблицы `view`
--

CREATE TABLE IF NOT EXISTS `view` (
  `id` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `alias` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OwnerID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `UserID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `hidden` smallint(1) NOT NULL DEFAULT '1',
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeSaved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` text COLLATE utf8_bin,
  `accessGroups` text COLLATE utf8_bin,
  `type` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `arguments` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` text COLLATE utf8_bin NOT NULL,
  `templateID` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `isTemplate` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `alias` (`alias`),
  KEY `OwnerID` (`OwnerID`),
  KEY `UserID` (`UserID`),
  KEY `hidden` (`hidden`),
  KEY `templateID` (`templateID`),
  KEY `isTemplate` (`isTemplate`),
  KEY `timeCreated` (`timeCreated`,`timeSaved`),
  FULLTEXT KEY `accessGroups` (`accessGroups`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `view`
--

INSERT INTO `view` (`id`, `alias`, `OwnerID`, `UserID`, `hidden`, `timeCreated`, `timeSaved`, `name`, `accessGroups`, `type`, `arguments`, `description`, `templateID`, `isTemplate`) VALUES
('1', 'admin', 'root', '1', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Admin layout</fr><en>Admin layout</en>', NULL, 'admin', '', '', NULL, 'N'),
('2', 'main', 'root', '1', 1, '0000-00-00 00:00:00', '2006-06-21 17:08:17', '<fr>Main fornt-end layout</fr><en>Main fornt-end  layout</en>', NULL, 'front', '', '', NULL, 'N'),
('3', 'home', 'root', '1', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Homepage layout</en><fr>Homepage layout</fr>', NULL, 'front', '', '', NULL, 'N'),
('4', 'catalog', 'root', '1', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Category page</en><fr>Category page</fr>', NULL, 'front', '', '', NULL, 'N'),
('5', 'product', 'root', '1', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Offer page</en><fr>Offer page</fr>', NULL, 'front', '', '', NULL, 'N'),
('6', 'loginlogout', 'root', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Login/Logout process</en><fr>Login/Logout process</fr>', NULL, 'admin', '', '', NULL, 'N'),
('7', 'cart', 'root', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Shopping cart layout</en><fr>Shopping cart layout</fr>', NULL, 'front', '', '', NULL, 'N'),
('8', 'order', 'root', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Order page</en><fr>Order page</fr>', NULL, 'front', '', '', NULL, 'N'),
('9', 'request', 'root', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Request page</en><fr>Request page</fr>', NULL, 'front', '', '', NULL, 'N'),
('10', 'user', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>User area</en><fr>User area</fr>', NULL, 'front', '', '', NULL, 'N'),
('11', 'bid', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Add bid</en><fr>Add bid</fr>', NULL, 'front', '', '', NULL, 'N'),
('12', 'mailbox', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Mail box</en><fr>Mail box</fr>', NULL, 'front', '', '', NULL, 'N'),
('15', 'userlink', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>User links</en><fr>User links</fr>', NULL, 'front', '', '', NULL, 'N'),
('16', 'usercomment', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>User comments</en><fr>User comments</fr>', NULL, 'front', '', '', NULL, 'N'),
('17', 'adminhomepage', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Admin homepage</en><fr>Admin homepage</fr>', NULL, 'admin', '', '', NULL, 'N'),
('18', 'viewprofile', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>User profile</en><fr>User profile</fr>', NULL, 'front', '', '', NULL, 'N'),
('20', 'sitemap', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Sitemap layout</fr>', NULL, 'admin', '', '', NULL, 'N'),
('22', 'entrypage', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<en>Entry Page</en><fr>Entry Page</fr>', NULL, 'front', '', '', NULL, 'N'),
('24', 'synchronization', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '<fr>Synchronization layout</fr>', NULL, 'admin', '', '', NULL, 'N'),
('11365480442006042303394021t111', 'userhome', 'root', 'root', 4, '2006-04-23 03:39:40', '2006-04-23 03:46:07', '<en>User area home</en>', NULL, 'front', '', '', NULL, 'N'),
('11365480442010012419012073q111', 'payment_UPC', 'ap1', 'root', 4, '2010-01-24 19:01:20', '2010-01-24 19:01:20', '<en>payment_UPC</en>', NULL, 'front', '', '', NULL, 'N'),
('11365480442012091820125748x111', 'loginlogoutaccount', 'ksport', 'root', 4, '2012-09-18 20:12:57', '2012-09-20 15:54:59', '<ru>Section login and logout lemberg</ru><en>Section login and logout lemberg</en>', NULL, 'front', '', '', NULL, 'N'),
('11365480442012092015502064r111', 'adminpanellayout', 'ksport', 'root', 4, '2012-09-20 15:50:20', '2012-09-20 15:50:49', '<ru>Admin Panel Layout</ru><en>Admin Panel Layout</en>', NULL, 'front', '', '', NULL, 'N');

-- --------------------------------------------------------

--
-- Структура таблицы `viewbox`
--

CREATE TABLE IF NOT EXISTS `viewbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `OwnerID` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `UserID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `viewID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `boxID` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `side` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `OwnerID` (`OwnerID`),
  KEY `UserID` (`UserID`),
  KEY `viewID` (`viewID`),
  KEY `boxID` (`boxID`),
  KEY `side` (`side`),
  KEY `position` (`position`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=309 ;

--
-- Дамп данных таблицы `viewbox`
--

INSERT INTO `viewbox` (`id`, `OwnerID`, `UserID`, `viewID`, `boxID`, `side`, `position`) VALUES
(1, NULL, '1', '1', 'core.adminMenu', 'left', 2),
(28, NULL, 'root', '6', 'session.logout', 'system', 4),
(202, 'shop', 'root', '4', 'core.KeywordSearch', 'left', 8),
(199, 'shop', 'root', '7', 'core.rightSectionsBox', 'left', NULL),
(221, 'shop', 'root', '5', 'core.leftSectionsBoxFullDHTML', 'left', NULL),
(27, NULL, 'admin', '6', 'session.doLogin', 'system', 2),
(196, 'shop', 'root', '7', 'resource.requestCart', 'center', NULL),
(194, 'shop', 'root', '7', 'resource.getResource', 'center', NULL),
(192, 'shop', 'root', '7', 'resource.getResourceRelations', 'center', NULL),
(195, 'shop', 'root', '7', 'resource.getResources', 'center', NULL),
(227, 'shop', 'root', '9', 'resource.requestCart', 'center', NULL),
(228, 'shop', 'root', '9', 'core.rightSectionsBox', 'right', NULL),
(197, 'shop', 'root', '7', 'resource.shoppingCart', 'center', NULL),
(217, 'shop', 'root', '8', 'core.KeywordSearch', 'left', 8),
(216, 'shop', 'root', '8', 'resource.shoppingCart', 'center', NULL),
(185, 'root', 'root', '17', 'session.Statistics', 'center', 2),
(222, 'shop', 'root', '5', 'resource.getCategoriesTreeBoxFullDHTML', 'left', NULL),
(198, 'shop', 'root', '7', 'core.KeywordSearch', 'left', NULL),
(187, 'shop', 'root', '11', 'core.KeywordSearch', 'left', NULL),
(188, 'shop', 'root', '11', 'core.rightSectionsBox', 'left', NULL),
(189, 'shop', 'root', '11', 'resource.getCategoriesTreeBoxFullDHTML', 'left', NULL),
(68, 'root', 'root', '11', 'session.doLogin', 'system', NULL),
(75, 'root', 'root', '12', 'mail.manageMailUser', 'center', 2),
(211, 'shop', 'root', '12', 'resource.getCategoriesTreeBoxFullDHTML', 'left', 4),
(77, 'root', 'root', '12', 'core.leftSectionsBox', 'left', 2),
(200, 'shop', 'root', '7', 'resource.getCategoriesTreeBoxFullDHTML', 'left', NULL),
(118, 'root', 'root', '15', 'resource.editLink', 'right', NULL),
(252, 'root', 'root', '17', 'property.manageLastOrders', 'center', 4),
(110, 'root', 'root', '15', 'resource.getUserComments', 'center', NULL),
(111, 'root', 'root', '15', 'resource.getCategoriesTreeBox', 'left', NULL),
(112, 'root', 'root', '15', 'session.userProfile', 'center', 2),
(113, 'root', 'root', '15', 'resource.getUserLinks', 'center', NULL),
(125, 'root', 'root', '16', 'resource.editComment', 'right', NULL),
(121, 'root', 'root', '16', 'resource.getUserComments', 'center', NULL),
(122, 'root', 'root', '16', 'resource.getCategoriesTreeBox', 'left', NULL),
(123, 'root', 'root', '16', 'session.userProfile', 'center', 2),
(124, 'root', 'root', '16', 'resource.getUserLinks', 'center', NULL),
(128, 'root', 'root', '17', 'core.adminMenu', 'left', 2),
(129, 'root', 'root', '18', 'session.usersProfile', 'center', NULL),
(207, 'shop', 'root', '19', 'core.rightSectionsBox', 'left', 6),
(206, 'shop', 'root', '19', 'core.KeywordSearch', 'left', 10),
(133, 'root', 'root', '19', 'banner.getLeftBanners', 'left', 8),
(208, 'shop', 'root', '19', 'resource.getCategoriesTreeBoxFullDHTML', 'left', 4),
(135, 'root', 'root', '19', 'mail.contactForm', 'center', NULL),
(138, 'root', 'root', '20', 'core.adminMenu', 'left', NULL),
(137, 'root', 'root', '20', 'core.manageSections', 'center', 2),
(149, 'root', 'root', '22', 'resource.getResourceFeaturedType1', 'left', NULL),
(150, 'root', 'root', '22', 'resource.getResourceFeaturedType2', 'center', NULL),
(151, 'root', 'root', '22', 'resource.getResourceFeaturedType3', 'right', NULL),
(186, 'shop', 'root', '23', 'resource.getCategoriesTreeBoxFullDHTML', 'left', 4),
(157, 'root', 'root', '23', 'core.leftSectionsBox', 'left', 2),
(159, 'root', 'root', '23', 'resource.getResource', 'center', NULL),
(190, 'shop', 'root', '11', 'core.leftSectionsBoxFullDHTML', 'left', NULL),
(171, 'root', 'root', '24', 'core.adminMenu', 'left', NULL),
(172, 'root', 'root', '24', 'core.synchronizeLangFieldsClient', 'center', NULL),
(201, 'shop', 'root', '7', 'core.leftSectionsBoxFullDHTML', 'left', NULL),
(203, 'shop', 'root', '4', 'core.rightSectionsBox', 'left', 6),
(204, 'shop', 'root', '4', 'resource.getCategoriesTreeBoxFullDHTML', 'left', 4),
(205, 'shop', 'root', '4', 'core.leftSectionsBoxFullDHTML', 'left', 2),
(209, 'shop', 'root', '19', 'core.leftSectionsBoxFullDHTML', 'left', 2),
(218, 'shop', 'root', '8', 'core.rightSectionsBox', 'left', 6),
(219, 'shop', 'root', '8', 'resource.getCategoriesTreeBoxFullDHTML', 'left', 4),
(220, 'shop', 'root', '8', 'core.leftSectionsBoxFullDHTML', 'left', 2),
(223, 'shop', 'root', '5', 'core.rightSectionsBox', 'left', NULL),
(224, 'shop', 'root', '5', 'core.KeywordSearch', 'left', NULL),
(225, 'shop', 'root', '5', 'resource.getResource', 'center', NULL),
(226, 'shop', 'root', '5', 'resource.getResourceRelations', 'center', NULL),
(229, 'shop', 'root', '9', 'resource.getCategoriesTreeBoxFullDHTML', 'left', NULL),
(292, 'root', 'root', '11365480442006042303394021t111', 'core.editOwners', 'center', 4),
(296, 'root', 'root', '2', 'core.emptyBox', 'system', NULL),
(293, 'root', 'root', '11365480442006042303394021t111', 'submission.editWebSites', 'center', 6),
(297, 'root', 'root', '3', 'core.emptyBox', 'system', NULL),
(302, 's46', 'root', '10', 'core.emptyBox', 'top', NULL),
(303, 'ap1', 'root', '11365480442010012419012073q111', 'core.emptyBox', 'top', NULL),
(304, 'ap1', 'root', '12', 'submission.editWebLinks', '', NULL),
(305, 'ksport', 'root', '11365480442012091820125748x111', 'test.manageDoLogin', 'system', 4),
(306, 'ksport', 'root', '11365480442012091820125748x111', 'test.manageLogout', 'system', 2),
(307, 'ksport', 'root', '11365480442012092015502064r111', 'adminpanel.manageMyHeader', 'system', NULL),
(308, 'ksport', 'root', '11365480442012092015502064r111', 'adminpanel.manageMyhome', 'system', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `website`
--

CREATE TABLE IF NOT EXISTS `website` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `UserID` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `OwnerID` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '1',
  `timeCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeSaved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeStart` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeEnd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdIP` varchar(31) NOT NULL DEFAULT '',
  `savedIP` varchar(31) NOT NULL DEFAULT '',
  `status` varchar(10) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '',
  `actionType` varchar(30) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `postCode` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `address` text NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `exchangeCode` text NOT NULL,
  `content` text NOT NULL,
  `keywordsShort` varchar(255) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `submissionInfo` text NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '',
  `linksPageURL` varchar(200) NOT NULL DEFAULT '',
  `category` int(11) unsigned NOT NULL DEFAULT '0',
  `pageRank` int(2) unsigned NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `firstName` varchar(100) NOT NULL DEFAULT '',
  `lastName` varchar(100) NOT NULL DEFAULT '',
  `userName` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `exchangeType` char(1) NOT NULL DEFAULT '',
  `exchangeCategories` varchar(255) NOT NULL DEFAULT '',
  `exchangeLanguages` varchar(255) NOT NULL DEFAULT '',
  `exchangePRType` char(1) NOT NULL DEFAULT '',
  `RSSURL` varchar(150) NOT NULL DEFAULT '',
  `productsRSSURL` varchar(150) NOT NULL DEFAULT '',
  `minPrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `maxPrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(3) NOT NULL DEFAULT '',
  `priceComments` varchar(150) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `imagePreview` varchar(255) NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  `featuredOptions` varchar(255) NOT NULL DEFAULT '',
  `accessType` varchar(30) NOT NULL DEFAULT '',
  `paymentType` varchar(30) NOT NULL DEFAULT '',
  `paymentStatus` varchar(30) NOT NULL DEFAULT '',
  `paymentTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` float(6,2) NOT NULL DEFAULT '0.00',
  `rates` int(11) NOT NULL DEFAULT '0',
  `paidRate` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `prints` int(11) NOT NULL DEFAULT '0',
  `reviews` int(11) NOT NULL DEFAULT '0',
  `reviewsRate` tinyint(5) NOT NULL DEFAULT '0',
  `comments` text NOT NULL,
  `language` varchar(2) NOT NULL DEFAULT '',
  `encoding` varchar(20) NOT NULL DEFAULT '',
  `GMT` varchar(3) NOT NULL DEFAULT '',
  `submissionURL` varchar(200) NOT NULL DEFAULT '',
  `formDefinition` text NOT NULL,
  `checkPeriod` int(3) NOT NULL DEFAULT '0',
  `checkedTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nextCheckTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isFeatured1` char(1) NOT NULL DEFAULT '',
  `isFeatured2` char(1) NOT NULL DEFAULT '',
  `showOnAllOwners` char(1) NOT NULL DEFAULT '',
  `isAdminActive` char(1) NOT NULL DEFAULT '',
  `isBackLinkOk` char(1) NOT NULL DEFAULT '',
  `numberOfBackLinks` int(11) NOT NULL DEFAULT '0',
  `backLinkID` int(11) NOT NULL DEFAULT '0',
  `backLinkType` tinyint(1) NOT NULL DEFAULT '0',
  `isDuplicatedByAdmin` char(1) NOT NULL DEFAULT '',
  `internalLinks` text NOT NULL,
  `isPartner` char(1) NOT NULL DEFAULT 'N',
  `partnerLink` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `type` (`type`),
  KEY `location` (`location`),
  KEY `title` (`title`),
  KEY `price` (`price`),
  KEY `position` (`position`),
  KEY `reviewsRate` (`reviewsRate`,`language`),
  KEY `actionType` (`actionType`),
  KEY `timeCreated` (`timeCreated`),
  KEY `timeSaved` (`timeSaved`),
  KEY `timeStart` (`timeStart`),
  KEY `timeEnd` (`timeEnd`),
  KEY `postCode` (`postCode`),
  KEY `domain` (`domain`),
  KEY `UserID` (`UserID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `hidden` (`hidden`),
  KEY `category` (`category`),
  KEY `exchangeType` (`exchangeType`),
  KEY `exchangeCategories` (`exchangeCategories`),
  KEY `exchangeLanguages` (`exchangeLanguages`),
  KEY `exchangePRType` (`exchangePRType`),
  KEY `RSSURL` (`RSSURL`,`productsRSSURL`),
  KEY `isFeatured1` (`isFeatured1`),
  KEY `isFeatured2` (`isFeatured2`),
  KEY `showOnAllOwners` (`showOnAllOwners`),
  KEY `isAdminActive` (`isAdminActive`),
  KEY `isBackLinkOk` (`isBackLinkOk`),
  KEY `numberOfBackLinks` (`numberOfBackLinks`),
  KEY `backLinkID` (`backLinkID`),
  KEY `backLinkType` (`backLinkType`),
  KEY `isDuplicatedByAdmin` (`isDuplicatedByAdmin`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `title_2` (`title`),
  FULLTEXT KEY `intro` (`intro`),
  FULLTEXT KEY `location_2` (`location`),
  FULLTEXT KEY `comments` (`comments`),
  FULLTEXT KEY `url` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `websiteowners`
--

CREATE TABLE IF NOT EXISTS `websiteowners` (
  `webSiteID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group` varchar(30) NOT NULL DEFAULT '',
  KEY `webSiteID` (`webSiteID`),
  KEY `group` (`group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

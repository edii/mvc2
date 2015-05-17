-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Час створення: Трв 17 2015 р., 17:12
-- Версія сервера: 5.5.23
-- Версія PHP: 5.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База даних: `mvc2`
--
CREATE DATABASE IF NOT EXISTS `mvc2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mvc2`;

-- --------------------------------------------------------

--
-- Структура таблиці `antispamcode`
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
-- Дамп даних таблиці `antispamcode`
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
-- Структура таблиці `backuplog`
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
-- Дамп даних таблиці `backuplog`
--

INSERT INTO `backuplog` (`id`, `OwnerID`, `UserID`, `timeCreated`, `type`, `fileName`, `path`, `fileSize`) VALUES
(6, 'root', 'root', '2010-09-29 17:56:20', 'full', '2010_09_29_17_5620_backup.tar', 'http://bestmoments.com.ua/backups/', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `cache`
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
-- Структура таблиці `click`
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
-- Структура таблиці `langfield`
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
-- Дамп даних таблиці `langfield`
--

INSERT INTO `langfield` (`id`, `timeSaved`, `code`, `UserID`, `OwnerID`, `hidden`, `value`, `fileDescription`, `fileValue`, `languages`, `lockMode`) VALUES
(1, '2009-09-06 20:55:08', '-add', '11365480442009090300213830q111', '', 1, 'Добавить', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблиці `language`
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
-- Дамп даних таблиці `language`
--

INSERT INTO `language` (`id`, `hidden`, `default`, `code`, `name`, `icon`, `iconActive`, `position`, `locale`) VALUES
(6, 0, 1, 'ru', 0x3c72753ed0a0d183d181d181d0bad0b8d0b93c2f72753e3c656e3ed0a0d183d181d181d0bad0b8d0b93c2f656e3e, '', '', 2, 'ru_ru'),
(34, 0, 0, 'en', 0x3c72753ed090d0bdd0b3d0bbd0b8d0b9d181d0bad0b8d0b93c2f72753e3c656e3ed090d0bdd0b3d0bbd0b8d0b9d181d0bad0b8d0b93c2f656e3e, '', '', 4, 'en_en');

-- --------------------------------------------------------

--
-- Структура таблиці `layout`
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
-- Дамп даних таблиці `layout`
--

INSERT INTO `layout` (`id`, `code`, `UserID`, `OwnerID`, `hidden`, `timeCreated`, `timeSaved`, `group`, `name`, `image`, `preview`, `icon`, `description`, `position`, `comments`) VALUES
(3, 'dark', 'root', 'root', 1, '2009-01-25 12:29:46', '2009-01-25 12:29:46', 'main', 'Темно-серый', '', '', '', '', 0, ''),
(2, 'default', 'root', 'root', 1, '2009-01-25 12:23:43', '2009-01-25 12:23:43', 'main', 'Дизайн по умолчанию', '', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблиці `note`
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
-- Дамп даних таблиці `note`
--

INSERT INTO `note` (`id`, `UserID`, `OwnerID`, `hidden`, `timeCreated`, `timeSaved`, `adminID`, `createdIP`, `creatorID`, `creatorCode`, `type`, `accessType`, `content`, `contactValue`, `contactType`) VALUES
(1, '11365480442009012415325321p111', 'root', 1, '2009-01-25 14:43:12', '2009-01-25 14:43:12', '', '', '17', 'website', '', 'C', 0xd0b2d184d18bd0b2d18b0d0ad0b2d184d18bd0b2d18bd184, '', ''),
(2, '11365480442009012415325321p111', 'root', 1, '2009-01-25 14:43:16', '2009-01-25 14:43:16', '', '', '17', 'website', '', 'C', 0xd184d18bd0b2d184d18bd0b20d0ad184d18bd0b2d184d18bd0b2, '', ''),
(3, '11365480442009012415325321p111', 'root', 1, '2009-01-25 14:45:35', '2009-01-25 14:45:35', '', '', '17', 'website', '', 'C', 0xd184d18bd0b2d184d18bd0b20d0ad184d18bd0b2d184d18bd0b2, '', ''),
(4, '11365480442009012415325321p111', 'root', 1, '2009-01-25 14:51:17', '2009-01-25 14:51:17', '', '', '17', 'owner', '', 'C', 0xd184d18bd0b2d184d18bd0b220d18bd184d0b0d184d18b, '', ''),
(5, '11365480442009012415325321p111', 'root', 1, '2009-01-25 14:51:25', '2009-01-25 14:51:25', '', '', '17', 'owner', '', 'C', 0xd184d0b220d184d18bd0b2d184d0b2d18420d0b2d184d18b, '', ''),
(6, '11365480442009012415325321p111', 'root', 1, '2009-01-25 14:53:36', '2009-01-25 14:53:36', '', '', '17', 'owner', '', 'C', 0xd0b5d0b5d0b5d0b5d0b5, '', ''),
(8, '11365480442009012523465528c111', 'root', 1, '2009-04-06 01:50:25', '2009-04-06 01:50:25', '', '', '17', 'owner', '', 'C', 0x6c6b6b6e6a6c6a6b, '', ''),
(9, '11365480442009012523465528c111', 'root', 1, '2009-04-08 01:36:52', '2009-04-08 01:36:52', '', '', '32', 'owner', '', 'C', 0xd09ad0bbd18ed187d0b5d0b2d18bd0b520d181d0bbd0bed0b2d0b020d0bed18220d0afd0bdd0b4d0b5d0bad1810d0a0d0ad0bdd0b0d180d0bed0b4d0bdd18bd0b520d0bbd0b5d187d0b5d0bdd0b8d18f202020093136353338390d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093130343234340d0ad0bdd0b0d180d0bed0b4d0bdd18bd0b520d0bcd0b5d182d0bed0b4d18b20d0bbd0b5d187d0b5d0bdd0b8d18f200932353131300d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d180d0bed0b4d0bdd0bed0b920d0bcd0b5d0b4d0b8d186d0b8d0bdd0bed0b92009393538380d0ad0bdd0b0d180d0bed0b4d0bdd18bd0b520d181d0bfd0bed181d0bed0b1d18b20d0bbd0b5d187d0b5d0bdd0b8d18f2009363832360d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520d0b3d0b0d0b9d0bcd0bed180d0b8d182d0b02009333338390d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bcd0b8d0bed0bcd18b20d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009333234310d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520d0bfd180d0bed181d182d0b0d182d0b8d182d0b02009333030380d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520d0b3d0b5d0bcd0bed180d180d0bed18f2009323931340d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520d0bfd181d0bed180d0b8d0b0d0b7d0b02009323637350d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520d0bcd0bed0bbd0bed187d0bdd0b8d186d18b2009323633340d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b3d0b0d0b9d0bcd0bed180d0b8d182d0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009323539390d0ad0bcd0b8d0bed0bcd0b020d0bcd0b0d182d0bad0b820d0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009323539350d0ad0bdd0b0d180d0bed0b4d0bdd18bd0b520d180d0b5d186d0b5d0bfd182d18b20d0bbd0b5d187d0b5d0bdd0b8d18f2009323233340d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b2d0bed0bbd0bed18120d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009323232340d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bad0b8d181d182d18b20d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009323137330d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bfd180d0bed181d182d0b0d182d0b8d182d0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009323038360d0ad186d0b8d181d182d0b8d18220d0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009323033340d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b3d0b5d0bcd0bed180d180d0bed18f20d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313936370d0ad0bfd181d0bed180d0b8d0b0d0b720d0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313930340d0ad0bcd0b0d181d182d0bed0bfd0b0d182d0b8d18f20d0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313731390d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d189d0b8d182d0bed0b2d0b8d0b4d0bdd0bed0b920d0b6d0b5d0bbd0b5d0b7d18b20d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313639350d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bcd0bed0bbd0bed187d0bdd0b8d186d18b20d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313631320d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d181d0bcd0bed180d0bad0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313537310d0ad18dd0bdd0b4d0bed0bcd0b5d182d180d0b8d0bed0b720d0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313536300d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b1d180d0bed0bdd185d0b8d182d0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313532320d0ad0bdd0b0d180d0bed0b4d0bdd18bd0b520d181d180d0b5d0b4d181d182d0b2d0b020d0bbd0b5d187d0b5d0bdd0b8d18f20d0bad0b0d188d0bbd18f2009313438370d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d180d0b0d0bad0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313437320d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b3d180d0b8d0b1d0bad0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313233340d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b4d0b8d0b0d0b1d0b5d182d0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313232320d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d181d183d181d182d0b0d0b2d0bed0b220d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313231390d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bfd0b5d187d0b5d0bdd0b820d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313231300d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520d0b2d0bed0bbd0bed1812009313139350d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b3d0b5d180d0bfd0b5d181d0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313137320d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520d0bad0b8d181d182d18b2009313137320d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520d0bcd0b8d0bed0bcd18b2009313135300d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b0d0bbd0bad0bed0b3d0bed0bbd0b8d0b7d0bcd0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313132390d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b3d180d18bd0b6d0b820d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313036350d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bad0b8d181d182d18b20d18fd0b8d187d0bdd0b8d0bad0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313033330d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bed181d182d0b5d0bed185d0bed0bdd0b4d180d0bed0b7d0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093939370d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bfd0bed187d0b5d0ba20d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093937330d0ad0b2d18bd0bfd0b0d0b4d0b5d0bdd0b8d0b520d0b2d0bed0bbd0bed18120d0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093935370d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520d180d0b0d0bad0b020093935360d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d181d0b0d185d0b0d180d0bdd0bed0b3d0be20d0b4d0b8d0b0d0b1d0b5d182d0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093933390d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bfd0bed0bbd0b8d0bfd0bed0b220d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093933360d0ad0b0d0bdd0b3d0b8d0bdd0b020d0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093933320d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bfd0b0d0bdd0bad180d0b5d0b0d182d0b8d182d0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093930350d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b6d0b5d0bbd183d0b4d0bad0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093839370d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bfd0bed0b4d0b6d0b5d0bbd183d0b4d0bed187d0bdd0bed0b920d0b6d0b5d0bbd0b5d0b7d18b20d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093836310d0ad186d0b8d181d182d0b8d18220d0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520093835320d0a0d0ad0bdd0b0d180d0bed0b4d0bdd18bd0b520d0bbd0b5d187d0b5d0bdd0b8d18f202020093136353338390d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093130343234340d0ad0bdd0b0d180d0bed0b4d0bdd18bd0b520d0bcd0b5d182d0bed0b4d18b20d0bbd0b5d187d0b5d0bdd0b8d18f200932353131300d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d180d0bed0b4d0bdd0bed0b920d0bcd0b5d0b4d0b8d186d0b8d0bdd0bed0b92009393538380d0ad0bdd0b0d180d0bed0b4d0bdd18bd0b520d181d0bfd0bed181d0bed0b1d18b20d0bbd0b5d187d0b5d0bdd0b8d18f2009363832360d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520d0b3d0b0d0b9d0bcd0bed180d0b8d182d0b02009333338390d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bcd0b8d0bed0bcd18b20d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009333234310d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520d0bfd180d0bed181d182d0b0d182d0b8d182d0b02009333030380d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520d0b3d0b5d0bcd0bed180d180d0bed18f2009323931340d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520d0bfd181d0bed180d0b8d0b0d0b7d0b02009323637350d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520d0bcd0bed0bbd0bed187d0bdd0b8d186d18b2009323633340d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b3d0b0d0b9d0bcd0bed180d0b8d182d0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009323539390d0ad0bcd0b8d0bed0bcd0b020d0bcd0b0d182d0bad0b820d0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009323539350d0ad0bdd0b0d180d0bed0b4d0bdd18bd0b520d180d0b5d186d0b5d0bfd182d18b20d0bbd0b5d187d0b5d0bdd0b8d18f2009323233340d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b2d0bed0bbd0bed18120d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009323232340d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bad0b8d181d182d18b20d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009323137330d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bfd180d0bed181d182d0b0d182d0b8d182d0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009323038360d0ad186d0b8d181d182d0b8d18220d0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009323033340d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b3d0b5d0bcd0bed180d180d0bed18f20d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313936370d0ad0bfd181d0bed180d0b8d0b0d0b720d0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313930340d0ad0bcd0b0d181d182d0bed0bfd0b0d182d0b8d18f20d0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313731390d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d189d0b8d182d0bed0b2d0b8d0b4d0bdd0bed0b920d0b6d0b5d0bbd0b5d0b7d18b20d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313639350d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bcd0bed0bbd0bed187d0bdd0b8d186d18b20d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313631320d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d181d0bcd0bed180d0bad0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313537310d0ad18dd0bdd0b4d0bed0bcd0b5d182d180d0b8d0bed0b720d0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313536300d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b1d180d0bed0bdd185d0b8d182d0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313532320d0ad0bdd0b0d180d0bed0b4d0bdd18bd0b520d181d180d0b5d0b4d181d182d0b2d0b020d0bbd0b5d187d0b5d0bdd0b8d18f20d0bad0b0d188d0bbd18f2009313438370d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d180d0b0d0bad0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313437320d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b3d180d0b8d0b1d0bad0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313233340d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b4d0b8d0b0d0b1d0b5d182d0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313232320d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d181d183d181d182d0b0d0b2d0bed0b220d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313231390d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bfd0b5d187d0b5d0bdd0b820d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313231300d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520d0b2d0bed0bbd0bed1812009313139350d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b3d0b5d180d0bfd0b5d181d0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313137320d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520d0bad0b8d181d182d18b2009313137320d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520d0bcd0b8d0bed0bcd18b2009313135300d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b0d0bbd0bad0bed0b3d0bed0bbd0b8d0b7d0bcd0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313132390d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b3d180d18bd0b6d0b820d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313036350d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bad0b8d181d182d18b20d18fd0b8d187d0bdd0b8d0bad0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b82009313033330d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bed181d182d0b5d0bed185d0bed0bdd0b4d180d0bed0b7d0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093939370d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bfd0bed187d0b5d0ba20d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093937330d0ad0b2d18bd0bfd0b0d0b4d0b5d0bdd0b8d0b520d0b2d0bed0bbd0bed18120d0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093935370d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520d180d0b0d0bad0b020093935360d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d181d0b0d185d0b0d180d0bdd0bed0b3d0be20d0b4d0b8d0b0d0b1d0b5d182d0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093933390d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bfd0bed0bbd0b8d0bfd0bed0b220d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093933360d0ad0b0d0bdd0b3d0b8d0bdd0b020d0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093933320d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bfd0b0d0bdd0bad180d0b5d0b0d182d0b8d182d0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093930350d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b6d0b5d0bbd183d0b4d0bad0b020d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093839370d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bfd0bed0b4d0b6d0b5d0bbd183d0b4d0bed187d0bdd0bed0b920d0b6d0b5d0bbd0b5d0b7d18b20d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b820093836310d0ad186d0b8d181d182d0b8d18220d0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b520093835320d0a0d0a, '', ''),
(10, '11365480442009012523465528c111', 'root', 1, '2009-04-08 01:41:54', '2009-04-08 01:41:54', '', '', '32', 'owner', '', 'C', 0xd0a1d0bbd0bed0b2d0b020d0bfd0be20476f6f676c650d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b5202d20352034303009200d0ad0bdd0b0d180d0bed0b4d0bdd0b0d18f20d0bcd0b5d0b4d0b8d186d0b8d0bdd0b020d0bbd0b5d187d0b5d0bdd0b8d0b5202d20312039303009200d0ad0bdd0b0d180d0bed0b4d0bdd18bd0b520d0bbd0b5d187d0b5d0bdd0b8d0b5202d2032203430300d0ad0bdd0b0d180d0bed0b4d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d18f202d2033323009200d0ad0bdd0b0d180d0bed0b4d0bdd18bd0b520d0bbd0b5d187d0b5d0bdd0b8d18f202d2031322031303009200d0ad0bdd0b0d180d0bed0b4d0bdd0b0d18f20d0bcd0b5d0b4d0b8d186d0b8d0bdd0b020d180d0b5d186d0b5d0bfd182d18b202d203339300d0ad0bdd0b0d180d0bed0b4d0bdd0b0d18f20d0bcd0b5d0b4d0b8d186d0b8d0bdd0b0202d2032372031303009200d0ad0bdd0b0d180d0bed0b4d0bdd18bd0b520d180d0b5d186d0b5d0bfd182d18b20d0bbd0b5d187d0b5d0bdd0b8d0b5202d20333230090d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bfd0b5d187d0b5d0bdd0b820d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b8202d203131300d0ad0bbd0b5d187d0b5d0bdd0b8d18f20d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b8202d203131300d0ad0bdd0b0d180d0bed0b4d0bdd18bd0b520d180d0b5d186d0b5d0bfd182d18b20d0bbd0b5d187d0b5d0bdd0b8d18f202d20313030300d0ad0bdd0b0d180d0bed0b4d0bdd18bd0b520d181d180d0b5d0b4d181d182d0b2d0b020d0bbd0b5d187d0b5d0bdd0b8d0b5202d20313330300d0ad0bdd0b0d180d0bed0b4d0bdd18bd0b520d181d180d0b5d0b4d181d182d0b2d0b020d0bbd0b5d187d0b5d0bdd0b8d18f202d20343430300d0ad0bdd0b0d180d0bed0b4d0bdd18bd0b520d181d180d0b5d0b4d181d182d0b2d0b020d0bfd180d0b820d0bbd0b5d187d0b5d0bdd0b8d0b8202d203231300d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bdd0b0d180d0bed0b4d0bdd18bd0b520d0bcd0b5d182d0bed0b4d18b202d203732300d0ad0bdd0b0d180d0bed0b4d0bdd18bd0b520d181d180d0b5d0b4d181d182d0b2d0b020d0b4d0bbd18f20d0bbd0b5d187d0b5d0bdd0b8d18f202d203438300d0ad0bdd0b0d180d0bed0b4d0bdd18bd0b520d181d0bfd0bed181d0bed0b1d18b20d0bbd0b5d187d0b5d0bdd0b8d18f202d20313630300d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b2d0bed0bbd0bed18120d0bdd0b0d180d0bed0b4d0bdd18bd0bcd0b820d181d180d0b5d0b4d181d182d0b2d0b0d0bcd0b8202d203137300d0ad0b3d0b0d0b9d0bcd0bed180d0b8d18220d0bbd0b5d187d0b5d0bdd0b8d0b5202d20323930300d0ad0bfd180d0bed181d182d0b0d182d0b8d18220d0bbd0b5d187d0b5d0bdd0b8d0b5202d20323430300d0ad0bcd0bed0bbd0bed187d0bdd0b8d186d0b020d0bbd0b5d187d0b5d0bdd0b8d0b5202d20323430300d0ad0bcd0b5d0b4d0b8d186d0b8d0bdd0b020d0bbd0b5d187d0b5d0bdd0b8d0b5202d20333630300d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0bfd180d0bed184d0b8d0bbd0b0d0bad182d0b8d0bad0b0202d20323430300d0ad0bbd0b5d187d0b5d0bdd0b8d0b520d0b1d0b5d180d0b5d0bcd0b5d0bdd0bdd0bed181d182d18c202d2031303030, '', ''),
(11, '11365480442009012523465528c111', 'root', 1, '2009-04-15 02:33:49', '2009-04-15 02:33:49', '', '', '38', 'owner', '', 'C', 0xd0a1d182d0b0d182d18cd0b82c0d0a0d0a687474703a2f2f7777772e6f627a6f722d74762e72752f0d0a687474703a2f2f7777772e74766d61737465722e72752f6c696e6b2e68746d6c0d0a0d0a, '', ''),
(12, '11365480442009012523465528c111', 'root', 1, '2009-04-15 02:39:24', '2009-04-15 02:39:24', '', '', '38', 'owner', '', 'C', 0xd0b6d0ba20d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d18b2032372031303009200d0a6c636420d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed18020313820313030090d0ad180d0b5d0bcd0bed0bdd18220d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d0bed0b22020313420383030090d0ad182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d18b206c6364203134203830300d0ad182d0b5d0bbd0b5d0b2d0b8d0b7d0bed18020d0bad183d0bfd0b8d182d18c2039203930300d0a73616d73756e6720d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d18b2036203630300d0ad0bfd0bbd0b0d0b7d0bcd0b5d0bdd0bdd18bd0b920d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed1802036203630300d0a7068696c69707320d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d18b20352034303009200d0ad0b2d18bd0b1d0bed18020d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d0b02033203630300d0a6c6720d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d18b2032203430300d0a70616e61736f6e696320d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d18b20322034303009200d0a736861727020d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d18b20203120393030090d0a746f736869626120d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d18b20312039303009200d0ad0bfd180d0bed0b4d0b0d0b6d0b020d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d0bed0b22031203930300d0ad182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d18b20d186d0b5d0bdd18b203120393030090d0ad182d0b5d181d18220d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d0bed0b22031203930300d0a333220d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d18b203120363030090d0ad182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d18b20d0bad183d0bfd0b8d182d18c203120363030090d0a6c636420d0b8d0bbd0b820d0bfd0bbd0b0d0b7d0bcd0b020312033303009200d0ad0b2d18bd0b1d0bed18020d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d0b020d0b6d0ba093120333030090d0ad0bed0b1d0b7d0bed18020d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d0bed0b220313330300d0ad0bed182d0b7d18bd0b2d18b20d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d18b20383830090d0ad0bfd0bbd0b0d0b7d0bcd0b020d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed1802038383009200d0ad181d180d0b0d0b2d0bdd0b5d0bdd0b8d0b520d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d0bed0b220383830090d0ad184d0bed180d183d0bc20d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d18b20383830090d0ad0bfd0bbd0b0d0b7d0bcd0b5d0bdd0bdd18bd0b920d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed1802070616e61736f6e69632037323009200d0a6a766320d182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d18b20353930090d0ad182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d18b20d0bed0b1d0b7d0bed180203539300d0ad182d0b5d0bbd0b5d0b2d0b8d0b7d0bed180d18b20d0bfd180d0bed0b4d0b0d0b6d0b020353930090d0a20090d0a200d0a20, '', ''),
(13, '11365480442009012523465528c111', 'root', 1, '2009-04-25 19:02:51', '2009-04-25 19:02:51', '', '', '34', 'owner', '', 'C', 0xd09ed0b1d0b7d0bed18020d0bfd0b0d180d182d0bdd0b5d180d0bed0ba3a0d0a687474703a2f2f7777772e7061727470726f672e72752f0d0a687474703a2f2f616c6c70702e72752f6469722f0d0a, '', ''),
(14, '11365480442009012523465528c111', 'root', 1, '2009-04-25 19:16:58', '2009-04-25 19:16:58', '', '', '34', 'owner', '', 'C', 0x687474703a2f2f65696e766573742e72752f, '', ''),
(15, '11365480442009012523465528c111', 'root', 1, '2009-05-07 00:33:42', '2009-05-07 00:33:42', '', '', '15', 'owner', '', 'C', 0x6d796469676974616c6c6966652e696e666f202d20d0bed182d0bbd0b8d187d0bdd0be20d181d0b4d0b5d0bbd0b0d0bd20d181d0b0d0b9d18220d0bad0b0d0ba20d0b1d0bbd0bed0b320d0bed0b1d0b7d0bed180d0bed0b2, '', ''),
(17, '11365480442009012523465528c111', 'root', 1, '2009-05-14 23:32:34', '2009-05-14 23:32:34', '', '', '39', 'owner', '', 'C', 0x6f6e6c696e65677572752e7275, '', ''),
(18, '11365480442009012523465528c111', 'root', 1, '2009-05-14 23:33:54', '2009-05-14 23:33:54', '', '', '39', 'owner', '', 'C', 0x687474703a2f2f666c6573682e72752f, '', ''),
(20, 'root', 's46', 1, '2009-09-15 09:29:40', '2009-09-15 09:29:40', 'root', '', '11365480442009091410593826e111', 'customer', '', 'C', 0x74657374207465737420636f6d6d656e7473, '', ''),
(21, 'root', 's46', 1, '2009-09-15 09:43:14', '2009-09-15 09:43:14', 'root', '', '1136548044200909141005508d1111', 'customer', '', 'C', 0x64736665, '', ''),
(22, 'root', 's46', 1, '2009-09-15 09:44:02', '2009-09-15 09:44:02', 'root', '', '1136548044200909141005508d1111', 'customer', '', 'C', 0x64736665, '', ''),
(23, 'root', 's46', 1, '2009-09-16 23:41:16', '2009-09-16 23:41:16', 'root', '', '11365480442009091410593826e111', 'customer', '', 'C', 0x73646773, '', ''),
(24, 'root', 's46', 1, '2009-09-16 23:42:04', '2009-09-16 23:42:04', 'root', '', '11365480442009091410593826e111', 'customer', '', 'C', 0x73646773, '', ''),
(25, 'root', 's46', 1, '2009-09-16 23:43:18', '2009-09-16 23:43:18', 'root', '', '11365480442009091410593826e111', 'customer', '', 'C', 0x73646773, '', '');

-- --------------------------------------------------------

--
-- Структура таблиці `owner`
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
-- Дамп даних таблиці `owner`
--

INSERT INTO `owner` (`OwnerID`, `UserID`, `timeCreated`, `timeSaved`, `code`, `hidden`, `status`, `type`, `group`, `paymentType`, `paymentStatus`, `paymentTime`, `domain`, `default`, `style`, `location`, `currencies`, `GMT`, `image`, `icon`, `imagePreview`, `CSSURL`, `counterCode`, `adCodeActivation`, `numberOfBackLinks`, `language`, `mail`, `administratorsEmails`, `supportEmail`) VALUES
(1, 'root', '0000-00-00 00:00:00', '2014-07-22 14:22:55', 'root', 0, 1, 'companysite', '', '', '', '0000-00-00 00:00:00', 'smartel.dev', 1, 'lemberg', 0, '|UAH|', 0, '', '', '', 'http://', '', '', 0, 'ru', 'edii87shadow@gmail.com', 'edii87shadow@gmail.com', '');

-- --------------------------------------------------------

--
-- Структура таблиці `owneralias`
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
-- Дамп даних таблиці `owneralias`
--

INSERT INTO `owneralias` (`id`, `UserID`, `timeCreated`, `hidden`, `OwnerID`, `domain`, `aliasLanguage`, `aliasURLFormat`) VALUES
(1, 'root', '2010-07-04 21:37:58', 1, 'bestmoments', 'eng.bestmoments.com.ua', 'en', 'nowww'),
(2, 'root', '2011-01-09 22:25:28', 1, 'bestmoments', 'ukr.bestmoments.com.ua', 'ua', 'nowww'),
(3, 'root', '2012-07-17 10:23:48', 1, 'ksport', 'lembergcoach.com', 'en', 'nowww'),
(4, 'root', '2012-07-17 10:24:18', 1, 'ksport', 'lembergcoach.ru', 'ru', 'nowww');

-- --------------------------------------------------------

--
-- Структура таблиці `ownerbox`
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
-- Дамп даних таблиці `ownerbox`
--

INSERT INTO `ownerbox` (`id`, `OwnerID`, `timeCreated`, `timeSaved`, `hidden`, `name`, `description`, `code`, `optionsEditorBoxCode`, `groups`, `sides`, `comments`, `position`, `systemFunctions`) VALUES
(11, 'root', '2009-09-05 13:49:27', '2010-05-10 21:22:28', 1, '<en>News</en><fr>News</fr><nl>News</nl><ru>Новости</ru>', '', 'news.getNewsArticlesNews', '', '|companysite|eshop|reagency|reportal|bizdirectory|cardealer|websolution|', '|center|', '', 30, 0x7c6e6577732e4e65777341727469636c65734e6577737c),
(13, 'root', '2009-09-05 13:51:32', '2010-05-10 21:22:28', 1, '<en>Сontact form</en><el>Сontact form</el><eg>Сontact form</eg><de>Сontact form</de><fr>Сontact form</fr><es>Сontact form</es><it>Сontact form</it><tu>Сontact form</tu><ru>Контактная форма</ru>', '', 'mail.contactForm', '', '|Accommodation|minisite|companysite|eshop|reagency|reportal|bizdirectory|cardealer|websolution|', '|center|', '', 16, 0x7c616c6c7c),
(14, 'root', '2009-09-05 13:52:49', '2010-05-10 21:22:28', 1, '<en>Member area</en><fr>Member area</fr><nl>Member area</nl><ru>Панель учетной записи пользователя</ru>', '', 'core.myHome', '', '|companysite|eshop|reagency|reportal|bizdirectory|cardealer|websolution|', '|center|', '', 32, 0x7c616c6c7c),
(15, 'root', '2009-09-05 13:53:58', '2010-05-10 21:22:28', 1, '<en>Website registration</en><fr>Website registration</fr><nl>Website registration</nl><ru>Регистрация нового сайта</ru>', '', 'core.registerOwner', '', '|websolution|', '|center|', '', 34, 0x7c7375626d697373696f6e2e6469726563746f72797c),
(16, 'root', '2009-09-05 14:07:40', '2010-05-10 21:22:28', 1, '<en>Page</en><el>Page</el><eg>Page</eg><de>Page</de><fr>Page</fr><es>Page</es><it>Page</it><tu>Page</tu><ru>Страница сайта</ru>', '', 'core.page', '', '|Accommodation|minisite|companysite|eshop|reagency|reportal|bizdirectory|cardealer|websolution|', '|center|', '', 12, 0x7c616c6c7c),
(17, 'root', '2009-09-05 14:12:03', '2010-05-10 21:22:28', 1, '<en>Text box</en><el>Text box</el><eg>Text box</eg><de>Text box</de><fr>Text box</fr><es>Text box</es><it>Text box</it><tu>Text box</tu><ru>Текстовый блок</ru>', '', 'core.textbox', '', '|Accommodation|minisite|companysite|eshop|reagency|reportal|bizdirectory|cardealer|websolution|', '|left|right|bottom|free|', '', 10, 0x7c616c6c7c),
(18, 'root', '2009-09-05 14:28:38', '2010-05-10 21:22:28', 1, '<en>Properties listing</en><el>Properties listing</el><eg>Properties listing</eg><de>Properties listing</de><fr>Properties listing</fr><es>Properties listing</es><it>Properties listing</it><tu>Properties listing</tu><ru>Список объектов недвижимости</ru>', '', 'resource.getResourceOfferProperties', 'resource.getResourceOffersBoxOptionsProperty', '|Accommodation|reagency|reportal|', '|center|', '', 22, 0x7c7265736f757263652e50726f706572746965734d616e616765727c),
(19, 'root', '2009-09-05 14:31:18', '2010-05-10 21:22:28', 1, '<en>Featured properties</en><el>Featured properties</el><eg>Featured properties</eg><de>Featured properties</de><fr>Featured properties</fr><es>Featured properties</es><it>Featured properties</it><tu>Featured properties</tu><ru>Featured properties</ru>', '', 'resource.getResourceOfferFeaturedProperties', 'resource.getResourceOffersBoxOptionsProperty', '|reagency|reportal|', '|left|right|', '', 24, 0x7c7265736f757263652e50726f706572746965734d616e616765727c),
(20, 'root', '2009-09-06 13:52:52', '2010-05-10 21:22:28', 1, '<en>Website menu links</en><el>Website menu links</el><eg>Website menu links</eg><de>Website menu links</de><fr>Website menu links</fr><es>Website menu links</es><it>Website menu links</it><tu>Website menu links</tu><ru>Ссылки меню сайта</ru>', '', 'seo.getSEOLinks', '', '|Accommodation|minisite|companysite|eshop|reagency|reportal|bizdirectory|cardealer|websolution|', '|top|left|center|right|bottom|free|', '', 14, 0x7c616c6c7c),
(21, 'root', '2009-10-12 21:11:05', '2010-05-10 21:22:28', 1, '<en>News sidebox</en><fr>Nouveauté sidebox</fr><nl>News sidebox</nl><ru>Блок последних новостей</ru>', '', 'news.getNewsArticlesNews', '', '|minisite|companysite|eshop|reagency|reportal|bizdirectory|cardealer|websolution|', '|left|right|', '', 28, 0x7c6e6577732e4e65777341727469636c65734e6577737c),
(26, 'root', '2009-11-23 19:18:32', '2010-05-10 21:22:28', 1, '<en>Ads list</en><fr>Ads list</fr><nl>Ads list</nl><ru>Объявления</ru>', '', 'resource.getResourceOffers', '', '|companysite|eshop|', '|center|', '', 20, 0x7c7265736f757263654164734d616e616765727c);

-- --------------------------------------------------------

--
-- Структура таблиці `ownerboxes`
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
-- Структура таблиці `ownerboxtypes`
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
-- Дамп даних таблиці `ownerboxtypes`
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
-- Структура таблиці `owner_lang`
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
-- Структура таблиці `pagebox`
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
-- Структура таблиці `pageboxes`
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
-- Дамп даних таблиці `pageboxes`
--

INSERT INTO `pageboxes` (`id`, `OwnerID`, `UserID`, `timeCreated`, `timeSaved`, `pageSide`, `pagePosition`, `pageCode`, `pageID`, `pageLanguage`, `pageIsForLink`) VALUES
(104, 'root', 'root', '2009-11-27 13:52:02', '2009-11-27 13:52:02', 'right', 2, 'home', 1, 'ru', 'N');

-- --------------------------------------------------------

--
-- Структура таблиці `posts`
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
-- Дамп даних таблиці `posts`
--

INSERT INTO `posts` (`postID`, `UserID`, `OwnerID`, `timeCreated`, `timeSaved`, `typeID`, `hidden`, `status`, `pingStatus`, `alias`, `toPing`, `pinged`, `catID`, `commentCount`) VALUES
(1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, 'publish', 0, 'test', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `posts_cat`
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
-- Структура таблиці `posts_cat_lang`
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
-- Структура таблиці `posts_lang`
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
-- Дамп даних таблиці `posts_lang`
--

INSERT INTO `posts_lang` (`plID`, `lang_id`, `postID`, `title`, `content`) VALUES
(1, 6, 1, 'test_ru', 'test_ru'),
(2, 34, 1, 'test_en', 'test_en');

-- --------------------------------------------------------

--
-- Структура таблиці `products`
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
-- Дамп даних таблиці `products`
--

INSERT INTO `products` (`id`, `langID`, `alias`, `UserID`, `OwnerID`, `hidden`, `timeCreated`, `timeSaved`, `categoryID`, `extraCategoryID`, `name`, `code`, `price`, `description`, `metaTitle`, `metaDescription`, `metaKeywords`, `icon`) VALUES
(1, 0, 'test', 'root', 'root', 0, '2015-05-14 14:33:01', '2015-05-15 10:02:37', 1, 0, 'test', 'test', 100.00, 'test 1 33', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `products_category`
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
-- Дамп даних таблиці `products_category`
--

INSERT INTO `products_category` (`id`, `parentID`, `UserID`, `OwnerID`, `hidden`, `timeCreated`, `timeSaved`, `alias`, `logo`, `titleIcon`, `name`, `intro`, `description`, `position`, `metaTitle`, `metaDescription`, `metaKeywords`, `showProducts`) VALUES
(1, 0, '1', '1', 0, '2015-05-14 18:25:05', '0000-00-00 00:00:00', 'cat1', NULL, NULL, 'cat1', NULL, 'cat1', 0, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `reference`
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
-- Дамп даних таблиці `reference`
--

INSERT INTO `reference` (`id`, `code`, `UserID`, `OwnerID`, `hidden`, `timeCreated`, `timeSaved`, `name`, `type`, `modules`, `module`, `accessGroups`) VALUES
('1', 'ReferenceType', '1', 'root', 1, '0000-00-00 00:00:00', '2009-11-12 17:20:23', 0x3c656e3e50726573656e746174696f6e20547970653c2f656e3e3c66723e50726573656e746174696f6e20547970653c2f66723e3c6e6c3e50726573656e746174696f6e20547970653c2f6e6c3e3c72753e50726573656e746174696f6e20547970653c2f72753e, 'dropdown', '', '', ''),
('4', 'ResourceTypeFieldsPlaces', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e4578747261206669656c647320706c616365733c2f656e3e3c66723e4578747261206669656c647320706c616365733c2f66723e, 'checkboxes', '', '', ''),
('5', 'DataTypes', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e446174612074797065733c2f656e3e3c66723e446174612074797065733c2f66723e, 'dropdown', '', '', ''),
('6', 'PermAll', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e41637469766174696f6e207374617475733c2f66723e3c656e3e41637469766174696f6e207374617475733c2f656e3e, 'dropdown', '', '', ''),
('7', 'YesNo', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e426f6f6c65616e20285965732f4e6f293c2f66723e3c656e3e426f6f6c65616e20285965732f4e6f293c2f656e3e, 'dropdown', '', '', ''),
('11', 'ViewBox.BoxSide', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e426f782073696465733c2f66723e3c656e3e426f782073696465733c2f656e3e, 'dropdown', '', '', ''),
('12', 'transport', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e5472616e73706f72746174696f6e20636f6d70616e6965733c2f66723e3c656e3e5472616e73706f72746174696f6e20636f6d70616e6965733c2f656e3e, 'dropdown', '', '', ''),
('13', 'bannerplace', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e42616e6e657220706c6163653c2f66723e3c656e3e42616e6e657220706c6163653c2f656e3e, 'dropdown', '', '', ''),
('14', 'target', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e5461726765743c2f66723e3c656e3e5461726765743c2f656e3e, 'dropdown', '', '', ''),
('16', 'ViewType', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e4c61796f75742074797065733c2f66723e3c656e3e4c61796f75742074797065733c2f656e3e, 'dropdown', '', '', ''),
('17', 'ResourceTypeField.ResourceTypeFieldMode', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e5265736f75726365206669656c6420747970653c2f66723e3c656e3e5265736f75726365206669656c6420747970653c2f656e3e, 'dropdown', '', '', ''),
('18', 'plusminus', '1', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e506c75734d696e75733c2f66723e3c656e3e506c75734d696e75733c2f656e3e, 'dropdown', '', '', ''),
('19', 'ResourceTemplate', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e54656d706c617465733c2f656e3e3c66723e54656d706c617465733c2f66723e, 'dropdown', '', '', ''),
('20', 'Resource.ResourceStatus', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e5374617475733c2f656e3e3c66723e5374617475733c2f66723e, 'dropdown', '', '', ''),
('36', 'Resource.ResourceAccessType', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e5265736f75726365732066756e6374696f6e20747970653c2f656e3e3c66723e5265736f75726365732066756e6374696f6e20747970653c2f66723e, 'dropdown', '', '', ''),
('21', 'ResourceComment.ResourceCommentContactType', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e436f6e74616374207479706520666f7220636f6d6d656e74733c2f656e3e3c66723e436f6e74616374207479706520666f7220636f6d6d656e74733c2f66723e, 'radioboxes', '', '', ''),
('25', 'ResourceOrderPaymentStatus', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e5061796d656e74205374617475733c2f656e3e3c66723e5061796d656e74205374617475733c2f66723e, 'dropdown', '', '', ''),
('26', 'ResourceOrderStatus', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e4f72646572205374617475733c2f656e3e3c66723e4f72646572205374617475733c2f66723e, 'dropdown', '', '', ''),
('27', 'fonts', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e466f6e742066616d696c6965733c2f66723e, 'dropdown', '', '', ''),
('28', 'fontstyles', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e466f6e74207374796c65733c2f66723e, 'dropdown', '', '', ''),
('29', 'fontweights', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e466f6e7420776569676874733c2f66723e, 'dropdown', '', '', ''),
('30', 'fontsizes', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e466f6e742073697a65733c2f66723e, 'dropdown', '', '', ''),
('31', 'fontdecorations', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e466f6e74206465636f726174696f6e733c2f66723e, 'dropdown', '', '', ''),
('32', 'Resource.ResourcePaidRate', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e41646d696e6973747261746f72277320726174696e673c2f656e3e, 'dropdown', '', '', ''),
('33', 'Resource.ResourceReviewsRate', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e5265766965777320726174696e673c2f656e3e, 'dropdown', '', '', ''),
('34', 'Resource.ResourceFeaturedOptions', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e4665617475726564206f7074696f6e733c2f656e3e, 'checkboxes', '', '', ''),
('35', 'ResourceType.ResourceTypeHiddenPlaces', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e5265736f75726365207479706520706c616365733c2f656e3e, 'checkboxes', '', '', ''),
('37', 'Resource.ResourceLocation', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e5265736f75726365204c6f636174696f6e3c2f656e3e3c66723e5265736f75726365204c6f636174696f6e3c2f66723e, 'dropdown', '', '', ''),
('38', 'ResourceCategory.ResourceCategoryHiddenPlaces', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e43617465676f726965732068696464656e20706c616365733c2f656e3e3c66723e43617465676f726965732068696464656e20706c616365733c2f66723e, 'checkboxes', '', '', ''),
('39', 'HelpArticleType', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e48656c702041727469636c6520547970653c2f66723e, 'dropdown', '', '', ''),
('40', 'SynchronizationType', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e53796e6368726f6e697a6174696f6e2054797065733c2f66723e, 'dropdown', '', '', ''),
('41', 'LockMode', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e53796e6368726f6e697a6174696f6e206c6f636b206d6f64653c2f66723e, 'dropdown', '', '', ''),
('42', 'Section.SectionViewOptions', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e50616765206c697374696e67206f7074696f6e733c2f66723e, 'checkboxes', '', '', ''),
('43', 'Section.SectionActionOptions', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e5061676520616374696f6e73206f7074696f6e73202870616765206c696e6b20626172293c2f66723e, 'checkboxes', '', '', ''),
('44', 'Section.SectionCommentsOptions', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e5061676520636f6d6d656e7473206f7074696f6e733c2f66723e, 'checkboxes', '', '', ''),
('48', 'Section.SectionViewType', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e4974656d732073686f776e206f6e20706167653c2f66723e, 'dropdown', '', '', ''),
('49', 'SectionGroup.SectionGroupType', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e53656374696f6e2067726f757020747970653c2f656e3e, 'dropdown', '', '', ''),
('50', 'SectionGroup.SectionGroupViewOptions', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e53656374696f6e2067726f75702076696577206f7074696f6e733c2f656e3e, 'checkboxes', '', '', ''),
('51', 'Language.LanguageTranslationType', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e4c616e6775616765207472616e736c6174696f6e2074797065733c2f656e3e3c66723e4c616e6775616765207472616e736c6174696f6e2074797065733c2f66723e, 'dropdown', '', '', ''),
('52', 'ResourceType.ResourceTypeAction', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e5265736f75726365207479706520616374696f6e733c2f656e3e, 'dropdown', '', '', ''),
('11365480442006040319043581m211', 'PropertyTemplate', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e50726f70657274792074656d706c6174653c2f656e3e3c66723e50726f70657274792074656d706c6174653c2f66723e, 'dropdown', '', '', ''),
('11365480442006040319043581m111', 'PropertyType.PropertyTypeHiddenPlaces', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e50726f706572747920747970652068696464656e20706c616365733c2f656e3e3c66723e50726f706572747920747970652068696464656e20706c616365733c2f66723e, 'checkboxes', '', '', ''),
('1136548044200604031910210z1111', 'PropertyTypeField.PropertyTypeFieldMode', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e50726f7065727479206669656c64206d6f64653c2f656e3e3c66723e50726f7065727479206669656c64206d6f64653c2f66723e, 'dropdown', '', '', ''),
('11365480442006040319120096v111', 'PropertyTypeField.PropertyTypeFieldHidenPlaces', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e50726f7065727479206669656c642068696464656e20706c616365733c2f656e3e3c66723e50726f7065727479206669656c642068696464656e20706c616365733c2f66723e, 'checkboxes', '', '', ''),
('11365480442006040322314381r111', 'Property.PropertyFeaturedOptions', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e46656174757265642070726f70657274697320706c616365733c2f656e3e3c66723e46656174757265642070726f70657274697320706c616365733c2f66723e, 'checkboxes', '', '', ''),
('11365480442006040323005675u111', 'Property.PropertyActionType', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e50726f706572747920616374696f6e20747970653c2f656e3e3c66723e50726f706572747920616374696f6e20747970653c2f66723e, 'dropdown', '', '', ''),
('11365480442006040921244344d111', 'PropertyTypeField.PropertyTypeFieldParts', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e50726f706572747920696e666f726d6174696f6e2070617274733c2f656e3e3c66723e50726f706572747920696e666f726d6174696f6e2070617274733c2f66723e, 'checkboxes', '', '', ''),
('11365480442006041016085452d111', 'PropertyResourceType', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e50726f7065727479205265736f7572636520547970653c2f656e3e3c66723e50726f7065727479205265736f7572636520547970653c2f66723e, 'dropdown', '', '', ''),
('11365480442006041300391546v111', 'Property.PropertyStatus', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e50726f70657274792061637469766174696f6e207374617475733c2f656e3e3c66723e50726f70657274792061637469766174696f6e207374617475733c2f66723e, 'dropdown', '', '', ''),
('11365480442006041312544352x111', 'PropertyOrderPaymentStatus', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e50726f7065727479206f72646572207061796d65746e207374617475733c2f656e3e3c66723e50726f7065727479206f72646572207061796d65746e207374617475733c2f66723e, 'dropdown', '', '', ''),
('11365480442006041312562439q111', 'PropertyOrderStatus', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e50726f7065727479206f72646572207374617475733c2f656e3e3c66723e50726f7065727479206f72646572207374617475733c2f66723e, 'dropdown', '', '', ''),
('11365480442006050103522987r111', 'Currency', 'root', 'root', 4, '2006-05-01 03:52:29', '2006-05-01 03:52:29', 0x3c656e3e43757272656e6369657320726566666572656e63653c2f656e3e, 'dropdown', '', '', ''),
('11365480442006050104084232y111', 'Property.PropertyPriceComments', 'root', 'root', 4, '2006-05-01 04:08:42', '2006-05-01 04:13:48', 0x3c656e3e50726f706572747920707269636520636f6d6d656e74733c2f656e3e, 'checkboxes', '', '', ''),
('11365480442006051312071812l111', 'RegionType', 'root', 'root', 4, '2006-05-13 12:07:18', '2006-05-13 12:07:18', 0x3c656e3e526567696f6e20747970653c2f656e3e, 'dropdown', '', '', ''),
('11365480442006060909533955r111', 'Property.DecorationOrder', 'root', 'root', 4, '2006-06-09 09:53:39', '2006-06-13 03:20:21', 0x3c656e3e4465636f726174697665206f726465723c2f656e3e, 'dropdown', '', '', ''),
('11365480442006062509175374o111', 'Property.PropertyPriceRangeSearch', 'root', 'root', 4, '2006-06-25 09:17:53', '2006-06-25 09:17:53', 0x3c656e3e50726f70657274792070726963652072616e67653c2f656e3e, 'dropdown', '', '', ''),
('11365480442006061308035056c111', 'Property.PropertyLeasehold', 'root', 'root', 4, '2006-06-13 08:03:50', '2006-06-13 08:56:50', 0x3c656e3e4e6f206f6620796561727320286966206c65617365686f6c642073656c6563746564293c2f656e3e, 'dropdown', '', '', ''),
('11365480442006061307440372n111', 'Property.PropertyTenure', 'root', 'root', 4, '2006-06-13 07:44:03', '2006-06-13 08:54:01', 0x3c656e3e54656e7572653c2f656e3e, 'dropdown', '', '', ''),
('11365480442006061308322367z111', 'Property.PropertyType', 'root', 'root', 4, '2006-06-13 08:32:23', '2006-06-13 08:32:23', 0x3c656e3e54797065206f662070726f70657274793c2f656e3e, 'dropdown', '', '', ''),
('11365480442006062707470694t111', 'Property.PropertyDistancePostCodeSearch', 'root', 'root', 4, '2006-06-27 07:47:06', '2006-06-27 07:47:06', 0x3c656e3e50726f70657274792064697374616e63652066726f6d20506f737420436f64653c2f656e3e, 'dropdown', '', '', ''),
('11365480442006061811475348z111', 'UserTypeField.UserTypeFieldGroups', 'root', 'root', 4, '2006-06-18 11:47:53', '2006-06-18 11:47:53', 0x3c656e3e526567697374726174696f6e20666f726d206669656c64732067726f7570733c2f656e3e, 'checkboxes', '', '', ''),
('11365480442006093017315696d111', 'NewsFeed.NewsFeedStatus', 'root', 'root', 4, '2006-09-30 17:31:56', '2006-09-30 17:31:56', 0x3c656e3e4e657773202d2046656564207374617475733c2f656e3e3c72753e4e657773202d2046656564207374617475733c2f72753e3c75613e4e657773202d2046656564207374617475733c2f75613e, 'dropdown', '', '', ''),
('1136548044200610141500213p1111', 'encodings', 'root', 'root', 4, '2006-10-14 15:00:21', '2006-10-14 15:00:36', 0x3c656e3e456e636f64696e67733c2f656e3e3c72753e456e636f64696e67733c2f72753e3c75613e456e636f64696e67733c2f75613e, 'dropdown', '', '', ''),
('11365480442007021819424670x111', 'NewsArticle.NewsArticleType', 'root', 'root', 4, '2007-02-18 19:42:46', '2007-02-18 19:42:46', 0x3c656e3e4e6577732061727469636c657320747970653c2f656e3e3c72753ed0a2d0b8d0bfd18b20d181d182d0b0d182d0b5d0b93c2f72753e, 'dropdown', '', '', ''),
('11365480442007030423353619m111', 'NewsFeed.NewsFeedType', 'root', 'root', 4, '2007-03-04 23:35:36', '2007-03-04 23:35:36', 0x3c656e3e4e657773202d20696e64657865722074797065733c2f656e3e3c72753e4e657773202d20d182d0b8d0bfd18b20d0b8d0bdd0b4d0b5d0bad181d0b0d182d0bed180d0bed0b23c2f72753e, 'dropdown', '', '', ''),
('11365480442007032512550674g111', 'NewsArticle.NewsArticleRating', 'root', 'root', 4, '2007-03-25 12:55:06', '2007-03-25 12:55:06', 0x3c656e3e4e6577732061727469636c652072617465733c2f656e3e3c72753ed0a0d0b5d0b9d182d0b8d0bdd0b3d0b820d0b2d0b5d181d182d0b5d0b93c2f72753e, 'dropdown', '', '', ''),
('11365480442007033019070382y111', 'NewsFeed.NewsFeedPresentationMode', 'root', 'root', 4, '2007-03-30 19:07:03', '2007-03-30 19:07:03', 0x3c656e3e4e657773202d2061727469636c65732070726573656e746174696f6e206d6f64653c2f656e3e3c72753e4e657773202d20d181d0bfd0bed181d0bed0b120d0bfd180d0b5d0b4d181d182d0b0d0b2d0bbd0b5d0bdd0b8d18f20d181d182d0b0d182d0b5d0b93c2f72753e, 'dropdown', '', '', ''),
('11365480442006102114151298c111', 'WebSite.WebSiteType', 'root', 'root', 4, '2006-10-21 14:15:12', '2006-10-21 14:15:12', 0x3c656e3e57656220736974652074797065733c2f656e3e3c72753e57656220736974652074797065733c2f72753e, 'dropdown', '', '', ''),
('11365480442006102114260852l111', 'WebSite.WebSiteActionType', 'root', 'root', 4, '2006-10-21 14:26:08', '2006-10-21 14:26:08', 0x3c656e3e576562207369746520616374696f6e2074797065733c2f656e3e3c72753e576562207369746520616374696f6e2074797065733c2f72753e, 'dropdown', '', '', ''),
('11365480442006102114274737u111', 'WebSite.WebSiteStatus', 'root', 'root', 4, '2006-10-21 14:27:47', '2006-10-21 14:27:47', 0x3c656e3e5765622073697465207374617475733c2f656e3e3c72753e5765622073697465207374617475733c2f72753e, 'dropdown', '', '', ''),
('11365480442006102114455980s111', 'WebSite.WebSiteExchangeType', 'root', 'root', 4, '2006-10-21 14:45:59', '2006-10-21 14:45:59', 0x3c656e3e57656220736974652065786368616e6765206c696e6b73206d6574686f643c2f656e3e3c72753e57656220736974652065786368616e6765206c696e6b73206d6574686f643c2f72753e, 'dropdown', '', '', ''),
('11365480442006102114481067t111', 'WebSite.WebSiteExchangePRType', 'root', 'root', 4, '2006-10-21 14:48:10', '2006-10-21 14:48:10', 0x3c656e3e57656220736974652065786368616e6765206c696e6b732077697468205052206d6f64653c2f656e3e3c72753e57656220736974652065786368616e6765206c696e6b732077697468205052206d6f64653c2f72753e, 'dropdown', '', '', ''),
('11365480442006103001335833r111', 'WebSiteKeyword.KeywordImportFields', 'root', 'root', 4, '2006-10-30 01:33:58', '2006-10-30 01:34:11', 0x3c656e3e5375626d697373696f6e202d206b6579776f72647320696d706f7274206669656c64733c2f656e3e3c72753e5375626d697373696f6e202d206b6579776f72647320696d706f7274206669656c64733c2f72753e, 'dropdown', '', '', ''),
('11365480442007040118254779t111', 'NewsCategory.NewsCategoryFilterOptions', 'root', 'root', 4, '2007-04-01 18:25:47', '2007-04-01 18:25:47', 0x3c656e3e4e657773202d206e6577732066696c746572206f7074696f6e733c2f656e3e3c72753e4e657773202d206e6577732066696c746572206f7074696f6e733c2f72753e, 'checkboxes', '', '', ''),
('11365480442007062314300356n111', 'Owner.OwnerFunctions', 'root', 'root', 4, '2007-06-23 14:30:03', '2007-06-23 14:30:03', 0x3c656e3e5669727475616c20776562736974652066756e6374696f6e733c2f656e3e3c72753ed0a4d183d0bdd0bad186d0b8d0b820d0bfd0b5d180d181d0bed0bdd0b0d0bbd18cd0bdd0bed0b3d0be20d0b2d0b5d0b1d181d0b0d0b9d182d0b03c2f72753e, 'checkboxes', '', '', ''),
('11365480442007062318391012c111', 'Owner.OwnerType', 'root', 'root', 4, '2007-06-23 18:39:10', '2007-06-23 18:39:10', 0x3c656e3e436f7265202d206f776e65722074797065733c2f656e3e3c72753e436f7265202d20d182d0b8d0bfd18b20d0bfd0bed0b4d181d0b8d181d182d0b5d0bc3c2f72753e, 'dropdown', '', '', ''),
('11365480442007062522125138x111', 'Owner.OwnerOptions', 'root', 'root', 4, '2007-06-25 22:12:51', '2009-04-18 15:38:22', 0x3c656e3e436f7265202d204f776e6572206f7074696f6e733c2f656e3e3c72753e436f7265202d20d09ed0bfd186d0b8d0b820d0bfd0b5d180d181d0bed0bdd0b0d0bbd18cd0bdd0bed0b3d0be20d0b2d0b5d0b1d181d0b0d0b9d182d0b03c2f72753e, 'checkboxes', '', '', ''),
('11365480442007062817044391b111', 'MonthNames', 'root', 'root', 4, '2007-06-28 17:04:43', '2007-06-28 17:04:43', 0x3c656e3e4d6f6e7468206e616d65733c2f656e3e3c72753ed09dd0b0d0b7d0b2d0b0d0bdd0b8d18f20d0bcd0b5d181d18fd186d0b5d0b23c2f72753e3c75613ed09dd0b0d0b7d0b2d0b0d0bdd0b8d18f20d0bcd0b5d181d18fd186d0b5d0b23c2f75613e, 'dropdown', '', '', ''),
('1136548044200709021853458i1111', 'NewsArticle.NewsArticleSourceType', 'root', 'root', 4, '2007-09-02 18:53:45', '2007-09-02 18:53:45', 0x3c656e3e4e657773202d206e65777320736f75726365732074797065733c2f656e3e3c72753e4e657773202d20d182d0b8d0bfd18b20d0b8d181d182d0bed187d0bdd0b8d0bad0bed0b220d181d182d0b0d182d0b5d0b93c2f72753e3c75613e4e657773202d20d182d0b8d0bfd18b20d0b8d181d182d0bed187d0bdd0b8d0bad0bed0b220d181d182d0b0d182d0b5d0b93c2f75613e, 'dropdown', '', '', ''),
('11365480442007090814215348y111', 'NewsArticle.NewsArticleProcessingStatus', 'root', 'root', 4, '2007-09-08 14:21:53', '2007-09-08 14:21:53', 0x3c656e3e4e6577732070726f63657373696e67207374617475733c2f656e3e3c72753e4e657773202d20d181d182d0b0d182d183d18120d0bed0b1d180d0b0d0b1d0bed182d0bad0b820d181d182d0b0d182d18cd0b83c2f72753e3c75613e4e657773202d20d181d182d0b0d182d183d18120d0bed0b1d180d0b0d0b1d0bed182d0bad0b820d181d182d0b0d182d18cd0b83c2f75613e, 'dropdown', '', '', ''),
('11365480442007090814571235l111', 'NewsArticle.CommentsTypes', 'root', 'root', 4, '2007-09-08 14:57:12', '2007-09-08 14:57:12', 0x3c656e3e4e657773202d20636f6d6d656e747320747970657320666f72206164733c2f656e3e3c72753e4e657773202d20d182d0b8d0bfd18b20d0bad0bed0bcd0bcd0b5d0bdd182d0b0d180d0b8d0b5d0b220d0b4d0bbd18f20d0bed0b1d18ad18fd0b2d0bbd0b5d0bdd0b8d0b93c2f72753e3c75613e4e657773202d20d182d0b8d0bfd18b20d0bad0bed0bcd0bcd0b5d0bdd182d0b0d180d0b8d0b5d0b220d0b4d0bbd18f20d0bed0b1d18ad18fd0b2d0bbd0b5d0bdd0b8d0b93c2f75613e, 'dropdown', '', '', ''),
('11365480442007100323430210j111', 'Layouts', 'root', 'root', 4, '2007-10-03 23:43:02', '2007-10-03 23:43:02', 0x3c656e3e53797374656d206c61796f7574733c2f656e3e3c72753e53797374656d206c61796f7574733c2f72753e, 'dropdown', '', '', ''),
('11365480442008043014064248i111', 'Form.FormStatus', 'root', 'root', 4, '2008-04-30 14:06:42', '2008-04-30 14:06:42', 0x3c656e3e466f726d73202d2070726f63657373696e672073746174757365733c2f656e3e3c66723e466f726d73202d2070726f63657373696e672073746174757365733c2f66723e, 'dropdown', '', '', ''),
('11365480442008043015012421l111', 'Owner.OwnerGroup', 'root', 'root', 4, '2008-04-30 15:01:24', '2008-04-30 15:01:24', 0x3c656e3e4f776e65722067726f7570733c2f656e3e3c66723e4f776e65722067726f7570733c2f66723e, 'dropdown', '', '', ''),
('1136548044200805211043186v1111', 'WebSite.WebSitePaymentStatus', 'root', 'root', 4, '2008-05-21 10:43:18', '2008-05-27 14:46:15', 0x3c656e3e5765622073697465207061796d656e74207374617475733c2f656e3e3c66723e537461747574732064657320706169656d656e74733c2f66723e, 'dropdown', '', '', ''),
('11365480442008052410444273s111', 'Styles', 'root', 'root', 4, '2008-05-24 10:44:42', '2008-05-24 10:44:42', 0x3c656e3e5374796c65733c2f656e3e3c66723e5374796c65733c2f66723e, 'dropdown', '', '', ''),
('11365480442008052714592797g111', 'UserField_11_FirstName', 'root', 'root', 4, '2008-05-27 14:59:27', '2008-05-27 14:59:27', '', '', '', '', ''),
('11365480442006121000565645y111', 'ResourceAuthor.ResourceAuthorActivities', 'root', 'root', 4, '2006-12-10 00:56:56', '2006-12-10 00:59:37', 0x3c656e3e436f6d70616e69657320616374697669746965733c2f656e3e3c72753ed092d0b8d0b4d18b20d0b4d0b5d18fd182d0b5d0bbd18cd0bdd0bed181d182d0b83c2f72753e, 'checkboxes', '', '', ''),
('11365480442006121001003496z111', 'ResourceAuthor.ResourceAuthorMarkets', 'root', 'root', 4, '2006-12-10 01:00:34', '2006-12-10 01:02:14', 0x3c656e3e4d61726b6574733c2f656e3e3c72753ed0a0d0b5d0b3d0b8d0bed0bdd0b0d0bbd18cd0bdd18bd0b520d180d18bd0bdd0bad0b83c2f72753e, 'checkboxes', '', '', ''),
('11365480442006121001015420x111', 'ResourceAuthor.ResourceAuthorCategories', 'root', 'root', 4, '2006-12-10 01:01:54', '2006-12-10 01:02:23', 0x3c656e3e436f6d70616e6965732063617465676f726965733c2f656e3e3c72753ed09ed182d180d0b0d181d0bbd0b5d0b2d18bd0b520d180d18bd0bdd0bad0b83c2f72753e, 'checkboxes', '', '', ''),
('11365480442006121001055951z111', 'ResourceAuthor.ResourceAuthorPresentationOptions', 'root', 'root', 4, '2006-12-10 01:05:59', '2006-12-10 01:05:59', 0x3c656e3e417574686f722070726573656e746174696f6e206f7074696f6e733c2f656e3e3c72753ed09ed0bfd186d0b8d0b820d0bfd180d0b5d0b4d181d182d0b0d0b2d0bbd0b5d0bdd0b8d18f20d0bad0bed0bcd0bfd0b0d0bdd0b8d0b83c2f72753e, 'checkboxes', '', '', ''),
('11365480442006121001090969t111', 'ResourceAuthor.ResourceAuthorFeaturedOptions', 'root', 'root', 4, '2006-12-10 01:09:09', '2006-12-10 01:09:09', 0x3c656e3e417574686f7273206665617475726564206f7074696f6e733c2f656e3e3c72753ed0a1d0bfd0b5d186d0b8d0b0d0bbd18cd0bdd18bd0b520d0bed0bfd186d0b8d0b820d0b4d0bbd18f20d0b1d0b0d0b7d18b20d184d0b8d180d0bc3c2f72753e, 'checkboxes', '', '', ''),
('11365480442006121001103967c111', 'ResourceAuthor.ResourceAuthorStatus', 'root', 'root', 4, '2006-12-10 01:10:39', '2006-12-10 01:10:39', 0x3c656e3e417574686f722773207374617475733c2f656e3e3c72753ed0a1d182d0b0d182d183d18120d184d0b8d180d0bcd18b3c2f72753e, 'dropdown', '', '', ''),
('11365480442007041516270393j111', 'ParserAgent.ParserAgentType', 'root', 'root', 4, '2007-04-15 16:27:03', '2007-04-15 16:27:03', 0x3c656e3e506172736572202d206167656e742074797065733c2f656e3e3c72753e506172736572202d20d182d0b8d0bfd18b20d0b8d0bdd0b4d0b5d0bad181d0b0d182d0bed180d0bed0b23c2f72753e, 'dropdown', '', '', ''),
('11365480442007041516365415v111', 'ParserAgent.ParserAgentPresentationMode', 'root', 'root', 4, '2007-04-15 16:36:54', '2007-04-15 16:36:54', 0x3c656e3e506172736572202d20696e666f2070726573656e746174696f6e206d6f64653c2f656e3e3c72753e506172736572202d20d0b2d0b8d0b4d18b20d0bfd180d0b5d0b4d181d182d0b0d0b2d0bbd0b5d0bdd0b8d18f20d0b4d0b0d0bdd0bdd18bd1853c2f72753e, 'dropdown', '', '', ''),
('11365480442007041517354350m111', 'ParserAgent.ParserAgentStatus', 'root', 'root', 4, '2007-04-15 17:35:43', '2007-04-15 17:35:43', 0x3c656e3e506172736572202d206167656e7420646576656c6f706d656e74207374617475733c2f656e3e3c72753e506172736572202d20d181d182d0b0d182d183d18120d0b8d0bdd0b4d0b5d0bad181d0b0d182d0bed180d0b03c2f72753e, 'dropdown', '', '', ''),
('11365480442007042116225918g111', 'ParserAgent.ParserAgentProcessingType', 'root', 'root', 4, '2007-04-21 16:22:59', '2007-04-21 16:22:59', 0x3c656e3e506172736572202d20646174612074797065733c2f656e3e3c72753e506172736572202d20d182d0b8d0bfd18b20d0b4d0b0d0bdd0bdd18bd18520d0bed0b1d180d0b0d0b1d0b0d182d18bd0b2d0b0d0b5d0bcd18bd18520d0bfd0b0d180d181d0b5d180d0bed0bc3c2f72753e, 'dropdown', '', '', ''),
('11365480442007042116325696p111', 'ParserAgent.ParserAgentContentType', 'root', 'root', 4, '2007-04-21 16:32:56', '2007-04-21 16:32:56', 0x3c656e3e506172736572202d20636f6e74656e7420747970653c2f656e3e3c72753e506172736572202d20d182d0b8d0bf20d0bad0bed0bdd182d0b5d0bdd182d0b03c2f72753e, 'dropdown', '', '', ''),
('11365480442007050111412368r111', 'ResourceOffer.ResourceOfferType', 'root', 'it', 4, '2007-05-01 11:41:23', '2007-05-01 11:41:23', 0x3c656e3e5265736f75726365202d207265736f75726365206f6666657220747970653c2f656e3e3c72753e5265736f75726365202d20d182d0b8d0bfd18b20d0bed0b1d18ad18fd0b2d0bbd0b5d0bdd0b8d0b93c2f72753e, 'dropdown', '', '', ''),
('11365480442007052620360191i111', 'ParserAgent.ParserAgentProcessingOptions', 'root', 'root', 4, '2007-05-26 20:36:01', '2007-05-26 20:36:01', 0x3c656e3e506172736572202d2070726f63657373696e67206f7074696f6e733c2f656e3e3c72753e506172736572202d20d0bed0bfd186d0b8d0b820d0bed182d180d0b0d0b1d0bed182d0bad0b820d0b8d0bdd0b4d0b5d0bad181d0b0d182d0bed180d0b03c2f72753e, 'checkboxes', '', '', ''),
('11365480442007092302293846x111', 'ResourceOffer.CommentsTypes', 'root', 'root', 4, '2007-09-23 02:29:38', '2007-09-23 02:29:38', 0x3c656e3e5265736f75726365202d2074797065206f6620636f6d6d656e747320666f72206f666665723c2f656e3e3c72753e5265736f75726365202d20d182d0b8d0bfd18b20d181d0bed0bed0b1d189d0b5d0bdd0b8d0b920d0ba20d0bed0b1d18ad18fd0b2d0bbd0b5d0bdd0b8d18e3c2f72753e, 'dropdown', '', '', ''),
('11365480442007111421204335j111', 'resourceOffer.resourceOfferOrderByDropdown', 'root', 'root', 4, '2007-11-14 21:20:43', '2007-11-14 21:20:43', 0x3c66723e5265736f757263654f66666572204f726465722042792044726f70646f776e3c2f66723e, 'dropdown', '', '', ''),
('11365480442007111712592225h111', 'ResourceTypeField.ResourceTypeFieldSearchOptions', 'root', 'root', 4, '2007-11-17 12:59:22', '2007-11-17 12:59:22', 0x3c656e3e5265736f75726365202d206669656c647320706c61636573206f7074696f6e733c2f656e3e3c66723e5265736f75726365202d206669656c647320706c61636573206f7074696f6e733c2f66723e, 'dropdown', '', '', ''),
('11365480442007111713033976l111', 'ResourceTypeFieldSearchOptionsTypes', 'root', 'root', 4, '2007-11-17 13:03:39', '2007-11-17 13:03:39', 0x3c656e3e5265736f75726365202d20736561726368206669656c647320747970653c2f656e3e3c66723e5265736f75726365202d20736561726368206669656c647320747970653c2f66723e, 'dropdown', '', '', ''),
('11365480442007112418082548d111', 'PriceRange', 'root', 'root', 4, '2007-11-24 18:08:25', '2007-11-24 18:08:25', 0x3c656e3e5265736f75726365202d2050726963652072616e67653c2f656e3e3c66723e5265736f75726365202d2050726963652072616e67653c2f66723e, 'dropdown', '', '', ''),
('11365480442008010417142375q111', 'BillingOrder.OrderPaymentStatus', 'root', 'root', 4, '2008-01-04 17:14:23', '2008-01-04 17:14:23', 0x3c656e3e42696c6c696e67202d206f72646572207061796d656e742073746174757365733c2f656e3e3c66723e42696c6c696e67202d206f72646572207061796d656e742073746174757365733c2f66723e, 'dropdown', '', '', ''),
('11365480442008010420482590a111', 'BillingTransaction.TransactionReason', 'root', 'root', 4, '2008-01-04 20:48:25', '2008-01-04 20:48:25', 0x3c656e3e42696c6c696e67202d207472616e73616374696f6e20726561736f6e3c2f656e3e3c66723e42696c6c696e67202d207472616e73616374696f6e20726561736f6e3c2f66723e, 'dropdown', '', '', ''),
('11365480442008011217582656o111', 'PropertyOrderBy', 'root', 'root', 4, '2008-01-12 17:58:26', '2008-03-16 15:49:16', 0x3c66723e50726f70657274794f7264657242793c2f66723e3c656e3e50726f7065727479202d206f726465722062793c2f656e3e3c72753e50726f7065727479202d206f726465722062793c2f72753e3c75613e50726f7065727479202d206f726465722062793c2f75613e, 'dropdown', '', '', ''),
('1136548044200801262130074o1111', 'ResourceOrder.ResourceOrderIntention', 'root', 'root', 4, '2008-01-26 21:30:07', '2008-01-26 21:30:07', 0x3c656e3e5265736f75726365202d206f7264657220696e74656e74696f6e3c2f656e3e, 'dropdown', '', '', ''),
('1136548044200801271753302t1111', 'ResourceOffer.ResourceOfferStatus', 'root', 'root', 4, '2008-01-27 17:53:30', '2008-01-27 17:53:30', 0x3c656e3e5265736f75726365206f66666572202d20636c69656e74207374617475733c2f656e3e, 'dropdown', '', '', ''),
('11365480442008020101500222g111', 'ResourceOffer.ResourceOfferSourceType', 'root', 'root', 4, '2008-02-01 01:50:02', '2008-02-01 01:50:02', 0x3c656e3e5265736f75726365206f6666657273202d20736f7572636520747970653c2f656e3e, 'dropdown', '', '', ''),
('11365480442008022402411214c111', 'SearchSections', 'root', '', 4, '2008-02-24 02:41:12', '2008-02-24 02:41:12', 0x3c656e3e5365617263682073656374696f6e733c2f656e3e, 'dropdown', '', '', ''),
('11365480442008030919434344r111', 'ResourceAuthor.ResourceAuthorOrderByDropdown', 'root', 'root', 4, '2008-03-09 19:43:43', '2008-03-09 19:43:43', 0x3c656e3e5265736f7572636520617574686f7220202d204f72646572206279206c6973743c2f656e3e, 'dropdown', '', '', ''),
('11365480442008031100234478f111', 'TagGroups', 'root', 'root', 4, '2008-03-11 00:23:44', '2008-03-11 00:23:44', 0x3c656e3e436f7265202d205461672067726f7570733c2f656e3e, 'dropdown', '', '', ''),
('11365480442008031616171421w111', 'WebSiteOrderBy', 'root', 'root', 4, '2008-03-16 16:17:14', '2008-03-16 16:17:14', 0x3c656e3e5375626d697373696f6e202d207765622073697465206f726465722062793c2f656e3e3c72753e5375626d697373696f6e202d207765622073697465206f726465722062793c2f72753e3c75613e5375626d697373696f6e202d207765622073697465206f726465722062793c2f75613e, 'dropdown', '', '', ''),
('11365480442008041123031975p111', 'ResourceCategory.ResourceCategoryGroup', 'root', 'root', 4, '2008-04-11 23:03:19', '2008-04-11 23:03:19', 0x3c656e3e5265736f75726365202d2063617465676f72792067726f7570733c2f656e3e, 'dropdown', '', '', ''),
('11365480442008041318522063v111', 'ParserAgent.ParserAgentTask', 'root', 'root', 4, '2008-04-13 18:52:20', '2008-04-13 18:52:20', 0x3c656e3e506172736572202d206167656e74207461736b3c2f656e3e, 'dropdown', '', '', ''),
('11365480442008092410514490q111', 'ResourceAuthor.ResourceAuthorType', 'root', 'root', 4, '2008-09-24 10:51:44', '2008-09-24 10:51:44', 0x3c656e3e5265736f7572636520617574686f72202d2074797065733c2f656e3e3c72753e5265736f7572636520617574686f72202d2074797065733c2f72753e, 'dropdown', '', '', ''),
('11365480442008102420113072t111', 'WebSite.WebSiteAccessType', 'root', 'root', 4, '2008-10-24 20:11:30', '2008-10-24 20:11:30', 0x3c656e3e5375626d697373696f6e202d20616363657373207479706520202d2066726565206f7220706169643c2f656e3e3c72753e5375626d697373696f6e202d20616363657373207479706520202d2066726565206f7220706169643c2f72753e, 'dropdown', '', '', ''),
('11365480442008102420191684r111', 'WebSite.WebSiteReviewsRate', 'root', 'root', 4, '2008-10-24 20:19:16', '2008-10-24 20:19:16', 0x3c656e3e5375626d697373696f6e202d207765627369746520726174696e673c2f656e3e3c72753e5375626d697373696f6e202d207765627369746520726174696e673c2f72753e, 'dropdown', '', '', ''),
('11365480442008062016434041d111', 'WebSiteLink.WebSiteLinkStatus', 'root', 'root', 4, '2008-06-20 16:43:40', '2008-06-20 16:43:40', 0x3c656e3e5375626d697373696f6e202d204c696e6b207375626d697373696f6e207374617475733c2f656e3e3c72753e5375626d697373696f6e202d204c696e6b207375626d697373696f6e207374617475733c2f72753e, 'dropdown', '', '', ''),
('11365480442008102620240971o111', 'WebSiteLinkKeyword.WebSiteLinkKeywordType', 'root', 'root', 4, '2008-10-26 20:24:09', '2008-10-26 20:24:09', 0x3c656e3e5375626d697373696f6e202d206b6579776f72647320747970653c2f656e3e3c72753e5375626d697373696f6e202d206b6579776f72647320747970653c2f72753e, 'dropdown', '', '', ''),
('11365480442008103101492830l111', 'WebSiteLink.WebSiteLinkStatusExchange', 'root', 'root', 4, '2008-10-31 01:49:28', '2008-10-31 01:49:28', 0x3c656e3e5375626d697373696f6e202d2077656273697465206c696e6b7320737461747573657320666f722065786368616e67653c2f656e3e3c72753e5375626d697373696f6e202d2077656273697465206c696e6b7320737461747573657320666f722065786368616e67653c2f72753e, 'dropdown', '', '', ''),
('11365480442008110123022595l111', 'WebSiteLink.WebSiteLinkStatusBuylink', 'root', 'root', 4, '2008-11-01 23:02:25', '2008-11-01 23:02:25', 0x3c656e3e5375626d697373696f6e202d2077656273697465206c696e6b7320737461747573657320666f72206c696e6b732073616c653c2f656e3e3c72753e5375626d697373696f6e202d2077656273697465206c696e6b7320737461747573657320666f72206c696e6b732073616c653c2f72753e, 'dropdown', '', '', ''),
('11365480442008032123381680x111', 'ResourceAuthor.ResourceAuthorReminderMode', 'root', 'root', 4, '2008-03-21 23:38:16', '2008-03-21 23:38:16', 0x3c656e3e5265736f7572636520617574686f72202d2072656d696e646572206d6f64653c2f656e3e3c72753e5265736f7572636520617574686f72202d20d181d0bfd0bed181d0bed0b1d18b20d183d0b2d0b5d0b4d0bed0bcd0bbd0b5d0bdd0b8d18f3c2f72753e, 'checkboxes', '', '', ''),
('11365480442008032218164082l111', 'ResourceOffer.ResourceOfferOwnerType', 'root', 'root', 4, '2008-03-22 18:16:40', '2008-03-22 18:16:40', 0x3c656e3e5265736f75726365206f66666572202d204f776e657220747970653c2f656e3e3c72753e5265736f75726365206f66666572202d20d0a2d0b8d0bf20d0b7d0b0d0bad0b0d0b7d187d0b8d0bad0b03c2f72753e, 'dropdown', '', '', ''),
('1136548044200803221825598c1111', 'ResourceOffer.ResourceOfferCompletionDate', 'root', 'root', 4, '2008-03-22 18:25:59', '2008-03-22 18:25:59', 0x3c656e3e5265736f75726365206f66666572202d20436f6d706c6574696f6e20446174653c2f656e3e3c72753e5265736f75726365206f66666572202d20d0b2d180d0b5d0bcd18f20d0b2d18bd0bfd0bed0bbd0bdd0b5d0bdd0b8d18f20d0b7d0b0d0bad0b0d0b7d0b03c2f72753e, 'dropdown', '', '', ''),
('11365480442008032218320686q111', 'ResourceOffer.ResourceOfferNumberOfOffers', 'root', 'root', 4, '2008-03-22 18:32:06', '2008-03-22 18:32:06', 0x3c656e3e5265736f75726365206f6666657273202d204d6178204e756d626572204f66204f66666572733c2f656e3e3c72753e5265736f75726365206f6666657273202d20d09cd0b0d0bad181d0b8d0bcd0bbd0b0d18cd0bdd0bed0b520d0bad0bed0bbd0b8d187d0b5d181d182d0b2d0be20d0bfd180d0b5d0b4d0bbd0bed0b6d0b5d0bdd0b8d0b93c2f72753e, 'dropdown', '', '', ''),
('11365480442008032219010264v111', 'ResourceOffer.ResourceOfferPurpose', 'root', 'root', 4, '2008-03-22 19:01:02', '2008-03-22 19:01:02', 0x3c656e3e5265736f75726365206f66666572202d20707572706f7365206f6620726571756573743c2f656e3e3c72753e5265736f75726365206f66666572202d20d186d0b5d0bbd18c20d0b7d0b0d18fd0b2d0bad0b83c2f72753e, 'dropdown', '', '', ''),
('11365480442008032300331993p111', 'ResourceOffer.ResourceOfferLeadRate', 'root', 'root', 4, '2008-03-23 00:33:19', '2008-03-23 00:33:19', 0x3c656e3e5265736f75726365206f66666572202d206c6561642072617465733c2f656e3e3c72753e5265736f75726365206f66666572202d20d186d0b5d0bdd18b20d0b7d0b020d181d0b4d0b5d0bbd0bad1833c2f72753e, 'dropdown', '', '', ''),
('11365480442008033019455840s111', 'User.Status', 'root', 'root', 4, '2008-03-30 19:45:58', '2008-03-30 19:45:58', 0x3c656e3e55736572202d205374617475733c2f656e3e3c72753e55736572202d20d181d182d0b0d182d183d18120d0bfd0bed0b4d182d0b2d0b5d180d0b6d0b4d0b5d0bdd0b8d18f20d180d0b5d0b3d0b8d182d181d180d0b0d186d0b8d0b83c2f72753e, 'dropdown', '', '', ''),
('11365480442008110215384893r111', 'ResourceOffer.ResourceOfferSupplierType', 'root', 'root', 4, '2008-11-02 15:38:48', '2008-11-02 15:38:48', 0x3c656e3e5265736f75726365206f6666657220202d20737570706c69657220747970653c2f656e3e3c72753e5265736f75726365206f6666657220202d20737570706c69657220747970653c2f72753e, 'dropdown', '', '', ''),
('1136548044200811030054011u1111', 'WebSite.FileTypes', 'root', 'root', 4, '2008-11-03 00:54:01', '2008-11-03 00:54:01', 0x3c656e3e5375626d697373696f6e202d20646f63756d656e747320616e642066696c652074797065733c2f656e3e3c72753e5375626d697373696f6e202d20646f63756d656e747320616e642066696c652074797065733c2f72753e, 'dropdown', '', '', ''),
('1136548044200806232345024o1111', 'Task.TaskPriority', 'root', 'root', 4, '2008-06-23 23:45:02', '2008-06-23 23:45:02', 0x3c656e3e5461736b73206d616e61676572202d205461736b73207072696f7269746965733c2f656e3e3c66723e5461736b73206d616e61676572202d205461736b73207072696f7269746965733c2f66723e, 'dropdown', '', '', ''),
('11365480442008062323471588b111', 'Task.TaskStatus', 'root', 'root', 4, '2008-06-23 23:47:15', '2008-06-23 23:47:15', 0x3c656e3e5461736b73206d616e61676572202d205461736b732073746174757365733c2f656e3e3c66723e5461736b73206d616e61676572202d205461736b732073746174757365733c2f66723e, 'dropdown', '', '', ''),
('1136548044200806232349162e1111', 'Task.SearchMode', 'root', 'root', 4, '2008-06-23 23:49:16', '2008-06-23 23:49:16', 0x3c656e3e5461736b73206d616e61676572202d20536561726368206d6f646520666f72207461736b733c2f656e3e3c66723e5461736b73206d616e61676572202d20536561726368206d6f646520666f72207461736b733c2f66723e, 'dropdown', '', '', ''),
('11365480442008063018220718f111', 'User.UserCategories', 'root', 'root', 4, '2008-06-30 18:22:07', '2008-06-30 18:23:07', 0x3c656e3e55736572202d2063617465676f726965733c2f656e3e3c66723e55736572202d2063617465676f726965733c2f66723e, 'checkboxes', '', '', ''),
('11365480442008110300544389g111', 'WebSiteFileTypes', 'root', 'root', 4, '2008-11-03 00:54:43', '2008-11-03 00:59:35', 0x3c656e3e5375626d697373696f6e202d20646f63756d656e747320616e642066696c652074797065733c2f656e3e3c72753e5375626d697373696f6e202d20646f63756d656e747320616e642066696c652074797065733c2f72753e, 'dropdown', '', '', ''),
('11365480442008110922072091g111', 'BillingPaymentamounts', 'root', 'root', 4, '2008-11-09 22:07:20', '2008-11-09 22:07:20', 0x3c656e3e42696c6c696e67202d207061796d656e7420616d6f756e747320746f206465706f73697420696e746f206163636f756e743c2f656e3e3c72753e42696c6c696e67202d207061796d656e7420616d6f756e747320746f206465706f73697420696e746f206163636f756e743c2f72753e, 'dropdown', '', '', ''),
('11365480442008111612150625y111', 'SearchEngines', 'root', 'root', 4, '2008-11-16 12:15:06', '2008-11-16 12:15:06', 0x3c656e3e5375626d697373696f6e202d2073656172636820656e67696e65733c2f656e3e3c72753e5375626d697373696f6e202d2073656172636820656e67696e65733c2f72753e, 'dropdown', '', '', ''),
('11365480442008111622272173y111', 'WebSite.WebSitePaymentType', 'root', 'root', 4, '2008-11-16 22:27:21', '2008-11-16 22:27:21', 0x3c656e3e5375626d697373696f6e202d207061796d656e7420747970657320287061636b61676573293c2f656e3e3c72753e5375626d697373696f6e202d207061796d656e7420747970657320287061636b61676573293c2f72753e, 'dropdown', '', '', ''),
('11365480442008112222551052s111', 'WebSite.WebSitePageRank', 'root', 'root', 4, '2008-11-22 22:55:10', '2008-11-22 22:55:10', 0x3c656e3e5375626d697373696f6e202d20706167652072616e6b3c2f656e3e3c72753e5375626d697373696f6e202d20706167652072616e6b3c2f72753e, 'dropdown', '', '', ''),
('11365480442008112401550798i111', 'SupportTicket.SupportTicketType', 'root', 'root', 4, '2008-11-24 01:55:07', '2008-11-24 01:55:07', 0x3c656e3e537570706f7274202d205469636b657420747970653c2f656e3e3c72753e537570706f7274202d205469636b657420747970653c2f72753e, 'dropdown', '', '', ''),
('11365480442008112401553582t111', 'SupportTicket.SupportTicketPriority', 'root', 'root', 4, '2008-11-24 01:55:35', '2008-11-24 01:55:35', 0x3c656e3e537570706f7274202d205469636b6574207072696f726974793c2f656e3e3c72753e537570706f7274202d205469636b6574207072696f726974793c2f72753e, 'dropdown', '', '', ''),
('11365480442008112401560887y111', 'SupportTicket.SupportTicketStatus', 'root', 'root', 4, '2008-11-24 01:56:08', '2008-11-24 03:01:54', 0x3c656e3e537570706f7274202d205469636b6574207374617475733c2f656e3e3c72753e537570706f7274202d205469636b6574207374617475733c2f72753e, 'dropdown', '', '', ''),
('11365480442008112800353564k111', 'SupportRequest.SupportRequestTypewebdirectory', 'root', 'root', 4, '2008-11-28 00:35:35', '2008-11-28 00:38:52', 0x3c64653e537570706f7274202d20776562206469726563746f7279207570646174652072657175657374207375626a656374733c2f64653e3c656e3e537570706f7274202d20776562206469726563746f7279207570646174652072657175657374207375626a656374733c2f656e3e3c66723e537570706f7274202d20776562206469726563746f7279207570646174652072657175657374207375626a656374733c2f66723e3c72753e537570706f7274202d20776562206469726563746f7279207570646174652072657175657374207375626a656374733c2f72753e, 'dropdown', '', '', ''),
('11365480442008112800444698m111', 'SupportRequest.SupportRequestStatus', 'root', 'root', 4, '2008-11-28 00:44:46', '2008-11-28 00:44:46', 0x3c64653e537570706f7274202d2072657175657374207374617475733c2f64653e3c656e3e537570706f7274202d2072657175657374207374617475733c2f656e3e3c66723e537570706f7274202d2072657175657374207374617475733c2f66723e3c72753e537570706f7274202d2072657175657374207374617475733c2f72753e, 'dropdown', '', '', ''),
('11365480442008120819311030l111', 'WebSiteCategory.WebSiteCategoryGroup', 'root', 'root', 4, '2008-12-08 19:31:10', '2008-12-08 19:31:10', 0x3c64653e5375626d697373696f6e202d2043617465676f72792067726f75703c2f64653e3c656e3e5375626d697373696f6e202d2043617465676f72792067726f75703c2f656e3e3c66723e5375626d697373696f6e202d2043617465676f72792067726f75703c2f66723e3c72753e5375626d697373696f6e202d2043617465676f72792067726f75703c2f72753e, 'dropdown', '', '', ''),
('11365480442008121221354532t111', 'SupportRequest.SupportRequestTypewebsite', 'root', 'root', 4, '2008-12-12 21:35:45', '2008-12-12 21:35:45', 0x3c64653e537570706f7274202d207765622073697465207570646174652072657175657374207375626a656374733c2f64653e3c656e3e537570706f7274202d207765622073697465207570646174652072657175657374207375626a656374733c2f656e3e3c66723e537570706f7274202d207765622073697465207570646174652072657175657374207375626a656374733c2f66723e3c72753e537570706f7274202d207765622073697465207570646174652072657175657374207375626a656374733c2f72753e, 'dropdown', '', '', ''),
('11365480442008122200545133i111', 'Owner.OwnerPaymentType', 'root', 'root', 4, '2008-12-22 00:54:51', '2008-12-22 00:54:51', 0x3c656e3e436f7265202d204f776e6572207061796d656e742074797065733c2f656e3e3c72753e436f7265202d204f776e6572207061796d656e742074797065733c2f72753e, 'dropdown', '', '', ''),
('11365480442008122701535379p111', 'Owner.OwnerStatus', 'root', 'root', 4, '2008-12-27 01:53:53', '2008-12-27 01:53:53', 0x3c656e3e436f7265202d204f776e65722077656273697465207374617475733c2f656e3e3c72753e436f7265202d204f776e65722077656273697465207374617475733c2f72753e, 'dropdown', '', '', ''),
('11365480442009012420395436i111', 'OwnerRootDomains', 'root', 'root', 4, '2009-01-24 20:39:54', '2009-01-24 20:39:54', 0x3c656e3e436f7265202d20726f6f7420646f6d61696e733c2f656e3e3c72753e436f7265202d20726f6f7420646f6d61696e733c2f72753e, 'dropdown', '', '', ''),
('11365480442009012512084684p111', 'Layout.LayoutGroup', 'root', 'root', 4, '2009-01-25 12:08:46', '2009-01-25 12:08:46', 0x3c656e3ed0a16f7265202d206c61796f7574732067726f75703c2f656e3e3c72753ed0a16f7265202d206c61796f7574732067726f75703c2f72753e, 'dropdown', '', '', ''),
('11365480442009013120072999b111', 'SEOPage.SEOPageBox', 'root', 'root', 4, '2009-01-31 20:07:29', '2009-01-31 20:07:29', 0x3c656e3e53454f202d2073656f20706167652066756e6374696f6e733c2f656e3e3c72753e53454f202d2073656f20706167652066756e6374696f6e733c2f72753e, 'dropdown', '', '', ''),
('11365480442009041818461113q111', 'Owner.OwnerURLFormat', 'root', 'root', 4, '2009-04-18 18:46:11', '2009-04-18 18:46:11', 0x3c656e3e436f7265202d204f776e65722055524c20666f726d61743c2f656e3e3c72753e436f7265202d204f776e65722055524c20666f726d61743c2f72753e, 'dropdown', '', '', ''),
('11365480442009042821202738g111', 'SEOPage.SEOPageOptions', 'root', 'root', 4, '2009-04-28 21:20:27', '2009-04-28 21:20:27', 0x3c656e3e53454f202d2070616765206f7074696f6e733c2f656e3e3c72753e53454f202d2070616765206f7074696f6e733c2f72753e, 'checkboxes', '', '', ''),
('11365480442009091001471729b111', 'PageBoxes.PageBoxIsForLink', 'root', 'root', 4, '2009-09-10 01:47:17', '2009-09-10 01:47:17', 0x3c656e3e436f7265202d2050616765426f7820697320666f7220706167653c2f656e3e3c72753e436f7265202d2050616765426f7820697320666f7220706167653c2f72753e, 'dropdown', '', '', ''),
('11365480442009091221394225o111', 'ResourceOfferPropertyCategories', 'root', 'root', 4, '2009-09-12 21:39:42', '2009-09-12 21:39:42', 0x3c656e3e5265736f75726365206f66666572202d207265616c206573746174652063617465676f726965733c2f656e3e3c72753e5265736f75726365206f66666572202d207265616c206573746174652063617465676f726965733c2f72753e, 'dropdown', '', '', ''),
('11365480442009091409045260d111', 'Mail.OrderClients', 'root', 's46', 4, '2009-09-14 09:04:52', '2009-09-14 09:04:52', 0x3c656e3e4d61696c204f7264657220436c69656e74733c2f656e3e3c66723e4d61696c204f7264657220436c69656e74733c2f66723e3c72753e4d61696c204f7264657220436c69656e74733c2f72753e, 'dropdown', '', '', ''),
('11365480442009091409470117d111', 'Mail.OrderLastSent', 'root', 's46', 4, '2009-09-14 09:47:01', '2009-09-14 09:47:01', 0x3c656e3e4d61696c204f72646572204c6173742053656e743c2f656e3e3c66723e4d61696c204f72646572204c6173742053656e743c2f66723e3c72753e4d61696c204f72646572204c6173742053656e743c2f72753e, 'dropdown', '', '', ''),
('11365480442009091410155496q111', 'ResourceOffer.property.ResourceOfferType', 'root', 'root', 4, '2009-09-14 10:15:54', '2009-09-14 10:49:05', 0x3c656e3e5265736f757263654f66666572202d2041766572746973656d656e7420747970653c2f656e3e3c66723e5265736f757263654f66666572202d205479706520646520616e6e6f6e63653c2f66723e3c6e6c3e5265736f757263654f66666572202d205479706520646520616e6e6f6e63653c2f6e6c3e3c72753e5265736f757263654f66666572202d20d0a2d0b8d0bf20d0bed0b1d18ad18fd0b2d0bbd0b5d0bdd0b8d18f3c2f72753e, 'dropdown', '', '', ''),
('11365480442009091413300818m111', 'ResourceOffer.property.ResourceOfferStatus', 'root', 'root', 4, '2009-09-14 13:30:08', '2009-09-14 13:30:08', 0x3c656e3e5265736f757263654f66666572202d2050726f7065727479207374617475733c2f656e3e3c66723e5265736f757263654f66666572202d2050726f7065727479207374617475733c2f66723e3c6e6c3e5265736f757263654f66666572202d2050726f7065727479207374617475733c2f6e6c3e3c72753e5265736f757263654f66666572202d2050726f7065727479207374617475733c2f72753e, 'dropdown', '', '', ''),
('11365480442009092519375180f111', 'Owner.OwnerPaymentStatus', 'root', 'root', 4, '2009-09-25 19:37:51', '2009-09-25 19:37:51', 0x3c656e3e436f7265202d206f776e6572207061796d656e74207374617475733c2f656e3e3c66723e436f7265202d206f776e6572207061796d656e74207374617475733c2f66723e3c6e6c3e436f7265202d206f776e6572207061796d656e74207374617475733c2f6e6c3e3c72753e436f7265202d206f776e6572207061796d656e74207374617475733c2f72753e, 'dropdown', '', '', ''),
('11365480442009101816321424u111', 'ResourceOffer.property.ResourceOfferFeaturedType', 'root', 'root', 4, '2009-10-18 16:32:14', '2009-10-18 16:33:05', 0x3c656e3e5265736f75726365206f66666572202d20666561747572656420747970657320666f72207265616c206573746174653c2f656e3e3c66723e5265736f75726365206f66666572202d20666561747572656420747970657320666f72207265616c206573746174653c2f66723e3c6e6c3e5265736f75726365206f66666572202d20666561747572656420747970657320666f72207265616c206573746174653c2f6e6c3e3c72753e5265736f75726365206f66666572202d20666561747572656420747970657320666f72207265616c206573746174653c2f72753e, 'dropdown', '', '', ''),
('11365480442009102323111833f111', 'ResourceTypeField.ResourceTypeFieldParts-property', 'root', 'root', 4, '2009-10-23 23:11:18', '2009-10-23 23:11:18', 0x3c656e3e5265736f75726365202d2070726f7065727479206669656c64732067726f7570733c2f656e3e3c66723e5265736f75726365202d2070726f7065727479206669656c64732067726f7570733c2f66723e3c6e6c3e5265736f75726365202d2070726f7065727479206669656c64732067726f7570733c2f6e6c3e3c72753e5265736f75726365202d2070726f7065727479206669656c64732067726f7570733c2f72753e, 'dropdown', '', '', ''),
('11365480442009102718191492l111', 'SearchFormViewType', 'root', 'root', 4, '2009-10-27 18:19:14', '2009-10-27 18:19:14', 0x3c656e3e53656172636820666f726d20747970653c2f656e3e3c66723e53656172636820666f726d20747970653c2f66723e3c6e6c3e53656172636820666f726d20747970653c2f6e6c3e3c72753ed0a2d0b8d0bf20d184d0bed180d0bcd18b20d0bfd0bed0b8d181d0bad0b03c2f72753e, 'dropdown', '', '', ''),
('11365480442009102718455190o111', 'ListMode', 'root', 'root', 4, '2009-10-27 18:45:51', '2009-10-27 18:45:51', 0x3c656e3e4c6973744d6f64653c2f656e3e3c66723e4c6973744d6f64653c2f66723e3c6e6c3e4c6973744d6f64653c2f6e6c3e3c72753e4c6973744d6f64653c2f72753e, 'dropdown', '', '', ''),
('11365480442009102914482159k111', 'ResourceOfferVehicleCategories', 'root', 'root', 4, '2009-10-29 14:48:21', '2009-10-29 14:48:21', 0x3c656e3e56656869636c652043617465676f726965733c2f656e3e3c66723e56656869636c652043617465676f726965733c2f66723e3c6e6c3e56656869636c652043617465676f726965733c2f6e6c3e3c72753e56656869636c652043617465676f726965733c2f72753e, 'dropdown', '', '', ''),
('11365480442009111300243961v111', 'ResourceField.Bedrooms', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', 0x3c656e3e426564726f6f6d733c2f656e3e3c66723e426564726f6f6d733c2f66723e3c6e6c3e426564726f6f6d733c2f6e6c3e3c72753e426564726f6f6d733c2f72753e, 'dropdown', '', 'resource', ''),
('11365480442009111300243977x411', 'ResourceField.Bathrooms', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', 0x3c656e3e42617468726f6f6d733c2f656e3e3c66723e53616c6c6573206465206261696e3c2f66723e3c6e6c3e42617468726f6f6d733c2f6e6c3e3c72753e42617468726f6f6d733c2f72753e, 'dropdown', '', 'resource', '');
INSERT INTO `reference` (`id`, `code`, `UserID`, `OwnerID`, `hidden`, `timeCreated`, `timeSaved`, `name`, `type`, `modules`, `module`, `accessGroups`) VALUES
('11365480442009111300243958r711', 'ResourceField.Quality', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', 0x3c656e3e5175616c6974792c20776f726b20746f20646f3c2f656e3e3c66723e45746174206465206c61206d6169736f6e3c2f66723e3c6e6c3e5175616c6974792c20776f726b20746f20646f3c2f6e6c3e3c72753e5175616c6974792c20776f726b20746f20646f3c2f72753e, 'checkboxes', '', 'resource', ''),
('11365480442009111300243936o311', 'ResourceField.Zoning', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', 0x3c656e3e536974756174696f6e3c2f656e3e3c66723e5a6f6e696e673c2f66723e3c6e6c3e536974756174696f6e3c2f6e6c3e3c72753e536974756174696f6e3c2f72753e, 'checkboxes', '', 'resource', ''),
('11365480442009111300243944c111', 'ResourceField.ExteriorFeatures', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', 0x3c656e3e4578746572696f722066656174757265733c2f656e3e3c66723e46656174757265733c2f66723e3c6e6c3e46656174757265733c2f6e6c3e3c72753e46656174757265733c2f72753e, 'checkboxes', '', 'resource', ''),
('11365480442009111300243926j811', 'ResourceField.Neighbours', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', 0x3c656e3e536974756174696f6e206e65696768626f7572733c2f656e3e3c66723e536974756174696f6e206e65696768626f7572733c2f66723e3c6e6c3e536974756174696f6e206e65696768626f7572733c2f6e6c3e3c72753ed0a0d0b0d181d0bfd0bed0bbd0bed0b6d0b5d0bdd0b8d0b520d0b4d0bed0bcd0b03c2f72753e, 'dropdown', '', 'resource', ''),
('11365480442009111300243990x211', 'ResourceField.orientation', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', 0x3c656e3e4f7269656e746174696f6e3c2f656e3e3c66723e4f7269656e746174696f6e3c2f66723e3c6e6c3e4f7269656e746174696f6e3c2f6e6c3e3c72753ed093d0b5d0bed0b3d180d0b0d184d0b8d187d0b5d181d0bad0bed0b520d180d0b0d181d0bfd0bed0bbd0bed0b6d0b5d0bdd0b8d0b520d0b4d0bed0bcd0b03c2f72753e, 'dropdown', '', 'resource', ''),
('11365480442009111300243956p711', 'ResourceField.Situation_other', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', 0x3c656e3e4f7468657220736974756174696f6e3c2f656e3e3c66723e4f7468657220736974756174696f6e3c2f66723e3c6e6c3e4f7468657220736974756174696f6e3c2f6e6c3e3c72753ed09fd180d0bed187d0b8d0b520d0bfd0b0d180d0b0d0bcd0b5d182d180d18b20d180d0b0d181d0bfd0bed0bbd0bed0b6d0b5d0bdd0b8d18f3c2f72753e, 'dropdown', '', 'resource', ''),
('11365480442009111300243917r411', 'ResourceField.Age', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', 0x3c656e3e416765206f662070726f70657274793c2f656e3e3c66723e416765206f662070726f70657274793c2f66723e3c6e6c3e416765206f662070726f70657274793c2f6e6c3e3c72753e416765206f662070726f70657274793c2f72753e, 'dropdown', '', 'resource', ''),
('11365480442009111300243915n811', 'ResourceField.Energylabel', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', 0x3c656e3e456e65726779206c6162656c3c2f656e3e3c66723e456e65726779206c6162656c3c2f66723e3c6e6c3e456e65726779206c6162656c3c2f6e6c3e3c72753e456e65726779206c6162656c3c2f72753e, 'dropdown', '', 'resource', ''),
('11365480442009111300243921f711', 'ResourceField.Heating', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', 0x3c656e3e48656174696e673c2f656e3e3c66723e4368617566666167653c2f66723e3c6e6c3e48656174696e673c2f6e6c3e3c72753ed09ed182d0bed0bfd0bbd0b5d0bdd0b8d0b53c2f72753e, 'checkboxes', '', 'resource', ''),
('11365480442009111300243951m711', 'ResourceField.ContractIsExclusive', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', 0x3c656e3e4578636c757369766520636f6e74726163743f3c2f656e3e3c66723e4d616e646174206578636c75736976653f3c2f66723e3c6e6c3e416c65656e7665726b6f6f702072656368743f3c2f6e6c3e3c72753ed09ad0bed0bdd182d180d0b0d0bad18220d18dd0bad181d0bad0bbd18ed0b7d0b8d0b2d0bdd18bd0b93f3c2f72753e, 'dropdown', '', 'resource', ''),
('11365480442009111300243973q101', 'ResourceField.ApartmentFeatures', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', 0x3c656e3e41706172746d656e742066656174757265733c2f656e3e3c66723e41706172746d656e742066656174757265733c2f66723e3c6e6c3e41706172746d656e742066656174757265733c2f6e6c3e3c72753e41706172746d656e742066656174757265733c2f72753e, 'checkboxes', '', 'resource', ''),
('11365480442009111300243963t711', 'ResourceField.OtherFeaturesEnergy', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', 0x3c656e3e4f746865722066656174757265733c2f656e3e3c66723e4578746572696f722066656174757265733c2f66723e3c6e6c3e4578746572696f722066656174757265733c2f6e6c3e3c72753e4578746572696f722066656174757265733c2f72753e, 'checkboxes', '', 'resource', ''),
('11365480442009111300243969t211', 'ResourceField.tonegotiate', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', 0x3c656e3e546f206e65676f74696174653c2f656e3e3c66723e546f206e65676f74696174653c2f66723e3c6e6c3e546f206e65676f74696174653c2f6e6c3e3c72753e546f206e65676f74696174653c2f72753e, 'radioboxes', '', 'resource', ''),
('11365480442009111300243976r511', 'ResourceField.climatisation', 'root', 'root', 1, '2009-11-13 00:24:39', '2009-11-13 00:24:39', 0x3c656e3e436c696d617469736174696f6e3c2f656e3e3c66723e436c696d617469736174696f6e3c2f66723e3c6e6c3e436c696d617469736174696f6e3c2f6e6c3e3c72753e436c696d617469736174696f6e3c2f72753e, 'dropdown', '', 'resource', ''),
('1136548044200911130151477l1111', 'ResourceField.OtherPropertyFeatures', 'root', 'root', 4, '2009-11-13 01:51:47', '2009-11-13 01:51:47', 0x3c656e3e4f746865722070726f70657274792066656174757265733c2f656e3e, 'dropdown', '', '', ''),
('11365480442010071900161159m111', 'OrderStatuses', 'root', 'bestmoments', 4, '2010-07-19 00:16:11', '2010-07-19 00:16:11', 0x3c72753e4f726465722053746174757365733c2f72753e3c656e3e4f726465722053746174757365733c2f656e3e, 'dropdown', '', '', ''),
('11365480442010090712165475i111', 'OptionGenerate', 'root', 'root', 4, '2010-09-07 12:16:54', '2010-09-07 12:16:54', 0x3c72753e4f7074696f6e47656e65726174653c2f72753e3c656e3e4f7074696f6e47656e65726174653c2f656e3e, 'dropdown', '', '', ''),
('11365480442010101812123259x111', 'OrderStatusesYN', 'root', 'bestmoments', 4, '2010-10-18 12:12:32', '2010-10-18 12:12:32', 0x3c72753ed0a1d182d0b0d182d183d181d18b20d0b7d0bad0b0d0b7d0bed0b23c2f72753e3c656e3ed0a1d182d0b0d182d183d181d18b20d0b7d0bad0b0d0b7d0bed0b23c2f656e3e, 'dropdown', '', '', ''),
('11365480442010120103255198c111', 'OptionDC', 'root', 'bestmoments', 4, '2010-12-01 03:25:51', '2010-12-01 03:25:51', 0x3c72753ed09dd0bed0bcd0b8d0bdd0b0d0bbd18b20d181d0bad0b8d0b4d0bed187d0bdd18bd18520d0bad0b0d180d1823c2f72753e3c656e3ed09dd0bed0bcd0b8d0bdd0b0d0bbd18b20d181d0bad0b8d0b4d0bed187d0bdd18bd18520d0bad0b0d180d1823c2f656e3e, 'dropdown', '', '', ''),
('11365480442011052517413210c111', 'HotelRating', 'root', 'rai', 4, '2011-05-25 17:41:32', '2011-05-25 17:41:32', 0x3c72753e486f74656c20526174696e673c2f72753e3c656e3e486f74656c20526174696e673c2f656e3e, 'dropdown', '', '', ''),
('11365480442011061123493641v111', 'RaiOrderStatus', 'root', 'rai', 4, '2011-06-11 23:49:36', '2011-06-11 23:49:36', 0x3c72753ed0a1d182d0b0d182d183d181d18b20d0b7d0b0d0bad0b0d0b7d0bed0b23c2f72753e3c656e3ed0a1d182d0b0d182d183d181d18b20d0b7d0b0d0bad0b0d0b7d0bed0b23c2f656e3e, 'dropdown', '', '', ''),
('11365480442012101117472373h111', 'ProductItems', 'root', 'ksport', 4, '2012-10-11 17:47:23', '2012-10-11 17:47:23', 0x3c72753ed0a2d0b8d0bf3c2f72753e3c656e3e547970653c2f656e3e, 'dropdown', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблиці `referenceoption`
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
-- Дамп даних таблиці `referenceoption`
--

INSERT INTO `referenceoption` (`id`, `code`, `UserID`, `OwnerID`, `timeCreated`, `timeSaved`, `hidden`, `referenceID`, `name`, `position`, `color`, `icon`) VALUES
('1', 'dropdown', '1', '', '0000-00-00 00:00:00', '2009-11-12 19:31:42', 1, '1', 0x3c656e3e44726f7020646f776e3c2f656e3e3c66723e44726f7020646f776e3c2f66723e3c6e6c3e44726f7020646f776e3c2f6e6c3e3c72753e44726f7020646f776e3c2f72753e, 2, '', ''),
('3', 'checkboxes', '1', '', '0000-00-00 00:00:00', '2009-11-12 19:31:42', 1, '1', 0x3c656e3e436865636b626f7865733c2f656e3e3c66723e436865636b626f7865733c2f66723e3c6e6c3e436865636b626f7865733c2f6e6c3e3c72753e436865636b626f7865733c2f72753e, 6, '', ''),
('5', 'radioboxes', '1', '', '0000-00-00 00:00:00', '2009-11-12 19:31:42', 1, '1', 0x3c656e3e526164696f626f7865733c2f656e3e3c66723e526164696f626f7865733c2f66723e3c6e6c3e526164696f626f7865733c2f6e6c3e3c72753e526164696f626f7865733c2f72753e, 8, '', ''),
('6', 'list', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '4', 0x3c656e3e4974656d73206c6973743c2f656e3e3c66723e4974656d73206c6973743c2f66723e, 4, '', ''),
('7', 'details', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '4', 0x3c656e3e4974656d2064657461696c733c2f656e3e3c66723e4974656d2064657461696c733c2f66723e, 6, '', ''),
('8', 'edit', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '4', 0x3c656e3e4564697420666f726d3c2f656e3e3c66723e4564697420666f726d3c2f66723e, 8, '', ''),
('9', 'text', '1', '', '0000-00-00 00:00:00', '2009-10-23 17:01:32', 1, '5', 0x3c656e3e5465787420617265613c2f656e3e3c66723e5465787420617265613c2f66723e3c6e6c3e5465787420617265613c2f6e6c3e3c72753e5465787420617265613c2f72753e, 6, '', ''),
('10', 'dropdown', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', 0x3c66723e44726f7020646f776e3c2f66723e3c656e3e44726f7020646f776e3c2f656e3e, 14, '', ''),
('11', 'checkboxes', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', 0x3c66723e436865636b626f7865733c2f66723e3c656e3e436865636b626f7865733c2f656e3e, 18, '', ''),
('12', 'radioboxes', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', 0x3c66723e526164696f626f7865733c2f66723e3c656e3e526164696f626f7865733c2f656e3e, 20, '', ''),
('13', 'date', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', 0x3c66723e446174653c2f66723e3c656e3e446174653c2f656e3e, 22, '', ''),
('14', 'time', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', 0x3c66723e54696d653c2f66723e3c656e3e54696d653c2f656e3e, 24, '', ''),
('15', 'number', '1', '', '0000-00-00 00:00:00', '2009-10-23 17:02:16', 1, '5', 0x3c656e3e446563696d616c206e756d6265723c2f656e3e3c66723e446563696d616c206e756d6265723c2f66723e3c6e6c3e446563696d616c206e756d6265723c2f6e6c3e3c72753e446563696d616c206e756d6265723c2f72753e, 12, '', ''),
('16', '1', '1', '', '0000-00-00 00:00:00', '2010-07-17 22:05:42', 1, '6', 0x3c72753ed090d0bad182d0b8d0b2d0bdd0be3c2f72753e3c656e3e4163746976653c2f656e3e, 2, '', ''),
('17', '4', '1', '', '0000-00-00 00:00:00', '2010-07-17 22:05:42', 1, '6', 0x3c72753ed097d0b0d0b1d0bbd0bed0bad0b8d180d0bed0b2d0b0d0bdd0be3c2f72753e3c656e3e426c6f636b65643c2f656e3e, 4, '', ''),
('18', 'N', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '7', 0x3c66723e4e6f3c2f66723e3c656e3e4e6f3c2f656e3e, 14, '', ''),
('19', 'Y', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '7', 0x3c66723e5965733c2f66723e3c656e3e5965733c2f656e3e, 42, '', ''),
('20', 'top', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11', 0x3c66723e546f703c2f66723e3c656e3e546f703c2f656e3e, 16, '', ''),
('21', 'left', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11', 0x3c66723e4c6566743c2f66723e3c656e3e4c6566743c2f656e3e, 44, '', ''),
('22', 'center', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11', 0x3c66723e43656e7465723c2f66723e3c656e3e43656e7465723c2f656e3e, 62, '', ''),
('23', 'right', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11', 0x3c66723e52696768743c2f66723e3c656e3e52696768743c2f656e3e, 68, '', ''),
('24', 'bottom', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11', 0x3c66723e426f74746f6d3c2f66723e3c656e3e426f74746f6d3c2f656e3e, 72, '', ''),
('25', 'system', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11', 0x3c66723e53797374656d3c2f66723e3c656e3e53797374656d3c2f656e3e, 76, '', ''),
('26', 'image', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', 0x3c66723e496d6167653c2f66723e3c656e3e496d6167653c2f656e3e, 28, '', ''),
('27', 'file', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', 0x3c66723e46696c653c2f66723e3c656e3e46696c653c2f656e3e, 30, '', ''),
('28', 'tnt', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '12', 0x3c66723e544e543c2f66723e3c656e3e544e543c2f656e3e, 18, '', ''),
('29', 'ups', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '12', 0x3c66723e5550533c2f66723e3c656e3e5550533c2f656e3e, 46, '', ''),
('30', 'left', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '13', 0x3c66723e4c6566743c2f66723e3c656e3e4c6566743c2f656e3e, 4, '', ''),
('31', 'right', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '13', 0x3c66723e52696768743c2f66723e3c656e3e52696768743c2f656e3e, 6, '', ''),
('32', 'center', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '13', 0x3c66723e43656e7465723c2f66723e3c656e3e43656e7465723c2f656e3e, 8, '', ''),
('33', '_blank', '1', '', '0000-00-00 00:00:00', '2009-09-02 13:04:38', 1, '14', 0x3c656e3e4e65772077696e646f773c2f656e3e3c72753ed09220d0bdd0bed0b2d0bed0bc20d0bed0bad0bdd0b53c2f72753e, 4, '', ''),
('34', '_self', '1', '', '0000-00-00 00:00:00', '2009-09-02 13:05:29', 1, '14', 0x3c656e3e43757272656e742077696e646f773c2f656e3e3c72753ed09220d182d0b5d0bad183d189d0b5d0bc20d0bed0bad0bdd0b53c2f72753e, 2, '', ''),
('35', 'front', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '16', 0x3c66723e46726f6e742d656e643c2f66723e3c656e3e46726f6e742d656e643c2f656e3e, 24, '', ''),
('36', 'admin', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '16', 0x3c66723e41646d696e2070616e656c3c2f66723e3c656e3e41646d696e2070616e656c3c2f656e3e, 52, '', ''),
('37', 'attribute', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '17', 0x3c656e3e4578747261206669656c643c2f656e3e3c66723e4578747261206669656c643c2f66723e, 26, '', ''),
('38', 'option', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '17', 0x3c656e3e4578747261206f7074696f6e3c2f656e3e3c66723e4578747261206f7074696f6e3c2f66723e, 54, '', ''),
('39', '+', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '18', 0x3c66723e2b3c2f66723e3c656e3e2b3c2f656e3e, 28, '', ''),
('40', '-', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '18', 0x3c66723e2d3c2f66723e3c656e3e2d3c2f656e3e, 56, '', ''),
('41', 'products', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '19', 0x3c656e3e50726f64756374733c2f656e3e3c66723e50726f64756374733c2f66723e, 12, '', ''),
('42', 'offers', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '19', 0x3c656e3e4f66666572733c2f656e3e3c66723e4f66666572733c2f66723e, 14, '', ''),
('43', 'search', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '4', 0x3c656e3e53656172636820666f726d3c2f656e3e3c66723e53656172636820666f726d3c2f66723e, 2, '', ''),
('44', 'active', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '20', 0x3c656e3e4163746976653c2f656e3e3c66723e4163746976653c2f66723e, 1, '', ''),
('45', 'hidden', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '20', 0x3c656e3e48696464656e3c2f656e3e3c66723e48696464656e3c2f66723e, 2, '', ''),
('46', 'input', 'root', 'root', '0000-00-00 00:00:00', '2009-10-23 17:01:18', 1, '5', 0x3c656e3e4c616e6775616765206669656c643c2f656e3e3c66723e4c616e6775616765206669656c643c2f66723e3c6e6c3e4c616e6775616765206669656c643c2f6e6c3e3c72753e4c616e6775616765206669656c643c2f72753e, 4, '', ''),
('47', 'multiple', 'root', 'root', '0000-00-00 00:00:00', '2009-10-23 17:02:47', 1, '5', 0x3c656e3e4d756c7469706c652064726f7020646f776e3c2f656e3e3c66723e4d756c7469706c652064726f7020646f776e3c2f66723e3c6e6c3e4d756c7469706c652064726f7020646f776e3c2f6e6c3e3c72753e4d756c7469706c652064726f7020646f776e3c2f72753e, 16, '', ''),
('48', 'money', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', 0x3c656e3e4d6f6e65793c2f656e3e3c66723e4d6f6e65793c2f66723e, 32, '', ''),
('49', 'onlyname', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '21', 0x3c656e3e4f6e6c79206d656e74696f6e206d79206e616d653c2f656e3e3c66723e4f6e6c79206d656e74696f6e206d79206e616d653c2f66723e, 1, '', ''),
('50', 'email', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '21', 0x3c656e3e4c696e6b20746f206d7920656d61696c3c2f656e3e3c66723e4c696e6b20746f206d7920656d61696c3c2f66723e, 2, '', ''),
('51', 'emailandwebsite', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '21', 0x3c656e3e4c696e6b20746f206d7920656d61696c20616e6420776562736974653c2f656e3e3c66723e4c696e6b20746f206d7920656d61696c20616e6420776562736974653c2f66723e, 3, '', ''),
('52', 'color', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', 0x3c66723e436f6c6f723c2f66723e3c656e3e436f6c6f723c2f656e3e, 34, '', ''),
('54', 'Arial', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '27', 0x3c66723e417269616c3c2f66723e, 1, '', ''),
('55', 'Courrier', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '27', 0x3c66723e436f7572726965723c2f66723e, 2, '', ''),
('56', 'Times', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '27', 0x3c66723e54696d65733c2f66723e, 3, '', ''),
('57', 'Verdana', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '27', 0x3c66723e56657264616e613c2f66723e, 4, '', ''),
('58', 'normal', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '28', 0x3c66723e4e6f726d616c3c2f66723e, 2, '', ''),
('59', 'italic', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '28', 0x3c66723e4974616c69633c2f66723e, 4, '', ''),
('60', 'normal', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '29', 0x3c66723e4e6f726d616c3c2f66723e, 2, '', ''),
('61', 'bold', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '29', 0x3c66723e426f6c643c2f66723e, 4, '', ''),
('62', '9', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', 0x3c66723e393c2f66723e, 1, '', ''),
('63', '10', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', 0x3c66723e31303c2f66723e, 2, '', ''),
('64', '11', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', 0x3c66723e31313c2f66723e, 3, '', ''),
('65', '12', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', 0x3c66723e31323c2f66723e, 4, '', ''),
('66', '13', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', 0x3c66723e31333c2f66723e, 5, '', ''),
('67', '14', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', 0x3c66723e31343c2f66723e, 6, '', ''),
('68', '16', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', 0x3c66723e31363c2f66723e, 7, '', ''),
('69', '18', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', 0x3c66723e31383c2f66723e, 8, '', ''),
('70', '20', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', 0x3c66723e32303c2f66723e, 9, '', ''),
('71', '24', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', 0x3c66723e32343c2f66723e, 10, '', ''),
('72', '30', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', 0x3c66723e33303c2f66723e, 11, '', ''),
('73', '36', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', 0x3c66723e33363c2f66723e, 12, '', ''),
('74', '48', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '30', 0x3c66723e34383c2f66723e, 13, '', ''),
('75', 'none', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '31', 0x3c66723e4e6f6e653c2f66723e, 1, '', ''),
('76', 'underline', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '31', 0x3c66723e556e6465726c696e653c2f66723e, 2, '', ''),
('77', 'line-through', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '31', 0x3c66723e4c696e65207468726f7567683c2f66723e, 3, '', ''),
('78', 'oblique', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '28', 0x3c66723e4f626c697175653c2f66723e, 5, '', ''),
('79', '1', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '32', 0x3c656e3e313c2f656e3e, 1, '', ''),
('80', '2', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '32', 0x3c656e3e323c2f656e3e, 2, '', ''),
('81', '3', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '32', 0x3c656e3e333c2f656e3e, 3, '', ''),
('82', '4', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '32', 0x3c656e3e343c2f656e3e, 4, '', ''),
('83', '5', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '32', 0x3c656e3e353c2f656e3e, 5, '', ''),
('84', '1', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '33', 0x3c656e3e313c2f656e3e, 1, '', ''),
('85', '2', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '33', 0x3c656e3e323c2f656e3e, 2, '', ''),
('86', '3', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '33', 0x3c656e3e333c2f656e3e, 3, '', ''),
('87', '4', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '33', 0x3c656e3e343c2f656e3e, 4, '', ''),
('88', '5', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '33', 0x3c656e3e353c2f656e3e, 5, '', ''),
('89', 'home', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '34', 0x3c656e3e486f6d6520706167653c2f656e3e3c66723e486f6d6520706167653c2f66723e, 2, '', ''),
('90', 'type1', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '34', 0x3c656e3e4465616c206f6620746865206461793c2f656e3e3c66723e436f757020646520636f657572203c2f66723e, 4, '', ''),
('91', 'submit', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '35', 0x3c656e3e5375626d6974207265736f757263653c2f656e3e, 1, '', ''),
('92', 'view', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '35', 0x3c656e3e56696577207265736f7572636573202874616273293c2f656e3e, 2, '', ''),
('93', 'edit', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '35', 0x3c656e3e45646974207265736f757263653c2f656e3e, 3, '', ''),
('95', 'articles', 'root', 'root', '0000-00-00 00:00:00', '2006-09-24 05:22:50', 1, '19', 0x3c656e3e41727469636c65733c2f656e3e3c72753e41727469636c65733c2f72753e3c75613e41727469636c65733c2f75613e, 2, '', ''),
('96', 'new', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '26', 0x3c656e3e4e65773c2f656e3e, 1, '', ''),
('97', 'processing', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '26', 0x3c656e3e50726f63657373696e673c2f656e3e, 1, '', ''),
('98', 'preparedforshipment', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '26', 0x3c656e3e507265706172656420666f7220736869706d656e743c2f656e3e, 2, '', ''),
('99', 'shiped', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '26', 0x3c656e3e5368697065643c2f656e3e3c66723e5368697065643c2f66723e, 3, '', ''),
('100', 'completed', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '26', 0x3c656e3e436f6d706c657465643c2f656e3e3c66723e436f6d706c657465643c2f66723e, 4, '', ''),
('101', 'canceled', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '26', 0x3c656e3e43616e63656c65643c2f656e3e3c66723e43616e63656c65643c2f66723e, 5, '', ''),
('102', 'onhold', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '26', 0x3c656e3e4f6e20686f6c643c2f656e3e3c66723e4f6e20686f6c643c2f66723e, 6, '', ''),
('103', 'paid', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '25', 0x3c656e3e506169643c2f656e3e3c66723e506169643c2f66723e, 1, '', ''),
('104', 'notpaid', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '25', 0x3c656e3e4e6f7420706169643c2f656e3e3c66723e4e6f7420706169643c2f66723e, 2, '', ''),
('105', 'partlypaid', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '25', 0x3c656e3e506172746c7920706169643c2f656e3e3c66723e506172746c7920706169643c2f66723e, 3, '', ''),
('111', 'fixed', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '36', 0x3c656e3e46697865642070726963653c2f656e3e3c66723e46697865642070726963653c2f66723e, 2, '', ''),
('110', 'bid', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '36', 0x3c656e3e42696464696e673c2f656e3e3c66723e42696464696e673c2f66723e, 1, '', ''),
('108', 'type2', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '34', 0x3c656e3e4665617475726564207061676520323c2f656e3e3c66723e4665617475726564207061676520323c2f66723e, 6, '', ''),
('109', 'type3', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '34', 0x3c656e3e4665617475726564207061676520333c2f656e3e3c66723e4665617475726564207061676520333c2f66723e, 8, '', ''),
('112', 'none', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '36', 0x3c656e3e4e6f2070726963652061643c2f656e3e3c66723e4e6f2070726963652061643c2f66723e, 3, '', ''),
('113', 'paris', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '37', 0x3c656e3e50617269733c2f656e3e3c66723e50617269733c2f66723e, 1, '', ''),
('114', 'new', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '19', '', 8, '', ''),
('115', 'news', 'root', 'root', '0000-00-00 00:00:00', '2006-09-24 05:23:02', 1, '19', 0x3c66723e4e6577733c2f66723e3c656e3e4e6577733c2f656e3e3c72753e4e6577733c2f72753e3c75613e4e6577733c2f75613e, 4, '', ''),
('118', 'tree', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '38', 0x3c656e3e43617465676f72696573206d656e753c2f656e3e3c66723e43617465676f72696573206d656e753c2f66723e, 1, '', ''),
('119', 'dropdown', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '38', 0x3c656e3e43617465676f726965732064726f7020646f776e3c2f656e3e3c66723e43617465676f726965732064726f7020646f776e3c2f66723e, 2, '', ''),
('120', 'main', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '38', 0x3c656e3e43617465676f726965732063656e746572206c697374696e673c2f656e3e3c66723e43617465676f726965732063656e746572206c697374696e673c2f66723e, 3, '', ''),
('124', 'faq', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '39', 0x3c66723e4641513c2f66723e, 3, '', ''),
('122', 'tips', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '39', 0x3c66723e546970733c2f66723e, 2, '', ''),
('123', 'helparticle', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '39', 0x3c66723e48656c702041727469636c653c2f66723e, 1, '', ''),
('125', 'all', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '40', 0x3c66723e416c6c2073696465733c2f66723e, 1, '', ''),
('126', 'put', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '40', 0x3c66723e50757420746f2063656e7472616c207365727665723c2f66723e, 2, '', ''),
('127', 'get', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '40', 0x3c66723e4765742066726f6d2063656e747261207365727665723c2f66723e, 3, '', ''),
('128', 'l', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '41', 0x3c66723e4c6f636b65643c2f66723e, 4, '', ''),
('129', 'p', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '41', 0x3c66723e4c6f636b20746f207075743c2f66723e, 8, '', ''),
('130', 'g', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '41', 0x3c66723e4c6f636b20746f206765743c2f66723e, 6, '', ''),
('131', 'n', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '41', 0x3c66723e4e6f74206c6f636b65643c2f66723e, 2, '', ''),
('132', 'currentleveltop', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '42', 0x3c66723e53686f772063757272656e74206c6576656c20706167657320696e20746f702064726f7020646f776e3c2f66723e, 1, '', ''),
('133', 'lowerleveltop', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '42', 0x3c66723e53686f77206c6f776572206c6576656c206f6620706167657320696e20746f702064726f7020646f776e3c2f66723e, 2, '', ''),
('134', 'lowerlevellist', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '42', 0x3c66723e53686f77206c6f776572206c6576656c20706167657320696e20746865206c6973743c2f66723e, 3, '', ''),
('135', 'back', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '43', 0x3c66723e4163746976617465206261636b206c696e6b3c2f66723e, 1, '', ''),
('136', 'print', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '43', 0x3c66723e4163746976617465207072696e74206c696e6b3c2f66723e, 2, '', ''),
('137', 'pdf', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '43', 0x3c66723e416374697661746520504446206c696e6b3c2f66723e, 3, '', ''),
('138', 'addtofavorite', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '43', 0x3c66723e41637469766174652061646420746f206661766f72697465206c696e6b3c2f66723e, 4, '', ''),
('139', 'sendtofriend', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '43', 0x3c66723e41637469766174652073656e6420746f20667269656e64206c696e6b3c2f66723e, 5, '', ''),
('140', 'active', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '44', 0x3c66723e416374697661746520636f6d6d656e74733c2f66723e, 2, '', ''),
('141', 'date', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '44', 0x3c66723e53686f77206461746520666f7220636f6d6d656e74733c2f66723e, 4, '', ''),
('143', 'hideintros', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '42', 0x3c66723e4869646520696e74726f20746578742066726f6d206c6f776572206c6576656c207061676573206c69737465643c2f66723e, 4, '', ''),
('144', 'showresources', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '48', 0x3c66723e53686f772070726f647563747320616e64206f66666572733c2f66723e, 1, '', ''),
('145', 'showintroinmenu', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '42', 0x3c66723e53686f77207061676520696e74726f20696e206d656e753c2f66723e, 5, '', ''),
('146', 'sitemap', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '50', 0x3c656e3e486964652066726f6d20736974656d61703c2f656e3e, 2, '', ''),
('147', 'menu', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '49', 0x3c656e3e4d656e753c2f656e3e, 1, '', ''),
('148', 'system', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '49', 0x3c656e3e53797374656d3c2f656e3e, 2, '', ''),
('149', 'layout', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '49', 0x3c656e3e4c61796f7574206c696e6b733c2f656e3e, 3, '', ''),
('150', 'manually', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '51', 0x3c656e3e4d616e75616c6c79207472616e736c6174696f6e3c2f656e3e3c66723e4d616e75616c6c79207472616e736c6174696f6e3c2f66723e, 1, '', ''),
('151', 'babelfish', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '51', 0x3c656e3e426162656c666973683c2f656e3e3c66723e426162656c666973683c2f66723e, 2, '', ''),
('152', 'allowners', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '50', 0x3c656e3e417661696c61626c6520666f7220616c6c206f776e6572733c2f656e3e3c66723e417661696c61626c6520666f7220616c6c206f776e6572733c2f66723e, 3, '', ''),
('153', 'shoppingcart', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '52', 0x3c656e3e53686f7070696e6720636172743c2f656e3e, 2, '', ''),
('154', 'sellbid', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '52', 0x3c656e3e53656c6c206269643c2f656e3e, 4, '', ''),
('155', 'buybid', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '52', 0x3c656e3e427579206269643c2f656e3e, 6, '', ''),
('156', 'enquiry', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '52', 0x3c656e3e456e71756972793c2f656e3e, 7, '', ''),
('157', 'order', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '52', 0x3c656e3e4f726465723c2f656e3e, 8, '', ''),
('158', 'no', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '52', 0x3c656e3e4e6f20666f726d733c2f656e3e, 9, '', ''),
('11365480442006040319074938s111', 'island', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040319043581m211', 0x3c656e3e49736c616e643c2f656e3e3c66723e49736c616e643c2f66723e, 1, '', ''),
('11365480442006040319084092l111', 'addproperty', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040319043581m111', 0x3c656e3e4164642070726f70657274793c2f656e3e3c66723e4164642070726f70657274793c2f66723e, 1, '', ''),
('11365480442006040319090717e111', 'list', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040319043581m111', 0x3c656e3e50726f7065727479207479706573206c6973743c2f656e3e3c66723e50726f7065727479207479706573206c6973743c2f66723e, 2, '', ''),
('11365480442006040319105360x111', 'field', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '1136548044200604031910210z1111', 0x3c656e3e4578747261206669656c643c2f656e3e3c66723e4578747261206669656c643c2f66723e, 1, '', ''),
('11365480442006040319111770k111', 'option', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '1136548044200604031910210z1111', 0x3c656e3e4578747261206f7074696f6e202873656c656374656420647572696e67206f72646572696e67293c2f656e3e3c66723e4578747261206f7074696f6e202873656c656374656420647572696e67206f72646572696e67293c2f66723e, 2, '', ''),
('11365480442006040319123068b111', 'list', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040319120096v111', 0x3c656e3e4c697374206f662070726f706572746965733c2f656e3e3c66723e4c697374206f662070726f706572746965733c2f66723e, 4, '', ''),
('11365480442006040319143092v111', 'details', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040319120096v111', 0x3c656e3e50726f70657274792064657461696c733c2f656e3e3c66723e50726f70657274792064657461696c733c2f66723e, 6, '', ''),
('11365480442006041016093272i111', 'photo', 'root', 'root', '0000-00-00 00:00:00', '2006-04-22 18:06:47', 1, '11365480442006041016085452d111', 0x3c66723e50686f746f3c2f66723e3c656e3e50686f746f733c2f656e3e, 2, '', ''),
('11365480442006040322321551a111', 'home', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040322314381r111', 0x3c656e3e486f6d65706167653c2f656e3e3c66723e486f6d65706167653c2f66723e, 1, '', ''),
('11365480442006040322322727j111', 'top10', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040322314381r111', 0x3c656e3e546f7031303c2f656e3e3c66723e546f7031303c2f66723e, 2, '', ''),
('11365480442006040323011347o111', 'sell', 'root', 'root', '0000-00-00 00:00:00', '2006-04-22 09:09:03', 1, '11365480442006040323005675u111', 0x3c66723e546f2073656c6c3c2f66723e3c656e3e50726f706572747920666f722073616c653c2f656e3e, 2, '', ''),
('11365480442006040323012442w111', 'rent', 'root', 'root', '0000-00-00 00:00:00', '2006-04-22 09:09:16', 1, '11365480442006040323005675u111', 0x3c66723e546f2072656e743c2f66723e3c656e3e52656e74616c2070726f70657274793c2f656e3e, 4, '', ''),
('11365480442006040323013717z111', 'buy', 'root', 'root', '0000-00-00 00:00:00', '2006-05-01 20:31:58', 1, '11365480442006040323005675u111', 0x3c66723e42757920726571756573743c2f66723e3c656e3e5265717565737420746f20627579206f722072656e7420612070726f70657274793c2f656e3e, 6, '', ''),
('11365480442006040921253137b111', 'main', 'root', 'root', '0000-00-00 00:00:00', '2006-05-01 11:04:48', 1, '11365480442006040921244344d111', 0x3c66723e4d61696e3c2f66723e3c656e3e50726f70657274792070726f66696c653c2f656e3e, 2, '', ''),
('11365480442006040921254722s111', 'owner', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040921244344d111', 0x3c656e3e4f776e6572206669656c64733c2f656e3e3c66723e4f776e6572206669656c64733c2f66723e, 6, '', ''),
('1136548044200604092126020z1111', 'admin', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040921244344d111', 0x3c656e3e41646d6e6973747261746f723c2f656e3e3c66723e41646d6e6973747261746f723c2f66723e, 8, '', ''),
('11365480442006040921263319p111', 'agent', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006040921244344d111', 0x3c656e3e4167656e7473206669656c64733c2f656e3e3c66723e4167656e7473206669656c64733c2f66723e, 10, '', ''),
('11365480442006042304184468o111', 'companies', 'root', 'root', '2006-04-23 04:18:44', '2006-04-23 04:18:44', 1, '19', 0x3c656e3e436f6d70616e6965733c2f656e3e, 10, '', ''),
('11365480442006041016100845j111', 'video', 'root', 'root', '0000-00-00 00:00:00', '2006-04-22 18:07:10', 1, '11365480442006041016085452d111', 0x3c66723e46696c653c2f66723e3c656e3e566964656f2070726573656e746174696f6e733c2f656e3e, 6, '', ''),
('11365480442006041300393063c111', 'underOffer', 'root', 'root', '0000-00-00 00:00:00', '2006-06-13 09:30:31', 1, '11365480442006041300391546v111', 0x3c66723e41746976653c2f66723e3c656e3e556e646572206f666665723c2f656e3e, 4, '', ''),
('11365480442006041300394314r111', 'temporarilyUnavailable', 'root', 'root', '0000-00-00 00:00:00', '2006-06-13 09:30:59', 1, '11365480442006041300391546v111', 0x3c66723e48696464656e3c2f66723e3c656e3e54656d706f726172696c7920756e617661696c61626c65203c2f656e3e, 6, '', ''),
('11365480442006041309213099q111', 'forSale', 'root', 'root', '0000-00-00 00:00:00', '2006-06-13 09:29:56', 1, '11365480442006041300391546v111', 0x3c66723e4e65773c2f66723e3c656e3e466f722073616c653c2f656e3e, 2, '', ''),
('11365480442006041312550199k111', 'notpaid', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006041312544352x111', 0x3c656e3e4e6f7420706169643c2f656e3e3c66723e4e6f7420706169643c2f66723e, 1, '', ''),
('11365480442006041312551229q111', 'paid', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006041312544352x111', 0x3c656e3e506169643c2f656e3e3c66723e506169643c2f66723e, 2, '', ''),
('11365480442006041312553564p111', 'partlypaid', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006041312544352x111', 0x3c656e3e506172746c7920706169643c2f656e3e3c66723e506172746c7920706169643c2f66723e, 3, '', ''),
('11365480442006041312554887l111', 'sent', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006041312544352x111', 0x3c656e3e5061796d656e742073656e743c2f656e3e3c66723e5061796d656e742073656e743c2f66723e, 4, '', ''),
('1136548044200604131256430y1111', 'new', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006041312562439q111', 0x3c656e3e4e65773c2f656e3e3c66723e4e65773c2f66723e, 1, '', ''),
('11365480442006041312570788j111', 'discussion', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006041312562439q111', 0x3c656e3e496e2064697363757373696f6e3c2f656e3e3c66723e496e2064697363757373696f6e3c2f66723e, 2, '', ''),
('11365480442006041312572312n111', 'accepted', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '11365480442006041312562439q111', 0x3c656e3e41636365707465643c2f656e3e3c66723e41636365707465643c2f66723e, 3, '', ''),
('11365480442006041413595693n111', 'location', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '5', 0x3c656e3e4c6f636174696f6e3c2f656e3e3c66723e4c6f636174696f6e3c2f66723e, 26, '', ''),
('11365480442006041415184951v111', 'char', 'root', 'root', '0000-00-00 00:00:00', '2009-10-23 17:00:49', 1, '5', 0x3c656e3e4368617261637465723c2f656e3e3c66723e4368617261637465723c2f66723e3c6e6c3e4368617261637465723c2f6e6c3e3c72753e4368617261637465723c2f72753e, 2, '', ''),
('11365480442006051312073954r111', 'continent', 'root', 'root', '2006-05-13 12:07:39', '2010-05-15 23:29:59', 4, '11365480442006051312071812l111', 0x3c72753e436f6e74696e656e743c2f72753e3c656e3e436f6e74696e656e743c2f656e3e, 6, '', ''),
('11365480442006050103524470r111', 'USD', 'root', 'root', '2006-05-01 03:52:44', '2010-02-13 00:23:11', 1, '11365480442006050103522987r111', 0x3c656e3e5553443c2f656e3e3c656c3e5553443c2f656c3e3c65673e5553443c2f65673e3c64653e5553443c2f64653e3c3e5553443c2f3e3c66723e5553443c2f66723e3c65733e5553443c2f65733e3c69743e5553443c2f69743e3c74753e5553443c2f74753e3c72753e5553443c2f72753e, 4, '', ''),
('11365480442006050103530629s111', 'EUR', 'root', 'root', '2006-05-01 03:53:06', '2010-02-13 00:23:11', 1, '11365480442006050103522987r111', 0x3c656e3e4555523c2f656e3e3c656c3e4555523c2f656c3e3c65673e4555523c2f65673e3c64653e4555523c2f64653e3c3e4555523c2f3e3c66723e4555523c2f66723e3c65733e4555523c2f65733e3c69743e4555523c2f69743e3c74753e4555523c2f74753e3c72753e4555523c2f72753e, 6, '', ''),
('11365480442006050103534464k111', 'GBP', 'root', 'root', '2006-05-01 03:53:44', '2010-02-13 00:23:11', 4, '11365480442006050103522987r111', 0x3c656e3e4742503c2f656e3e3c656c3e4742503c2f656c3e3c65673e4742503c2f65673e3c64653e4742503c2f64653e3c66723e4742503c2f66723e3c65733e4742503c2f65733e3c69743e4742503c2f69743e3c74753e4742503c2f74753e3c72753e4742503c2f72753e, 8, '', ''),
('11365480442006050103535715i111', 'CAD', 'root', 'root', '2006-05-01 03:53:57', '2010-02-13 00:23:11', 4, '11365480442006050103522987r111', 0x3c656e3e4341443c2f656e3e3c656c3e4341443c2f656c3e3c65673e4341443c2f65673e3c64653e4341443c2f64653e3c66723e4341443c2f66723e3c65733e4341443c2f65733e3c69743e4341443c2f69743e3c74753e4341443c2f74753e3c72753e4341443c2f72753e, 10, '', ''),
('11365480442006050103540935x111', 'AUD', 'root', 'root', '2006-05-01 03:54:09', '2010-02-13 00:23:11', 4, '11365480442006050103522987r111', 0x3c656e3e4155443c2f656e3e3c656c3e4155443c2f656c3e3c65673e4155443c2f65673e3c64653e4155443c2f64653e3c66723e4155443c2f66723e3c65733e4155443c2f65733e3c69743e4155443c2f69743e3c74753e4155443c2f74753e3c72753e4155443c2f72753e, 12, '', ''),
('11365480442006050103543838e111', 'JPY', 'root', 'root', '2006-05-01 03:54:38', '2010-02-13 00:23:11', 4, '11365480442006050103522987r111', 0x3c656e3e4a50593c2f656e3e3c656c3e4a50593c2f656c3e3c65673e4a50593c2f65673e3c64653e4a50593c2f64653e3c66723e4a50593c2f66723e3c65733e4a50593c2f65733e3c69743e4a50593c2f69743e3c74753e4a50593c2f74753e3c72753e4a50593c2f72753e, 14, '', ''),
('1136548044200605010354582u1111', 'RUB', 'root', 'root', '2006-05-01 03:54:58', '2010-02-13 00:23:11', 4, '11365480442006050103522987r111', 0x3c656e3e5255423c2f656e3e3c656c3e5255423c2f656c3e3c65673e5255423c2f65673e3c64653e5255423c2f64653e3c66723e5255423c2f66723e3c65733e5255423c2f65733e3c69743e5255423c2f69743e3c74753e5255423c2f74753e3c72753e5255423c2f72753e, 16, '', ''),
('11365480442006050103551194l111', 'CNY', 'root', 'root', '2006-05-01 03:55:11', '2010-02-13 00:23:11', 4, '11365480442006050103522987r111', 0x3c656e3e434e593c2f656e3e3c656c3e434e593c2f656c3e3c65673e434e593c2f65673e3c64653e434e593c2f64653e3c66723e434e593c2f66723e3c65733e434e593c2f65733e3c69743e434e593c2f69743e3c74753e434e593c2f74753e3c72753e434e593c2f72753e, 18, '', ''),
('11365480442006050103553038o111', 'CHF', 'root', 'root', '2006-05-01 03:55:30', '2010-02-13 00:23:11', 4, '11365480442006050103522987r111', 0x3c656e3e4348463c2f656e3e3c656c3e4348463c2f656c3e3c65673e4348463c2f65673e3c64653e4348463c2f64653e3c66723e4348463c2f66723e3c65733e4348463c2f65733e3c69743e4348463c2f69743e3c74753e4348463c2f74753e3c72753e4348463c2f72753e, 20, '', ''),
('11365480442006050104090136y111', 'negotiable', 'root', 'root', '2006-05-01 04:09:01', '2006-05-01 04:09:01', 1, '11365480442006050104084232y111', 0x3c656e3e4e65676f746961626c653c2f656e3e, 2, '', ''),
('11365480442006050104101162r111', 'financing', 'root', 'root', '2006-05-01 04:10:11', '2006-05-01 04:10:11', 1, '11365480442006050104084232y111', 0x3c656e3e46696e616e63696e6720417661696c61626c653c2f656e3e, 4, '', ''),
('11365480442006050104115872n111', 'night', 'root', 'root', '2006-05-01 04:11:58', '2006-05-01 04:13:17', 1, '11365480442006050104084232y111', 0x3c656e3e52656e7420706572206e696768743c2f656e3e, 6, '', ''),
('11365480442006050104120825f111', 'week', 'root', 'root', '2006-05-01 04:12:08', '2006-05-01 04:12:08', 1, '11365480442006050104084232y111', 0x3c656e3e52656e7420706572207765656b3c2f656e3e, 8, '', ''),
('11365480442006050104121763z111', 'month', 'root', 'root', '2006-05-01 04:12:17', '2006-05-01 04:12:17', 1, '11365480442006050104084232y111', 0x3c656e3e52656e7420706572206d6f6e74683c2f656e3e, 10, '', ''),
('11365480442006050111041289c111', 'contact', 'root', 'root', '2006-05-01 11:04:12', '2006-05-01 11:05:06', 1, '11365480442006040921244344d111', 0x3c656e3e436f6e7461637420696e666f726d6174696f6e3c2f656e3e, 4, '', ''),
('11365480442006051312091898y111', 'continentr', 'root', 'root', '2006-05-13 12:09:18', '2010-05-15 23:29:59', 4, '11365480442006051312071812l111', 0x3c72753e436f6e74696e656e74616c20726567696f6e3c2f72753e3c656e3e436f6e74696e656e74616c20726567696f6e3c2f656e3e, 8, '', ''),
('11365480442006051312100529h111', 'region', 'root', 'root', '2006-05-13 12:10:05', '2010-05-15 23:29:59', 4, '11365480442006051312071812l111', 0x3c72753e526567696f6e2f53746174653c2f72753e3c656e3e526567696f6e2f53746174653c2f656e3e, 12, '', ''),
('1136548044200605131210158e1111', 'country', 'root', 'root', '2006-05-13 12:10:15', '2010-05-15 23:29:59', 4, '11365480442006051312071812l111', 0x3c72753ed0a1d182d180d0b0d0bdd0b03c2f72753e3c656e3e436f756e7472793c2f656e3e3c3ed0a1d182d180d0b0d0bdd0b03c2f3e, 10, '', ''),
('11365480442006051312112782e111', 'city', 'root', 'root', '2006-05-13 12:11:27', '2010-05-15 23:29:59', 4, '11365480442006051312071812l111', 0x3c72753e436974793c2f72753e3c656e3e436974793c2f656e3e, 14, '', ''),
('11365480442006051312121914s111', 'district', 'root', 'root', '2006-05-13 12:12:19', '2010-05-15 23:29:59', 4, '11365480442006051312071812l111', 0x3c72753e436974792064697374726963743c2f72753e3c656e3e436974792064697374726963743c2f656e3e, 16, '', ''),
('11365480442006051407043477c111', 'virtual', 'root', 'root', '2006-05-14 07:04:34', '2006-05-14 07:04:34', 1, '50', 0x3c656e3e53686f7720696e207669727475616c207765627369746520736974656d61703c2f656e3e, 4, '', ''),
('11365480442006060909565984f111', 'excellent', 'root', 'root', '2006-06-09 09:56:59', '2006-06-09 09:56:59', 1, '11365480442006060909533955r111', 0x3c656e3e457863656c6c656e743c2f656e3e, 2, '', ''),
('1136548044200606090957389x1111', 'verygood', 'root', 'root', '2006-06-09 09:57:38', '2006-06-09 09:57:38', 1, '11365480442006060909533955r111', 0x3c656e3e5665727920676f6f643c2f656e3e, 4, '', ''),
('11365480442006061302522271y111', 'good', 'root', 'root', '2006-06-13 02:52:22', '2006-06-13 02:52:22', 1, '11365480442006060909533955r111', 0x3c656e3e476f6f643c2f656e3e, 6, '', ''),
('11365480442006061302531595h111', 'aboveAverage', 'root', 'root', '2006-06-13 02:53:15', '2006-06-13 02:57:03', 1, '11365480442006060909533955r111', 0x3c656e3e41626f766520617665726167653c2f656e3e, 8, '', ''),
('1136548044200606130257581w1111', 'needsMinorDecoration', 'root', 'root', '2006-06-13 02:57:58', '2006-06-13 02:57:58', 1, '11365480442006060909533955r111', 0x3c656e3e4e65656473206d696e6f72206465636f726174696f6e3c2f656e3e, 9, '', ''),
('11365480442006061302595262z111', 'needsCompleteRedecoration', 'root', 'root', '2006-06-13 02:59:52', '2006-06-13 02:59:52', 1, '11365480442006060909533955r111', 0x3c656e3e4e6565647320636f6d706c6574652072656465636f726174696f6e3c2f656e3e, 10, '', ''),
('11365480442006061303013642n111', 'majorWorkRequired', 'root', 'root', '2006-06-13 03:01:36', '2006-06-13 03:01:36', 1, '11365480442006060909533955r111', 0x3c656e3e4d616a6f7220776f726b2072657175697265643c2f656e3e, 11, '', ''),
('11365480442006062508285921x111', 'edit', 'root', 'root', '2006-06-25 08:28:59', '2006-06-25 08:28:59', 1, '11365480442006040319120096v111', 0x3c656e3e45646974206f72206164642070726f706572747920666f726d3c2f656e3e, 9, '', ''),
('1136548044200606250828335v1111', 'search', 'root', 'root', '2006-06-25 08:28:33', '2006-06-25 08:28:33', 1, '11365480442006040319120096v111', 0x3c656e3e46756c6c2073656172636820666f726d3c2f656e3e, 8, '', ''),
('11365480442006062508282277k111', 'quicksearch', 'root', 'root', '2006-06-25 08:28:22', '2006-06-25 08:28:22', 1, '11365480442006040319120096v111', 0x3c656e3e517569636b2073656172636820666f726d3c2f656e3e, 7, '', ''),
('11365480442006061307454551k111', 'freehold', 'root', 'root', '2006-06-13 07:45:45', '2006-06-13 07:45:45', 1, '11365480442006061307440372n111', 0x3c656e3e46726565686f6c643c2f656e3e, 1, '', ''),
('11365480442006061307462017h111', 'leasehold', 'root', 'root', '2006-06-13 07:46:20', '2006-06-13 07:46:20', 1, '11365480442006061307440372n111', 0x3c656e3e4c65617365686f6c643c2f656e3e, 2, '', ''),
('1136548044200606130746492g1111', 'shareOfFreehold', 'root', 'root', '2006-06-13 07:46:49', '2006-06-13 07:46:49', 1, '11365480442006061307440372n111', 0x3c656e3e5368617265206f662046726565686f6c643c2f656e3e, 3, '', ''),
('11365480442006061307471931x111', 'leasehold', 'root', 'root', '2006-06-13 07:47:19', '2006-06-13 07:47:19', 1, '11365480442006061307440372n111', 0x3c656e3e4c65617365686f6c643c2f656e3e, 4, '', ''),
('1136548044200606130805460r1111', 'less50years', 'root', 'root', '2006-06-13 08:05:46', '2006-06-13 08:05:46', 1, '11365480442006061308035056c111', 0x3c656e3e4c657373207468616e2035302079656172733c2f656e3e, 2, '', ''),
('11365480442006062708303813y111', 'years50', 'root', 'root', '2006-06-27 08:30:38', '2006-06-27 08:30:38', 1, '11365480442006061308035056c111', 0x3c656e3e35302b3c2f656e3e, 3, '', ''),
('11365480442006061308070185q111', 'years60', 'root', 'root', '2006-06-13 08:07:01', '2006-06-13 08:07:01', 1, '11365480442006061308035056c111', 0x3c656e3e36302b3c2f656e3e, 6, '', ''),
('11365480442006061308072711b111', 'years75', 'root', 'root', '2006-06-13 08:07:27', '2006-06-13 08:07:27', 1, '11365480442006061308035056c111', 0x3c656e3e37352b3c2f656e3e, 8, '', ''),
('11365480442006061308075231c111', 'year85', 'root', 'root', '2006-06-13 08:07:52', '2006-06-13 08:07:52', 1, '11365480442006061308035056c111', 0x3c656e3e38352b3c2f656e3e, 10, '', ''),
('1136548044200606130808236m1111', 'year90', 'root', 'root', '2006-06-13 08:08:23', '2006-06-13 08:08:23', 1, '11365480442006061308035056c111', 0x3c656e3e39302b3c2f656e3e, 12, '', ''),
('11365480442006061308085019t111', 'year95', 'root', 'root', '2006-06-13 08:08:50', '2006-06-13 08:08:50', 1, '11365480442006061308035056c111', 0x3c656e3e39352b3c2f656e3e, 14, '', ''),
('1136548044200606130809119m1111', 'year100', 'root', 'root', '2006-06-13 08:09:11', '2006-06-13 08:09:11', 1, '11365480442006061308035056c111', 0x3c656e3e3130302b3c2f656e3e, 16, '', ''),
('11365480442006061308325916u111', 'house', 'root', 'root', '2006-06-13 08:32:59', '2006-06-13 08:32:59', 1, '11365480442006061308322367z111', 0x3c656e3e546572726163656420486f7573653c2f656e3e, 1, '', ''),
('11365480442006061308334918h111', 'semi', 'root', 'root', '2006-06-13 08:33:49', '2006-06-13 08:33:49', 1, '11365480442006061308322367z111', 0x3c656e3e53656d692044657461636865643c2f656e3e, 2, '', ''),
('11365480442006061308342267e111', 'detached', 'root', 'root', '2006-06-13 08:34:22', '2006-06-13 08:34:22', 1, '11365480442006061308322367z111', 0x3c656e3e44657461636865643c2f656e3e, 3, '', ''),
('11365480442006061308344180j111', 'flat', 'root', 'root', '2006-06-13 08:34:41', '2006-06-13 08:34:41', 1, '11365480442006061308322367z111', 0x3c656e3e466c61743c2f656e3e, 4, '', ''),
('11365480442006061308350962r111', 'bungalow', 'root', 'root', '2006-06-13 08:35:09', '2006-06-13 08:35:09', 1, '11365480442006061308322367z111', 0x3c656e3e42756e67616c6f773c2f656e3e, 5, '', ''),
('11365480442006061308353696x111', 'maisonette', 'root', 'root', '2006-06-13 08:35:36', '2006-06-13 08:35:36', 1, '11365480442006061308322367z111', 0x3c656e3e4d6169736f6e657474653c2f656e3e, 6, '', ''),
('11365480442006061308360197f111', 'studio', 'root', 'root', '2006-06-13 08:36:01', '2006-06-13 08:36:01', 1, '11365480442006061308322367z111', 0x3c656e3e53747564696f3c2f656e3e, 7, '', ''),
('11365480442006062509191827u111', '50000', 'root', 'root', '2006-06-25 09:19:18', '2006-06-25 09:28:08', 1, '11365480442006062509175374o111', 0x3c656e3e35302c3030303c2f656e3e, 2, '', ''),
('1136548044200606250919331h1111', '100000', 'root', 'root', '2006-06-25 09:19:33', '2006-06-25 09:21:47', 1, '11365480442006062509175374o111', 0x3c656e3e3130302c3030303c2f656e3e, 4, '', ''),
('11365480442006062509195125u111', '150000', 'root', 'root', '2006-06-25 09:19:51', '2006-06-25 09:21:31', 1, '11365480442006062509175374o111', 0x3c656e3e3135302c3030303c2f656e3e, 6, '', ''),
('11365480442006062509221235x111', '200000', 'root', 'root', '2006-06-25 09:22:12', '2006-06-25 09:22:12', 1, '11365480442006062509175374o111', 0x3c656e3e3230302c3030303c2f656e3e, 8, '', ''),
('11365480442006062509222357k111', '250000', 'root', 'root', '2006-06-25 09:22:23', '2006-06-25 09:22:23', 1, '11365480442006062509175374o111', 0x3c656e3e3235302c3030303c2f656e3e, 10, '', ''),
('11365480442006062509223318e111', '300000', 'root', 'root', '2006-06-25 09:22:33', '2006-06-25 09:22:33', 1, '11365480442006062509175374o111', 0x3c656e3e3330302c3030303c2f656e3e, 12, '', ''),
('11365480442006062509224475g111', '350000', 'root', 'root', '2006-06-25 09:22:44', '2006-06-25 09:22:44', 1, '11365480442006062509175374o111', 0x3c656e3e3335302c3030303c2f656e3e, 14, '', ''),
('11365480442006062509225893e111', '400000', 'root', 'root', '2006-06-25 09:22:58', '2006-06-25 09:22:58', 1, '11365480442006062509175374o111', 0x3c656e3e3430302c3030303c2f656e3e, 16, '', ''),
('11365480442006062509230954s111', '450000', 'root', 'root', '2006-06-25 09:23:09', '2006-06-25 09:23:09', 1, '11365480442006062509175374o111', 0x3c656e3e3435302c3030303c2f656e3e, 18, '', ''),
('11365480442006062509232120i111', '500000', 'root', 'root', '2006-06-25 09:23:21', '2006-06-25 09:23:21', 1, '11365480442006062509175374o111', 0x3c656e3e3530302c3030303c2f656e3e, 20, '', ''),
('1136548044200606250923459l1111', '600000', 'root', 'root', '2006-06-25 09:23:45', '2006-06-25 09:23:45', 1, '11365480442006062509175374o111', 0x3c656e3e3630302c3030303c2f656e3e, 22, '', ''),
('11365480442006062509235879g111', '700000', 'root', 'root', '2006-06-25 09:23:58', '2006-06-25 09:23:58', 1, '11365480442006062509175374o111', 0x3c656e3e3730302c3030303c2f656e3e, 24, '', ''),
('11365480442006062509240925z111', '800000', 'root', 'root', '2006-06-25 09:24:09', '2006-06-25 09:24:09', 1, '11365480442006062509175374o111', 0x3c656e3e3830302c3030303c2f656e3e, 26, '', ''),
('11365480442006062509241951s111', '900000', 'root', 'root', '2006-06-25 09:24:19', '2006-06-25 09:24:19', 1, '11365480442006062509175374o111', 0x3c656e3e3930302c3030303c2f656e3e, 28, '', ''),
('11365480442006062509250926v111', '1000000', 'root', 'root', '2006-06-25 09:25:09', '2006-06-25 09:25:09', 1, '11365480442006062509175374o111', 0x3c656e3e312c3030302c3030303c2f656e3e, 30, '', ''),
('11365480442006062509253347y111', '1250000', 'root', 'root', '2006-06-25 09:25:33', '2006-06-25 09:25:33', 1, '11365480442006062509175374o111', 0x3c656e3e312c3235302c3030303c2f656e3e, 32, '', ''),
('11365480442006062509255481u111', '1500000', 'root', 'root', '2006-06-25 09:25:54', '2006-06-25 09:25:54', 1, '11365480442006062509175374o111', 0x3c656e3e312c3530302c3030303c2f656e3e, 34, '', ''),
('1136548044200606250926053m1111', '1750000', 'root', 'root', '2006-06-25 09:26:05', '2006-06-25 09:26:05', 1, '11365480442006062509175374o111', 0x3c656e3e312c3735302c3030303c2f656e3e, 36, '', ''),
('1136548044200606250926196o1111', '2000000', 'root', 'root', '2006-06-25 09:26:19', '2006-06-25 09:26:19', 1, '11365480442006062509175374o111', 0x3c656e3e322c3030302c3030303c2f656e3e, 38, '', ''),
('11365480442006062708291777u111', 'less1miles', 'root', 'root', '2006-06-27 08:29:17', '2006-06-27 08:29:17', 1, '11365480442006062707470694t111', 0x3c656e3e6c657373207468656e20316d6c3c2f656e3e, 1, '', ''),
('11365480442006062708313022v111', 'miles5', 'root', 'root', '2006-06-27 08:31:30', '2006-06-27 08:31:30', 1, '11365480442006062707470694t111', 0x3c656e3e352b3c2f656e3e, 2, '', ''),
('11365480442006062708315424n111', 'miles10', 'root', 'root', '2006-06-27 08:31:54', '2006-06-27 08:31:54', 1, '11365480442006062707470694t111', 0x3c656e3e31302b3c2f656e3e, 3, '', ''),
('1136548044200606181148247w1111', 'main', 'root', 'root', '2006-06-18 11:48:24', '2007-09-01 18:42:07', 1, '11365480442006061811475348z111', 0x3c656e3e4d61696e20706572736f6e616c20696e666f726d6174696f6e3c2f656e3e3c72753ed09ad0bed0bdd182d0b0d0bad182d0bdd18bd0b520d0b4d0b0d0bdd0bdd18bd0b53c2f72753e3c75613e4d61696e20706572736f6e616c20696e666f726d6174696f6e3c2f75613e, 2, '', ''),
('11365480442007021819431132e111', '1', 'root', 'root', '2007-02-18 19:43:11', '2008-09-29 23:26:46', 1, '11365480442007021819424670x111', 0x3c656e3e41727469636c65733c2f656e3e3c72753ed0a1d182d0b0d182d18cd0b83c2f72753e, 2, '', ''),
('11365480442006092405222161x111', 'rss', 'root', 'root', '2006-09-24 05:22:21', '2006-09-24 05:22:21', 1, '19', 0x3c656e3e5253533c2f656e3e3c72753e5253533c2f72753e3c75613e5253533c2f75613e, 6, '', ''),
('11365480442006092405235291v111', 'links', 'root', 'root', '2006-09-24 05:23:52', '2006-09-24 05:23:52', 1, '19', 0x3c656e3e4c696e6b733c2f656e3e3c72753e4c696e6b733c2f72753e3c75613e4c696e6b733c2f75613e, 7, '', ''),
('11365480442006093017321610n111', 'new', 'root', 'root', '2006-09-30 17:32:16', '2007-03-08 15:23:14', 1, '11365480442006093017315696d111', 0x3c75613e4e65773c2f75613e3c656e3ed094d0bed0b1d0b0d0b2d0bbd0b5d0bd3c2f656e3e3c72753ed094d0bed0b1d0b0d0b2d0bbd0b5d0bd3c2f72753e, 2, '', ''),
('11365480442006093017323074c111', 'active', 'root', 'root', '2006-09-30 17:32:30', '2007-03-08 15:23:42', 1, '11365480442006093017315696d111', 0x3c75613e4163746976653c2f75613e3c656e3e4163746976653c2f656e3e3c72753ed096d0b8d0b2d0bed0b920d180d0b5d0b6d0b8d0bc3c2f72753e, 10, '', ''),
('11365480442006093017324690j111', 'test', 'root', 'root', '2006-09-30 17:32:46', '2007-03-08 15:24:26', 1, '11365480442006093017315696d111', 0x3c75613e50656e64696e673c2f75613e3c656e3ed0a2d0b5d181d182d0bed0b2d18bd0b920d180d0b5d0b6d0b8d0bc2028d180d0b0d0b7d180d0b0d0b1d0bed182d0bad0b0293c2f656e3e3c72753ed0a2d0b5d181d182d0bed0b2d18bd0b920d180d0b5d0b6d0b8d0bc202028d180d0b0d0b7d180d0b0d0b1d0bed182d0bad0b0293c2f72753e, 4, '', ''),
('11365480442006101415005247n111', 'utf-8', 'root', 'root', '2006-10-14 15:00:52', '2007-08-19 21:49:09', 1, '1136548044200610141500213p1111', 0x3c656e3e7574662d383c2f656e3e3c72753e7574662d383c2f72753e3c75613e7574662d383c2f75613e, 4, '', '');
INSERT INTO `referenceoption` (`id`, `code`, `UserID`, `OwnerID`, `timeCreated`, `timeSaved`, `hidden`, `referenceID`, `name`, `position`, `color`, `icon`) VALUES
('11365480442006101415010839e111', 'windows-1251', 'root', 'root', '2006-10-14 15:01:08', '2007-08-19 21:49:03', 1, '1136548044200610141500213p1111', 0x3c656e3e437972696c6c6963202d2077696e646f77732d313235313c2f656e3e3c72753e437972696c6c6963202d2077696e646f77732d313235313c2f72753e3c75613e437972696c6c6963202d2077696e646f77732d313235313c2f75613e, 2, '', ''),
('1136548044200610141502043p1111', 'iso-8859-1', 'root', 'root', '2006-10-14 15:02:04', '2006-10-14 15:02:26', 1, '1136548044200610141500213p1111', 0x3c656e3e5765737465726e202d2069736f2d383835392d313c2f656e3e3c72753e5765737465726e202d2069736f2d383835392d313c2f72753e3c75613e5765737465726e202d2069736f2d383835392d313c2f75613e, 6, '', ''),
('11365480442007021819432819a111', '2', 'root', 'root', '2007-02-18 19:43:28', '2007-02-18 19:43:28', 1, '11365480442007021819424670x111', 0x3c656e3e4164733c2f656e3e3c72753ed09ed0b1d18ad18fd0b2d0bbd0b5d0bdd0b8d0b53c2f72753e, 4, '', ''),
('11365480442007030414531117x111', 'changed', 'root', 'root', '2007-03-04 14:53:11', '2007-03-04 14:53:11', 1, '11365480442006093017315696d111', 0x3c656e3e4368616e6765643c2f656e3e3c72753ed09fd0bed0bcd0b5d0bdd18fd0bbd181d18f20d0b8d181d182d0bed187d0bdd0b8d0ba3c2f72753e, 8, '', ''),
('11365480442007030423355918n111', 'rss', 'root', 'root', '2007-03-04 23:35:59', '2007-03-04 23:35:59', 1, '11365480442007030423353619m111', 0x3c656e3e5253533c2f656e3e3c72753e5253533c2f72753e, 1, '', ''),
('1136548044200703042336236d1111', 'html', 'root', 'root', '2007-03-04 23:36:23', '2007-03-04 23:36:23', 1, '11365480442007030423353619m111', 0x3c656e3e48544d4c3c2f656e3e3c72753e48544d4c3c2f72753e, 2, '', ''),
('1136548044200703042336365k1111', 'articles', 'root', 'root', '2007-03-04 23:36:36', '2007-03-04 23:36:36', 1, '11365480442007030423353619m111', 0x3c656e3e41727469636c65733c2f656e3e3c72753e41727469636c65733c2f72753e, 3, '', ''),
('11365480442007030815250421p111', 'pending', 'root', 'root', '2007-03-08 15:25:04', '2007-03-08 15:25:04', 1, '11365480442006093017315696d111', 0x3c656e3e4f6e20686f6c643c2f656e3e3c72753ed09ed182d0bbd0bed0b6d0b5d0bd3c2f72753e, 12, '', ''),
('11365480442007030912165335u111', 'windows-1252', 'root', 'root', '2007-03-09 12:16:53', '2007-03-09 12:17:11', 1, '1136548044200610141500213p1111', 0x3c656e3e5765737465726e202d2077696e646f77732d313235323c2f656e3e3c72753e5765737465726e202d2077696e646f77732d313235323c2f72753e, 8, '', ''),
('1136548044200703251258122a1111', '1', 'root', 'root', '2007-03-25 12:58:12', '2007-03-25 12:58:12', 1, '11365480442007032512550674g111', 0x3c656e3e313c2f656e3e3c72753e313c2f72753e, 1, '', ''),
('11365480442007032512582276a111', '2', 'root', 'root', '2007-03-25 12:58:22', '2007-03-25 12:58:22', 1, '11365480442007032512550674g111', 0x3c656e3e323c2f656e3e3c72753e323c2f72753e, 2, '', ''),
('11365480442007032514280514o111', '3', 'root', 'root', '2007-03-25 14:28:05', '2007-03-25 14:28:05', 1, '11365480442007032512550674g111', 0x3c656e3e333c2f656e3e3c72753e333c2f72753e, 3, '', ''),
('11365480442007032514281591u111', '4', 'root', 'root', '2007-03-25 14:28:15', '2007-03-25 14:28:15', 1, '11365480442007032512550674g111', 0x3c656e3e343c2f656e3e3c72753e343c2f72753e, 4, '', ''),
('11365480442007032514282361a111', '5', 'root', 'root', '2007-03-25 14:28:23', '2007-03-25 14:28:23', 1, '11365480442007032512550674g111', 0x3c656e3e353c2f656e3e3c72753e353c2f72753e, 5, '', ''),
('11365480442007032514283135x111', '6', 'root', 'root', '2007-03-25 14:28:31', '2007-03-25 14:28:31', 1, '11365480442007032512550674g111', 0x3c656e3e363c2f656e3e3c72753e363c2f72753e, 6, '', ''),
('11365480442007032514283858w111', '7', 'root', 'root', '2007-03-25 14:28:38', '2007-03-25 14:28:38', 1, '11365480442007032512550674g111', 0x3c656e3e373c2f656e3e3c72753e373c2f72753e, 7, '', ''),
('11365480442007032514284519c111', '8', 'root', 'root', '2007-03-25 14:28:45', '2007-03-25 14:28:45', 1, '11365480442007032512550674g111', 0x3c656e3e383c2f656e3e3c72753e383c2f72753e, 8, '', ''),
('1136548044200703251428537v1111', '9', 'root', 'root', '2007-03-25 14:28:53', '2007-03-25 14:28:53', 1, '11365480442007032512550674g111', 0x3c656e3e393c2f656e3e3c72753e393c2f72753e, 9, '', ''),
('11365480442007032514290125l111', '10', 'root', 'root', '2007-03-25 14:29:01', '2007-03-25 14:29:01', 1, '11365480442007032512550674g111', 0x3c656e3e31303c2f656e3e3c72753e31303c2f72753e, 10, '', ''),
('11365480442007033019074318b111', '1', 'root', 'root', '2007-03-30 19:07:43', '2007-03-30 19:07:43', 1, '11365480442007033019070382y111', 0x3c656e3e53686f7720616c6c20617661696c61626c6520646174613c2f656e3e3c72753ed09fd0bed0bad0b0d0b7d18bd0b2d0b0d182d18c20d0b2d181d18e20d0b8d0bdd184d0bed180d0bcd0b0d186d0b8d18e3c2f72753e, 1, '', ''),
('11365480442007033019080759o111', '2', 'root', 'root', '2007-03-30 19:08:07', '2007-03-30 19:08:07', 1, '11365480442007033019070382y111', 0x3c656e3e53686f77206f6e6c7920696e74726f3c2f656e3e3c72753ed09fd0bed0bad0b0d0b7d18bd0b2d0b0d182d18c20d182d0bed0bbd18cd0bad0be20d0b8d0bdd182d180d0be3c2f72753e, 2, '', ''),
('11365480442007033019083637m111', '3', 'root', 'root', '2007-03-30 19:08:36', '2007-03-30 19:08:36', 1, '11365480442007033019070382y111', 0x3c656e3e53686f7720353025206f66207468652061727469636c653c2f656e3e3c72753ed09fd0bed0bad0b0d0b7d0b0d182d18c2035302520d181d182d0b0d182d18cd0b83c2f72753e, 3, '', ''),
('11365480442006102114155565g111', 'link', 'root', 'root', '2006-10-21 14:15:55', '2006-10-21 14:22:37', 1, '11365480442006102114151298c111', 0x3c656e3e4c696e6b65642077656220736974653c2f656e3e3c72753e4c696e6b65642077656220736974653c2f72753e, 4, '', ''),
('11365480442006102114160866v111', 'directory', 'root', 'root', '2006-10-21 14:16:08', '2006-10-21 14:18:14', 1, '11365480442006102114151298c111', 0x3c656e3e576562207369746573206469726563746f72793c2f656e3e3c72753e576562207369746573206469726563746f72793c2f72753e, 6, '', ''),
('11365480442006102114162187r111', 'search', 'root', 'root', '2006-10-21 14:16:21', '2006-10-21 14:16:21', 1, '11365480442006102114151298c111', 0x3c656e3e53656172636820656e67696e653c2f656e3e3c72753e53656172636820656e67696e653c2f72753e, 8, '', ''),
('11365480442006102114164735j111', 'top', 'root', 'root', '2006-10-21 14:16:47', '2006-10-21 14:40:13', 1, '11365480442006102114151298c111', 0x3c656e3e544f502073656172636820656e67696e65206f72206469726563746f72793c2f656e3e3c72753e544f502073656172636820656e67696e65206f72206469726563746f72793c2f72753e, 14, '', ''),
('11365480442006102114171027y111', 'ads', 'root', 'root', '2006-10-21 14:17:10', '2006-10-21 14:19:20', 1, '11365480442006102114151298c111', 0x3c656e3e436c61737369666965642061647320776562736974653c2f656e3e3c72753e436c61737369666965642061647320776562736974653c2f72753e, 12, '', ''),
('11365480442006102114172514r111', 'articles', 'root', 'root', '2006-10-21 14:17:25', '2006-10-21 14:19:30', 1, '11365480442006102114151298c111', 0x3c656e3e41727469636c6573206469726563746f72793c2f656e3e3c72753e41727469636c6573206469726563746f72793c2f72753e, 10, '', ''),
('11365480442006102114174960t111', 'rss', 'root', 'root', '2006-10-21 14:17:49', '2006-10-21 14:19:51', 1, '11365480442006102114151298c111', 0x3c656e3e525353206665656473206469726563746f72793c2f656e3e3c72753e525353206665656473206469726563746f72793c2f72753e, 16, '', ''),
('1136548044200610211422120w1111', 'website', 'root', 'root', '2006-10-21 14:22:12', '2006-10-21 14:22:12', 1, '11365480442006102114151298c111', 0x3c656e3e526567697374657265642077656220736974653c2f656e3e3c72753e526567697374657265642077656220736974653c2f72753e, 2, '', ''),
('11365480442006102114262677m111', 'manually', 'root', 'root', '2006-10-21 14:26:26', '2006-10-21 14:26:26', 1, '11365480442006102114260852l111', 0x3c656e3e4d616e75616c6c79207375626d697373696f6e3c2f656e3e3c72753e4d616e75616c6c79207375626d697373696f6e3c2f72753e, 1, '', ''),
('1136548044200610211426543u1111', 'auto', 'root', 'root', '2006-10-21 14:26:54', '2006-10-21 14:26:54', 1, '11365480442006102114260852l111', 0x3c656e3e4175746f6d61746963616c207375626d697373696f6e3c2f656e3e3c72753e4175746f6d61746963616c207375626d697373696f6e3c2f72753e, 2, '', ''),
('11365480442006102114280289r111', 'active', 'root', 'root', '2006-10-21 14:28:02', '2007-04-01 12:08:13', 1, '11365480442006102114274737u111', 0x3c656e3e4163746976653c2f656e3e3c72753e4163746976653c2f72753e, 4, '', ''),
('11365480442006102114282213x111', 'hidden', 'root', 'root', '2006-10-21 14:28:22', '2006-10-21 14:28:22', 1, '11365480442006102114274737u111', 0x3c656e3e48696464656e2066726f6d206469726563746f72793c2f656e3e3c72753e48696464656e2066726f6d206469726563746f72793c2f72753e, 6, '', ''),
('11365480442006102114283911w111', 'blocked', 'root', 'root', '2006-10-21 14:28:39', '2006-10-21 14:28:39', 1, '11365480442006102114274737u111', 0x3c656e3e426c6f636b65642066726f6d2073797374656d3c2f656e3e3c72753e426c6f636b65642066726f6d2073797374656d3c2f72753e, 8, '', ''),
('1136548044200610211435591h1111', 'sale', 'root', 'root', '2006-10-21 14:35:59', '2006-10-21 14:35:59', 1, '11365480442006102114151298c111', 0x3c656e3e57656273697465732077686f206f6666657273206c696e6b7320666f722073616c653c2f656e3e3c72753e57656273697465732077686f206f6666657273206c696e6b7320666f722073616c653c2f72753e, 18, '', ''),
('11365480442006102114375148o111', 'textads', 'root', 'root', '2006-10-21 14:37:51', '2006-10-21 14:39:01', 1, '11365480442006102114151298c111', 0x3c656e3e5465787420616473206e6574776f726b3c2f656e3e3c72753e5465787420616473206e6574776f726b3c2f72753e, 20, '', ''),
('11365480442006102114380918s111', 'ppc', 'root', 'root', '2006-10-21 14:38:09', '2006-10-21 14:38:09', 1, '11365480442006102114151298c111', 0x3c656e3e505043206e6574776f726b3c2f656e3e3c72753e505043206e6574776f726b3c2f72753e, 22, '', ''),
('11365480442006102114383360s111', 'banner', 'root', 'root', '2006-10-21 14:38:33', '2006-10-21 14:38:33', 1, '11365480442006102114151298c111', 0x3c656e3e42616e6e6572732065786368616e67652073797374656d3c2f656e3e3c72753e42616e6e6572732065786368616e67652073797374656d3c2f72753e, 24, '', ''),
('11365480442006102114393033b111', 'linksecahnge', 'root', 'root', '2006-10-21 14:39:30', '2006-10-21 14:39:30', 1, '11365480442006102114151298c111', 0x3c656e3e4c696e6b732065786368616e6765206e6574776f726b3c2f656e3e3c72753e4c696e6b732065786368616e6765206e6574776f726b3c2f72753e, 26, '', ''),
('11365480442006102114394480n111', 'affiliate', 'root', 'root', '2006-10-21 14:39:44', '2006-10-21 14:39:44', 1, '11365480442006102114151298c111', 0x3c656e3e416666696c696174652073797374656d733c2f656e3e3c72753e416666696c696174652073797374656d733c2f72753e, 28, '', ''),
('1136548044200610211446381e1111', 'N', 'root', 'root', '2006-10-21 14:46:38', '2006-10-21 14:46:38', 1, '11365480442006102114455980s111', 0x3c656e3e446f206e6f742065786368616e6765206c696e6b73206175746f6d61746963616c6c793c2f656e3e3c72753e446f206e6f742065786368616e6765206c696e6b73206175746f6d61746963616c6c793c2f72753e, 1, '', ''),
('11365480442006102114473116j111', 'Y', 'root', 'root', '2006-10-21 14:47:31', '2006-10-21 14:47:31', 1, '11365480442006102114455980s111', 0x3c656e3e45786368616e6765206c696e6b73206175746f6d61746963616c6c7920776974682077656273697465732077686f206669747320746f20796f75722065786368616e67652070726f66696c653c2f656e3e3c72753e45786368616e6765206c696e6b73206175746f6d61746963616c6c7920776974682077656273697465732077686f206669747320746f20796f75722065786368616e67652070726f66696c653c2f72753e, 2, '', ''),
('11365480442006102114483783f111', 'Y', 'root', 'root', '2006-10-21 14:48:37', '2006-10-21 14:48:37', 1, '11365480442006102114481067t111', 0x3c656e3e457863686e616765206c696e6b73207769746820616c6c2077656273697465733c2f656e3e3c72753e457863686e616765206c696e6b73207769746820616c6c2077656273697465733c2f72753e, 1, '', ''),
('11365480442006102114491356p111', 'N', 'root', 'root', '2006-10-21 14:49:13', '2006-10-21 14:49:13', 1, '11365480442006102114481067t111', 0x3c656e3e457863686e616765206c696e6b73206f6e6c7920776974682077656273697465732077697468207468652073616d65206f722068696768657220476f6f676c6520506167652052616e6b3c2f656e3e3c72753e457863686e616765206c696e6b73206f6e6c7920776974682077656273697465732077697468207468652073616d65206f722068696768657220476f6f676c6520506167652052616e6b3c2f72753e, 2, '', ''),
('11365480442006103001343487l111', 'KeywordName', 'root', 'root', '2006-10-30 01:34:34', '2007-04-01 17:01:27', 1, '11365480442006103001335833r111', 0x3c656e3e4b6579776f7264206e616d653c2f656e3e3c72753ed09ad0bbd18ed187d0b5d0b2d0bed0b520d181d0bbd0bed0b2d0be3c2f72753e, 2, '', ''),
('11365480442006103001344911f111', 'KeywordNumber', 'root', 'root', '2006-10-30 01:34:49', '2007-04-01 17:01:54', 1, '11365480442006103001335833r111', 0x3c656e3e4b6579776f726420726174653c2f656e3e3c72753ed09ad0bed0bbd0b8d187d0b5d181d182d0b2d0be20d0b7d0b0d0bfd180d181d0bed0b220d0b220d0bfd0bed0b8d181d0bad0bed0b2d0b8d0bad0b0d1853c2f72753e, 4, '', ''),
('11365480442007040112080426u111', 'new', 'root', 'root', '2007-04-01 12:08:04', '2007-04-01 12:08:04', 1, '11365480442006102114274737u111', 0x3c656e3e4a7573742061646465643c2f656e3e3c72753e4a7573742061646465643c2f72753e, 2, '', ''),
('11365480442007040118262645r111', 'date', 'root', 'root', '2007-04-01 18:26:26', '2007-04-01 18:26:26', 1, '11365480442007040118254779t111', 0x3c656e3e446f206e6f742066696c74657220627920646174653c2f656e3e3c72753e446f206e6f742066696c74657220627920646174653c2f72753e, 2, '', ''),
('11365480442007040118263931h111', 'location', 'root', 'root', '2007-04-01 18:26:39', '2007-04-01 18:26:51', 1, '11365480442007040118254779t111', 0x3c656e3e446f206e6f742066696c746572206279206c6f636174696f6e3c2f656e3e3c72753e446f206e6f742066696c746572206279206c6f636174696f6e3c2f72753e, 4, '', ''),
('11365480442007040119043850s111', '3', 'root', 'root', '2007-04-01 19:04:38', '2007-04-01 19:04:38', 1, '11365480442007021819424670x111', 0x3c656e3e436174616c6f673c2f656e3e3c72753ed09ad0b0d182d0b0d0bbd0bed0b33c2f72753e, 6, '', ''),
('11365480442007052823044315b111', 'partlocation', 'root', 'root', '2007-05-28 23:04:43', '2007-05-28 23:04:43', 1, '11365480442007040118254779t111', 0x3c656e3e46696c746572206279206c6f636174696f6e20706172746c793c2f656e3e3c72753ed0a4d0b8d0bbd18cd182d180d0bed0b2d0b0d182d18c20d0bfd0be20d180d0b5d0b3d0b8d0bed0bdd18320d187d0b0d181d182d0b8d187d0bdd0be3c2f72753e, 5, '', ''),
('11365480442007062314310577t111', 'forum', 'root', 'root', '2007-06-23 14:31:05', '2007-06-23 14:31:05', 1, '11365480442007062314300356n111', 0x3c656e3e466f72756d3c2f656e3e3c72753ed0a4d0bed180d183d0bc3c2f72753e, 1, '', ''),
('11365480442007062314312723u111', 'blogmodule', 'root', 'root', '2007-06-23 14:31:27', '2007-06-23 14:31:27', 1, '11365480442007062314300356n111', 0x3c656e3e426c6f673c2f656e3e3c72753ed091d0bbd0bed0b33c2f72753e, 1, '', ''),
('11365480442007062318395539f111', 'minisite', 'root', 'root', '2007-06-23 18:39:55', '2009-11-30 21:49:06', 1, '11365480442007062318391012c111', 0x3c656e3e4d696e6920536974653c2f656e3e3c72753e4d696e6920536974653c2f72753e, 4, '', ''),
('1136548044200706231840346k1111', 'companysite', 'root', 'root', '2007-06-23 18:40:34', '2009-11-30 21:49:06', 1, '11365480442007062318391012c111', 0x3c656e3e436f6d70616e7920536974653c2f656e3e3c72753e436f6d70616e7920536974653c2f72753e, 6, '', ''),
('11365480442007062318520369y111', 'eshop', 'root', 'root', '2007-06-23 18:52:03', '2009-11-30 21:49:06', 1, '11365480442007062318391012c111', 0x3c656e3e6553686f703c2f656e3e3c72753e6553686f703c2f72753e, 8, '', ''),
('1136548044200908262316363b1111', 'reagency', 'root', 'root', '2009-08-26 23:16:36', '2009-11-30 21:49:06', 1, '11365480442007062318391012c111', 0x3c656e3e5265616c20457374617465204167656e63793c2f656e3e3c72753e5265616c20457374617465204167656e63793c2f72753e, 10, '', ''),
('11365480442007100601264589a111', 'SubmissionIsRequiredValidation', 'root', 'root', '2007-10-06 01:26:45', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', 0x3c656e3e576562206469726563746f72793a206d616e75616c6c792076616c69646174696f6e206f66206e6577206c696e6b733c2f656e3e3c66723e576562206469726563746f72793a206d616e75616c6c792076616c69646174696f6e206f66206e6577206c696e6b733c2f66723e3c6e6c3e576562206469726563746f72793a206d616e75616c6c792076616c69646174696f6e206f66206e6577206c696e6b733c2f6e6c3e3c72753ed09ad0b0d182d0b0d0bbd0bed0b320d181d181d18bd0bbd0bed0ba3a20d183d182d0b2d0b5d180d0b6d0b4d0b0d182d18c20d0b2d180d183d187d0bdd183d18e20d0b2d181d0b520d0bdd0bed0b2d18bd0b520d181d181d18bd0bbd0bad0b820d0b4d0b0d0b6d0b520d0bfd0bed181d0bbd0b520d0b0d0b2d182d0bed0bcd0b0d182d0b8d187d0b5d181d0bad0bed0b920d0bfd180d0bed0b2d0b5d180d0bad0b83c2f72753e, 22, '', ''),
('11365480442009042822060580p111', 'SEOPageHideRightMenu', 'root', 'root', '2009-04-28 22:06:05', '2009-04-28 22:06:05', 1, '11365480442009042821202738g111', 0x3c656e3e4869646520726967687420636f6c756d6e3c2f656e3e3c72753ed0a1d0bad180d18bd182d18c20d0bfd180d0b0d0b2d0bed0b520d0bcd0b5d0bdd18e3c2f72753e, 4, '', ''),
('11365480442007062817052617o111', '01', 'root', 'root', '2007-06-28 17:05:26', '2007-08-07 14:30:38', 1, '11365480442007062817044391b111', 0x3c656e3e4a616e756172792c206a756e3c2f656e3e3c72753ed18fd0bdd0b2d0b0d180d18c2c20d18fd0bdd0b23c2f72753e3c75613ed181d196d187d0b5d0bdd18c2c20d181d196d1873c2f75613e, 2, '', ''),
('11365480442007080714320050k111', '02', 'root', 'root', '2007-08-07 14:32:00', '2007-08-07 14:32:00', 1, '11365480442007062817044391b111', 0x3c656e3e66656272756172792c206665623c2f656e3e3c72753ed184d0b5d0b2d180d0b0d0bbd18c2c20d184d0b5d0b23c2f72753e3c75613ed0bbd18ed182d0b8d0b92c20d0bbd18ed1823c2f75613e, 4, '', ''),
('11365480442007080109215210m111', 'koi8-u', 'root', 'root', '2007-08-01 09:21:52', '2007-08-01 09:21:52', 1, '1136548044200610141500213p1111', 0x3c656e3e556b7261696e69616e202d204b4f49383c2f656e3e3c72753e556b7261696e69616e202d204b4f49383c2f72753e3c75613e556b7261696e69616e202d204b4f49383c2f75613e, 10, '', ''),
('11365480442007080714331998q111', '03', 'root', 'root', '2007-08-07 14:33:19', '2007-08-07 14:33:19', 1, '11365480442007062817044391b111', 0x3c656e3e6d617263682c206d61723c2f656e3e3c72753ed0bcd0b0d180d1822c20d0bcd0b0d1803c2f72753e3c75613ed0b1d0b5d180d0b5d0b7d0b5d0bdd18c2c20d0b1d0b5d1803c2f75613e, 6, '', ''),
('11365480442007080714351572g111', '04', 'root', 'root', '2007-08-07 14:35:15', '2007-08-07 14:35:42', 1, '11365480442007062817044391b111', 0x3c656e3e617072696c2c206170723c2f656e3e3c72753ed0b0d0bfd180d0b5d0bbd18c2c20d0b0d0bfd1803c2f72753e3c75613ed0bad0b2d196d182d0b5d0bdd18c2c20d0bad0b2d1963c2f75613e, 8, '', ''),
('1136548044200708071436513p1111', '05', 'root', 'root', '2007-08-07 14:36:51', '2007-08-07 14:37:43', 1, '11365480442007062817044391b111', 0x3c656e3e6d61792c206d61793c2f656e3e3c72753ed0bcd0b0d0b92c20d0bcd0b0d0b93c2f72753e3c75613ed182d180d0b0d0b2d0b5d0bdd18c2c20d182d180d0b0d0b2d0bd2c20d182d180d0b03c2f75613e, 10, '', ''),
('11365480442007080714384234v111', '06', 'root', 'root', '2007-08-07 14:38:42', '2007-08-07 14:38:42', 1, '11365480442007062817044391b111', 0x3c656e3e6a756e652c206a756e3c2f656e3e3c72753ed0b8d18ed0bdd18c2c20d0b8d18ed0bd3c2f72753e3c75613ed187d0b5d180d0b2d0b5d0bdd18c2c20d187d0b5d1803c2f75613e, 11, '', ''),
('11365480442007080714394881r111', '07', 'root', 'root', '2007-08-07 14:39:48', '2007-08-07 14:39:48', 1, '11365480442007062817044391b111', 0x3c656e3e6a756c792c206a756c3c2f656e3e3c72753ed0b8d18ed0bbd18c2c20d0b8d18ed0bb3c2f72753e3c75613ed0bbd0b8d0bfd0b5d0bdd18c2c20d0bbd0b8d0bf3c2f75613e, 12, '', ''),
('11365480442007080714410698e111', '08', 'root', 'root', '2007-08-07 14:41:06', '2007-08-07 14:41:06', 1, '11365480442007062817044391b111', 0x3c656e3e6175677573742c206175673c2f656e3e3c72753ed0b0d0b2d0b3d183d181d1822c20d0b0d0b2d0b33c2f72753e3c75613ed181d0b5d180d0bfd0b5d0bdd18c2c20d181d0b5d180d0bf3c2f75613e, 13, '', ''),
('11365480442007080714420830p111', '09', 'root', 'root', '2007-08-07 14:42:08', '2007-08-07 14:42:08', 1, '11365480442007062817044391b111', 0x3c656e3e73657074656d6265722c207365703c2f656e3e3c72753ed181d0b5d0bdd182d18fd0b1d180d18c2c20d181d0b5d0bd3c2f72753e3c75613ed0b2d0b5d180d0b5d181d0b5d0bdd18c2c20d0b2d0b5d1803c2f75613e, 14, '', ''),
('11365480442007080714430294n111', '10', 'root', 'root', '2007-08-07 14:43:02', '2007-08-07 14:43:02', 1, '11365480442007062817044391b111', 0x3c656e3e6f63746f6265722c206f63743c2f656e3e3c72753ed0bed0bad182d18fd0b1d180d18c2c20d0bed0bad1823c2f72753e3c75613ed0b6d0bed0b2d182d0b5d0bdd18c2c20d0b6d0bed0b23c2f75613e, 15, '', ''),
('11365480442007080714440437r111', '11', 'root', 'root', '2007-08-07 14:44:04', '2007-08-07 14:44:04', 1, '11365480442007062817044391b111', 0x3c656e3e6e6f76656d6265722c206e6f763c2f656e3e3c72753ed0bdd0bed18fd0b1d180d18c2c20d0bdd0bed18f3c2f72753e3c75613ed0bbd0b8d181d182d0bed0bfd0b0d0b42c20d0bbd0b8d181d1823c2f75613e, 16, '', ''),
('11365480442007080714450345m111', '12', 'root', 'root', '2007-08-07 14:45:03', '2007-08-07 14:45:03', 1, '11365480442007062817044391b111', 0x3c656e3e646563656d6265722c206465633c2f656e3e3c72753ed0b4d0b5d0bad0b0d0b1d180d18c2c20d0b4d0b5d0ba3c2f72753e3c75613ed0b3d180d183d0b4d0b5d0bdd18c2c20d0b3d180d183d0b43c2f75613e, 17, '', ''),
('11365480442007080719225015t111', 'nonews', 'root', 'root', '2007-08-07 19:22:50', '2007-08-07 19:22:50', 1, '11365480442006093017315696d111', 0x3c656e3e4e6f206e6577733c2f656e3e3c72753ed09fd180d0bed0b2d0b5d180d0b8d182d18c2c20d0bdd0b5d18220d0bdd0bed0b2d0bed181d182d0b5d0b920d0b7d0b020d0bfd0bed181d0bbd0b5d0b4d0bdd0b5d0b520d0b2d180d0b5d0bcd18f3c2f72753e3c75613ed09fd180d0bed0b2d0b5d180d0b8d182d18c2c20d0bdd0b5d18220d0bdd0bed0b2d0bed181d182d0b5d0b920d0b7d0b020d0bfd0bed181d0bbd0b5d0b4d0bdd0b5d0b520d0b2d180d0b5d0bcd18f3c2f75613e, 14, '', ''),
('11365480442007080719232642q111', 'correct', 'root', 'root', '2007-08-07 19:23:26', '2007-08-07 19:23:46', 1, '11365480442006093017315696d111', 0x3c656e3e436f72726563743c2f656e3e3c72753ed098d181d0bfd180d0b0d0b2d0b8d182d18c3c2f72753e3c75613ed098d181d0bfd180d0b0d0b2d0b8d182d18c3c2f75613e, 6, '', ''),
('11365480442007080815415485a111', 'syserr', 'root', 'root', '2007-08-08 15:41:54', '2007-08-08 15:45:55', 1, '11365480442006093017315696d111', 0x3c656e3e53797374656d2070726f626c656d3c2f656e3e3c72753ed09fd180d0bed0b1d0bbd0b5d0bcd0b020d0b220d181d0b8d181d182d0b5d0bcd0b53c2f72753e3c75613ed09fd180d0bed0b1d0bbd0b5d0bcd0b020d0b220d181d0b8d181d182d0b5d0bcd0b53c2f75613e, 16, '', ''),
('1136548044200708192148410t1111', 'koi8', 'root', 'root', '2007-08-19 21:48:41', '2007-08-19 21:48:41', 1, '1136548044200610141500213p1111', 0x3c656e3e5275737369616e202d204b4f49383c2f656e3e3c72753e5275737369616e202d204b4f49383c2f72753e3c75613e5275737369616e202d204b4f49383c2f75613e, 12, '', ''),
('11365480442007090119174740p111', 'details', 'root', 'root', '2007-09-01 19:17:47', '2007-09-01 19:17:47', 1, '11365480442006061811475348z111', 0x3c656e3e41626f7574206d653c2f656e3e3c72753ed09e20d181d0b5d0b1d0b53c2f72753e3c75613ed09e20d181d0b5d0b1d0b53c2f75613e, 3, '', ''),
('11365480442007090119281296x111', 'settings', 'root', 'root', '2007-09-01 19:28:12', '2007-09-01 19:28:12', 1, '11365480442006061811475348z111', 0x3c656e3e53657474696e67733c2f656e3e3c72753ed09dd0b0d181d182d180d0bed0b9d0bad0b83c2f72753e3c75613ed09dd0b0d181d182d180d0bed0b9d0bad0b83c2f75613e, 4, '', ''),
('11365480442007090218544280p111', '1', 'root', 'root', '2007-09-02 18:54:42', '2007-09-02 18:54:42', 1, '1136548044200709021853458i1111', 0x3c656e3e5061727365643c2f656e3e3c72753ed09ed182d0bfd0b0d180d181d0b5d0bdd18b20d0b0d0b2d182d0bed0bcd0b0d182d0b8d187d0b5d181d0bad0b83c2f72753e3c75613ed09ed182d0bfd0b0d180d181d0b5d0bdd18b20d0b0d0b2d182d0bed0bcd0b0d182d0b8d187d0b5d181d0bad0b83c2f75613e, 1, '', ''),
('11365480442007090218550524v111', '2', 'root', 'root', '2007-09-02 18:55:05', '2007-09-02 18:55:05', 1, '1136548044200709021853458i1111', 0x3c656e3e41646420627920757365723c2f656e3e3c72753ed094d0bed0b1d0b0d0b2d0bbd0b5d0bdd18b20d0bfd0bed0bbd18cd0b7d0bed0b2d0b0d182d0b5d0bbd0b5d0bc3c2f72753e3c75613ed094d0bed0b1d0b0d0b2d0bbd0b5d0bdd18b20d0bfd0bed0bbd18cd0b7d0bed0b2d0b0d182d0b5d0bbd0b5d0bc3c2f75613e, 2, '', ''),
('11365480442007090814224663v111', '9', 'root', 'root', '2007-09-08 14:22:46', '2007-09-08 14:22:46', 1, '11365480442007090814215348y111', 0x3c656e3e4f6b3c2f656e3e3c72753ed09fd0bed0bbd0bdd0bed181d182d18cd18e20d0bed0b1d180d0b0d0b1d0bed182d0b0d0bdd0be3c2f72753e3c75613ed09fd0bed0bbd0bdd0bed181d182d18cd18e20d0bed0b1d180d0b0d0b1d0bed182d0b0d0bdd0be3c2f75613e, 1, '', ''),
('11365480442007090814233389a111', '1', 'root', 'root', '2007-09-08 14:23:33', '2007-09-08 14:23:33', 1, '11365480442007090814215348y111', 0x3c656e3e526567696f6e206973206e6f74206c696e6b65643c2f656e3e3c72753ed09dd0b520d0bfd180d0b8d181d0b2d0bed0b5d0bd20d180d0b5d0b3d0b8d0bed0bd3c2f72753e3c75613ed09dd0b520d0bfd180d0b8d181d0b2d0bed0b5d0bd20d180d0b5d0b3d0b8d0bed0bd3c2f75613e, 1, '', ''),
('11365480442007090814243976d111', '2', 'root', 'root', '2007-09-08 14:24:39', '2007-09-08 14:24:39', 1, '11365480442007090814215348y111', 0x3c656e3e4c6f636174696f6e206973206164646564206175746f61746963616c6c793c2f656e3e3c72753ed0a0d0b5d0b3d0b8d0bed0bd20d0bfd180d0b8d181d0bed0b2d0b5d0bd20d0b0d0b2d182d0bed0bcd0b0d182d0b8d187d0b5d181d0bad0b83c2f72753e3c75613ed0a0d0b5d0b3d0b8d0bed0bd20d0bfd180d0b8d181d0bed0b2d0b5d0bd20d0b0d0b2d182d0bed0bcd0b0d182d0b8d187d0b5d181d0bad0b83c2f75613e, 2, '', ''),
('11365480442007090814253726e111', '4', 'root', 'root', '2007-09-08 14:25:37', '2007-09-08 14:25:37', 1, '11365480442007090814215348y111', 0x3c656e3e436c65616e65643c2f656e3e3c72753ed094d183d0b1d0bbd0b8d0bad0b0d182d18b20d183d0b4d0b0d0bbd0b5d0bdd18b20d0b0d0b2d182d0bed0bcd0b0d182d0b8d187d0b5d181d0bad0b83c2f72753e3c75613ed094d183d0b1d0bbd0b8d0bad0b0d182d18b20d183d0b4d0b0d0bbd0b5d0bdd18b20d0b0d0b2d182d0bed0bcd0b0d182d0b8d187d0b5d181d0bad0b83c2f75613e, 3, '', ''),
('1136548044200709081457388e1111', 'public', 'root', 'root', '2007-09-08 14:57:38', '2007-09-08 14:57:38', 1, '11365480442007090814571235l111', 0x3c656e3ed09fd183d0b1d0bbd0b8d187d0bdd18bd0b920d0b2d0bed0bfd180d0bed1813c2f656e3e3c72753ed09fd183d0b1d0bbd0b8d187d0bdd18bd0b920d0b2d0bed0bfd180d0bed1813c2f72753e3c75613ed09fd183d0b1d0bbd0b8d187d0bdd18bd0b920d0b2d0bed0bfd180d0bed1813c2f75613e, 2, '', ''),
('11365480442007090814580515c111', 'private', 'root', 'root', '2007-09-08 14:58:05', '2007-09-08 14:58:17', 1, '11365480442007090814571235l111', 0x3c656e3ed0a1d0bad180d18bd182d18bd0b920d0b2d0bed0bfd180d0bed1812028d182d0bed0bbd18cd0bad0be20d0b4d0bbd18f20d0b0d0b2d182d0bed180d0b0293c2f656e3e3c72753ed0a1d0bad180d18bd182d18bd0b920d0b2d0bed0bfd180d0bed1812028d182d0bed0bbd18cd0bad0be20d0b4d0bbd18f20d0b0d0b2d182d0bed180d0b0293c2f72753e3c75613ed0a1d0bad180d18bd182d18bd0b920d0b2d0bed0bfd180d0bed1812028d182d0bed0bbd18cd0bad0be20d0b4d0bbd18f20d0b0d0b2d182d0bed180d0b0293c2f75613e, 4, '', ''),
('11365480442007100323432251o111', 'default', 'root', 'root', '2007-10-03 23:43:22', '2009-11-18 12:52:13', 1, '11365480442007100323430210j111', 0x3c656e3e44656661756c743c2f656e3e3c66723e44656661756c743c2f66723e3c6e6c3e44656661756c743c2f6e6c3e3c72753ed094d0b8d0b7d0b0d0b9d0bd20d0bfd0be20d183d0bcd0bed0bbd187d0b0d0bdd0b8d18e3c2f72753e, 6, '', ''),
('11365480442008122200555057d111', '-', 'root', 'root', '2008-12-22 00:55:50', '2008-12-22 00:57:59', 1, '11365480442008122200545133i111', 0x3c656e3e44656d6f3c2f656e3e3c72753ed094d0b5d0bcd0be2028d0b1d0b5d181d0bfd0bbd0b0d182d0bdd0be293c2f72753e, 2, '', ''),
('1136548044200710060127250s1111', 'SubmissionIsBackLinkRequired', 'root', 'root', '2007-10-06 01:27:25', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', 0x3c656e3e576562206469726563746f72793a206261636b206c696e6b2069732072657175697265643f3c2f656e3e3c66723e576562206469726563746f72793a206261636b206c696e6b2069732072657175697265643f3c2f66723e3c6e6c3e576562206469726563746f72793a206261636b206c696e6b2069732072657175697265643f3c2f6e6c3e3c72753ed09ad0b0d182d0b0d0bbd0bed0b320d181d181d18bd0bbd0bed0ba3a20d183d181d182d0b0d0bdd0bed0b2d0bad0b020d0bed0b1d180d0b0d182d0bdd18bd18520d181d181d18bd0bbd0bed0ba20d0bed0b1d18fd0b7d0b0d182d0b5d0bbd18cd0bdd0b03c2f72753e, 18, '', ''),
('11365480442009041818464140m111', 'www', 'root', 'root', '2009-04-18 18:46:41', '2009-11-27 13:43:29', 1, '11365480442009041818461113q111', 0x3c656e3e57697468207777773c2f656e3e3c72753ed0a1207777773c2f72753e, 1, '', ''),
('11365480442009041818465935s111', 'nowww', 'root', 'root', '2009-04-18 18:46:59', '2009-11-27 13:43:29', 1, '11365480442009041818461113q111', 0x3c656e3e576974686f7574207777773c2f656e3e3c72753ed091d0b5d0b7207777773c2f72753e, 2, '', ''),
('11365480442008042501123545i111', 'SubmissionPaidLinks', 'root', 'root', '2008-04-25 01:12:35', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', 0x3c656e3e576562206469726563746f72793a2070616964206c696e6b73206f7074696f6e3c2f656e3e3c66723e4f6e6c792070616964206c697374696e673c2f66723e3c6e6c3e576562206469726563746f72793a2070616964206c696e6b73206f7074696f6e3c2f6e6c3e3c72753ed09ad0b0d182d0b0d0bbd0bed0b320d181d181d18bd0bbd0bed0ba3a20d0bfd0bbd0b0d182d0bdd0bed0b520d180d0b0d0b7d0bcd0b5d189d0b5d0bdd0b8d0b520d181d181d18bd0bbd0bed0ba3c2f72753e, 20, '', ''),
('11365480442009041815590453t111', 'CoreSerchForm', 'root', 'root', '2009-04-18 15:59:04', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', 0x3c656e3e5365617263683a2061637469766174652077656273697465207365617263683c2f656e3e3c66723ed09fd0bed0b8d181d0ba3a20d092d0bad0bbd18ed187d0b8d182d18c20d0bfd0bed0b8d181d0ba20d0bfd0be20d181d0b0d0b9d182d1833c2f66723e3c6e6c3ed09fd0bed0b8d181d0ba3a20d092d0bad0bbd18ed187d0b8d182d18c20d0bfd0bed0b8d181d0ba20d0bfd0be20d181d0b0d0b9d182d1833c2f6e6c3e3c72753ed09fd0bed0b8d181d0ba3a20d092d0bad0bbd18ed187d0b8d182d18c20d0bfd0bed0b8d181d0ba20d0bfd0be20d181d0b0d0b9d182d1833c2f72753e, 12, '', ''),
('11365480442009041817292264l111', 'core.myHome', 'root', 'root', '2009-04-18 17:29:22', '2009-04-18 17:29:22', 1, '11365480442009013120072999b111', 0x3c656e3e4d656d62657220617265613c2f656e3e3c72753ed09fd0b0d0bdd0b5d0bbd18c20d183d0bfd180d0b0d0b2d0bbd0b5d0bdd0b8d18f3c2f72753e, 16, '', ''),
('11365480442008042501141329x111', 'dark', 'root', 'root', '2008-04-25 01:14:13', '2009-11-18 12:52:13', 1, '11365480442007100323430210j111', 0x3c656e3e4461726b20677265793c2f656e3e3c66723e4461726b20677265793c2f66723e3c6e6c3e4461726b20677265793c2f6e6c3e3c72753ed0a2d0b5d0bcd0bdd0be2dd181d0b5d180d18bd0b93c2f72753e, 10, '', ''),
('11365480442008043014070589w111', 'new', 'root', 'root', '2008-04-30 14:07:05', '2008-04-30 14:07:05', 1, '11365480442008043014064248i111', 0x3c656e3e4a7573742072656365697665643c2f656e3e3c66723e4a7573742072656365697665643c2f66723e, 1, '', ''),
('11365480442008043014072725z111', 'read', 'root', 'root', '2008-04-30 14:07:27', '2008-04-30 14:07:27', 1, '11365480442008043014064248i111', 0x3c656e3e526561643c2f656e3e3c66723e526561643c2f66723e, 2, '', ''),
('11365480442008043014075322c111', 'completed', 'root', 'root', '2008-04-30 14:07:53', '2008-04-30 14:07:53', 1, '11365480442008043014064248i111', 0x3c656e3e436f6d706c657465643c2f656e3e3c66723e436f6d706c657465643c2f66723e, 3, '', ''),
('11365480442008043014081770h111', 'delete', 'root', 'root', '2008-04-30 14:08:17', '2008-04-30 14:08:17', 1, '11365480442008043014064248i111', 0x3c656e3e44656c6574653c2f656e3e3c66723e44656c6574653c2f66723e, 4, '', ''),
('11365480442008043015140468a111', 'property', 'root', 'root', '2008-04-30 15:14:04', '2008-08-20 13:05:12', 1, '11365480442008043015012421l111', 0x3c66723e446576697320636174616c6f67733c2f66723e3c656e3e5265616c2065737461746520636174616c6f67733c2f656e3e3c72753e5265616c2065737461746520636174616c6f67733c2f72753e, 4, '', ''),
('11365480442008043015142038r111', 'cars', 'root', 'root', '2008-04-30 15:14:20', '2008-04-30 15:14:20', 1, '11365480442008043015012421l111', 0x3c656e3e4361727320636174616c6f67733c2f656e3e3c66723e4361727320636174616c6f67733c2f66723e, 6, '', ''),
('11365480442008043015143613d111', 'general', 'root', 'root', '2008-04-30 15:14:36', '2008-04-30 15:14:36', 1, '11365480442008043015012421l111', 0x3c656e3e47656e6572616c20636174616c6f67733c2f656e3e3c66723e47656e6572616c20636174616c6f67733c2f66723e, 8, '', ''),
('11365480442008043015145693n111', 'zakaz', 'root', 'root', '2008-04-30 15:14:56', '2008-08-20 13:05:40', 1, '11365480442008043015012421l111', 0x3c66723e5265666572656e63656d656e7420636174616c6f673c2f66723e3c656e3e5a616b617a20746f7661726f7620636174616c6f67733c2f656e3e3c72753e5a616b617a20746f7661726f7620636174616c6f67733c2f72753e, 10, '', ''),
('11365480442008052110433470q111', 'notpaid', 'root', 'root', '2008-05-21 10:43:34', '2008-05-27 14:46:45', 1, '1136548044200805211043186v1111', 0x3c656e3e4e6f7420706169643c2f656e3e3c66723e456e20617474656e746520646520706169656d656e743c2f66723e, 2, '', ''),
('11365480442008052110434784j111', 'paid', 'root', 'root', '2008-05-21 10:43:47', '2008-05-27 14:46:53', 1, '1136548044200805211043186v1111', 0x3c656e3e506169643c2f656e3e3c66723e506179c3a93c2f66723e, 4, '', ''),
('11365480442008052114532555k111', 'root', 'root', 'root', '2008-05-21 14:53:25', '2008-05-21 14:53:25', 1, '11365480442008043015012421l111', 0x3c656e3e4d61696e2067726f75702028726f6f74293c2f656e3e3c66723e4d61696e2067726f75702028726f6f74293c2f66723e, 2, '', ''),
('11365480442008052410455587z111', 'default', 'root', 'root', '2008-05-24 10:45:55', '2008-05-24 10:45:55', 1, '11365480442008052410444273s111', 0x3c656e3e44656661756c74207374796c653c2f656e3e3c66723e44656661756c74207374796c653c2f66723e, 1, '', ''),
('11365480442008052410464026j111', 'default-grey', 'root', 'root', '2008-05-24 10:46:40', '2008-05-24 10:46:40', 1, '11365480442008052410444273s111', 0x3c656e3e44656661756c7420677265793c2f656e3e3c66723e44656661756c7420677265793c2f66723e, 2, '', ''),
('11365480442008122100184148t111', 'SubmissionBlockAdd', 'root', 'root', '2008-12-21 00:18:41', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', 0x3c656e3e5375626d697373696f6e3a20626c6f636b2076697369746f727320746f20616464207468656972206c696e6b733c2f656e3e3c66723e5375626d697373696f6e3a20626c6f636b2076697369746f727320746f20616464207468656972206c696e6b733c2f66723e3c6e6c3e5375626d697373696f6e3a20626c6f636b2076697369746f727320746f20616464207468656972206c696e6b733c2f6e6c3e3c72753ed09ad0b0d182d0b0d0bbd0bed0b320d181d181d18bd0bbd0bed0ba3a20d0b7d0b0d0bfd180d0b5d182d0b8d182d18c20d0bfd0bed181d0b5d182d0b8d182d0b5d0bbd18fd0bc20d0b4d0bed0b1d0b0d0b2d0bbd18fd182d18c20d181d181d18bd0bbd0bad0b83c2f72753e, 24, '', ''),
('11365480442009042821210130b111', 'SEOPageHideTitle', 'root', 'root', '2009-04-28 21:21:01', '2009-04-28 21:21:41', 1, '11365480442009042821202738g111', 0x3c656e3e486964652070616765207469746c653c2f656e3e3c72753ed0a1d0bad180d18bd182d18c20d0b7d0b0d0b3d0bed0bbd0bed0b2d0bed0ba20d181d182d180d0b0d0bdd0b8d186d18b3c2f72753e, 2, '', ''),
('11365480442009042822053426r111', 'SEOPageHideLeftMenu', 'root', 'root', '2009-04-28 22:05:34', '2009-04-28 22:05:34', 1, '11365480442009042821202738g111', 0x3c656e3e48696465206c65667420636f6c756d6e3c2f656e3e3c72753ed0a1d0bad180d18bd182d18c20d0bbd0b5d0b2d0bed0b520d0bcd0b5d0bdd18e3c2f72753e, 3, '', ''),
('11365480442006121001005720a111', 'Ukraine', 'root', 'root', '2006-12-10 01:00:57', '2006-12-10 01:00:57', 1, '11365480442006121001003496z111', 0x3c656e3e556b7261696e653c2f656e3e3c72753ed0a3d0bad180d0b0d0b8d0bdd0b03c2f72753e, 1, '', ''),
('11365480442006121001012093w111', 'Russia', 'root', 'root', '2006-12-10 01:01:20', '2006-12-10 01:01:20', 1, '11365480442006121001003496z111', 0x3c656e3e5275737369613c2f656e3e3c72753ed0a0d0bed181d181d0b8d18f3c2f72753e, 2, '', ''),
('11365480442006121001030354h111', 'computers', 'root', 'root', '2006-12-10 01:03:03', '2006-12-10 01:03:03', 1, '11365480442006121001015420x111', 0x3c656e3e436f6d7075746572733c2f656e3e3c72753ed09ad0bed0bcd0bfd18cd18ed182d0b5d180d0bdd0bed0b520d0bed0b1d0bed180d183d0b4d0bed0b2d0b0d0bdd0b8d0b53c2f72753e, 1, '', ''),
('11365480442006121001033672n111', 'electronics', 'root', 'root', '2006-12-10 01:03:36', '2006-12-10 01:03:36', 1, '11365480442006121001015420x111', 0x3c656e3e656c6c656374726f6e6963733c2f656e3e3c72753ed091d18bd182d0bed0b2d0b0d18f20d18dd0bbd0bbd0b5d0bad182d180d0bed0bdd0b8d0bad0b03c2f72753e, 2, '', ''),
('11365480442006121001040573j111', 'industrial', 'root', 'root', '2006-12-10 01:04:05', '2006-12-10 01:04:05', 1, '11365480442006121001015420x111', 0x3c656e3e496e647573747269616c2065717569706d656e743c2f656e3e3c72753ed09fd180d0bed0bcd18bd188d0bbd0b5d0bdd0bdd0bed0b520d0bed0b1d0bed180d183d0b4d0bed0b2d0b0d0bdd0b8d0b53c2f72753e, 3, '', ''),
('11365480442006121001062754h111', 'showemail', 'root', 'root', '2006-12-10 01:06:27', '2006-12-10 01:06:27', 1, '11365480442006121001055951z111', 0x3c656e3e53686f7720656d61696c20696e7374656164206f6620636f6e7461637420666f726d206c696e6b3c2f656e3e3c72753ed09fd0bed0bad0b0d0b7d18bd0b2d0b0d182d18c20656d61696c20d0b0d0b4d180d0b5d18120d0b2d0bcd0b5d181d182d0be20d0bad0bed0bdd182d0b0d0bad182d0bdd0bed0b920d184d0bed180d0bcd18b3c2f72753e, 1, '', ''),
('11365480442006121001082652v111', 'showstats', 'root', 'root', '2006-12-10 01:08:26', '2006-12-10 01:08:26', 1, '11365480442006121001055951z111', 0x3c656e3e53686f7720737461747320746f2076697369746f723c2f656e3e3c72753ed09fd0bed0bad0b0d0b7d18bd0b2d0b0d182d18c20d181d182d0b0d182d0b8d181d182d0b8d0bad18320d0bfd0bed181d0b5d189d0b5d0bdd0b8d0b920d0bdd0b020d0bad0b0d180d182d0bed187d0bad18320d184d0b8d180d0bcd18b3c2f72753e, 2, '', ''),
('11365480442006121001093574b111', 'showonhomepage', 'root', 'root', '2006-12-10 01:09:35', '2006-12-10 01:09:35', 1, '11365480442006121001090969t111', 0x3c656e3e53686f77206f6e20686f6d65706167653c2f656e3e3c72753ed09fd0bed0bad0b0d0b7d18bd0b2d0b0d182d18c20d0bdd0b020d0bfd0b5d180d0b2d0bed0b920d181d182d180d0b0d0bdd0b8d186d0b53c2f72753e, 1, '', ''),
('11365480442006121001100534j111', 'specialoffersbox', 'root', 'root', '2006-12-10 01:10:05', '2006-12-10 01:10:05', 1, '11365480442006121001090969t111', 0x3c656e3e53686f77206f6e207370656369616c20636f6d70616e6965732066626f783c2f656e3e3c72753ed09fd0bed0bad0b0d0b7d18bd0b2d0b0d182d18c20d0b220d0b1d0bbd0bed0bad0b0d18520d181d0bfd0b5d186d0b8d0b0d0bbd18cd0bdd18bd18520d184d0b8d180d0bc3c2f72753e, 2, '', ''),
('11365480442006121001110370k111', 'active', 'root', 'root', '2006-12-10 01:11:03', '2008-12-04 16:46:04', 1, '11365480442006121001103967c111', 0x3c64653e4163746976653c2f64653e3c656e3e4163746976653c2f656e3e3c66723e4163746976653c2f66723e3c72753ed090d0bad182d0b8d0b2d0bdd0b03c2f72753e, 2, '', ''),
('11365480442006121001111580o111', 'hidden', 'root', 'root', '2006-12-10 01:11:15', '2006-12-10 01:11:15', 1, '11365480442006121001103967c111', 0x3c656e3e48696464656e3c2f656e3e3c72753ed0a1d0bad180d18bd182d18c3c2f72753e, 4, '', ''),
('11365480442007041516274061t111', 'html', 'root', 'root', '2007-04-15 16:27:40', '2007-04-15 16:27:40', 1, '11365480442007041516270393j111', 0x3c656e3e48544d4c2070616765733c2f656e3e3c72753e48544d4c20d181d182d180d0b0d0bdd0b8d186d18b3c2f72753e, 2, '', ''),
('11365480442007041516281396u111', 'rss', 'root', 'root', '2007-04-15 16:28:13', '2007-04-15 16:28:13', 1, '11365480442007041516270393j111', 0x3c656e3e5253532066656564733c2f656e3e3c72753e52535320d0b8d181d182d0bed187d0bdd0b8d0bad0b83c2f72753e, 4, '', ''),
('11365480442007041516283196w111', 'xml', 'root', 'root', '2007-04-15 16:28:31', '2008-01-08 18:34:17', 1, '11365480442007041516270393j111', 0x3c72753e584d4c20d0b8d181d182d0bed187d0bdd0b8d0bad0b83c2f72753e3c656e3e584d4c2066656564733c2f656e3e3c66723e584d4c2066656564733c2f66723e, 8, '', ''),
('11365480442007042121545652u111', 'csv', 'root', 'root', '2007-04-21 21:54:56', '2007-04-21 21:54:56', 1, '11365480442007041516270393j111', 0x3c656e3e4353563c2f656e3e3c72753e43535620d0b8d181d182d0bed187d0bdd0b8d0ba3c2f72753e, 10, '', ''),
('11365480442008010818333231a111', 'rss-google-property', 'root', 'root', '2008-01-08 18:33:32', '2008-01-08 18:38:18', 1, '11365480442007041516270393j111', 0x3c656e3e525353202d20476f6f676c6520426173652050726f706572747920666565643c2f656e3e3c66723e525353202d20476f6f676c6520426173652050726f706572747920666565643c2f66723e, 6, '', ''),
('11365480442007041516373351j111', '1', 'root', 'root', '2007-04-15 16:37:33', '2007-04-15 16:37:33', 1, '11365480442007041516365415v111', 0x3c656e3e46756c6c20696e666f3c2f656e3e3c72753ed092d181d18f20d0b4d0bed181d182d183d0bfd0bdd0b0d18f20d0b8d0bdd184d0bed180d0bcd0b0d186d0b8d18f3c2f72753e, 1, '', ''),
('11365480442007041516375792z111', '2', 'root', 'root', '2007-04-15 16:37:57', '2007-04-15 16:37:57', 1, '11365480442007041516365415v111', 0x3c656e3e50726f64756374206465736372697074696f6e206f6e6c793c2f656e3e3c72753ed0a2d0bed0bbd18cd0bad0be20d0bed0b1d189d0b5d0b520d0bed0bfd0b8d181d0b0d0bdd0b8d0b520d182d0bed0b2d0b0d180d0b03c2f72753e, 1, '', ''),
('11365480442007041517361545c111', 'new', 'root', 'root', '2007-04-15 17:36:15', '2007-10-08 23:25:57', 1, '11365480442007041517354350m111', 0x3c656e3e4a7573742061646465643c2f656e3e3c72753ed094d0bed0b1d0b0d0b2d0bbd0b5d0bd3c2f72753e, 8, '', ''),
('11365480442007041517373275z111', 'test', 'root', 'root', '2007-04-15 17:37:32', '2007-04-15 17:37:32', 1, '11365480442007041517354350m111', 0x3c656e3e54657374206d6f64652028646576656c6f706d656e74293c2f656e3e3c72753ed0a2d0b5d181d182d0bed0b2d18bd0b92028d180d0b5d0b6d0b8d0bc20d180d0b0d0b7d180d0b0d0b1d0bed182d0bad0b8293c2f72753e, 10, '', ''),
('1136548044200704151738043p1111', 'active', 'root', 'root', '2007-04-15 17:38:04', '2007-10-08 23:28:56', 1, '11365480442007041517354350m111', 0x3c656e3e4c697665206d6f64653c2f656e3e3c72753ed090d0bad182d0b8d0b2d0bdd18bd0b92028d0b6d0b8d0b2d0bed0b920d180d0b5d0b6d0b8d0bc293c2f72753e, 18, '', ''),
('11365480442007041517382892r111', 'hold', 'root', 'root', '2007-04-15 17:38:28', '2007-10-08 23:30:07', 1, '11365480442007041517354350m111', 0x3c656e3e4f6e20686f6c643c2f656e3e3c72753ed09ed182d0bbd0bed0b6d0b5d0bd3c2f72753e, 20, '', ''),
('11365480442007100823242846i111', 'notv', 'root', 'root', '2007-10-08 23:24:28', '2007-10-08 23:24:28', 1, '11365480442007041517354350m111', 0x3c656e3e416464656420627574206e6f742076616c6964617465643c2f656e3e3c72753ed094d0bed0b1d0b0d0b2d0bbd0b5d0bd20d0bdd0be20d0bdd0b520d183d182d0b2d0b5d180d0b6d0b4d0b5d0bd3c2f72753e, 2, '', ''),
('1136548044200710082324520v1111', 'dolater', 'root', 'root', '2007-10-08 23:24:52', '2007-10-08 23:26:15', 1, '11365480442007041517354350m111', 0x3c656e3e546f20646f206c617465723c2f656e3e3c72753ed09fd0bed0bad0b020d0bdd0b520d0b4d0b5d0bbd0b0d182d18c3c2f72753e, 4, '', ''),
('11365480442007100823253799c111', 'new1', 'root', 'root', '2007-10-08 23:25:37', '2007-10-08 23:26:06', 1, '11365480442007041517354350m111', 0x3c656e3e57616974696e6720666f7220646576656c6f706d656e74207072696f7269747920313c2f656e3e3c72753ed094d0bed0b1d0b0d0b2d0bbd0b5d0bd202d20d0bfd180d0b8d0bed180d0b8d182d0b5d18220313c2f72753e, 6, '', ''),
('11365480442007100823270514x111', 'mcats', 'root', 'root', '2007-10-08 23:27:05', '2007-10-08 23:27:05', 1, '11365480442007041517354350m111', 0x3c656e3e4d617463682063617465676f7269657320696e20636f64653c2f656e3e3c72753ed09ed182d180d0b0d0b1d0bed182d0b0d182d18c20d0bad0b0d182d0b5d0b3d0bed180d0b8d0b83c2f72753e, 12, '', ''),
('11365480442007100823273381b111', 'correct', 'root', 'root', '2007-10-08 23:27:33', '2007-10-08 23:27:33', 1, '11365480442007041517354350m111', 0x3c656e3e436f72726563743c2f656e3e3c72753ed098d181d0bfd180d0b0d0b2d0b8d182d18c3c2f72753e, 14, '', ''),
('11365480442007100823281859s111', 'changed', 'root', 'root', '2007-10-08 23:28:18', '2007-10-08 23:28:18', 1, '11365480442007041517354350m111', 0x3c656e3e536f75726365206973206368616e6765643c2f656e3e3c72753ed09fd0bed0bcd0b5d0bdd18fd0bbd181d18f20d0b8d181d182d0bed187d0bdd0b8d0ba3c2f72753e, 16, '', ''),
('11365480442007100823294936g111', 'nonews', 'root', 'root', '2007-10-08 23:29:49', '2007-10-08 23:29:49', 1, '11365480442007041517354350m111', 0x3c656e3e436865636b202d204e6f206e6577206974656d7320666f72206c6f6e672074696d653c2f656e3e3c72753ed09fd180d0bed0b2d0b5d180d0b8d182d18c2c20d0bdd0b5d18220d0b7d0b0d0bfd0b8d181d0b5d0b920d0b7d0b020d0bfd0bed181d0bbd0b5d0b4d0bdd0b5d0b520d0b2d180d0b5d0bcd18f3c2f72753e, 22, '', ''),
('11365480442007100823304968m111', 'syserr', 'root', 'root', '2007-10-08 23:30:49', '2007-10-08 23:30:49', 1, '11365480442007041517354350m111', 0x3c656e3e53797374656d206572726f723c2f656e3e3c72753ed09fd180d0bed0b1d0bbd0b5d0bcd0b020d0b220d181d0b8d181d182d0b5d0bcd0b53c2f72753e, 23, '', ''),
('11365480442007100823312245k111', 'neverdo', 'root', 'root', '2007-10-08 23:31:22', '2007-10-08 23:31:22', 1, '11365480442007041517354350m111', 0x3c656e3e4e6576657220646f3c2f656e3e3c72753ed09ed182d0bad0bbd0bed0bdd0b5d0bd202d20d0bdd0b520d0b4d0b5d0bbd0b0d182d18c3c2f72753e, 24, '', ''),
('11365480442007042116233851w111', 'ResourceOffer', 'root', 'root', '2007-04-21 16:23:38', '2007-04-21 21:56:03', 1, '11365480442007042116225918g111', 0x3c656e3e41647320616e642070726f6475637473285265736f757263654f66666572293c2f656e3e3c72753ed0a6d0b5d0bdd18b20d0b820d0bed0b1d18ad18fd0b2d0bbd0b5d0bdd0b8d18f20285265736f757263654f66666572293c2f72753e, 2, '', ''),
('11365480442007042116241059q111', 'NewsArticle', 'root', 'root', '2007-04-21 16:24:10', '2007-04-21 16:24:10', 1, '11365480442007042116225918g111', 0x3c656e3e4e65777320616e642041727469636c657320284e65777341727469636c65293c2f656e3e3c72753ed09dd0bed0b2d0bed181d182d0b820d0b820d181d182d0b0d182d18cd0b820284e65777341727469636c65293c2f72753e, 6, '', ''),
('1136548044200704212155520v1111', 'Resource', 'root', 'root', '2007-04-21 21:55:52', '2007-04-21 21:55:52', 1, '11365480442007042116225918g111', 0x3c656e3e436174616c6f6720285265736f75726365293c2f656e3e3c72753ed09ad0b0d182d0b0d0bbd0bed0b320285265736f75726365293c2f72753e, 4, '', ''),
('11365480442007051301442425v111', 'ResourceAuthor', 'root', 'root', '2007-05-13 01:44:24', '2007-05-13 01:44:24', 1, '11365480442007042116225918g111', 0x3c656e3e436f6d70616e69657320285265736f75726365417574686f72293c2f656e3e3c72753ed09ad0bed0bcd0bfd0b0d0bdd0b8d0b820285265736f75726365417574686f72293c2f72753e, 3, '', ''),
('11365480442007042116331171z111', 'ad', 'root', 'root', '2007-04-21 16:33:11', '2007-04-21 16:33:11', 1, '11365480442007042116325696p111', 0x3c656e3e4164733c2f656e3e3c72753ed09ed0b1d18ad18fd0b2d0bbd0b5d0bdd0b8d18f3c2f72753e, 1, '', ''),
('1136548044200704211633289y1111', 'price', 'root', 'root', '2007-04-21 16:33:28', '2007-04-21 16:33:28', 1, '11365480442007042116325696p111', 0x3c656e3e5072696365733c2f656e3e3c72753ed0a6d0b5d0bdd18b3c2f72753e, 2, '', ''),
('11365480442007042116334874w111', 'tender', 'root', 'root', '2007-04-21 16:33:48', '2007-04-21 16:33:48', 1, '11365480442007042116325696p111', 0x3c656e3e54656e646572733c2f656e3e3c72753ed097d0b0d0bfd180d0bed181d18b20d0bdd0b020d0b7d0b0d0bad183d0bfd0bad1833c2f72753e, 3, '', ''),
('11365480442007042121563512l111', 'catalog', 'root', 'root', '2007-04-21 21:56:35', '2007-04-21 21:56:35', 1, '11365480442007042116325696p111', 0x3c656e3e436174616c6f673c2f656e3e3c72753ed09ad0b0d182d0b0d0bbd0bed0b33c2f72753e, 4, '', ''),
('11365480442007051301453691o111', 'other', 'root', 'root', '2007-05-13 01:45:36', '2007-05-13 01:45:36', 1, '11365480442007042116325696p111', 0x3c656e3e4f746865723c2f656e3e3c72753ed09fd180d0bed187d0b5d0b53c2f72753e, 1, '', ''),
('11365480442007050111421732r111', 'ad', 'root', 'it', '2007-05-01 11:42:17', '2008-02-24 17:55:54', 1, '11365480442007050111412368r111', 0x3c72753ed09fd180d0bed0b4d0b0d18e2c20d0bfd180d0b5d0b4d0bbd0b0d0b3d0b0d18e3c2f72753e3c66723e50726f7065727469657320666f722073616c653c2f66723e3c656e3e4f66666572696e673c2f656e3e, 2, '', ''),
('11365480442007050111423894w111', 'tender', 'root', 'it', '2007-05-01 11:42:38', '2008-02-24 17:53:01', 1, '11365480442007050111412368r111', 0x3c72753ed09ad183d0bfd0bbd18e2c20d182d180d0b5d0b1d183d0b5d182d181d18f3c2f72753e3c66723e5265717565737420746f20627579206f722072656e743c2f66723e3c656e3e57616e7465643c2f656e3e, 4, '', ''),
('11365480442007052620370122k111', 'updateitems', 'root', 'root', '2007-05-26 20:37:01', '2007-05-26 20:37:01', 1, '11365480442007052620360191i111', 0x3c656e3e557064617465206974656d73206f6e206e6578742072756e3c2f656e3e3c72753ed09ed0b1d0bdd0bed0b2d0bbd18fd182d18c20d181d183d189d0b5d181d182d0b2d183d18ed189d0b8d0b520d0b7d0b0d0bfd0b8d181d0b820d0bfd180d0b820d0bad0b0d0b6d0b4d0bed0bc20d181d180d0b0d0b1d0b0d182d18bd0b2d0b0d0bdd0b8d0b82028d0bdd0b5d0bed0b1d185d0bed0b4d0b8d0bcd0be20d0b4d0bbd18f20d0bed0b1d0bdd0bed0b2d0bbd0b5d0bdd0b8d18f20d186d0b5d0bd20d0bed18220d18dd0bbd0b5d0bad182d180d0bed0bdd0bdd18bd18520d0bcd0b0d0b3d0b0d0b7d0b8d0bdd0bed0b2293c2f72753e, 1, '', ''),
('11365480442007092302304524j111', 'public', 'root', 'root', '2007-09-23 02:30:45', '2007-11-07 21:24:06', 1, '11365480442007092302293846x111', 0x3c656e3e5075626c6963207175657374696f6e202876697369626c65206f6e20746869732070616765293c2f656e3e3c72753ed09fd183d0b1d0bbd0b8d187d0bdd18bd0b920d0b2d0bed0bfd180d0bed1813c2f72753e3c66723e5175657374696f6e207075626c69717565202876697369626c65207375722063657474652070616765293c2f66723e, 2, '', ''),
('1136548044200709230231240l1111', 'private', 'root', 'root', '2007-09-23 02:31:24', '2007-11-07 21:24:16', 1, '11365480442007092302293846x111', 0x3c656e3e50726976617465202876697369626c65206f6e6c79206279206164207075626c6973686572293c2f656e3e3c72753ed0a1d0bad180d18bd182d18bd0b920d0b2d0bed0bfd180d0bed1812028d182d0bed0bbd18cd0bad0be20d0b4d0bbd18f20d0b0d0b2d182d0bed180d0b0293c2f72753e3c66723e5175657374696f6e2070726976c3a9652028756e697175656d656e742076697369626c6520706172206c27616e6e6f6e63657572293c2f66723e, 4, '', ''),
('11365480442007111421213625z111', 'TimeCreated_ASC', 'root', 'root', '2007-11-14 21:21:36', '2009-11-24 19:45:10', 1, '11365480442007111421204335j111', 0x3c656e3e4f6c646573742066697273743c2f656e3e3c66723e6c657320706c757320616e6369656e6e65733c2f66723e3c6e6c3e4f6c646573742066697273743c2f6e6c3e3c72753ed094d0b0d182d0b5202d20d181d182d0b0d180d18bd0b520d0b2d0b2d0b5d180d185d1833c2f72753e, 6, '', ''),
('11365480442007111421234764w111', 'ResourceOfferPrice_ASC', 'root', 'root', '2007-11-14 21:23:47', '2009-11-24 19:45:10', 1, '11365480442007111421204335j111', 0x3c656e3e43686561706573742066697273743c2f656e3e3c66723e50726978206c657320706c7573206261733c2f66723e3c6e6c3e43686561706573742066697273743c2f6e6c3e3c72753ed0a6d0b5d0bdd0b5202d20d0b4d0b5d188d0b5d0b2d18bd0b520d0b2d0b2d0b5d180d185d1833c2f72753e, 8, '', '');
INSERT INTO `referenceoption` (`id`, `code`, `UserID`, `OwnerID`, `timeCreated`, `timeSaved`, `hidden`, `referenceID`, `name`, `position`, `color`, `icon`) VALUES
('11365480442007111421563186m111', 'TimeCreated_DESC', 'root', 'root', '2007-11-14 21:56:31', '2009-11-24 19:45:10', 1, '11365480442007111421204335j111', 0x3c656e3e4e65776573742066697273743c2f656e3e3c66723e6c657320706c75732072c3a963656e7465733c2f66723e3c6e6c3e4e65776573742066697273743c2f6e6c3e3c72753ed094d0b0d182d0b5202d20d0bdd0bed0b2d18bd0b520d0b2d0b2d0b5d180d185d1833c2f72753e, 4, '', ''),
('11365480442007111421585686k111', 'ResourceOfferPrice_DESC', 'root', 'root', '2007-11-14 21:58:56', '2009-11-24 19:45:10', 1, '11365480442007111421204335j111', 0x3c656e3e457870656e736976652066697273743c2f656e3e3c66723e50726978206c657320706c75732068617574733c2f66723e3c6e6c3e457870656e736976652066697273743c2f6e6c3e3c72753ed0a6d0b5d0bdd0b5202d20d0b4d0bed180d0bed0b3d0b8d0b520d0b2d0b2d0b5d180d185d1833c2f72753e, 10, '', ''),
('11365480442007111713002329q111', 'searchform', 'root', 'root', '2007-11-17 13:00:23', '2007-11-17 13:00:23', 1, '11365480442007111712592225h111', 0x3c656e3e53686f77206669656c64206f6e20717569636b2073656172636820666f726d3c2f656e3e3c66723e53686f77206669656c64206f6e20717569636b2073656172636820666f726d3c2f66723e, 1, '', ''),
('11365480442007111713004267l111', 'searchdetailed', 'root', 'root', '2007-11-17 13:00:42', '2007-11-17 13:00:42', 1, '11365480442007111712592225h111', 0x3c656e3e53686f77206669656c64206f6e2064657461696c65642073656172636820666f726d3c2f656e3e3c66723e53686f77206669656c64206f6e2064657461696c65642073656172636820666f726d3c2f66723e, 2, '', ''),
('11365480442007111713010174e111', 'searchprofile', 'root', 'root', '2007-11-17 13:01:01', '2007-11-17 13:01:01', 1, '11365480442007111712592225h111', 0x3c656e3e53686f77206f6e207365617263682070726f66696c6520666f726d3c2f656e3e3c66723e53686f77206f6e207365617263682070726f66696c6520666f726d3c2f66723e, 3, '', ''),
('11365480442007111713012314o111', 'searchadmin', 'root', 'root', '2007-11-17 13:01:23', '2007-11-17 13:01:23', 1, '11365480442007111712592225h111', 0x3c656e3e53686f77206669656c64206f6e2061646d696e2073656172636820666f726d3c2f656e3e3c66723e53686f77206669656c64206f6e2061646d696e2073656172636820666f726d3c2f66723e, 4, '', ''),
('11365480442007111713040616p111', 'input', 'root', 'root', '2007-11-17 13:04:06', '2007-11-17 13:04:06', 1, '11365480442007111713033976l111', 0x3c656e3e496e707574206669656c643c2f656e3e3c66723e496e707574206669656c643c2f66723e, 1, '', ''),
('11365480442007111713041946x111', 'dropdown', 'root', 'root', '2007-11-17 13:04:19', '2007-11-17 13:04:19', 1, '11365480442007111713033976l111', 0x3c656e3e44726f7020646f776e3c2f656e3e3c66723e44726f7020646f776e3c2f66723e, 2, '', ''),
('11365480442007111713043866t111', 'multiple', 'root', 'root', '2007-11-17 13:04:38', '2007-11-17 13:04:38', 1, '11365480442007111713033976l111', 0x3c656e3e4d756c7469706c652064726f7020646f776e3c2f656e3e3c66723e4d756c7469706c652064726f7020646f776e3c2f66723e, 3, '', ''),
('11365480442007111713045646r111', 'checkboxes', 'root', 'root', '2007-11-17 13:04:56', '2007-11-17 13:04:56', 1, '11365480442007111713033976l111', 0x3c656e3e4c697374206f6620636865636b626f7865733c2f656e3e3c66723e4c697374206f6620636865636b626f7865733c2f66723e, 4, '', ''),
('11365480442007111713051718g111', 'range', 'root', 'root', '2007-11-17 13:05:17', '2007-11-17 13:05:17', 1, '11365480442007111713033976l111', 0x3c656e3e52616e67652077697468203220696e707574206669656c6473202866726f6d202d20746f293c2f656e3e3c66723e52616e67652077697468203220696e707574206669656c6473202866726f6d202d20746f293c2f66723e, 5, '', ''),
('11365480442007111713053576t111', 'rangedropdown', 'root', 'root', '2007-11-17 13:05:35', '2007-11-17 13:05:35', 1, '11365480442007111713033976l111', 0x3c656e3e52616e6765207769746820322064726f7020646f776e733c2f656e3e3c66723e52616e6765207769746820322064726f7020646f776e733c2f66723e, 6, '', ''),
('11365480442007112418095743i111', '50000', 'root', 'root', '2007-11-24 18:09:57', '2007-11-24 18:10:21', 1, '11365480442007112418082548d111', 0x3c656e3e266575726f3b2035302e3030303c2f656e3e3c66723e266575726f3b2035302e3030303c2f66723e, 2, '', ''),
('11365480442007112418114620c111', '100000', 'root', 'root', '2007-11-24 18:11:46', '2007-11-24 18:11:46', 1, '11365480442007112418082548d111', 0x3c656e3e266575726f3b203130302e3030303c2f656e3e3c66723e266575726f3b203130302e3030303c2f66723e, 3, '', ''),
('11365480442007112418120212j111', '150000', 'root', 'root', '2007-11-24 18:12:02', '2007-11-24 18:12:02', 1, '11365480442007112418082548d111', 0x3c656e3e266575726f3b203135302e3030303c2f656e3e3c66723e266575726f3b203135302e3030303c2f66723e, 4, '', ''),
('11365480442008010417153170f111', 'notpaid', 'root', 'root', '2008-01-04 17:15:31', '2008-12-11 11:31:59', 1, '11365480442008010417142375q111', 0x3c64653e4e696368742062657a61686c743c2f64653e3c656e3e4e6f7420706169643c2f656e3e3c66723e496d706179c3a9653c2f66723e3c72753ed09dd0b520d0bed0bfd0bbd0b0d187d0b5d0bdd0be3c2f72753e, 2, '', ''),
('11365480442008010417154386l111', 'paid', 'root', 'root', '2008-01-04 17:15:43', '2008-12-11 11:32:08', 1, '11365480442008010417142375q111', 0x3c64653e42657a61686c743c2f64653e3c656e3e506169643c2f656e3e3c66723e506179c3a9653c2f66723e3c72753ed09ed0bfd0bbd0b0d187d0b5d0bdd0be3c2f72753e, 4, '', ''),
('1136548044200811220224302o1111', 'cancelled', 'root', 'root', '2008-11-22 02:24:30', '2008-12-11 11:32:20', 1, '11365480442008010417142375q111', 0x3c64653e416e6e756c696572743c2f64653e3c656e3e43616e63656c6c65643c2f656e3e3c66723e416e6e756cc3a9653c2f66723e3c72753ed09ed182d0bcd0b5d0bdd0b5d0bdd0be3c2f72753e, 6, '', ''),
('11365480442008010420492420d111', 'deposit', 'root', 'root', '2008-01-04 20:49:24', '2008-01-04 20:49:24', 1, '11365480442008010420482590a111', 0x3c656e3e4465706f7369746564206d6f6e65793c2f656e3e3c66723e4465706f7369746564206d6f6e65793c2f66723e, 1, '', ''),
('11365480442008010420494028x111', 'buy', 'root', 'root', '2008-01-04 20:49:40', '2008-01-04 20:49:40', 1, '11365480442008010420482590a111', 0x3c656e3e5061796d656e7420666f722073657276696365733c2f656e3e3c66723e5061796d656e7420666f722073657276696365733c2f66723e, 2, '', ''),
('1136548044200801121759070i1111', 'datedesc', 'root', 'root', '2008-01-12 17:59:07', '2010-02-01 12:49:54', 1, '11365480442008011217582656o111', 0x3c656e3e4e65776573742066697273743c2f656e3e3c656c3e4e65776573742066697273743c2f656c3e3c65673e4e65776573742066697273743c2f65673e3c64653e4e65776573742066697273743c2f64653e3c66723e4c657320706c7573206e657566733c2f66723e3c65733e4e65776573742066697273743c2f65733e3c69743e4e65776573742066697273743c2f69743e3c74753e4e65776573742066697273743c2f74753e3c72753e4e65776573742066697273743c2f72753e, 1, '', ''),
('1136548044200801121759475z1111', 'dateasc', 'root', 'root', '2008-01-12 17:59:47', '2010-02-01 12:49:54', 1, '11365480442008011217582656o111', 0x3c656e3e4f6c646573742066697273743c2f656e3e3c656c3e4f6c646573742066697273743c2f656c3e3c65673e4f6c646573742066697273743c2f65673e3c64653e4f6c646573742066697273743c2f64653e3c66723e4c657320706c75732076696575783c2f66723e3c65733e4f6c646573742066697273743c2f65733e3c69743e4f6c646573742066697273743c2f69743e3c74753e4f6c646573742066697273743c2f74753e3c72753e4f6c646573742066697273743c2f72753e, 2, '', ''),
('11365480442008011218001346a111', 'priceasc', 'root', 'root', '2008-01-12 18:00:13', '2010-02-01 12:49:54', 1, '11365480442008011217582656o111', 0x3c656e3e43686561706573742066697273743c2f656e3e3c656c3e43686561706573742066697273743c2f656c3e3c65673e43686561706573742066697273743c2f65673e3c64653e43686561706573742066697273743c2f64653e3c66723e4c6573206d6f696e732063686572733c2f66723e3c65733e43686561706573742066697273743c2f65733e3c69743e43686561706573742066697273743c2f69743e3c74753e43686561706573742066697273743c2f74753e3c72753e43686561706573742066697273743c2f72753e, 3, '', ''),
('11365480442008011218003762u111', 'pricedesc', 'root', 'root', '2008-01-12 18:00:37', '2010-02-01 12:49:54', 1, '11365480442008011217582656o111', 0x3c656e3e457870656e736976652066697273743c2f656e3e3c656c3e457870656e736976652066697273743c2f656c3e3c65673e457870656e736976652066697273743c2f65673e3c64653e457870656e736976652066697273743c2f64653e3c66723e4c657320706c75732063686572733c2f66723e3c65733e457870656e736976652066697273743c2f65733e3c69743e457870656e736976652066697273743c2f69743e3c74753e457870656e736976652066697273743c2f74753e3c72753e457870656e736976652066697273743c2f72753e, 4, '', ''),
('11365480442008011218010617d111', 'alias', 'root', 'root', '2008-01-12 18:01:06', '2010-02-01 12:49:54', 1, '11365480442008011217582656o111', 0x3c656e3e4f7264657220627920726566206e756d6265723c2f656e3e3c656c3e4f7264657220627920726566206e756d6265723c2f656c3e3c65673e4f7264657220627920726566206e756d6265723c2f65673e3c64653e4f7264657220627920726566206e756d6265723c2f64653e3c66723e547269c3a9207061722072c3a966206ec2b03c2f66723e3c65733e4f7264657220627920726566206e756d6265723c2f65733e3c69743e4f7264657220627920726566206e756d6265723c2f69743e3c74753e4f7264657220627920726566206e756d6265723c2f74753e3c72753e4f7264657220627920726566206e756d6265723c2f72753e, 5, '', ''),
('11365480442008012621331679k111', '6months', 'root', 'root', '2008-01-26 21:33:16', '2008-01-27 00:57:27', 1, '1136548044200801262130074o1111', 0x3c656e3e4920616d20686f70696e6720746f2070757263686173652077697468696e20746865206e6578742036206d6f6e7468733c2f656e3e, 2, '', ''),
('11365480442008012621333579i111', '12months', 'root', 'root', '2008-01-26 21:33:35', '2008-01-27 00:58:52', 1, '1136548044200801262130074o1111', 0x3c656e3e4920696e74656e6420746f206275792077697468696e20746865206e657874203132206d6f6e746873203c2f656e3e, 4, '', ''),
('11365480442008012621335370s111', 'research', 'root', 'root', '2008-01-26 21:33:53', '2008-01-27 00:59:03', 1, '1136548044200801262130074o1111', 0x3c656e3e4920616d207265736561726368696e6720746865206d61726b65743c2f656e3e, 6, '', ''),
('11365480442008012717535287r111', '1', 'root', 'root', '2008-01-27 17:53:52', '2008-12-09 14:18:44', 1, '1136548044200801271753302t1111', 0x3c64653e4163746976653c2f64653e3c656e3e4163746976653c2f656e3e3c66723e4163746976653c2f66723e3c72753ed090d0bad182d0b8d0b2d0bdd0bed0b53c2f72753e, 2, '', ''),
('1136548044200801271754043z1111', '2', 'root', 'root', '2008-01-27 17:54:04', '2008-11-02 17:50:50', 1, '1136548044200801271753302t1111', 0x3c656e3e48696464656e3c2f656e3e3c72753ed0a1d0bad180d18bd182d0bed0b53c2f72753e, 4, '', ''),
('11365480442008012717550354h111', '4', 'root', 'root', '2008-01-27 17:55:03', '2008-11-02 17:50:59', 1, '1136548044200801271753302t1111', 0x3c656e3e546f2062652064656c657465643c2f656e3e3c72753ed09dd0b020d183d0b4d0b0d0bbd0b5d0bdd0b8d0b53c2f72753e, 6, '', ''),
('11365480442008020101502912k111', '1', 'root', 'root', '2008-02-01 01:50:29', '2008-02-01 01:50:29', 1, '11365480442008020101500222g111', 0x3c656e3e4164646564206f72206368616e676564206d616e75616c6c793c2f656e3e, 1, '', ''),
('11365480442008020101504854z111', '2', 'root', 'root', '2008-02-01 01:50:48', '2008-02-01 01:50:48', 1, '11365480442008020101500222g111', 0x3c656e3e526561642066726f6d2077656273697465206f7220666565643c2f656e3e, 2, '', ''),
('11365480442008112321394655m111', 'web-directory', 'root', 'root', '2008-11-23 21:39:46', '2008-11-27 14:55:35', 1, '11365480442008022402411214c111', 0x3c64653e5765626b6174616c6f67653c2f64653e3c656e3e436174616c6f67733c2f656e3e3c66723e416e6e7561697265733c2f66723e3c72753ed09ad0b0d182d0b0d0bbd0bed0b320d181d0b0d0b9d182d0bed0b23c2f72753e, 2, '', ''),
('11365480442008092811462099b111', 'articles', 'root', 'root', '2008-09-28 11:46:20', '2008-11-27 14:55:43', 1, '11365480442008022402411214c111', 0x3c64653e416b74696b656c3c2f64653e3c656e3e41727469636c65733c2f656e3e3c66723e41727469636c65733c2f66723e3c72753ed0a1d182d0b0d182d18cd0b83c2f72753e, 4, '', ''),
('11365480442008030919442453m111', 'KeywordWeight_DESC', 'root', 'root', '2008-03-09 19:44:24', '2008-03-16 15:51:30', 1, '11365480442008030919434344r111', 0x3c656e3e52656c6576616e63793c2f656e3e3c72753e52656c6576616e63793c2f72753e3c75613e52656c6576616e63793c2f75613e, 2, '', ''),
('11365480442008030919444366c111', 'TimeCreated_DESC', 'root', 'root', '2008-03-09 19:44:43', '2008-03-16 15:50:40', 1, '11365480442008030919434344r111', 0x3c656e3e4e65776573742066697273743c2f656e3e3c72753e4e65776573742066697273743c2f72753e3c75613e4e65776573742066697273743c2f75613e, 6, '', ''),
('11365480442008030919445524s111', 'TimeCreated_ASC', 'root', 'root', '2008-03-09 19:44:55', '2008-03-09 19:44:55', 1, '11365480442008030919434344r111', 0x3c656e3e4f6c646573742066697273743c2f656e3e, 8, '', ''),
('11365480442008030919454056u111', 'ResourceAuthorName_ASC', 'root', 'root', '2008-03-09 19:45:40', '2008-03-16 15:53:20', 1, '11365480442008030919434344r111', 0x3c656e3e416c7068616265746963616c6c793c2f656e3e3c72753e416c7068616265746963616c6c793c2f72753e3c75613e416c7068616265746963616c6c793c2f75613e, 4, '', ''),
('11365480442008031100240123w111', 'keyword', 'root', 'root', '2008-03-11 00:24:01', '2008-03-11 00:24:01', 1, '11365480442008031100234478f111', 0x3c656e3e4b6579776f7264733c2f656e3e, 1, '', ''),
('11365480442008031100241645m111', 'brand', 'root', 'root', '2008-03-11 00:24:16', '2008-03-11 00:24:16', 1, '11365480442008031100234478f111', 0x3c656e3e4272616e64733c2f656e3e, 2, '', ''),
('11365480442008031100250355j111', 'colour', 'root', 'root', '2008-03-11 00:25:03', '2008-03-11 00:25:03', 1, '11365480442008031100234478f111', 0x3c656e3e436f6c6f7572733c2f656e3e, 3, '', ''),
('11365480442008031616173432k111', 'KeywordWeight_DESC', 'root', 'root', '2008-03-16 16:17:34', '2008-03-16 16:17:34', 1, '11365480442008031616171421w111', 0x3c656e3e52656c6576616e63793c2f656e3e3c72753e52656c6576616e63793c2f72753e3c75613e52656c6576616e63793c2f75613e, 1, '', ''),
('11365480442008031616175934p111', 'WebSiteTitle_ASC', 'root', 'root', '2008-03-16 16:17:59', '2008-03-16 16:17:59', 1, '11365480442008031616171421w111', 0x3c656e3e416c7068616265746963616c6c793c2f656e3e3c72753e416c7068616265746963616c6c793c2f72753e3c75613e416c7068616265746963616c6c793c2f75613e, 2, '', ''),
('11365480442008031616181750m111', 'TimeCreated_DESC', 'root', 'root', '2008-03-16 16:18:17', '2008-03-16 16:18:17', 1, '11365480442008031616171421w111', 0x3c656e3e4e65776573742066697273743c2f656e3e3c72753e4e65776573742066697273743c2f72753e3c75613e4e65776573742066697273743c2f75613e, 3, '', ''),
('11365480442008031616183885k111', 'TimeCreated_ASC', 'root', 'root', '2008-03-16 16:18:38', '2008-03-16 16:18:38', 1, '11365480442008031616171421w111', 0x3c656e3e4f6c646573742066697273743c2f656e3e3c72753e4f6c646573742066697273743c2f72753e3c75613e4f6c646573742066697273743c2f75613e, 4, '', ''),
('11365480442008041123033651j111', 'ad', 'root', 'root', '2008-04-11 23:03:36', '2008-11-02 14:23:13', 1, '11365480442008041123031975p111', 0x3c656e3e4164733c2f656e3e3c72753ed09ed0b1d18ad18fd0b2d0bbd0b5d0bdd0b8d18f3c2f72753e, 4, '', ''),
('11365480442008041123041715e111', 'services', 'root', 'root', '2008-04-11 23:04:17', '2008-11-02 14:22:52', 1, '11365480442008041123031975p111', 0x3c656e3e53657276696365733c2f656e3e3c72753ed0a3d181d0bbd183d0b3d0b83c2f72753e, 2, '', ''),
('11365480442008041318525638e111', 'mactchcats', 'root', 'root', '2008-04-13 18:52:56', '2008-04-13 18:52:56', 1, '11365480442008041318522063v111', 0x3c656e3e4d617463682063617465676f726965733c2f656e3e, 1, '', ''),
('11365480442008041318531415f111', 'updatelinks', 'root', 'root', '2008-04-13 18:53:14', '2008-04-13 18:53:14', 1, '11365480442008041318522063v111', 0x3c656e3e4368616e6765206c696e6b7320666f726d61743c2f656e3e, 2, '', ''),
('11365480442008041318532865z111', 'comments', 'root', 'root', '2008-04-13 18:53:28', '2008-04-13 18:53:28', 1, '11365480442008041318522063v111', 0x3c656e3e53656520696e20636f6d6d656e74733c2f656e3e, 1, '', ''),
('11365480442008041318534690q111', 'done', 'root', 'root', '2008-04-13 18:53:46', '2008-04-13 18:53:46', 1, '11365480442008041318522063v111', 0x3c656e3e416c6c20646f6e653c2f656e3e, 3, '', ''),
('11365480442008092410520253o111', 'company', 'root', 'root', '2008-09-24 10:52:02', '2008-12-04 15:11:03', 1, '11365480442008092410514490q111', 0x3c64653e4765736368c3a466746c6963683c2f64653e3c656e3e436f6d70616e793c2f656e3e3c66723e50726f66657373696f6e6e656c3c2f66723e3c72753ed09ad0bed0bcd0bfd0b0d0bdd0b8d18f3c2f72753e, 2, '', ''),
('11365480442008092410521628z111', 'privat', 'root', 'root', '2008-09-24 10:52:16', '2008-12-04 15:11:15', 1, '11365480442008092410514490q111', 0x3c64653e5072697661743c2f64653e3c656e3e5072697661743c2f656e3e3c66723e506172746963756c6965723c2f66723e3c72753ed0a7d0b0d181d182d0bdd0bed0b520d0bbd0b8d186d0be3c2f72753e, 4, '', ''),
('11365480442008102420124495m111', 'free', 'root', 'root', '2008-10-24 20:12:44', '2008-12-01 17:09:46', 1, '11365480442008102420113072t111', 0x3c64653e4b6f7374656e6c6f73206f686e65204261636b6c696e6b3c2f64653e3c656e3e4672656520616e64206261636b206c696e6b206973206e6f742072657175697265643c2f656e3e3c66723e477261747569742073616e73206c69656e207265746f75723c2f66723e3c72753ed09dd0b520d182d180d0b5d0b1d183d0b5d182d181d18f20d0bed0b1d180d0b0d182d0bdd0b0d18f20d181d181d18bd0bbd0bad0b03c2f72753e, 2, '', ''),
('11365480442008102420131746y111', 'paid', 'root', 'root', '2008-10-24 20:13:17', '2008-12-01 17:11:31', 1, '11365480442008102420113072t111', 0x3c64653e42657a61686c6261723c2f64653e3c656e3e50616964206f6e6c793c2f656e3e3c66723e506179616e743c2f66723e3c72753ed0a2d0bed0bbd18cd0bad0be20d0bfd0bbd0b0d182d0bdd0b0d18f20d180d0b5d0b3d0b8d181d182d180d0b0d186d0b8d18f3c2f72753e, 6, '', ''),
('11365480442008102420144896t111', 'backlink', 'root', 'root', '2008-10-24 20:14:48', '2008-12-01 17:10:30', 1, '11365480442008102420113072t111', 0x3c64653e4b6f7374656e6c6f73206d6974204261636b6c696e6b3c2f64653e3c656e3e4672656520627574206261636b206c696e6b2072657175697265643c2f656e3e3c66723e477261747569742061766563206c69656e207265746f75723c2f66723e3c72753ed0a2d180d0b5d0b1d183d0b5d182d181d18f20d0bed0b1d180d0b0d182d0bdd0b0d18f20d181d181d18bd0bbd0bad0b03c2f72753e, 4, '', ''),
('1136548044200811291654378r1111', 'undefined', 'root', 'root', '2008-11-29 16:54:37', '2008-12-01 17:11:45', 1, '11365480442008102420113072t111', 0x3c64653e416e646572653c2f64653e3c656e3e556e646566696e65643c2f656e3e3c66723e41757472653c2f66723e3c72753ed09dd0b5d0b8d0b7d0b2d0b5d181d182d0bdd0be3c2f72753e, 10, '', ''),
('1136548044200812021122327n1111', 'manually', 'root', 'root', '2008-12-02 11:22:32', '2008-12-09 11:35:09', 1, '11365480442008102420113072t111', 0x3c64653e4b6f6e74616b74206d69742064656d205765626d61737465723c2f64653e3c656e3e436f6e746163742077697468207765626d61737465723c2f656e3e3c66723e436f6e746163742061766563206c65207765626d61737465723c2f66723e3c72753ed0a1d0b2d18fd0b7d0b0d182d18cd181d18f20d18120d0b2d0b5d0b1d0bcd0b0d181d182d0b5d180d0bed0bc3c2f72753e, 8, '', ''),
('11365480442008102420205245u111', '1', 'root', 'root', '2008-10-24 20:20:52', '2008-12-15 16:58:11', 1, '11365480442008102420191684r111', 0x3c64653e31202d20556e626566726965646967656e646573204e6976656175202d207370c3a4746572207a752076657273756368656e3c2f64653e3c656e3e31202d206c6f77657374206c6576656c202d20747279206974206c617465723c2f656e3e3c66723e31202d204e697665617520696e736174697366616973616e74202d20c3a0206573736179657220706c757320746172643c2f66723e3c72753e31202d20d181d0b0d0b9d18220d0bed187d0b5d0bdd18c20d0bdd0b8d0b7d0bad0bed0b3d0be20d183d180d0bed0b2d0bdd18f202d20d0bcd0bed0b6d0bdd0be20d0bfd0bed0bfd180d0bed0b1d0bed0b2d0b0d182d18c20d0bfd0bed0b7d0b6d0b53c2f72753e, 2, '', ''),
('11365480442008102420231827r111', '2', 'root', 'root', '2008-10-24 20:23:18', '2008-12-15 16:58:19', 1, '11365480442008102420191684r111', 0x3c64653e32202d204e6575652057656273697465206f646572206265737365726573204e6976656175202d207a752076657273756368656e3c2f64653e3c656e3e32202d206e65772077656273697465206f72206120626574746572206c6576656c202d2067697665206974207472793c2f656e3e3c66723e32202d204e6f75766561752073697465206f75206e697665617520706c757320736174697366616973616e74202d20c3a020657373617965723c2f66723e3c72753e32202d20d0bdd0bed0b2d18bd0b920d181d0b0d0b9d18220d0b8d0bbd0b820d0bdd0b8d0b7d0bad0b8d0b920d183d180d0bed0b2d0b5d0bdd18c202d20d0bcd0bed0b6d0bdd0be20d0bfd0bed0bfd180d0bed0b1d0bed0b2d0b0d182d18c3c2f72753e, 4, '', ''),
('11365480442008102420232459j111', '3', 'root', 'root', '2008-10-24 20:23:24', '2008-12-15 16:58:47', 1, '11365480442008102420191684r111', 0x3c64653e33202d204d6974746c65726573204e6976656175202d206b616e6e2066c3bc72206469652045696e74726167756e67656e2062656e75747a742077657264656e3c2f64653e3c656e3e33202d206d6964646c65206c6576656c202d20796f752063616e2075736520697420666f72207375626d697373696f6e3c2f656e3e3c66723e33202d204e6976656175206d6f79656e202d207065757420c3aa747265207574696c6973c3a920706f7572206c657320736f756d697373696f6e733c2f66723e3c72753e33202d20d181d0b0d0b9d18220d181d180d0b5d0b4d0bdd0b5d0b3d0be20d183d180d0bed0b2d0bdd18f20202d20d181d182d0bed0b8d18220d180d0b0d181d181d0bcd0bed182d180d0b5d182d18c3c2f72753e, 6, '', ''),
('11365480442008102420243896n111', '4', 'root', 'root', '2008-10-24 20:24:38', '2008-12-15 16:59:33', 1, '11365480442008102420191684r111', 0x3c64653e34202d204775746573204e6976656175202d2066c3bc72206469652045696e74726167756e67656e207a752062656e75747a656e3c2f64653e3c656e3e34202d20676f6f64206c6576656c202d20697420697320776f72746820746f2075736520666f72207375626d7373696f6e3c2f656e3e3c66723e34202d20426f6e206e6976656175202d20c3a0207574696c6973657220706f7572206c657320736f756d697373696f6e733c2f66723e3c72753e34202d20d185d0bed180d0bed188d0b8d0b920d181d0b0d0b9d182202d20d181d182d0bed0b8d18220d0b8d181d0bfd0bed0bbd18cd0b7d0bed0b2d0b0d182d18c3c2f72753e, 8, '', ''),
('11365480442008102420251351i111', '5', 'root', 'root', '2008-10-24 20:25:13', '2008-12-15 17:00:11', 1, '11365480442008102420191684r111', 0x3c64653e35202d2053656872206775746573204e6976656175202d206d7573732066c3bc72206469652045696e74726167756e67656e2062656e75747a742077657264656e3c2f64653e3c656e3e35202d207665727920676f6f64206c6576656c202d2069742069732061206d75737420746f2075736520666f72207375626d697373696f6e3c2f656e3e3c66723e35202d205472c3a87320626f6e206e6976656175202d20646f697420c3aa747265207574696c6973c3a920706f7572206c657320736f756d697373696f6e733c2f66723e3c72753e35202d20d0bed182d0bbd0b8d187d0bdd18bd0b920d181d0b0d0b9d182202d20d0bed0b1d18fd0b7d0b0d182d0b5d0bbd18cd0bdd0be20d0b8d181d0bfd0bed0bbd18cd0b7d0bed0b2d0b0d182d18c3c2f72753e, 10, '', ''),
('11365480442008102420284015f111', '6', 'root', 'root', '2008-10-24 20:28:40', '2008-12-15 17:01:39', 1, '11365480442008102420191684r111', 0x3c64653e506572666f726d616e746573204e6976656175202877696520676f6f676c652c207961686f6f2c202e2e2e293c2f64653e3c656e3e544f50206c6576656c20286c696b6520676f6f676c652c207961686f6f206574632e293c2f656e3e3c66723e4e697665617520706572666f726d616e742028636f6d6d6520676f6f676c652c207961686f6f2c202e2e2e293c2f66723e3c72753ed0a2d09ed09f20d181d0b0d0b9d182d18b2028d0bad0b0d0ba20676f6f676c652c2079616e6465782c206269676d6972293c2f72753e, 12, '', ''),
('11365480442008112713061263c111', '-1', 'root', 'root', '2008-11-27 13:06:12', '2008-12-15 16:53:10', 1, '11365480442008102420191684r111', 0x3c64653e5350414d2057656273697465202d207a75206cc3b6736368656e3c2f64653e3c656e3e5350414d20776562736974652c20746f2062652064656c657465643c2f656e3e3c66723e53697465205350414d202d20c3a0207375707072696d65723c2f66723e3c72753ed0a1d09fd090d09c20d181d0b0d0b9d18220d0b8d0bbd0b820d181d0b0d0b9d182d0b020d0b1d0bed0bbd18cd188d0b520d0bdd0b5d182202d20d183d0b4d0b0d0bbd0b8d182d18c20d0b8d0b720d0b1d0b0d0b7d18b3c2f72753e, 14, '', ''),
('11365480442008112916163775z111', '-2', 'root', 'root', '2008-11-29 16:16:37', '2008-12-15 16:51:40', 1, '11365480442008102420191684r111', 0x3c64653e556e62657374696d6d743c2f64653e3c656e3e556e646566696e65643c2f656e3e3c66723e496e64c3a966696e693c2f66723e3c72753ed09dd0b520d0bed0bfd180d0b5d0b4d0b5d0bbd0b5d0bdd0be3c2f72753e, 18, '', ''),
('11365480442008120215181574d111', '-3', 'root', 'root', '2008-12-02 15:18:15', '2008-12-15 16:52:36', 1, '11365480442008102420191684r111', 0x3c64653e5765627369746520697374206d6f6d656e74616e206e696368742076657266c3bc676261723c2f64653e3c656e3e576562736974652069732074656d706f7261726c79206e6f7420617661696c61626c653c2f656e3e3c66723e4c652073697465206e652072c3a9706f6e64207061732061637475656c6c656d656e743c2f66723e3c72753ed0a1d0b0d0b9d18220d0b2d180d0b5d0bcd0b5d0bdd0bdd0be20d0bdd0b520d0b4d0bed181d182d183d0bfd0b5d0bd20d0b8d0bbd0b820d18120d0b2d0b8d180d183d181d0b0d0bcd0b83c2f72753e, 16, '', ''),
('11365480442008062016504189u111', 'check', 'root', 'root', '2008-06-20 16:50:41', '2008-10-31 22:19:17', 1, '11365480442008062016434041d111', 0x3c66723e536f756d69733a2076c3a9726966696572206261636b206c696e6b3c2f66723e3c656e3e5375626d69746564202d20636865636b206261636b206c696e6b3c2f656e3e3c72753ed097d0b0d180d0b5d0b3d0b8d181d182d180d0b8d180d0bed0b2d0b0d0bdd0be20d09dd09e20d0bfd180d0bed0b2d0b5d180d0b8d182d18c20d0bdd0b0d0bbd0b8d187d0b8d0b520d181d181d18bd0bbd0bad0b820d0b220d0bad0b0d182d0b0d0bbd0bed0b3d0b53c2f72753e, 6, '', ''),
('11365480442008062016455982k111', 'reademail', 'root', 'root', '2008-06-20 16:45:59', '2008-10-31 22:10:37', 1, '11365480442008062016434041d111', 0x3c66723e417474656e746520652d6d61696c20636f6e6669726d6174696f6e3c2f66723e3c656e3e4974206973206e656564656420746f207265616420656d61696c2066726f6d206469726563746f727920616e64206d616b6520726571756972656420616374696f6e733c2f656e3e3c72753ed09fd180d0bed187d0b8d182d0b0d182d18c20d0bfd0bed187d182d18320d0b820d0b2d18bd0bfd0bed0bbd0bdd0b8d182d18c20d0b4d0b5d0b9d181d182d0b2d0b8d18f20d0b8d0b720d0bfd0b8d181d18cd0bcd0b03c2f72753e, 2, '', ''),
('11365480442008062016462733v111', 'addbacklink', 'root', 'root', '2008-06-20 16:46:27', '2008-10-31 22:11:30', 1, '11365480442008062016434041d111', 0x3c66723e416a6f7574657220756e206c69656e207265746f757220737572206e6f74726520736974653c2f66723e3c656e3e416464206261636b206c696e6b2066726f6d20757320746f207468656d3c2f656e3e3c72753ed0a3d181d182d0b0d0bdd0bed0b2d0b8d182d18c20d181d181d18bd0bbd0bad18320d0bdd0b020d0bad0b0d182d0b0d0bbd0bed0b33c2f72753e, 4, '', ''),
('1136548044200806201647010l1111', 'notrespondin', 'root', 'root', '2008-06-20 16:47:01', '2008-10-31 22:12:55', 1, '11365480442008062016434041d111', 0x3c66723e4c652073697465206e652072c3a9706f6e64207061733c2f66723e3c656e3e57656273697465206973206e6f7420726573706f6e64696e673c2f656e3e3c72753ed0a1d0b0d0b9d18220d0bad0b0d182d0b0d0bbd0bed0b3d0b020d0bdd0b520d0b4d0bed181d182d183d0bfd0b5d0bd3c2f72753e, 12, '', ''),
('11365480442008062016480296x111', 'completed', 'root', 'root', '2008-06-20 16:48:02', '2008-10-31 22:21:06', 1, '11365480442008062016434041d111', 0x3c66723e536f756d697373696f6e207465726d696ec3a9653c2f66723e3c656e3e5355424d495353494f4e20434f4d504c455445442028746865206c696e6b20697320636865636b656420616e6420617661696c61626c65293c2f656e3e3c72753ed0a0d095d093d098d0a1d0a2d0a0d090d0a6d098d0af20d09ed09ad09ed09dd0a7d095d09dd0902028d181d181d18bd0bbd0bad0b020d0b220d0bad0b0d182d0b0d0bbd0bed0b3d0b520d0bfd180d0bed0b2d0b5d180d0b5d0bdd0b0293c2f72753e, 8, '', ''),
('11365480442008062016494826h111', 'cancelled', 'root', 'root', '2008-06-20 16:49:48', '2008-06-30 15:11:29', 1, '11365480442008062016434041d111', 0x3c656e3e5375626d697373696f6e2064656e6965643c2f656e3e3c66723e536f756d697373696f6e207265667573c3a9653c2f66723e3c72753ed09ed182d0bad0b0d0b7d0b0d0bdd0be20d0b220d180d0b5d0b3d0b8d181d182d180d0b0d186d0b8d0b83c2f72753e, 14, '', ''),
('11365480442008062711123972d111', 'nobacklink', 'root', 'root', '2008-06-27 11:12:39', '2008-10-31 23:17:18', 1, '11365480442008062016434041d111', 0x3c66723e4261636b206c696e6b207375707072696dc3a93c2f66723e3c656e3e5741524e494e4721204261636b206c696e6b2072656d6f7665643c2f656e3e3c72753ed092d09dd098d09cd090d09dd098d0952120d09ed0b1d180d0b0d182d0bdd0b0d18f20d181d181d18bd0bbd0bad0b020d183d0b4d0b0d0bbd0b5d0bdd0b0202d20d0bfd180d0bed0b2d0b5d180d0b8d182d18c3c2f72753e, 16, '', ''),
('11365480442008103122143050w111', 'hold', 'root', 'root', '2008-10-31 22:14:30', '2008-10-31 22:14:30', 1, '11365480442008062016434041d111', 0x3c656e3e4f6e20686f6c643c2f656e3e3c72753ed09fd180d0bed0bfd183d181d182d0b8d182d18c20d180d0b5d0b3d0b8d181d182d180d186d0b8d18e20d0b220d0bad0b0d182d0b0d0bbd0bed0b3d0b53c2f72753e, 10, '', ''),
('11365480442008102620243865b111', '1', 'root', 'root', '2008-10-26 20:24:38', '2008-10-26 20:25:44', 1, '11365480442008102620240971o111', 0x3c656e3e4b6579776f72643c2f656e3e3c72753ed0a1d181d18bd0bbd0bad0b0202d20d0bad0bbd18ed187d0b5d0b2d0bed0b520d181d0bbd0bed0b2d0be3c2f72753e, 2, '', ''),
('11365480442008102620245684o111', '2', 'root', 'root', '2008-10-26 20:24:56', '2008-10-26 20:24:56', 1, '11365480442008102620240971o111', 0x3c656e3e41727469636c653c2f656e3e3c72753ed0a1d182d0b0d182d18cd18f3c2f72753e, 4, '', ''),
('11365480442008102620251663i111', '3', 'root', 'root', '2008-10-26 20:25:16', '2008-10-26 20:25:16', 1, '11365480442008102620240971o111', 0x3c656e3e41643c2f656e3e3c72753ed09ed0b1d18ad18fd0b2d0bbd0b5d0bdd0b8d0b53c2f72753e, 6, '', ''),
('11365480442008103101495180v111', 'linkrequested', 'root', 'root', '2008-10-31 01:49:51', '2008-10-31 09:57:49', 1, '11365480442008103101492830l111', 0x3c656e3e312e205265636569766564206e65772072657175657374733c2f656e3e3c72753e312e20d09fd0bed0bbd183d187d0b5d0bdd0bdd18bd0b520d0bdd0bed0b2d18bd0b520d0b7d0b0d0bfd180d0bed181d18b20d0bdd0b020d0bed0b1d0bcd0b5d0bd20d181d181d18bd0bbd0bad0b0d0bcd0b83c2f72753e, 2, '', ''),
('1136548044200810310150154i1111', 'linkaccepted', 'root', 'root', '2008-10-31 01:50:15', '2008-10-31 09:59:07', 1, '11365480442008103101492830l111', 0x3c656e3e322e2041636365707465642072657175657374733c2f656e3e3c72753e322e20d097d0b0d0bfd180d0bed181d18b20d183d182d0b2d0b5d180d0b6d0b4d0b5d0bdd0bdd18bd0b520d0bfd0bed0bbd183d187d0b0d182d0b5d0bbd0b5d0bc20d0b820d0bed0b6d0b8d0b4d0b0d18ed189d0b8d0b520d0b0d0bad182d0b8d0b2d0b0d186d0b8d0b83c2f72753e, 4, '', ''),
('11365480442008103101511949f111', 'linkcompleted', 'root', 'root', '2008-10-31 01:51:19', '2008-11-01 19:07:46', 1, '11365480442008103101492830l111', 0x3c656e3e4c494e4b2045584348414e474520444f4e453c2f656e3e3c72753ed09ed091d09cd095d09d20d092d0abd09fd09ed09bd09dd095d09d3c2f72753e, 6, '', ''),
('11365480442008103101514842q111', 'linkbacklost', 'root', 'root', '2008-10-31 01:51:48', '2008-10-31 10:02:37', 1, '11365480442008103101492830l111', 0x3c656e3e5741524e494e4721204261636b206c696e6b2072656d6f7665643c2f656e3e3c72753ed092d09dd098d09cd090d09dd098d0952120d09ed0b1d180d0b0d182d0bdd0b0d18f20d181d181d18bd0bbd0bad0b020d183d0b4d0b0d0bbd0b5d0bdd0b0202d20d0bfd180d0bed0b2d0b5d180d0b8d182d18c3c2f72753e, 8, '', ''),
('1136548044200810310152097i1111', 'linkrequestedsent', 'root', 'root', '2008-10-31 01:52:09', '2008-11-01 18:47:08', 1, '11365480442008103101492830l111', 0x3c656e3e53656e742072657175657374733c2f656e3e3c72753ed09ed182d0bfd180d0b0d0b2d0bbd0b5d0bdd0bdd18bd0b520d0b7d0b0d0bfd180d0bed181d18b20d0bdd0b020d0bed0b1d0bcd0b5d0bd202d20d0b220d0bed0b6d0b8d0b4d0b0d0bdd0b8d0b820d0bed182d0b2d0b5d182d0b020d0bfd0bed0bbd183d187d0b0d182d0b5d0bbd0b5d0bc3c2f72753e, 10, '', ''),
('11365480442008103101523445q111', 'linkdeclined', 'root', 'root', '2008-10-31 01:52:34', '2008-10-31 10:05:34', 1, '11365480442008103101492830l111', 0x3c656e3e4465636c696e65642072657175657374733c2f656e3e3c72753ed09ed0b1d0bcd0b5d0bd20d0bed182d0bad0b0d0b7d0b0d0bd20d0b8d0bbd0b820d0b7d0b0d0b1d0bbd0bed0bad0b8d180d0bed0b2d0b0d0bd3c2f72753e, 14, '', ''),
('11365480442008110118492595x111', 'linkacceptedsent', 'root', 'root', '2008-11-01 18:49:25', '2008-11-01 18:49:25', 1, '11365480442008103101492830l111', 0x3c656e3e4c696e6b7320657863686e6167652072657175657374732076616c69646174656420616e64206177616974696e6720666f722061637469766174696f6e2062792065786368616e676520696e69746961746f723c2f656e3e3c72753ed0a3d182d0b2d0b5d180d0b6d0b4d0b5d0bdd0bdd18bd0b520d0b7d0b0d0bfd180d0bed181d18b20d0bed182d0bfd180d0b0d0b2d0bbd0b5d0bdd0bdd18bd0b520d0bdd0b020d0b0d0bad182d0b8d0b2d0b0d186d0b8d18e202d20d0b220d0bed0b6d0b8d0b4d0b0d0bdd0b8d0b820d0bed182d0b2d0b5d182d0b020d0b8d0bdd0b8d186d0b8d0b0d182d0bed180d0bed0bc20d0bed0b1d0bcd0b5d0bdd0b03c2f72753e, 12, '', ''),
('11365480442008110123034032y111', 'buylinkrequested', 'root', 'root', '2008-11-01 23:03:40', '2008-11-08 22:30:17', 1, '11365480442008110123022595l111', 0x3c656e3e4e657720726563656976656420726571756573747320746f20627579206c696e6b733c2f656e3e3c72753ed09dd0bed0b2d18bd0b520d0bfd180d0b8d0bdd18fd182d18bd0b520d0b7d0b0d0bfd180d0bed181d18b20d0bdd0b020d0bfd0bed0bad183d0bfd0bad18320d181d181d18bd0bbd0bed0ba3c2f72753e, 2, '', ''),
('11365480442008110123045938m111', 'buylinkaccepted', 'root', 'root', '2008-11-01 23:04:59', '2008-11-02 02:27:35', 1, '11365480442008110123022595l111', 0x3c656e3e416363657074656420726571756573747320746f20627579206c696e6b733c2f656e3e3c72753ed0a3d182d0b2d0b5d180d0b6d0b4d0b5d0bdd0bdd18bd0b520d0b7d0b0d0bfd180d0bed181d18b20d0bdd0b020d0bfd0bed0bad183d0bfd0bad18320d181d181d18bd0bbd0bed0ba3c2f72753e, 6, '', ''),
('11365480442008110123063764a111', 'buylinkcompleted', 'root', 'root', '2008-11-01 23:06:37', '2008-11-02 02:17:36', 1, '11365480442008110123022595l111', 0x3c656e3e5041494420414e4420494e5354414c4c4544204c494e4b533c2f656e3e3c72753ed09ad0a3d09fd09bd095d09dd09dd0abd09520d0a1d0a1d0abd09bd09ad0983c2f72753e, 8, '', ''),
('1136548044200811012307554n1111', 'buylinkbacklost', 'root', 'root', '2008-11-01 23:07:55', '2008-11-02 02:19:54', 1, '11365480442008110123022595l111', 0x3c656e3e5741524e494e47212050616964206c696e6b2069732064656c65746564202d20636865636b2069743c2f656e3e3c72753ed092d09dd098d09cd090d09dd098d0952120d09ed0bfd0bbd0b0d187d0b5d0bdd0bdd0b0d18f20d181d181d18bd0bbd0bad0b020d183d0b4d0b0d0bbd0b5d0bdd0b0202d20d0bfd180d0bed0b2d0b5d180d0b8d182d18c3c2f72753e, 10, '', ''),
('11365480442008110123150243h111', 'buylinkdeclined', 'root', 'root', '2008-11-01 23:15:02', '2008-11-01 23:15:02', 1, '11365480442008110123022595l111', 0x3c656e3e4465636c696e656420726571756573747320746f20627579206c696e6b733c2f656e3e3c72753ed09ed182d0bad0b0d0b7d0b0d0bdd0bdd18bd0b520d0b7d0b0d0bfd180d0bed181d18b20d0bdd0b020d0bfd0bed0bad183d0bfd0bad18320d181d181d18bd0bbd0bed0ba3c2f72753e, 16, '', ''),
('11365480442008110123171870l111', 'buylinkonhold', 'root', 'root', '2008-11-01 23:17:18', '2008-11-01 23:18:21', 1, '11365480442008110123022595l111', 0x3c656e3e50656e64696e6720726571756573747320746f20627579206c696e6b733c2f656e3e3c72753ed09ed182d0bbd0bed0b6d0b5d0bdd0bdd18bd0b520d0b7d0b0d0bfd180d0bed181d18b20d0bdd0b020d0bfd0bed0bad183d0bfd0bad18320d181d181d18bd0bbd0bed0ba3c2f72753e, 18, '', ''),
('11365480442008110202185515s111', 'buylinkacceptedsent', 'root', 'root', '2008-11-02 02:18:55', '2008-11-08 16:46:46', 1, '11365480442008110123022595l111', 0x3c656e3e53656e742076616c69646174656420726571756573747320746f206275793c2f656e3e3c72753ed09ed182d0bfd180d0b0d0b2d0bbd0b5d0bdd0bdd18bd0b520d0bfd180d0b5d0b4d0bbd0bed0b6d0b5d0bdd0b8d18f20d0bdd0b020d0bfd180d0bed0b4d0b0d0b6d18320d181d181d18bd0bbd0bed0ba3c2f72753e, 12, '', ''),
('1136548044200811020219235v1111', 'buylinksold', 'root', 'root', '2008-11-02 02:19:23', '2008-11-02 02:19:23', 1, '11365480442008110123022595l111', 0x3c656e3e534f4c44204c494e4b533c2f656e3e3c72753ed09fd0a0d09ed094d090d09dd09dd0abd09520d0a1d0a1d0abd09bd09ad0983c2f72753e, 14, '', ''),
('11365480442008110722083359o111', 'buylinkrequestsent', 'root', 'root', '2008-11-07 22:08:33', '2008-11-07 22:08:33', 1, '11365480442008110123022595l111', 0x3c656e3e53656e7420726571756573747320746f20627579206c696e6b733c2f656e3e3c72753ed09ed182d0bfd180d0b0d0b2d0bbd0b5d0bdd0bdd18bd0b520d0b7d0b0d0bfd180d0bed181d18b20d0bdd0b020d0bfd0bed0bad183d0bfd0bad18320d181d181d18bd0bbd0bed0ba3c2f72753e, 4, '', ''),
('11365480442008110816462959k111', 'buylinkonholdsent', 'root', 'root', '2008-11-08 16:46:29', '2008-11-08 16:46:29', 1, '11365480442008110123022595l111', 0x3c656e3e5265706c69656420726571756573747320746f20627579206c696e6b20736574206f6e20686f6c643c2f656e3e3c72753ed09ed182d0bbd0bed0b6d0b5d0bdd0bdd18bd0b520d0bfd180d0b5d0b4d0bbd0bed0b6d0b5d0bdd0b8d18f20d0bdd0b020d0bfd180d0bed0b4d0b0d0b6d18320d181d181d18bd0bbd0bed0ba3c2f72753e, 20, '', ''),
('11365480442008032123393356k111', 'email', 'root', 'root', '2008-03-21 23:39:33', '2008-03-21 23:39:33', 1, '11365480442008032123381680x111', 0x3c656e3e456d61696c3c2f656e3e3c72753ed09fd0be20656d61696c3c2f72753e, 1, '', ''),
('11365480442008032123400473d111', 'sms', 'root', 'root', '2008-03-21 23:40:04', '2008-03-21 23:40:04', 1, '11365480442008032123381680x111', 0x3c656e3e534d533c2f656e3e3c72753ed09fd0be20534d533c2f72753e, 2, '', ''),
('11365480442008032218170561e111', 'person', 'root', 'root', '2008-03-22 18:17:05', '2008-12-16 11:57:19', 1, '11365480442008032218164082l111', 0x3c64653e507269766174706572736f6e3c2f64653e3c656e3e50726976617420706572736f6e3c2f656e3e3c66723e506172746963756c6965723c2f66723e3c72753ed0a7d0b0d181d182d0bdd0bed0b520d0bbd0b8d186d0be3c2f72753e, 2, '', ''),
('11365480442008032218174819g111', 'privat', 'root', 'root', '2008-03-22 18:17:48', '2008-12-16 11:59:32', 1, '11365480442008032218164082l111', 0x3c64653e45696e7a656c756e7465726e65686d656e3c2f64653e3c656e3e50726976616e7420656e7465727072656e6575723c2f656e3e3c66723e456e747265707269736520696e646976696475656c6c653c2f66723e3c72753ed0a7d0b0d181d182d0bdd18bd0b920d0bfd180d0b5d0b4d0bfd180d0b8d0bdd0b8d0bcd0b0d182d0b5d0bbd18c3c2f72753e, 4, '', ''),
('11365480442008032218184351w111', 'company', 'root', 'root', '2008-03-22 18:18:43', '2008-12-16 11:59:44', 1, '11365480442008032218164082l111', 0x3c64653e556e7465726e65686d656e3c2f64653e3c656e3e436f6d70616e793c2f656e3e3c66723e536f6369c3a974c3a93c2f66723e3c72753ed09fd180d0b5d0b4d0bfd180d0b8d18fd182d0b8d0b53c2f72753e, 6, '', ''),
('11365480442008032218190894m111', 'gov', 'root', 'root', '2008-03-22 18:19:08', '2008-12-16 12:00:49', 1, '11365480442008032218164082l111', 0x3c64653e53746161746c6963683c2f64653e3c656e3e476f7665726e6d656e743c2f656e3e3c66723e53657276696365207075626c69633c2f66723e3c72753ed093d0bed181d183d0b4d0b0d180d181d182d0b2d0b5d0bdd0bdd0b0d18f20d0bed180d0b3d0b0d0bdd0b8d0b7d0b0d186d0b8d18f3c2f72753e, 8, '', ''),
('11365480442008032218264325n111', 'immediate', 'root', 'root', '2008-03-22 18:26:43', '2008-12-16 14:36:42', 1, '1136548044200803221825598c1111', 0x3c64653e536f666f72743c2f64653e3c656e3e496d6d6564696174653c2f656e3e3c66723e496d6dc3a964696174656d656e743c2f66723e3c72753ed09dd0b5d0bcd0b5d0b4d0bbd0b5d0bdd0bdd0be3c2f72753e, 2, '', ''),
('11365480442008032218271336m111', 'month', 'root', 'root', '2008-03-22 18:27:13', '2008-12-16 14:39:08', 1, '1136548044200803221825598c1111', 0x3c64653e496e6e657268616c622065696e6573204d6f6e6174733c2f64653e3c656e3e57697468696e2061206d6f746e683c2f656e3e3c66723e44616e732031206d6f69733c2f66723e3c72753ed09220d182d0b5d187d0b5d0bdd0b8d0b520d0bcd0b5d181d18fd186d0b03c2f72753e, 6, '', ''),
('11365480442008032218273556u111', 'week', 'root', 'root', '2008-03-22 18:27:35', '2008-12-16 14:38:43', 1, '1136548044200803221825598c1111', 0x3c64653e496e6e657268616c622065696e657220576f6368653c2f64653e3c656e3e57697468696e2061207765656b3c2f656e3e3c66723e44616e7320312073656d61696e653c2f66723e3c72753ed09220d182d0b5d187d0b5d0bdd0b8d0b520d0bdd0b5d0b4d0b5d0bbd0b83c2f72753e, 4, '', ''),
('1136548044200803221828443k1111', '3months', 'root', 'root', '2008-03-22 18:28:44', '2008-12-16 14:39:25', 1, '1136548044200803221825598c1111', 0x3c64653e312d33204d6f6e6174653c2f64653e3c656e3e312d33206d6f6e7468733c2f656e3e3c66723e312d33206d6f69733c2f66723e3c72753ed09220d182d0b5d187d0b5d0bdd0b8d0b520332dd18520d0bcd0b5d181d18fd186d0b5d0b23c2f72753e, 8, '', ''),
('1136548044200803221829218h1111', 'later', 'root', 'root', '2008-03-22 18:29:21', '2008-12-16 14:39:47', 1, '1136548044200803221825598c1111', 0x3c64653e4d65687220616c732033204d6f6e6174653c2f64653e3c656e3e332b206d6f6e7468733c2f656e3e3c66723e506c75732064652033206d6f69733c2f66723e3c72753ed09dd0b520d180d0b0d0bdd0b5d0b520d187d0b5d0bc20d187d0b5d180d0b5d0b7203320d0bcd0b5d181d18fd186d0b03c2f72753e, 10, '', ''),
('11365480442008032218330340c111', '3', 'root', 'root', '2008-03-22 18:33:03', '2008-03-30 15:28:24', 1, '11365480442008032218320686q111', 0x3c656e3e557020746f20333c2f656e3e3c72753ed09dd0b520d0b1d0bed0bbd0b5d0b520332dd1853c2f72753e, 4, '', ''),
('11365480442008032218351353y111', '5', 'root', 'root', '2008-03-22 18:35:13', '2008-03-22 18:35:13', 1, '11365480442008032218320686q111', 0x3c656e3e557020746f20353c2f656e3e3c72753ed09dd0b520d0b1d0bed0bbd0b5d0b520352dd182d0b83c2f72753e, 6, '', ''),
('11365480442008032218353331z111', '10', 'root', 'root', '2008-03-22 18:35:33', '2008-03-22 18:58:17', 1, '11365480442008032218320686q111', 0x3c656e3e557020746f2031303c2f656e3e3c72753ed09dd0b520d0b1d0bed0bbd0b5d0b52031302dd182d0b83c2f72753e, 10, '', ''),
('11365480442008032218361016p111', '7', 'root', 'root', '2008-03-22 18:36:10', '2008-03-22 18:58:25', 1, '11365480442008032218320686q111', 0x3c656e3e557020746f20373c2f656e3e3c72753ed09dd0b520d0b1d0bed0bbd0b5d0b520372dd0bcd0b83c2f72753e, 8, '', ''),
('11365480442008032218374097n111', '100', 'root', 'root', '2008-03-22 18:37:40', '2008-03-22 18:59:52', 1, '11365480442008032218320686q111', 0x3c656e3e556e74696c6c204920616d2068617070793c2f656e3e3c72753ed09dd0b5d0bed0b3d180d0b0d0bdd0b8d187d0b5d0bdd0bdd0be3c2f72753e, 12, '', ''),
('11365480442008033015281114d111', '1', 'root', 'root', '2008-03-30 15:28:11', '2008-03-30 15:28:11', 1, '11365480442008032218320686q111', 0x3c656e3e4a7573742031206f666665723c2f656e3e3c72753ed0a2d0bed0bbd18cd0bad0be20d0bed0b4d0bdd0be20d0bfd180d0b5d0b4d0bbd0bed0b6d0b5d0bdd0b8d0b53c2f72753e, 2, '', ''),
('11365480442008032219022171e111', 'myself', 'root', 'root', '2008-03-22 19:02:21', '2008-12-16 11:56:20', 1, '11365480442008032219010264v111', 0x3c64653e5072697661743c2f64653e3c656e3e466f72206d7973656c663c2f656e3e3c66723e412074697472652070726976c3a93c2f66723e3c72753ed09ad183d0bfd0b8d182d18c20d0b4d0bbd18f20d181d0b5d0b1d18f3c2f72753e, 2, '', ''),
('11365480442008032219024559u111', 'rader', 'root', 'root', '2008-03-22 19:02:45', '2008-12-16 11:56:32', 1, '11365480442008032219010264v111', 0x3c64653e46c3bc722064656e205665726b6175663c2f64653e3c656e3e546f2073656c6c3c2f656e3e3c66723e44657374696ec3a920c3a0206c612076656e74653c2f66723e3c72753ed09fd0bed181d180d0b5d0b4d0bdd0b8d0ba3c2f72753e, 4, '', ''),
('11365480442008032219032313e111', 'pricerequest', 'root', 'root', '2008-03-22 19:03:23', '2008-12-16 11:56:47', 1, '11365480442008032219010264v111', 0x3c64653e5a757220496e666f726d6174696f6e3c2f64653e3c656e3e507269636520726571756573743c2f656e3e3c66723e41207469747265206427696e666f726d6174696f6e3c2f66723e3c72753ed0a3d0b7d0bdd0b0d182d18c20d186d0b5d0bdd1833c2f72753e, 6, '', ''),
('11365480442008032300352113i111', '3', 'root', 'root', '2008-03-23 00:35:21', '2008-03-26 22:54:35', 1, '11365480442008032300331993p111', 0x3c656e3e3320e282ac3c2f656e3e3c72753e3320e282ac3c2f72753e, 6, '', ''),
('11365480442008032300364999x111', '5', 'root', 'root', '2008-03-23 00:36:49', '2008-03-26 23:23:41', 1, '11365480442008032300331993p111', 0x3c656e3e3520e282ac3c2f656e3e3c72753e3520e282ac3c2f72753e, 8, '', ''),
('11365480442008032300374355n111', '7', 'root', 'root', '2008-03-23 00:37:43', '2008-03-26 23:23:58', 1, '11365480442008032300331993p111', 0x3c656e3e3720e282ac3c2f656e3e3c72753e3720e282ac3c2f72753e, 10, '', ''),
('11365480442008032300375728y111', '10', 'root', 'root', '2008-03-23 00:37:57', '2008-03-26 23:24:14', 1, '11365480442008032300331993p111', 0x3c656e3e313020e282ac3c2f656e3e3c72753e313020e282ac3c2f72753e, 12, '', ''),
('11365480442008032622533955g111', '0.5', 'root', 'root', '2008-03-26 22:53:39', '2008-03-26 22:53:39', 1, '11365480442008032300331993p111', 0x3c656e3e302e3520e282ac3c2f656e3e3c72753e302e3520e282ac3c2f72753e, 2, '', ''),
('11365480442008032622534991k111', '1', 'root', 'root', '2008-03-26 22:53:49', '2008-03-26 22:53:49', 1, '11365480442008032300331993p111', 0x3c656e3e3120e282ac3c2f656e3e3c72753e3120e282ac3c2f72753e, 4, '', ''),
('1136548044200803301946247u1111', '1', 'root', 'root', '2008-03-30 19:46:24', '2008-03-30 19:47:52', 1, '11365480442008033019455840s111', 0x3c656e3e4e6f7420636f6e6669726d65643c2f656e3e3c72753ed0a0d0b5d0b3d0b8d181d182d180d0b0d186d0b8d18f20d0bdd0b520d0bfd0bed0b4d182d0b2d0b5d180d0b6d0b4d0b5d0bdd0b03c2f72753e, 2, '', ''),
('11365480442008033019465986d111', '2', 'root', 'root', '2008-03-30 19:46:59', '2008-03-30 19:47:59', 1, '11365480442008033019455840s111', 0x3c656e3e436f6e6669726d65643c2f656e3e3c72753ed0a0d0b5d0b3d0b8d181d182d180d0b0d186d0b8d18f20d0bfd0bed0b4d182d0b2d0b5d180d0b6d0b4d0b5d0bdd0b03c2f72753e, 6, '', ''),
('11365480442009091409473050y111', 'Date', 'root', 's46', '2009-09-14 09:47:30', '2009-09-14 09:47:30', 1, '11365480442009091409470117d111', 0x3c656e3e4f7264657220627920646174653c2f656e3e3c66723e4f7264657220627920646174653c2f66723e3c72753ed0a1d0bed180d182d0b8d180d0bed0b2d0b0d182d18c20d0bfd0be20d0b4d0b0d182d0b53c2f72753e, 1, '', ''),
('11365480442008110215402090s111', '1', 'root', 'root', '2008-11-02 15:40:20', '2008-11-02 15:40:20', 1, '11365480442008110215384893r111', 0x3c656e3e50726976617465206f7220436f6d70616e793c2f656e3e3c72753ed09dd0b520d0b8d0bcd0b5d0b5d18220d0b7d0bdd0b0d187d0b5d0bdd0b8d0b53c2f72753e, 1, '', ''),
('11365480442008110215404384o111', '2', 'root', 'root', '2008-11-02 15:40:43', '2008-11-02 15:40:43', 1, '11365480442008110215384893r111', 0x3c656e3e436f6d70616e79206f6e6c793c2f656e3e3c72753ed0a2d0bed0bbd18cd0bad0be20d0bad0bed0bcd0bfd0b0d0bdd0b8d18f3c2f72753e, 2, '', ''),
('11365480442008110215410539v111', '3', 'root', 'root', '2008-11-02 15:41:05', '2008-11-02 15:41:05', 1, '11365480442008110215384893r111', 0x3c656e3e50726976617465206f6e6c793c2f656e3e3c72753ed0a2d0bed0bbd18cd0bad0be20d187d0b0d181d182d0bdd0bed0b520d0bbd0b8d186d0be3c2f72753e, 3, '', ''),
('11365480442008062323453194s111', 'low', 'root', 'root', '2008-06-23 23:45:31', '2008-12-01 14:37:26', 1, '1136548044200806232345024o1111', 0x3c64653e4c616e6773616d653c2f64653e3c656e3e4c6f773c2f656e3e3c66723e4c656e74653c2f66723e3c72753ed09dd0b8d0b7d181d0bad0b8d0b93c2f72753e, 2, '', ''),
('11365480442008062323455560c111', 'normal', 'root', 'root', '2008-06-23 23:45:55', '2008-12-01 14:37:32', 1, '1136548044200806232345024o1111', 0x3c64653e4e6f726d616c653c2f64653e3c656e3e4e6f726d616c3c2f656e3e3c66723e4e6f726d616c653c2f66723e3c72753ed09dd0bed180d0bcd0b0d0bbd18cd0bdd18bd0b93c2f72753e, 4, '', ''),
('11365480442008062323461455b111', 'urgent', 'root', 'root', '2008-06-23 23:46:14', '2008-12-01 14:37:42', 1, '1136548044200806232345024o1111', 0x3c64653e4472696e67656e64653c2f64653e3c656e3e557267656e743c2f656e3e3c66723e557267656e74653c2f66723e3c72753ed0a1d180d0bed187d0bdd18bd0b93c2f72753e, 6, '', ''),
('11365480442008062323463441h111', 'topurgent', 'root', 'root', '2008-06-23 23:46:34', '2008-12-01 14:37:48', 1, '1136548044200806232345024o1111', 0x3c64653e53656872206472696e67656e64653c2f64653e3c656e3e546f7020757267656e743c2f656e3e3c66723e5472c3a87320757267656e74653c2f66723e3c72753ed09ed187d0b5d0bdd18c20d181d180d0bed187d0bdd18bd0b93c2f72753e, 8, '', ''),
('11365480442008062323473919r111', 'new', 'root', 'root', '2008-06-23 23:47:39', '2008-12-01 14:35:50', 1, '11365480442008062323471588b111', 0x3c64653e4e6575653c2f64653e3c656e3e4e65773c2f656e3e3c66723e4e6f7576656c6c653c2f66723e3c72753ed09dd0bed0b2d0b0d18f3c2f72753e, 2, '', ''),
('11365480442008062323475971q111', 'completed', 'root', 'root', '2008-06-23 23:47:59', '2008-12-01 14:34:53', 1, '11365480442008062323471588b111', 0x3c64653e45726c65646967743c2f64653e3c656e3e436f6d706c657465643c2f656e3e3c66723e4163686576c3a9653c2f66723e3c72753ed092d18bd0bfd0bed0bbd0bdd0b5d0bdd0b03c2f72753e, 8, '', ''),
('11365480442008062323482134f111', 'canceled', 'root', 'root', '2008-06-23 23:48:21', '2008-12-01 14:35:19', 1, '11365480442008062323471588b111', 0x3c64653e47656cc3b6736368743c2f64653e3c656e3e44656c657465643c2f656e3e3c66723e5375707072696dc3a9653c2f66723e3c72753ed09ed182d0bcd0b5d0bdd0b5d0bdd0b03c2f72753e, 10, '', ''),
('11365480442008062323595263i111', 'In-Progression', '11365480442008062320483624j111', 'root', '2008-06-23 23:59:52', '2008-12-01 14:33:06', 1, '11365480442008062323471588b111', 0x3c64653e496e204265617262656974756e673c2f64653e3c656e3e496e2050726f6772657373696f6e3c2f656e3e3c66723e456e20636f7572733c2f66723e3c72753ed09220d0bfd180d0bed186d0b5d181d181d0b520d0b8d181d0bfd0bed0bbd0bdd0b5d0bdd0b8d18f3c2f72753e, 6, '', ''),
('1136548044200807081213082g1111', 'callreminder', 'root', 'root', '2008-07-08 12:13:08', '2008-12-01 14:32:48', 1, '11365480442008062323471588b111', 0x3c64653e4572696e6e6572756e673c2f64653e3c656e3e43616c6c2052656d696e6465723c2f656e3e3c66723e52617070656c3c2f66723e3c72753ed09dd0b0d0bfd0bed0bcd0b8d0bdd0b0d0bdd0b8d0b53c2f72753e, 4, '#FF0033', ''),
('1136548044200806232349418g1111', 'todo', 'root', 'root', '2008-06-23 23:49:41', '2008-12-01 14:16:52', 1, '1136548044200806232349162e1111', 0x3c64653e417262656974656e207a752065726c65646967656e3c2f64653e3c656e3e5461736b732049206e65646420746f20646f3c2f656e3e3c66723e54c3a26368657320c3a0206566666563747565723c2f66723e3c72753ed097d0b0d0b4d0b0d187d0b820d0b4d0bbd18f20d0bcd0b5d0bdd18f3c2f72753e, 2, '', ''),
('11365480442008062323500251b111', 'my', 'root', 'root', '2008-06-23 23:50:02', '2008-12-01 14:17:18', 1, '1136548044200806232349162e1111', 0x3c64653e5a7567657465696c746520417566676162656e3c2f64653e3c656e3e5461736b73204920637265617465643c2f656e3e3c66723e54c3a2636865732061747472696275c3a965733c2f66723e3c72753ed097d0b0d0b4d0b0d187d0b820d181d0bed0b7d0b4d0b0d0bdd0bdd18bd0b520d0bcd0bdd0bed0b93c2f72753e, 4, '', ''),
('11365480442008063018223571e111', 'development', 'root', 'root', '2008-06-30 18:22:35', '2008-06-30 18:22:35', 1, '11365480442008063018220718f111', 0x3c656e3e446576656c6f706d656e742070726f6a656374733c2f656e3e3c66723e446576656c6f706d656e742070726f6a656374733c2f66723e, 2, '', ''),
('11365480442008063018224558s111', 'trucks', 'root', 'root', '2008-06-30 18:22:45', '2008-07-06 18:51:42', 1, '11365480442008063018220718f111', 0x3c656e3e547275636b733c2f656e3e3c66723e547275636b733c2f66723e, 8, '#FF9900', ''),
('11365480442008063018225972s111', 'devis', 'root', 'root', '2008-06-30 18:22:59', '2008-06-30 18:22:59', 1, '11365480442008063018220718f111', 0x3c656e3e44657669733c2f656e3e3c66723e44657669733c2f66723e, 12, '', ''),
('11365480442008063018232181o111', 'catalogs', 'root', 'root', '2008-06-30 18:23:21', '2008-06-30 18:23:21', 1, '11365480442008063018220718f111', 0x3c656e3e436174616c6f67733c2f656e3e3c66723e436174616c6f67733c2f66723e, 14, '', '');
INSERT INTO `referenceoption` (`id`, `code`, `UserID`, `OwnerID`, `timeCreated`, `timeSaved`, `hidden`, `referenceID`, `name`, `position`, `color`, `icon`) VALUES
('11365480442008070309164461n111', 'publila', '11365480442008062320483624j111', 'root', '2008-07-03 09:16:44', '2008-07-03 09:16:44', 1, '11365480442008063018220718f111', 0x3c656e3e7075626c696c613c2f656e3e3c66723e7075626c696c613c2f66723e, 10, '', ''),
('11365480442008071810443990d111', 'backlink', '11365480442008062320483624j111', 'root', '2008-07-18 10:44:39', '2008-07-18 10:44:46', 1, '11365480442008063018220718f111', 0x3c656e3e6261636b6c696e6b3c2f656e3e3c66723e6261636b6c696e6b3c2f66723e, 4, '#FF6600', ''),
('1136548044200807181042583o1111', 'omnicar', '11365480442008062320483624j111', 'root', '2008-07-18 10:42:58', '2008-07-18 10:42:58', 1, '11365480442008063018220718f111', 0x3c656e3e6f6d6e696361723c2f656e3e3c66723e6f6d6e696361723c2f66723e, 16, '#FF0099', ''),
('11365480442008071810403417r111', 'Referencement', '11365480442008062320483624j111', 'root', '2008-07-18 10:40:34', '2008-07-18 10:42:08', 1, '11365480442008063018220718f111', 0x3c656e3e5265666572656e63656d656e743c2f656e3e3c66723e5265666572656e63656d656e743c2f66723e, 6, '#CC99FF', ''),
('11365480442008071811050373i111', 'omnicar-prospec', '11365480442008062320483624j111', 'root', '2008-07-18 11:05:03', '2008-07-18 11:05:15', 1, '11365480442008063018220718f111', 0x3c656e3e6f6d6e696361722070726f737065633c2f656e3e3c66723e6f6d6e696361722070726f737065633c2f66723e, 18, '#999966', ''),
('11365480442008110300552043o111', 'report', 'root', 'root', '2008-11-03 00:55:20', '2008-11-28 17:01:50', 1, '11365480442008110300544389g111', 0x3c64653e426572696368743c2f64653e3c656e3e5265706f72743c2f656e3e3c66723e526170706f72743c2f66723e3c72753ed09ed182d187d0b5d1823c2f72753e, 4, '', ''),
('11365480442008110300561297u111', 'tz', 'root', 'root', '2008-11-03 00:56:12', '2008-11-28 17:02:58', 1, '11365480442008110300544389g111', 0x3c64653e417566676162656e6c697374653c2f64653e3c656e3e5461736b206c6973743c2f656e3e3c66723e4c69737465206465732074c3a2636865733c2f66723e3c72753ed0a2d0b5d185d0b7d0b0d0b4d0b0d0bdd0b8d0b53c2f72753e, 6, '', ''),
('11365480442008110300571825d111', 'otherdoc', 'root', 'root', '2008-11-03 00:57:18', '2008-11-28 17:03:13', 1, '11365480442008110300544389g111', 0x3c64653e416e646572653c2f64653e3c656e3e4f7468657220646f63756d656e743c2f656e3e3c66723e41757472653c2f66723e3c72753ed094d0bed0bad183d0bcd0b5d0bdd1823c2f72753e, 8, '', ''),
('11365480442008110300573026i111', 'file', 'root', 'root', '2008-11-03 00:57:30', '2008-11-28 17:01:20', 1, '11365480442008110300544389g111', 0x3c64653e44617465693c2f64653e3c656e3e46696c653c2f656e3e3c66723e466963686965723c2f66723e3c72753ed0a4d0b0d0b9d0bb3c2f72753e, 2, '', ''),
('11365480442008110922220675v111', '10', 'root', 'root', '2008-11-09 22:22:06', '2008-12-09 01:02:38', 1, '11365480442008110922072091g111', 0x3c64653e313020e282ac3c2f64653e3c656e3e3130205553443c2f656e3e3c66723e313020e282ac3c2f66723e3c72753e3130205553443c2f72753e, 4, '', ''),
('1136548044200811092222277j1111', '20', 'root', 'root', '2008-11-09 22:22:27', '2008-12-09 01:02:54', 1, '11365480442008110922072091g111', 0x3c64653e323020e282ac3c2f64653e3c656e3e3230205553443c2f656e3e3c66723e323020e282ac3c2f66723e3c72753e3230205553443c2f72753e, 6, '', ''),
('11365480442008110922224748i111', '50', 'root', 'root', '2008-11-09 22:22:47', '2008-12-09 01:03:08', 1, '11365480442008110922072091g111', 0x3c64653e353020e282ac3c2f64653e3c656e3e3530205553443c2f656e3e3c66723e353020e282ac3c2f66723e3c72753e3530205553443c2f72753e, 8, '', ''),
('11365480442008110922230361b111', '100', 'root', 'root', '2008-11-09 22:23:03', '2008-12-09 01:03:21', 1, '11365480442008110922072091g111', 0x3c64653e31303020e282ac3c2f64653e3c656e3e313030205553443c2f656e3e3c66723e31303020e282ac3c2f66723e3c72753e313030205553443c2f72753e, 10, '', ''),
('11365480442008120901021490e111', '5', 'root', 'root', '2008-12-09 01:02:14', '2008-12-09 01:02:14', 1, '11365480442008110922072091g111', 0x3c64653e3520e282ac3c2f64653e3c656e3e35205553443c2f656e3e3c66723e3520e282ac3c2f66723e3c72753e35205553443c2f72753e, 2, '', ''),
('11365480442008111612152258b111', 'google', 'root', 'root', '2008-11-16 12:15:22', '2008-11-16 12:15:22', 1, '11365480442008111612150625y111', 0x3c656e3e476f6f676c653c2f656e3e3c72753e476f6f676c653c2f72753e, 1, '', ''),
('11365480442008111612153637j111', 'yahoo', 'root', 'root', '2008-11-16 12:15:36', '2008-11-16 12:15:36', 1, '11365480442008111612150625y111', 0x3c656e3e5961686f6f3c2f656e3e3c72753e5961686f6f3c2f72753e, 2, '', ''),
('11365480442008111612160426w111', 'yandex', 'root', 'root', '2008-11-16 12:16:04', '2008-11-16 12:16:04', 1, '11365480442008111612150625y111', 0x3c656e3e59616e6465783c2f656e3e3c72753e59616e6465783c2f72753e, 3, '', ''),
('1136548044200811162227498q1111', '-', 'root', 'root', '2008-11-16 22:27:49', '2008-12-09 13:50:36', 1, '11365480442008111622272173y111', 0x3c64653e44656d6f3c2f64653e3c656e3e44656d6f3c2f656e3e3c66723e44c3a96d6f3c2f66723e3c72753ed094d0b5d0bcd0be3c2f72753e, 2, '', ''),
('1136548044200811162228099z1111', 'base', 'root', 'root', '2008-11-16 22:28:09', '2008-12-09 13:50:54', 1, '11365480442008111622272173y111', 0x3c64653e42617369633c2f64653e3c656e3e426173653c2f656e3e3c66723e42617369633c2f66723e3c72753ed091d0b0d0b7d0bed0b2d18bd0b93c2f72753e, 4, '', ''),
('11365480442008111622282343u111', 'profi', 'root', 'root', '2008-11-16 22:28:23', '2008-12-09 13:51:02', 1, '11365480442008111622272173y111', 0x3c64653e50726f66693c2f64653e3c656e3e50726f66693c2f656e3e3c66723e50726f3c2f66723e3c72753ed09fd180d0bed184d0b83c2f72753e, 6, '', ''),
('11365480442008112222595969l111', '1', 'root', 'root', '2008-11-22 22:59:59', '2008-12-09 11:40:20', 1, '11365480442008112222551052s111', 0x3c64653e505220313c2f64653e3c656e3e505220313c2f656e3e3c66723e505220313c2f66723e3c72753e505220313c2f72753e, 4, '', ''),
('11365480442008112223000680q111', '2', 'root', 'root', '2008-11-22 23:00:06', '2008-12-09 11:40:34', 1, '11365480442008112222551052s111', 0x3c64653e505220323c2f64653e3c656e3e505220323c2f656e3e3c66723e505220323c2f66723e3c72753e505220323c2f72753e, 6, '', ''),
('11365480442008112223001328p111', '3', 'root', 'root', '2008-11-22 23:00:13', '2008-12-09 11:41:01', 1, '11365480442008112222551052s111', 0x3c64653e505220333c2f64653e3c656e3e505220333c2f656e3e3c66723e505220333c2f66723e3c72753e505220333c2f72753e, 8, '', ''),
('11365480442008112223002032d111', '4', 'root', 'root', '2008-11-22 23:00:20', '2008-12-09 11:41:16', 1, '11365480442008112222551052s111', 0x3c64653e505220343c2f64653e3c656e3e505220343c2f656e3e3c66723e505220343c2f66723e3c72753e505220343c2f72753e, 10, '', ''),
('11365480442008112223002742s111', '5', 'root', 'root', '2008-11-22 23:00:27', '2008-12-09 11:41:28', 1, '11365480442008112222551052s111', 0x3c64653e505220353c2f64653e3c656e3e505220353c2f656e3e3c66723e505220353c2f66723e3c72753e505220353c2f72753e, 12, '', ''),
('11365480442008112223003565j111', '6', 'root', 'root', '2008-11-22 23:00:35', '2008-12-09 11:41:40', 1, '11365480442008112222551052s111', 0x3c64653e505220363c2f64653e3c656e3e505220363c2f656e3e3c66723e505220363c2f66723e3c72753e505220363c2f72753e, 14, '', ''),
('11365480442008112223004232x111', '7', 'root', 'root', '2008-11-22 23:00:42', '2008-12-09 11:41:52', 1, '11365480442008112222551052s111', 0x3c64653e505220373c2f64653e3c656e3e505220373c2f656e3e3c66723e505220373c2f66723e3c72753e505220373c2f72753e, 16, '', ''),
('11365480442008112223004911a111', '8', 'root', 'root', '2008-11-22 23:00:49', '2008-12-09 11:42:05', 1, '11365480442008112222551052s111', 0x3c64653e505220383c2f64653e3c656e3e505220383c2f656e3e3c66723e505220383c2f66723e3c72753e505220383c2f72753e, 18, '', ''),
('11365480442008112223005653b111', '9', 'root', 'root', '2008-11-22 23:00:56', '2008-12-09 11:42:22', 1, '11365480442008112222551052s111', 0x3c64653e505220393c2f64653e3c656e3e505220393c2f656e3e3c66723e505220393c2f66723e3c72753e505220393c2f72753e, 20, '', ''),
('11365480442008112223010910y111', '10', 'root', 'root', '2008-11-22 23:01:09', '2008-12-09 11:42:38', 1, '11365480442008112222551052s111', 0x3c64653e50522031303c2f64653e3c656e3e50522031303c2f656e3e3c66723e50522031303c2f66723e3c72753e50522031303c2f72753e, 22, '', ''),
('11365480442008120911384286h111', '', '1136548044200812031630392l1111', 'websubmiter', '2008-12-09 11:38:42', '2008-12-09 11:38:42', 1, '11365480442008112222551052s111', '', 24, '', ''),
('11365480442008120911390188y111', 'PR0', '1136548044200812031630392l1111', 'websubmiter', '2008-12-09 11:39:01', '2008-12-09 11:40:00', 1, '11365480442008112222551052s111', 0x3c64653e505220303c2f64653e3c656e3e505220303c2f656e3e3c66723e505220303c2f66723e3c72753e505220303c2f72753e, 2, '', ''),
('11365480442008112401564135d111', 'tech', 'root', 'root', '2008-11-24 01:56:41', '2008-12-03 13:47:06', 1, '11365480442008112401550798i111', 0x3c64653e546563686e697363683c2f64653e3c656e3e546563686e6963616c20726571756573743c2f656e3e3c66723e546563686e697175653c2f66723e3c72753ed0a2d0b5d185d0bdd0b8d187d0b5d181d0bad0b8d0b920d0b2d0bed0bfd180d0bed1813c2f72753e, 4, '', ''),
('11365480442008112401571519v111', 'billing', 'root', 'root', '2008-11-24 01:57:15', '2008-12-03 11:58:41', 1, '11365480442008112401550798i111', 0x3c64653e526563686e756e673c2f64653e3c656e3e42696c6c696e6720726571756573743c2f656e3e3c66723e4661637475726174696f6e3c2f66723e3c72753ed092d0bed0bfd180d0bed18120d0bfd0be20d0bfd0bbd0b0d182d0b5d0b6d0b0d0bc3c2f72753e, 6, '', ''),
('11365480442008112401580033c111', 'functions', 'root', 'root', '2008-11-24 01:58:00', '2008-12-03 13:46:49', 1, '11365480442008112401550798i111', 0x3c64653e42656e75747a756e673c2f64653e3c656e3e46756e6374696f6e73207175657374696f6e3c2f656e3e3c66723e5574696c69736174696f6e3c2f66723e3c72753ed092d0bed0bfd180d0bed18120d0bfd0be20d184d183d0bdd0bad186d0b8d18fd0bc3c2f72753e, 2, '', ''),
('11365480442008112401585758y111', '1', 'root', 'root', '2008-11-24 01:58:57', '2008-12-03 11:54:18', 1, '11365480442008112401553582t111', 0x3c64653e4b72697469736368653c2f64653e3c656e3e437269746963616c3c2f656e3e3c66723e43726974697175653c2f66723e3c72753ed09ad180d0b8d182d0b8d187d0b5d181d0bad0b8d0b93c2f72753e, 8, '', ''),
('1136548044200811240159133w1111', '2', 'root', 'root', '2008-11-24 01:59:13', '2008-12-03 11:53:37', 1, '11365480442008112401553582t111', 0x3c64653e4472696e67656e64653c2f64653e3c656e3e557267656e743c2f656e3e3c66723e557267656e74653c2f66723e3c72753ed0a1d180d0bed187d0bdd18bd0b93c2f72753e, 6, '', ''),
('11365480442008112401593158m111', '3', 'root', 'root', '2008-11-24 01:59:31', '2008-12-03 11:54:12', 1, '11365480442008112401553582t111', 0x3c64653e4e6f726d616c653c2f64653e3c656e3e4e6f726d616c3c2f656e3e3c66723e4e6f726d616c653c2f66723e3c72753ed09dd0bed180d0bcd0b0d0bbd18cd0bdd18bd0b93c2f72753e, 4, '', ''),
('1136548044200811240159502v1111', '4', 'root', 'root', '2008-11-24 01:59:50', '2008-12-03 11:54:07', 1, '11365480442008112401553582t111', 0x3c64653e4c616e6773616d3c2f64653e3c656e3e4c6f773c2f656e3e3c66723e4c656e74653c2f66723e3c72753ed09dd0b8d0b7d181d0bad0b8d0b93c2f72753e, 2, '', ''),
('11365480442008112402005180f111', '1', 'root', 'root', '2008-11-24 02:00:51', '2008-11-24 02:00:51', 1, '11365480442008112401560887y111', 0x3c656e3e4e6f742072656164207965743c2f656e3e3c72753ed09dd0b520d0bfd180d0bed187d0b8d182d0b0d0bd3c2f72753e, 2, '', ''),
('11365480442008112402011644p111', '2', 'root', 'root', '2008-11-24 02:01:16', '2008-11-24 02:01:56', 1, '11365480442008112401560887y111', 0x3c656e3e416e7377657265642062792061646d696e3c2f656e3e3c72753ed09ed182d0b2d0b5d18220d0bed18220d0b0d0b4d0bcd0b8d0bdd0b8d181d182d180d0b0d182d0bed180d0b03c2f72753e, 4, '', ''),
('11365480442008112402013960j111', '3', 'root', 'root', '2008-11-24 02:01:39', '2008-11-24 02:02:07', 1, '11365480442008112401560887y111', 0x3c656e3e436c69656e74207265706c793c2f656e3e3c72753ed09ed182d0b2d0b5d18220d0bed18220d0bad0bbd0b8d0b5d0bdd182d0b03c2f72753e, 6, '', ''),
('11365480442008112800364522h111', 'update', 'root', 'root', '2008-11-28 00:36:45', '2008-11-28 00:36:45', 1, '11365480442008112800353564k111', 0x3c64653e557064617465206469726563746f72792064657461696c733c2f64653e3c656e3e557064617465206469726563746f72792064657461696c733c2f656e3e3c66723e557064617465206469726563746f72792064657461696c733c2f66723e3c72753ed092d0bdd0b5d181d0b8d182d0b520d0b8d0b7d0bcd0bdd0b5d0bdd0b8d0b53c2f72753e, 2, '', ''),
('11365480442008112800371652q111', 'delete', 'root', 'root', '2008-11-28 00:37:16', '2008-11-28 00:37:16', 1, '11365480442008112800353564k111', 0x3c64653e44656c657465206469726563746f72793c2f64653e3c656e3e44656c657465206469726563746f72793c2f656e3e3c66723e44656c657465206469726563746f72793c2f66723e3c72753ed0a3d0b4d0b0d0bbd0b8d182d18c20d0bad0b0d182d0b0d0bbd0bed0b33c2f72753e, 4, '', ''),
('1136548044200811280037520w1111', 'other', 'root', 'root', '2008-11-28 00:37:52', '2008-11-28 00:38:03', 1, '11365480442008112800353564k111', 0x3c64653e4f74686572207375626a6563743c2f64653e3c656e3e4f74686572207375626a6563743c2f656e3e3c66723e4f74686572207375626a6563743c2f66723e3c72753ed098d0bdd0b0d18f20d182d0b5d0bcd0b02028d0bed0bfd0b8d181d0b0d182d18c20d0b220d0bad0bed0bcd0bcd0b5d0bdd182d0b0d180d0b8d18fd185293c2f72753e, 6, '', ''),
('1136548044200811280045146a1111', '1', 'root', 'root', '2008-11-28 00:45:14', '2008-11-28 00:45:14', 1, '11365480442008112800444698m111', 0x3c64653e53656e743c2f64653e3c656e3e53656e743c2f656e3e3c66723e53656e743c2f66723e3c72753ed09ed182d0bfd180d0b0d0b2d0bbd0b5d0bd3c2f72753e, 1, '', ''),
('1136548044200811280045391t1111', '2', 'root', 'root', '2008-11-28 00:45:39', '2008-11-28 00:45:39', 1, '11365480442008112800444698m111', 0x3c64653e436f6d706c657465643c2f64653e3c656e3e436f6d706c657465643c2f656e3e3c66723e436f6d706c657465643c2f66723e3c72753ed092d18bd0bfd0bed0bbd0bdd0b5d0bd3c2f72753e, 2, '', ''),
('11365480442008112800455647c111', '3', 'root', 'root', '2008-11-28 00:45:56', '2008-11-28 00:45:56', 1, '11365480442008112800444698m111', 0x3c64653e43616e63656c6c65643c2f64653e3c656e3e43616e63656c6c65643c2f656e3e3c66723e43616e63656c6c65643c2f66723e3c72753ed09ed182d0bcd0b5d0bdd0b5d0bd3c2f72753e, 3, '', ''),
('11365480442008121021013283h111', 'directory', 'root', 'root', '2008-12-10 21:01:32', '2008-12-10 21:01:32', 1, '11365480442008120819311030l111', 0x3c64653e4469726563746f726965733c2f64653e3c656e3e4469726563746f726965733c2f656e3e3c66723e4469726563746f726965733c2f66723e3c72753ed09ad0b0d182d0b0d0bbd0bed0b3d0b83c2f72753e, 1, '', ''),
('11365480442008121021015098c111', 'website', 'root', 'root', '2008-12-10 21:01:50', '2008-12-10 21:01:50', 1, '11365480442008120819311030l111', 0x3c64653e57656273697465733c2f64653e3c656e3e57656273697465733c2f656e3e3c66723e57656273697465733c2f66723e3c72753ed0a1d0b0d0b9d182d18b3c2f72753e, 2, '', ''),
('11365480442008121221361832b111', 'updatecategory', 'root', 'root', '2008-12-12 21:36:18', '2008-12-12 21:36:18', 1, '11365480442008121221354532t111', 0x3c64653e5570646174652063617465676f72793c2f64653e3c656e3e5570646174652063617465676f72793c2f656e3e3c66723e5570646174652063617465676f72793c2f66723e3c72753ed09fd0bed0bcd0b5d0bdd18fd182d18c20d0bad0b0d182d0b5d0b3d0bed180d0b8d18e3c2f72753e, 1, '', ''),
('11365480442008121221371736m111', 'updaterating', 'root', 'root', '2008-12-12 21:37:17', '2008-12-12 21:37:17', 1, '11365480442008121221354532t111', 0x3c64653e5265766965772074686520726174696e673c2f64653e3c656e3e5265766965772074686520726174696e673c2f656e3e3c66723e5265766965772074686520726174696e673c2f66723e3c72753ed09fd0b5d180d0b5d181d0bcd0bed182d180d0b5d182d18c20d180d0b5d0b9d182d0b8d0bdd0b33c2f72753e, 2, '', ''),
('11365480442008121221375276x111', 'otherupdate', 'root', 'root', '2008-12-12 21:37:52', '2008-12-12 21:37:52', 1, '11365480442008121221354532t111', 0x3c64653e4f746865722075706461746520726571756573743c2f64653e3c656e3e4f746865722075706461746520726571756573743c2f656e3e3c66723e4f746865722075706461746520726571756573743c2f66723e3c72753ed094d180d183d0b3d0b0d18f20d0bfd180d0bed0b1d0bbd0b5d0bcd0b03c2f72753e, 3, '', ''),
('11365480442008121221401818w111', 'newcategory', 'root', 'root', '2008-12-12 21:40:18', '2008-12-12 21:40:18', 1, '11365480442008121221354532t111', 0x3c64653e4e65772063617465676972792073756767657374696f6e3c2f64653e3c656e3e4e65772063617465676972792073756767657374696f6e3c2f656e3e3c66723e4e65772063617465676972792073756767657374696f6e3c2f66723e3c72753ed09fd180d0b5d0b4d0bbd0bed0b6d0b8d182d18c20d0bdd0bed0b2d183d18e20d0bad0b0d182d0b5d0b3d0bed180d0b8d18e3c2f72753e, 1, '', ''),
('11365480442008122100053218b111', 'ArticlesDontUseSuggestion', 'root', 'root', '2008-12-21 00:05:32', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', 0x3c656e3e41727469636c65733a20646f206e6f74206c65742076697369746f727320746f20737567676573742061727469636c65733c2f656e3e3c66723e41727469636c65733a20646f206e6f74206c65742076697369746f727320746f20737567676573742061727469636c65733c2f66723e3c6e6c3e41727469636c65733a20646f206e6f74206c65742076697369746f727320746f20737567676573742061727469636c65733c2f6e6c3e3c72753ed09ad0b0d182d0b0d0bbd0bed0b320d181d182d0b0d182d0b5d0b93a20d0b7d0b0d0bfd180d0b5d182d0b8d182d18c20d0bfd0bed181d0b5d182d0b8d182d0b5d0bbd18fd0bc20d0bfd180d0b5d0b4d0bbd0b0d0b3d0b0d182d18c20d181d182d0b0d182d18cd0b83c2f72753e, 14, '', ''),
('11365480442009041819540080q111', 'core.registerOwner', 'root', 'root', '2009-04-18 19:54:00', '2009-04-18 19:54:00', 1, '11365480442009013120072999b111', 0x3c656e3e57656273697465206372656174696f6e3c2f656e3e3c72753ed0a1d0bed0b7d0b4d0b0d0bdd0b8d0b520d181d0b0d0b9d182d0b03c2f72753e, 17, '', ''),
('11365480442008122100280750p111', 'SubmissionIsBackLinkPrefered', 'root', 'root', '2008-12-21 00:28:07', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', 0x3c656e3e576562206469726563746f72793a206261636b206c696e6b73206973206e6f74207265717569726564206275742061736b20666f72206974206173206120626f6e75733c2f656e3e3c66723e576562206469726563746f72793a206261636b206c696e6b73206973206e6f74207265717569726564206275742061736b20666f72206974206173206120626f6e75733c2f66723e3c6e6c3e576562206469726563746f72793a206261636b206c696e6b73206973206e6f74207265717569726564206275742061736b20666f72206974206173206120626f6e75733c2f6e6c3e3c72753ed09ad0b0d182d0b0d0bbd0bed0b320d181d181d18bd0bbd0bed0ba3a20d180d0b5d0bad0bed0bcd0b5d0bdd0b4d0bed0b2d0b0d182d18c20d183d181d182d0b0d0bdd0bed0b2d0bad18320d0bed0b1d180d0b0d182d0bdd0bed0b920d181d181d18bd0bbd0bad0b820d0bdd0be20d0bdd0b520d0b2d18bd0bfd0bed0bbd0bdd18fd182d18c20d0bfd180d0bed0b2d0b5d180d0bad0b83c2f72753e, 16, '', ''),
('11365480442009041817430547a111', 'CoreBottomMenuOn', 'root', 'root', '2009-04-18 17:43:05', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', 0x3c656e3e4d656e753a20537769746368206f6e20626f74746f6d206d656e753c2f656e3e3c66723e4d656e753a20537769746368206f6e20626f74746f6d206d656e753c2f66723e3c6e6c3e4d656e753a20537769746368206f6e20626f74746f6d206d656e753c2f6e6c3e3c72753ed09cd0b5d0bdd18e3a20d092d0bad0bbd18ed187d0b8d182d18c20d0bdd0b8d0b6d0bdd0b5d0b520d0bcd0b5d0bdd18e3c2f72753e, 8, '', ''),
('11365480442009041817414974x111', 'CoreTopMenuOn', 'root', 'root', '2009-04-18 17:41:49', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', 0x3c656e3e4d656e753a20537769746368206f6e20746f70206d656e753c2f656e3e3c66723e4d656e753a20537769746368206f6e20746f70206d656e753c2f66723e3c6e6c3e4d656e753a20537769746368206f6e20746f70206d656e753c2f6e6c3e3c72753ed09cd0b5d0bdd18e3a20d092d0bad0bbd18ed187d0b8d182d18c20d0b2d0b5d180d185d0bdd0b5d0b520d0bcd0b5d0bdd18e3c2f72753e, 2, '', ''),
('11365480442008122200562440h111', 'start', 'root', 'root', '2008-12-22 00:56:24', '2008-12-22 00:56:24', 1, '11365480442008122200545133i111', 0x3c656e3e53746172743c2f656e3e3c72753ed0a1d182d0b0d180d1823c2f72753e, 4, '', ''),
('11365480442008122200564131f111', 'profi', 'root', 'root', '2008-12-22 00:56:41', '2008-12-22 00:56:41', 1, '11365480442008122200545133i111', 0x3c656e3e50726f66693c2f656e3e3c72753ed09fd180d0bed184d0b83c2f72753e, 6, '', ''),
('1136548044200812270154214k1111', '4', 'root', 'root', '2008-12-27 01:54:21', '2008-12-27 01:54:21', 1, '11365480442008122701535379p111', 0x3c656e3e556e64657220636f6e737472756374696f6e3c2f656e3e3c72753ed0a1d0b0d0b9d18220d0b220d180d0b0d0b7d180d0b0d0b1d0bed182d0bad0b53c2f72753e, 1, '', ''),
('11365480442008122701544783m111', '1', 'root', 'root', '2008-12-27 01:54:47', '2008-12-27 01:54:47', 1, '11365480442008122701535379p111', 0x3c656e3e57656273697465206973206f6e6c696e653c2f656e3e3c72753ed0a1d0b0d0b9d18220d0b0d0bad182d0b8d0b2d0b5d0bd3c2f72753e, 2, '', ''),
('11365480442009012420502488v111', 'ws10.ru', 'root', 'root', '2009-01-24 20:50:24', '2009-01-24 20:50:24', 1, '11365480442009012420395436i111', 0x3c656e3e777331302e72753c2f656e3e3c72753e777331302e72753c2f72753e, 2, '', ''),
('11365480442009012512133380l111', 'main', 'root', 'root', '2009-01-25 12:13:33', '2009-01-25 12:13:33', 1, '11365480442009012512084684p111', 0x3c656e3e4d61696e2067726f75703c2f656e3e3c72753ed09ed0b1d189d0b8d0b520d0b4d0b8d0b7d0b0d0b9d0bdd18b3c2f72753e, 1, '', ''),
('11365480442009012421383713w111', 'obzorniki.ru', 'root', 'root', '2009-01-24 21:38:37', '2009-01-25 23:22:11', 1, '11365480442009012420395436i111', 0x3c656e3e6f627a6f726e696b692e72753c2f656e3e3c72753e6f627a6f726e696b692e72753c2f72753e, 4, '', ''),
('11365480442009013120084832a111', 'news.getNewsArticlesArticles', 'root', 'root', '2009-01-31 20:08:48', '2009-01-31 20:15:58', 1, '11365480442009013120072999b111', 0x3c656e3e41727469636c65733c2f656e3e3c72753ed09ad0b0d182d0b0d0bbd0bed0b320d181d182d0b0d182d0b5d0b93c2f72753e, 4, '', ''),
('11365480442009012512135673g111', 'sport', 'root', 'root', '2009-01-25 12:13:56', '2009-01-25 12:13:56', 1, '11365480442009012512084684p111', 0x3c656e3e53706f72743c2f656e3e3c72753ed0a1d0bfd0bed180d1823c2f72753e, 2, '', ''),
('11365480442009013120130077q111', 'news.getNewsArticlesNews', 'root', 'root', '2009-01-31 20:13:00', '2009-01-31 20:16:09', 1, '11365480442009013120072999b111', 0x3c656e3e4e6577733c2f656e3e3c72753ed09dd0bed0b2d0bed181d182d0b83c2f72753e, 6, '', ''),
('11365480442009013120134832l111', 'news.getNewsArticlesBlog', 'root', 'root', '2009-01-31 20:13:48', '2009-01-31 20:13:48', 1, '11365480442009013120072999b111', 0x3c656e3e426c6f673c2f656e3e3c72753ed091d0bbd0bed0b33c2f72753e, 8, '', ''),
('11365480442009013120141082h111', 'page', 'root', 'root', '2009-01-31 20:14:10', '2009-01-31 20:14:10', 1, '11365480442009013120072999b111', 0x3c656e3e506167653c2f656e3e3c72753ed0a1d182d180d0b0d0bdd0b8d186d0b020d181d0b0d0b9d182d0b03c2f72753e, 2, '', ''),
('11365480442009013120170481f111', 'submission.getWebSites', 'root', 'root', '2009-01-31 20:17:04', '2009-01-31 20:17:04', 1, '11365480442009013120072999b111', 0x3c656e3e5765627369746573206469726563746f72793c2f656e3e3c72753ed09ad0b0d182d0b0d0bbd0bed0b320d181d0b0d0b9d182d0bed0b23c2f72753e, 10, '', ''),
('11365480442009013120195041f111', 'submission.getTopWebSites', 'root', 'root', '2009-01-31 20:19:50', '2009-01-31 20:22:43', 1, '11365480442009013120072999b111', 0x3c656e3e5765627369746573206469726563746f7279202d20546f702077656273697465733c2f656e3e3c72753ed09ad0b0d182d0b0d0bbd0bed0b320d181d0b0d0b9d182d0bed0b2202d20d0b8d0b7d0b1d180d0b0d0bdd0bdd18bd0b520d181d0b0d0b9d182d18b3c2f72753e, 12, '', ''),
('11365480442009013120222481q111', 'submission.getNewWebSites', 'root', 'root', '2009-01-31 20:22:24', '2009-01-31 20:22:24', 1, '11365480442009013120072999b111', 0x3c656e3e5765627369746573206469726563746f7279202d206e65772077656273697465733c2f656e3e3c72753ed09ad0b0d182d0b0d0bbd0bed0b320d181d0b0d0b9d182d0bed0b2202d20d0bdd0bed0b2d18bd0b520d181d0b0d0b9d182d18b3c2f72753e, 14, '', ''),
('11365480442009013120241746a111', 'mail.contactForm', 'root', 'root', '2009-01-31 20:24:17', '2009-01-31 20:24:17', 1, '11365480442009013120072999b111', 0x3c656e3e436f6e7461637420666f726d3c2f656e3e3c72753ed09ad0bed0bdd182d0b0d0bad182d0bdd0b0d18f20d184d0bed180d0bcd0b03c2f72753e, 15, '', ''),
('11365480442009042822064193a111', 'SEOPageHideTopMenu', 'root', 'root', '2009-04-28 22:06:41', '2009-04-28 22:06:41', 1, '11365480442009042821202738g111', 0x3c656e3e4869646520746f70206d656e753c2f656e3e3c72753ed0a1d0bad180d18bd182d18c20d0b2d0b5d180d185d0bdd0b5d0b520d0bcd0b5d0bdd18e3c2f72753e, 5, '', ''),
('11365480442009042822071012p111', 'SEOPageHideBottomMenu', 'root', 'root', '2009-04-28 22:07:10', '2009-04-28 22:07:10', 1, '11365480442009042821202738g111', 0x3c656e3e4869646520626f74746f6d206d656e753c2f656e3e3c72753ed0a1d0bad180d18bd182d18c20d0bdd0b8d0b6d0bdd0b5d0b520d0bcd0b5d0bdd18e3c2f72753e, 6, '', ''),
('11365480442009042822082553i111', 'SEOPageHideCenter', 'root', 'root', '2009-04-28 22:08:25', '2009-04-28 22:08:25', 1, '11365480442009042821202738g111', 0x3c656e3e486964652063656e74657220636f6e74656e743c2f656e3e3c72753ed0a1d0bad180d18bd182d18c20d181d0bed0b4d0b5d180d0b6d0b8d0bcd0bed0b520d0b220d186d0b5d0bdd182d180d0b520d181d182d180d0b0d0bdd0b8d186d18b3c2f72753e, 7, '', ''),
('11365480442009042822102949g111', 'SEOPageHideForVisitors', 'root', 'root', '2009-04-28 22:10:29', '2009-04-28 22:10:29', 1, '11365480442009042821202738g111', 0x3c656e3e4769766520616363657373206f6e6c7920746f206c6f67656420696e2075736572733c2f656e3e3c72753ed094d0b0d182d18c20d0b4d0bed181d182d183d0bf20d182d0bed0bbd18cd0bad0be20d0b4d0bbd18f20d0b7d0b0d180d0b5d0b3d0b8d181d182d180d0b8d180d0bed0b2d0b0d0bdd0bdd18bd18520d0bfd0bed0bbd18cd0b7d0bed0b2d0b0d182d0b5d0bbd0b5d0b93c2f72753e, 7, '', ''),
('11365480442009042822110579t111', 'SEOPagePaidAccess', 'root', 'root', '2009-04-28 22:11:05', '2009-04-28 22:11:05', 1, '11365480442009042821202738g111', 0x3c656e3e5061696420616363657373206f6e6c793c2f656e3e3c72753ed09fd0bbd0b0d182d0bdd18bd0b920d0b4d0bed181d182d183d0bf20d0ba20d181d182d180d0b0d0bdd0b8d186d0b53c2f72753e, 7, '', ''),
('11365480442009061822353465p111', 'interx', 'root', 'root', '2009-06-18 22:35:34', '2009-11-18 12:52:13', 1, '11365480442007100323430210j111', 0x3c656e3e696e746572783c2f656e3e3c66723e696e746572783c2f66723e3c6e6c3e696e746572783c2f6e6c3e3c72753e696e746572783c2f72753e, 12, '', ''),
('11365480442009061822353465zz11', 'mgm', 'root', 'root', '2009-06-18 22:35:34', '2009-11-18 12:52:13', 1, '11365480442007100323430210j111', 0x3c656e3e6d676d3c2f656e3e3c66723e6d676d3c2f66723e3c6e6c3e6d676d3c2f6e6c3e3c72753e6d676d3c2f72753e, 14, '', ''),
('11365480442009081422595524s111', 'custom', 'root', 'root', '2009-08-14 22:59:55', '2009-11-18 12:52:13', 1, '11365480442007100323430210j111', 0x3c656e3e437573746f6d2064657369676e3c2f656e3e3c66723e437573746f6d2064657369676e3c2f66723e3c6e6c3e437573746f6d2064657369676e3c2f6e6c3e3c72753ed098d0bdd0b4d0b8d0b2d0b8d0b4d183d0b0d0bbd18cd0bdd18bd0b920d0b4d0b8d0b7d0b0d0b9d0bd3c2f72753e, 8, '', ''),
('11365480442009082623170323x111', 'reportal', 'root', 'root', '2009-08-26 23:17:03', '2009-11-30 21:49:06', 1, '11365480442007062318391012c111', 0x3c656e3e5265616c2045737461746520506f7274616c3c2f656e3e3c72753e5265616c2045737461746520506f7274616c3c2f72753e, 12, '', ''),
('11365480442009082623173118f111', 'bizdirectory', 'root', 'root', '2009-08-26 23:17:31', '2009-11-30 21:49:06', 1, '11365480442007062318391012c111', 0x3c656e3e42697a204469726563746f72793c2f656e3e3c72753e42697a204469726563746f72793c2f72753e, 14, '', ''),
('11365480442009083120452668p111', 'property', 'root', 'root', '2009-08-31 20:45:26', '2009-11-18 12:52:13', 1, '11365480442007100323430210j111', 0x3c656e3e50726f70657274793c2f656e3e3c66723e50726f70657274793c2f66723e3c6e6c3e50726f70657274793c2f6e6c3e3c72753ed09dd0b5d0b4d0b2d0b8d0b6d0b8d0bcd0bed181d182d18c3c2f72753e, 16, '', ''),
('1136548044200909021306276b1111', 'frame', 'root', 'root', '2009-09-02 13:06:27', '2009-09-02 13:07:21', 1, '14', 0x3c656e3e506f707570206672616d653c2f656e3e3c72753ed09220d0b2d181d0bfd0bbd18bd0b2d0b0d18ed189d0b5d0bc20d0bed0bad0bdd0b53c2f72753e, 6, '', ''),
('11365480442009090421395149e111', 'free', 'root', 'root', '2009-09-04 21:39:51', '2009-09-04 21:39:51', 1, '11', 0x3c656e3e4672656520706f736974696f6e3c2f656e3e3c72753e4672656520706f736974696f6e3c2f72753e, 73, '', ''),
('11365480442009090513570247g111', 'websolution', 'root', 'root', '2009-09-05 13:57:02', '2009-11-30 21:49:06', 1, '11365480442007062318391012c111', 0x3c656e3e576562736974657320646576656c6f706d656e7420636f6d70616e793c2f656e3e3c72753ed0a1d0b0d0b9d18220d0bad0bed0bcd0bfd0b0d0bdd0b8d0b820d0bfd0be20d181d0bed0b7d0b4d0b0d0bdd0b8d18e20d181d0b0d0b9d182d0bed0b23c2f72753e, 18, '', ''),
('11365480442009091001474355l111', '', 'root', 'root', '2009-09-10 01:47:43', '2009-09-10 01:55:16', 1, '11365480442009091001471729b111', 0x3c656e3e486964653c2f656e3e3c72753ed0a1d0bad180d18bd182d18c3c2f72753e, 2, '', ''),
('11365480442009091001484798g111', 'N', 'root', 'root', '2009-09-10 01:48:47', '2009-09-10 01:48:47', 1, '11365480442009091001471729b111', 0x3c656e3e53686f77206f6e20616c6c2070616765733c2f656e3e3c72753ed09fd0bed0bad0b0d0b7d0b0d182d18c20d0bdd0b020d0b2d181d0b5d18520d181d182d180d0b0d0bdd0b8d186d0b0d1853c2f72753e, 4, '', ''),
('11365480442009091001491756n111', 'Y', 'root', 'root', '2009-09-10 01:49:17', '2009-09-10 01:49:17', 1, '11365480442009091001471729b111', 0x3c656e3e53686f77206f6e2063757272656e742070616765206f6e6c793c2f656e3e3c72753ed09fd0bed0bad0b0d0b7d0b0d182d18c20d182d0bed0bbd18cd0bad0be20d0bdd0b020d182d0b5d0bad183d189d0b5d0b920d181d182d180d0b0d0bdd0b8d186d0b53c2f72753e, 6, '', ''),
('11365480442009091023400891z111', 'property', 'root', 'root', '2009-09-10 23:40:08', '2009-09-10 23:40:08', 1, '19', 0x3c656e3e50726f706572746965733c2f656e3e3c72753ed09dd0b5d0b4d0b2d0b8d0b6d0b8d0bcd0bed181d182d18c3c2f72753e, 15, '', ''),
('11365480442009091222213588w111', '1', 'root', 'root', '2009-09-12 22:21:35', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e41706172746d656e743c2f656e3e3c66723e417070617274656d656e74656e3c2f66723e3c6e6c3e4170617274656d656e743c2f6e6c3e3c72753ed09ad0b2d0b0d180d182d0b8d180d0b03c2f72753e, 2, '', ''),
('11365480442009091222274056i111', '2', 'root', 'root', '2009-09-12 22:27:40', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e486f7573653c2f656e3e3c66723e4d6169736f6e3c2f66723e3c6e6c3e576f6f6e687569733c2f6e6c3e3c72753ed094d0bed0bc3c2f72753e, 10, '', ''),
('11365480442009112318125395r111', '17', 'root', 'root', '2009-11-23 18:12:53', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e42756e67616c6f773c2f656e3e3c66723e506176696c6c6f6e3c2f66723e3c6e6c3e42756e67616c6f773c2f6e6c3e3c72753ed091d183d0bdd0b3d0b0d0bbd0be3c2f72753e, 12, '', ''),
('11365480442009091222344182o111', '3', 'root', 'root', '2009-09-12 22:34:41', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e4661726d3c2f656e3e3c66723e4665726d653c2f66723e3c6e6c3e426f6572646572696a3c2f6e6c3e3c72753ed094d0bed0bc20d18120d0b7d0b5d0bcd0b5d0bbd18cd0bdd18bd0bc20d183d187d0b0d182d0bad0bed0bc3c2f72753e, 28, '', ''),
('11365480442009091413163180l111', '9', 'root', 'root', '2009-09-14 13:16:31', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e4772616e6420746f776e20686f7573653c2f656e3e3c66723e48c3b474656c20706172746963756c6965723c2f66723e3c6e6c3e537461647320686572656e20687569733c2f6e6c3e3c72753e4772616e6420746f776e20686f7573653c2f72753e, 16, '', ''),
('11365480442009091222373717h111', '4', 'root', 'root', '2009-09-12 22:37:37', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e436173746c652c206573746174653c2f656e3e3c66723e4368c3a274656175782c206d616e6f6972733c2f66723e3c6e6c3e4368c3a274656175782c206c616e646875697a656e3c2f6e6c3e3c72753e4368c3a274656175782c206d616e6f7220686f7573653c2f72753e, 34, '', ''),
('11365480442009091222394624m111', '5', 'root', 'root', '2009-09-12 22:39:46', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e4c616e643c2f656e3e3c66723e5465727261696e3c2f66723e3c6e6c3e47726f6e643c2f6e6c3e3c72753ed097d0b5d0bcd0bbd18f20d0bfd0bed0b420d0b7d0b0d181d182d180d0bed0b9d0bad1833c2f72753e, 44, '', ''),
('11365480442009091222410967n111', '6', 'root', 'root', '2009-09-12 22:41:09', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e436f6d6d65726369616c2070726f70657274793c2f656e3e3c66723e436f6d6d65726365733c2f66723e3c6e6c3e427573696e65737365733c2f6e6c3e3c72753ed09ad0bed0bcd0bcd0b5d180d187d0b5d181d0bad0b0d18f20d0bdd0b5d0b4d0b2d0b8d0b6d0b8d0bcd0bed181d182d18c3c2f72753e, 56, '', ''),
('11365480442009091222424311f111', '7', 'root', 'root', '2009-09-12 22:42:43', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e4261726e7320616e64207275696e733c2f656e3e3c66723e4772616e676573206574207275696e65733c2f66723e3c6e6c3e5363687572656e2c207275c3af6e657320652e642e3c2f6e6c3e3c72753ed0a1d0b0d180d0b0d0b82c20d180d0b0d0b7d0b2d0b0d0bbd0b8d0bdd18b3c2f72753e, 60, '', ''),
('11365480442009091222443464i111', '10', 'root', 'root', '2009-09-12 22:44:34', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e4f746865722070726f70657274793c2f656e3e3c66723e41757472653c2f66723e3c6e6c3e4f7665726967653c2f6e6c3e3c72753ed094d180d183d0b3d0b0d18f20d0bdd0b5d0b4d0b2d0b8d0b6d0b8d0bcd0bed181d182d18c3c2f72753e, 72, '', ''),
('11365480442009091413310091t111', '1', 'root', 'root', '2009-09-14 13:31:00', '2009-11-18 18:19:25', 1, '11365480442009091413300818m111', 0x3c656e3e4f7572204661766f75726974653c2f656e3e3c66723e436f757020436f7565723c2f66723e3c6e6c3e4d6f65742055207a69656e20213c2f6e6c3e3c72753ed0a1d0bfd0b5d186d0bfd180d0b5d0b4d0bbd0bed0b6d0b5d0bdd0b8d0b53c2f72753e, 1, '', ''),
('11365480442009091409051552x111', 'Blocked', 'root', 's46', '2009-09-14 09:05:15', '2009-09-14 09:05:15', 1, '11365480442009091409045260d111', 0x3c656e3e53686f772064697361637469766174656420636c69656e74733c2f656e3e3c66723e53686f772064697361637469766174656420636c69656e74733c2f66723e3c72753e53686f772064697361637469766174656420636c69656e74733c2f72753e, 1, '', ''),
('11365480442009091409053438y111', 'Name', 'root', 's46', '2009-09-14 09:05:34', '2009-09-14 09:05:34', 1, '11365480442009091409045260d111', 0x3c656e3e4f72646572206279206e616d653c2f656e3e3c66723e4f72646572206279206e616d653c2f66723e3c72753e4f72646572206279206e616d653c2f72753e, 2, '', ''),
('11365480442009091409055081f111', 'LastMessage', 'root', 's46', '2009-09-14 09:05:50', '2009-09-14 09:05:50', 1, '11365480442009091409045260d111', 0x3c656e3e4f72646572206279206c617374206d6573736167653c2f656e3e3c66723e4f72646572206279206c617374206d6573736167653c2f66723e3c72753e4f72646572206279206c617374206d6573736167653c2f72753e, 3, '', ''),
('11365480442009091409491021b111', 'Subject', 'root', 's46', '2009-09-14 09:49:10', '2009-09-14 09:49:10', 1, '11365480442009091409470117d111', 0x3c656e3e4f72646572206279207375626a6563743c2f656e3e3c66723e4f72646572206279207375626a6563743c2f66723e3c72753ed0a1d0bed180d182d0b8d180d0bed0b2d0b0d182d18c20d0bfd0be20d182d0b5d0bcd0b53c2f72753e, 2, '', ''),
('11365480442009091409494471t111', 'Client', 'root', 's46', '2009-09-14 09:49:44', '2009-09-14 09:49:44', 1, '11365480442009091409470117d111', 0x3c656e3e4f7264657220627920636c69656e743c2f656e3e3c66723e4f7264657220627920636c69656e743c2f66723e3c72753e4f7264657220627920636c69656e743c2f72753e, 3, '', ''),
('11365480442009091409501525o111', 'LastWeek', 'root', 's46', '2009-09-14 09:50:15', '2009-09-14 09:50:15', 1, '11365480442009091409470117d111', 0x3c656e3e53686f77206c617374207765656b3c2f656e3e3c66723e53686f77206c617374207765656b3c2f66723e3c72753ed09fd0bed0bad0b0d0b7d0b0d182d18c20d0bfd0bed181d0bbd0b5d0b4d0bdd18ed18e20d0bdd0b5d0b4d0b5d0bbd18e3c2f72753e, 4, '', ''),
('11365480442009091409512785k111', 'LastMonth', 'root', 's46', '2009-09-14 09:51:27', '2009-09-14 09:51:27', 1, '11365480442009091409470117d111', 0x3c656e3e53686f77206c617374206d6f6e74683c2f656e3e3c66723e53686f77206c617374206d6f6e74683c2f66723e3c72753ed09fd0bed0bad0b0d0b7d0b0d182d18c20d0bfd0bed181d0bbd0b5d0b4d0bdd0b8d0b920d0bcd0b5d181d18fd1863c2f72753e, 5, '', ''),
('11365480442009091410170045g111', 'sale', 'root', 'root', '2009-09-14 10:17:00', '2009-09-14 10:17:00', 1, '11365480442009091410155496q111', 0x3c656e3e466f722073616c653c2f656e3e3c66723e56656e74653c2f66723e3c6e6c3e5665726b6f6f703c2f6e6c3e3c72753ed09fd180d0bed0b4d0b0d0b6d0b03c2f72753e, 1, '', ''),
('11365480442009091410172574x111', 'rent', 'root', 'root', '2009-09-14 10:17:25', '2009-09-14 10:17:25', 1, '11365480442009091410155496q111', 0x3c656e3e546f2072656e743c2f656e3e3c66723e4c6f636174696f6e3c2f66723e3c6e6c3e487575723c2f6e6c3e3c72753ed090d180d0b5d0bdd0b4d0b03c2f72753e, 2, '', ''),
('11365480442009091410250915g111', 'holiday-rental', 'root', 'root', '2009-09-14 10:25:09', '2009-09-14 10:25:09', 1, '11365480442009091410155496q111', 0x3c656e3e486f6c696461792072656e74616c3c2f656e3e3c66723e4c6f636174696f6e20736169736f6e6e6965723c2f66723e3c6e6c3e5365697a6f656e7320687575723c2f6e6c3e3c72753ed090d180d0b5d0bdd0b4d0b020d0bdd0b020d0b4d0b5d0bdd18c3c2f72753e, 3, '', ''),
('11365480442009091410254077w111', 'development', 'root', 'root', '2009-09-14 10:25:40', '2009-09-14 10:25:40', 1, '11365480442009091410155496q111', 0x3c656e3e4e657720646576656c6f706d656e743c2f656e3e3c66723e4120636f6e737472756972653c2f66723e3c6e6c3e4e69657577626f757770726f6a656374656e3c2f6e6c3e3c72753ed09dd0bed0b2d0bed181d182d180d0bed0b9d0bad0b83c2f72753e, 4, '', ''),
('11365480442009091413140728a111', '8', 'root', 'root', '2009-09-14 13:14:07', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e4c6f66743c2f656e3e3c66723e4c6f66742d4174656c6965723c2f66723e3c6e6c3e4c6f66742d6174656c6965723c2f6e6c3e3c72753e4c6f66743c2f72753e, 4, '', ''),
('11365480442009091413171112s111', '11', 'root', 'root', '2009-09-14 13:17:11', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e5061726b696e673c2f656e3e3c66723e5061726b696e673c2f66723e3c6e6c3e5061726b696e673c2f6e6c3e3c72753ed09fd0b0d180d0bad0b8d0bdd0b33c2f72753e, 58, '', ''),
('11365480442009091413174561j111', '12', 'root', 'root', '2009-09-14 13:17:45', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e4261726765733c2f656e3e3c66723e50656e696368653c2f66723e3c6e6c3e426f6f74656e3c2f6e6c3e3c72753e4261726765733c2f72753e, 68, '', ''),
('11365480442009091413183337r111', '13', 'root', 'root', '2009-09-14 13:18:33', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e47c3ae746520627573696e6573733c2f656e3e3c66723e436f6d706c65786520617665632067c3ae7465733c2f66723e3c6e6c3e42756e67616c6f77207061726b3c2f6e6c3e3c72753e42756e67616c6f77207061726b3c2f72753e, 62, '', ''),
('11365480442009091413204065k111', '14', 'root', 'root', '2009-09-14 13:20:40', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e496e766573746d656e74206275696c64696e673c2f656e3e3c66723e496d6d6575626c653c2f66723e3c6e6c3e496e766573746572696e67204765626f75773c2f6e6c3e3c72753ed09dd0bed0b2d0bed181d182d180d0bed0b9d0bad0b83c2f72753e, 54, '', ''),
('11365480442009091413314379f111', '2', 'root', 'root', '2009-09-14 13:31:42', '2009-11-18 18:19:25', 1, '11365480442009091413300818m111', 0x3c656e3e50726963652064656372656173653c2f656e3e3c66723e5072697820656e206261697373653c2f66723e3c6e6c3e5072696a73207665726c6167696e673c2f6e6c3e3c72753ed0a1d0bdd0b8d0b6d0b5d0bdd0b020d186d0b5d0bdd0b03c2f72753e, 2, '', ''),
('11365480442009091413321617n111', '3', 'root', 'root', '2009-09-14 13:32:16', '2009-11-18 18:19:25', 1, '11365480442009091413300818m111', 0x3c656e3e4d616b6520616e206f666665723c2f656e3e3c66723e4661697220756e206f6666726520213c2f66723e3c6e6c3e4d61616b2065656e20626f6420213c2f6e6c3e3c72753e4d616b6520616e206f666665723c2f72753e, 3, '', ''),
('1136548044200909141332534e1111', '4', 'root', 'root', '2009-09-14 13:32:53', '2009-11-18 18:19:25', 1, '11365480442009091413300818m111', 0x3c656e3e466f722073616c65206f6e6c7920776974682075733c2f656e3e3c66723e4d616e646174206578636c75736976653c2f66723e3c6e6c3e416c6c656e7665726b6f6f702072656368743c2f6e6c3e3c72753ed0add0bad181d0bad0bbd18ed0b7d0b8d0b2d0bdd0bed0b520d0bfd180d0b5d0b4d0bbd0bed0b6d0b5d0bdd0b8d0b53c2f72753e, 4, '', ''),
('11365480442009091413334327k111', '5', 'root', 'root', '2009-09-14 13:33:43', '2009-11-18 18:19:25', 1, '11365480442009091413300818m111', 0x3c656e3e536f6c64207375626a65637420746f20636f6e74726163743c2f656e3e3c66723e56656e647520736f757320636f6d70726f6d69733c2f66723e3c6e6c3e5665726b6f6368742c206f6e64657220766f726265686f75643c2f6e6c3e3c72753ed09ed184d0bed180d0bcd0bbd0b5d0bdd0b8d0b520d0bfd180d0bed0b4d0b0d0b6d0b83c2f72753e, 5, '', ''),
('1136548044200909141334147z1111', '10', 'root', 'root', '2009-09-14 13:34:14', '2009-11-18 18:19:25', 1, '11365480442009091413300818m111', 0x3c656e3e536f6c643c2f656e3e3c66723e56656e64753c2f66723e3c6e6c3e5665726b6f6368743c2f6e6c3e3c72753ed09fd180d0bed0b4d0b0d0bdd0be3c2f72753e, 6, '', ''),
('11365480442009091413343838i111', '20', 'root', 'root', '2009-09-14 13:34:38', '2009-11-18 18:19:25', 1, '11365480442009091413300818m111', 0x3c656e3e52656e7465643c2f656e3e3c66723e4c6f75653c2f66723e3c6e6c3e56657268757572643c2f6e6c3e3c72753ed090d180d0b5d0bdd0b4d0bed0b2d0b0d0bdd0be3c2f72753e, 7, '', ''),
('1136548044200909251941461k1111', 'paid', 'root', 'root', '2009-09-25 19:41:46', '2009-09-25 19:41:46', 1, '11365480442009092519375180f111', 0x3c656e3e506169643c2f656e3e3c66723e506169643c2f66723e3c6e6c3e506169643c2f6e6c3e3c72753e506169643c2f72753e, 1, '', ''),
('11365480442009092519415959o111', 'notpaid', 'root', 'root', '2009-09-25 19:41:59', '2009-09-25 19:41:59', 1, '11365480442009092519375180f111', 0x3c656e3e4e6f7420706169643c2f656e3e3c66723e4e6f7420706169643c2f66723e3c6e6c3e4e6f7420706169643c2f6e6c3e3c72753e4e6f7420706169643c2f72753e, 2, '', ''),
('11365480442009101200062052k111', 'tissot', 'root', 's49', '2009-10-12 00:06:20', '2009-11-18 12:52:13', 1, '11365480442007100323430210j111', 0x3c656e3e746973736f742077617463683c2f656e3e3c66723e746973736f742077617463683c2f66723e3c6e6c3e746973736f742077617463683c2f6e6c3e3c72753ed0a7d0b0d181d18b20746973736f743c2f72753e, 18, '', ''),
('11365480442009101816343593u111', '1', 'root', 'root', '2009-10-18 16:34:35', '2009-10-18 16:35:02', 1, '11365480442009101816321424u111', 0x3c656e3e46656174757265643c2f656e3e3c66723e46656174757265643c2f66723e3c6e6c3e46656174757265643c2f6e6c3e3c72753ed0a1d0bfd0b5d186d0bfd180d0b5d0b4d0bbd0bed0b6d0b5d0bdd0b8d18f3c2f72753e, 2, '', ''),
('11365480442009101816345469k111', '2', 'root', 'root', '2009-10-18 16:34:54', '2009-10-18 16:34:54', 1, '11365480442009101816321424u111', 0x3c656e3e486f6d65706167653c2f656e3e3c66723e486f6d65706167653c2f66723e3c6e6c3e486f6d65706167653c2f6e6c3e3c72753e486f6d65706167653c2f72753e, 4, '', ''),
('11365480442009101817171894u111', 'int', 'root', 'root', '2009-10-18 17:17:18', '2009-10-18 17:17:18', 1, '5', 0x3c656e3e496e74656765723c2f656e3e3c66723e496e74656765723c2f66723e3c6e6c3e496e74656765723c2f6e6c3e3c72753e496e74656765723c2f72753e, 10, '', ''),
('11365480442009102117512197o111', 'cardealer', 'root', 'root', '2009-10-21 17:51:21', '2009-11-30 21:49:06', 1, '11365480442007062318391012c111', 0x3c656e3e436172206465616c657220776562736974653c2f656e3e3c72753ed0a1d0b0d0b9d18220d0b0d0b2d182d0bed0b4d0b8d0bbd0b5d180d0b03c2f72753e, 16, '', ''),
('11365480442009102118010930q111', 'vehicle', 'root', 'root', '2009-10-21 18:01:09', '2009-11-18 12:52:13', 1, '11365480442007100323430210j111', 0x3c656e3e56656869636c653c2f656e3e3c66723e56656869636c653c2f66723e3c6e6c3e56656869636c653c2f6e6c3e3c72753e56656869636c653c2f72753e, 20, '', ''),
('11365480442009102316573248d111', 'html', 'root', 'root', '2009-10-23 16:57:32', '2009-10-23 17:01:51', 1, '5', 0x3c656e3e48544d4c20617265613c2f656e3e3c66723e48544d4c20617265613c2f66723e3c6e6c3e48544d4c20617265613c2f6e6c3e3c72753e48544d4c20617265613c2f72753e, 8, '', ''),
('11365480442009102317035160g111', 'dropdowncheckboxes', 'root', 'root', '2009-10-23 17:03:51', '2009-10-23 17:03:51', 1, '5', 0x3c656e3e436865636b626f7865732061732064726f7020646f776e3c2f656e3e3c66723e436865636b626f7865732061732064726f7020646f776e3c2f66723e3c6e6c3e436865636b626f7865732061732064726f7020646f776e3c2f6e6c3e3c72753e436865636b626f7865732061732064726f7020646f776e3c2f72753e, 19, '', ''),
('11365480442009102323140468h111', 'situation', 'root', 'root', '2009-10-23 23:14:04', '2009-10-23 23:43:04', 1, '11365480442009102323111833f111', 0x3c656e3e536974756174696f6e3c2f656e3e3c66723e536974756174696f6e3c2f66723e3c6e6c3e4c696767696e673c2f6e6c3e3c72753ed0a0d0b0d181d0bfd0bed0bbd0bed0b6d0b5d0bdd0b8d0b53c2f72753e, 2, '', ''),
('1136548044200910271718192v1111', 'vehicle', 'root', 'root', '2009-10-27 17:18:19', '2009-10-27 17:18:19', 1, '19', 0x3c656e3e56656869636c65733c2f656e3e3c66723e56656869636c65733c2f66723e3c6e6c3e56656869636c65733c2f6e6c3e3c72753e56656869636c65733c2f72753e, 16, '', ''),
('11365480442009102323153536s111', 'apartments', 'root', 'root', '2009-10-23 23:15:35', '2009-10-23 23:15:35', 1, '11365480442009102323111833f111', 0x3c656e3e41706172746d656e742064657461696c733c2f656e3e3c66723e496d6d6575626c652064657461696c733c2f66723e3c6e6c3e4765626f757720696e666f3c2f6e6c3e3c72753ed09fd0b0d180d0b0d0bcd0b5d182d180d18b20d0bad0b2d0b0d180d182d0b8d180d18b3c2f72753e, 4, '', ''),
('11365480442009102323162671m111', 'exterior', 'root', 'root', '2009-10-23 23:16:26', '2009-10-23 23:16:26', 1, '11365480442009102323111833f111', 0x3c656e3e4578746572696f723c2f656e3e3c66723e4578746572696575723c2f66723e3c6e6c3e42756974656e3c2f6e6c3e3c72753e4578746572696f723c2f72753e, 6, '', ''),
('11365480442009102323165922o111', 'energy', 'root', 'root', '2009-10-23 23:16:59', '2009-10-23 23:16:59', 1, '11365480442009102323111833f111', 0x3c656e3e456e657267793c2f656e3e3c66723e5574696c6974616972733c2f66723e3c6e6c3e456e65726769653c2f6e6c3e3c72753ed09ed182d0bed0bfd0bbd0b5d0bdd0b8d0b53c2f72753e, 8, '', ''),
('11365480442009102718195713b111', 'none', 'root', 'root', '2009-10-27 18:19:57', '2009-10-27 18:19:57', 1, '11365480442009102718191492l111', 0x3c656e3e4e6f2073656172636820666f726d3c2f656e3e3c66723e4e6f2073656172636820666f726d3c2f66723e3c6e6c3e4e6f2073656172636820666f726d3c2f6e6c3e3c72753ed0a1d0bad180d18bd182d18c20d184d0bed180d0bcd18320d0bfd0bed0b8d181d0bad0b03c2f72753e, 2, '', ''),
('11365480442009102718203656p111', 'small', 'root', 'root', '2009-10-27 18:20:36', '2009-10-27 18:23:22', 1, '11365480442009102718191492l111', 0x3c656e3e536d616c6c2073656172636820666f726d3c2f656e3e3c66723e536d616c6c2073656172636820666f726d3c2f66723e3c6e6c3e536d616c6c2073656172636820666f726d3c2f6e6c3e3c72753ed09cd0b8d0bdd0b8d0bcd0b0d0bbd18cd0bdd0b0d18f20d184d0bed180d0bcd0b020d0bfd0bed0b8d181d0bad0b03c2f72753e, 6, '', ''),
('11365480442009102718211947a111', 'default', 'root', 'root', '2009-10-27 18:21:19', '2009-10-27 18:23:09', 1, '11365480442009102718191492l111', 0x3c656e3e44656661756c742073656172636820666f726d3c2f656e3e3c66723e44656661756c742073656172636820666f726d3c2f66723e3c6e6c3e44656661756c742073656172636820666f726d3c2f6e6c3e3c72753ed09ed0b1d18bd187d0bdd0b0d18f20d184d0bed180d0bcd0b020d0bfd0bed0b8d181d0bad0b03c2f72753e, 4, '', ''),
('11365480442009102718215044k111', 'exstended', 'root', 'root', '2009-10-27 18:21:50', '2009-10-27 18:21:50', 1, '11365480442009102718191492l111', 0x3c656e3e457874656e6465642073656172636820666f726d3c2f656e3e3c66723e457874656e6465642073656172636820666f726d3c2f66723e3c6e6c3e457874656e6465642073656172636820666f726d3c2f6e6c3e3c72753ed0a0d0b0d181d188d0b8d180d0b5d0bdd0bdd0b0d18f20d184d0bed180d0bcd0b020d0bfd0bed0b8d181d0bad0b03c2f72753e, 8, '', ''),
('11365480442009102718481826o111', 'detailed', 'root', 'root', '2009-10-27 18:48:18', '2009-10-27 18:48:18', 1, '11365480442009102718455190o111', 0x3c656e3e44657461696c6564206c6973743c2f656e3e3c66723e44657461696c6564206c6973743c2f66723e3c6e6c3e44657461696c6564206c6973743c2f6e6c3e3c72753ed0a0d0b0d181d188d0b8d180d0b5d0bdd0bdd18bd0b920d181d0bfd0b8d181d0bed0ba3c2f72753e, 1, '', ''),
('11365480442009102718485711n111', 'gallery', 'root', 'root', '2009-10-27 18:48:57', '2009-10-27 18:48:57', 1, '11365480442009102718455190o111', 0x3c656e3e50686f746f2067616c6c6572793c2f656e3e3c66723e50686f746f2067616c6c6572793c2f66723e3c6e6c3e50686f746f2067616c6c6572793c2f6e6c3e3c72753ed093d0b0d0bbd0bbd0b5d180d0b5d18f20d184d0bed182d0bed0b3d180d0b0d184d0b8d0b93c2f72753e, 2, '', ''),
('11365480442009102718492077w111', 'table', 'root', 'root', '2009-10-27 18:49:20', '2009-10-27 18:49:20', 1, '11365480442009102718455190o111', 0x3c656e3e5461626c653c2f656e3e3c66723e5461626c653c2f66723e3c6e6c3e5461626c653c2f6e6c3e3c72753ed0a2d0b0d0b1d0bbd0b8d186d0b03c2f72753e, 3, '', ''),
('1136548044200910271849415h1111', 'map', 'root', 'root', '2009-10-27 18:49:41', '2009-10-27 18:49:41', 1, '11365480442009102718455190o111', 0x3c656e3e476f6f676c65206d61703c2f656e3e3c66723e476f6f676c65206d61703c2f66723e3c6e6c3e476f6f676c65206d61703c2f6e6c3e3c72753ed09ad0b0d180d182d0b03c2f72753e, 4, '', ''),
('11365480442009102914511617h111', '9', 'root', 'root', '2009-10-29 14:51:16', '2009-10-29 14:51:16', 1, '11365480442009102914482159k111', 0x3c656e3e4275733c2f656e3e3c66723e4175746f6361723c2f66723e3c6e6c3e4275733c2f6e6c3e3c72753ed0a2d183d180d0b8d181d182d0b8d187d0b5d181d0bad0b8d0b520d0b0d0b2d182d0bed0b1d183d181d18b3c2f72753e, 2, '', ''),
('11365480442009102914521530t111', '24', 'root', 'root', '2009-10-29 14:52:15', '2009-10-29 14:53:42', 1, '11365480442009102914482159k111', 0x3c656e3e4361723c2f656e3e3c66723e566f69747572653c2f66723e3c6e6c3e4361723c2f6e6c3e3c72753ed090d0b2d182d0bed0bcd0bed0b1d0b8d0bbd18c3c2f72753e, 6, '', ''),
('11365480442009102914533656b111', '5', 'root', 'root', '2009-10-29 14:53:36', '2009-10-29 14:53:36', 1, '11365480442009102914482159k111', 0x3c656e3e547275636b202d2020372c3520743c2f656e3e3c66723e43616d696f6e202d20372c3520743c2f66723e3c6e6c3e547275636b202d2020372c3520743c2f6e6c3e3c72753ed090d0b2d182d0bed0bfd0bed0b5d0b7d0b43c2f72753e, 4, '', ''),
('11365480442009110801220320o111', 'dropdowncheckboxes', 'root', 'root', '2009-11-08 01:22:03', '2009-11-12 19:31:42', 1, '1', 0x3c656e3e44726f7020646f776e207769746820636865636b626f7865733c2f656e3e3c66723e44726f7020646f776e207769746820636865636b626f7865733c2f66723e3c6e6c3e44726f7020646f776e207769746820636865636b626f7865733c2f6e6c3e3c72753e44726f7020646f776e207769746820636865636b626f7865733c2f72753e, 3, '', ''),
('11365480442009111113211865g111', '10', 'root', 's46', '2009-11-11 13:21:18', '2009-11-11 13:21:18', 1, '11365480442007021819424670x111', 0x3c656e3e526567696f6e20496e666f3c2f656e3e3c66723e526567696f6e20496e666f3c2f66723e3c6e6c3e526567696f6e20496e666f3c2f6e6c3e, 7, '', '');
INSERT INTO `referenceoption` (`id`, `code`, `UserID`, `OwnerID`, `timeCreated`, `timeSaved`, `hidden`, `referenceID`, `name`, `position`, `color`, `icon`) VALUES
('11365480442009111300243949k511', 'no', 'root', 'root', '2009-11-13 00:24:39', '2010-02-23 23:41:42', 4, '11365480442009111300243977x411', 0x3c656e3e4e6f2062617468726f6f6d20616e64206e6f2073686f7765723c2f656e3e3c656c3e4e6f2062617468726f6f6d20616e64206e6f2073686f7765723c2f656c3e3c65673e4e6f2062617468726f6f6d20616e64206e6f2073686f7765723c2f65673e3c64653e4e6f2062617468726f6f6d20616e64206e6f2073686f7765723c2f64653e3c66723e4e6f2062617468726f6f6d20616e64206e6f2073686f7765723c2f66723e3c65733e4e6f2062617468726f6f6d20616e64206e6f2073686f7765723c2f65733e3c69743e4e6f2062617468726f6f6d20616e64206e6f2073686f7765723c2f69743e3c74753e4e6f2062617468726f6f6d20616e64206e6f2073686f7765723c2f74753e3c72753e4e6f2062617468726f6f6d20616e64206e6f2073686f7765723c2f72753e, 14, '', ''),
('11365480442009111300243995y811', 'torestore', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:33:04', 1, '11365480442009111300243958r711', 0x3c656e3e576f726b20746f20626520706c616e6e65643c2f656e3e3c66723e54726176617578206120707265766f69723c2f66723e3c6e6c3e5765726b206973206e6f6469673c2f6e6c3e3c72753ed0a2d180d183d0b1d183d0b5d182d181d18f20d180d0b5d0bcd0bed0bdd1823c2f72753e, 8, '', 'root/icons/i20090917021239-h-ss1.gif'),
('11365480442009111300243918i911', 'habitable', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:33:04', 1, '11365480442009111300243958r711', 0x3c656e3e4c697661626c653c2f656e3e3c66723e486162697461626c653c2f66723e3c6e6c3e426173697320697320676f65643c2f6e6c3e3c72753ed0a3d0b4d0bed0b2d0bbd0b5d182d0b2d0bed180d0b8d182d0b5d0bbd18cd0bdd0bed0b53c2f72753e, 6, '', 'root/icons/i20090917021209-h-ss4.gif'),
('11365480442009111300243910c101', 'good', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:33:03', 1, '11365480442009111300243958r711', 0x3c656e3e476f6f64207175616c6974793c2f656e3e3c66723e426f6e20657461743c2f66723e3c6e6c3e476f6564652073746161743c2f6e6c3e3c72753ed0a5d0bed180d0bed188d0b5d0b520d181d0bed181d182d0bed18fd0bdd0b8d0b53c2f72753e, 4, '', 'root/icons/i20090917021130-h-ss5.gif'),
('11365480442009111300243917t111', 'no', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:33:04', 1, '11365480442009111300243958r711', 0x3c656e3e556e6b6e6f776e3c2f656e3e3c66723e556e6b6e6f776e3c2f66723e3c6e6c3e556e6b6e6f776e3c2f6e6c3e3c72753e556e6b6e6f776e3c2f72753e, 10, '', 'root/icons/i20090917021324-h-ss3.gif'),
('11365480442009111300243927u211', 'perfect', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:33:03', 1, '11365480442009111300243958r711', 0x3c656e3e457863656c6c656e74207175616c6974793c2f656e3e3c66723e457863656c6c656e742c207269656e20612066616972653c2f66723e3c6e6c3e50657266656b742c20616c73206e696575773c2f6e6c3e3c72753ed09fd180d0b5d0b2d0bed181d185d0bed0b4d0bdd0bed0b520d181d0bed181d182d0bed18fd0bdd0b8d0b53c2f72753e, 2, '', 'root/icons/i20090917021107-h-ss6.gif'),
('11365480442009111300243942o411', 'town', 'root', 'root', '2009-11-13 00:24:39', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', 0x3c656e3e546f776e3c2f656e3e3c66723e56696c6c653c2f66723e3c6e6c3e446f72703c2f6e6c3e3c72753ed093d0bed180d0bed0b4d0bed0ba3c2f72753e, 4, '', 'root/icons/i20090917003743-h-t.gif'),
('11365480442009111300243954a511', 'village', 'root', 'root', '2009-11-13 00:24:39', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', 0x3c656e3e56696c6c61676520286e6f2073686f7073293c2f656e3e3c66723e426f757267202870617320646520636f6d6d6572636573293c2f66723e3c6e6c3e446f7270207a6f6e6465722077696e6b656c733c2f6e6c3e3c72753ed0a1d0b5d0bbd0be3c2f72753e, 8, '', 'root/icons/i20090916143752-h-gr.gif'),
('11365480442009111300243996s611', 'сountryside', 'root', 'root', '2009-11-13 00:24:39', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', 0x3c656e3e436f756e74727920736964653c2f656e3e3c66723ed0a1616d7061676e653c2f66723e3c6e6c3e4c616e64656c696a6b3c2f6e6c3e3c72753ed0a1d0b5d0bbd18cd181d0bad0b0d18f20d0bcd0b5d181d182d0bdd0bed181d182d18c3c2f72753e, 14, '', 'root/icons/i20090917004912-h-c.gif'),
('11365480442009111300243928n711', 'sea-side', 'root', 'root', '2009-11-13 00:24:39', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', 0x3c656e3e53656120736964653c2f656e3e3c66723e4d65723c2f66723e3c6e6c3e41616e206465206b7573743c2f6e6c3e3c72753ed0a320d0bcd0bed180d18f3c2f72753e, 16, '', 'root/icons/i20090917005827-h-sea.gif'),
('11365480442009111300243955u811', 'other', 'root', 'root', '2009-11-13 00:24:39', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', 0x3c656e3e4f746865723c2f656e3e3c66723e4f746865723c2f66723e3c6e6c3e4f746865723c2f6e6c3e3c72753e4f746865723c2f72753e, 20, '', 'root/icons/i20090917014739-h-ot.gif'),
('11365480442009111300243986n911', 'city', 'root', 'root', '2009-11-13 00:24:39', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', 0x3c656e3e436974793c2f656e3e3c66723e43656e7472652076696c6c653c2f66723e3c6e6c3e537461643c2f6e6c3e3c72753ed093d0bed180d0bed0b43c2f72753e, 2, '', 'root/icons/i20090916143706-h-sity.gif'),
('11365480442009111300243942f101', 'mountains', 'root', 'root', '2009-11-13 00:24:39', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', 0x3c656e3e496e20746865206d6f756e7461696e733c2f656e3e3c66723e4d6f6e7461676e653c2f66723e3c6e6c3e496e2064652062657267656e3c2f6e6c3e3c72753ed09220d0b3d0bed180d0b0d1853c2f72753e, 18, '', 'root/icons/i20090917014327-h-m.gif'),
('11365480442009111300243987i211', 'cellar', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', 0x3c656e3e2857696e65292043656c6c61723c2f656e3e20, 1, '', ''),
('11365480442009111300243936u311', 'courtyard', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', 0x3c656e3e436f757274796172643c2f656e3e3c66723e436f757274796172643c2f66723e, 2, '', ''),
('11365480442009111300243988r411', 'fields', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', 0x3c656e3e4669656c64733c2f656e3e3c66723e4669656c64733c2f66723e, 3, '', ''),
('11365480442009111300243990q511', 'garden', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', 0x3c656e3e47617264656e3c2f656e3e3c66723e47617264656e3c2f66723e, 5, '', ''),
('11365480442009111300243965i611', 'indoor-pool', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', 0x3c656e3e496e646f6f7220706f6f6c3c2f656e3e3c66723e496e646f6f7220706f6f6c3c2f66723e, 8, '', ''),
('11365480442009111300243962i711', 'outside-pool', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', 0x3c656e3e4f75747369646520706f6f6c3c2f656e3e3c66723e4f75747369646520706f6f6c3c2f66723e, 9, '', ''),
('1136548044200911130024395o8111', 'terrace', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', 0x3c656e3e546572726163653c2f656e3e3c66723e546572726163653c2f66723e, 10, '', ''),
('11365480442009111300243926e911', 'water-nearby', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', 0x3c656e3e5761746572206e65617262793c2f656e3e3c66723e5761746572206e65617262793c2f66723e, 11, '', ''),
('11365480442009111300243967j101', 'barn', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', 0x3c656e3e576f726b2073686564202f204261726e3c2f656e3e3c66723e576f726b2073686564202f204261726e3c2f66723e, 12, '', ''),
('1136548044200911130024397w1111', 'extension', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', 0x3c656e3e457874656e73696f6e20706f73736962696c6974793c2f656e3e3c66723e457874656e73696f6e20706f73736962696c6974793c2f66723e, 13, '', ''),
('11365480442009111300243915x211', 'balcony', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', 0x3c656e3e42616c636f6e793c2f656e3e3c66723e42616c636f6e793c2f66723e, 14, '', ''),
('11365480442009111300243928z311', 'enclosedgarden', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', 0x3c656e3e456e636c6f7365642067617264656e3c2f656e3e3c66723e4a617264696e20436c6f733c2f66723e3c6e6c3e41666765736c6f74656e207475696e3c2f6e6c3e3c72753ed097d0b8d0bcd0bdd0b8d0b920d181d0b0d0b43c2f72753e, 6, '', ''),
('11365480442009111300243963k411', 'vegetablegarden', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', 0x3c656e3e566567657461626c652067617264656e3c2f656e3e3c66723e506f74616765723c2f66723e3c6e6c3e47726f656e7465207475696e3c2f6e6c3e3c72753ed09ed0b3d0bed180d0bed0b43c2f72753e, 6, '', ''),
('11365480442009111300243955c511', 'woodstorage', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', 0x3c656e3e576f6f642073746f726167653c2f656e3e3c66723e4275636865723c2f66723e3c6e6c3e486f7574206f70736c6167207275696d74653c2f6e6c3e3c72753ed0a1d0b0d180d0b0d0b93c2f72753e, 15, '', ''),
('11365480442009111300243926n611', 'workshop', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', 0x3c656e3e576f726b2073686f703c2f656e3e3c66723e4174656c6965723c2f66723e3c6e6c3e5765726b20706c616174733c2f6e6c3e3c72753ed09cd0b0d181d182d0b5d180d181d0bad18f3c2f72753e, 16, '', ''),
('11365480442009111300243986q711', 'tenniscourt', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243944c111', 0x3c656e3e54656e6e697320636f7572743c2f656e3e3c66723e54656e6e69733c2f66723e3c6e6c3e54656e6e69733c2f6e6c3e3c72753ed0a2d0b5d0bdd0b8d181d0bdd18bd0b920d0bad0bed180d1823c2f72753e, 11, '', ''),
('11365480442009111300243992c911', 'attached', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243926j811', 0x3c656e3e41747461636865643c2f656e3e3c66723e4d69746f79656e3c2f66723e3c6e6c3e4e696574207672696a737461616e643c2f6e6c3e3c72753ed09fd180d0b8d181d0bed0b5d0b4d0b8d0bdd0b5d0bd20d0ba20d0b4d180d0b3d0bed0bcd18320d0b4d0bed0bcd1833c2f72753e, 1, '', ''),
('1136548044200911130024393s1011', 'detached', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243926j811', 0x3c656e3e44657461636865643c2f656e3e3c66723e496e6465706564616e743c2f66723e3c6e6c3e5672696a737461616e643c2f6e6c3e3c72753ed0a0d18fd0b4d0bed0bc20d18120d0b4d180d183d0b3d0b8d0bcd0b820d0b4d0bed0bcd0b0d0bcd0b83c2f72753e, 2, '', ''),
('11365480442009111300243910n111', 'isolated', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243926j811', 0x3c656e3e49736f6c617465643c2f656e3e3c66723e41752063616c6d653c2f66723e3c6e6c3e416667657a6f6e646572643c2f6e6c3e3c72753ed09ed182d0b4d0b5d0bbd18cd0bdd0be20d181d182d0bed18fd189d0b8d0b920d0b4d0bed0bc3c2f72753e, 3, '', ''),
('11365480442009111300243926m311', 'south', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243990x211', 0x3c656e3e536f7574683c2f656e3e3c66723e5375643c2f66723e3c6e6c3e5a7569643c2f6e6c3e3c72753ed09dd0b020d18ed0b33c2f72753e, 1, '', ''),
('11365480442009111300243985i411', 'west', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243990x211', 0x3c656e3e576573743c2f656e3e3c66723e4f756573743c2f66723e3c6e6c3e576573743c2f6e6c3e3c72753ed09dd0b020d0b7d0b0d0bfd0b0d0b43c2f72753e, 2, '', ''),
('11365480442009111300243986a511', 'north', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243990x211', 0x3c656e3e4e6f7274683c2f656e3e3c66723e4e6f72643c2f66723e3c6e6c3e4e6f6f72643c2f6e6c3e3c72753ed09dd0b020d181d0b5d0b2d0b5d1803c2f72753e, 3, '', ''),
('11365480442009111300243974y611', 'east', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243990x211', 0x3c656e3e456173743c2f656e3e3c66723e4573743c2f66723e3c6e6c3e4f6f73743c2f6e6c3e3c72753ed09dd0b020d0b2d0bed181d182d0bed0ba3c2f72753e, 4, '', ''),
('1136548044200911130032418f1111', 'ьagnificentview', 'root', 'root', '2009-11-13 00:32:41', '2009-11-13 00:32:41', 1, '11365480442009111300243956p711', '', 1, '', ''),
('11365480442009111300243993y911', 'magnificentview', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243956p711', 0x3c656e3e4d61676e69666963656e7420766965773c2f656e3e3c66723e567565206d61676e6966697175653c2f66723e3c6e6c3e5072616368746967207569747a696368743c2f6e6c3e3c72753ed09fd180d0b5d0b2d0bed181d185d0bed0b4d0bdd18bd0b920d0b2d0b8d0b420d0b8d0b720d0bed0bad0bdd0b03c2f72753e, 1, '', ''),
('11365480442009111300243962y101', 'waterview', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243956p711', 0x3c656e3e56696577206f662077617465723c2f656e3e3c66723e56756520737572206561753c2f66723e3c6e6c3e5569747a69636874206f702077617465723c2f6e6c3e3c72753ed0a120d0b2d0b8d0b4d0bed0bc20d0bdd0b020d0b2d0bed0b4d1833c2f72753e, 2, '', ''),
('11365480442009111300243953d111', 'quietarea', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243956p711', 0x3c656e3e517569657420617265613c2f656e3e3c66723e517569657420617265613c2f66723e3c6e6c3e517569657420617265613c2f6e6c3e3c72753ed0a2d0b8d185d0bed0b520d0bcd0b5d181d182d0be3c2f72753e, 3, '', ''),
('11365480442009111300243981o211', 'private', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243956p711', 0x3c656e3e507269766174653c2f656e3e3c66723e53616e73207669732061207669733c2f66723e3c6e6c3e4765656e20696e6b696a6b3c2f6e6c3e3c72753ed09fd180d0b8d0b2d0b0d182d0bdd0b0d18f20d0b0d182d0bcd0bed181d184d0b5d180d0b03c2f72753e, 4, '', ''),
('11365480442009111300243924v311', 'nearskislopes', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243956p711', 0x3c656e3e4e65617220736b6920736c6f7065733c2f656e3e3c66723e50726f63686520706973746520646520736b693c2f66723e3c6e6c3e446963687462696a20736b692070697374653c2f6e6c3e3c72753ed092d0bed0b7d0bbd0b520d0bbd18bd0b6d0bdd18bd18520d181d0bad0bbd0bed0bdd0bed0b23c2f72753e, 5, '', ''),
('11365480442009111300243993r511', 'old', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243917r411', 0x3c656e3e4f6c643c2f656e3e3c66723e416e6369656e3c2f66723e3c6e6c3e4f756420687569733c2f6e6c3e3c72753ed0a1d182d0b0d180d0bed0b53c2f72753e, 1, '', ''),
('1136548044200911130024399p6111', 'recent', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243917r411', 0x3c656e3e526563656e743c2f656e3e3c66723e4e6575663c2f66723e3c6e6c3e4e6965757720687569733c2f6e6c3e3c72753ed09dd0b5d0b4d0b0d0b2d0bdd0b5d0b53c2f72753e, 2, '', ''),
('11365480442009111300243979t711', 'new', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243917r411', 0x3c656e3e4e65773c2f656e3e3c66723e4e65773c2f66723e3c6e6c3e4e65773c2f6e6c3e3c72753ed09dd0bed0b2d0bed181d182d180d0bed0b9d0bad0b03c2f72753e, 3, '', ''),
('11365480442009111300243981f911', 'no', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243915n811', 0x3c656e3e4e6f7420617661696c61626c653c2f656e3e3c66723e4e6f6e20646973706f6e69626c653c2f66723e3c6e6c3e4e696574206265736368696b626161723c2f6e6c3e3c72753e4e6f7420617661696c61626c653c2f72753e, 1, '', ''),
('11365480442009111300243916b101', 'A', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243915n811', 0x3c656e3e413c2f656e3e3c66723e413c2f66723e3c6e6c3e413c2f6e6c3e3c72753e413c2f72753e, 2, '', ''),
('11365480442009111300243944h111', 'B', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243915n811', 0x3c656e3e423c2f656e3e3c66723e423c2f66723e3c6e6c3e423c2f6e6c3e3c72753e423c2f72753e, 3, '', ''),
('11365480442009111300243964k211', 'C', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243915n811', 0x3c656e3e433c2f656e3e3c66723e433c2f66723e3c6e6c3e433c2f6e6c3e3c72753e433c2f72753e, 4, '', ''),
('11365480442009111300243991q311', 'D', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243915n811', 0x3c656e3e443c2f656e3e3c66723e443c2f66723e3c6e6c3e443c2f6e6c3e3c72753e443c2f72753e, 5, '', ''),
('11365480442009111300243940e411', 'E', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243915n811', 0x3c656e3e453c2f656e3e3c66723e453c2f66723e3c6e6c3e453c2f6e6c3e, 6, '', ''),
('11365480442009111300243996c511', 'F', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243915n811', 0x3c656e3e463c2f656e3e3c66723e463c2f66723e3c6e6c3e463c2f6e6c3e3c72753e463c2f72753e, 7, '', ''),
('11365480442009111300243977w611', 'G', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243915n811', 0x3c656e3e473c2f656e3e3c66723e473c2f66723e, 8, '', ''),
('11365480442009111300243989s811', 'no', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243921f711', 0x3c656e3e4e6f2063656e7472616c2068656174696e673c2f656e3e3c66723e506173206465206368617566666167653c2f66723e3c6e6c3e4765656e2063656e7472616c65207665727761726d696e673c2f6e6c3e3c72753ed09dd0b5d18220d186d0b5d0bdd182d180d0b0d0bbd18cd0bdd0bed0b3d0be20d0bed182d0bed0bfd0bbd0b5d0bdd0b8d18f3c2f72753e, 2, '', ''),
('11365480442009111300243977g911', 'oil', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243921f711', 0x3c656e3e4f696c2066697265643c2f656e3e3c66723e4675656c3c2f66723e3c6e6c3e4f6c696520676573746f6f6b743c2f6e6c3e3c72753e4f696c2066697265643c2f72753e, 4, '', ''),
('11365480442009111300243986f101', 'gasbotlle', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243921f711', 0x3c656e3e47617320626f746c6c652066697265643c2f656e3e3c66723e4368617566666167652061752047617a2f50726f70616e653c2f66723e3c6e6c3e47617320676573746f6f6b743c2f6e6c3e3c72753e47617320626f746c6c652066697265643c2f72753e, 6, '', ''),
('11365480442009111300243969h111', 'gas', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243921f711', 0x3c656e3e4d61696e73206761732066697265643c2f656e3e3c66723e41752067617a2064652076696c6c653c2f66723e3c6e6c3e4761732067656d65656e74653c2f6e6c3e3c72753ed093d0b0d0b7d0bed0b2d0bed0b53c2f72753e, 8, '', ''),
('11365480442009111300243978g211', 'electric', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243921f711', 0x3c656e3e456c6563747269633c2f656e3e3c66723e456c65637472697175653c2f66723e3c6e6c3e456c656b7472697363683c2f6e6c3e3c72753ed0add0bbd0b5d0bad182d180d0b8d187d181d182d0b2d0be3c2f72753e, 9, '', ''),
('11365480442009111300243989m311', 'geothermal', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243921f711', 0x3c656e3e4865617420657868616e676572202867656f746865726d616c293c2f656e3e3c66723e456368616e67657572202867656f746865726d616c293c2f66723e3c6e6c3e5761726d74652077697373656c616172202867656f746865726d6965293c2f6e6c3e3c72753ed093d0b5d0bed182d0b5d180d0bcd0b8d187d0b5d181d0bad0bed0b53c2f72753e, 10, '', ''),
('11365480442009111300243943k411', 'air', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243921f711', 0x3c656e3e486561742065786368616e6765722028616972293c2f656e3e3c66723e45786368616e6765757220286165726f293c2f66723e3c6e6c3e5761726d74652077697373656c61617220286c75636874293c2f6e6c3e3c72753e486561742065786368616e6765722028616972293c2f72753e, 11, '', ''),
('11365480442009111300243998u511', 'wood', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243921f711', 0x3c656e3e576f6f6420282063686970292066697265643c2f656e3e3c66723e417520426f6973202870656c657473293c2f66723e3c6e6c3e486f757420676573746f6f6b743c2f6e6c3e3c72753e576f6f6420282063686970292066697265643c2f72753e, 12, '', ''),
('11365480442009111300243911v611', 'solarpanels', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243921f711', 0x3c656e3e486561742065786368616e676572202820736f6c61722070616e656c73293c2f656e3e3c66723e45786368616e676572202870616e6e6561757820736f6c6169726573293c2f66723e3c6e6c3e5761726d74652077697373656c6161722028207a6f6e2070616e6e656c656e293c2f6e6c3e3c72753ed0a1d0bed0bbd0bdd0b5d187d0b8d0bdd18bd0b520d0b1d0b0d182d0b0d180d0b5d0b83c2f72753e, 13, '', ''),
('11365480442009111300243973i811', 'N', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243951m711', 0x3c656e3e4e6f3c2f656e3e3c66723e4e6f6e3c2f66723e3c6e6c3e4e6f3c2f6e6c3e3c72753ed09dd0b5d1823c2f72753e, 1, '', ''),
('11365480442009111300243916i911', 'Y', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243951m711', 0x3c656e3e5965733c2f656e3e3c66723e4f75693c2f66723e3c6e6c3e5965733c2f6e6c3e3c72753ed094d0b03c2f72753e, 2, '', ''),
('11365480442009111300243970s111', 'interphone', 'root', 'root', '2009-11-13 00:24:39', '2010-01-20 00:55:28', 1, '11365480442009111300243973q101', 0x3c656e3e496e74657270686f6e653c2f656e3e3c656c3e496e74657270686f6e653c2f656c3e3c65673e496e74657270686f6e653c2f65673e3c64653e496e74657270686f6e653c2f64653e3c66723e496e74657270686f6e653c2f66723e3c65733e496e74657270686f6e653c2f65733e3c69743e496e74657270686f6e653c2f69743e3c74753e496e74657270686f6e653c2f74753e3c72753ed094d0bed0bcd0bed184d0bed0bd3c2f72753e, 6, '', ''),
('11365480442009111300243965w211', 'codeaccess', 'root', 'root', '2009-11-13 00:24:39', '2010-01-20 00:55:28', 1, '11365480442009111300243973q101', 0x3c656e3e416363657373207769746820636f64653c2f656e3e3c656c3e416363657373207769746820636f64653c2f656c3e3c65673e416363657373207769746820636f64653c2f65673e3c64653e416363657373207769746820636f64653c2f64653e3c66723e44696769636f646520617363656e636575723c2f66723e3c65733e416363657373207769746820636f64653c2f65733e3c69743e416363657373207769746820636f64653c2f69743e3c74753e416363657373207769746820636f64653c2f74753e3c72753ed09ad0bed0b4d0bed0b2d18bd0b920d0b7d0b0d0bcd0bed0ba3c2f72753e, 8, '', ''),
('11365480442009111300243925p311', 'lift', 'root', 'root', '2009-11-13 00:24:39', '2010-01-20 00:55:28', 1, '11365480442009111300243973q101', 0x3c656e3e456c657661746f723c2f656e3e3c656c3e456c657661746f723c2f656c3e3c65673e456c657661746f723c2f65673e3c64653e456c657661746f723c2f64653e3c66723e456c657661746f723c2f66723e3c65733e456c657661746f723c2f65733e3c69743e456c657661746f723c2f69743e3c74753e456c657661746f723c2f74753e3c72753ed09bd0b8d184d1823c2f72753e, 10, '', ''),
('11365480442009111300243989a411', 'сaretaker', 'root', 'root', '2009-11-13 00:24:39', '2010-01-20 00:55:28', 1, '11365480442009111300243973q101', 0x3c656e3e4361726574616b65723c2f656e3e3c656c3e4361726574616b65723c2f656c3e3c65673e4361726574616b65723c2f65673e3c64653e4361726574616b65723c2f64653e3c66723e477561726469616e3c2f66723e3c65733e4361726574616b65723c2f65733e3c69743e4361726574616b65723c2f69743e3c74753e4361726574616b65723c2f74753e3c72753ed09ad0bed0bdd181d18cd0b5d180d0b63c2f72753e, 12, '', ''),
('11365480442009111300243931n511', 'lastfloor', 'root', 'root', '2009-11-13 00:24:39', '2010-01-20 00:55:28', 1, '11365480442009111300243973q101', 0x3c656e3e4973206f6e206c61737420666c6f6f723f3c2f656e3e3c656c3e4973206f6e206c61737420666c6f6f723f3c2f656c3e3c65673e4973206f6e206c61737420666c6f6f723f3c2f65673e3c64653e4973206f6e206c61737420666c6f6f723f3c2f64653e3c66723e4465726e6965722065746167653f3c2f66723e3c65733e4973206f6e206c61737420666c6f6f723f3c2f65733e3c69743e4973206f6e206c61737420666c6f6f723f3c2f69743e3c74753e4973206f6e206c61737420666c6f6f723f3c2f74753e3c72753ed09fd0bed181d0bbd0b5d0b4d0bdd0b8d0b920d18dd182d0b0d0b63f3c2f72753e, 2, '', ''),
('11365480442009111300243938c611', 'groundfloor', 'root', 'root', '2009-11-13 00:24:39', '2010-01-20 00:55:28', 1, '11365480442009111300243973q101', 0x3c656e3e4973206f6e2067726f756e6420666c6f6f723f3c2f656e3e3c656c3e4973206f6e2067726f756e6420666c6f6f723f3c2f656c3e3c65673e4973206f6e2067726f756e6420666c6f6f723f3c2f65673e3c64653e4973206f6e2067726f756e6420666c6f6f723f3c2f64653e3c66723e4973206f6e2067726f756e6420666c6f6f723f3c2f66723e3c65733e4973206f6e2067726f756e6420666c6f6f723f3c2f65733e3c69743e4973206f6e2067726f756e6420666c6f6f723f3c2f69743e3c74753e4973206f6e2067726f756e6420666c6f6f723f3c2f74753e3c72753e4973206f6e2067726f756e6420666c6f6f723f3c2f72753e, 4, '', ''),
('1136548044200911130024394s8111', 'airconditioning', 'root', 'root', '2009-11-13 00:24:39', '2010-01-28 00:45:03', 1, '11365480442009111300243963t711', 0x3c656e3e61697220636f6e646974696f6e696e673c2f656e3e3c656c3e41697220636f6e646974696f6e696e673c2f656c3e3c65673e41697220636f6e646974696f6e696e673c2f65673e3c64653e41697220636f6e646974696f6e696e673c2f64653e3c3ed09ad0bed0bdd0b4d0b8d186d0b8d0bed0bdd0b5d180d18b3c2f3e3c66723e436c696d61746973653c2f66723e3c65733e41697220636f6e646974696f6e696e673c2f65733e3c69743e41697220636f6e646974696f6e696e673c2f69743e3c74753e41697220636f6e646974696f6e696e673c2f74753e3c72753ed09ad0bed0bdd0b4d0b8d186d0b8d0bed0bdd0b5d180d18b3c2f72753e, 1, '', ''),
('11365480442009111300243977e911', 'waterwell', 'root', 'root', '2009-11-13 00:24:39', '2010-01-28 00:45:03', 1, '11365480442009111300243963t711', 0x3c656e3e57617465722077656c6c3c2f656e3e3c656c3e57617465722077656c6c3c2f656c3e3c65673e57617465722077656c6c3c2f65673e3c64653e57617465722077656c6c3c2f64653e3c3ed09ed187d0b8d181d182d0bad0b020d0b2d0bed0b4d18b3c2f3e3c66723e45617520647520707569743c2f66723e3c65733e57617465722077656c6c3c2f65733e3c69743e57617465722077656c6c3c2f69743e3c74753e57617465722077656c6c3c2f74753e3c72753ed09ed187d0b8d181d182d0bad0b020d0b2d0bed0b4d18b3c2f72753e, 2, '', ''),
('1136548044200911130024391a1011', 'watersource', 'root', 'root', '2009-11-13 00:24:39', '2010-01-28 00:45:03', 1, '11365480442009111300243963t711', 0x3c656e3e576174657220736f757263653c2f656e3e3c656c3e576174657220736f757263653c2f656c3e3c65673e576174657220736f757263653c2f65673e3c64653e576174657220736f757263653c2f64653e3c66723e45617520647520736f757263653c2f66723e3c65733e576174657220736f757263653c2f65733e3c69743e576174657220736f757263653c2f69743e3c74753e576174657220736f757263653c2f74753e3c72753e576174657220736f757263653c2f72753e, 3, '', ''),
('1136548044200911130024393n1111', 'rainwater', 'root', 'root', '2009-11-13 00:24:39', '2010-01-28 00:45:03', 1, '11365480442009111300243963t711', 0x3c656e3e5261696e20776174657220636f6c6c656374696f6e3c2f656e3e3c656c3e5261696e20776174657220636f6c6c656374696f6e3c2f656c3e3c65673e5261696e20776174657220636f6c6c656374696f6e3c2f65673e3c64653e5261696e20776174657220636f6c6c656374696f6e3c2f64653e3c66723e45617520647520706c75696520636f6c6c656374653c2f66723e3c65733e5261696e20776174657220636f6c6c656374696f6e3c2f65733e3c69743e5261696e20776174657220636f6c6c656374696f6e3c2f69743e3c74753e5261696e20776174657220636f6c6c656374696f6e3c2f74753e3c72753e5261696e20776174657220636f6c6c656374696f6e3c2f72753e, 4, '', ''),
('11365480442009111300243910g311', 'N', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243969t211', 0x3c656e3e4e6f3c2f656e3e3c66723e4e6f3c2f66723e3c6e6c3e4e6f3c2f6e6c3e3c72753e4e6f3c2f72753e, 1, '', ''),
('11365480442009111300243947u411', 'Y', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243969t211', 0x3c656e3e5965733c2f656e3e3c66723e5965733c2f66723e3c6e6c3e5965733c2f6e6c3e3c72753e5965733c2f72753e, 2, '', ''),
('11365480442009111300243987s611', 'CARRIER', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243976r511', 0x3c656e3e434152524945523c2f656e3e3c66723e434152524945523c2f66723e3c6e6c3e434152524945523c2f6e6c3e3c72753e434152524945523c2f72753e, 1, '', ''),
('11365480442009111300243993k711', 'OUI', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243976r511', 0x3c656e3e5965733c2f656e3e3c66723e4f55493c2f66723e3c6e6c3e59613c2f6e6c3e3c72753ed094d0b03c2f72753e, 2, '', ''),
('1136548044200911130024393q8111', 'NON', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243976r511', 0x3c656e3e4e4f3c2f656e3e3c66723e4e4f4e3c2f66723e3c6e6c3e4e65696e3c2f6e6c3e3c72753ed09dd0b5d1823c2f72753e, 3, '', ''),
('11365480442009111300243942o911', 'NVEKTAR', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243976r511', 0x3c656e3e4e56454b5441523c2f656e3e3c66723e4e56454b5441523c2f66723e3c6e6c3e4e56454b5441523c2f6e6c3e3c72753e4e56454b5441523c2f72753e, 4, '', ''),
('11365480442009111300243974g101', 'SUTRAK', 'root', 'root', '2009-11-13 00:24:39', '2009-11-13 00:24:39', 1, '11365480442009111300243976r511', 0x3c656e3e53555452414b3c2f656e3e3c66723e53555452414b3c2f66723e3c6e6c3e53555452414b3c2f6e6c3e3c72753e53555452414b3c2f72753e, 5, '', ''),
('11365480442009111301514715u211', 'broadband', 'root', 'root', '2009-11-13 01:51:47', '2009-11-13 01:51:47', 1, '1136548044200911130151477l1111', 0x3c656e3e42726f616462616e6420617661696c61626c653c2f656e3e3c66723e4164736c20646973706f6e69626c653c2f66723e3c6e6c3e427265656462616e6420696e7465726e65743c2f6e6c3e3c72753ed0a1d0bad0bed180d0bed181d182d0bdd0bed0b920d0b8d0bdd182d0b5d180d0bdd0b5d1823c2f72753e, 2, '', ''),
('11365480442009111301522279o111', 'alarm', 'root', 'root', '2009-11-13 01:52:22', '2009-11-13 01:52:22', 1, '1136548044200911130151477l1111', 0x3c656e3e416c61726d20696e7374616c6c65643c2f656e3e3c66723e416c61726d20646973706f6e69626c653c2f66723e3c6e6c3e416c61726d2061616e77657a69673c2f6e6c3e3c72753ed0a1d0b8d0b3d0bdd0b0d0bbd0b8d0b7d0b0d186d0b8d18f3c2f72753e, 4, '', ''),
('11365480442009111711063124c111', 'defaultleft', 'root', 'root', '2009-11-17 11:06:31', '2009-11-18 12:52:13', 1, '11365480442007100323430210j111', 0x3c656e3e477265792077697468206c65667420636f6c756d6e3c2f656e3e3c66723e477265792077697468206c65667420636f6c756d6e3c2f66723e3c6e6c3e477265792077697468206c65667420636f6c756d6e3c2f6e6c3e3c72753ed0a1d0b5d180d18bd0b93c2f72753e, 22, '', ''),
('11365480442009111712564496a111', 'CoreUserAreaOff', 'root', 'root', '2009-11-17 12:56:44', '2009-11-17 12:57:31', 1, '11365480442007062522125138x111', 0x3c656e3e4d656e753a20537769746368206f6666206d656d62657220617265613c2f656e3e3c66723e4d656e753a20537769746368206f6666206d656d62657220617265613c2f66723e3c6e6c3e4d656e753a20537769746368206f6666206d656d62657220617265613c2f6e6c3e3c72753ed09cd0b5d0bdd18e3a20d092d18bd0bad0bbd18ed187d0b8d182d18c20d0bcd0b5d0bdd18e20d0bfd0bed0bbd18cd0b7d0bed0b2d0b0d182d0b5d0bbd18f3c2f72753e, 10, '', ''),
('11365480442009112318102126d111', '15', 'root', 'root', '2009-11-23 18:10:21', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e4475706c65783c2f656e3e3c66723e4475706c65783c2f66723e3c6e6c3e4475706c65783c2f6e6c3e3c72753e4475706c65783c2f72753e, 6, '', ''),
('11365480442009112318104375z111', '16', 'root', 'root', '2009-11-23 18:10:43', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e50656e74686f7573653c2f656e3e3c66723e50656e74686f7573653c2f66723e3c6e6c3e50656e74686f7573653c2f6e6c3e3c72753e50656e74686f7573653c2f72753e, 8, '', ''),
('11365480442009112318154681l111', '18', 'root', 'root', '2009-11-23 18:15:46', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e56696c6c61676520686f7573653c2f656e3e3c66723e4d6169736f6e20646520626f7572673c2f66723e3c6e6c3e446f72707320687569733c2f6e6c3e3c72753ed094d0bed0bc20d0b220d181d0b5d0bbd0b53c2f72753e, 14, '', ''),
('11365480442009112318182711y111', '19', 'root', 'root', '2009-11-23 18:18:27', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e436f74746167653c2f656e3e3c66723e4665726d657474653c2f66723e3c6e6c3e436f74746167653c2f6e6c3e3c72753ed09ad0bed182d0b5d0b4d0b63c2f72753e, 18, '', ''),
('11365480442009112318193143a111', '20', 'root', 'root', '2009-11-23 18:19:31', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e486f75736520286e6f74206d6f6465726e293c2f656e3e3c66723e4d6169736f6e2061757468656e74697175653c2f66723e3c6e6c3e5374656e656e20687569733c2f6e6c3e3c72753ed0a1d182d0b0d180d0b8d0bdd0bdd18bd0b920d0b4d0bed0bc3c2f72753e, 20, '', ''),
('1136548044200911231820148b1111', '21', 'root', 'root', '2009-11-23 18:20:14', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e4d6f6465726e20686f7573653c2f656e3e3c66723e4d6169736f6e206d6f6465726e653c2f66723e3c6e6c3e4d6f6465726e20687569733c2f6e6c3e3c72753ed09dd0bed0b2d18bd0b920d181d0bed0b2d180d0b5d0bcd0b5d0bdd0bdd18bd0b920d0b4d0bed0bc3c2f72753e, 22, '', ''),
('11365480442009112318205765p111', '22', 'root', 'root', '2009-11-23 18:20:57', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e576f6f64656e206368616c65743c2f656e3e3c66723e4368616c657420656e20626f69733c2f66723e3c6e6c3e486f7574656e206368616c65743c2f6e6c3e3c72753ed094d0b5d180d0b5d0b2d18fd0bdd0bdd18bd0b920d0b4d0bed0bc3c2f72753e, 24, '', ''),
('11365480442009112318214047u111', '23', 'root', 'root', '2009-11-23 18:21:40', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e486f757365207769746820677565737420686f7573653c2f656e3e3c66723e4d6169736f6e206176656320676974653c2f66723e3c6e6c3e48756973206d65742067617374656e20687569733c2f6e6c3e3c72753ed094d0bed0bc20d18120d0b4d0bed0bcd0bed0bc20d0b4d0bbd18f20d0b3d0bed181d182d0b5d0b93c2f72753e, 26, '', ''),
('11365480442009112318223644f111', '24', 'root', 'root', '2009-11-23 18:22:36', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e4571756573747269616e206661726d3c2f656e3e3c66723e4665726d6520c3a9717565737472653c2f66723e3c6e6c3e5061617264656e3c2f6e6c3e3c72753e4571756573747269616e206661726d3c2f72753e, 32, '', ''),
('1136548044200911231827341v1111', '25', 'root', 'root', '2009-11-23 18:27:34', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e4661726d202b203120686563746172653c2f656e3e3c66723e4665726d65202b203120686563746172653c2f66723e3c6e6c3e426f6572646572696a202b203120686563746172653c2f6e6c3e3c72753ed0a4d0b5d180d0bcd0b020d18120d0b3d0b5d0bad182d0b0d180d0bed0bc20d0b7d0b5d0bcd0bbd0b83c2f72753e, 30, '', ''),
('11365480442009112318285934o111', '26', 'root', 'root', '2009-11-23 18:28:59', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e4d696c6c3c2f656e3e3c66723e4d6f756c696e3c2f66723e3c6e6c3e4d6f6c656e3c2f6e6c3e3c72753ed09cd0b5d0bbd18cd0bdd0b8d186d0b03c2f72753e, 36, '', ''),
('11365480442009112318293027a111', '27', 'root', 'root', '2009-11-23 18:29:30', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e4368c3a2746561753c2f656e3e3c66723e4368c3a2746561753c2f66723e3c6e6c3e4b61737465656c3c2f6e6c3e3c72753e4368c3a2746561753c2f72753e, 38, '', ''),
('11365480442009112318302684x111', '28', 'root', 'root', '2009-11-23 18:30:26', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e4d616e6f69723c2f656e3e3c66723e4d616e6f69723c2f66723e3c6e6c3e4c616e6420487569733c2f6e6c3e3c72753e4d616e6f69723c2f72753e, 40, '', ''),
('11365480442009112318305925g111', '29', 'root', 'root', '2009-11-23 18:30:59', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e4d6169736f6e206465204d61c3ae7472653c2f656e3e3c66723e4d6169736f6e206465204d61c3ae7472653c2f66723e3c6e6c3e4e6f746172697320776f6e696e673c2f6e6c3e3c72753e4d6169736f6e206465204d61c3ae7472653c2f72753e, 42, '', ''),
('11365480442009112318315725m111', '30', 'root', 'root', '2009-11-23 18:31:57', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e436f6e73747275637469626c65206c616e643c2f656e3e3c66723e5465727261696e20617665632043553c2f66723e3c6e6c3e4265626f7577626172652067726f6e643c2f6e6c3e3c72753ed097d0b5d0bcd0bbd18f20d0bfd0be20d0b7d0b0d181d182d180d0bed0b9d0bad1833c2f72753e, 46, '', ''),
('11365480442009112318324419v111', '31', 'root', 'root', '2009-11-23 18:32:44', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e4c616b653c2f656e3e3c66723e4574616e673c2f66723e3c6e6c3e4d6565723c2f6e6c3e3c72753ed09ed0b7d0b5d180d0be3c2f72753e, 48, '', ''),
('11365480442009112318332749q111', '32', 'root', 'root', '2009-11-23 18:33:27', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e4669656c64733c2f656e3e3c66723e5072c3a8733c2f66723e3c6e6c3e56656c643c2f6e6c3e3c72753ed09fd0bed0bbd0b53c2f72753e, 50, '', ''),
('11365480442009112318340540m111', '33', 'root', 'root', '2009-11-23 18:34:05', '2009-11-23 18:35:59', 1, '11365480442009091221394225o111', 0x3c656e3e576f6f64733c2f656e3e3c66723e426f69733c2f66723e3c6e6c3e426f733c2f6e6c3e3c72753ed09bd0b5d1813c2f72753e, 52, '', ''),
('11365480442009112318363519h111', '34', 'root', 'root', '2009-11-23 18:36:35', '2009-11-23 18:36:35', 1, '11365480442009091221394225o111', 0x3c656e3e43616d70696e6720627573696e6573733c2f656e3e3c66723e43616d70696e673c2f66723e3c6e6c3e43616d70696e673c2f6e6c3e3c72753e43616d70696e673c2f72753e, 64, '', ''),
('11365480442009112318370716k111', '35', 'root', 'root', '2009-11-23 18:37:07', '2009-11-23 18:37:07', 1, '11365480442009091221394225o111', 0x3c656e3e42656420656e20427265616b66617374203c2f656e3e3c66723e4368616d6272652064e2809968c3b47465733c2f66723e3c6e6c3e42656420656e20427265616b666173743c2f6e6c3e3c72753e42656420656e20427265616b666173743c2f72753e, 66, '', ''),
('11365480442009112318382727u111', '36', 'root', 'root', '2009-11-23 18:38:27', '2009-11-23 18:38:27', 1, '11365480442009091221394225o111', 0x3c656e3e4368757263683c2f656e3e3c66723e45676c6973653c2f66723e3c6e6c3e4b65726b3c2f6e6c3e3c72753ed097d0b4d0b0d0bdd0b8d0b520d186d0b5d180d0bad0b2d0b83c2f72753e, 70, '', ''),
('11365480442009112318475861m111', 'townout', 'root', 'root', '2009-11-23 18:47:58', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', 0x3c656e3e4f7574736b69727473206f6620746f776e3c2f656e3e3c66723e5065726970686572792064652076696c6c653c2f66723e3c6e6c3e52616e642076616e20646520737461643c2f6e6c3e3c72753ed09fd180d0b8d0b3d0bed180d0bed0b43c2f72753e, 6, '', 'root/images/options/200911/20091123184758-h-t.gif'),
('11365480442009112318495643a111', 'villagedge', 'root', 'root', '2009-11-23 18:49:56', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', 0x3c656e3e45646765206f662076696c6c6167653c2f656e3e3c66723e50726f6368652064652076696c6c6167653c2f66723e3c6e6c3e52616e642076616e20646f72703c2f6e6c3e3c72753ed09dd0b020d0bad180d0b0d18e20d181d0b5d0bbd0b03c2f72753e, 10, '', 'root/images/options/200911/20091123184956-h-gr.gif'),
('11365480442009112318512098r111', 'hamlet', 'root', 'root', '2009-11-23 18:51:20', '2009-11-23 18:53:38', 1, '11365480442009111300243936o311', 0x3c656e3e48616d6c65743c2f656e3e3c66723e48616d6561753c2f66723e3c6e6c3e476568756368743c2f6e6c3e3c72753ed0a5d183d182d0bed1803c2f72753e, 12, '', 'root/images/options/200911/20091123185120-h-gr.gif'),
('11365480442010071900164063c111', 'N', 'root', 'bestmoments', '2010-07-19 00:16:40', '2010-09-16 14:52:27', 1, '11365480442010071900161159m111', 0x3c72753ed09dd0b5d1823c2f72753e3c656e3e4e6f3c2f656e3e, 2, '', ''),
('11365480442010071900165581w111', 'Y', 'root', 'bestmoments', '2010-07-19 00:16:55', '2010-09-16 14:52:27', 1, '11365480442010071900161159m111', 0x3c72753ed094d0b03c2f72753e3c656e3e5965733c2f656e3e, 6, '', ''),
('11365480442010051523292249e111', 'main-region', 'root', 'yachts', '2010-05-15 23:29:22', '2010-05-15 23:29:59', 1, '11365480442006051312071812l111', 0x3c72753ed09ed181d0bdd0bed0b2d0bdd0bed0b920d180d0b5d0b3d0b8d0bed0bd3c2f72753e3c656e3e4d61696e20726567696f6e3c2f656e3e3c3ed09ed181d0bdd0bed0b2d0bdd0bed0b920d180d0b5d0b3d0b8d0bed0bd3c2f3e, 2, '', ''),
('1136548044201005152329491u1111', 'sub-region', 'root', 'yachts', '2010-05-15 23:29:49', '2010-05-15 23:29:59', 1, '11365480442006051312071812l111', 0x3c72753ed092d0bdd183d182d180d0b5d0bdd0bdd0b8d0b920d180d0b5d0b3d0b8d0bed0bd3c2f72753e3c656e3e53756220726567696f6e3c2f656e3e3c3ed092d0bdd183d182d180d0b5d0bdd0bdd0b8d0b920d180d0b5d0b3d0b8d0bed0bd3c2f3e, 4, '', ''),
('11365480442010090712181259i111', '250', 'root', 'root', '2010-09-07 12:18:12', '2010-09-07 12:18:12', 1, '11365480442010090712165475i111', 0x3c72753e3235303c2f72753e3c656e3e3235303c2f656e3e, 16, '', ''),
('1136548044201009071218235a1111', '400', 'root', 'root', '2010-09-07 12:18:23', '2010-09-07 12:18:23', 1, '11365480442010090712165475i111', 0x3c72753e3430303c2f72753e3c656e3e3430303c2f656e3e, 14, '', ''),
('11365480442010090712183066h111', '600', 'root', 'root', '2010-09-07 12:18:30', '2010-09-07 12:18:30', 1, '11365480442010090712165475i111', 0x3c72753e3630303c2f72753e3c656e3e3630303c2f656e3e, 12, '', ''),
('11365480442010090712184546m111', '800', 'root', 'root', '2010-09-07 12:18:45', '2010-09-07 12:18:45', 1, '11365480442010090712165475i111', 0x3c72753e3830303c2f72753e3c656e3e3830303c2f656e3e, 10, '', ''),
('11365480442010090712185548u111', '1200', 'root', 'root', '2010-09-07 12:18:55', '2010-09-07 12:18:55', 1, '11365480442010090712165475i111', 0x3c72753e313230303c2f72753e3c656e3e313230303c2f656e3e, 8, '', ''),
('1136548044201009071219054q1111', '1500', 'root', 'root', '2010-09-07 12:19:05', '2010-09-07 12:19:05', 1, '11365480442010090712165475i111', 0x3c72753e313530303c2f72753e3c656e3e313530303c2f656e3e, 6, '', ''),
('11365480442010090712191547l111', '2000', 'root', 'root', '2010-09-07 12:19:15', '2010-09-07 12:19:15', 1, '11365480442010090712165475i111', 0x3c72753e323030303c2f72753e3c656e3e323030303c2f656e3e, 4, '', ''),
('1136548044201009071219240h1111', '4000', 'root', 'root', '2010-09-07 12:19:24', '2010-09-07 12:19:24', 1, '11365480442010090712165475i111', 0x3c72753e343030303c2f72753e3c656e3e343030303c2f656e3e, 2, '', ''),
('11365480442010091411190091o111', 'NFP', 'root', 'bestmoments', '2010-09-14 11:19:00', '2010-09-16 14:52:27', 1, '11365480442010071900161159m111', 0x3c72753ed09dd0b520d0bfd0bed0bbd0bdd0bed181d182d18cd18e3c2f72753e3c656e3ed0bdd0b520d0bfd0bed0bbd0bdd0bed181d182d18cd18e2e3c2f656e3e, 4, '', ''),
('11365480442010101812124535w111', 'Y', 'root', 'bestmoments', '2010-10-18 12:12:45', '2010-10-18 12:12:45', 1, '11365480442010101812123259x111', 0x3c72753ed094d0b03c2f72753e3c656e3ed094d0b03c2f656e3e, 2, '', ''),
('11365480442010101812125773c111', 'N', 'root', 'bestmoments', '2010-10-18 12:12:57', '2010-10-18 12:12:57', 1, '11365480442010101812123259x111', 0x3c72753ed09dd0b5d1823c2f72753e3c656e3ed09dd0b5d1823c2f656e3e, 4, '', ''),
('11365480442010120103260284r111', '3', 'root', 'bestmoments', '2010-12-01 03:26:02', '2010-12-01 03:26:02', 1, '11365480442010120103255198c111', 0x3c72753e33253c2f72753e3c656e3e33253c2f656e3e, 2, '', ''),
('11365480442010120103260797v111', '5', 'root', 'bestmoments', '2010-12-01 03:26:07', '2010-12-01 03:26:07', 1, '11365480442010120103255198c111', 0x3c72753e35253c2f72753e3c656e3e35253c2f656e3e, 4, '', ''),
('11365480442010120103261756m111', '7', 'root', 'bestmoments', '2010-12-01 03:26:17', '2010-12-01 03:26:17', 1, '11365480442010120103255198c111', 0x3c72753e37253c2f72753e3c656e3e37253c2f656e3e, 6, '', ''),
('1136548044201012010326329n1111', '10', 'root', 'bestmoments', '2010-12-01 03:26:32', '2010-12-01 03:26:32', 1, '11365480442010120103255198c111', 0x3c72753e3130253c2f72753e3c656e3e3130253c2f656e3e, 8, '', ''),
('11365480442010120103264652h111', '15', 'root', 'bestmoments', '2010-12-01 03:26:46', '2010-12-01 03:26:46', 1, '11365480442010120103255198c111', 0x3c72753e3135253c2f72753e3c656e3e3135253c2f656e3e, 10, '', ''),
('11365480442010120103265625x111', '20', 'root', 'bestmoments', '2010-12-01 03:26:56', '2010-12-01 03:26:56', 1, '11365480442010120103255198c111', 0x3c72753e3230253c2f72753e3c656e3e3230253c2f656e3e, 12, '', ''),
('11365480442011052517413993f111', '1', 'root', 'rai', '2011-05-25 17:41:39', '2011-05-25 17:41:39', 1, '11365480442011052517413210c111', 0x3c72753e313c2f72753e3c656e3e313c2f656e3e, 2, '', ''),
('11365480442011052517414162i111', '2', 'root', 'rai', '2011-05-25 17:41:41', '2011-05-25 17:41:41', 1, '11365480442011052517413210c111', 0x3c72753e323c2f72753e3c656e3e323c2f656e3e, 4, '', ''),
('11365480442011052517414581n111', '3', 'root', 'rai', '2011-05-25 17:41:45', '2011-05-25 17:41:45', 1, '11365480442011052517413210c111', 0x3c72753e333c2f72753e3c656e3e333c2f656e3e, 6, '', ''),
('11365480442011052517415013b111', '4', 'root', 'rai', '2011-05-25 17:41:50', '2011-05-25 17:41:50', 1, '11365480442011052517413210c111', 0x3c72753e343c2f72753e3c656e3e343c2f656e3e, 8, '', ''),
('11365480442011052517420022c111', '5', 'root', 'rai', '2011-05-25 17:42:00', '2011-05-25 17:42:00', 1, '11365480442011052517413210c111', 0x3c72753e353c2f72753e3c656e3e353c2f656e3e, 10, '', ''),
('11365480442011052517421181w111', '6', 'root', 'rai', '2011-05-25 17:42:11', '2011-05-25 17:42:11', 1, '11365480442011052517413210c111', 0x3c72753e352044656c7578653c2f72753e3c656e3e352044656c7578653c2f656e3e, 12, '', ''),
('11365480442011061123495144i111', '1', 'root', 'rai', '2011-06-11 23:49:51', '2011-06-11 23:49:51', 1, '11365480442011061123493641v111', 0x3c72753ed09dd0bed0b2d18bd0b93c2f72753e3c656e3ed09dd0bed0b2d18bd0b93c2f656e3e, 2, '', ''),
('1136548044201106112350019z1111', '2', 'root', 'rai', '2011-06-11 23:50:01', '2011-06-11 23:50:01', 1, '11365480442011061123493641v111', 0x3c72753ed09220d0bed0b1d180d0b0d0b1d0bed182d0bad0b53c2f72753e3c656e3ed09220d0bed0b1d180d0b0d0b1d0bed182d0bad0b53c2f656e3e, 4, '', ''),
('11365480442011061123503188w111', '3', 'root', 'rai', '2011-06-11 23:50:31', '2011-06-11 23:50:31', 1, '11365480442011061123493641v111', 0x3c72753ed09ed0b1d180d0b0d0b1d0bed182d0b0d0bd3c2f72753e3c656e3ed09ed0b1d180d0b0d0b1d0bed182d0b0d0bd3c2f656e3e, 6, '', ''),
('11365480442011061123504036d111', '4', 'root', 'rai', '2011-06-11 23:50:40', '2011-06-11 23:50:40', 1, '11365480442011061123493641v111', 0x3c72753ed09ed182d0bcd0b5d0bdd0b5d0bd3c2f72753e3c656e3ed09ed182d0bcd0b5d0bdd0b5d0bd3c2f656e3e, 8, '', ''),
('1136548044201112241434110u1111', 'almira', 'root', 'ksport', '2011-12-24 14:34:11', '2011-12-24 14:34:11', 1, '11365480442007100323430210j111', 0x3c72753ed090d0bbd0bcd0b8d180d0b020d0b3d180d183d0bf3c2f72753e3c656e3ed090d0bbd0bcd0b8d180d0b020d0b3d180d183d0bf3c2f656e3e, 4, '', ''),
('11365480442012050515225934b111', 'UAH', 'root', 'ksport', '2012-05-05 15:22:59', '2012-05-05 15:22:59', 1, '11365480442006050103522987r111', 0x3c72753ed0b3d180d0bd3c2f72753e3c656e3ed0b3d180d0bd3c2f656e3e, 2, '', ''),
('11365480442012071709202969o111', 'lemberg', 'root', 'ksport', '2012-07-17 09:20:29', '2012-07-17 09:20:29', 1, '11365480442007100323430210j111', 0x3c72753e6c656d62657267636f6163683c2f72753e3c656e3e6c656d62657267636f6163683c2f656e3e, 2, '', ''),
('11365480442012101117474644l111', '12', 'root', 'ksport', '2012-10-11 17:47:46', '2012-10-11 17:47:46', 1, '11365480442012101117472373h111', 0x3c72753e4c656d62657267203132206d3c2f72753e3c656e3e4c656d62657267203132206d3c2f656e3e, 4, '', ''),
('11365480442012101117475785g111', '10', 'root', 'ksport', '2012-10-11 17:47:57', '2012-10-11 17:47:57', 1, '11365480442012101117472373h111', 0x3c72753e4c656d62657267203130206d3c2f72753e3c656e3e4c656d62657267203130206d3c2f656e3e, 2, '', '');

-- --------------------------------------------------------

--
-- Структура таблиці `section`
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
-- Дамп даних таблиці `section`
--

INSERT INTO `section` (`id`, `hidden`, `inMenu`, `alias`, `OwnerID`, `UserID`, `timeCreated`, `timeSaved`, `type`, `languages`, `parentID`, `groupID`, `layout`, `box`, `boxStyle`, `accessGroups`, `arguments`, `link`, `target`, `name`, `title`, `description`, `keywords`, `position`, `introContent`, `content`, `clicks`, `viewOptions`, `controller`, `action`, `view`, `url`, `rout`, `homepage`, `styleMenu`) VALUES
(1, 0, 0, 'home', 1, 1, '0000-00-00 00:00:00', '2014-08-05 10:33:10', 'admin', '', '0', '1', '', '', '', NULL, NULL, NULL, NULL, 0x686f6d65, NULL, NULL, NULL, NULL, '', '', 0, '', 'home', 'index', '', '', '', 0, NULL),
(2, 0, 0, 'login', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 0x6c6f67696e, NULL, NULL, NULL, NULL, '', '', 0, '', 'home', 'login', '', '', '', 0, NULL),
(10, 0, 0, 'owner', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 0x6f776e6572, NULL, NULL, NULL, NULL, '', '', 0, '', 'owner', 'index', '', 'owner', '', 0, NULL),
(11, 0, 1, 'manager', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', '', '10', '', '', '', '', NULL, NULL, NULL, NULL, 0x4f776e6572206d616e616765722028456469742f41646429, NULL, NULL, NULL, NULL, '', '', 0, '', 'owner', 'manager', '', 'owner/manager', '', 0, NULL),
(12, 0, 0, 'section', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 0x53656374696f6e, NULL, NULL, NULL, NULL, '', '', 0, '', 'section', 'index', '', 'section', '', 0, NULL),
(13, 0, 1, 'manager', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', '', '12', '', '', '', '', NULL, NULL, NULL, NULL, 0x53656374696f6e73206d616e616765722028456469742f41646429, NULL, NULL, NULL, NULL, '', '', 0, '', 'section', 'manager', '', 'section/manager', '', 0, NULL),
(15, 0, 1, 'delete', 1, 1, '2014-01-28 15:55:43', '0000-00-00 00:00:00', 'admin', '', '10', '', '', '', '', NULL, NULL, NULL, NULL, 0x44656c657465, NULL, NULL, NULL, NULL, '', '', 0, '', 'owner', 'delete', 'index', 'owner/delete', NULL, 0, NULL),
(16, 0, 1, 'delete', 1, 1, '2014-01-28 16:23:23', '0000-00-00 00:00:00', 'admin', '', '12', '', '', '', '', NULL, NULL, NULL, NULL, 0x44656c657465, NULL, NULL, NULL, NULL, '', '', 0, '', 'section', 'delete', 'index', 'section/delete', NULL, 0, NULL),
(21, 0, 0, 'cats', 1, 1, '2014-01-31 17:28:20', '0000-00-00 00:00:00', 'admin', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 0x43617473, NULL, NULL, NULL, NULL, '', '', 0, '', 'cats', 'index', 'index', 'cats', NULL, 0, NULL),
(22, 0, 1, 'manager', 1, 1, '2014-01-31 18:04:42', '0000-00-00 00:00:00', 'admin', '', '21', '', '', '', '', NULL, NULL, NULL, NULL, 0x43617473206d616e616765722028456469742f41646429, NULL, NULL, NULL, NULL, '', '', 0, '', 'cats', 'manager', 'index', 'cats/manager', NULL, 0, NULL),
(25, 0, 1, 'delete', 1, 1, '2014-02-01 18:29:10', '0000-00-00 00:00:00', 'admin', '', '21', '', '', '', '', NULL, NULL, NULL, NULL, 0x44656c657465, NULL, NULL, NULL, NULL, '', '', 0, '', 'cats', 'delete', 'index', 'cats/delete', NULL, 0, NULL),
(26, 0, 0, 'post', 1, 1, '2014-02-01 18:42:28', '0000-00-00 00:00:00', 'admin', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 0x506f7374, NULL, NULL, NULL, NULL, '', '', 0, '', 'post', 'index', 'index', 'post', NULL, 0, NULL),
(27, 0, 1, 'manager', 1, 1, '2014-02-01 18:47:11', '0000-00-00 00:00:00', 'admin', '', '26', '', '', '', '', NULL, NULL, NULL, NULL, 0x506f7374206d616e616765722028456469742f41646429, NULL, NULL, NULL, NULL, '', '', 0, '', 'post', 'manager', 'index', 'post/manager', NULL, 0, NULL),
(29, 0, 1, 'delete', 1, 1, '2014-02-01 18:52:30', '0000-00-00 00:00:00', 'admin', '', '26', '', '', '', '', NULL, NULL, NULL, NULL, 0x44656c657465, NULL, NULL, NULL, NULL, '', '', 0, '', 'post', 'delete', 'index', 'post/delete', NULL, 0, NULL),
(30, 0, 0, 'users', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 0x5573657273, 0x5573657273, NULL, NULL, NULL, '', '', 0, '', 'users', 'index', 'index', 'users', NULL, 0, NULL),
(33, 0, 1, 'post', 1, 1, '2014-02-21 17:44:00', '2014-02-27 10:31:20', 'front', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 0x706f7374, NULL, NULL, NULL, NULL, '', '', 0, '', 'post', 'index', 'index', 'post', NULL, 0, NULL),
(34, 0, 1, 'manager', 1, 1, '2014-02-25 15:40:49', '0000-00-00 00:00:00', 'admin', '', '30', '', '', '', '', NULL, NULL, NULL, NULL, 0x55736572206d616e616765722028456469742f41646429, NULL, NULL, NULL, NULL, '', '', 0, '', 'users', 'manager', 'index', 'users/manager', NULL, 0, NULL),
(35, 1, 0, 'user', 1, 1, '2014-02-27 09:32:52', '2015-05-16 08:40:47', 'front', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 0x55736572, NULL, NULL, NULL, NULL, '', '', 0, '', 'user', 'index', 'index', 'user', NULL, 0, NULL),
(36, 0, 0, 'sgroup', 1, 1, '2014-03-11 19:13:20', '0000-00-00 00:00:00', 'admin', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 0xd09cd0b5d0bdd18e, NULL, NULL, NULL, NULL, '', '', 0, '', 'sgroup', 'index', 'index', 'sgroup', NULL, 0, NULL),
(37, 0, 1, 'manager', 1, 1, '2014-03-11 20:11:33', '2014-03-11 23:15:05', 'admin', '', '36', '', '', '', '', NULL, NULL, NULL, NULL, 0x4d616e616765722053656374696f6e2047726f7570, NULL, NULL, NULL, NULL, '', '', 0, '', 'sgroup', 'manager', 'index', 'sgroup/manager', NULL, 0, NULL),
(38, 0, 1, 'delete', 1, 1, '2014-03-11 20:51:27', '2014-03-11 23:14:48', 'admin', '', '36', '', '', '', '', NULL, NULL, NULL, NULL, 0x44656c657465, NULL, NULL, NULL, NULL, '', '', 0, '', 'sgroup', 'delete', 'index', 'sgroup/delete', NULL, 0, NULL),
(39, 0, 0, 'usergroup', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', '', '30', '', '', '', '', NULL, NULL, NULL, NULL, 0x557365722047726f7570, 0x557365722047726f7570, 0x557365722047726f7570, 0x557365722047726f7570, NULL, 0x557365722047726f7570, 0x557365722047726f7570, 0, '', 'usergroup', 'listing', 'index', 'usergroup', NULL, 0, NULL),
(40, 0, 1, 'manager', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', '', '30', '', '', '', '', NULL, NULL, NULL, NULL, 0x557365722047726f7570204d616e61676572, NULL, NULL, NULL, NULL, '', '', 0, '', 'usergroup', 'manager', 'index', 'usergroup/manager', NULL, 0, NULL),
(41, 0, 1, 'delete', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '30', '', '', '', '', NULL, NULL, NULL, NULL, 0x557365722047726f75702044656c657465, NULL, NULL, NULL, NULL, '', '', 0, '', 'usergroup', 'delete', 'index', 'usergroup/delete', NULL, 0, NULL),
(42, 1, 1, 'ajax', 1, 1, '2014-08-01 22:15:01', '2014-08-04 16:24:16', 'admin', '', '12', '', '', '', '', NULL, NULL, NULL, NULL, 0x616a6178, NULL, NULL, NULL, NULL, '', '', 0, '', 'section', 'ajax', 'index', 'section/ajax', NULL, 0, NULL),
(46, 0, 1, 'ajax', 1, 1, '2014-08-06 16:01:15', '2014-08-06 16:02:02', 'admin', '', '12', '', '', '', '', NULL, NULL, NULL, NULL, 0x53656374696f6e20416a6178, NULL, NULL, NULL, NULL, 0x3c703e53656374696f6e20416a61783c2f703e, 0x3c703e53656374696f6e20416a61783c2f703e, 0, '', 'section', 'ajax', 'index', 'section/ajax', NULL, 0, NULL),
(47, 0, 0, 'products', 1, 1, '2015-05-15 09:34:00', '0000-00-00 00:00:00', 'admin', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 0x70726f6475637473, NULL, NULL, NULL, NULL, 0x70726f6475637473, 0x70726f6475637473, 0, '', 'products', 'list', 'index', 'products', NULL, 0, NULL),
(48, 0, 0, 'manager', 1, 1, '2015-05-15 09:59:27', '0000-00-00 00:00:00', 'admin', '', '47', '', '', '', '', NULL, NULL, NULL, NULL, 0x4d616e6167657220284164642f4564697429, NULL, NULL, NULL, NULL, 0x4d616e6167657220284164642f4564697429, 0x4d616e6167657220284164642f4564697429, 0, '', 'products', 'manager', 'index', 'products/manager', NULL, 0, NULL),
(49, 0, 0, 'category', 1, 1, '2015-05-15 10:00:15', '0000-00-00 00:00:00', 'admin', '', '47', '', '', '', '', NULL, NULL, NULL, NULL, 0x63617465676f7279, NULL, NULL, NULL, NULL, 0x63617465676f7279, 0x63617465676f7279, 0, '', 'productsCategory', 'list', 'index', 'products/categories', NULL, 0, NULL),
(50, 0, 0, 'manager', 1, 1, '2015-05-15 10:01:49', '0000-00-00 00:00:00', 'admin', '', '47', '', '', '', '', NULL, NULL, NULL, NULL, 0x6d616e61676572, NULL, NULL, NULL, NULL, 0x6d616e61676572, 0x6d616e61676572, 0, '', 'productsCategory', 'manager', 'index', 'products/categories/manager', NULL, 0, NULL),
(51, 0, 0, 'videonablyudenie', 1, 1, '2015-05-16 08:43:59', '0000-00-00 00:00:00', 'front', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, 0xd092d0b8d0b4d0b5d0bed0bdd0b0d0b1d0bbd18ed0b4d0b5d0bdd0b8d0b5, NULL, NULL, NULL, NULL, 0x766964656f6e61626c797564656e6965, 0x766964656f6e61626c797564656e6965, 0, '', 'home', 'content', 'index', 'videonablyudenie', NULL, 0, NULL),
(52, 0, 0, 'about', 1, 1, '2015-05-16 09:58:42', '0000-00-00 00:00:00', 'front', '', '51', '', '', '', '', NULL, NULL, NULL, NULL, 0x41626f7574, NULL, NULL, NULL, NULL, 0x41626f7574, 0x41626f7574, 0, '', 'home', 'content', 'index', 'videonablyudenie/about', NULL, 0, NULL),
(53, 0, 0, 'cat1', 1, 1, '2015-05-16 18:57:53', '0000-00-00 00:00:00', 'front', '', '51', '', '', '', '', NULL, NULL, NULL, NULL, 0x63617431, NULL, NULL, NULL, NULL, 0x63617431, 0x63617431, 0, '', 'category', 'index', 'index', 'videonablyudenie/cat1', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `sectiongroup`
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
-- Дамп даних таблиці `sectiongroup`
--

INSERT INTO `sectiongroup` (`id`, `code`, `OwnerID`, `UserID`, `hidden`, `timeCreated`, `timeSaved`, `name`, `accessGroups`, `type`, `position`, `module`, `viewOptions`) VALUES
(1, 'main', '', '1', 0, '0000-00-00 00:00:00', '2008-04-30 13:36:32', 0x3c656e3e4c656674206d656e753c2f656e3e3c66723e4c656674206d656e753c2f66723e, '|root|admin|content|owner|', 'layout', 10, 'core', ''),
(2, 'top', '', '1', 0, '0000-00-00 00:00:00', '2010-06-20 21:00:52', 0x3c75613e546f70206d656e753c2f75613e3c72753e546f70206d656e753c2f72753e3c75733e546f70206d656e753c2f75733e3c656e3e546f70206d656e753c2f656e3e, '|root|admin|content|owner|', 'menu', 8, 'core', '|allowners|virtual|'),
(3, 'bottom', '', '1', 0, '0000-00-00 00:00:00', '2010-06-20 21:04:59', 0x3c75613e426f74746f6d206d656e753c2f75613e3c72753e426f74746f6d206d656e753c2f72753e3c75733e426f74746f6d206d656e753c2f75733e3c656e3e426f74746f6d206d656e753c2f656e3e, '|root|admin|content|owner|', 'menu', 16, 'core', '|allowners|');

-- --------------------------------------------------------

--
-- Структура таблиці `sessions`
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
-- Дамп даних таблиці `sessions`
--

INSERT INTO `sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('f2fb603c977b0356d6384d925c757b1e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 1431791852, 'a:9:{s:10:"session_id";s:32:"f2fb603c977b0356d6384d925c757b1e";s:10:"ip_address";s:9:"127.0.0.1";s:10:"user_agent";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36";s:13:"last_activity";i:1431791852;s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"login";s:4:"root";s:5:"email";s:14:"root@gmail.com";s:8:"validate";b:1;}');

-- --------------------------------------------------------

--
-- Структура таблиці `setting`
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
-- Дамп даних таблиці `setting`
--

INSERT INTO `setting` (`id`, `OwnerID`, `UserID`, `timeCreated`, `timeSaved`, `module`, `group`, `variableName`, `value`, `name`, `valueType`, `valueOptions`, `type`, `reference`, `position`, `description`, `sectionID`, `boxID`) VALUES
('1', 'root', '1', '0000-00-00 00:00:00', '2010-07-04 21:43:18', '', '1', 'SiteName', 0x3c72753e42657374204d6f6d656e74733c2f72753e3c656e3e42657374204d6f6d656e74733c2f656e3e, 0x3c656e3e57656273697465206e616d653c2f656e3e3c66723e57656273697465206e616d653c2f66723e, 'text', '', 'editable', '', 2, 0x3c656e3e5765622073697465206e616d65207573656420696e207469746c657320616e6420656d61696c733c2f656e3e3c66723e5765622073697465206e616d65207573656420696e207469746c657320616e6420656d61696c733c2f66723e, '', ''),
('2', 'root', '11365480442006050104523652y111', '0000-00-00 00:00:00', '2010-07-04 21:43:18', '', '1', 'SiteTitle', 0x3c72753e42657374204d6f6d656e74733c2f72753e3c656e3e42657374204d6f6d656e74733c2f656e3e, 0x3c656e3e57656273697465207469746c653c2f656e3e3c66723e57656273697465207469746c653c2f66723e, 'text', '', 'editable', '', 16, 0x3c656e3e5469746c65207573656420666f722073656172636820656e67696e65733c2f656e3e3c66723e5469746c65207573656420666f722073656172636820656e67696e65733c2f66723e, '', ''),
('11365480442007100616255168o111', 'root', 'root', '2007-10-06 16:25:51', '2010-07-04 21:43:18', '', '1', 'SettingAdCode1', '', 0x3c656e3e416420636f646520313c2f656e3e3c72753e416420636f646520313c2f72753e, 'text', '', 'editable', '', 64, '', '', ''),
('11365480442006090916544653q111', 'root', 'root', '2006-09-09 16:54:46', '2010-07-04 21:43:18', '', '1', 'lang', 0x7275, 0x3c656e3e44656661756c74206c616e67756167653c2f656e3e3c72753e44656661756c74206c616e67756167653c2f72753e, 'input', '', 'editable', '', 54, '', '', ''),
('97', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'ColumnHeaderActivation', 0x4e, 0x3c656e3e41726520636f6c756d6e73206865616465727320616e6420666f6f74657273206163746976653f3c2f656e3e3c66723e41726520636f6c756d6e73206865616465727320616e6420666f6f74657273206163746976653f3c2f66723e, 'dropdown', '', 'editable', 'YesNo', 14, '', '', ''),
('7', 'root', '11365480442006050104523652y111', '0000-00-00 00:00:00', '2009-09-17 01:41:24', '', '7', 'currency', 0x45555220266575726f3b, 0x3c66723e4575726f3c2f66723e3c656e3e4575726f3c2f656e3e, 'money', '', 'editable', '', 1, 0x3c66723e4575726f3c2f66723e3c656e3e4575726f3c2f656e3e, '', ''),
('8', 'root', '11365480442006050104523652y111', '0000-00-00 00:00:00', '2009-12-28 13:58:46', '', '7', 'DefaultStyle', 0x7374796c6531, 0x3c66723e44656661756c74207374796c653c2f66723e3c656e3e44656661756c74207374796c653c2f656e3e, 'dropdown', 0x7374796c65317c5374796c6520313b0d0a7374796c65327c5374796c6520323b, 'editable', '', 29, '', '', ''),
('9', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column1Width', 0x323030, 0x3c66723e436f6c756d6e20312077696474683c2f66723e, 'input', '', 'editable', '', 24, '', '', ''),
('10', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column2Width', 0x353734, 0x3c66723e436f6c756d6e20322077696474683c2f66723e, 'input', '', 'editable', '', 26, '', '', ''),
('11', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column3Width', 0x323030, 0x3c66723e436f6c756d6e20332077696474683c2f66723e, 'input', '', 'editable', '', 28, '', '', ''),
('12', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Gap1Width', 0x3130, 0x3c66723e47617020312077696474683c2f66723e, 'input', '', 'editable', '', 30, '', '', ''),
('13', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Gap2Width', 0x3130, 0x3c66723e47617020322077696474683c2f66723e, 'input', '', 'editable', '', 32, '', '', ''),
('14', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.MainTableWidth', 0x393934, 0x3c66723e4d61696e207461626c652077696474683c2f66723e, 'input', '', 'editable', '', 34, '', '', ''),
('15', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.PageColor', 0x23464646464646, 0x3c66723e5061676520636f6c6f723c2f66723e, 'color', '', 'editable', '', 40, '', '', ''),
('16', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.PageBackground', '', 0x3c66723e50616765206261636b67726f756e643c2f66723e, 'image', '', 'editable', '', 42, '', '', ''),
('17', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TitleFont', 0x56657264616e61, 0x3c66723e5469746c6520466f6e742046616d696c793c2f66723e, 'dropdown', '', 'editable', 'fonts', 62, '', '', ''),
('22', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.SubTitleFont', 0x56657264616e61, 0x3c66723e5375627469746c6520666f6e742066616d696c793c2f66723e, 'dropdown', '', 'editable', 'fonts', 72, '', '', ''),
('18', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TitleColor', 0x23303030303030, 0x3c66723e5469746c6520636f6c6f723c2f66723e, 'color', '', 'editable', '', 64, '', '', ''),
('19', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TitleSize', 0x3134, 0x3c66723e5469746c652073697a653c2f66723e, 'dropdown', '', 'editable', 'fontsizes', 66, '', '', ''),
('20', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TitleStyle', 0x6e6f726d616c, 0x3c66723e5469746c65207374796c653c2f66723e, 'dropdown', '', 'editable', 'fontstyles', 68, '', '', ''),
('21', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TitleWeight', 0x626f6c64, 0x3c66723e5469746c65207765696768743c2f66723e, 'dropdown', '', 'editable', 'fontweights', 70, '', '', ''),
('23', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.LinkColor', 0x23303036363939, 0x3c66723e4c696e6b20636f6c6f723c2f66723e, 'color', '', 'editable', '', 54, '', '', ''),
('24', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.LinkHoverColor', 0x23434330303030, 0x3c66723e4c696e6b2077697468206d6f757365206f76657220636f6c6f723c2f66723e, 'color', '', 'editable', '', 58, '', '', ''),
('25', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.SubTitleColor', 0x23303639, 0x3c66723e5375627469746c6520636f6c6f723c2f66723e, 'color', '', 'editable', '', 74, '', '', ''),
('26', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.SubTitleSize', 0x3132, 0x3c66723e5375627469746c652073697a653c2f66723e, 'dropdown', '', 'editable', 'fontsizes', 76, '', '', ''),
('27', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.SubTitleStyle', 0x6e6f726d616c, 0x3c66723e5375627469746c65207374796c653c2f66723e, 'dropdown', '', 'editable', 'fontstyles', 78, '', '', ''),
('28', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.SubTitleWeight', 0x6e6f726d616c, 0x3c66723e5375627469746c65207765696768743c2f66723e, 'dropdown', '', 'editable', 'fontweights', 80, '', '', ''),
('29', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TextFont', 0x56657264616e61, 0x3c66723e5465787420666f6e742066616d696c793c2f66723e, 'dropdown', '', 'editable', 'fonts', 44, '', '', ''),
('30', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TextColor', 0x23303030303030, 0x3c66723e5465787420636f6c6f723c2f66723e, 'color', '', 'editable', '', 46, '', '', ''),
('31', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TextSize', 0x3131, 0x3c66723e546578742073697a653c2f66723e, 'dropdown', '', 'editable', 'fontsizes', 48, '', '', ''),
('32', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TextStyle', 0x6e6f726d616c, 0x3c66723e54657874207374796c653c2f66723e, 'dropdown', '', 'editable', 'fontstyles', 50, '', '', ''),
('33', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.TextWeight', 0x6e6f726d616c, 0x3c66723e54657874207765696768743c2f66723e, 'dropdown', '', 'editable', 'fontweights', 52, '', '', ''),
('34', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.LinkDecoration', 0x6e6f6e65, 0x3c66723e4c696e6b206465636f726174696f6e3c2f66723e, 'dropdown', '', 'editable', 'fontdecorations', 56, '', '', ''),
('35', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.LinkHoverDecoration', 0x6e6f6e65, 0x3c66723e4d6f757365206f766572206c696e6b206465636f726174696f6e3c2f66723e, 'dropdown', '', 'editable', 'fontdecorations', 60, '', '', ''),
('36', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.BoxHeaderFont', 0x56657264616e61, 0x3c66723e426f782068656164657220666f6e742066616d696c793c2f66723e, 'dropdown', '', 'editable', 'fonts', 86, '', '', ''),
('37', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.BoxHeaderColor', 0x23464646464646, 0x3c66723e426f7820686561646572207465787420636f6c6f723c2f66723e, 'color', '', 'editable', '', 88, '', '', ''),
('38', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.BoxHeaderSize', 0x3133, 0x3c66723e426f782068656164657220746578742073697a653c2f66723e, 'dropdown', '', 'editable', 'fontsizes', 90, '', '', ''),
('39', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.BoxHeaderStyle', 0x6e6f726d616c, 0x3c66723e426f78206865616465722074657874207374796c653c2f66723e, 'dropdown', '', 'editable', 'fontstyles', 92, '', '', ''),
('40', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.BoxHeaderWeight', 0x626f6c64, 0x3c66723e426f78206865616465722074657874207765696768743c2f66723e, 'dropdown', '', 'editable', 'fontweights', 94, '', '', ''),
('41', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column1HeaderImage', '', 0x3c66723e436f6c756d6e312048656164657220496d6167653c2f66723e, 'image', '', 'editable', '', 102, '', '', ''),
('43', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column2HeaderImage', '', 0x3c66723e436f6c756d6e322048656164657220496d6167653c2f66723e, 'image', '', 'editable', '', 104, '', '', ''),
('46', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column3HeaderImage', '', 0x3c66723e436f6c756d6e332048656164657220496d6167653c2f66723e, 'image', '', 'editable', '', 106, '', '', ''),
('47', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column1FooterImage', '', 0x3c66723e436f6c756d6e3120466f6f74657220496d6167653c2f66723e, 'image', '', 'editable', '', 108, '', '', ''),
('48', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column2FooterImage', '', 0x3c66723e436f6c756d6e32466f6f746572496d6167653c2f66723e, 'image', '', 'editable', '', 110, '', '', ''),
('49', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column3FooterImage', '', 0x3c66723e436f6c756d6e33466f6f746572496d6167653c2f66723e, 'image', '', 'editable', '', 112, '', '', ''),
('64', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.ColumnBorderColor', 0x23353035303530, 0x3c66723e436f6c756d6e7320426f7264657220436f6c6f723c2f66723e, 'color', '', 'editable', '', 100, '', '', ''),
('51', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.PageFooterHTML', '', 0x3c66723e5061676520466f6f7465722048544d4c3c2f66723e, 'text', '', 'editable', '', 6, '', '', ''),
('52', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.PageHeaderImage', NULL, 0x3c66723e506167652048656164657220496d6167653c2f66723e, 'image', '', 'editable', '', 4, '', '', ''),
('53', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.PageFooterImage', NULL, 0x3c66723e5061676520466f6f74657220496d6167653c2f66723e, 'image', '', 'editable', '', 8, '', '', ''),
('54', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column1HeaderColor', 0x23453045304530, 0x3c66723e436f6c756d6e312048656164657220436f6c6f723c2f66723e, 'color', '', 'editable', '', 114, '', '', ''),
('55', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column2HeaderColor', 0x23453045304530, 0x3c66723e436f6c756d6e322048656164657220436f6c6f723c2f66723e, 'color', '', 'editable', '', 116, '', '', ''),
('56', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column3HeaderColor', 0x23453045304530, 0x3c66723e436f6c756d6e332048656164657220436f6c6f723c2f66723e, 'color', '', 'editable', '', 118, '', '', ''),
('57', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column1FooterColor', 0x23453045304530, 0x3c66723e436f6c756d6e3120466f6f74657220436f6c6f723c2f66723e, 'color', '', 'editable', '', 120, '', '', ''),
('58', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column2FooterColor', 0x23453045304530, 0x3c66723e436f6c756d6e3220466f6f74657220436f6c6f723c2f66723e, 'color', '', 'editable', '', 122, '', '', ''),
('59', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column3FooterColor', 0x23453045304530, 0x3c66723e436f6c756d6e3320466f6f74657220436f6c6f723c2f66723e, 'color', '', 'editable', '', 124, '', '', ''),
('60', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.MainTableBackgroundImage', '', 0x3c66723e4d61696e205461626c65204261636b67726f756e6420496d6167653c2f66723e, 'image', '', 'editable', '', 36, '', '', ''),
('61', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.MainTableBackgroundColor', 0x23464646464646, 0x3c66723e4d61696e205461626c65204261636b67726f756e6420436f6c6f723c2f66723e, 'color', '', 'editable', '', 38, '', '', ''),
('63', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.PageHeaderHTML', '', 0x3c66723e50616765204865616465722048544d4c3c2f66723e, 'text', '', 'editable', '', 2, '', '', ''),
('93', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'NoImageIcon', 0x726f6f742f696d616765732f73657474696e67732f32303036303432313138323230332d6e6f696d6167652e676966, 0x3c656e3e4e6f20696d6167652069636f6e3c2f656e3e3c66723e4e6f20696d6167652069636f6e3c2f66723e, 'image', '', 'editable', '', 22, '', '', ''),
('94', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'BiddingOfferFields', 0x7c207c626964737c6d696e6269647c6d61786269647c717569636b70726963657c65787069726174696f6e7c, 0x3c656e3e42696464696e67206f66666572206669656c64732061637469766174696f6e3c2f656e3e3c66723e42696464696e67206f66666572206669656c64732061637469766174696f6e3c2f66723e, 'checkboxes', 0x626964737c4e756d626572206f662070726f706f73616c733b0d0a6d696e6269647c4d696e696d756d20616d6f756e742070726f706f7365643b0d0a6d61786269647c4d6178696d756d20616d6f756e742070726f706f7365643b0d0a717569636b70726963657c517569636b73616c652070726963653b0d0a65787069726174696f6e7c45787069726174696f6e20646174652f74696d653b, 'editable', '', 2, '', '', ''),
('95', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '9', 'SessionUseLoginForRegistration', 0x59, 0x3c656e3e557365206c6f67696e20666f7220726567697374726174696f6e3f3c2f656e3e3c66723e557365206c6f67696e20666f7220726567697374726174696f6e3f3c2f66723e, 'dropdown', '', 'editable', 'YesNo', 2, '', '', ''),
('96', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'RandomFileNameMode', 0x4e, 0x3c656e3e557365722072616e646f6d2066696c656e616d6520666f722075706c6f616465642066696c65733f3c2f656e3e3c66723e557365722072616e646f6d2066696c656e616d6520666f722075706c6f616465642066696c65733f3c2f66723e, 'dropdown', '', 'editable', 'YesNo', 24, '', '', ''),
('88', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:34:59', '', '3', 'MailHost', '', 0x3c656e3e534d54502053657276657220686f73743c2f656e3e, 'input', '', 'editable', '', 6, '', '', ''),
('89', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:34:59', '', '3', 'MailUser', '', 0x3c656e3e534d54502073657276657220757365723c2f656e3e, 'input', '', 'editable', '', 8, '', '', ''),
('90', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:34:59', '', '3', 'MailPassword', '', 0x3c656e3e534d5450207365727665722070617373776f72643c2f656e3e, 'input', '', 'editable', '', 10, '', '', ''),
('65', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column1BackgroundColor', 0x23464646464646, 0x3c66723e436f6c756d6e2031206261636b67726f756e6420636f6c6f723c2f66723e, 'color', '', 'editable', '', 126, '', '', ''),
('66', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column1BackgroundImage', NULL, 0x3c66723e436f6c756d6e2031206261636b67726f756e6420696d6167653c2f66723e, 'image', '', 'editable', '', 128, '', '', ''),
('67', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column2BackgroundColor', 0x23464646464646, 0x3c66723e436f6c756d6e2032206261636b67726f756e6420636f6c6f723c2f66723e, 'color', '', 'editable', '', 130, '', '', ''),
('68', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column2BackgroundImage', NULL, 0x3c66723e436f6c756d6e2032206261636b67726f756e6420696d6167653c2f66723e, 'image', '', 'editable', '', 132, '', '', ''),
('69', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column3BackgroundColor', 0x23464646464646, 0x3c66723e436f6c756d6e2033206261636b67726f756e6420636f6c6f723c2f66723e, 'color', '', 'editable', '', 134, '', '', ''),
('70', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.Column3BackgroundImage', NULL, 0x3c66723e436f6c756d6e2033206261636b67726f756e6420696d6167653c2f66723e, 'image', '', 'editable', '', 136, '', '', ''),
('71', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.BoxHeaderBackgroundColor', 0x23303036363939, 0x3c66723e426f7820686561646572206261636b67726f756e6420636f6c6f723c2f66723e, 'color', '', 'editable', '', 96, '', '', ''),
('72', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.BoxHeaderBackgroundImage', NULL, 0x3c66723e426f7820686561646572206261636b67726f756e6420696d6167653c2f66723e, 'image', '', 'editable', '', 98, '', '', ''),
('73', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'UseImageResize', 0x59, 0x3c66723e55736520696d61676520726573697a653f3c2f66723e, 'dropdown', '', 'editable', 'YesNo', 4, '', '', ''),
('74', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'UseImagePreview', 0x59, 0x3c66723e55736520696d61676520707265766965773f3c2f66723e, 'dropdown', '', 'editable', 'YesNo', 6, '', '', ''),
('75', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'UseImageIcon', 0x59, 0x3c66723e55736520696d6167652069636f6e3f3c2f66723e, 'dropdown', '', 'editable', 'YesNo', 8, '', '', ''),
('76', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'ImageWidthLimit', 0x31323030, 0x3c66723e46756c6c20496d616765205769647468204c696d69743c2f66723e, 'input', '', 'editable', '', 10, '', '', ''),
('77', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'ImageHeightLimit', 0x31323030, 0x3c66723e46756c6c20496d61676520486569676874204c696d69743c2f66723e, 'input', '', 'editable', '', 12, '', '', ''),
('78', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'ImageIconWidthLimit', 0x313730, 0x3c66723e49636f6e20696d616765207769647468206c696d69743c2f66723e, 'input', '', 'editable', '', 18, '', '', ''),
('79', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'ImageIconHeightLimit', 0x313330, 0x3c66723e49636f6e20696d61676520686569676874206c696d69743c2f66723e, 'input', '', 'editable', '', 20, '', '', ''),
('80', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'ImagePreviwWidthLimit', 0x343830, 0x3c66723e5072657669657720696d616765207769647468206c696d69743c2f66723e, 'input', '', 'editable', '', 14, '', '', ''),
('81', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'ImagePreviewHeightLimit', 0x343030, 0x3c66723e5072657669657720696d61676520686569676874206c696d69743c2f66723e, 'input', '', 'editable', '', 16, '', '', ''),
('82', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:34:59', '', '3', 'MailEncoding', 0x7574662d38, 0x3c66723e456d61696c7320656e636f64696e673c2f66723e, 'input', '', 'editable', '', 2, '', '', ''),
('83', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:34:59', '', '3', 'MailMode', 0x6d61696c, 0x3c66723e4d61696c696e672073797374656d206d6f64653c2f66723e, 'dropdown', 0x6d61696c7c4d61696c2066756e6374696f6e3b0d0a736d74707c534d5450207365727665723b0d0a6c6f63616c7c54657374696e67206d6f64653b, 'editable', '', 4, '', '', ''),
('84', 'root', '11365480442006050104523652y111', '0000-00-00 00:00:00', '2010-07-04 21:43:18', '', '1', 'SiteMail', 0x6a6a626f756e40676d61696c2e636f6d, 0x3c66723e57656273697465206d61696e20656d61696c20616464726573733c2f66723e, 'input', '', 'editable', '', 42, 0x3c66723e4973207573656420696e2066726f6d206669656c6420666f7220616c6c20656d61696c732073656e742062792073797374656d3c2f66723e, '', ''),
('91', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:35:00', '', '3', 'SMSRemindStatus', 0x59, 0x3c656e3e534d532072656d696e64732061637469766174696f6e207374617475733c2f656e3e, 'dropdown', '', 'editable', 'YesNo', 12, '', '', ''),
('92', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:35:00', '', '3', 'SMSRemindEmail', 0x33383036373737343339393940736d732e6b796976737461722e6e6574, 0x3c656e3e456d61696c2061646472657373206f6620534d532072656d696e6465723c2f656e3e, 'input', '', 'editable', '', 14, '', '', ''),
('85', 'root', 'root', '0000-00-00 00:00:00', '2010-07-04 21:29:52', '', '2', 'ItemsPerPage', 0x3130, 0x3c656e3e4974656d732070657220706167653c2f656e3e3c66723e4974656d732070657220706167653c2f66723e, 'input', '', 'editable', '', 6, 0x3c656e3e4e756d626572206f66206974656d732070657220706167653c2f656e3e3c66723e4e756d626572206f66206974656d732070657220706167653c2f66723e, '', ''),
('86', 'root', 'root', '0000-00-00 00:00:00', '2010-07-04 21:29:52', '', '2', 'PagesPerBar', 0x36, 0x3c656e3e5061676573207065722067726f75703c2f656e3e3c66723e5061676573207065722067726f75703c2f66723e, 'input', '', 'editable', '', 8, 0x3c656e3e4e756d626572206f662070616765732073706c69746572207065722067726f75703c2f656e3e3c66723e4e756d626572206f662070616765732073706c69746572207065722067726f75703c2f66723e, '', ''),
('87', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 13:58:46', '', '7', 'HTMLEditorMode', 0x59, 0x3c656e3e48544d4c20656469746f722061637469766174696f6e3c2f656e3e3c66723e48544d4c20656469746f722061637469766174696f6e3c2f66723e, 'dropdown', 0x597c5965733b0d0a4e7c4e6f3b, 'editable', '', 2, 0x3c656e3e48544d4c20656469746f722061637469766174696f6e3c2f656e3e3c66723e48544d4c20656469746f722061637469766174696f6e3c2f66723e, '', ''),
('103', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.SubTitleLineHeight', NULL, 0x3c66723e5375627469746c65206c696e652068656967687420666f7220666f726d733c2f66723e, 'input', '', 'editable', '', 84, '', '', ''),
('105', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'ResourceCategoriesMode', 0x6f6e65, 0x3c66723e43617465676f72696573206d6f64653c2f66723e, 'dropdown', 0x6d756c7469706c657c4d756c7469706c652063617465676f7269657320706572207265736f757263653b0d0a6f6e657c4f6e652063617465676f727920706572207265736f757263653b, 'editable', '', 8, 0x3c66723e506f736962696c69747920746f206c696e6b2061207265736f7572636520746f206f6e65206f726520746f206d6f72652063617465676f726965733c2f66723e, '', ''),
('104', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'ResourcesDefaultOrder', 0x5265736f757263652e54696d65437265617465642044455343, 0x3c656e3e44656661756c74206f72646572696e673c2f656e3e3c66723e44656661756c74206f72646572696e6720666f72207265736f75726365733c2f66723e, 'dropdown', 0x5265736f757263652e5265736f75726365416c6961732c205265736f757263652e5265736f757263654944204153437c20427920436f64652f4e616d6520616e6420494420617363656e64656e743b0d0a5265736f757263652e5265736f75726365494420444553437c42792049442064657363656e64656e743b0d0a5265736f757263652e5265736f75726365416c696173204153437c427920436f64652f4e616d6520617363656e64656e743b0d0a5265736f757263652e54696d654372656174656420444553437c42792074696d652064657363656e64656e743b0d0a5265736f757263652e5265736f75726365506f736974696f6e204153437c427920706f736974696f6e20617363656e64656e743b0d0a, 'editable', '', 4, '', '', ''),
('102', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.SubTitleLineBackground', NULL, 0x3c66723e5375627469746c65206261636b67726f756e6420666f7220666f726d733c2f66723e, 'color', '', 'editable', '', 82, '', '', ''),
('100', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '13', 'style1.LeftBoxStyle1.BoxHTML', 0x3c656e3e3c7461626c652077696474683d2671756f743b313030252671756f743b2063656c6c73706163696e673d2671756f743b312671756f743b2063656c6c70616464696e673d2671756f743b312671756f743b20626f726465723d2671756f743b312671756f743b20616c69676e3d2671756f743b2671756f743b3e0d0a202020203c74626f64793e0d0a20202020202020203c7472207374796c653d2671756f743b636f6c6f723a20726762283235352c203235352c20323535293b2671756f743b3e0d0a2020202020202020202020203c7464206267636f6c6f723d2671756f743b233333303066662671756f743b20616c69676e3d2671756f743b63656e7465722671756f743b3e7b7469746c657d3c2f74643e0d0a20202020202020203c2f74723e0d0a20202020202020203c74723e0d0a2020202020202020202020203c74643e7b636f6e74656e747d3c2f74643e0d0a20202020202020203c2f74723e0d0a202020203c2f74626f64793e0d0a3c2f7461626c653e3c2f656e3e3c66723e3c7461626c652077696474683d2671756f743b313030252671756f743b2063656c6c73706163696e673d2671756f743b312671756f743b2063656c6c70616464696e673d2671756f743b312671756f743b20626f726465723d2671756f743b312671756f743b20616c69676e3d2671756f743b2671756f743b3e0d0a202020203c74626f64793e0d0a20202020202020203c7472207374796c653d2671756f743b636f6c6f723a20726762283235352c203235352c20323535293b2671756f743b3e0d0a2020202020202020202020203c7464206267636f6c6f723d2671756f743b233333303066662671756f743b20616c69676e3d2671756f743b63656e7465722671756f743b3e7b7469746c657d3c2f74643e0d0a20202020202020203c2f74723e0d0a20202020202020203c74723e0d0a2020202020202020202020203c74643e7b636f6e74656e747d3c2f74643e0d0a20202020202020203c2f74723e0d0a202020203c2f74626f64793e0d0a3c2f7461626c653e3c2f66723e, 0x3c656e3e426f782048544d4c3c2f656e3e3c66723e426f782048544d4c3c2f66723e, 'text', '', 'editable', '', 1, '', '', ''),
('101', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '15', 'style1.CenterBoxStyle1.BoxHTML', 0x3c656e3e3c7461626c652077696474683d2671756f743b313030252671756f743b2063656c6c73706163696e673d2671756f743b312671756f743b2063656c6c70616464696e673d2671756f743b312671756f743b20626f726465723d2671756f743b312671756f743b20616c69676e3d2671756f743b2671756f743b3e0d0a202020203c74626f64793e0d0a20202020202020203c7472207374796c653d2671756f743b636f6c6f723a20726762283235352c203235352c20323535293b2671756f743b3e0d0a2020202020202020202020203c7464206267636f6c6f723d2671756f743b233333303066662671756f743b20616c69676e3d2671756f743b63656e7465722671756f743b3e7b7469746c657d3c2f74643e0d0a20202020202020203c2f74723e0d0a20202020202020203c74723e0d0a2020202020202020202020203c74643e7b636f6e74656e747d3c2f74643e0d0a20202020202020203c2f74723e0d0a202020203c2f74626f64793e0d0a3c2f7461626c653e3c2f656e3e3c66723e3c7461626c652077696474683d2671756f743b313030252671756f743b2063656c6c73706163696e673d2671756f743b312671756f743b2063656c6c70616464696e673d2671756f743b312671756f743b20626f726465723d2671756f743b312671756f743b20616c69676e3d2671756f743b2671756f743b3e0d0a202020203c74626f64793e0d0a20202020202020203c7472207374796c653d2671756f743b636f6c6f723a20726762283235352c203235352c20323535293b2671756f743b3e0d0a2020202020202020202020203c7464206267636f6c6f723d2671756f743b233333303066662671756f743b20616c69676e3d2671756f743b63656e7465722671756f743b3e7b7469746c657d3c2f74643e0d0a20202020202020203c2f74723e0d0a20202020202020203c74723e0d0a2020202020202020202020203c74643e7b636f6e74656e747d3c2f74643e0d0a20202020202020203c2f74723e0d0a202020203c2f74626f64793e0d0a3c2f7461626c653e3c2f66723e, 0x3c656e3e426f782048544d4c3c2f656e3e3c66723e426f782048544d4c3c2f66723e, 'text', '', 'editable', '', 1, '', '', ''),
('106', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'ResourceFeaturedPlacesMode', 0x6f6e65, 0x3c66723e466561747572656420706c61636573206d6f64653c2f66723e, 'dropdown', 0x6d756c7469706c657c4d756c7469706c6520666561747572656420706c61636520706572207265736f757263653b0d0a6f6e657c4f6e6520666561747572656420706c61636520706572207265736f757263653b, 'editable', '', 12, 0x3c66723e506f73736962696c69747920746f206c696e6b2061207265736f7572636520746f206f6e65206f72206d6f726520666561747572656420706c616365733c2f66723e, '', ''),
('107', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'ResourceCategoriesManagementModeAdmin', 0x657870616e6461626c65, 0x3c66723e43617465676f72696573206d616e6167656d656e74206d6f646520696e2061646d696e3c2f66723e, 'dropdown', 0x616c6c7c46756c6c20747265653b0d0a657870616e6461626c657c457870616e6461626c6520747265653b, 'editable', '', 14, 0x3c66723e46756c6c2074726565206f7220657870616e6461626c65206d6f646520666f722061646d696e697374726174696f6e206f662063617465676f726965733c2f66723e, '', ''),
('108', 'root', 'root', '0000-00-00 00:00:00', '2006-04-16 07:11:02', '', '16', 'synchronizationServerRemote', 0x687474703a2f2f7777772e, 0x3c66723e52656d6f7465207363796e68726f6e697a6174696f6e207365727665722075726c3c2f66723e, 'input', '', 'editable', '', 2, '', '', ''),
('109', 'root', '11365480442005122404190897z111', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'ResourceValidationMode', 0x59, 0x3c66723e4973207265717569726564207265736f757263652076616c69646174696f6e2062792061646d696e3f3c2f66723e, 'dropdown', '', 'editable', 'YesNo', 16, '', '', ''),
('110', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'ResourceCategoriesDefaultOrder', 0x5265736f7572636543617465676f7279506f736974696f6e, 0x3c656e3e43617465676f726965732064656661756c74206f72646572696e673c2f656e3e3c66723e43617465676f726965732064656661756c74206f72646572696e673c2f66723e, 'dropdown', 0x5265736f7572636543617465676f7279506f736974696f6e7c43617465676f727920706f736974696f6e3b0d0a5265736f7572636543617465676f7279416c6961737c43617465676f7279206e616d652f636f64653b0d0a5265736f7572636543617465676f727949447c43617465676f727949443b0d0a72616e646f6d7c52616e646f6d3b, 'editable', '', 6, '', '', ''),
('111', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'ResourcesInSubcategoriesMode', 0x59, 0x3c66723e53686f77207265736f757263657320696e2073756263617465676f72696573207768656e20612073756263617465676f72792069732073656c65746365643f3c2f66723e, 'dropdown', '', 'editable', 'YesNo', 10, '', '', ''),
('122', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.DisableTopMenu', 0x4e, 0x3c656e3e44697361626c6520746f70206d656e753f3c2f656e3e, 'dropdown', '', 'editable', 'YesNo', 16, '', '', ''),
('123', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.DisableBottomMenu', 0x4e, 0x3c656e3e44697361626c6520626f74746f6d206d656e753f3c2f656e3e, 'dropdown', '', 'editable', 'YesNo', 18, '', '', ''),
('115', 'root', '11365480442006030318390276c111', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '1', 'SystemLicense', 0x313030303132, 0x3c66723e4c6963656e73653c2f66723e, 'input', '', 'editable', '', 12, '', '', ''),
('116', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'UseResourceCategories', 0x59, 0x3c66723e4172652063617465676f72696573206163746976653f3c2f66723e, 'dropdown', 0x4e7c4e6f3b0d0a597c5965733b, 'editable', '', 18, 0x3c66723e50726f64756374732063616e20776f726b20776974682063617465676f72696573206f722063617465676f726965732061732070616765732e2053656c6563742059657320746f207573652063617465676f7269657320696e7374656164206f662070616765732e3c2f66723e, '', ''),
('117', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.popupheight', 0x353030, 0x3c656e3e506f707570206865696768743c2f656e3e, 'input', '', 'editable', '', 10, '', '', ''),
('118', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.popupwith', 0x373030, 0x3c656e3e506f70757020776974683c2f656e3e, 'input', '', 'editable', '', 12, '', '', ''),
('119', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 13:58:46', '', '7', 'ActivateAddLink', 0x626c6f636b6564, 0x3c656e3e416374697661746520416464204c696e6b3c2f656e3e3c66723e416374697661746520416464204c696e6b3c2f66723e, 'dropdown', 0x6163746976657c4163746976653b626c6f636b65647c426c6f636b65643b, 'editable', '', 15, '', '', ''),
('120', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.DisableRightColumn', 0x4e, 0x3c656e3e44697361626c6520726967687420636f6c756d6e3f3c2f656e3e, 'dropdown', '', 'editable', 'YesNo', 20, '', '', ''),
('121', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.DisableLeftColumn', 0x4e, 0x3c656e3e44697361626c65206c65667420636f6c756d6e3f3c2f656e3e, 'dropdown', '', 'editable', 'YesNo', 22, '', '', ''),
('124', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.InputFieldFontSize', 0x3130, 0x3c656e3e546578746669656c642c2074657874617265612c2064726f7020646f776e2c20627574746f6e7320666f6e742073697a653c2f656e3e3c66723e546578746669656c642c2074657874617265612c2064726f7020646f776e2c20627574746f6e7320666f6e742073697a653c2f66723e, 'dropdown', '', 'editable', 'fontsizes', 50, '', '', ''),
('125', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.InputFieldFontColor', 0x23303036363939, 0x3c656e3e546578746669656c642c2074657874617265612c2064726f7020646f776e2c20627574746f6e7320666f6e7420636f6c6f723c2f656e3e3c66723e546578746669656c642c2074657874617265612c2064726f7020646f776e2c20627574746f6e7320666f6e7420636f6c6f723c2f66723e, 'color', '', 'editable', '', 52, '', '', ''),
('126', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '4', 'style1.InputFieldBackgroundColor', 0x23464646463939, 0x3c656e3e546578746669656c642c2074657874617265612c2064726f7020646f776e2c20627574746f6e73206261636b67726f756e6420636f6c6f723c2f656e3e3c66723e546578746669656c642c2074657874617265612c2064726f7020646f776e2c20627574746f6e73206261636b67726f756e6420636f6c6f723c2f66723e, 'color', '', 'editable', '', 54, '', '', ''),
('127', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 13:58:46', '', '7', 'HTMLEditorWidth', 0x363530, 0x3c656e3e48544d4c20656469746f722077696474683c2f656e3e3c66723e48544d4c20656469746f722077696474683c2f66723e, 'input', '', 'editable', '', 4, '', '', ''),
('128', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 13:58:46', '', '7', 'HTMLEditorHeight', 0x343030, 0x3c656e3e48544d4c20656469746f72206865696768743c2f656e3e3c66723e48544d4c20656469746f72206865696768743c2f66723e, 'input', '', 'editable', '', 6, '', '', ''),
('129', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 13:58:46', '', '7', 'HTMLEditorButtons', 0x44656661756c74, 0x3c656e3e48544d4c20656469746f7220627574746f6e73207365743c2f656e3e3c66723e48544d4c20656469746f7220627574746f6e73207365743c2f66723e, 'dropdown', 0x42617369637c42617369633b0d0a44656661756c747c44656661756c743b0d0a4e6f466f726d737c4e6f20466f726d733b0d0a416476616e6365647c416476616e6365643b, 'editable', '', 8, '', '', ''),
('130', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 13:58:46', '', '7', 'LnaguageFrontSwitcherType', 0x69636f6e73, 0x3c656e3e4c616e67756167652066726f6e7420737769746368657220747970653c2f656e3e, 'dropdown', 0x69636f6e737c466c616773206c6973743b0d0a64726f70646f776e7c44726f7020646f776e206c6973743b, 'editable', '', 10, '', '', ''),
('131', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 13:58:46', '', '7', 'LanguageAdminSwitcherType', 0x69636f6e73, 0x3c656e3e4c616e67756167652061646d696e20737769746368657220747970653c2f656e3e, 'dropdown', 0x69636f6e737c466c6167733b0d0a64726f70646f776e7c44726f7020646f776e3b, 'editable', '', 12, '', '', ''),
('132', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'CategoryTopResourceMode', 0x746f706c697374696e67, 0x3c656e3e43617465676f727920746f7020656c656d656e7473206d6f64653c2f656e3e, 'dropdown', 0x746f70636865636b626f787c53686f77206d616e75616c6c792073656c656374656420656c656d656e74733b0d0a6c6173747c53686f77206c61737420616464656420656c656d656e74733b0d0a746f706c697374696e677c53686f7720666972737420313020656c656d656e747320696e206c697374696e673b, 'editable', '', 20, '', '', ''),
('133', 'root', 'root', '0000-00-00 00:00:00', '2006-09-09 18:23:22', '', '8', 'CategoryTopResourcesNumber', 0x3130, 0x3c656e3e4e756d626572206f6620656c656d656e7473206f6e2063617465676f727920746f7020706167653c2f656e3e, 'input', '', 'editable', '', 22, '', '', ''),
('134', 'root', 'root', '0000-00-00 00:00:00', '2009-12-28 18:39:59', '', '8', 'CategoryUseType', 0x59, 0x3c656e3e557365207265736f757263652074797065207065722063617465676f72793c2f656e3e, 'dropdown', '', 'editable', 'YesNo', 24, '', '', ''),
('135', 'root', 'root', '0000-00-00 00:00:00', '2010-07-04 21:29:52', '', '2', 'OwnerManagedElements', 0x7c207c736974656d61707c73657474696e67737c6c616e676669656c64737c, 0x3c656e3e4f776e6572206d616e6167656420656c656d656e74733c2f656e3e3c66723e4f776e6572206d616e6167656420656c656d656e74733c2f66723e, 'checkboxes', 0x736974656d61707c536974656d61703b0d0a73657474696e67737c53657474696e67733b0d0a6c616e676669656c64737c4c616e6775616765206669656c64733b0d0a7265736f75726365737c5265736f75726365733b0d0a63617465676f726965737c43617465676f726965733b0d0a70726f706572746965737c50726f706572746965733b0d0a, 'editable', '', 4, '', '', ''),
('11365480442010012418292362j111', 'root', 'root', '2010-01-24 18:29:23', '2010-03-09 20:28:39', '', '1136548044200605070808114k1111', 'TerminalID', 0x4530313239363138, 0x3c656e3e5465726d696e616c49443c2f656e3e, 'input', '', 'editable', '', 4, '', '', ''),
('142', 'shop', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '1', 'SiteName', 0x3c656e3e53686f703c2f656e3e3c66723e53686f703c2f66723e, 0x3c656e3e57656273697465206e616d653c2f656e3e3c66723e57656273697465206e616d653c2f66723e, 'text', '', 'editable', '', 10, 0x3c656e3e5765622073697465206e616d65207573656420696e207469746c657320616e6420656d61696c733c2f656e3e3c66723e5765622073697465206e616d65207573656420696e207469746c657320616e6420656d61696c733c2f66723e, '', ''),
('147', 'shop', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '1', 'SiteTitle', 0x3c656e3e53686f70207469746c653c2f656e3e3c66723e53686f70207469746c653c2f66723e, 0x3c656e3e57656273697465207469746c653c2f656e3e3c66723e57656273697465207469746c653c2f66723e, 'text', '', 'editable', '', 38, 0x3c656e3e5469746c65207573656420666f722073656172636820656e67696e65733c2f656e3e3c66723e5469746c65207573656420666f722073656172636820656e67696e65733c2f66723e, '', ''),
('146', 'root', 'root', '0000-00-00 00:00:00', '2010-07-04 21:29:52', '', '2', 'DefaultOwner', 0x726f6f74, 0x3c656e3e44656661756c74206f776e65722049443c2f656e3e3c66723e44656661756c74206f776e65722049443c2f66723e, 'input', '', 'editable', '', 2, '', '', ''),
('148', 'root', 'root', '0000-00-00 00:00:00', '2010-05-06 19:47:58', '', '5', 'ImageResizeUseImagemagick', 0x59, 0x3c656e3e55736520496d6167656d616769636b20666f7220726573697a653c2f656e3e3c66723e55736520496d6167656d616769636b20666f7220726573697a653c2f66723e, 'dropdown', '', 'editable', 'YesNo', 2, '', '', ''),
('149', 'root', 'root', '0000-00-00 00:00:00', '2010-07-04 21:29:52', '', '2', 'Copyright', 0x3c72753ec2a93c2f72753e3c656e3ec2a93c2f656e3e, 0x3c656e3e436f707972696768743c2f656e3e3c66723e436f707972696768743c2f66723e, 'text', '', 'editable', '', 10, '', '', ''),
('11365480442007100616265842q111', 'root', 'root', '2007-10-06 16:26:58', '2010-07-04 21:43:18', '', '1', 'SettingAdCode2', '', 0x3c656e3e416420636f646520323c2f656e3e3c72753ed0a0d0b5d0bbd0bad0b0d0bcd0bdd18bd0b920d0bad0bed0b420323c2f72753e, 'text', '', 'editable', '', 70, '', '', ''),
('11365480442006101407501585c111', 'root', 'root', '2006-10-14 07:50:15', '2010-07-04 21:43:18', '', '1', 'GMT', '', 0x3c656e3e54696d65206469666572656e63652066726f6d20474d543c2f656e3e3c72753e54696d65206469666572656e63652066726f6d20474d543c2f72753e3c75613e54696d65206469666572656e63652066726f6d20474d543c2f75613e, 'char', '', 'editable', '', 56, '', '', ''),
('1136548044200610141603206h1111', 'root', 'root', '2006-10-14 16:03:20', '2007-03-09 15:15:19', '', '1136548044200610141602365k1111', 'NewsFeedMaxArticles', 0x3130303030, 0x3c656e3e44656661756c74206c696d6974206f662061727469636c65732070657220666565643c2f656e3e3c72753e44656661756c74206c696d6974206f662061727469636c65732070657220666565643c2f72753e3c75613e44656661756c74206c696d6974206f662061727469636c65732070657220666565643c2f75613e, 'char', '', 'editable', '', 1, '', '', ''),
('11365480442006050210273919n111', 'root', 'root', '2006-05-02 10:27:39', '2006-05-02 11:15:14', '', '17', 'PropertiesDefaultOrder', 0x50726f70657274792e50726f7065727479506169645261746520444553432c2050726f70657274792e54696d6553617665642044455343, 0x3c656e3e50726f706572746965732064656661756c74206f726465723c2f656e3e, 'dropdown', 0x50726f70657274792e50726f7065727479416c6961737c50726f706572747920636f64653b0d0a50726f70657274792e50726f706572747950616964526174657c5061696420726174653b0d0a50726f70657274792e50726f7065727479506169645261746520444553432c2050726f70657274792e54696d65536176656420444553437c50616964207261746520616e642074696d653b, 'editable', '', 10, '', '', ''),
('150', 'root', 'root', '0000-00-00 00:00:00', '2010-07-04 21:29:52', '', '2', 'Version', 0x3c72753e58434d5350726f20322e312e323c2f72753e3c656e3e58434d5350726f20322e312e323c2f656e3e, 0x3c656e3e56657273696f6e3c2f656e3e3c66723e56657273696f6e3c2f66723e, 'text', '', 'editable', '', 12, '', '', ''),
('151', 'root', 'root', '0000-00-00 00:00:00', '2006-05-02 11:15:14', '', '17', 'UsePaymentForPropertyOrders', 0x4e, 0x3c656e3e557365207061796d656e7420666f722070726f7065727479206f72646572733f3c2f656e3e3c66723e557365207061796d656e7420666f722070726f7065727479206f72646572733f3c2f66723e, 'dropdown', '', 'editable', 'YesNo', 4, '', '', ''),
('152', 'root', 'root', '0000-00-00 00:00:00', '2006-05-02 11:15:14', '', '17', 'UseMutliplePropertiesPerOrder', 0x4e, 0x3c656e3e416c6c6f7720746f206f72646572206d6f7265207468656e20312070726f70657274793f3c2f656e3e3c66723e416c6c6f7720746f206f72646572206d6f7265207468656e20312070726f70657274793f3c2f66723e, 'dropdown', '', 'editable', 'YesNo', 2, '', '', ''),
('153', 'root', 'root', '0000-00-00 00:00:00', '2006-05-02 11:15:14', '', '17', 'PropertyDefaultLocation', 0x7c, 0x3c656e3e44656661756c74206c6f636174696f6e3c2f656e3e3c66723e44656661756c74206c6f636174696f6e3c2f66723e, 'location', '', 'editable', '', 8, '', '', ''),
('11365480442006050320081239n111', 'root', '11365480442006050104523652y111', '2006-05-03 20:08:12', '2010-07-04 21:43:18', '', '1', 'SiteKeywords', 0x3c72753e42657374204d6f6d656e74733c2f72753e3c656e3e42657374204d6f6d656e74733c2f656e3e, 0x3c656e3e5765622073697465206b6579776f7264733c2f656e3e, 'text', '', 'editable', '', 22, '', '', ''),
('11365480442006061811552235n111', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '9', 'RegistrationIsEmailConfirmationRequired', 0x4e, 0x3c656e3e497320656d61696c20636f6e6669726d6174696f6e2072657175697265643f3c2f656e3e3c66723e497320656d61696c20636f6e6669726d6174696f6e2072657175697265643f3c2f66723e, 'dropdown', '', 'editable', 'YesNo', 6, '', '', ''),
('11365480442006050105115423e111', 'root', 'root', '2006-05-01 05:11:54', '2006-05-02 11:15:14', '', '17', 'UsePropertyTypeFields', 0x4e, 0x3c656e3e557365206578747261206669656c647320666f7220656163682074797065206f662070726f70657274793f3c2f656e3e, 'dropdown', '', 'editable', 'YesNo', 6, '', '', ''),
('11365480442006050320084250i111', 'root', '11365480442006050104523652y111', '2006-05-03 20:08:42', '2010-07-04 21:43:18', '', '1', 'SiteDescription', 0x3c72753e42657374204d6f6d656e74733c2f72753e3c656e3e42657374204d6f6d656e74733c2f656e3e, 0x3c656e3e57656273697465206465736372697074696f6e3c2f656e3e, 'text', '', 'editable', '', 34, 0x3c656e3e4465736372697074696f6e206d657461207461672067656e6572616c20636f6e74656e743c2f656e3e, '', ''),
('11365480442006101416041770f111', 'root', 'root', '2006-10-14 16:04:17', '2007-03-09 15:15:19', '', '1136548044200610141602365k1111', 'NewsFeedMaxDays', 0x3930, 0x3c656e3e44656661756c74206c696d6974206f6620646179732070657220666565643c2f656e3e3c72753e44656661756c74206c696d6974206f6620646179732070657220666565643c2f72753e3c75613e44656661756c74206c696d6974206f6620646179732070657220666565643c2f75613e, 'char', '', 'editable', '', 2, '', '', ''),
('11365480442006061811504647v111', 'root', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '9', 'RegistrationIsValidationRequired', 0x4e, 0x3c656e3e49732061646d696e6973747261746f722076616c69646174696f6e2072657175697265643f3c2f656e3e3c66723e49732061646d696e6973747261746f722076616c69646174696f6e2072657175697265643f3c2f66723e, 'dropdown', '', 'editable', 'YesNo', 4, '', '', ''),
('11365480442006050708083933v111', 'root', 'root', '2006-05-07 08:08:39', '2010-03-09 20:28:39', '', '1136548044200605070808114k1111', 'UseMultipleCurrencies', 0x59, 0x3c656e3e55736572206d756c7469706c652063757272656e636965733c2f656e3e, 'dropdown', '', 'editable', 'YesNo', 8, '', '', ''),
('11365480442006050808484173l111', 'root', '11365480442006050104523652y111', '2006-05-08 08:48:41', '2010-07-04 21:29:52', '', '2', 'AdministratorsEmails', 0x6a6a626f756e40676d61696c2e636f6d, 0x3c656e3e41646d696e6973747261746f727320656d61696c733c2f656e3e, 'char', '', 'editable', '', 16, '', '', ''),
('11365480442006051407083514g111', 'root', 'root', '2006-05-14 07:08:35', '2010-07-04 21:29:52', '', '2', 'OwnerGenerateSectionsMode', 0x59, 0x3c656e3e47656e6572617465206d61696e206d656e75207768656e2061206e6577206f776e657220697320637265617465643f3c2f656e3e, 'dropdown', '', 'editable', 'YesNo', 14, '', '', ''),
('11365480442006051407525575t111', 'root', '11365480442006050104523652y111', '2006-05-14 07:52:55', '2010-07-04 21:43:18', '', '1', 'VirtualWebsiteLayout', 0x7669727475616c, 0x3c656e3e5669727475616c2077656273697465206c61796f75743c2f656e3e, 'dropdown', 0x7669727475616c7c5669727475616c2064656661756c743b0d0a7669727475616c317c5669727475616c20313b, 'editable', '', 40, '', '', ''),
('1136548044200605141000351v1111', 'root', 'root', '2006-05-14 10:00:35', '2010-07-04 21:43:18', '', '1', 'WebSiteHeader', NULL, 0x3c656e3e57656273697465206865616465723c2f656e3e, 'image', '', 'editable', '', 52, '', '', ''),
('11365480442006101416051136z111', 'root', 'root', '2006-10-14 16:05:11', '2007-03-09 15:15:19', '', '1136548044200610141602365k1111', 'NewsFeedUpdatePeriod', 0x35, 0x3c656e3e44656661756c7420706572696f64206f66206e65777320666565642070726f63657373696e673c2f656e3e3c72753e44656661756c7420706572696f64206f66206e65777320666565642070726f63657373696e673c2f72753e3c75613e44656661756c7420706572696f64206f66206e65777320666565642070726f63657373696e673c2f75613e, 'char', '', 'editable', '', 3, '', '', ''),
('1136548044200710061627271f1111', 'root', 'root', '2007-10-06 16:27:27', '2010-07-04 21:43:18', '', '1', 'SettingAdCode3', '', 0x3c656e3e416420636f646520333c2f656e3e3c72753ed0a0d0b5d0bbd0b0d0bcd0bdd18bd0b920d0bad0bed0b420333c2f72753e, 'text', '', 'editable', '', 78, '', '', ''),
('11365480442009091214502719i111', 's46', 'root', '2009-09-12 14:50:27', '2009-09-12 22:27:39', '', '5', 'ImageWidthLimit', 0x383030, 0x3c66723e55736520696d6167652069636f6e3f3c2f66723e3c656e3e3c66723e46756c6c20496d616765205769647468204c696d69743c2f66723e3c2f656e3e, 'input', '', 'editable', '', 10, '', '', ''),
('11365480442009091214502770f211', 's46', 'root', '2009-09-12 14:50:27', '2009-09-12 22:27:39', '', '5', 'ImageHeightLimit', 0x363030, 0x3c66723e55736520696d6167652069636f6e3f3c2f66723e3c656e3e3c66723e46756c6c20496d61676520486569676874204c696d69743c2f66723e3c2f656e3e, 'input', '', 'editable', '', 12, '', '', ''),
('11365480442009091214502780i311', 's46', 'root', '2009-09-12 14:50:27', '2009-09-12 22:27:39', '', '5', 'ImagePreviwWidthLimit', 0x343030, 0x3c66723e55736520696d6167652069636f6e3f3c2f66723e3c656e3e3c66723e5072657669657720696d616765207769647468206c696d69743c2f66723e3c2f656e3e, 'input', '', 'editable', '', 14, '', '', ''),
('11365480442009091214502794i411', 's46', 'root', '2009-09-12 14:50:27', '2009-09-12 22:27:39', '', '5', 'ImagePreviewHeightLimit', 0x333030, 0x3c66723e55736520696d6167652069636f6e3f3c2f66723e3c656e3e3c66723e5072657669657720696d61676520686569676874206c696d69743c2f66723e3c2f656e3e, 'input', '', 'editable', '', 16, '', '', ''),
('11365480442009091214502738j511', 's46', 'root', '2009-09-12 14:50:27', '2009-09-12 22:27:39', '', '5', 'ImageIconWidthLimit', 0x313730, 0x3c66723e55736520696d6167652069636f6e3f3c2f66723e3c656e3e3c66723e49636f6e20696d616765207769647468206c696d69743c2f66723e3c2f656e3e, 'input', '', 'editable', '', 18, '', '', ''),
('11365480442009091214502778x611', 's46', 'root', '2009-09-12 14:50:27', '2009-09-12 22:27:39', '', '5', 'ImageIconHeightLimit', 0x313330, 0x3c66723e55736520696d6167652069636f6e3f3c2f66723e3c656e3e3c66723e49636f6e20696d61676520686569676874206c696d69743c2f66723e3c2f656e3e, 'input', '', 'editable', '', 20, '', '', ''),
('11365480442009091214502719h711', 's46', 'root', '2009-09-12 14:50:27', '2009-09-12 22:27:39', '', '5', 'NoImageIcon', NULL, 0x3c656e3e4e6f20696d6167652069636f6e3c2f656e3e3c66723e4e6f20696d6167652069636f6e3c2f66723e, 'image', '', 'editable', '', 22, '', '', ''),
('1136548044200909162225369z1111', 's46', 'root', '2009-09-16 22:25:36', '2009-09-16 22:25:36', '', '1', 'SiteName', 0x3c656e3e556e646566696e65643c2f656e3e3c66723e556e646566696e65643c2f66723e3c6e6c3e556e646566696e65643c2f6e6c3e, 0x3c656e3e57656273697465206e616d653c2f656e3e3c66723e57656273697465206e616d653c2f66723e, 'text', '', 'editable', '', 8, 0x3c656e3e5765622073697465206e616d65207573656420696e207469746c657320616e6420656d61696c733c2f656e3e3c66723e5765622073697465206e616d65207573656420696e207469746c657320616e6420656d61696c733c2f66723e, '', '');
INSERT INTO `setting` (`id`, `OwnerID`, `UserID`, `timeCreated`, `timeSaved`, `module`, `group`, `variableName`, `value`, `name`, `valueType`, `valueOptions`, `type`, `reference`, `position`, `description`, `sectionID`, `boxID`) VALUES
('11365480442009091622253652g211', 's46', 'root', '2009-09-16 22:25:36', '2009-09-16 22:25:36', '', '1', 'SiteTitle', 0x3c656e3e556e646566696e65643c2f656e3e3c66723e556e646566696e65643c2f66723e3c6e6c3e556e646566696e65643c2f6e6c3e, 0x3c656e3e57656273697465207469746c653c2f656e3e3c66723e57656273697465207469746c653c2f66723e, 'text', '', 'editable', '', 14, 0x3c656e3e5469746c65207573656420666f722073656172636820656e67696e65733c2f656e3e3c66723e5469746c65207573656420666f722073656172636820656e67696e65733c2f66723e, '', ''),
('11365480442009091622253650k311', 's46', 'root', '2009-09-16 22:25:36', '2009-09-16 22:25:36', '', '1', 'SiteKeywords', 0x3c656e3e556e646566696e65643c2f656e3e3c66723e556e646566696e65643c2f66723e3c6e6c3e556e646566696e65643c2f6e6c3e, 0x3c656e3e5765622073697465206b6579776f7264733c2f656e3e, 'text', '', 'editable', '', 28, '', '', ''),
('11365480442009091622253651b411', 's46', 'root', '2009-09-16 22:25:36', '2009-09-16 22:25:36', '', '1', 'SiteDescription', 0x3c656e3e486f7374696e673c2f656e3e3c66723e486f7374696e673c2f66723e3c6e6c3e486f7374696e673c2f6e6c3e, 0x3c656e3e57656273697465206465736372697074696f6e3c2f656e3e, 'text', '', 'editable', '', 32, 0x3c656e3e4465736372697074696f6e206d657461207461672067656e6572616c20636f6e74656e743c2f656e3e, '', ''),
('11365480442009091622253668l511', 's46', 'root', '2009-09-16 22:25:36', '2009-09-16 22:25:36', '', '1', 'SiteMail', 0x6a6a626f756e40676d61696c2e636f6d, 0x3c656e3e3c66723e57656273697465206d61696e20656d61696c20616464726573733c2f66723e3c2f656e3e, 'input', '', 'editable', '', 44, 0x3c656e3e3c66723e4973207573656420696e2066726f6d206669656c6420666f7220616c6c20656d61696c732073656e742062792073797374656d3c2f66723e3c2f656e3e, '', ''),
('11365480442009091622253670b611', 's46', 'root', '2009-09-16 22:25:36', '2009-09-16 22:25:36', '', '1', 'SettingAdCode1', '', 0x3c656e3e416420636f646520313c2f656e3e3c72753e416420636f646520313c2f72753e, 'text', '', 'editable', '', 60, '', '', ''),
('11365480442009091622253642o711', 's46', 'root', '2009-09-16 22:25:36', '2009-09-16 22:25:36', '', '1', 'SettingAdCode2', '', 0x3c656e3e416420636f646520323c2f656e3e3c72753ed0a0d0b5d0bbd0bad0b0d0bcd0bdd18bd0b920d0bad0bed0b420323c2f72753e, 'text', '', 'editable', '', 66, '', '', ''),
('11365480442009091622253676v811', 's46', 'root', '2009-09-16 22:25:36', '2009-09-16 22:25:36', '', '1', 'SettingAdCode3', '', 0x3c656e3e416420636f646520333c2f656e3e3c72753ed0a0d0b5d0bbd0b0d0bcd0bdd18bd0b920d0bad0bed0b420333c2f72753e, 'text', '', 'editable', '', 74, '', '', ''),
('11365480442010012418291044e111', 'root', 'root', '2010-01-24 18:29:10', '2010-03-09 20:28:39', '', '1136548044200605070808114k1111', 'MerchantID', 0x36393330353331, 0x3c656e3e4d65726368616e7449443c2f656e3e, 'input', '', 'editable', '', 2, '', '', ''),
('11365480442009101921174524a111', 's47', 'root', '2009-10-19 21:17:45', '2009-10-19 21:18:45', '', '1', 'WebSiteHeader', 0x7334372f696d616765732f73657474696e67732f32303039313031393231313734352d6865616465722e6a7067, 0x3c656e3e57656273697465206865616465723c2f656e3e, 'image', '', 'editable', '', 48, '', '', ''),
('11365480442009101921175359x111', 's47', 'root', '2009-10-19 21:17:53', '2009-10-19 21:18:45', '', '1', 'SiteName', 0x3c656e3e556e646566696e65643c2f656e3e3c66723e556e646566696e65643c2f66723e3c6e6c3e556e646566696e65643c2f6e6c3e3c72753ed09dd0b5d0bed0bfd180d0b5d0b4d0b5d0bbd0b5d0bd3c2f72753e, 0x3c656e3e57656273697465206e616d653c2f656e3e3c66723e57656273697465206e616d653c2f66723e, 'text', '', 'editable', '', 6, 0x3c656e3e5765622073697465206e616d65207573656420696e207469746c657320616e6420656d61696c733c2f656e3e3c66723e5765622073697465206e616d65207573656420696e207469746c657320616e6420656d61696c733c2f66723e, '', ''),
('11365480442009101921175357k211', 's47', 'root', '2009-10-19 21:17:53', '2009-10-19 21:18:45', '', '1', 'SiteTitle', 0x3c656e3e556e646566696e65643c2f656e3e3c66723e556e646566696e65643c2f66723e3c6e6c3e556e646566696e65643c2f6e6c3e3c72753ed09dd0b5d0bed0bfd180d0b5d0b4d0b5d0bbd0b5d0bd3c2f72753e, 0x3c656e3e57656273697465207469746c653c2f656e3e3c66723e57656273697465207469746c653c2f66723e, 'text', '', 'editable', '', 20, 0x3c656e3e5469746c65207573656420666f722073656172636820656e67696e65733c2f656e3e3c66723e5469746c65207573656420666f722073656172636820656e67696e65733c2f66723e, '', ''),
('11365480442009101921175343t311', 's47', 'root', '2009-10-19 21:17:53', '2009-10-19 21:18:45', '', '1', 'SiteKeywords', 0x3c656e3e556e646566696e65643c2f656e3e3c66723e556e646566696e65643c2f66723e3c6e6c3e556e646566696e65643c2f6e6c3e3c72753ed09dd0b5d0bed0bfd180d0b5d0b4d0b5d0bbd0b5d0bd3c2f72753e, 0x3c656e3e5765622073697465206b6579776f7264733c2f656e3e, 'text', '', 'editable', '', 26, '', '', ''),
('11365480442009101921175381x411', 's47', 'root', '2009-10-19 21:17:53', '2009-10-19 21:18:45', '', '1', 'SiteDescription', 0x3c656e3e486f7374696e673c2f656e3e3c66723e486f7374696e673c2f66723e3c6e6c3e486f7374696e673c2f6e6c3e3c72753ed0a5d0bed181d182d0b8d0bdd0b33c2f72753e, 0x3c656e3e57656273697465206465736372697074696f6e3c2f656e3e, 'text', '', 'editable', '', 30, 0x3c656e3e4465736372697074696f6e206d657461207461672067656e6572616c20636f6e74656e743c2f656e3e, '', ''),
('11365480442009101921175373y511', 's47', 'root', '2009-10-19 21:17:53', '2009-10-19 21:18:45', '', '1', 'SettingAdCode1', '', 0x3c656e3e416420636f646520313c2f656e3e3c72753e416420636f646520313c2f72753e, 'text', '', 'editable', '', 58, '', '', ''),
('11365480442009101921175330u611', 's47', 'root', '2009-10-19 21:17:53', '2009-10-19 21:18:45', '', '1', 'SettingAdCode2', '', 0x3c656e3e416420636f646520323c2f656e3e3c72753ed0a0d0b5d0bbd0bad0b0d0bcd0bdd18bd0b920d0bad0bed0b420323c2f72753e, 'text', '', 'editable', '', 72, '', '', ''),
('11365480442009101921175364v711', 's47', 'root', '2009-10-19 21:17:53', '2009-10-19 21:18:45', '', '1', 'SettingAdCode3', '', 0x3c656e3e416420636f646520333c2f656e3e3c72753ed0a0d0b5d0bbd0b0d0bcd0bdd18bd0b920d0bad0bed0b420333c2f72753e, 'text', '', 'editable', '', 80, '', '', ''),
('11365480442010011823265388m111', 'root', '1', '2010-01-18 23:26:53', '2010-07-04 21:43:18', '', '1', 'SiteLogo', '', 0x3c72753e3c656e3e4c6f676f3c2f656e3e3c66723e4c6f676f3c2f66723e3c2f72753e, 'image', '', 'editable', '', 46, 0x3c72753e3c656e3e57656273697465206c6f676f20696d6167653c2f656e3e3c66723e57656273697465206c6f676f20696d6167653c2f66723e3c2f72753e, '', ''),
('1136548044201005061947122a1111', 'yachts', 'root', '2010-05-06 19:47:12', '2010-05-06 19:47:12', '', '1', 'SiteLogo', 0x7961636874732f696d616765732f73657474696e67732f3230313030352f32303130303530363139343731322d6c6f676f2e706e67, 0x3c72753e3c656e3e4c6f676f3c2f656e3e3c66723e4c6f676f3c2f66723e3c2f72753e, 'image', '', 'editable', '', 46, 0x3c72753e3c656e3e57656273697465206c6f676f20696d6167653c2f656e3e3c66723e57656273697465206c6f676f20696d6167653c2f66723e3c2f72753e, '', ''),
('11365480442010012900101374k111', 'root', 'root', '2010-01-29 00:10:13', '2010-07-04 21:43:18', '', '1', 'PaymentEmail', 0x6a6a626f756e40676d61696c2e636f6d, 0x3c656e3e5061796d656e7420456d61696c3c2f656e3e, 'input', '', 'editable', '', 1, '', '', ''),
('11365480442010070200200144h111', 'mas', 'root', '2010-07-02 00:20:01', '2010-07-04 21:28:28', '', '1', 'SiteName', 0x3c72753e42657374204d6f6d656e74733c2f72753e3c656e3e42657374204d6f6d656e74733c2f656e3e, 0x3c75613e3c656e3e57656273697465206e616d653c2f656e3e3c66723e57656273697465206e616d653c2f66723e3c2f75613e, 'text', '', 'editable', '', 2, 0x3c75613e3c656e3e5765622073697465206e616d65207573656420696e207469746c657320616e6420656d61696c733c2f656e3e3c66723e5765622073697465206e616d65207573656420696e207469746c657320616e6420656d61696c733c2f66723e3c2f75613e, '', '');

-- --------------------------------------------------------

--
-- Структура таблиці `settinggroup`
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
-- Дамп даних таблиці `settinggroup`
--

INSERT INTO `settinggroup` (`id`, `code`, `UserID`, `OwnerID`, `hidden`, `timeCreated`, `timeSaved`, `parentID`, `module`, `name`, `description`, `accessGroups`) VALUES
('1', 'main', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'core', 0x3c656e3e4d61696e20776562736974652073657474696e67733c2f656e3e3c66723e4d61696e20776562736974652073657474696e67733c2f66723e, 0x3c656e3e4d61696e20776562736974652073657474696e67733c2f656e3e3c66723e4d61696e20776562736974652073657474696e67733c2f66723e, '|all|'),
('2', 'system', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'core', 0x3c656e3e53797374656d206d61696e2073657474696e67733c2f656e3e3c66723e53797374656d206d61696e2073657474696e67733c2f66723e, 0x3c656e3e53797374656d206d61696e2073657474696e67733c2f656e3e3c66723e53797374656d206d61696e2073657474696e67733c2f66723e, '|root|'),
('3', 'EmailSettings', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'core', 0x3c656e3e456d61696c2073657474696e67733c2f656e3e3c66723e456d61696c2073657474696e67733c2f66723e, '', ''),
('4', 'style1', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', 0x3c656e3e5374796c65736865657420313c2f656e3e3c66723e5374796c65736865657420313c2f66723e, 0x3c656e3e5374796c65736865657420313c2f656e3e3c66723e5374796c65736865657420313c2f66723e, ''),
('5', 'files', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', 0x3c66723e46696c65206d616e616765722073657474696e67733c2f66723e3c656e3e46696c65206d616e616765722073657474696e67733c2f656e3e, 0x3c66723e46696c65206d616e616765722073657474696e67733c2f66723e3c656e3e46696c65206d616e616765722073657474696e67733c2f656e3e, ''),
('6', 'style2', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', 0x3c66723e5374796c65736865657420323c2f66723e3c656e3e5374796c65736865657420323c2f656e3e, 0x3c66723e5374796c65736865657420323c2f66723e3c656e3e5374796c65736865657420323c2f656e3e, ''),
('7', 'systemprefs', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', 0x3c656e3e53797374656d20707265666572656e6365733c2f656e3e3c66723e53797374656d20707265666572656e6365733c2f66723e, '', '|root|'),
('8', 'resource', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', 0x3c656e3e4f66666572732f50726f64756374732f5265736f75726365732073657474696e67733c2f656e3e3c66723e4f66666572732f50726f64756374732f5265736f75726365732073657474696e67733c2f66723e, '', '|root|admin|'),
('9', 'session', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', 0x3c656e3e53657373696f6e20286c6f67696e2f6c6f676f7574292073657474696e67733c2f656e3e3c66723e53657373696f6e20286c6f67696e2f6c6f676f7574292073657474696e67733c2f66723e, '', '|root|'),
('13', 'style1.LeftBoxStyle1', 'root', 'root', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '4', '', 0x3c656e3e4c65667420626f78207374796c6520313c2f656e3e3c66723e4c65667420626f78207374796c6520313c2f66723e, '', ''),
('15', 'style1.CenterBoxStyle1', 'root', 'root', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '4', '', 0x3c656e3e43656e74657220626f78207374796c6520313c2f656e3e3c66723e43656e74657220626f78207374796c6520313c2f66723e, '', ''),
('16', 'webServices', 'root', 'root', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', 0x3c66723e5765622073657276696365733c2f66723e, '', '|root|'),
('17', 'property', 'root', 'root', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'property', 0x3c656e3e50726f7065727479206d6f64756c652073657474696e67733c2f656e3e3c66723e50726f7065727479206d6f64756c652073657474696e67733c2f66723e, 0x3c656e3e50726f7065727479206d6f64756c652073657474696e67733c2f656e3e3c66723e50726f7065727479206d6f64756c652073657474696e67733c2f66723e, '|root|admin|'),
('11365480442006041605375159g111', 'poll', 'root', 'root', 0, '2006-04-16 05:37:51', '2006-04-16 05:37:51', '', 'poll', 0x3c656e3e506f6c6c206d6f64756c652073657474696e67733c2f656e3e3c66723e506f6c6c206d6f64756c652073657474696e67733c2f66723e, '', '|root|admin|'),
('1136548044200605070808114k1111', 'billing', 'root', 'root', 0, '2006-05-07 08:08:11', '2006-05-07 08:08:11', '', 'billing', 0x3c656e3e42696c6c696e672073657474696e67733c2f656e3e, '', '|root|admin|content|owner|'),
('11365480442006051316535339p111', 'virtual', 'root', 'root', 0, '2006-05-13 16:53:53', '2006-05-13 16:53:53', '', 'core', 0x3c656e3e5669727475616c2077656273697465732073657474696e67733c2f656e3e, '', '|user|root|admin|content|owner|'),
('1136548044200610141602365k1111', 'news', 'root', 'root', 0, '2006-10-14 16:02:36', '2006-10-14 16:02:36', '', 'news', 0x3c656e3e4e657773206d6f64756c652073657474696e67733c2f656e3e3c72753e4e657773206d6f64756c652073657474696e67733c2f72753e3c75613e4e657773206d6f64756c652073657474696e67733c2f75613e, '', ''),
('11365480442010051021082974q111', '.', 'root', 'yachts', 0, '2010-05-10 21:08:29', '2010-05-10 21:08:29', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблиці `stylesetting`
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
-- Дамп даних таблиці `stylesetting`
--

INSERT INTO `stylesetting` (`id`, `OwnerID`, `UserID`, `timeCreated`, `timeSaved`, `code`, `variableName`, `value`, `name`, `valueType`, `valueOptions`, `type`, `reference`, `position`, `description`) VALUES
('1136548044200805241119073x1111', 'root', 'root', '2008-05-24 11:19:07', '2008-05-24 11:19:07', '', 'StyleLayout', NULL, 0x3c656e3e5374796c65206c61796f75743c2f656e3e3c66723e5374796c65206c61796f75743c2f66723e, 'char', '', 'editable', '', 1, '');

-- --------------------------------------------------------

--
-- Структура таблиці `types`
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
-- Структура таблиці `user`
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
-- Дамп даних таблиці `user`
--

INSERT INTO `user` (`userID`, `OwnerID`, `adminID`, `timeCreated`, `timeSaved`, `timeStart`, `timeEnd`, `createdIP`, `savedIP`, `hidden`, `groupID`, `email`, `userName`, `login`, `password`, `passwordEnabled`, `deleted`, `timeDeleted`, `status`, `ownerParentID`, `owners`, `lastVisit`, `userParentID`, `avatarPath`, `fullName`, `gender`, `moreInfo`, `userLanguage`, `userFields`, `avatarFname`) VALUES
(1, 1, 1, '0000-00-00 00:00:00', '2014-07-30 23:42:36', '2014-02-06 00:00:00', NULL, '127.0.0.1', '127.0.0.1', 1, '1,2,5', 'root@gmail.com', 'root', 'root', '5f4dcc3b5aa765d61d8327deb882cf99', 'Y', 'N', NULL, 0, 'root', 'root', '0000-00-00 00:00:00', '0', '/upload/avatar/resize/1/', 'shadow', 'M', 'Test example', 1, NULL, 'avatar2.jpeg'),
(3, 1, 1, '2014-02-25 16:38:06', '2014-02-25 17:24:33', '2014-05-06 00:00:00', NULL, '127.0.0.1', '127.0.0.1', 0, '1', 'test@te.ua', 'test', 'test', '5f4dcc3b5aa765d61d8327deb882cf99', 'Y', 'N', NULL, 0, 'root', 'root', '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '', 1, NULL, ''),
(4, 1, 1, '2014-02-27 11:23:26', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 0, '1', 'ms@airweb.ua', 'maks', 'maks', '', 'N', 'N', NULL, 0, '', NULL, '0000-00-00 00:00:00', '0', NULL, NULL, NULL, '', 1, NULL, '');

-- --------------------------------------------------------

--
-- Структура таблиці `userfield`
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
-- Структура таблиці `userfields`
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
-- Дамп даних таблиці `userfields`
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
-- Структура таблиці `usergroup`
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
-- Дамп даних таблиці `usergroup`
--

INSERT INTO `usergroup` (`groupID`, `OwnerID`, `userID`, `timeCreated`, `timeSaved`, `name`, `rights`, `description`, `position`, `activate`, `type`) VALUES
(1, 1, 1, '0000-00-00 00:00:00', '2014-07-30 21:16:19', 'Registered users/customers', '', '', 0, 1, 'admin'),
(2, 1, 1, '0000-00-00 00:00:00', '2010-09-28 03:44:38', 'Root administrators', '', '', 0, 1, ''),
(3, 1, 1, '0000-00-00 00:00:00', '2010-09-28 03:45:06', 'Administrators', '', '', 0, 1, ''),
(4, 1, 1, '0000-00-00 00:00:00', '2012-09-25 17:24:45', 'Content managers', '', '', 0, 1, '');

-- --------------------------------------------------------

--
-- Структура таблиці `userindex`
--

CREATE TABLE IF NOT EXISTS `userindex` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UserID` varchar(30) NOT NULL,
  KEY `id` (`id`),
  KEY `UserID` (`UserID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=139 ;

--
-- Дамп даних таблиці `userindex`
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
-- Структура таблиці `usertypefield`
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
-- Дамп даних таблиці `usertypefield`
--

INSERT INTO `usertypefield` (`id`, `typeFieldAlias`, `UserID`, `OwnerID`, `hidden`, `userGroupID`, `typeFieldName`, `typeFieldPosition`, `typeFieldType`, `typeFieldHidenPlaces`, `typeFieldGroups`) VALUES
(1, 'FirstName', 'root', 'root', 4, 'user', 0x3c656e3e4669727374206e616d653c2f656e3e3c66723e4669727374206e616d653c2f66723e3c6e6c3e4669727374206e616d653c2f6e6c3e3c72753ed098d0bcd18f3c2f72753e, 4, 'input', '', ''),
(2, 'LastName', 'root', 'root', 4, 'user', 0x3c656e3e4c617374206e616d653c2f656e3e3c66723e4c617374206e616d653c2f66723e3c6e6c3e4c617374206e616d653c2f6e6c3e3c72753ed0a4d0b0d0bcd0b8d0bbd0b8d18f3c2f72753e, 6, 'input', '', ''),
(13, 'LastName', 'root', 'root', 4, 'root', 0x3c66723e4c617374206e616d653c2f66723e3c656e3e4c617374206e616d653c2f656e3e3c72753e4c617374206e616d653c2f72753e3c75613e4c617374206e616d653c2f75613e, 4, 'input', '', ''),
(12, 'FirstName', 'root', 'root', 4, 'root', 0x3c66723e4669727374206e616d653c2f66723e3c656e3e4669727374206e616d653c2f656e3e3c72753e4669727374206e616d653c2f72753e3c75613e4669727374206e616d653c2f75613e, 6, 'input', '', ''),
(21, 'FirstName', 'root', 'root', 4, 'admin', 0x3c66723e31313131313c2f66723e3c656e3e4669727374206e616d653c2f656e3e3c72753e4669727374206e616d653c2f72753e3c75613e4669727374206e616d653c2f75613e, 2, 'input', '', 0x7c6d61696e7c),
(38, 'LastName', 'root', 'root', 4, 'admin', 0x3c656e3e4c617374206e616d653c2f656e3e3c72753e4c617374206e616d653c2f72753e3c75613e4c617374206e616d653c2f75613e, 4, 'input', '', 0x7c6d61696e7c),
(54, 'UserRating', 'root', 'root', 4, 'user', 0x3c656e3e526174696e673c2f656e3e3c72753ed0a0d0b5d0b9d182d0b8d0bdd0b33c2f72753e3c75613ed0a0d0b5d0b9d182d0b8d0bdd0b33c2f75613e, 12, 'number', '', ''),
(57, 'Phone', 'root', 'root', 4, 'user', 0x3c656e3e50686f6e65206e756d6265723c2f656e3e3c66723e50686f6e65206e756d6265723c2f66723e3c6e6c3e50686f6e65206e756d6265723c2f6e6c3e3c72753ed09dd0bed0bcd0b5d18020d182d0b5d0bbd0b5d184d0bed0bdd0b03c2f72753e, 8, 'char', '', 0x7c6d61696e7c),
(55, 'FirstName', 'root', 'root', 4, 'owner', 0x3c656e3e4669727374206e616d653c2f656e3e3c72753ed098d0bcd18f3c2f72753e, 2, 'char', '', 0x7c6d61696e7c),
(56, 'LastName', 'root', 'root', 4, 'owner', 0x3c656e3e4c617374206e616d653c2f656e3e3c72753ed0a4d0b0d0bcd0b8d0bbd0b8d18f3c2f72753e, 4, 'char', '', 0x7c6d61696e7c),
(58, 'Country', 'root', 'ap1', 4, 'user', 0x3c656e3e436f756e7472793c2f656e3e3c656c3e436f756e7472793c2f656c3e3c65673e436f756e7472793c2f65673e3c64653e436f756e7472793c2f64653e3c66723e506179733c2f66723e3c65733e436f756e7472793c2f65733e3c69743e436f756e7472793c2f69743e3c74753e436f756e7472793c2f74753e3c72753ed0a1d182d180d0b0d0bdd0b03c2f72753e, 10, 'char', '', 0x7c6d61696e7c);

-- --------------------------------------------------------

--
-- Структура таблиці `usertypeoption`
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
-- Структура таблиці `view`
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
-- Дамп даних таблиці `view`
--

INSERT INTO `view` (`id`, `alias`, `OwnerID`, `UserID`, `hidden`, `timeCreated`, `timeSaved`, `name`, `accessGroups`, `type`, `arguments`, `description`, `templateID`, `isTemplate`) VALUES
('1', 'admin', 'root', '1', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e41646d696e206c61796f75743c2f66723e3c656e3e41646d696e206c61796f75743c2f656e3e, NULL, 'admin', '', '', NULL, 'N'),
('2', 'main', 'root', '1', 1, '0000-00-00 00:00:00', '2006-06-21 17:08:17', 0x3c66723e4d61696e20666f726e742d656e64206c61796f75743c2f66723e3c656e3e4d61696e20666f726e742d656e6420206c61796f75743c2f656e3e, NULL, 'front', '', '', NULL, 'N'),
('3', 'home', 'root', '1', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e486f6d6570616765206c61796f75743c2f656e3e3c66723e486f6d6570616765206c61796f75743c2f66723e, NULL, 'front', '', '', NULL, 'N'),
('4', 'catalog', 'root', '1', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e43617465676f727920706167653c2f656e3e3c66723e43617465676f727920706167653c2f66723e, NULL, 'front', '', '', NULL, 'N'),
('5', 'product', 'root', '1', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e4f6666657220706167653c2f656e3e3c66723e4f6666657220706167653c2f66723e, NULL, 'front', '', '', NULL, 'N'),
('6', 'loginlogout', 'root', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e4c6f67696e2f4c6f676f75742070726f636573733c2f656e3e3c66723e4c6f67696e2f4c6f676f75742070726f636573733c2f66723e, NULL, 'admin', '', '', NULL, 'N'),
('7', 'cart', 'root', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e53686f7070696e672063617274206c61796f75743c2f656e3e3c66723e53686f7070696e672063617274206c61796f75743c2f66723e, NULL, 'front', '', '', NULL, 'N'),
('8', 'order', 'root', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e4f7264657220706167653c2f656e3e3c66723e4f7264657220706167653c2f66723e, NULL, 'front', '', '', NULL, 'N'),
('9', 'request', 'root', 'root', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e5265717565737420706167653c2f656e3e3c66723e5265717565737420706167653c2f66723e, NULL, 'front', '', '', NULL, 'N'),
('10', 'user', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e5573657220617265613c2f656e3e3c66723e5573657220617265613c2f66723e, NULL, 'front', '', '', NULL, 'N'),
('11', 'bid', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e416464206269643c2f656e3e3c66723e416464206269643c2f66723e, NULL, 'front', '', '', NULL, 'N'),
('12', 'mailbox', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e4d61696c20626f783c2f656e3e3c66723e4d61696c20626f783c2f66723e, NULL, 'front', '', '', NULL, 'N'),
('15', 'userlink', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e55736572206c696e6b733c2f656e3e3c66723e55736572206c696e6b733c2f66723e, NULL, 'front', '', '', NULL, 'N'),
('16', 'usercomment', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e5573657220636f6d6d656e74733c2f656e3e3c66723e5573657220636f6d6d656e74733c2f66723e, NULL, 'front', '', '', NULL, 'N'),
('17', 'adminhomepage', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e41646d696e20686f6d65706167653c2f656e3e3c66723e41646d696e20686f6d65706167653c2f66723e, NULL, 'admin', '', '', NULL, 'N'),
('18', 'viewprofile', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e557365722070726f66696c653c2f656e3e3c66723e557365722070726f66696c653c2f66723e, NULL, 'front', '', '', NULL, 'N'),
('20', 'sitemap', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e536974656d6170206c61796f75743c2f66723e, NULL, 'admin', '', '', NULL, 'N'),
('22', 'entrypage', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c656e3e456e74727920506167653c2f656e3e3c66723e456e74727920506167653c2f66723e, NULL, 'front', '', '', NULL, 'N'),
('24', 'synchronization', 'root', 'root', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0x3c66723e53796e6368726f6e697a6174696f6e206c61796f75743c2f66723e, NULL, 'admin', '', '', NULL, 'N'),
('11365480442006042303394021t111', 'userhome', 'root', 'root', 4, '2006-04-23 03:39:40', '2006-04-23 03:46:07', 0x3c656e3e55736572206172656120686f6d653c2f656e3e, NULL, 'front', '', '', NULL, 'N'),
('11365480442010012419012073q111', 'payment_UPC', 'ap1', 'root', 4, '2010-01-24 19:01:20', '2010-01-24 19:01:20', 0x3c656e3e7061796d656e745f5550433c2f656e3e, NULL, 'front', '', '', NULL, 'N'),
('11365480442012091820125748x111', 'loginlogoutaccount', 'ksport', 'root', 4, '2012-09-18 20:12:57', '2012-09-20 15:54:59', 0x3c72753e53656374696f6e206c6f67696e20616e64206c6f676f7574206c656d626572673c2f72753e3c656e3e53656374696f6e206c6f67696e20616e64206c6f676f7574206c656d626572673c2f656e3e, NULL, 'front', '', '', NULL, 'N'),
('11365480442012092015502064r111', 'adminpanellayout', 'ksport', 'root', 4, '2012-09-20 15:50:20', '2012-09-20 15:50:49', 0x3c72753e41646d696e2050616e656c204c61796f75743c2f72753e3c656e3e41646d696e2050616e656c204c61796f75743c2f656e3e, NULL, 'front', '', '', NULL, 'N');

-- --------------------------------------------------------

--
-- Структура таблиці `viewbox`
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
-- Дамп даних таблиці `viewbox`
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
-- Структура таблиці `website`
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
-- Структура таблиці `websiteowners`
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

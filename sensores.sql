-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 01 2016 г., 14:38
-- Версия сервера: 5.5.45
-- Версия PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `sensores`
--

-- --------------------------------------------------------

--
-- Структура таблицы `object1`
--

CREATE TABLE IF NOT EXISTS `object1` (
  `time` int(13) unsigned NOT NULL,
  `s1` double NOT NULL,
  `s2` double NOT NULL,
  `s3` double NOT NULL,
  `s4` double NOT NULL,
  UNIQUE KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `object1`
--

INSERT INTO `object1` (`time`, `s1`, `s2`, `s3`, `s4`) VALUES
(1478000086, -15, -9, 24, -9),
(1478000082, 40, 6, 17, 18),
(1478000076, 17, 18, 12, 18),
(1477999981, 28, 29, 39, 33),
(1477999976, 29, 30, -9, -8),
(1477999971, 7, 31, 32, -11),
(1477999966, 4, 0, -8, 31),
(1477999961, -5, -12, -20, -13),
(1477999956, -11, -1, -6, 28),
(1477999951, 39, -5, -17, 6),
(1477999946, 29, -11, 24, 28),
(1477999941, 36, 8, 16, 29);

-- --------------------------------------------------------

--
-- Структура таблицы `objects`
--

CREATE TABLE IF NOT EXISTS `objects` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `last_time` int(13) unsigned NOT NULL,
  PRIMARY KEY (`name`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

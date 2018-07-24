-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июл 24 2018 г., 08:44
-- Версия сервера: 10.1.34-MariaDB
-- Версия PHP: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `chocolife`
--

-- --------------------------------------------------------

--
-- Структура таблицы `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL,
  `title` varchar(192) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` date DEFAULT NULL,
  `status` varchar(192) CHARACTER SET utf8mb4 DEFAULT NULL,
  `slug` varchar(192) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `discounts`
--

INSERT INTO `discounts` (`id`, `title`, `start`, `end`, `status`, `slug`) VALUES
(17, '\"Ð¡ÐºÐ¸Ð´ÐºÐ° 60% Ð½Ð° Ñ„Ð¸Ñ€Ð¼ÐµÐ½Ð½Ñ‹Ð¹ ÐºÐ¾Ñ„Ðµ Ð¸ Ð´ÐµÑÐµÑ€Ñ‚ Crepe suzette Ð² ÐºÐ¾Ñ„ÐµÐ¹Ð½Ðµ Black berry\"', 1303509600, '2011-04-29', 'On', 'Skidka-60-na-firmennyy-kofe-i-desert-crepe-suzette-v-kofeyne-black-berry'),
(18, '\"Ð¡Ð´ÐµÐ»Ð°Ð¹ Ð¨Ð°Ð³ Ð²Ð¿ÐµÑ€ÐµÐ´ - Ð½Ð°ÑÑ‚Ð¾ÑÑ‰Ð¸Ð¹ Ñ‚Ð°Ð½Ñ†ÐµÐ²Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ð±Ð°Ñ‚Ñ‚Ð» Ð² Ñ‚Ñ€ÐµÑ… Ð¼ÐµÑ‚Ñ€Ð°Ñ… Ð¾Ñ‚ Ñ‚ÐµÐ±Ñ\"', 1303164000, '2011-04-24', 'Off', 'Sdelay-Shag-vpered-nastoyaschiy-tanceval\'nyy-battl-v-treh-metrah-ot-tebya'),
(19, '\"Ð˜Ð´ÐµÐ°Ð»ÑŒÐ½Ñ‹Ð¹ Ð¼Ð°Ð½Ð¸ÐºÑŽÑ€ Ð½Ð° 3 Ð½ÐµÐ´ÐµÐ»Ð¸ Ð±ÐµÐ· ÐºÐ¾Ñ€Ñ€ÐµÐºÑ†Ð¸Ð¸\"', 1304114400, '2011-05-03', 'Off', 'Ideal\'nyy-manikyur-na-3-nedeli-bez-korrekcii'),
(22, '\"ÐœÐµÐºÑÐ¸ÐºÐ°Ð½ÑÐºÐ¸Ð¹ ÑƒÐ¶Ð¸Ð½ Ð½Ð° ÐœÐµÐ´ÐµÐ¾ Ñ 60% ÑÐºÐ¸Ð´ÐºÐ¾Ð¹\"', 1304978400, '2011-05-13', 'On', 'Meksikanskiy-uzhin-na-Medeo-s-60-skidkoy'),
(23, '\"ÐŸÐ¾Ð»Ð¸Ñ€Ð¾Ð²ÐºÐ° ÐºÑƒÐ·Ð¾Ð²Ð° + Ñ…Ð¸Ð¼Ñ‡Ð¸ÑÑ‚ÐºÐ° ÑÐ°Ð»Ð¾Ð½Ð° ÑÐ¾ ÑÐºÐ¸Ð´ÐºÐ¾Ð¹ 60%\"', 1304373600, '2011-05-06', 'On', 'Polirovka-kuzova-himchistka-salona-so-skidkoy-60'),
(24, '\"Ð’ Ð¾Ñ‚Ð¿ÑƒÑÐº Ðº Ð¼Ð¾Ñ€ÑŽ Ð½Ð°Ð»ÐµÐ³ÐºÐµ\"', 1304114400, '2011-05-30', 'Off', 'V-otpusk-k-moryu-nalegke'),
(25, '\"Ð‘Ñ‹Ñ‚ÑŒ Ð·Ð²ÐµÐ·Ð´Ð¾Ð¹ - ÑÑ‚Ð¾ Ð¿Ñ€Ð¾Ñ„ÐµÑÑÐ¸Ñ!\"', 1304114400, '2011-05-30', 'Off', 'Byt\'-zvezdoy-eto-professiya'),
(26, '\"Ð–Ð¸Ð²Ð¸ Ð² Ð³Ð°Ñ€Ð¼Ð¾Ð½Ð¸Ð¸ Ð¸ Ñ€Ð°Ð´Ð¾ÑÑ‚Ð¸\"', 1304287200, '2011-05-16', 'On', 'Zhivi-v-garmonii-i-radosti'),
(28, '\"Ð›Ð°Ð¼Ð¸Ð½Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð²Ð¾Ð»Ð¾Ñ ÑÐ¾ ÑÐºÐ¸Ð´ÐºÐ¾Ð¹ 60% Ð² ÑÐ°Ð»Ð¾Ð½Ðµ ÐºÑ€Ð°ÑÐ¾Ñ‚Ñ‹ Gaziza\"', 1304632800, '2011-05-10', 'Off', 'Laminirovanie-volos-so-skidkoy-60-v-salone-krasoty-gaziza'),
(31, '\"ÐžÑ‡ÐµÐ½ÑŒ Ð²ÐºÑƒÑÐ½Ð¾Ðµ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ\"', 1305064800, '2011-06-11', 'Off', 'Ochen\'-vkusnoe-predlozhenie');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

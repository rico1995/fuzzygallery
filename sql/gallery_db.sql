-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Gép: localhost:3306
-- Létrehozás ideje: 2020. Aug 27. 11:23
-- Kiszolgáló verziója: 5.7.31-0ubuntu0.18.04.1
-- PHP verzió: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `gallery_db`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `comments`
--

INSERT INTO `comments` (`id`, `photo_id`, `author`, `body`) VALUES
(3, 144, 'asd', 'asd'),
(5, 139, 'teszt', '12313');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `filename` varchar(255) NOT NULL,
  `alternate_text` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `photos`
--

INSERT INTO `photos` (`id`, `title`, `caption`, `description`, `filename`, `alternate_text`, `type`, `size`) VALUES
(139, 'keknyitott_ajtofel_szerkesztett', '123daca', '<p>kekauto nyitott ajtokkal</p>', 'images-5 copy.jpg', 'kekauto', 'image/jpeg', 33192),
(140, 'adasd231', '', '', 'images-10 copy.jpg', '', 'image/jpeg', 20401),
(141, '3251241', '', '', 'images-11 copy.jpg', '', 'image/jpeg', 27916),
(144, 'r23d123', '', '', 'images-43 copy.jpg', '', 'image/jpeg', 27955),
(145, '321d12312', '', '', 'images-40.jpg', '', 'image/jpeg', 24385),
(146, 'narancs', '', '', 'images-1.jpg', '', 'image/jpeg', 28947),
(149, 'nagysarga', '', '', '_large_image_4.jpg', '', 'image/jpeg', 554659),
(150, 'kekcabri', '', '', 'images-9.jpg', '', 'image/jpeg', 21108),
(151, 'sotetkek', '', '', 'images-4.jpg', '', 'image/jpeg', 23270),
(152, '', '', '', 'images-38.jpg', '', 'image/jpeg', 21857),
(153, '', '', '', 'images-35.jpg', '', 'image/jpeg', 23672),
(154, '', '', '', 'images-50.jpg', '', 'image/jpeg', 21652),
(155, '', '', '', 'image-1 copy.jpg', '', 'image/jpeg', 328747),
(156, '', '', '', 'images_2.jpg', '', 'image/jpeg', 18578),
(157, '', '', '', 'image-1.jpg', '', 'image/jpeg', 328747),
(158, '', '', '', 'images-1 copy.jpg', '', 'image/jpeg', 28947),
(159, '', '', '', 'images-2 copy.jpg', '', 'image/jpeg', 18578),
(160, '', '', '', 'images-3 copy.jpg', '', 'image/jpeg', 18096),
(161, '', '', '', 'images-3.jpg', '', 'image/jpeg', 18096),
(162, '', '', '', 'images-4 copy.jpg', '', 'image/jpeg', 23270),
(163, '', '', '', 'images-5.jpg', '', 'image/jpeg', 33192),
(164, '', '', '', 'images-6.jpg', '', 'image/jpeg', 21886),
(165, '', '', '', 'images-7 copy.jpg', '', 'image/jpeg', 24140),
(166, '', '', '', 'images-6 copy.jpg', '', 'image/jpeg', 21886),
(167, '', '', '', 'images-10.jpg', '', 'image/jpeg', 20401),
(168, '', '', '', 'images-12.jpg', '', 'image/jpeg', 18540),
(169, '', '', '', 'images-13 copy.jpg', '', 'image/jpeg', 22082),
(170, '', '', '', 'images-13.jpg', '', 'image/jpeg', 22082),
(171, '', '', '', 'images-14 copy.jpg', '', 'image/jpeg', 21992),
(172, '', '', '', 'images-15 copy.jpg', '', 'image/jpeg', 28466),
(173, '', '', '', 'images-16 copy.jpg', '', 'image/jpeg', 21133),
(174, '', '', '', 'images-15.jpg', '', 'image/jpeg', 28466),
(175, '', '', '', 'images-16.jpg', '', 'image/jpeg', 21133),
(176, '', '', '', 'images-17 copy.jpg', '', 'image/jpeg', 22792),
(177, '', '', '', 'images-17.jpg', '', 'image/jpeg', 22792),
(178, '', '', '', 'images-18 copy.jpg', '', 'image/jpeg', 27595),
(179, '', '', '', 'images-18.jpg', '', 'image/jpeg', 27595),
(180, '', '', '', 'images-19 copy.jpg', '', 'image/jpeg', 22792),
(181, '', '', '', 'images-19.jpg', '', 'image/jpeg', 22792),
(182, '', '', '', 'images-20 copy.jpg', '', 'image/jpeg', 22942),
(183, '', '', '', 'images-20.jpg', '', 'image/jpeg', 22942),
(184, '', '', '', 'images-21 copy.jpg', '', 'image/jpeg', 19957),
(185, '', '', '', 'images-21.jpg', '', 'image/jpeg', 19957),
(186, '', '', '', 'images-22 copy.jpg', '', 'image/jpeg', 21133),
(187, '', '', '', 'images-22.jpg', '', 'image/jpeg', 21133),
(188, '', '', '', 'images-23 copy.jpg', '', 'image/jpeg', 22792),
(189, '', '', '', 'images-23.jpg', '', 'image/jpeg', 22792),
(190, '', '', '', 'images-24 copy.jpg', '', 'image/jpeg', 29850),
(191, '', '', '', 'images-24.jpg', '', 'image/jpeg', 29850),
(192, '', '', '', 'images-25 copy.jpg', '', 'image/jpeg', 19363),
(193, '', '', '', 'images-25.jpg', '', 'image/jpeg', 19363),
(194, '', '', '', 'images-26 copy.jpg', '', 'image/jpeg', 21802),
(195, '', '', '', 'images-26.jpg', '', 'image/jpeg', 21802),
(196, '', '', '', 'images-27 copy.jpg', '', 'image/jpeg', 17662),
(197, '', '', '', 'images-27.jpg', '', 'image/jpeg', 17662),
(198, '', '', '', 'images-28 copy.jpg', '', 'image/jpeg', 17662),
(199, '', '', '', 'images-28.jpg', '', 'image/jpeg', 17662),
(200, '', '', '', 'images-29 copy.jpg', '', 'image/jpeg', 25493),
(201, '', '', '', 'images-29.jpg', '', 'image/jpeg', 25493),
(202, '', '', '', 'images-30 copy.jpg', '', 'image/jpeg', 20257),
(203, '', '', '', 'images-30.jpg', '', 'image/jpeg', 20257),
(204, '', '', '', 'images-31 copy.jpg', '', 'image/jpeg', 20928),
(205, '', '', '', 'images-31.jpg', '', 'image/jpeg', 20928),
(206, '', '', '', 'images-32 copy.jpg', '', 'image/jpeg', 22772),
(207, '', '', '', 'images-32.jpg', '', 'image/jpeg', 22772),
(208, '', '', '', 'images-33 copy.jpg', '', 'image/jpeg', 16855),
(209, '', '', '', 'images-34 copy.jpg', '', 'image/jpeg', 23587),
(210, '', '', '', 'images-34.jpg', '', 'image/jpeg', 23587),
(211, '', '', '', 'images-35 copy.jpg', '', 'image/jpeg', 23672),
(212, '', '', '', 'images-36 copy.jpg', '', 'image/jpeg', 21672),
(213, '', '', '', 'images-36.jpg', '', 'image/jpeg', 21672),
(214, '', '', '', 'images-37 copy.jpg', '', 'image/jpeg', 20381),
(215, '', '', '', 'images-38 copy.jpg', '', 'image/jpeg', 21857),
(216, '', '', '', 'images-39 copy.jpg', '', 'image/jpeg', 24969),
(217, '', '', '', 'images-39.jpg', '', 'image/jpeg', 24969),
(218, '', '', '', 'images-40 copy.jpg', '', 'image/jpeg', 24385),
(219, '', '', '', 'images-41 copy.jpg', '', 'image/jpeg', 16296),
(220, '', '', '', 'images-41.jpg', '', 'image/jpeg', 16296),
(221, '', '', '', 'images-42 copy.jpg', '', 'image/jpeg', 22401),
(222, '', '', '', 'images-42.jpg', '', 'image/jpeg', 22401),
(223, '', '', '', 'images-43.jpg', '', 'image/jpeg', 27955),
(224, '', '', '', 'images-44 copy.jpg', '', 'image/jpeg', 29486),
(225, '', '', '', 'images-44.jpg', '', 'image/jpeg', 29486),
(226, '', '', '', 'images-50 copy.jpg', '', 'image/jpeg', 21652);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `user_image`) VALUES
(101, 'rico', '123', 'Richard', 'Major', '_large_image_4.jpg'),
(103, 'test_user', '123', 'test', 'user', '_large_image_3.jpg'),
(108, 'New user', '123', 'Maria', 'Williams', 'images-1.jpg'),
(109, 'asd', '12313', 'tes', 't12', 'images-11.jpg'),
(110, 'dodo', '123', 'Doe', 'John', 'images-33.jpg');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photo_id` (`photo_id`);

--
-- A tábla indexei `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT a táblához `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

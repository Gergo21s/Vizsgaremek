-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 27. 10:29
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `partyservice`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `information`
--

CREATE TABLE `information` (
  `id` int(2) NOT NULL,
  `fellepo1` varchar(250) DEFAULT NULL,
  `fellepo2` varchar(250) DEFAULT NULL,
  `fellepo3` varchar(250) DEFAULT NULL,
  `fellepo4` varchar(250) DEFAULT NULL,
  `fellepo5` varchar(250) DEFAULT NULL,
  `text` varchar(250) DEFAULT NULL,
  `dress` varchar(250) DEFAULT NULL,
  `ticket` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `information`
--

INSERT INTO `information` (`id`, `fellepo1`, `fellepo2`, `fellepo3`, `fellepo4`, `fellepo5`, `text`, `dress`, `ticket`) VALUES
(1, 'Joer Junior', 'Tankcsapda', 'PureBeat', 'Wellhello', 'Caramel', 'A beléptetés jogát a biztonsági szolgálat fenntartja!', 'cool & elegant', 'A belépőjegy egyszeri belépésre jogosít'),
(2, 'VALMAR', 'Follow The Flow', 'Halott Pénz', 'Rácz Gergő ', 'Rúzsa Magdi', 'A beléptetés jogát a biztonsági szolgálat fenntartja!', 'cool & elegant', 'A belépőjegy egyszeri belépésre jogosít'),
(3, 'Opitz Barbi', 'Király Viktor', 'Majka', 'Curtis', 'Pápai Joci', 'A beléptetés jogát a biztonsági szolgálat fenntartja!', 'cool & elegant', 'A belépőjegy egyszeri belépésre jogosít'),
(4, 'Beton.Hofi', 'Manuel', 'Azahriah', 'Bagossy Brothers Company ', 'ByeAlex és a Sleep', 'A beléptetés jogát a biztonsági szolgálat fenntartja!', 'cool & elegant', 'A belépőjegy egyszeri belépésre jogosít'),
(5, 'Groovehouse', 'T.Danny', 'Kkevin', 'BSW', 'Dér Heni', 'A beléptetés jogát a biztonsági szolgálat fenntartja!', 'cool & elegant', 'A belépőjegy egyszeri belépésre jogosít'),
(6, 'Lil-G', 'Hooligans', 'Péter Sramek', 'Rico Miss Mood', 'Ruszó Tibi', 'A beléptetés jogát a biztonsági szolgálat fenntartja!', 'cool & elegant', 'A belépőjegy egyszeri belépésre jogosít'),
(7, 'Tóth Andi', 'Ganxsta Zolee és a Kartel', 'Krúbi', 'Pumped Gabo', 'DJ Christopher', 'A beléptetés jogát a biztonsági szolgálat fenntartja!', 'cool & elegant', 'A belépőjegy egyszeri belépésre jogosít'),
(8, 'Eminem', 'Travis Scott', 'Billie Eilish', 'Dua Lipa', 'The Weeknd', 'A beléptetés jogát a biztonsági szolgálat fenntartja!', 'cool & elegant', 'A belépőjegy egyszeri belépésre jogosít'),
(9, 'Post Malone', 'Drake', 'J Balvin', 'Taylor Swift', 'Imagine Dragons', 'A beléptetés jogát a biztonsági szolgálat fenntartja!', 'cool & elegant', 'A belépőjegy egyszeri belépésre jogosít');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `programs`
--

CREATE TABLE `programs` (
  `id` int(10) NOT NULL,
  `img` varchar(250) DEFAULT NULL,
  `date` varchar(250) DEFAULT NULL,
  `time` varchar(250) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `programs`
--

INSERT INTO `programs` (`id`, `img`, `date`, `time`, `price`, `description`) VALUES
(1, 'kep1_meret.png', '03.01 Péntek', '22:00-05:00', 3000, 'Normál jegy(soron kívüli bejutással)'),
(2, 'kep2_meret.png', '05.12 Vasárnap', '20:00-04:00', 5000, 'Normál jegy(soron kívüli bejutással)'),
(3, 'kep3_meret.png', '05.22 Szerda', '22:00-06:00', 3500, 'Normál jegy(soron kívüli bejutással)'),
(4, 'kep4_meret.png', '05.30 Csütörtök', '22:00-05:00', 3200, 'Normál jegy(soron kívüli bejutással)'),
(5, 'kep5_meret.png', '06.02 Vasárnap', '23:00-04:00', 4000, 'Normál jegy(soron kívüli bejutással)'),
(6, 'kep6_meret.png', '06.12 Szerda', '22:00-03:00', 42000, 'Normál jegy(soron kívüli bejutással)'),
(7, 'kep7_meret.png', '06.20 Csütörtök', '22:00-05:00', 4500, 'Normál jegy(soron kívüli bejutással)'),
(8, 'kep8_meret.png', '07.01 Hétfő', '20:00-03:00', 3000, 'Normál jegy(soron kívüli bejutással)'),
(9, 'kep9_meret.png', '07.13 Szombat', '20:00-04:30 ', 4500, 'Normál jegy(soron kívüli bejutással)');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `promoters`
--

CREATE TABLE `promoters` (
  `id` int(10) NOT NULL,
  `img` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `mail` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `promoters`
--

INSERT INTO `promoters` (`id`, `img`, `name`, `mail`, `phone`) VALUES
(1, 'promoter8.png', 'Kányási Evelin', 'kanyasi-evi@gmail.com', '+36305030900'),
(2, 'füles.PNG', 'Vörös Alexandra', 'voros_alexandra@gmail.com', '+36703080442'),
(3, 'promoter2.1.PNG', 'Burunkai Bernadett', 'berni21@gmail.com', '+36203456789'),
(4, 'promoter2.2.PNG', 'Papp Zsófia', 'zsofia_papp99@gmail.com', '+36306633905'),
(5, 'promoter2.3.PNG', 'Füredi Zsanett', 'zsnai45@gmail.com', '+36305260011'),
(6, 'promoter2.4.PNG', 'Rab Dorottya', 'dorcsi_rab@gmail.com', '+36203330156'),
(7, 'promoter2.5.PNG', 'Börcsök Barbara', 'barbi_borcsok31@gmail.com', '+36305230212'),
(8, 'promoter2.0.PNG', 'Faludi Andi', 'faludiandrea_455@gmail.com', '+36705230972'),
(9, 'anyu.PNG', 'Szentesi Erika', 'erika99@gmail.com', '+36304567221');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) NOT NULL,
  `rating` int(1) NOT NULL,
  `rating_text` text DEFAULT NULL,
  `rating_answer` text DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `rating`, `rating_text`, `rating_answer`, `date`) VALUES
(1, 1, 5, 'A PartyService mindig megmenti a napomat! A legutóbbi születésnapi bulim káprázatos volt, köszönhetően az elképesztő dekorációknak és a segítőkész csapatnak. ', 'Köszönjük szépen az értékelést!', '2022-09-08'),
(2, 10, 4, 'Az esküvőnk a PartyService segítségével igazi álom volt. Minden részletre odafigyeltek, és a dekoráció gyönyörű volt!', NULL, '2021-05-13'),
(3, 18, 5, 'Nagyszerű élmény volt együttműködni a PartyService csapatával a cégem éves rendezvényének szervezésekor. Profik az utolsó pillanatig!', NULL, '2023-06-06'),
(4, 9, 5, 'Csak a PartyService-ben bízok, ha egy különleges partit szervezek. Kiváló termékek és fantasztikus szolgáltatás minden alkalomra!', NULL, '2022-08-19'),
(5, 11, 5, 'Nem találhatnék jobb partiszervizt Magyarországon. A PartyService mindig új és izgalmas ötletekkel áll elő, és segít megvalósítani az elképzeléseimet.', NULL, '2019-10-21'),
(6, 15, 5, 'A PartyService hűséges ügyfeleként azt kell mondanom, hogy mindig a legjobbat kapjuk. A termékeik minősége és az elképesztő kreativitásuk garantálja a sikerünket. Mindig bízom bennük, hogy minden részletre odafigyelnek, és a rendezvényünk minden elvárásunkat felülmúlja.', NULL, '2022-05-29'),
(7, 6, 5, 'Egyszerűen nem tudom elképzelni egy rendezvényt a PartyService nélkül. Minden alkalommal meglepnek a szakértelemmel és az odaadással. A csapat mindig elérhető, hogy megoldást találjon az összes kihívásra, és garantálja, hogy a buli tökéletes legyen minden szempontból.', NULL, '2023-06-08');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reservation`
--

CREATE TABLE `reservation` (
  `id` int(5) NOT NULL,
  `type_id` int(3) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `post_code` varchar(4) NOT NULL,
  `city` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `message` text DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `reservation`
--

INSERT INTO `reservation` (`id`, `type_id`, `last_name`, `first_name`, `email`, `phone`, `post_code`, `city`, `address`, `message`, `date`) VALUES
(1, 1, 'Bálint', 'Martin', 'valami@gmail.com', '34556778', '1234', 'FÖldeák', 'Ady Endre utca 56.', 'Valami buli', '2024-03-07 09:42:57'),
(2, 1, 'Kiss', 'Patrik', 'patrik@gmail.com', '234546547', '6922', 'Földeák', 'Szent László tér 18.', 'Nagyon jók a szolgáltatások', '2024-03-25 10:05:54');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reservation_type`
--

CREATE TABLE `reservation_type` (
  `id` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(7) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `reservation_type`
--

INSERT INTO `reservation_type` (`id`, `name`, `description`, `price`, `img`) VALUES
(1, 'White VIP Table', 'Ez az asztal egész éjszakára lefoglalható. 190 euró a minimális alkoholköltség / asztal.', '190 €', 'asztal1_meret-min.png'),
(2, 'Black VIP Table', 'Ez az asztal egész éjszakára lefoglalható. 290 euró a minimális alkoholköltség / asztal.', '290 €', 'asztal2_meret-min.png'),
(3, 'VIP Room', 'Ez az asztal egész éjszakára lefoglalható. 290 euró a minimális alkoholköltség / asztal.', '290 €', 'asztal3_meret-min.png'),
(4, 'VIP Stage', 'Ez az asztal egész éjszakára lefoglalható. 490 euró a minimális alkoholköltség / asztal.', '490 €', 'asztal4_meret-min.png');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_role_id` int(1) NOT NULL DEFAULT 2,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `born` date NOT NULL,
  `gender_id` int(1) NOT NULL,
  `img` blob DEFAULT NULL,
  `img_type` varchar(100) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postcode` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL,
  `last_login` datetime NOT NULL,
  `wrong_attempts` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `valid` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `verification_code` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `user_role_id`, `last_name`, `first_name`, `born`, `gender_id`, `img`, `img_type`, `country`, `country_code`, `phone`, `city`, `postcode`, `address`, `email`, `password`, `created`, `modified`, `last_login`, `wrong_attempts`, `valid`, `verification_code`) VALUES
(1, 1, 'Kertész', 'István', '1983-06-23', 1, NULL, 'image/jpeg', 'hungary', '36', '303390610', 'Hódmezővásárhely', '6800', 'Beöthy u. 11.', 'kertesz.istvan-e2022@keri.mako.hu', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-11 06:07:07', '2023-12-13 08:47:28', '2024-01-17 20:47:02', 0, 1, ''),
(2, 1, 'Joó', 'Mária', '1968-09-04', 2, NULL, 'image/jpeg', 'hungary', '36', '308061386', 'Makó', '6900', 'Bajcsy-Zs.ltp. A/2.', 'joo.maria-e2022@keri.mako.hu', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:12:48', '2024-01-14 15:38:49', '2024-01-17 20:40:14', 0, 1, ''),
(3, 1, 'Hevesi', 'Szabolcs', '1992-06-11', 1, NULL, 'image/jpeg', 'hungary', '36', '702301503', 'Szeged', '6725', 'Rábéi u.9.', 'hevesi.szabolcs-e2022@keri.mako.hu', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:17:14', '2023-12-27 14:17:39', '2024-01-17 20:49:04', 0, 1, ''),
(4, 2, 'Kovács', 'Gábor', '1980-01-15', 1, NULL, NULL, 'hungary', '36', '503456789', 'Csongrád', '6640', 'Kossuth utca 12', 'kovacs.gabor@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:43:41', NULL, '2023-10-09 16:09:51', 0, 1, ''),
(5, 2, 'Tóth', 'Zsuzsanna', '1995-03-20', 2, NULL, NULL, 'hungary', '36', '207654321', 'Szeged', '6720', 'Petőfi utca 8', 'toth.zsuzsanna@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:43:41', NULL, '2023-10-15 16:00:24', 0, 1, ''),
(6, 2, 'Szabó', 'András', '1987-07-10', 1, NULL, NULL, 'hungary', '36', '204567890', 'Hódmezővásárhely', '6800', 'Rákóczi utca 15', 'szabo.andras@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:43:41', NULL, '0000-00-00 00:00:00', 0, 1, ''),
(7, 2, 'Horváth', 'Katalin', '1976-11-25', 2, NULL, NULL, 'hungary', '36', '305678901', 'Makó', '6900', 'Jókai utca 3', 'horvath.katalin@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:43:41', NULL, '0000-00-00 00:00:00', 0, 1, ''),
(8, 2, 'Kiss', 'László', '1990-04-30', 1, NULL, NULL, 'hungary', '36', '706789012', 'Szentes', '6600', 'Ady Endre utca 7', 'kiss.laszlo@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:43:41', NULL, '0000-00-00 00:00:00', 0, 1, ''),
(9, 2, 'Nagy', 'Mária', '1985-08-05', 2, NULL, NULL, 'hungary', '36', '307890123', 'Csongrád', '6640', 'Dózsa György utca 20', 'nagy.maria@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:43:41', NULL, '0000-00-00 00:00:00', 0, 1, ''),
(10, 2, 'Kovács', 'Péter', '1973-12-18', 1, NULL, NULL, 'hungary', '36', '708901234', 'Szeged', '6720', 'Bajnai utca 10', 'kovacs.peter@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:43:41', NULL, '0000-00-00 00:00:00', 0, 1, ''),
(11, 2, 'Tóth', 'Anna', '1988-06-22', 2, NULL, NULL, 'hungary', '36', '709012345', 'Hódmezővásárhely', '6800', 'Petőfi Sándor utca 5', 'toth.anna@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:43:41', NULL, '0000-00-00 00:00:00', 0, 1, ''),
(12, 2, 'Szabó', 'István', '1977-09-12', 1, NULL, NULL, 'hungary', '36', '300123456', 'Makó', '6900', 'Kossuth tér 1', 'szabo.istvan@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:43:41', NULL, '0000-00-00 00:00:00', 0, 1, ''),
(13, 2, 'Horváth', 'Zsófia', '1993-02-08', 2, NULL, NULL, 'hungary', '36', '201234567', 'Szentes', '6600', 'Rákóczi tér 6', 'horvath.zsofia@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:43:41', NULL, '0000-00-00 00:00:00', 0, 1, ''),
(14, 2, 'Kiss', 'Ferenc', '1982-09-14', 1, NULL, NULL, 'hungary', '36', '305678901', 'Csongrád', '6640', 'Kossuth utca 25', 'kiss.ferenc@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:45:08', NULL, '0000-00-00 00:00:00', 0, 1, ''),
(15, 2, 'Nagy', 'Éva', '1989-03-02', 2, NULL, NULL, 'hungary', '36', '706789012', 'Szeged', '6720', 'Petőfi utca 12', 'nagy.eva@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:45:08', NULL, '0000-00-00 00:00:00', 0, 1, ''),
(16, 2, 'Tóth', 'György', '1983-07-08', 1, NULL, NULL, 'hungary', '36', '507890123', 'Hódmezővásárhely', '6800', 'Rákóczi utca 9', 'toth.gyorgy@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:45:08', NULL, '0000-00-00 00:00:00', 0, 1, ''),
(17, 2, 'Szabó', 'Ildikó', '1992-12-01', 2, NULL, NULL, 'hungary', '36', '708901234', 'Makó', '6900', 'József Attila utca 6', 'szabo.ildiko@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:45:08', NULL, '0000-00-00 00:00:00', 0, 1, ''),
(18, 2, 'Kovács', 'Pál', '1975-05-20', 1, NULL, NULL, 'hungary', '36', '709012345', 'Szentes', '6600', 'Bajnai utca 5', 'kovacs.pal@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:45:08', NULL, '0000-00-00 00:00:00', 0, 1, ''),
(19, 2, 'Takács', 'Zsolt', '1997-10-10', 1, NULL, NULL, 'hungary', '36', '700123456', 'Csongrád', '6640', 'Dózsa utca 10', 'takacs.zsolt@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:45:08', NULL, '0000-00-00 00:00:00', 0, 1, ''),
(20, 2, 'Varga', 'Judit', '1984-04-17', 2, NULL, NULL, 'hungary', '36', '3001234567', 'Szeged', '6720', 'Rákóczi tér 2', 'varga.judit@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:45:08', NULL, '0000-00-00 00:00:00', 0, 1, ''),
(21, 2, 'Molnár', 'Lajos', '1991-08-22', 1, NULL, NULL, 'hungary', '36', '202345678', 'Hódmezővásárhely', '6800', 'Petőfi Sándor tér 1', 'molnar.lajos@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:45:08', NULL, '0000-00-00 00:00:00', 0, 1, ''),
(22, 2, 'Farkas', 'Mónika', '1978-01-03', 2, NULL, NULL, 'hungary', '36', '203456789', 'Makó', '6900', 'Kossuth tér 8', 'farkas.monika@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:45:08', NULL, '0000-00-00 00:00:00', 0, 1, ''),
(23, 2, 'Balogh', 'Ferenc', '1994-06-12', 1, NULL, NULL, 'hungary', '36', '704567890', 'Szentes', '6600', 'Rákóczi tér 5', 'balogh.ferenc@example.com', '$2y$10$/AYGAbH1sQoN8UJpGSJ7n.68yQO8FZz.8pY0XZtPaBrxL8pBmPgBm', '2023-09-24 15:45:08', NULL, '0000-00-00 00:00:00', 0, 1, ''),
(24, 2, 'István', 'Kertész', '1983-06-24', 2, NULL, NULL, 'hungary', '36', '303390610', 'Hmv', '6800', 'Beöthy u. 11.', 'pityi@gmail.com', '$2y$10$JK8oLnm7CiVk7K1sgyha9OIlSQ6oTjh/17oGuM38FjzQuXkaEs36y', '2023-10-16 08:45:28', NULL, '0000-00-00 00:00:00', 0, 1, 'bf20b4c721d962df1ef56eedf84826c6'),
(26, 2, 'Kőhegyi', 'Orsolya', '1980-12-13', 2, NULL, NULL, 'HUNGARY', '36', '20819778', 'Hódmezővásárhely', '6800', 'Hattyas u. 12', 'orsika@freemail.hu', '$2y$10$OLSdPaGliv/eGPIOfdoc4.QgyH4KkjdhUOQxXBarTtXY.H8aHfFAm', '2023-10-16 08:56:15', NULL, '0000-00-00 00:00:00', 0, 1, '103002ad0f5b5dcb86bb287439d233bd'),
(31, 2, 'Kosa', 'Tamás', '1990-08-14', 1, NULL, NULL, 'HUNGARY', '36', '30665488', 'Hódmezővásárhely', '6800', 'Beöthy u. 11', 'a@b.co', '$2y$10$uqDhBAye6zzZP8XbSl/aJewE286IqdFKpkXQ5dK60nBTbiKrWolY.', '2023-11-06 17:52:54', NULL, '0000-00-00 00:00:00', 1, 1, '1b8541ea0ead5086234e457ba41cf827'),
(32, 2, 'Nagy', 'Gábor', '2001-02-08', 1, NULL, NULL, 'HUNGARY', '36', '305124887', 'Debrecen', '4000', 'debreceni út 12.', 'n.gabor@gmail.com', '$2y$10$j1g9RYXS0s3RdNHf52rVoedfy0fCfwfYXiaxDwM1hj9DUHKwJ3M4W', '2023-12-13 07:59:21', NULL, '0000-00-00 00:00:00', 0, 1, 'dd39ae3840cf996db017248ae60fdc42');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `promoters`
--
ALTER TABLE `promoters`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_id` (`type_id`);

--
-- A tábla indexei `reservation_type`
--
ALTER TABLE `reservation_type`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `information`
--
ALTER TABLE `information`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `promoters`
--
ALTER TABLE `promoters`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT a táblához `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `reservation_type`
--
ALTER TABLE `reservation_type`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `reservation_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

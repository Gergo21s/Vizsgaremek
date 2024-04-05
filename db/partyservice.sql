-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Ápr 05. 11:06
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
(6, 'kep6_meret.png', '06.12 Szerda', '22:00-03:00', 4200, 'Normál jegy(soron kívüli bejutással)'),
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
-- Tábla szerkezet ehhez a táblához `registration`
--

CREATE TABLE `registration` (
  `id` int(10) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `post_code` varchar(4) NOT NULL,
  `city` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(2, 1, 'Kiss', 'Patrik', 'patrik@gmail.com', '234546547', '6922', 'Földeák', 'Szent László tér 18.', 'Nagyon jók a szolgáltatások', '2024-03-25 10:05:54'),
(3, 3, 'Szabó', 'Lajos', 'szabo@gmail.com', '06302878726', '5544', 'Ózd', 'Orgona utca 6.', NULL, '2024-04-04 11:05:22');

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
-- Tábla szerkezet ehhez a táblához `ticketreservation`
--

CREATE TABLE `ticketreservation` (
  `id` int(5) NOT NULL,
  `type_id` int(3) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `post_code` varchar(4) NOT NULL,
  `city` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ticketreservation_type`
--

CREATE TABLE `ticketreservation_type` (
  `id` int(5) NOT NULL,
  `img` varchar(50) CHARACTER SET utf8 NOT NULL,
  `fellepo1` varchar(20) CHARACTER SET utf8 NOT NULL,
  `fellepo2` varchar(20) CHARACTER SET utf8 NOT NULL,
  `fellepo3` varchar(20) CHARACTER SET utf8 NOT NULL,
  `fellepo4` varchar(20) CHARACTER SET utf8 NOT NULL,
  `fellepo5` varchar(20) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `price` varchar(7) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `ticketreservation_type`
--

INSERT INTO `ticketreservation_type` (`id`, `img`, `fellepo1`, `fellepo2`, `fellepo3`, `fellepo4`, `fellepo5`, `date`, `price`) VALUES
(1, 'kep1_meret.png', 'Joer Junior', 'Tankcsapda', 'PureBeat', 'Wellhello', 'Caramel', '2024-05-01', '3000'),
(2, 'kep2_meret.png', 'VALMAR', 'Follow The Flow', 'Halott Pénz', 'Rácz Gergő', 'Rúzsa Magdi', '2024-05-12', '5000'),
(3, 'kep3_meret.png', 'Opitz Barbi', 'Király Viktor', 'Majka', 'Curtis', 'Pápai Joci', '2024-05-22', '3500'),
(4, 'kep4_meret.png', 'Beton Hofi', 'Manuel', 'Azahriah', 'Bagossy Brothers', 'ByeAlex és a Sleep', '2024-05-30', '3200'),
(5, 'kep5_meret.png', 'Groovehouse', 'T.Danny', 'Kkevin', 'BSW', 'Dér Heni', '2024-06-02', '4000'),
(6, 'kep6_meret.png', 'Lil-G', 'Hooligans', 'Péter Sramek', 'Rico Miss Mood', 'Ruszó Tibi', '2024-06-12', '4200'),
(7, 'kep7_meret.png', 'Tóth Andi', 'Ganxsta Zolee', 'Krúbi', 'Pumped Gabo', 'DJ Christopher', '2024-06-20', '4500'),
(8, 'kep8_meret.png', 'Eminem', 'Travis Scott', 'Billie Eilish', 'Dua Lipa', 'The Weeknd', '2024-07-01', '3000'),
(9, 'kep9_meret.png', 'Post Malone', 'Drake', 'J Balvin', 'Taylor Swift', 'Imagine Dragons', '2024-07-13', '4500');

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
-- A tábla indexei `registration`
--
ALTER TABLE `registration`
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
-- A tábla indexei `ticketreservation`
--
ALTER TABLE `ticketreservation`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `ticketreservation_type`
--
ALTER TABLE `ticketreservation_type`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT a táblához `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `reservation_type`
--
ALTER TABLE `reservation_type`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `ticketreservation`
--
ALTER TABLE `ticketreservation`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

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

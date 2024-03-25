-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 25. 12:03
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

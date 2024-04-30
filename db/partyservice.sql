-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Ápr 30. 10:19
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
-- Tábla szerkezet ehhez a táblához `dishes`
--

CREATE TABLE `dishes` (
  `id` int(10) UNSIGNED NOT NULL,
  `dish_category_id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `dishes`
--

INSERT INTO `dishes` (`id`, `dish_category_id`, `name`, `description`, `price`) VALUES
(1, 1, 'Apple Jack', '4cl Apple Jack, 2cl limelé, 4cl almalé, 2cl mézvíz, szóda', 1690),
(2, 1, 'Irish Nut', '4cl Jameson, 2cl pörkölt mogyoró szirup, 4cl tojásfehérje, mogyoró', 1890),
(3, 1, 'Old Fashioned', '4cl Jim Beam, 1 barna cukor, angostura bitter', 1490),
(4, 1, 'Whisky Sour', '4cl Jim Beam, 2cl cukorszirup, 2cl limelé, 4cl tojás fehérje', 1590),
(5, 1, 'Hibiscus Sour', '4cl Beefeater Gin, 4cl Fekete ribizlilé, 4cl limelé, 2cl Hibiszkusz szirup, tojásfehérje', 1890),
(6, 1, 'Ginger Fizz', '4cl Beefeater Gin, 2cl Málna püré, 2cl limelé, gyömbér, gyömbérsör', 2390),
(7, 1, 'Classic Mojito', '4cl Bacardi Carta, 2cl cukor szirup,2cl limelé, menta lime, szóda', 1690),
(8, 1, 'Tropical Bumm', '4cl Redleg Banana, 4cl ananászlé , 3cl passion püré, 3cl limelé', 1990),
(9, 1, 'Green Deer', '4cl Finlandia Botanical Cucumber & Mint, 2cl bodzaszörp, uborkba bitter, 2cl limelé', 1690),
(10, 1, 'BULANGA', '8cl Bacardi ,4cl Monin Passsion ,4cl Limelé, RedBull', 3790),
(11, 2, 'Grillezett csirkemell csíkok salátaágyon', 'Csirkemell, rukkola, jégsaláta, paradicsom, paprika', 2590),
(12, 2, 'Zsírjában sült libamáj kenyérkrutonon, lilahagymával', 'Libamáj, pirított kenyér, lilahagyma, lilakáposzta', 7140),
(13, 2, 'Magyaros borjúgulyás gazdagon zöldségelve', 'Borjúhús, répa, petrezselyem, pirospaprika, burgonya', 3190),
(14, 2, 'Baconnal, zöldpaprikával és sajttal töltött pulykamell,\r\nzöldséges jázmin rizzsel tálalva, (csípős)', 'Pulykamell, bacon, feta sajt, jázmin rizs', 4390),
(15, 2, 'Sertés szűzpecsenye libamájjal, burgonyarösztivel', 'Sertés szűzpecsenye, libamáj, burgonya', 8990),
(16, 2, 'Grill tál', 'Egészben sült sertés szűzpecsenye pikánsan, grillezett kézműves sajt, roston sült fogas-file, fűszeres\r\ncsirkeszárny, serpenyős zöldségek, steak burgonya, BBQ mártogatóssal', 9990);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `information`
--

CREATE TABLE `information` (
  `id` int(2) NOT NULL,
  `program_id` int(11) NOT NULL,
  `type_id` int(5) NOT NULL,
  `text` varchar(250) DEFAULT NULL,
  `dress` varchar(250) DEFAULT NULL,
  `ticket` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `information`
--

INSERT INTO `information` (`id`, `program_id`, `type_id`, `text`, `dress`, `ticket`) VALUES
(1, 1, 1, 'A beléptetés jogát a biztonsági szolgálat fenntartja!', 'cool & elegant', 'A belépőjegy egyszeri belépésre jogosít'),
(2, 2, 2, 'A beléptetés jogát a biztonsági szolgálat fenntartja!', 'cool & elegant', 'A belépőjegy egyszeri belépésre jogosít'),
(3, 3, 3, 'A beléptetés jogát a biztonsági szolgálat fenntartja!', 'cool & elegant', 'A belépőjegy egyszeri belépésre jogosít'),
(4, 4, 4, 'A beléptetés jogát a biztonsági szolgálat fenntartja!', 'cool & elegant', 'A belépőjegy egyszeri belépésre jogosít'),
(5, 5, 5, 'A beléptetés jogát a biztonsági szolgálat fenntartja!', 'cool & elegant', 'A belépőjegy egyszeri belépésre jogosít'),
(6, 6, 6, 'A beléptetés jogát a biztonsági szolgálat fenntartja!', 'cool & elegant', 'A belépőjegy egyszeri belépésre jogosít'),
(7, 7, 7, 'A beléptetés jogát a biztonsági szolgálat fenntartja!', 'cool & elegant', 'A belépőjegy egyszeri belépésre jogosít'),
(8, 8, 8, 'A beléptetés jogát a biztonsági szolgálat fenntartja!', 'cool & elegant', 'A belépőjegy egyszeri belépésre jogosít'),
(9, 9, 9, 'A beléptetés jogát a biztonsági szolgálat fenntartja!', 'cool & elegant', 'A belépőjegy egyszeri belépésre jogosít');

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
(1, 'kep1_meret.png', '2024.05.01. Péntek', '22:00 - 05:00', 3000, 'Normál jegy (soron kívüli bejutással)'),
(2, 'kep2_meret.png', '2024.05.12. Vasárnap', '20:00 - 04:00', 5000, 'Normál jegy (soron kívüli bejutással)'),
(3, 'kep3_meret.png', '2024.05.22. Szerda', '22:00 - 06:00', 3500, 'Normál jegy (soron kívüli bejutással)'),
(4, 'kep4_meret.png', '2024.05.30. Csütörtök', '22:00 - 05:00', 3200, 'Normál jegy (soron kívüli bejutással)'),
(5, 'kep5_meret.png', '2024.06.02. Vasárnap', '23:00 - 04:00', 4000, 'Normál jegy (soron kívüli bejutással)'),
(6, 'kep6_meret.png', '2024.06.12. Szerda', '22:00 - 03:00', 4200, 'Normál jegy (soron kívüli bejutással)'),
(7, 'kep7_meret.png', '2024.06.20. Csütörtök', '22:00 - 05:00', 4500, 'Normál jegy (soron kívüli bejutással)'),
(8, 'kep8_meret.png', '2024.07.01 Hétfő', '20:00 - 03:00', 3000, 'Normál jegy (soron kívüli bejutással)'),
(9, 'kep9_meret.png', '2024.07.13. Szombat', '20:00 - 04:30 ', 4500, 'Normál jegy (soron kívüli bejutással)');

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
  `password` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `post_code` varchar(4) NOT NULL,
  `city` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `registration`
--

INSERT INTO `registration` (`id`, `first_name`, `last_name`, `email`, `password`, `phone`, `post_code`, `city`, `address`, `date`) VALUES
(1, 'Attila', 'Ódry', 'odry.attila@keri.mako.hu', '1234Aa', '3651561651', '6900', 'Szeged', 'Futrinka u. 66.', '1964-03-08');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reservation`
--

CREATE TABLE `reservation` (
  `id` int(5) NOT NULL,
  `type_id` int(3) NOT NULL,
  `date` date NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `post_code` varchar(4) NOT NULL,
  `city` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `message` text DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `reservation`
--

INSERT INTO `reservation` (`id`, `type_id`, `date`, `last_name`, `first_name`, `email`, `phone`, `post_code`, `city`, `address`, `message`, `created`) VALUES
(1, 1, '2024-03-20', 'Bálint', 'Martin', 'valami@gmail.com', '34556778', '1234', 'FÖldeák', 'Ady Endre utca 56.', 'Valami buli', '2024-03-07 09:42:57'),
(2, 1, '2024-03-20', 'Kiss', 'Patrik', 'patrik@gmail.com', '234546547', '6922', 'Földeák', 'Szent László tér 18.', 'Nagyon jók a szolgáltatások', '2024-03-25 10:05:54'),
(3, 3, '2024-03-20', 'Szabó', 'Lajos', 'szabo@gmail.com', '06302878726', '5544', 'Ózd', 'Orgona utca 6.', NULL, '2024-04-04 11:05:22'),
(4, 1, '2024-03-20', 'Kiss', 'Jenő', 'kissamail@gmail.com', '06304958488', '6900', 'Makó', 'Alkotmány utca 2.', 'Nem szeretnénk légkondi közelében ülni.', '2024-04-05 16:18:37'),
(5, 4, '2024-03-20', 'Kiss', 'Andrea', 'kissamail@gmail.com', '06302360141', '6900', 'Makó', 'Alkotmány utca 2.', 'Sokan leszünk.', '2024-04-07 07:40:51'),
(6, 2, '2024-03-20', 'Szabó', 'Elvíra', 'szaboelvira@gmail.com', '06301258745', '6900', 'Makó', 'Szentháromság utca 62.', 'A kedvenc asztalunk.', '2024-04-07 13:51:01'),
(7, 4, '2024-05-11', 'Kovács', 'Péter', 'kristof@citromail.hu', '+36 30 999 4444', '6900', 'Makó', 'Maroslele', '50 fő', '2024-04-30 10:04:55');

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
  `piece` int(10) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `post_code` varchar(4) NOT NULL,
  `city` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `ticketreservation`
--

INSERT INTO `ticketreservation` (`id`, `type_id`, `piece`, `first_name`, `last_name`, `email`, `phone`, `post_code`, `city`, `address`, `message`) VALUES
(1, 3, 4, 'Jenő', 'Kiss', 'kissamail@gmail.com', '06304958488', '6900', 'Makó', 'Alkotmány utca 2.', 'Remek lesz. Nagyon várom.'),
(2, 4, 5, 'Andrea', 'Kiss', 'kissamail@gmail.com', '06302360141', '6900', 'Makó', 'Alkotmány utca 2.', 'Alig várom. :)'),
(3, 1, 4, 'Zorka', 'Kiss', 'kisszorka@gmail.com', '06304445555', '6900', 'Makó', 'Fő utca 2.', 'Boldog vagyok, hogy ott lehetek.'),
(4, 1, 10, 'Kristóf', 'Rácz', 'raczkristof@gmail.com', '06304528795', '6900', 'Makó', 'Szegedi utca 27/a.', 'Nagyon várom a bulit...'),
(5, 2, 2, 'Regina', 'Joó', 'regike@gmail.com', '06204589789', '6775', 'Kiszombor', 'Kör utca 48.', 'Már ott szeretnék lenni.'),
(6, 1, 3, 'Tibor', 'Szép', 'szeptibi78@gmail.com', '06204587896', '6775', 'Kiszombor', 'Szép utca 4.', 'De jó lesz!'),
(7, 2, 5, 'Jenő', 'Varga', 'vargamail@gmail.com', '06304954587', '6900', 'Makó', 'Alkotmány utca 22.', ':)'),
(8, 1, 4, 'Csilla', 'Szentpéteri', 'szentpeteri@gmail.com', '06701254584', '6724', 'Szeged', 'Fő fasor 4.', 'Jó lesz remélem. Nagyon várom már.'),
(9, 1, 5, 'Nagy', 'Ármin', 'arminka@gmail.com', '06301115555', '6900', 'Makó', 'Ármin utca 2.', 'Jó lesz...'),
(10, 1, 3, 'Béla', 'Joó', 'joob@gmail.com', '06301254786', '6900', 'Makó', 'Szép utca 2.', 'Szeretnék már ott lenni.'),
(11, 4, 4, 'Emőke', 'Nagy', 'nagyemi@gmail.com', '06204935288', '7324', 'Szeged', 'Alkotmány utca 28/b.', 'Szeretem a Party Service bulijait...'),
(12, 2, 10, 'Jenő', 'Kiss', 'kissamail@gmail.com', '06304958488', '6900', 'Makó', 'Alkotmány utca 2.', 'Újra...'),
(13, 4, 6, 'Jenő', 'Kiss', 'kissamail@gmail.com', '06304958488', '6900', 'Makó', 'Alkotmány utca 2.', '!!!'),
(14, 4, 8, 'Andrea', 'Kiss', 'kissamail@gmail.com', '06302360141', '6900', 'Makó', 'Alkotmány utca 2.', 'Megyünk...'),
(15, 3, 6, 'Elvíra', 'Szabó', 'szaboelvira@gmail.com', '06301258745', '6900', 'Makó', 'Szentháromság utca 62.', 'Ott leszünk 10-en.'),
(16, 1, 10, 'Ágnes', 'Szentirmai', 'szentagica@gmail.com', '06204589875', '6900', 'Makó', 'Zrínyi utca 48.', 'Szeretjük a Party Service bulijait!');

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
-- A tábla indexei `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT a táblához `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
-- AUTO_INCREMENT a táblához `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT a táblához `reservation_type`
--
ALTER TABLE `reservation_type`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `ticketreservation`
--
ALTER TABLE `ticketreservation`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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

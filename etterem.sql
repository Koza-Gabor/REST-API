-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Ápr 03. 02:58
-- Kiszolgáló verziója: 10.4.17-MariaDB
-- PHP verzió: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `etterem`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `asztalok`
--

CREATE TABLE `asztalok` (
  `id` int(10) NOT NULL,
  `nev` varchar(25) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `asztalok`
--

INSERT INTO `asztalok` (`id`, `nev`) VALUES
(1, 'asztal'),
(2, 'asztal'),
(3, 'asztal'),
(4, 'asztal'),
(5, 'asztal');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szekek`
--

CREATE TABLE `szekek` (
  `id` int(10) NOT NULL,
  `szam` int(25) NOT NULL,
  `asztal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `szekek`
--

INSERT INTO `szekek` (`id`, `szam`, `asztal`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 3),
(6, 6, 3),
(7, 7, 4),
(8, 8, 4),
(9, 9, 5),
(10, 10, 5);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `asztalok`
--
ALTER TABLE `asztalok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `szekek`
--
ALTER TABLE `szekek`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

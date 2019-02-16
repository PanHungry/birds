-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 17 Lut 2019, 00:29
-- Wersja serwera: 10.1.37-MariaDB
-- Wersja PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `birds`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `birds`
--

CREATE TABLE `birds` (
  `ID` int(11) NOT NULL,
  `speciesPL` text COLLATE utf32_polish_ci NOT NULL,
  `speciesLAC` text COLLATE utf32_polish_ci NOT NULL,
  `speciesENG` text COLLATE utf32_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_polish_ci;

--
-- Zrzut danych tabeli `birds`
--

INSERT INTO `birds` (`ID`, `speciesPL`, `speciesLAC`, `speciesENG`) VALUES
(1, 'bogatka', 'Parus major', 'Great tit'),
(2, 'modraszka', 'Cyanistes caeruleus', 'Blue tit'),
(3, 'rudzik', 'Erithacus rubecula', 'Robin'),
(4, 'zięba', 'Fringilla coelebs', 'Chaffinch'),
(5, 'gil', 'Pyrrhula pyrrhula', 'Bullfinch');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `observations`
--

CREATE TABLE `observations` (
  `ID` int(11) NOT NULL,
  `IDusers` int(11) NOT NULL,
  `IDbirds` int(11) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `nickname` text COLLATE utf32_polish_ci NOT NULL,
  `email` text COLLATE utf32_polish_ci NOT NULL,
  `password` text COLLATE utf32_polish_ci NOT NULL,
  `firstName` text COLLATE utf32_polish_ci NOT NULL,
  `lastName` text COLLATE utf32_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`ID`, `nickname`, `email`, `password`, `firstName`, `lastName`) VALUES
(1, 'admin', 'admin@admin.pl', 'pass', 'Kamil', 'Głód');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `birds`
--
ALTER TABLE `birds`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `observations`
--
ALTER TABLE `observations`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `birds`
--
ALTER TABLE `birds`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `observations`
--
ALTER TABLE `observations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

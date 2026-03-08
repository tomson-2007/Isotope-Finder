-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2026 at 10:56 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zastosowania`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `efekty`
--

CREATE TABLE `efekty` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) NOT NULL,
  `zastosowanie1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `efekty`
--

INSERT INTO `efekty` (`id`, `nazwa`, `zastosowanie1`) VALUES
(1, 'Wodór', 'moderator w reaktorach jądrowych'),
(2, 'Hel', 'detektory neutronów'),
(3, 'Beryl', 'datowanie osadów geologicznych'),
(4, 'Bor', 'neutronów w reaktorach'),
(5, 'Węgiel', 'datowanie radiowęglowe'),
(6, 'Azot', 'znaczniki w badaniach biologicznych'),
(7, 'Tlen', 'badania klimatu (analiza lodowców'),
(8, 'Fluor', 'diagnostyka PET'),
(9, 'Neon', 'badania fizyki plazmy'),
(10, 'Sód', 'badanie przepływu krwi'),
(11, 'Magnez', 'badanie metabolizmu roślin'),
(12, 'Glin', 'datowanie meteorytów'),
(13, 'Krzem', 'badania półprzewodników'),
(14, 'Fosfor', 'terapia nowotworów'),
(15, 'Siarka', 'badania białek'),
(16, 'Chlor', 'darowanie wód gruntowych'),
(17, 'Argon', 'datowanie skał'),
(18, 'Potas', 'datowanie geologiczne'),
(19, 'Wapń', 'badania metabolizmu kości'),
(20, 'Skand', 'radiografia przemysłowa'),
(21, 'Tytan', 'badania astrofizyczne'),
(22, 'Wanad', 'znaczniki w badaniach chemicznych'),
(23, 'Chrom', 'badanie objętości krwi'),
(24, 'Mangan', 'badania zużycia materiałów'),
(25, 'Żelazo', 'badanie anemii'),
(26, 'Kobalt', 'radioterapia nowotworów'),
(27, 'Nikiel', 'detektory elektronów'),
(28, 'Miedź', 'diagnostyka PET'),
(29, 'Cynk', 'badania metabolizmu'),
(30, 'Gal', 'diagnostyka nowotworów'),
(31, 'German', 'generatory do PET'),
(32, 'Arsen', 'badania medyczne'),
(33, 'Selen', 'diagnostyka trzustki'),
(34, 'Brom', 'badania przepływu cieczy'),
(35, 'Kripton', 'wykrywanie nieszczelności'),
(36, 'Rubid', 'zegary atomowe'),
(37, 'Stront', 'Źródło promieniowania beta'),
(38, 'Itr', 'terapia nowotworów'),
(39, 'Cyrkon', 'badania paliwa jądrowego'),
(40, 'Niob', 'badania aktywacji neutronowej'),
(41, 'Molibden', 'produkcja technetu w medycynie'),
(42, 'Technet', 'diagnostyka medycyny nuklearnej'),
(43, 'Ruten', 'terapia okulistyczna'),
(44, 'Rod', 'brachyterapia'),
(45, 'Pallad', 'leczenie raka prostaty'),
(46, 'Srebro', 'badania środowiskowe'),
(47, 'Kadm', 'kalibracja detektorów'),
(48, 'Ind', 'diagnostyka obrazowa'),
(49, 'Cyna', 'źródło promieniowania'),
(50, 'Antymon', 'źródło gamma'),
(51, 'Tellur', 'badania podwójnego rozpadu beta'),
(52, 'Jod', 'leczenie tarczycy'),
(53, 'Ksenon', 'badania wentylacji płuc'),
(54, 'Cez', 'sterylizacja sprzętu medycznego'),
(55, 'Bar', 'kalibracja detektorów'),
(56, 'Lantan', 'badania rozpadu promieniotwórczego'),
(57, 'Cer', 'źródło promieniowania'),
(58, 'Prazeodym', 'badania jądrowe'),
(59, 'Neodym', 'datowanie geologiczne'),
(60, 'Promet', 'źródła beta w miernikach grubości'),
(61, 'Samar', 'leczenie przerzutów do kości'),
(62, 'Europ', 'kalibracja aparatury'),
(63, 'Gadolin', 'densytometria kości'),
(64, 'Terb', 'badania materiałowe'),
(65, 'Dysproz', 'badania reologii'),
(66, 'Holm', 'terapia nowotworów wątroby'),
(67, 'Erb', 'leczenie zapalenia stawów'),
(68, 'Tul', 'przenośne źródła RTG'),
(69, 'Iterb', 'radiografia przemysłowa'),
(70, 'Lutet', 'terapia nowotworów'),
(71, 'Hafn', 'badania geochronologiczne'),
(72, 'Tantal', 'radiografia przemysłowa'),
(73, 'Ren', 'terapia nowotworów'),
(74, 'Osm', 'badania chemiczne'),
(75, 'Iryd', 'brachyterapia'),
(76, 'Platyna', 'badania farmaceutyczne'),
(77, 'Złoto', 'leczenie nowotworów'),
(78, 'Rtęć', 'badania toksykologiczne'),
(79, 'Tal', 'diagnostyka serca'),
(80, 'Ołów', 'datowanie osadów'),
(81, 'Bizmut', 'terapia alfa'),
(82, 'Polon', 'źródło neutronów'),
(83, 'Astat', 'terapia celowana alfa'),
(84, 'Radon', 'badania geologiczne'),
(85, 'Franc', 'badania naukowe struktury atomu'),
(86, 'Rad', 'historycznie w radioterapii'),
(87, 'Aktyn', 'terapia alfa'),
(88, 'Tor', 'paliwo jądrowe (cykl torowy)'),
(89, 'Protakt', 'badania geochronologiczne'),
(90, 'Uran', 'paliwo w reaktorach'),
(91, 'Neptun', 'produkcja plutonu'),
(92, 'Pluton', 'paliwo jądrowe'),
(93, 'Ameryk', 'czujniki dymu'),
(94, 'Kiur', 'źródło neutronów'),
(95, 'Berkel', 'synteza cięższych pierwiastków'),
(96, 'Einstein', 'badania naukowe nad pierwiastkami superciężki'),
(97, 'Wodór', 'Test'),
(98, 'Wodór', 'Test'),
(99, 'Wodór', 'Test'),
(100, 'Wodór', 'Test'),
(101, 'Wolfram', 'medycyna nuklearna');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pierwiastki`
--

CREATE TABLE `pierwiastki` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) NOT NULL,
  `izotop` int(11) NOT NULL,
  `czas_rozpadu` double NOT NULL,
  `jednostka` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pierwiastki`
--

INSERT INTO `pierwiastki` (`id`, `nazwa`, `izotop`, `czas_rozpadu`, `jednostka`) VALUES
(1, 'Wodór', 4, 1.39e-22, 'sekundy'),
(2, 'Hel', 8, 0.119, 'sekundy'),
(3, 'Beryl', 10, 1390000, 'lat'),
(4, 'Beryl', 7, 53.2, 'dni'),
(5, 'Bor', 8, 0.77, 'sekundy'),
(6, 'Węgiel', 11, 20.3, 'minuty'),
(7, 'Azot', 13, 9.97, 'minuty'),
(8, 'Tlen', 15, 122, 'sekundy'),
(9, 'Fluor', 18, 109.7, 'minuty'),
(10, 'Neon', 24, 3.38, 'minuty'),
(11, 'Sód', 24, 15, 'godziny'),
(12, 'Magnez', 27, 9.5, 'minuty'),
(13, 'Glin', 26, 717000, 'lat'),
(14, 'Krzem', 31, 2.62, 'godziny'),
(15, 'Fosfor', 33, 25.3, 'dni'),
(16, 'Siarka', 38, 170, 'minuty'),
(17, 'Chlor', 38, 37.2, 'minuty'),
(18, 'Argon', 39, 269, 'lat'),
(19, 'Potas', 42, 12.36, 'godziny'),
(20, 'Wapń', 45, 162.7, 'dni'),
(21, 'Skand', 48, 43.7, 'godziny'),
(22, 'Tytan', 44, 60, 'lat'),
(23, 'Wanad', 48, 16, 'dni'),
(24, 'Chrom', 48, 21.6, 'godziny'),
(25, 'Mangan', 56, 2.58, 'godziny'),
(26, 'Żelazo', 59, 44.5, 'dni'),
(27, 'Kobalt', 57, 271.8, 'dni'),
(28, 'Nikiel', 59, 76000, 'lat'),
(29, 'Miedź', 64, 12.7, 'godziny'),
(30, 'Cynk', 69, 56.4, 'minuty'),
(31, 'Gal', 72, 14.1, 'godziny'),
(32, 'German', 71, 11.4, 'dni'),
(33, 'Arsen', 74, 17.8, 'dni'),
(34, 'Selen', 79, 327000, 'lat'),
(35, 'Brom', 77, 57, 'godziny'),
(36, 'Kripton', 81, 229000, 'lat'),
(37, 'Rubid', 86, 18.6, 'dni'),
(38, 'Stront', 89, 50.5, 'dni'),
(39, 'Itr', 91, 58.5, 'dni'),
(40, 'Cyrkon', 93, 1530000, 'lat'),
(41, 'Niob', 95, 35, 'dni'),
(42, 'Molibden', 99, 66, 'godziny'),
(43, 'Technet', 99, 6, 'godziny'),
(44, 'Ruten', 103, 39.3, 'dni'),
(45, 'Rod', 102, 207, 'dni'),
(46, 'Pallad', 103, 17, 'dni'),
(47, 'Srebro', 110, 249.8, 'dni'),
(48, 'Kadm', 113, 7.7e15, 'lat'),
(49, 'Ind', 111, 2.8, 'dni'),
(50, 'Cyna', 121, 27.1, 'godziny'),
(51, 'Antymon', 124, 60.2, 'dni'),
(52, 'Tellur', 127, 9.35, 'godziny'),
(53, 'Jod', 125, 59.4, 'dni'),
(54, 'Ksenon', 133, 5.25, 'dni'),
(55, 'Cez', 134, 2.06, 'lat'),
(56, 'Bar', 133, 10.5, 'lat'),
(57, 'Lantan', 140, 1.68, 'dni'),
(58, 'Cer', 144, 284.9, 'dni'),
(59, 'Prazeodym', 143, 13.6, 'dni'),
(60, 'Neodym', 147, 10.98, 'dni'),
(61, 'Promet', 147, 2.62, 'lat'),
(62, 'Samar', 151, 90, 'lat'),
(63, 'Europ', 152, 13.5, 'lat'),
(64, 'Gadolin', 153, 240.4, 'dni'),
(65, 'Terb', 160, 72.3, 'dni'),
(66, 'Dysproz', 165, 2.33, 'godziny'),
(67, 'Holm', 166, 26.8, 'godziny'),
(68, 'Erb', 169, 9.4, 'dni'),
(69, 'Tul', 171, 1.92, 'lat'),
(70, 'Iterb', 175, 4.2, 'dni'),
(71, 'Lutet', 177, 6.65, 'dni'),
(72, 'Hafn', 181, 42.4, 'dni'),
(73, 'Tantal', 179, 1.82, 'lat'),
(74, 'Ren', 186, 3.72, 'dni'),
(75, 'Osm', 191, 15.4, 'dni'),
(76, 'Iryd', 194, 19.3, 'godziny'),
(77, 'Platyna', 193, 50, 'lat'),
(78, 'Złoto', 198, 2.7, 'dni'),
(79, 'Rtęć', 203, 46.6, 'dni'),
(80, 'Tal', 204, 3.78, 'lat'),
(81, 'Ołów', 212, 10.6, 'godziny'),
(82, 'Bizmut', 214, 19.9, 'minuty'),
(83, 'Polon', 214, 164, 'mikrosekundy'),
(84, 'Astat', 211, 7.2, 'godziny'),
(85, 'Radon', 220, 55.6, 'sekundy'),
(86, 'Franc', 221, 4.8, 'minuty'),
(87, 'Rad', 223, 11.4, 'dni'),
(88, 'Aktyn', 225, 10, 'dni'),
(89, 'Tor', 228, 1.9, 'lat'),
(90, 'Protakt', 233, 27, 'dni'),
(91, 'Uran', 233, 159000, 'lat'),
(92, 'Neptun', 239, 2.36, 'dni'),
(93, 'Pluton', 238, 87.7, 'lat'),
(94, 'Ameryk', 242, 16, 'godziny'),
(95, 'Kiur', 244, 18.1, 'lat'),
(96, 'Berkel', 249, 330, 'dni'),
(97, 'Einstein', 253, 20.5, 'dni'),
(102, 'Wolfram', 188, 69, 'dni');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `imie` varchar(255) NOT NULL,
  `nazwisko` varchar(255) NOT NULL,
  `login` int(6) NOT NULL,
  `haslo` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `imie`, `nazwisko`, `login`, `haslo`) VALUES
(1, 'Tomasz', 'Drużba', 123456, 'Tomek2007'),
(2, 'Szymon', 'Stefankiewicz', 213769, 'kochamdobek!');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `efekty`
--
ALTER TABLE `efekty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pierwiastki`
--
ALTER TABLE `pierwiastki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `efekty`
--
ALTER TABLE `efekty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `pierwiastki`
--
ALTER TABLE `pierwiastki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

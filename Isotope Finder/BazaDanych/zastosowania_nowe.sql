-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2026 at 05:45 PM
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
-- Struktura tabeli dla tabeli `administracja_dane`
--

CREATE TABLE `administracja_dane` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `haslo` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administracja_dane`
--

INSERT INTO `administracja_dane` (`id`, `login`, `haslo`) VALUES
(1, 'najlepszyadminever', 'Tomek2007'),
(2, 'jestemniemieckimszpiegiem', 'kochamtuska2137');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `administracja_osoby`
--

CREATE TABLE `administracja_osoby` (
  `id` int(11) NOT NULL,
  `imie` varchar(255) NOT NULL,
  `nazwisko` varchar(255) NOT NULL,
  `miasto` varchar(255) NOT NULL,
  `ulica` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administracja_osoby`
--

INSERT INTO `administracja_osoby` (`id`, `imie`, `nazwisko`, `miasto`, `ulica`) VALUES
(1, 'Tomek', 'Druzba', 'Warszawa', 'Polna'),
(2, 'Marek', 'Towarek', 'Berlin', 'Partyzancka');

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
(101, 'Wolfram', 'medycyna nuklearna'),
(102, '', ''),
(103, '', ''),
(104, '', ''),
(105, '', ''),
(106, '', ''),
(107, '', ''),
(108, '', ''),
(109, '', ''),
(110, '', ''),
(111, '', ''),
(112, '', ''),
(113, '', ''),
(114, '', ''),
(115, '', ''),
(116, '', ''),
(117, '', ''),
(118, '', ''),
(119, '', ''),
(120, '', ''),
(121, '', ''),
(122, '', ''),
(123, '', ''),
(124, '', ''),
(125, '', ''),
(126, '', ''),
(127, '', ''),
(128, '', ''),
(129, '', ''),
(130, '', ''),
(131, '', ''),
(132, '', ''),
(133, '', ''),
(134, '', ''),
(135, '', ''),
(136, '', ''),
(137, '', ''),
(138, '', ''),
(139, '', ''),
(140, '', ''),
(141, '', ''),
(142, '', ''),
(143, '', ''),
(144, '', ''),
(145, '', ''),
(146, '', ''),
(147, '', ''),
(148, '', ''),
(149, '', ''),
(150, '', ''),
(151, '', ''),
(152, '', ''),
(153, '', ''),
(154, '', ''),
(155, '', ''),
(156, '', ''),
(157, '', ''),
(158, '', ''),
(159, '', ''),
(160, '', ''),
(161, '', ''),
(162, '', ''),
(163, '', ''),
(164, '', ''),
(165, '', ''),
(166, '', ''),
(167, '', ''),
(168, '', ''),
(169, '', ''),
(170, '', ''),
(171, '', ''),
(172, '', ''),
(173, '', ''),
(174, '', ''),
(175, '', ''),
(176, '', ''),
(177, '', ''),
(178, '', ''),
(179, '', ''),
(180, '', ''),
(181, '', ''),
(182, '', ''),
(183, '', ''),
(184, '', ''),
(185, '', ''),
(186, '', ''),
(187, '', ''),
(188, '', ''),
(189, '', ''),
(190, '', ''),
(191, '', ''),
(192, '', ''),
(193, '', ''),
(194, '', ''),
(195, '', ''),
(196, '', ''),
(197, '', ''),
(198, '', ''),
(199, '', ''),
(200, '', ''),
(201, '', ''),
(202, '', ''),
(203, '', ''),
(204, '', ''),
(205, '', ''),
(206, '', ''),
(207, '', ''),
(208, '', ''),
(209, '', ''),
(210, '', ''),
(211, '', ''),
(212, '', ''),
(213, '', ''),
(214, '', ''),
(215, '', ''),
(216, '', ''),
(217, '', ''),
(218, '', ''),
(219, '', ''),
(220, '', ''),
(221, '', ''),
(222, '', ''),
(223, '', ''),
(224, '', ''),
(225, '', ''),
(226, '', ''),
(227, '', ''),
(228, '', ''),
(229, '', ''),
(230, '', ''),
(231, '', ''),
(232, '', ''),
(233, '', ''),
(234, '', ''),
(235, '', ''),
(236, '', ''),
(237, '', ''),
(238, '', ''),
(239, '', ''),
(240, '', ''),
(241, '', ''),
(242, '', ''),
(243, '', ''),
(244, '', ''),
(245, '', ''),
(246, '', ''),
(247, '', ''),
(248, '', ''),
(249, '', ''),
(250, '', ''),
(251, '', ''),
(252, '', ''),
(253, '', ''),
(254, '', ''),
(255, '', ''),
(256, '', ''),
(257, '', ''),
(258, '', ''),
(259, '', ''),
(260, '', ''),
(261, '', ''),
(262, '', ''),
(263, '', ''),
(264, '', ''),
(265, '', ''),
(266, '', ''),
(267, '', ''),
(268, '', ''),
(269, '', ''),
(270, '', ''),
(271, '', ''),
(272, '', ''),
(273, '', ''),
(274, '', ''),
(275, '', ''),
(276, '', ''),
(277, '', ''),
(278, '', ''),
(279, '', ''),
(280, '', ''),
(281, '', '');

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
(102, 'Wolfram', 188, 69, 'dni'),
(103, '', 0, 0, ''),
(104, '', 0, 0, ''),
(105, '', 0, 0, ''),
(106, '', 0, 0, ''),
(107, '', 0, 0, ''),
(108, '', 0, 0, ''),
(109, '', 0, 0, ''),
(110, '', 0, 0, ''),
(111, '', 0, 0, ''),
(112, '', 0, 0, ''),
(113, '', 0, 0, ''),
(114, '', 0, 0, ''),
(115, '', 0, 0, ''),
(116, '', 0, 0, ''),
(117, '', 0, 0, ''),
(118, '', 0, 0, ''),
(119, '', 0, 0, ''),
(120, '', 0, 0, ''),
(121, '', 0, 0, ''),
(122, '', 0, 0, ''),
(123, '', 0, 0, ''),
(124, '', 0, 0, ''),
(125, '', 0, 0, ''),
(126, '', 0, 0, ''),
(127, '', 0, 0, ''),
(128, '', 0, 0, ''),
(129, '', 0, 0, ''),
(130, '', 0, 0, ''),
(131, '', 0, 0, ''),
(132, '', 0, 0, ''),
(133, '', 0, 0, ''),
(134, '', 0, 0, ''),
(135, '', 0, 0, ''),
(136, '', 0, 0, ''),
(137, '', 0, 0, ''),
(138, '', 0, 0, ''),
(139, '', 0, 0, ''),
(140, '', 0, 0, ''),
(141, '', 0, 0, ''),
(142, '', 0, 0, ''),
(143, '', 0, 0, ''),
(144, '', 0, 0, ''),
(145, '', 0, 0, ''),
(146, '', 0, 0, ''),
(147, '', 0, 0, ''),
(148, '', 0, 0, ''),
(149, '', 0, 0, ''),
(150, '', 0, 0, ''),
(151, '', 0, 0, ''),
(152, '', 0, 0, ''),
(153, '', 0, 0, ''),
(154, '', 0, 0, ''),
(155, '', 0, 0, ''),
(156, '', 0, 0, ''),
(157, '', 0, 0, ''),
(158, '', 0, 0, ''),
(159, '', 0, 0, ''),
(160, '', 0, 0, ''),
(161, '', 0, 0, ''),
(162, '', 0, 0, ''),
(163, '', 0, 0, ''),
(164, '', 0, 0, ''),
(165, '', 0, 0, ''),
(166, '', 0, 0, ''),
(167, '', 0, 0, ''),
(168, '', 0, 0, ''),
(169, '', 0, 0, ''),
(170, '', 0, 0, ''),
(171, '', 0, 0, ''),
(172, '', 0, 0, ''),
(173, '', 0, 0, ''),
(174, '', 0, 0, ''),
(175, '', 0, 0, ''),
(176, '', 0, 0, ''),
(177, '', 0, 0, ''),
(178, '', 0, 0, ''),
(179, '', 0, 0, ''),
(180, '', 0, 0, ''),
(181, '', 0, 0, ''),
(182, '', 0, 0, ''),
(183, '', 0, 0, ''),
(184, '', 0, 0, ''),
(185, '', 0, 0, ''),
(186, '', 0, 0, ''),
(187, '', 0, 0, ''),
(188, '', 0, 0, ''),
(189, '', 0, 0, ''),
(190, '', 0, 0, ''),
(191, '', 0, 0, ''),
(192, '', 0, 0, ''),
(193, '', 0, 0, ''),
(194, '', 0, 0, ''),
(195, '', 0, 0, ''),
(196, '', 0, 0, ''),
(197, '', 0, 0, ''),
(198, '', 0, 0, ''),
(199, '', 0, 0, ''),
(200, '', 0, 0, ''),
(201, '', 0, 0, ''),
(202, '', 0, 0, ''),
(203, '', 0, 0, ''),
(204, '', 0, 0, ''),
(205, '', 0, 0, ''),
(206, '', 0, 0, ''),
(207, '', 0, 0, ''),
(208, '', 0, 0, ''),
(209, '', 0, 0, ''),
(210, '', 0, 0, ''),
(211, '', 0, 0, ''),
(212, '', 0, 0, ''),
(213, '', 0, 0, ''),
(214, '', 0, 0, ''),
(215, '', 0, 0, ''),
(216, '', 0, 0, ''),
(217, '', 0, 0, ''),
(218, '', 0, 0, ''),
(219, '', 0, 0, ''),
(220, '', 0, 0, ''),
(221, '', 0, 0, ''),
(222, '', 0, 0, ''),
(223, '', 0, 0, ''),
(224, '', 0, 0, ''),
(225, '', 0, 0, ''),
(226, '', 0, 0, ''),
(227, '', 0, 0, ''),
(228, '', 0, 0, ''),
(229, '', 0, 0, ''),
(230, '', 0, 0, ''),
(231, '', 0, 0, ''),
(232, '', 0, 0, ''),
(233, '', 0, 0, ''),
(234, '', 0, 0, ''),
(235, '', 0, 0, ''),
(236, '', 0, 0, ''),
(237, '', 0, 0, ''),
(238, '', 0, 0, ''),
(239, '', 0, 0, ''),
(240, '', 0, 0, ''),
(241, '', 0, 0, ''),
(242, '', 0, 0, ''),
(243, '', 0, 0, ''),
(244, '', 0, 0, ''),
(245, '', 0, 0, ''),
(246, '', 0, 0, ''),
(247, '', 0, 0, ''),
(248, '', 0, 0, ''),
(249, '', 0, 0, ''),
(250, '', 0, 0, ''),
(251, '', 0, 0, ''),
(252, '', 0, 0, ''),
(253, '', 0, 0, ''),
(254, '', 0, 0, ''),
(255, '', 0, 0, ''),
(256, '', 0, 0, ''),
(257, '', 0, 0, ''),
(258, '', 0, 0, ''),
(259, '', 0, 0, ''),
(260, '', 0, 0, ''),
(261, '', 0, 0, ''),
(262, '', 0, 0, ''),
(263, '', 0, 0, ''),
(264, '', 0, 0, ''),
(265, '', 0, 0, ''),
(266, '', 0, 0, ''),
(267, '', 0, 0, ''),
(268, '', 0, 0, ''),
(269, '', 0, 0, ''),
(270, '', 0, 0, ''),
(271, '', 0, 0, ''),
(272, '', 0, 0, ''),
(273, '', 0, 0, ''),
(274, '', 0, 0, ''),
(275, '', 0, 0, ''),
(276, '', 0, 0, ''),
(277, '', 0, 0, ''),
(278, '', 0, 0, ''),
(279, '', 0, 0, ''),
(280, '', 0, 0, ''),
(281, '', 0, 0, ''),
(282, '', 0, 0, '');

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
-- Indeksy dla tabeli `administracja_dane`
--
ALTER TABLE `administracja_dane`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `administracja_osoby`
--
ALTER TABLE `administracja_osoby`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `administracja_dane`
--
ALTER TABLE `administracja_dane`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `administracja_osoby`
--
ALTER TABLE `administracja_osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `efekty`
--
ALTER TABLE `efekty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT for table `pierwiastki`
--
ALTER TABLE `pierwiastki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

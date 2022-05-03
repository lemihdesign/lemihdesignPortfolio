-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 23 Lut 2022, 13:14
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `ewolontariusz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `messages`
--

CREATE TABLE `messages` (
  `id_message` int(10) NOT NULL,
  `sender` int(10) NOT NULL,
  `receiver` int(10) NOT NULL,
  `message` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `notification`
--

CREATE TABLE `notification` (
  `id_notification` int(10) NOT NULL,
  `id_report` int(10) NOT NULL,
  `owner` int(10) NOT NULL,
  `volonteer` int(10) NOT NULL,
  `message` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `notification`
--

INSERT INTO `notification` (`id_notification`, `id_report`, `owner`, `volonteer`, `message`) VALUES
(7, 8, 8, 1, 'przyjął Twoje zgłoszenie! Sprawdź aktualny status w zakładce Twoje zgłoszenia.'),
(8, 11, 8, 1, 'przyjął Twoje zgłoszenie! Sprawdź aktualny status w zakładce Twoje zgłoszenia.'),
(17, 36, 8, 1, 'przyjął Twoje zgłoszenie! Sprawdź aktualny status w zakładce Twoje zgłoszenia.'),
(23, 4, 4, 1, 'przyjął Twoje zgłoszenie! Sprawdź aktualny status w zakładce Twoje zgłoszenia.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `report`
--

CREATE TABLE `report` (
  `id_report` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `title` varchar(150) COLLATE utf8_polish_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `report_details` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `city` varchar(150) COLLATE utf8_polish_ci NOT NULL,
  `postal_code` varchar(6) COLLATE utf8_polish_ci NOT NULL,
  `road` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `house_number` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `phone_number` varchar(12) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_polish_ci NOT NULL,
  `date` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `hour` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `groccery_list` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `delivery_contact` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `help_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pet_type` varchar(100) COLLATE utf8_polish_ci DEFAULT NULL,
  `pet_size` varchar(100) COLLATE utf8_polish_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8_polish_ci DEFAULT 'free'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `report`
--

INSERT INTO `report` (`id_report`, `id_user`, `title`, `type`, `report_details`, `city`, `postal_code`, `road`, `house_number`, `phone_number`, `email`, `date`, `hour`, `groccery_list`, `delivery_contact`, `help_type`, `pet_type`, `pet_size`, `status`) VALUES
(1, 1, 'Podawanie leków', 'Pomoc', 'Podawanie leków dwa razy dziennie. Nie potrzebne specjalne wykształcenie medyczne lub ukończone specjalistyczne kursy. Leki mało inwazyjne. Pomoc potrzebna przy osobie starszej, schorowanej, która ma problemy z pamięcią. Praca w godzinach porannych i wiec', 'Wrocław', '52-875', 'Grabiszyńska 11', '19', '603-489-765', 'testemaila@test.pl', '2021-08-24', '10:00', NULL, NULL, '', NULL, NULL, 'completed'),
(2, 3, 'Testowe zgłoszenie', 'Zakupy', 'testowy opis', 'Warszawa', '11-111', 'Bajkowa', '12', '600-765-876', 'marcin@test.pl', '2021-09-17', '20:00', NULL, NULL, '', NULL, NULL, 'completed'),
(3, 4, 'Testowe 2', 'Transport', 'Testowy opis 2', 'Poznań', '12-345', 'Nowa', '13', '123-456-789', 'antek@o2.pl', '2021-09-18', '13:10', NULL, NULL, '', NULL, NULL, 'completed'),
(4, 4, 'Testowe 3', 'Zwierzęta', 'Opis testowy 3', 'Poznań', '12-345', 'Nowa', '13', '123-456-789', 'antek@o2.pl', '2021-10-02', '13:23', NULL, NULL, '', NULL, NULL, 'accepted'),
(5, 7, 'Zgłoszenia Krzysztofa', 'Transport', 'Opis zgłoszenia Krzysztofa', 'Gdańsk', '12-345', 'Nowa', '12', '123-456-789', 'krzysztof@op.pl', '2021-09-17', '15:00', NULL, NULL, '', NULL, NULL, 'completed'),
(6, 8, 'Zgłoszenie Olgi', 'Sprzątanie', 'Opis zgłoszenia Olgi', 'Gdynia', '12-345', 'Nowa', '1', '123-456-789', 'olga@op.pl', '2021-09-22', '10:00', NULL, NULL, '', NULL, NULL, 'deleted'),
(7, 6, 'Zgłoszenie testowe Mariana', 'Zakupy', 'Dodatkowe informacje do zgłoszenia testowego Mariana', 'Jelenia Góra', '58-506', 'Plac Piastowski', '29', '123-456-789', 'marian@op.pl', '2021-09-25', '10:00', NULL, NULL, '', NULL, NULL, 'completed'),
(8, 8, 'Nowe zgłoszenie Olgi test', 'Zakupy', 'test', 'test', '12-345', 'test', '12', '123-456-789', 'olga@op.pl', '2021-10-21', '11:11', NULL, NULL, '', NULL, NULL, 'completed'),
(9, 8, 'Testowe zgłoszenie na nowym widoku formularza', 'Zakupy', 'Dodatkowe informacje do testowego zgłoszenia', 'Jelenia Góra', '58-506', 'Osiedle Robotnicze 1', '10', '123-456-789', 'olga@op.pl', '2021-10-06', '20:00', NULL, NULL, '', NULL, NULL, 'deleted'),
(10, 8, '', 'Zwierzęta', '', '', '', '', '', '', 'olga@op.pl', '2021-10-12', '11:01', NULL, NULL, '', NULL, NULL, 'deleted'),
(11, 8, 'asdad', 'zwierzęta', '', 'adasd', '11-111', 'asdad', '12', '123-123-123', 'olga@op.pl', '2021-10-20', '11:11', NULL, NULL, '', NULL, NULL, 'completed'),
(12, 8, 'Zakup czajnika', 'Zakupy', 'Proszę o zakup w rozsądnej cenie czajnika elektrycznego. Cena max. 150zł', 'Jelenia Góra', '58-506', 'Osiedle Robotnicze', '17', '600-507-446', 'olga@op.pl', '2021-11-05', '13:10', 'Czajnik elektryczny', '1', '', '', NULL, 'deleted'),
(13, 8, 'Wyprowadzenie psa', 'Zwierzęta', 'Brk', 'Jelenia Góra', '58-506', 'Osiedle Robotnicze', '17', '600-600-600', 'olga@op.pl', '2021-11-11', '15:25', NULL, NULL, '', NULL, NULL, 'deleted'),
(14, 8, 'Wyprowadzenie psa', 'Zwierzęta', 'brk', 'Jelenia Góra', '58-506', 'Osiedle Robotnicze', '17', '600-600-600', 'olga@op.pl', '2021-11-16', '15:25', NULL, NULL, '', NULL, NULL, 'deleted'),
(15, 8, 'Wyprowadzenie psa', 'Zwierzęta', 'brk', 'Jelenia Góra', '58-506', 'Osiedle Robotnicze', '17', '600-600-600', 'olga@op.pl', '2021-11-17', '15:25', NULL, NULL, '', NULL, NULL, 'deleted'),
(16, 8, 'Wyprowadzenie psa', 'Zwierzęta', '', 'Jelenia Góra', '58-506', 'Osiedle Robotnicze', '17', '600-600-600', 'olga@op.pl', '2021-11-04', '15:25', NULL, NULL, '', NULL, NULL, 'deleted'),
(17, 8, 'Gotowanie', 'pomoc', '', 'Jelenia Góra', '58-506', 'Krucza 17', '9', '600-876-984', 'olga@op.pl', '2021-11-12', '10:15', NULL, NULL, '', NULL, NULL, 'deleted'),
(18, 8, 'Zrobienie zakupów', 'Zakupy', 'Najlepiej w lidlu', 'Gdynia', '80-209', 'Grabiszyńska 19', '9', '600-513-003', 'olga@op.pl', '2021-11-04', '11:01', 'Ziemniaki młode 1kg, kapusta kiszona, schab bez kości 1kg, szynka drobiowa opakowanie\r\n', '1', '', NULL, NULL, 'deleted'),
(19, 8, 'Zrobienie zakupów', 'Zakupy', 'Dodatkowe info do listy drugiej', 'Gdynia', '80-209', 'Grabiszyńska 19', '9', '600-513-003', 'olga@op.pl', '2021-11-12', '22:02', 'Lista zakupów numer 2\r\n', '1', '', '--', '--', 'deleted'),
(20, 8, 'Opieka nad zwierzakiem', 'Zwierzęta', 'Średniej wielkości kundelek, przyjazny', 'Gdynia', '80-209', 'Grabiszyńska 19', '9', '600-513-003', 'olga@op.pl', '2021-11-19', '20:00', '', '', '', NULL, 'Średni', 'deleted'),
(21, 8, 'Opieka nad zwierzakiem', 'Zwierzęta', 'Sprzątanie klatki i karmienie', 'Gdynia', '80-209', 'Grabiszyńska 19', '9', '600-513-003', 'olga@op.pl', '2021-11-20', '11:11', '', NULL, '', NULL, '--', 'deleted'),
(22, 8, 'Opieka nad zwierzakiem', 'Zwierzęta', 'Przyjazny owczarek niemiecki', 'Gdynia', '80-209', 'Grabiszyńska 19', '9', '600-513-003', 'olga@op.pl', '2021-11-27', '11:01', '', NULL, 'null', NULL, 'Średni', 'deleted'),
(23, 8, 'Opieka nad zwierzakiem', 'Zwierzęta', 'Średniej wielkości Beagle', 'Gdynia', '80-209', 'Grabiszyńska 19', '9', '600-513-003', 'olga@op.pl', '2021-11-19', '10:00', '', NULL, 'a:2:{i:0;s:6:\"Spacer\";i:1;s:9:\"Karmienie\";}', NULL, 'Średni', 'deleted'),
(24, 8, 'Opieka nad zwierzakiem', 'Zwierzęta', 'asd', 'Gdynia', '80-209', 'Grabiszyńska 19', '9', '600-513-003', 'olga@op.pl', '2021-12-01', '11:01', '', NULL, 'a:2:{i:0;s:9:\"Karmienie\";i:1;s:11:\"Sprzątanie\";}', NULL, '--', 'deleted'),
(25, 8, 'Opieka nad zwierzakiem', 'Zwierzęta', 'Burek', 'Gdynia', '80-209', 'Grabiszyńska 19', '9', '600-513-003', 'olga@op.pl', '2021-11-24', '11:11', '', NULL, 'a:1:{i:0;s:6:\"Spacer\";}', NULL, 'Średni', 'deleted'),
(26, 8, 'Opieka nad zwierzakiem', 'Zwierzęta', 'asd', 'Gdynia', '80-209', 'Grabiszyńska 19', '9', '600-513-003', 'olga@op.pl', '2021-11-10', '11:11', '', NULL, 'a:2:{i:0;s:6:\"Spacer\";i:1;s:11:\"Sprzątanie\";}', NULL, 'Średni', 'deleted'),
(27, 8, 'Zajmowanie się zwierzakiem', 'Zwierzeta', 'Mała kotka, miła, lubiąca kontakt z ludźmi.', 'Kalisz', '63-460', 'Ratuszowa', '18', '600-513-003', 'olga@op.pl', '2021-11-24', '18:00', '', NULL, 'a:2:{i:0;s:9:\"Karmienie\";i:1;s:10:\"Sprzatanie\";}', 'Kot', 'Duży', 'deleted'),
(28, 8, 'Opieka nad zwierzakiem', 'Zwierzęta', 'Sprzątanie klatki raz w tygodniu + codzienne karmienie i uzupełnianie świeżej wody u chomika.', 'Kalisz', '63-460', 'Ratuszowa', '18', '600-513-003', 'olga@op.pl', '2021-11-30', '13:30', '', NULL, 'a:2:{i:0;s:9:\"Karmienie\";i:1;s:11:\"Sprzątanie\";}', 'Chomik', NULL, 'deleted'),
(29, 8, 'a', 'Zwierzęta', '', 'a', 'a', 'a', 'a', '1', 'olga@op.pl', '2021-11-12', '11:11', '', NULL, 'a:1:{i:0;s:6:\"Spacer\";}', 'Pies', 'Średni', 'deleted'),
(30, 8, 'Mycie garów', 'Zwierzęta', '', 'Wrocław', '12-345', 'Flisaków', '11', '123-456-789', 'olga@op.pl', '2021-11-23', '11:11', '', NULL, 'a:1:{i:0;s:9:\"Karmienie\";}', 'Pies', 'Duży', 'deleted'),
(31, 8, 'test', 'Pomoc', 'asd', 'Warszawa', '12-345', 'Testowa', '1', '1111111', 'olga@op.pl', '2021-11-25', '22:02', '', NULL, '', '', '', 'deleted'),
(32, 8, 'test', 'Sprzatanie', '3 razy w tygodniu', 'Warszawa', '12-345', 'Testowa', '1', '1111111', 'olga@op.pl', '2021-11-18', '11:11', '', NULL, '', '', '', 'deleted'),
(33, 8, 'Mycie garów', 'Sprzatanie', 'Mycie naczyń po każdym obiedzie i kolacji, około godziny 20:00', 'Jelenia Góra', '58-506', 'Transportowa 18', '9', '600-595-448', 'olga@op.pl', '2021-11-25', '20:30', '', NULL, '', '', '', 'deleted'),
(34, 8, 'Zrobienie zakupów', 'Zakupy', 'Proszę o paragon', 'Jelenia Góra', '58-506', 'Transportowa 18', '9', '600-595-448', 'olga@op.pl', '2021-11-25', '12:30', '', '1', '', '', '', 'deleted'),
(35, 8, 'Zrobienie zakupów', 'Zakupy', 'Proszę o paragon + o zrobienie zakupów w Lidlu', 'Jelenia Góra', '58-506', 'Transportowa 18', '9', '600-595-448', 'olga@op.pl', '2021-11-25', '12:30', 'Ser żółty, szynka, ziemniaki młode luz 2kg', '1', '', '', '', 'deleted'),
(36, 8, 'Podwózka', 'Transport', 'Potrzebny transport na ulicę Letnią 2', 'Jelenia Góra', '58-506', 'Transportowa 18', '9', '600-595-448', 'olga@op.pl', '2021-11-25', '11:10', '', NULL, '', '', '', 'accepted'),
(37, 6, 'Potrzebuje zakupów', 'Zakupy', 'Proszę o warzywa najlepiej z ryneczku', 'Wałbrzych', '45-504', 'Daszyńska', '19', '503-303-448', 'marian@op.pl', '2021-11-26', '12:30', 'Główka kapusty (mała), ryż, mięso mielone 1kg.', NULL, '', '', '', 'free'),
(38, 8, 'Testowe zgłoszenie', 'Zwierzeta', 'Treść testowego zgłoszenia', 'Testowe Miasto', '34-567', 'Testowa Ulica', '18a', '600587998', 'olga@op.pl', '2021-12-10', '10:00', '', NULL, 'a:2:{i:0;s:6:\"Spacer\";i:1;s:9:\"Karmienie\";}', 'Pies', '', 'deleted'),
(39, 8, 'Testowe zgłoszenie', 'Zwierzeta', '', 'Testowe Miasto', '34-567', 'Testowa Ulica', '18a', '600587998', 'olga@op.pl', '2021-12-10', '10:00', '', NULL, 'a:2:{i:0;s:9:\"Karmienie\";i:1;s:10:\"Sprzatanie\";}', 'Pies', '', 'deleted'),
(40, 8, 'Oficjalny test', 'Zwierzeta', 'Oficjalny test 1', 'Jelenia Góra', '58-506', 'Nowa', '12', '123456789', 'olga@op.pl', '2021-12-16', '12:30', '', NULL, 'a:1:{i:0;s:9:\"Karmienie\";}', 'Pies', '', 'deleted'),
(41, 8, 'Oficjalny test 2', 'Zwierzeta', 'Oficjalny test 2', 'Jelenia Góra', '58-506', 'Nowa', '12', '123456789', 'olga@op.pl', '2021-12-15', '14:50', '', NULL, 'a:2:{i:0;s:6:\"Spacer\";i:1;s:9:\"Karmienie\";}', 'Rybki', '', 'deleted'),
(42, 8, 'Oficjalny test 3 ', 'Pomoc', 'Oficjalny test 3', 'Jelenia Góra', '58-506', 'Nowa', '12', '123456789', 'olga@op.pl', '2021-12-22', '10:20', '', NULL, '', '', '', 'deleted'),
(43, 8, 'Oficjalny test 4', 'Transport', 'Oficjalny test 4', 'Jelenia Góra', '58-506', 'Nowa', '12', '123456789', 'olga@op.pl', '2021-12-31', '05:00', '', NULL, '', '', '', 'deleted'),
(44, 8, 'Oficjalny test 5', 'Sprzatanie', '', 'Jelenia Góra', '58-506', 'Nowa', '12', '123456789', 'olga@op.pl', '2021-12-09', '04:30', '', NULL, '', '', '', 'deleted'),
(45, 8, 'Oficjalny test', 'Zwierzeta', '', 'Jelenia Góra', '58-500', 'Nowa', '12', '123456789', 'olga@op.pl', '2021-12-14', '10:00', '', NULL, 'a:2:{i:0;s:9:\"Karmienie\";i:1;s:10:\"Sprzatanie\";}', 'Pies', '', 'deleted'),
(46, 8, 'Wyprowadzenie psa na spacer', 'Zwierzeta', 'Potrzebna jest osoba, która jest w stanie wyprowadzić psa na spacer, trzy razy dziennie.', 'Wałbrzych', '58-504', 'Solna', '12', '500867448', 'olga@op.pl', '2021-12-16', '12:30', '', NULL, 'a:1:{i:0;s:6:\"Spacer\";}', 'Pies', '', 'deleted'),
(47, 8, 'Grabienie liści', 'Sprzatanie', '', 'Jelenia Góra', '58-506', 'Druciana', '12a', '600448500', 'olga@op.pl', '2022-01-01', '12:15', '', NULL, '', '', '', 'free'),
(48, 30, 'Odśnieżenie podjazdu', 'Sprzatanie', '', 'Kraków', '32-500', 'Transportowa 17', '2', '600546798', 'aleksander@op.pl', '2022-01-31', '12:00', '', NULL, '', '', '', 'free'),
(49, 30, 'Zakupy na obiad', 'Zakupy', 'Proszę o zakupy najlepiej z Lidla', 'Kraków', '32-500', 'Transportowa 17', '2', '600546798', 'aleksander@op.pl', '2022-01-31', '10:00', 'Ziemniaki\\r\\nSchab bez kości\\r\\nFilet z kurczaka\\r\\nKapusta kiszona', '1', '', '', '', 'accepted'),
(50, 30, 'Opieka nad zwierzęciem', 'Zwierzeta', '', 'Kraków', '32-500', 'Transportowa 17', '2', '600546798', 'aleksander@op.pl', '2022-01-31', '15:30', '', NULL, 'a:2:{i:0;s:9:\"Karmienie\";i:1;s:10:\"Sprzatanie\";}', 'Chomik', '', 'free'),
(51, 30, 'Pomoc przy codziennych obowiązkach', 'Pomoc', '', 'Kraków', '32-500', 'Transportowa 17', '2', '600546798', 'aleksander@op.pl', '2022-01-31', '18:00', '', NULL, '', '', '', 'free'),
(52, 30, 'Transport do lekarza', 'Transport', '', 'Kraków', '32-500', 'Transportowa 17', '2', '600546798', 'aleksander@op.pl', '2022-01-31', '09:00', '', NULL, '', '', '', 'free'),
(53, 30, 'Zakupy na kolacje', 'Zakupy', '', 'Kraków', '32-500', 'Transportowa 17', '2', '600546798', 'aleksander@op.pl', '2022-01-31', '07:00', '', NULL, '', '', '', 'deleted');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reportstatus`
--

CREATE TABLE `reportstatus` (
  `id_report` int(10) NOT NULL,
  `owner` int(10) NOT NULL,
  `volonteer` int(10) NOT NULL,
  `status` varchar(150) COLLATE utf8_polish_ci NOT NULL DEFAULT 'free'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `reportstatus`
--

INSERT INTO `reportstatus` (`id_report`, `owner`, `volonteer`, `status`) VALUES
(2, 3, 1, 'completed'),
(1, 1, 1, 'completed'),
(7, 6, 1, 'completed'),
(3, 4, 1, 'completed'),
(5, 7, 1, 'completed'),
(8, 8, 1, 'completed'),
(11, 8, 1, 'completed'),
(36, 8, 1, 'accepted'),
(4, 4, 1, 'accepted'),
(49, 30, 29, 'accepted');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `email` varchar(75) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `surnname` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `city` varchar(150) COLLATE utf8_polish_ci NOT NULL,
  `role` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `instruction` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `firstname`, `surnname`, `city`, `role`, `instruction`) VALUES
(1, 'lemihdesign@gmail.com', '$2y$10$/VsooAdr1F2fNgouSBYLEeItCptgM84XbU4FRImKqlPHncnWIDR6K', 'Kacper', 'Lemiszewski', 'Jelenia Góra', 'volonteer', NULL),
(3, 'marcin@test.pl', '$2y$10$g8UWoADKdxpXZutfPrqJReV/fFxAXSTfNRkvf5VzijczjWzd34Sq2', 'Marcin', 'Kowalski', 'Warszawa', 'volonteer', NULL),
(4, 'antek@o2.pl', '$2y$10$k1W01b4fAv/OgQXi2c4KzugM3KQqYImrXF5RBL8o3W.ILYlzmSlUm', 'Antoni', 'Kowalski', 'Poznań', 'senior', NULL),
(5, 'maciej@op.pl', '$2y$10$thcfjyEN8btsifAxvRtnYOQCRetJiBvNWs.4m5MotqpkY7ZV3Dxze', 'Maciej', 'Kowalski', 'Kraków', 'senior', NULL),
(6, 'marian@op.pl', '$2y$10$ZXwgF4N7H.FkcOWxc.wZPeRkYvY9rojLDEMRvo2yfTqOrVAYTyjKe', 'Marian', 'Kowalski', 'Kraków', 'senior', NULL),
(7, 'krzysztof@op.pl', '$2y$10$u4Volgg5QDUzwSOsg4COHOy8luBUUpA2/F8LBkHgmCpQ7S4NPYI2y', 'Krzysztof', 'Kowalski', 'Gdańsk', 'senior', NULL),
(8, 'olga@op.pl', '$2y$10$cPA2AzJFqJ3hQ8Mf0T4B6upWVyxdralC9tTdL67w7tkm40Jf2Ggs.', 'Olga', 'Kowalska', 'Gdynia', 'senior', NULL),
(9, 'marek@gmail.com', '$2y$10$6R0lnOpUlotkKgRRKk1PCORGCTvFhxKUnjFBsOXwHmPrXd6qYDHIO', 'Marek', 'Marecki', 'Wrocław', 'volonteer', NULL),
(28, 'piotr.nowak@gmail.com', '$2y$10$cwBXWRUOlT82PXJTiVIoy.3fRUI60A5H.4pRerAlJ6z2RA7y/xJfG', 'Piotr', 'Nowak', 'Warszawa', 'volonteer', NULL),
(29, 'matylda.nowa@gmail.com', '$2y$10$4FASV2RH.F6FmmW2SL5hluuDhS1olhISUZzwBqJ.ECTgv8NmRhWNi', 'Matylda', 'Nowa', 'Warszawa', 'volonteer', NULL),
(30, 'aleksander@op.pl', '$2y$10$qf3ag8QFAqgwRin0fuhQ8.Vy02AYUsc9uoxsCRbwp6v2at8VEbm22', 'Aleksander', 'Bruzda', 'Kraków', 'senior', NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id_message`),
  ADD KEY `receiver` (`receiver`),
  ADD KEY `sender` (`sender`);

--
-- Indeksy dla tabeli `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id_notification`),
  ADD KEY `notification_ibfk_2` (`owner`),
  ADD KEY `volonteer` (`volonteer`),
  ADD KEY `notification_ibfk_1` (`id_report`);

--
-- Indeksy dla tabeli `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id_report`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeksy dla tabeli `reportstatus`
--
ALTER TABLE `reportstatus`
  ADD KEY `id_report` (`id_report`),
  ADD KEY `owner` (`owner`),
  ADD KEY `volonteer` (`volonteer`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `messages`
--
ALTER TABLE `messages`
  MODIFY `id_message` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `notification`
--
ALTER TABLE `notification`
  MODIFY `id_notification` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT dla tabeli `report`
--
ALTER TABLE `report`
  MODIFY `id_report` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`receiver`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`sender`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`id_report`) REFERENCES `report` (`id_report`),
  ADD CONSTRAINT `notification_ibfk_2` FOREIGN KEY (`owner`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `notification_ibfk_3` FOREIGN KEY (`volonteer`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `reportstatus`
--
ALTER TABLE `reportstatus`
  ADD CONSTRAINT `reportstatus_ibfk_1` FOREIGN KEY (`id_report`) REFERENCES `report` (`id_report`),
  ADD CONSTRAINT `reportstatus_ibfk_2` FOREIGN KEY (`owner`) REFERENCES `report` (`id_user`),
  ADD CONSTRAINT `reportstatus_ibfk_3` FOREIGN KEY (`volonteer`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Feb 07, 2023 alle 15:57
-- Versione del server: 10.4.22-MariaDB
-- Versione PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `footballblog`
--
CREATE DATABASE IF NOT EXISTS `footballblog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `footballblog`;

-- --------------------------------------------------------

--
-- Struttura della tabella `post`
--

CREATE TABLE `post` (
  `id_post_pk` int(11) NOT NULL,
  `titolo_post` varchar(150) NOT NULL,
  `contenuto_post` text NOT NULL,
  `id_utente_fk` int(11) NOT NULL,
  `id_squadra_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `post`
--

INSERT INTO `post` (`id_post_pk`, `titolo_post`, `contenuto_post`, `id_utente_fk`, `id_squadra_fk`) VALUES
(56, 'saaaaaaaaaa', 'saaaaaaaaaa', 11, 3),
(57, 'asssssssss', 'saaaaaaaaaaa', 11, 11),
(61, 'saddsada', 'asdada', 11, 9);

-- --------------------------------------------------------

--
-- Struttura della tabella `risposte`
--

CREATE TABLE `risposte` (
  `id_risposta_pk` int(11) NOT NULL,
  `contenuto_risposta` text NOT NULL,
  `id_post_fk` int(11) NOT NULL,
  `id_utente_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `risposte`
--

INSERT INTO `risposte` (`id_risposta_pk`, `contenuto_risposta`, `id_post_fk`, `id_utente_fk`) VALUES
(1, 'daje dio cane', 1, 2),
(2, 'bella zio me so rotto lo cazzo', 1, 1),
(3, 'grande ziooo\n', 1, 3),
(4, 'sasasa', 4, 3),
(5, 'bella storia ajsdasdas sadasdasdas asdasdasdasd casfopeèrdf', 1, 3),
(6, 'd45d4as564d56as', 4, 3),
(7, 'sdaasdadasdasds', 5, 3),
(8, 'sdsdsadsaASDASdadsssdsdasdasdaasddSadhasjkfdbjkasbfjkasdbjsabdjkasbdjaskbdjkasdbajksbdajskbdasjdbaskdjasbdjasbdajskdbajskbdajskdbasjkdbasjdbasjdbasdbasjdssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddada', 4, 3),
(9, 'qwQWqwSASADAS', 5, 3),
(10, 'bella zio\n', 7, 3),
(11, 'sadasdasdasd', 7, 3),
(12, 'ciaosodoaodiasdoas opamscoa', 9, 5),
(13, 'sadasd', 9, 5),
(14, 'ciaoiciaociasodciasca', 7, 5),
(15, 'asdasdasd', 8, 5),
(16, 'porco ddio\n', 9, 5),
(17, 'sasasasa', 13, 5),
(18, 'assasasasa', 13, 5),
(19, '<z<zxz<', 13, 5),
(20, 'z', 13, 5),
(21, 'nun me fotte un cazzo\n', 15, 7),
(22, 'asdasdasda', 18, 7),
(23, 'asdasdasd', 24, 9),
(24, 'sdadasdasdas', 34, 9),
(25, 'dasdasdas', 34, 9),
(26, 'saasdsdsad', 38, 9),
(27, 'asddssda', 38, 9),
(28, 'asdasdasd', 39, 10),
(29, 'dasdasda', 39, 10),
(30, 'asdasdas', 38, 10),
(31, 'sadasdasd', 40, 10),
(32, 'asdasda', 40, 10),
(33, 'asdas', 38, 10),
(34, 'asdadasd', 41, 9),
(35, 'asdadas', 42, 9),
(36, 'fsdsdsdsdsdsdsdsdsdsdsdsdsd', 43, 9),
(37, 'sfddddddddddd', 43, 9),
(38, 'saddddddddddddd', 44, 9),
(39, 'asddddddddddd', 46, 10),
(40, 'adsssssssssss', 45, 10),
(41, 'asdddddd', 46, 9),
(42, 'asdddddddddd', 45, 9),
(43, 'errrrrrrrrrr', 47, 9),
(44, 'xzcczxc', 48, 9),
(45, 'zxccccccccccc', 48, 9),
(46, 'non saprei come aiutarti', 49, 11),
(47, 'cascasca', 49, 11),
(48, 'adasda', 55, 14),
(49, 'dasdasdasd', 56, 11);

-- --------------------------------------------------------

--
-- Struttura della tabella `squadra`
--

CREATE TABLE `squadra` (
  `id_squadra_pk` int(11) NOT NULL,
  `nome_squadra` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `squadra`
--

INSERT INTO `squadra` (`id_squadra_pk`, `nome_squadra`) VALUES
(1, 'Atalanta'),
(2, 'Bologna'),
(3, 'Cremonese'),
(4, 'Empoli'),
(5, 'Fiorentina'),
(6, 'Inter'),
(7, 'Juventus'),
(8, 'Lazio'),
(9, 'Lecce'),
(10, 'Milan'),
(11, 'Monza'),
(12, 'Napoli'),
(13, 'Roma'),
(14, 'Salernitana'),
(15, 'Sampdoria'),
(16, 'Sassuolo'),
(17, 'Spezia'),
(19, 'Torino'),
(20, 'Udinese'),
(21, 'Verona');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `id_utente_pk` int(11) NOT NULL,
  `nome_utente` varchar(45) NOT NULL,
  `mail_utente` varchar(320) NOT NULL,
  `password_utente` varchar(100) NOT NULL,
  `stato_utente` enum('attivo','bannato') NOT NULL DEFAULT 'attivo',
  `id_squadra_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`id_utente_pk`, `nome_utente`, `mail_utente`, `password_utente`, `stato_utente`, `id_squadra_fk`) VALUES
(8, 'MOD', 'moderatore@gmail.com', '$2b$10$qq47qn8zb208SsEZzWUz9OAuxWRJCsvKOVlgclkgL6bQlqCAtNzLa', 'attivo', 2),
(10, 'marco', 'marco@gmail.com', '$2b$10$jHl60fSpTzZpWbHCUX7uQe/vyOpjXaJBmJFl19USPRLpIG9rCRQKu', 'attivo', 14),
(11, 'lorenzo', 'lorenzo@gmail.com', '$2b$10$s7AaCYuyHW7GIDf6/bqf/OlyTL6hPqnpkjKSKJPZfSqHoL4ozinoO', 'attivo', 7),
(12, 'nico', 'nico@gmail.com', '$2b$10$xrTlqssuSg0tbB8qntgUxe/qAKU6nmHvc/vE.XmVOJRrpYn9v.hdG', 'attivo', 16),
(13, 'paolo', 'paolo@gmail.com', '$2b$10$dg0Kz4QUCMqabM7bs5bAbOLcpwbHKcSRJOLFNPX76BO33ouqRBi5m', 'attivo', 16),
(19, 'lore', 'ab@gmail.com', '$2b$10$eHQkhN9LWhfScpGgbqL4Iumsqnxouo5ls6ioZ2wYdkI9cYHYJm4Ei', 'attivo', 9);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post_pk`),
  ADD KEY `id_squadra_fk` (`id_squadra_fk`),
  ADD KEY `id_utente_fk` (`id_utente_fk`);

--
-- Indici per le tabelle `risposte`
--
ALTER TABLE `risposte`
  ADD PRIMARY KEY (`id_risposta_pk`),
  ADD KEY `id_utente_fk` (`id_utente_fk`),
  ADD KEY `id_post_fk` (`id_post_fk`);

--
-- Indici per le tabelle `squadra`
--
ALTER TABLE `squadra`
  ADD PRIMARY KEY (`id_squadra_pk`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`id_utente_pk`),
  ADD KEY `id_squadra_fk` (`id_squadra_fk`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `post`
--
ALTER TABLE `post`
  MODIFY `id_post_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT per la tabella `risposte`
--
ALTER TABLE `risposte`
  MODIFY `id_risposta_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT per la tabella `squadra`
--
ALTER TABLE `squadra`
  MODIFY `id_squadra_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `id_utente_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Database: `ids`
--
CREATE DATABASE IF NOT EXISTS `ids` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ids`;

-- --------------------------------------------------------

--
-- Struttura della tabella `attivita_sportiva`
--

CREATE TABLE `attivita_sportiva` (
  `codice_attivita` int(11) NOT NULL,
  `data_ora_attivita` datetime DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `nome_attvita` varchar(255) DEFAULT NULL,
  `numero_posti` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `attivita_sportiva`
--

INSERT INTO `attivita_sportiva` (`codice_attivita`, `data_ora_attivita`, `descrizione`, `nome_attvita`, `numero_posti`) VALUES
(73, '2022-06-26 00:00:00', 'Partita', 'Calcetto', 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `attrezzatura`
--

CREATE TABLE `attrezzatura` (
  `id` int(11) NOT NULL,
  `prenotato` bit(1) NOT NULL,
  `id_tipo_attrezzatura` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `attrezzatura`
--

INSERT INTO `attrezzatura` (`id`, `prenotato`, `id_tipo_attrezzatura`) VALUES
(46, b'0', 'ombrellone2'),
(47, b'0', 'ombrellone3'),
(48, b'1', 'parasole'),
(49, b'0', 'sdraia'),
(58, b'0', 'ombrellone3'),
(59, b'0', 'ombrellone1'),
(60, b'0', 'sdraia'),
(61, b'0', 'parasole'),
(62, b'1', 'ombrellone1');

-- --------------------------------------------------------

--
-- Struttura della tabella `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `cognome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `ordinazione_numero_ordinazione` int(11) DEFAULT NULL,
  `prenotazione_numero_prenotazione` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `cliente`
--

INSERT INTO `cliente` (`id`, `cognome`, `email`, `nome`, `ordinazione_numero_ordinazione`, `prenotazione_numero_prenotazione`) VALUES
(44, 'Rossi', 'paolorossi@gmail.com', 'Paolo', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendente`
--

CREATE TABLE `dipendente` (
  `id` int(11) NOT NULL,
  `cognome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `dipendente`
--

INSERT INTO `dipendente` (`id`, `cognome`, `email`, `nome`) VALUES
(67, 'Bianchi', 'dipendenti@chalet.com', 'Luca');

-- --------------------------------------------------------

--
-- Struttura della tabella `hibernate_sequences`
--

CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) NOT NULL,
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `hibernate_sequences`
--

INSERT INTO `hibernate_sequences` (`sequence_name`, `next_val`) VALUES
('default', 74);

-- --------------------------------------------------------

--
-- Struttura della tabella `ordinazione`
--

CREATE TABLE `ordinazione` (
  `numero_ordinazione` int(11) NOT NULL,
  `completato` bit(1) NOT NULL,
  `consegnato` bit(1) NOT NULL,
  `pagato` bit(1) NOT NULL,
  `prezzo_tot` double NOT NULL,
  `quantita` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `prodotto_bar_codicep` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `prenotazione`
--

CREATE TABLE `prenotazione` (
  `numero_prenotazione` int(11) NOT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_in_at_morning` bit(1) NOT NULL,
  `check_out` datetime DEFAULT NULL,
  `check_out_at_morning` bit(1) NOT NULL,
  `pagato` bit(1) NOT NULL,
  `attrezzatura_id` int(11) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `prenotazione`
--

INSERT INTO `prenotazione` (`numero_prenotazione`, `check_in`, `check_in_at_morning`, `check_out`, `check_out_at_morning`, `pagato`, `attrezzatura_id`, `cliente_id`) VALUES
(74, '2022-02-28 00:00:00', b'1', '2022-02-28 00:00:00', b'1', b'0', 62, 44);

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotto_bar`
--

CREATE TABLE `prodotto_bar` (
  `codicep` int(11) NOT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `prezzo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `prodotto_bar`
--

INSERT INTO `prodotto_bar` (`codicep`, `descrizione`, `prezzo`) VALUES
(1, 'Coca Cola', 2.5),
(2, 'Estathé Pesca', 1.3),
(3, 'Estathé Limone', 1.3),
(4, 'Pizza Bianca', 1),
(5, 'Pizza Rossa', 1.3),
(6, 'Patatine Classiche', 1.3),
(7, 'Campari Soda', 2.5);

-- --------------------------------------------------------

--
-- Struttura della tabella `register_user`
--

CREATE TABLE `register_user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `dipendente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `register_user`
--

INSERT INTO `register_user` (`id`, `email`, `password`, `cliente_id`, `dipendente_id`) VALUES
(45, 'paolorossi@gmail.com', 'ciao', 44, NULL),
(68, 'dipendenti@chalet.it', 'dipendente1', NULL, 67);

-- --------------------------------------------------------

--
-- Struttura della tabella `riservazione_attivita`
--

CREATE TABLE `riservazione_attivita` (
  `numero_riservazione` int(11) NOT NULL,
  `posti_prenotati` int(11) NOT NULL,
  `attivita_sportiva_codice_attivita` int(11) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `tipo_attrezzatura`
--

CREATE TABLE `tipo_attrezzatura` (
  `id` varchar(255) NOT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `prezzo_base` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `tipo_attrezzatura`
--

INSERT INTO `tipo_attrezzatura` (`id`, `descrizione`, `prezzo_base`) VALUES
('LETTINO', 'Lettino giornaliero', 7.5),
('OMBRELLONE1', 'Ombrellone 1°fila\r\n1 sdraia + 1 lettino', 35),
('OMBRELLONE2', 'Ombrellone 2°fila\r\n1 sdraia + 1 lettino\r\n', 30),
('OMBRELLONE3', 'Ombrellone 3°fila\r\n1 sdraia + 1 lettino', 25),
('PARASOLE', 'Ombrellone con dimensioni maggiori per gruppi\r\n2 sdraie + 2 lettini', 50),
('SDRAIA', 'Aggiungibile ad un ombrellone/parasole', 5);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `attivita_sportiva`
--
ALTER TABLE `attivita_sportiva`
  ADD PRIMARY KEY (`codice_attivita`);

--
-- Indici per le tabelle `attrezzatura`
--
ALTER TABLE `attrezzatura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkwtt9c8l9bydy31hf7aa2du2g` (`id_tipo_attrezzatura`);

--
-- Indici per le tabelle `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKijab4e4028fak8ylfrmo56g2c` (`ordinazione_numero_ordinazione`),
  ADD KEY `FKsrmthx5cg1d23ym9htbvqhit7` (`prenotazione_numero_prenotazione`);

--
-- Indici per le tabelle `dipendente`
--
ALTER TABLE `dipendente`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `hibernate_sequences`
--
ALTER TABLE `hibernate_sequences`
  ADD PRIMARY KEY (`sequence_name`);

--
-- Indici per le tabelle `ordinazione`
--
ALTER TABLE `ordinazione`
  ADD PRIMARY KEY (`numero_ordinazione`),
  ADD KEY `FKrhdfmiahgbitl1njntshwkcmx` (`cliente_id`),
  ADD KEY `FKsjcb13t2o7l4xog8y9moo5x0j` (`prodotto_bar_codicep`);

--
-- Indici per le tabelle `prenotazione`
--
ALTER TABLE `prenotazione`
  ADD PRIMARY KEY (`numero_prenotazione`),
  ADD KEY `FKdx45mwlsoeq63q40qntirevvf` (`attrezzatura_id`),
  ADD KEY `FKpwl9nan84g2doas4b7j8rjpu0` (`cliente_id`);

--
-- Indici per le tabelle `prodotto_bar`
--
ALTER TABLE `prodotto_bar`
  ADD PRIMARY KEY (`codicep`);

--
-- Indici per le tabelle `register_user`
--
ALTER TABLE `register_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7yvd71ggbgj17elcim8bd9nna` (`cliente_id`),
  ADD KEY `FK3utgimefmt1d0m9h180ccvoc2` (`dipendente_id`);

--
-- Indici per le tabelle `riservazione_attivita`
--
ALTER TABLE `riservazione_attivita`
  ADD PRIMARY KEY (`numero_riservazione`),
  ADD KEY `FKd14n2uwbg23e8dd6eger263ht` (`attivita_sportiva_codice_attivita`),
  ADD KEY `FKrts7yw2qlyqtivjr4xostj6gl` (`cliente_id`);

--
-- Indici per le tabelle `tipo_attrezzatura`
--
ALTER TABLE `tipo_attrezzatura`
  ADD PRIMARY KEY (`id`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `attrezzatura`
--
ALTER TABLE `attrezzatura`
  ADD CONSTRAINT `FKkwtt9c8l9bydy31hf7aa2du2g` FOREIGN KEY (`id_tipo_attrezzatura`) REFERENCES `tipo_attrezzatura` (`id`);

--
-- Limiti per la tabella `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FKijab4e4028fak8ylfrmo56g2c` FOREIGN KEY (`ordinazione_numero_ordinazione`) REFERENCES `ordinazione` (`numero_ordinazione`),
  ADD CONSTRAINT `FKsrmthx5cg1d23ym9htbvqhit7` FOREIGN KEY (`prenotazione_numero_prenotazione`) REFERENCES `prenotazione` (`numero_prenotazione`);

--
-- Limiti per la tabella `ordinazione`
--
ALTER TABLE `ordinazione`
  ADD CONSTRAINT `FKrhdfmiahgbitl1njntshwkcmx` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `FKsjcb13t2o7l4xog8y9moo5x0j` FOREIGN KEY (`prodotto_bar_codicep`) REFERENCES `prodotto_bar` (`codicep`);

--
-- Limiti per la tabella `prenotazione`
--
ALTER TABLE `prenotazione`
  ADD CONSTRAINT `FKdx45mwlsoeq63q40qntirevvf` FOREIGN KEY (`attrezzatura_id`) REFERENCES `attrezzatura` (`id`),
  ADD CONSTRAINT `FKpwl9nan84g2doas4b7j8rjpu0` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`);

--
-- Limiti per la tabella `register_user`
--
ALTER TABLE `register_user`
  ADD CONSTRAINT `FK3utgimefmt1d0m9h180ccvoc2` FOREIGN KEY (`dipendente_id`) REFERENCES `dipendente` (`id`),
  ADD CONSTRAINT `FK7yvd71ggbgj17elcim8bd9nna` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`);

--
-- Limiti per la tabella `riservazione_attivita`
--
ALTER TABLE `riservazione_attivita`
  ADD CONSTRAINT `FKd14n2uwbg23e8dd6eger263ht` FOREIGN KEY (`attivita_sportiva_codice_attivita`) REFERENCES `attivita_sportiva` (`codice_attivita`),
  ADD CONSTRAINT `FKrts7yw2qlyqtivjr4xostj6gl` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dump dei dati per la tabella `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dump dei dati per la tabella `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"footballblog\",\"table\":\"post\"},{\"db\":\"footballblog\",\"table\":\"utenti\"},{\"db\":\"footballblog\",\"table\":\"squadra\"},{\"db\":\"calcioapp\",\"table\":\"risposte\"},{\"db\":\"calcioapp\",\"table\":\"post\"},{\"db\":\"calcioapp\",\"table\":\"moderatori\"},{\"db\":\"calcioapp\",\"table\":\"squadra\"},{\"db\":\"calcioapp\",\"table\":\"utenti\"},{\"db\":\"calcioapp\",\"table\":\"strike\"},{\"db\":\"calcioapp\",\"table\":\"amministratori\"}]');

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dump dei dati per la tabella `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'ids', 'cliente', '{\"CREATE_TIME\":\"2022-02-19 12:00:50\",\"col_order\":[0,3,1,2,4,5],\"col_visib\":[1,1,1,1,1,1]}', '2022-02-26 10:09:56'),
('root', 'ids', 'dipendente', '{\"CREATE_TIME\":\"2022-02-19 12:00:50\",\"col_order\":[0,3,1,2],\"col_visib\":[1,1,1,1]}', '2022-02-25 10:37:31'),
('root', 'ids', 'tipo_attrezzatura', '{\"CREATE_TIME\":\"2022-01-31 15:53:52\",\"col_visib\":[1,1,1,1]}', '2022-02-18 10:27:40');

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

--
-- Dump dei dati per la tabella `pma__tracking`
--

INSERT INTO `pma__tracking` (`db_name`, `table_name`, `version`, `date_created`, `date_updated`, `schema_snapshot`, `schema_sql`, `data_sql`, `tracking`, `tracking_active`) VALUES
('pwam', 'clienti', 1, '2022-05-12 11:53:42', '2022-05-12 12:01:33', 'a:2:{s:7:\"COLUMNS\";a:4:{i:0;a:8:{s:5:\"Field\";s:4:\"nome\";s:4:\"Type\";s:4:\"text\";s:9:\"Collation\";s:18:\"utf8mb4_general_ci\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:1;a:8:{s:5:\"Field\";s:7:\"cognome\";s:4:\"Type\";s:4:\"text\";s:9:\"Collation\";s:18:\"utf8mb4_general_ci\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:2;a:8:{s:5:\"Field\";s:5:\"email\";s:4:\"Type\";s:4:\"text\";s:9:\"Collation\";s:18:\"utf8mb4_general_ci\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:3;a:8:{s:5:\"Field\";s:8:\"password\";s:4:\"Type\";s:4:\"text\";s:9:\"Collation\";s:18:\"utf8mb4_general_ci\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}}s:7:\"INDEXES\";a:0:{}}', '# log 2022-05-12 11:53:42 root\nDROP TABLE IF EXISTS `clienti`;\n# log 2022-05-12 11:53:42 root\n\nCREATE TABLE `clienti` (\n  `nome` text NOT NULL,\n  `cognome` text NOT NULL,\n  `email` text NOT NULL,\n  `password` text NOT NULL\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n# log 2022-05-12 11:54:02 root\nDROP TABLE `clienti`;\n\n# log 2022-05-12 12:01:33 root\nCREATE TABLE `clienti` ( `id` INT(6) NOT NULL ,  `email` CHAR(25) NOT NULL ,  `password` CHAR(25) NOT NULL ,    PRIMARY KEY  (`id`),    UNIQUE  (`email`)) ENGINE = InnoDB;', '\n', 'UPDATE,INSERT,DELETE,TRUNCATE,CREATE TABLE,ALTER TABLE,RENAME TABLE,DROP TABLE,CREATE INDEX,DROP INDEX', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dump dei dati per la tabella `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-02-07 14:53:45', '{\"NavigationWidth\":230.962,\"SQLQuery\\/Explain\":false,\"SQLQuery\\/ShowAsPHP\":false,\"Console\\/Mode\":\"show\",\"Console\\/Height\":309.95989000000003,\"NavigationTreeDefaultTabTable\":\"browse\",\"Server\\/hide_db\":\"\",\"Server\\/only_db\":\"\",\"lang\":\"it\"}');

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indici per le tabelle `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indici per le tabelle `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indici per le tabelle `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indici per le tabelle `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indici per le tabelle `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indici per le tabelle `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indici per le tabelle `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indici per le tabelle `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indici per le tabelle `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indici per le tabelle `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indici per le tabelle `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indici per le tabelle `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indici per le tabelle `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

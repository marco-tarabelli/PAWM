-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Feb 11, 2023 alle 16:14
-- Versione del server: 10.4.25-MariaDB
-- Versione PHP: 8.1.10

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
(62, 'Punti tolti', 'Ciao ragazzi, cosa ne pensate del fatto che ci abbiano tolto 15 punti?', 20, 7),
(63, 'CAMPIONATO', 'Forza ragazzi che quest\'anno è il nostro', 21, 12),
(64, 'RISSA CALABRIA THEO', 'Ciao ragazzi, ma pensate veramente che i nostri giocatori si siano menati fra di loro?', 22, 10),
(65, 'CAVANI O HIGUAIN?', 'Ciao a tutti, secondo voi quale attaccante ha fatto più differenza da noi a Napoli?', 23, 12),
(66, 'OBBIETTIVO SALVEZZA', 'Chi l\'avrebbe mai detto che già al primo anno in Serie A avremmo fatto un campionato del genere', 24, 11);

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
(50, 'Giusto cosi hahahahaha', 62, 21),
(51, 'Solo fortuna', 63, 22),
(52, 'Ladri.', 62, 22),
(53, 'Ancora presto per parlare...', 63, 23),
(54, 'Ovvio che sia Cavani', 65, 24),
(55, 'Solite fake news', 64, 24),
(56, 'Tutti felici hahaha', 62, 24);

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
(19, 'lore', 'ab@gmail.com', '$2b$10$eHQkhN9LWhfScpGgbqL4Iumsqnxouo5ls6ioZ2wYdkI9cYHYJm4Ei', 'attivo', 9),
(20, 'loredana', 'loredana@gmail.it', '$2b$10$gd7.UkuRrM.baRTxUjwXK.IClTfwC/i4i.CrRavN4joqOsnFoB7mG', 'attivo', 17),
(21, 'nicolino', 'nicolino@gmail.com', '$2b$10$WthYViwsYLwtp.vFyBT09ucs1r.N.VbV4HsVGvAqkYQqp4Q1sjCqy', 'attivo', 6),
(22, 'mario', 'mariomari@gmail.com', '$2b$10$J.3l59.NtXsrooFMJqojNOl5DztXda4/3gEVHCM3NPuJqUIS4GYii', 'attivo', 10),
(23, 'ciro', 'cirodenapoli@gmail.com', '$2b$10$zp9AWw0jE9QP9LUcqVK7A.FmFGv2Z0LKDb9oI3jdYbFqGhxIAVnBS', 'attivo', 12),
(24, 'davide', 'davide@gmail.com', '$2b$10$E8wbJNXiPoSAFhMIdDboOuPT1z26WbFTNBeR33collvJFyV/6bVe6', 'attivo', 11),
(25, 'lorenzo23', 'lorenzooooo@gmail.com', '$2b$10$pmE3.xA0f7koGw03v4zIK.c9s3W3FcUNYXAZPEUhL7gVRp1rAsPeu', 'attivo', 15);

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
  MODIFY `id_post_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT per la tabella `risposte`
--
ALTER TABLE `risposte`
  MODIFY `id_risposta_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT per la tabella `squadra`
--
ALTER TABLE `squadra`
  MODIFY `id_squadra_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `id_utente_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

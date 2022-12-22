-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Des 2022 pada 07.30
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_tari`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `a_class`
--

CREATE TABLE `a_class` (
  `id` int(11) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `cbu_ckd` enum('CBU','CKD') DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `a_class`
--

INSERT INTO `a_class` (`id`, `model`, `cbu_ckd`, `harga`) VALUES
(1, 'A 200 with AMG Line', 'CBU', 589000000),
(2, 'A 250 with AMG Line', 'CBU', 699000000),
(3, 'A 250 sport FL', 'CBU', 699000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cla`
--

CREATE TABLE `cla` (
  `id` int(11) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `cbu_ckd` enum('CBU','CKD') DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cla`
--

INSERT INTO `cla` (`id`, `model`, `cbu_ckd`, `harga`) VALUES
(1, 'CLA 200 FL', 'CBU', 659000000),
(2, 'CLA 200 with AMG Line FL', 'CBU', 749000000),
(3, 'CLA 200 Shooting Brake', 'CBU', 779000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gla`
--

CREATE TABLE `gla` (
  `id` int(11) NOT NULL,
  `model` varchar(50) DEFAULT '0',
  `cbu_ckd` enum('CBU','CKD') DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `gla`
--

INSERT INTO `gla` (`id`, `model`, `cbu_ckd`, `harga`) VALUES
(1, 'CLA 200', 'CBU', 599000000),
(2, 'CLA 200 with AMG Line', 'CBU', 699000000),
(3, 'CLA 45 AMG', 'CBU', 779000000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `a_class`
--
ALTER TABLE `a_class`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cla`
--
ALTER TABLE `cla`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gla`
--
ALTER TABLE `gla`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `a_class`
--
ALTER TABLE `a_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `cla`
--
ALTER TABLE `cla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `gla`
--
ALTER TABLE `gla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

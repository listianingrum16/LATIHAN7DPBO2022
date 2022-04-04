-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Apr 2022 pada 04.48
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_task`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_to_do`
--

CREATE TABLE `tb_to_do` (
  `id` int(10) NOT NULL,
  `name_td` varchar(255) NOT NULL,
  `details_td` text NOT NULL,
  `subject_td` varchar(255) NOT NULL,
  `priority_td` varchar(255) NOT NULL,
  `deadline_td` date NOT NULL,
  `status_td` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_to_do`
--

INSERT INTO `tb_to_do` (`id`, `name_td`, `details_td`, `subject_td`, `priority_td`, `deadline_td`, `status_td`) VALUES
(1, 'ERD', 'Bikin ERD', 'Basis Data', 'High', '2022-03-28', 'Sudah'),
(6, 'TMD', 'Beresin TMD', 'Struktur Data', 'High', '2022-04-30', 'Belum'),
(9, 'TP4', 'Kerjain TP4', 'DPBO', 'High', '2022-03-28', 'Belum'),
(18, 'UTS Web', 'Membuat CRUD', 'Other', 'High', '2022-04-03', 'Sudah');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_to_do`
--
ALTER TABLE `tb_to_do`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_to_do`
--
ALTER TABLE `tb_to_do`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

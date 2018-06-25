-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20 Jun 2018 pada 16.23
-- Versi Server: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dir_guru`
--

CREATE TABLE `dir_guru` (
  `id` int(5) NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `nama` varchar(25) NOT NULL,
  `golongan` varchar(10) NOT NULL,
  `jk` char(1) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `bidang_studi` varchar(200) NOT NULL,
  `kelas` varchar(200) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `ijazah_trakhir` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dir_guru`
--

INSERT INTO `dir_guru` (`id`, `nip`, `nama`, `golongan`, `jk`, `agama`, `bidang_studi`, `kelas`, `alamat`, `ijazah_trakhir`) VALUES
(7, '19591130 198301 1 00', 'Munni, S.Pd', 'IV/b', 'L', 'Islam', 'Muatan Lokal (Mulok)', 'IX', 'Rawamangun', 'S1/2012'),
(8, '196221231 198703 1 2', 'Drs. Made ali', 'IV/b', 'L', 'Islam', 'Agama', 'VII', 'Rawamangun', 'S1/1986'),
(9, '19731231 199803 2 01', 'Nelly, S.Pd', 'IV/b', 'L', 'Kristen', 'Matematika ', 'IX', 'Rawamangun', 'S1/1996');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dir_guru`
--
ALTER TABLE `dir_guru`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dir_guru`
--
ALTER TABLE `dir_guru`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

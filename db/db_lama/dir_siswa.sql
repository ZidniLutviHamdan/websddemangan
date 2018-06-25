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
-- Struktur dari tabel `dir_siswa`
--

CREATE TABLE `dir_siswa` (
  `id` int(11) NOT NULL,
  `nis` varchar(900) NOT NULL,
  `nama` varchar(900) NOT NULL,
  `jk` varchar(900) NOT NULL,
  `agama` varchar(900) NOT NULL,
  `ttl` varchar(900) NOT NULL,
  `kelas` varchar(200) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dir_siswa`
--

INSERT INTO `dir_siswa` (`id`, `nis`, `nama`, `jk`, `agama`, `ttl`, `kelas`, `alamat`) VALUES
(1, '1001', 'Zidni', 'pria', 'Islam', 'Banyumas, 27 Januari 2018', 'V A', 'Bantul');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dir_siswa`
--
ALTER TABLE `dir_siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dir_siswa`
--
ALTER TABLE `dir_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

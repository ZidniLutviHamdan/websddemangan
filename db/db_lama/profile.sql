-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20 Jun 2018 pada 16.24
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
-- Struktur dari tabel `profile`
--

CREATE TABLE `profile` (
  `id_sek` int(8) NOT NULL,
  `npsn` varchar(20) NOT NULL,
  `nm_sek` varchar(50) NOT NULL,
  `nss` varchar(20) NOT NULL,
  `nm_kepsek` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `kd_pos` varchar(5) NOT NULL,
  `provinsi` varchar(20) NOT NULL,
  `kab` varchar(20) NOT NULL,
  `status_sek` varchar(6) NOT NULL,
  `thn_operasi` varchar(4) NOT NULL,
  `jnjng_pend` varchar(3) NOT NULL,
  `akreditasi` varchar(1) NOT NULL,
  `tgl_sk` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `luas_tnh` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profile`
--

INSERT INTO `profile` (`id_sek`, `npsn`, `nm_sek`, `nss`, `nm_kepsek`, `alamat`, `kd_pos`, `provinsi`, `kab`, `status_sek`, `thn_operasi`, `jnjng_pend`, `akreditasi`, `tgl_sk`, `email`, `luas_tnh`) VALUES
(2, '1010460002008', 'SD Negeri Demangan', '2040 3480', 'Muryanto, S.Pd', 'Jl. Munggur No.38, RW.02, Demangan, Gondokusuman', '55221', 'D.I Yogyakarta', 'Yogyakarta', 'Negeri', '1995', 'SD', 'A', '2018-03-12', 'sddemangan@gmail.com', 1979);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id_sek`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id_sek` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

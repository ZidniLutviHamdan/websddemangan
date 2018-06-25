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
-- Struktur dari tabel `forum_komen`
--

CREATE TABLE `forum_komen` (
  `id` int(11) NOT NULL,
  `id_forum` int(11) NOT NULL,
  `oleh` varchar(900) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `komen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `forum_komen`
--

INSERT INTO `forum_komen` (`id`, `id_forum`, `oleh`, `tanggal`, `komen`) VALUES
(1, 1, 'Admin', '2016-04-11 08:11:12', 'Untuk saat ini pendaftaran Online masih belum terbuka, dan akan kami buka setelah pengumuman ujian  nasional, Trima Kasih.'),
(2, 1, 'Muchlis', '2016-04-11 09:03:15', 'Untuk saat ini pendaftaran Online masih belum terbuka, dan akan kami buka setelah pengumuman ujian nasional, Trima Kasih. '),
(3, 1, 'Muchlis', '2016-04-11 09:05:02', 'Untuk saat ini pendaftaran Online masih belum terbuka, dan akan kami buka setelah pengumuman ujian nasional, Trima Kasih. '),
(4, 2, 'Muchlis', '2016-04-11 09:06:09', 'Tidak ada persyaratannya bosku, ikutki saja! Tapi jangan harap untuk menang! karna ikutka juga'),
(5, 3, 'Muchlis', '2016-04-11 09:24:04', 'Tidak usah miko pindah! Enak ji sekolah disina nah.'),
(6, 3, 'Muchlis', '2016-04-11 10:35:42', 'Pindah miko saja ..!'),
(7, 4, 'Muchlis', '2016-04-11 17:22:44', 'Apa a ?'),
(8, 2, 'Muchlis', '2016-04-14 06:40:44', 'wsfcwqcwc'),
(9, 2, 'Muchlis', '2016-04-14 06:40:49', 'xwcwcwc'),
(10, 2, 'Muchlis', '2016-04-14 06:40:51', 'wcwcwc'),
(11, 1, 'Administrator', '2016-04-14 12:16:39', 'adad'),
(12, 1, 'Administrator', '2016-04-14 12:17:05', 'X'),
(13, 1, 'Administrator', '2016-04-14 12:17:09', 'adad'),
(14, 1, 'Administrator', '2016-04-14 12:17:15', 'adadad'),
(15, 2, 'Administrator', '2016-04-14 12:56:50', 'axaxax'),
(16, 5, 'qdqd', '2016-04-19 02:58:21', 'qdqdqd'),
(17, 3, 'Ali Akbar', '2016-04-19 03:44:26', 'Asskum.Wr.Wb. - Mau bernya pak, bagai mana dengan masalah pengurusan raport untuk pindah sekolah?'),
(18, 2, 'Administrator', '2016-04-23 15:01:53', 'dadadad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forum_komen`
--
ALTER TABLE `forum_komen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forum_komen`
--
ALTER TABLE `forum_komen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

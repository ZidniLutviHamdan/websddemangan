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
-- Struktur dari tabel `halaman`
--

CREATE TABLE `halaman` (
  `id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `judul_halaman` varchar(200) NOT NULL,
  `isi_halaman` text NOT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `halaman`
--

INSERT INTO `halaman` (`id`, `url`, `judul_halaman`, `isi_halaman`, `gambar`, `tanggal`) VALUES
(5, 'prestasi-sekolah', 'Prestasi Sekolah', '<p>Menyandingkan prestasi akademik dan non akademik dalam waktu bersamaan, bukan perkara mudah bagi seorang kepala  sekolah. Berbeda halnya Wakil  Kepala SMPN 2 Sukamaju,  Drs  H Made Ali, terus  melakukan  pembenahan  untuk meningkatkan  mutu pendidikan dan prestasi siswa, seperti intens  dalam melakukan kegiatan ekstrakurikuler (bimbingan teknis) di luar  jam  sekolah dengan melibatkan peran aktif guru.</p>\r\n<p>Hal ini diungkapkan  H Made Ali yang mendampingi Kepala SMP Neg 2 Sukamaju, Munni, S.Pd saat di temui Metro Pendidikan (MP)  di ruang kerjanya  baru-baru ini. Menurut Made Ali, kedepan minimal prestasi yang diraih tahun ini dapat dipertahangkan dan diharapkan kedepan prestasi yang telah diraih dapat lebih ditingkatkan lagi.</p>\r\n<p>Lanjut Made Ali menjelaskan, bahwa tahun ini (2015)  SMPN  2 Sukamaju telah meraih <strong>juara 1 lomba pidato</strong> oleh <strong>Yogi Hermawan</strong>  pada ajang pentas PAI yang diselenggarakan oleh Kemenag Luwu Utara tingkat Kabupaten Luwu Utara  <strong>dan juara 3 lomba tulis kaligrafi</strong> pentas PAI tahun 2015 yang diraih oleh siswa kelas 2 SMPN 2 Sukamaju, <strong>Kiki Wulandari.</strong></p>\r\n<p>Selain itu, siswa SMPN 2 Sukamaju  juga meraih <strong>juara harapan 2 lomba cepat tepat tingkat Kabupaten Luwu Utara tahun 2015</strong>.  H Made Ali yang alumni  IAIN Makassar tahun 1986 dan telah menjabat Wakasek sejak tahun 2008  telah megikuti Cakep (Calon Kepala Sekolah) tahun 2008 ini, Sekolah yang dipimpinnya ini juga pernah meraih <strong>juara 1 Olimpiade IPA</strong> tahun lalu.  “Tapi itu sudah lama, namun pihaknya  berharap prestasi serupa kedepan dapat diraihnya kembali bahkan bukan hanya bidang studi IPA, tetapi Matematika dan bidang lainnya, “ tandas putra kelahiran Kabupaten Bone yang mengabdi sebagai guru agama Islam di SMPN 2 Sukamaju  sejak 1986.</p>', 'prestasi-bisa-menjadi-dakwah.jpg', '2016-04-26 12:00:41'),
(11, 'prestasi-siswa', 'Prestasi Siswa', '<ol>\r\n<li>Juara 1 lomba pidato oleh Yogi Hermawan  pada ajang pentas PAI yang diselenggarakan oleh Kemenag Luwu Utara tingkat Kabupaten Luwu Utara tahun 2015</li>\r\n<li>Juara 3 lomba tulis kaligrafi pentas PAI yang diraih oleh siswa kelas 2 oleh Kiki Wulandari yang diselenggarakan oleh Kemenag Luwu Utara tingkat Kabupaten Luwu Utara tahun 2015</li>\r\n<li>Juara harapan 2 lomba cepat tepat tingkat Kabupaten Luwu Utara tahun 2015</li>\r\n<li>Juara 1 Olimpiade IPA tingkat kabupaten luwu utara tahun 2013</li>\r\n</ol>', '', '2016-04-26 12:09:29'),
(12, 'osis', 'OSIS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n         tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n         quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n         consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n         cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n         proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', '2016-04-19 05:03:18'),
(13, 'extra-kurikuler', 'Extra Kurikuler', '<ol>\r\n<li>Pramukar</li>\r\n<li>volly</li>\r\n<li>sepak bola</li>\r\n<li>sepak takrow</li>\r\n<li>bulutangkis.</li>\r\n<li>Tenis Meja</li>\r\n<li>Basket</li>\r\n</ol>', '', '2018-04-10 21:44:08'),
(15, 'sambutan', 'Selamat Datang', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ', '', '2016-04-20 08:41:31'),
(16, 'profile', 'Profile', '<table xss=removed>\r\n<tbody>\r\n<tr>\r\n<td xss=removed><strong>Nama kepala sekolah</strong></td>\r\n<td xss=removed> </td>\r\n<td xss=removed>:</td>\r\n<td xss=removed> </td>\r\n<td xss=removed>Munni, S.Pd</td>\r\n</tr>\r\n<tr>\r\n<td xss=removed><strong>Nama Sekolah</strong></td>\r\n<td xss=removed> </td>\r\n<td xss=removed>:</td>\r\n<td xss=removed> </td>\r\n<td xss=removed>SMP Negeri 2 Sukamaju</td>\r\n</tr>\r\n<tr>\r\n<td xss=removed><strong>NPSN</strong></td>\r\n<td xss=removed> </td>\r\n<td xss=removed>:</td>\r\n<td xss=removed> </td>\r\n<td xss=removed>40306929</td>\r\n</tr>\r\n<tr>\r\n<td xss=removed><strong>NSS</strong></td>\r\n<td xss=removed> </td>\r\n<td xss=removed>:</td>\r\n<td xss=removed> </td>\r\n<td xss=removed>201192410002</td>\r\n</tr>\r\n<tr>\r\n<td xss=removed><strong>Alamat</strong></td>\r\n<td xss=removed> </td>\r\n<td xss=removed>:</td>\r\n<td xss=removed> </td>\r\n<td xss=removed>Jl. Gunung latimojong no. 13 A rawamangun</td>\r\n</tr>\r\n<tr>\r\n<td xss=removed><strong>Kode Pos</strong></td>\r\n<td xss=removed> </td>\r\n<td xss=removed>:</td>\r\n<td xss=removed> </td>\r\n<td xss=removed>92963</td>\r\n</tr>\r\n<tr>\r\n<td xss=removed><strong>Provinsi</strong></td>\r\n<td xss=removed> </td>\r\n<td xss=removed>:</td>\r\n<td xss=removed> </td>\r\n<td xss=removed>Sulawesi Selatan</td>\r\n</tr>\r\n<tr>\r\n<td xss=removed><strong>Kabupaten</strong></td>\r\n<td xss=removed> </td>\r\n<td xss=removed>:</td>\r\n<td xss=removed> </td>\r\n<td xss=removed>Luwu Utara</td>\r\n</tr>\r\n<tr>\r\n<td xss=removed><strong>Status sekolah</strong></td>\r\n<td xss=removed> </td>\r\n<td xss=removed>:</td>\r\n<td xss=removed> </td>\r\n<td xss=removed>Negeri</td>\r\n</tr>\r\n<tr>\r\n<td xss=removed><strong>Tahun beroperasi</strong></td>\r\n<td xss=removed> </td>\r\n<td xss=removed>:</td>\r\n<td xss=removed> </td>\r\n<td xss=removed>1982</td>\r\n</tr>\r\n<tr>\r\n<td xss=removed><strong>Jenjang pendidikan</strong></td>\r\n<td xss=removed> </td>\r\n<td xss=removed>:</td>\r\n<td xss=removed> </td>\r\n<td xss=removed>SMP</td>\r\n</tr>\r\n<tr>\r\n<td xss=removed><strong>Akreditasi</strong></td>\r\n<td xss=removed> </td>\r\n<td xss=removed>:</td>\r\n<td xss=removed> </td>\r\n<td xss=removed>A</td>\r\n</tr>\r\n<tr>\r\n<td xss=removed><strong>Tanggal SK. Akreditasi</strong></td>\r\n<td xss=removed> </td>\r\n<td xss=removed>:</td>\r\n<td xss=removed> </td>\r\n<td xss=removed>01-01-2015</td>\r\n</tr>\r\n<tr>\r\n<td xss=removed><strong>Email</strong></td>\r\n<td xss=removed> </td>\r\n<td xss=removed>:</td>\r\n<td xss=removed> </td>\r\n<td xss=removed><a href=\"mailto:smpn2_sukamaju@yahoo.com\">smpn2_sukamaju@yahoo.com</a></td>\r\n</tr>\r\n<tr>\r\n<td xss=removed><strong>Luas tanah</strong></td>\r\n<td xss=removed> </td>\r\n<td xss=removed>:</td>\r\n<td xss=removed> </td>\r\n<td xss=removed>20.105 m<sup>2</sup></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>', NULL, '2016-04-26 12:16:15'),
(17, 'struktur-organisasi', 'Struktur Organisasi', '<p>Gambar diatas adalah struktur organisasi sekolah SMP Negeri 2 Sukamaju</p>', 'struktur_organisasi.jpg', '2016-04-26 12:43:49'),
(18, 'sejarah', 'Sejarah', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, '2016-04-26 12:19:19'),
(19, 'visi-misi', 'VISI dan MISI', '<p><strong>Visi</strong></p>\r\n<p>Sekolah akan berusaha dengan sungguh-sungguh agar para lulusannya akan menjadi anak-anak didik yang berpengetahuan luas, mempunyai daya kritis, dapat melanjutkan pendidikan yang lebih tinggi, bertanggung jawab, toleran dan menghormati keberagamaan, serta budipekerti yang luhur.</p>\r\n<p><strong>Misi </strong></p>\r\n<ol>\r\n<li>Mewujudkan SDM (Sumber Daya Manusia) berwawasan nasional.</li>\r\n<li>Mewujudkan SDM (Sumber Daya Manusia) berkualitas.</li>\r\n<li>Membentuk manusia yang berakhlak mulia.</li>\r\n<li>Meningkatkan mutu pendidikan.</li>\r\n<li>Mempererat tali persaudaraan</li>\r\n</ol>', NULL, '2016-04-26 12:18:28'),
(20, 'fasilitas', 'Fasilitas', '<p><strong>Fasilitas </strong></p>\r\n<ul>\r\n<li>Akses internet (telkom speedy)</li>\r\n<li>17 ruang kelas, terdiri dari 5 ruang kelas untuk siswa kelas 1, 6 ruang kelas untuk siswa kelas 2, dan 6 ruang kelas untuk siswa kelas 3.</li>\r\n<li>1 ruang kepala sekolah</li>\r\n<li>1 ruang guru</li>\r\n<li>1 ruang UKS</li>\r\n<li>2 ruang agama (kristen dan hindu)</li>\r\n<li>1 laboratorium IPA</li>\r\n<li>1 ruang multimedia/komputer</li>\r\n<li>1 ruang perpustakaan</li>\r\n<li>5 lapangan olahraga, terdiri dari 2 lapangan bulutangkis, 1 lapangan sepak takrow,1 lapangan sepakbola, dan 1 lapangan Volly.</li>\r\n</ul>', NULL, '2016-04-26 12:07:55'),
(21, 'prestasi-guru', 'Prestasi Guru', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, '2016-04-26 12:19:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

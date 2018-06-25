-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25 Jun 2018 pada 16.02
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
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `nama` varchar(30) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`nama`, `username`, `password`) VALUES
('Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
('Administrator', 'Admin2', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `link` varchar(500) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id`, `judul`, `link`, `gambar`) VALUES
(2, 'Banner1', 'http://akbardesign.org/', 'banner1.png'),
(3, 'Banner2', 'http://www.akbarcell.com/', 'banner2.jpg'),
(4, 'Banner', 'http://', 'icons8-place-marker-961.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `kategori` varchar(200) NOT NULL,
  `judul_content` varchar(200) NOT NULL,
  `isi_content` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `content`
--

INSERT INTO `content` (`id`, `kategori`, `judul_content`, `isi_content`, `gambar`, `tanggal`) VALUES
(1, 'berita', 'Cara Mengambil Tanggal Dan Waktu Sekarang di PHP', '<p><strong>Mengambil Tanggal</strong> Dan Waktu Sekarang di PHP¬†- Dalam PHP tersedia berbagai macam fungsi yang mempermudah kita dalam membuat website.¬†Salah satunya adalah¬†date,¬†Date adalah fungsi yang dimiliki PHP yang dapat digunakan untuk¬†mengambil tanggal dan waktu sekarang dari server. Date banyak dimanfaatkan untuk¬†merekam tanggal suatu proses pada website. Kali ini¬†saya akan menjelaskan bagaimana cara memakai¬†date untuk mengambil tanggal dan waktu sekarang beserta format penulisan karakter pada¬†Date.</p>\r\n<p>Tambahansdasas sad</p>', '', '2018-04-13 23:23:29'),
(5, 'berita', 'Cara Mengambil Tanggal Dan Waktu Sekarang di PHP', 'Mengambil Tanggal Dan Waktu Sekarang di PHP&not;&dagger;- Dalam PHP tersedia berbagai macam fungsi yang mempermudah kita dalam membuat website.&not;&dagger;Salah satunya adalah&not;&dagger;date,&not;&dagger;Date adalah fungsi yang dimiliki PHP yang dapat digunakan untuk&not;&dagger;mengambil tanggal dan waktu sekarang dari server. Date banyak dimanfaatkan untuk&not;&dagger;merekam tanggal suatu proses pada website. Kali ini&not;&dagger;saya akan menjelaskan bagaimana cara memakai&not;&dagger;date untuk mengambil tanggal dan waktu sekarang beserta format penulisan karakter pada&not;&dagger;Date.', '', '2016-04-19 08:56:56'),
(7, 'berita', 'GENERASI BERBAKAT SMPN 2 BUA PONRANG', '<p>Mereka ini adalah generasi muda yang mempunyai talenta dalam bidang seni. Beberapa waktu lalu dalam rangka memeriahkan acara ulang tahun depot pertamina karang-karangan (Terminal BBM Karang-karangan) melakukan lomba tari kreatif. Dalam acara tersebut mereka turut serta menjadi peserta lomba tari kreasi.<br /> Walhasil, mereka berhasil menyingkirkan beberapa kontestan lain dan berhasil meraih juara ke-2.<br /> Kita perlu catat bahwa, saat sekarang ini generasi muda seyogyanya memiliki suatu keterampilan sebagai modal untuk melangkah ke depan yg nantinya bisa menjadi generasi penerus yang dapat menjadi duta Indonesia di mata Internasional.<br /> <br /> <a name=\"more\"></a>Hal ini tidaklah mustahil jika mereka ini senantiasa berlatih dengan sabar, tekun, dan kontinu. Jangan hanya di saat menjelang suatu lomba, jangan hanya sekedar saja, tetapi berlatihlah dengan sungguh-sungguh. Buatlah kreasi sendiri, yg unik, tampilkan kreasi yg lain dari lain.<br /> Satu hal yg kita perlu kita pahami bersama bahwa mereka ini perlu dukungan moril, juga materil. Olehnya itu di harapkan kepada pelaku seni budaya di tanah air ini agar kiranya senantiasa berperan aktif menelusuri bakat yg di miliki oleh anak bangsa ini, baik di lingkungan sekolah, masyarakat, jangan hanya menunggu bola di tempat.<br /> Saran kami adalah buatlah suatu kegiatan yang bisa menyentuh semua kalangan, janagn hanya kelompok, atau hanya individu yang terakomodasi....Bravo buat Generasi muda yang berbakat.</p>', '', '2016-04-23 12:57:39'),
(8, 'berita', 'MENYAMBUT HUT RI KE 69 DI BELOPA KAB. LUWU', '<p>Dalam rangka merayakan HUT Kemerdekaan RI ke 69, di seluruh wilayah Indonesia khususnya di Kabupaten Luwu, berbagai bentuk perayaan menyambut jelang detik-detik HUT Proklamasi Kemerdekaan RI ke 69 Tanggal 17 Agustus 2014. Perayaan tersebut umumnya di dominasi oleh kegiatan hiburan mulai dari perlombaan antar RT, antar Desa, antar instansi, antar sekolah dan seterusnya.&nbsp;<br /> SMP Negeri 2 Bua Ponrang sebagai salah satu Sekolah yang ada di Kabupaten Luwu juga ikut ambil bagian dalam rangka memeriahkan&nbsp;<br /> HUT RI ke 69 tersebut. Bentuk kegiatan yang di ikuti di antaranya Gerak Jalan Indah Putra dan Putri. <br /> <br /> <br /> Sebelum di berangkatkan ke Belopa mengikuti Gerak jalan indah, terlebih dahulu mereka di latih oleh Guru (Masniati dkk) yang di beri Tugas oleh Kepala Sekolah (Muh. Senolangi) untuk membekali siswa dan siswi yang nantinya akan di bawa ke Belopa. Beberapa hari mereka di latih teknik dan gerakan-gerakan yang yang nantinya akan diperagakan pada saat tampil dalam ajang gerak jalan indah tersebut.<br /> Suatu kebanggan tersendiri kepada Putra dan Putri bangsa ini karena terpilih mendapatkan kesempatan berperan dalam memeriahkan HUT kemerdekaan RI ke 69 tersebut, karena tidak semua siswa dan siswi di sekolah ini mendapat kesempatan yang sama untuk turut dalam kegiatan ini oleh karena jumlah peserta dibatasi untuk setiap Grup dari panitia Kabupaten.&nbsp; </p>\r\n<p>Tampak peserta gerak jalan indah dari Team Putra dan Putri yang begitu ceriah dan bersemangat menjelang di mulainya Start dari Lapangan Sepak Bola Belopa dan akan Finish di Lapangan Andi Djemma Belopa.</p>', '', '2016-04-23 12:57:40'),
(9, 'berita', 'SENAM MASSAL SMPN 2 BUA PONRANG', '<p>Olahraga merupakan suatu gerakan olah tubuh yang memberikan efek pada tubuh secara keseluruhan. Olahraga membantu merangsang otot-otot dan bagian tubuh lainnya untuk bergerak.<br /> Pentingnya olahraga bagi tubuh dapat diilustrasikan seperti mesin yang tidak pernah digunakan/digerakkan. Lambat laun, bagian-bagian dari mesin akan rusak karena tidak terlatih untuk terus bergerak/bekerja.<br /> Demikian pula tubuh, jika kurang gerak, tubuh akan menjadi bermasalah dan tidak sehat. Dengan berolahraga, tidak hanya otot-otot yang terlatih, sirkulasi darah dan oksigen dalam tubuh pun menjadi lancar sehingga metabolisme tubuh menjadi optimal. Tubuh akan terasa segar dan otak sebagai pusat saraf pun akan bekerja menjadi lebih baik. Mari kita lihat manfaat olahraga yang lainnya.<br /> <a name=\"more\"></a><br /> <br /> Berikut ini manfaat olahraga bagi tubuh perlu Anda tahu:<br /><strong>&nbsp;</strong><br /> <strong>Mengurangi r</strong><strong>i</strong><strong>siko berbagai penyakit</strong><br /> <br /> Olahraga mampu menjaga kesehatan dan mencegah berbagai macam penyakit. Berolahraga secara rutin dapat menjaga Anda dari penyakit. Jika Anda menderita penyakit tersebut, olahraga juga dapat menjaga agar penyakit tak bertambah parah, tentu dengan diawasi oleh tenaga ahli agar sesuai kemampuan.<br /> <br /> <strong>Mengurangi </strong><strong>s</strong><strong>tres</strong><br /> <strong>&nbsp;</strong><br /> Berolahraga mampu membuat bahan kimia yang ada pada otak Anda menjadi lebih rileks dan merasa bahagia. Olahraga teratur juga akan membuat Anda lebih bugar dan lebih percaya diri sehingga terhindar dari depresi.<br /> <br /> <strong>Menjaga berat badan </strong><br /> <strong>&nbsp;</strong><br /> Berat badan adalah masalah besar terutama untuk mereka yang sibuk bekerja dan malas berolahraga. Olahraga mampu membakar timbunan lemak pada tubuh. Jika Anda berolahraga secara teratur dan menjaga asupan makanan agar tak terlalu banyak lemak, maka berat badan Anda akan selalu terjaga.<br /> <br /> <strong>Meningkatkan energi </strong><br /> <strong>&nbsp;</strong><br /> Olahraga dapat memacu jantung lebih cepat memompa darah, sehingga darah yang membawa oksigen dan nutrisi dapat sampai pada organ organ tubuh. Lancarnya peredaran darah yang kaya oksigen dan nutrisi membuat anda mendapatkan energi untuk menjalani kehidupan.<br /> <br /> <strong>Membuat tidur nyenyak </strong><br /> <strong>&nbsp;</strong><br /> Olahraga selain membakar lemak anda juga membuat anda lelap tidur. Alasannya setelah kegiatan fisik, kelelahan setelah itu akan membuat Anda lebih lelap tidur. Jika Anda tidur dengan nyenyak maka konsentarsi akan terjaga dan tubuh akan menjadi bugar.<br /> <br /> <strong>Meningkatkan Vitaliats</strong><br /> <strong>&nbsp;</strong><br /> Tidak ada yang lebih merusak gairah libido selain rasa lelah karena tubuh tidak <em>fit</em>. Berolahraga dapat membantu mencegah difungsi ereksi pada pria dan meningkatkan gairah libido pada wanita.<br /> <br /> Hal-hal yang perlu diperhatikan sebelum berolahraga, yaitu, makan satu jam sebelum olahraga. Selain sebagai tambahan tenaga, makan dapat membuat Anda kuat dan tidak mudah lelah. Namun, berikan jeda waktu antara sesudah makan dengan sebelum olahraga, agar badan tidak kaget. Hindari kopi, soda, dan alkohol. Ketiga minuman tersebut tidak baik bagi tubuh, karena bahan-bahan yang di dalamnya dapat memicu sakti maag datang. Lakukan pemanasan sebelum olahraga.</p>', '', '2016-04-23 12:57:40'),
(10, 'informasi', 'dwd', '<p>wdwd</p>', '', '2016-04-23 17:58:42'),
(11, 'berita', 'Coba', '<p>bismillahx</p>', '', '2018-06-19 23:52:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dir_alumni`
--

CREATE TABLE `dir_alumni` (
  `id` int(11) NOT NULL,
  `nis` varchar(900) NOT NULL,
  `nama` varchar(900) NOT NULL,
  `jk` varchar(900) NOT NULL,
  `agama` varchar(900) NOT NULL,
  `ttl` varchar(900) NOT NULL,
  `alamat` text NOT NULL,
  `angkatan` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dir_alumni`
--

INSERT INTO `dir_alumni` (`id`, `nis`, `nama`, `jk`, `agama`, `ttl`, `alamat`, `angkatan`) VALUES
(10, '-', 'Adelia sumitra', 'wanita', 'Kristen', '-', 'Mulyorejo', '2011'),
(11, '-', 'Ari wirandana', 'pria', 'Islam', '-', 'Mulyorejo', '2012');

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
(9, '19731231 199803 2 01', 'Nelly, S.Pd', 'IV/b', 'L', 'Kristen', 'Matematika ', 'IX', 'Rawamangun', 'S1/1996'),
(10, '12345', 'Zidni', 'A', 'p', 'Islam', 'A', 'D', 'Bantul', '2018');

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `forum`
--

CREATE TABLE `forum` (
  `id` int(11) NOT NULL,
  `oleh` varchar(200) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `judul` varchar(900) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `forum`
--

INSERT INTO `forum` (`id`, `oleh`, `tanggal`, `judul`, `text`) VALUES
(1, 'Ali Akbar', '2016-04-11 08:21:28', 'Cara Daftar Online (PSBO)', 'Bagaimana cara mendaftar online melalui website?'),
(2, 'Ali Akbar', '2016-04-11 08:09:23', 'Ikut Lomba Melukis', 'Apa saja persyaratan untuk bisa ikut lonba melukis?'),
(3, 'Muchlis', '2016-04-11 09:23:27', 'Pengurusan raport untuk pindah sekolah!', 'Asskum.Wr.Wb. - Mau bernya pak, bagai mana dengan masalah pengurusan raport untuk pindah sekolah?'),
(4, 'Zidni', '2018-02-20 08:13:43', 'Bagaimana Cara Belajar Yang Baik', 'Dengan rajin dan giat belajar');

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `nama` varchar(900) NOT NULL,
  `gambar` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id`, `nama`, `gambar`) VALUES
(27, 'Gambar 1', 'IMG20160307143904.jpg'),
(28, 'Gambar 2', 'IMG20160308082319.jpg'),
(29, 'Gambar 3', 'Ruang_multimedia.jpg'),
(30, 'Gambar 4', 'IMG20160307145051.jpg'),
(31, 'Gambar 5', 'IMG20160308082230.jpg'),
(33, 'Gambar 7', 'IMG20160307152302.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `id` int(11) NOT NULL,
  `kategori` varchar(200) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gambar`
--

INSERT INTO `gambar` (`id`, `kategori`, `gambar`) VALUES
(5, 'background', 'bg-main.jpg'),
(7, 'header', 'header.jpg'),
(8, 'header2', 'header2.jpg'),
(9, 'header', 'icons8-place-marker-96.png'),
(10, 'header', 'Share Ig SIkrab.png'),
(11, 'header', 'IIF_ISNA_FIX.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` char(5) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_guru` varchar(25) NOT NULL,
  `jk` char(1) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `foto` varchar(15) NOT NULL,
  `status` enum('Aktif','Tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `isi_informasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id`, `isi_informasi`) VALUES
(1, '<p><strong>Lorem ipsum dolor sit amet</strong>, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua.'),
(3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` char(5) NOT NULL,
  `nama_kelas` char(5) NOT NULL,
  `id_guru` char(5) NOT NULL,
  `tahun_ajar` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_siswa`
--

CREATE TABLE `kelas_siswa` (
  `id` int(11) NOT NULL,
  `id_kelas` char(5) NOT NULL,
  `nis` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prestasi`
--

CREATE TABLE `prestasi` (
  `id` int(11) NOT NULL,
  `kategori` varchar(200) NOT NULL,
  `judul_prestasi` varchar(200) NOT NULL,
  `isi_prestasi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prestasi`
--

INSERT INTO `prestasi` (`id`, `kategori`, `judul_prestasi`, `isi_prestasi`, `gambar`, `tanggal`) VALUES
(2, 'siswa', 'SD Negeri Demangan Juara 1', '<p>WOW a ca</p>', '', '2018-04-13 23:33:13'),
(4, 'guru', 'Prestasi Tami', '<p>waw</p>', '', '2018-04-13 10:19:43'),
(5, 'sekolah', 'Lutvi', '<p>Wiiis</p>', '', '2018-06-19 23:53:42');

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` char(5) NOT NULL,
  `nama_siswa` varchar(25) NOT NULL,
  `jk` char(1) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `foto` varchar(15) NOT NULL,
  `status` enum('Aktif','Lulus','Keluar') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dir_alumni`
--
ALTER TABLE `dir_alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dir_guru`
--
ALTER TABLE `dir_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dir_siswa`
--
ALTER TABLE `dir_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_komen`
--
ALTER TABLE `forum_komen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `fk_guru_kelas` (`id_guru`);

--
-- Indexes for table `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kelas_siswa` (`id_kelas`),
  ADD KEY `fk_nis_siswa` (`nis`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id_sek`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `dir_alumni`
--
ALTER TABLE `dir_alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `dir_guru`
--
ALTER TABLE `dir_guru`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `dir_siswa`
--
ALTER TABLE `dir_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `forum_komen`
--
ALTER TABLE `forum_komen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id_sek` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `fk_guru_kelas` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  ADD CONSTRAINT `fk_kelas_siswa` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nis_siswa` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

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
(11, 'berita', 'Coba', '<p>bismillah</p>', '', '2018-04-14 04:23:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jan 2023 pada 11.58
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_novela`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `email`, `password`, `username`) VALUES
(1, 'ekanurfariska@gmail.com', 'fariska2', 'riska');

-- --------------------------------------------------------

--
-- Struktur dari tabel `constumer`
--

CREATE TABLE `constumer` (
  `id_constumer` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `no_telpon` int(20) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `constumer`
--

INSERT INTO `constumer` (`id_constumer`, `username`, `email`, `password`, `no_telpon`, `alamat`) VALUES
(1, 'admin', 'admin@gmail.com', '12456', 234214, 'sjekfniewulqh;ww'),
(2, 'lala', 'lala@gmail.com', '12345', 897654783, 'susilo 2 A'),
(6, 'toto', 'toto@gmail.com', 'yuhuuu', 812345678, 'lampung'),
(13, 'baba', 'baba@gmail.com', '12345', 9875432, 'jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no_pembayaran` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `jenis_pembayaran` varchar(50) NOT NULL,
  `total_harga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_constumer` int(11) NOT NULL,
  `id_pengiriman` int(11) NOT NULL,
  `jumlah_pembelian` int(50) NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_constumer`, `id_pengiriman`, `jumlah_pembelian`, `total_pembelian`, `tanggal_pembelian`) VALUES
(1, 1, 0, 2, 70000, '2021-11-18'),
(2, 2, 0, 2, 75000, '2021-11-24'),
(46, 6, 1, 2, 20000, '2021-12-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan_produk`
--

CREATE TABLE `pemesanan_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan_produk`
--

INSERT INTO `pemesanan_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`) VALUES
(2, 2, 7, '20'),
(5, 1, 5, '20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id_pengiriman` int(11) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `ongkir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengiriman`
--

INSERT INTO `pengiriman` (`id_pengiriman`, `kota`, `ongkir`) VALUES
(1, 'lampung', 15000),
(2, 'yogyakarta', 10000),
(3, 'jakarta selatan', 8000),
(4, 'kaltim', 40000),
(5, 'palangkaraya ', 30000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `produk_description` text NOT NULL,
  `produk_image` varchar(100) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `nama`, `harga`, `produk_description`, `produk_image`, `stok`) VALUES
(5, 'Garis Waktu', 85000, ' \r\n			 \r\n			 \r\nPada sebuah garis waktu yang merangkak maju, akan ada saatnya kau bertemu dengan satu orang yang mengubah hidupmu untuk selamanya.\r\nPada sebuah garis waktu yang merangkak maju, akan ada saatnya kau terluka dan kehilangan pegangan.\r\nPada sebuah garis waktu yang merangkak maju, akan ada saatnya kau ingin melompat mundur pada titik-titik kenangan tertentu.\r\nMaka, ikhlaskan saja kalau begitu.\r\nKarena sesungguhnya, yang lebih menyakitkan dari melepaskan sesuatu adalah berpegangan pada sesuatu yang menyakitimu secara perlahan.\r\n						', 'garis waktu.jpg', 500),
(6, 'alana', 65000, ' Berawal dari adegan ditolong waktu mobilnya dicegat gerombolan anak tawuran, Meisya Nata Wijaya mengalami baper berkepanjangan dengan seorang cowok. Siapa juga yang bisa tahan sama pesona Alan Aileen. Cowok idaman SMA Cakrawala yang\r\ndingin, ganteng, sekaligus wakil ketua geng DRAX. Meisya bukan gadis yang mudah menyerah. Ia terus mengejar Alan dan menyingkirkan segala rasa malunya—bahkan sampai mengumumkannya saat upacara bendera. Namun\r\nsiapa sangka, satu ucapan Alan mampu membuat Meisya menangis hari itu. “Angel... dia pacar gue.” Angel, kakak tirinya. Angel, yang pernah merebut kebahagiaannya. Angel, si “malaikat”\r\nyang mempunyai dua wajah untuk menipu dunia. Ia tidak menyangka kalau Alan juga tertipu oleh senyum mematikan gadis itu.\r\n		', 'gambar alana.jpg', 200),
(7, 'baby blue', 75000, ' Karier Kayla Natasha sebagai motivator remaja sedang menanjak. Dan, sedikiiit lagi, akan ada peluang tampil di acara talk show bergengsi bersama presenter ternama. Namun, Kayla tiba-tiba hamil. Dia sih pengin punya anak, tapi ya nggak harus sekarang juga. Waktunya nggak tepat. Kesibukannya sedang menggila. Bahkan ketika dia berusaha menampilkan citra perempuan tangguh yang tetap aktif selama kehamilan, morning sickness keparat menghajarnya sampai muntah-muntah dan ambruk di atas panggung. Segala rencana dan harapan Kayla ambyar di depan mata. Segala motivasi yang pernah dia sampaikan menguap begitu saja. Dan Kayla tidak tahu lagi, dengan cara apa dia mampu bangkit dari keterpurukan ini... \"Penggambaran fenomena motivator berlatar sarjana psikologi yang satire dan penuh humor, Oh, My Baby Blue mengajak kita menertawakan diri sendiri.\" -Dr. Setiawati Intan Savitri M.Si, Dosen & Peneliti Psikologi, Founder Narrative Writing Therapy		', 'baby blue.jpg', 200),
(8, 'The Arason', 55000, 'Dominic ‘Mike’ Risena selalu ingin membuat Kara terpesona pada keahliannya. Buku keren, musik bagus, hingga api yang ia ciptakan dari batu. Namun sekeras apa pun ia berusaha, jabatan tertingginya hanya cleaning service di sanggar teater tempat Kara menjadi bintang utamanya. ‘Kara’ Alya Estungkara, telah lama mengagumi kegeniusan Mike. Tapi dorongan adrenalin masa remaja membuatnya jatuh di pelukan aktor muda tampan lawan mainnya di sanggar teater. Mereka berbagi dunia yang sama, dunia yang penuh puisi. Ketika orang yang ia percaya justru melecehkannya, Kara terluka dan terdorong untuk menuntut balas. Dan, Mike bisa mewujudkannya. Sekarang, jika Mike dan Kara bersatu, karya apakah yang akan tercipta? Sebuah pentas drama memukau dengan puisi-puisi Kara dan iringan musik Mike atau... rencana pembakaran gedung teater yang nyaris sempurna?		', 'the arson.jpg', 200),
(9, 'Nadien & Tuan Kucing', 72000, 'Nadine tidak percaya sihir, sulap, atau apalah itu.\r\n\r\nNamun, ketika kucing yang ditemukan di teras dan diadopsinya itu berubah menjadi laki-laki tampan, Nadine kehilangan kata-kata untuk menjelaskannya. Apa yang harus dipercayai untuk dirinya, untuk kenyataan, dan untuk hatinya yang kini dipenuhi cinta.', 'nadien dan tuan kucing.jpg', 100),
(10, 'Kita Pergi Hari Ini', 70000, 'Mi dan Ma dan Mo tidak pernah melihat kucing seperti Nona Gigi. Tentu saja, mereka sudah pernah melihat kucing biasa. Tapi Nona Gigi adalah Kucing Luar Biasa. Kucing Luar Biasa berarti kucing yang di luar kebiasaan. Nona Gigi adalah Cara Lain yang dinantikan oleh Bapak dan Ibu Mo untuk menjaga Mi, Ma, dan Mo ketika keduanya keluar rumah mencari uang. Sebab di Kota Suara, semua uang yang tersedia di dasar laut sudah diambil oleh para perompak, uang di bawah tanah diambil oleh para perampok, dan uang di ranting pohon diambil oleh pengusaha kayu yang jahat.\r\n\r\nNona Gigi mengajak Mi dan Ma dan Mo dan Fifi dan Fufu—anak kembar Tetangga Baru bertualang mengunjungi tempat-tempat indah. Mereka naik Kereta Air, bertemu Kolonel Jagung, bermain di Sirkus Sendu, dan menyaksikan kemegahan Kota Terapung Kucing Luar Biasa.', 'kita pergi hari ini.jpg', 100),
(11, 'Aku Ingin Pulang ', 90000, '“Saat seseorang merasa dirinya berbeda, bingung, dan ketakutan ketika dihadapkan pada\r\nsituasi yang tidak biasa di lingkungan baru, secara naluriah ia akan mencari rumah yang\r\npaling nyaman dan cocok baginya. Ia seperti siput yang hidup dengan rumah di\r\npunggungnya untuk mempertahankan diri.”\r\nAku Ingin Pulang meski Sudah di Rumah merupakan sebuah esai pengembangan diri\r\nyang ditulis berdasarkan pengalaman pribadi Kwon Rabin. Dalam buku ini, Kwon Rabin\r\nmenyediakan rumah nyaman bagi pembaca untuk saling berbagi kesulitan yang dialami\r\nketika beranjak dewasa.', 'aku ingin pulang.jpg', 100),
(12, 'Sesuap Rasa', 56000, '“Mungkin kamu takut untuk makan, tapi makanan dan teman makan yang baik dapat menghangatkan jiwamu.” Ketiga bersaudara Wuddan seakan kehilangan ikatan setelah mama mereka meninggal. Ketiganya tenggelam dalam pelarian akan penyesalan. Hingga saat Nessa, saudari mereka, jatuh sakit, Wendy dan Hansen dihadapkan pada dilema. Haruskah kembali ke kampung halaman dan menghadapi penyesalan mereka? Ada luka di hati mereka yang harus segera disembuhkan. Ada ikatan persaudaraan yang harus mereka selamatkan. Dapatkan kenangan makanan yang pernah menghangatkan jiwa membawa kembali ikatan yang telah merenggang? “Makanlah denganku hari ini....”\r\n', 'sesuap rasa.jpg', 145);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `constumer`
--
ALTER TABLE `constumer`
  ADD PRIMARY KEY (`id_constumer`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`no_pembayaran`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indeks untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`);

--
-- Indeks untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `constumer`
--
ALTER TABLE `constumer`
  MODIFY `id_constumer` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `no_pembayaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id_pengiriman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

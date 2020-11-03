-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Nov 2020 pada 05.16
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'adrianhartanto@gmail.com', 1, '2020-11-02 21:54:58', 1),
(2, '::1', 'adrianhartanto@gmail.com', 1, '2020-11-02 22:11:18', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Narutoddd', 'narutoddd', 'masashi kishimoto', 'shonen jump', 'naruto.jpg', NULL, '2020-10-18 19:19:30'),
(2, 'Shika', 'shika', 'konie', 'lanndo', 'shikamaru.jpg', NULL, NULL),
(4, 'One Piecewd', 'one-piecewd', 'adrian h', 'weer', 'wee', '2020-10-17 23:56:00', '2020-10-18 07:19:38'),
(5, 'ubah judul', 'ubah-judul', 'qwqw', 'wee', '1603090490_8644eef1f35b8edaa06f.jpg', '2020-10-18 19:48:59', '2020-10-19 01:54:50'),
(6, 'dsdf', 'dsdf', 'sdg', 'gss', 'default.jpg', '2020-10-19 00:38:50', '2020-10-19 00:38:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-10-19-070542', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1603091760, 1),
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1604373783, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Syahrini Nuraini S.E.I', 'Jln. Flora No. 261, Pangkal Pinang 14287, SulTra', '1981-06-29 20:27:24', '2020-10-19 03:51:25'),
(2, 'Yessi Wijayanti S.E.I', 'Kpg. Basmol Raya No. 120, Padang 62465, SulTeng', '1989-07-03 03:53:21', '2020-10-19 03:51:25'),
(3, 'Zizi Laksita', 'Kpg. Bambu No. 179, Banjarbaru 51270, Papua', '1979-01-11 20:37:30', '2020-10-19 03:51:25'),
(4, 'Kusuma Saka Manullang M.M.', 'Ki. Yoga No. 362, Tual 51567, JaTim', '1979-06-02 15:50:02', '2020-10-19 03:51:25'),
(5, 'Baktianto Wijaya', 'Jr. Setia Budi No. 441, Palu 52890, Riau', '1985-01-21 09:12:31', '2020-10-19 03:51:25'),
(6, 'Maida Aurora Purwanti', 'Psr. Pasteur No. 278, Bandar Lampung 99220, JaTim', '1976-10-18 05:58:45', '2020-10-19 03:51:25'),
(7, 'Hasta Gunawan', 'Dk. Ekonomi No. 257, Cilegon 38901, SumBar', '1977-03-13 11:49:36', '2020-10-19 03:51:25'),
(8, 'Umar Hartaka Uwais S.E.I', 'Ki. Cikutra Timur No. 548, Tidore Kepulauan 88879, KalUt', '2016-04-02 19:48:19', '2020-10-19 03:51:25'),
(9, 'Ana Tina Mardhiyah', 'Jr. Agus Salim No. 293, Makassar 53594, NTB', '1976-12-19 10:17:52', '2020-10-19 03:51:25'),
(10, 'Cager Permadi', 'Jr. Yosodipuro No. 887, Singkawang 31199, SulUt', '2019-04-20 14:55:27', '2020-10-19 03:51:25'),
(11, 'Martana Dabukke', 'Ki. Kusmanto No. 188, Bukittinggi 40738, Aceh', '1974-01-10 18:48:37', '2020-10-19 03:51:25'),
(12, 'Dagel Among Hardiansyah M.Farm', 'Psr. W.R. Supratman No. 958, Yogyakarta 40456, Bali', '1987-06-25 23:43:37', '2020-10-19 03:51:26'),
(13, 'Yani Puspita', 'Psr. Baing No. 593, Padangpanjang 24998, SumBar', '2009-04-21 11:38:31', '2020-10-19 03:51:26'),
(14, 'Ella Prastuti', 'Kpg. Gotong Royong No. 80, Mojokerto 61523, JaTeng', '2007-08-24 04:18:22', '2020-10-19 03:51:26'),
(15, 'Safina Wijayanti S.Psi', 'Gg. Bambu No. 660, Bitung 87159, Aceh', '1975-07-24 17:45:18', '2020-10-19 03:51:26'),
(16, 'Hafshah Pia Usamah', 'Dk. Baja Raya No. 959, Samarinda 98411, KepR', '1975-09-07 19:46:39', '2020-10-19 03:51:26'),
(17, 'Hendri Leo Mahendra', 'Kpg. Kyai Gede No. 520, Bogor 56346, NTT', '1978-03-17 09:44:27', '2020-10-19 03:51:26'),
(18, 'Pardi Salahudin', 'Ds. Supomo No. 868, Sungai Penuh 80726, Aceh', '1972-10-14 22:06:37', '2020-10-19 03:51:26'),
(19, 'Nasab Siregar', 'Kpg. Bakti No. 690, Mojokerto 33177, SumUt', '1972-09-27 14:18:02', '2020-10-19 03:51:26'),
(20, 'Silvia Pertiwi', 'Gg. PHH. Mustofa No. 169, Cimahi 36742, Banten', '1999-10-01 15:12:28', '2020-10-19 03:51:26'),
(21, 'Cahyono Ramadan', 'Ki. Wahid Hasyim No. 92, Palembang 40417, SulUt', '1981-01-28 23:59:00', '2020-10-19 03:51:26'),
(22, 'Aisyah Hilda Mayasari', 'Psr. Pasirkoja No. 629, Banjarbaru 54356, Bengkulu', '1981-06-22 07:04:22', '2020-10-19 03:51:26'),
(23, 'Adikara Lega Sitompul M.M.', 'Dk. Perintis Kemerdekaan No. 412, Bandar Lampung 65981, SumSel', '1990-09-17 22:00:31', '2020-10-19 03:51:26'),
(24, 'Gamanto Hartana Gunawan', 'Ds. Kali No. 218, Tanjung Pinang 82863, DIY', '2016-04-01 05:16:43', '2020-10-19 03:51:26'),
(25, 'Julia Wulandari', 'Jr. Yos Sudarso No. 76, Sungai Penuh 36377, Riau', '1982-12-28 22:49:48', '2020-10-19 03:51:26'),
(26, 'Tania Tari Riyanti M.Farm', 'Kpg. Villa No. 784, Prabumulih 23317, KalBar', '2014-10-11 22:53:55', '2020-10-19 03:51:26'),
(27, 'Gandewa Waluyo', 'Gg. Reksoninten No. 34, Langsa 11852, DKI', '1987-02-21 22:37:07', '2020-10-19 03:51:26'),
(28, 'Saka Uwais', 'Jln. Gremet No. 148, Pagar Alam 32992, KalUt', '2010-11-26 23:36:17', '2020-10-19 03:51:26'),
(29, 'Teguh Maheswara', 'Kpg. Surapati No. 123, Administrasi Jakarta Selatan 25870, KalUt', '2008-07-24 06:35:31', '2020-10-19 03:51:26'),
(30, 'Intan Clara Winarsih', 'Ki. Wahidin No. 555, Sukabumi 24025, SumBar', '1985-08-20 10:37:41', '2020-10-19 03:51:26'),
(31, 'Hana Puput Nasyidah S.IP', 'Ki. Bagis Utama No. 958, Bontang 54663, BaBel', '1985-07-01 16:04:48', '2020-10-19 03:51:26'),
(32, 'Kajen Jasmani Pradana S.E.', 'Ds. Rajiman No. 665, Pekanbaru 13681, KalTim', '1970-05-07 10:00:00', '2020-10-19 03:51:26'),
(33, 'Talia Novitasari', 'Ds. Pahlawan No. 120, Cirebon 43709, KalBar', '1977-01-01 12:31:55', '2020-10-19 03:51:26'),
(34, 'Aurora Restu Melani', 'Gg. Baranang Siang Indah No. 827, Pagar Alam 96202, JaTeng', '1981-10-17 20:58:38', '2020-10-19 03:51:26'),
(35, 'Kayla Hassanah', 'Jln. Gambang No. 733, Tomohon 78616, KepR', '1978-12-13 07:46:20', '2020-10-19 03:51:26'),
(36, 'Eko Kuswoyo', 'Ki. Katamso No. 836, Banjarbaru 23096, Aceh', '2013-09-10 14:34:38', '2020-10-19 03:51:26'),
(37, 'Catur Anggriawan', 'Gg. Basoka Raya No. 70, Administrasi Jakarta Utara 49323, Gorontalo', '2018-09-07 02:02:45', '2020-10-19 03:51:26'),
(38, 'Jono Hutasoit', 'Jln. Bawal No. 777, Samarinda 71823, BaBel', '2003-09-26 18:16:34', '2020-10-19 03:51:26'),
(39, 'Bakiono Jarwadi Pranowo S.I.Kom', 'Ds. Peta No. 189, Mojokerto 60400, KalBar', '2015-04-25 03:23:12', '2020-10-19 03:51:26'),
(40, 'Salimah Olivia Namaga', 'Kpg. Moch. Ramdan No. 949, Bengkulu 27045, Riau', '2017-08-29 20:09:32', '2020-10-19 03:51:26'),
(41, 'Umay Maheswara', 'Ds. Sudiarto No. 455, Bogor 21138, Bengkulu', '1994-06-05 12:37:52', '2020-10-19 03:51:26'),
(42, 'Kani Irma Halimah M.M.', 'Ki. Tambun No. 31, Payakumbuh 72955, NTB', '1994-07-30 08:56:10', '2020-10-19 03:51:26'),
(43, 'Melinda Gina Aryani S.Kom', 'Ki. Basoka No. 778, Pematangsiantar 91488, BaBel', '2006-09-29 13:41:18', '2020-10-19 03:51:26'),
(44, 'Candrakanta Galak Sihombing', 'Kpg. Sudiarto No. 922, Sawahlunto 90929, KalTeng', '1989-12-25 16:56:44', '2020-10-19 03:51:26'),
(45, 'Marwata Wasita', 'Jln. Raden No. 649, Palangka Raya 39343, PapBar', '1979-09-28 05:39:17', '2020-10-19 03:51:26'),
(46, 'Laksana Putra M.TI.', 'Ds. Sunaryo No. 393, Palembang 23248, KalSel', '2002-01-24 15:41:31', '2020-10-19 03:51:26'),
(47, 'Dartono Asmianto Kurniawan S.Sos', 'Psr. PHH. Mustofa No. 24, Sungai Penuh 44288, NTT', '2009-05-05 09:09:41', '2020-10-19 03:51:26'),
(48, 'Zelaya Safitri', 'Ds. Jend. Sudirman No. 434, Payakumbuh 20741, Lampung', '1988-08-15 03:22:38', '2020-10-19 03:51:26'),
(49, 'Unggul Pangeran Rajasa', 'Psr. Daan No. 765, Tidore Kepulauan 84362, Jambi', '1980-02-22 06:12:25', '2020-10-19 03:51:26'),
(50, 'Syahrini Zulaika', 'Dk. Merdeka No. 996, Manado 64940, DKI', '1983-02-28 01:13:09', '2020-10-19 03:51:26'),
(51, 'Emong Kurnia Saefullah M.M.', 'Dk. Jend. A. Yani No. 577, Bau-Bau 91692, SumBar', '2020-09-24 05:56:32', '2020-10-19 03:51:26'),
(52, 'Elma Nilam Prastuti S.Kom', 'Kpg. Sugiyopranoto No. 247, Pontianak 36661, Jambi', '2003-10-27 19:47:11', '2020-10-19 03:51:26'),
(53, 'Yani Handayani S.E.I', 'Jr. Merdeka No. 567, Bukittinggi 46031, KepR', '2004-01-14 10:56:12', '2020-10-19 03:51:26'),
(54, 'Ika Handayani', 'Gg. Yosodipuro No. 666, Depok 32600, KalBar', '2013-02-25 20:10:52', '2020-10-19 03:51:26'),
(55, 'Ilyas Kurniawan', 'Dk. Samanhudi No. 268, Serang 90148, KalBar', '1975-06-03 03:07:19', '2020-10-19 03:51:26'),
(56, 'Cinta Maryati M.Kom.', 'Dk. Sadang Serang No. 953, Madiun 63457, Maluku', '2017-11-05 17:51:06', '2020-10-19 03:51:26'),
(57, 'Silvia Pertiwi', 'Ds. Bakhita No. 391, Probolinggo 97358, Maluku', '1993-01-13 12:04:27', '2020-10-19 03:51:26'),
(58, 'Bakijan Hutapea', 'Gg. Sam Ratulangi No. 619, Malang 28696, Jambi', '2003-12-17 21:33:52', '2020-10-19 03:51:26'),
(59, 'Kasusra Harja Winarno', 'Gg. Ir. H. Juanda No. 966, Magelang 45124, BaBel', '1982-02-19 18:44:12', '2020-10-19 03:51:26'),
(60, 'Shania Najwa Farida S.E.', 'Dk. Padma No. 61, Gorontalo 27574, MalUt', '2017-10-09 15:33:17', '2020-10-19 03:51:26'),
(61, 'Caturangga Nainggolan', 'Ki. Ahmad Dahlan No. 183, Bandar Lampung 77834, SulSel', '2019-02-06 12:02:44', '2020-10-19 03:51:26'),
(62, 'Ibun Saefullah', 'Ki. Yogyakarta No. 310, Administrasi Jakarta Barat 32982, SulSel', '1974-12-30 17:45:12', '2020-10-19 03:51:26'),
(63, 'Chelsea Karen Susanti S.Sos', 'Gg. Kali No. 235, Jayapura 16879, KepR', '2012-12-04 00:17:56', '2020-10-19 03:51:26'),
(64, 'Ihsan Nugroho', 'Jr. K.H. Wahid Hasyim (Kopo) No. 770, Denpasar 32679, Lampung', '1985-03-09 18:58:09', '2020-10-19 03:51:26'),
(65, 'Saadat Tasnim Widodo', 'Dk. Dr. Junjunan No. 594, Manado 53659, SulTeng', '1989-04-26 02:33:05', '2020-10-19 03:51:26'),
(66, 'Halim Perkasa Maheswara S.Ked', 'Gg. Asia Afrika No. 203, Pagar Alam 51590, JaBar', '2013-03-07 12:57:26', '2020-10-19 03:51:26'),
(67, 'Hana Nasyidah S.Psi', 'Gg. Pattimura No. 965, Kendari 18015, Riau', '1972-03-23 19:15:35', '2020-10-19 03:51:26'),
(68, 'Suci Suryatmi', 'Kpg. Sumpah Pemuda No. 218, Yogyakarta 44246, DIY', '1994-08-08 22:35:06', '2020-10-19 03:51:26'),
(69, 'Wasis Ikin Hardiansyah M.Ak', 'Ki. Elang No. 669, Bukittinggi 83787, MalUt', '2011-01-11 04:19:44', '2020-10-19 03:51:26'),
(70, 'Cindy Cindy Yuliarti', 'Kpg. Cikapayang No. 264, Bukittinggi 96965, SulSel', '1975-02-10 08:28:50', '2020-10-19 03:51:26'),
(71, 'Lasmono Mansur', 'Ki. Baladewa No. 65, Subulussalam 94480, BaBel', '1995-03-16 21:18:28', '2020-10-19 03:51:26'),
(72, 'Yahya Pratama', 'Ds. Wahidin No. 573, Kupang 43091, SumUt', '1986-04-22 04:34:40', '2020-10-19 03:51:26'),
(73, 'Septi Wastuti', 'Kpg. Ujung No. 570, Lhokseumawe 51357, SumSel', '1971-09-28 16:47:08', '2020-10-19 03:51:26'),
(74, 'Hardana Nugroho', 'Kpg. Baing No. 759, Tanjung Pinang 90226, SumBar', '2006-10-31 06:06:51', '2020-10-19 03:51:26'),
(75, 'Kariman Wibowo M.Pd', 'Ki. Wahid No. 82, Bontang 73780, SulTeng', '1994-01-11 16:09:39', '2020-10-19 03:51:26'),
(76, 'Ratih Kusmawati', 'Dk. Diponegoro No. 694, Pematangsiantar 30261, SulTra', '2006-05-20 10:01:06', '2020-10-19 03:51:26'),
(77, 'Nabila Hesti Kuswandari', 'Gg. Jamika No. 499, Ternate 27212, SulBar', '1999-11-18 23:26:33', '2020-10-19 03:51:26'),
(78, 'Jais Cahyo Halim', 'Jln. Yohanes No. 597, Metro 27315, PapBar', '2015-12-05 10:34:57', '2020-10-19 03:51:26'),
(79, 'Gabriella Nurdiyanti M.Farm', 'Ki. Abang No. 878, Tidore Kepulauan 29563, SulBar', '2018-04-06 17:56:01', '2020-10-19 03:51:27'),
(80, 'Tasdik Lazuardi', 'Ds. Orang No. 321, Prabumulih 85740, Banten', '2001-12-22 13:23:14', '2020-10-19 03:51:27'),
(81, 'Ciaobella Lala Nuraini S.E.', 'Jr. Raya Setiabudhi No. 760, Surakarta 59540, NTB', '1989-03-06 02:59:31', '2020-10-19 03:51:27'),
(82, 'Salman Gamblang Sihombing S.H.', 'Ki. Achmad No. 191, Administrasi Jakarta Barat 55326, SulTra', '1974-09-16 21:30:02', '2020-10-19 03:51:27'),
(83, 'Nrima Rajata', 'Jln. R.E. Martadinata No. 793, Palu 89961, Bali', '1971-11-21 04:44:51', '2020-10-19 03:51:27'),
(84, 'Wahyu Marsudi Waluyo M.Ak', 'Gg. Gedebage Selatan No. 26, Denpasar 18366, NTB', '2013-03-17 08:52:27', '2020-10-19 03:51:27'),
(85, 'Daryani Prima Firmansyah S.T.', 'Dk. Bambon No. 120, Tangerang 32405, Riau', '2002-10-18 10:58:12', '2020-10-19 03:51:27'),
(86, 'Oliva Kusmawati S.Kom', 'Ki. Ki Hajar Dewantara No. 704, Metro 18686, SulBar', '2008-11-20 03:55:45', '2020-10-19 03:51:27'),
(87, 'Restu Suryatmi', 'Jr. Urip Sumoharjo No. 615, Probolinggo 59530, KalUt', '2008-08-22 18:04:56', '2020-10-19 03:51:27'),
(88, 'Kayla Hartati', 'Ki. Cikutra Barat No. 655, Balikpapan 26386, PapBar', '2004-01-14 07:04:51', '2020-10-19 03:51:27'),
(89, 'Lili Andriani', 'Dk. Jaksa No. 8, Probolinggo 10656, Lampung', '2003-09-11 23:12:55', '2020-10-19 03:51:27'),
(90, 'Arsipatra Kurniawan', 'Jln. Ters. Pasir Koja No. 664, Padang 65843, Lampung', '1970-03-02 02:30:36', '2020-10-19 03:51:27'),
(91, 'Ismail Sihombing', 'Psr. Bambu No. 81, Payakumbuh 92552, Papua', '1977-04-27 01:59:37', '2020-10-19 03:51:27'),
(92, 'Putri Pudjiastuti', 'Jln. Gatot Subroto No. 232, Palu 12297, KepR', '2000-03-29 08:03:24', '2020-10-19 03:51:27'),
(93, 'Zulfa Agustina', 'Ki. Yosodipuro No. 333, Pangkal Pinang 57936, SulUt', '2005-08-17 15:04:12', '2020-10-19 03:51:27'),
(94, 'Lasmanto Nyoman Napitupulu', 'Ki. Bara Tambar No. 819, Manado 18161, KepR', '1998-10-10 23:23:47', '2020-10-19 03:51:27'),
(95, 'Kunthara Setiawan', 'Ki. Suryo Pranoto No. 358, Pariaman 18209, BaBel', '2016-09-01 15:49:55', '2020-10-19 03:51:27'),
(96, 'Langgeng Tarihoran', 'Kpg. Acordion No. 284, Tarakan 41382, KalUt', '1984-08-28 02:38:30', '2020-10-19 03:51:27'),
(97, 'Mila Queen Halimah M.M.', 'Ds. Abdul No. 824, Cirebon 93682, KepR', '1986-12-07 17:07:39', '2020-10-19 03:51:27'),
(98, 'Purwa Suryono', 'Ds. Sam Ratulangi No. 104, Binjai 53484, Banten', '2012-06-08 13:54:22', '2020-10-19 03:51:27'),
(99, 'Kuncara Lazuardi', 'Dk. Wahidin Sudirohusodo No. 565, Depok 49843, KalTeng', '2014-05-13 01:21:18', '2020-10-19 03:51:27'),
(100, 'Cecep Tarihoran', 'Dk. Baing No. 743, Tanjungbalai 90232, Lampung', '2012-10-30 02:14:44', '2020-10-19 03:51:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'adrianhartanto@gmail.com', 'adrianhh', '$2y$10$F8WD/ZRJpPdYuOiKgQThL.VmibGtfTunYkhCNyLkpMPocHpJVJU4e', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-11-02 21:54:31', '2020-11-02 21:54:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

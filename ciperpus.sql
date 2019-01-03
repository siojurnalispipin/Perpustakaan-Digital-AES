-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 28, 2018 at 03:16 AM
-- Server version: 5.7.23
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciperpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

DROP TABLE IF EXISTS `anggota`;
CREATE TABLE IF NOT EXISTS `anggota` (
  `nis` varchar(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jk` varchar(2) DEFAULT NULL,
  `ttl` date DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`nis`, `nama`, `jk`, `ttl`, `kelas`, `image`) VALUES
('121209', 'Fahira', 'P', '2018-01-02', 'VII', ''),
('121210', 'Panji Asmoro', 'L', '2017-09-18', '07', ''),
('121211', 'Bayu Agung ', 'L', '2017-09-18', '07', ''),
('121212', 'Aji', 'L', '2018-01-03', 'VII', ''),
('121213', 'Hana', 'L', '2018-01-19', 'VII', ''),
('121214', 'Samudera', 'L', '2018-01-26', 'VII', ''),
('121215', 'Fathan', 'L', '2018-01-26', 'VII', ''),
('121216', 'Baim', 'L', '2018-01-26', 'VII', 'user1.jpg'),
('121217', 'Cahyo', 'L', '2018-01-26', 'VII', 'user2.jpg'),
('121218', 'Rian', 'L', '2018-01-26', 'VII', 'user3.jpg'),
('121219', 'Naus', 'L', '2018-01-26', 'VII', 'user4.jpg'),
('121220', 'Tole', 'L', '2018-01-26', 'VII', 'user5.jpg'),
('121221', 'Fadil', 'L', '2018-01-25', 'VII', 'fadil.jpg'),
('121223', 'Sela', 'P', '2018-01-26', 'VII', 'sela.jpg'),
('121224', 'Nova', 'P', '2018-01-26', 'VII', 'nova.jpg'),
('121225', 'Niken', 'P', '2018-01-26', 'VII', ''),
('121226', 'Fatih', 'L', '2018-01-26', 'VII', 'fatih.png'),
('121227', 'Yoga', 'L', '2018-01-26', 'VII', 'yoga.jpg'),
('121228', 'Apri', 'L', '2018-01-26', 'VII', 'apri.jpg'),
('121229', 'Akila', 'L', '2018-01-26', 'VII', 'akila.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

DROP TABLE IF EXISTS `buku`;
CREATE TABLE IF NOT EXISTS `buku` (
  `kode_buku` varchar(5) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `pengarang` varchar(50) DEFAULT NULL,
  `klasifikasi` varchar(100) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`kode_buku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul`, `pengarang`, `klasifikasi`, `image`) VALUES
('7611', 'Dseain Kreatif Dengan Adobe Potoshop', 'Muhammad Godc', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has</p>', 'dseain-kreatif-dengan-adobe-potoshop.jpg'),
('7699', 'Petualangan Si SIO', 'Sio', '<p>Ini adalah klasifikasi</p>', 'petualangan-.jpg'),
('7706', 'Membuat Website Portal Berita Dengan Laravel', 'Agusasaputra', '<p>dfsdf</p>', 'membuat-website-portal-berita-dengan-laravel.jpg'),
('7707', 'Trik seo & Security CodeIgniter', 'Anhar', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has</p>', 'trik-seo--security-codeigniter1.jpg'),
('7711', 'CSS & HTML Web Design', 'Panji Asmoro', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been t', 'css--html-web-design.jpg'),
('7712', 'HTML, CSS & JavaScript', 'Lukmanul Hakim', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been t', 'html-css--javascript.jpg'),
('7714', 'Seminggu Belajar Laravel', 'Rahmat Awaludin', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been t', 'seminggu-belajar-laravel.JPG'),
('7715', 'Menyelami Framework Laravel', 'Rahmat Awaludin', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been&n', 'menyelami-framework-laravel.JPG'),
('7723', 'Computer Graphic Design', 'Hendi Hendratman', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has</p>', 'computer-graphic-design1.jpg'),
('7726', 'Responsive Web Design With Bootstrap', 'Panji Asmoro', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has</p>', 'responsive-web-design-with-bootstrap.jpg'),
('7745', 'PHP Advanced', 'Agussalim', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has</p>', 'php-advanced1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

DROP TABLE IF EXISTS `dokumen`;
CREATE TABLE IF NOT EXISTS `dokumen` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `id_user` int(5) DEFAULT NULL,
  `nama_dokumen` varchar(80) DEFAULT NULL,
  `dokumen_id` varchar(80) DEFAULT NULL,
  `nama_enkrip` varchar(255) DEFAULT NULL,
  `tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id`, `id_user`, `nama_dokumen`, `dokumen_id`, `nama_enkrip`, `tanggal`) VALUES
(2, 8, 'Promosi.txt', '86190', '86190_Promosi.txt.encrypted', '2018-11-25 15:01:17'),
(3, 8, 'Script acara seminar dilo.txt', '65814', '65814_Script acara seminar dilo.txt.encrypted', '2018-11-25 15:04:15'),
(4, 8, 'BAB I Revisi 21 November 2018 Bab I dan Bab II _ Sio Jurnalis Pipin _ 151111241.', '16727', '16727_BAB I Revisi 21 November 2018 Bab I dan Bab II _ Sio Jurnalis Pipin _ 151111241.docx.encrypted', '2018-11-25 16:10:57'),
(5, 8, 'daftar-workshop-embarcadero-bookings-export (2).csv', '57118', '57118_daftar-workshop-embarcadero-bookings-export (2).csv.encrypted', '2018-12-03 04:33:07'),
(6, 8, '197-663-1-PB.pdf', '50374', '50374_197-663-1-PB.pdf.encrypted', '2018-12-03 04:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

DROP TABLE IF EXISTS `pengembalian`;
CREATE TABLE IF NOT EXISTS `pengembalian` (
  `id_transaksi` varchar(12) DEFAULT NULL,
  `tgl_pengembalian` date DEFAULT NULL,
  `denda` varchar(2) DEFAULT NULL,
  `nominal` double DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id_transaksi`, `tgl_pengembalian`, `denda`, `nominal`, `id_petugas`) VALUES
('20180411001', '2018-04-19', 'Y', 10000, 7),
('20180417004', '2018-04-19', 'N', 0, 7),
('20180411002', '2018-04-21', 'Y', 10000, 7),
('20181125005', '2018-11-25', 'Y', 33434, 8);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

DROP TABLE IF EXISTS `petugas`;
CREATE TABLE IF NOT EXISTS `petugas` (
  `id_petugas` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_petugas`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `full_name`, `password`) VALUES
(7, 'panjiasmoro', 'Panji Asmoro', '$2y$05$siU0H0bk1eBtkF8zOOxN5uA6muuP0ONCbeyekCAVBEwE0HMbwkCr.'),
(8, 'admin', 'Admin Perpus', '$2y$05$0RfFGKdD.I9/9SRZd9../.kIQg7pwgDxhICT0t1aPZh29Ia2oRA3u'),
(9, 'sio', 'Sio Jurnalis Pipin', '$2y$05$jpJqfIvzGqeuvGfuBcXgD.stNPcsKBCTruZq/FykQWlqL6jCtyLt.');

-- --------------------------------------------------------

--
-- Table structure for table `tmp`
--

DROP TABLE IF EXISTS `tmp`;
CREATE TABLE IF NOT EXISTS `tmp` (
  `kode_buku` varchar(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` varchar(12) DEFAULT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `kode_buku` varchar(5) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `nis`, `kode_buku`, `tanggal_pinjam`, `tanggal_kembali`, `status`, `id_petugas`) VALUES
('20180411001', '121221', '7706', '2018-04-11', '2018-04-18', 'Y', 7),
('20180411001', '121221', '7723', '2018-04-11', '2018-04-18', 'Y', 7),
('20180411002', '121210', '7726', '2018-04-11', '2018-04-18', 'Y', 7),
('20180411003', '121217', '7706', '2018-04-11', '2018-04-18', 'N', 7),
('20180411003', '121217', '7711', '2018-04-11', '2018-04-18', 'N', 7),
('20180411003', '121217', '7715', '2018-04-11', '2018-04-18', 'N', 7),
('20180417004', '121209', '7611', '2018-04-17', '2018-04-24', 'Y', 7),
('20181125005', '121209', '7611', '2018-11-25', '2018-12-02', 'Y', 8),
('20181125005', '121209', '7699', '2018-11-25', '2018-12-02', 'Y', 8);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@admin.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

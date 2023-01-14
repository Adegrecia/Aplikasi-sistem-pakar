-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2023 at 05:12 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kerusakan_hp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator'),
('adegrecia', '827ccb0eea8a706c4c34a16891f84e7b', 'ade grecia'),
('alvin', '9573534ee6a886f4831ac5bcdfe85565', 'Alvin Alfharisi'),
('salsa', '0143c1e8e97da861c623ff508a441c54', 'andi salsa');

-- --------------------------------------------------------

--
-- Table structure for table `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `kode_pengetahuan` int(11) NOT NULL,
  `kode_penyakit` int(11) NOT NULL,
  `kode_gejala` int(11) NOT NULL,
  `mb` double(11,1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`kode_pengetahuan`, `kode_penyakit`, `kode_gejala`, `mb`) VALUES
(146, 51, 14, 0.4),
(145, 51, 13, 0.4),
(144, 50, 12, 0.2),
(143, 50, 11, 0.2),
(142, 50, 10, 0.2),
(141, 49, 16, 0.2),
(140, 49, 9, 0.2),
(139, 49, 4, 0.2),
(138, 49, 3, 0.2),
(137, 48, 8, 0.2),
(136, 48, 7, 0.2),
(135, 47, 6, 0.4),
(134, 47, 5, 0.2),
(133, 46, 3, 0.2),
(132, 43, 4, 0.2),
(131, 43, 3, 0.2),
(130, 45, 4, 0.2),
(129, 44, 15, 0.2),
(128, 1, 3, 0.2),
(127, 1, 2, 0.2),
(126, 1, 1, 0.4);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` int(11) NOT NULL,
  `nama_gejala` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`) VALUES
(10, 'Terjadi Arus Pendek'),
(16, 'Kartu SIM Tidak Terbaca'),
(15, 'Gambar Pecah/ Tidak Terang'),
(14, 'Keypad Terkena Debu'),
(13, 'Keypad Terkena Air'),
(12, 'Suara Speaker Tidak Berbunyi'),
(11, 'Suara Telepon Tidak Berbunyi'),
(9, 'Sinyal Tidak Stabil'),
(8, 'Kapasitas Tidak Seimbang'),
(7, 'Memory RAM Tidak Terbaca'),
(6, 'Aplikasi Sering Force Close'),
(5, 'Aplikasi Tidak Sengaja Terhapus'),
(4, 'Pernah Terjatuh'),
(3, 'Terkena Air'),
(2, 'LCD Blank/Mati'),
(1, 'Hp mati');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL DEFAULT '0',
  `penyakit` text NOT NULL,
  `gejala` text NOT NULL,
  `hasil_id` int(11) NOT NULL,
  `hasil_nilai` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `tanggal`, `penyakit`, `gejala`, `hasil_id`, `hasil_nilai`) VALUES
(391, '2023-01-10 01:25:26', 'a:9:{i:50;s:5:\"32.80\";i:49;s:5:\"23.20\";i:1;s:5:\"23.20\";i:48;s:5:\"22.72\";i:47;s:5:\"16.00\";i:51;s:5:\"16.00\";i:44;s:4:\"8.00\";i:43;s:4:\"4.00\";i:46;s:4:\"4.00\";}', 'a:10:{i:2;s:1:\"1\";i:3;s:1:\"5\";i:6;s:1:\"4\";i:7;s:1:\"2\";i:8;s:1:\"4\";i:10;s:1:\"2\";i:12;s:1:\"1\";i:13;s:1:\"4\";i:15;s:1:\"5\";i:16;s:1:\"1\";}', 50, '32.80'),
(394, '2023-01-10 09:38:58', 'a:9:{i:50;s:5:\"32.80\";i:49;s:5:\"23.20\";i:1;s:5:\"23.20\";i:48;s:5:\"22.72\";i:47;s:5:\"16.00\";i:51;s:5:\"16.00\";i:43;s:4:\"4.00\";i:44;s:4:\"4.00\";i:46;s:4:\"4.00\";}', 'a:10:{i:2;s:1:\"1\";i:3;s:1:\"5\";i:6;s:1:\"4\";i:7;s:1:\"2\";i:8;s:1:\"4\";i:10;s:1:\"2\";i:12;s:1:\"1\";i:13;s:1:\"4\";i:15;s:1:\"5\";i:16;s:1:\"1\";}', 50, '32.80'),
(392, '2023-01-10 01:31:05', 'a:9:{i:50;s:5:\"32.80\";i:49;s:5:\"23.20\";i:1;s:5:\"23.20\";i:48;s:5:\"22.72\";i:47;s:5:\"16.00\";i:51;s:5:\"16.00\";i:43;s:4:\"4.00\";i:44;s:4:\"4.00\";i:46;s:4:\"4.00\";}', 'a:10:{i:2;s:1:\"1\";i:3;s:1:\"5\";i:6;s:1:\"4\";i:7;s:1:\"2\";i:8;s:1:\"4\";i:10;s:1:\"2\";i:12;s:1:\"1\";i:13;s:1:\"4\";i:15;s:1:\"5\";i:16;s:1:\"1\";}', 50, '32.80'),
(395, '2023-01-10 11:07:48', 'a:4:{i:1;s:5:\"47.20\";i:43;s:5:\"12.00\";i:46;s:5:\"12.00\";i:49;s:5:\"12.00\";}', 'a:2:{i:1;s:1:\"1\";i:3;s:1:\"3\";}', 1, '47.20'),
(393, '2023-01-10 09:37:36', 'a:4:{i:1;s:5:\"49.60\";i:43;s:5:\"16.00\";i:46;s:5:\"16.00\";i:49;s:5:\"16.00\";}', 'a:2:{i:1;s:1:\"1\";i:3;s:1:\"2\";}', 1, '49.60');

-- --------------------------------------------------------

--
-- Table structure for table `kondisi`
--

CREATE TABLE `kondisi` (
  `id` int(11) NOT NULL,
  `kondisi` varchar(64) NOT NULL,
  `ket` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kondisi`
--

INSERT INTO `kondisi` (`id`, `kondisi`, `ket`) VALUES
(1, 'Sangat Yakin', ''),
(2, 'Yakin', ''),
(3, 'Cukup Yakin', ''),
(4, 'Kurang Yakin', ''),
(5, 'Tidak yakin', ''),
(6, 'Sangat Tidak Yakin', '');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `kode_penyakit` int(11) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `det_penyakit` varchar(500) NOT NULL,
  `srn_penyakit` varchar(500) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `det_penyakit`, `srn_penyakit`, `gambar`) VALUES
(51, 'Keypad', 'Keypad tidak berfungsi', 'Keringkan keypad dan bersihkan dari debu', 'keypad.png'),
(49, 'IC Power Amplifier', 'Kerusakan IC Power Amplifier', 'Cek tegangan sinyal', 'Ic Power amplifier.png'),
(45, 'Driver LCD', 'Kerusakan driver LCD', 'Cek arus LCD layar dan flexibel', 'Driver lcd.png'),
(43, 'Flexi Cable', 'Kerusakan Kabel Fleksibel', 'Cek Fleksibel', 'flexi cable.png'),
(1, 'IC Power', 'Kerusakan IC Power', 'Cek Tegangan Arus Power', 'ic power (1).png'),
(46, 'Driver Lampu', 'Kerusakan driver lampu', 'Cek tegangan lampu', 'Driver lampu.png'),
(44, 'Kamera', 'Kamera yang bermasalah', 'Cek fungsi kamera', 'kamera.png'),
(50, 'IC Audio', 'Kerusakan IC Audio', 'Cek tahanan kaki speaker pada mesin', 'ic audio.png'),
(47, 'IC Plus', 'Kerusakan IC Plus', 'Reboot software', 'Ic plus.png'),
(48, 'IC RAM', 'Kerusakan IC RAM', 'Cek memori RAM', 'Ic ram.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`kode_pengetahuan`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  MODIFY `kode_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `kode_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;

--
-- AUTO_INCREMENT for table `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `kode_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

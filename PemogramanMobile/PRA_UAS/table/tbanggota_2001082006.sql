-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 10:29 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tracking_indoor`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbanggota_2001082006`
--

CREATE TABLE `tbanggota_2001082006` (
  `idanggota` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jeniskelamin` varchar(10) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `tahun` year(4) NOT NULL,
  `api_key` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbanggota_2001082006`
--

INSERT INTO `tbanggota_2001082006` (`idanggota`, `nama`, `jeniskelamin`, `alamat`, `tahun`, `api_key`) VALUES
('23', 'Fachrizal Kurniawan', 'Laki-Laki', 'Padang', 2021, '9b30e68472e10dd745ea8f9dfd96cf1d'),
('24', 'FACHRIZAL KURNIAWAN', 'Laki-Laki', 'Padang Pagambiran', 2022, '057f1329c3f94ce6f6b714270568dcd7'),
('24757', 'FACHRIZAL KURNIAWAN', 'Laki-Laki', 'Padang Pagambiran', 2022, 'ab84b2ef6e35248fb1df3aa1747e164e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbanggota_2001082006`
--
ALTER TABLE `tbanggota_2001082006`
  ADD PRIMARY KEY (`idanggota`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

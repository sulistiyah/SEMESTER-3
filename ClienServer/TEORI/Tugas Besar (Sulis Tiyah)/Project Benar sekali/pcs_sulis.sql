-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jan 2022 pada 12.24
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcs_sulis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar`
--

CREATE TABLE `daftar` (
  `nama` varchar(35) NOT NULL,
  `email` varchar(35) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `re_password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `daftar`
--

INSERT INTO `daftar` (`nama`, `email`, `username`, `password`, `re_password`) VALUES
('Sulis Tiyah', 'sulistyhm.03@gmail.com', 'Sulistyh_', '12345', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_mahasiswa`
--

CREATE TABLE `form_mahasiswa` (
  `no_bp` int(15) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `prodi` varchar(30) NOT NULL,
  `tempat_tanggal_lahir` varchar(35) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `agama` varchar(25) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `form_mahasiswa`
--

INSERT INTO `form_mahasiswa` (`no_bp`, `nama_lengkap`, `jurusan`, `prodi`, `tempat_tanggal_lahir`, `jenis_kelamin`, `agama`, `no_telp`, `alamat`) VALUES
(2001081001, 'Bintang Ramadhana Putra', 'Teknologi Informasi', 'D3 Teknik Komputer', 'Padang, 04 Desember 2001', 'Laki-Laki', 'Islam', '0881292323052', 'Padang, Sumatera Barat'),
(2001081002, 'Sulis Tiyah', 'Teknologi Informasi', 'D3 Teknik Komputer', 'Gunung Raja, 03 Desember 2002', 'Perempuan', 'Islam', '081292323052', 'Muara Enim, Sumatera Selatan'),
(2001082033, 'Aldo Spama Putra Suir', 'Teknologi Informasi', 'D3 Teknik Komputer', 'Payakumbuh, 01 Juni 2001', 'Laki-laki', 'Islam', '082286111771', 'Padang, Sumatera Barat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('Sulistyh_', '12345');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `form_mahasiswa`
--
ALTER TABLE `form_mahasiswa`
  ADD PRIMARY KEY (`no_bp`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

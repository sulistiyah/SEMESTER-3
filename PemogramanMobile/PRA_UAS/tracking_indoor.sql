-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2022 pada 11.34
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
-- Database: `tracking_indoor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbanggota_2001081002`
--

CREATE TABLE `tbanggota_2001081002` (
  `idanggota` varchar(5) CHARACTER SET latin1 NOT NULL,
  `nama` varchar(30) CHARACTER SET latin1 NOT NULL,
  `jeniskelamin` varchar(10) CHARACTER SET latin1 NOT NULL,
  `alamat` varchar(40) CHARACTER SET latin1 NOT NULL,
  `tahun` year(4) NOT NULL,
  `api_key` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbanggota_2001081002`
--

INSERT INTO `tbanggota_2001081002` (`idanggota`, `nama`, `jeniskelamin`, `alamat`, `tahun`, `api_key`) VALUES
('1002', 'Sulis Tiyah', 'Perempuan', 'Muara Enim', 2022, 'ed529d419361c13326b81f1365d8fd23'),
('3122', 'Sulis Tiyah', 'Perempuan', 'Muara Enim', 2020, '541a0209d61f4caa648e0ef0e828f558');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `no_tlpn` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `api_key` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `email`, `nama`, `jenis_kelamin`, `no_tlpn`, `password`, `api_key`, `img`) VALUES
(6, 'sulistyh_', 'sulistyhm.03@gmail.com', 'Sulis Tiyah', 'Perempuan', '0812923230', '12345', '18147ebd45256ab6172a1fab275a99ed', ''),
(12, 'sulis03', 'sulistyhm.03@gmail.com', 'Sulis Tiyah', 'Perempuan', '0812923230', '12345', '885e3fc64abff8e3bd7093b39e74ee9e', ''),
(13, 'sulistyh03', 'sulistyhm.03@gmail.com', 'Sulis Tiyah', 'Perempuan', '0812923230', '12345', 'dfdfb4d718feb2c43d5843d7f925b373', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbanggota_2001081002`
--
ALTER TABLE `tbanggota_2001081002`
  ADD PRIMARY KEY (`idanggota`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

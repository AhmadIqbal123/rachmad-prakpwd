-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Nov 2021 pada 14.49
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` varchar(5) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `JKEL` varchar(1) DEFAULT NULL,
  `Alamat` text DEFAULT NULL,
  `TGLLHR` date DEFAULT NULL,
  `fakultas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `Nama`, `JKEL`, `Alamat`, `TGLLHR`, `fakultas`) VALUES
('19000', 'Tegar Aji', 'L', 'Jambi', '2000-12-11', 'Teknologi Industri'),
('MHS02', 'Rita', 'P', 'SOLO', '1999-01-01', 'Fakultas Kedokteran'),
('MHS03', 'Amirudin', 'L', 'SEMARANG', '1998-08-11', 'Fakultas Hukum'),
('MHS04', 'Siti Maryam', 'P', 'JAKARTA', '1995-04-15', 'Fakultas Kesehatan Masyarakat'),
('MHS05', 'Rachmad Nur Fauzi', 'L', 'JUWANGI', '2000-04-30', 'Fakultas Teknologi Industri'),
('MHS07', 'yiyly', 'l', 'JUWANGI', '2340-05-22', 'Teknologi Industri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `password`, `nama_lengkap`, `email`, `level`) VALUES
('', 'd41d8cd98f00b204e9800998ecf8427e', '', '', ''),
('ahmad', '202cb962ac59075b964b07152d234b70', 'Rachmad Nur Fauzi', 'admin@admin.com', ''),
('iqbal', '202cb962ac59075b964b07152d234b70', 'Iqhbal hamba Allah', 'aaa@mail.com', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

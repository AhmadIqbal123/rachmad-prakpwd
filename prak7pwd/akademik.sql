-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Des 2021 pada 17.09
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

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
-- Struktur dari tabel `khs`
--

CREATE TABLE `khs` (
  `nim` varchar(50) NOT NULL,
  `kode_mk` varchar(5) NOT NULL,
  `nilai` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `khs`
--

INSERT INTO `khs` (`nim`, `kode_mk`, `nilai`) VALUES
('1900018325', 'MK053', 'B+'),
('1900018326', 'MK051', 'A'),
('1900018327', 'MK052', 'A-'),
('1900018328', 'MK04', 'A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` varchar(50) NOT NULL,
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
('1900018326', 'Rachmad Nur Fauzi', 'L', 'JUWANGI', '2000-04-30', 'Fakultas Teknologi Industri'),
('1900018327', 'Tegar Aji', 'L', 'Jambi', '2000-12-11', 'Teknologi Industri'),
('1900018328', 'Anjasmoro Tri Chorisa', 'L', 'Wonosobo', '1998-05-22', 'Teknologi Industri'),
('MHS02', 'Rita', 'P', 'SOLO', '1999-01-01', 'Fakultas Kedokteran'),
('MHS03', 'Amirudin', 'L', 'SEMARANG', '1998-08-11', 'Fakultas Hukum'),
('MHS04', 'Siti Maryam', 'P', 'JAKARTA', '1995-04-15', 'Fakultas Kesehatan Masyarakat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL,
  `smt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kode`, `nama`, `sks`, `smt`) VALUES
('MK026', 'Bahasa Indonesia', 2, 2),
('MK047', 'Interaksi Manusia Dan Komputer', 3, 4),
('MK051', 'Pemrograman Web Dinamis', 3, 5),
('MK052', 'Keamanan Komputer', 3, 5),
('MK053', 'Teori Bahasa Automata', 2, 5),
('MK054', 'Sistem Pendukung Keputusan', 3, 5),
('MK055', 'Forensik Digital', 3, 5),
('MK058', 'Pengantar Manajemen dan Prinsip Proyek', 2, 5);

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
-- Indeks untuk tabel `khs`
--
ALTER TABLE `khs`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Okt 2023 pada 00.12
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prakweb_2023_b_213040043`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `pengarang` varchar(150) NOT NULL,
  `penerbit` varchar(150) NOT NULL,
  `tahun` year NOT NULL,
  `kategori` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `gambar`, `judul`, `pengarang`, `penerbit`, `tahun`, `kategori`) VALUES
(1, 'gambar 1.jpg', 'Puya Ke Puya', 'Faisal Oddang', 'Kpg ', '2015', 'Sosial Budaya'),
(2, 'gambar 2.jpg', 'Laut Bercerita', 'Leila S. Chudori', 'Kpg', '2017', 'Drama'),
(3, 'gambar 3.jpg', 'layangan putus', 'Mommy ASF', 'RDM Publishers', '2010', 'Romance'),
(4, 'gambar 4.jpg', 'Where Stories Begin', 'Wacaku', 'Elex Media Komputindo', '2022', 'Remaja'),
(5, 'gambar 5.jpg', 'Cantik Itu Luka', 'Eka Kurniawan', 'Gramedia Pustka Utama', '2022', 'Fiksi'),
(6, 'gambar 6.jpg', 'Di Tanah Lada', 'Ziggyzesyazeoviennazabrizkie', 'Gramedia Pustka Utama', '2021', 'Sastra'),
(7, 'gambar 7.jpg', 'Bedebah Di Ujung Tanduk', 'Tere Liye', 'Sabak Grip', '2021', 'Mistery-Thriller'),
(8, 'gambar 8.jpg', 'Bumi', 'Tere Liye', 'Gramedia Pustka Utama', '2021', 'Remaja'),
(9, 'gambar 9.jpg', 'Melangkah', 'Js.Khairen', 'Grasindo', '2020', 'Fiksi'),
(10, 'gambar 10.jpg', 'Kita Pergi Hari Ini', 'Ziggy Zezsyazeoviennazabrizkie', 'Gramedia Pustka Utama', '2021', 'Fiksi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jul 2021 pada 17.37
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dheaapisca_311910755`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `camera`
--

CREATE TABLE `camera` (
  `id_camera` int(11) NOT NULL,
  `type_camera` varchar(20) DEFAULT NULL,
  `merk_camera` varchar(20) DEFAULT NULL,
  `harga_sewa` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `camera`
--

INSERT INTO `camera` (`id_camera`, `type_camera`, `merk_camera`, `harga_sewa`) VALUES
(101, 'eos800d', 'canon', 125000),
(102, 'a6400', 'sony', 170000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_camera` int(11) NOT NULL,
  `id_bayar` int(11) DEFAULT NULL,
  `tanggal_bayar` date DEFAULT NULL,
  `jumlah_bayar` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_camera`, `id_bayar`, `tanggal_bayar`, `jumlah_bayar`) VALUES
(101, 1, '2021-07-12', 125000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewa`
--

CREATE TABLE `penyewa` (
  `id_penyewa` int(11) NOT NULL,
  `nama_penyewa` varchar(400) DEFAULT NULL,
  `no_telpon` char(30) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penyewa`
--

INSERT INTO `penyewa` (`id_penyewa`, `nama_penyewa`, `no_telpon`, `alamat`) VALUES
(1, 'Dea', '85691793587', 'jl.playangan'),
(3, 'arrafi jehansysh', '82176528652', 'jl.konohagakure');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `camera`
--
ALTER TABLE `camera`
  ADD PRIMARY KEY (`id_camera`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_camera`);

--
-- Indeks untuk tabel `penyewa`
--
ALTER TABLE `penyewa`
  ADD PRIMARY KEY (`id_penyewa`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_camera`) REFERENCES `camera` (`id_camera`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

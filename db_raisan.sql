-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03 Jan 2025 pada 06.27
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_raisan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `img`
--

CREATE TABLE `img` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) CHARACTER SET utf8 NOT NULL,
  `produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `img`
--

INSERT INTO `img` (`id`, `nama`, `produk_id`) VALUES
(1, 'AO.JPG', 1),
(2, 'BDO1.JPG', 2),
(3, 'DT1.JPG', 3),
(4, 'WF1.JPG', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) CHARACTER SET utf8 NOT NULL,
  `keterangan` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id`, `nama`, `keterangan`) VALUES
(1, 'Albion & Dota 2', 'keterangan Albion & Dota 2'),
(2, 'Black Desert Online (BDO)', 'keterangan BDO'),
(3, 'Warframe', 'keterangan WF');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) CHARACTER SET utf8 NOT NULL,
  `harga` decimal(15,3) NOT NULL,
  `keterangan` text CHARACTER SET utf8 NOT NULL,
  `jenis_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `nama`, `harga`, `keterangan`, `jenis_id`) VALUES
(1, 'Albion Online', '10.000', 'per 1M Silver', 1),
(2, 'Dota 2|Rank Herald - Archon', '300.000', 'per 500 MMR', 1),
(3, 'Dota 2|Rank Legend - Divine', '500.000', 'per 500 MMR', 1),
(4, 'Dota 2|Rank Immortal - Top Rank 2000', '700.000', 'per 500 MMR', 1),
(5, 'BDO - 1 Month Package|5h/Day', '4.800', 'Grinding/Any Activities You Want', 2),
(6, 'BDO - 1 Month Package|10h/Day', '9.300', 'Grinding/Any Activities You Want', 2),
(7, 'BDO - 1 Month Package|12h/Day', '10.800', 'Grinding/Any Activities You Want', 2),
(8, 'Warframe | 500 Platinum', '80.000', '500 Platinum ', 3),
(9, 'Warframe | 1000 Platinum', '150.000', '1000 Platinum', 3),
(10, 'Warframe | 2000 Platinum', '280.000', '2000 Platinum', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(25) CHARACTER SET utf8 NOT NULL,
  `nama` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`) VALUES
(1, 'raisan', 'password', 'Raisan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

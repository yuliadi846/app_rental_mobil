-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 30 Jun 2020 pada 13.25
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_mobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`, `role_id`) VALUES
(2, 'bagus', 'bagus', '17b38fc02fd7e92f3edeb6318e3066d8', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `alamat` varchar(120) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `no_ktp` varchar(50) NOT NULL,
  `password` varchar(120) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `username`, `alamat`, `gender`, `no_telepon`, `no_ktp`, `password`, `role_id`) VALUES
(8, 'erwin', 'erwin', 'jakarta', 'Laki-laki', '12345678', '1234567', '785f0b13d4daf8eee0d11195f58302a4', 2),
(11, 'Yuyus', 'yuyus', 'jakarta', 'Laki-laki', '12345678', '2222222', 'd42490b044da11a2b0945487c9700fc0', 2),
(12, 'Yuliadi', 'yuliadi', 'jakarta', 'Laki-laki', '12345678', '3333333', '54d833a31587caa009b98699bb1a1b03', 2),
(13, 'Dicky zulkifli', 'dicky', 'jakarta', 'Laki-laki', '12345678', '4444444', 'ee0b6db238b075d0da86340048fb147a', 2),
(14, 'ridho', 'ridho', 'jakarta', 'Laki-laki', '12345678', '11122211', '926a161c6419512d711089538c80ac70', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `kode_type` varchar(120) NOT NULL,
  `merk` varchar(120) NOT NULL,
  `no_plat` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `status` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `ac` int(11) NOT NULL,
  `supir` int(11) NOT NULL,
  `mp3_player` int(11) NOT NULL,
  `central_lock` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `kode_type`, `merk`, `no_plat`, `warna`, `tahun`, `status`, `harga`, `ac`, `supir`, `mp3_player`, `central_lock`, `gambar`) VALUES
(9, 'SDN', 'Toyota City', 'B 1456 pp', 'Hitam', '2016', '0', 100000, 1, 1, 1, 1, 'mobil1.jpg'),
(10, 'SDN', 'honda jezz', 'dd', 'Hitam', 'ddd', '0', 300000, 0, 0, 0, 0, 'mobil2.jpg'),
(13, 'MPV', 'Sport', '45678', 'biru', '2019', '0', 300000, 1, 1, 1, 1, 'car-2.jpg'),
(14, 'MPV', 'Sport 2', '45678', 'merah', '2020', '0', 100000, 1, 1, 1, 1, 'car-4.jpg'),
(15, 'ppp', 'Sporttt', '101112', 'kuning', '2019', '1', 1500000, 1, 1, 1, 1, 'car-5.jpg'),
(16, 'SPT', 'sprty 11', '101112', 'hitam', '2019', '0', 100000, 1, 1, 1, 1, 'car-1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_rental` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `tanggal_rental` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `harga` varchar(120) NOT NULL,
  `status_rental` varchar(50) NOT NULL,
  `bukti_pembayaran` varchar(120) NOT NULL,
  `status_pembayaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_rental`, `id_customer`, `id_mobil`, `tanggal_rental`, `tanggal_kembali`, `harga`, `status_rental`, `bukti_pembayaran`, `status_pembayaran`) VALUES
(1, 8, 13, '2020-06-14', '2020-06-16', '300000', 'Selesai', 'bsi_pembayaran_ta.pdf', 1),
(4, 8, 9, '2020-06-16', '2020-06-21', '100000', 'Selesai', 'DSC_0031.JPG', 1),
(5, 10, 15, '2020-06-18', '2020-06-28', '1500000', 'Selesai', 'Screenshot_20200616-130248.png', 1),
(7, 12, 14, '2020-06-19', '2020-06-20', '100000', 'Belum Selesai', '', 0),
(8, 14, 9, '2020-06-20', '2020-06-21', '100000', 'Selesai', 'bsi_pembayaran_ta_2.pdf', 1),
(9, 15, 16, '2020-06-29', '2020-07-02', '300000', 'Selesai', 'bsi_pembayaran_mikrotik2.pdf', 1),
(10, 16, 10, '2020-06-29', '2020-06-30', '300000', 'Selesai', '', 0),
(11, 16, 15, '2020-06-29', '2020-06-30', '1500000', 'Belum Selesai', 'Screenshot_2020-06-29-21-40-21-618_com_android_chrome1.jpg', 1),
(12, 14, 16, '2020-06-30', '2020-07-03', '300000', 'Selesai', 'bukti_pembayaran_mikrotik_bsi_sem_6.pdf', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `type`
--

CREATE TABLE `type` (
  `id_type` int(11) NOT NULL,
  `kode_type` varchar(10) NOT NULL,
  `nama_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `type`
--

INSERT INTO `type` (`id_type`, `kode_type`, `nama_type`) VALUES
(1, 'SDN', 'sedan'),
(2, 'MPV', 'Mobil Multi Purpose Vehicle'),
(3, 'SUV', 'Tipe Mobil Sport Utility Vehicle '),
(4, 'ppp', 'power point popt'),
(5, 'SPT', 'Sporty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_rental`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_rental` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

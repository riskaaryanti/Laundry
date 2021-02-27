-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2021 at 08:10 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `loundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangg`
--

CREATE TABLE IF NOT EXISTS `barangg` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL,
  `tgl_update` date NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `harga` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangg`
--

INSERT INTO `barangg` (`id`, `nama`, `stok`, `tgl_update`, `supplier`, `harga`) VALUES
(9, 'pewangi', 5, '2021-02-25', 'riska', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE IF NOT EXISTS `jenis` (
  `id` int(10) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `harga` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `jenis`, `harga`) VALUES
(1, 'Paket A', 10000),
(2, 'Paket B', 5000),
(3, 'paket C', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE IF NOT EXISTS `konsumen` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konsumen`
--

INSERT INTO `konsumen` (`id`, `nama`, `alamat`, `telp`) VALUES
(1, 'Amel', 'jl.Kuspanangelang', '888423'),
(6, 'maya', 'kp.sodong', '0854254'),
(7, 'putri', 'kp.Lampengan', '08925320'),
(16, 'gita', 'kp.Cigoletrak', '08925320'),
(17, 'dede', 'kp.Gununghalu', '0888124363'),
(18, 'risqiya', 'kp.Cigoletrak', '0838782355');

-- --------------------------------------------------------

--
-- Table structure for table `pemakaian`
--

CREATE TABLE IF NOT EXISTS `pemakaian` (
  `id` int(10) NOT NULL,
  `tgl_pakai` date NOT NULL,
  `barang` varchar(100) NOT NULL,
  `jumlah` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemakaian`
--

INSERT INTO `pemakaian` (`id`, `tgl_pakai`, `barang`, `jumlah`) VALUES
(1, '2021-02-23', 'Deterjen Bubuk', 10);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
  `no` int(10) NOT NULL,
  `tgl` date NOT NULL,
  `totali` int(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `barang` varchar(100) NOT NULL,
  `totalh` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`no`, `tgl`, `totali`, `supplier`, `barang`, `totalh`) VALUES
(1, '2016-02-23', 10, 'Erwin', 'Deterjen Bubuk', 80000),
(2, '2016-02-23', 2, 'Erwin', 'Deterjen Bubuk', 16000),
(3, '2021-02-11', 5, 'Erwin', 'sabun', 60000),
(4, '2021-02-11', 25, 'riska', 'pewangi', 125000),
(5, '2021-02-11', 25, 'riska', 'pewangi', 125000),
(6, '2021-02-16', 5, 'riska', 'setrika', 1250),
(7, '2021-02-16', 5, 'riska', 'setrika', 1250),
(8, '2021-02-16', 25, 'riska', 'rapika', 300000),
(9, '2021-02-18', 24, 'riska', 'rapika', 288000),
(10, '2021-02-18', 5, 'riska', 'setrika', 1750000),
(11, '2021-02-18', 5, 'riska', 'setrika', 1750000),
(12, '2021-02-18', 20, 'riska', 'soklin', 300000),
(13, '2021-02-19', 15, 'riska', 'pewangi', 75000);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `id` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('Administrator','Karyawan','Konsumen') NOT NULL,
  `nik` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `gender` enum('Laki laki','Perempuan') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `username`, `password`, `level`, `nik`, `alamat`, `telp`, `gender`) VALUES
(6, 'riska', 'riska', '698d51a19d8a121ce581499d7b701668', 'Administrator', '3214586545', 'kp.ciranjang', '0830000000', 'Perempuan'),
(7, 'Rosa ', 'rosa', '84109ae4b4178430b8174b1dfef9162b', 'Karyawan', '3215466', 'kp.Cigoletrak', '0888124363', 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nama`, `alamat`, `telp`) VALUES
(1, 'riska', 'Jl. Gununghalu no.78', '08178171123'),
(6, 'yanti', 'Bunijaya', '325421');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id` int(5) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `tarif` int(100) NOT NULL,
  `diskon` int(100) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `tgl_ambil` date NOT NULL,
  `berat` int(10) NOT NULL,
  `pengguna` varchar(100) NOT NULL,
  `konsumen` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `jenis`, `tarif`, `diskon`, `tgl_transaksi`, `tgl_ambil`, `berat`, `pengguna`, `konsumen`) VALUES
(1, 'Paket 1', 100000, 0, '2021-02-23', '2021-03-01', 10, 'khalid', 'Irwansyah'),
(2, 'Paket 2', 50000, 0, '2021-02-23', '2021-03-01', 10, 'uput', ''),
(3, 'Paket 1', 180000, 0, '2021-02-23', '2021-03-01', 20, 'nita', 'talia'),
(4, 'Paket 2', 90000, 0, '2021-02-23', '2021-01-01', 20, 'Dede', 'Silviana'),
(5, 'Paket 2', 25000, 0, '2021-02-10', '2021-10-02', 5, 'riska', 'Irwansyah'),
(6, 'Paket 2', 15000, 0, '2021-02-11', '2021-02-11', 3, 'riska', 'gita'),
(7, 'Paket 1', 100000, 0, '2021-02-11', '2021-02-02', 10, 'riska', 'maya'),
(8, 'Paket 2', 15000, 0, '2021-02-11', '2021-12-02', 3, 'riska', 'putri'),
(9, 'Paket 2', 94500, 0, '2021-02-11', '2021-03-12', 21, 'riska', 'gita'),
(10, 'Paket A', 50000, 0, '2021-02-11', '2021-10-21', 5, 'riska', 'maya'),
(11, 'paket C', -12500, 0, '2021-02-11', '2021-02-12', -5, 'riska', 'Amel'),
(12, 'paket C', 5000, 0, '2021-02-16', '2021-02-12', 2, 'riska', 'dede'),
(13, 'paket C', 56250, 0, '2021-02-18', '2021-03-11', 25, 'riska', 'gita');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangg`
--
ALTER TABLE `barangg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemakaian`
--
ALTER TABLE `pemakaian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangg`
--
ALTER TABLE `barangg`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `konsumen`
--
ALTER TABLE `konsumen`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `pemakaian`
--
ALTER TABLE `pemakaian`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `barangg`
--
ALTER TABLE `barangg`
ADD CONSTRAINT `barangg_ibfk_1` FOREIGN KEY (`id`) REFERENCES `pembelian` (`no`);

--
-- Constraints for table `jenis`
--
ALTER TABLE `jenis`
ADD CONSTRAINT `jenis_ibfk_1` FOREIGN KEY (`id`) REFERENCES `pembelian` (`no`);

--
-- Constraints for table `pemakaian`
--
ALTER TABLE `pemakaian`
ADD CONSTRAINT `pemakaian_ibfk_1` FOREIGN KEY (`id`) REFERENCES `supplier` (`id`);

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`no`) REFERENCES `transaksi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`id`) REFERENCES `konsumen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2015 at 04:32 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblbarang`
--

CREATE TABLE `tblbarang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(15) NOT NULL,
  `nama_barang` varchar(35) NOT NULL,
  `kode_kelompok` varchar(15) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbarang`
--

INSERT INTO `tblbarang` (`id`, `kode_barang`, `nama_barang`, `kode_kelompok`, `harga_beli`, `harga_jual`, `stock`) VALUES
(1, 'BRG-1', 'Tes Nama Barang 1', 'KLP-1', 15000, 17500, 50),
(2, 'BRG-2', 'Tes Nama Barang 2', 'KLP-1', 32500, 40000, 100),
(3, 'BRG-3', 'Tes Nama Barang 3', 'KLP-1', 22500, 30000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `tblkelompok`
--

CREATE TABLE `tblkelompok` (
  `id` int(11) NOT NULL,
  `kode_kelompok` varchar(15) NOT NULL,
  `nama_kelompok` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblkelompok`
--

INSERT INTO `tblkelompok` (`id`, `kode_kelompok`, `nama_kelompok`) VALUES
(1, 'KLP-1', 'Makanan');

-- --------------------------------------------------------

--
-- Table structure for table `tblpemasok`
--

CREATE TABLE `tblpemasok` (
  `id` int(11) NOT NULL,
  `kode_pemasok` varchar(15) NOT NULL,
  `nama_pemasok` varchar(35) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpemasok`
--

INSERT INTO `tblpemasok` (`id`, `kode_pemasok`, `nama_pemasok`, `alamat`) VALUES
(1, 'PMS-1', 'Toko Jaya Makmur', 'Palembang 0711-010101');

-- --------------------------------------------------------

--
-- Table structure for table `tblpengguna`
--

CREATE TABLE `tblpengguna` (
  `id` int(11) NOT NULL,
  `user` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `privilege` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpengguna`
--

INSERT INTO `tblpengguna` (`id`, `user`, `password`, `privilege`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Main'),
(6, 'aa', '4124bc0a9335c27f086f24ba207a4912', 'Main');

-- --------------------------------------------------------

--
-- Table structure for table `tbltransaksi_beli`
--

CREATE TABLE `tbltransaksi_beli` (
  `id` int(11) NOT NULL,
  `no_faktur` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_pemasok` varchar(15) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransaksi_beli`
--

INSERT INTO `tbltransaksi_beli` (`id`, `no_faktur`, `tanggal`, `kode_pemasok`, `total`) VALUES
(1, 'FB-0314-1', '2014-03-25', 'PMS-1', 15000),
(2, 'FB-0314-2', '2014-03-25', 'PMS-1', 812500),
(3, 'FB-0314-3', '2014-03-26', 'PMS-1', 1850000);

-- --------------------------------------------------------

--
-- Table structure for table `tbltransaksi_beli_rinci`
--

CREATE TABLE `tbltransaksi_beli_rinci` (
  `no_faktur` varchar(15) NOT NULL,
  `kode_barang` varchar(15) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransaksi_beli_rinci`
--

INSERT INTO `tbltransaksi_beli_rinci` (`no_faktur`, `kode_barang`, `harga_beli`, `jumlah`, `sub_total`) VALUES
('FB-0314-1', 'BRG-1', 15000, 1, 15000),
('FB-0314-2', 'BRG-2', 32500, 25, 812500),
('FB-0314-3', 'BRG-3', 22500, 10, 225000),
('FB-0314-3', 'BRG-2', 32500, 50, 1625000);

-- --------------------------------------------------------

--
-- Table structure for table `tbltransaksi_jual`
--

CREATE TABLE `tbltransaksi_jual` (
  `id` int(11) NOT NULL,
  `no_faktur` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransaksi_jual`
--

INSERT INTO `tbltransaksi_jual` (`id`, `no_faktur`, `tanggal`, `total`) VALUES
(1, 'FJ-0314-1', '2014-03-25', 2035000),
(2, 'FJ-0314-2', '2014-03-25', 3437500),
(3, 'FJ-0314-3', '2014-03-26', 1500000);

-- --------------------------------------------------------

--
-- Table structure for table `tbltransaksi_jual_rinci`
--

CREATE TABLE `tbltransaksi_jual_rinci` (
  `no_faktur` varchar(15) NOT NULL,
  `kode_barang` varchar(15) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransaksi_jual_rinci`
--

INSERT INTO `tbltransaksi_jual_rinci` (`no_faktur`, `kode_barang`, `harga_jual`, `jumlah`, `sub_total`) VALUES
('FJ-0314-1', 'BRG-1', 17500, 2, 35000),
('FJ-0314-1', 'BRG-2', 40000, 50, 2000000),
('FJ-0314-2', 'BRG-2', 40000, 75, 3000000),
('FJ-0314-2', 'BRG-1', 17500, 25, 437500),
('FJ-0314-3', 'BRG-3', 30000, 50, 1500000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblbarang`
--
ALTER TABLE `tblbarang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblkelompok`
--
ALTER TABLE `tblkelompok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpemasok`
--
ALTER TABLE `tblpemasok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpengguna`
--
ALTER TABLE `tblpengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltransaksi_beli`
--
ALTER TABLE `tbltransaksi_beli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltransaksi_jual`
--
ALTER TABLE `tbltransaksi_jual`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblbarang`
--
ALTER TABLE `tblbarang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblkelompok`
--
ALTER TABLE `tblkelompok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblpemasok`
--
ALTER TABLE `tblpemasok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblpengguna`
--
ALTER TABLE `tblpengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbltransaksi_beli`
--
ALTER TABLE `tbltransaksi_beli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbltransaksi_jual`
--
ALTER TABLE `tbltransaksi_jual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

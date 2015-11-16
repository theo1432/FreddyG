-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2015 at 03:17 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbarinda`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`kode_barang`, `nama_barang`) VALUES
('eee', 'eee'),
('rrr', 'rrr'),
('ttt', 'ttt'),
('ttr', 'rrr'),
('ertre', 'tre'),
('tert', 'ertre'),
('ytryt', 'rtyrt'),
('yrtytr', 'ytrty'),
('tyryt', 'ytytt'),
('ytyr', 'yy'),
('tttt', 'tttt'),
('jhjhg', 'jhg'),
('hjghjg', 'hjghjghj'),
('sss', 'www'),
('tes', 'tes'),
('sukasuka', 'sukajuga');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bonus`
--

CREATE TABLE `tbl_bonus` (
  `id` int(11) NOT NULL,
  `kode_bonus` varchar(10) NOT NULL,
  `nama_bonus` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cashback`
--

CREATE TABLE `tbl_cashback` (
  `id` int(11) NOT NULL,
  `kode_bonus` varchar(10) NOT NULL,
  `jumlah_cashback` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_distributor`
--

CREATE TABLE `tbl_distributor` (
  `kode_distributor` varchar(10) NOT NULL,
  `nama_distributor` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `id` int(11) NOT NULL,
  `user` varchar(999) NOT NULL,
  `password` varchar(9999) NOT NULL,
  `privilege` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`id`, `user`, `password`, `privilege`) VALUES
(2, 'main', 'b28b7af69320201d1cf206ebf28373980add1451', 'Main');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sj`
--

CREATE TABLE `tbl_sj` (
  `no_sj` int(11) NOT NULL,
  `kode_distributor` varchar(10) NOT NULL,
  `sopir` varchar(20) NOT NULL,
  `no_pol` varchar(20) NOT NULL,
  `sales` varchar(20) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sj_barang`
--

CREATE TABLE `tbl_sj_barang` (
  `no_sj` int(11) NOT NULL,
  `no_sj_complete` varchar(25) NOT NULL,
  `variasi_barang` int(11) NOT NULL,
  `variasi_bonus` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `kode_bonus` varchar(10) NOT NULL,
  `jumlah_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tambahbarang`
--

CREATE TABLE `tbl_tambahbarang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `kode_bonus` varchar(10) NOT NULL,
  `jumlah_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bonus`
--
ALTER TABLE `tbl_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cashback`
--
ALTER TABLE `tbl_cashback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sj`
--
ALTER TABLE `tbl_sj`
  ADD PRIMARY KEY (`no_sj`);

--
-- Indexes for table `tbl_sj_barang`
--
ALTER TABLE `tbl_sj_barang`
  ADD PRIMARY KEY (`no_sj`);

--
-- Indexes for table `tbl_tambahbarang`
--
ALTER TABLE `tbl_tambahbarang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bonus`
--
ALTER TABLE `tbl_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_cashback`
--
ALTER TABLE `tbl_cashback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_sj`
--
ALTER TABLE `tbl_sj`
  MODIFY `no_sj` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_sj_barang`
--
ALTER TABLE `tbl_sj_barang`
  MODIFY `no_sj` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_tambahbarang`
--
ALTER TABLE `tbl_tambahbarang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

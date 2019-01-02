-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2019 at 08:38 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simabsensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbabsen`
--

CREATE TABLE `tbabsen` (
  `NIP` varchar(255) NOT NULL,
  `NIS` varchar(255) NOT NULL,
  `TanggalMasuk` date NOT NULL,
  `KeteranganAbsen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbguru`
--

CREATE TABLE `tbguru` (
  `NIP` varchar(255) NOT NULL,
  `NamaGuru` varchar(255) NOT NULL,
  `JenisKelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `NomorGuru` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbguru`
--

INSERT INTO `tbguru` (`NIP`, `NamaGuru`, `JenisKelamin`, `NomorGuru`) VALUES
('12454', 'haydar', 'Laki-laki', '43rfw'),
('234543', 'hahay', '', '42524'),
('345', 'haydar', '', '3466'),
('435', 'ageag', 'Perempuan', 'ea2342'),
('4547735', 'asdasd', '', '2323'),
('556', '765', 'Laki-laki', '57667');

-- --------------------------------------------------------

--
-- Table structure for table `tbkelas`
--

CREATE TABLE `tbkelas` (
  `IDKelas` varchar(255) NOT NULL,
  `NamaKelas` varchar(255) NOT NULL,
  `NIP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbkelas`
--

INSERT INTO `tbkelas` (`IDKelas`, `NamaKelas`, `NIP`) VALUES
('12312', 'mantap', '435'),
('245435', 'hehehe', '12454'),
('3434', 'wadaw2', '12454');

-- --------------------------------------------------------

--
-- Table structure for table `tbsiswa`
--

CREATE TABLE `tbsiswa` (
  `NIS` varchar(255) NOT NULL,
  `NamaSiswa` varchar(255) NOT NULL,
  `JenisKelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `AlamatSiswa` text NOT NULL,
  `NamaWali` varchar(255) NOT NULL,
  `NomorWali` varchar(255) NOT NULL,
  `IDKelas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbsiswa`
--

INSERT INTO `tbsiswa` (`NIS`, `NamaSiswa`, `JenisKelamin`, `AlamatSiswa`, `NamaWali`, `NomorWali`, `IDKelas`) VALUES
('745', 'hedarrw', 'Laki-laki', '234afsdasdf', 'asfdasd', '234234', '3434');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbguru`
--
ALTER TABLE `tbguru`
  ADD PRIMARY KEY (`NIP`);

--
-- Indexes for table `tbkelas`
--
ALTER TABLE `tbkelas`
  ADD PRIMARY KEY (`IDKelas`);

--
-- Indexes for table `tbsiswa`
--
ALTER TABLE `tbsiswa`
  ADD PRIMARY KEY (`NIS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

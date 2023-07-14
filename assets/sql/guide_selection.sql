-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2022 at 02:48 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guide_selection`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_credentials`
--

CREATE TABLE `admin_credentials` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table `admin_credentials`
--

INSERT INTO `admin_credentials` (`id`, `email`, `password`) VALUES
(1, 'subhashini.it@sathyabama.ac.in', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'gowri.it@sathyabama.ac.in', '7b47a887c9c718ad9a06bb864809d8ce'),
(3, 'jebersonretnaraj.it@sathyabama.ac.in', '54b792c32402fe1aa7a219ef97411d8d'),
(4, 'marygladence.it@sathyabama.ac.in', 'e3a05b74ed7ff7a02cabaea6aa9916c2'),
(5, 'nirmalrani.it@sathyabama.ac.in', 'bc1eca44e053bdb99713836986380512'),
(6, 'gomathi.it@sathyabama.ac.in', '6416a582628afd13cabdcbe130d74c1b'),
(7, 'jabezme@gmail.com', '31beabe5df4d671e3e9ad7a7adc9c580'),
(10, 'ajitha.it@sathyabama.ac.in', '240b149f9e949f8bc16e46190ba60006'),
(11, 'sivasangari.it@sathyabama.ac.in', '03504203565f94563676974e945a2378'),
(12, 'brumancia.it@sathyabama.ac.in', 'fb0cdbcef7ba2cfb580e8fa501dfd861'),
(13, 'revathy.it@sathyabama.ac.in', '0f0f464809800caf266002818809a944'),
(14, 'mathivanan.it@sathyabama.ac.in', '0b64c12c700a7fbc05623ecc23519e85'),
(15, 'jeyanthi.it@sathyabama.ac.in', 'e12bf5a991bee59966a0c7e17a9a9d76'),
(17, 'admin1@gmail.com', '7488e331b8b64e5794da3fa4eb10ad5d'),
(18, 'gomssrm@gmail.com', '6416a582628afd13cabdcbe130d74c1b'),
(19, 'veeramuthu.it@sathyabama.ac.in', '6ceb1bac0f129155233c3089626dba8e'),
(22, 'bevishjinila.it@sathyabama.ac.in', '293bd5e4d93c17167eb93d7e5c579f33'),
(23, 'sendurusrinivasulu.it@sathyabama.ac.in', 'b4c32bb7e16f6cc81689e81e33444bfb');

-- --------------------------------------------------------

-- Table structure for `student_credentials`

CREATE TABLE `student_credentials` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `reg_no` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL
);

-- Dumping data for table `student_credentials`

INSERT INTO `student_credentials` (`id`, `name`,`reg_no`, `email`, `password`) VALUES 
(1, 'Arun', 41120028 ,'arun@gmail.com', '21232f297a57a5a743894a0e4a801fc3' );

--
-- Table structure for table `guide_ajitha`
--

CREATE TABLE `guide_ajitha` (
  `id` int(11) NOT NULL,
  `student_1_name` varchar(50) NOT NULL,
  `student_1_reg_no` int(8) NOT NULL,
  `student_1_email` varchar(100) NOT NULL,
  `student_1_ph_no` decimal(10,0) NOT NULL,
  `student_2_name` varchar(50) DEFAULT NULL,
  `student_2_reg_no` int(8) DEFAULT NULL,
  `student_2_email` varchar(100) DEFAULT NULL,
  `student_2_ph_no` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guide_bevish`
--

CREATE TABLE `guide_bevish` (
  `id` int(11) NOT NULL,
  `student_1_name` varchar(50) NOT NULL,
  `student_1_reg_no` int(8) NOT NULL,
  `student_1_email` varchar(100) NOT NULL,
  `student_1_ph_no` decimal(10,0) NOT NULL,
  `student_2_name` varchar(50) DEFAULT NULL,
  `student_2_reg_no` int(8) DEFAULT NULL,
  `student_2_email` varchar(100) DEFAULT NULL,
  `student_2_ph_no` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guide_brumancia`
--

CREATE TABLE `guide_brumancia` (
  `id` int(11) NOT NULL,
  `student_1_name` varchar(50) NOT NULL,
  `student_1_reg_no` int(8) NOT NULL,
  `student_1_email` varchar(100) NOT NULL,
  `student_1_ph_no` decimal(10,0) NOT NULL,
  `student_2_name` varchar(50) DEFAULT NULL,
  `student_2_reg_no` int(8) DEFAULT NULL,
  `student_2_email` varchar(100) DEFAULT NULL,
  `student_2_ph_no` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guide_gomathi`
--

CREATE TABLE `guide_gomathi` (
  `id` int(11) NOT NULL,
  `student_1_name` varchar(50) NOT NULL,
  `student_1_reg_no` int(8) NOT NULL,
  `student_1_email` varchar(100) NOT NULL,
  `student_1_ph_no` decimal(10,0) NOT NULL,
  `student_2_name` varchar(50) DEFAULT NULL,
  `student_2_reg_no` int(8) DEFAULT NULL,
  `student_2_email` varchar(100) DEFAULT NULL,
  `student_2_ph_no` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guide_gowri`
--

CREATE TABLE `guide_gowri` (
  `id` int(11) NOT NULL,
  `student_1_name` varchar(50) NOT NULL,
  `student_1_reg_no` int(8) NOT NULL,
  `student_1_email` varchar(100) NOT NULL,
  `student_1_ph_no` decimal(10,0) NOT NULL,
  `student_2_name` varchar(50) DEFAULT NULL,
  `student_2_reg_no` int(8) DEFAULT NULL,
  `student_2_email` varchar(100) DEFAULT NULL,
  `student_2_ph_no` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guide_jabez`
--

CREATE TABLE `guide_jabez` (
  `id` int(11) NOT NULL,
  `student_1_name` varchar(50) NOT NULL,
  `student_1_reg_no` int(8) NOT NULL,
  `student_1_email` varchar(100) NOT NULL,
  `student_1_ph_no` decimal(10,0) NOT NULL,
  `student_2_name` varchar(50) DEFAULT NULL,
  `student_2_reg_no` int(8) DEFAULT NULL,
  `student_2_email` varchar(100) DEFAULT NULL,
  `student_2_ph_no` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guide_jeberson`
--

CREATE TABLE `guide_jeberson` (
  `id` int(11) NOT NULL,
  `student_1_name` varchar(50) NOT NULL,
  `student_1_reg_no` int(8) NOT NULL,
  `student_1_email` varchar(100) NOT NULL,
  `student_1_ph_no` decimal(10,0) NOT NULL,
  `student_2_name` varchar(50) DEFAULT NULL,
  `student_2_reg_no` int(8) DEFAULT NULL,
  `student_2_email` varchar(100) DEFAULT NULL,
  `student_2_ph_no` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guide_jeyanthi`
--

CREATE TABLE `guide_jeyanthi` (
  `id` int(11) NOT NULL,
  `student_1_name` varchar(50) NOT NULL,
  `student_1_reg_no` int(8) NOT NULL,
  `student_1_email` varchar(100) NOT NULL,
  `student_1_ph_no` decimal(10,0) NOT NULL,
  `student_2_name` varchar(50) DEFAULT NULL,
  `student_2_reg_no` int(8) DEFAULT NULL,
  `student_2_email` varchar(100) DEFAULT NULL,
  `student_2_ph_no` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guide_marygladence`
--

CREATE TABLE `guide_marygladence` (
  `id` int(11) NOT NULL,
  `student_1_name` varchar(50) NOT NULL,
  `student_1_reg_no` int(8) NOT NULL,
  `student_1_email` varchar(100) NOT NULL,
  `student_1_ph_no` decimal(10,0) NOT NULL,
  `student_2_name` varchar(50) DEFAULT NULL,
  `student_2_reg_no` int(8) DEFAULT NULL,
  `student_2_email` varchar(100) DEFAULT NULL,
  `student_2_ph_no` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guide_mathivanan`
--

CREATE TABLE `guide_mathivanan` (
  `id` int(11) NOT NULL,
  `student_1_name` varchar(50) NOT NULL,
  `student_1_reg_no` int(8) NOT NULL,
  `student_1_email` varchar(100) NOT NULL,
  `student_1_ph_no` decimal(10,0) NOT NULL,
  `student_2_name` varchar(50) DEFAULT NULL,
  `student_2_reg_no` int(8) DEFAULT NULL,
  `student_2_email` varchar(100) DEFAULT NULL,
  `student_2_ph_no` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guide_nirmalrani`
--

CREATE TABLE `guide_nirmalrani` (
  `id` int(11) NOT NULL,
  `student_1_name` varchar(50) NOT NULL,
  `student_1_reg_no` int(8) NOT NULL,
  `student_1_email` varchar(100) NOT NULL,
  `student_1_ph_no` decimal(10,0) NOT NULL,
  `student_2_name` varchar(50) DEFAULT NULL,
  `student_2_reg_no` int(8) DEFAULT NULL,
  `student_2_email` varchar(100) DEFAULT NULL,
  `student_2_ph_no` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guide_revathy`
--

CREATE TABLE `guide_revathy` (
  `id` int(11) NOT NULL,
  `student_1_name` varchar(50) NOT NULL,
  `student_1_reg_no` int(8) NOT NULL,
  `student_1_email` varchar(100) NOT NULL,
  `student_1_ph_no` decimal(10,0) NOT NULL,
  `student_2_name` varchar(50) DEFAULT NULL,
  `student_2_reg_no` int(8) DEFAULT NULL,
  `student_2_email` varchar(100) DEFAULT NULL,
  `student_2_ph_no` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guide_sendurusrinivasulu`
--

CREATE TABLE `guide_sendurusrinivasulu` (
  `id` int(11) NOT NULL,
  `student_1_name` varchar(50) NOT NULL,
  `student_1_reg_no` int(8) NOT NULL,
  `student_1_email` varchar(100) NOT NULL,
  `student_1_ph_no` decimal(10,0) NOT NULL,
  `student_2_name` varchar(50) DEFAULT NULL,
  `student_2_reg_no` int(8) DEFAULT NULL,
  `student_2_email` varchar(100) DEFAULT NULL,
  `student_2_ph_no` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guide_sivasangari`
--

CREATE TABLE `guide_sivasangari` (
  `id` int(11) NOT NULL,
  `student_1_name` varchar(50) NOT NULL,
  `student_1_reg_no` int(8) NOT NULL,
  `student_1_email` varchar(100) NOT NULL,
  `student_1_ph_no` decimal(10,0) NOT NULL,
  `student_2_name` varchar(50) NOT NULL,
  `student_2_reg_no` int(8) NOT NULL,
  `student_2_email` varchar(100) NOT NULL,
  `student_2_ph_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guide_subhashini`
--

CREATE TABLE `guide_subhashini` (
  `id` int(11) NOT NULL,
  `student_1_name` varchar(50) NOT NULL,
  `student_1_reg_no` int(8) NOT NULL,
  `student_1_email` varchar(100) NOT NULL,
  `student_1_ph_no` decimal(10,0) NOT NULL,
  `student_2_name` varchar(50) DEFAULT NULL,
  `student_2_reg_no` int(8) DEFAULT NULL,
  `student_2_email` varchar(100) DEFAULT NULL,
  `student_2_ph_no` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guide_veeramuthu`
--

CREATE TABLE `guide_veeramuthu` (
  `id` int(11) NOT NULL,
  `student_1_name` varchar(50) NOT NULL,
  `student_1_reg_no` int(8) NOT NULL,
  `student_1_email` varchar(100) NOT NULL,
  `student_1_ph_no` decimal(10,0) NOT NULL,
  `student_2_name` varchar(50) DEFAULT NULL,
  `student_2_reg_no` int(8) DEFAULT NULL,
  `student_2_email` varchar(100) DEFAULT NULL,
  `student_2_ph_no` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` int(11) NOT NULL,
  `guide_name` varchar(50) NOT NULL,
  `student_1_name` varchar(50) NOT NULL,
  `student_1_reg_no` int(8) NOT NULL,
  `student_1_ph_no` decimal(10,0) NOT NULL,
  `student_1_email` varchar(100) NOT NULL,
  `student_2_name` varchar(50) NOT NULL,
  `student_2_reg_no` int(8) NOT NULL,
  `student_2_ph_no` decimal(10,0) NOT NULL,
  `student_2_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_credentials`
--
ALTER TABLE `admin_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_ajitha`
--
ALTER TABLE `guide_ajitha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_bevish`
--
ALTER TABLE `guide_bevish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_brumancia`
--
ALTER TABLE `guide_brumancia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_gomathi`
--
ALTER TABLE `guide_gomathi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_gowri`
--
ALTER TABLE `guide_gowri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_jabez`
--
ALTER TABLE `guide_jabez`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_jeberson`
--
ALTER TABLE `guide_jeberson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_jeyanthi`
--
ALTER TABLE `guide_jeyanthi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_marygladence`
--
ALTER TABLE `guide_marygladence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_mathivanan`
--
ALTER TABLE `guide_mathivanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_nirmalrani`
--
ALTER TABLE `guide_nirmalrani`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_revathy`
--
ALTER TABLE `guide_revathy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_sendurusrinivasulu`
--
ALTER TABLE `guide_sendurusrinivasulu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_sivasangari`
--
ALTER TABLE `guide_sivasangari`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_subhashini`
--
ALTER TABLE `guide_subhashini`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_veeramuthu`
--
ALTER TABLE `guide_veeramuthu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_credentials`
--
ALTER TABLE `admin_credentials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `guide_ajitha`
--
ALTER TABLE `guide_ajitha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guide_bevish`
--
ALTER TABLE `guide_bevish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guide_brumancia`
--
ALTER TABLE `guide_brumancia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guide_gomathi`
--
ALTER TABLE `guide_gomathi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guide_gowri`
--
ALTER TABLE `guide_gowri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guide_jabez`
--
ALTER TABLE `guide_jabez`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guide_jeberson`
--
ALTER TABLE `guide_jeberson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guide_jeyanthi`
--
ALTER TABLE `guide_jeyanthi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guide_marygladence`
--
ALTER TABLE `guide_marygladence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guide_mathivanan`
--
ALTER TABLE `guide_mathivanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guide_nirmalrani`
--
ALTER TABLE `guide_nirmalrani`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guide_revathy`
--
ALTER TABLE `guide_revathy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guide_sendurusrinivasulu`
--
ALTER TABLE `guide_sendurusrinivasulu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guide_sivasangari`
--
ALTER TABLE `guide_sivasangari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guide_subhashini`
--
ALTER TABLE `guide_subhashini`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guide_veeramuthu`
--
ALTER TABLE `guide_veeramuthu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

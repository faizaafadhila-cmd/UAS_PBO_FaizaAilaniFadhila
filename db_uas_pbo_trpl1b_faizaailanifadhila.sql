-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 23, 2026 at 03:06 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uas_pbo_trpl1b_faizaailanifadhila`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_karyawan`
--

CREATE TABLE `tabel_karyawan` (
  `id_karyawan` int NOT NULL,
  `nama_karyawan` varchar(100) NOT NULL,
  `departement` varchar(50) NOT NULL,
  `hari_kerja_masuk` date NOT NULL,
  `gaji_dasar_per_hari` decimal(15,2) NOT NULL,
  `jenis_karyawan` enum('Kontrak','Tetap','Magang') NOT NULL,
  `durasi_kontrak_bulan` int DEFAULT NULL,
  `agensi_penyalur` varchar(100) DEFAULT NULL,
  `tunjangan_kesehatan` decimal(15,2) DEFAULT NULL,
  `opsi_saham_id` varchar(50) DEFAULT NULL,
  `uang_saku_bulanan` decimal(15,2) DEFAULT NULL,
  `sertifikat_kampus_merdeka` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_karyawan`
--

INSERT INTO `tabel_karyawan` (`id_karyawan`, `nama_karyawan`, `departement`, `hari_kerja_masuk`, `gaji_dasar_per_hari`, `jenis_karyawan`, `durasi_kontrak_bulan`, `agensi_penyalur`, `tunjangan_kesehatan`, `opsi_saham_id`, `uang_saku_bulanan`, `sertifikat_kampus_merdeka`) VALUES
(1, 'Budi Santoso', 'IT', '2025-01-15', 150000.00, 'Kontrak', 12, 'PT Tech Solution', 500000.00, NULL, NULL, NULL),
(2, 'Siti Rahayu', 'HRD', '2025-02-01', 120000.00, 'Kontrak', 6, 'PT Sumber Daya Manusia', 300000.00, NULL, NULL, NULL),
(3, 'Agus Wijaya', 'Marketing', '2025-03-10', 130000.00, 'Kontrak', 12, 'PT Kreatif Media', 400000.00, NULL, NULL, NULL),
(4, 'Dewi Lestari', 'Finance', '2025-04-05', 140000.00, 'Kontrak', 9, 'PT Solusi Keuangan', 450000.00, NULL, NULL, NULL),
(5, 'Rudi Hermawan', 'IT', '2025-05-20', 160000.00, 'Kontrak', 6, 'PT Tech Solution', 500000.00, NULL, NULL, NULL),
(6, 'Anita Marlina', 'Sales', '2025-06-01', 125000.00, 'Kontrak', 12, 'PT Mitra Niaga', 350000.00, NULL, NULL, NULL),
(7, 'Fajar Prasetyo', 'Operasional', '2025-07-15', 135000.00, 'Kontrak', 9, 'PT Logistik Cepat', 400000.00, NULL, NULL, NULL),
(8, 'Eko Prabowo', 'IT', '2024-01-10', 200000.00, 'Tetap', NULL, NULL, 1000000.00, 'SAHAM001', NULL, NULL),
(9, 'Rina Anggraeni', 'HRD', '2024-02-15', 180000.00, 'Tetap', NULL, NULL, 800000.00, 'SAHAM002', NULL, NULL),
(10, 'Bambang Supriyadi', 'Marketing', '2024-03-20', 190000.00, 'Tetap', NULL, NULL, 900000.00, 'SAHAM003', NULL, NULL),
(11, 'Sri Mulyani', 'Finance', '2024-04-01', 210000.00, 'Tetap', NULL, NULL, 1100000.00, 'SAHAM004', NULL, NULL),
(12, 'Hendra Gunawan', 'IT', '2024-05-05', 220000.00, 'Tetap', NULL, NULL, 1200000.00, 'SAHAM005', NULL, NULL),
(13, 'Indah Permata', 'Sales', '2024-06-10', 175000.00, 'Tetap', NULL, NULL, 750000.00, 'SAHAM006', NULL, NULL),
(14, 'Yudi Setiawan', 'Operasional', '2024-07-15', 170000.00, 'Tetap', NULL, NULL, 700000.00, 'SAHAM007', NULL, NULL),
(15, 'Maya Putri', 'IT', '2025-08-01', 80000.00, 'Magang', NULL, NULL, NULL, NULL, 1500000.00, 'MSIB-2025-001'),
(16, 'Rizky Fadillah', 'HRD', '2025-08-15', 75000.00, 'Magang', NULL, NULL, NULL, NULL, 1400000.00, 'MSIB-2025-002'),
(17, 'Dinda Puspita', 'Marketing', '2025-09-01', 70000.00, 'Magang', NULL, NULL, NULL, NULL, 1300000.00, 'MSIB-2025-003'),
(18, 'Andre Pratama', 'IT', '2025-09-15', 85000.00, 'Magang', NULL, NULL, NULL, NULL, 1600000.00, 'MSIB-2025-004'),
(19, 'Nadia Safira', 'Finance', '2025-10-01', 78000.00, 'Magang', NULL, NULL, NULL, NULL, 1450000.00, 'MSIB-2025-005'),
(20, 'Gilang Ramadhan', 'Sales', '2025-10-15', 72000.00, 'Magang', NULL, NULL, NULL, NULL, 1350000.00, 'MSIB-2025-006');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_karyawan`
--
ALTER TABLE `tabel_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_karyawan`
--
ALTER TABLE `tabel_karyawan`
  MODIFY `id_karyawan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

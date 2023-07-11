-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 12:34 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `hubungan`
--

CREATE TABLE `hubungan` (
  `id` int(8) NOT NULL,
  `siswa_id` int(8) DEFAULT NULL,
  `ortu_id` int(8) DEFAULT NULL,
  `status_hub` enum('kandung','angkat','wali') DEFAULT NULL,
  `keterangan` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hubungan`
--

INSERT INTO `hubungan` (`id`, `siswa_id`, `ortu_id`, `status_hub`, `keterangan`) VALUES
(1, 1, 1, 'kandung', NULL),
(2, 2, 2, 'kandung', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(8) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `jenis` varchar(20) DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `jenis`, `jurusan`) VALUES
(1, '1', 'A', 'IPA'),
(2, '1', 'A', 'IPS');

-- --------------------------------------------------------

--
-- Table structure for table `ortu`
--

CREATE TABLE `ortu` (
  `id` int(8) NOT NULL,
  `nik` bigint(18) DEFAULT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `pendidikan` varchar(20) DEFAULT NULL,
  `pekerjaan` varchar(20) DEFAULT NULL,
  `telp` varchar(14) DEFAULT NULL,
  `alamat` varchar(40) DEFAULT NULL,
  `agama` varchar(15) DEFAULT NULL,
  `jk` tinyint(1) DEFAULT NULL,
  `status` enum('hidup','meninggal','wali') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ortu`
--

INSERT INTO `ortu` (`id`, `nik`, `nama`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `agama`, `jk`, `status`) VALUES
(1, 6202131205030008, 'Hairuddin', 'SMA', 'Karyawan', '084567815456', 'Desa Angsana RT.04/RW.01', 'Islam', 1, 'hidup'),
(2, 6202131508030001, 'Tohirin', 'SMP', 'Karyawan', '082154496856', 'Desa Mekar Jaya RT.05/RW.04', 'Islam', 1, 'hidup');

-- --------------------------------------------------------

--
-- Table structure for table `poin`
--

CREATE TABLE `poin` (
  `id` int(8) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `bobot` int(3) DEFAULT NULL,
  `jenis` enum('prestasi','pelanggaran') DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poin`
--

INSERT INTO `poin` (`id`, `nama`, `bobot`, `jenis`, `status`) VALUES
(1, 'Siswa Teladan', 35, 'prestasi', 1),
(2, 'Juara Kelas Peringkat I', 20, 'prestasi', 1),
(3, 'Juara Kelas Peringkat I', 15, 'prestasi', 1),
(4, 'Juara Kelas Peringkat I', 10, 'prestasi', 1),
(5, 'Juara Umum', 30, 'prestasi', 0),
(6, 'Juara I Lomba Tingkat Kab/Kota', 15, 'prestasi', 1),
(7, 'Juara II Lomba Tingkat Kab/Kota', 10, 'prestasi', 1),
(8, 'Juara III Lomba Tingkat Kab/Kota', 5, 'prestasi', 1),
(9, 'Juara I Lomba Tingkat Provinsi', 30, 'prestasi', 1),
(10, 'Juara II Lomba Tingkat Provinsi', 25, 'prestasi', 1),
(11, 'Juara III Lomba Tingkat Provinsi', 20, 'prestasi', 1),
(12, 'Juara I Lomba Tingkat Nasional', 75, 'prestasi', 1),
(13, 'Juara II Lomba Tingkat Nasional', 60, 'prestasi', 1),
(14, 'Juara III Lomba Tingkat Nasional', 45, 'prestasi', 1),
(15, 'Datang terlambat', 5, 'pelanggaran', 1),
(16, 'Keluar kelas tanpa izin', 5, 'pelanggaran', 1),
(17, 'Tidak melaksanakan tugas piket sekolah', 5, 'pelanggaran', 1),
(18, 'Tidak berseragam lengkap dan rapi/olah raga ', 5, 'pelanggaran', 1),
(19, 'Membuang sampah tidak pada tempatnya', 5, 'pelanggaran', 1),
(20, 'Mencoret-coret tembok/meja/kursi, dan merusak tanaman', 5, 'pelanggaran', 1),
(21, 'Siswa memasuki runag Kepala Madrasah (Guru/Tu/Laboratorium/Perpustakaan) tanpa izin sebelumnya', 5, 'pelanggaran', 1),
(22, 'Menggunakan perhiasan yang berlebihan', 5, 'pelanggaran', 1),
(23, 'Rambut gondrong/memakai gelang, anting, kalung bagi pria', 5, 'pelanggaran', 1),
(24, 'Rambut di cat, kuku panjang, kuku di cat', 5, 'pelanggaran', 1),
(25, 'Tidak mengikuti kegiatan madrasah/ekstra kurikuler', 5, 'pelanggaran', 1),
(26, 'Perbuatan tidak menyenangkan', 5, 'pelanggaran', 1),
(27, 'Melakukan olah raga pada jam pelajaran lain/jam istirahat', 5, 'pelanggaran', 1),
(28, 'Keluar halaman madrasah tanpa ijin/alpa', 10, 'pelanggaran', 1),
(29, 'Melompat pagar atau jendela', 10, 'pelanggaran', 1),
(30, 'Tidak mengikuti sholat berjamaah', 10, 'pelanggaran', 1),
(31, 'Membawa barang-barang yang tidak ada kaitannya dengan pelajaran', 10, 'pelanggaran', 1),
(32, 'Mengacau sekolah/kelas', 10, 'pelanggaran', 1),
(33, 'Tidur di kelas pada saat jam pelajaran', 10, 'pelanggaran', 1),
(34, 'Terlibat perkelahian ringan', 10, 'pelanggaran', 1),
(35, 'Membuat izin palsu/tanda tangan palsu', 10, 'pelanggaran', 1),
(36, 'Siswa berlainan jenis berduaan', 20, 'pelanggaran', 1),
(37, 'Bergandengan tangan', 20, 'pelanggaran', 1),
(38, 'Membawa HP/menggunakan pada saat pelajaran', 20, 'pelanggaran', 1),
(39, 'Memalsu raport', 25, 'pelanggaran', 1),
(40, 'Membawa buku/gambar/vidio porno', 25, 'pelanggaran', 1),
(41, 'Merusak sarana prasaran madrasah', 25, 'pelanggaran', 1),
(42, 'Bersikap tidak sopan/menentang guru', 25, 'pelanggaran', 1),
(43, 'Menyinggung guru/karyawan', 25, 'pelanggaran', 1),
(44, 'Merokok/membawa rokok di dalam lingkungan madrasah', 25, 'pelanggaran', 1),
(45, 'Mengambil barang tanpa izin pemiliknya atau membajak siswa lain', 25, 'pelanggaran', 1),
(46, 'Terlibat perkelahian berat (tauran)/Pencurian di luar sekolah', 75, 'pelanggaran', 1),
(47, 'Membawa minum-minuman keras, Mabuk atau sejenisnya', 75, 'pelanggaran', 1),
(48, 'Terlibat penyalahgunaan narkoba/obat terlarang lainnya', 75, 'pelanggaran', 1),
(49, 'Berurusan dengan pihak berwajib karena tindakan kejahatan/kriminal', 75, 'pelanggaran', 1),
(50, 'Membawa senjata tajam tanpa sepengetahuan Madrasah', 75, 'pelanggaran', 1),
(51, 'Berjudi di sekolah dan di lingkugan madrasah', 75, 'pelanggaran', 1),
(52, 'Mengancam guru/Karyawan Madrasah', 75, 'pelanggaran', 1),
(53, 'Siswa berlainan jenis, berpelukan, berciuman', 75, 'pelanggaran', 1),
(54, 'Berzinah', 100, 'pelanggaran', 1),
(55, 'Menikah', 100, 'pelanggaran', 1),
(56, 'Hamil/Menghamili', 100, 'pelanggaran', 1),
(57, 'Membawa senjata tajam untuk melukai', 100, 'pelanggaran', 1);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_poin`
--

CREATE TABLE `riwayat_poin` (
  `id` int(8) NOT NULL,
  `siswa_id` int(8) DEFAULT NULL,
  `poin_id` int(8) DEFAULT NULL,
  `wali_id` int(8) DEFAULT NULL,
  `ortu_id` int(8) DEFAULT NULL,
  `kelas_id` int(8) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `semester` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riwayat_poin`
--

INSERT INTO `riwayat_poin` (`id`, `siswa_id`, `poin_id`, `wali_id`, `ortu_id`, `kelas_id`, `tanggal`, `semester`, `status`) VALUES
(1, 1, 12, 2, 1, 1, '2023-07-04', 2, 1),
(2, 1, 3, 1, 2, 2, '2023-07-12', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(8) NOT NULL,
  `user_id` int(8) DEFAULT NULL,
  `nis` bigint(10) DEFAULT NULL,
  `nisn` bigint(10) DEFAULT NULL,
  `nama_siswa` varchar(40) DEFAULT NULL,
  `nik` bigint(18) DEFAULT NULL,
  `tempat_lahir` varchar(40) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` tinyint(1) DEFAULT NULL,
  `tingkat_kelas` enum('1','2','3','4','5','6') DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL,
  `wali_kelas` varchar(40) DEFAULT NULL,
  `alamat` varchar(40) DEFAULT NULL,
  `telp` varchar(14) DEFAULT NULL,
  `hp` varchar(14) DEFAULT NULL,
  `status` enum('aktif','nonaktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `user_id`, `nis`, `nisn`, `nama_siswa`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `tingkat_kelas`, `jurusan`, `wali_kelas`, `alamat`, `telp`, `hp`, `status`) VALUES
(1, 2, 18547788, 37599466, 'Dimas Adi Nugroho', 6202131205030001, 'Palangkaraya', '2003-05-12', 1, '1', 'IPA', 'Rahmini', 'Desa Angsana RT.04/RW.01', '082148524506', '082148524506', 'aktif'),
(2, 4, 18547789, 37599488, 'Wilda Rahmadhania', 6202131508030006, 'Brebes', '2003-10-29', 0, '1', 'IPS', 'Muhammad Subli', 'Desa Mekar Jaya RT.05/RW.04', '08534589327', '08534589327', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(8) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `level` enum('admin','guru','siswa') DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `password`, `level`, `status`) VALUES
(1, 'admin', 'admin', 'admin', 1),
(2, 'Dimas', '123', 'siswa', 1),
(3, 'Rahmini', '123', 'guru', 1),
(4, 'Wilda', '123', 'siswa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id` int(8) NOT NULL,
  `user_id` int(8) DEFAULT NULL,
  `nik/nip` bigint(18) DEFAULT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `jk` tinyint(1) DEFAULT NULL,
  `alamat` varchar(40) DEFAULT NULL,
  `telp` varchar(14) DEFAULT NULL,
  `matpel` varchar(20) DEFAULT NULL,
  `pendidikan` varchar(30) DEFAULT NULL,
  `status` enum('aktif','nonaktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`id`, `user_id`, `nik/nip`, `nama`, `jk`, `alamat`, `telp`, `matpel`, `pendidikan`, `status`) VALUES
(1, NULL, 199180007676150300, 'Muhammad Subli', 1, 'Jl. Sumber Baru', '083159318569', 'Agama Islam', 'S1 Pendidikan Islam', 'aktif'),
(2, 3, 199180007676150301, 'Rahmini', 0, 'Jl. Alamunda', '083159318000', 'Matematika', 'S1 Pendidikan Matematika', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hubungan`
--
ALTER TABLE `hubungan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ortu_id` (`ortu_id`),
  ADD KEY `siswa_id` (`siswa_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ortu`
--
ALTER TABLE `ortu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poin`
--
ALTER TABLE `poin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `wali_id` (`wali_id`),
  ADD KEY `ortu_id` (`ortu_id`),
  ADD KEY `poin_id` (`poin_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hubungan`
--
ALTER TABLE `hubungan`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ortu`
--
ALTER TABLE `ortu`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `poin`
--
ALTER TABLE `poin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hubungan`
--
ALTER TABLE `hubungan`
  ADD CONSTRAINT `hubungan_ibfk_1` FOREIGN KEY (`ortu_id`) REFERENCES `ortu` (`id`),
  ADD CONSTRAINT `hubungan_ibfk_2` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`);

--
-- Constraints for table `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  ADD CONSTRAINT `riwayat_poin_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`),
  ADD CONSTRAINT `riwayat_poin_ibfk_2` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `riwayat_poin_ibfk_3` FOREIGN KEY (`wali_id`) REFERENCES `wali_kelas` (`id`),
  ADD CONSTRAINT `riwayat_poin_ibfk_4` FOREIGN KEY (`ortu_id`) REFERENCES `ortu` (`id`),
  ADD CONSTRAINT `riwayat_poin_ibfk_5` FOREIGN KEY (`poin_id`) REFERENCES `poin` (`id`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD CONSTRAINT `wali_kelas_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

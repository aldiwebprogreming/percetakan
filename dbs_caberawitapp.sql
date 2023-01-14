-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2023 at 07:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbs_caberawitapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `kode`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(3, 'kode-155', 'Softcover', '2023-01-11 23:47:30', '2023-01-12 01:11:29'),
(4, 'kode-10694', 'Harcover', '2023-01-12 01:11:20', '2023-01-12 01:11:20'),
(5, 'kode-6143', 'Isi Yasin', '2023-01-12 01:14:52', '2023-01-12 01:14:52');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_12_040517_create_kategoris_table', 1),
(6, '2023_01_12_070017_create_produks_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produks`
--

CREATE TABLE `produks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_all` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produks`
--

INSERT INTO `produks` (`id`, `kode`, `nama`, `kategori`, `gambar`, `gambar_all`, `keterangan`, `created_at`, `updated_at`) VALUES
(4, 'produk-8884', 'PREMIUM LUX SPON DE\' CORONA', 'Harcover', 'UdtjDpBuOfeX5vlcjgGt5PuO3RR5nNuL5YcIbBGB.jpg', 'jzqzJNAlyGkTYuydDnuTi9p3IlJz6t0tYRGKfvB7.jpg XidmDt4abmiKsnTTppo5rMDsos8d6wE0csRI0Occ.jpg XidmDt4abmiKsnTTppo5rMDsos8d6wE0csRI0Occ.jpg', 'Deskripsi Produk\r\n• Hard cover bahan Kulit Sintetis Import (LIMITED EDITION)\r\n• Cover dilapisi Spon\r\n• Motif Embos\r\n\r\n- Harga Tergantung isi Buku yang dipakai :\r\nYASIN 208 HALAMAN HVS ----> 24.500\r\nYASIN 196 HALAMAN AP ----> 26.500\r\nYAAIN 208 HALAMAN AP ----> 28.500\r\nYASIN 224 HALAMAN AP ----> 31.500\r\nYASIN 248 HALAMAN AP ----> 33.500\r\nYASIN 224 HALAMAN AP JUMBO ----> 34.500\r\n\r\n)', '2023-01-13 00:30:35', '2023-01-13 00:30:35'),
(5, 'produk-8701', 'PREMIUM LUX SPON PERSIA', 'Harcover', 'yLFOxPEXhGlAQueI87tuO0Ihwpxkm3tK3pUkAm1i.jpg', 'bB7sQByIhiWU4sJfkVEb3nvm2BEaOKhYyOuiCVDb.jpg qP8ZJ8llBN1AM4I2Kk55jSZkzl02B8Digos7yW1S.jpg qP8ZJ8llBN1AM4I2Kk55jSZkzl02B8Digos7yW1S.jpg', 'Deskripsi Produk\r\n• Hard cover bahan Kulit Sintetis Import (LIMITED EDITION)\r\n• Cover dilapisi Spon\r\n• Motif Embos\r\n\r\n- Harga Tergantung isi Buku yang dipakai :\r\nYASIN 208 HALAMAN HVS ----> 24.500\r\nYASIN 196 HALAMAN AP ----> 26.500\r\nYAAIN 208 HALAMAN AP ----> 28.500\r\nYASIN 224 HALAMAN AP ----> 31.500\r\nYASIN 248 HALAMAN AP ----> 33.500\r\nYASIN 224 HALAMAN AP JUMBO ----> 34.500\r\n\r\nMAJMU SYARIF 464 HALAMAN HVS -----> 34.500\r\nMAJMU SYARIF 484 HALAMAN HVS -----> 36.500\r\nMAJMU SYARIF 484 HALAMAN AP ------> 41.500\r\nMAJMU SYARIF 496 HALAMAN AP JUMBO ------> 48.500\r\n- Bahan kertas halaman dalam :\r\n* HVS isi kertas HVS putih 70 gram (Grade A) seperti buku tulis\r\n* AP isi kertas Art Paper glossy 100 gram (Seperti Kertas Majalah)\r\n• Ukuran buku biasa 12,5 cm x 16 cm\r\n• Ukuran buku Jumbo 13,5 cm x 19 cm\r\n• Buku yasin di jahit benang dan di lem panas sehingga tidak mudah lepas/sobek\r\n• Pembatas buku jambul / rumbai\r\n• Tambahan free 6 halaman, 1 halaman Foto dan 5 halaman redaksi\r\n• Dilengkapi Surat Yasin, Tahlil, dan Doa Tahlil.\r\n• Proses Pengerjaan 12 hari Kerja Setelah ACC Redaksi Tambahan\r\n• Surat-surat pilihan dan Doa-doa pilihan :\r\n- Surat Al-Waqiah, Ar-Rahman, Al-Mulk, dan Al-Kahfi.\r\n\r\nINFO LENGKAP SILAHKAN CHAT...!!!\r\n\r\nNB :\r\n- MINIMAL PEMESANAN 50 PCS (dibawah 50 pcs harga berbeda)', '2023-01-13 00:31:27', '2023-01-13 00:31:27'),
(6, 'produk-1036', 'PREMIUM LUX SPON BELUDRU SERIES', 'Harcover', 'n49u9oSQbgusQO5NrvL5bgplKdIr6PylrDbFHTaD.jpg', 'MJJ9psvecS495zxwmp1ksfxmv3e6bMIZXUvoiR0N.jpg 9FCgqPeAgazEp0EOymSjc2w3TMn8GZPA4Nxyyj4e.jpg 9FCgqPeAgazEp0EOymSjc2w3TMn8GZPA4Nxyyj4e.jpg', 'Deskripsi Produk\r\n• Hard cover bahan Kulit Sintetis Import (LIMITED EDITION)\r\n• Cover dilapisi Spon\r\n• Motif Embos\r\n\r\n- Harga Tergantung isi Buku yang dipakai :\r\nYASIN 208 HALAMAN HVS ----> 24.500\r\nYASIN 196 HALAMAN AP ----> 26.500\r\nYAAIN 208 HALAMAN AP ----> 28.500\r\nYASIN 224 HALAMAN AP ----> 31.500\r\nYASIN 248 HALAMAN AP ----> 33.500\r\nYASIN 224 HALAMAN AP JUMBO ----> 34.500\r\n\r\nMAJMU SYARIF 464 HALAMAN HVS -----> 34.500\r\nMAJMU SYARIF 484 HALAMAN HVS -----> 36.500\r\nMAJMU SYARIF 484 HALAMAN AP ------> 41.500\r\nMAJMU SYARIF 496 HALAMAN AP JUMBO ------> 48.500\r\n- Bahan kertas halaman dalam :\r\n* HVS isi kertas HVS putih 70 gram (Grade A) seperti buku tulis\r\n* AP isi kertas Art Paper glossy 100 gram (Seperti Kertas Majalah)\r\n• Ukuran buku biasa 12,5 cm x 16 cm\r\n• Ukuran buku Jumbo 13,5 cm x 19 cm\r\n• Buku yasin di jahit benang dan di lem panas sehingga tidak mudah lepas/sobek\r\n• Pembatas buku jambul / rumbai\r\n• Tambahan free 6 halaman, 1 halaman Foto dan 5 halaman redaksi\r\n• Dilengkapi Surat Yasin, Tahlil, dan Doa Tahlil.\r\n• Proses Pengerjaan 12 hari Kerja Setelah ACC Redaksi Tambahan\r\n• Surat-surat pilihan dan Doa-doa pilihan :\r\n- Surat Al-Waqiah, Ar-Rahman, Al-Mulk, dan Al-Kahfi.\r\n\r\nINFO LENGKAP SILAHKAN CHAT...!!!\r\n\r\nNB :\r\n- MINIMAL PEMESANAN 50 PCS (dibawah 50 pcs harga berbeda)', '2023-01-13 00:32:28', '2023-01-13 00:32:28'),
(7, 'produk-644', 'Premium lux spon kristal', 'Harcover', 'zuRehRxjZIBXZrXpZcsbN7xgj4b8R5A4UiAmPJei.jpg', 'ECUW3FS8nTLf7coYWudcOJnehz0okEiFXnqqgerK.jpg DWqXpohueJy5zLkRmQRkZE0rgRS8ss1B1dw5aJe0.jpg DWqXpohueJy5zLkRmQRkZE0rgRS8ss1B1dw5aJe0.jpg', 'Deskripsi Produk\r\n• Hard cover bahan Kulit Sintetis Import (LIMITED EDITION)\r\n• Cover dilapisi Spon\r\n• Motif Embos\r\n\r\n- Harga Tergantung isi Buku yang dipakai :\r\nYASIN 208 HALAMAN HVS ----> 24.500\r\nYASIN 196 HALAMAN AP ----> 26.500\r\nYAAIN 208 HALAMAN AP ----> 28.500\r\nYASIN 224 HALAMAN AP ----> 31.500\r\nYASIN 248 HALAMAN AP ----> 33.500\r\nYASIN 224 HALAMAN AP JUMBO ----> 34.500\r\n\r\nMAJMU SYARIF 464 HALAMAN HVS -----> 34.500\r\nMAJMU SYARIF 484 HALAMAN HVS -----> 36.500\r\nMAJMU SYARIF 484 HALAMAN AP ------> 41.500\r\nMAJMU SYARIF 496 HALAMAN AP JUMBO ------> 48.500\r\n- Bahan kertas halaman dalam :\r\n* HVS isi kertas HVS putih 70 gram (Grade A) seperti buku tulis\r\n* AP isi kertas Art Paper glossy 100 gram (Seperti Kertas Majalah)\r\n• Ukuran buku biasa 12,5 cm x 16 cm\r\n• Ukuran buku Jumbo 13,5 cm x 19 cm\r\n• Buku yasin di jahit benang dan di lem panas sehingga tidak mudah lepas/sobek\r\n• Pembatas buku jambul / rumbai\r\n• Tambahan free 6 halaman, 1 halaman Foto dan 5 halaman redaksi\r\n• Dilengkapi Surat Yasin, Tahlil, dan Doa Tahlil.\r\n• Proses Pengerjaan 12 hari Kerja Setelah ACC Redaksi Tambahan\r\n• Surat-surat pilihan dan Doa-doa pilihan :\r\n- Surat Al-Waqiah, Ar-Rahman, Al-Mulk, dan Al-Kahfi.\r\n\r\nINFO LENGKAP SILAHKAN CHAT...!!!\r\n\r\nNB :\r\n- MINIMAL PEMESANAN 50 PCS (dibawah 50 pcs harga berbeda)', '2023-01-13 00:33:15', '2023-01-13 00:33:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produks`
--
ALTER TABLE `produks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

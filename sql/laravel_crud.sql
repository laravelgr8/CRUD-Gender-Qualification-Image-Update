-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2021 at 01:12 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_crud`
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
(4, '2021_07_27_034008_create_students_table', 1);

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
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `mobile`, `gender`, `qualification`, `pic`, `created_at`, `updated_at`) VALUES
(1, 'suman', 'suman@gmail.com', '$2y$10$JDqIDdUdhtdr3clNa6y1nua./aiOMOW39ZQf07uU2nrIS7J0rJSCi', '8349655712', 'Male', 'MCA,BCA', NULL, NULL, NULL),
(2, 'Neha', 'neha@gmail.com', '$2y$10$cAllN26qr/e4sD0zu2cFoeMGgCll/744eJuhz2kaYJJBUqBUOcQie', '9430031287', 'Male', 'MCA,BCA', '1627476042.jpg', NULL, NULL),
(3, 'Dexter Emmerich', 'selmer@example.net', '$2y$10$UELFMfNQ.zbS30P0JwFIouE6./8K/p.KDroLZsIwJc7EUIi6yTFBC', '888888887', 'Male', 'BCA,B.Tech', NULL, NULL, NULL),
(4, 'Theodora Wintheiser', 'matt59@example.com', '$2y$10$eN.2Mc4dUacHoTuNQaTNKeiUP.PfV0BTAPojjaMVKu0KZxsuuk6KK', '8787487459', NULL, NULL, NULL, NULL, NULL),
(5, 'Dr. Aliyah Romaguera', 'areilly@example.com', '$2y$10$pTQ7KAuTBEPXfjbflo.RIuFFY6nYE5Q3Nr5ig5tFjJPCjjxXGLncS', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Mr. Xander Mraz Sr.', 'uernser@example.net', '$2y$10$C8snLSgXNJu8HEZEK.nDf.mI8mjH1RbGnn8AxJXRG/nGY5SFm5CoW', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Yadira Ernser II', 'effie64@example.net', '$2y$10$VeMV35JyW0lhE8paPsSqOuNML8MUqvoQ2QkZuoUdadP82TXpIWdKa', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Miss Violette Wolff', 'dubuque.meredith@example.net', '$2y$10$f0JcCEGPbMDHth3KdAE7QOt.uvY.lj.OxcF9055k/wQJPeakWHI6m', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Alysa Upton', 'jerald34@example.org', '$2y$10$q7cEeLXbO7/ZjQqKSFIJw.aOboKYxp6aP1oLi26YigMr47KVcd2/y', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Miss Evangeline Marks V', 'rex.lind@example.net', '$2y$10$OMh99t/yBU79UzhhiP65r.8du/tdkK5Q6zxy09bZFFhM4zQ7jj74m', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'aman', 'aman@gmail.com', '$2y$10$Ia4XGPFXcLvwqXXPf6JXoOocmJGnIQ5tAYcavvEbgTRUDwpEnj50G', '78474571247', 'Male', 'BCA', '1627372951.jpg', NULL, NULL),
(17, 'kishu', 'kishu@gmail.com', '$2y$10$OBDIOEuTo0Uiw5.QKNzBlOc7EEwM8tbHjI3g8Ego33btW2zDVodBy', NULL, 'Male', 'B.Tech', NULL, NULL, NULL),
(18, 'micki', 'micki@gmail.com', '$2y$10$PaE7IJeZlbXu03GKKOABKuOfopifEMiHuhUQrk/hw5jB36FE7k19e', '9122585004', 'Female', 'B.Tech', NULL, NULL, NULL),
(39, 'anu2', 'anu@gmail.com', '$2y$10$GP74ixcuBdP04Kil2qbKheHcy7OFCHaZ6ZrA1Imkrk3l2H92MvXYG', '8745782547', 'Female', 'B.Tech', '1627475827.jpg', NULL, NULL),
(40, 'Aditi', 'aditi@gmail.com', '$2y$10$SurdO1/73vJG.8rcJjrac.itYPBUuodcx.Drp7eOSumfEh4nXf2AK', '745874259', 'Female', 'B.Tech', '1627473738.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `id` int(11) NOT NULL,
  `file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`id`, `file`) VALUES
(1, '1627639844.jpg'),
(2, 'car.jpg'),
(3, 'download.jpg'),
(4, 'car.jpg'),
(5, 'download.jpg'),
(6, '1627642775car.jpg'),
(7, '1627642775download.jpg'),
(8, '1627642835car.jpg'),
(9, '1627642835download.jpg'),
(10, '1627642874car.jpg'),
(11, '1627642874download.jpg'),
(12, '1627642905car2.jpg'),
(13, '1627642905dextop.jpg');

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
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

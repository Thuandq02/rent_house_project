-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 24, 2021 at 10:00 AM
-- Server version: 8.0.23-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Du_An_MD5`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `startDay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endDay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_booking` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Đang chờ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `users_id` bigint UNSIGNED DEFAULT NULL,
  `houses_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `startDay`, `endDay`, `status_booking`, `created_at`, `updated_at`, `users_id`, `houses_id`) VALUES
(1, '2021-02-15', '2021-02-23', 'Đang chờ', '2021-02-21 21:15:51', '2021-02-21 21:15:51', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pricePerDay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amountOfbedrooms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amountOfbathrooms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `name`, `type`, `pricePerDay`, `address`, `amountOfbedrooms`, `amountOfbathrooms`, `description`, `status`, `created_at`, `updated_at`, `image`, `users_id`) VALUES
(1, 'Nhà VIP Hải phòng', 'Phòng Luxury', '4544444', 'Hải Phòng', '3', '1', 'aadd', 'Còn trống', '2021-02-20 01:41:14', '2021-02-21 21:16:37', 'https://firebasestorage.googleapis.com/v0/b/pro1-b5678.appspot.com/o/RoomsImages%2F1613957761539?alt=media&token=db8381a9-d130-4a82-b7fb-49390505a422', 1),
(2, 'Chung Cư Mini', 'Phòng đôi', '12345678', 'Hà Nội', '3', '2', 'ddd', 'Còn trống', '2021-02-20 01:41:48', '2021-02-21 18:37:24', 'https://firebasestorage.googleapis.com/v0/b/pro1-b5678.appspot.com/o/RoomsImages%2F1613957804616?alt=media&token=d8b96c97-51e7-4378-b825-52269182bdc1', 1),
(3, 'Nhà Vip 3*', 'Phòng VIP', '3455677', 'Hà Nội', '3', '1', 'asasa', 'Còn trống', '2021-02-20 01:42:41', '2021-02-21 18:38:02', 'https://firebasestorage.googleapis.com/v0/b/pro1-b5678.appspot.com/o/RoomsImages%2F1613957857516?alt=media&token=9b7202de-f643-474b-b63a-eff80a028aca', 1),
(4, 'Nhà Đẹp', 'Phòng đôi', '220002222', 'Sài Gòn', '5', '2', 'ko', 'Còn trống', '2021-02-20 03:46:09', '2021-02-21 18:38:51', 'https://firebasestorage.googleapis.com/v0/b/pro1-b5678.appspot.com/o/RoomsImages%2F1613957906008?alt=media&token=ea01e47e-d5ff-4ad6-a212-a6ec12d1afa6', 1),
(5, 'nha dep hd', 'Phòng VIP', '23432222222', 'Hà Nội', '6', '3', 'ko', 'Còn trống', '2021-02-21 09:09:18', '2021-02-21 09:09:18', 'https://firebasestorage.googleapis.com/v0/b/pro1-b5678.appspot.com/o/RoomsImages%2F1613923729796?alt=media&token=777d2406-6bbb-4a48-8129-df66e65beeff', 1);

-- --------------------------------------------------------

--
-- Table structure for table `house_images`
--

CREATE TABLE `house_images` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `houses_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_01_083413_create_houses_table', 1),
(5, '2021_02_01_083513_create_house_images_table', 1),
(6, '2021_02_01_083712_create_bookings_table', 1),
(7, '2021_02_01_102444_add_houses_id_to_house_images_table', 1),
(8, '2021_02_02_043023_add_image_to_houses_table', 1),
(9, '2021_02_02_084440_add_users_id_to_bookings_table', 1),
(10, '2021_02_18_042549_add_user_id_houses_table', 1),
(11, '2021_02_19_104623_add_house_id_column_to_bookings_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dương Quang Thuận', 'admin@gmail.com', '$2y$10$.8TFgr/a7cPFmFJ958IlTu6RRO3pT.l4oAtIDgNTaST4XhcW.O8Ry', NULL, NULL, NULL, NULL, '2021-02-20 01:40:16', '2021-02-21 09:16:48'),
(9, 'Thuận', 'thuan@gmail.com', '$2y$10$FpXbYXfB67Glj.usNpECBuDRCH5SdZdMkVwAy8yswUYa5K2F3WBXi', NULL, NULL, NULL, NULL, '2021-02-21 21:15:22', '2021-02-21 21:15:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_users_id_foreign` (`users_id`),
  ADD KEY `bookings_houses_id_foreign` (`houses_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `houses_users_id_foreign` (`users_id`);

--
-- Indexes for table `house_images`
--
ALTER TABLE `house_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `house_images_houses_id_foreign` (`houses_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `house_images`
--
ALTER TABLE `house_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_houses_id_foreign` FOREIGN KEY (`houses_id`) REFERENCES `houses` (`id`),
  ADD CONSTRAINT `bookings_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `houses`
--
ALTER TABLE `houses`
  ADD CONSTRAINT `houses_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `house_images`
--
ALTER TABLE `house_images`
  ADD CONSTRAINT `house_images_houses_id_foreign` FOREIGN KEY (`houses_id`) REFERENCES `houses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

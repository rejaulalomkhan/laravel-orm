-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220627.78b2c1f4eb
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 27, 2023 at 12:11 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_orm`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Technology', '2023-06-26 15:26:51', NULL),
(2, 'Sports', '2023-06-26 15:27:11', NULL),
(3, 'Fashion', '2023-06-26 15:27:35', NULL),
(4, 'Food', '2023-06-26 15:28:13', NULL),
(5, 'Travel', '2023-06-26 15:28:25', NULL),
(6, 'Health', '2023-06-26 15:28:36', NULL),
(7, 'Finance', '2023-06-26 15:28:46', NULL),
(8, 'Education', '2023-06-26 15:28:53', NULL),
(9, 'Entertainment', '2023-06-26 15:29:03', NULL),
(10, 'Science', '2023-06-26 15:29:18', NULL);

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
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2023_06_26_104742_create_posts_table', 1),
(13, '2023_06_26_105730_create_categories_table', 1),
(14, '2023_06_26_110112_add_foreign_key_to_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'summary of the post',
  `is_published` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `description`, `excerpt`, `is_published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'First Post', 'first-post', 'This is the first post description', 'First post excerpt', 1, '2023-06-26 15:30:11', NULL, NULL),
(2, 2, 'Second Post', 'second-post', 'This is the second post description', 'Second post excerpt', 0, '2023-06-26 15:30:27', NULL, NULL),
(3, 3, 'Third Post', 'third-post', 'This is the third post description', 'Third post excerpt', 1, '2023-06-26 15:30:38', NULL, NULL),
(4, 4, 'Fourth Post', 'fourth-post', 'This is the fourth post description', 'Fourth post excerpt', 1, '2023-06-26 15:30:50', NULL, NULL),
(5, 5, 'Fifth Post', 'fifth-post', 'This is the fifth post description', 'Fifth post excerpt', 0, '2023-06-26 15:31:03', NULL, NULL),
(6, 6, 'Sixth Post', 'sixth-post', 'This is the sixth post description', 'Sixth post excerpt', 1, '2023-06-25 15:31:15', NULL, NULL),
(7, 7, 'Seventh Post', 'seventh-post', 'This is the seventh post description', 'Seventh post excerpt', 1, '2023-06-25 15:31:29', NULL, NULL),
(8, 8, 'Eighth Post', 'eighth-post', 'This is the eighth post description', 'Eighth post excerpt', 0, '2023-06-25 15:31:45', NULL, NULL),
(9, 9, 'Ninth Post', 'ninth-post', 'This is the ninth post description', 'Ninth post excerpt', 1, '2023-06-25 15:32:00', NULL, NULL),
(10, 10, 'Tenth Post', 'tenth-post', 'This is the tenth post description', 'Tenth post excerpt', 1, '2023-06-25 15:32:19', '2023-06-27 03:47:23', '2023-06-27 03:47:23'),
(11, 3, 'Eleventh Post', 'eleventh-post', 'This is the eleventh post description', 'Eleventh post excerpt', 0, '2023-06-24 15:32:46', NULL, NULL),
(12, 1, 'Twelfth Post', 'twelfth-post', 'This is the twelfth post description', 'Twelfth post excerpt', 1, '2023-06-24 15:33:04', NULL, NULL),
(13, 2, 'Thirteenth Post', 'thirteenth-post', 'This is the thirteenth post description', 'Thirteenth post excerpt', 1, '2023-06-24 15:33:20', NULL, NULL),
(14, 2, 'Fourteenth Post', 'fourteenth-post', 'This is the fourteenth post description', 'Fourteenth post excerpt', 1, '2023-06-24 15:33:41', NULL, NULL),
(15, 6, 'Fifteenth Post', 'fifteenth-post', 'This is the fifteenth post description', 'Fifteenth post excerpt', 0, '2023-06-24 15:33:57', '2023-06-27 03:47:27', '2023-06-27 03:47:27'),
(16, 9, 'Sixteenth Post', 'sixteenth-post', 'This is the sixteenth post description', 'Sixteenth post excerpt', 1, '2023-06-23 15:34:13', NULL, NULL),
(17, 3, 'Seventeenth Post', 'seventeenth-post', 'This is the seventeenth post description', 'Seventeenth post excerpt', 1, '2023-06-23 15:34:48', NULL, NULL),
(18, 7, 'Eighteenth Post', 'eighteenth-post', 'This is the eighteenth post description', 'Eighteenth post excerpt', 0, '2023-06-23 15:35:01', NULL, NULL),
(19, 10, 'Nineteenth Post', 'nineteenth-post', 'This is the nineteenth post description', 'Nineteenth post excerpt', 1, '2023-06-23 15:35:16', NULL, NULL),
(20, 5, 'Twentieth Post', 'twentieth-post', 'This is the twentieth post description', 'Twentieth post excerpt', 1, '2023-06-23 15:35:29', NULL, NULL),
(21, 4, 'Twenty-First Post', 'twenty-first-post', 'This is the twenty-first post description', 'Twenty-First post excerpt', 0, '2023-06-22 15:35:44', NULL, NULL),
(22, 1, 'Twenty-Second Post', 'twenty-second-post', 'This is the twenty-second post description', 'Twenty-Second post excerpt', 1, '2023-06-22 15:35:58', NULL, NULL),
(23, 8, 'Twenty-Third Post', 'twenty-third-post', 'This is the twenty-third post description', 'Twenty-Third post excerpt', 1, '2023-06-22 15:36:09', NULL, NULL),
(24, 3, 'Twenty-Fourth Post', 'twenty-fourth-post', 'This is the twenty-fourth post description', 'Twenty-Fourth post excerpt', 0, '2023-06-22 15:36:22', NULL, NULL),
(25, 6, 'Twenty-Fifth Post', 'twenty-fifth-post', 'This is the twenty-fifth post description', 'Twenty-Fifth post excerpt', 1, '2023-06-22 15:36:35', '2023-06-27 03:33:45', '2023-06-27 03:33:45'),
(26, 2, 'Twenty-Sixth Post', 'twenty-sixth-post', 'This is the twenty-sixth post description', 'Twenty-Sixth post excerpt', 1, '2023-06-21 15:36:49', NULL, NULL),
(27, 9, 'Twenty-Seventh Post', 'twenty-seventh-post', 'This is the twenty-seventh post description', 'Twenty-Seventh post excerpt', 0, '2023-06-21 15:37:04', NULL, NULL),
(28, 7, 'Twenty-Eighth Post', 'twenty-eighth-post', 'This is the twenty-eighth post description', 'Twenty-Eighth post excerpt', 1, '2023-06-21 15:37:18', '2023-06-27 03:33:49', '2023-06-27 03:33:49'),
(29, 10, 'Twenty-Ninth Post', 'twenty-ninth-post', 'This is the twenty-ninth post description', 'Twenty-Ninth post excerpt', 1, '2023-06-21 15:37:36', '2023-06-27 03:27:59', '2023-06-27 03:27:59'),
(30, 4, 'Thirtieth Post', 'thirtieth-post', 'This is the thirtieth post description', 'Thirtieth post excerpt', 0, '2023-06-21 15:37:49', '2023-06-26 06:35:17', '2023-06-26 06:35:17');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




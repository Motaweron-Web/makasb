-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2022 at 04:28 PM
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
-- Database: `makasb`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title_ar`, `title_en`, `desc_ar`, `desc_en`, `image`, `created_at`, `updated_at`) VALUES
(1, 'مكاسب يساعدك على', 'Makasb helps you to', '<p>زيادة الإعجابات على Facebook ، مشاركة Facebook ، متابعو Facebook ، Facebook Post Likes ، Facebook Post Share ، قوائم مشاهدة CoinMarketCap ، أعضاء مجتمع Reddit ، Reddit Post / Comments Upvotes ، اشتراك YouTube ، إعجابات فيديو YouTube ، مشاهدات YouTube ، متابعي Twitter ، Twitter Twitter ، إعجابات Twitter ، متابعو صفحة VK ، VK Group Join ، Instagram Followers ، Instagram Photo Likes ، Pinterest Followers ، Pinterest Post Save ، Reverbnation Followers ، SoundCloud Followers ، SoundCloud Music Listening ، Twitch Followers ، TikTok Followers ، TikTok Video Likes ، Likee Followers / Fan ، Telegram Channel Subscribers والمشتركين ونشاطات الموقع (autosurf).</p>', '<p>increase Facebook Likes, Facebook Share, Facebook Followers, Facebook Post Likes, Facebook Post Share, CoinMarketCap Watchlists, Reddit Community Members, Reddit Post/Comments Upvotes, YouTube Subscribe, YouTube Video Likes, YouTube Views, Twitter Followers, Twitter Tweets, Twitter Likes, VK Page Followers, VK Group Join, Instagram Followers, Instagram Photo Likes, Pinterest Followers, Pinterest Post Save, Reverbnation Fans, SoundCloud Followers, SoundCloud Music Listening, Twitch Followers, TikTok Followers, TikTok Video Likes, Likee Followers/Fan, Telegram Channel Subscribers, Subscribers and Website Hits (autosurf).&nbsp;<br>&nbsp;</p>', 'assets/uploads/setting/5441658392240.svg', NULL, '2022-07-21 08:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `image`, `created_at`, `updated_at`) VALUES
(1, 'احمد يحيي', 'admin@admin.com', '$2y$10$.JU9IVY4Tf5LvpN2UFxh3upmuTgpzWSX7Ddoqtx.k78jD5nKeWLNC', 'assets/uploads/admins/66161658316929.webp', NULL, '2022-07-20 11:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `coin_sections`
--

CREATE TABLE `coin_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `desc_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feature_lists`
--

CREATE TABLE `feature_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feature_id` bigint(20) DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_03_20_123415_create_admins_table', 1),
(3, '2022_03_20_134518_create_settings_table', 1),
(4, '2022_05_06_183314_create_services_table', 1),
(5, '2022_07_20_112255_create_sliders_table', 1),
(6, '2022_07_20_112658_create_about_us_table', 1),
(7, '2022_07_20_113328_create_features_table', 1),
(8, '2022_07_20_113437_create_feature_lists_table', 1),
(9, '2022_07_20_113540_create_coin_sections_table', 1),
(10, '2022_07_21_143846_create_users_table', 2);

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
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title_ar`, `title_en`, `icon`, `desc_ar`, `desc_en`, `created_at`, `updated_at`) VALUES
(1, 'نحن القادة', 'We are the leaders', 'fe fe-at-sign', 'نحن رواد في مجال التسويق / الترويج عبر وسائل التواصل الاجتماعي', 'We are the leaders in the field of social media marketing/promotion', '2022-07-20 12:18:04', '2022-07-20 12:18:04'),
(2, 'احدث المواقع', 'User friendly interface', 'fe fe-x-circle', 'لدينا واجهة سهلة الاستخدام', 'We have user friendly interface', '2022-07-20 12:21:46', '2022-07-21 12:22:38'),
(3, 'افضل الخدمات', 'Best Services', 'fe fe-award', 'الموقع الاول في الوطن العربي للخدمات الترويجية', 'The first site in the Arab world for promotional services', '2022-07-21 12:24:07', '2022-07-21 12:24:07');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `logo`, `feature_image`, `terms`, `privacy`, `facebook`, `insta`, `youtube`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'مكاسـب', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `desc_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `desc_ar`, `desc_en`, `btn_title_ar`, `btn_title_en`, `btn_link`, `image`, `created_at`, `updated_at`) VALUES
(2, '<p><strong>مكاسب </strong>شبكة ستساعدك على تنمية حضورك الاجتماعي.&nbsp;<br><br>نحن نسمح لك بالبحث واختيار من تريد الإعجاب - اشتراك - متابعة - عرض وتخطي الأشخاص الذين لا تهتم بهم.</p>', '<h2><strong>Makasb </strong>is a network that will help you grow your social presence.</h2><p>We allow you to look and choose who you want to like - subscribe - follow - view and skip those who you are not interested in.</p>', 'تسجيل', 'Register', 'https://github.com/', 'assets/uploads/sliders/7441658328300.png', '2022-07-20 14:40:23', '2022-07-21 11:23:34'),
(3, '<p>تفاصيل عن المقطع</p>', '<p>Details about the section</p>', 'دخول', 'login', 'https://www.youtube.com/', 'assets/uploads/sliders/67071658402805.png', '2022-07-21 11:26:45', '2022-07-21 11:26:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `email`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'monuqo', 'gagyfyp@mailinator.com', '$2y$10$5mZDeX2EhfJ/BgNwq85lXexwESzjZYpPK5y24hCONk0b3y/Fp1Um.', NULL, NULL, '2022-07-21 13:43:39', '2022-07-21 13:43:39'),
(6, 'qehocytic', 'tevakuqo@mailinator.com', '$2y$10$C1PLPyJeIY5w9Y26lDeSX.XKPkbyFoEPzWh4OCP43ozYYepuPiy/.', NULL, NULL, '2022-07-21 13:44:55', '2022-07-21 13:44:55'),
(7, 'nolatagir', 'notyfeqy@mailinator.com', '$2y$10$WA0A39GCxMsvm/tOWpIAxeEdyubpQUA5QjwIBdujAzzoE7Avgy7NS', NULL, NULL, '2022-07-21 13:52:35', '2022-07-21 13:52:35'),
(8, 'quwob', 'kiwiz@mailinator.com', '$2y$10$bGNr0xvkWWTIJit21T8n6O1JSOkdTS3L3UWI49Dvc3mIo9IoYKQdy', NULL, NULL, '2022-07-21 13:55:36', '2022-07-21 13:55:36'),
(9, 'laqegereza', 'lezar@mailinator.com', '$2y$10$rR7TUVhxfbWOanU0h9G9puLKGKCUXJ2VsmnFCHnkJtIiSGsm9z336', NULL, NULL, '2022-07-21 13:56:00', '2022-07-21 13:56:00'),
(10, 'Ahmed Yahya', 'ahmedtarekya100@gmail.com', '$2y$10$jlNtPx1Fbn74VS0YHP65iOQ/MFdBiv.hjUyKhVtBUFHFB4MQ1FR8G', NULL, 'cOOYKYh8oRwjsvlJugyjlsGVsaiLY5kwWo8epogmHpqznubgCxROuafLeTfs', '2022-07-21 14:15:39', '2022-07-21 14:15:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `coin_sections`
--
ALTER TABLE `coin_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_lists`
--
ALTER TABLE `feature_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `coin_sections`
--
ALTER TABLE `coin_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feature_lists`
--
ALTER TABLE `feature_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

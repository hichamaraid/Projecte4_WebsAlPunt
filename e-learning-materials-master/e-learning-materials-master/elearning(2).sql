-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2021 at 02:09 PM
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
-- Database: `elearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `created_at`, `updated_at`) VALUES
(1, 'University', '2020-09-29 03:04:51', '2020-09-29 03:04:51'),
(2, 'Programming Tutorial', '2020-09-29 03:06:42', '2020-09-29 03:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slogan_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`id`, `header_text`, `slogan_text`, `contact_email`, `contact_mobile`, `footer_text`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'HeaderText', 'go ahead', 'header@gmail.com', '01878765434', 'copyright by Ahatasham', '1603763022.jpg', '2020-10-26 19:43:42', '2020-10-26 20:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subCategory_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `category_id`, `subCategory_id`, `title`, `description`, `file`, `video_url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'test title', '<p>test description</p>', '1602512579.jpg', 'https://www.youtube.com/watch?v=nLI5mZBheHM', NULL, '2020-10-11 05:30:35', '2020-10-12 08:22:59'),
(2, 1, 4, 'sdfsdf', '<p>sdfsdfsdf</p>', '1602415910.docx', NULL, '2020-10-12 06:07:06', '2020-10-11 05:31:50', '2020-10-12 06:07:06'),
(3, 2, 5, 'sdfsdf', '<p>sdfsdfsdf</p>', '1602514529.docx', 'https://www.youtube.com/watch?v=nLI5mZBheHM', NULL, '2020-10-12 08:55:29', '2020-10-12 08:56:05'),
(4, 2, 1, 'dsfsdfsf', '<p>sdfsdfsdf</p>', '1629234370.jpg', 'https://www.youtube.com/watch?v=nLI5mZBheHM', NULL, '2020-10-13 05:52:39', '2021-08-17 15:06:10'),
(5, 2, 1, 'E-learning materials', '<p>E-learning materials</p>', '1602867408.pdf', NULL, NULL, '2020-10-16 10:56:48', '2020-10-16 10:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(4, '2020_09_29_084616_create_categories_table', 2),
(5, '2020_10_01_084312_create_sub_categories_table', 3),
(6, '2020_10_11_102651_create_contents_table', 4),
(8, '2020_10_15_122117_create_permission_tables', 5),
(9, '2020_10_27_010646_create_configurations_table', 6),
(10, '2016_06_01_000001_create_oauth_auth_codes_table', 7),
(11, '2016_06_01_000002_create_oauth_access_tokens_table', 7),
(12, '2016_06_01_000003_create_oauth_refresh_tokens_table', 7),
(13, '2016_06_01_000004_create_oauth_clients_table', 7),
(14, '2016_06_01_000005_create_oauth_personal_access_clients_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 3),
(2, 'App\\User', 1),
(3, 'App\\User', 8);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('038adb7e7bdb5270f779649e02e890397e0bd9a5f0cdf0c731220fd87c74646e9e2a923d41057abd', 8, 3, NULL, '[]', 0, '2021-01-26 07:09:35', '2021-01-26 07:09:35', '2022-01-26 13:09:35'),
('0461d6d3d73b4ecad0c19d8dc206c2930dc2691e6034fe168a5449fc985ffada52c5229ec2187a34', 8, 3, NULL, '[]', 0, '2021-01-26 07:03:38', '2021-01-26 07:03:38', '2022-01-26 13:03:38'),
('07c377fce9fd618a9c34e101b8e5f6f93bbb73bfa809274fa838a87ee82cca2f7437242a807b03cc', 3, 3, NULL, '[]', 0, '2021-01-26 07:27:10', '2021-01-26 07:27:10', '2022-01-26 13:27:10'),
('0be72ad9de1426940084b91ea2002509a177ceab9f5ab534e7721f840619ea2c6ddd7d1c5148f623', 3, 3, NULL, '[]', 0, '2021-01-26 22:42:05', '2021-01-26 22:42:05', '2022-01-27 04:42:05'),
('0c8fbd5bea0692a8ce877f3b18e4dba7a5b613c69407f73efc5eefad2ceec82970509a7590d7efb5', 3, 3, NULL, '[]', 0, '2021-01-27 03:35:06', '2021-01-27 03:35:06', '2022-01-27 09:35:06'),
('0dd2d1fb07f9d20f38aa37711f5c20d100fd951d0ec3a6fc9d2f480f0a7ea7c6f8639d76a152c919', 3, 3, NULL, '[]', 0, '2021-01-27 05:07:54', '2021-01-27 05:07:54', '2022-01-27 11:07:54'),
('12203a973ba9c546418c273ea90fb567ebadff81d1b9e2544bacc04deff61bff26edae05a67d7809', 8, 3, NULL, '[]', 0, '2021-01-26 06:20:09', '2021-01-26 06:20:09', '2022-01-26 12:20:09'),
('12d2f6e328f5178612a9090491eb2b072633c62874dcf9aea5736fd007d49b24108c7b6ebba731e6', 3, 3, NULL, '[]', 0, '2021-01-26 22:51:38', '2021-01-26 22:51:38', '2022-01-27 04:51:38'),
('1b1a1517869f29977c4f8d7cce5f695d4424006217cd7cdef64b883cef1f3b97827b1469f1f5bc60', 8, 3, NULL, '[]', 0, '2021-01-26 07:04:48', '2021-01-26 07:04:48', '2022-01-26 13:04:48'),
('1bb0c345e5bac0b3388ca1912bb7b80383a51e51e4bab18d64368175818e345a687e2aae3ebb95ee', 3, 3, NULL, '[]', 0, '2021-01-27 03:34:48', '2021-01-27 03:34:48', '2022-01-27 09:34:48'),
('250dd462b3fdd2ce1005e52495474a8a3c29a1cbadaada1ea3c7d9351b56199bddf6b11b15e860d6', 1, 3, NULL, '[]', 0, '2021-01-26 07:38:05', '2021-01-26 07:38:05', '2022-01-26 13:38:05'),
('26f67fdc54fff407a9685bb5a9961f1d5b8b47518b2d92693df9fefe31bacf205dbe93abc6b0f17a', 1, 3, NULL, '[]', 0, '2021-01-26 22:50:15', '2021-01-26 22:50:15', '2022-01-27 04:50:15'),
('2b778b9c00757f5b369464bc6ba7cce771676ccb7212b7c376e5f719def17e154082bba80c64f9ff', 3, 3, NULL, '[]', 0, '2021-01-27 03:37:40', '2021-01-27 03:37:40', '2022-01-27 09:37:40'),
('2b9fd3d30e50acc91664a756bc85392ac4394d1c9718a1108907f227f050d78863b8f4c95d4622b7', 3, 3, NULL, '[]', 0, '2021-01-27 02:42:13', '2021-01-27 02:42:13', '2022-01-27 08:42:13'),
('2d5782d0bda8e98adf0cfa6e2cac56c38b814d755b07431f1b6a4d37702734429f343ee67aecefde', 3, 3, NULL, '[]', 0, '2021-01-26 22:52:40', '2021-01-26 22:52:40', '2022-01-27 04:52:40'),
('2efa9e237344654d94b0ddd924c82a6085ddc1f2456bb1140919f7cb3fdf2317969b5b9e601e5d69', 3, 3, NULL, '[]', 0, '2021-01-27 02:44:54', '2021-01-27 02:44:54', '2022-01-27 08:44:54'),
('319a0a2e9c07fc7217de86da380315633538beb6726a1719a66919b979aeef996a96ba051aca2123', 8, 3, NULL, '[]', 0, '2021-01-26 07:08:53', '2021-01-26 07:08:53', '2022-01-26 13:08:53'),
('33c6d289b3133ddfa712f68299bf99881b84382c526074b682115524f09fb7ee5d3015ee43f85e72', 1, 3, NULL, '[]', 0, '2021-03-29 00:19:38', '2021-03-29 00:19:38', '2022-03-29 06:19:38'),
('351d702ae313d15419c825d5ff227dedc19e3bd368bcca1bd6a079ef7699475c73f4b80097952736', 8, 3, NULL, '[]', 0, '2021-01-26 07:03:04', '2021-01-26 07:03:04', '2022-01-26 13:03:04'),
('36b261d8c016f72d268969c49cdcd4f965c3b9f09b5cca6d89e366c7f3e10c4da52f1f72f5020981', 3, 3, NULL, '[]', 0, '2021-01-26 23:18:30', '2021-01-26 23:18:30', '2022-01-27 05:18:30'),
('3ba33e9beb50f5daf16946cf0439da30bc5eb8ae9cb74d2eaa4fe939899e926749d4d3bcc175adc8', 8, 3, NULL, '[]', 0, '2021-01-26 06:43:11', '2021-01-26 06:43:11', '2022-01-26 12:43:11'),
('3cb6773699abc8c560ed28e022384c52b7ad3c2ecba60cdf3b8008872bf61771512123216571c367', 8, 3, NULL, '[]', 0, '2021-01-26 05:34:36', '2021-01-26 05:34:36', '2022-01-26 11:34:36'),
('441af16567f11467b7a08fb5f59037caead47def6d92c8533e1701f1bcd679c0c667fbf2a796ee56', 3, 3, NULL, '[]', 0, '2021-01-26 07:29:07', '2021-01-26 07:29:07', '2022-01-26 13:29:07'),
('4a926525f558fa9c3ebe6b00b515be5fc3a125bd3ed00e44186904625dc449819d8e35ed2afc32c5', 8, 3, NULL, '[]', 0, '2021-01-26 07:01:12', '2021-01-26 07:01:12', '2022-01-26 13:01:12'),
('4c3310140fe8737481924888219a19b9d9afa3137a87477ac625f830f67f1f1f2a9df084b80dbd61', 8, 3, NULL, '[]', 0, '2021-01-26 06:50:40', '2021-01-26 06:50:40', '2022-01-26 12:50:40'),
('4d825296941f90c34af705fc55137e66abaa308543bafc2da8e60bf0623dbddb57754b93c84eb0cd', 3, 3, NULL, '[]', 0, '2021-01-26 22:52:18', '2021-01-26 22:52:18', '2022-01-27 04:52:18'),
('5198546812106a4dcbc48ddcdeaf83c47cfb45d6cfeccd68eed05b9b7c0d2d2dced932ee78ee408b', 3, 3, NULL, '[]', 0, '2021-01-26 07:23:27', '2021-01-26 07:23:27', '2022-01-26 13:23:27'),
('54e87ef8bec10c7e1b430d51e2a4521c26a4da0fd411f70bd1533b46be7e17dd19b7ccbf0029b84d', 8, 3, NULL, '[]', 0, '2021-01-26 06:50:12', '2021-01-26 06:50:12', '2022-01-26 12:50:12'),
('5cb9d253fbe2a6c7ebe2575df462e7946f4306142a431d46c26ec1f1e0314e8fd7877f3a44cf837a', 8, 3, NULL, '[]', 0, '2021-01-26 22:51:26', '2021-01-26 22:51:26', '2022-01-27 04:51:26'),
('617a10766ea2311af5ddb44011d99505dc3576bab715439bd8718d4fc346fcd6622e6be2d9c01c57', 3, 3, NULL, '[]', 0, '2021-01-26 07:30:18', '2021-01-26 07:30:18', '2022-01-26 13:30:18'),
('67d667cf55367969e17a8cff09a816364b3a582f9c36264eb4e804ba6f9493c3b2db18d4ae863e8c', 1, 3, NULL, '[]', 0, '2021-01-26 07:37:42', '2021-01-26 07:37:42', '2022-01-26 13:37:42'),
('685bd784ec4d33939a4f840f2f4888a924080cf1f2f1ccc3109da4cadc8760ee42554cf775f9d617', 1, 3, NULL, '[]', 0, '2021-01-26 06:26:14', '2021-01-26 06:26:14', '2022-01-26 12:26:14'),
('6ad63e45d1b9820ed158efcf19351e03259223a3a90482ca3b282180e08551a9645e29fed7cb2551', 8, 3, NULL, '[]', 0, '2021-01-26 06:56:49', '2021-01-26 06:56:49', '2022-01-26 12:56:49'),
('6b16b33002f804bf9f15e693cce76e9c81dc5ad8471723642b000cb465126087c81f7a68e9f1bf5e', 8, 3, NULL, '[]', 0, '2021-01-26 06:59:56', '2021-01-26 06:59:56', '2022-01-26 12:59:56'),
('7ab3034eccd6edff838eaf840cfac8837861e6280f7d69730969aa85795ab8658297e08c17a1f214', 8, 3, NULL, '[]', 0, '2021-01-26 06:17:52', '2021-01-26 06:17:52', '2022-01-26 12:17:52'),
('7d0b17d8621776ace8d79eeae2a3f2974d98f39d7aab2d1748af0a24b0e00221de4fd0316d0226df', 1, 3, NULL, '[]', 0, '2021-01-26 07:41:13', '2021-01-26 07:41:13', '2022-01-26 13:41:13'),
('7d2031ac680e86e26be80a9a20687e10c8bdee32b4693828f259ab4f231f5515e8b79b9adb417cff', 1, 3, NULL, '[]', 0, '2021-01-26 06:27:35', '2021-01-26 06:27:35', '2022-01-26 12:27:35'),
('7ffc6d56786713ead67656798fd1d2d348fccc3faaa78cfd8acad544625ee352b22e8a16215c6e65', 3, 3, NULL, '[]', 0, '2021-01-27 02:48:13', '2021-01-27 02:48:13', '2022-01-27 08:48:13'),
('849ffe84b221ebe2627eb44cd2e770f1ffa696798864832a98dacdca18fd1cbceb01304abca68833', 8, 3, NULL, '[]', 0, '2021-01-26 07:12:05', '2021-01-26 07:12:05', '2022-01-26 13:12:05'),
('8afc73e2b0c28369cc39f25801ee10102af6b368496a7829264d42588e39549dba7a04fa5dbebc6b', 8, 3, NULL, '[]', 0, '2021-01-26 06:38:12', '2021-01-26 06:38:12', '2022-01-26 12:38:12'),
('8cce0df335b1c29c0783f1f44f6fcbfe89e8a9369ffa081e399fa9f1f7c2276baed731015cb3a1da', 8, 3, NULL, '[]', 0, '2021-01-26 07:13:12', '2021-01-26 07:13:12', '2022-01-26 13:13:12'),
('8e8a1f1871222047e8cfef5162a1d6ee0bd022cd9c5e68c991a507d177d1cbba6f784fe4f0e4eb0f', 8, 3, NULL, '[]', 0, '2021-01-27 05:11:05', '2021-01-27 05:11:05', '2022-01-27 11:11:05'),
('8f5470e5b3a6df3f9fa1da0802cc429f9ed58b4a5d11bff87b77023fc5b82bd81f7b6cfa7a080575', 8, 3, NULL, '[]', 0, '2021-01-26 07:16:37', '2021-01-26 07:16:37', '2022-01-26 13:16:37'),
('94276473106311de6c30b5e058bf488e95e9723a7cd50817f1b74d9fbbbac59684bf475d36083d10', 8, 3, NULL, '[]', 0, '2021-01-27 05:09:37', '2021-01-27 05:09:37', '2022-01-27 11:09:37'),
('9927dc7fe7b2be5129e7fbda81d5ac5dc720e35900e696e341ee211a5aca6422c712f69291009bfc', 8, 3, NULL, '[]', 0, '2021-01-26 06:25:36', '2021-01-26 06:25:36', '2022-01-26 12:25:36'),
('a10bb2182ce4160d99601c584ff9cb2175908764d79913d87eef9a3a78887d2361112d31ce7e4a52', 3, 3, NULL, '[]', 0, '2021-01-26 22:48:51', '2021-01-26 22:48:51', '2022-01-27 04:48:51'),
('a214b453c9c08b466145b63122df15f01eede891a57897a68f0d3af5a916240c894ee895560a2ccd', 3, 3, NULL, '[]', 0, '2021-01-26 23:17:47', '2021-01-26 23:17:47', '2022-01-27 05:17:47'),
('a5273b28920917369003feba369b7096d078661e83a6b080eb5bbcf77f6f97afd2738ef584797172', 3, 3, NULL, '[]', 0, '2021-01-27 04:50:35', '2021-01-27 04:50:35', '2022-01-27 10:50:35'),
('a69d1f4bfaef02e1f42492d2098bedeeb13e943f0b2468097a2e496e1c499a62691d3b7dbacfaccc', 8, 3, NULL, '[]', 0, '2021-01-26 06:51:36', '2021-01-26 06:51:36', '2022-01-26 12:51:36'),
('aa82649404ab5c81ecd0963f70ec98bba3adb719ae148cf0af98401895d5f11c13400b0a2797fdce', 1, 3, NULL, '[]', 0, '2021-03-29 00:21:16', '2021-03-29 00:21:16', '2022-03-29 06:21:16'),
('ae98dce4015f2086f44c22bd14cea16e8c70954ff3c3783f6321546e867ce619c302d5f7a3b90bca', 3, 3, NULL, '[]', 0, '2021-01-26 23:16:43', '2021-01-26 23:16:43', '2022-01-27 05:16:43'),
('af0f22abe90248d9c7d7b348a2629808efba7a2222f7b4c0e579cfebd69cbf24b7334e9b8d601d61', 8, 3, NULL, '[]', 0, '2021-01-26 06:58:39', '2021-01-26 06:58:39', '2022-01-26 12:58:39'),
('afd8da861b47b782260d4d5f75e9a9b520a232963fd4948ef2c478ced6163891d7741ef7cef19d4b', 3, 3, NULL, '[]', 0, '2021-01-26 07:31:50', '2021-01-26 07:31:50', '2022-01-26 13:31:50'),
('b58e3ffff500cdd135a5f1c0daf3d6938e9deb5d7113f2169227a908460374acc64953a53826bd73', 8, 3, NULL, '[]', 0, '2021-01-26 22:39:37', '2021-01-26 22:39:37', '2022-01-27 04:39:37'),
('b5f8bc53cfba59729286662ad900147c1bf82098f04160710c298817ac9f35e080dcc5877d0c46cf', 8, 3, NULL, '[]', 0, '2021-01-26 07:05:55', '2021-01-26 07:05:55', '2022-01-26 13:05:55'),
('bf62bf4ef53cda245da72ab5b03fa1e83c9c6f76c9d200ebce5a8ced9d1d13a9ea310ef2c66ddc55', 3, 3, NULL, '[]', 0, '2021-01-27 04:06:30', '2021-01-27 04:06:30', '2022-01-27 10:06:30'),
('c23aa7a422eb85e86802d68f27c630562f370933294a834902ff467995969bc7b36576e531b65b4b', 8, 3, NULL, '[]', 0, '2021-01-26 07:06:21', '2021-01-26 07:06:21', '2022-01-26 13:06:21'),
('c288bb7ac41eafbdd80ca39a1e3d62992abafd86ca010ccf7ea61bd557b0dd7125901a194ffcf4d8', 3, 3, NULL, '[]', 0, '2021-01-26 22:42:42', '2021-01-26 22:42:42', '2022-01-27 04:42:42'),
('c6b73f33b9fbf6244ffed929a321ebe649d88c725404e5b53c8674c417a73ddaf56fb1044cf2ae4d', 8, 3, NULL, '[]', 0, '2021-01-26 06:59:14', '2021-01-26 06:59:14', '2022-01-26 12:59:14'),
('c9a40d5b43e09ad0fea582ec9a30f3761ddd34e5902b3edec2d703d86e41afc557f9a9879a9b6ccb', 3, 3, NULL, '[]', 0, '2021-01-26 07:20:42', '2021-01-26 07:20:42', '2022-01-26 13:20:42'),
('cf5abf0e73cd3aee779061192361389431ccdcdfbdff7c433037807b345e19741fd610abadab445e', 3, 3, NULL, '[]', 0, '2021-01-26 22:57:53', '2021-01-26 22:57:53', '2022-01-27 04:57:53'),
('dc3a7630dea1b4d582a12a15cb7482b371c30f9001e8f1cdc710c661c90155b78038ec72b414ffc3', 1, 3, NULL, '[]', 0, '2021-01-26 07:40:21', '2021-01-26 07:40:21', '2022-01-26 13:40:21'),
('e07f26540597e8a8f760b9f4014c7705b6ec9ab5a74bc22459237776bf680c04e72db101e8b1665b', 8, 3, NULL, '[]', 0, '2021-01-26 06:53:20', '2021-01-26 06:53:20', '2022-01-26 12:53:20'),
('e177b3669d469fd21daaa4bb5b072eb55071fe663f3e230f4c707e42227d1a636e983dab3d56a277', 1, 3, NULL, '[]', 0, '2021-01-26 07:22:32', '2021-01-26 07:22:32', '2022-01-26 13:22:32'),
('ef2a52848389e40a4e56b2492f379a0b5f88be553b66502365dfbb8d49e2d3b493b46d5e1081a830', 8, 3, NULL, '[]', 0, '2021-01-26 22:36:14', '2021-01-26 22:36:14', '2022-01-27 04:36:14'),
('f7a529ff0128d10fe0e7086608d70e7b116fd4a67816a3b9170e79656a95d74bf6adce9d713fafae', 8, 3, NULL, '[]', 0, '2021-01-26 06:33:06', '2021-01-26 06:33:06', '2022-01-26 12:33:06'),
('f7b6a9a46619247abbe4ce573d9016fdec483a50af3095d30076ac8adbb2ffbb107310d6097ca80f', 3, 3, NULL, '[]', 0, '2021-01-27 03:36:08', '2021-01-27 03:36:08', '2022-01-27 09:36:08'),
('fba0159d4868914a163a7ff3efb02a040bce9023d37aed32e916d22ddfac03b13eaf6b8a96b4effb', 3, 3, NULL, '[]', 0, '2021-01-26 22:47:30', '2021-01-26 22:47:30', '2022-01-27 04:47:30'),
('fd2f96a4e56ac3ca4bda2c43b9c40ce72a356f62fbb3563e883a1e6c91c284315bde7f4405169509', 8, 3, NULL, '[]', 0, '2021-01-26 05:49:50', '2021-01-26 05:49:50', '2022-01-26 11:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_auth_codes`
--

INSERT INTO `oauth_auth_codes` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `expires_at`) VALUES
('028d33048862f9166025fdae51ce3da04baa327dc13fa309b155845a6b38a0b892907dae15737d37', 3, 3, '[]', 1, '2021-01-27 05:28:28'),
('0385a9fda3543656db8c3f9b27ac2703891e8051fe83affa744ea1f99b9de012c3ebf2707d75c7a7', 3, 3, '[]', 1, '2021-01-26 13:30:40'),
('0875401bdc149142fa7c6910c404093b49d8b6963ef75fd0bc59cdbdd78dd38ad7f874891ee0b7bd', 1, 3, '[]', 1, '2021-01-26 13:47:41'),
('0f43d052c8fc1d83801c3e4314495f3260411048ef5211e13ff7f025b4217a671a70e654d3665e32', 8, 3, '[]', 1, '2021-01-26 12:43:05'),
('12712a854158fe4cca66847adea01c5b0515ac6175820dfe3c4a6c9c70331df6970a741d23623877', 8, 3, '[]', 1, '2021-01-26 13:22:04'),
('131fa8524c9b6bbc591ede3cb5d84b67b709aff63d882c3238c18dbcb2575815f7a0bbe413250926', 3, 3, '[]', 1, '2021-01-27 09:47:39'),
('13f5429a5b7eeb707739cd37d7b2869b87d7a495bd46e5ac14717bc5bb340aa21dcaf6740272a625', 8, 3, '[]', 1, '2021-01-26 12:35:35'),
('152b741d8667ce9819234285a2664f4ffa0d8101c7614cec918b95b72e52b77a99170007cc4214fa', 1, 3, '[]', 1, '2021-01-26 12:36:13'),
('1e0ff0b3132a48827ced5593f89d320c5e90850383bdac80ef9261d3c3f755960201d387a7053ee5', 1, 3, '[]', 1, '2021-03-29 06:29:35'),
('201f1b27a8cabd3d160b9d683ab170cbb9a3fcc41f253fb489718405292eb86c57eba9f2c8196f71', 3, 3, '[]', 1, '2021-01-27 05:07:52'),
('20cf9b25d588e17317b8ac87cb2ad51c4f41df8532bdcbd45f52d9416383c78346e96862707b7282', 8, 3, '[]', 1, '2021-01-27 11:19:36'),
('226f976cdceac36979c505ddeccf159f5209a4e4fe0c1a848b567392735cf6c007ef441eefc40ee2', 8, 3, '[]', 1, '2021-01-26 13:16:20'),
('2d2bace557007bbc73cd3a453a17c63e137340ed87e1c140a04445dbdf034082693bb795f5fdd9ad', 8, 3, '[]', 1, '2021-01-26 12:30:08'),
('33c367dcdf9ba97bd6cb29a9d8e4d4d7360c40dc608e6c30702acb0b7022065d68fc0b66a46bda7f', 8, 3, '[]', 1, '2021-01-26 13:15:54'),
('34224d96d7d88f1d7056a2cd318f2ccbfe61126128e9e7d4435e517916b0bba3230894e755b5313c', 1, 3, '[]', 1, '2021-01-26 13:51:12'),
('34802ccdf45580f8842cf5106af928d9979e093a6805103f8fc889fbdc4d23da2ac819632a1ab65d', 8, 3, '[]', 1, '2021-01-26 13:23:10'),
('3f2cd514add82b6187aa7f9ca948f2506d23eab45f8f97f46710462e54e19e8cb997186663a738e0', 3, 3, '[]', 1, '2021-01-27 04:52:41'),
('43a40daa90939affc4a04ce0a7179e2aa1fdb7955e7c93c54d9c2e59ad2c953ad2fa3c0fcb259615', 8, 3, '[]', 1, '2021-01-26 13:13:37'),
('46f228b98a0fd43f37068667c4dbaef64e2cf6b36ee2c9ae7cd1f25c5622bd403758c162271e0475', 3, 3, '[]', 1, '2021-01-27 08:54:53'),
('4b8061e30436af28b307bd43149c04fe83739f32c4ef577813b4caf9d0e0b6e76fd86e17da6ddd2b', 8, 3, '[]', 1, '2021-01-26 13:00:39'),
('534a5eb00c823be56994134850bbf2ff48ae165d0350e8f602d79d883a13ca4c472378df82d1fc4c', 8, 3, '[]', 1, '2021-01-27 04:49:36'),
('57a5c02fee31463e5569a2b38491644a426c1a07a562896b85c896db5f4cfce7ab9221bc928eb4e8', 3, 3, '[]', 1, '2021-01-26 13:37:09'),
('58295d2c3003badc7ffec116a77c625066deef479c3faf6f19534e7270a7e300f3c5e9d21ac9d264', 8, 3, '[]', 1, '2021-01-26 12:53:10'),
('599e9d2d0db83cc629ac3abffdbf8cdfaa598314692927d22a5f8150b07a10a2643325b1babac0a5', 3, 3, '[]', 1, '2021-01-27 11:17:53'),
('5a917834a71619c8e721bfe0b767fcd04fcc4f2e16ff8fe770682a46b6d09411f3a122dda198a279', 8, 3, '[]', 1, '2021-01-26 13:09:55'),
('5ae7c2e0701efae2940ae13e55b6792f82e85b225d71c06054781648e15167891cd38e6cec2157ea', 3, 3, '[]', 1, '2021-01-27 08:52:11'),
('64d3e25b87c8bd66153ea9f45545fa8f56ec6a76358b93525d5c5dbcadaaf585fc025f376a8ebf32', 3, 3, '[]', 1, '2021-01-27 09:45:05'),
('684c59e6f1a4154581af98521600dfe6eb74483013c5505f48bc8e9cfd0b28b7c084c716d6caeac7', 8, 3, '[]', 0, '2021-01-26 11:58:50'),
('688892d528af0368536979801a205fbd29b5c8d239c70092fdff65ee4eb94a20f7323c90a092bb50', 1, 3, '[]', 1, '2021-03-29 06:31:15'),
('6e53bf22645b83a39983611eb10386ef35b593c708d98fc1dd587591a7c1e8a4af884ced10ff965f', 3, 3, '[]', 1, '2021-01-26 13:41:49'),
('6f34ba83aa63494a9e1196b649732efa01d4cd4ef65e9a400811d197e43f03190c2acd98e8676a17', 8, 3, '[]', 1, '2021-01-27 04:46:13'),
('73e647cbfeccfed29d67e96de2b34403c9deabfa41729364d6f3f712478b447c503cc448a0e955d6', 3, 3, '[]', 1, '2021-01-27 11:00:34'),
('750eeaf94ef524df0744253c557a085d85c4ffad528f8a2c784bf60be15947ecd0f856ea0de8818e', 8, 3, '[]', 1, '2021-01-26 12:48:11'),
('784ca9fcf1581b614a549a69992b434b3d310c53070f3fe7ea4aecd374f073d0877e159bdd760e45', 8, 3, '[]', 1, '2021-01-26 13:00:11'),
('79514d95793753d294dee79a992bf78e3a1169c441927f69bf4ad3878a180c11c5c8b111c6a53019', 3, 3, '[]', 1, '2021-01-27 10:16:29'),
('7dace5dda69ae671af07623ceb42e0899fb9e08f8e8fd2f079e31293650e3860b51b06adafcacc99', 3, 3, '[]', 1, '2021-01-26 13:33:26'),
('85aadfa24f9f9713279304022a111526a49ec0baa63906745ce50811f664b139da639aeef01bd023', 8, 3, '[]', 1, '2021-01-26 13:03:19'),
('883115441c680f81d5fa524ee9ed51852775f2f9a4a839b984a3bb1d39fd578e0a42aa454c10f5a2', 3, 3, '[]', 1, '2021-01-27 09:44:47'),
('88cacdcd9adba273ddeffab230cb17f71b9e023c78786e3b464f9ebfdb206433afbd0b3fd0a66033', 3, 3, '[]', 1, '2021-01-27 05:02:17'),
('8bc4e2907fa0b017b91bf08478ec753dc5afabf5d5784de17ba43dd6ca9fe0e53ee5597217599f6c', 8, 3, '[]', 1, '2021-01-27 05:01:25'),
('8c0efb3817bae6c2b0a2ebbe9f9f41be602503756e057ff0cbdb1990915e1d3d363fe866ed37acee', 8, 3, '[]', 1, '2021-01-26 13:11:11'),
('8db402e5af4ed3df8d401704402893590173ba308f8e2d52be9d7be66f37c3c9566cb964bc8e74b1', 3, 3, '[]', 1, '2021-01-26 13:39:06'),
('93adc3fda00f8653429fd45a8c87734a346b6f46334eacd4e2d6ec83a54ecea61c7865772a6ec7a8', 1, 3, '[]', 1, '2021-01-26 13:48:04'),
('95028bc8b25dc6eb32f54f98229ce2e11ac39b0f74d297c51dc6193d4441ea02fe1a18e15cf866e3', 8, 3, '[]', 1, '2021-01-26 11:59:49'),
('954baa8c84e4bc108cb1ec7a2eb8fc8e3cb5bead34e75c361c528512c60527a77928f201bf52314a', 8, 3, '[]', 1, '2021-01-26 11:44:34'),
('95ba7ff1e052900181c58bb1a8a6079ad0ec45cc4e25373fc331ff7be0fbf67b411099a9644337fa', 8, 3, '[]', 1, '2021-01-26 13:09:12'),
('961d31c7877c819f5e009999487c9fa00c1aea77d659eb08ffedb11388c0b2ff39ff9c7bee256753', 3, 3, '[]', 1, '2021-01-27 08:58:12'),
('9740d484cfdcaf4285200030b2a97cb493fa9fe8498f37335b18e070b1822b426f276aedfc49e12a', 8, 3, '[]', 1, '2021-01-26 13:01:35'),
('974b5ca1096a06f2e585aed620a2a3595887832bb28a3ce9736bdb86ad838ce81d37d513ed07f211', 1, 3, '[]', 1, '2021-01-27 05:00:14'),
('a0f3604d8ef0166fab63c82c11b0a53905b26a12b44266cc17607a17e60fe2ac63cf71510f54d07f', 8, 3, '[]', 1, '2021-01-26 13:13:03'),
('a2b16bc8d57dcea6d409a1297978234bf05f3a800d9115e4a20d4bd545393fd5e926be13687796d5', 8, 3, '[]', 1, '2021-01-26 13:26:35'),
('ab3db4ace1bbe68a09696566e3ff1ca63d0647b8fe65909c158450491555b6cc1c4da7a79f71ceb5', 8, 3, '[]', 1, '2021-01-26 13:08:37'),
('afba24f1e672ca14c105eaa62bcb7b2b917e1e549af52b422bb99d70f7ed153d769a19605c0f667c', 3, 3, '[]', 1, '2021-01-27 05:26:42'),
('b00d33139c192dcadac2214477c2ca3f38118c08139654ca01a1eb7aaa37482562157728e919debd', 3, 3, '[]', 1, '2021-01-27 05:01:37'),
('b29615d28ff945d20fba914de4d8fbf0b8f64f2241400d92b24460a879f144b080e78e85af6c4233', 1, 3, '[]', 1, '2021-01-26 12:37:34'),
('b671644aec99a42853594b9634e401814184772399a43e01eecfafcd62cee2a872605cca760487b4', 8, 3, '[]', 1, '2021-01-26 13:19:34'),
('b892fb1dc67a0692fea837fbd918bc6cb68954db70ac51c5481474bf7fa519a952fc0dc691ab3ec8', 8, 3, '[]', 1, '2021-01-27 11:21:04'),
('be87646f8f87c737825a0ae3debbd9c71f2183cc668072c0801bd162b9783ced4976b0a4b0bcde1b', 3, 3, '[]', 1, '2021-01-27 04:57:29'),
('c09ff9352f86c3a9fe29aee38622339cb34098a93f0f623c4e1debe3324308110f50a309e3a8d882', 3, 3, '[]', 1, '2021-01-27 05:27:46'),
('c173e73b4942b6482758d9fbec03a783c3a89d8c2e87f745a4d3575a463005d24af554089183aab8', 1, 3, '[]', 1, '2021-01-26 13:32:31'),
('c29cb7bea52868648a4173e4a7de7e989b57ad73e42c18e83d7fee536dc986c657dae006690a1a9e', 8, 3, '[]', 1, '2021-01-26 13:14:46'),
('c47c93dff343d38997104ab02e807320704e43173aa07ed825eca314e177bb7dd1a30cf6e21920de', 8, 3, '[]', 0, '2021-01-26 11:58:18'),
('ce74b1bcac098848518e329b23a6480809bd6b2af391d04448df77bd978e881caddf6f846a12e485', 8, 3, '[]', 1, '2021-01-26 13:18:52'),
('d1a29ed002327486bae876ba60500af40a4d944bcd2d2d2addfc49cdb80ab9432278fa626537e33f', 8, 3, '[]', 0, '2021-01-26 11:57:42'),
('d40e992598de8945c42741532296a4d8c46fb705baeffcd4303ef0095e7bcd57147d5b563eb1b260', 3, 3, '[]', 1, '2021-01-27 04:52:04'),
('da0224ba52409724a7b7255138743bc79a926c02193c1c828cbcb06032f86a5a90c7dd75bb85cc97', 8, 3, '[]', 1, '2021-01-26 12:27:51'),
('e24586a8d78879ed1dc81064854e4924be72544ac670fd009af3f1c9ee03d87516e6ad4c8d6c34eb', 3, 3, '[]', 1, '2021-01-27 05:02:39'),
('e2e708eca6ab2bc10be2283023406358fedf9f70327f2a201630ed310a45f70081cd7c735fa58f92', 3, 3, '[]', 1, '2021-01-27 04:58:50'),
('e41e1b8e7384a4e9bced3e53673f3857ab4de692cb4f8b3a63288f1acf08612b4c65d37ed68bebcb', 8, 3, '[]', 1, '2021-01-26 13:06:48'),
('efcb41d010835561cf7bda0ead058fc31833dc486321975177f317ab87c377b0fb3ba54ea0548ed5', 3, 3, '[]', 1, '2021-01-27 09:46:07'),
('f9ed89d2ba3ee9b3ffbec782dfb2318e1f231fc6728a39ecf80f5a8af1f2b5dfe9a86d5f3bf0cacb', 3, 3, '[]', 1, '2021-01-26 13:40:17'),
('fde97548c990f30bc21ec0d00bf64e6a60d4d0338ca54c3579055429f3f0e5e247e88c9c56c6421c', 1, 3, '[]', 1, '2021-01-26 13:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '7wmmLnCMII5pCRC1dxuYHAL2ALd6jZj1fhmDu2th', NULL, 'http://localhost', 1, 0, 0, '2021-01-26 04:25:30', '2021-01-26 04:25:30'),
(2, NULL, 'Laravel Password Grant Client', 'p7gF1OnoakX8sez0hrqysgvguLbqLPA6C4pciQ7A', 'users', 'http://localhost:8001/callback', 0, 1, 0, '2021-01-26 04:25:30', '2021-01-26 04:25:30'),
(3, NULL, 'client', 'Vek0nnLjXFH44mSbOJkV0QfG4Hpnk1bzKi833WHH', NULL, 'http://localhost:8001/callback', 0, 0, 0, '2021-01-26 04:32:36', '2021-01-26 04:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-01-26 04:25:30', '2021-01-26 04:25:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('00f07c102071dbf333f5cc8c2ffefb7980fa5d224b0345d60be305f08f86beb76f03f62f3fa065fe', '3ba33e9beb50f5daf16946cf0439da30bc5eb8ae9cb74d2eaa4fe939899e926749d4d3bcc175adc8', 0, '2022-01-26 12:43:11'),
('025abf4a8a86ba21849a1fa1e4989997ca3a2ad16bde5f790093e7687036400ab0347494303a85d5', 'fd2f96a4e56ac3ca4bda2c43b9c40ce72a356f62fbb3563e883a1e6c91c284315bde7f4405169509', 0, '2022-01-26 11:49:50'),
('038874de4db14a194136ac5282f5f325e2087e2e9296a67f979d9b431166286ad7293bea356bb415', '5198546812106a4dcbc48ddcdeaf83c47cfb45d6cfeccd68eed05b9b7c0d2d2dced932ee78ee408b', 0, '2022-01-26 13:23:27'),
('04a3112f0aca0d76c69b2d5c00a7dc9127bd0256f90e98e7a5f9a011b6ba602c13d8e7e3a11a61f8', '7ab3034eccd6edff838eaf840cfac8837861e6280f7d69730969aa85795ab8658297e08c17a1f214', 0, '2022-01-26 12:17:52'),
('081e71b60ef690e611aa4ed8b984fd27bbe8057f80dcd3d72edd0fb4cac13cd68e0b57de46f61227', '7d0b17d8621776ace8d79eeae2a3f2974d98f39d7aab2d1748af0a24b0e00221de4fd0316d0226df', 0, '2022-01-26 13:41:13'),
('0e0158aec8893ba9b56fc8dd392933544ee33e666e8b8fefb43da6e90cf3fe0a527aa93b4e898c22', 'fba0159d4868914a163a7ff3efb02a040bce9023d37aed32e916d22ddfac03b13eaf6b8a96b4effb', 0, '2022-01-27 04:47:30'),
('10fad7a385587b86b9c40a119e7b99e8aa56dea7ba7da0af8dc3a9b85aa115f0d7a22aa4cbe3b6b1', 'afd8da861b47b782260d4d5f75e9a9b520a232963fd4948ef2c478ced6163891d7741ef7cef19d4b', 0, '2022-01-26 13:31:50'),
('1dd8523ba3bce322ad2ad3dc7fe62ae2819c745ccfc929e2bd8ea0fa705a986b0b44c8bbf5ee895d', '8f5470e5b3a6df3f9fa1da0802cc429f9ed58b4a5d11bff87b77023fc5b82bd81f7b6cfa7a080575', 0, '2022-01-26 13:16:37'),
('20b0f7a2e3f03765a443e670930c43b12c546a43f7128dab6f9b685e3adbf81b0259d6513754a40d', '54e87ef8bec10c7e1b430d51e2a4521c26a4da0fd411f70bd1533b46be7e17dd19b7ccbf0029b84d', 0, '2022-01-26 12:50:12'),
('24668967e19df3ba71e57530d1aa70b7be0fd797abfd864267dcdef66ed049035707cae1a63e7e5a', '2d5782d0bda8e98adf0cfa6e2cac56c38b814d755b07431f1b6a4d37702734429f343ee67aecefde', 0, '2022-01-27 04:52:40'),
('270c1a928bcf09860133824b8162e4c5fde395f9c90e331b77a9cff62699913a677c8a2a403c47c3', 'b58e3ffff500cdd135a5f1c0daf3d6938e9deb5d7113f2169227a908460374acc64953a53826bd73', 0, '2022-01-27 04:39:37'),
('3056a97a30e70b6825326f781de24acddc1d8ab53a25edec4735dc75dc3542f0f994e6f01d31128c', 'e07f26540597e8a8f760b9f4014c7705b6ec9ab5a74bc22459237776bf680c04e72db101e8b1665b', 0, '2022-01-26 12:53:20'),
('333eb2757a6a44c2d482517a56696f4cedc872950932d07e3ece2a317782f6ea36cfb612ec6147d6', 'a214b453c9c08b466145b63122df15f01eede891a57897a68f0d3af5a916240c894ee895560a2ccd', 0, '2022-01-27 05:17:47'),
('33d115ea55bfb5f027dd94bb636375a5056529a2da9df709e5d36879ee246a0819483da26ebf4d07', '3cb6773699abc8c560ed28e022384c52b7ad3c2ecba60cdf3b8008872bf61771512123216571c367', 0, '2022-01-26 11:34:36'),
('342f8f162f7665a3c269964d587bafac33b9b8b4069c9b2dd8528dccbe45127d05605f38fe96728b', '617a10766ea2311af5ddb44011d99505dc3576bab715439bd8718d4fc346fcd6622e6be2d9c01c57', 0, '2022-01-26 13:30:18'),
('413956d8843f5ab22358a39266fe85e54d13050181af3cef4db5c67ee9ad9f48ed0c509e85e412c7', '12d2f6e328f5178612a9090491eb2b072633c62874dcf9aea5736fd007d49b24108c7b6ebba731e6', 0, '2022-01-27 04:51:38'),
('431a52a9254d415b563aaf7dd722768ed5351503e2d7341a2739637b9b516f321f2083bd819bcde1', '4a926525f558fa9c3ebe6b00b515be5fc3a125bd3ed00e44186904625dc449819d8e35ed2afc32c5', 0, '2022-01-26 13:01:12'),
('4327bc88f2a8e3d22c36adab786cf03f2ca7cbceba5d4d07c470f3238df5a30be35145809b66fb8e', '4d825296941f90c34af705fc55137e66abaa308543bafc2da8e60bf0623dbddb57754b93c84eb0cd', 0, '2022-01-27 04:52:18'),
('46e79519969893ce75141485c43828dd73a3e899483e5ac574e0c4ef5985bf1c515e58809de42808', 'b5f8bc53cfba59729286662ad900147c1bf82098f04160710c298817ac9f35e080dcc5877d0c46cf', 0, '2022-01-26 13:05:55'),
('4deb17b6c8b6e9fd5916eeec965cb19729262a25d3796934c4b3c78923e86c748293c02d4b534451', '2b778b9c00757f5b369464bc6ba7cce771676ccb7212b7c376e5f719def17e154082bba80c64f9ff', 0, '2022-01-27 09:37:40'),
('4fc34bfc14062860c50fda996bb56c7ed4dd0bbb937ee8375d252ceb97f22550952a8801c4727265', '441af16567f11467b7a08fb5f59037caead47def6d92c8533e1701f1bcd679c0c667fbf2a796ee56', 0, '2022-01-26 13:29:07'),
('5ac272abda30c6de827066986efa61acb60a2f77883cf58b0a5d65c2091e0e01aa9571222234bf78', '319a0a2e9c07fc7217de86da380315633538beb6726a1719a66919b979aeef996a96ba051aca2123', 0, '2022-01-26 13:08:53'),
('5db2b738c55c022b0a0c6f26fc88e4b75c57ad4eae1a8c460d0a4536e7dc06cd3e45280a5ab10921', '33c6d289b3133ddfa712f68299bf99881b84382c526074b682115524f09fb7ee5d3015ee43f85e72', 0, '2022-03-29 06:19:38'),
('5eefded39347e73e6148060df6908753e55d80e9b8d89f11e735954b312c50dc69371d7aa092722a', '0461d6d3d73b4ecad0c19d8dc206c2930dc2691e6034fe168a5449fc985ffada52c5229ec2187a34', 0, '2022-01-26 13:03:38'),
('5fbc6236face3e1d99fbe513dab6a390821bb2e28ce93a026717cad893ee467b6b6cdc9d4202c0f3', 'a69d1f4bfaef02e1f42492d2098bedeeb13e943f0b2468097a2e496e1c499a62691d3b7dbacfaccc', 0, '2022-01-26 12:51:36'),
('603e7037ef9caef476373c7938e0955dffb867ca0358534f8164235152c92bff20b75e3b78cf8e88', '0dd2d1fb07f9d20f38aa37711f5c20d100fd951d0ec3a6fc9d2f480f0a7ea7c6f8639d76a152c919', 0, '2022-01-27 11:07:54'),
('60422048679d5ba6807a4dad966baca626bf0d2d7d2fb5687d90657fdb0e5305914d8ca64a30ed61', 'c23aa7a422eb85e86802d68f27c630562f370933294a834902ff467995969bc7b36576e531b65b4b', 0, '2022-01-26 13:06:21'),
('631dd53c873aba66fcefedd6ff7187e6b717acd137918ff1e1f3149d4f46432fb087433a2d944cf1', '1b1a1517869f29977c4f8d7cce5f695d4424006217cd7cdef64b883cef1f3b97827b1469f1f5bc60', 0, '2022-01-26 13:04:48'),
('735e6859073dbd6ce133588b01f3cfda24c62c642f07b36013cf84e098e3cf13eebc196a0fb7b7ce', '2efa9e237344654d94b0ddd924c82a6085ddc1f2456bb1140919f7cb3fdf2317969b5b9e601e5d69', 0, '2022-01-27 08:44:54'),
('739a8a6d257159b35d1dcc280aa91bd3abff82c3a19353767c5f4c86b9802789c51c47acba5dcab3', '7d2031ac680e86e26be80a9a20687e10c8bdee32b4693828f259ab4f231f5515e8b79b9adb417cff', 0, '2022-01-26 12:27:35'),
('7845e8096d80ed679d5b042411eaf9b4d3657d241e3496355b562965eaa6ccafe593e97ddab21457', '8cce0df335b1c29c0783f1f44f6fcbfe89e8a9369ffa081e399fa9f1f7c2276baed731015cb3a1da', 0, '2022-01-26 13:13:12'),
('7e841d8d7ab0748570c6e2f77e0de09adaf0d9f035ae51378ee909b030bcaf8a4db53d99b5808e2b', '67d667cf55367969e17a8cff09a816364b3a582f9c36264eb4e804ba6f9493c3b2db18d4ae863e8c', 0, '2022-01-26 13:37:42'),
('82583e0963072c72b548f57e6f6b36511565d9651b9a4661c300292cdff93f3e3e004e3088c45cf0', '351d702ae313d15419c825d5ff227dedc19e3bd368bcca1bd6a079ef7699475c73f4b80097952736', 0, '2022-01-26 13:03:04'),
('853bb1f00ac5ee5af07dd0b5230a1876179983e36dfdd239d9759452a9c6ecefa0e48320abb76ccf', '4c3310140fe8737481924888219a19b9d9afa3137a87477ac625f830f67f1f1f2a9df084b80dbd61', 0, '2022-01-26 12:50:40'),
('881a3a73f6873a102a3d94d3061f3e38ee930b275e3b8bfe4148e4afb285f03dc7927e684d39e36e', '5cb9d253fbe2a6c7ebe2575df462e7946f4306142a431d46c26ec1f1e0314e8fd7877f3a44cf837a', 0, '2022-01-27 04:51:26'),
('89ca76f1cc39ada8449ee2456bb86bc3c2bcc3de5f41f397ed552ad322e36525e81b6d3a0c2cbd8d', '250dd462b3fdd2ce1005e52495474a8a3c29a1cbadaada1ea3c7d9351b56199bddf6b11b15e860d6', 0, '2022-01-26 13:38:05'),
('8d99fdb9887717d758571d811a0163af16c6701b8d2d6b0a8c58cbb0c0ba4e8e5e3d0274d77858d1', 'c288bb7ac41eafbdd80ca39a1e3d62992abafd86ca010ccf7ea61bd557b0dd7125901a194ffcf4d8', 0, '2022-01-27 04:42:42'),
('902ffd47b83c8763f02026e715b0c1fcbda7420e34970bef9ecca8316d9dc0478c78466944bfcf10', 'aa82649404ab5c81ecd0963f70ec98bba3adb719ae148cf0af98401895d5f11c13400b0a2797fdce', 0, '2022-03-29 06:21:16'),
('913f9b934d43573cbd261ef0fffdbd9235fd7a66892728bccf3f71068025c447e43c86fd5cd2ba04', '12203a973ba9c546418c273ea90fb567ebadff81d1b9e2544bacc04deff61bff26edae05a67d7809', 0, '2022-01-26 12:20:09'),
('94b4fd6bc092735076ac623b975a45ff4f27a4d86475446da6b24932d23c5b1f9f368289be0cc997', 'cf5abf0e73cd3aee779061192361389431ccdcdfbdff7c433037807b345e19741fd610abadab445e', 0, '2022-01-27 04:57:54'),
('a1cdc053a7d2ebbb8bd4d245ce3d61364a906824938c80f9c2fe1b4994fc9997975d7e44047b2516', '8afc73e2b0c28369cc39f25801ee10102af6b368496a7829264d42588e39549dba7a04fa5dbebc6b', 0, '2022-01-26 12:38:12'),
('a5a0c2e00a82222291fcfa8d5a9ade2cc48a5b22d9626378a9cec074fafb0a4facecb0baea4bd798', '7ffc6d56786713ead67656798fd1d2d348fccc3faaa78cfd8acad544625ee352b22e8a16215c6e65', 0, '2022-01-27 08:48:13'),
('a60c97a5e98c4f7ae9dfb15c8399a184dc6629b61b25c4234cfe91300f3d26ede715047b3d68d77d', '07c377fce9fd618a9c34e101b8e5f6f93bbb73bfa809274fa838a87ee82cca2f7437242a807b03cc', 0, '2022-01-26 13:27:10'),
('a7293c0588f98224cabb17116cecba1f419d07a9b8859bfdf2413709a7723a5fc586676390db4c5f', '94276473106311de6c30b5e058bf488e95e9723a7cd50817f1b74d9fbbbac59684bf475d36083d10', 0, '2022-01-27 11:09:37'),
('a854d2e10bcf9740df6fbfe0e0d393809a42a538b0d6d5558564e65e0e61b338c595c8eeda8d855b', '36b261d8c016f72d268969c49cdcd4f965c3b9f09b5cca6d89e366c7f3e10c4da52f1f72f5020981', 0, '2022-01-27 05:18:30'),
('a8b163e9d2d0974e16d2ec6ded67af0005b7b4d7c1639ada38f8c601a1df9eac2da3bccb99eb6920', '6b16b33002f804bf9f15e693cce76e9c81dc5ad8471723642b000cb465126087c81f7a68e9f1bf5e', 0, '2022-01-26 12:59:56'),
('a9134248b602783138a27e1e39d4042959311ef1e2f2e558aca1d0879fcd70ef25f595e23510327e', 'bf62bf4ef53cda245da72ab5b03fa1e83c9c6f76c9d200ebce5a8ced9d1d13a9ea310ef2c66ddc55', 0, '2022-01-27 10:06:30'),
('aeb0d9cafec85575cf60d844f850542e53ec8db6bd3e951927365dbfbb4b48e4c070b0ad1c4882d6', '038adb7e7bdb5270f779649e02e890397e0bd9a5f0cdf0c731220fd87c74646e9e2a923d41057abd', 0, '2022-01-26 13:09:35'),
('b198159b639ba40274d437506fd2d6ed6a33bd1c23780f554a3f8cafd917b92928e6fc078dcdc0c3', '2b9fd3d30e50acc91664a756bc85392ac4394d1c9718a1108907f227f050d78863b8f4c95d4622b7', 0, '2022-01-27 08:42:13'),
('b1dd93e83f5a6690e40e5388b9674ab181e1d9a07fe2392e0316ca144ba09038eb29762ba03cd464', 'a10bb2182ce4160d99601c584ff9cb2175908764d79913d87eef9a3a78887d2361112d31ce7e4a52', 0, '2022-01-27 04:48:51'),
('b2a76be89368e03c697460b9a94b24ae2f6e251265facf1247acaebbab67fa249df5d8e8f705dd21', '685bd784ec4d33939a4f840f2f4888a924080cf1f2f1ccc3109da4cadc8760ee42554cf775f9d617', 0, '2022-01-26 12:26:14'),
('bd1926ea83c444a8a807ba52ae130f46a4d9d4e3b8ca7071b7ecd619d1e54e0b0ff93c75a5a7e13c', '6ad63e45d1b9820ed158efcf19351e03259223a3a90482ca3b282180e08551a9645e29fed7cb2551', 0, '2022-01-26 12:56:49'),
('bd5e9d2b74d25ffb9ad94db77e400fde8f6cfeede37e4203257f5e9b362b9dd019bfaff849a912b8', 'a5273b28920917369003feba369b7096d078661e83a6b080eb5bbcf77f6f97afd2738ef584797172', 0, '2022-01-27 10:50:35'),
('c4cd1692bd2562b6419aebe4ed2900837b6c103d801f10c1a88ed74df88671de6deb706654320e2d', 'dc3a7630dea1b4d582a12a15cb7482b371c30f9001e8f1cdc710c661c90155b78038ec72b414ffc3', 0, '2022-01-26 13:40:21'),
('c61e9f07162bab3a22371cc93ef15fa2aaf0a0fb8cbfbee42c377e1472d697bc7773942370dbe0ed', '9927dc7fe7b2be5129e7fbda81d5ac5dc720e35900e696e341ee211a5aca6422c712f69291009bfc', 0, '2022-01-26 12:25:36'),
('c61f57c9672b8ed0d71fe1d0f7d5a4eeb77d691794a855a7b9755f77cc785d3f9ee42bb56903b1d7', '849ffe84b221ebe2627eb44cd2e770f1ffa696798864832a98dacdca18fd1cbceb01304abca68833', 0, '2022-01-26 13:12:06'),
('ca76670dc697277a0e26ee8e860e96ba40d2512e2846317dff65219eee3a87bd33ca20058b78b19e', '26f67fdc54fff407a9685bb5a9961f1d5b8b47518b2d92693df9fefe31bacf205dbe93abc6b0f17a', 0, '2022-01-27 04:50:15'),
('cb0c6bd0d8e68364331e0fcb9e08057007e374389fa1775405a1f97584998960b84b6e57bb34edd8', 'ef2a52848389e40a4e56b2492f379a0b5f88be553b66502365dfbb8d49e2d3b493b46d5e1081a830', 0, '2022-01-27 04:36:14'),
('cd670a38017087b3f129bf4a9c843405ce9674ae925cfac1254a3da80631a628ad61024fbaf39f56', '0c8fbd5bea0692a8ce877f3b18e4dba7a5b613c69407f73efc5eefad2ceec82970509a7590d7efb5', 0, '2022-01-27 09:35:06'),
('d83bcd3ddfd88dc36ef25279af48bfda7e3706bc6da88890d2efe1a96dcda946d05767a570545f10', 'e177b3669d469fd21daaa4bb5b072eb55071fe663f3e230f4c707e42227d1a636e983dab3d56a277', 0, '2022-01-26 13:22:32'),
('de699ceb4ea30928b0ee1b31ff35be20eb747339f1ff207d5e122f38befc826946623ed1ec930863', '0be72ad9de1426940084b91ea2002509a177ceab9f5ab534e7721f840619ea2c6ddd7d1c5148f623', 0, '2022-01-27 04:42:05'),
('e1340c865a0c3e03d5b14c2346263b6430bee95b2324a7b6204e5ef4ab6bc46bb88357bd95b33b97', 'ae98dce4015f2086f44c22bd14cea16e8c70954ff3c3783f6321546e867ce619c302d5f7a3b90bca', 0, '2022-01-27 05:16:43'),
('eb3ef5e95e9b90578bcf0afde8327178b33862224f7dc8f5f7f972243e63f5ca4afb8e86b54d53b4', 'f7b6a9a46619247abbe4ce573d9016fdec483a50af3095d30076ac8adbb2ffbb107310d6097ca80f', 0, '2022-01-27 09:36:08'),
('ec60830964b4c9ff56543813b5c9ad35633c76d3e2fc8c1fcb1c007c55970cdf249e9efc686be88e', 'c9a40d5b43e09ad0fea582ec9a30f3761ddd34e5902b3edec2d703d86e41afc557f9a9879a9b6ccb', 0, '2022-01-26 13:20:42'),
('ec8a08e15a05913e901db2451cc083bf484c986bff69526bdd5c8b2d9cc7421b269f3ca90561d943', '8e8a1f1871222047e8cfef5162a1d6ee0bd022cd9c5e68c991a507d177d1cbba6f784fe4f0e4eb0f', 0, '2022-01-27 11:11:05'),
('f38dc6a7171e4d7bd98589424cf2e7c38624ccea04ef425570d9bb88997ebe231d6d054c40667e30', 'af0f22abe90248d9c7d7b348a2629808efba7a2222f7b4c0e579cfebd69cbf24b7334e9b8d601d61', 0, '2022-01-26 12:58:39'),
('f6e10fb3b71ab69316fed15d6a24ed0b6bcf1b23ffc3187ab154663618bc9288f514ec559ebc9817', 'c6b73f33b9fbf6244ffed929a321ebe649d88c725404e5b53c8674c417a73ddaf56fb1044cf2ae4d', 0, '2022-01-26 12:59:14'),
('fbfbe354ac24b7fe7fb7ae0d8408c4c842154ab5ceae16cfca23413352a32138ca9f71cb62cb5c16', '1bb0c345e5bac0b3388ca1912bb7b80383a51e51e4bab18d64368175818e345a687e2aae3ebb95ee', 0, '2022-01-27 09:34:48'),
('fdba41a4c3856474676925c8b7c6c3aa846c1d1ed32757b6a3cb7cf1dc84aef44eaf0cd202f8bf65', 'f7a529ff0128d10fe0e7086608d70e7b116fd4a67816a3b9170e79656a95d74bf6adce9d713fafae', 0, '2022-01-26 12:33:06');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34'),
(2, 'role-create', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34'),
(3, 'role-edit', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34'),
(4, 'role-delete', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34'),
(5, 'category-list', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34'),
(6, 'category-create', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34'),
(7, 'category-edit', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34'),
(8, 'category-delete', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34'),
(9, 'subCategory-list', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34'),
(10, 'subCategory-create', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34'),
(11, 'subCategory-edit', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34'),
(12, 'subCategory-delete', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34'),
(13, 'content-list', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34'),
(14, 'content-create', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34'),
(15, 'content-edit', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34'),
(16, 'content-delete', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34'),
(17, 'user-list', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34'),
(18, 'user-create', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34'),
(19, 'user-edit', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34'),
(20, 'user-delete', 'web', '2020-10-15 06:59:34', '2020-10-15 06:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2020-10-15 07:02:22', '2020-10-15 07:02:22'),
(2, 'Teacher', 'web', '2020-10-23 00:50:56', '2020-10-23 00:50:56'),
(3, 'editor', 'web', '2020-10-25 07:44:03', '2020-10-25 07:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 3),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 3),
(17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_cat_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `cat_id`, `sub_cat_name`, `created_at`, `updated_at`) VALUES
(1, 2, 'Web Development', '2020-10-01 02:52:35', '2020-10-01 02:52:35'),
(4, 1, 'PHP Language Tutorial', '2020-10-10 04:24:30', '2020-10-10 04:24:30'),
(5, 2, 'C# Tutorial', '2020-10-10 20:27:02', '2020-10-10 20:27:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$ZPfASAqKKfgYZ6TtvXrO1OuGbzjdRpP79GWaII9ZFVGPURZpxg40S', NULL, '2020-09-15 00:49:25', '2020-09-15 00:49:25'),
(3, 'Hardik Savani', 'aadmin@gmail.com', NULL, '$2y$10$WVt2FR/kQVa1viwRWC590uH/LrqDEpbh4A3J/NHL8VFin.n20oJZO', '3sgvrcJlFuTTJe3CCJeiNHlEacCAACuUGLRwurUrLfkcAZdGK5O5MkakcIOH', '2020-10-15 07:02:22', '2020-10-15 07:02:22'),
(8, 'sham', 'sham@gmail.com', NULL, '$2y$10$3BXyXmdf3s63gargsySrHus/td1jqX1gcj3MEOhwzR7RyKlauWjLm', NULL, '2020-10-25 02:09:37', '2020-10-25 02:09:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

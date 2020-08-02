-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2020 at 12:14 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `knightsbridge`
--

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
(91, '2014_10_12_000000_create_users_table', 1),
(92, '2014_10_12_100000_create_password_resets_table', 1),
(93, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(94, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(95, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(96, '2016_06_01_000004_create_oauth_clients_table', 1),
(97, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(98, '2019_08_19_000000_create_failed_jobs_table', 1),
(99, '2020_08_01_062507_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('2e2ea96f395a463468c9463c790d2b9525eef55446c909b3ce803fe88e3dabd590b5e1939d9a20a6', NULL, 3, NULL, '[]', 0, '2020-08-02 03:31:47', '2020-08-02 03:31:47', '2021-08-02 09:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, NULL, 'Knightsbridge Personal Access Client', 'WQzlL4sVnlRolipjF0syXj5iBSkEzFXXzhCu0Ydc', NULL, 'http://localhost', 1, 0, 0, '2020-08-02 03:30:59', '2020-08-02 03:30:59'),
(2, NULL, 'Knightsbridge Password Grant Client', 'pv0WpQMIU1iTXeKhXcJtRYCOlswhaMCNv5zJAGyp', 'users', 'http://localhost', 0, 1, 0, '2020-08-02 03:30:59', '2020-08-02 03:30:59'),
(3, NULL, 'testuser', 'V3RSYa44Ft4c4640xSLwj7jfkKOmDR5WsKmjOIR1', NULL, '', 0, 0, 0, '2020-08-02 03:31:10', '2020-08-02 03:31:10');

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
(1, 1, '2020-08-02 03:30:59', '2020-08-02 03:30:59');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `seller_id`, `name`, `price`, `stock`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Emie Keeling', 9882.74, 52, 'http://localhost/storage/image/fqY0Lnlgjk.jpg', 'Sequi rem est illum ducimus facere. Exercitationem cum deleniti sit qui neque.', '2020-08-02 03:30:14', '2020-08-02 03:30:14'),
(2, 2, 'Tiana Yost', 1575.72, 18, 'http://localhost/storage/image/4C63EML63r.jpg', 'Voluptatem laborum ipsum asperiores voluptatem neque ut repellat. Error molestias repudiandae exercitationem rerum et in deserunt. Alias nobis hic qui cumque quia beatae consequuntur.', '2020-08-02 03:30:14', '2020-08-02 03:30:14'),
(3, 3, 'Joannie Altenwerth MD', 7923.67, 83, 'http://localhost/storage/image/yj6bEkpjTx.jpg', 'Voluptatem optio voluptatem totam ut. Suscipit aut dolor et. Dolorem quo soluta voluptas.', '2020-08-02 03:30:14', '2020-08-02 03:30:14'),
(4, 4, 'Marquise Wisozk PhD', 7778.92, 15, 'http://localhost/storage/image/vMSBcxZony.jpg', 'Temporibus error nihil velit quod. Ut voluptatem vero earum voluptatem consectetur. Veniam autem id minima incidunt maiores rerum alias.', '2020-08-02 03:30:14', '2020-08-02 03:30:14'),
(5, 4, 'Jovanny Heidenreich', 6516.61, 23, 'http://localhost/storage/image/PQpwN8ChEz.jpg', 'Dolores architecto consequuntur et voluptas amet. Perspiciatis libero ipsam quibusdam blanditiis nihil hic tempora. Sapiente ut accusantium accusantium nemo atque. Facere voluptas ipsam sit voluptatum et eos.', '2020-08-02 03:30:14', '2020-08-02 03:30:14'),
(6, 4, 'Dr. Kendall O\'Reilly MD', 973.91, 47, 'http://localhost/storage/image/zP490cnLSt.jpg', 'Alias iusto architecto adipisci dolores. Fugit quo iusto dolorem iure perferendis. Quidem facilis molestias ipsam sint.', '2020-08-02 03:30:14', '2020-08-02 03:30:14'),
(7, 7, 'Prof. Riley Greenholt', 2805.52, 69, 'http://localhost/storage/image/x2FTn1mVNl.jpg', 'Ipsam ut quia voluptates. Tempore debitis aliquam deleniti provident laudantium voluptas cumque. Atque ut quidem qui rerum nesciunt tempora.', '2020-08-02 03:30:14', '2020-08-02 03:30:14'),
(8, 8, 'Jaylin Lang', 7903.98, 83, 'http://localhost/storage/image/BbD0zGziKA.jpg', 'Sunt et sit omnis nisi. Voluptatem iste vero cum voluptatem voluptatem sed. Delectus ducimus ut et. Accusamus et possimus incidunt dolores illo sit.', '2020-08-02 03:30:14', '2020-08-02 03:30:14'),
(9, 9, 'Armando Schumm', 1178.00, 3, 'http://localhost/storage/image/t46Wystkb6.jpg', 'Sint sequi laudantium inventore minima dolorem laborum enim. Harum at qui et vero consequatur.', '2020-08-02 03:30:14', '2020-08-02 03:30:14'),
(10, 10, 'Dr. Sally Schoen DDS', 1900.04, 53, 'http://localhost/storage/image/6GgaCV41g6.jpg', 'Maiores tempore nam aut quia facilis beatae. Fugit deserunt non et perferendis velit inventore aliquid. Esse eos voluptates modi nesciunt repudiandae. Ut et doloremque nisi non nesciunt maiores et.', '2020-08-02 03:30:14', '2020-08-02 03:30:14'),
(11, 11, 'Elisha Cormier', 956.16, 70, 'http://localhost/storage/image/xG37DgN3Jr.jpg', 'Vel id vel ut consequatur eveniet eos. Incidunt dolore culpa quae consequatur id et sint in. Illum aliquid ut perferendis sed asperiores animi.', '2020-08-02 03:30:14', '2020-08-02 03:30:14'),
(12, 12, 'Joanie Brekke', 3519.03, 78, 'http://localhost/storage/image/2BQTeze3Ux.jpg', 'Quia quam dolorum perferendis. Voluptatum rem cum debitis pariatur omnis. Sunt sunt itaque temporibus excepturi voluptates aut necessitatibus. Repellat similique nisi unde quo sed consequatur in.', '2020-08-02 03:30:14', '2020-08-02 03:30:14'),
(13, 13, 'Prof. Marshall Sporer Sr.', 6450.48, 14, 'http://localhost/storage/image/0yZlAzbX0v.jpg', 'Totam architecto et omnis velit odio quibusdam. Tempora necessitatibus corrupti reiciendis accusantium est distinctio. Sed porro consequatur quisquam. Molestiae ea sint excepturi delectus dolores molestiae.', '2020-08-02 03:30:15', '2020-08-02 03:30:15'),
(14, 14, 'Aric Bednar', 8116.43, 2, 'http://localhost/storage/image/cPs4syeMOE.jpg', 'Culpa sunt voluptatum laudantium a nostrum. Repudiandae qui itaque id ratione nam maxime blanditiis. Animi praesentium est quisquam sit ad natus. Ab aliquid deserunt et aperiam. Impedit dolores assumenda molestiae earum.', '2020-08-02 03:30:15', '2020-08-02 03:30:15'),
(15, 15, 'Yoshiko Mohr', 5152.40, 50, 'http://localhost/storage/image/AfEgrnKV1r.jpg', 'Quia ratione soluta tempora eos nulla. Consequatur iure animi voluptatem est vel possimus. Eum hic maiores repellendus dolorum qui consequatur velit.', '2020-08-02 03:30:15', '2020-08-02 03:30:15'),
(16, 16, 'Carlotta Runolfsson', 3997.57, 60, 'http://localhost/storage/image/yuj8dGXYUv.jpg', 'Sed consequatur quas voluptatem sunt. Consequatur dolor eos cumque alias labore pariatur quisquam. Accusamus quasi error et.', '2020-08-02 03:30:15', '2020-08-02 03:30:15'),
(17, 17, 'Frankie Schaefer', 1258.30, 36, 'http://localhost/storage/image/urzAIAgk4S.jpg', 'Aut minus deleniti non maiores non numquam beatae. Porro aliquid eos voluptatem corporis qui enim aspernatur in. Quaerat tempora dolorem ut repellendus enim ut. Illo quia placeat repellendus earum. Qui velit cumque esse eum non numquam laborum.', '2020-08-02 03:30:15', '2020-08-02 03:30:15'),
(18, 18, 'Verdie Nikolaus DDS', 2205.84, 81, 'http://localhost/storage/image/0Y2grswTV6.jpg', 'Aut dicta animi perferendis ipsam quam. Qui quidem ut similique dolores alias nesciunt. Asperiores quis rerum animi vel est explicabo cum.', '2020-08-02 03:30:15', '2020-08-02 03:30:15'),
(19, 19, 'Mariela Kemmer', 3681.35, 14, 'http://localhost/storage/image/oE7Aw6IQAo.jpg', 'Et velit velit fugit nobis vero ipsam. Aspernatur corporis veniam aut architecto dolor repellat. Ut debitis non laboriosam nulla eum eius. Veniam sunt soluta pariatur facere voluptatum possimus necessitatibus.', '2020-08-02 03:30:15', '2020-08-02 03:30:15'),
(20, 20, 'Prof. Cicero Tillman', 2364.33, 89, 'http://localhost/storage/image/SLoNIWA0Z6.jpg', 'Corporis et consequatur cum. Harum est ut repellendus sit enim. Omnis minima omnis voluptatibus est omnis sed.', '2020-08-02 03:30:15', '2020-08-02 03:30:15'),
(21, 21, 'Tristin Bradtke Sr.', 1636.56, 22, 'http://localhost/storage/image/fYFj01qzlv.jpg', 'Voluptatem perspiciatis voluptates et unde. Reiciendis rerum dolorem fugiat porro aliquam sint. Similique odio eaque veniam accusantium debitis. Commodi aut itaque nisi nesciunt aut velit officia.', '2020-08-02 03:30:15', '2020-08-02 03:30:15'),
(22, 22, 'Desmond Kulas V', 5473.20, 39, 'http://localhost/storage/image/FjEP5FdA5p.jpg', 'Iure et pariatur aut quibusdam fugit quae. Vel asperiores quia cumque aut labore tenetur. Laudantium harum ratione qui reiciendis unde.', '2020-08-02 03:30:16', '2020-08-02 03:30:16'),
(23, 23, 'Enid Wiza', 9898.98, 23, 'http://localhost/storage/image/mxL07roc1G.jpg', 'Facilis voluptatum sit reprehenderit et rerum minima. Quos ut ut sit doloribus itaque qui sit. Qui ut non ratione ipsam aut. Sunt quas quasi delectus laudantium qui ratione.', '2020-08-02 03:30:16', '2020-08-02 03:30:16'),
(24, 24, 'Dr. Ron Oberbrunner', 4349.56, 70, 'http://localhost/storage/image/O7WzVYMRB5.jpg', 'Est dolores enim fugit perspiciatis aut. Soluta voluptatem quibusdam aliquam aut laborum autem cum. Incidunt recusandae sed culpa facilis aut commodi et.', '2020-08-02 03:30:16', '2020-08-02 03:30:16'),
(25, 25, 'Delphine Cassin', 2520.94, 19, 'http://localhost/storage/image/EcVVdIn7QC.jpg', 'Ut aliquam qui voluptas ut doloremque ad id consectetur. Natus voluptas laboriosam quasi omnis sunt consequatur. Ut qui accusantium illum quo. Necessitatibus quae sed cum modi consequatur fugit.', '2020-08-02 03:30:16', '2020-08-02 03:30:16'),
(26, 26, 'Prof. Brandon Upton III', 674.79, 56, 'http://localhost/storage/image/Iy79E5viwk.jpg', 'Omnis ut modi eligendi eveniet. Nisi iure sint omnis esse impedit quia incidunt. Non porro est veritatis. Maiores nobis quos sed id aliquam commodi quia.', '2020-08-02 03:30:16', '2020-08-02 03:30:16'),
(27, 27, 'Jacquelyn Howe', 3497.52, 51, 'http://localhost/storage/image/9bnxVuy6vf.jpg', 'Placeat sed reiciendis nobis natus quia qui commodi aspernatur. Aut totam assumenda molestiae sequi aspernatur.', '2020-08-02 03:30:16', '2020-08-02 03:30:16'),
(28, 28, 'Ms. Esmeralda Schiller', 7117.80, 40, 'http://localhost/storage/image/pJ9Vmf3nBZ.jpg', 'Voluptas nam incidunt cumque nostrum quia reprehenderit quaerat. Rerum voluptas sunt impedit voluptas consectetur rerum. Repudiandae dolores ut consequuntur possimus. Qui ut harum non repellendus ut.', '2020-08-02 03:30:16', '2020-08-02 03:30:16'),
(29, 29, 'Mustafa Mante', 1607.52, 74, 'http://localhost/storage/image/tSEzWAVsAk.jpg', 'Ut ut reprehenderit voluptate sed. Dolores iusto id repellat nesciunt esse tempore quo. Nihil sed minus repellendus ut aspernatur excepturi. Facilis voluptatum dicta et cumque officia ut enim dolorum. Est reiciendis qui ut quis.', '2020-08-02 03:30:16', '2020-08-02 03:30:16'),
(30, 30, 'Camden Pfeffer', 7097.45, 12, 'http://localhost/storage/image/lciEWKA7WW.jpg', 'Id accusamus maxime rem animi laudantium veritatis et. Laudantium est sit optio. Nobis a quibusdam et aliquid numquam.', '2020-08-02 03:30:16', '2020-08-02 03:30:16'),
(31, 31, 'Precious Ferry', 8346.83, 75, 'http://localhost/storage/image/WhdNOkBFTh.jpg', 'Beatae est ex quasi consequatur vitae. Sunt tenetur eius dolorum corrupti sit.', '2020-08-02 03:30:16', '2020-08-02 03:30:16'),
(32, 32, 'Zetta Kemmer', 4005.54, 75, 'http://localhost/storage/image/8i3uwZrTmv.jpg', 'Nemo vero quaerat aut sed. Et incidunt sapiente officiis dolore. Aut saepe sint eum asperiores vero id. Dolor culpa explicabo libero qui. Consequatur eos aut est dolorem enim ea.', '2020-08-02 03:30:16', '2020-08-02 03:30:16'),
(33, 33, 'Reina Osinski', 7429.10, 29, 'http://localhost/storage/image/EfoTQCLaZy.jpg', 'Laudantium est laboriosam inventore aliquam fugiat quibusdam doloribus. Fugiat debitis officiis assumenda dolores rem. Beatae temporibus voluptatem inventore porro quae illum. Est ea temporibus nam dignissimos eveniet quaerat.', '2020-08-02 03:30:16', '2020-08-02 03:30:16'),
(34, 34, 'Royal Harris', 3640.36, 16, 'http://localhost/storage/image/3tfU7cFgyJ.jpg', 'Accusantium molestiae ipsum possimus libero mollitia amet voluptatem. Qui sequi aut enim. Rem totam autem aut provident velit quia magni fuga. Veritatis voluptatum velit cupiditate ipsum.', '2020-08-02 03:30:16', '2020-08-02 03:30:16'),
(35, 35, 'Emerald Luettgen', 4283.00, 12, 'http://localhost/storage/image/XGV1eiOwbZ.jpg', 'Recusandae fuga eaque porro et dolorum vero quia. Et perferendis optio facilis consequatur voluptatem quidem qui. Magni praesentium sed odio ipsum. Ex laudantium rerum earum repudiandae voluptas earum nam.', '2020-08-02 03:30:16', '2020-08-02 03:30:16'),
(36, 36, 'Luis Reichert', 4224.12, 17, 'http://localhost/storage/image/N2owUtvpAU.jpg', 'Officia reprehenderit doloribus reprehenderit corporis. Molestiae rem nisi ut praesentium culpa aut maxime. Dolor rerum dolores dolorem animi rerum.', '2020-08-02 03:30:16', '2020-08-02 03:30:16'),
(37, 37, 'Derick Shanahan', 8676.55, 3, 'http://localhost/storage/image/zGsgTeaxWI.jpg', 'Ut id quasi adipisci iusto omnis. Est est nostrum expedita eligendi qui ipsum. Hic eaque reprehenderit qui eligendi laborum exercitationem sit. Quibusdam ut sunt tempore nihil.', '2020-08-02 03:30:17', '2020-08-02 03:30:17'),
(38, 38, 'Clement Schmeler', 423.81, 1, 'http://localhost/storage/image/oxfZszxBdg.jpg', 'Nihil explicabo asperiores libero similique dignissimos quia. Repellat iure sapiente esse dolores sit eveniet. Ut ut beatae perspiciatis quia ipsam error in a.', '2020-08-02 03:30:17', '2020-08-02 03:30:17'),
(39, 39, 'Clark Waelchi V', 8846.34, 100, 'http://localhost/storage/image/oK7b4TGceT.jpg', 'Et quibusdam sint sed quia asperiores. Consequatur totam id consequatur quo aut provident aut aliquam. Hic ipsa assumenda impedit.', '2020-08-02 03:30:17', '2020-08-02 03:30:17'),
(40, 40, 'Lane Durgan', 4806.77, 31, 'http://localhost/storage/image/mmcf0hYcaO.jpg', 'Velit sed similique minus maiores pariatur iste. Et aut aut qui neque amet. Corrupti et totam pariatur nesciunt.', '2020-08-02 03:30:17', '2020-08-02 03:30:17'),
(41, 41, 'Roslyn Cormier', 668.01, 68, 'http://localhost/storage/image/wXRuqFK3hV.jpg', 'Dolore et maxime ipsa eveniet id adipisci eos vel. Ut a sunt odit unde magni a est. Et amet laboriosam eos non omnis. Ullam natus non odio.', '2020-08-02 03:30:17', '2020-08-02 03:30:17'),
(42, 42, 'Krista Jenkins', 1095.64, 25, 'http://localhost/storage/image/QHa1l8plwA.jpg', 'Ullam tempore explicabo atque corrupti aut laborum ipsam ut. Aut iure voluptatum dolores. Itaque officia eaque consequatur sit accusamus eos. Libero ad blanditiis laborum eius in hic porro nisi.', '2020-08-02 03:30:17', '2020-08-02 03:30:17'),
(43, 43, 'Miss Elisabeth Kutch', 5805.61, 8, 'http://localhost/storage/image/GjYEXEw398.jpg', 'Quia fugiat aperiam vel. Asperiores itaque et deleniti non. Sapiente blanditiis nihil dicta ullam aperiam vel esse.', '2020-08-02 03:30:17', '2020-08-02 03:30:17'),
(44, 44, 'Joanny Beahan', 443.73, 4, 'http://localhost/storage/image/V4fOvWxRzi.jpg', 'Reiciendis sed excepturi nihil est ut placeat. Eum sequi similique at eum et veniam. Occaecati corrupti rerum iure eaque sint quidem. Tenetur quo omnis laboriosam qui ex est.', '2020-08-02 03:30:17', '2020-08-02 03:30:17'),
(45, 45, 'Mr. Candelario Koch V', 4900.03, 79, 'http://localhost/storage/image/XAzIHaGnWp.jpg', 'Sed aut odit commodi et ut. Rem explicabo sapiente minima nulla ipsam libero. Dolores accusamus repellat tenetur est mollitia. Dicta mollitia doloremque nobis voluptates dicta nisi autem.', '2020-08-02 03:30:17', '2020-08-02 03:30:17'),
(46, 46, 'Ms. Dorothea Denesik DVM', 5472.65, 68, 'http://localhost/storage/image/yd0kC73YYm.jpg', 'Et iusto nemo quibusdam aut eos officiis. Consequatur nobis qui qui ut. Quam labore cupiditate libero in saepe non.', '2020-08-02 03:30:17', '2020-08-02 03:30:17'),
(47, 47, 'Felicita Stark Jr.', 6190.02, 44, 'http://localhost/storage/image/LzyvQ8bu5p.jpg', 'Sunt sunt veritatis modi velit qui omnis in enim. Exercitationem dolores non rerum ab id ipsam quas ea. Labore quas quis molestias sed aspernatur cum ipsum. Dolorem eligendi culpa velit aut.', '2020-08-02 03:30:17', '2020-08-02 03:30:17'),
(48, 48, 'Prof. Lillie Ankunding', 4735.59, 13, 'http://localhost/storage/image/IYUAHkE9Mk.jpg', 'Repellat quia eius ab nulla aliquid natus. Quis nihil corrupti ratione ad quis voluptate saepe. Saepe temporibus ut dolore consequatur. Id corrupti expedita non velit voluptatum est perspiciatis.', '2020-08-02 03:30:17', '2020-08-02 03:30:17'),
(49, 49, 'Jermaine Bahringer', 8971.58, 41, 'http://localhost/storage/image/kK0ZF1rI9Y.jpg', 'Id occaecati quo et dignissimos qui blanditiis non. Possimus expedita dicta minima ut. Cumque qui dignissimos tenetur.', '2020-08-02 03:30:17', '2020-08-02 03:30:17'),
(50, 50, 'Dakota Barton', 8119.87, 71, 'http://localhost/storage/image/Poshj3HDnA.jpg', 'Error officia possimus aut iusto laudantium aut. Quis et ullam commodi tempora rerum rerum ipsa qui. Dolores ut rerum molestiae corporis sint repellat. Tempora animi est voluptatum consequuntur quis dolorum et.', '2020-08-02 03:30:17', '2020-08-02 03:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
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
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dillon Heaney DVM', 'hoppe.mylene@example.com', '2020-08-02 03:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iJrAl02OsM', '2020-08-02 03:30:11', '2020-08-02 03:30:11'),
(2, 'Patience Cummerata', 'brigitte02@example.com', '2020-08-02 03:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gL58ks0RWb', '2020-08-02 03:30:11', '2020-08-02 03:30:11'),
(3, 'Eudora Corkery', 'stevie18@example.org', '2020-08-02 03:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y9kQX58dia', '2020-08-02 03:30:11', '2020-08-02 03:30:11'),
(4, 'Emma Gulgowski', 'kjaskolski@example.com', '2020-08-02 03:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LVdWesKCD2', '2020-08-02 03:30:11', '2020-08-02 03:30:11'),
(5, 'Pierre Vandervort', 'darian31@example.org', '2020-08-02 03:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U6nMaDs6an', '2020-08-02 03:30:11', '2020-08-02 03:30:11'),
(6, 'Harry Gleason', 'savannah.ryan@example.com', '2020-08-02 03:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lg8hMUgnuO', '2020-08-02 03:30:11', '2020-08-02 03:30:11'),
(7, 'Katherine Dickinson', 'carmen36@example.com', '2020-08-02 03:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cqqPI7q6bu', '2020-08-02 03:30:11', '2020-08-02 03:30:11'),
(8, 'Dr. Juston Kiehn', 'lurline.satterfield@example.net', '2020-08-02 03:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kno38npWIF', '2020-08-02 03:30:11', '2020-08-02 03:30:11'),
(9, 'Dr. Tito Kunde MD', 'tnikolaus@example.com', '2020-08-02 03:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Nii9PTYLZS', '2020-08-02 03:30:11', '2020-08-02 03:30:11'),
(10, 'Elfrieda Volkman', 'rolfson.ryann@example.com', '2020-08-02 03:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WUjslNWZgM', '2020-08-02 03:30:11', '2020-08-02 03:30:11'),
(11, 'Dr. Jed Robel DVM', 'caroline.aufderhar@example.net', '2020-08-02 03:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FugWCjc7lG', '2020-08-02 03:30:11', '2020-08-02 03:30:11'),
(12, 'Micheal Shields', 'thora.corkery@example.net', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V7rYUqtDoH', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(13, 'Deangelo Welch', 'tess44@example.com', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Btsis1Tlfm', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(14, 'Milford Reichel', 'cordie57@example.org', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pTLhjpBOIU', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(15, 'Jacky Jast', 'jmiller@example.net', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sPOJKvPyOz', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(16, 'Celestine Dibbert DVM', 'ike.stanton@example.org', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UMETy20lSM', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(17, 'Shane Borer', 'wromaguera@example.com', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BV4R1HnVLg', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(18, 'Miss Rosina Eichmann DVM', 'funk.gust@example.net', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1WolFLr9ip', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(19, 'Nova Hoppe', 'nstehr@example.net', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ty1lfeoFEz', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(20, 'Talia Dooley', 'bertram64@example.net', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ocb5vmYqaw', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(21, 'Beverly Welch', 'nikki06@example.net', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TmRzLADcMg', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(22, 'Dr. Lilian Rippin Sr.', 'lowe.kylee@example.org', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'F7oTliY07V', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(23, 'Mr. Dillan O\'Connell', 'eileen51@example.org', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xo7NOjhYrh', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(24, 'Coleman Mertz', 'zsteuber@example.net', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rCI3Srzil5', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(25, 'Mr. Rahul Reichel', 'vlueilwitz@example.com', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uX1mrMU5oP', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(26, 'Mr. Brennan Gulgowski', 'ymills@example.net', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EVyEk9MCMF', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(27, 'Dr. Adolfo Bergnaum MD', 'macey.reichert@example.net', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'csbYwUZhOA', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(28, 'Dr. Alejandra O\'Keefe V', 'marquise12@example.net', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0jl2NaeC06', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(29, 'Orin Koelpin', 'manuela24@example.org', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3qaZtgQ8Ks', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(30, 'Julianne Dietrich II', 'johann.zboncak@example.org', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2QC2zPkly7', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(31, 'Dr. Marjory Gleichner II', 'dlangworth@example.com', '2020-08-02 03:30:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nJLVAd4Z8V', '2020-08-02 03:30:12', '2020-08-02 03:30:12'),
(32, 'Mr. Trey McCullough', 'ueffertz@example.com', '2020-08-02 03:30:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C68e3CnYWz', '2020-08-02 03:30:13', '2020-08-02 03:30:13'),
(33, 'Sofia Nader', 'fermin24@example.com', '2020-08-02 03:30:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FPJKZbvfpK', '2020-08-02 03:30:13', '2020-08-02 03:30:13'),
(34, 'Mrs. Zena Ziemann Sr.', 'bergnaum.sedrick@example.com', '2020-08-02 03:30:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZQ5mctDk84', '2020-08-02 03:30:13', '2020-08-02 03:30:13'),
(35, 'Mr. Silas Blick DDS', 'kulas.craig@example.com', '2020-08-02 03:30:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pZjnrMOpwq', '2020-08-02 03:30:13', '2020-08-02 03:30:13'),
(36, 'Marilie Halvorson', 'jamie.ullrich@example.net', '2020-08-02 03:30:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P2FQwVrKXV', '2020-08-02 03:30:13', '2020-08-02 03:30:13'),
(37, 'Torrey Roob', 'bryce01@example.com', '2020-08-02 03:30:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cY4U1FSqa7', '2020-08-02 03:30:13', '2020-08-02 03:30:13'),
(38, 'Jeffry McCullough', 'wallace07@example.com', '2020-08-02 03:30:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ygFXvDOtJM', '2020-08-02 03:30:13', '2020-08-02 03:30:13'),
(39, 'Mr. Julien Stroman PhD', 'travis.toy@example.net', '2020-08-02 03:30:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wKou6WBn76', '2020-08-02 03:30:13', '2020-08-02 03:30:13'),
(40, 'Jordy Kub', 'dprohaska@example.net', '2020-08-02 03:30:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kuxlo3WGCN', '2020-08-02 03:30:13', '2020-08-02 03:30:13'),
(41, 'Miss Tess Hudson MD', 'okuhn@example.com', '2020-08-02 03:30:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IKSrfIQ1sU', '2020-08-02 03:30:13', '2020-08-02 03:30:13'),
(42, 'Mrs. Ada Oberbrunner', 'champlin.calista@example.net', '2020-08-02 03:30:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kGRfQpjZl5', '2020-08-02 03:30:13', '2020-08-02 03:30:13'),
(43, 'Leone Cassin', 'elvis69@example.com', '2020-08-02 03:30:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZYwXo5E18y', '2020-08-02 03:30:13', '2020-08-02 03:30:13'),
(44, 'Oswald Johnson DDS', 'grutherford@example.com', '2020-08-02 03:30:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FMsVs05E4k', '2020-08-02 03:30:13', '2020-08-02 03:30:13'),
(45, 'Caleigh Kassulke', 'effertz.clementine@example.net', '2020-08-02 03:30:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c4BGUFmggi', '2020-08-02 03:30:13', '2020-08-02 03:30:13'),
(46, 'Leann Gerhold II', 'tsawayn@example.com', '2020-08-02 03:30:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1rMCjzRyLT', '2020-08-02 03:30:13', '2020-08-02 03:30:13'),
(47, 'Domenica Koss I', 'domenic76@example.org', '2020-08-02 03:30:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '68YtOA4WRw', '2020-08-02 03:30:14', '2020-08-02 03:30:14'),
(48, 'Ms. Tanya Cremin I', 'nash.schultz@example.org', '2020-08-02 03:30:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yM28no2NpY', '2020-08-02 03:30:14', '2020-08-02 03:30:14'),
(49, 'Fleta Braun PhD', 'baumbach.summer@example.com', '2020-08-02 03:30:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z8ChWASpIW', '2020-08-02 03:30:14', '2020-08-02 03:30:14'),
(50, 'Myrtle Jacobi', 'danika20@example.com', '2020-08-02 03:30:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WlvSr0fjsm', '2020-08-02 03:30:14', '2020-08-02 03:30:14');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_seller_id_foreign` (`seller_id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sellers_email_unique` (`email`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

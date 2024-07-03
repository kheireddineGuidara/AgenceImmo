-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 03, 2024 at 12:01 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agence`
--

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_02_165816_create_properties_table', 1),
(6, '2024_06_03_131956_create_options_table', 1),
(7, '2024_06_03_142633_create_option_property_table', 1),
(8, '2024_06_05_104506_add_deleted_at_to_properties', 1),
(9, '2024_06_06_114212_add_role_to_users', 2),
(10, '2024_06_07_154359_add_image_to_properties', 3),
(11, '2024_06_10_095833_add_user_id_to_properties_table', 4),
(12, '2024_06_10_102836_create_permission_tables', 5),
(13, '2024_06_10_104652_add_user_id_to_options_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `created_at`, `updated_at`, `user_id`) VALUES
(6, 'in', '2024-06-06 07:25:42', '2024-06-06 07:25:42', 7),
(8, 'necessitatibus', '2024-06-06 07:25:42', '2024-06-06 07:25:42', NULL),
(11, 'Climatiseur', '2024-06-10 09:49:37', '2024-06-10 09:49:37', NULL),
(13, 'salemm', '2024-06-10 09:56:48', '2024-06-10 09:56:55', 7),
(19, 'Ascenseur', '2024-06-11 08:09:26', '2024-06-11 08:09:26', 2),
(21, 'essai', '2024-06-11 08:44:59', '2024-06-11 08:44:59', 10);

-- --------------------------------------------------------

--
-- Table structure for table `option_property`
--

CREATE TABLE `option_property` (
  `option_id` bigint UNSIGNED NOT NULL,
  `property_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_property`
--

INSERT INTO `option_property` (`option_id`, `property_id`) VALUES
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(6, 15),
(6, 16),
(6, 17),
(6, 19),
(6, 21),
(6, 22),
(6, 23),
(6, 24),
(6, 25),
(6, 27),
(6, 30),
(6, 32),
(6, 34),
(6, 35),
(6, 36),
(6, 39),
(6, 40),
(6, 41),
(6, 43),
(6, 44),
(6, 46),
(6, 47),
(6, 48),
(6, 49);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `surface` int NOT NULL,
  `rooms` int NOT NULL,
  `bedrooms` int NOT NULL,
  `floor` int NOT NULL,
  `price` int NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sold` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `title`, `description`, `surface`, `rooms`, `bedrooms`, `floor`, `price`, `city`, `address`, `postal_code`, `sold`, `created_at`, `updated_at`, `deleted_at`, `image`, `user_id`) VALUES
(1, 'Corporis voluptatem iure.', 'Ipsa quaerat voluptas quasi perferendis.', 46, 10, 3, 5, 849404, 'Dubois', '67, place Bazin\n58598 Richard', '62345', 0, '2024-06-06 07:25:42', '2024-06-06 07:25:42', NULL, NULL, NULL),
(2, 'Ipsum perspiciatis aut.', 'Est nam sed.', 335, 8, 6, 2, 489159, 'Blin-les-Bains', '6, boulevard de Noel\n99095 Valleedan', '28969', 0, '2024-06-06 07:25:43', '2024-06-06 07:25:43', NULL, NULL, NULL),
(3, 'Modi voluptas qui numquam hic.', 'Explicabo sed quis voluptatem.', 21, 6, 6, 0, 453434, 'Salmon', '37, avenue Faure\n49603 Legendre', '70679', 0, '2024-06-06 07:25:43', '2024-06-06 07:25:43', NULL, NULL, NULL),
(4, 'Aliquam eius.', 'Dolor molestias voluptatum.', 151, 3, 2, 0, 582636, 'Fabre-les-Bains', '194, rue de Gomez\n02902 Baron', '39383', 0, '2024-06-06 07:25:43', '2024-06-06 07:25:43', NULL, NULL, NULL),
(5, 'Ut perspiciatis ea et.', 'Maxime quo et veniam.', 290, 8, 1, 0, 809339, 'Mallet-sur-Hubert', '88, chemin Bonnin\n79595 Beguenec', '66310', 0, '2024-06-06 07:25:43', '2024-06-06 07:25:43', NULL, NULL, NULL),
(6, 'Neque quos ut vero', 'Nihil maiores perspiciatis consequatur possimus quo.', 209, 8, 6, 12, 339644, 'Coste', '484, avenue Rémy Samson70324 Marion-sur-Lucas', '22052', 0, '2024-06-06 07:25:43', '2024-06-11 08:28:07', NULL, NULL, NULL),
(7, 'Fuga cumque vel.', 'Velit consequatur molestias ex dolorum.', 218, 8, 8, 12, 645021, 'Leleu', '861, place Mendes\n10052 Weber-sur-Dias', '13810', 0, '2024-06-06 07:25:43', '2024-06-06 07:25:43', NULL, NULL, NULL),
(8, 'Impedit neque illo.', 'Vero sed enim.', 75, 6, 1, 15, 150016, 'Turpin', '48, place Louise Besnard\n79331 Besson', '89242', 0, '2024-06-06 07:25:43', '2024-06-06 07:25:43', NULL, NULL, NULL),
(9, 'Nobis ut consequatur.', 'Omnis deleniti modi.', 47, 4, 2, 14, 248789, 'Brianddan', '82, boulevard Bailly\n51672 Bourgeoisboeuf', '49155', 0, '2024-06-06 07:25:43', '2024-06-06 07:25:43', NULL, NULL, NULL),
(10, 'Officiis soluta dignissimos.', 'Recusandae at illo.', 122, 6, 6, 2, 796467, 'Andre', '92, avenue de Seguin\n69469 Blin-sur-Mer', '95425', 0, '2024-06-06 07:25:43', '2024-06-06 07:25:43', NULL, NULL, NULL),
(11, 'Quae vitae occaecati.', 'Impedit voluptatem sint consequatur aut.', 158, 10, 5, 13, 420625, 'Rey', 'place Marchand\n58001 Bernier', '68024', 0, '2024-06-06 07:25:43', '2024-06-06 07:25:43', NULL, NULL, NULL),
(12, 'Quis et dolorum.', 'Iste voluptas laborum accusantium.', 195, 10, 4, 15, 731981, 'Maillet', 'avenue Richard Coulon\n54173 Samson-sur-Masse', '71122', 0, '2024-06-06 07:25:43', '2024-06-06 07:25:43', NULL, NULL, NULL),
(13, 'Officia est laborum.', 'Dolores qui accusamus et dolor a.', 106, 8, 1, 6, 874954, 'Collet', '73, place Henri Michaud\n02436 Camus', '94935', 0, '2024-06-06 07:25:43', '2024-06-06 07:25:43', NULL, NULL, NULL),
(14, 'Asperiores reprehenderit repudiandae.', 'Totam deleniti saepe sit.', 325, 8, 2, 9, 892103, 'Prevost', '941, rue Martins\n43466 Ferreira-les-Bains', '95991', 0, '2024-06-06 07:25:43', '2024-06-06 07:25:43', NULL, NULL, NULL),
(15, 'Tenetur iusto totam.', 'Fuga id suscipit veniam nulla non.', 338, 7, 4, 3, 960271, 'Duval', '37, impasse Dorothée Couturier\n81211 Da Costa', '31768', 0, '2024-06-06 07:25:43', '2024-06-06 07:25:43', NULL, NULL, NULL),
(16, 'Temporibus totam perspiciatis.', 'Ex eos velit nobis.', 96, 4, 1, 0, 785790, 'Guillet', '5, place de Salmon\n88566 Turpin', '17116', 0, '2024-06-06 07:25:43', '2024-06-06 07:25:43', NULL, NULL, NULL),
(17, 'Eum sequi ut eum.', 'Sed eligendi est dolor omnis.', 126, 6, 2, 8, 236007, 'Garcia', 'impasse Laurent Ledoux\n15064 Coulon', '97407', 0, '2024-06-06 07:25:43', '2024-06-06 07:25:43', NULL, NULL, NULL),
(19, 'Illum maiores.', 'Voluptatem corrupti esse rem.', 94, 3, 1, 1, 701804, 'ValentinBourg', 'avenue de Joubert\n48708 Marion', '35728', 0, '2024-06-06 07:25:43', '2024-06-06 07:25:43', NULL, NULL, NULL),
(21, 'Qui deleniti quos quo reprehenderit.', 'Aperiam inventore deleniti distinctio.', 36, 6, 5, 10, 539783, 'Bonnet', '842, rue Guy Mendes15549 Sanchez-la-Forêt', '20980', 0, '2024-06-06 07:25:44', '2024-06-10 14:24:03', NULL, 'property/EMA8ynCmwQwIjQnzM0lljBAyfmJDbp363HPaMmJH.webp', NULL),
(22, 'Quos aperiam vero.', 'Consequuntur ipsam ducimus.', 23, 2, 1, 11, 238800, 'Martinez', '43, place Legros57262 Lecomte-sur-Lefort', '37717', 0, '2024-06-06 07:25:44', '2024-06-07 15:14:02', NULL, 'property/qaoWPtBsghocLe88ZXtvOzuGnYMAvNJF9yxmsxiG.webp', NULL),
(23, 'Dolores quae.', 'Sint consequatur vitae esse.', 300, 7, 7, 6, 508329, 'Boulay-sur-Lamy', '91, boulevard de Lacombe49105 Sauvage', '50441', 0, '2024-06-06 07:25:44', '2024-06-11 10:29:25', NULL, 'property/KZAbc8YQq3QRgGaEZraqVgX42G9Ahk1ooWBWm6Ao.jpg', NULL),
(24, 'Dolorem dicta rerum quam.', 'Eum fuga dolorum cum blanditiis.', 223, 7, 5, 7, 535199, 'Torres', '48, boulevard de Lucas53365 Roux', '46986', 0, '2024-06-06 07:25:44', '2024-06-11 10:29:11', NULL, 'property/yxuuzAIs3gwjZ2ErNQxHjMa2UaxRt0JJVeCDsUKi.webp', NULL),
(25, 'Asperiores porro quidem quia dolor.', 'Aut qui non vel a.', 161, 6, 1, 0, 702138, 'Raymonddan', '51, avenue Grenier\n02564 Bailly', '76438', 0, '2024-06-06 07:25:44', '2024-06-10 10:54:31', '2024-06-10 11:54:31', NULL, NULL),
(27, 'Labore non quo tempora.', 'Tempora rerum rem tempora et commodi.', 190, 3, 3, 11, 282040, 'MunozBourg', '7, impasse Delannoy\n58811 Lefort', '76191', 0, '2024-06-06 07:25:44', '2024-06-06 07:25:44', NULL, NULL, NULL),
(30, 'Mollitia sint et.', 'Porro ipsa et sed.', 209, 8, 7, 9, 868206, 'Mailletboeuf', '8, rue Margaret Hubert53766 Lucas', '36209', 0, '2024-06-06 07:25:44', '2024-06-11 08:17:50', NULL, 'property/E0he9tfFYBOedEgvLQvNDKTjKTecKamq8tL1Pagx.jpg', NULL),
(32, 'Quia adipisci tempora.', 'Iure officia ad accusantium ut neque.', 51, 6, 3, 6, 289217, 'Valentin-la-Forêt', '558, impasse Potier88544 Barbier', '63217', 0, '2024-06-06 07:25:44', '2024-06-11 08:17:34', NULL, 'property/L4ADbGB46fYs8WwBKBZq0zhIfcZ3Y5BJcvZwty6i.jpg', NULL),
(34, 'Mollitia libero doloremque tempora.', 'Omnis aut animi.', 24, 8, 6, 3, 830001, 'Maurice-la-Forêt', '1, rue Baudry71363 Bourgeois-sur-Mer', '89510', 0, '2024-06-06 07:25:44', '2024-06-10 07:20:13', NULL, 'property/YrXmJXDbM9LwE0vd7pLPOWwPZdtPgRm8DxICjng5.webp', NULL),
(35, 'Exercitationem sequi nisi non eius.', 'Nam incidunt voluptatem nam.', 210, 6, 4, 9, 998956, 'Torres', '9, avenue Céline Nicolas90711 Pons-les-Bains', '23461', 0, '2024-06-06 07:25:44', '2024-06-10 07:20:23', NULL, 'property/EwHcJMh2uZZjr7T8WzJ7q8phpf1oY4czTqoeDcZI.webp', NULL),
(36, 'Quae quo et.', 'Veritatis sunt sint.', 316, 6, 4, 6, 194250, 'Le Rouxboeuf', '69, rue Mathilde Lopes34932 Chevallier', '52931', 0, '2024-06-06 07:25:44', '2024-06-11 08:18:34', NULL, 'property/0XNL8wXkZPdBQSBu3BVPHD24Nwrrw2WrzeHWlglG.jpg', NULL),
(39, 'Eveniet earum corrupti rerum.', 'Sunt vitae quasi asperiores vitae.', 145, 2, 2, 11, 519980, 'Chauvindan', '4, place de Delmas19701 Coulonboeuf', '56712', 0, '2024-06-06 07:25:44', '2024-06-11 08:18:04', '2024-06-10 11:53:10', 'property/su4PPk46xiUFORid8wAKqQXBfx65r5F6AjD7qa67.webp', NULL),
(40, 'Magnam distinctio eos et.', 'Deserunt in eum.', 154, 6, 1, 11, 943857, 'Rousset-la-Forêt', '3, boulevard Thierry\n77283 Petitdan', '41587', 0, '2024-06-06 07:25:44', '2024-06-10 14:04:58', '2024-06-10 15:04:58', NULL, NULL),
(41, 'Vel inventore quaerat laudantium.', 'A dolorem doloremque consequuntur perferendis.', 188, 3, 2, 10, 465247, 'Besson-sur-Mer', '23, rue de Bertrand80719 Guillou', '15983', 0, '2024-06-06 07:25:44', '2024-06-11 08:18:19', NULL, 'property/8Ud2BV59kTgbBzZj9nrg3VYMROoEcNl6DiqQZhcD.webp', NULL),
(43, 'Quaerat porro nostrum eos.', 'Ut doloremque illum veritatis.', 184, 5, 4, 2, 930440, 'Neveu', 'rue Fournier99279 Delmas', '14955', 0, '2024-06-06 07:25:44', '2024-06-11 08:18:51', '2024-06-10 11:52:27', 'property/a29V9NpyFmhcEhXHxtkscLCkMVgY6oqn09tBWBmp.png', NULL),
(44, 'Delectus eaque sed debitis.', 'Dolorem tempore quibusdam reprehenderit.', 213, 10, 1, 8, 821555, 'Jacquet-sur-Delattre', '6, impasse Jules Carlier02447 Raynaud', '30768', 0, '2024-06-06 07:25:44', '2024-06-11 08:19:04', '2024-06-10 11:52:18', 'property/vp8uHTTiecfzJac8NVc8aF5SBGGBg8Jfx1j1v09B.webp', NULL),
(46, 'Eos ea beatae dignissimos.', 'Nulla aut et debitis consequuntur quo.', 309, 3, 1, 7, 767155, 'Mendes', '3, rue Bertrand Garnier\n45819 Faivre', '42688', 0, '2024-06-06 07:25:44', '2024-06-06 07:25:44', NULL, NULL, NULL),
(47, 'Nemo occaecati officiis et.', 'Necessitatibus quia expedita.', 172, 10, 4, 7, 562595, 'Guerin-sur-Clement', '22, avenue Leleu\n00913 Gomesdan', '11023', 0, '2024-06-06 07:25:44', '2024-06-06 07:25:44', NULL, NULL, NULL),
(48, 'Est omnis nostrum quidem.', 'Repellat non ipsa enim iusto.', 278, 2, 2, 5, 366342, 'Etienne', 'avenue Thibault\n38993 Martineznec', '01434', 0, '2024-06-06 07:25:44', '2024-06-06 07:25:44', NULL, NULL, NULL),
(49, 'Voluptatibus doloribus ea quidem.', 'Porro pariatur sit rerum distinctio dolores.', 126, 3, 3, 0, 361615, 'Ollivierboeuf', '364, place Vallet\n39138 Lemaitre-sur-Peron', '86228', 0, '2024-06-06 07:25:44', '2024-06-10 13:32:00', '2024-06-10 14:32:00', NULL, NULL),
(66, 'salem', 'salem', 9, 3, 3, 2, 500, 'Sfax', 'Sfax', '3022', 0, '2024-07-03 08:39:36', '2024-07-03 08:39:36', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Admin Verified', 'admin@verified.tn', NULL, '$2y$10$YPJ4OXOfj.ag/AOyysJ7VuWgAYbC9dOJfQJTtPHDlHwX/ApgwbKrq', 'Re29iFXaUHlHX65P7iFmY3XIj0rnCTBToA3C1IlIJ2WYmisAUs6nunAUu9Z4', '2024-06-06 07:25:42', '2024-06-11 10:37:08', 'admin'),
(2, 'User Verified', 'user@verified.eu', '2024-06-07 11:08:52', '$2y$10$ddn8hdVGvimjykWddg10ZOWG8fnyALpVNSXZqd9rHgnROE1R2Bs42', NULL, '2024-06-06 09:43:26', '2024-06-07 09:08:24', 'user'),
(3, 'User NotVerified', 'user@notverified.eu', NULL, '$2y$10$CJ7TVYfI/gnxKQ9JRt7Q4.xd774DB71RGNjO1QShPTglL8cOhqPEy', NULL, '2024-06-07 08:22:36', '2024-06-07 08:22:36', 'user'),
(4, 'Admin Not Verified', 'admin@notverified.eu', '2024-06-11 08:07:03', '$2y$10$Y3a8020h42/99R6Ckmcoa.BZrCGTo7UKzNfUxTZJ2dENBomZ6yNf2', NULL, '2024-06-07 09:12:04', '2024-06-11 08:07:03', 'admin'),
(5, 'New User', 'newuser@imo.eu', '2024-07-03 10:48:16', '$2y$10$rbf1c8AynRbHkRl1NWfZk.PjprEQ5rms4AJOd6tkbJijPz5RU7V9a', NULL, '2024-06-07 12:54:09', '2024-06-07 12:54:09', 'user'),
(6, 'New User 2', 'newuser2@imo.eu', '2024-06-07 13:02:55', '$2y$10$EX4I6yaHN5KzmVt0CMSgj.T35Ec5FUEPRC1bcVZ4vinSd2XI7QqyS', NULL, '2024-06-07 13:02:02', '2024-06-07 13:02:55', 'user'),
(7, 'user2', 'user2@verified.eu', '2024-06-10 09:05:02', '$2y$10$dKuP7mSuWRwRRJg8mHdU6O0/.fSa.nLKFJS2clLpCwUa14faQz2r6', NULL, '2024-06-10 09:04:36', '2024-06-10 09:05:02', 'user'),
(8, 'essai', 'essai@es.es', '2024-06-11 07:49:15', '$2y$10$bH1PAzn.sNp4oVkX4/Nkj.G1VDkgWoiWMPMbadPtSq3snuUnbRJhS', NULL, '2024-06-11 07:48:51', '2024-06-11 07:49:15', 'user'),
(9, 'essai', 'essai2@es.es', '2024-06-11 08:26:02', '$2y$10$MGXjiHTZ4DNscqD0VOUCquh1jPHaqywC.cNQeNUCR3ZAqGXY3jYq.', NULL, '2024-06-11 08:25:43', '2024-06-11 08:26:02', 'user'),
(10, 'khairi', 'khairi@gmail.com', '2024-06-11 08:43:20', '$2y$10$LxIh5VIOqu2Y7JlhJxirz.hDtme88BujaNNihh1BSluIWnmWsCWBW', 'BOpzOimE0rNqB4eaHyysQTnDKxLLn5Zv9b86lHEpw8ZC7ZlCYth78Z4n1C7w', '2024-06-11 08:42:56', '2024-06-11 08:43:20', 'user'),
(11, 'nouveau 2', 'nouv@eau.tn', '2024-06-11 10:32:10', '$2y$10$911TTqtYKHZUVzwUP3zooex35gYpfhLybS9Ud8blu30bJESxNRQ5.', NULL, '2024-06-11 10:31:44', '2024-06-11 10:34:53', 'user');

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
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_user_id_foreign` (`user_id`);

--
-- Indexes for table `option_property`
--
ALTER TABLE `option_property`
  ADD PRIMARY KEY (`option_id`,`property_id`),
  ADD KEY `option_property_property_id_foreign` (`property_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `properties_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_property`
--
ALTER TABLE `option_property`
  ADD CONSTRAINT `option_property_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `option_property_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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

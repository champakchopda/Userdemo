-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2021 at 11:52 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo_project`
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
(46, '2014_10_12_000000_create_users_table', 1),
(47, '2014_10_12_100000_create_password_resets_table', 1),
(48, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(49, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(50, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(51, '2016_06_01_000004_create_oauth_clients_table', 1),
(52, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(53, '2019_08_19_000000_create_failed_jobs_table', 1),
(54, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
('0137729c67f41ff8281b44b6eb11d281f7ea93033d9f608c881faf5d45e5fcadba79ea9eed5d7077', 1, 1, 'Super Admin', '[]', 0, '2021-12-23 04:58:40', '2021-12-23 04:58:40', '2022-12-23 10:28:40'),
('027b417248227d907a76e843838f59a68995c3918e6cef92a4b35620b60f05a5dd7c79a26169f1e5', 5, 1, 'champak chopda', '[]', 0, '2021-12-22 15:10:34', '2021-12-22 15:10:34', '2022-12-22 20:40:34'),
('0c9a96c03d2c6b65d726d1307280c9995a3d399a537e316511e242861283aec583a32d03b462ac2c', 1, 1, 'Super Admin', '[]', 0, '2021-12-23 04:40:39', '2021-12-23 04:40:39', '2022-12-23 10:10:39'),
('0d2b498ef0b92b508a4276db900cad02a04249fce57768e6974cbde21d6b40ee7d15cc5123efd636', 10, 1, 'Test123 Test1', '[]', 0, '2021-12-23 04:56:31', '2021-12-23 04:56:31', '2022-12-23 10:26:31'),
('1550a208f30a69105f35014297fc8337eee286618d75f32118ccc465e6b35bef1cefdfd48a90b579', 6, 1, 'jayesh patel', '[]', 0, '2021-12-23 00:44:42', '2021-12-23 00:44:42', '2022-12-23 06:14:42'),
('1869b22d43be7dfbf14fe16bc01cf57e327f04a085eeae2a013964c13a376f27984f321a05da698a', 11, 1, 'Test123 test3', '[]', 0, '2021-12-23 04:55:39', '2021-12-23 04:55:39', '2022-12-23 10:25:39'),
('1a7fc6535c56e1e79d3c16beabad3c4984ea0f156e19fa134a9c3ad82ba379cd087bcb1f6f65500f', 1, 1, 'Super Admin', '[]', 0, '2021-12-23 04:07:57', '2021-12-23 04:07:57', '2022-12-23 09:37:57'),
('1d4328917393817ab852caebbb4827177a9ffd5f36d674bf0a62eb9c6c6ea6421a8d27c3fe39df79', 1, 1, 'Super Admin', '[]', 0, '2021-12-23 04:54:25', '2021-12-23 04:54:25', '2022-12-23 10:24:25'),
('37221016e10b0cbd079ed20335cbdef10655706580ad43759ef5cdfd66b93574d29a4d45fcef4303', 6, 1, 'jayesh patel', '[]', 0, '2021-12-23 04:50:31', '2021-12-23 04:50:31', '2022-12-23 10:20:31'),
('4561be2637534971c867ca7ca26ac1f13dfc567aa7c9301ce966de2e08dc86b63aa2c48cbbf9109f', 9, 1, 'Test123 Test', '[]', 0, '2021-12-23 04:45:01', '2021-12-23 04:45:01', '2022-12-23 10:15:01'),
('465465a79271a87842636e8ea0c8b0b81f8a7cb90b4c4efcd366c89222b1923eed66bf36e9f9fcaa', 1, 1, 'Super Admin', '[]', 0, '2021-12-23 00:29:01', '2021-12-23 00:29:01', '2022-12-23 05:59:01'),
('49ace20076486e325e7165e31bfee1b4d252640b1b2b31cc78ce292ad28f4e54b6c9b2f19fc5c9d8', 6, 1, 'jayesh patel', '[]', 0, '2021-12-23 04:52:41', '2021-12-23 04:52:41', '2022-12-23 10:22:41'),
('5128aa0f7a00e759ea12b2121803c11931565523765724edbf510ec6c8ae81e2ce39f51335959a51', 9, 1, 'Keyur1234 patel', '[]', 0, '2021-12-23 04:47:11', '2021-12-23 04:47:11', '2022-12-23 10:17:11'),
('5937eedfef77a1dfef0742bae09e4d1138f1eafc4cabb3f1e41cf14a47a61f26bdb2151040e9d0f9', 6, 1, 'jayesh patel', '[]', 0, '2021-12-23 02:01:11', '2021-12-23 02:01:11', '2022-12-23 07:31:11'),
('5c37b39b3a68f0db692485e25beb7a1e1420316ee78bee4a3a102e7344637ed49c6dfe2308591135', 1, 1, 'Super Admin', '[]', 0, '2021-12-23 00:31:12', '2021-12-23 00:31:12', '2022-12-23 06:01:12'),
('624130ffeee20045c7263610187d7b36410838ee81dc5de49e92e23e865b68b1b9190668edf900b3', 8, 1, 'Keyur patel', '[]', 0, '2021-12-23 04:12:53', '2021-12-23 04:12:53', '2022-12-23 09:42:53'),
('68e2e55945b0989c6a2e06877f043dc263dd9ed0e911e0a071d62ef1ce3116b498c2d8154764c009', 6, 1, 'jayesh patel', '[]', 0, '2021-12-23 02:14:36', '2021-12-23 02:14:36', '2022-12-23 07:44:36'),
('72d1371206748f97273fb2cfeb347a5265060f523ac4280d228b04158f6aec8cc4cadb3df54837f0', 6, 1, 'jayesh patel', '[]', 0, '2021-12-23 04:51:33', '2021-12-23 04:51:33', '2022-12-23 10:21:33'),
('7d977fc7ed89231cfa65f10d4baa95a963c52c46bad82512ed9ca940679b7699b787449cadf54cc8', 1, 1, 'Super Admin', '[]', 0, '2021-12-22 15:10:07', '2021-12-22 15:10:07', '2022-12-22 20:40:07'),
('8927d4bff74fe06997378c249105e504db3b09253006bb0be2a0b873beee7ffb1c1916d1940a4d21', 1, 1, 'Super Admin', '[]', 0, '2021-12-23 00:27:34', '2021-12-23 00:27:34', '2022-12-23 05:57:34'),
('8a70d811f56dcec7589a9d3d48aeaccf068e69f1ed7c511f877831a572ee670d5f59485d56200574', 1, 1, 'Super Admin', '[]', 0, '2021-12-23 04:03:31', '2021-12-23 04:03:31', '2022-12-23 09:33:31'),
('8aae16b61b111701a19e319b1b3fe6045638e597aa875c528d9bfaa4ca7af23a3a964d0e0cb10310', 10, 1, 'Test123 Test1', '[]', 0, '2021-12-23 04:54:54', '2021-12-23 04:54:54', '2022-12-23 10:24:54'),
('8d90abe4223656e76c983baca237865183739b431c4b9fbe80dacc8edd3571b770d518666eb1a1d1', 8, 1, 'Test test1', '[]', 0, '2021-12-23 04:05:25', '2021-12-23 04:05:25', '2022-12-23 09:35:25'),
('8ed1e541e8ef0fded539c5be60a040f2bd824d05cb20bd45d626b5e8621fa6ec875d7e2b83a92091', 6, 1, 'jayesh patel', '[]', 0, '2021-12-23 00:28:23', '2021-12-23 00:28:23', '2022-12-23 05:58:23'),
('8fac7a0083f7019c9b16a8ace71bfd1f6c07441d318fa5b2b0fd908de3a3adf258f399a282991a12', 1, 1, 'Super Admin', '[]', 0, '2021-12-23 04:49:22', '2021-12-23 04:49:22', '2022-12-23 10:19:22'),
('aef10007b1b5c64fdaa4b7c4e9ad703c20f8264d8c7eb41815aeee8f22cb6105b663ab3eea556fa4', 1, 1, 'Super Admin', '[]', 0, '2021-12-23 05:01:34', '2021-12-23 05:01:34', '2022-12-23 10:31:34'),
('bc78259a7fbf23babf5aa88be680621cd454abdf86aebed7e22a179b0c06db02d5b80944bd6a954d', 1, 1, 'Super Admin', '[]', 0, '2021-12-22 15:45:21', '2021-12-22 15:45:21', '2022-12-22 21:15:21'),
('c03b6005b7a211d8e64defb7c74d373507201865170491274a1567494401f60964a1c95a9f25b5fc', 12, 1, 'Test123 test34', '[]', 0, '2021-12-23 05:02:03', '2021-12-23 05:02:03', '2022-12-23 10:32:03'),
('c4d1073c07e43f880c09efabc576622ce20c8e0f7a4e1cf58779c05b84923ad978d9d441b8f4a769', 6, 1, 'jayesh patel', '[]', 0, '2021-12-23 00:45:48', '2021-12-23 00:45:48', '2022-12-23 06:15:48'),
('d22f1ff4ab6aa5bfe497813f5622fc2f85780f46dce096e95551269eb2a023b3bf7f845f018b4f6b', 1, 1, 'Super Admin', '[]', 0, '2021-12-23 04:43:00', '2021-12-23 04:43:00', '2022-12-23 10:13:00'),
('d8196c9dfba6536b2723c4c18b266461ff981090c3f558f722fe722b39592e7e92376e0af3236be3', 1, 1, 'Super Admin', '[]', 0, '2021-12-23 04:20:06', '2021-12-23 04:20:06', '2022-12-23 09:50:06'),
('df79767506f362031e4be0ef3aae5262f50c86b3f048183e3a00ebf39d7e243bd589451a1978218c', 1, 1, 'Super Admin', '[]', 0, '2021-12-23 02:28:08', '2021-12-23 02:28:08', '2022-12-23 07:58:08'),
('e238646d1d20e23cd6c609d2c346b5b43172d75c4576aaff56884bcd0f161a771465dc6366a1bed0', 13, 1, 'Test123 jay', '[]', 0, '2021-12-23 05:02:39', '2021-12-23 05:02:39', '2022-12-23 10:32:39'),
('eac0de955097d98d47438348258428963ebe7da277ef65ce8c1a43cee0cde58bbe2bb414a0561f3a', 6, 1, 'jayesh patel', '[]', 0, '2021-12-23 00:28:50', '2021-12-23 00:28:50', '2022-12-23 05:58:50'),
('f4a2e0fcfe30cd7c19d0f65e0fddd8f5e3679d9fe93ea68dc981477388f60ce92e1796a26e827031', 6, 1, 'jayesh patel', '[]', 0, '2021-12-23 00:45:18', '2021-12-23 00:45:18', '2022-12-23 06:15:18'),
('f64736738f449e97e26672dfaa2234a93b7101fda775d7680c729202277447c8bd49b4b89b01e087', 1, 1, 'Super Admin', '[]', 0, '2021-12-22 15:41:53', '2021-12-22 15:41:53', '2022-12-22 21:11:53'),
('fb6f48624040101fbc3df67000f65302b773727bf5114917d3e818e1cf94224b90c4306672e91460', 1, 1, 'Super Admin', '[]', 0, '2021-12-22 15:29:54', '2021-12-22 15:29:54', '2022-12-22 20:59:54'),
('fc3500bec8e3b19d19958e4ce9f76155cc97b648b6929bbc83681dcef7782389bd5ac2f10d59d8db', 6, 1, 'jayesh patel', '[]', 0, '2021-12-23 02:27:04', '2021-12-23 02:27:04', '2022-12-23 07:57:04');

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
(1, NULL, 'champak', 'T0X4qMAAaMeABvgPkRTInaOVhmoVpfHQkhCZ3TS3', NULL, 'http://localhost', 1, 0, 0, '2021-12-22 15:10:00', '2021-12-22 15:10:00');

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
(1, 1, '2021-12-22 15:10:00', '2021-12-22 15:10:00');

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Super Admin', '86f34b74fdbeb83b6e64cbe7247d02b963ff42b6878e334a952260fc2645c778', '[\"*\"]', NULL, '2021-12-22 14:41:27', '2021-12-22 14:41:27'),
(2, 'App\\Models\\User', 2, 'MyApp', '0110abe2603d296dbba98f7f51ca7fcd509321608f4cf475cc66ac4f10856e03', '[\"*\"]', NULL, '2021-12-22 14:41:33', '2021-12-22 14:41:33'),
(3, 'App\\Models\\User', 3, 'MyApp', '72828fc0ea75de951fabd1d1e351c5b70b57f32905161cfe645d2903b88bfc74', '[\"*\"]', NULL, '2021-12-22 14:42:45', '2021-12-22 14:42:45'),
(4, 'App\\Models\\User', 1, 'Super Admin', '68a077a8a4fe7027a4731777761a4b076b1a138f2ede3835ed728b504336cd35', '[\"*\"]', NULL, '2021-12-22 14:51:52', '2021-12-22 14:51:52'),
(5, 'App\\Models\\User', 1, 'Super Admin', 'd96add2ba6b4f28dd686d25ee490ad6de8d5ed7169c011c366fa7f35ca620074', '[\"*\"]', NULL, '2021-12-22 14:52:16', '2021-12-22 14:52:16'),
(6, 'App\\Models\\User', 1, 'Super Admin', '70bd730816af9d8bb70b658acbe5be7d9c14059809498f20a4ae0fe998609a2f', '[\"*\"]', NULL, '2021-12-22 14:52:51', '2021-12-22 14:52:51'),
(7, 'App\\Models\\User', 1, 'Super Admin', 'd04121dd69aa3db9bb421fbcbdd402a2f54186af9cb0379ea6211b0edc6a6af2', '[\"*\"]', NULL, '2021-12-22 14:57:49', '2021-12-22 14:57:49'),
(8, 'App\\Models\\User', 4, 'champak chopda', 'a34f05594b9975966e6d31603bf402761b9924a8961e363fae8763d069a78faa', '[\"*\"]', NULL, '2021-12-22 14:58:07', '2021-12-22 14:58:07'),
(9, 'App\\Models\\User', 1, 'Super Admin', '49f72044594405843b1427efc364653199a9a562f99041cde1b478a43c1dab02', '[\"*\"]', NULL, '2021-12-22 15:02:12', '2021-12-22 15:02:12'),
(10, 'App\\Models\\User', 1, 'Super Admin', 'd4b3f0ceb2316fd0cdf97cc46f997bdce42367085aa3ecca02783fbef528d433', '[\"*\"]', NULL, '2021-12-22 15:05:03', '2021-12-22 15:05:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userphoto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hobby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active' COMMENT 'By default Active',
  `mobileno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '0=>user  1=>Super Admin',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `email_verified_at`, `password`, `userphoto`, `hobby`, `status`, `mobileno`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super', 'Admin', 'admin@gmail.com', NULL, '$2y$10$YJr9YKZRdFRPYaT/6SMgNevkpSI1wpPnTJ.QgTd5ob1lcBNnb9toC', '', 'walking,reading', 'Active', '', 1, NULL, NULL, '2021-12-23 04:09:31'),
(2, 'champak', 'chopda', 'champak@gmail.com', NULL, '$2y$10$UqxYSHjW.kLuWRQsB.FcJOSLI2/Da6xY4RnS93uP8i6YhK0aKEBx6', '1640203893__user02.jpg', 'reading', 'Active', '9904556801', 0, NULL, '2021-12-22 14:41:33', '2021-12-22 14:41:33'),
(4, 'champak', 'chopda', 'champak1234@gmail.com', NULL, '$2y$10$Isl3luSXTx3wLENawQx.hu9Xz.isjwMuWNr9xCx25li2n62XXennu', '1640204887__user02.jpg', 'reading,playing', 'Active', '9904556801', 0, NULL, '2021-12-22 14:58:07', '2021-12-22 14:58:07'),
(6, 'jayesh', 'patel', 'jayesh@gmail.com', NULL, '$2y$10$sbf/x49naoE4JaCRadCBseZf5jibukTDYN84SAilzfVtSoLd2tosq', '1640239103__user02.jpg', 'walking,reading', 'Active', '8562365658', 0, NULL, '2021-12-23 00:28:23', '2021-12-23 04:53:18'),
(8, 'Keyur', 'patel', 'Kp123@gmail.com', NULL, '$2y$10$KSVdIFPoNa9n6Zd9N0.1zOdtDF2KwLJc2QxkHgtcdoNfBci9eGqNq', '1640252527__nphoto.png', NULL, 'Active', '8585623625', 0, NULL, '2021-12-23 04:05:24', '2021-12-23 04:12:07'),
(10, 'Test123', 'Test1', 'test56@gmail.com', NULL, '$2y$10$X/f5JXa40Uc5fuPjDwbfwuQXSM4wzI7S25radB5IqERkcIDJSYYDG', '1640255094__n01photo.png', 'reading,playing', 'Active', '8985632596', 0, NULL, '2021-12-23 04:54:54', '2021-12-23 05:04:31'),
(12, 'Test123', 'test34', 'test567@gmail.com', NULL, '$2y$10$h67cSZzOn6W5/chAA.X6heWXWn8Wi3XtyS5IeTnWTeCA0KEkeEamG', '1640255523__n01photo.png', NULL, 'Active', '8985632596', 0, NULL, '2021-12-23 05:02:03', '2021-12-23 05:02:03');

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

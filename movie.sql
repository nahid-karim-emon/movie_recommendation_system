-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2023 at 12:29 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Admin', 'nahidkarimemon@gmail.com', NULL, 'nahid103', NULL, '2023-09-05 10:28:11', '2023-09-05 10:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `casts`
--

CREATE TABLE `casts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gender` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio` longtext NOT NULL,
  `country` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `photo` varchar(255) NOT NULL,
  `deathd` date DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `spouse` varchar(255) DEFAULT NULL,
  `spouse_id` int(11) DEFAULT NULL,
  `children` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `casts`
--

INSERT INTO `casts` (`id`, `gender`, `name`, `bio`, `country`, `dob`, `photo`, `deathd`, `education`, `spouse`, `spouse_id`, `children`, `status`, `created_at`, `updated_at`) VALUES
(1, 'male', 'Leonardo DiCaprio', 'Leonardo Wilhelm DiCaprio is an American actor and film producer. Known for his work in biographical and period films, he is the recipient of numerous accolades, including an Academy Award, a British Academy Film Award and three Golden Globe Awards.', 'Los Angeles, California, United States', '1974-11-11', 'CastPhoto/jbMsZzXIUv8IqxerSiG3juuCn0ws9UzDW06jYEgd.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2023-09-05 11:38:06', '2023-09-05 11:38:06'),
(2, 'male', 'Tom Hardy', 'Edward Thomas Hardy CBE is an English actor, producer and screenwriter. After studying acting at the Drama Centre London, he made his film debut in Ridley Scott\'s Black Hawk Down.', 'Hammersmith, London, United Kingdom', '1977-07-15', 'CastPhoto/vvyf8ymPtE6FdIMmoHMwuxELSFWTu45rCPoPlcJY.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2023-09-05 11:42:45', '2023-09-05 11:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `title`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'Meal Manager', 'Meal Manager manages meals', NULL, NULL),
(2, 'Room Allocation Manger', 'Room Allocation Manager manages Room Allocations', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `bio` longtext NOT NULL,
  `country` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `deathd` date DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `spouse` varchar(255) DEFAULT NULL,
  `spouse_id` int(11) DEFAULT NULL,
  `children` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`id`, `name`, `gender`, `bio`, `country`, `dob`, `photo`, `deathd`, `education`, `spouse`, `spouse_id`, `children`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Christopher Nolan', 'male', 'Christopher Edward Nolan CBE is a British and American filmmaker. Known for his Hollywood blockbusters with complex storytelling, Nolan is considered a leading filmmaker of the 21st century. His films have grossed $5 billion worldwide.', 'Westminster, London, United Kingdom (British-American filmmaker)', '1970-07-30', 'DirectorPhoto/MXcMNnuYKeHPUKIRL87RoZyIR0gX7ZRGSGFJ3zPK.jpg', NULL, NULL, 'Emma Thomas (m. 1997)', NULL, 'Flora Nolan, Magnus Nolan, Oliver Nolan, Rory Nolan', 1, '2023-09-06 13:49:16', '2023-09-06 13:49:16'),
(2, '2', 'male', '2', '2', '2023-09-13', 'DirectorPhoto/UBierX8mMIWE5TZAolnJfDzIsZwArfEFjjpZj9hX.jpg', NULL, '2', '2', NULL, '2', 1, '2023-09-12 05:46:25', '2023-09-12 05:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `objective` varchar(255) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `title`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Action', 'genrePhoto/mwxlGy5lSaowLnG5D2WmBNsdqqT8BDRadkMOr7WD.jpg', '2023-09-06 12:24:26', '2023-09-06 13:11:11'),
(2, 'adventure', 'genrePhoto/eO6myDqpl1nSscK8oWAI06ZeQoAwo1WHsuPCZ5l3.jpg', '2023-09-06 12:29:21', '2023-09-06 12:29:21'),
(4, 'Comedy', 'genrePhoto/an4LQRFUCY0mbBKwbpK5r74RHwqL57f6xxZkdhtu.png', '2023-09-06 12:32:09', '2023-09-06 12:33:23'),
(5, 'Superhero Fiction', 'genrePhoto/oWXtRpdKF1bYbHJpizA7kszIaSoFJ4hIQHDeh3Y9.png', '2023-09-06 13:12:17', '2023-09-06 13:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `interests`
--

CREATE TABLE `interests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interests`
--

INSERT INTO `interests` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-09-13 03:34:53', '2023-09-13 03:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `interest_casts`
--

CREATE TABLE `interest_casts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interest_id` int(11) NOT NULL,
  `cast_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interest_casts`
--

INSERT INTO `interest_casts` (`id`, `interest_id`, `cast_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-09-13 03:34:53', '2023-09-13 03:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `interest_directors`
--

CREATE TABLE `interest_directors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interest_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interest_directors`
--

INSERT INTO `interest_directors` (`id`, `interest_id`, `director_id`, `created_at`, `updated_at`) VALUES
(2, 1, 2, '2023-09-13 04:27:36', '2023-09-13 04:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `interest_genres`
--

CREATE TABLE `interest_genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interest_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interest_genres`
--

INSERT INTO `interest_genres` (`id`, `interest_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(3, 1, 5, '2023-09-13 04:27:36', '2023-09-13 04:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `interest_languages`
--

CREATE TABLE `interest_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interest_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interest_languages`
--

INSERT INTO `interest_languages` (`id`, `interest_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2023-09-13 03:34:53', '2023-09-13 03:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `interest_pcompanies`
--

CREATE TABLE `interest_pcompanies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interest_id` int(11) NOT NULL,
  `pcompany_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interest_pcompanies`
--

INSERT INTO `interest_pcompanies` (`id`, `interest_id`, `pcompany_id`, `created_at`, `updated_at`) VALUES
(2, 1, 2, '2023-09-13 04:27:22', '2023-09-13 04:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `interest_ratings`
--

CREATE TABLE `interest_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interest_id` int(11) NOT NULL,
  `rating_id` int(11) NOT NULL,
  `ratings` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interest_ratings`
--

INSERT INTO `interest_ratings` (`id`, `interest_id`, `rating_id`, `ratings`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 9.00, '2023-09-13 03:34:53', '2023-09-13 04:14:18'),
(2, 1, 2, 70.00, '2023-09-13 03:34:53', '2023-09-13 03:34:53'),
(3, 1, 3, 3.50, '2023-09-13 03:34:53', '2023-09-13 03:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Bangla', 'languagePhoto/aDfvsWB9saTlZ6THU1QJF6vlxueDazCoscGxQamw.png', '2023-09-06 12:41:17', '2023-09-06 12:41:17'),
(2, 'English', 'languagePhoto/AWLcjD9zx89YSdfjQA9K4vkjRmjKAmPkojaIjzPg.png', '2023-09-06 12:41:58', '2023-09-06 12:41:58'),
(4, 'Hindi', 'languagePhoto/Ze2UiFWA895I4HAw0mctAMoMjJus1aHb9resbY0f.png', '2023-09-06 12:42:29', '2023-09-06 12:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_03_07_114232_create_admins_table', 1),
(16, '2023_03_08_060723_create_departments_table', 1),
(17, '2023_03_08_143127_create_staff_table', 1),
(18, '2023_03_09_090012_create_emails_table', 1),
(19, '2023_03_11_143446_create_supports_table', 1),
(20, '2023_05_04_062946_create_site_options_table', 1),
(21, '2023_09_05_164051_create_casts_table', 2),
(22, '2023_09_06_180728_create_genres_table', 3),
(23, '2023_09_06_183532_create_languages_table', 4),
(24, '2023_09_06_184541_create_production_companies_table', 5),
(25, '2023_09_06_193930_create_directors_table', 6),
(26, '2023_09_07_053553_create_movies_table', 7),
(27, '2023_09_07_135504_create_movie_genres_table', 8),
(28, '2023_09_07_141134_create_movie_casts_table', 9),
(29, '2023_09_07_141404_create_movie_languages_table', 10),
(30, '2023_09_07_141513_create_movie_pcompanies_table', 10),
(31, '2023_09_07_141532_create_movie_directors_table', 10),
(32, '2023_09_12_125311_create_movie_ratings_table', 11),
(33, '2023_09_13_090029_create_interests_table', 12),
(34, '2023_09_13_090257_create_interest_genres_table', 12),
(35, '2023_09_13_090640_create_interest_casts_table', 12),
(36, '2023_09_13_090753_create_interest_directors_table', 12),
(37, '2023_09_13_090838_create_interest_pcompanies_table', 12),
(38, '2023_09_13_090925_create_interest_languages_table', 12),
(39, '2023_09_13_091017_create_interest_ratings_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `info` longtext DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `release` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `info`, `photo`, `release`, `created_at`, `updated_at`) VALUES
(8, 'Spider-Man Homecoming', 'Spider-Man: Homecoming: Directed by Jon Watts. With Tom Holland, Michael Keaton, Robert Downey Jr., Marisa Tomei. Peter Parker balances his life as an...', 'MoviePhoto/gAzv0ELnmOKRrH2Kv9v8qc7GlIntMSfNElbjbFal.jpg', '2023-09-30', '2023-09-07 08:21:56', '2023-09-12 20:37:22'),
(10, 'Inception', 'Inception is a 2010 science fiction action film[4][5][6] written and directed by Christopher Nolan, who also produced the film with Emma Thomas, his wife. The film stars Leonardo DiCaprio as a professional thief who steals information by infiltrating the subconscious of his targets. He is offered a chance to have his criminal history erased, as payment for the implantation of another person\'s idea into a target\'s subconscious.[7] The ensemble cast includes Ken Watanabe, Joseph Gordon-Levitt, Marion Cotillard, Elliot Page,[a] Tom Hardy, Cillian Murphy, Tom Berenger, Dileep Rao and Michael Caine.', 'MoviePhoto/VRkdWk25zuscPIZkf6QDXFsdlrnpMJl9oDbixOfW.jpg', '2010-07-08', '2023-09-12 21:09:18', '2023-09-12 21:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `movie_casts`
--

CREATE TABLE `movie_casts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `cast_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_casts`
--

INSERT INTO `movie_casts` (`id`, `movie_id`, `cast_id`, `created_at`, `updated_at`) VALUES
(8, 8, 1, '2023-09-12 05:44:22', '2023-09-12 05:44:22'),
(10, 10, 1, '2023-09-12 21:09:18', '2023-09-12 21:09:18'),
(11, 10, 2, '2023-09-12 21:09:18', '2023-09-12 21:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `movie_directors`
--

CREATE TABLE `movie_directors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_directors`
--

INSERT INTO `movie_directors` (`id`, `movie_id`, `director_id`, `created_at`, `updated_at`) VALUES
(5, 8, 1, '2023-09-12 05:47:04', '2023-09-12 05:47:04'),
(7, 10, 1, '2023-09-12 21:09:18', '2023-09-12 21:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `movie_genres`
--

CREATE TABLE `movie_genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_genres`
--

INSERT INTO `movie_genres` (`id`, `movie_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(12, 8, 2, '2023-09-12 05:38:39', '2023-09-12 05:38:39'),
(14, 10, 2, '2023-09-12 21:09:18', '2023-09-12 21:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `movie_languages`
--

CREATE TABLE `movie_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_languages`
--

INSERT INTO `movie_languages` (`id`, `movie_id`, `language_id`, `created_at`, `updated_at`) VALUES
(5, 8, 1, '2023-09-12 05:52:39', '2023-09-12 05:52:39'),
(7, 8, 2, '2023-09-12 07:57:46', '2023-09-12 07:57:46'),
(8, 10, 2, '2023-09-12 21:09:18', '2023-09-12 21:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `movie_pcompanies`
--

CREATE TABLE `movie_pcompanies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `pcompany_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_pcompanies`
--

INSERT INTO `movie_pcompanies` (`id`, `movie_id`, `pcompany_id`, `created_at`, `updated_at`) VALUES
(3, 8, 1, '2023-09-07 08:21:56', '2023-09-07 08:21:56'),
(8, 10, 2, '2023-09-12 21:09:18', '2023-09-12 21:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `movie_ratings`
--

CREATE TABLE `movie_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `rating_id` int(11) NOT NULL,
  `ratings` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_ratings`
--

INSERT INTO `movie_ratings` (`id`, `movie_id`, `rating_id`, `ratings`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 3, '2023-09-12 06:59:11', '2023-09-12 07:40:00'),
(2, 8, 2, 85, '2023-09-12 06:59:11', '2023-09-12 07:40:47'),
(4, 8, 3, 3.5, NULL, '2023-09-12 07:46:44'),
(5, 10, 1, 8.8, '2023-09-12 21:09:18', '2023-09-12 21:09:18'),
(6, 10, 2, 87, '2023-09-12 21:09:18', '2023-09-12 21:09:18'),
(7, 10, 3, 4.8, '2023-09-12 21:09:18', '2023-09-12 21:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `production_companies`
--

CREATE TABLE `production_companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `info` longtext DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `founders` varchar(255) NOT NULL,
  `founded` date NOT NULL,
  `parentorganizations` varchar(255) NOT NULL,
  `president` varchar(255) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `production_companies`
--

INSERT INTO `production_companies` (`id`, `title`, `info`, `photo`, `founders`, `founded`, `parentorganizations`, `president`, `genre_id`, `created_at`, `updated_at`) VALUES
(1, 'Marvel Studios', 'Marvel Studios, LLC is an American film and television production company that is a subsidiary of Walt Disney Studios, a division of Disney Entertainment, which is owned by the Walt Disney Company.', 'ProductionCompanyPhoto/St0z0olOQBpeCC7RG9vCyEX7YtqewsJYeJwE0ETQ.png', 'Marvel Entertainment, Avi Arad', '1993-12-07', 'Marvel Entertainment, The Walt Disney Company, Walt Disney Studios, Disney Entertainment', 'Kevin Feige', 5, '2023-09-06 13:19:51', '2023-09-06 13:19:51'),
(2, 'ww', '2', 'ProductionCompanyPhoto/fTUfeocHr0QJ7w1WCealZxDGRvz0b19OZcqipfv7.png', '2', '2023-09-07', 'N/A', 'N/A', 1, '2023-09-06 13:33:16', '2023-09-06 13:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `site_options`
--

CREATE TABLE `site_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_options`
--

INSERT INTO `site_options` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'title', 'Movie Recommendation System', NULL, '2023-09-07 09:07:45'),
(2, 'logo', 'img/justcse.png', NULL, NULL),
(3, 'systemname', 'Movie Recommendation System', NULL, '2023-09-07 09:07:28'),
(4, 'bgimage', 'storage/images/bglogin.jpg', NULL, NULL),
(5, 'contactemail', 'contactemail@gmail.com', NULL, NULL),
(6, 'contactphone', '01945506778', NULL, NULL),
(7, 'address', 'Cumilla,Chattogram,Bangladesh', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `department_id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `salary_type` varchar(255) DEFAULT NULL,
  `salary_amount` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `email`, `email_verified_at`, `password`, `department_id`, `photo`, `bio`, `salary_type`, `salary_amount`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Staff 1', 'shahriarabiddut@gmail.com', NULL, '$2y$10$JqUgR8swKuztw6iStNCsL.mdbWl/83V.zuszfOMmcq4W2/kWPvo6e', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Staff 2', 'shahriarhmed@gmail.com', NULL, '$2y$10$EvXgTTGQnZlHuYVQb.15wOs0HWeRAwnNsaFmpEzvehsiCX9DmimVa', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `repliedby` int(11) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address`, `photo`, `mobile`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shahriar Ahmed', 'shahriarabiddut@gmail.com', NULL, '$2y$10$pGM4cyBjNj2xgqhZlQ0Xc.z6FXTCnCdRM5lvhzIqx.Av9o0aw1LQ6', 'House no:279,  Payab,Muradnagar,Comilla\r\nHouse no:279,  Payab,Muradnagar,Comilla', NULL, '01945506778', NULL, NULL, '2023-09-12 09:44:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `casts`
--
ALTER TABLE `casts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interests`
--
ALTER TABLE `interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interest_casts`
--
ALTER TABLE `interest_casts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interest_directors`
--
ALTER TABLE `interest_directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interest_genres`
--
ALTER TABLE `interest_genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interest_languages`
--
ALTER TABLE `interest_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interest_pcompanies`
--
ALTER TABLE `interest_pcompanies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interest_ratings`
--
ALTER TABLE `interest_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_casts`
--
ALTER TABLE `movie_casts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_directors`
--
ALTER TABLE `movie_directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_languages`
--
ALTER TABLE `movie_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_pcompanies`
--
ALTER TABLE `movie_pcompanies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_ratings`
--
ALTER TABLE `movie_ratings`
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
-- Indexes for table `production_companies`
--
ALTER TABLE `production_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_options`
--
ALTER TABLE `site_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_email_unique` (`email`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `casts`
--
ALTER TABLE `casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `interests`
--
ALTER TABLE `interests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `interest_casts`
--
ALTER TABLE `interest_casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `interest_directors`
--
ALTER TABLE `interest_directors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `interest_genres`
--
ALTER TABLE `interest_genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `interest_languages`
--
ALTER TABLE `interest_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `interest_pcompanies`
--
ALTER TABLE `interest_pcompanies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `interest_ratings`
--
ALTER TABLE `interest_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `movie_casts`
--
ALTER TABLE `movie_casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `movie_directors`
--
ALTER TABLE `movie_directors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `movie_genres`
--
ALTER TABLE `movie_genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `movie_languages`
--
ALTER TABLE `movie_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `movie_pcompanies`
--
ALTER TABLE `movie_pcompanies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `movie_ratings`
--
ALTER TABLE `movie_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `production_companies`
--
ALTER TABLE `production_companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `site_options`
--
ALTER TABLE `site_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

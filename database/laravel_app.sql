-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2022 at 07:36 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address`, `city`, `state`, `pincode`, `created_at`, `updated_at`) VALUES
(1, 'Laboriosam iste lab', 'Nostrum corporis por', 'Enim ducimus repell', 'Duis corporis invent', '2022-09-23 11:00:59', '2022-09-23 11:00:59'),
(2, 'Aut eveniet molesti', 'Aspernatur qui itaqu', 'Id aspernatur ad qui', 'Esse autem iusto ne', '2022-09-23 11:40:02', '2022-09-23 11:40:02'),
(3, 'Earum omnis est maio', 'Aut atque id dolore', 'Ab neque dolore fuga', 'Fugit tenetur velit', '2022-09-23 11:40:02', '2022-09-23 11:40:02'),
(6, 'address1', 'city1', 'state1', 'pincode1', '2022-09-23 11:42:55', '2022-09-23 11:42:55'),
(7, 'addres2', 'city2', 'state2', 'pincode2', '2022-09-23 11:42:55', '2022-09-23 11:42:55'),
(8, 'Eius asperiores do l', 'Maiores omnis exerci', 'Esse aut atque conse', 'Possimus ea ipsam m', '2022-09-23 11:43:54', '2022-09-23 11:43:54'),
(9, 'Omnis laborum Porro', 'Et sunt nulla labor', 'Sunt exercitationem', 'Earum maiores quo ut', '2022-09-23 11:48:18', '2022-09-23 11:48:18'),
(10, 'Ut sit harum atque', 'Alias et adipisicing', 'Maxime aliquid sapie', 'Voluptate ea asperio', '2022-09-23 11:49:14', '2022-09-23 11:49:14');

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
(2, '2022_09_23_084920_create_users_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(4, '2022_09_23_123238_create_addresses_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `gender`, `mobile_number`, `dob`, `age`, `created_at`, `updated_at`) VALUES
(3, 'Serena Brennan', 'risobyfik@mailinator.com', 'male', '1782345649', '1976-09-04', '21', '2022-09-23 05:42:41', '2022-09-23 05:42:41'),
(4, 'Yasmin Deckow', 'feil.jany@example.org', 'female', '2', '2005-03-31', '32', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(5, 'Kris Wilkinson', 'hilpert.montana@example.net', 'male', '26072', '2005-05-05', '25', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(6, 'Estefania Boehm', 'osbaldo98@example.com', 'male', '809432', '1996-05-22', '42', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(7, 'Mrs. Lelah Ledner I', 'bernhard.alba@example.org', 'female', '9555', '2008-04-30', '47', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(8, 'Dr. Jessica Grady', 'legros.lavonne@example.org', 'female', '0', '1993-03-08', '30', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(9, 'Prof. Kelley Medhurst III', 'bhills@example.org', 'female', '7530965', '2007-10-08', '36', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(10, 'Jaron Nicolas', 'jborer@example.com', 'male', '874', '2011-07-21', '39', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(11, 'Dr. Blanca Abbott Jr.', 'beer.peyton@example.org', 'male', '7', '2008-02-28', '34', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(12, 'Grace Ritchie', 'mckenzie.myriam@example.org', 'male', '80280919', '1992-10-29', '41', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(13, 'Mrs. Shanel DuBuque', 'uprohaska@example.org', 'male', '34', '2011-06-03', '34', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(14, 'Dr. Chelsea Toy I', 'ray.boyle@example.net', 'female', '416136', '2011-10-14', '42', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(15, 'Dr. Dejuan Buckridge', 'raymond.tillman@example.org', 'female', '42437', '2000-11-26', '47', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(16, 'Mireille Stracke', 'lauriane74@example.net', 'female', '33841', '1990-07-28', '50', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(17, 'Dr. Angus Crona DVM', 'dschuster@example.org', 'female', '1', '2006-03-02', '42', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(18, 'Ursula Ebert', 'mbogan@example.com', 'male', '53257557', '1993-12-23', '27', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(19, 'Mr. Emil Kuhlman', 'jada87@example.net', 'female', '6844', '2003-04-27', '27', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(20, 'Nat Lockman', 'pprohaska@example.org', 'female', '1', '2005-10-24', '29', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(21, 'Richie Daugherty', 'lbartoletti@example.org', 'female', '76347611', '1993-05-29', '45', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(22, 'Bonnie Stracke', 'pborer@example.net', 'female', '20111318', '2010-06-03', '33', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(23, 'Enrico Goldner', 'mchristiansen@example.com', 'male', '211', '2003-11-10', '38', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(24, 'Kylee Vandervort PhD', 'hermann.baby@example.net', 'female', '17', '1997-07-08', '35', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(25, 'Prof. Reyes Pagac Jr.', 'prohaska.sabrina@example.com', 'female', '515', '1997-11-28', '49', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(26, 'Marlen Ryan', 'pagac.jaydon@example.net', 'male', '62224151', '2010-06-09', '30', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(27, 'Jalon Schroeder', 'caleb.mosciski@example.net', 'female', '25599', '2010-07-07', '45', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(28, 'Hobart Green', 'stehr.cooper@example.org', 'male', '20', '2006-07-28', '25', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(29, 'Mya Runolfsson', 'glover.rhianna@example.com', 'female', '782044', '2000-11-04', '34', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(30, 'Liliane Hand', 'xcorwin@example.com', 'male', '725146', '1993-02-06', '22', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(31, 'Maryse Veum', 'reyna.hintz@example.com', 'female', '7966', '2003-01-13', '22', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(32, 'Dr. Garrett Balistreri', 'mireya39@example.org', 'male', '2', '2001-09-26', '21', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(33, 'Angelica Bashirian Sr.', 'dboyle@example.com', 'female', '41819', '1992-11-27', '41', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(34, 'Anahi Schumm', 'shanny49@example.org', 'male', '281269683', '1996-06-08', '31', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(35, 'Mrs. Daisha Carroll DDS', 'arlie.torphy@example.org', 'male', '5926894', '1990-11-29', '37', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(36, 'Dr. Max Emard', 'jovani05@example.org', 'female', '47', '2002-08-02', '24', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(37, 'Laisha Buckridge DVM', 'ankunding.naomie@example.org', 'female', '72', '2006-10-31', '24', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(38, 'Prof. Petra Stanton', 'carolyne.legros@example.com', 'male', '8', '1993-12-30', '26', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(39, 'Mrs. Susana Hansen I', 'kshlerin.aniya@example.net', 'male', '2250', '2012-12-17', '27', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(40, 'Katrine Robel', 'jerad29@example.net', 'male', '8476', '2012-07-23', '38', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(41, 'Walton Senger', 'armani.nienow@example.com', 'male', '20', '2012-04-01', '30', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(42, 'Dr. Lois Ebert', 'zschinner@example.com', 'male', '94', '1990-09-19', '36', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(43, 'Mrs. Destany Rosenbaum', 'zwalter@example.net', 'female', '5150805', '2006-02-14', '27', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(44, 'Ignatius Hayes', 'schumm.geoffrey@example.com', 'male', '4258858', '1994-07-11', '27', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(45, 'Vivianne Heidenreich', 'mercedes.streich@example.net', 'female', '13', '2003-06-16', '24', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(46, 'Dr. Randi Kuvalis', 'emie95@example.net', 'female', '51746489', '1999-01-16', '39', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(47, 'Treva Hauck', 'twolff@example.net', 'female', '875', '1997-07-23', '38', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(48, 'Alexandra Green', 'vandervort.robbie@example.com', 'female', '27181', '2007-03-10', '35', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(49, 'Mrs. Natalia Becker DVM', 'sabryna.sawayn@example.org', 'male', '8423456', '2005-05-26', '43', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(50, 'Alize Lindgren Jr.', 'shanahan.karelle@example.org', 'male', '14064203', '2012-09-29', '25', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(51, 'Brenden Rempel DDS', 'hans.kuvalis@example.org', 'female', '0', '2008-12-20', '41', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(52, 'Jerrod Gaylord', 'charity38@example.com', 'male', '2784', '2004-05-14', '26', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(53, 'Tressie Ratke I', 'nina.ondricka@example.com', 'male', '149563453', '1999-12-14', '47', '2022-09-23 06:19:49', '2022-09-23 06:19:49'),
(54, 'Mrs. Letha Blick', 'lisette91@example.com', 'female', '1690', '1998-06-28', '33', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(55, 'Gillian Jerde', 'green.trever@example.org', 'male', '5167', '1999-01-07', '46', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(56, 'Kyler Frami', 'leonie.leffler@example.com', 'male', '458', '2008-08-25', '29', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(57, 'Florence Lynch', 'rtorp@example.com', 'male', '58', '1994-11-03', '21', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(58, 'Hardy Beahan', 'ischimmel@example.net', 'male', '9', '2009-12-16', '49', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(59, 'Melissa Cummerata', 'odenesik@example.net', 'female', '3026086', '1990-11-19', '33', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(60, 'Mr. Reese Cormier I', 'rhamill@example.com', 'female', '6', '1998-04-02', '48', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(61, 'Jared Terry V', 'donald54@example.org', 'female', '33364', '2008-12-28', '43', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(62, 'Loyce Halvorson', 'julian.cummerata@example.net', 'female', '7428', '1999-09-17', '20', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(63, 'Jessyca Vandervort', 'melisa.beier@example.net', 'male', '9766', '2012-07-10', '50', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(64, 'Isabel Skiles', 'krista16@example.net', 'female', '847978', '2002-01-03', '49', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(65, 'Kyla Hand', 'lucy31@example.com', 'male', '795075521', '2006-05-31', '40', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(66, 'Yadira Ratke', 'darian56@example.net', 'male', '0', '2009-11-03', '26', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(67, 'Isaiah Mertz', 'bschneider@example.com', 'female', '3', '2002-10-22', '41', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(68, 'Mr. Vince Koelpin II', 'torp.noe@example.org', 'female', '165004', '1994-05-04', '48', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(69, 'Gunnar Yundt', 'ukeeling@example.org', 'male', '52', '2002-02-10', '39', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(70, 'Joany Boyle', 'hudson.nathen@example.org', 'male', '8', '2006-10-18', '34', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(71, 'Rhianna Murray', 'vivian31@example.net', 'male', '406', '1990-09-11', '27', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(72, 'Gina Toy', 'marcel54@example.org', 'female', '8404654', '2002-06-24', '30', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(73, 'Jorge Hahn III', 'shanon66@example.net', 'male', '4058500', '2005-07-30', '32', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(74, 'Candelario McDermott DVM', 'meagan03@example.org', 'male', '7884719', '2004-02-10', '41', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(75, 'Cristian Dickens', 'dstehr@example.org', 'female', '4', '2005-01-02', '35', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(76, 'Audrey Herman', 'evert.okuneva@example.com', 'male', '854181', '2008-10-05', '23', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(77, 'Sonya Jakubowski', 'aurelio.treutel@example.net', 'female', '156417442', '2003-10-13', '47', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(78, 'Mr. Carol Fahey', 'leora.watsica@example.org', 'male', '6', '1996-10-20', '29', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(79, 'Dr. Serenity Runte II', 'flangosh@example.net', 'male', '55', '1991-06-25', '37', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(80, 'Mr. Derrick Prosacco I', 'terrance.mosciski@example.com', 'female', '50444', '1993-01-03', '41', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(81, 'Jarvis Weissnat', 'gboyle@example.com', 'female', '10924404', '1998-05-22', '46', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(82, 'Felipa Hane III', 'haag.terence@example.org', 'male', '5407621', '1995-10-18', '40', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(83, 'Mr. Garth Nienow IV', 'ypurdy@example.com', 'female', '686761724', '1997-08-13', '27', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(84, 'Damian Welch', 'kian51@example.net', 'male', '300291131', '2010-03-23', '29', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(85, 'Muriel Murray I', 'rippin.marcella@example.net', 'male', '63447699', '2005-04-28', '24', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(86, 'Maxwell Bartell', 'kessler.jayme@example.com', 'female', '1627319', '1990-05-15', '36', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(87, 'Vada Denesik II', 'jhyatt@example.org', 'female', '85', '1990-09-29', '25', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(88, 'Junius Hauck', 'murray.sasha@example.org', 'male', '317', '1996-01-12', '32', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(89, 'Jana Hartmann', 'myra99@example.org', 'male', '626736', '2009-12-24', '35', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(90, 'Alf Nikolaus', 'zondricka@example.net', 'male', '283709106', '2004-05-27', '32', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(91, 'Mr. Deshaun Harvey MD', 'eokuneva@example.net', 'female', '991177', '2001-06-13', '22', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(92, 'Destin Fahey', 'eryn84@example.org', 'female', '9550837', '2009-02-27', '43', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(93, 'Mr. Prince Becker', 'michel98@example.org', 'female', '585341', '1991-04-07', '46', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(94, 'Adolfo Botsford', 'mason.rosenbaum@example.com', 'female', '926328244', '2012-08-20', '45', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(95, 'Dr. Zackery Lebsack PhD', 'carter15@example.com', 'male', '98342316', '1992-06-23', '50', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(96, 'Karlie Ankunding PhD', 'shanahan.chad@example.net', 'male', '55', '1994-01-06', '31', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(97, 'Prof. Ramon Conn', 'ernestine84@example.org', 'female', '986642', '2006-05-14', '34', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(98, 'Gail Deckow', 'zorn@example.net', 'male', '308021857', '2012-01-09', '39', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(99, 'Miss Hertha Connelly', 'jgreenfelder@example.net', 'female', '798072577', '2001-10-19', '43', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(100, 'Adelbert McClure', 'frodriguez@example.com', 'female', '955036', '1993-04-10', '24', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(101, 'Dr. Karlee Schimmel III', 'lilliana11@example.org', 'female', '68457468', '2002-01-11', '42', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(102, 'Dr. Dimitri Bahringer DVM', 'rschamberger@example.com', 'female', '979938006', '2011-11-11', '27', '2022-09-23 06:20:56', '2022-09-23 06:20:56'),
(103, 'Maxwell Connelly', 'srogahn@example.com', 'female', '410076', '1998-06-18', '33', '2022-09-23 06:20:56', '2022-09-23 06:20:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

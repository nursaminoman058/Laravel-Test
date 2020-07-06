-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2020 at 03:31 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `readymart`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=publish 2=unpublish',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `image`, `description`, `video_status`, `created_at`, `updated_at`) VALUES
(5, 'বিমানের দুবাই ও আবুধাবির নির্ধারিত ফ্লাইট স্থগিত', 'বিমানের দুবাই ও আবুধাবির নির্ধারিত ফ্লাইট স্থগিত.jpg', 'বিমানের দুবাই ও আবুধাবিতে বাণিজ্যিক ফ্লাইট স্থগিত করা হয়েছে।\r\n\r\nআগামীকাল সোমবার থেকে সংযুক্ত আরব আমিরাতের এই দুটি রুটে বিমানের ফ্লাইট চালু হওয়ার কথা ছিল। এ জন্য টিকিট বিক্রির কার্যক্রমও শুরু\r\nহয়েছিল। কিন্তু আরব আমিরাত সিভিল এভিয়েশনের সিদ্ধান্তের কারণে এই দুটি রুটে ফ্লাইট চলাচল স্থগিত করেছে বিমান কর্তৃপক্ষ। তবে স্থগিতের সুনির্দিষ্ট কারণ বিমানের পক্ষ থেকে জানানো হয়নি।\r\nহয়েছিল। কিন্তু আরব আমিরাত সিভিল এভিয়েশনের সিদ্ধান্তের কারণে এই দুটি রুটে ফ্লাইট চলাচল স্থগিত করেছে বিমান কর্তৃপক্ষ। তবে স্থগিতের সুনির্দিষ্ট কারণ বিমানের পক্ষ থেকে জানানো হয়নি।', '2', NULL, '2020-07-05 19:22:30'),
(6, 'ফেসবুকের তথ্য চুরি করছে যে ২৫ অ্যাপ', 'ফেসবুকের তথ্য চুরি করছে যে ২৫ অ্যাপ.jpg', 'গুগল প্লে স্টোর থেকে সম্প্রতি অ্যান্ড্রয়েড প্ল্যাটফর্মের জন্য তৈরি ২৫টি অ্যাপ সরিয়ে দেওয়া হয়েছে। সাইবার নিরাপত্তা প্রতিষ্ঠান এভিনার পক্ষ থেকে এসব অ্যাপ ফেসবুক থেকে তথ্য চুরি করছিল বলে গুগলকে সতর্ক করা হয়। ফেসবুকের লগইনসংক্রান্ত তথ্য এসব ক্ষতিকর অ্যাপ কৌশলে হাতিয়ে নিতে পারে। এতে বিশেষভাবে ম্যালওয়্যার বা ক্ষতিকর প্রোগ্রাম যুক্ত করা থাকে, যা মোবাইল ফোন থেকে ফেসবুকে লগইন করার সময় পাসওয়ার্ডের মতো গুরুত্বপূর্ণ তথ্য রেকর্ড করে রাখে।\r\n\r\nএভিনার গবেষকেদের মতে, এই ২৫ অ্যাপ ২০ লাখের বেশি ডাউনলোড হয়েছে। এসব অ্যাপ মূলত ফাইল ম্যানেজার, ফ্ল্যাশ লাইট, ওয়ালপেপার, স্ক্রিনশট এডিটর বা ওয়েদার অ্যাপ হিসেবে ধোঁকা দেয়। মোবাইল ফোনে এসব অ্যাপ থাকলে দ্রুত তা সরিয়ে ফেলতে বা আনইনস্টল করে ফেলতে হবে।\r\n\r\nগুগল প্লে স্টোর থেকে সম্প্রতি অ্যান্ড্রয়েড প্ল্যাটফর্মের জন্য তৈরি ২৫টি অ্যাপ সরিয়ে দেওয়া হয়েছে। সাইবার নিরাপত্তা প্রতিষ্ঠান এভিনার পক্ষ থেকে এসব অ্যাপ ফেসবুক থেকে তথ্য চুরি করছিল বলে গুগলকে সতর্ক করা হয়। ফেসবুকের লগইনসংক্রান্ত তথ্য এসব ক্ষতিকর অ্যাপ কৌশলে হাতিয়ে নিতে পারে। এতে বিশেষভাবে ম্যালওয়্যার বা ক্ষতিকর প্রোগ্রাম যুক্ত করা থাকে, যা মোবাইল ফোন থেকে ফেসবুকে লগইন করার সময় পাসওয়ার্ডের মতো গুরুত্বপূর্ণ তথ্য রেকর্ড করে রাখে।\r\n\r\nএভিনার গবেষকেদের মতে, এই ২৫ অ্যাপ ২০ লাখের বেশি ডাউনলোড হয়েছে। এসব অ্যাপ মূলত ফাইল ম্যানেজার, ফ্ল্যাশ লাইট, ওয়ালপেপার, স্ক্রিনশট এডিটর বা ওয়েদার অ্যাপ হিসেবে ধোঁকা দেয়। মোবাইল ফোনে এসব অ্যাপ থাকলে দ্রুত তা সরিয়ে ফেলতে বা আনইনস্টল করে ফেলতে হবে।\r\nগুগল প্লে স্টোর থেকে সম্প্রতি অ্যান্ড্রয়েড প্ল্যাটফর্মের জন্য তৈরি ২৫টি অ্যাপ সরিয়ে দেওয়া হয়েছে। সাইবার নিরাপত্তা প্রতিষ্ঠান এভিনার পক্ষ থেকে এসব অ্যাপ ফেসবুক থেকে তথ্য চুরি করছিল বলে গুগলকে সতর্ক করা হয়। ফেসবুকের লগইনসংক্রান্ত তথ্য এসব ক্ষতিকর অ্যাপ কৌশলে হাতিয়ে নিতে পারে। এতে বিশেষভাবে ম্যালওয়্যার বা ক্ষতিকর প্রোগ্রাম যুক্ত করা থাকে, যা মোবাইল ফোন থেকে ফেসবুকে লগইন করার সময় পাসওয়ার্ডের মতো গুরুত্বপূর্ণ তথ্য রেকর্ড করে রাখে।\r\n\r\nএভিনার গবেষকেদের মতে, এই ২৫ অ্যাপ ২০ লাখের বেশি ডাউনলোড হয়েছে। এসব অ্যাপ মূলত ফাইল ম্যানেজার, ফ্ল্যাশ লাইট, ওয়ালপেপার, স্ক্রিনশট এডিটর বা ওয়েদার অ্যাপ হিসেবে ধোঁকা দেয়। মোবাইল ফোনে এসব অ্যাপ থাকলে দ্রুত তা সরিয়ে ফেলতে বা আনইনস্টল করে ফেলতে হবে।', '1', NULL, NULL),
(7, 'বেইজিংয়ের কাছ থেকে দূরত্ব বাড়াচ্ছে টিকটক', 'বেইজিংয়ের কাছ থেকে দূরত্ব বাড়াচ্ছে টিকটক.jpg', 'ভারতে চীনের ৫৯টি অ্যাপ নিষিদ্ধ করা হয়েছে। এর মধ্যে রয়েছে টিকটকের মতো জনপ্রিয় অ্যাপও। তবে এ ঘটনার পর বেইজিংয়ের সঙ্গে দূরত্ব বাড়াচ্ছে টিকটকের নির্মাতা চীনা প্রতিষ্ঠান বাইটড্যান্স। বার্তা সংস্থা রয়টার্স জানিয়েছে, টিকটকের প্রধান নির্বাহী কর্মকর্তা কেভিন মেয়ার সম্প্রতি ভারত সরকারকে একটি চিঠি লিখেছেন। ওই চিঠিতে তিনি বলেছেন, টিকটকের কাছে চীন সরকার কখনো কোনো তথ্য চায়নি বা তারাও কোনো তথ্য সরকারকে দেননি। তারা বৈশ্বিক ব্যবহারকারী টানতে ইতিমধ্যে চীনের শেকড় থেকে নিজেদের দূরে সরিয়ে নিয়েছে।\r\n\r\n১৫ জুন লাদাখে চীনের সঙ্গে ভারতের সীমান্ত সংঘর্ষের জের ধরে ভারত চীনের ৫৯টি অ্যাপ নিরাপত্তার অজুহাতে নিষিদ্ধ তরে। এর মধ্যে টেনসেন্ট হোল্ডিংসের উইচ্যাট ও আলীবাবা গ্রুপের ইউসি ব্রাউজার রয়েছে।\r\n\r\nভারতে চীনের ৫৯টি অ্যাপ নিষিদ্ধ করা হয়েছে। এর মধ্যে রয়েছে টিকটকের মতো জনপ্রিয় অ্যাপও। তবে এ ঘটনার পর বেইজিংয়ের সঙ্গে দূরত্ব বাড়াচ্ছে টিকটকের নির্মাতা চীনা প্রতিষ্ঠান বাইটড্যান্স। বার্তা সংস্থা রয়টার্স জানিয়েছে, টিকটকের প্রধান নির্বাহী কর্মকর্তা কেভিন মেয়ার সম্প্রতি ভারত সরকারকে একটি চিঠি লিখেছেন। ওই চিঠিতে তিনি বলেছেন, টিকটকের কাছে চীন সরকার কখনো কোনো তথ্য চায়নি বা তারাও কোনো তথ্য সরকারকে দেননি। তারা বৈশ্বিক ব্যবহারকারী টানতে ইতিমধ্যে চীনের শেকড় থেকে নিজেদের দূরে সরিয়ে নিয়েছে।\r\n\r\n১৫ জুন লাদাখে চীনের সঙ্গে ভারতের সীমান্ত সংঘর্ষের জের ধরে ভারত চীনের ৫৯টি অ্যাপ নিরাপত্তার অজুহাতে নিষিদ্ধ তরে। এর মধ্যে টেনসেন্ট হোল্ডিংসের উইচ্যাট ও আলীবাবা গ্রুপের ইউসি ব্রাউজার রয়েছে।\r\n\r\nভারতে চীনের ৫৯টি অ্যাপ নিষিদ্ধ করা হয়েছে। এর মধ্যে রয়েছে টিকটকের মতো জনপ্রিয় অ্যাপও। তবে এ ঘটনার পর বেইজিংয়ের সঙ্গে দূরত্ব বাড়াচ্ছে টিকটকের নির্মাতা চীনা প্রতিষ্ঠান বাইটড্যান্স। বার্তা সংস্থা রয়টার্স জানিয়েছে, টিকটকের প্রধান নির্বাহী কর্মকর্তা কেভিন মেয়ার সম্প্রতি ভারত সরকারকে একটি চিঠি লিখেছেন। ওই চিঠিতে তিনি বলেছেন, টিকটকের কাছে চীন সরকার কখনো কোনো তথ্য চায়নি বা তারাও কোনো তথ্য সরকারকে দেননি। তারা বৈশ্বিক ব্যবহারকারী টানতে ইতিমধ্যে চীনের শেকড় থেকে নিজেদের দূরে সরিয়ে নিয়েছে।\r\n\r\n১৫ জুন লাদাখে চীনের সঙ্গে ভারতের সীমান্ত সংঘর্ষের জের ধরে ভারত চীনের ৫৯টি অ্যাপ নিরাপত্তার অজুহাতে নিষিদ্ধ তরে। এর মধ্যে টেনসেন্ট হোল্ডিংসের উইচ্যাট ও আলীবাবা গ্রুপের ইউসি ব্রাউজার রয়েছে।\r\nভারতে চীনের ৫৯টি অ্যাপ নিষিদ্ধ করা হয়েছে। এর মধ্যে রয়েছে টিকটকের মতো জনপ্রিয় অ্যাপও। তবে এ ঘটনার পর বেইজিংয়ের সঙ্গে দূরত্ব বাড়াচ্ছে টিকটকের নির্মাতা চীনা প্রতিষ্ঠান বাইটড্যান্স। বার্তা সংস্থা রয়টার্স জানিয়েছে, টিকটকের প্রধান নির্বাহী কর্মকর্তা কেভিন মেয়ার সম্প্রতি ভারত সরকারকে একটি চিঠি লিখেছেন। ওই চিঠিতে তিনি বলেছেন, টিকটকের কাছে চীন সরকার কখনো কোনো তথ্য চায়নি বা তারাও কোনো তথ্য সরকারকে দেননি। তারা বৈশ্বিক ব্যবহারকারী টানতে ইতিমধ্যে চীনের শেকড় থেকে নিজেদের দূরে সরিয়ে নিয়েছে।\r\n\r\n১৫ জুন লাদাখে চীনের সঙ্গে ভারতের সীমান্ত সংঘর্ষের জের ধরে ভারত চীনের ৫৯টি অ্যাপ নিরাপত্তার অজুহাতে নিষিদ্ধ তরে। এর মধ্যে টেনসেন্ট হোল্ডিংসের উইচ্যাট ও আলীবাবা গ্রুপের ইউসি ব্রাউজার রয়েছে।', '1', NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_05_181845_create_videos_table', 2),
(5, '2020_07_05_182543_create_blogs_table', 2);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$IAFtgE4Vme/atghKj6QvMO9UreyHE.tM6eCLB.23XZNPZDWLGLXt2', NULL, '2020-07-05 04:56:33', '2020-07-05 04:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=publish 2=unpublish',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `link`, `description`, `video_status`, `created_at`, `updated_at`) VALUES
(1, 'Shesh Kanna (feat. Benazir)', 'https://www.youtube.com/embed/NoRUddwfr1c', 'Provided to YouTube by Believe SAS\r\n\r\nShesh Kanna (feat. Benazir) · Tanveer Khan\r\n\r\nShopno\r\n\r\n℗ Salim Khan\r\n\r\nReleased on: 2016-04-29\r\n\r\nAuthor: Piran Khan\r\nComposer: Piran Khan\r\nFeatured Artist: Benazir\r\nMusic Publisher: POD\r\n\r\nAuto-generated by YouTube.', '2', NULL, '2020-07-05 19:23:20'),
(2, 'DJ Rahat - Milon Hobe Koto Dine ft. Baul Shafi Mondol', 'https://www.youtube.com/embed/5iUOVhG2QD4', 'Milon Hobe Koto Dine\r\nAlbum : Guru Go (2015)\r\nDJ Rahat ft. Baul Shafi Mondol\r\n\r\nFollow me at:\r\n\r\nMy official website: http://www.vdjrahat.com/\r\nFacebook: https://www.facebook.com/vdjrahat\r\nTwitter: https://www.twitter.com/vdjrahat\r\nInstagram: https://www.instagram.com/vdjrahat\r\nGoogle+ : https://plus.google.com/+vdjrahat\r\nSoundcloud: https://www.soundcloud.com/vdjrahat\r\n\r\n#DJRahat #BaulShafiMondol #MilonHobeKotoDine\r\n\r\nCheck Out My Other Tracks:\r\nPagol Mon II DJ Rahat feat Dilruba Khan - https://bit.ly/1k44EuN\r\nSona Bondhu II DJ Rahat feat Abanti Shithi - https://bit.ly/30Rhxyl\r\nBhromore II DJ Rahat feat Dilruba Khan - https://bit.ly/2Y4toHB\r\nMilon Hobe Koto Dine II DJ Rahat feat Baul Shafi Mandol - https://bit.ly/30M9fry\r\nDil Ki Daya - II DJ Rahat feat Oyshee - https://bit.ly/2xWcU9M\r\nLove Mashup 2019 II DJ Rahat feat Anika, Hasib - https://bit.ly/304lhvO\r\nTikatuli - II Film: Dhaka Attack - https://bit.ly/30Jd4h1\r\nKalankini Radha II DJ Rahat feat Kornia - https://bit.ly/2GhkGzB\r\nKrisno Pokhkho II DJ Rahat feat Oyshee - https://bit.ly/2Z4Yy2A\r\nTore Putuler Moto Kore II DJ Rahat feat Kumar Bishwajit - https://bit.ly/2Y4vcAn\r\nProthom Dekha II DJ Rahat feat Asif - https://bit.ly/2xYCb35\r\nBondhu - II DJ Rahat feat Nancy - https://bit.ly/2M4vUv5\r\nChader Kona II DJ Rahat feat Kona - https://bit.ly/2O6k85X', '2', NULL, '2020-07-05 19:23:25'),
(3, 'ওরিয়েন্টেশন প্রোগ্রামের মাধ্যমে শুরু হল ইন্ডাস্ট্রিয়াল অ্যাটাচমেন্টের যাত্রা', 'https://www.youtube.com/embed/jzzqnij42-I', 'সম্প্রতি কৃষিবিদ ইন্সটিটিউট অফ বাংলাদেশে আয়োজন করা হয় বর্ণাঢ্য অনুষ্ঠান, যেখানে ছড়িয়েছিল তারুণ্যের লাভা। ক্রিয়েটিভ আইটি ইন্সটিটিউটে ইন্ডাস্ট্রিয়াল অ্যাটাচমেন্ট প্রোগ্রাম সম্পন্ন করতে দেশের ১০০-এর বেশি পলিটেকনিক প্রতিষ্ঠান থেকে এসেছেন একঝাঁক শিক্ষার্থী।\r\n\r\nক্রিয়েটিভ আইটি শুধুমাত্র একটি আইটি প্রতিষ্ঠান নয় একটি প্রফেশনাল প্ল্যাটফর্ম যেখানে প্রজন্মকে আইটিতে দক্ষ করে গড়ে তোলা হয়। উপহার দেওয়া হয় আজ ও আগামীর ক্যারিয়ার। সেই ক্যারিয়ার গড়ার লক্ষ্যেই একত্র হয়েছে আগামীর সম্ভাবনা আমাদের প্রাঙ্গনে। তারা অবদান রাখতে চলেছে উন্নত ডিজিটাল বাংলাদেশ বিনির্মাণের লক্ষ্যে।\r\n\r\nনিজ নিজ দক্ষতা ও মেধার পরিচয় দিয়ে কর্মক্ষেত্রসহ জীবনের প্রতিটি ক্ষেত্রে প্রত্যেকেই সফলতার পথে এগিয়ে যাবেন, সবার জন্য ক্রিয়েটিভ আইটির পক্ষ থেকে এটাই কামনা।', '1', NULL, NULL),
(4, 'Developing Presentation Skills on English Language', 'https://www.youtube.com/embed/YH18UaMPjHY', 'The necessity of Communicative English is known to all. It is not something that you will learn in a day. But by practicing on a daily basis, it will improve your communicative skills gradually. \r\n\r\nEnglish Club is a platform that is open for all. We are offering this Communicative English Course where we have good sources available around us & some techniques on improving your Communication Skills. It will help you perform better. Besides joining the Creative English Club, you will get your speaking partner to improve your daily communications. \r\n\r\nOur students have overcome their fear and as you can see how they are in a state to come forward & speak about themselves confidently. Yes, they are making few mistakes cause they are still on learning stage. Facing the camera, talking in front of a crowd is something they are winning day by day.\r\n\r\nSo what\'s stopping you? The fear is only a barrier. Pass it on and start practicing today. Take your first step towards becoming one of nearly 800 million English speakers in the world.', '1', NULL, NULL),
(5, 'ঢাকা বিশ্ববিদ্যালয় ও ক্রিয়েটিভ আইটি\'র সফল পথচলার ৩ বছর', 'https://www.youtube.com/embed/iNTGwH0YZuc', 'ঢাকা বিশ্ববিদ্যালয় ও ক্রিয়েটিভ আইটি\'র সফল পথচলার ৩ বছর ।\r\nক্যারিয়ারের সাফল্যে ভুমিকা রাখে সঠিক দিক নির্দেশনা ও উন্নত প্রশিক্ষণ ।\r\nআপনি সেরা তখনই হতে পারবেন যখন আপনি দিবেন আপনার সর্বোচ্চ , সাথে থাকবে কর্পোরেট অভিজ্ঞতা সম্পন্ন বেষ্ট ট্রেইনার, ও আপ-টু-ডেট কারিকুলাম । যার সবই রয়েছে ক্রিয়েটিভ আইটির ।\r\nতারই প্রেক্ষিতে প্রাচ্যের অক্সফোর্ড -ঢাকা বিশ্ববিদ্যালয় এর গ্রাফিক আর্ট বিভাগের সাথে একাডেমিক পার্টনার হিসেবে\r\nক্রিয়েটিভ আইটি পাড়ি দিচ্ছে সফলতার ৩টি বছর ।\r\nকর্পোরেট বিশ্বের তুমুল প্রতিযোগিতায় যেন কোন মেধা হারিয়ে না যায়, সেই লক্ষ্যে আমরা ঢাকা বিশ্ববিদ্যালয়ের মেধাবীদের নিয়ে চলেছি সাফল্যের পথে ।\r\nশুক্রবার ফ্রি সেমিনারে অংশগ্রহন করতে রেজিস্ট্রেশন করুনঃ \r\nhttps://goo.gl/forms/hMRFgrWWYvYgvFn33 \r\nআমাদের পাবেনঃ\r\nক্রিয়েটিভ আইটি ইন্সটিটিউট\r\nমমতাজ প্লাজা (৫মতলা )(ল্যাবএইড হাসপাতালের বিপরীতপাশে), \r\nবাড়ি# ৭, রোড# ৪, ধানমন্ডি, ঢাকা।\r\nফোনঃ 01990779827, 01990779814, 01990779843 , 01624888444', '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
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
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2020 at 10:05 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `software_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_crops`
--

CREATE TABLE `add_crops` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_date_bidding` date NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_crops`
--

INSERT INTO `add_crops` (`id`, `email`, `product_name`, `crop_type`, `product_quantity`, `product_price`, `product_description`, `long_description`, `last_date_bidding`, `product_image`, `created_at`, `updated_at`) VALUES
(1, 'zulkarnine43@gmail.com', 'paddy', 'vegetables', '20 bighas', '5000', 'new year', '<p>made by bangladesh</p>', '2020-03-18', 'product_images/paddy.jpg', '2020-03-02 07:03:01', '2020-03-02 07:03:01'),
(2, 'zulkarnine43@gmail.com', 'mango garden', 'Fruits', '100 tree', '20000', 'new year', '<p>made by khustia, bangladesh</p>', '2020-03-13', 'product_images/mango.jpg', '2020-03-02 07:04:54', '2020-03-02 07:04:54'),
(3, 'zulkarnine43@gmail.com', 'Lotkon', 'Fruits', '20 trees', '15000', 'new year', '<p>made by bangladesh</p>', '2020-03-18', 'product_images/lotkon-garden-narsingdi-01.jpg', '2020-03-02 07:06:00', '2020-03-02 07:06:00'),
(4, 'zulkarnine43@gmail.com', 'papaya', 'Fruits', '10 tree', '10000', 'new year', '<p>made by bangladesh</p>', '2020-03-12', 'product_images/papaya.jpg', '2020-03-02 07:07:08', '2020-03-02 07:07:08'),
(5, 'zulkarnine43@gmail.com', 'jute', 'vegetables', '10 bighas', '8000', 'new year', '<p>Made By Bangladesh</p>', '2020-03-20', 'product_images/jute.jpg', '2020-03-02 07:08:25', '2020-03-02 07:08:25'),
(6, 'zulkarnine43@gmail.com', 'cha', 'Others', '20 bighas', '17000', 'new year', '<p>made by sylhet,bangladesh</p>', '2020-03-30', 'product_images/cha.jpg', '2020-03-02 07:09:40', '2020-03-02 07:09:40'),
(7, 'zulkarnine43@gmail.com', 'grapes', 'Fruits', '4 trees', '3000', 'new year', '<p>made by bangladesh</p>', '2020-03-19', 'product_images/grapes.jpg', '2020-03-02 07:11:02', '2020-03-02 07:11:02'),
(8, 'faruqe@gmail.com', 'Malta', 'Fruits', '10 tree', '15000', 'new year', '<p>made in bangladesh.</p>', '2020-03-19', 'product_images/malta.jpg', '2020-03-03 10:06:59', '2020-03-03 10:06:59'),
(9, 'sajid@gmail.com', 'dab', 'Fruits', '5', '15000', 'new year', '<p>Made by bangladesh</p>', '2020-03-15', 'product_images/dab pic 0002.jpeg', '2020-03-05 10:54:35', '2020-03-05 10:54:35'),
(10, 'sajid@gmail.com', 'clemon', 'Fruits', '10 tree', '500', 'new year', '<p>Made by bangladesh</p>', '2020-03-14', 'product_images/images (15).jpg', '2020-03-05 10:59:57', '2020-03-05 10:59:57'),
(11, 'sajid@gmail.com', 'mango garden', 'Fruits', '20', '10000', 'new year', '<p>Made by bangladesh</p>', '2020-03-20', 'product_images/images (4).jpg', '2020-03-05 11:01:25', '2020-03-05 11:01:25'),
(12, 'sajid@gmail.com', 'potol', 'vegetables', '5', '5000', 'new year', '<p>Made by bangladesh</p>', '2020-03-12', 'product_images/images (29).jpg', '2020-03-05 11:02:56', '2020-03-05 11:02:56'),
(14, 'sajid@gmail.com', 'anarosh', 'Fruits', '200 pc', '2500', 'new year', '<p>Made by bangladesh</p>', '2020-03-21', 'product_images/images (7).jpg', '2020-03-05 11:06:17', '2020-03-05 11:06:17'),
(15, 'sajid@gmail.com', 'malta', 'Fruits', '100 tree', '100000', 'new year', '<p>Made by bangladesh</p>', '2020-03-13', 'product_images/download (5).jpg', '2020-03-05 11:08:35', '2020-03-05 11:08:35'),
(16, 'sajid@gmail.com', 'kathal', 'Fruits', '20 tree', '20000', 'new year', '<p>Made by bangladesh</p>', '2020-03-14', 'product_images/dhaka-bangladesh-may-11-2019-260nw-1396561886.webp', '2020-03-05 11:11:06', '2020-03-05 11:11:06'),
(17, 'sajid@gmail.com', 'mulla', 'vegetables', '1000 hali', '5000', 'new year', '<p>Made by bangladesh</p>', '2020-03-20', 'product_images/images (42).jpg', '2020-03-05 11:12:47', '2020-03-05 11:12:47'),
(18, 'sajid@gmail.com', 'apple', 'Fruits', '100 dorjon', '8000', 'new year', '<p>Made by bangladesh</p>', '2020-03-24', 'product_images/images (17).jpg', '2020-03-05 11:16:23', '2020-03-05 11:16:23'),
(19, 'sajid@gmail.com', 'ataphol', 'Fruits', '1000 pc', '10000', 'new year', '<p>Made by bangladesh</p>', '2020-03-12', 'product_images/download (6).jpg', '2020-03-05 11:17:57', '2020-03-05 11:17:57'),
(20, 'sajid@gmail.com', 'pape', 'Fruits', '100 tree', '50000', 'new year', '<p>Made by bangladesh</p>', '2020-03-21', 'product_images/images (3).jpg', '2020-03-05 11:19:25', '2020-03-05 11:19:25'),
(21, 'sajid@gmail.com', 'sorisha', 'vegetables', '10 bega', '10000', 'new year', '<p>Made by bangladesh</p>', '2020-03-14', 'product_images/unnamed.jpg', '2020-03-05 11:20:41', '2020-03-05 11:20:41'),
(22, 'sajid@gmail.com', 'sunflower', 'Others', '2 biga', '20000', 'new year', '<p>Made by bangladesh</p>', '2020-03-13', 'product_images/images (37).jpg', '2020-03-05 11:24:29', '2020-03-05 11:24:29'),
(23, 'faruqe@gmail.com', 'grapes', 'Fruits', '40 kg', '4000', 'new year', '<p>Made by bangladesh</p>', '2020-03-12', 'product_images/Grap.jpg', '2020-03-05 11:26:02', '2020-03-05 11:26:02'),
(24, 'sajid@gmail.com', 'kamranga', 'Fruits', '5  trees', '3000', 'new year', '<p>Made By Bnaagladesh</p>', '2020-03-19', 'product_images/images (14).jpg', '2020-03-05 12:33:47', '2020-03-05 12:33:47');

-- --------------------------------------------------------

--
-- Table structure for table `crop_messages`
--

CREATE TABLE `crop_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `crop_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `farmer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crop_messages`
--

INSERT INTO `crop_messages` (`id`, `crop_id`, `product_name`, `farmer_email`, `cust_id`, `name`, `email`, `mobile`, `message`, `created_at`, `updated_at`) VALUES
(1, '3', 'Lotkon', 'zulkarnine43@gmail.com', '1', 'Faruqe', 'faruqe@gmail.com', '01876784567', 'i  will buy this crop  15000', '2020-03-02 07:14:54', '2020-03-02 07:14:54'),
(2, '3', 'Lotkon', 'zulkarnine43@gmail.com', '4', 'sajid', 'sajid@gmail.com', '01976348745', 'I will buy with 15500 TK.', '2020-03-02 07:16:39', '2020-03-02 07:16:39'),
(3, '3', 'Lotkon', 'zulkarnine43@gmail.com', '5', 'Abul', 'abul@gmail.com', '019827438945', 'i will buy this 16k Taka', '2020-03-02 07:17:54', '2020-03-02 07:17:54'),
(4, '2', 'mango garden', 'zulkarnine43@gmail.com', '5', 'Abul', 'abul@gmail.com', '019827438945', 'I will buy buy this crop in given budget', '2020-03-02 07:18:48', '2020-03-02 07:18:48'),
(5, '8', 'Malta', 'faruqe@gmail.com', '4', 'sajid', 'sajid@gmail.com', '019827438945', 'I will buy in given price..', '2020-03-03 10:12:17', '2020-03-03 10:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `customer_registrations`
--

CREATE TABLE `customer_registrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_password` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_registrations`
--

INSERT INTO `customer_registrations` (`id`, `fullname`, `username`, `email`, `mobile`, `district`, `postal_code`, `password`, `confirm_password`, `created_at`, `updated_at`) VALUES
(1, 'Faruqe', 'faruqe1', 'faruqe@gmail.com', '01976348745', 'Khulna', '1200', 'eyJpdiI6IjNybnRKYnJzWGZuRmZ3MGNNblg3TXc9PSIsInZhbHVlIjoiM1RQSStNV1BPdFFReThsbGtWbVRVZz09IiwibWFjIjoiMzMwNzNlMDViMDA4ZGZmYjdiYWMxMmJjMGU3NzVlYTBlNDcxNjFiYzNmYzYzNGJlNTEwNWY5OWQ1OTc2YjYzZCJ9', 'eyJpdiI6IjQzN0VUMVVqTlBxeGFBNWx4Q2M0T1E9PSIsInZhbHVlIjoiTVhHTVkzWkhhWVNrRFBYZWZrME91dz09IiwibWFjIjoiMWM0ZmQ4YzdjY2UyNTc5M2FiYzMzZDRkMGM2NWM3OTU2NDAxMzNjMjZiOTZjNjIwMjRjZjJmMjU5ZGY1NGZhZiJ9', '2020-03-01 14:04:32', '2020-03-01 14:04:32'),
(3, 'zulkarnine', 'nine1', 'zulkarnine43@gmail.com', '01976348745', 'Dhaka', '1600', 'eyJpdiI6IjRuMFU4ZmtkVGVBMVorWlFPUnNWM2c9PSIsInZhbHVlIjoiY1ZXdWNKYWRsSXdSanpYeUw4UDh5QT09IiwibWFjIjoiMWI3YjVhYTQ1YjkzNjhiZjU2NThiNTc2MzI0OGE4NmJjN2E4ZjJkMjFlYTgyYThhNjRkNTUwMTM5N2YwMDQ2MyJ9', 'eyJpdiI6Imgwb0dtMUNzMUxSNWZaV3ZpODI0T2c9PSIsInZhbHVlIjoiVzJtbjF5SWVPSTlvRHVnNUl6bTZSdz09IiwibWFjIjoiMzc4ZDgzZGZhMjllMjZjNmY5NWI3M2Q2NDE5ZWQ3NmJhMjBjZmJiNzU5M2U0ZDlhMGZiZWVjZGRiZmI1OWNjZCJ9', '2020-03-02 06:59:12', '2020-03-02 06:59:12'),
(4, 'sajid', 'sajid1', 'sajid@gmail.com', '019827438945', 'Khulna', '1800', 'eyJpdiI6Ijh5djhVWXltTmNcL3dxVUpBcWNXR09BPT0iLCJ2YWx1ZSI6ImExM3JLVGxYQXhUbm40UFdzNHJQTmc9PSIsIm1hYyI6IjU2NmQxMTJjOWI0ZDlkZWE1Y2U4YTA2M2U4MzZiNGMxZDJlZWQ1ODdlY2NiZDk3YjQyZTNjNmI4YWMzNGZmNmYifQ==', 'eyJpdiI6IlBMK2pMV01rUXJJSFwvekRtWk5nbUtnPT0iLCJ2YWx1ZSI6IkhqS0pWZmtZSW5aZGRsUHYrQ3FtSHc9PSIsIm1hYyI6IjgzYTZiZWI2MmMyM2JhMDFlYzE1MTYwYTQ5YWU0MzdhMGI1NTI0OWQ5ZTE5OTFmYzNjNDcxZTk1MjQwOGRmNDUifQ==', '2020-03-02 06:59:39', '2020-03-02 06:59:39'),
(5, 'Abul', 'abul1', 'abul@gmail.com', '01989419776', 'Barishal', '1900', 'eyJpdiI6IjBNRUc0cnpmdUhxdUdsRDVBRTBTXC93PT0iLCJ2YWx1ZSI6IjVuV2pYVzhHUlJcL3MweVAwbUkwb2NnPT0iLCJtYWMiOiI2NTQwZWEyMmY1ZmNkYWVkNTg2N2UzN2I1MjRhNGE2NDE4Y2UzYTJiY2NiNWMzYzMwMzkzMGM1ZTM1NWEwMzU3In0=', 'eyJpdiI6ImdQVVlYXC9ZVUlhZThxM3gwbWQ1Z0VBPT0iLCJ2YWx1ZSI6ImpYWEcwcHpmYmRqZlZoRVBSUGpGNGc9PSIsIm1hYyI6IjhhNmJmNzgzZjgyODVkYzgyM2IzZDUwNjRmMjUwMTZkMzNkNjBjMGY2Y2UyZmM3ZTQ3NWE2OTZhMjRhYzk4ODAifQ==', '2020-03-02 07:00:10', '2020-03-02 07:00:10'),
(6, 'apurba', 'apurba1', 'apurba@gmail.com', '01976348745', 'Rajshahi', '1600', 'eyJpdiI6IlZtOEcxd3dtdzM0Q3FUYVVGWlhpZ1E9PSIsInZhbHVlIjoiSmNJek9wM05HNHJ6aG9mMzJNdXVnZz09IiwibWFjIjoiYzVjNjQyZWI2ZmEwOTllOTY3OTdiYjY0YmU1MmVjYTAzOWJjNjE0MTM5ZjkyYTMxNzM1OGNlNjg3MzcxMWVlNyJ9', 'eyJpdiI6InJFVjVWWnNwMEtuQ1pSaWhCbXZkcmc9PSIsInZhbHVlIjoiR2FGdVFcL09ZRDZSNDFcL0ZlZDVqSUZRPT0iLCJtYWMiOiIwY2JjMzc2ODAyOTk2MDcyN2Y4YzIyMjdlNzVkNDhlYmJiNjQxNjE3Njc3MTdjOGRhYTcwMTdhMDM1NDg2NmE1In0=', '2020-03-06 00:03:53', '2020-03-06 00:03:53'),
(7, 'rejowan', 'rejowan1', 'rejowan@gmail.com', '01876784567', 'Chittagong', '1700', 'eyJpdiI6Im9kT1BKRmNhTUhsdSt4RkM3OE1xSnc9PSIsInZhbHVlIjoidXAzenhNZmJPamtzWEVnTXlhNlhcL0E9PSIsIm1hYyI6ImJmMjQyMGU2ZGNjMmM4YjMxMmY5ZmZhMjY3OWY3YjZkM2ZiODgzNjFmNWI0NjUwZWI0ZDA5YzgyNTI5M2FiZmEifQ==', 'eyJpdiI6IktyYklUOVwvV21RV2tBaFRsTFY1T0VRPT0iLCJ2YWx1ZSI6IlV6QlNnOTlJcDNaVUZuc3dLNXFGdGc9PSIsIm1hYyI6IjdjMDdkYmM5NTgyNzFhMTgwN2YyYjBhMTc1MjRmZTQwMTUzZjhlYTI2YzM1ZTNmZWY4YjJlMTM0N2I4ZDBiMGYifQ==', '2020-03-06 00:05:15', '2020-03-06 00:05:15'),
(8, 'Sabbir_Saleh', 'Sabbir', 'saleh.sabbir@gmail.com', '01976348745', 'Chittagong', '1900', 'eyJpdiI6ImFPXC9RM04zT2puSjcwSmVtdVJXSVZBPT0iLCJ2YWx1ZSI6InM4WTg5bHNydWNIZEhHWDNKamw0Vmc9PSIsIm1hYyI6IjAzYmU3ZTMwMjQ0NjJhZWNjMzdjN2UyN2IyYTI5ODNkYTAwMjdkN2I5MjFhM2Y2MTBlMTY4NmY1ZjNhMTc5YzgifQ==', 'eyJpdiI6ImpzNHFiS1l5Sm9sTmlab3lJYURpMGc9PSIsInZhbHVlIjoiMlkwUFdYQlhDRzNhSjRIdmRDSlRxdz09IiwibWFjIjoiNDJkODM3Nzk3NTkyZTExMWVmNGNhZWQ2ZTM5NmFhZGVmZTMzZGUzYWIxZDA3NzY3YjU5YTZkMmUwMzAwODAwYiJ9', '2020-03-06 00:07:38', '2020-03-06 00:07:38'),
(9, 'alomgir', 'alom1', 'alomgir@gmail.com', '01976348745', 'Chittagong', '2000', 'eyJpdiI6IlNaZlFcL2lzempZd0lGTkJEcmdFcXhnPT0iLCJ2YWx1ZSI6IlptN29yTmYrOFF6a0FwV2dMWG1GUGc9PSIsIm1hYyI6ImIyNGRiNmUzNWRjM2RiNTZjN2JiZWRiNDViNjcxMjUzMTY4MWI5ZWQyOGY3Zjc4MzkyNjAzOTNhNTExYzEzMDgifQ==', 'eyJpdiI6IjN6R1hNc1dwMmlETVB1V0tObzVsVVE9PSIsInZhbHVlIjoiQmM3TEcxZEQyVFN0b1ZidEYybWgrdz09IiwibWFjIjoiNWQzMDkyZWE5NTQzMDE1NjQ1MzMxZTVlMTBlZDc2OTA3NGVhYzg3NWM0ZjUxOTgxZWQ5NjBjMWY1MzExMzI3MiJ9', '2020-03-06 00:08:34', '2020-03-06 00:08:34'),
(10, 'ataullah', 'ataullah1', 'ataullah@gmail.com', '01876784567', 'Barishal', '2100', 'eyJpdiI6Imw3MEpDUDAzeDRkdXpLVHpRdUN2bmc9PSIsInZhbHVlIjoiRUNENnNLM0NoYXl0dFJNRUw3Nmltdz09IiwibWFjIjoiNzkzNDMwMzIwNzc2YmE3NGI1ZGQxNWEzZjI5OWM3MDBhYWMwMzc2MzNmZjQ5N2U2YzA4MGI0MmJlMTdmOGQ5YSJ9', 'eyJpdiI6InN0WU9OVnF4Q3RkcEZVWVhxcExmd3c9PSIsInZhbHVlIjoidWY2aitFckFRRUxlM01jaURNOU1iUT09IiwibWFjIjoiNzQ2N2U1ZDVjNGFlNzRkZWIwNmI0MTZkZjc5OWJhZjg0NWZhYzE4NGZjMTcyMzEyNzE1Mzg3NTQxZTNhMzE5YyJ9', '2020-03-06 00:10:10', '2020-03-06 00:10:10'),
(11, 'Sajedul', 'sajedul1', 'sajedul@gmail.com', '01976348745', 'Chittagong', '1900', 'eyJpdiI6Ik9xSFpGM1lhSW5PemMxUXNmamRUNUE9PSIsInZhbHVlIjoiZTNsZ0FPU2N3YXkxa3g4ODUraDVsZz09IiwibWFjIjoiMzk1OTBhNzM1YWYwNmJkNzllMDFkYjE5M2M3NjdjZThjMTJhODdmYzQ0Mzk5ZjNiNzY4NDlmMmIwN2VmNDYxNSJ9', 'eyJpdiI6IlZWK2Urelc0dEliXC9iMERaZXdTQUt3PT0iLCJ2YWx1ZSI6IitON0NPbmVwSnpIdkVTTWdZb0FGa3c9PSIsIm1hYyI6IjdjZTE4MjllOGRmOTE2YjJkZGNlZjliZDEzNDI4YWUwNjM2ZGEzZGFiYzZkMjM5NmMyMzI1OTY1NGM2OTA4ZDIifQ==', '2020-03-06 00:11:28', '2020-03-06 00:11:28');

-- --------------------------------------------------------

--
-- Table structure for table `cust_messages`
--

CREATE TABLE `cust_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `crop_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `farmer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cust_messages`
--

INSERT INTO `cust_messages` (`id`, `crop_id`, `product_name`, `farmer_email`, `message`, `created_at`, `updated_at`) VALUES
(1, '3', 'Lotkon', 'zulkarnine43@gmail.com', 'If you buy this..please  bkash advanced  500 Tk...........Please Contact my phone 01989419776', '2020-03-02 07:21:36', '2020-03-02 07:21:36');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_registrations`
--

CREATE TABLE `farmer_registrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_password` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farmer_registrations`
--

INSERT INTO `farmer_registrations` (`id`, `fullname`, `username`, `email`, `mobile`, `district`, `postal_code`, `password`, `confirm_password`, `created_at`, `updated_at`) VALUES
(1, 'zulkarnine', 'nine1', 'zulkarnine43@gmail.com', '01989419776', 'Dhaka', '1200', 'eyJpdiI6IkEwcWRyRk9yTVI0Y0JvRjRHVW1KbVE9PSIsInZhbHVlIjoid0JuK0R4XC83bTY4eUFjZ1Q0cFpNVlE9PSIsIm1hYyI6IjI2MWZkOTYwZjMzNjhlN2UyZmM3NmMzYmY3ODI0OWQ0ZDg2YTBlMTIwZGJiMThhNjY1OWU1NjdiMzQzMGFiZjkifQ==', 'eyJpdiI6IlFTbFMrZXRDcGRWb1JPZWw1cFZyN3c9PSIsInZhbHVlIjoiUUJqVGJcL3J4WHJ6Zjg2Q0poZGpIdGc9PSIsIm1hYyI6IjJlZjUxODMyNmUzYjZiNzJhNzQ1NDliOWM0MzJmMzljNWI1M2IzMzNhOWM2OWEzZjdiOTkzNWExYzVhOWE2MGMifQ==', '2020-03-01 13:59:20', '2020-03-01 13:59:20'),
(2, 'sajid', 'sajid1', 'sajid@gmail.com', '01976348745', 'Comilla', '2400', 'eyJpdiI6IkQ2YXdMVmFMQW9jMTdsajVIb3BIYmc9PSIsInZhbHVlIjoibUE5dUoxWjROUUZWcVg2QktqZGFndz09IiwibWFjIjoiMzYzODUxODQ3YmZlZmY0OGJhZDU4ZGNhZGVlNjg1ZDAxYzNkMTdhNTIwYmY3NzNhOTBhNDUwNGI0MjAyMTBhZSJ9', 'eyJpdiI6IkVxQ0VCdXNIajFiWUcwMThtRlR1MWc9PSIsInZhbHVlIjoiU3RcLzAxaDFrRGVvblpSMDUrYzM5ZFE9PSIsIm1hYyI6IjQwOTBkMjg2NDkzYzZlNGNkZmViNTVlYWI4MjI5NTRjNjY3NzE4MjM3MmYwNmY3ZWI2OGRmYTM1YzQ2Njc0MTEifQ==', '2020-03-02 06:52:36', '2020-03-02 06:52:36'),
(3, 'shaon', 'shaon1', 'shaon@gmail.com', '019827438945', 'Chittagong', '1200', 'eyJpdiI6Im9YVTRRSWhGa1F3T3E1bWJmK0s2Y2c9PSIsInZhbHVlIjoiaGs5Rk1NUTZqdEM0a2VoZTJNeWh6QT09IiwibWFjIjoiMGFiNWRhNTRiZjVkNjQ0YzMzMTczZDQ1MDU5Y2YxNjEwMGE3OWZlZmExZTliZTE4MzFkNTllZTU3NjcyNzk0MyJ9', 'eyJpdiI6IjdwbzFZa0VPcW52Wm11b0JIeVl4a1E9PSIsInZhbHVlIjoidEpuN3QxVzR2WjdGNHVmRnl5WGplQT09IiwibWFjIjoiNjEwNDdjNmExZjU3YzdhZTFmZTU1ZDBmZjE4OTEzNDk0MWFiNjE4ODgzMmY2ZjI1NGQxODA1YjMzZGU4MzQwYyJ9', '2020-03-02 06:53:52', '2020-03-02 06:53:52'),
(4, 'Faruqe', 'faruqe1', 'faruqe@gmail.com', '01976348745', 'Chittagong', '1000', 'eyJpdiI6IkZBdjNZT0hFeUYrdlVHXC9nSU5BeGlnPT0iLCJ2YWx1ZSI6InJMMHJPSFwvdVh4cjU5Y1lCMUhocExRPT0iLCJtYWMiOiIzNDkyNWI2NTA1NmJhOWQwM2E4MmJmMTVjY2ZmN2VhZDJkNTk2YmM3YzE5MGVjOWY0YWNhYjMwYWYwYjFlMDI1In0=', 'eyJpdiI6Ik5uS2xoNjNIUG1qSkdNT3MyUlZUbHc9PSIsInZhbHVlIjoiTFZxZFlJXC84b1VHSEtVXC9hR2dLYTBBPT0iLCJtYWMiOiJiZjg4NTk2Yjg4MGVlMmE2N2E2ZmIzY2Q3NmE1ZTJhMDE0NjM2ZTFhMmRmZDJiZTkxY2VjYWE1Y2FiZTU1Mjk2In0=', '2020-03-02 06:54:38', '2020-03-02 06:54:38'),
(5, 'zulkarnine', 'zulkarnine601', 'zulkarnine4444@gmail.com', '01876784567', 'Comilla', '1900', 'eyJpdiI6InJxbFBkYWpSck1wYVFiUFNuVXVwaXc9PSIsInZhbHVlIjoiR2pBQUlzQkdLXC92QTgyTXV4TVJ1OGc9PSIsIm1hYyI6IjY2ZGQzYzE2NmMzMDJhOGUxZDU2ZWMzMGE4MGFjNjlkODhkYWU2Y2E1NzM5NGM1ZGYyMjAxN2Q5MWNhMTYzYzEifQ==', 'eyJpdiI6IjZvTEl6SkxQQlwvRVZUTTNCYVUrbkJBPT0iLCJ2YWx1ZSI6IlRFZUkwMUk0OFwvQ0dYd1NadVwvWHRvQT09IiwibWFjIjoiODI5NTIwNjgyZGYyN2RkYTA2NDZhZjhmZWVmMjgyNzRlMzM4NDZjMWMyYTA0OWM0MTU3MDIxMDUyYjc0NDkzMyJ9', '2020-03-02 06:55:24', '2020-03-02 06:55:24'),
(6, 'Abul', 'abul1', 'abul@gmail.com', '01876784567', 'Barishal', '1300', 'eyJpdiI6InhvejBjbUNraWxEVlB0eVN3dXhyZUE9PSIsInZhbHVlIjoibEpTeHowRjlYbVhyMFdqb21zdms5UT09IiwibWFjIjoiODBjNTg5MTc3ZWRkNGVkMTkzN2Q3NjI1ODk1ZGVlMWVhZmMzOWQ4MGIwYzE1ODI5NjdiZjY2MGU0MGUzMGMyZCJ9', 'eyJpdiI6IlZUMjlDQlc1bTNvOEVmT1FpTlRheWc9PSIsInZhbHVlIjoiUnNpbFwvK3NSZlhBdjlMSFg0TlBoVHc9PSIsIm1hYyI6ImY0ODRmZWE1MmI2MjViYzFhNDljOWIzMzk1MTcyZTg3MDA0ZmRkMWVhNjlkM2ViZDc4NTU1ODg1MWViYTc2ZDYifQ==', '2020-03-02 06:56:02', '2020-03-02 06:56:02'),
(7, 'apurba', 'apurba1', 'apurba@gmail.com', '01876784567', 'Comilla', '1600', 'eyJpdiI6Im1FNUprZUhMc0tvajFlU1FCZGQ4cUE9PSIsInZhbHVlIjoiRUNIdzE3ZmI0MGhzVTEweXNXRWpEZz09IiwibWFjIjoiYzcxMTgwZjkyMDIyYjJiNDdlMGJjMDhlNjNjNDhjOTRjZGFhMjgyNDQ1Y2Y3ZDFjN2EyMzc4ZmUwYzM0ZGI5NiJ9', 'eyJpdiI6Ik1UQzlPcmttMnhTM0hWalwvdWI2V0ZRPT0iLCJ2YWx1ZSI6IlNuOTdGVWtnTVFMSFwveFdIQVYyNG1nPT0iLCJtYWMiOiJkNGUzZDBjYjJjZWY4NWE5YjY4ZGU1MjkzMTllMDcwZjBiZWJiMmRmOWNjZmRiYzg5MzcxNjRhOTg1NmJkYjk5In0=', '2020-03-02 06:56:29', '2020-03-02 06:56:29'),
(8, 'alomgir', 'alom1', 'alomgir@gmail.com', '01976348745', 'Comilla', '1100', 'eyJpdiI6Im13OFRuQ1hQZXZGUXpLNXF3ZVBaTWc9PSIsInZhbHVlIjoiVDRhRDlLd1RsYTBnNjh3R3czaEExUT09IiwibWFjIjoiYWJjMjQ3YmY2OGI1ZTczMjQ5NzM3OTk5NDIyZjgyZjk5MjlkMmI3MzhlMTAxOWQyNzZmMDA1NDE2ZTNjM2NmMiJ9', 'eyJpdiI6Ik5ubUhkVHhYMXZRcTA1Mk1mcjQ4ckE9PSIsInZhbHVlIjoicXZFY1dCRW1MR3NOXC94cXpcLzI5SUlRPT0iLCJtYWMiOiIwMmU4MWM3NDU3MTE4YTYzOGExYzQ4NzEyNjU0Y2JhYzQ1OWIwZWQ5NDc4NDE5ZWUxM2Y3YjljYjQ0MzA4ODcwIn0=', '2020-03-05 10:02:36', '2020-03-05 10:02:36'),
(10, 'Sabbir Saleh', 'Sabbir', 'saleh.sabbir@gmail.com', '01976348745', 'Dhaka', '1200', 'eyJpdiI6IkpUVm4xaEdQV3dzUDRlMjlucHZxU2c9PSIsInZhbHVlIjoiUzFxb25JUHhHUVlnU2RUTmRwZUZ4dz09IiwibWFjIjoiY2FmMjU3ODBhMDk2MTJjODZkZTFkYjFkNTA2ZTM1ZGI4ODg5NDRhMTQ2YzlhMmQ5M2IzZjMwN2JlOTBmNzg1YiJ9', 'eyJpdiI6Ild2Vlh1c3ZwcWw3Q0JmNnZiRTNGXC9BPT0iLCJ2YWx1ZSI6IjZIYlwvUmhmaWZsVm9MOW8rOGtoNDBRPT0iLCJtYWMiOiJjMmIzNDVhMDMwZDUwYTY4MmVmZmE2YjcxNzk1NzNjOTQ3MGYwYjMyNTQxOTIyMTBkZjM4M2U5YjU2Yjc0YTExIn0=', '2020-03-05 23:16:31', '2020-03-05 23:16:31'),
(11, 'rejowan', 'rejowan', 'rejowan@gmail.com', '019827438945', 'Comilla', '1100', 'eyJpdiI6IkJPU2R3VTk5b2RoWEZ6bCttS1k4bnc9PSIsInZhbHVlIjoiUEtMSjR2SFdcL2xNYWRWZ3d0cW5OWWc9PSIsIm1hYyI6IjBhZDlkNjQzYzVmOTI4ZDdiODA0MjJkMmY4NTFhYTczOTk0ZTdhMDM3MDA4ZDAzYWMzMmZiM2U5NDE0OTA4NDQifQ==', 'eyJpdiI6ImVSSnI4S1VPd2JHXC9FRWFVV2pnZmNnPT0iLCJ2YWx1ZSI6IjJENnpQUkdFTjdOdXVTelwveEJnNHJ3PT0iLCJtYWMiOiI0MjllYjk0Njc1ZDQxOTVmM2E5ZDdiOTE1OTE4NTk1ZDg1YjE3MzM0ZTQwMTY1Yjg4MzgwODhkM2JmZjBmNzUyIn0=', '2020-03-05 23:21:54', '2020-03-05 23:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `gallary_adds`
--

CREATE TABLE `gallary_adds` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallary_adds`
--

INSERT INTO `gallary_adds` (`id`, `product_name`, `crop_type`, `product_description`, `product_image`, `created_at`, `updated_at`) VALUES
(1, 'paddy', 'Food', 'made by bangladesh', 'gallary_images/paddy.jpg', '2020-03-02 07:35:08', '2020-03-02 07:35:08'),
(2, 'narkel', 'Fruits', 'made by bangladesh', 'gallary_images/narkel.jpg', '2020-03-02 07:35:36', '2020-03-02 07:35:36'),
(3, 'mango', 'Fruits', 'made by bangladesh', 'gallary_images/mango.jpg', '2020-03-02 07:35:51', '2020-03-02 07:35:51'),
(4, 'sorisa', 'Others', 'made by bangladesh', 'gallary_images/download.jpg', '2020-03-02 07:36:31', '2020-03-02 07:36:31'),
(5, 'cha', 'Others', 'new year', 'gallary_images/cha.jpg', '2020-03-02 07:37:57', '2020-03-02 07:37:57'),
(6, 'grapes', 'Fruits', 'new year', 'gallary_images/grapes.jpg', '2020-03-02 07:38:19', '2020-03-02 07:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `home_adds`
--

CREATE TABLE `home_adds` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_adds`
--

INSERT INTO `home_adds` (`id`, `product_name`, `crop_type`, `product_quantity`, `product_price`, `product_description`, `long_description`, `product_image`, `created_at`, `updated_at`) VALUES
(1, 'Red Grapes', 'Fruits', '1 kg', '200', 'Good for health', '<p>product supply in india</p>', 'home_images/red-grapes-250-gm.jpg', '2020-03-02 06:44:33', '2020-03-02 06:44:33'),
(2, 'papayaa', 'Fruits', '1 pis', '70', 'Good for health', '<p>product supply in sylhet,bangladesh</p>', 'home_images/papayaaaa.jpg', '2020-03-02 06:47:14', '2020-03-02 06:47:14'),
(3, 'banana', 'Fruits', '12 pis', '110', 'Good for health', '<p>Made by bangladesh</p>', 'home_images/banana-sagor-kola-12-pcs.jpg', '2020-03-02 06:49:14', '2020-03-02 06:49:14'),
(4, 'lichu', 'Fruits', '1kg', '70', 'Good for health', '<p>Made by bangladesh.</p>', 'home_images/images (21).jpg', '2020-03-06 00:18:32', '2020-03-06 00:18:32'),
(5, 'apple', 'Fruits', '1 kg', '150', 'Good for health', '<p>Made by bangladesh.</p>', 'home_images/images (34).jpg', '2020-03-06 00:19:39', '2020-03-06 00:19:39'),
(6, 'Lemon', 'Fruits', '12 pics', '70', 'new year', '<p>Made by bangladesh.</p>', 'home_images/images (15).jpg', '2020-03-06 00:21:18', '2020-03-06 00:21:18'),
(7, 'kamranga', 'Fruits', '1kg', '60', 'new year', '<p>Made by bangladesh.</p>', 'home_images/images (14).jpg', '2020-03-06 00:23:23', '2020-03-06 00:23:23'),
(8, 'payera', 'Fruits', 'per kg', '50', 'new year', '<p>Made by bangladesh.</p>', 'home_images/download (2).jpg', '2020-03-06 00:26:54', '2020-03-06 00:26:54'),
(9, 'ataphol', 'Fruits', 'per pis', '20', 'new year', '<p>Made by bangladesh.</p>', 'home_images/images (35).jpg', '2020-03-06 00:29:48', '2020-03-06 00:29:48'),
(10, 'Tormuj', 'Fruits', 'per pisc', '100', 'new year', '<p>Made by bangladesh.</p>', 'home_images/images (13).jpg', '2020-03-06 00:32:36', '2020-03-06 00:32:36'),
(11, 'kathal', 'Fruits', 'per pis', '120', 'new year', '<p>Made by bangladesh.</p>', 'home_images/dhaka-bangladesh-may-11-2019-260nw-1396561886.webp', '2020-03-06 00:33:20', '2020-03-06 00:33:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_10_21_160639_create_farmer_registrations_table', 1),
(4, '2019_10_21_175939_create_customer_registrations_table', 1),
(5, '2019_10_22_075040_create_add_crops_table', 1),
(6, '2019_10_22_151833_create_crop_messages_table', 1),
(7, '2019_10_23_064334_create_home_adds_table', 1),
(8, '2019_10_23_080618_create_gallary_adds_table', 1),
(9, '2019_11_06_175041_create_shipping_forms_table', 1),
(10, '2019_11_09_065815_create_cust_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_forms`
--

CREATE TABLE `shipping_forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_forms`
--

INSERT INTO `shipping_forms` (`id`, `fullname`, `email`, `phone_number`, `address`, `payment_type`, `product_name`, `product_price`, `product_quantity`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 'apurba', 'apurba@gmail.com', '8801869084620', 'kolabagan,Dhaka', 'Khulna', 'papayaa', '70', '2', '140', '2020-03-02 07:48:42', '2020-03-02 07:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Zulkar Nine', 'zulkarnine43@gmail.com', '2020-03-01 14:06:33', '$2y$10$CDg5pq9QLA.mAb6hJX77HeszBdgS.iAmCazrH.x4wfy6fSplK1I1S', 'N0AzVrgRRwRYWFtB2JWDxXJ4gw49I3HNtFj25ifcGeUVyhp1NO4pJ4TJPh2E', '2020-03-01 14:05:26', '2020-03-01 14:06:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_crops`
--
ALTER TABLE `add_crops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crop_messages`
--
ALTER TABLE `crop_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_registrations`
--
ALTER TABLE `customer_registrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_registrations_email_unique` (`email`);

--
-- Indexes for table `cust_messages`
--
ALTER TABLE `cust_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmer_registrations`
--
ALTER TABLE `farmer_registrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `farmer_registrations_email_unique` (`email`);

--
-- Indexes for table `gallary_adds`
--
ALTER TABLE `gallary_adds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_adds`
--
ALTER TABLE `home_adds`
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
-- Indexes for table `shipping_forms`
--
ALTER TABLE `shipping_forms`
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
-- AUTO_INCREMENT for table `add_crops`
--
ALTER TABLE `add_crops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `crop_messages`
--
ALTER TABLE `crop_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_registrations`
--
ALTER TABLE `customer_registrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cust_messages`
--
ALTER TABLE `cust_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `farmer_registrations`
--
ALTER TABLE `farmer_registrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gallary_adds`
--
ALTER TABLE `gallary_adds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_adds`
--
ALTER TABLE `home_adds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shipping_forms`
--
ALTER TABLE `shipping_forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

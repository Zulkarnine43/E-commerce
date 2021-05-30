-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2020 at 06:18 AM
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
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_crops`
--

CREATE TABLE `add_crops` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_date_bidding` date NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_crops`
--

INSERT INTO `add_crops` (`id`, `email`, `product_name`, `crop_type`, `product_quantity`, `product_price`, `product_description`, `long_description`, `last_date_bidding`, `product_image`, `created_at`, `updated_at`) VALUES
(1, 'zulkarnine43@gmail.com', 'grapes', 'fruits', '20 trees', '5000', 'new year', 'for consumers', '2020-01-10', 'product_images/grapes.jpg', '2020-01-02 12:27:58', '2020-01-02 12:36:49'),
(2, 'sajid@gmail.com', 'Malta', 'Fruits', '10 tree', '40000', 'new year', '<p>for bangladesh</p>', '2020-01-17', 'product_images/malta.jpg', '2020-01-07 10:50:54', '2020-01-07 10:50:54'),
(3, 'zulkarnine43@gmail.com', 'mango', 'Fruits', '10 trees', '15000', 'new brands', '<p>new years...........</p>', '2020-01-28', 'product_images/mango.jpg', '2020-01-24 08:27:55', '2020-01-24 08:27:55'),
(4, 'zulkarnine43@gmail.com', 'Jute', 'vegetables', '100 bighas', '5000', 'new year', '<p>good for health</p>', '2020-01-31', 'product_images/jute.jpg', '2020-01-24 08:29:27', '2020-01-24 08:29:27'),
(5, 'zulkarnine43@gmail.com', 'malta', 'Fruits', '20 trees', '20000', 'new brands', '<p>good for health</p>', '2020-01-30', 'product_images/malta.jpg', '2020-01-24 08:30:53', '2020-01-24 08:30:53'),
(6, 'zulkarnine43@gmail.com', 'grapes', 'Fruits', '10 trees', '5000', 'Good for health', '<p>new years</p>', '2020-01-29', 'product_images/grapes.jpg', '2020-01-25 04:09:01', '2020-01-25 04:09:01'),
(8, 'zulkarnine43@gmail.com', 'cha', 'Others', '10 bighas', '20000', 'Good for health', '<p>For Consumers........</p>', '2020-02-10', 'product_images/cha.jpg', '2020-01-29 04:03:53', '2020-01-29 04:03:53'),
(9, 'zulkarnine43@gmail.com', 'banana', 'Fruits', '20 trees', '7000', 'Good for health', '<p>New Year</p>', '2020-02-22', 'product_images/banana.jpg', '2020-02-01 09:17:40', '2020-02-01 09:17:40');

-- --------------------------------------------------------

--
-- Table structure for table `crop_messages`
--

CREATE TABLE `crop_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `crop_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `farmer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crop_messages`
--

INSERT INTO `crop_messages` (`id`, `crop_id`, `product_name`, `farmer_email`, `cust_id`, `name`, `email`, `mobile`, `message`, `created_at`, `updated_at`) VALUES
(1, '1', 'grapes', 'zulkarnine43@gmail.com', '4', 'Faruqe', 'faruqe@gmail.com', '01876784567', 'i will buy within 5000 tk', '2020-01-05 09:57:39', '2020-01-05 09:57:39'),
(3, '1', 'grapes', 'zulkarnine43@gmail.com', '5', 'sajid', 'sajid@gmail.com', '01876784567', 'i will buy 6000 Tk', '2020-01-20 07:38:46', '2020-01-20 07:38:46'),
(4, '2', 'Malta', 'sajid@gmail.com', '2', 'Faruqe', 'faruqe@gmail.com', '01976348745', 'i  will buy 40000 tk', '2020-01-24 08:35:25', '2020-01-24 08:35:25'),
(5, '2', 'Malta', 'sajid@gmail.com', '2', 'Faruqe', 'faruqe@gmail.com', '01976348745', 'i  will buy 40000 tk', '2020-01-24 08:35:41', '2020-01-24 08:35:41'),
(6, '2', 'Malta', 'sajid@gmail.com', '2', 'Faruqe', 'faruqe@gmail.com', '01976348745', 'i  will buy 40000 tk', '2020-01-24 08:36:17', '2020-01-24 08:36:17'),
(7, '1', 'grapes', 'zulkarnine43@gmail.com', '2', 'Faruqe', 'faruqe@gmail.com', '01989419776', 'I WILL BUY this  crop 6500 TK.', '2020-02-05 22:26:48', '2020-02-05 22:26:48'),
(8, '4', 'Jute', 'zulkarnine43@gmail.com', '5', 'sajid', 'sajid@gmail.com', '01989419776', 'this is a check..', '2020-02-08 02:43:40', '2020-02-08 02:43:40'),
(9, '4', 'Jute', 'zulkarnine43@gmail.com', '5', 'sajid', 'sajid@gmail.com', '01989419776', 'this is a check..', '2020-02-08 02:43:47', '2020-02-08 02:43:47'),
(10, '2', 'Malta', 'sajid@gmail.com', '5', 'sajid', 'sajid@gmail.com', '019827438945', 'I will buy This crop 40500 Tk..', '2020-02-09 00:30:27', '2020-02-09 00:30:27'),
(11, '4', 'Jute', 'zulkarnine43@gmail.com', '1', 'sajid', 'sajid@gmail.com', '01876784567', 'Hlw Biddings..', '2020-02-09 00:48:52', '2020-02-09 00:48:52'),
(12, '5', 'malta', 'zulkarnine43@gmail.com', '5', 'sajid', 'sajid@gmail.com', '019827438945', 'I will buy this crop 20000Tk.', '2020-02-09 00:55:59', '2020-02-09 00:55:59'),
(13, '6', 'grapes', 'zulkarnine43@gmail.com', '2', 'Faruqe', 'faruqe@gmail.com', '01976348745', 'I will Buy This Your giving price..', '2020-02-09 04:31:16', '2020-02-09 04:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `customer_registrations`
--

CREATE TABLE `customer_registrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_registrations`
--

INSERT INTO `customer_registrations` (`id`, `fullname`, `username`, `email`, `mobile`, `district`, `postal_code`, `password`, `confirm_password`, `created_at`, `updated_at`) VALUES
(1, 'zulkarnine', 'zulkarnine43@gmail.com', 'zulkarnine43@gmail.com', '01989419776', 'Dhaka', '1260', '12345678', '12345678', '2019-12-19 07:12:32', '2019-12-19 07:12:32'),
(2, 'Faruqe', 'faruqe1', 'faruqe@gmail.com', '019827438945', 'Khulna', '1000', 'eyJpdiI6IlBSRWt4SFdNcjFUeUN0cU0yaWhjZHc9PSIsInZhbHVlIjoiNkdwUnFzam5XbkZHeWZZU0FZUVcxZz09IiwibWFjIjoiNzFiYjJhMjFmM2Y0ODA0M2ZjOTdkMTk5ZTEzNWI3YjYwMDNkZjRiYmUwNGVmZTNlYWMxM2NhNmMzOTI4NDJmYSJ9', 'eyJpdiI6IjdhSUIwWXJXK2E0Y3J6UXNOS3UyaFE9PSIsInZhbHVlIjoicnhYT01DOGo4ZDh0QXU2bEdyQ051QT09IiwibWFjIjoiMTYyZmMxZjA4NDU1NGIxMTg2NTYzNzljN2RlZjRlYjMzNWZiM2NjOGFkMDcyNWFkNDE2MzA1NzNhNzFmM2ExNiJ9', '2020-01-04 10:50:06', '2020-01-04 10:50:06'),
(3, 'Faruqe', 'faruqe1', 'faruqe@gmail.com', '019827438945', 'Khulna', '1000', 'eyJpdiI6IkJibVJUV2NQaU1Oa1VYbFEyN3ZHXC9nPT0iLCJ2YWx1ZSI6ImRPRWRjSEZ4R1g4WituNlhKd1R5ZFE9PSIsIm1hYyI6ImVmYjYyN2U1YzZjOWNjMTA2ZWJiNDA5YWM4MDQ3MGNiMmNjZWQ4NjMwZTI0ZGVmYjYwYjUwODI0MzZjZDViNDYifQ==', 'eyJpdiI6ImN4NzlnN0pqd1NUa29HRjNReTN6NXc9PSIsInZhbHVlIjoiWDRQZkdkMXRrUlpGN0doUUdudjhcL3c9PSIsIm1hYyI6ImRjYzQ1YTZkZWEyNzZmOWFmNWU3MDA2MDYwNmNiNWI0YTQ2NjQ2YjcwNTg2ZDJmZTNjZjU4ZTljYzAzY2JhMjgifQ==', '2020-01-04 10:50:22', '2020-01-04 10:50:22'),
(4, 'Sajedul', 'sajid1', 'sadsg@gmail.com', '01976348745', 'Rajshahi', '1000', 'eyJpdiI6IkFNaUF5WFpGQU9RWkxzSUFYS2RWOHc9PSIsInZhbHVlIjoiQU9GcVkwbWsxcnI5MWRpTStnMTJFQT09IiwibWFjIjoiODhhYjM3OGUwYzIwNjExY2I0NWZiZTRmZjkxZGIzZTQ3MDMzNGJjNmYwMjZjYzg4ZGI0YmJmMmE2ODNjZjY2MCJ9', 'eyJpdiI6Inl4ekRGQndIQ0piMGR6ZktabFMwNmc9PSIsInZhbHVlIjoiU3Q5WEsybkR2K1ZCam9RYmx3alY3dz09IiwibWFjIjoiNTk3OTliMzIzOGExNTM0M2ZiNjZkNTQ0Yzc2MWZkYzk5NGRlNjQ0ODQ4ZDM5ZTMwYmRlMWI5NGE1OTY5Mzc3NiJ9', '2020-01-05 08:34:28', '2020-01-05 08:34:28'),
(5, 'sajid', 'sajid1', 'sajid@gmail.com', '01989419776', 'Khulna', '1200', 'eyJpdiI6ImZEUEdoalpOUXlQT2gyU0JXeE1oYnc9PSIsInZhbHVlIjoiU2NzWVJxQUhuKzFudmZ4MUNKYUFmUT09IiwibWFjIjoiNjIxNmViZmU0MmEwMjMwZjQ2YzBlNzI1MWEwOTU2OTkwMjhkNjY2ODI0NjJlMzhmMWUyMzhlMTJhMWVhNjU0NyJ9', 'eyJpdiI6IjNkdFpsVHU5djBsZzZjSG5PRkVic3c9PSIsInZhbHVlIjoiU290TWdPMEtrNm1MTE5GOTVTNnViZz09IiwibWFjIjoiNjMxNTIxNDRmODc0MjVmODYwOGExNmYwMWJhNWE1OTNmM2EwYmE1YTQ2NmFiNmViNzgyN2VjMjU0YjUzZTcyYiJ9', '2020-01-06 11:12:33', '2020-01-06 11:12:33'),
(6, 'Faruqe', 'faruqe1', 'faruqe@gmail.com', '01876784567', 'Chittagong', '1500', 'eyJpdiI6IkpPRnY0RVlLUmRUNndqY0Z0cnk1Umc9PSIsInZhbHVlIjoiYjZtVEhLK25rd1YxMjNnQUJMUWlhdz09IiwibWFjIjoiMzBkMTg5NWI0OWY1NzEzMzVhOWYwZWE0M2JmMTFhYTUxNjYwNmUwOGMwMGNlNjhkMTkyMzdjNzVlZGQ2NjlkZCJ9', 'eyJpdiI6Inhhb1Vhdmhqc0tpK2owbjJNczkwZ1E9PSIsInZhbHVlIjoiS21jQUNBeHByVndWNmVZcGdsTUJ0dz09IiwibWFjIjoiNDU5YTM1MjQwOTdmOGY1OGE1MDFjYTMwMGM4NmViMGI2YmE2NDUzMWE3NDhiNDVkYzJlOGI5YmQzNTA5OTYyMiJ9', '2020-01-08 11:47:47', '2020-01-08 11:47:47'),
(7, 'zulkarnine', 'nine1', 'zulkarnine43@gmail.com', '01976348745', 'Khulna', '1000', 'eyJpdiI6Ik5oWjQrTVl2UXpOXC9meE1kVXNKbDZnPT0iLCJ2YWx1ZSI6Ik11QU5GZHlmdmp5K1ZCbEJDTFVOaHc9PSIsIm1hYyI6IjU3MDMxOGFmNTVkNzA0MmRhMzE5MTYzMDNkNjEwZmVmMmZkODYzZTc3YzNhY2JhMzRiYjY5YzliOTQwNzk3ZDUifQ==', 'eyJpdiI6IkZnQ3huVzRZaUE4Tm9odzlheXdyUEE9PSIsInZhbHVlIjoibjVcL01HVkpMUDZQWGVrXC8wZjBlejZBPT0iLCJtYWMiOiJiYTdmYTI3ODg0NmUxZDNhMGM0ODU2MDA2MzFiZjdiNzM2YzI5NzVhZTI4MGFmZTIzYWI3ZTlhMjk3MzgzMzU2In0=', '2020-01-12 09:21:51', '2020-01-12 09:21:51'),
(8, 'zulkarnine', 'nine1', 'zulkarnine43@gmail.com', '01976348745', 'Khulna', '1000', 'eyJpdiI6Ikx1bHl6UGh6bkxDNkUrM2UrQmc2VGc9PSIsInZhbHVlIjoidGY2ZjArNkU1VEVXSnUrVEc2dmxcL2c9PSIsIm1hYyI6IjZiY2I2MmM1NDZiNGUzZDJlYmVlNDY0NDg5NmM4MjkyZjcxYjRjZWNhMDhmZDUzZmEyNDlkYmU0YzAzOGI0MGYifQ==', 'eyJpdiI6IjBHV1ZyZHFrbWhiTU53VG02Z0NsZ3c9PSIsInZhbHVlIjoiYXNEQTJZZ2FxekpoS1FNY2d1aUZ1QT09IiwibWFjIjoiMTZlNGViMTYyZTA1ODA2NjU5MTA4NDg5ZDBjNmI2MGI0NGIzMzkxOTFkYzY4ZGNmOTQ3MjExYWQzOGQxOTFjZCJ9', '2020-01-12 09:22:10', '2020-01-12 09:22:10'),
(9, 'Faruqe', 'faruqe1', 'admin@blogs.com', '01876784567', 'Chittagong', '1200', 'eyJpdiI6IjdISEU5dlNMTEdDcmVJclJvVXpVanc9PSIsInZhbHVlIjoia1FkMGZGUHY5bG9MaVwvUkJlMkVIVnc9PSIsIm1hYyI6IjM3MDgxODI3OGNjYjI2MzY2Nzk1MGQ3N2NjNjkyZmFmOTc0YzI0ZDg1NjMwOTA0YzQ5ZDJhY2ExOWQ3YjZhNzIifQ==', 'eyJpdiI6IjQ0WmpGdDY4dHM1aTRFOVMxN05pZVE9PSIsInZhbHVlIjoiSW9UZkJWSUl5bEFPWmxjcjRYc1lTUT09IiwibWFjIjoiZDA1OGUzNzRhYWFmNzlhNmVjOTY2YjA3OTRmMjdhZGEyMmZiNjI0NzdjZDZlYzIzNTUwMTRhNjIyODdlY2JlNyJ9', '2020-01-15 10:44:15', '2020-01-15 10:44:15'),
(10, 'Faruqe', 'faruqe1', 'faruqe@gmail.com', '01876784567', 'Barishal', '1000', 'eyJpdiI6IlwvMmtPQ0FGQlRNRU11SlZaY1FmNnZRPT0iLCJ2YWx1ZSI6IkdqTVBYNTJkT3J3cTM4bEo4Q1IrQlE9PSIsIm1hYyI6IjdjMTMxZDQ1NTUxYjQ5NGJmNGFlNzY3OTc5ZDhiMWUyNDk3OWYyMjIzZTI1ZjlhNmRiOWYyZjg1NDFjNzUzZjkifQ==', 'eyJpdiI6IkpQQ1VIUENXS2pycXJ2QXJkZ0xWWEE9PSIsInZhbHVlIjoiVFpGbVpLdE9RWENHTXN2RXFXRVBVUT09IiwibWFjIjoiNzk5ZGM1MTJhMTUyMjk4ZGFjMzhjODhmZTQ2MTc0ODMxYjdkZDQ4NWM3MGZkOWYwYzRkZWMwZDFmMzg3ODVmMCJ9', '2020-01-24 08:24:38', '2020-01-24 08:24:38'),
(11, 'zulkarnine', 'nine1', 'admin@blogs.com', '01989419776', 'Dhaka', '1000', 'eyJpdiI6Ik5tK0FQQmxVd1wvd1RBWk9VVUtGdHJRPT0iLCJ2YWx1ZSI6InBDUzA3K1g4Vmo1dEFBb1VrZ0xIOHc9PSIsIm1hYyI6IjY2MTM5YjZmZjgyNGVhODY4ZmFhZTMxYzNjMmRiZmFkNDdmNmZhY2VlOTg0ODIyZDhhOGEwMzY4OTFjMTM0ZGUifQ==', 'eyJpdiI6InVpK2s1d2tEV2pNcHZaWWgrM1wvaEJ3PT0iLCJ2YWx1ZSI6IlRXcFZNYkFIQURZRkN2SlB2ZEw0dmc9PSIsIm1hYyI6ImZkNjZmNmNlMGYxOTI2NjEzNjBjMDljYzMwZGRjYTI1NjA4NzlkZWVmMGNmYjYwYjI3YWZiNjgwMThmNDAwYjAifQ==', '2020-02-01 09:15:12', '2020-02-01 09:15:12'),
(12, 'zulkarnine', 'nine1', 'zulkarnine43@gmail.com', '01876784567', 'Rajshahi', '1200', 'eyJpdiI6ImdZb3BlR2dtMTdxMlBRSUlmTEErQ0E9PSIsInZhbHVlIjoiNGViOWRUSHkxQ2hWWmp0SUlWQmxcL2c9PSIsIm1hYyI6Ijc5YWI1Nzc1MzQzNmRjODNkM2U2OWY4YjQ5NTBlZWIwZTE2NjE4Y2Y3MTkxZjk5MzBiODhlNTkwOTdmMGE3NWEifQ==', 'eyJpdiI6IldZdHArdHJiU1FsYmQrMmJuSGFcL01BPT0iLCJ2YWx1ZSI6IlhcL1k3eEtEMlFVd0JLbnArSGRRMVF3PT0iLCJtYWMiOiJiMTFhZDY0ZmNiYTU1MmFkNTQ1ZDgyOTQ4MDZhYzRlZjU4YTM5NDMyMTYzNjU4YTA0NDkyNjNmOTJjN2Q4ZDkzIn0=', '2020-02-05 12:55:29', '2020-02-05 12:55:29'),
(13, 'zulkarnine', 'nine1', 'admin@blogs.com', '01976348745', 'Rajshahi', '1270', 'eyJpdiI6Ik1Yalh1UUo4VHU2dXZwNk9hYjNCa1E9PSIsInZhbHVlIjoiMFp3UXpuTDFqRm9JWklwdjc2ZGN3UT09IiwibWFjIjoiMzY2NzgwYjE3ZGY3NjVhNTYxYmM4YjdhMDg0YWEzY2E2MzYwNDA2NGUwNmViZWY1MDRkYTBjYmI0Zjg0YTJkMCJ9', 'eyJpdiI6ImZ5aUM1b01TdFk2TTJEZ0ZMTE1Db2c9PSIsInZhbHVlIjoiNUxCSEhDRm1nQjBJZkVjTEk3RHlYQT09IiwibWFjIjoiMDgxOTQ5NzU0NTVlOGYxMDQ1NzVmNmNiNzQ3MDk5YzUyMmZlYzE1MjA1MDg2YTFjMDNlZmE4M2NiMzBiMjdiNSJ9', '2020-02-07 03:29:07', '2020-02-07 03:29:07'),
(14, 'apurba', 'apurba1', 'apurba@gmail.com', '01976348745', 'Dhaka', '1200', 'eyJpdiI6IldCVG41MlhvRUM2U1VxdXFkeUJ0Y1E9PSIsInZhbHVlIjoia0YzSUZUXC9Bd3NOYmFcL0dXdU1WdENnPT0iLCJtYWMiOiIyYWNjOGE3YzlhNzllNThjYjc0ZTJiMzNjMjYyNWQwNTcyN2EyMjViNWQ3ZDg5MGJmMGVlMTQxNGE3MzM1NDg4In0=', 'eyJpdiI6IkFcL3BLbDVxRGNJZ3MzSGdVbllsZ3Z3PT0iLCJ2YWx1ZSI6ImhvQVBEZDZBY3dnenNBckNuY2lkWVE9PSIsIm1hYyI6IjQ3ZDNhZTA5MDQ4MDE1NzRjNzE3YWYzNzY1OTFmMzQ4MGI1NWJhMWYxZDMzNzBjZTg3NDA5ZmJjNTRiOWMzOTYifQ==', '2020-02-08 07:49:54', '2020-02-08 07:49:54'),
(15, 'zulkarnine', 'nine1', 'zulkarnine4444@gmail.com', '01989419776', 'Dhaka', '1200', 'eyJpdiI6IkpQeElkYTFmclNYNnFLUFE5cmJWcUE9PSIsInZhbHVlIjoiUWRBd0l3YjBPclwvR0JkcElDdWVkXC9nPT0iLCJtYWMiOiI3ZjA2ZGY0YWM4ZGNkZmYyZTY3YmMwMjcyYjdmZWY1OTk1NDkxNzVhNWFlZGI3MDgxZTRkNTFkNWY5ZGU4MDc1In0=', 'eyJpdiI6IkVTdGZibTBrcDZHTjRHYnU2alRCR1E9PSIsInZhbHVlIjoiVEVcL2krN25hc3dKbTkxcVlYUHVQTVE9PSIsIm1hYyI6Ijc2ODc3NDZlNjFkM2ViMzZjZjMyYmUzNDU0OTA3OGZhM2M5NjBmYmNlMmYxMzU1ZjY3NDkxYzM3NzRhOWM5ZDQifQ==', '2020-02-19 11:27:47', '2020-02-19 11:27:47');

-- --------------------------------------------------------

--
-- Table structure for table `cust_messages`
--

CREATE TABLE `cust_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `crop_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `farmer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `farmer_registrations`
--

CREATE TABLE `farmer_registrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farmer_registrations`
--

INSERT INTO `farmer_registrations` (`id`, `fullname`, `username`, `email`, `mobile`, `district`, `postal_code`, `password`, `confirm_password`, `created_at`, `updated_at`) VALUES
(1, 'zulkarnine', 'nine1', 'zulkarnine43@gmail.com', '01989419776', 'Dhaka', '1260', '12345678', '12345678', '2019-12-19 06:55:01', '2019-12-19 06:55:01'),
(2, 'Sabbir Saleh', 'Sabbir', 'asljdmklas12', '000000000', 'Rajshahi', '7888787', '123456', '123456', '2020-01-02 02:53:33', '2020-01-02 02:53:33'),
(3, 'zulkarnine', 'nine1', 'zulkarnine43@gmail.com', '01876784567', 'Rajshahi', '1200', '12345678', '12345678', '2020-01-02 09:40:25', '2020-01-02 09:40:25'),
(4, 'shaon', 'nine1', 'zulkarnine43@gmail.com', '01876784567', 'Chittagong', '1200', 'eyJpdiI6IkJId1B5U1VUV2tUZ2Y3MTR4UXpLVVE9PSIsInZhbHVlIjoiZmlkUGM2MDU5QWtIVWtcLzNPMVNYK3c9PSIsIm1hYyI6IjhkZTU0NmEwN2ExYjEyYzA1MjdjYWRmZjMxY2NhMTk1ZDAxMzYyOTgwOWViYmNmYzM4ZjUyODQwNjIxZmM2M2IifQ==', 'eyJpdiI6ImlGdk00TWFuXC9vWGROS3B4dlZwN1BnPT0iLCJ2YWx1ZSI6InRZTUo0R2EzNm12SzRSdUVvUEU3TkE9PSIsIm1hYyI6ImQwNjZmYThlYzhiZWQ2MzI1ZjlhMzFhMWE1ZGQ0NTRhNmVlNTFkMGU0MTk3NWJmYmQ4MDU1Y2E5OTBhNzk3YmIifQ==', '2020-01-02 10:47:37', '2020-01-02 10:47:37'),
(5, 'zulkarnine', 'nine1', 'zulkarnine43@gmail.com', '01989419776', 'Khulna', '1000', 'eyJpdiI6Ik9JV3ZxMzF4SHVONUFNVHVwT3ZnRFE9PSIsInZhbHVlIjoidTVOTElXTTJOWFoxelk4RzluNmVIUT09IiwibWFjIjoiMThiMTBhMDdmMWI0YzljMzFhNDJhZWUyODNiZGZhMTJiYjJiZjkyYTAwOTA4YzMyMzUyNjI4MmYyY2RkY2NlNiJ9', 'eyJpdiI6IlNOVkl4RysyS0RNZWJTc1JGRUZWcGc9PSIsInZhbHVlIjoiN1hTZ21TMlE5dXg3N2wzQUozNmxMUT09IiwibWFjIjoiMjA1MzAyOTk1MWE5ZjJiYzBkZmZlMTIxOGZjZDJhN2ZjNDI4YWZkMDViOWQyYTM4YzEzOTRlOWJhNzlmZjdjZCJ9', '2020-01-02 11:05:43', '2020-01-02 11:05:43'),
(6, 'zulkarnine', 'nine1', 'zulkarnine43@gmail.com', '01876784567', 'Khulna', '1000', 'eyJpdiI6ImpkVzhMV3FmZTA1WEJUSEtYZTRhTkE9PSIsInZhbHVlIjoiSFVkYkRtcEhIR1Q2RlFDSTlEejVQdz09IiwibWFjIjoiZTMzOWFjZjEyN2VkZjJjNzZkODE5M2E0Zjk1MzVkYjg0ODk4NTMzYmI4ZjY3MDUzOWRhMDFkMDU3MTNmYTRjMyJ9', 'eyJpdiI6IkVQaHJERlNjVVdBWU13THplVHQydEE9PSIsInZhbHVlIjoiamRFSEorMGN1S2FLckR5amdQTVh6Zz09IiwibWFjIjoiMzM5Yjg4MDgyNjc1ZGEyMGZjZDE2OGQ1ZTllMDBiZWQ5MDdiNDkxODUwNWM1ZWVkMjdmMzg2YzdlNzkzYmYyNyJ9', '2020-01-02 11:56:19', '2020-01-02 11:56:19'),
(7, 'zulkarnine', 'nine1', 'zulkarnine43@gmail.com', '01876784567', 'Khulna', '1000', 'eyJpdiI6IjBzV0JxRTRobXhjTE4zRXlYVXpEN1E9PSIsInZhbHVlIjoiZjVmYkFRYzZQd1lDQzBEWHpWalFydz09IiwibWFjIjoiN2YwMGY4ZTdlNTE2MzhlMDk1ZDBiYTk0OTEyNDRhYzBiNTg5OGM2MjdmZTU4MmNlYmIyNTg0ZDcxYjI1ZGRiOSJ9', 'eyJpdiI6IjR6QlI4Vk5za21sdGNEN0xhSlFLQXc9PSIsInZhbHVlIjoiOTNZRzZYVHJUOWNlU2JkYk4zdEdzZz09IiwibWFjIjoiMTI2OTM4YzVhMTdhYjZkMzJmYTIyZjJiOGM4MWQ2ZWM1OTUyZjFhNjFlN2VmZTAzYmRlZTU3YWRhMGJhNDMzNyJ9', '2020-01-02 12:00:02', '2020-01-02 12:00:02'),
(8, 'zulkarnine', 'nine1', 'zulkarnine43@gmail.com', '01876784567', 'Khulna', '1000', 'eyJpdiI6Im5qSVBDdUE2bjYzVjVKWDQ0MGxNTkE9PSIsInZhbHVlIjoiK3Y4VFA1OXVLdXJxMUN1TldsSHNhQT09IiwibWFjIjoiMjVkZDU1NTI3MTliYzU2YWM4OGY5ODk4NTQ3OGYyMmY3Nzc1ODA3Y2UzOTg3N2M3ZWJhNzc4Mzk4ODI4ZTFlMiJ9', 'eyJpdiI6ImhkXC9EcElOMjlvb3AySVkwb3F1SStnPT0iLCJ2YWx1ZSI6IitlQ21lbVwvUjBDUUxOOWgrUzhqdFwvUT09IiwibWFjIjoiMmE5NjM3ODVhZjQzYTI4ODAxNGJhODk2YmY3MmU1NTJkYjhjOTM5NjNhMGYzMzgwYWYzN2RhMjI2MGQ0NGMzYSJ9', '2020-01-02 12:02:29', '2020-01-02 12:02:29'),
(9, 'abul', 'abul1', 'abul@gmail.com', '01976348745', 'Rajshahi', '1260', 'eyJpdiI6ImowWUE1SmNOY2FSUld0dmJ5OHJmdmc9PSIsInZhbHVlIjoiUWpPbkhxVFwveHJXbFVHK2d6bCtsZlE9PSIsIm1hYyI6IjM5YmY0ZTMyZmYxYTZkZTNkY2YwMjQ5ZWQ5ZmY0YjY2OGY3ZGI2ZmY5Y2Y1NTk3MmUzZDBiY2MyYzE0NGU2OTYifQ==', 'eyJpdiI6ImFUNDRUcWlzd1NaSWx4aEljWWMzckE9PSIsInZhbHVlIjoiYnp1VjlTYUpDUlE0TmJQRmRHMldJQT09IiwibWFjIjoiMzM4YjFjMWVjMGY1NmNjN2Y2ZWIxNzVhNTNjYWFiOTIxOWU0ZWY5N2ExZTU1YjhlMmJlMjYyZGYwNWIwZjNiMyJ9', '2020-01-05 08:31:21', '2020-01-05 08:31:21'),
(10, 'Sajedul', 'sajid1', 'sajid@gmail.com', '019827438945', 'Chittagong', '1000', 'eyJpdiI6IkxcL0toZmRHQkQwWEtHaUxFbklzbXV3PT0iLCJ2YWx1ZSI6Imh4dVVHUHFzMUl3d2Z4aTVoTHpremc9PSIsIm1hYyI6ImE3ZTlhZDRkNjc4ODA5OWU0MTkzZTU1NmZhODFlYzZiNTkxNWJjMjAzNTk0ZjI0NzhjNzVlZTA3YzYwYzk3MzEifQ==', 'eyJpdiI6InpqcndINWlcL1V0WlUweEdybzBSSVB3PT0iLCJ2YWx1ZSI6InNYVHFyb29EMURzTDJxQ1JCSlVER1E9PSIsIm1hYyI6ImYzNjlhMzdlZGQxMTVhYmJhODA0MTVhZTZkMGRlODEwMjRlOGJmN2E5MTc0OTYyMmRiZjg5MWNhMDNmMTU0ZDEifQ==', '2020-01-07 10:46:04', '2020-01-07 10:46:04'),
(11, 'zulkarnine', 'nine1', 'zulkarnine43@gmail.com', '01976348745', 'Dhaka', '1260', 'eyJpdiI6ImZpMUNRYnlyU0l4cmdlSm9mV0ZHbWc9PSIsInZhbHVlIjoiYmdRWVRrZ0Jua2dVQzBYTVU3TXluUT09IiwibWFjIjoiNzg2ZDZlMzVmMzA2MzQ3ODAyNDg2OTZkYmNjNGM2NDRjMzNmMmFmOGExZWFiZDNlZDZhOGZlYTY0OTdiODg1MSJ9', 'eyJpdiI6IjRKZVpMT2xZdXJLZXdYTnlQXC9pQXZ3PT0iLCJ2YWx1ZSI6IjdjSkN4U1wvdmM0bXM2N3JGa016NDNnPT0iLCJtYWMiOiI1YmRiZjM5YTgyMGE5NzQ0OTQ1ZDQ5YzljY2ZlOWMwMWFhYzM5MGEyYjdlNmMxOWI4OGQ0YjlkOGFlYjRhY2QyIn0=', '2020-01-10 02:38:43', '2020-01-10 02:38:43'),
(12, 'Faruqe', 'faruqe1', 'faruqe@gmail.com', '01976348745', 'Rajshahi', '1200', 'eyJpdiI6IkZ5VDB6TSttRVNpMnR1K2lHNlhmaXc9PSIsInZhbHVlIjoiZ1NnN1FmXC9KSUpEMXVSQjFFcjJcL1B3PT0iLCJtYWMiOiI3ZTA0NjA3NDg1Y2MxNjcxNmY2OTgyNzNiOGE1MmRhNWM0Nzk2MzhkNjJkNjFhZmQ1NDY0NjJhYjk3NWI3YTMzIn0=', 'eyJpdiI6ImJoZ3B2SWZZU3M4K2FTam51aFhtZlE9PSIsInZhbHVlIjoiQ2FWK1ZcL2hJbHZrQkxDczIrdEdoN3c9PSIsIm1hYyI6IjI2NTc3YmMwMzQ4ZTVkMzEyNzNmNGE5YTAzYWIzNzcwYTcyY2NmOGE4ZGFlOGEwZWNlNDI3NWRiNjlhODhlODcifQ==', '2020-01-10 09:27:58', '2020-01-10 09:27:58'),
(13, 'raznjds', 'raznjdi', 'sadsg@gmail.com', '01976348745', 'Khulna', '1200', 'eyJpdiI6InNvc3RTYzA2K0VsNk54TEN2ZXdmVXc9PSIsInZhbHVlIjoiXC9uSWdVMnU4SUVTc1dUakxTRXVONHc9PSIsIm1hYyI6IjllN2VmYTBiYmM3YTEwN2UwNGYwMTZhZWVhNjA4ODUwMmZmYTAyOTgxNDg5OTkxNTI1NGYxMjI0ZjBiNGViYTAifQ==', 'eyJpdiI6InJLN3hLMXFrRUh0TFRPdCtQMGFCZnc9PSIsInZhbHVlIjoiUmwrTENrN1pzK29MNElKR21HZFEyZz09IiwibWFjIjoiYjUxODg1MTg3OTkzZTgxNmNhY2Y2MjI4ZjYwNmVkZTlmN2I2OTE0NDI1OWFiZDJhZDQyMGI3Y2U2ZDVlZGI0MyJ9', '2020-01-17 12:14:04', '2020-01-17 12:14:04'),
(14, 'zulkarnine', 'nine1', 'zns601@gmail.com', '01876784567', 'Barishal', '1250', 'eyJpdiI6IlRKV1J5d0ZpOG1zXC9oZ09OK3o5TnR3PT0iLCJ2YWx1ZSI6Img0QmRiS0FlSk1tYm9oVU83eitnUkE9PSIsIm1hYyI6ImE4OWQ0OWNmNWEwNzgzZmVjNWNkOTUwMTNiN2JkZGY2NjQzYmE5Y2Q1NzE0MzI4MGMzZmIwYzg1Njk2ZDkwZjgifQ==', 'eyJpdiI6Iml3WUdqU0cwaUo1NGJ3bmsyMFwvWjR3PT0iLCJ2YWx1ZSI6ImV4VGVXQjJITlJhOTFWdHRVMGdBQlE9PSIsIm1hYyI6ImRhOTFiZjc3Yzc4NWFiZjQwN2E4NWJlZDY0ZGZlNDU3NTZhZmQ0N2Q3ZWI4NmI2MDVjMjNiZWNhNDAzNzFlOWMifQ==', '2020-01-20 06:39:33', '2020-01-20 06:39:33'),
(15, 'shaon', 'shaon1', 'shaon@gmail.com', '01989419776', 'Barishal', '1000', 'eyJpdiI6Ildob1hVcDdjb3Z0NTF0MGZ4MU05NkE9PSIsInZhbHVlIjoiWVQ1VXltY2VNYzJaVWRPQnRjYWt2dz09IiwibWFjIjoiMDVhNDcyOTJmY2E2OTlhNjUwMTg4OGE0YWI4ZjAxMTY3NGE0YTFiYTljMzFhNTc2ZTMyNjEzMzQxOWFkMjVmOSJ9', 'eyJpdiI6Ing3bkRiWUlcL2Vadmg5Q1Z2eXdTM3J3PT0iLCJ2YWx1ZSI6ImthdjMwNmphNEloRFZJNVUrcVZiY0E9PSIsIm1hYyI6IjMyNTdjMzcwM2U0Yjk2ODFlMzQxMzI4MDFiYmZjODY0OTdkNmUzNjJkM2EzNjhmYzYzMTI5NjRmYWQ5YjBhNjIifQ==', '2020-01-24 08:14:54', '2020-01-24 08:14:54'),
(16, 'Faruqe', 'faruqe1', 'faruqe@gmail.com', '01989419776', 'Comilla', '1200', 'eyJpdiI6IjlSRlYxb1JlUzVHYlZVV2hzcXlIZ0E9PSIsInZhbHVlIjoibW1QRWZKSkNMOWdtc0grSlJxOVBDZz09IiwibWFjIjoiYzA3N2E2OTdmMGY2OTY4MDIxNjg2ZDkzODY0MGI4OGE0MjE2ZTBiYjVmYTQ4ZTNlMTdkNDQwN2RkOWJhMmNlNSJ9', 'eyJpdiI6IjlkZlF0b2NrZmM0NllUcTlZU3lXbGc9PSIsInZhbHVlIjoiSnlnNzk1eitpUFlBbW1pcTd3NlZ6UT09IiwibWFjIjoiMjYzYmU4Yjk4YWViMzFmYjc5MzBlNmMzZDYyZGIyZjFlNDQ1MmYxNDRmMmZmZWJhZWE5NDYxNDIwYjI1MjI3ZiJ9', '2020-01-25 04:04:45', '2020-01-25 04:04:45'),
(17, 'zulkarnine', 'zulkarnine1', 'zulkarnine43@gmail.com', '01989419776', 'Dhaka', '1240', 'eyJpdiI6IkczWmpiWGl6cmNwc21iTmxXanZcL0lRPT0iLCJ2YWx1ZSI6IlZicjlCWmcrcVZiN1ZHeFlPTUtDVmc9PSIsIm1hYyI6IjJlNTgwZjk5MTJhOGI1MzFiOTI4ZjM5NTQ0NDBhYWY4Mjg5ZGYxMjZmY2E2OTAyYjJkYTRjMmZlZDdjYTM4NDgifQ==', 'eyJpdiI6ImNncGx5TlhaRndwaG1xXC9yYkVnYkRnPT0iLCJ2YWx1ZSI6IjZpbGVyZ1dVVWsxeUQ4alRwbGV6SGc9PSIsIm1hYyI6ImIxOWJiMzQ1NjlmYTYxMDFjMjExYjJmYmE4ZmEwMDUyZWIxOWVhOGEzMjMwYjQ1NDkzN2Q1N2YyMmI3M2MwMWIifQ==', '2020-01-26 02:18:51', '2020-01-26 02:18:51'),
(18, 'zulkarnine', 'zulkarnine1', 'admin@blogs.com', '01876784567', 'Dhaka', '1200', 'eyJpdiI6IlQ4MWpndVgzM2xcL2w5TVFxT0szRXB3PT0iLCJ2YWx1ZSI6ImIxZlZSdGVVaDE2Z2dZNEkzaEVlNFE9PSIsIm1hYyI6IjU3YWY2M2RlZGQxYTI0NmU4NzIyMWMzZmM2OTAzN2I0YzY1MzAyM2FhYzAxMzYxMTkxNTVhMDMwNWZjZDBkNTYifQ==', 'eyJpdiI6ImJWUk1BMHV1eXRKbzd6dGttWVowTHc9PSIsInZhbHVlIjoiNjdkRHQxRlFMaFEzSHk4VlZKUnRLUT09IiwibWFjIjoiODE1NDY3ZTE3OGYzMGU4NTY5Y2I3ZjgzOWJkODVkNTZjZDIwM2Y0MDgzYzI3MjY3M2U2NGUyZWU4Mjg2ZjBhYSJ9', '2020-01-28 03:57:40', '2020-01-28 03:57:40'),
(19, 'zulkarnine', 'zulkarnine1', 'zulkarnine43@gmail.com', '01989419776', 'Dhaka', '1000', 'eyJpdiI6ImdQSVFkUVpMS3lyd3FWNUR2Z1FrZWc9PSIsInZhbHVlIjoiOXJrQlZWbUp1UWxnVjg5OXdibXZyUT09IiwibWFjIjoiNTBmZmYxODQ0ODU5OTg1NTM1OTAzNzllYWI2NTcxM2NhZDUzMmIwY2I3Yzk3Y2VhYzY2M2E1M2I1NTFkN2I2MSJ9', 'eyJpdiI6ImNBeGgzY0MreE04ZW9lR2FXdFhyWGc9PSIsInZhbHVlIjoiUFwvYTlROTQzOUxpU2FWZk95OFFuZ0E9PSIsIm1hYyI6IjBkNjIxYjEwYWFmN2VmMjVhMTI1MWVjYThiNjI0NjUwNjZlNWI3ZDM0M2U3MzBlNjllN2Q5YjEwMzdjMzEyOGEifQ==', '2020-01-29 03:46:22', '2020-01-29 03:46:22'),
(20, 'sajid', 'sajid1', 'sajid@gmail.com', '01989419776', 'Dhaka', '1000', 'eyJpdiI6ImdYRXVmbGNaK0RcLys1NitBTFh0NndnPT0iLCJ2YWx1ZSI6InZXZENOejN6bDU5S1wvY0kxRTJrQ2ZRPT0iLCJtYWMiOiIyNTMxNzZkYjkzMTkyM2E3ZDMzYzAxYWI4NDQ4MTA1ZWJiYThmN2I5ZmQyN2RmOWQyNjY3ODk0NmZhMmY4MTI5In0=', 'eyJpdiI6Ikcrd090dzAxV05cL2h2ZTlFdmVVcktRPT0iLCJ2YWx1ZSI6ImZkcnl5UWVDZ3EzNE0zTmFCWDlLdVE9PSIsIm1hYyI6ImE0MGZlMTg0Y2M0Mjg5Mzc1ZGQzNTdhNTc2NDE2NThkZGY0YTU1YzRmNTQyNjc1MTFlZWM2Njg2NjY5YTc3YTMifQ==', '2020-02-01 09:13:35', '2020-02-01 09:13:35'),
(21, 'shaon', 'shaon1', 'shaon@gmail.com', '01976348745', 'Dhaka', '1000', 'eyJpdiI6IlJMRXhYVlY4bmhvcFBKSWxuMU5QRXc9PSIsInZhbHVlIjoidzgzM1c1YXY4NnRENUhyMmx1QkZsQT09IiwibWFjIjoiODE0OWU5YWI0ZGRmYWI3NGUwMjYwOWE0N2FhYTc1ZTFlYmU4ODQ1NjcwZWExZjQzMzBkY2JjMmYwNjFiZWI2MSJ9', 'eyJpdiI6ImdYZ0ZqXC9zZlhzQVVwRGNmVzZLVnN3PT0iLCJ2YWx1ZSI6InpRbDRkMGFxaXY5dUg0YzVvZ3V2akE9PSIsIm1hYyI6IjRhYjMyYzVmOGQyNGYzZDcxNGJmZmRhNmY1MjRhN2M5ODVhYjlkZjBkMTRjMWRmZDU3ZTUzNDg2ZjQ3MTVjZTUifQ==', '2020-02-03 06:42:10', '2020-02-03 06:42:10'),
(22, 'zulkarnine', 'nine1', 'admin@blogs.com', '01976348745', 'Rajshahi', '1200', 'eyJpdiI6IjJrVEU4dTMxaUpPMlJBS3hFeXBzS1E9PSIsInZhbHVlIjoieXVlUnVuSmwwclZHRDRpNGh2VXpWQT09IiwibWFjIjoiYTAzYzdlNGMxZGRmYzQ3MGQ1NzIwZWZlYmU2ZDM3ZTZiZDljYmE3MmQxZDY4ZGY3M2EzNDhjM2UyZjk5MTdjMCJ9', 'eyJpdiI6IlJzUk9XOWZiRGpIaDJmclwvSmkxTnZnPT0iLCJ2YWx1ZSI6IkRrSHpUeHRyUElKZGNBZVAxQUxCRlE9PSIsIm1hYyI6IjY5NDgxYzM0Y2NiY2M5YmZlZTExY2MzYWUyMWZlMmY0YWJhZWY1N2ZiODJjMGVmYjA3N2U0ODk4MzJhOWYxZjYifQ==', '2020-02-07 03:28:29', '2020-02-07 03:28:29'),
(23, 'apurba', 'apurba1', 'apurba@gmail.com', '01976348745', 'Rajshahi', '1200', 'eyJpdiI6IlwvYnlkNDVhYmZqT2MwRDdheUMwbDNnPT0iLCJ2YWx1ZSI6ImN0R1hTSXpBcHMxdzY5NEpCZUVKdmc9PSIsIm1hYyI6Ijg3OTg3ZjI2ZTNhYTFmMzQ2ODc3NDdjMWQ1YWNjYjg3MjliNmFhMjI0NWM0OTIxNjQzYTc0ZDkzYmQxODViMjAifQ==', 'eyJpdiI6IkE1TU5cL2VxaGtaVURxS3dhQ1VHNFRRPT0iLCJ2YWx1ZSI6IkFpSzlvNG9ZOXhkRmk1azl6V29xdkE9PSIsIm1hYyI6ImM5MDkyNmY1NDFlZmExNjE5ZGQ5YWRkNDU2NWJkODZhMGNlYTNmMTI4OTljNTM2N2QzOWNjYTZmYjk4ZDU5ZjAifQ==', '2020-02-08 07:45:45', '2020-02-08 07:45:45'),
(24, 'apurba', 'apurba1', 'apurba@gmail.com', '01976348745', 'Rajshahi', '1500', 'eyJpdiI6Imlrcmp4YXpCeHhDbmZLT3paM0NtTHc9PSIsInZhbHVlIjoibDg1akVoNitYZ0dWaWtBVjEwWEhTZz09IiwibWFjIjoiOWZiYjNkYmI0YThiNzJiYmZhMWM1NjlmYTVlNTBkM2U3NDUyYmY1Nzk5YTVhZjFkMjIxMzUzYTVjMTIzMWVjNSJ9', 'eyJpdiI6IlwvTHNrYzdLVFMwaStvbjZBZllreEhBPT0iLCJ2YWx1ZSI6IjFWaHVPWmNxWGFzOGVKeStvXC9vSXFnPT0iLCJtYWMiOiI0ZGI4MzMzOTJlMDBiYzI2OGE5NGY3OTI2NTc0Y2E4ZWRhYThiNWU4MzUzYTU2YTUyZGU2ZTA0YjVmMTg2MWMyIn0=', '2020-02-08 07:48:18', '2020-02-08 07:48:18'),
(25, 'zulkarnine', 'nine1', 'zulkarnine4444@gmail.com', '01989419776', 'Dhaka', '1200', 'eyJpdiI6ImMxY1RObk5wYUlHczdHZERydWlaTnc9PSIsInZhbHVlIjoib21yXC81SmlTQTQ1N1JSZmZRNWxjYnc9PSIsIm1hYyI6IjQxOTQ4YWI3ZWU4NjUyNmM5ODJmZTk5NGEwOTdkMzBlNjBlZjg3NGI5OWE2NTIxNGU2ZDkzOGQxNTYyYmFkYmYifQ==', 'eyJpdiI6InQxVnFyeGFrQWtjNVVZTmVnV1lPQkE9PSIsInZhbHVlIjoibjdGZVNOY1RaTTFTdVdDNW5ZT1lKdz09IiwibWFjIjoiODU1OTkwYzQxNzdlMDhiYzg5ZGYzMTc2MWFlMjE4N2I3ZTllNDU0NDYxMWY3ZjlkNThmZDQ0NmQwMDcxOWQ5YyJ9', '2020-02-19 11:02:25', '2020-02-19 11:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `gallary_adds`
--

CREATE TABLE `gallary_adds` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallary_adds`
--

INSERT INTO `gallary_adds` (`id`, `product_name`, `crop_type`, `product_description`, `product_image`, `created_at`, `updated_at`) VALUES
(1, 'Red Grapes', 'Fruits', 'new brands', 'gallary_images/red-grapes-250-gm.jpg', '2020-01-15 11:35:26', '2020-01-15 11:35:26'),
(2, 'papaya', 'Fruits', 'Good for health', 'gallary_images/papaya.jpg', '2020-01-15 11:36:08', '2020-01-15 11:36:08'),
(3, 'cha', 'Others', 'Good for health', 'gallary_images/cha.jpg', '2020-01-15 11:36:35', '2020-01-15 11:36:35'),
(4, 'jute', 'Others', 'new year', 'gallary_images/jute.jpg', '2020-01-15 11:36:58', '2020-01-15 11:36:58'),
(5, 'paddy', 'Others', 'rice', 'gallary_images/paddy.jpg', '2020-02-08 02:30:36', '2020-02-08 02:30:36'),
(6, 'xyz', 'Fruits', 'Good for health', 'gallary_images/mango.jpg', '2020-02-09 04:28:17', '2020-02-09 04:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `home_adds`
--

CREATE TABLE `home_adds` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_adds`
--

INSERT INTO `home_adds` (`id`, `product_name`, `crop_type`, `product_quantity`, `product_price`, `product_description`, `long_description`, `product_image`, `created_at`, `updated_at`) VALUES
(2, 'Green Coconut (Daab)', 'Fruits', '1 pics', '110', 'new year', '<p>For Consumer....</p>', 'home_images/green-coconut-daab-1-pcs.jpg', '2020-01-15 11:38:00', '2020-01-15 11:38:00'),
(3, 'banana', 'Fruits', '12 pics', '90', 'new Year.', '<p>For Cosumer......</p>', 'home_images/banana-sagor-kola-12-pcs.jpg', '2020-01-15 11:39:04', '2020-01-15 11:39:04'),
(4, 'papaya', 'Fruits', '1 pics', '70', 'New year', '<p>For Cosumer......</p>', 'home_images/papayaaaa.jpg', '2020-01-15 11:39:59', '2020-01-15 11:39:59');

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
(2, '2014_10_12_100000_create_password_resets_table', 1);

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
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_forms`
--

INSERT INTO `shipping_forms` (`id`, `fullname`, `email`, `phone_number`, `address`, `payment_type`, `product_name`, `product_price`, `product_quantity`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 'zulkarnine', 'zns601@gmail.com', '01976524652', 'kolabagan,Dhaka', 'Paypal', 'A', '300', '4', '1200', '2019-11-06 11:58:08', '2019-11-06 11:58:08'),
(2, 'zulkarnine', 'zulkarnine43@gmail.com', '8801869084620', 'kolabagan,Dhaka', 'Dhaka', 'banana', '90', '1', '310', '2020-02-08 12:52:57', '2020-02-08 12:52:57'),
(3, 'sajid', 'zulkarnine4444@gmail.com', '01976524652', 'mogbazar,Dhaka', 'Khulna', 'banana', '90', '3', '270', '2020-02-19 12:02:59', '2020-02-19 12:02:59');

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
(1, 'Zulkar Nine', 'zulkarnine43@gmail.com', '2020-02-05 12:00:22', '$2y$10$RwxzkFRwDzTJ0Sq2nDokNeMEXVakf4yopEWtPaImnQwtrBEnO.cUC', '4Vj4TrMa97aqVD0TnNMJBFW65weT3zv4SJG0h1gcxthAKzu2kPKqqkRpkkaa', '2020-02-05 11:54:27', '2020-02-05 12:00:22');

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cust_messages`
--
ALTER TABLE `cust_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmer_registrations`
--
ALTER TABLE `farmer_registrations`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `crop_messages`
--
ALTER TABLE `crop_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer_registrations`
--
ALTER TABLE `customer_registrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cust_messages`
--
ALTER TABLE `cust_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farmer_registrations`
--
ALTER TABLE `farmer_registrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `gallary_adds`
--
ALTER TABLE `gallary_adds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_adds`
--
ALTER TABLE `home_adds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipping_forms`
--
ALTER TABLE `shipping_forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 10, 2021 at 03:59 PM
-- Server version: 5.7.36
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `azs4s_pillbro`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnostics_lab_tests_master`
--

CREATE TABLE `diagnostics_lab_tests_master` (
  `dltm_id` int(11) NOT NULL,
  `dltm_role_id` int(11) NOT NULL DEFAULT '4',
  `dltm_category_id` int(11) NOT NULL,
  `dltm_diagnostic_id` int(11) NOT NULL,
  `dltm_status` tinyint(4) NOT NULL,
  `dltm_name` varchar(255) NOT NULL,
  `dltm_image` text NOT NULL,
  `dltm_description` text NOT NULL,
  `dltm_price` float NOT NULL,
  `dltm_discount` float NOT NULL,
  `dltm_created_at` datetime NOT NULL,
  `dltm_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diagnostics_lab_tests_master`
--

INSERT INTO `diagnostics_lab_tests_master` (`dltm_id`, `dltm_role_id`, `dltm_category_id`, `dltm_diagnostic_id`, `dltm_status`, `dltm_name`, `dltm_image`, `dltm_description`, `dltm_price`, `dltm_discount`, `dltm_created_at`, `dltm_updated_at`) VALUES
(1, 4, 14, 12, 0, '', '', '', 412, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 4, 14, 0, 1, '0', '0', '0', 0, 0, '2021-11-04 09:26:34', '2021-11-04 09:26:34'),
(3, 4, 17, 12, 3, 'blood test', '0', 'blood test', 500, 10, '2021-11-04 09:32:14', '2021-11-04 09:32:14'),
(4, 4, 14, 12, 3, 'covid test', '0', 'covid test', 250, 10, '2021-11-04 09:32:50', '2021-11-04 09:32:50'),
(5, 4, 17, 17, 1, 'maleria test', '0', 'maleria test', 200, 10, '2021-11-04 09:33:54', '2021-11-04 09:33:54'),
(6, 4, 14, 14, 4, 'maleria test', '0', 'maleria test', 200, 10, '2021-11-04 09:36:09', '2021-11-04 09:36:09'),
(7, 4, 17, 12, 4, 'maleria test', '0', 'maleria test', 200, 10, '2021-11-04 09:36:31', '2021-11-04 09:36:31');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_consulation_timings`
--

CREATE TABLE `doctor_consulation_timings` (
  `dct_id` int(11) NOT NULL,
  `dct_doctor_id` int(11) NOT NULL,
  `dct_status` tinyint(4) NOT NULL,
  `dct_date` date NOT NULL,
  `dct_time` time NOT NULL,
  `dct_created_at` datetime NOT NULL,
  `dct_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_consulation_timings`
--

INSERT INTO `doctor_consulation_timings` (`dct_id`, `dct_doctor_id`, `dct_status`, `dct_date`, `dct_time`, `dct_created_at`, `dct_updated_at`) VALUES
(4, 1, 1, '2021-11-10', '20:54:36', '2021-11-08 17:55:36', '2021-11-08 17:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `location_countries_master`
--

CREATE TABLE `location_countries_master` (
  `lcm_id` int(11) NOT NULL,
  `lcm_status` tinyint(4) NOT NULL,
  `lcm_name` varchar(255) NOT NULL,
  `lcm_created_at` datetime NOT NULL,
  `lcm_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location_countries_master`
--

INSERT INTO `location_countries_master` (`lcm_id`, `lcm_status`, `lcm_name`, `lcm_created_at`, `lcm_updated_at`) VALUES
(1, 1, 'india', '2021-10-29 11:38:48', '2021-10-29 11:38:51');

-- --------------------------------------------------------

--
-- Table structure for table `location_districts_master`
--

CREATE TABLE `location_districts_master` (
  `ldm_id` int(11) NOT NULL,
  `ldm_state_id` int(11) NOT NULL,
  `ldm_status` tinyint(4) NOT NULL,
  `ldm_name` varchar(255) NOT NULL,
  `ldm_created_at` datetime NOT NULL,
  `ldm_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location_districts_master`
--

INSERT INTO `location_districts_master` (`ldm_id`, `ldm_state_id`, `ldm_status`, `ldm_name`, `ldm_created_at`, `ldm_updated_at`) VALUES
(1, 1, 1, 'hyderabad', '2021-10-29 11:18:53', '2021-10-29 11:39:53'),
(2, 2, 1, 'warangal urban', '2021-10-29 08:18:48', '2021-10-29 11:52:48');

-- --------------------------------------------------------

--
-- Table structure for table `location_states_master`
--

CREATE TABLE `location_states_master` (
  `lsm_id` int(11) NOT NULL,
  `lsm_country_id` int(11) NOT NULL,
  `lsm_status` tinyint(4) NOT NULL,
  `lsm_name` varchar(255) NOT NULL,
  `lsm_created_at` datetime NOT NULL,
  `lsm_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location_states_master`
--

INSERT INTO `location_states_master` (`lsm_id`, `lsm_country_id`, `lsm_status`, `lsm_name`, `lsm_created_at`, `lsm_updated_at`) VALUES
(1, 1, 1, 'telangana', '2021-10-29 11:39:13', '2021-10-29 11:39:45'),
(2, 1, 1, 'andhra pradhesh', '2021-10-29 11:39:30', '2021-10-29 11:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `r_id` int(11) NOT NULL,
  `r_status` tinyint(4) NOT NULL COMMENT '1 : Active 2 : Inactive',
  `r_name` varchar(20) NOT NULL,
  `r_created_at` datetime NOT NULL,
  `r_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`r_id`, `r_status`, `r_name`, `r_created_at`, `r_updated_at`) VALUES
(1, 1, 'ADMIN', '2021-10-27 15:16:18', '2021-10-27 12:43:49'),
(2, 1, 'DOCTOR', '2021-10-27 12:12:10', '2021-10-27 12:19:30'),
(3, 1, 'PHARMACY', '2021-10-27 12:17:39', '2021-10-27 12:37:39'),
(4, 1, 'DIAGNOSTICS', '2021-10-27 12:20:13', '2021-10-27 12:12:43'),
(5, 1, 'PATIENT', '2021-10-27 12:15:23', '2021-10-27 12:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `roles_based_categories_master`
--

CREATE TABLE `roles_based_categories_master` (
  `rbcm_id` int(11) NOT NULL,
  `rbcm_role_id` tinyint(4) NOT NULL,
  `rbcm_status` tinyint(4) NOT NULL,
  `rbcm_name` varchar(255) NOT NULL,
  `rbcm_created_at` datetime NOT NULL,
  `rbcm_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles_based_categories_master`
--

INSERT INTO `roles_based_categories_master` (`rbcm_id`, `rbcm_role_id`, `rbcm_status`, `rbcm_name`, `rbcm_created_at`, `rbcm_updated_at`) VALUES
(1, 0, 2, 'CARDIOLOGY TEST', '2021-11-03 05:04:15', '2021-11-03 12:53:55'),
(2, 4, 2, 'WDSVDF', '2021-11-03 05:05:41', '2021-11-03 12:15:55'),
(12, 0, 1, 'EIDT PHARMACY', '2021-11-03 05:28:33', '2021-11-03 12:50:40'),
(13, 3, 1, 'ARUVEDIC', '2021-11-03 05:31:43', '2021-11-04 07:27:16'),
(14, 4, 1, 'DIABIETES', '2021-11-03 12:02:18', '2021-11-08 08:59:53'),
(15, 2, 1, 'CARDOGY', '2021-11-03 12:18:03', '2021-11-03 12:56:00'),
(16, 3, 1, 'PHARMACY CARE', '2021-11-03 12:18:22', '2021-11-08 05:20:47'),
(17, 4, 1, 'FEVER', '2021-11-03 12:18:38', '2021-11-08 08:59:15'),
(18, 3, 2, 'AYRUVEDIC', '2021-11-04 04:54:55', '2021-11-04 07:26:14'),
(19, 3, 1, 'HOMOPATHY', '2021-11-04 04:55:13', '2021-11-04 04:55:13'),
(20, 3, 1, 'SKIN CARE', '2021-11-08 05:18:09', '2021-11-08 05:18:09'),
(21, 3, 1, 'HAIR CARE', '2021-11-08 05:18:25', '2021-11-08 05:18:25'),
(22, 3, 1, 'EYE CARE', '2021-11-08 05:18:52', '2021-11-08 05:18:52'),
(23, 3, 1, 'ALOPATHY', '2021-11-08 05:19:11', '2021-11-08 05:19:11'),
(24, 4, 1, 'SKIN', '2021-11-08 09:00:13', '2021-11-08 09:00:13'),
(25, 4, 1, 'KIDNEY', '2021-11-08 09:00:27', '2021-11-08 09:00:27'),
(26, 4, 1, 'DIGESTION', '2021-11-08 09:00:53', '2021-11-08 09:00:53'),
(27, 4, 1, 'CANCER', '2021-11-08 09:01:01', '2021-11-08 09:01:01'),
(28, 4, 1, 'COVID', '2021-11-08 09:01:09', '2021-11-08 09:01:09'),
(29, 4, 1, 'BONE', '2021-11-08 09:01:25', '2021-11-08 09:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pharmacy_products`
--

CREATE TABLE `tbl_pharmacy_products` (
  `tpp_id` int(11) NOT NULL,
  `tpp_role_id` int(11) NOT NULL DEFAULT '3',
  `tpp_category_id` int(11) NOT NULL,
  `tpp_pharmacy_id` int(11) NOT NULL,
  `tpp_status` tinyint(4) NOT NULL COMMENT '1 : Pharmacy Active, 2 : Pharmacy Inactive, 3 : Admin Approved, 4 : Admin Inactive',
  `tpp_name` varchar(255) NOT NULL,
  `tpp_image` text NOT NULL,
  `tpp_discount_percentage` float NOT NULL,
  `tpp_price` float NOT NULL,
  `tpp_description` longtext NOT NULL,
  `tpp_created_at` datetime NOT NULL,
  `tpp_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pharmacy_products`
--

INSERT INTO `tbl_pharmacy_products` (`tpp_id`, `tpp_role_id`, `tpp_category_id`, `tpp_pharmacy_id`, `tpp_status`, `tpp_name`, `tpp_image`, `tpp_discount_percentage`, `tpp_price`, `tpp_description`, `tpp_created_at`, `tpp_updated_at`) VALUES
(1, 3, 0, 3, 3, '', '', 10, 200, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 3, 16, 1, 3, 'dolo 650', '0', 10, 0, '0', '2021-11-04 04:35:53', '2021-11-04 04:35:53'),
(6, 3, 16, 3, 3, 'dolo 650', '0', 10, 500, 'dolo650 medicine', '2021-11-04 04:53:05', '2021-11-04 04:53:05'),
(7, 3, 16, 3, 3, 'paracetamal 650', '0', 10, 500, 'paracetamal medicine', '2021-11-04 04:53:45', '2021-11-04 08:00:04'),
(8, 3, 18, 3, 3, 'cold act', '0', 10, 500, 'cold act medicine', '2021-11-04 04:56:47', '2021-11-04 04:56:47'),
(9, 3, 18, 3, 3, 'azthromaximne', '0', 10, 500, 'azthromaximne medicine', '2021-11-04 04:57:14', '2021-11-04 07:18:44'),
(10, 3, 19, 3, 3, 'pantap', '0', 10, 500, 'pantap medicine', '2021-11-04 04:57:46', '2021-11-08 05:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `t_id` int(11) NOT NULL,
  `t_status` tinyint(4) NOT NULL,
  `t_name` varchar(255) NOT NULL,
  `t_designation` varchar(255) NOT NULL,
  `t_description` text NOT NULL,
  `t_created_at` datetime NOT NULL,
  `t_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_basic_information_tbl`
--

CREATE TABLE `users_basic_information_tbl` (
  `ubit_id` int(11) NOT NULL,
  `ubit_category_id` int(11) NOT NULL,
  `ubit_role_id` tinyint(4) NOT NULL,
  `ubit_status` tinyint(4) NOT NULL,
  `ubit_country_id` int(11) NOT NULL,
  `ubit_state_id` int(11) NOT NULL,
  `ubit_district_id` int(11) NOT NULL,
  `ubit_owner_name` varchar(255) NOT NULL,
  `ubit_owner_file` text NOT NULL,
  `ubit_establishment_name` varchar(255) NOT NULL,
  `ubit_license_file` text NOT NULL,
  `ubit_full_address` text NOT NULL,
  `ubit_email` varchar(255) NOT NULL,
  `ubit_mobile_number` bigint(20) NOT NULL,
  `ubit_password` varchar(255) NOT NULL,
  `ubit_description` text NOT NULL,
  `ubit_experience_in_years` int(11) NOT NULL,
  `ubit_consultation_fee` int(11) NOT NULL,
  `ubit_token` text NOT NULL,
  `ubit_created_at` datetime NOT NULL,
  `ubit_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_basic_information_tbl`
--

INSERT INTO `users_basic_information_tbl` (`ubit_id`, `ubit_category_id`, `ubit_role_id`, `ubit_status`, `ubit_country_id`, `ubit_state_id`, `ubit_district_id`, `ubit_owner_name`, `ubit_owner_file`, `ubit_establishment_name`, `ubit_license_file`, `ubit_full_address`, `ubit_email`, `ubit_mobile_number`, `ubit_password`, `ubit_description`, `ubit_experience_in_years`, `ubit_consultation_fee`, `ubit_token`, `ubit_created_at`, `ubit_updated_at`) VALUES
(1, 0, 1, 1, 0, 0, 0, '', '', '', '', '', 'admin@pillbro.com', 0, '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', '', 0, 0, 'a66b35c4b6ce67e92a26fd02b2fe37f5540a447153312ee196645979179ea29450a5c36f162061a7dcf5a9280efdb2bea508ae747e46542dc48c8616e1b5ee8a5279ed234d558d2af5814d71b0349675c9457de2d0269a90921df2b4abe57b12ded64ddcec038fd046e9820e9f275581502d72e4c3a02521bdca581f114bc40532a2d10e25912ecf1dfa78374075e933680284a1492e13f36da341a05a267177def685587d6a5ddd149061022dd4c8aa7391304509f9f68b700138a1745aa932b9bdc6a0aa690710', '2021-11-03 10:19:19', '2021-11-03 10:18:37'),
(2, 2, 2, 1, 1, 1, 1, 'pharmacy', '16359190095291.jpg', 'SR Diagontics', '1635919009529122.jpg', 'pharmacy', 'pharmacy@yopmail.com', 0, '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', '0', 0, 0, 'd6dbbc90939540049423436550a23f52e1c2f3565593e46c0484d19ff894c132b84590bcd009ddaaf56dbb172cc84129b4758ed4d4ce87ba788cb77a19723a0be6c824b0d34d34e4fc7738835994bdcac94979d53ebb202d638276bb500c7e3176707ba354d59c6ffc6f499ce62a36295cd04850981c8e73ccf13e0889ebe80771b78252b50f71378aafed08a44b5ba29e18e88f995b56d934ca82f6bc59d34ecda11c4b833a0f7232c872142cbfacbe201885670e1e7a709542b5205bc7fe8ba3b3bdf4ad717045', '2021-11-03 05:56:49', '2021-11-04 07:06:29'),
(3, 3, 3, 1, 1, 1, 1, 'pharmacy', '16359190608351.jpg', 'SR Diagontics', '1635919060835122.jpg', 'pharmacy', 'pharmacy@gmail.com', 0, '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', '0', 0, 0, '3efeff432c228b379ce07b8b4e8405e55f81afb432b2b20f2786b14b6d709216436cd54d80a61f22d72272b16b9ca6f042c9d511a948cd291ba63a7a5c25ce60d6235227e2b3401fd4df4238e1bbc47005320a839d85be004e080d3701d773acd4011710d91c6c77d8f85673e8d667008982407c4d0b6185e94513c11d3596b62162d803db0d9777d1447bdf43c5887de51edb37f1e0848a327ddfee5270444f0014ded28095cf7a158d138b61b94f55cb0546766e4e02af9c09eb5b0e206945aea9d1f732539614', '2021-11-03 05:57:40', '2021-11-04 07:28:03'),
(4, 2, 2, 2, 1, 1, 1, 'doctor', '16359190925201.jpg', 'SR Diagontics', '1635919092521122.jpg', 'doctor', 'doctor@gmail.com', 0, '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', '0', 0, 0, '25eaff7bd039e120f3b3f3a02bc539884522ca0eb288e4e7e55b823e9db989ee3518a09729a84a173703ae4f91c4b2f4c0239053eeb34971c4c3952cb2e2469a7f9ca424dc3eb61b17c51c20a9829c27b740445ace8c73ef41a10985ae13dc49012561e5694f9d664aeb35ad603f6aff1c54415e78fb9ad88f8a0647ab2f45806708eb8401bef88d00344df125a43ae935a9cf13212057c0fda3836da70c6f17bb5d1433ebfac88e9e67ee4455c8b8a612b4dca5cd4a4a423ffd85a60dfa9a63c4c023a1e546e619', '2021-11-03 05:58:12', '2021-11-03 05:58:12'),
(5, 5, 5, 1, 1, 1, 1, 'patient', '16359191243531.jpg', 'SR Diagontics', '1635919124354122.jpg', 'patient', 'patient@gmail.com', 0, '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', '0', 0, 0, 'fa409d4cd790a2ccffe231027d90930b9339cd0823ebd73b3bc7fb784b08a327815e468dc986ccdc7a38cb30945d91af9c7c07557d496294b12d93def887a7117bf4159bf3b6059f5ca82e922f0c3e2b1b36e4dfc21beb3bb7b4443f9dd8ce0d2d97174d79ff19d7c2dac8e7184401346df9c2138606bb9a7048dc9ca06bc9c055eea216586a95dee41837f9e3f431e63155052fcbc29626fbcfb55843a6bb0ff11a0bf70dd089b58814a671de29d42680fb6c9ea83354867ba17a2b68c5f85055c95666ec2cb9d4', '2021-11-03 05:58:44', '2021-11-03 05:58:44'),
(6, 3, 3, 1, 1, 1, 1, 'diagnostics', '16359191574361.jpg', 'SR Diagontics', '1635919157436122.jpg', 'diagnostics', 'diagnostics@gmail.com', 0, '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', '0', 0, 0, 'f4d33d3697d4ac1f2c4c9cf92961a96765f075872fe9a9c9ccd785308a09a67c0a6999b97a3e4da499c706b877a56873de0730f55d33f34dbd6ad0def63a3fccef0c78dec92ff4d17ace49d44a8e445ba2176c4ca7712a1b4a2ba8b5ced1b6be9896656de45ebb6a9468fbe08793b6bc5789729238c218d0c83d7ab56fb30f1f77966ab3b985378059691dde877c41c22d31d9b7fc3b8284230527979b7bcf22295af44f0d1627fab525f268ab5b14609c908fef5d52c56358dea397e7327a65d9d6217ce01ece45', '2021-11-03 05:59:17', '2021-11-04 07:28:14'),
(9, 0, 5, 1, 1, 1, 1, 'dilip', '0', '0', '0', '0', 'dilip@yopmail.com', 8765676567, '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', '0', 0, 0, 'c5f2c30af1cd53f7a880f8fea48601b5a5ab5188faf693cd2127e339176e82ce9e84dccd51b201148673f5e0b55ee0544c74e732e4461a62d2d3a09305f4b10a826f0298bd4464a5b417fc9bd181e4d2b4441ec3a5382787a96fb157286f49a095e77c3824ec636a716b93f34754dbaae4409c92452ff2faff9e739e1b82526b62865383470b4cdfb1719edc1e3f843995c8cbada7d51c0a40a6271aab8b0c4e8cc629a34a5bd03cda40dac6ab990459f512c366ebdf05e0f94bb0d3c1613e7eecd54715cfdd18d8', '2021-11-03 09:33:47', '2021-11-03 09:33:47'),
(12, 0, 5, 1, 1, 2, 2, 'diagnostics test', '0', '0', '0', '0', 'diagnostics@yopmail.com', 8765434567, '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', '0', 0, 0, 'a712e8c7e696533666945ca3a51dabb4c25af009db9fef0c7a2b8231891d5fd5bd05736174eaf68ac3962f0aa0e8bb277d61c05b58a0d181ba3c832b5ef54399027b1bbd2da96b45e5c4153a4e8ff24e911f8d584c58de4df91622403c5fe3fa096640190143b5783a2f42ec1780eb418cef399f8811c9c5e2ca84ad3c1bb1aa2b0882005aea0af5940451ae3cdd1aaa541a18773f0ece92553ddc068fed251a69b5ec50f41cc849412bb1dc4c0c52882f8f4533735d3a8f82dab11111c7f3ca4726992bf5f5082e', '2021-11-03 09:35:57', '2021-11-08 13:09:47'),
(14, 4, 4, 1, 1, 1, 1, 'diagnostics', '16360206398081.jpg', 'SR Diagontics', '1636020639808122.jpg', 'diagnostics', 'diagnos@yopmail.com', 8765434567, '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', '0', 0, 0, '14465279150e8adab52626abd8afccfcff0d8237c7042cc2bbcf29dd67eb04963a5bfa359cd5a2a84216ca41f1b2eff62b2b48b8d6ffd2d7375d2605025c83c9f5f339f9002af4fe2255b1a361cb0fea63767a6fd007a036d653e038dadb666c0ac78c29a0da646c2956a802eace7f26fcbd7914adab44b68b837ac8bb1d6621ca379b12282a4541374292dd4ad229357bbeb37fbdeb83c8d4550582f8ee6a150c02e702eca7b39003db2cd4a2896e9f10c59707dba29f2a40d198afc5eb817b9f9db18fcd3f29e4c1dd5656041b273810c70d2a11df74cbd87f091ada581a1733d5e0e6f6d6595a974205d7cc6bc506bb1b80d3d43df8e8f5ea4d8091b7b67b44fbad1b250128d95cb4054f9e43239fff92674e597296a35d99846d4ee11e089f0f2f33c488742314fd201ecba0098780591e6704655d0edf6eeeae376492e74fcdca0f82bb863bfc5ca36a5defaefee34f81511c1c75c18af6d548f9c219b7579ea9ef6d30dcd7954541664698c20a38cb83fec5f26e3ca96e6c281a077f3a43a2371162e81ed61513267403a7fbaeca250dce331f4c52c8f91acf690a83a230dd42895dcce044dea7f5f98daa5ccd2e968dbffa1d5bf7bb392d7213d5af8a8860dd84d76ce1fb3137c371014dd2abce2a44a2a63552e66122bd7522edac9c1484fa7cae6bb1a1275bfa6434b306bb76a509bd', '2021-11-04 10:10:39', '2021-11-04 10:10:39'),
(15, 15, 2, 1, 1, 1, 1, 'Dr.Narasimha', '16360228809841.jpg', 'SR Diagontics', '1636022880984122.jpg', 'warangal', 'narasimha@yopmail.com', 8765435867, '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 'doctor', 2, 500, 'a8136b96a58d5782d68ddf24e1da9f0693080cdbc93305795a6440765960d1c0e079c48a4075d9bc4f59b999a3d8cbf5c4b9d7462aa81723866bf390b4224ae5619c922050f39132c64ecf8b3695ebcd0bd6857d7e43c2aeb511e17e6bb3dceb4c72ba6c42603577e5f138274ea0a845254ade2a55cb1db22546497f3714cb5c158e31c976b40c54601f8f253a0a1dee50f4f6b870231d38f72df035886b68c6ab372c88ae4da7cb27f2f6b51b4037f1079e533ae481d196c761453a51c141291453abedb2dbdb272b0591255b2d014c3773c637a5a71cf0d2c83f5a2f8eba94650d9d458f0ed3631a392b99a1063264cad85486a424673637a95cf29525300e6bfd11def289602e9314c41dbb9a20976d6939aebcb6eb61cfea639ccebb515ee240126a2dbff7e94e5d17f029c05bdfe741fa146623a7f1d49bdcd1c561964e73fc98312ece18b8b80bfa5fb567e463431893790d8d1a186ab3e78b1533f7e1ce846035f6f7235929785ba38102f74fe5ccc58f1a2c2e3f62634563bcc18fe3f5ffa664d01da77969534ff412bfa52a2bb2e14de82a6694615bacb3998a1ac510bb0398ff57b8bd4f6c80115fb44b84913d57c14ab89f15ee406e02497b2501f8917b8b7903326d415ce2707c0997cd4a48ab565e69a24dcc4f4960707559ed9fc4f18e0faa0f4d3cc73180a18bf3d63c66a09b', '2021-11-04 10:48:00', '2021-11-04 10:48:00'),
(16, 15, 2, 1, 1, 1, 1, 'Dr.Narasimha', '16360230491591.jpg', 'SR Diagontics', '1636023049160122.jpg', 'warangal', 'narasimha@yopmailll.com', 8765435867, '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 'doctor', 2, 500, 'a1c090afcbc8acef2558da5fc2586123f3a82f4a50c1f5deb52b8db4c5a50a0577347103335d4b6523a0cd5905a66ccfa5699b4aefaa5217bb1ad3c39dbaa6823a54f451b196c7a6dd706cf46e9d61a0dd9c1a2d5d98b8341150deb19bb2aefad31e8d7cca94bcfb08113c0b6d69372c825479ab659bfa396f7ac9551a3f26e4fa6aadb3fa20422a8aa0bff97e10b2aeb0f1102a2c7e81c531ed795cc85856239b9e0b308dc4e1e76bbfcc63136398f0a5e073ba37a1a53165e49eed39b9fcd6428f2a4188b08997ab211373cd836c79199bd91b3b6e5f6ff2c7606232353400ab3e86f0ab00dca78704782bf1a085926c7687605beffcfb33a6712605dd4ffcea57fb8378a640977f24b2aed996632ab726b8e28f7ca5d506422d216ba7763f4c26ae11470c3db19deda53e2f034b2a166f5bcd4c0786dfcae3232e3ca07a0ed03163a6459df50698351079d5d552abdba3568d5e2cec02addb09abe66a136c743cc433fdf6309548dcf12c6327b1bddba54dd7201f09ae0f3124fc6abe556c2f875f20adf8ef9a8cf3b45a6c97d5fe43e075d324374fb4b23bae6929369675de618a3f4d22b20dfc5ad575aacf108ca915b6cd6caf92e8bd3c9ad51293e24a79af91c861916ca017d7338d62024ba91e7fc08555bc44eea724658e1166d70f5bf18c164363c72c31c8f689082cef1a4d142f01', '2021-11-04 10:50:49', '2021-11-04 10:50:49'),
(17, 4, 4, 2, 1, 1, 1, 'surya', '16385104111911.jpg', 'SR Diagontics', '1638510411191122.jpg', 'test', 'surya.svapps@gmail.commmmm', 0, '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', 'test', 2, 500, '1fca4f34d439603bd869f47dd8396b8bcbad97ec1dfb3c6b4437d383e71244b1cda58be2683cfb041b3f14b0c4eab2d5a278691813b3fe860c743cc321b753530639d453b43ee3381ce89bf493d8b5fcbf5ce2872f14235246f507a86e44fb605bd720c4ced54620055e9816c4f8a4f1de4eef3bdfd5777af85f8dbc0116a2e721f77cb6c07e644077a6a0bb12eb880e16afc8fb63e1a6c7e80205df25b02132c7de9a6818a1a3a71d08e86f11351bf96c8ea04a2754ebe7de1ebc5d3a055ce43b9db754add6c7754ef5c832b620e1802220bab146f9a4302497ee2f3e571a71c60802402ef31cc600e5865b9a7de8d2df560fa44d21832e3faca0ba0084f6f5433bad0c96d1cc3caa4fb1ecbeb2a1a0ba39b918d417fc1b7524b452f91cc57cd5b537d0b04e11dfd9e1391f769dc20b9512ae6616fa345296d73fc21c778f1292dda9a448eb8885a49a06f69165db1593791175ecdf71bd2bc692c7aac815b31c4ce943b101929d0c3c233b537cce54f22d0554a366b6aa27a09b0ec464cb7afeb8bfec94fe750bd99949d27f7736309a69e541509665ab73ef7ff1af15d5e1769ce0320deba3b4fe8f63764af47a56b0f194ec16bfba129af923d932185303bf528204653cdb56047825aed4a2b76257f068daf41e834c03049a2500e753a1ca5a361ccdb58fbec5259a4c064f314f60c55879', '2021-12-03 05:46:51', '2021-12-03 05:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `users_cart_master`
--

CREATE TABLE `users_cart_master` (
  `ucm_id` int(11) NOT NULL,
  `ucm_userid` int(11) NOT NULL,
  `ucm_role_id` int(11) NOT NULL,
  `ucm_item_id` int(11) NOT NULL,
  `ucm_quantity` int(11) UNSIGNED NOT NULL,
  `ucm_created_at` datetime NOT NULL,
  `ucm_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_cart_master`
--

INSERT INTO `users_cart_master` (`ucm_id`, `ucm_userid`, `ucm_role_id`, `ucm_item_id`, `ucm_quantity`, `ucm_created_at`, `ucm_updated_at`) VALUES
(2, 1, 3, 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 4, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users_consultation_timings`
--

CREATE TABLE `users_consultation_timings` (
  `uct_id` int(11) NOT NULL,
  `uct_userid` int(11) NOT NULL,
  `uct_consultation_id` int(11) NOT NULL,
  `uct_status` tinyint(4) NOT NULL,
  `uct_google_meet_link` text NOT NULL COMMENT 'or any other video link',
  `uct_razorpay_order_id` varchar(255) NOT NULL,
  `uct_razorpay_payment_id` varchar(255) NOT NULL,
  `uct_created_at` datetime NOT NULL,
  `uct_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_consultation_timings`
--

INSERT INTO `users_consultation_timings` (`uct_id`, `uct_userid`, `uct_consultation_id`, `uct_status`, `uct_google_meet_link`, `uct_razorpay_order_id`, `uct_razorpay_payment_id`, `uct_created_at`, `uct_updated_at`) VALUES
(1, 0, 0, 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users_delivery_addresses_information`
--

CREATE TABLE `users_delivery_addresses_information` (
  `udai_id` int(11) NOT NULL,
  `udai_user_id` int(11) NOT NULL,
  `udai_country_id` int(11) NOT NULL,
  `udai_state_id` int(11) NOT NULL,
  `udai_district_id` int(11) NOT NULL,
  `udai_name` varchar(255) NOT NULL,
  `udai_mobile` bigint(20) NOT NULL,
  `udai_full_address` text NOT NULL,
  `udai_pincode` bigint(20) NOT NULL,
  `udai_created_at` datetime NOT NULL,
  `udai_updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_delivery_addresses_information`
--

INSERT INTO `users_delivery_addresses_information` (`udai_id`, `udai_user_id`, `udai_country_id`, `udai_state_id`, `udai_district_id`, `udai_name`, `udai_mobile`, `udai_full_address`, `udai_pincode`, `udai_created_at`, `udai_updated_at`) VALUES
(1, 2, 1, 1, 1, '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders_information_master`
--

CREATE TABLE `users_orders_information_master` (
  `uoim_id` int(11) NOT NULL,
  `uoim_userid` int(11) NOT NULL,
  `uoim_reference_id` varchar(255) NOT NULL,
  `uoim_status` tinyint(4) NOT NULL,
  `uoim_locations` varchar(50) NOT NULL COMMENT 'Country, State and district Id''s comma separated',
  `uoim_customer_name` varchar(255) NOT NULL,
  `uoim_customer_mobile` bigint(20) NOT NULL,
  `uoim_customer_full_address` text NOT NULL,
  `uoim_pincode` int(11) NOT NULL,
  `uoim_order_type` tinyint(4) NOT NULL COMMENT '1 -> Online Payment 2 -> Cash On Delivery',
  `uoim_razorpay_order_id` int(11) NOT NULL,
  `uoim_razorpay_payment_id` int(11) NOT NULL,
  `uoim_created_at` datetime NOT NULL,
  `uoim_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_orders_information_master`
--

INSERT INTO `users_orders_information_master` (`uoim_id`, `uoim_userid`, `uoim_reference_id`, `uoim_status`, `uoim_locations`, `uoim_customer_name`, `uoim_customer_mobile`, `uoim_customer_full_address`, `uoim_pincode`, `uoim_order_type`, `uoim_razorpay_order_id`, `uoim_razorpay_payment_id`, `uoim_created_at`, `uoim_updated_at`) VALUES
(1, 0, '', 0, '', '', 0, '', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users_order_based_products`
--

CREATE TABLE `users_order_based_products` (
  `uobp_id` int(11) NOT NULL,
  `uobp_order_id` int(11) NOT NULL,
  `uobp_role_id` int(11) NOT NULL,
  `uobp_item_id` int(11) NOT NULL,
  `uobp_status` int(11) NOT NULL,
  `uobp_quantity` int(11) NOT NULL,
  `uobp_item_price` float NOT NULL,
  `uobp_created_at` datetime NOT NULL,
  `uobp_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_order_based_products`
--

INSERT INTO `users_order_based_products` (`uobp_id`, `uobp_order_id`, `uobp_role_id`, `uobp_item_id`, `uobp_status`, `uobp_quantity`, `uobp_item_price`, `uobp_created_at`, `uobp_updated_at`) VALUES
(1, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users_reviews_master`
--

CREATE TABLE `users_reviews_master` (
  `urm_id` int(11) NOT NULL,
  `urm_from_id` int(11) NOT NULL,
  `urm_to_id` int(11) NOT NULL,
  `urm_review_content` text NOT NULL,
  `urm_created_at` datetime NOT NULL,
  `urm_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `website_blog_categories`
--

CREATE TABLE `website_blog_categories` (
  `wbc_id` int(11) NOT NULL,
  `wbc_status` tinyint(4) NOT NULL COMMENT '1 : Active 2 : Inactive',
  `wbc_name` varchar(255) NOT NULL,
  `wbc_created_at` datetime NOT NULL,
  `wbc_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `website_blog_info_master`
--

CREATE TABLE `website_blog_info_master` (
  `wbim_id` int(11) NOT NULL,
  `wbim_category_id` int(11) NOT NULL,
  `wbim_status` tinyint(4) NOT NULL,
  `wbim_title` text NOT NULL,
  `wbim_image` text NOT NULL,
  `wbim_content` longtext NOT NULL,
  `wbim_created_at` datetime NOT NULL,
  `wbim_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnostics_lab_tests_master`
--
ALTER TABLE `diagnostics_lab_tests_master`
  ADD PRIMARY KEY (`dltm_id`),
  ADD UNIQUE KEY `dltm` (`dltm_diagnostic_id`,`dltm_name`);

--
-- Indexes for table `doctor_consulation_timings`
--
ALTER TABLE `doctor_consulation_timings`
  ADD PRIMARY KEY (`dct_id`),
  ADD UNIQUE KEY `dct` (`dct_doctor_id`,`dct_date`,`dct_time`);

--
-- Indexes for table `location_countries_master`
--
ALTER TABLE `location_countries_master`
  ADD PRIMARY KEY (`lcm_id`),
  ADD UNIQUE KEY `lcm` (`lcm_name`);

--
-- Indexes for table `location_districts_master`
--
ALTER TABLE `location_districts_master`
  ADD PRIMARY KEY (`ldm_id`),
  ADD UNIQUE KEY `ldm` (`ldm_state_id`,`ldm_name`);

--
-- Indexes for table `location_states_master`
--
ALTER TABLE `location_states_master`
  ADD PRIMARY KEY (`lsm_id`),
  ADD UNIQUE KEY `lsm` (`lsm_country_id`,`lsm_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`r_id`),
  ADD UNIQUE KEY `r` (`r_name`);

--
-- Indexes for table `roles_based_categories_master`
--
ALTER TABLE `roles_based_categories_master`
  ADD PRIMARY KEY (`rbcm_id`),
  ADD UNIQUE KEY `rbcm` (`rbcm_role_id`,`rbcm_name`);

--
-- Indexes for table `tbl_pharmacy_products`
--
ALTER TABLE `tbl_pharmacy_products`
  ADD PRIMARY KEY (`tpp_id`),
  ADD UNIQUE KEY `tpp` (`tpp_pharmacy_id`,`tpp_name`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `users_basic_information_tbl`
--
ALTER TABLE `users_basic_information_tbl`
  ADD PRIMARY KEY (`ubit_id`),
  ADD UNIQUE KEY `ubit` (`ubit_email`);

--
-- Indexes for table `users_cart_master`
--
ALTER TABLE `users_cart_master`
  ADD PRIMARY KEY (`ucm_id`),
  ADD UNIQUE KEY `ucm` (`ucm_userid`,`ucm_role_id`,`ucm_item_id`);

--
-- Indexes for table `users_consultation_timings`
--
ALTER TABLE `users_consultation_timings`
  ADD PRIMARY KEY (`uct_id`);

--
-- Indexes for table `users_delivery_addresses_information`
--
ALTER TABLE `users_delivery_addresses_information`
  ADD PRIMARY KEY (`udai_id`);

--
-- Indexes for table `users_orders_information_master`
--
ALTER TABLE `users_orders_information_master`
  ADD PRIMARY KEY (`uoim_id`);

--
-- Indexes for table `users_order_based_products`
--
ALTER TABLE `users_order_based_products`
  ADD PRIMARY KEY (`uobp_id`);

--
-- Indexes for table `users_reviews_master`
--
ALTER TABLE `users_reviews_master`
  ADD PRIMARY KEY (`urm_id`);

--
-- Indexes for table `website_blog_categories`
--
ALTER TABLE `website_blog_categories`
  ADD PRIMARY KEY (`wbc_id`);

--
-- Indexes for table `website_blog_info_master`
--
ALTER TABLE `website_blog_info_master`
  ADD PRIMARY KEY (`wbim_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnostics_lab_tests_master`
--
ALTER TABLE `diagnostics_lab_tests_master`
  MODIFY `dltm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctor_consulation_timings`
--
ALTER TABLE `doctor_consulation_timings`
  MODIFY `dct_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `location_countries_master`
--
ALTER TABLE `location_countries_master`
  MODIFY `lcm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `location_districts_master`
--
ALTER TABLE `location_districts_master`
  MODIFY `ldm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `location_states_master`
--
ALTER TABLE `location_states_master`
  MODIFY `lsm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles_based_categories_master`
--
ALTER TABLE `roles_based_categories_master`
  MODIFY `rbcm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_pharmacy_products`
--
ALTER TABLE `tbl_pharmacy_products`
  MODIFY `tpp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_basic_information_tbl`
--
ALTER TABLE `users_basic_information_tbl`
  MODIFY `ubit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users_cart_master`
--
ALTER TABLE `users_cart_master`
  MODIFY `ucm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_consultation_timings`
--
ALTER TABLE `users_consultation_timings`
  MODIFY `uct_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_delivery_addresses_information`
--
ALTER TABLE `users_delivery_addresses_information`
  MODIFY `udai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_orders_information_master`
--
ALTER TABLE `users_orders_information_master`
  MODIFY `uoim_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_order_based_products`
--
ALTER TABLE `users_order_based_products`
  MODIFY `uobp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_reviews_master`
--
ALTER TABLE `users_reviews_master`
  MODIFY `urm_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `website_blog_categories`
--
ALTER TABLE `website_blog_categories`
  MODIFY `wbc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `website_blog_info_master`
--
ALTER TABLE `website_blog_info_master`
  MODIFY `wbim_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

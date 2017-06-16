-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2017 at 01:49 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` text NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `name`, `img`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Kiến trúc sư 1', '8-1456247187045.jpg', '<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">I&#39;m a paragraph. Click here to add your own text and edit me. It&rsquo;s easy. Just click &ldquo;Edit Text&rdquo; or double click me and you can start adding your own content and make changes to the font. Feel free to drag and drop me anywhere you like on your page. I&rsquo;m a great place for you to tell a story and let your users know a little more about you. ​</span></p>\r\n', '2016-09-10 14:58:52', '2016-09-10 14:58:52'),
(2, 'Kiến trúc sư 2', '1508053_687656527955686_4181871406931048822_n.jpg', '<p>\r\n	<span style="color:#000000;"><span style="font-size:16px;"><span style="font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; line-height: 28.5714px;">I&#39;m a testimonial. Click to edit me and add text that says something nice about you and your services</span></span></span></p>\r\n', '2016-09-10 16:49:26', '2016-09-10 16:49:26');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `mess` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `mess`, `created_at`, `updated_at`) VALUES
(1, '123', '12312', '3123', '123123', '2016-08-28 13:31:57', '2016-08-28 13:31:57');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `img`, `created_at`, `updated_at`) VALUES
(1, '14384171_1266938700004239_1213393594_n.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '14384171_1266938700004239_1213393594_n.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'c10973a2554dcebd540db0bd62066c62.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` int(11) NOT NULL,
  `logo` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'altmetric-logo.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menues`
--

CREATE TABLE `menues` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `url` text NOT NULL,
  `sub_menu` varchar(255) NOT NULL DEFAULT '0',
  `img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `action` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menues`
--

INSERT INTO `menues` (`id`, `name`, `slug`, `url`, `sub_menu`, `img`, `content`, `action`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', '', '', 'null', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Giới Thiệu', 'gioi-thieu', 'gioi-thieu', 'null', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Xây dựng', 'xay-dung', 'xay-dung', 'null', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Kinh Doanh', 'kinh-doanh', 'kinh-doanh', 'null', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Bộ Sưu Tập', 'bo-suu-tap', 'bo-suu-tap', 'null', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Dịch Vụ', 'dich-vu', 'dich-vu', 'null', '', '', 1, '2017-06-14 22:56:17', '2017-06-14 22:56:17'),
(7, 'Thiết Kế Kiến Trúc', 'thiet-ke-kien-truc', 'thiet-ke-kien-truc', 'dich-vu', 'house-layout-600x461.jpeg', 'Thiết Kế Kiến Trúc', 1, '2017-06-14 23:37:01', '2017-06-14 23:37:01'),
(8, 'Dự Án', 'du-an', 'du-an', '0', ' ', NULL, 1, '2017-06-15 00:01:40', '2017-06-15 00:01:40'),
(9, 'Tin Tức', 'tin-tuc', 'tin-tuc', '0', ' ', NULL, 1, '2017-06-15 00:02:26', '2017-06-15 00:02:26'),
(10, 'Đối Tác', 'doi-tac', 'doi-tac', '0', ' ', NULL, 1, '2017-06-15 00:02:47', '2017-06-15 00:02:47'),
(11, 'Nước', 'nuoc', 'nuoc', 'kinh-doanh', 'Layer 17.png', NULL, 1, '2017-06-15 00:04:01', '2017-06-15 00:04:01'),
(12, 'cong ty adidas', 'cong-ty-adidas', 'cong-ty-adidas', 'doi-tac', 'download.png', 'cong ty adidas', 1, '2017-06-15 00:13:27', '2017-06-15 00:13:27'),
(13, 'Weland', 'weland.vn', 'weland.vn', 'doi-tac', '30c302_2ff38f43cc20469da6efd33b3e25a74f-mv2.png', NULL, 1, '2017-06-15 00:18:58', '2017-06-15 00:18:58'),
(14, 'Dự Án Vinhome Center', 'du-an-vinhome-center', 'du-an-vinhome-center', 'du-an', '-10-mau-can-ho-60m-2-phong-ngu-co-thiet-ke-cuc-hop-voi-thoi-quen-sinh-hoat-o-viet-nam--1.png', 'Dự Án Vinhome Center', 1, '2017-06-15 22:15:37', '2017-06-15 22:15:37'),
(15, 'Sơn Nước', 'son-nuoc', 'son-nuoc', 'kinh-doanh', 'Layer 18.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam velit quisquam veniam excepturi temporibus inventore corporis dicta sit culpa veritatis placeat earum,', 1, '2017-06-15 22:17:42', '2017-06-15 22:17:42'),
(16, 'Điện', 'dien', 'dien', 'kinh-doanh', 'Layer 16.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam velit quisquam veniam excepturi temporibus inventore corporis dicta sit culpa veritatis placeat earum,', 1, '2017-06-15 22:17:58', '2017-06-15 22:17:58'),
(17, 'Thiết bị vệ sinh', 'thiet-bi-ve-sinh', 'thiet-bi-ve-sinh', 'kinh-doanh', 'Layer 19.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam velit quisquam veniam excepturi temporibus inventore corporis dicta sit culpa veritatis placeat earum,', 1, '2017-06-15 22:18:24', '2017-06-15 22:18:24'),
(18, 'Đèn trang trí', 'den-trang-tri', 'den-trang-tri', 'kinh-doanh', 'Layer 15.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam velit quisquam veniam excepturi temporibus inventore corporis dicta sit culpa veritatis placeat earum,', 1, '2017-06-15 22:18:45', '2017-06-15 22:18:45'),
(19, 'Liên Hệ', 'lien-he', 'lien-he', '0', NULL, 'Liên Hệ', 0, '2017-06-15 23:03:23', '2017-06-15 23:03:23'),
(21, 'Công ty alias', 'cong-ty-alias', 'cong-ty-alias', 'doi-tac', 'altmetric-logo.png', 'Công ty alias', 1, '2017-06-15 23:44:08', '2017-06-15 23:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `slug` text NOT NULL,
  `summary` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `catelogy` text NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `summary`, `catelogy`, `content`, `images`, `address`, `created_at`, `updated_at`) VALUES
(18, 'Tuyển dụng Chuyên viên Kinh doanh', 'tuyen-dung-chuyen-vien-kinh-doanh', 'Click để biết thêm chi tiết', 'tin-tuc', '<div>\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>TH&Ocirc;NG B&Aacute;O TUYỂN DỤNG</strong></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<strong>VỊ TR&Iacute;: CHUY&Ecirc;N VI&Ecirc;N KINH DOANH (KH&Ocirc;NG Y/C KINH NGHIỆM)</strong></div>\r\n<div>\r\n	<strong>LĨNH VỰC: CHO THU&Ecirc; VĂN PH&Ograve;NG&amp;CĂN HỘ</strong></div>\r\n<div>\r\n	<strong>Số lượng cần tuyển: 5 người</strong></div>\r\n<div>\r\n	<strong>Bằng cấp: Cao đẳng trở l&ecirc;n</strong></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<strong>M&Ocirc; TẢ C&Ocirc;NG VIỆC</strong></div>\r\n<div>\r\n	- Sản phẩm: Văn ph&ograve;ng, căn hộ mini, chung cư</div>\r\n<div>\r\n	- Mục đ&iacute;ch: Cho thu&ecirc; để kinh doanh, l&agrave;m văn ph&ograve;ng l&agrave;m việc hoặc để ở</div>\r\n<div>\r\n	- Cập nhật thường xuy&ecirc;n th&ocirc;ng tin về sản phẩm của WELANDS;</div>\r\n<div>\r\n	- Triển khai kế hoạch b&aacute;n h&agrave;ng theo sự ph&acirc;n phối của trưởng nh&oacute;m;</div>\r\n<div>\r\n	- Marketing, quảng c&aacute;o c&aacute;c sản phẩm qua c&aacute;c k&ecirc;nh: websize, b&aacute;o giấy, mạng x&atilde; hội, &hellip;</div>\r\n<div>\r\n	- Tư vấn, giới thiệu, cung cấp sản phẩm đến c&aacute;c đối tượng kh&aacute;ch h&agrave;ng;</div>\r\n<div>\r\n	- Chăm s&oacute;c, duy tr&igrave; mối quan hệ với kh&aacute;ch h&agrave;ng hiện c&oacute; v&agrave; ph&aacute;t triển kh&aacute;ch h&agrave;ng mục ti&ecirc;u nhằm duy tr&igrave; lượng kh&aacute;ch h&agrave;ng ổn định;</div>\r\n<div>\r\n	- Giao dịch, lưu trữ &amp; b&aacute;o c&aacute;o th&ocirc;ng tin kh&aacute;ch h&agrave;ng cho Trưởng nh&oacute;m</div>\r\n<div>\r\n	- L&agrave;m việc theo đội nh&oacute;m.</div>\r\n<div>\r\n	- C&aacute;c c&ocirc;ng việc kh&aacute;c theo sự ph&acirc;n c&ocirc;ng của cấp tr&ecirc;n</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<strong>QUYỀN LỢI ĐƯỢC HƯỞNG</strong></div>\r\n<div>\r\n	- Thu nhập tốt, kh&ocirc;ng giới hạn, gồm: Lương cứng từ 4 triệu đến 10 triệu/ th&aacute;ng + Hoa hồng theo doanh số cao;</div>\r\n<div>\r\n	- Phụ cấp 500 000đ/th&aacute;ng, Thưởng n&oacute;ng, đột xuất&hellip; ;</div>\r\n<div>\r\n	- Được k&yacute; HĐLĐ, tham gia BHXH, BHYT, nghỉ ph&eacute;p, lễ, tết theo QĐ NN;</div>\r\n<div>\r\n	- Được thưởng th&aacute;ng lương 13;</div>\r\n<div>\r\n	- Được đ&agrave;o tạo kỹ năng chuy&ecirc;n m&ocirc;n, tham gia c&aacute;c kh&oacute;a đ&agrave;o tạo kỹ năng, đ&agrave;o tạo n&acirc;ng cao.C&oacute; cơ hội thăng tiến trong nghề nghiệp;</div>\r\n<div>\r\n	- C&aacute;c ch&iacute;nh s&aacute;ch ph&uacute;c lợi kh&aacute;c; Thưởng tết, lễ, sinh nhật, cưới hỏi, du lịch h&agrave;ng năm...</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<strong>Y&Ecirc;U CẦU CHUNG</strong></div>\r\n<div>\r\n	- Ưu ti&ecirc;n Ứng vi&ecirc;n biết giao tiếp TIẾNG ANH</div>\r\n<div>\r\n	- Mong muốn l&agrave;m việc trong m&ocirc;i trường năng động, chuy&ecirc;n nghiệp, v&agrave; gắn b&oacute; l&acirc;u d&agrave;i với c&ocirc;ng ty</div>\r\n<div>\r\n	- Tốt nghiệp từ CĐ trở l&ecirc;n, đam m&ecirc; v&agrave; y&ecirc;u th&iacute;ch c&ocirc;ng việc kinh doanh;</div>\r\n<div>\r\n	- C&oacute; khả năng giao tiếp tốt, tự tin, năng động v&agrave; l&agrave;m việc độc lập, biết tạo lập v&agrave; duy tr&igrave; mối quan hệ;</div>\r\n<div>\r\n	- C&oacute; điện thoại, xe m&aacute;y, laptop;</div>\r\n<div>\r\n	- Ứng vi&ecirc;n chưa c&oacute; kinh nghiệm sẽ được đ&agrave;o tạo.</div>\r\n<div>\r\n	- Hồ sơ: CV, bản chụp Bằng cấp - Gửi trước v&agrave;o email để được sắp xếp lịch phỏng vấn</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	TH&Ocirc;NG TIN ĐƠN VỊ TUYỂN DỤNG:</div>\r\n<div style="text-align: center;">\r\n	C&Ocirc;NG TY TNHH ĐẦU TƯ KINH DOANH ĐỊA ỐC WELANDS</div>\r\n<div style="text-align: center;">\r\n	VP Giao dịch: Tầng 46, t&ograve;a nh&agrave; BITEXCO FINANCIAL, số 2 Hải Triều, P.Bến Ngh&eacute;, Q.1</div>\r\n<div style="text-align: center;">\r\n	-<span class="Apple-tab-span" style="white-space:pre"> </span>PHỤ TR&Aacute;CH TUYỂN DỤNG: MRS NGỌC</div>\r\n<div style="text-align: center;">\r\n	-<span class="Apple-tab-span" style="white-space:pre"> </span>ĐIỆN THOẠI: 0938722989</div>\r\n<div style="text-align: center;">\r\n	-<span class="Apple-tab-span" style="white-space:pre"> </span>ĐỊA CHỈ LI&Ecirc;N HỆ: SỐ 60 C&Ugrave; LAO, P2, Q PH&Uacute; NHUẬN</div>\r\n<div style="text-align: center;">\r\n	-<span class="Apple-tab-span" style="white-space:pre"> </span>EMAIL LI&Ecirc;N HỆ: TUYENDUNG@WELANDS.VN</div>\r\n<div style="text-align: center;">\r\n	-<span class="Apple-tab-span" style="white-space:pre"> </span>WEBSITE: WELANDS.VN&nbsp;</div>', '["1.jpg"]', '', '2016-09-17 05:44:23', '2016-09-17 05:44:23'),
(21, 'Căn hộ dịch vụ số 06 Trà Khúc, Quận Tân Bình', 'can-ho-dich-vu-so-06-tra-khuc-quan-tan-binh', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam velit quisquam veniam excepturi temporibus inventore corporis dicta sit culpa veritatis placeat earum,', 'tin-tuc', '<h4 style="box-sizing: border-box; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 10px; margin-bottom: 10px; font-size: 18px;">\r\n	Tuyển dụng Nh&acirc;n vi&ecirc;n Kinh doanh</h4>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	&nbsp;</p>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	&nbsp;</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center;">\r\n	<strong style="box-sizing: border-box;">TH&Ocirc;NG B&Aacute;O TUYỂN DỤNG</strong></div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	&nbsp;</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	<strong style="box-sizing: border-box;">VỊ TR&Iacute;: NH&Acirc;N VI&Ecirc;N KINH DOANH (KH&Ocirc;NG Y/C KINH NGHIỆM)</strong></div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	<strong style="box-sizing: border-box;">LĨNH VỰC: CHO THU&Ecirc; VĂN PH&Ograve;NG&amp;CĂN HỘ</strong></div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	<strong style="box-sizing: border-box;">Số lượng cần tuyển: 5 người</strong></div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	<strong style="box-sizing: border-box;">Bằng cấp: Cao đẳng trở l&ecirc;n</strong></div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	&nbsp;</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	<strong style="box-sizing: border-box;">M&Ocirc; TẢ C&Ocirc;NG VIỆC</strong></div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- Sản phẩm: Văn ph&ograve;ng, căn hộ mini, chung cư</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- Mục đ&iacute;ch: Cho thu&ecirc; để kinh doanh, l&agrave;m văn ph&ograve;ng l&agrave;m việc hoặc để ở</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- Cập nhật thường xuy&ecirc;n th&ocirc;ng tin về sản phẩm của WELANDS;</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- Triển khai kế hoạch b&aacute;n h&agrave;ng theo sự ph&acirc;n phối của trưởng nh&oacute;m;</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- Marketing, quảng c&aacute;o c&aacute;c sản phẩm qua c&aacute;c k&ecirc;nh: websize, b&aacute;o giấy, mạng x&atilde; hội, &hellip;</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- Tư vấn, giới thiệu, cung cấp sản phẩm đến c&aacute;c đối tượng kh&aacute;ch h&agrave;ng;</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- Chăm s&oacute;c, duy tr&igrave; mối quan hệ với kh&aacute;ch h&agrave;ng hiện c&oacute; v&agrave; ph&aacute;t triển kh&aacute;ch h&agrave;ng mục ti&ecirc;u nhằm duy tr&igrave; lượng kh&aacute;ch h&agrave;ng ổn định;</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- Giao dịch, lưu trữ &amp; b&aacute;o c&aacute;o th&ocirc;ng tin kh&aacute;ch h&agrave;ng cho Trưởng nh&oacute;m</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- L&agrave;m việc theo đội nh&oacute;m.</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- C&aacute;c c&ocirc;ng việc kh&aacute;c theo sự ph&acirc;n c&ocirc;ng của cấp tr&ecirc;n</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	&nbsp;</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	<strong style="box-sizing: border-box;">QUYỀN LỢI ĐƯỢC HƯỞNG</strong></div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- Thu nhập tốt, kh&ocirc;ng giới hạn, gồm: Lương cứng từ 4 triệu đến 10 triệu/ th&aacute;ng + Hoa hồng theo doanh số cao;</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- Phụ cấp 500 000đ/th&aacute;ng, Thưởng n&oacute;ng, đột xuất&hellip; ;</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- Được k&yacute; HĐLĐ, tham gia BHXH, BHYT, nghỉ ph&eacute;p, lễ, tết theo QĐ NN;</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- Được thưởng th&aacute;ng lương 13;</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- Được đ&agrave;o tạo kỹ năng chuy&ecirc;n m&ocirc;n, tham gia c&aacute;c kh&oacute;a đ&agrave;o tạo kỹ năng, đ&agrave;o tạo n&acirc;ng cao.C&oacute; cơ hội thăng tiến trong nghề nghiệp;</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- C&aacute;c ch&iacute;nh s&aacute;ch ph&uacute;c lợi kh&aacute;c; Thưởng tết, lễ, sinh nhật, cưới hỏi, du lịch h&agrave;ng năm...</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	&nbsp;</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	<strong style="box-sizing: border-box;">Y&Ecirc;U CẦU CHUNG</strong></div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- Ưu ti&ecirc;n Ứng vi&ecirc;n biết giao tiếp TIẾNG ANH</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- Mong muốn l&agrave;m việc trong m&ocirc;i trường năng động, chuy&ecirc;n nghiệp, v&agrave; gắn b&oacute; l&acirc;u d&agrave;i với c&ocirc;ng ty</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- Tốt nghiệp từ CĐ trở l&ecirc;n, đam m&ecirc; v&agrave; y&ecirc;u th&iacute;ch c&ocirc;ng việc kinh doanh;</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- C&oacute; khả năng giao tiếp tốt, tự tin, năng động v&agrave; l&agrave;m việc độc lập, biết tạo lập v&agrave; duy tr&igrave; mối quan hệ;</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- C&oacute; điện thoại, xe m&aacute;y, laptop;</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- Ứng vi&ecirc;n chưa c&oacute; kinh nghiệm sẽ được đ&agrave;o tạo.</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	- Hồ sơ: CV, bản chụp Bằng cấp - Gửi trước v&agrave;o email để được sắp xếp lịch phỏng vấn</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n	&nbsp;</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center;">\r\n	TH&Ocirc;NG TIN ĐƠN VỊ TUYỂN DỤNG:</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center;">\r\n	C&Ocirc;NG TY TNHH ĐẦU TƯ KINH DOANH ĐỊA ỐC WELANDS</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center;">\r\n	VP Giao dịch: Tầng 46, t&ograve;a nh&agrave; BITEXCO FINANCIAL, số 2 Hải Triều, P.Bến Ngh&eacute;, Q.1</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center;">\r\n	-<span class="Apple-tab-span" style="box-sizing: border-box; white-space: pre;"> </span>PHỤ TR&Aacute;CH TUYỂN DỤNG: MRS NGỌC</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center;">\r\n	-<span class="Apple-tab-span" style="box-sizing: border-box; white-space: pre;"> </span>ĐIỆN THOẠI: 0938722989</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center;">\r\n	-<span class="Apple-tab-span" style="box-sizing: border-box; white-space: pre;"> </span>ĐỊA CHỈ LI&Ecirc;N HỆ: SỐ 60 C&Ugrave; LAO, P2, Q PH&Uacute; NHUẬN</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center;">\r\n	-<span class="Apple-tab-span" style="box-sizing: border-box; white-space: pre;"> </span>EMAIL LI&Ecirc;N HỆ: TUYENDUNG@WELANDS.VN</div>\r\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center;">\r\n	-<span class="Apple-tab-span" style="box-sizing: border-box; white-space: pre;"> </span>WEBSITE: WELANDS.VN</div>\r\n<p>\r\n	<span style="font-size:12px;"><strong><span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">* Vị trí.&nbsp;</span></strong></span></p>\r\n<p>\r\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Ngay khu s&acirc;n bay, Cắt nhiều tuyến đường l&acirc;n cận như Cửu Long, Tiền Giang, đối diện Super Bowl...rất nhiều văn ph&ograve;ng xung quanh.&nbsp;</span></p>\r\n<p>\r\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Gần chợ v&agrave; si&ecirc;u thị Big C, Maximark, Co.opmart&hellip;.&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Gần bệnh viện, trạm xăng, nh&agrave; văn h&oacute;a, c&ocirc;ng vi&ecirc;n Ho&agrave;ng Văn Thụ, c&ocirc;ng vi&ecirc;n Gia Định.....&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="font-size:12px;"><strong><span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">* N&ocirc;̣i th&acirc;́t.&nbsp;</span></strong></span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Ph&ograve;ng rộng 25 &rarr; 40m2 c&oacute; ban c&ocirc;ng, cửa sổ tho&aacute;ng m&aacute;t, đầy đủ tiện nghi:&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- M&aacute;y lạnh.&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- Tủ lạnh.&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- Giường, nệm.&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- Tủ quần &aacute;o.&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- Bàn làm vi&ecirc;̣c.&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- M&aacute;y Nước n&oacute;ng năng lượng mặt trời.&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- Wifi t&ocirc;́c đ&ocirc;̣ cao</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;"><strong>* Tiện &iacute;ch: </strong></span></p>\r\n<p>\r\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Giờ giấc tự do kh&ocirc;ng chung chủ, được nấu ăn, c&oacute; chỗ để xe miễn ph&iacute;, s&acirc;n phơi r&ocirc;̣ng rãi thoáng mát. Hệ Thống Camera an ninh tuyệt đối.&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;"><strong>*Địa chỉ: </strong>06 Tr&agrave; Kh&uacute;c, Phường 2, Quận T&acirc;n B&igrave;nh (Cắt đường Trường Sơn, cạnh CF Trung Nguy&ecirc;n v&agrave; Phở H&ugrave;ng, đối diện SUPER BOWL)&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<strong><span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Gi&aacute; cho thu&ecirc;: $200-$400</span></strong><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Th&iacute;ch hợp cho Nh&acirc;n vi&ecirc;n văn ph&ograve;ng, Ti&ecirc;́p vi&ecirc;n hàng kh&ocirc;ng, Phi c&ocirc;ng, Gia đ&igrave;nh trẻ v&agrave; Người Nước Ngo&agrave;i Văn minh lịch sự học tập v&agrave; đi l&agrave;m trong khu vực Quận 1, 3, Ph&uacute; Nhuận, T&acirc;n B&igrave;nh, Gò V&acirc;́p&hellip;.&nbsp;</span></p>', '["1.jpg"]', 'số 06 Trà Khúc, Quận Tân Bình', '2016-09-25 18:41:13', '2016-09-25 18:41:13'),
(22, 'Xem "The Mummy" 2017 mà chỉ nhớ đến những gương mặt này!', 'xem-the-mummy-2017-ma-chi-nho-den-nhung-guong-mat-nay', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam velit quisquam veniam excepturi temporibus inventore corporis dicta sit culpa veritatis placeat earum,', 'tin-tuc', '<h2 class="knc-sapo" style="margin: 0px 0px 20px; padding: 5px 0px 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 22px; font-family: SFD-Bold; vertical-align: baseline; position: relative; color: rgb(17, 17, 17);">\r\n	Gần hai thập kỷ kể từ khi phim &quot;The Mummy&quot; c&ocirc;ng chiếu v&agrave;o năm 1999, Brendan Fraser v&agrave; Rachel Weisz lu&ocirc;n khiến cho kh&aacute;n giả kh&oacute; c&oacute; thể qu&ecirc;n được.</h2>\r\n<h2 class="knc-sapo" style="margin: 0px 0px 20px; padding: 5px 0px 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 22px; font-family: SFD-Bold; vertical-align: baseline; position: relative; color: rgb(17, 17, 17);">\r\n	&nbsp;</h2>\r\n<div class="knc-relate-wrapper" style="margin: 0px 0px 15px; padding: 0px 0px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(239, 239, 239); border-left-color: initial; border-image: initial; font-variant-numeric: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0);">\r\n	<ul class="krw-list" style="margin: 0px 0px 0px 20px; padding-right: 0px; padding-left: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none;">\r\n		<li class="krwli" style="margin: 0px 0px 6px -9px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n			<a class="show-popup visit-popup" data-newsid="20170614210347475" data-popup-url="/sau-15-nam-spirited-away-ve-nhi-trong-bxh-phim-dien-anh-cua-the-ky-20170614210347475rf20170615122142303.chn" href="http://kenh14.vn/sau-15-nam-spirited-away-ve-nhi-trong-bxh-phim-dien-anh-cua-the-ky-20170614210347475.chn" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 13px; line-height: 16px; font-family: inherit; vertical-align: baseline; text-decoration-line: none; position: relative; color: rgb(56, 62, 84);" title="Sau 15 năm, Spirited Away về nhì trong BXH phim điện ảnh của thế kỷ">Sau 15 năm, Spirited Away về nh&igrave; trong BXH phim điện ảnh của thế kỷ&nbsp;</a></li>\r\n		<li class="krwli" style="margin: 0px 0px 6px -9px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n			<a c="" canh="" class="show-popup visit-popup" data-newsid="20170615040835194" data-popup-url="/so-kieu-truyen-so-gang-voi-trieu-le-dinh-truoc-khi-ngu-lam-canh-tan-moi-yen-long-20170615040835194rf20170615122142303.chn" href="http://kenh14.vn/so-kieu-truyen-so-gang-voi-trieu-le-dinh-truoc-khi-ngu-lam-canh-tan-moi-yen-long-20170615040835194.chn" i="" khi="" m="" n="" nh="" so="" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 13px; line-height: 16px; font-family: inherit; vertical-align: baseline; text-decoration-line: none; position: relative; color: rgb(56, 62, 84);" title="“Sở Kiều Truyện”: " u="">&ldquo;Sở Kiều Truyện&rdquo;: &quot;So găng&quot; với Triệu Lệ Dĩnh trước khi ngủ, L&acirc;m Canh T&acirc;n mới y&ecirc;n l&ograve;ng!&nbsp;</a></li>\r\n		<li class="krwli" style="margin: 0px 0px 6px -9px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n			<a c="" class="show-popup visit-popup" data-newsid="20170615025030694" data-popup-url="/o-canh-me-chong-quan-trong-van-lai-doi-ngay-chiec-mu-nhan-nhum-kho-ta-20170615025030694rf20170615122142303.chn" href="http://kenh14.vn/o-canh-me-chong-quan-trong-van-lai-doi-ngay-chiec-mu-nhan-nhum-kho-ta-20170615025030694.chn" i="" m="" n="" ngay="" quan="" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 13px; line-height: 16px; font-family: inherit; vertical-align: baseline; text-decoration-line: none; position: relative; color: rgb(56, 62, 84);" title="Ở cảnh ">Ở cảnh &quot;Mẹ chồng&quot; quan trọng, V&acirc;n lại đội ngay chiếc mũ nhăn nh&uacute;m kh&oacute; tả!&nbsp;</a></li>\r\n	</ul>\r\n</div>\r\n<div class="react-relate animated hiding-react-relate" style="margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; animation-duration: 0.5s; animation-fill-mode: both; height: 0px; overflow: hidden; transition: height 0.5s; color: rgb(0, 0, 0);">\r\n	&nbsp;</div>\r\n<div data-check-position="body_start" style="margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0);">\r\n	&nbsp;</div>\r\n<div -webkit-font-smoothing:="" class="knc-content" display:="" new="" position:="" style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 25px; font-family: " times="" vertical-align:="" width:="">\r\n	<p style="margin: 0px 0px 25px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		<span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">The Mummy (1999) của đạo diễn t&agrave;i năng Stephen Sommers kể về h&agrave;nh tr&igrave;nh đi s&acirc;u kh&aacute;m ph&aacute; b&iacute; ẩn nơi c&aacute;c x&aacute;c ướp của một nh&oacute;m người liều lĩnh m&agrave; dẫn đầu l&agrave; ch&agrave;ng cựu qu&acirc;n Richard O&rsquo; Connell th&agrave;nh c&ocirc;ng vang dội khi thu hơn 400 triệu USD. Universal đ&atilde; bật đ&egrave;n xanh để l&agrave;m th&ecirc;m hai phần v&agrave; cả hai phần đều th&agrave;nh c&ocirc;ng về doanh thu.</span></p>\r\n	<div class="VCSortableInPreviewMode" style="margin: 0px auto 30px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: center; width: 620px; box-sizing: border-box;" type="Photo">\r\n		<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n			<a class="detail-img-lightbox" data-fancybox-group="img-lightbox" href="http://kenh14cdn.com/2017/1-1500053143115.jpg" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; box-sizing: border-box; cursor: zoom-in;" target="_blank" title="Brendan Fraser và Rachel Weisz"><img alt="Xem The Mummy 2017 mà chỉ nhớ đến những gương mặt này! - Ảnh 1." class="lightbox-content" data-original="http://kenh14cdn.com/2017/1-1500053143115.jpg" h="1000" height="" id="img_45168980-5183-11e7-95bd-bd8f840be558" photoid="45168980-5183-11e7-95bd-bd8f840be558" rel="lightbox" src="http://kenh14cdn.com/thumb_w/660/2017/1-1500053143115.jpg" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: bottom; color: transparent; box-sizing: border-box; max-width: 100%;" title="Xem The Mummy 2017 mà chỉ nhớ đến những gương mặt này! - Ảnh 1." type="photo" w="1486" width="" /></a></div>\r\n		<div class="PhotoCMS_Caption" style="margin: 0px auto; padding: 10px; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; background: rgb(242, 242, 242); text-align: left; box-sizing: border-box; width: 620px;">\r\n			<p data-placeholder="[nhập chú thích]" style="margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: normal; font-stretch: normal; font-size: 14px; line-height: 18px; font-family: SFD-Medium; vertical-align: baseline; box-sizing: border-box; color: rgb(102, 102, 102); -webkit-font-smoothing: subpixel-antialiased; margin-bottom: 0px !important;">\r\n				Brendan Fraser v&agrave; Rachel Weisz</p>\r\n		</div>\r\n	</div>\r\n	<p style="margin: 0px 0px 25px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		Bộ phim l&agrave;m lại về x&aacute;c ướp vừa c&ocirc;ng chiếu của t&agrave;i tử Tom Cruise đ&atilde; kh&ocirc;ng được l&ograve;ng của giới ph&ecirc; b&igrave;nh to&agrave;n cầu. Đa số cho rằng nhược điểm l&agrave; ở diễn xuất khi c&aacute;c diễn vi&ecirc;n ch&iacute;nh kh&ocirc;ng để lại ấn tượng như những người đi trước. C&ograve;n dịp n&agrave;o tốt hơn để ch&uacute;ng ta nh&igrave;n lại sự nghiệp của c&aacute;c diễn vi&ecirc;n đ&aacute;ng mến năm n&agrave;o.</p>\r\n	<div class="VCSortableInPreviewMode" style="margin: 0px auto 30px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: center; width: 620px; box-sizing: border-box;" type="Photo">\r\n		<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n			<a class="detail-img-lightbox" data-fancybox-group="img-lightbox" href="http://kenh14cdn.com/2017/2-1500053143118.jpg" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; box-sizing: border-box; cursor: zoom-in;" target="_blank" title="Tom Cruise và Annabelle Wallis"><img alt="Xem The Mummy 2017 mà chỉ nhớ đến những gương mặt này! - Ảnh 2." class="lightbox-content" data-original="http://kenh14cdn.com/2017/2-1500053143118.jpg" h="999" height="" id="img_48d56640-5183-11e7-8321-7fd00d9a8fc8" photoid="48d56640-5183-11e7-8321-7fd00d9a8fc8" rel="lightbox" src="http://kenh14cdn.com/thumb_w/660/2017/2-1500053143118.jpg" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: bottom; color: transparent; box-sizing: border-box; max-width: 100%;" title="Xem The Mummy 2017 mà chỉ nhớ đến những gương mặt này! - Ảnh 2." type="photo" w="1500" width="" /></a></div>\r\n		<div class="PhotoCMS_Caption" style="margin: 0px auto; padding: 10px; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; background: rgb(242, 242, 242); text-align: left; box-sizing: border-box; width: 620px;">\r\n			<p data-placeholder="[nhập chú thích]" style="margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: normal; font-stretch: normal; font-size: 14px; line-height: 18px; font-family: SFD-Medium; vertical-align: baseline; box-sizing: border-box; color: rgb(102, 102, 102); -webkit-font-smoothing: subpixel-antialiased; margin-bottom: 0px !important;">\r\n				Tom Cruise v&agrave; Annabelle Wallis</p>\r\n		</div>\r\n	</div>\r\n	<p style="margin: 0px 0px 25px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		<b style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">Brendan Fraser</b></p>\r\n	<p style="margin: 0px 0px 25px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		Brendan Fraser sinh v&agrave;o ng&agrave;y 03/12/1968 ở Indianapolis, Indiana, Mỹ trong một gia đ&igrave;nh kh&ocirc;ng c&oacute; truyền thống nghệ thuật khi mẹ của anh l&agrave; một nh&acirc;n vi&ecirc;n kinh doanh, trong khi bố l&agrave;m nghề hướng dẫn vi&ecirc;n du lịch. Gia đ&igrave;nh của Brendan Fraser thường thay đổi nơi sống, từ Ottawa, Indianapolis, Detroit, Seattle hay cả London v&agrave; Rome. Trong kỳ nghỉ ở London, Brendan Fraser đ&atilde; tham gia một vở diễn chuy&ecirc;n nghiệp ở Nh&agrave; h&aacute;t West End. Nhận thấy bản th&acirc;n c&oacute; niềm đam m&ecirc; diễn xuất, Brendan Fraser theo học trường Cornish College of the Arts.</p>\r\n	<div class="VCSortableInPreviewMode noCaption big-image-detail" style="margin: 0px auto 30px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: center; width: 620px; box-sizing: border-box;" type="Photo">\r\n		<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n			<a class="detail-img-lightbox" data-fancybox-group="img-lightbox" href="http://kenh14cdn.com/2017/3-1500053143119.jpg" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; box-sizing: border-box; cursor: zoom-in;" target="_blank" title=""><img alt="Xem The Mummy 2017 mà chỉ nhớ đến những gương mặt này! - Ảnh 3." class="lightbox-content" data-original="http://kenh14cdn.com/2017/3-1500053143119.jpg" h="695" height="" id="img_492fbb40-5183-11e7-9c1f-8dc5e204690b" photoid="492fbb40-5183-11e7-9c1f-8dc5e204690b" rel="lightbox" src="http://kenh14cdn.com/2017/3-1500053143119.jpg" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: bottom; color: transparent; box-sizing: border-box; max-width: 100%; width: 500px; height: auto;" title="Xem The Mummy 2017 mà chỉ nhớ đến những gương mặt này! - Ảnh 3." type="photo" w="500" width="" /></a></div>\r\n	</div>\r\n	<p style="margin: 0px 0px 25px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		Sau khi tốt nghiệp một trường nghệ thuật c&oacute; tiếng, Brendan Fraser dễ d&agrave;ng nhận được một số vai nhỏ trong Dogfight (1991), Encino Man (1992) v&agrave; School Ties (1992). Hơn nửa thập kỷ chỉ được mời đ&oacute;ng vai phụ, Brendan Fraser cũng đ&atilde; c&oacute; vai ch&iacute;nh đầu ti&ecirc;n trong phim h&agrave;nh động phi&ecirc;u lưu George of the Jungle (1997). Vai diễn ch&agrave;ng George trưởng th&agrave;nh trong khu rừng gi&agrave; được đ&aacute;nh gi&aacute; l&agrave; d&agrave;nh ri&ecirc;ng cho ch&iacute;nh Brendan Fraser khi tạo cơ hội kh&ocirc;ng thể tốt hơn để anh khoe h&igrave;nh thể rắn chắc c&ugrave;ng lối diễn h&agrave;i hước.</p>\r\n	<div class="VCSortableInPreviewMode big-image-detail" style="margin: 0px auto 30px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: center; width: 620px; box-sizing: border-box;" type="Photo">\r\n		<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n			<a class="detail-img-lightbox" data-fancybox-group="img-lightbox" href="http://kenh14cdn.com/2017/4-1500053143121.jpg" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; box-sizing: border-box; cursor: zoom-in;" target="_blank" title="Những vai diễn thành công sau này của Brendan Fraser thường là những nhân vật mạnh mẽ mà hài hước"><img alt="Xem The Mummy 2017 mà chỉ nhớ đến những gương mặt này! - Ảnh 4." class="lightbox-content" data-original="http://kenh14cdn.com/2017/4-1500053143121.jpg" h="800" height="" id="img_49913c30-5183-11e7-92d7-01694b0ce4e9" photoid="49913c30-5183-11e7-92d7-01694b0ce4e9" rel="lightbox" src="http://kenh14cdn.com/2017/4-1500053143121.jpg" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: bottom; color: transparent; box-sizing: border-box; max-width: 100%; width: 500px; height: auto;" title="Xem The Mummy 2017 mà chỉ nhớ đến những gương mặt này! - Ảnh 4." type="photo" w="525" width="" /></a></div>\r\n		<div class="PhotoCMS_Caption" style="margin: 0px auto; padding: 10px; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; background: rgb(242, 242, 242); text-align: left; box-sizing: border-box; width: 525px;">\r\n			<p data-placeholder="[nhập chú thích]" style="margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: normal; font-stretch: normal; font-size: 14px; line-height: 18px; font-family: SFD-Medium; vertical-align: baseline; box-sizing: border-box; color: rgb(102, 102, 102); -webkit-font-smoothing: subpixel-antialiased; margin-bottom: 0px !important;">\r\n				Những vai diễn th&agrave;nh c&ocirc;ng sau n&agrave;y của Brendan Fraser thường l&agrave; những nh&acirc;n vật mạnh mẽ m&agrave; h&agrave;i hước</p>\r\n		</div>\r\n	</div>\r\n	<p style="margin: 0px 0px 25px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		Brendan Fraser vốn đ&atilde; l&agrave; diễn vi&ecirc;n c&oacute; tiếng tăm, nhưng nam t&agrave;i tử sinh năm 1968 chỉ ch&iacute;nh thức trở th&agrave;nh sao lớn khi The Mummy (1999) c&ocirc;ng chiếu. Bộ phim th&agrave;nh c&ocirc;ng về doanh thu lẫn chất lượng v&agrave; được bật đ&egrave;n xanh ra th&ecirc;m hai phần nữa. Trong loạt phim nổi tiếng về chủ đề x&aacute;c ướp, Brendan Fraser h&oacute;a th&acirc;n th&agrave;nh nam ch&iacute;nh Richard O&rsquo; Connell. Đ&acirc;y l&agrave; nh&agrave; th&aacute;m hiểm c&oacute; gốc l&agrave; qu&acirc;n nh&acirc;n, người ban đầu chỉ nghĩ đến tiền v&agrave; bản th&acirc;n, nhưng sau đ&atilde; gi&uacute;p nh&acirc;n loại ti&ecirc;u diệt g&atilde; Imhotep.</p>\r\n	<div class="VCSortableInPreviewMode noCaption" style="margin: 0px auto 30px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: center; width: 620px; box-sizing: border-box;" type="Photo">\r\n		<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n			<a class="detail-img-lightbox" data-fancybox-group="img-lightbox" href="http://kenh14cdn.com/2017/5-1500053143122.jpg" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; box-sizing: border-box; cursor: zoom-in;" target="_blank" title=""><img alt="Xem The Mummy 2017 mà chỉ nhớ đến những gương mặt này! - Ảnh 5." class="lightbox-content" data-original="http://kenh14cdn.com/2017/5-1500053143122.jpg" h="1000" height="" id="img_49c45a20-5183-11e7-95bd-bd8f840be558" photoid="49c45a20-5183-11e7-95bd-bd8f840be558" rel="lightbox" src="http://kenh14cdn.com/thumb_w/660/2017/5-1500053143122.jpg" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: bottom; color: transparent; box-sizing: border-box; max-width: 100%;" title="Xem The Mummy 2017 mà chỉ nhớ đến những gương mặt này! - Ảnh 5." type="photo" w="1486" width="" /></a></div>\r\n	</div>\r\n	<p style="margin: 0px 0px 25px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased;">\r\n		Brendan Fraser g&acirc;y ấn tượng với khả năng diễn xuất tự nhi&ecirc;n, l&ocirc;i cuốn nhưng kh&ocirc;ng k&eacute;m phần h&agrave;i hước. Trong c&aacute;c phần phim sau, khi anh ch&agrave;ng O&rsquo; Connell đ&atilde; th&agrave;nh một người cha, t&agrave;i tử cũng kh&ocirc;ng qu&ecirc;n để nh&acirc;n vật của m&igrave;nh c&oacute; th&ecirc;m ch&uacute;t ch&iacute;n chắn. Vai diễn đ&atilde; mang về cho anh nhiều đề cử m&agrave; nổi bật l&agrave; ở Teen Choice Awards năm 2001. C&oacute; lẽ điều khiến t&agrave;i tử trở n&ecirc;n kh&aacute;c biệt so với Tom Cruise l&agrave;, d&ugrave; c&oacute; l&agrave; người h&ugrave;ng th&igrave; g&atilde; ta cũng phải c&oacute; ch&uacute;t chưa&hellip; trưởng th&agrave;nh.</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>', '["1900130_249877548525129_1692712222_n.jpg","1901128_250428411803376_37862334_n.jpg"]', 'eqw', '2016-10-09 11:41:13', '2016-10-09 11:41:13');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `title_big` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_small` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `title_big`, `title_small`, `img`, `created_at`, `updated_at`) VALUES
(2, '0', '0', '550476_357249321029224_1243037934_n.jpg', '2016-09-10 17:25:34', '2016-09-10 17:25:34'),
(3, '2313', '123123', '936084_764385100290801_3985745580778048732_n.jpg', '2016-09-21 01:37:15', '2016-09-21 01:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE `texts` (
  `id` int(11) NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `texts`
--

INSERT INTO `texts` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, '© 2017 by Duy Tan Co., Ltd.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'link facebook', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'link gmail', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'link twitter', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '“You have been fantastic to work with, quick, responsive, positive and good at sorting out and helping me zero in on the areas I wanted to rent."', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Mr. Phuc Hoang', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Duy Tan was established in February 2010 as a private sector representative organisation in Vietnam. It serves to uphold the interests of its members, as well as the operating standards of the serviced apartments industry.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Although serviced apartments have been in existence for more than 30 years, the industry only came into prominence in early 2000 with the increase in number of companies relocating employees or sending them on extended international assignments.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'More Info', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'More Info', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '“You have been fantastic to work with, quick, responsive, positive and good at sorting out and helping me zero in on the areas I wanted to rent."', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'http://facebook.com/weland.vn', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Duy Tan Co., Ltd', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Số 88 Đường số 3, Khu dân cư Vĩnh Lộc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Phường Bình Hưng Hòa B, Quận Bình Tân, Thành phố Hồ Chí Minh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'info@duytan.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Tel: +84xxxxxxxx', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Fax: +84xxxxxxx', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'welands.vn/serviced-apartments', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'welands.vn/office', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'admin', 'admin@store.com', '$2y$10$Empr0AgSdPcLiLYY1AQU/OKu74.6Dd9IRAXHO0P7fX18b/JBTLGRC', 'WWqg2pw7BO8WjMrd5WqRk0aeCjFYE4OpPeGb2v73erCENQ4hbdpbhihKUyX2', '2016-08-28 21:27:10', '2016-09-12 06:48:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menues`
--
ALTER TABLE `menues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menues`
--
ALTER TABLE `menues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

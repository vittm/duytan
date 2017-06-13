-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2017 at 02:44 AM
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
(3, '30c302_2ff38f43cc20469da6efd33b3e25a74f-mv2.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(1, '30c302_2ff38f43cc20469da6efd33b3e25a74f-mv2.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menues`
--

CREATE TABLE `menues` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `url` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menues`
--

INSERT INTO `menues` (`id`, `name`, `slug`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Home', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'About', 'about', 'about', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '      Serviced Apartments', 'servicedapartments', 'servicedapartments', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, ' Office', 'office', 'office', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Contact', 'contact', 'contact', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `shower` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `room` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `furniture` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `area` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idroom` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `summary`, `catelogy`, `content`, `images`, `price`, `address`, `shower`, `room`, `furniture`, `type`, `area`, `idroom`, `created_at`, `updated_at`) VALUES
(18, 'Tuyển dụng Chuyên viên Kinh doanh', 'tuyen-dung-chuyen-vien-kinh-doanh', '                                                                    Click để biết thêm chi tiết                                                                 ', 'tuyen-dung', '<div>\n	&nbsp;</div>\n<div style="text-align: center;">\n	<strong>TH&Ocirc;NG B&Aacute;O TUYỂN DỤNG</strong></div>\n<div>\n	&nbsp;</div>\n<div>\n	<strong>VỊ TR&Iacute;: CHUY&Ecirc;N VI&Ecirc;N KINH DOANH (KH&Ocirc;NG Y/C KINH NGHIỆM)</strong></div>\n<div>\n	<strong>LĨNH VỰC: CHO THU&Ecirc; VĂN PH&Ograve;NG&amp;CĂN HỘ</strong></div>\n<div>\n	<strong>Số lượng cần tuyển: 5 người</strong></div>\n<div>\n	<strong>Bằng cấp: Cao đẳng trở l&ecirc;n</strong></div>\n<div>\n	&nbsp;</div>\n<div>\n	<strong>M&Ocirc; TẢ C&Ocirc;NG VIỆC</strong></div>\n<div>\n	- Sản phẩm: Văn ph&ograve;ng, căn hộ mini, chung cư</div>\n<div>\n	- Mục đ&iacute;ch: Cho thu&ecirc; để kinh doanh, l&agrave;m văn ph&ograve;ng l&agrave;m việc hoặc để ở</div>\n<div>\n	- Cập nhật thường xuy&ecirc;n th&ocirc;ng tin về sản phẩm của WELANDS;</div>\n<div>\n	- Triển khai kế hoạch b&aacute;n h&agrave;ng theo sự ph&acirc;n phối của trưởng nh&oacute;m;</div>\n<div>\n	- Marketing, quảng c&aacute;o c&aacute;c sản phẩm qua c&aacute;c k&ecirc;nh: websize, b&aacute;o giấy, mạng x&atilde; hội, &hellip;</div>\n<div>\n	- Tư vấn, giới thiệu, cung cấp sản phẩm đến c&aacute;c đối tượng kh&aacute;ch h&agrave;ng;</div>\n<div>\n	- Chăm s&oacute;c, duy tr&igrave; mối quan hệ với kh&aacute;ch h&agrave;ng hiện c&oacute; v&agrave; ph&aacute;t triển kh&aacute;ch h&agrave;ng mục ti&ecirc;u nhằm duy tr&igrave; lượng kh&aacute;ch h&agrave;ng ổn định;</div>\n<div>\n	- Giao dịch, lưu trữ &amp; b&aacute;o c&aacute;o th&ocirc;ng tin kh&aacute;ch h&agrave;ng cho Trưởng nh&oacute;m</div>\n<div>\n	- L&agrave;m việc theo đội nh&oacute;m.</div>\n<div>\n	- C&aacute;c c&ocirc;ng việc kh&aacute;c theo sự ph&acirc;n c&ocirc;ng của cấp tr&ecirc;n</div>\n<div>\n	&nbsp;</div>\n<div>\n	<strong>QUYỀN LỢI ĐƯỢC HƯỞNG</strong></div>\n<div>\n	- Thu nhập tốt, kh&ocirc;ng giới hạn, gồm: Lương cứng từ 4 triệu đến 10 triệu/ th&aacute;ng + Hoa hồng theo doanh số cao;</div>\n<div>\n	- Phụ cấp 500 000đ/th&aacute;ng, Thưởng n&oacute;ng, đột xuất&hellip; ;</div>\n<div>\n	- Được k&yacute; HĐLĐ, tham gia BHXH, BHYT, nghỉ ph&eacute;p, lễ, tết theo QĐ NN;</div>\n<div>\n	- Được thưởng th&aacute;ng lương 13;</div>\n<div>\n	- Được đ&agrave;o tạo kỹ năng chuy&ecirc;n m&ocirc;n, tham gia c&aacute;c kh&oacute;a đ&agrave;o tạo kỹ năng, đ&agrave;o tạo n&acirc;ng cao.C&oacute; cơ hội thăng tiến trong nghề nghiệp;</div>\n<div>\n	- C&aacute;c ch&iacute;nh s&aacute;ch ph&uacute;c lợi kh&aacute;c; Thưởng tết, lễ, sinh nhật, cưới hỏi, du lịch h&agrave;ng năm...</div>\n<div>\n	&nbsp;</div>\n<div>\n	<strong>Y&Ecirc;U CẦU CHUNG</strong></div>\n<div>\n	- Ưu ti&ecirc;n Ứng vi&ecirc;n biết giao tiếp TIẾNG ANH</div>\n<div>\n	- Mong muốn l&agrave;m việc trong m&ocirc;i trường năng động, chuy&ecirc;n nghiệp, v&agrave; gắn b&oacute; l&acirc;u d&agrave;i với c&ocirc;ng ty</div>\n<div>\n	- Tốt nghiệp từ CĐ trở l&ecirc;n, đam m&ecirc; v&agrave; y&ecirc;u th&iacute;ch c&ocirc;ng việc kinh doanh;</div>\n<div>\n	- C&oacute; khả năng giao tiếp tốt, tự tin, năng động v&agrave; l&agrave;m việc độc lập, biết tạo lập v&agrave; duy tr&igrave; mối quan hệ;</div>\n<div>\n	- C&oacute; điện thoại, xe m&aacute;y, laptop;</div>\n<div>\n	- Ứng vi&ecirc;n chưa c&oacute; kinh nghiệm sẽ được đ&agrave;o tạo.</div>\n<div>\n	- Hồ sơ: CV, bản chụp Bằng cấp - Gửi trước v&agrave;o email để được sắp xếp lịch phỏng vấn</div>\n<div>\n	&nbsp;</div>\n<div style="text-align: center;">\n	TH&Ocirc;NG TIN ĐƠN VỊ TUYỂN DỤNG:</div>\n<div style="text-align: center;">\n	C&Ocirc;NG TY TNHH ĐẦU TƯ KINH DOANH ĐỊA ỐC WELANDS</div>\n<div style="text-align: center;">\n	VP Giao dịch: Tầng 46, t&ograve;a nh&agrave; BITEXCO FINANCIAL, số 2 Hải Triều, P.Bến Ngh&eacute;, Q.1</div>\n<div style="text-align: center;">\n	-<span class="Apple-tab-span" style="white-space:pre"> </span>PHỤ TR&Aacute;CH TUYỂN DỤNG: MRS NGỌC</div>\n<div style="text-align: center;">\n	-<span class="Apple-tab-span" style="white-space:pre"> </span>ĐIỆN THOẠI: 0938722989</div>\n<div style="text-align: center;">\n	-<span class="Apple-tab-span" style="white-space:pre"> </span>ĐỊA CHỈ LI&Ecirc;N HỆ: SỐ 60 C&Ugrave; LAO, P2, Q PH&Uacute; NHUẬN</div>\n<div style="text-align: center;">\n	-<span class="Apple-tab-span" style="white-space:pre"> </span>EMAIL LI&Ecirc;N HỆ: TUYENDUNG@WELANDS.VN</div>\n<div style="text-align: center;">\n	-<span class="Apple-tab-span" style="white-space:pre"> </span>WEBSITE: WELANDS.VN&nbsp;</div>\n', '["recrrt2.jpg"]', '', '', '', '', '', '', '', '', '2016-09-17 05:44:23', '2016-09-17 05:44:23'),
(20, 'Tuyển dụng Chuyên viên Tìm kiếm Mặt bằng', 'tuyen-dung-chuyen-vien-tim-kiem-mat-bang', 'Click để biết thêm chi tiết', 'tuyen-dung', '<div style="text-align: center;">\n	<strong>TH&Ocirc;NG B&Aacute;O TUYỂN DỤNG</strong></div>\n<div>\n	&nbsp;</div>\n<div>\n	<strong>VỊ TR&Iacute;: CHUY&Ecirc;N VI&Ecirc;N NGHI&Ecirc;N CỨU THỊ TRƯỜNG NH&Agrave;, VĂN PH&Ograve;NG CHO THU&Ecirc;</strong></div>\n<div>\n	<strong>Số lượng cần tuyển: 3 người</strong></div>\n<div>\n	<strong>Bằng cấp: Cao đẳng trở l&ecirc;n</strong></div>\n<div>\n	&nbsp;</div>\n<div>\n	<strong>M&Ocirc; TẢ C&Ocirc;NG VIỆC</strong></div>\n<div>\n	- Trực tiếp t&igrave;m kiếm, thu thập th&ocirc;ng tin sản phẩm l&agrave; NH&Agrave; PHỐ, T&Ograve;A NH&Agrave;, NH&Agrave; DẠNG CHUNG CƯ MINI d&ugrave;ng để CHO THU&Ecirc;.</div>\n<div>\n	- Trực tiếp khảo s&aacute;t, thẩm định, thương lượng gi&aacute;, đi thực tế&nbsp;</div>\n<div>\n	- Nghi&ecirc;n cứu sản phẩm của c&ocirc;ng ty v&agrave; c&aacute;c đối thủ cạnh tranh kh&aacute;c.</div>\n<div>\n	- Thiết lập l&acirc;u d&agrave;i v&agrave; mở rộng mối quan hệ giữa c&aacute;c chủ đầu tư, đối t&aacute;c, chủ nh&agrave;.</div>\n<div>\n	- Giao dịch, lưu trữ &amp; b&aacute;o c&aacute;o th&ocirc;ng tin kh&aacute;ch h&agrave;ng cho Trưởng nh&oacute;m</div>\n<div>\n	- L&agrave;m việc theo đội nh&oacute;m.</div>\n<div>\n	- C&aacute;c c&ocirc;ng việc kh&aacute;c theo sự ph&acirc;n c&ocirc;ng của cấp tr&ecirc;n</div>\n<div>\n	&nbsp;</div>\n<div>\n	<strong>QUYỀN LỢI ĐƯỢC HƯỞNG</strong></div>\n<div>\n	- Thu nhập tốt, kh&ocirc;ng giới hạn, gồm: Lương cứng từ 4 triệu đến 10 triệu/ th&aacute;ng + Hoa hồng 50% gi&aacute; trị thu&ecirc;;</div>\n<div>\n	- Phụ cấp 500 000đ/th&aacute;ng, Thưởng n&oacute;ng, đột xuất&hellip; ;</div>\n<div>\n	- Được k&yacute; HĐLĐ, tham gia BHXH, BHYT, nghỉ ph&eacute;p, lễ, tết theo QĐ NN;</div>\n<div>\n	- Được thưởng th&aacute;ng lương 13;</div>\n<div>\n	- Được đ&agrave;o tạo kỹ năng chuy&ecirc;n m&ocirc;n, tham gia c&aacute;c kh&oacute;a đ&agrave;o tạo kỹ năng, đ&agrave;o tạo n&acirc;ng cao.C&oacute; cơ hội thăng tiến trong nghề nghiệp;</div>\n<div>\n	- C&aacute;c ch&iacute;nh s&aacute;ch ph&uacute;c lợi kh&aacute;c; Thưởng tết, lễ, sinh nhật, cưới hỏi, du lịch h&agrave;ng năm...</div>\n<div>\n	&nbsp;</div>\n<div>\n	<strong>Y&Ecirc;U CẦU CHUNG</strong></div>\n<div>\n	- Tốt nghiệp ĐẠI HỌC chuy&ecirc;n ng&agrave;nh Quản trị kinh doanh, kinh tế t&agrave;i ch&iacute;nh, KD Bất động sản, luật nh&agrave; đất&hellip;&nbsp;</div>\n<div>\n	- Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm trong lĩnh vực t&igrave;m kiếm, thẩm định, đ&agrave;m ph&aacute;n, định gi&aacute; bất động sản; hoặc ứng vi&ecirc;n c&oacute; kinh nghiệm về mảng cho thu&ecirc; bất động sản nh&agrave; phố, m&ocirc;i giới tự do mong muốn v&agrave;o bi&ecirc;n chế c&ocirc;ng ty. C&aacute;c ứng cử vi&ecirc;n n&agrave;y kh&ocirc;ng y/c c&oacute; bằng đại học.</div>\n<div>\n	- Nắm được c&aacute;c văn bản quy phạm ph&aacute;p luật c&oacute; li&ecirc;n quan đến x&acirc;y dựng, nh&agrave; ở, kinh doanh bất động sản.</div>\n<div>\n	- Mong muốn l&agrave;m việc trong m&ocirc;i trường năng động, chuy&ecirc;n nghiệp, v&agrave; gắn b&oacute; l&acirc;u d&agrave;i với c&ocirc;ng ty</div>\n<div>\n	- C&oacute; khả năng giao tiếp tốt, tự tin, năng động v&agrave; l&agrave;m việc độc lập, biết tạo lập v&agrave; duy tr&igrave; mối quan hệ;</div>\n<div>\n	- C&oacute; điện thoại, xe m&aacute;y, laptop;</div>\n<div>\n	- Sẵn s&agrave;ng đi c&ocirc;ng t&aacute;c xa;</div>\n<div>\n	- Ứng vi&ecirc;n chưa c&oacute; kinh nghiệm sẽ được đ&agrave;o tạo.</div>\n<div>\n	- Hồ sơ: CV, bản chụp Bằng cấp - Gửi trước v&agrave;o email để được sắp xếp lịch phỏng vấn</div>\n<div>\n	&nbsp;</div>\n<div style="text-align: center;">\n	<strong>TH&Ocirc;NG TIN ĐƠN VỊ TUYỂN DỤNG:</strong></div>\n<div style="text-align: center;">\n	<strong>C&Ocirc;NG TY TNHH ĐẦU TƯ KINH DOANH ĐỊA ỐC WELANDS</strong></div>\n<div style="text-align: center;">\n	<strong>VP Giao dịch: Tầng 46, t&ograve;a nh&agrave; BITEXCO FINANCIAL, số 2 Hải Triều, P.Bến Ngh&eacute;, Q.1</strong></div>\n<div style="text-align: center;">\n	<strong>-<span class="Apple-tab-span" style="white-space:pre"> </span>PHỤ TR&Aacute;CH TUYỂN DỤNG: MRS NGỌC</strong></div>\n<div style="text-align: center;">\n	<strong>-<span class="Apple-tab-span" style="white-space:pre"> </span>ĐIỆN THOẠI: 0938722989</strong></div>\n<div style="text-align: center;">\n	<strong>-<span class="Apple-tab-span" style="white-space:pre"> </span>ĐỊA CHỈ LI&Ecirc;N HỆ: SỐ 60 C&Ugrave; LAO, P2, Q PH&Uacute; NHUẬN</strong></div>\n<div style="text-align: center;">\n	<strong>-<span class="Apple-tab-span" style="white-space:pre"> </span>EMAIL LI&Ecirc;N HỆ: TUYENDUNG@WELANDS.VN</strong></div>\n<div style="text-align: center;">\n	<strong>-<span class="Apple-tab-span" style="white-space:pre"> </span>WEBSITE: WELANDS.VN&nbsp;</strong></div>\n<div>\n	&nbsp;</div>\n', '["secretshopper2x2.jpg"]', '', '', '', '', '', '', '', '', '2016-09-21 01:38:59', '2016-09-21 01:38:59'),
(21, 'Căn hộ dịch vụ số 06 Trà Khúc, Quận Tân Bình', 'can-ho-dich-vu-so-06-tra-khuc-quan-tan-binh', '                                                                                                                                                                                                                                                                                \n                                                                \n                                                                \n                                                                \n                                                                ', 'can-ho-dich-vu', '<h4 style="box-sizing: border-box; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 10px; margin-bottom: 10px; font-size: 18px;">\n	Tuyển dụng Nh&acirc;n vi&ecirc;n Kinh doanh</h4>\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	&nbsp;</p>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	&nbsp;</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center;">\n	<strong style="box-sizing: border-box;">TH&Ocirc;NG B&Aacute;O TUYỂN DỤNG</strong></div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	&nbsp;</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	<strong style="box-sizing: border-box;">VỊ TR&Iacute;: NH&Acirc;N VI&Ecirc;N KINH DOANH (KH&Ocirc;NG Y/C KINH NGHIỆM)</strong></div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	<strong style="box-sizing: border-box;">LĨNH VỰC: CHO THU&Ecirc; VĂN PH&Ograve;NG&amp;CĂN HỘ</strong></div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	<strong style="box-sizing: border-box;">Số lượng cần tuyển: 5 người</strong></div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	<strong style="box-sizing: border-box;">Bằng cấp: Cao đẳng trở l&ecirc;n</strong></div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	&nbsp;</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	<strong style="box-sizing: border-box;">M&Ocirc; TẢ C&Ocirc;NG VIỆC</strong></div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- Sản phẩm: Văn ph&ograve;ng, căn hộ mini, chung cư</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- Mục đ&iacute;ch: Cho thu&ecirc; để kinh doanh, l&agrave;m văn ph&ograve;ng l&agrave;m việc hoặc để ở</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- Cập nhật thường xuy&ecirc;n th&ocirc;ng tin về sản phẩm của WELANDS;</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- Triển khai kế hoạch b&aacute;n h&agrave;ng theo sự ph&acirc;n phối của trưởng nh&oacute;m;</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- Marketing, quảng c&aacute;o c&aacute;c sản phẩm qua c&aacute;c k&ecirc;nh: websize, b&aacute;o giấy, mạng x&atilde; hội, &hellip;</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- Tư vấn, giới thiệu, cung cấp sản phẩm đến c&aacute;c đối tượng kh&aacute;ch h&agrave;ng;</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- Chăm s&oacute;c, duy tr&igrave; mối quan hệ với kh&aacute;ch h&agrave;ng hiện c&oacute; v&agrave; ph&aacute;t triển kh&aacute;ch h&agrave;ng mục ti&ecirc;u nhằm duy tr&igrave; lượng kh&aacute;ch h&agrave;ng ổn định;</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- Giao dịch, lưu trữ &amp; b&aacute;o c&aacute;o th&ocirc;ng tin kh&aacute;ch h&agrave;ng cho Trưởng nh&oacute;m</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- L&agrave;m việc theo đội nh&oacute;m.</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- C&aacute;c c&ocirc;ng việc kh&aacute;c theo sự ph&acirc;n c&ocirc;ng của cấp tr&ecirc;n</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	&nbsp;</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	<strong style="box-sizing: border-box;">QUYỀN LỢI ĐƯỢC HƯỞNG</strong></div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- Thu nhập tốt, kh&ocirc;ng giới hạn, gồm: Lương cứng từ 4 triệu đến 10 triệu/ th&aacute;ng + Hoa hồng theo doanh số cao;</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- Phụ cấp 500 000đ/th&aacute;ng, Thưởng n&oacute;ng, đột xuất&hellip; ;</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- Được k&yacute; HĐLĐ, tham gia BHXH, BHYT, nghỉ ph&eacute;p, lễ, tết theo QĐ NN;</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- Được thưởng th&aacute;ng lương 13;</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- Được đ&agrave;o tạo kỹ năng chuy&ecirc;n m&ocirc;n, tham gia c&aacute;c kh&oacute;a đ&agrave;o tạo kỹ năng, đ&agrave;o tạo n&acirc;ng cao.C&oacute; cơ hội thăng tiến trong nghề nghiệp;</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- C&aacute;c ch&iacute;nh s&aacute;ch ph&uacute;c lợi kh&aacute;c; Thưởng tết, lễ, sinh nhật, cưới hỏi, du lịch h&agrave;ng năm...</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	&nbsp;</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	<strong style="box-sizing: border-box;">Y&Ecirc;U CẦU CHUNG</strong></div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- Ưu ti&ecirc;n Ứng vi&ecirc;n biết giao tiếp TIẾNG ANH</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- Mong muốn l&agrave;m việc trong m&ocirc;i trường năng động, chuy&ecirc;n nghiệp, v&agrave; gắn b&oacute; l&acirc;u d&agrave;i với c&ocirc;ng ty</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- Tốt nghiệp từ CĐ trở l&ecirc;n, đam m&ecirc; v&agrave; y&ecirc;u th&iacute;ch c&ocirc;ng việc kinh doanh;</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- C&oacute; khả năng giao tiếp tốt, tự tin, năng động v&agrave; l&agrave;m việc độc lập, biết tạo lập v&agrave; duy tr&igrave; mối quan hệ;</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- C&oacute; điện thoại, xe m&aacute;y, laptop;</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- Ứng vi&ecirc;n chưa c&oacute; kinh nghiệm sẽ được đ&agrave;o tạo.</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	- Hồ sơ: CV, bản chụp Bằng cấp - Gửi trước v&agrave;o email để được sắp xếp lịch phỏng vấn</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n	&nbsp;</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center;">\n	TH&Ocirc;NG TIN ĐƠN VỊ TUYỂN DỤNG:</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center;">\n	C&Ocirc;NG TY TNHH ĐẦU TƯ KINH DOANH ĐỊA ỐC WELANDS</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center;">\n	VP Giao dịch: Tầng 46, t&ograve;a nh&agrave; BITEXCO FINANCIAL, số 2 Hải Triều, P.Bến Ngh&eacute;, Q.1</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center;">\n	-<span class="Apple-tab-span" style="box-sizing: border-box; white-space: pre;"> </span>PHỤ TR&Aacute;CH TUYỂN DỤNG: MRS NGỌC</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center;">\n	-<span class="Apple-tab-span" style="box-sizing: border-box; white-space: pre;"> </span>ĐIỆN THOẠI: 0938722989</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center;">\n	-<span class="Apple-tab-span" style="box-sizing: border-box; white-space: pre;"> </span>ĐỊA CHỈ LI&Ecirc;N HỆ: SỐ 60 C&Ugrave; LAO, P2, Q PH&Uacute; NHUẬN</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center;">\n	-<span class="Apple-tab-span" style="box-sizing: border-box; white-space: pre;"> </span>EMAIL LI&Ecirc;N HỆ: TUYENDUNG@WELANDS.VN</div>\n<div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: center;">\n	-<span class="Apple-tab-span" style="box-sizing: border-box; white-space: pre;"> </span>WEBSITE: WELANDS.VN</div>\n<p>\n	<span style="font-size:12px;"><strong><span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">* Vị trí.&nbsp;</span></strong></span></p>\n<p>\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Ngay khu s&acirc;n bay, Cắt nhiều tuyến đường l&acirc;n cận như Cửu Long, Tiền Giang, đối diện Super Bowl...rất nhiều văn ph&ograve;ng xung quanh.&nbsp;</span></p>\n<p>\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Gần chợ v&agrave; si&ecirc;u thị Big C, Maximark, Co.opmart&hellip;.&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Gần bệnh viện, trạm xăng, nh&agrave; văn h&oacute;a, c&ocirc;ng vi&ecirc;n Ho&agrave;ng Văn Thụ, c&ocirc;ng vi&ecirc;n Gia Định.....&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\n	<br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\n	<span style="font-size:12px;"><strong><span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">* N&ocirc;̣i th&acirc;́t.&nbsp;</span></strong></span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Ph&ograve;ng rộng 25 &rarr; 40m2 c&oacute; ban c&ocirc;ng, cửa sổ tho&aacute;ng m&aacute;t, đầy đủ tiện nghi:&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- M&aacute;y lạnh.&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- Tủ lạnh.&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- Giường, nệm.&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- Tủ quần &aacute;o.&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- Bàn làm vi&ecirc;̣c.&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- M&aacute;y Nước n&oacute;ng năng lượng mặt trời.&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- Wifi t&ocirc;́c đ&ocirc;̣ cao</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\n	<br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;"><strong>* Tiện &iacute;ch: </strong></span></p>\n<p>\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Giờ giấc tự do kh&ocirc;ng chung chủ, được nấu ăn, c&oacute; chỗ để xe miễn ph&iacute;, s&acirc;n phơi r&ocirc;̣ng rãi thoáng mát. Hệ Thống Camera an ninh tuyệt đối.&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\n	<br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;"><strong>*Địa chỉ: </strong>06 Tr&agrave; Kh&uacute;c, Phường 2, Quận T&acirc;n B&igrave;nh (Cắt đường Trường Sơn, cạnh CF Trung Nguy&ecirc;n v&agrave; Phở H&ugrave;ng, đối diện SUPER BOWL)&nbsp;</span><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\n	<br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\n	<strong><span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Gi&aacute; cho thu&ecirc;: $200-$400</span></strong><br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\n	<br style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\n	<span style="color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Th&iacute;ch hợp cho Nh&acirc;n vi&ecirc;n văn ph&ograve;ng, Ti&ecirc;́p vi&ecirc;n hàng kh&ocirc;ng, Phi c&ocirc;ng, Gia đ&igrave;nh trẻ v&agrave; Người Nước Ngo&agrave;i Văn minh lịch sự học tập v&agrave; đi l&agrave;m trong khu vực Quận 1, 3, Ph&uacute; Nhuận, T&acirc;n B&igrave;nh, Gò V&acirc;́p&hellip;.&nbsp;</span></p>\n', '["1.jpg","2.jpg","3.jpg","4.jpg"]', '$200 - $400', 'số 06 Trà Khúc, Quận Tân Bình', '2', '1', 'Đầy đủ', 'chung cư', '20', 'ICA2012', '2016-09-25 18:41:13', '2016-09-25 18:41:13'),
(22, 'qưeqwe', 'queqw', '                                                                                                                                        \r\n                       ư    qwee                                    \r\n                                                                ', 'servicedapartments', '<p font-size:="" helvetica="" line-height:="" style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: ">\r\n	<span style="box-sizing: border-box; font-size: 12px;"><strong style="box-sizing: border-box;"><span style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">* Vị trí.&nbsp;</span></strong></span></p>\r\n<p font-size:="" helvetica="" line-height:="" style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: ">\r\n	<span style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Ngay khu s&acirc;n bay, Cắt nhiều tuyến đường l&acirc;n cận như Cửu Long, Tiền Giang, đối diện Super Bowl...rất nhiều văn ph&ograve;ng xung quanh.&nbsp;</span></p>\r\n<p font-size:="" helvetica="" line-height:="" style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: ">\r\n	<span style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Gần chợ v&agrave; si&ecirc;u thị Big C, Maximark, Co.opmart&hellip;.&nbsp;</span><br style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Gần bệnh viện, trạm xăng, nh&agrave; văn h&oacute;a, c&ocirc;ng vi&ecirc;n Ho&agrave;ng Văn Thụ, c&ocirc;ng vi&ecirc;n Gia Định.....&nbsp;</span><br style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<br style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="box-sizing: border-box; font-size: 12px;"><strong style="box-sizing: border-box;"><span style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">* N&ocirc;̣i th&acirc;́t.&nbsp;</span></strong></span><br style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Ph&ograve;ng rộng 25 &rarr; 40m2 c&oacute; ban c&ocirc;ng, cửa sổ tho&aacute;ng m&aacute;t, đầy đủ tiện nghi:&nbsp;</span><br style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- M&aacute;y lạnh.&nbsp;</span><br style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- Tủ lạnh.&nbsp;</span><br style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- Giường, nệm.&nbsp;</span><br style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- Tủ quần &aacute;o.&nbsp;</span><br style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- Bàn làm vi&ecirc;̣c.&nbsp;</span><br style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- M&aacute;y Nước n&oacute;ng năng lượng mặt trời.&nbsp;</span><br style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">- Wifi t&ocirc;́c đ&ocirc;̣ cao</span><br style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<br style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;"><strong style="box-sizing: border-box;">* Tiện &iacute;ch:</strong></span></p>\r\n<p font-size:="" helvetica="" line-height:="" style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: ">\r\n	<span style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Giờ giấc tự do kh&ocirc;ng chung chủ, được nấu ăn, c&oacute; chỗ để xe miễn ph&iacute;, s&acirc;n phơi r&ocirc;̣ng rãi thoáng mát. Hệ Thống Camera an ninh tuyệt đối.&nbsp;</span><br style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<br style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;"><strong style="box-sizing: border-box;">*Địa chỉ:&nbsp;</strong>06 Tr&agrave; Kh&uacute;c, Phường 2, Quận T&acirc;n B&igrave;nh (Cắt đường Trường Sơn, cạnh CF Trung Nguy&ecirc;n v&agrave; Phở H&ugrave;ng, đối diện SUPER BOWL)&nbsp;</span><br style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<br style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<strong style="box-sizing: border-box;"><span style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Gi&aacute; cho thu&ecirc;: $200-$400</span></strong><br style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<br style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;" />\r\n	<span style="box-sizing: border-box; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif;">Th&iacute;ch hợp cho Nh&acirc;n vi&ecirc;n văn ph&ograve;ng, Ti&ecirc;́p vi&ecirc;n hàng kh&ocirc;ng, Phi c&ocirc;ng, Gia đ&igrave;nh trẻ v&agrave; Người Nước Ngo&agrave;i Văn minh lịch sự học tập v&agrave; đi l&agrave;m trong khu vực Quận 1, 3, Ph&uacute; Nhuận, T&acirc;n B&igrave;nh, Gò V&acirc;́p&hellip;.&nbsp;</span></p>\r\n', '["1900130_249877548525129_1692712222_n.jpg","1901128_250428411803376_37862334_n.jpg"]', 'qưeqw', 'eqw', 'eqweqw', 'qưeqw', 'we', 'eqw', 'ưeqwe', 'qưeqwe', '2016-10-09 11:41:13', '2016-10-09 11:41:13');

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
(1, '© 2016 by WE Holdings Co., Ltd.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Serviced Apartments', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Offices', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Testimonial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '“You have been fantastic to work with, quick, responsive, positive and good at sorting out and helping me zero in on the areas I wanted to rent." ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Mr. Phuc Hoang', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'WE Holdings was established in February 2010 as a private sector representative organisation in Vietnam. It serves to uphold the interests of its members, as well as the operating standards of the serviced apartments industry.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Although serviced apartments have been in existence for more than 30 years, the industry only came into prominence in early 2000 with the increase in number of companies relocating employees or sending them on extended international assignments.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'More Info', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'More Info', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '“You have been fantastic to work with, quick, responsive, positive and good at sorting out and helping me zero in on the areas I wanted to rent." ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'http://facebook.com/weland.vn', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'WE Holdings Co., Ltd', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Level 46, Bitexco Building', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '02 Hai Trieu, Dist. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'info@welands.vn', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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

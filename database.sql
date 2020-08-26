-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 24, 2020 lúc 11:01 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlda`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHoaDon` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `Gia` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(11) NOT NULL,
  `email_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parrent` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `id_product`, `email_user`, `content`, `reply`, `parrent`, `created_at`, `updated_at`) VALUES
(17, 6, 'chivinh@hwdohd.com', 'san pham rat tot', NULL, NULL, '2020-07-23 08:04:45', '2020-07-23 08:04:45'),
(18, 6, 'chivinh@hwdohd.com', 'cho 5 sao', NULL, NULL, '2020-07-23 08:04:54', '2020-07-23 08:04:54'),
(19, 1, 'admin@gmail.com', 'san pham rat tot', NULL, NULL, '2020-08-20 06:31:10', '2020-08-20 06:31:10'),
(20, 1, 'admin@gmail.com', 'san pham tuyet voi', NULL, NULL, '2020-08-20 06:51:09', '2020-08-20 06:51:09'),
(21, 4, 'admin@gmail.com', 'sản phẩm quá tệ', NULL, NULL, '2020-08-21 12:54:13', '2020-08-21 12:54:13'),
(22, 4, 'admin@gmail.com', 'It working !', NULL, NULL, '2020-08-21 12:55:03', '2020-08-21 12:55:03'),
(23, 4, 'admin@gmail.com', 'Your Test !!!!!!!!!', NULL, NULL, '2020-08-21 12:55:57', '2020-08-21 12:55:57'),
(25, 10, 'admin@gmail.com', 'Sản phẩm rất tốt', NULL, NULL, '2020-08-24 05:19:51', '2020-08-24 05:19:51'),
(26, 10, 'admin@gmail.com', 'còn hàng không', NULL, NULL, '2020-08-24 05:22:03', '2020-08-24 05:22:03'),
(27, 10, 'admin@gmail.com', 'test', NULL, NULL, '2020-08-24 05:23:05', '2020-08-24 05:23:05'),
(28, 10, 'admin@gmail.com', 'test 2', NULL, NULL, '2020-08-24 05:24:22', '2020-08-24 05:24:22'),
(29, 1, 'admin@gmail.com', 'testssss', NULL, NULL, '2020-08-24 07:14:06', '2020-08-24 07:14:06'),
(30, 1, 'admin@gmail.com', 'sssss', NULL, NULL, '2020-08-24 07:14:38', '2020-08-24 07:14:38'),
(31, 1, 'admin@gmail.com', 'aaaaaaa', NULL, NULL, '2020-08-24 07:16:18', '2020-08-24 07:16:18'),
(32, 1, 'admin@gmail.com', 'hahaha', NULL, NULL, '2020-08-24 07:21:37', '2020-08-24 07:21:37'),
(33, 2, 'admin@gmail.com', 'haaa', NULL, NULL, '2020-08-24 07:33:46', '2020-08-24 07:33:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHoaDon` int(11) NOT NULL,
  `NgayTao` datetime NOT NULL,
  `MaTaiKhoan` int(11) DEFAULT NULL,
  `HoTen` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SDT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `name`, `TrangThai`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại', 1, '2020-07-29 10:54:54', NULL),
(2, 'Phụ kiện', 1, '2020-07-29 10:54:54', NULL),
(3, 'Tablet', 1, '2020-07-29 10:54:54', NULL),
(4, 'Laptop', 1, '2020-07-29 10:54:54', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_07_11_143333_comment', 2),
(4, '2020_07_17_090609_order', 3),
(5, '2020_07_17_092329_orderproduct', 3),
(6, '2020_07_23_150709_slide', 4),
(7, '2020_08_11_204545_create_messages_table', 5),
(8, '2020_08_20_154646_create_notifications_table', 6),
(9, '2020_08_21_180419_create_notifications_table', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0bdc52bc-8547-49dc-8562-5843cf2785eb', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"testssss\"}', NULL, '2020-08-24 07:14:07', '2020-08-24 07:14:07'),
('0c354a55-694a-4d39-b2b4-69336d185f16', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Users\",\"content\":\"joker@gmail.com\"}', NULL, '2020-08-24 05:14:25', '2020-08-24 05:14:25'),
('1f134aa5-95fd-4b7d-87d6-a5d0a0a6be01', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"sssss\"}', NULL, '2020-08-24 07:14:38', '2020-08-24 07:14:38'),
('51c1027e-2358-41ab-b363-9731c01e28ba', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Users\",\"content\":\"kaido@gmail.com\"}', NULL, '2020-08-21 12:12:05', '2020-08-21 12:12:05'),
('5fa3e86f-5d55-41fb-830b-26c4876d1230', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"aaaaaaa\"}', NULL, '2020-08-24 07:16:18', '2020-08-24 07:16:18'),
('73a596c0-d917-4502-9c42-d055913f50f7', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Users\",\"content\":\"kakashi@gmail.com\"}', NULL, '2020-08-24 05:08:02', '2020-08-24 05:08:02'),
('784d1e64-617a-4856-a1e4-eeb84ff880bb', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Users\",\"content\":\"hahaha@gmail.com\"}', NULL, '2020-08-22 05:45:07', '2020-08-22 05:45:07'),
('7f026ce2-60d0-47aa-8ab8-915a846ebd1b', 'App\\Notifications\\TestNotification', 'App\\User', 18, '{\"title\":\"New Users\",\"content\":\"hibiki@gmail.com\"}', NULL, '2020-08-21 12:00:22', '2020-08-21 12:00:22'),
('85a64ea2-a181-4cf8-b330-2865df1bf446', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"S\\u1ea3n ph\\u1ea9m r\\u1ea5t t\\u1ed1t\"}', NULL, '2020-08-24 05:19:51', '2020-08-24 05:19:51'),
('882a701f-fa57-4901-bc65-c86778b830cc', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Users\",\"content\":\"hihihi@gmail.com\"}', NULL, '2020-08-22 05:46:37', '2020-08-22 05:46:37'),
('91f6fa3c-9ccc-4653-a807-e9177636d227', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"haaa\"}', NULL, '2020-08-24 07:33:46', '2020-08-24 07:33:46'),
('9e5f6ce3-553f-4c5a-a262-999dd22e82da', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Users\",\"content\":\"airblade@gmail.com\"}', NULL, '2020-08-22 05:40:29', '2020-08-22 05:40:29'),
('aeec91c7-e353-428a-922d-f5d6b5dfef97', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"hahaha\"}', NULL, '2020-08-24 07:21:37', '2020-08-24 07:21:37'),
('b002f890-9884-4b70-8951-b4a10911920f', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Users\",\"content\":\"ikuiku@gmail.com\"}', NULL, '2020-08-24 05:03:23', '2020-08-24 05:03:23'),
('d84e0719-a6d3-4c8b-90fc-9beaac6cd375', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"test\"}', NULL, '2020-08-24 05:23:05', '2020-08-24 05:23:05'),
('da144570-186a-41b2-8b92-288e509e1621', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"test 2\"}', NULL, '2020-08-24 05:24:22', '2020-08-24 05:24:22'),
('e8bcd483-ac5f-4a64-98db-54d5a524d7d4', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Users\",\"content\":\"hanabi@gmail.com\"}', NULL, '2020-08-22 05:34:22', '2020-08-22 05:34:22'),
('efd7a83f-8e8e-4626-a0fd-062242dc2765', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"Haaaaaaaaaaaaaaaa\"}', NULL, '2020-08-21 12:58:27', '2020-08-21 12:58:27'),
('f1320c8d-3f68-4910-9e35-261374c1ff10', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"c\\u00f2n h\\u00e0ng kh\\u00f4ng\"}', NULL, '2020-08-24 05:22:04', '2020-08-24 05:22:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_quantity` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `user_id`, `payment`, `position`, `note`, `total_quantity`, `total_amount`, `status`, `created_at`, `updated_at`) VALUES
(7, 12, 'offline', NULL, NULL, 14, 585070000, 1, '2020-08-20 05:31:01', '2020-08-20 05:31:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderproduct`
--

CREATE TABLE `orderproduct` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderproduct`
--

INSERT INTO `orderproduct` (`id`, `order_id`, `product_id`, `product_name`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(11, 7, 14, 'Máy tính bảng iPad Pro', 19990000, 1, '2020-08-20 05:31:01', '2020-08-20 05:31:01'),
(12, 7, 18, 'Acer PREDATOR 21X', 229000000, 1, '2020-08-20 05:31:01', '2020-08-20 05:31:01'),
(13, 7, 13, 'Samsung Tab A6', 7990000, 1, '2020-08-20 05:31:01', '2020-08-20 05:31:01'),
(14, 7, 1, 'Điện Thoại iPhone X', 34790000, 9, '2020-08-20 05:31:01', '2020-08-20 05:31:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `TenSanPham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Gia` float DEFAULT NULL,
  `HinhAnh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhCT1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhCT2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HangSanXuat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Instock` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `MaLoai`, `TenSanPham`, `MoTa`, `Gia`, `HinhAnh`, `HinhCT1`, `HinhCT2`, `HangSanXuat`, `Instock`, `created_at`, `updated_at`) VALUES
(1, 1, 'Điện Thoại iPhone X', 'iPhone X được Apple ra mắt ngày 12/9 vừa rồi đánh dấu chặng đường 10 năm lần đầu tiên iPhone ra đời. Sau một thời gian, giá iPhone X cũng được công bố. iPhone X mang trên mình thiết kế hoàn toàn mới với màn hình Super Retina viền cực mỏng và trang bị nhiều công nghệ hiện đại như nhận diện khuôn mặt Face ID, sạc pin nhanh và sạc không dây cùng khả năng chống nước bụi cao cấp.', 34790000, 'image/x.png', 'image/x_item1.png', 'image/x_item2.png', 'Apple', 0, '2020-08-18 04:49:54', '2020-08-20 05:31:01'),
(2, 1, 'Điện Thoại Vivo V9', 'Vivo V9 là chiếc smartphone tầm trung cận cao cấp với điểm nhấn là máy có camera kép phía sau và camera selfie độ phân giải cao 24 MP.Cũng giống như ZenFone 5, OPPO R15 hay Huawei P20, chiếc smartphone này của Vivo cũng dõi theo xu hướng thiết kế notch (hay còn gọi là tai thỏ) như trên chiếc iPhone X của Apple.sss', 7990000, 'image/v9.png', 'image/v9_item1.png', 'image/v9_item.jpg', 'Vivo', 9, '2020-08-18 04:49:54', '2020-08-20 05:32:27'),
(3, 1, 'Samsung Galaxy A6', 'Samsung Galaxy A6 (2018) là chiếc smartphone tầm trung vừa được ra mắt của Samsung bên cạnh chiếc Samsung Galaxy A6+ (2018).Thiết kế quen thuộcMáy được hoàn thiện từ kim loại nguyên khối, kết hợp với mặt kính cong nhẹ 2.5D cho cảm giác vuốt chạm thoải mái hơn.Mặt trước là camera \"tự sướng\" và đèn LED trợ sáng 3 cấp độ giúp chụp ảnh selfie trong điều kiện thiếu sáng tốt hơn.Mặt lưng là dãy ăng-ten trên dưới đối xứng hình chữ U và camera chính và cảm biến vân tay được gom chung vào 1 cụm.', 6990000, 'image/a6.png', 'image/a6_item1.png', 'image/a6_item2.png', 'Samsung', 43, '2020-08-18 04:49:54', '2020-08-20 05:31:01'),
(4, 1, 'Điện thoại OPPO A83s', 'OPPO A83 là chiếc smartphone dòng A đầu tiên sở hữu cho mình màn hình tràn viền và cùng với đó là camera với khả năng làm đẹp bằng AI nổi tiếng của OPPO.Thiết kế thon gọn Với xu thế màn hình 18:9 của năm 2017 thì máy sở hữu một thân hình \"thon thả\" với các góc cạnh được bo tròn mềm mại.', 4990000, 'image/a83.png', 'image/a83_item1.png', 'image/a83_item2.png', 'OPPO', 46, '2020-08-18 04:49:54', '2020-08-23 06:23:48'),
(5, 2, 'Chuột Bluetooth Apple', 'Phong cách thiết kế mang đậm bản sắc của Apple. Thời gian sử dụng chuột MLA02 kéo dài, chuột magic mouse MLA02 cho bạn thời gian sử dụng lên tới 1 tháng hoặc hơn chỉ với 1 lần sạc (2 tiếng). Cổng sạc cho chuột nằm ngay mặt dưới, dùng dây sạc đầu lightning (đi kèm với hộp).', 2490000, 'image/pk8.png', 'image/pk8_item1.jpg', 'image/pk8_item2.jpg', 'Apple', 5, '2020-08-18 04:49:54', '2020-08-18 04:49:54'),
(6, 2, 'Apple Watch S3 GPS', 'Về mặt tổng thể Apple Watch Series 3 có kích thước tương tự như Apple Watch Series 2. Sản phẩm chú trọng thêm về mặt thẩm mỹ với thiết kế sang trọng, năng động nhiều màu sắc khác nhau. Màn hình Apple Watch phiên bản 42 mm lớn 1.65 inch hiển thị chi tiết ảnh nhiều hơn, mặt đồng hồ cảm ứng trang bị mặt kính cường lực Sapphire crystal glass giúp bảo vệ mặt kính chống trầy xước tốt và hiển thị tốt dù là dưới ánh mặt trời.', 10990000, 'image/pk5.png', 'image/pk5_item1.jpg', '', 'Apple', 2, '2020-08-18 04:49:54', '2020-08-23 06:23:48'),
(7, 2, 'Ốp lưng iPhone X', 'Ốp lưng chính hãng Apple, nguyên seal 100%. Kiểu dáng thời trang và đẹp mắt, thiết kế vừa vặn và ôm sát thân máy,dễ dàng tháo/lắp ốp vào máy.', 1590000, 'image/pk4.png', 'image/pk4_item1.jpg', '', 'Apple', 0, '2020-08-18 04:49:54', '2020-08-18 04:49:54'),
(8, 2, 'Sạc dự phòng Polymer ', 'Pin sạc dự phòng Polymer Sony CP-S15-BC ULA tuy có dung lượng rất lớn nhưng kiểu dáng vẫn nhỏ gọn. Tích hợp công nghệ Hybrid Gel cho tuổi thọ sạc hơn 1000 lần. Dung lượng pin cao cho nhiều lần sạc,sạc đầy được cho điện thoại và máy tính bảng có dung lượng dưới 13.000 mAh. Sạc song song 2 thiết bị với tốc độ nhanh.', 1780000, 'image/pk1.png', 'image/pk1.png', 'image/pin1.png', 'Sony', 7, '2020-08-18 04:49:54', '2020-08-18 04:49:54'),
(9, 2, 'Sạc không dây 1A', 'Thiết kế đẹp mắt, tiện dụng, dễ dàng xếp lại và mang theo bất cứ nơi đâu. Tiện lợi chuyển đổi từ sạc đứng sang sạc nằm. Thưởng thức trọn vẹn cả khung hình, cho trải nghiệm giải trí tối đa ngay khi đang sạc. Chất liệu da cao cấp, giữ chắc điện thoại trên đế khi đang sạc. Sạc nhanh: tương thích với Galaxy Note8, S8, S8+, S7, S7 edge, Note5, S6 edge+ / Qi (Tương thích với Galaxy S6, S6 edge và các thiết bị được chứng nhận Qi).', 1450000, 'image/pk7.png', 'image/pk7.png', 'image/pk7_item1.jpg', 'Samsung', 8, '2020-08-18 04:49:54', '2020-08-18 04:49:54'),
(10, 2, 'Tai nghe Bluetooth', 'Airpods sở hữu thiết kế thời trang và nhỏ gọn, trọng lượng cũng rất nhẹ, mọi chi tiết đều được hoàn thiện, cải thiện thêm nhiều tính năng độc đáo. Nút tai nghe được làm rất vừa vặn với tai tạo cảm giác thoải mái, không bị khó chịu khi đeo trong thời gian dài nhưng cũng rất chắc chắn.', 4990000, 'image/pk2.png', 'image/pk2_item1.jpg', 'image/pk2_item2.jpg', 'Apple', 0, '2020-08-18 04:49:54', '2020-08-18 04:49:54'),
(11, 2, 'Micro SD 200GB', 'Thẻ nhớ dành cho các mẫu điện thoại cao cấp. Tương thích với thiết bị có thể nhận thẻ nhớ tối đa 200 GB. Chép một video dung lượng 10 GB vào thẻ chưa tới 2 phút. Phù hợp cho các dòng máy cơ, quay phim 4K.', 2500000, 'image/pk3.png', 'image/pk3-item1.jpg', 'image/pk3-item2.jpg', 'SD', 1, '2020-08-18 04:49:54', '2020-08-18 04:49:54'),
(12, 2, 'USB 3.0 Sandisk iXpand', 'Kết nối kép OTG USB-Lightning. USB 3.0 tốc độ cao. Bổ sung dung lượng lưu trữ tức thì cho iPhone, iPad. Bảo mật dữ liệu bằng hệ thống mã hoá. Chơi nhạc và video trực tiếp trên app SanDisk iXpand Drive. Tốc độ đọc tối đa: iPhone: 90MB/s, máy tính: 150MB/s.', 990000, 'image/pk6.png', 'image/pk6_item1.png', '', 'Apple', 2, '2020-08-18 04:49:54', '2020-08-18 04:49:54'),
(13, 3, 'Samsung Tab A6', 'Là dòng máy trong phân khúc tầm trung, Samsung Galaxy Tab A6 10.1 Spen được thiết kế với vỏ nhựa nhám nhẹ cùng các góc bo tròn cho cảm giác chắc chắn, không bám vân tay khi cầm. Sở hữu màn hình kích thước 10.1 inch không quá lớn, có thể nhét vừa một chiếc balo dạng nhỏ, Samsung Galaxy Tab A6 10.1 Spen sử dụng tấm nền PLS LCD cho khả năng hiển thị tốt. Độ phân giải  WUXGA 1920 x 1200 pixels cho chất lượng hình ảnh sắc nét, sử dụng tốt khi đi ngoài trời.', 7990000, 'image/tb1.png', 'image/tb1.png', 'image/tb1_item1.jpg', 'Samsung', 1, '2020-08-18 04:49:54', '2020-08-20 05:31:01'),
(14, 3, 'Máy tính bảng iPad Pro', 'Apple vẫn giữ ngôn ngữ thiết kế từ xa xưa tới nay, nên phiên bản 10.5 inch cũng không có gì khác lắm với những người tiền nhiệm còn lại. Tuy không mới nhưng đây vẫn là một thiết kế vượt thời gian và rất sang trọng.', 19990000, 'image/tb2.png', 'image/tb2.png', 'image/tb2_item1.jpg', 'Apple', 6, '2020-08-18 04:49:54', '2020-08-20 05:31:01'),
(15, 3, 'Huawei MediaPad', 'Về tổng thể, máy nổi bật với phần khung viền kim loại sang trọng, kết hợp màu sắc hiện đại cho cảm giác khá thanh lịch, nhẹ nhàng. Ngoài ra, với trọng lượng khá nhẹ cùng với 4 góc bo tròn giúp máy có trải nghiệm cầm nắm khá thoải mái. Sở hữu màn hình kích thước 10 inch không quá lớn, có thể nhét vừa một chiếc balo dạng nhỏ, Huawei MediaPad T3 10 (2017) Spen sử dụng tấm nền PLS LCD cho khả năng hiển thị tốt.', 4490000, 'image/tb3.png', 'image/tb3.png', 'image/tb3_item1.jpg', 'Huawei', 889, '2020-08-18 04:49:54', '2020-08-18 04:49:54'),
(16, 3, 'Lenovo Phab2', 'Lenovo Phab 2 lại có kích thước khá nặng cho người dùng cảm giác cầm nắm chắc chắn và cứng cáp. Máy được thiết kế từ nhôm, mặt lưng được bo cong về các cạnh cho máy ôm tay hơn khi sử dụng. Về phần màn hình khi máy sở hữu kích thước khá lớn 6.4 inch cùng độ phân giải 1280 x 720 pixels trên tấm nền IPS cho hình ảnh rõ nét.', 3990000, 'image/tb4.png', 'image/tb4.png', 'image/tb4_item1.jpg', 'Lenovo', 45, '2020-08-18 04:49:54', '2020-08-18 04:49:54'),
(17, 4, 'Apple Macbook Pro', 'Touch Bar sẽ thay thế các phím chức năng ở hàng đầu của bàn phím. Có thể xem đây là một màn hình thứ 2 của chiếc MacBook, nó hiển thị các hình ảnh với chất lượng cao hoặc các nút chức năng, công cụ tùy chỉnh tuỳ theo ứng dụng bạn đang dùng.', 44990000, 'image/lt1.png', 'image/lt1.png', 'image/lt1_item1.jpg', 'Apple', 7, '2020-08-18 04:49:54', '2020-08-18 04:49:54'),
(18, 4, 'Acer PREDATOR 21X', 'Acer PREDATOR 21 X là sản phẩm cực kỳ cao cấp và là laptop mạnh nhất thế giới ở thời điểm hiện tại với những trang thiết bị tối tân đặc cách cho \"Game Thủ\". Máy có cấu hình cực mạnh bao gồm CPU i7 thế hệ 7 7820HK, RAM 64 GB, ổ cứng 2 TB và đặc biệt là vũ khí hạng nặng 2 card đồ họa rời NVIDIA GeForce GTX 1080 với dung lượng 16 GB.', 229000000, 'image/lt2.png', 'image/lt2.png', 'image/lt2_item6.jpg', 'Acer', 44, '2020-08-18 04:49:54', '2020-08-20 05:31:01'),
(19, 4, 'Laptop Asus A541UA', 'Việc sử dụng chip Intel Core i3 6006U giúp máy hoạt động ổn định, khả năng xử lý tác vụ khá mượt mà. Kèm theo RAM DDR4 4 GB và ổ cứng HDD 1 TB rất phù hợp với sinh viên khi thường làm bài thuyết trình, người làm văn phòng hay nhập liệu và lưu dữ liệu thoải mái hơn.', 10790000, 'image/lt3.png', 'image/lt3.png', 'image/lt3_item1.png', 'Asus', 751, '2020-08-18 04:49:54', '2020-08-23 06:24:05'),
(20, 4, 'Laptop HP Pavilion 14', 'Mẫu laptop HP Core i3 sử dụng chip thế hệ thứ 7 mang lại hiệu năng hoạt động khá ổn định và có thể chơi các tựa game online khá ổn. Tiếp đó là RAM DDR4 4 GB hiệu quả và có hiệu suất hoạt động ổn định, cùng ổ cứng HDD 1 TB có thể lưu trữ nhiều dữ liệu cá nhân.', 12990000, 'image/lt4.png', 'image/lt4.png', 'image/lt4_item4.png', 'HP', 11, '2020-08-18 04:49:54', '2020-08-18 04:49:54'),
(25, 1, 'Điện thoại OPPO A83s', NULL, 44000000, 'E:\\xampp\\tmp\\php95EC.tmp', NULL, NULL, 'ASUS', 47, '2020-08-18 04:49:54', '2020-08-18 04:49:54'),
(26, 1, 'Điện thoại OPPO A83s', NULL, 44000000, 'E:\\xampp\\tmp\\php9FBB.tmp', NULL, NULL, NULL, 56, '2020-08-18 04:49:54', '2020-08-18 04:49:54'),
(31, 2, 'rwawar', 'wrarwa', 44000000, 'image/K6e2V0N', 'image/HcN5GE3', 'image/eHjyRrg', 'rwarwrwa', NULL, '2020-08-17 21:56:41', '2020-08-17 21:56:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `name`, `src`, `alt`, `created_at`, `updated_at`) VALUES
(1, 'slide show', 'image/slideshow1.png', NULL, NULL, NULL),
(2, 'slide show', 'image/slideshow2.png', NULL, NULL, NULL),
(3, 'slide show', 'image/slideshow3.png', NULL, NULL, NULL),
(4, 'slide show', 'image/slideshow4.png', NULL, NULL, NULL),
(5, 'slide show', 'image/slideshow5.png', NULL, NULL, NULL),
(6, 'slide show', 'image/slideshow6.png', NULL, NULL, NULL),
(7, 'Slide Detail', 'image/a6.gif', 'D1', NULL, NULL),
(8, 'Slide Detail', 'image/a6x2.jpg', 'D2', NULL, NULL),
(9, 'Slide Detail', 'image/a6x3.jpg', 'D3', NULL, NULL),
(10, 'Slide Detail', 'image/a6x4.jpg', 'D4', NULL, NULL),
(11, 'Slide Detail', 'image/a6x5.jpg', 'D5', NULL, NULL),
(12, 'Slide Detail', 'image/a6x6.jpg', 'D6', NULL, NULL),
(13, 'Slide Detail', 'image/a6x7.jpg', 'D7', NULL, NULL),
(14, 'Slide Detail', 'image/a6x8.jpg', 'D8', NULL, NULL),
(15, 'Slide Detail', 'image/a6x9.jpg', 'D9', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `TenDangNhap` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(320) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HoTen` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgaySinh` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SDT` int(11) DEFAULT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AnhDaiDien` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `TenDangNhap`, `MatKhau`, `Email`, `HoTen`, `NgaySinh`, `SDT`, `DiaChi`, `AnhDaiDien`, `created_at`, `updated_at`) VALUES
(1, 'admin', '123456', 'chivinh1998@gmail.com', 'Lâm Chí Vĩnh', '10/10/1998', 769652731, '123/45/678aikejwuoaade', 'image/tokuda.png', '2020-07-09 05:54:38.550451', NULL),
(2, 'asd', '789', 'chivinh1998@gmail.com', 'Lâm Chí Vĩnh', '10/10/1998', 769652735, '124/45/678 aikejsakndbqqade', 'image/bg.png', '2020-07-09 05:54:38.550451', NULL),
(3, 'asdf', '741', 'chivinh1998@gmail.com', 'Lâm Chí Vĩnh', '10/10/1998', 769652736, '126/45/678 aikwqeqwfasfaade', 'image/dn.png', '2020-07-09 05:54:38.550451', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `provider`, `provider_id`, `email_verified_at`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, NULL, NULL, '$2y$10$w9kO.xnMd0q8SvTD3nwKBOA712AKLrTPuNAU7rw0wyXtfaukF6Zau', NULL, 1, NULL, NULL),
(6, 'Lâm Chí Vĩnh', 'chivinh@hwdohd.com', NULL, NULL, NULL, '$2y$10$S3QVv9cClilOTkPzFPytEeM968qZWFo8U1hg5g.GSDEJlJbby3w1a', NULL, 2, '2020-07-18 02:01:08', '2020-07-18 02:01:08'),
(7, 'Lâm Chí Vĩnh', 'tyu@qqe.gfd', NULL, NULL, NULL, '$2y$10$KLhe1BGqWaLyglS5VmIny.EP7QLmNCh1RSfK/oTy3jJnffujgoUTe', NULL, 2, '2020-07-18 02:01:17', '2020-07-18 02:01:17'),
(9, 'hhhggg', 'hhh@weqoejowqe', NULL, NULL, NULL, '$2y$10$Ul9QukSQPkED8IkRWjUyYOEubLNgJ.sj1gjGZ1cm30OhkRnM6P1vG', NULL, 2, '2020-07-18 02:41:15', '2020-07-18 02:41:15'),
(10, 'Lâm Chí Vĩnh', 'chivinh1998@gmail.com', 'facebook', '1179098189114305', NULL, NULL, NULL, 2, '2020-08-05 11:46:24', '2020-08-05 11:46:24'),
(12, 'User1', 'user1@gmail.com', NULL, NULL, NULL, '$2y$10$Xq.Q0AlO0ORBHnjlXl75q.abW1ZuOQR8E1bB3E787eZgNA7Evb.4i', NULL, 2, '2020-08-20 02:50:38', '2020-08-20 02:50:38'),
(13, 'Warning IS', 'iswarning1@gmail.com', 'google', '108928320659004870416', NULL, NULL, NULL, NULL, '2020-08-20 07:53:57', '2020-08-20 07:53:57'),
(14, 'hhh', 'hhh@gmail.com', NULL, NULL, NULL, '$2y$10$X2xBEqY05AfPK0BZrBcXje6278fTlFkbgEAbttdfhoFJXsBKTHhFy', NULL, 2, '2020-08-20 09:25:04', '2020-08-20 09:25:04'),
(15, 'Hacker', 'hacker@gmail.com', NULL, NULL, NULL, '$2y$10$wxk64Bk4aADxcBBsgVsXDeyDP.0ru/i6BOpgaNJSIv8qgPi93cdJC', NULL, 2, '2020-08-21 11:35:18', '2020-08-21 11:35:18'),
(17, 'Hiker John', 'hiker@gmail.com', NULL, NULL, NULL, '$2y$10$C.qdBWHOw5r4BdiG0mgCPO5vJntWCceXnX7e1T46YDKn2imqvBtpu', NULL, 2, '2020-08-21 11:45:53', '2020-08-21 11:45:53'),
(18, 'Hibiki', 'hibiki@gmail.com', NULL, NULL, NULL, '$2y$10$1ZcpU0itNp.YXt3EBaMJgeoJNKAWd16oSGTrsvG6D2YAXz36aAhG.', NULL, 2, '2020-08-21 12:00:22', '2020-08-21 12:00:22'),
(19, 'Kakarot', 'kakarot@gmail.com', NULL, NULL, NULL, '$2y$10$wpb3O4tn2r1p1JdTezK/eubjpnJWZnnQLvrcjDb6pPX4fIxMJzI2G', NULL, 2, '2020-08-21 12:06:43', '2020-08-21 12:06:43'),
(20, 'Vegeta', 'vegeta@gmail.com', NULL, NULL, NULL, '$2y$10$vZrtHPQvZmj8O/NSVaNxCuuSLec4DGu6joGwHGBn3PQr.PDJBXDIm', NULL, 2, '2020-08-21 12:08:22', '2020-08-21 12:08:22'),
(21, 'Luffy', 'luffy@gmail.com', NULL, NULL, NULL, '$2y$10$8Y6j2YMxCR.wrQXudYxJi.aAPBABZSwYpj56DSSfm3NR9HBEwDErG', NULL, 2, '2020-08-21 12:09:48', '2020-08-21 12:09:48'),
(22, 'Kaido', 'kaido@gmail.com', NULL, NULL, NULL, '$2y$10$g1I2xoDx0t5Yl4HKA9opg.1VEtYTcB5SMmHmkByCaCfu/dbM21jNC', NULL, 2, '2020-08-21 12:12:05', '2020-08-21 12:12:05'),
(23, 'Duong Vi Kiet', 'duongvikiet@gmail.com', NULL, NULL, NULL, '$2y$10$8vMfyTfc2r9fyLftAFRFd.4giFkDoF4Z4p.sJJmC6OEOXVAT6wYNy', NULL, 2, '2020-08-21 12:41:14', '2020-08-21 12:41:14'),
(24, 'Hanabi', 'hanabi@gmail.com', NULL, NULL, NULL, '$2y$10$HcvJOdMHuSFHMcg5lXaXiedprMAafTbB2lMRrlQRjTniHwWtIS6Jm', NULL, 2, '2020-08-22 05:34:20', '2020-08-22 05:34:20'),
(25, 'Air Blade', 'airblade@gmail.com', NULL, NULL, NULL, '$2y$10$u7JMFXo1KcHZVptmu0hyT..YsST6KbP.kWtdOD4FlLndg/KRm5/jO', NULL, 2, '2020-08-22 05:40:29', '2020-08-22 05:40:29'),
(26, 'hahaha', 'hahaha@gmail.com', NULL, NULL, NULL, '$2y$10$FuRBa.paq6KPcLS.5EHQ6uYU/TaYvh2QzLSsji3uN2JM90qzyla2m', NULL, 2, '2020-08-22 05:45:07', '2020-08-22 05:45:07'),
(27, 'Hihihi', 'hihihi@gmail.com', NULL, NULL, NULL, '$2y$10$iixumwDPwoIrKRya0eyedeekQQv.nG2Zk/hlkzyOKiCHN.vTXBkg6', NULL, 2, '2020-08-22 05:46:37', '2020-08-22 05:46:37'),
(28, 'Kakaka', 'kakaka@gmail.com', NULL, NULL, NULL, '$2y$10$mSQh4.18fGg7.oYmgmxgG.zQbCE9UgEzVIXL74m.Z8Ol5ojJ.0tze', NULL, 2, '2020-08-22 05:50:27', '2020-08-22 05:50:27'),
(29, 'Ikuiku', 'ikuiku@gmail.com', NULL, NULL, NULL, '$2y$10$SbtsulxNEV.kDH9n0vFAJe.mM2urzEUrGOm4tQ9NIYmUP4Q.25ad2', NULL, 2, '2020-08-24 05:03:23', '2020-08-24 05:03:23'),
(30, 'Kakashi', 'kakashi@gmail.com', NULL, NULL, NULL, '$2y$10$4wo.16m5umAu4Weaougi6OkGqFQ72O0YYwwS0YD2K4SRdrD4qbimK', NULL, 2, '2020-08-24 05:08:01', '2020-08-24 05:08:01');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MaHoaDon`,`MaSanPham`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHoaDon`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderproduct`
--
ALTER TABLE `orderproduct`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `MaHoaDon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHoaDon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `orderproduct`
--
ALTER TABLE `orderproduct`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

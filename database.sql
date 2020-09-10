-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 01, 2020 lúc 09:07 AM
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
(33, 2, 'admin@gmail.com', 'haaa', NULL, NULL, '2020-08-24 07:33:46', '2020-08-24 07:33:46'),
(34, 1, 'ikuiku@gmail.com', 'ahihi do cho', NULL, NULL, '2020-08-25 15:00:36', '2020-08-25 15:00:36'),
(35, 1, 'ikuiku@gmail.com', 'ahihi do cho', NULL, NULL, '2020-08-25 15:00:38', '2020-08-25 15:00:38'),
(36, 1, 'ikuiku@gmail.com', 'ahihi do cho', NULL, NULL, '2020-08-25 15:00:38', '2020-08-25 15:00:38'),
(37, 1, 'ikuiku@gmail.com', 'ahihi do cho', NULL, NULL, '2020-08-25 15:00:39', '2020-08-25 15:00:39'),
(38, 1, 'ikuiku@gmail.com', 'jsp', NULL, NULL, '2020-08-25 15:02:50', '2020-08-25 15:02:50'),
(39, 1, 'ikuiku@gmail.com', 'yeah', NULL, NULL, '2020-08-25 15:04:53', '2020-08-25 15:04:53'),
(40, 15, 'ikuiku@gmail.com', 'ahihi do cho', NULL, NULL, '2020-08-25 15:05:40', '2020-08-25 15:05:40'),
(41, 15, 'ikuiku@gmail.com', 'con cho con', NULL, NULL, '2020-08-25 15:05:50', '2020-08-25 15:05:50'),
(42, 15, 'ikuiku@gmail.com', 'san pham tuyet voi', NULL, NULL, '2020-08-25 15:08:11', '2020-08-25 15:08:11'),
(43, 15, 'ikuiku@gmail.com', 'kokokokok', NULL, NULL, '2020-08-25 15:09:10', '2020-08-25 15:09:10'),
(44, 15, 'ikuiku@gmail.com', 'kakaka', NULL, NULL, '2020-08-25 15:16:31', '2020-08-25 15:16:31'),
(45, 15, 'ikuiku@gmail.com', 'san pham qua te', NULL, NULL, '2020-08-25 15:22:13', '2020-08-25 15:22:13'),
(46, 15, 'ikuiku@gmail.com', 'san pham tuyet voi', NULL, NULL, '2020-08-25 15:23:47', '2020-08-25 15:23:47'),
(47, 15, 'ikuiku@gmail.com', 'yeah', NULL, NULL, '2020-08-25 15:25:10', '2020-08-25 15:25:10'),
(48, 15, 'ikuiku@gmail.com', 'ahihi', NULL, NULL, '2020-08-25 15:26:10', '2020-08-25 15:26:10'),
(49, 16, 'ikuiku@gmail.com', 'san pham qua tuyet voi', NULL, NULL, '2020-08-25 15:27:24', '2020-08-25 15:27:24'),
(50, 18, 'ikuiku@gmail.com', 'san pham qua te', NULL, NULL, '2020-08-25 15:48:44', '2020-08-25 15:48:44'),
(51, 18, 'ikuiku@gmail.com', 'san pham con hang khong !', NULL, NULL, '2020-08-25 15:50:12', '2020-08-25 15:50:12'),
(52, 15, 'ikuiku@gmail.com', 'ahaha', NULL, NULL, '2020-08-26 15:14:49', '2020-08-26 15:14:49'),
(53, 3, 'ikuiku@gmail.com', 'dsadsdasdsa', NULL, NULL, '2020-08-27 08:08:04', '2020-08-27 08:08:04'),
(54, 3, 'ikuiku@gmail.com', 'san', NULL, NULL, '2020-08-27 08:08:15', '2020-08-27 08:08:15'),
(55, 3, 'ikuiku@gmail.com', 'aaaa', NULL, NULL, '2020-08-27 08:10:30', '2020-08-27 08:10:30'),
(56, 3, 'admin@gmail.com', 'hello anh em', NULL, NULL, '2020-08-30 06:21:16', '2020-08-30 06:21:16'),
(57, 3, 'admin@gmail.com', 'chao anh em', NULL, NULL, '2020-08-30 06:22:17', '2020-08-30 06:22:17'),
(58, 3, 'admin@gmail.com', 'assss', NULL, NULL, '2020-08-30 06:23:15', '2020-08-30 06:23:15'),
(59, 3, 'admin@gmail.com', 'we are', NULL, NULL, '2020-08-30 06:25:15', '2020-08-30 06:25:15'),
(60, 3, 'admin@gmail.com', 'hello world', NULL, NULL, '2020-08-30 06:26:47', '2020-08-30 06:26:47'),
(61, 3, 'admin@gmail.com', 'im here', NULL, NULL, '2020-08-30 06:27:42', '2020-08-30 06:27:42'),
(62, 3, 'admin@gmail.com', 'con ga an co', NULL, NULL, '2020-08-30 06:28:55', '2020-08-30 06:28:55'),
(63, 3, 'admin@gmail.com', 'con cho an cuc', NULL, NULL, '2020-08-30 06:29:49', '2020-08-30 06:29:49'),
(64, 3, 'admin@gmail.com', 'kakaka', NULL, NULL, '2020-08-30 06:30:32', '2020-08-30 06:30:32'),
(65, 3, 'admin@gmail.com', 'sssss', NULL, NULL, '2020-08-30 06:33:51', '2020-08-30 06:33:51'),
(66, 4, 'admin@gmail.com', 'may nay qua yeu', NULL, NULL, '2020-08-31 02:36:09', '2020-08-31 02:36:09'),
(67, 2, 'ikuiku@gmail.com', 'may nay qua yeu', NULL, NULL, '2020-08-31 02:37:34', '2020-08-31 02:37:34'),
(68, 2, 'ikuiku@gmail.com', 'hello anh em', NULL, NULL, '2020-08-31 02:40:23', '2020-08-31 02:40:23'),
(69, 2, 'ikuiku@gmail.com', 'abcxyz', NULL, NULL, '2020-08-31 02:42:18', '2020-08-31 02:42:18'),
(70, 2, 'hihihi@gmail.com', 'kkkkiiii', NULL, NULL, '2020-08-31 03:01:03', '2020-08-31 03:01:03'),
(71, 2, 'hihihi@gmail.com', 'aaaaa', NULL, NULL, '2020-08-31 03:01:33', '2020-08-31 03:01:33'),
(72, 2, 'hihihi@gmail.com', 'toi la ai', NULL, NULL, '2020-08-31 03:03:19', '2020-08-31 03:03:19'),
(73, 2, 'hihihi@gmail.com', 'va day la dau', NULL, NULL, '2020-08-31 03:03:38', '2020-08-31 03:03:38');

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
-- Cấu trúc bảng cho bảng `introduction`
--

CREATE TABLE `introduction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `introduction`
--

INSERT INTO `introduction` (`id`, `product_id`, `title`, `image`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'Đánh giá chi tiết iPhone X 64GB', NULL, 'Đã lâu lắm rồi Apple mới ra mắt một sản phẩm với thiết kế đột phá và liều lĩnh. Dù vấp phải khá nhiều ý kiến trái chiều nhưng cũng không thể phủ nhận độ hấp dẫn của chiếc iPhone thế hệ thứ 10 này. Công nghệ bảo mật mới, loại bỏ nút home truyền thống, camera với những tính năng độc quyền, tất cả đã khiến người dùng đứng ngồi không yên cho đến khi được trên tay.', '2020-08-28 05:19:31', '2020-08-28 05:19:31'),
(2, 1, 'iPhone X 64GB có thiết kế lột xác hoàn toàn', 'image/x_d_1.jpg', 'iPhone X 64GBđã lột xác hoàn toàn với việc loại bỏ nút Home truyền thống, màn hình tràn viền và camera kép ở phía sau đã được đặt lại vị trí theo chiều dọc. Khung viền từ thép sáng bóng bền bỉ và mặt lưng kính với các góc bo tròn dễ dàng cầm nắm. Có thể nói đây là một thiết kế khá đột phá mà lâu lắm rồi Apple mới thể hiện lại. Người dùng cần phải trên tay thì mới cảm nhận được hết nét tinh tế và sang trọng của sản phẩm.', '2020-08-28 05:19:31', '2020-08-28 05:19:31'),
(3, 1, 'Màn hình của iPhone X 64GB hiển thị đẹp hơn', 'image/x_d_2.jpg', 'iPhone X 64GB là chiếc smartphone đầu tiên được Apple ưu ái cho tấm nền màn hình OLED, kích thước 5.8 inch và độ phân giải đạt chuẩn Super Retina HD, Điều này giúp cho màn hình có màu sắc sống động, góc nhìn rộng hơn, cải thiện độ sáng và tốn ít điện năng hơn. Bên cạnh đó, công nghệ True Tone còn giúp màu sắc trở nên cực kì trung thực.', '2020-08-28 05:19:31', '2020-08-28 05:19:31'),
(4, 1, 'iPhone X 64GB được trang bị công nghệ bảo mật mới hoàn toàn', 'image/x_d_3.jpg', 'Với thiết kế loại bỏ nút Home truyền thống vốn được xem là biểu tượng của Apple, công nghệ bảo mật mới – Face ID lần đầu tiên xuất hiện trên một chiếc iPhone với hiệu quả cao gấp 20 lần so với Touch ID, có khả năng nhận diện khuôn mặt cực kì chuẩn xác dù bạn cao đi râu, để tóc dài, thân hình mập ra,… Face ID vẫn dễ dàng nhận ra bạn.', '2020-08-28 05:19:31', '2020-08-28 05:19:31'),
(5, 1, 'Camera ấn tượng với tính năng độc quyền', 'image/x_d_4.jpg', 'iPhone X 64GB có 3 tính năng độc quyền cho camera trước là Portrait Mode Selfie (xóa phông), Portrait Lighting (ánh sáng chân dung), Animoji (biểu tượng cảm xúc) có thể bắt chước điệu bộ khuôn mặt và giọng nói người dùng. Khác biệt lớn nhất của iPhone X là chức năng chống rung (OIS) cho cả ống kính góc rộng và tele ở camera sau, đồng nghĩa iPhone X có thể chụp ảnh sắc nét hơn trong mọi trường hợp.', '2020-08-28 05:19:31', '2020-08-28 05:19:31'),
(6, 1, 'Pin của iPhone X 64GB bền bỉ, hỗ trợ sạc không dây', 'image/x_d_5.jpg', 'Theo công bố, thời lượng pin của iPhone X sẽ lâu hơn iPhone 7 khoảng 2 giờ đồng hồ. Hai tính năng thú vị khác cũng được đưa lên sản phẩm: sạc nhanh (sạc pin 50% chỉ trong 30 phút) và sạc không dây Qi. Với tấm sạc Air Power của hãng, bạn có thể sạc cùng lúc iPhone X, đồng hồ Apple Watch và tai nghe không dây Air Pods.', '2020-08-28 05:19:31', '2020-08-28 05:19:31'),
(7, 1, 'iPhone X 64GB được trang bị công nghệ bảo mật mới hoàn toàn', 'image/x_d_6.jpg', 'Với thiết kế loại bỏ nút Home truyền thống vốn được xem là biểu tượng của Apple, công nghệ bảo mật mới – Face ID lần đầu tiên xuất hiện trên một chiếc iPhone với hiệu quả cao gấp 20 lần so với Touch ID, có khả năng nhận diện khuôn mặt cực kì chuẩn xác dù bạn cao đi râu, để tóc dài, thân hình mập ra,… Face ID vẫn dễ dàng nhận ra bạn.', '2020-08-28 05:19:31', '2020-08-28 05:19:31'),
(8, 45, 'Đánh giá chi tiết iPhone 11 Pro Max 64GB', 'image/11promax_i_1.jpg', 'Chiếc iPhone mạnh mẽ nhất, lớn nhất, thời lượng pin tốt nhất đã xuất hiện. iPhone 11 Pro Max chắc chắn là chiếc điện thoại mà ai cũng ao ước khi sở hữu những tính năng xuất sắc nhất, đặc biệt là camera và pin.', '2020-08-29 08:04:31', '2020-08-29 08:04:31'),
(9, 45, 'Sức mạnh hàng đầu của Pro', 'image/11promax_i_2.jpg', 'Được trang bị bộ vi xử lý Apple A13 Bionic, iPhone 11 Pro Max tự tin thể hiện đẳng cấp hiệu năng “Pro”. So với thế hệ trước, Apple A13 Bionic nhanh hơn 20% và tiêu thụ năng lượng ít hơn tới 40% cả về CPU lẫn GPU. iPhone 11 Pro Max mạnh mẽ vượt trội khi đặt cạnh bất cứ đối thủ nào trên thị trường hiện nay. Mọi tác vụ kể cả những tựa game nặng nhất cũng đều được thể hiện trơn tru, mượt mà trên iPhone 11 Pro Max 64GB.', '2020-08-29 08:04:31', '2020-08-29 08:04:31'),
(10, 45, 'Thời lượng pin tốt nhất trong lịch sử iPhone', 'image/11promax_i_3.jpg', 'Bạn đã từng thấy iPhone Xs Max có thời lượng pin tốt đến mức nào, nhưng đó chưa phải là tất cả. iPhone 11 Pro Max là chiếc iPhone có thời lượng pin tốt nhất từ trước đến nay, thậm chí còn vượt xa khi so với iPhone Xs Max. Thời gian sử dụng của iPhone 11 Pro Max dài hơn 5 giờ, cho phép bạn thoải mái làm tất cả những điều mình thích. Kết quả này có được nhờ sự kết nối ăn khớp giữa phần cứng (bao gồm pin, chip, màn hình) và hệ điều hành mới. Ấn tượng hơn nữa, với sạc nhanh 18W đi kèm, bạn chỉ mất 30 phút sạc cho 50% pin. Luôn đầy đủ năng lượng và sẵn sàng đương đầu với mọi thử thách, đó là iPhone 11 Pro Max.', '2020-08-29 08:04:31', '2020-08-29 08:04:31'),
(11, 45, 'Tác phẩm nghệ thuật đích thực', 'image/11promax_i_4.jpg', 'Không chỉ đơn thuần là một chiếc điện thoại, iPhone 11 Pro Max là một tác phẩm nghệ thuật đích thực. Sự kết hợp hoàn hảo giữa những vật liệu cao cấp là khung thép không gỉ và hai mặt kính cường lực giúp iPhone 11 Pro Max rất sang trọng, đẳng cấp. iPhone mới đã chuyển sang mặt lưng sơn nhám độc đáo, đẹp mắt hơn đồng thời không bị bám bẩn hay dấu vân tay. iPhone Pro Max có 4 màu thời thượng là Vàng, Xám không gian, Bạc và Xanh Midnight. Dù là một chiếc điện thoại màn hình lớn, nhưng sự hoàn thiện cao cấp giúp iPhone 11 Pro Max vẫn dễ dàng cầm nắm và thao tác.', '2020-08-29 08:04:31', '2020-08-29 08:04:31'),
(12, 45, 'Kính cường lực siêu cứng, chống nước hoàn hảo', 'image/11promax_i_5.jpg', 'iPhone 11 Pro Max không chỉ đẹp xuất sắc mà còn là một chiếc điện thoại vô cùng bền vững. Được chế tác từ khung thép không gỉ và hai mặt kính cường lực cứng nhất thế giới smartphone, iPhone 11 Pro Max có khả năng chống va đập cực tốt. Chất lỏng cũng không phải là mối nguy hại với iPhone 11 Pro Max khi với chuẩn chống nước IP68, điện thoại có khả năng ngâm nước dưới độ sâu 4m trong thời gian tối đa 30 phút. Thiết kế vững chắc giúp bạn yên tâm hơn khi sử dụng.', '2020-08-29 08:04:31', '2020-08-29 08:04:31'),
(13, 45, 'Trải nghiệm màn hình lớn 6,5 inch Super Retina XDR tuyệt mỹ', 'image/11promax_i_6.jpg', 'iPhone 11 Pro Max là chiếc iPhone có màn hình lớn nhất với tấm nền 6,5 inch, công nghệ Super Retina XDR mới nhất. Một màn hình OLED hiển thị màu sắc sống động, độ tương phản và độ sáng đáng kinh ngạc sẽ đưa bạn đến những trải nghiệm chưa từng thấy. Khả năng hiển thị ngoài trời hoàn hảo với độ sáng 800 nits và thậm chí là 1200 nits khi xem những nội dung có dải nhạy sáng rộng. Dù là bất cứ nội dung gì thì iPhone 11 Pro Max cũng hiển thị một cách tuyệt vời. Ấn tượng hơn nữa, màn hình này còn tiết kiệm điện hơn 15%, để iPhone 11 Pro Max có thời lượng pin khó tin.            ', '2020-08-29 08:04:31', '2020-08-29 08:04:31'),
(14, 45, 'Hệ thống 3 camera sau đẳng cấp, nâng tầm nhiếp ảnh chuyên nghiệp', 'image/11promax_i_7.jpg', 'Với việc trang bị hệ thống 3 camera sau chất lượng, iPhone 11 Pro Max đã có một bước tiến dài về nhiếp ảnh. Chụp cảnh rộng gấp 4 lần; chụp ảnh thiếu sáng hoàn hảo; quay video 4K 60fps chống rung và khả năng chỉnh sửa hậu kỳ bằng những công cụ chuyên nghiệp, dễ sử dụng ngay trên chiếc iPhone của bạn. iPhone 11 Pro Max chính là chiếc điện thoại có camera xuất sắc bậc nhất hiện nay.', '2020-08-29 08:04:31', '2020-08-29 08:04:31'),
(15, 45, 'Phóng to tầm mắt của bạn', 'image/11promax_i_8.jpg', 'Cả thế giới sẽ được thu gọn trong camera của iPhone 11 Pro Max. Từ camera Tele, camera góc rộng cho đến camera góc siêu rộng, iPhone 11 Pro Max có thể zoom quang 4x hay chụp được những khung cảnh lớn gấp 4 lần. Dù vật thể gần hay xa, từ những sinh vật nhỏ bé cho đến những cảnh vật thiên nhiên hùng vĩ, iPhone 11 Pro Max đều có thể lưu giữ lại theo cách chân thực nhất.', '2020-08-29 08:04:31', '2020-08-29 08:04:31'),
(16, 45, 'Ảnh chụp thiếu sáng tuyệt đẹp', 'image/11promax_i_9.jpg', 'Thiếu sáng không còn là điều kiện có thể làm khó camera iPhone 11 Pro Max nữa. Với cảm biến camera mới và chế độ chụp đêm chuyên dụng Night Mode, iPhone 11 Pro Max có thể thu được những ánh đèn lung linh huyền ảo trong đêm tối. Bạn không cần phải chỉnh sửa gì, iPhone sẽ tự động kích hoạt chế độ Night Mode khi ánh sáng không đủ và mang đến kết quả tuyệt vời nhất.', '2020-08-29 08:04:31', '2020-08-29 08:04:31'),
(17, 45, 'Ảnh chân dung xóa phông “ảo diệu”', 'image/11promax_i_10.jpg', 'iPhone 11 Pro Max chắc chắn là chiếc điện thoại có khả năng chụp ảnh chân dung xóa phông hàng đầu hiện nay. Hệ thống 3 camera hoạt động cùng lúc giúp cho những bức ảnh chân dung sẽ được xóa phông chính xác, phân tách chủ thể và hậu cảnh mượt mà, hiệu ứng làm mờ tự nhiên. Trên iPhone 11 Pro Max, bạn có thể xóa phông 2 người cùng lúc trong bức ảnh; xóa phông với đối tượng là vật thể. Đồng thời cường độ ánh sáng, hiệu ứng hậu cảnh cũng được điều chỉnh để có được kết quả mỹ mãn nhất.', '2020-08-29 08:04:31', '2020-08-29 08:04:31'),
(18, 45, 'Nâng tầm ảnh chụp bằng Smart HDR', 'image/11promax_i_11.jpg', 'Tính năng Smart HDR trên iPhone 11 Pro Max sẽ giúp ảnh chụp “chất” hơn bao giờ hết. Thuật toán tiên tiến, cảm biến cao cấp cùng khả năng tự học hỏi Machine Learning sẽ giúp ánh sáng, độ tương phản, cân bằng trắng và màu sắc trở nên hoàn hảo. Trong một bức ảnh chụp, chủ thể và cảnh nền sẽ được tinh chỉnh riêng biệt giống như những máy ảnh DSLR cao cấp để mang lại bức ảnh thực sự có hồn, chân thực và sống động.', '2020-08-29 08:04:31', '2020-08-29 08:04:31'),
(19, 45, 'Quay và chỉnh sửa video chuyên nghiệp', 'image/11promax_i_12.jpg', 'iPhone luôn là thiết bị được đánh giá rất cao về quay video. Nhưng với iPhone 11 Pro Max, bạn còn bất ngờ hơn vì những gì mà chiếc điện thoại này mang lại. Bộ vi xử lý mạnh mẽ và cụm 3 camera giúp iPhone 11 Pro Max có thể quay những đoạn video chất lượng 4K 60fps siêu sắc nét. Khả năng chống rung chuyên nghiệp, dải nhạy sáng cực rộng, chuyển đổi góc nhìn giữa các camera giúp video trở nên hấp dẫn hơn bao giờ hết. Bạn còn có tính năng zoom vào đối tượng trong khi quay, cả hình ảnh lẫn âm lượng đều trở nên lớn hơn. Không chỉ vậy, hệ thống phần mềm biên tập và công cụ chỉnh sửa trên iPhone sẽ giúp bạn nhanh chóng hậu kỳ, xuất bản đoạn video ưng ý.', '2020-08-29 08:04:31', '2020-08-29 08:04:31'),
(20, 45, 'Trở nên xinh đẹp hơn với camera selfie 12MP', 'image/11promax_i_13.jpg', 'Trên iPhone 11 Pro Max, camera trước đã được nâng cấp lên độ phân giải 12MP, mang đến ảnh chụp sắc nét, chi tiết và chất lượng cao hơn. Camera này còn được tích hợp thêm tính năng quay video chuyển động siêu chậm 120 fps, mở ra một khái niệm mới mang tên slofie. Những khoảnh khắc của bạn sẽ được lưu lại độc đáo qua các đoạn video siêu chậm quay bằng chính camera trước. Selfie đã là quá khứ, bây giờ là slofie!', '2020-08-29 08:04:31', '2020-08-29 08:04:31'),
(21, 45, 'Face ID, phương thức nhận diện khuôn mặt bảo mật nhất trên smartphone', 'image/11promax_i_14.jpg', 'Face ID trên iPhone 11 Pro Max được cải tiến nhận diện nhanh hơn 30%, giúp bạn mở khóa máy một cách tiện lợi và hoàn toàn tự nhiên. Để máy xa hơn, mở khóa dưới mọi góc độ, Face ID mới thật tuyệt vời. Không chỉ nhanh chóng, dữ liệu khuôn mặt của bạn còn vô cùng an toàn khi không được sao lưu ở bất cứ đâu. Ngoài ra, thông tin bản đồ và iMessage cũng được mã hóa để không ai có thể lấy thông tin từ bạn. Nhanh chóng, tiện lợi và rất bảo mật.', '2020-08-29 08:04:31', '2020-08-29 08:04:31'),
(22, 44, 'Đánh giá chi tiết iPhone 11 Pro 64GB', 'image/11pro_i_1.jpg', 'Chào đón bạn đến với thế hệ iPhone Pro đầu tiên. iPhone 11 Pro sở hữu hệ thống 3 camera đẳng cấp, một bước nhảy vọt về thời lượng pin và con chip mới có hiệu năng mạnh mẽ chưa từng thấy. Mạnh mẽ, khác biệt và chuyên nghiệp, sản phẩm hoàn toàn xứng đáng với tên gọi.', '2020-08-29 11:58:12', '2020-08-29 11:58:12'),
(23, 44, 'Kiệt tác thiết kế, 4 màu sắc thời thượng', 'image/11pro_i_2.jpg', 'Hoàn thiện từ khung thép không gỉ chắc chắn và hai mặt kính cường lực bóng bẩy, iPhone 11 Pro 64GB thật sự nổi bật giữa đám đông. Chiếc iPhone nhỏ gọn, cho cảm giác cầm nắm hoàn hảo nhưng vẫn có màn hình đủ lớn để trải nghiệm tốt mọi thứ. 4 phiên bản màu sắc sang trọng, mang đến nhiều lựa chọn cho người dùng. 4 màu sắc iPhone 11 Pro bao gồm Vàng, Xám không gian, Bạc và đặc biệt là màu mới Xanh Midnight đầy cuốn hút.', '2020-08-29 11:58:12', '2020-08-29 11:58:12'),
(24, 44, 'Chiếc iPhone đầu tiên có 3 camera sau', 'image/11pro_i_3.jpg', 'Hệ thống 3 camera lần đầu tiên xuất hiện trên Apple iPhone 11 Pro. Chụp cảnh rộng gấp 4 lần; hình ảnh tuyệt đẹp trong điều kiện ánh sáng yếu; quay video chất lượng cao nhất thế giới smartphone và trên hết khả năng chỉnh sửa với những công cụ chuyên nghiệp ngay trên chiếc điện thoại của bạn. iPhone 11 Pro sẽ là nơi khởi nguồn cho những sáng tạo và cảm hứng bất tận trong nhiếp ảnh.', '2020-08-29 11:58:12', '2020-08-29 11:58:12'),
(25, 44, 'Không giới hạn tầm nhìn', 'image/11pro_i_4.jpg', 'Với bộ 3 camera đẳng cấp, điện thoại iPhone 11 Pro cho phép bạn phóng to ảnh từ camera Tele cho đến camera góc siêu rộng mới. Khả năng zoom quang 4x và thu được khung cảnh lớn gấp 4 lần đầy ấn tượng. Hãy mang những dãy núi hùng vĩ, những công trình kiến trúc đặc biệt hay cả một cánh rừng nguyên sinh vào trong ống kính của riêng bạn.', '2020-08-29 11:58:12', '2020-08-29 11:58:12'),
(26, 44, 'Chụp ảnh hoàn hảo ngay cả khi ánh sáng yếu', 'image/11pro_i_5.jpg', 'Từ nhà hàng ánh đèn lung linh cho đến bãi biển dưới ánh trăng, iPhone 11 Pro dễ dàng ghi lại những khoảnh khắc của bạn trong điều kiện thiếu sáng nhờ chế độ chụp đêm Night Mode. Sự kết hợp giữa cảm biến camera mới, phần mềm thông minh và khả năng xử lý tuyệt vời của con chip A13 Bionic mang lại những bức ảnh thiếu sáng chưa từng có trên iPhone. Đơn giản bạn chỉ cần đưa máy lên và chụp, điện thoại sẽ tự động nhận diện điều kiện ánh sáng để đưa ra chế độ chụp phù hợp, cho kết quả hoàn hảo nhất.', '2020-08-29 11:58:12', '2020-08-29 11:58:12'),
(27, 44, 'Ảnh chân dung chuẩn studio', 'image/11pro_i_6.jpg', 'Với 3 máy ảnh hoạt động cùng lúc, khả năng chụp ảnh chân dung của iPhone 11 Pro 64GB trở nên chuyên nghiệp hơn bao giờ hết. Bạn sẽ có thêm những hiệu ứng ánh sáng đơn sắc chuẩn studio. Chế độ xóa phông mới cũng cho phép bạn điều chỉnh cường độ ánh sáng, nhờ vậy chủ thể sẽ xuất hiện đẹp lung linh, đậm phong cách và cá tính khác biệt.', '2020-08-29 11:58:12', '2020-08-29 11:58:12'),
(28, 44, 'Sắc nét đến từng chi tiết với Smart HDR', 'image/11pro_i_7.jpg', 'Những bức ảnh chụp bằng iPhone 11 Pro sẽ có chất lượng khó tin nhờ Smart HDR thế hệ mới. Các thuật toán tiên tiến cùng khả năng tự học hỏi Machine Learning được áp dụng để làm nổi bật ánh sáng, hiệu ứng bóng đổ và từng chi tiết nhỏ trong bức ảnh. Apple iPhone 11 Pro có thể tinh chỉnh riêng biệt chủ thể và cảnh nền, tính năng vốn chỉ có ở một số máy ảnh DSLR cao cấp. Mỗi bức ảnh sẽ là một tác phẩm nghệ thuật với iPhone 11 Pro.', '2020-08-29 11:58:13', '2020-08-29 11:58:13'),
(29, 44, 'Sống động trên từng thước phim', 'image/11pro_i_8.jpg', 'iPhone 11 Pro cho phép bạn quay những đoạn video đẹp chân thực, với độ chi tiết cao và chuyển động mượt mà. Bộ vi xử lý mạnh mẽ cùng cụm camera cao cấp giúp thiết bị mới này có khả năng quay video 4K 60fps với dải nhạy sáng cực rộng và chống rung chuyên nghiệp. Thậm chí với camera góc rộng, bạn có thể sáng tạo hơn khi liên tục thay đổi góc nhìn, tất cả đều diễn ra một cách trơn tru và đẹp mắt. Hơn nữa, khi bạn zoom hình ảnh vào người đang nói chuyện thì âm lượng của giọng nói cũng được tăng lên theo, giống như phim truyền hình vậy. Và cuối cùng, tất cả đều được biên tập và chỉnh sửa nhanh chóng dựa trên những gì iPhone 11 Pro đã trang bị sẵn.', '2020-08-29 11:58:13', '2020-08-29 11:58:13'),
(30, 44, 'Camera selfie mới 12MP, quay video chuyển động siêu chậm', 'image/11pro_i_9.jpg', 'Không chỉ có chất lượng chụp ảnh tốt hơn khi được nâng cấp lên độ phân giải 12MP, camera selfie mới của iPhone 11 Pro 64GB còn có khả năng quay video chuyển động siêu chậm ở 120 fps. Những đoạn video chuyển động siêu chậm quay bằng camera trước được gọi là slofie, cho bạn lưu lại những khoảnh khắc theo cách ấn tượng. Camera này cũng có góc rộng hơn để không ai bị bỏ qua trong khung hình. Mỗi bức ảnh selfie đều trở nên Pro hơn.', '2020-08-29 11:58:13', '2020-08-29 11:58:13'),
(31, 44, 'Màn hình Super Retina XDR, hiển thị Pro', 'image/11pro_i_10.jpg', 'Khái niệm màn hình Super Retina XDR lần đầu tiên xuất hiện trên điện thoại iPhone 11 Pro. Màn hình công nghệ OLED mới cho màu sắc chân thực, góc nhìn hoàn hảo và độ sáng đáng kinh ngạc. Độ sáng màn hình iPhone 11 Pro đạt tới 800 nits khi hiển thị ngoài trời và thậm chí đạt con số 1200 nits khi xem những nội dung có dải nhạy sáng rộng. Ngoài việc hiển thị xuất sắc, màn hình này còn tiết kiệm điện hơn 15%, giúp iPhone 11 Pro có thời lượng pin chưa từng thấy.', '2020-08-29 11:58:13', '2020-08-29 11:58:13'),
(32, 44, 'Hiệu năng mạnh nhất, nhanh nhất trên smartphone', 'image/11pro_i_11.jpg', 'Bộ vi xử lý A13 Bionic một lần nữa mang đến sự đột phá cho hiệu năng iPhone 11 Pro. Con chip siêu mạnh mẽ cả về CPU và GPU còn được hỗ trợ bởi trí tuệ nhân tạo, tự động học hỏi để mang đến trải nghiệm mượt mà hiếm có. Mọi tác vụ dù phức tạp đến mấy đều được xử lý nhanh chóng, mọi tựa game nặng đều được thể hiện xuất sắc. So với các smartphone trên thị trường hiện nay, hiệu năng máy ở một đẳng cấp khác, đẳng cấp của Pro.', '2020-08-29 11:58:13', '2020-08-29 11:58:13'),
(33, 44, 'Bước nhảy vọt về thời lượng pin', 'image/11pro_i_12.jpg', 'iPhone Xs có thời lượng pin rất tốt, nhưng Apple iPhone 11 Pro mới thực sự là một bước nhảy vọt với thời lượng pin tốt hơn tới 4 giờ so với người tiền nhiệm. Đây là kết quả của cả hệ thống vận hành, bao gồm pin, chip, màn hình, phần mềm được cải tiến. Bạn sẽ có một chiếc iPhone 11 Pro thời lượng pin dùng thoải mái, đồng thời sạc cực nhanh bằng củ sạc 18W đi kèm. Chỉ cần 30 phút sạc cho cả ngày dài năng động, pin thiết bị sẽ làm bạn phải bất ngờ.', '2020-08-29 11:58:13', '2020-08-29 11:58:13'),
(34, 44, 'Chiếc iPhone chắc chắn và bền bỉ', 'image/11pro_i_13.jpg', 'Được làm từ chất liệu thép không gỉ và kính cường lực cứng nhất thế giới smartphone, iPhone 11 Pro 64GB vô cùng chắc chắn, sẵn sàng đương đầu mọi thử thách. Khả năng chống nước chuẩn IP68 cho phép bạn ngâm nước dưới độ sâu 4m trong thời gian lên tới 30 phút, đồng nghĩa với việc iPhone 11 miễn nhiễm với hầu hết nguy cơ từ chất lỏng. Điện thoại cũng có khả năng chống bụi để luôn luôn sạch đẹp với lớp sơn nhám kiểu mới.', '2020-08-29 11:58:13', '2020-08-29 11:58:13'),
(35, 44, 'Nhận diện khuôn mặt Face ID nhanh và bảo mật hơn', 'image/11pro_i_14.jpg', 'Face ID của iPhone 11 Pro nhanh hơn 30%, nhận diện được xa hơn, nhiều góc độ hơn và hiệu quả hơn. Thao tác mở khóa sẽ diễn ra hoàn toàn tự nhiên. Đơn giản chỉ cần nhấc iPhone lên, máy sẽ mở khóa ngay lập tức. Ngoài ra, mọi dữ liệu trên iPhone đều được bảo mật an toàn. Kể cả dữ liệu khuôn mặt của bạn cũng không hề được sao lưu ở iCloud hay bất cứ nơi nào khác. Thông tin bản đồ và iMessage cũng được mã hóa, không ai có quyền lấy thông tin cá nhân của bạn.', '2020-08-29 11:58:13', '2020-08-29 11:58:13'),
(36, 43, 'Đánh giá chi tiết iPhone 11 64GB', 'image/11_i_1.jpg', 'iPhone 11 với 6 phiên bản màu sắc, camera có khả năng chụp ảnh vượt trội, thời lượng pin cực dài và bộ vi xử lý mạnh nhất từ trước đến nay sẽ mang đến trải nghiệm tuyệt vời dành cho bạn.', '2020-08-29 12:13:06', '2020-08-29 12:13:06'),
(37, 43, 'Rực rỡ sắc màu, thể hiện cá tính', 'image/11_i_2.jpg', 'Có tới 6 sự lựa chọn màu sắc cho iPhone 11 64GB, bao gồm Tím, Vàng, Xanh lục, Đen, Trắng và Đỏ, tha hồ để bạn lựa chọn màu phù hợp với sở thích, cá tính riêng của bản thân. Vẻ đẹp của iPhone 11 đến từ thiết kế cao cấp khi được làm từ khung nhôm nguyên khối và mặt lưng liền lạc với một tấm kính duy nhất. Ở mặt trước, bạn sẽ được chiêm ngưỡng màn hình Liquid Retina lớn 6,1 inch, màu sắc vô cùng chân thực. Tất cả tạo nên chiếc điện thoại tràn đầy hứng khởi.', '2020-08-29 12:13:06', '2020-08-29 12:13:06'),
(38, 43, 'Hệ thống camera kép mới', 'image/11_i_3.jpg', 'Apple iPhone 11 sở hữu cụm camera kép mặt sau, bao gồm camera góc rộng và camera góc siêu rộng. Cảm biến camera góc rộng 12MP có khả năng lấy nét tự động nhanh gấp 3 lần trong điều kiện thiếu sáng. Bên cạnh đó cảm biến góc siêu rộng cho khả năng chụp cảnh rộng gấp 4 lần, là phương tiện ghi hình tuyệt vời cho những chuyến du lịch, chụp hình nhóm. Nhanh chóng chụp ảnh, quay video, chỉnh sửa và chia sẻ ngay trên iPhone, bạn sẽ không bỏ lỡ bất cứ khoảnh khắc đáng nhớ nào.', '2020-08-29 12:13:06', '2020-08-29 12:13:06'),
(39, 43, 'Quay video chưa bao giờ chuyên nghiệp đến thế', 'image/11_i_4.jpg', 'Điện thoại iPhone 11 64GB có khả năng quay những đoạn video tuyệt đẹp với độ phân giải 4K 60fps siêu sắc nét. Camera góc siêu rộng mang đến nhiều khung cảnh hơn, đồng thời khả năng quay chuyển động cực ấn tượng sẽ tạo nên những thước phim hoàn hảo. Ngoài ra bạn còn có thể tập trung thu âm vào một chủ thể khi quay video bằng cách phóng to, zoom hình ảnh – đồng thời zoom âm thanh hết sức thú vị. Tất nhiên sau khi quay video, việc chỉnh sửa và xuất bản sẽ diễn ra hết sức tiện lợi, nhanh chóng trên iPhone 11.', '2020-08-29 12:13:07', '2020-08-29 12:13:07'),
(40, 43, 'Night Mode, chuyên gia chụp ảnh thiếu sáng', 'image/11_i_5.jpg', 'Chụp ảnh thiếu sáng không còn là vấn đề trên iPhone 11. Với chế độ chụp đêm chuyên dụng Night Mode hoàn toàn mới, máy ảnh sẽ nhìn thấy rõ ràng từng chi tiết trong đêm tối. Không cần phải bật đèn flash, hình ảnh vẫn trở nên sống động nhờ ánh sáng tự nhiên, màu sắc chính xác và chất ảnh sáng rõ.', '2020-08-29 12:13:07', '2020-08-29 12:13:07'),
(41, 43, 'Hiệu ứng xóa phông “ảo diệu”', 'image/11_i_6.jpg', 'Những bức ảnh chân dung xóa phông của bạn sẽ trở nên “ảo diệu” hơn trên iPhone 11. Với cơ chế xóa phông và ánh sáng mới, giờ đây bạn có thể chụp ảnh xóa phông cùng người bạn thân; thêm hiệu ứng ánh sáng Studio; thay đổi độ mờ phông nền. Các bức ảnh xóa phông sẽ có độ làm mờ tuyệt hảo, phân tách chủ thể chính xác và ánh sáng đẹp mắt.', '2020-08-29 12:13:07', '2020-08-29 12:13:07'),
(42, 43, 'Smart HDR thế hệ mới, chụp ảnh tốt hơn trong điều kiện ánh sáng phức tạp', 'image/11_i_7.jpg', 'Nhờ trí tuệ nhân tạo Machine Learning, tính năng Smart HDR trên camera iPhone 11 thông minh hơn bao giờ hết. Camera sẽ tự động nhận diện người và cảnh, sau đó đưa ra các tinh chỉnh riêng biệt. Trong cùng một bức ảnh, khuôn mặt sẽ có điểm nhấn đẹp hơn, tông màu da tự nhiên – trong khi đó phần khung cảnh nền hoàng hôn vẫn tuyệt đẹp theo một cách khác. Smart HDR sẽ giúp điện thoại xử lý bức ảnh xuất sắc, đặc biệt là trong điều kiện ánh sáng phức tạp.', '2020-08-29 12:13:07', '2020-08-29 12:13:07'),
(43, 43, 'Camera trước 12MP, hơn cả chụp ảnh selfie', 'image/11_i_8.jpg', 'Camera trước của iPhone 11 đã được nâng cấp lên 12MP, mang đến những bức ảnh selfie sắc nét và chất lượng cao hơn. Apple còn bổ sung thêm tính năng mới mang tên slofie – quay một đoạn video chuyển động siêu chậm 120 fps bằng chính camera trước. Lưu giữ những khoảnh khắc thú vị theo cách của riêng bạn.', '2020-08-29 12:13:07', '2020-08-29 12:13:07'),
(44, 43, 'Chiếc iPhone bền bỉ và thân thiện', 'image/11_i_9.jpg', 'Không chỉ có vẻ ngoài hấp dẫn, iPhone 11 còn rất vững chắc khi sử dụng kính cường lực cứng nhất trong thế giới smartphone. Nước cũng không phải là vấn đề với khả năng chống nước chuẩn IP68, cho phép bạn ngâm thiết bị dưới 2m trong vòng 30 phút, điện thoại vẫn hoàn toàn sống khỏe dưới nước. Tuyệt vời hơn nữa, tất cả vật liệu chế tạo nên iPhone 11 đều có khả năng tái chế, cực kỳ thân thiện với môi trường.', '2020-08-29 12:13:07', '2020-08-29 12:13:07'),
(45, 43, 'Màn hình Liquid Retina sống động đến từng chi tiết', 'image/11_i_10.jpg', 'Màn hình 6,1 inch Liquid Retina trên điện thoại iPhone 11 mang cả thế giới đến trước mắt bạn khi mọi thứ đều chân thực một cách tuyệt vời. Cân bằng trắng được điều chỉnh dựa theo ánh sáng xung quanh, để nhiệt độ màu luôn luôn dễ chịu. Với cảm ứng xúc giác Haptic Touch hoàn toàn mới, bạn có thể thao tác nhanh chóng trên màn hình cảm ứng.', '2020-08-29 12:13:07', '2020-08-29 12:13:07'),
(46, 43, 'Thoải mái sử dụng cả ngày', 'image/11_i_11.jpg', 'Thời lượng pin của iPhone 11 64GB trên cả mong đợi, cho phép bạn sử dụng thoải mái trong cả ngày dài. Đây là kết quả của sự tương thích tuyệt đối giữa phần cứng và phần mềm. Hơn nữa, với tính năng sạc nhanh, chỉ cần 30 phút cho 50% pin, nhanh chóng nạp đầy năng lượng.', '2020-08-29 12:13:07', '2020-08-29 12:13:07'),
(47, 43, 'Sức mạnh đẳng cấp khác biệt', 'image/11_i_12.jpg', 'Cả iPhone 11 và iPhone 11 Pro đều được trang bị bộ vi xử lý mạnh nhất thế giới smartphone hiện tại. Apple A13 Bionic mang đến hiệu năng đẳng cấp khác biệt, mọi thứ đều diễn ra nhanh chóng, mượt mà một cách hoàn hảo. Kể cả những tựa game nặng nhất, có đồ họa chân thực đến khó tin vẫn được thể hiện cực đỉnh trên iPhone 11. Sử dụng iPhone 11 64GB nghĩa là bạn sẽ có chiếc máy hiệu năng đảm bảo dùng tốt trong nhiều năm nữa.', '2020-08-29 12:13:07', '2020-08-29 12:13:07'),
(48, 43, 'Nhận diện khuôn mặt nhanh hơn bao giờ hết', 'image/11_i_13.jpg', 'Face ID mới được cải tiến cho phép bạn mở khóa iPhone 11 64GB nhanh chóng và dễ dàng hơn bao giờ hết. Thậm chí Face ID còn tiện lợi và bảo mật hơn cả phương án truyền thống là cảm biến vân tay Touch ID. Bạn có thể dùng tính năng này để đăng nhập vào ứng dụng, tài khoản, ngân hàng và thanh toán với Apple Pay. Tất cả thông tin đều được bảo mật tuyệt đối khi Face ID không hề lưu trữ hay chia sẻ hình ảnh của bạn. Kể cả khi gửi ảnh hay gọi FaceTime, hình ảnh của bạn cũng được mã hóa an toàn.', '2020-08-29 12:13:07', '2020-08-29 12:13:07'),
(49, 41, 'Đánh giá chi tiết iPhone Xs Max 256GB', 'image/xs_i_1.jpg', 'iPhone Xs Max 256GB là chiếc iPhone có màn hình lớn nhất, bộ nhớ trong dồi dào, mang trên mình những công nghệ đỉnh cao hoàn hảo.', '2020-08-29 12:29:34', '2020-08-29 12:29:34'),
(50, 41, 'Làm mọi thứ trên chiếc iPhone có màn hình 6,5 inch', 'image/xs_i_2.jpg', 'Tin được không, iPhone Xs Max có màn hình lớn vượt trội so với mọi thế hệ iPhone trước đây Bạn sẽ được tận hưởng một màn hình OLED 6,5 inch chất lượng cao và hỗ trợ hiển thị HDR. HDR mang đến màu sắc chính xác, màu đen có chiều sâu, độ sáng và độ tương phản tuyệt vời. Độ phân giải cũng vượt xa so với những gì mắt thường có thể phân biệt được, màn hình siêu nét 2688 x 1242 pixels cho trải nghiệm xem tuyệt vời đến khó tin.', '2020-08-29 12:29:34', '2020-08-29 12:29:34'),
(51, 41, '', 'image/xs_i_3.jpg', 'Dù có màn hình rất lớn nhưng iPhone Xs Max 256GB vẫn dễ dàng nằm gọn trong tay, đơn giản vì thiết kế viền màn hình tràn 4 cạnh giúp cho iPhone Xs Max thậm chí còn nhỏ gọn hơn iPhone 8 Plus. Thật tuyệt khi chiếc iPhone của chúng ta màn hình lớn hơn rất nhiều, nhưng vẫn dễ dàng sử dụng.', '2020-08-29 12:29:34', '2020-08-29 12:29:34'),
(52, 41, 'Âm thanh lớn và sống động', 'image/xs_i_4.jpg', 'iPhone Xs Max 256GB có thể nói là chiếc smartphone có loa ngoài tốt bậc nhất hiện nay. Cụm loa kép stereo cho chất lượng khó tin về cả độ lớn lẫn độ chi tiết. Loa ngoài trên thực tế rất quan trọng khi nó thường xuyên được người dùng sử dụng, iPhone Xs Max mang đến những phút giây giải trí tuyệt vời với màn hình lớn đỉnh cao và loa ngoài cực chất.', '2020-08-29 12:29:34', '2020-08-29 12:29:34'),
(53, 41, 'Chiếc iPhone mạnh mẽ nhất, thông minh nhất', 'image/xs_i_5.jpg', 'Bộ vi xử lý Apple A12 Bionic trên iPhone Xs Max là sự nâng cấp vượt bậc về hiệu năng khi không chỉ mạnh mẽ, mà nó còn giúp iPhone của bạn thông minh hơn rất nhiều. Con chip này có 6 nhân, trong đó 2 nhân hiệu năng cao nhanh hơn 15% và 4 nhân tiết kiệm điện tiết kiệm hơn 50% so với thế hệ trước A11 Bionic của iPhone X. Mọi tựa game ở thiết lập cao nhất cũng đều được iPhone Xs Max vượt qua nhẹ nhàng khi GPU mới mạnh hơn tới 50%.', '2020-08-29 12:29:34', '2020-08-29 12:29:34'),
(54, 41, '', 'image/xs_i_6.jpg', 'Sự thông minh của Apple A12 Bionic thể hiện ở 8 nhân Neural Engine có khả năng học hỏi theo thời gian thực. Nhờ vậy mà iPhone Xs Max có thể nhận ra thói quen sử dụng điện thoại người dùng, sau đó đưa ra những dự đoán, hành động xử lý để các thao tác được diễn ra trơn tru hơn. Ví dụ iPhone Xs Max đoán biết bạn thường xuyên mở ứng dụng gì để khởi chạy trước, cho tốc độ vào ứng dụng nhanh hơn. 8 nhân AI can thiệp và hỗ trợ mọi hành động trên iPhone Xs Max, từ nhận diện khuôn mặt, chụp ảnh xóa phông, smart HDR cho đến công nghệ thực tế tăng cường AR.', '2020-08-29 12:29:34', '2020-08-29 12:29:34'),
(55, 41, 'Thời lượng pin tuyệt vời', 'image/xs_i_7.jpg', 'Là chiếc iPhone có viên pin dung lượng cao nhất, kết hợp với con chip tiết kiệm điện A12 Bionic, iPhone Xs Max cho bạn những trải nghiệm thoải mái mà không cần lo đến thời lượng pin. So với iPhone X thì Xs Max có thời lượng pin tốt hơn nhiều, để bạn làm mọi việc yêu thích cả ngày.', '2020-08-29 12:29:34', '2020-08-29 12:29:34'),
(56, 41, 'Chế tác cao cấp và bền vững', 'image/xs_i_8.jpg', 'Những vật liệu cao cấp, đặc biệt và bền vững chính là các thành phần cấu tạo nên iPhone Xs Max 256GB. Đó là viền thép không gỉ sáng bóng và mặt kính bền nhất trong thế giới smartphone. Sự tỉ mỉ, chính xác trong gia công của Apple mang đến chiếc điện thoại vừa sang trọng lại vừa hết sức chắc chắn. Ba lựa chọn màu là Xám không gian, Bạc và Vàng đều có những nét cá tính riêng, phù hợp cho từng đối tượng người dùng. Đặc biệt, hai phiên bản màu Vàng và Xám được sơn bằng quá trình xử lý màu PVD, tạo hiệu ứng ánh sáng qua lớp kính rất đẹp mắt.', '2020-08-29 12:29:34', '2020-08-29 12:29:34'),
(57, 41, 'Face ID được cải tiến, nhận diện chính xác và nhanh hơn', 'image/xs_i_9.jpg', 'Face ID trên iPhone Xs Max 256GB là chìa khóa cho mọi thao tác bảo mật của bạn. Bạn có thể mở khóa, xác thực ứng dụng, thanh toán nhanh chóng thông qua nhận diện khuôn mặt. Hệ thống camera TrueDepth sẽ ghi nhớ, nhận diện tới 30.000 điểm trên khuôn mặt của bạn và mở khóa nhanh chóng. Bên cạnh đó, hệ thống này vô cùng thông minh khi ghi nhớ và học hỏi thói quen của bạn để sau này dù có đội mũ hay đeo kính thì Face ID vẫn nhận diện chính xác. Face ID của iPhone Xs Max chính là phương thức bảo mật an toàn nhất trên smartphone từ trước đến nay.', '2020-08-29 12:29:34', '2020-08-29 12:29:34'),
(58, 41, 'Chụp ảnh đẹp chưa bao giờ dễ dàng đến thế', 'image/xs_i_10.jpg', 'Camera iPhone Xs Max 256GB mang đến cái nhìn khác về ảnh chụp từ smartphone. Trang bị cảm biến xử lý hình ảnh ISP tiên tiến kết hợp tính năng Smart HDR mang đến khả năng cân bằng sáng chính xác, màu sắc hoàn hảo. Ảnh chụp xóa phông trên iPhone Xs Max cũng được nâng tầm khi bạn đã có thể tùy chỉnh độ mờ hậu cảnh sau khi chụp, cho bức ảnh chân dung hoàn toàn như ý muốn.', '2020-08-29 12:29:34', '2020-08-29 12:29:34'),
(59, 41, '', 'image/xs_i_11.jpg', 'Sử dụng cảm biến mới có điểm ảnh lớn hơn, iPhone Xs Max có khả năng chụp đẹp dù là trong đêm tối. Tính năng Smart HDR lý tưởng cho chụp ảnh động khi bắt nét siêu nhanh và chính xác. iPhone Xs Max 256GB đích thực là thiết bị chụp hình chuyên nghiệp, vượt qua giới hạn của smartphone thông thường.', '2020-08-29 12:29:34', '2020-08-29 12:29:34'),
(60, 41, 'Camera selfie xóa phông chuyên nghiệp', 'image/xs_i_12.jpg', 'Không chỉ camera chính, giờ đây những cải tiến từ hệ thống camera TrueDepth giúp cho bạn có thể chụp ảnh xóa phông ngay cả trên camera selfie. Hãy tự tạo ra những tác phẩm nghệ thuật cho riêng mình bằng camera selfie xóa phông thế hệ mới tuyệt đẹp của iPhone Xs Max 256GB.', '2020-08-29 12:29:34', '2020-08-29 12:29:34'),
(61, 41, 'Chuẩn kháng nước IP68', 'image/xs_i_13.jpg', 'Chuẩn kháng nước IP68 trên iPhone Xs Max là  bền nhất trên một thiết bị di động, cho phép ngâm nước ở độ sâu 2m trong vòng 30 phút. Bạn có thể hoàn toàn yên tâm với hầu hết loại chất lỏng, kể cả coffee, soda, bia, trà cũng không thể làm hại điện thoại.', '2020-08-29 12:29:34', '2020-08-29 12:29:34'),
(62, 41, 'Đánh giá chi tiết iPhone Xs Max 256GB', 'image/xs_i_1.jpg', 'iPhone Xs Max 256GB là chiếc iPhone có màn hình lớn nhất, bộ nhớ trong dồi dào, mang trên mình những công nghệ đỉnh cao hoàn hảo.', '2020-08-29 12:41:04', '2020-08-29 12:41:04'),
(63, 41, 'Làm mọi thứ trên chiếc iPhone có màn hình 6,5 inch', 'image/xs_i_2.jpg', 'Tin được không, iPhone Xs Max có màn hình lớn vượt trội so với mọi thế hệ iPhone trước đây Bạn sẽ được tận hưởng một màn hình OLED 6,5 inch chất lượng cao và hỗ trợ hiển thị HDR. HDR mang đến màu sắc chính xác, màu đen có chiều sâu, độ sáng và độ tương phản tuyệt vời. Độ phân giải cũng vượt xa so với những gì mắt thường có thể phân biệt được, màn hình siêu nét 2688 x 1242 pixels cho trải nghiệm xem tuyệt vời đến khó tin.', '2020-08-29 12:41:04', '2020-08-29 12:41:04'),
(64, 41, '', 'image/xs_i_3.jpg', 'Dù có màn hình rất lớn nhưng iPhone Xs Max 256GB vẫn dễ dàng nằm gọn trong tay, đơn giản vì thiết kế viền màn hình tràn 4 cạnh giúp cho iPhone Xs Max thậm chí còn nhỏ gọn hơn iPhone 8 Plus. Thật tuyệt khi chiếc iPhone của chúng ta màn hình lớn hơn rất nhiều, nhưng vẫn dễ dàng sử dụng.', '2020-08-29 12:41:04', '2020-08-29 12:41:04'),
(65, 41, 'Âm thanh lớn và sống động', 'image/xs_i_4.jpg', 'iPhone Xs Max 256GB có thể nói là chiếc smartphone có loa ngoài tốt bậc nhất hiện nay. Cụm loa kép stereo cho chất lượng khó tin về cả độ lớn lẫn độ chi tiết. Loa ngoài trên thực tế rất quan trọng khi nó thường xuyên được người dùng sử dụng, iPhone Xs Max mang đến những phút giây giải trí tuyệt vời với màn hình lớn đỉnh cao và loa ngoài cực chất.', '2020-08-29 12:41:04', '2020-08-29 12:41:04'),
(66, 41, 'Chiếc iPhone mạnh mẽ nhất, thông minh nhất', 'image/xs_i_5.jpg', 'Bộ vi xử lý Apple A12 Bionic trên iPhone Xs Max là sự nâng cấp vượt bậc về hiệu năng khi không chỉ mạnh mẽ, mà nó còn giúp iPhone của bạn thông minh hơn rất nhiều. Con chip này có 6 nhân, trong đó 2 nhân hiệu năng cao nhanh hơn 15% và 4 nhân tiết kiệm điện tiết kiệm hơn 50% so với thế hệ trước A11 Bionic của iPhone X. Mọi tựa game ở thiết lập cao nhất cũng đều được iPhone Xs Max vượt qua nhẹ nhàng khi GPU mới mạnh hơn tới 50%.', '2020-08-29 12:41:04', '2020-08-29 12:41:04'),
(67, 41, '', 'image/xs_i_6.jpg', 'Sự thông minh của Apple A12 Bionic thể hiện ở 8 nhân Neural Engine có khả năng học hỏi theo thời gian thực. Nhờ vậy mà iPhone Xs Max có thể nhận ra thói quen sử dụng điện thoại người dùng, sau đó đưa ra những dự đoán, hành động xử lý để các thao tác được diễn ra trơn tru hơn. Ví dụ iPhone Xs Max đoán biết bạn thường xuyên mở ứng dụng gì để khởi chạy trước, cho tốc độ vào ứng dụng nhanh hơn. 8 nhân AI can thiệp và hỗ trợ mọi hành động trên iPhone Xs Max, từ nhận diện khuôn mặt, chụp ảnh xóa phông, smart HDR cho đến công nghệ thực tế tăng cường AR.', '2020-08-29 12:41:04', '2020-08-29 12:41:04'),
(68, 41, 'Thời lượng pin tuyệt vời', 'image/xs_i_7.jpg', 'Là chiếc iPhone có viên pin dung lượng cao nhất, kết hợp với con chip tiết kiệm điện A12 Bionic, iPhone Xs Max cho bạn những trải nghiệm thoải mái mà không cần lo đến thời lượng pin. So với iPhone X thì Xs Max có thời lượng pin tốt hơn nhiều, để bạn làm mọi việc yêu thích cả ngày.', '2020-08-29 12:41:04', '2020-08-29 12:41:04'),
(69, 41, 'Chế tác cao cấp và bền vững', 'image/xs_i_8.jpg', 'Những vật liệu cao cấp, đặc biệt và bền vững chính là các thành phần cấu tạo nên iPhone Xs Max 256GB. Đó là viền thép không gỉ sáng bóng và mặt kính bền nhất trong thế giới smartphone. Sự tỉ mỉ, chính xác trong gia công của Apple mang đến chiếc điện thoại vừa sang trọng lại vừa hết sức chắc chắn. Ba lựa chọn màu là Xám không gian, Bạc và Vàng đều có những nét cá tính riêng, phù hợp cho từng đối tượng người dùng. Đặc biệt, hai phiên bản màu Vàng và Xám được sơn bằng quá trình xử lý màu PVD, tạo hiệu ứng ánh sáng qua lớp kính rất đẹp mắt.', '2020-08-29 12:41:04', '2020-08-29 12:41:04'),
(70, 41, 'Face ID được cải tiến, nhận diện chính xác và nhanh hơn', 'image/xs_i_9.jpg', 'Face ID trên iPhone Xs Max 256GB là chìa khóa cho mọi thao tác bảo mật của bạn. Bạn có thể mở khóa, xác thực ứng dụng, thanh toán nhanh chóng thông qua nhận diện khuôn mặt. Hệ thống camera TrueDepth sẽ ghi nhớ, nhận diện tới 30.000 điểm trên khuôn mặt của bạn và mở khóa nhanh chóng. Bên cạnh đó, hệ thống này vô cùng thông minh khi ghi nhớ và học hỏi thói quen của bạn để sau này dù có đội mũ hay đeo kính thì Face ID vẫn nhận diện chính xác. Face ID của iPhone Xs Max chính là phương thức bảo mật an toàn nhất trên smartphone từ trước đến nay.', '2020-08-29 12:41:04', '2020-08-29 12:41:04'),
(71, 41, 'Chụp ảnh đẹp chưa bao giờ dễ dàng đến thế', 'image/xs_i_10.jpg', 'Camera iPhone Xs Max 256GB mang đến cái nhìn khác về ảnh chụp từ smartphone. Trang bị cảm biến xử lý hình ảnh ISP tiên tiến kết hợp tính năng Smart HDR mang đến khả năng cân bằng sáng chính xác, màu sắc hoàn hảo. Ảnh chụp xóa phông trên iPhone Xs Max cũng được nâng tầm khi bạn đã có thể tùy chỉnh độ mờ hậu cảnh sau khi chụp, cho bức ảnh chân dung hoàn toàn như ý muốn.', '2020-08-29 12:41:04', '2020-08-29 12:41:04'),
(72, 41, '', 'image/xs_i_11.jpg', 'Sử dụng cảm biến mới có điểm ảnh lớn hơn, iPhone Xs Max có khả năng chụp đẹp dù là trong đêm tối. Tính năng Smart HDR lý tưởng cho chụp ảnh động khi bắt nét siêu nhanh và chính xác. iPhone Xs Max 256GB đích thực là thiết bị chụp hình chuyên nghiệp, vượt qua giới hạn của smartphone thông thường.', '2020-08-29 12:41:04', '2020-08-29 12:41:04'),
(73, 41, 'Camera selfie xóa phông chuyên nghiệp', 'image/xs_i_12.jpg', 'Không chỉ camera chính, giờ đây những cải tiến từ hệ thống camera TrueDepth giúp cho bạn có thể chụp ảnh xóa phông ngay cả trên camera selfie. Hãy tự tạo ra những tác phẩm nghệ thuật cho riêng mình bằng camera selfie xóa phông thế hệ mới tuyệt đẹp của iPhone Xs Max 256GB.', '2020-08-29 12:41:04', '2020-08-29 12:41:04'),
(74, 41, 'Chuẩn kháng nước IP68', 'image/xs_i_13.jpg', 'Chuẩn kháng nước IP68 trên iPhone Xs Max là  bền nhất trên một thiết bị di động, cho phép ngâm nước ở độ sâu 2m trong vòng 30 phút. Bạn có thể hoàn toàn yên tâm với hầu hết loại chất lỏng, kể cả coffee, soda, bia, trà cũng không thể làm hại điện thoại.', '2020-08-29 12:41:04', '2020-08-29 12:41:04'),
(75, 42, 'Đánh giá chi tiết iPhone SE (2020) 64GB', 'image/se2020_i_1.jpg', 'Một chiếc iPhone nhỏ gọn mang trên mình bộ vi xử lý mạnh mẽ hàng đầu, iPhone SE 2020 với mức giá hấp dẫn chưa từng thấy sẽ là sự lựa chọn phù hợp dành cho tất cả người dùng.', '2020-08-29 13:12:30', '2020-08-29 13:12:30'),
(76, 42, 'Mang tình yêu trở lại với thiết kế sang trọng', 'image/se2020_i_2.jpg', 'iPhone SE 2020 có một thiết kế quen thuộc, thiết kế đã dành được rất nhiều tình cảm của người dùng trong những năm qua. Kiểu dáng nhỏ gọn, bo tròn các cạnh, thân máy siêu mỏng tinh tế và hoàn thiện từ chất liệu nhôm kết hợp kính cao cấp, iPhone SE 2020 mang đến cảm hứng bất tận cho người dùng. Chiếc iPhone nhỏ gọn rất dễ dàng cầm nắm, thao tác hay cho vào túi mang đi bất cứ đâu nhưng vẫn toát lên vẻ sang trọng đậm chất Apple, iPhone SE 2020 cho bạn cảm giác thân thuộc, thoải mái hơn bao giờ hết.', '2020-08-29 13:12:30', '2020-08-29 13:12:30'),
(77, 42, 'Màn hình 4,7 inch Retina HD tuyệt đẹp', 'image/se2020_i_3.jpg', 'Không cần phải có một màn hình “quá khổ”, iPhone SE 2020 vẫn tỏa sáng với màn hình 4,7 inch Retina HD tuyệt đẹp. Với công nghệ IPS LCD, hình ảnh hiển thị trong trẻo, màu sắc chính xác và độ sáng cực cao, đáp ứng tốt mọi nhu cầu sử dụng. Màn hình iPhone SE 2020 còn hỗ trợ công nghệ True Tone, giúp màu sắc có khả năng thay đổi theo môi trường để bạn luôn được tận hưởng màn hình tự nhiên và dịu mắt nhất. Một màn hình đẹp, sẵn sàng cho những trải nghiệm nhưng lại không quá lớn để ảnh hưởng đến cảm giác cầm nắm, đó chính là iPhone SE 2020.', '2020-08-29 13:12:30', '2020-08-29 13:12:30'),
(78, 42, 'Sức mạnh đáng kinh ngạc', 'image/se2020_i_4.jpg', 'Điểm ấn tượng nhất trên iPhone SE 2020 chính là sức mạnh cấu hình. Apple đã trang bị cho iPhone SE mới bộ vi xử lý A13 Bionic, con chip mạnh mẽ nhất thế giới smartphone hiện nay và cũng chính là bộ não đang có mặt trên chiếc iPhone 11 Pro cao cấp. Nhờ A13 Bionic, chiếc iPhone SE 2020 nhỏ gọn của chúng ta sở hữu tốc độ đáng kinh ngạc. Bạn có thể mở ứng dụng, chơi game, chỉnh sửa video hay bất cứ tác vụ nào, iPhone SE 2020 đều đáp ứng hoàn hảo. Cấu hình của iPhone SE 2020 đủ để máy chạy mượt trong nhiều năm tới, phù hợp cho nhu cầu sử dụng lâu dài.', '2020-08-29 13:12:30', '2020-08-29 13:12:30'),
(79, 42, 'Chụp ảnh chân dung xóa phông chuyên nghiệp', 'image/se2020_i_5.jpg', 'Hệ thống camera tiên tiết kết hợp với bộ vi xử lý A13 Bionic xử lý hình ảnh mạnh mẽ giúp iPhone SE 2020 có khả năng chụp ảnh xóa phông kinh ngạc. Đặc biệt, bạn có thể sử dụng tính năng ảnh chụp xóa phông ở cả camera trước và sau. Hiệu ứng làm mờ chính xác, khả năng điều chỉnh độ mờ theo ý muốn kết hợp cùng 6 tùy chọn ánh sáng chuẩn studio, mang đến cho bạn những bức hình xóa phông “sống ảo” đầy nghệ thuật và sáng tạo.', '2020-08-29 13:12:30', '2020-08-29 13:12:30'),
(80, 42, 'Thỏa sức chụp ảnh trong mọi điều kiện ánh sáng', 'image/se2020_i_6.jpg', 'Ngược sáng hay thiếu sáng sẽ không còn là vấn đề với iPhone SE 2020. Tính năng Smart HDR thế hệ mới nhất sẽ xử lý thông minh mọi điều kiện ánh sáng, nhận diện khuôn mặt để giúp làn da bạn luôn đẹp tự nhiên dù là chụp trong các điều kiện ánh sáng phức tạp. Các hiệu ứng bóng đổ, độ chi tiết sắc nét sẽ giúp ảnh chụp từ iPhone SE 2020 trở nên thực sự ấn tượng.', '2020-08-29 13:12:30', '2020-08-29 13:12:30'),
(81, 42, 'Quay video 4K siêu nét', 'image/se2020_i_7.jpg', 'iPhone SE 2020 có khả năng quay video chuẩn 4K, cho độ nét gấp 4 lần video Full HD 1080p. Dải nhạy sáng rộng, giàu chi tiết và màu sắc tuyệt vời sẽ giúp bạn ghi lại những khoảnh khắc đáng nhớ qua các đoạn video sinh động, chất lượng cao. Ngoài ra bạn còn có thể quay video nhanh trong lúc đang chụp ảnh bằng cách giữ phím chụp hình, rất nhanh chóng để không bỏ lỡ bất cứ khoảnh khắc thú vị nào.', '2020-08-29 13:12:30', '2020-08-29 13:12:30'),
(82, 42, 'Phím Home “thần thánh” với cảm biến vân tay Touch ID', 'image/se2020_i_8.jpg', 'Thật tuyệt vời khi phím Home cứng quen thuộc đã trở lại trên iPhone SE 2020. Bạn sẽ không cần phải mất thời gian làm quen mà có thể sử dụng máy một cách thành thạo khi dù đang ở bất cứ đâu, chỉ cần nhấn vào phím Home để quay lại màn hình chủ. Tất nhiên cảm biến vân tay Touch ID cũng không thể thiếu trên phím Home “thần thánh”. Bạn có thể sử dụng vân tay để mở khóa máy, thay cho mật khẩu ở các ứng dụng, kể cả những ứng dụng thanh toán. Bảo mật an toàn và tiện lợi, Touch ID giúp cuộc sống của bạn dễ dàng hơn.', '2020-08-29 13:12:30', '2020-08-29 13:12:30'),
(83, 42, 'Khả năng chống nước và chống bụi tuyệt hảo', 'image/se2020_i_9.jpg', 'iPhone SE 2020 mang trên mình chuẩn chống nước và chống bụi IP67, giúp điện thoại trở nên rất bền vững. Chuẩn IP67 cho phép bạn ngâm nước ở độ sâu 1m trong vòng 30 phút mà máy vẫn sống khỏe. Giờ đây việc sử dụng điện thoại dưới trời mưa hay lỡ đổ nước vào iPhone cũng sẽ không khiến bạn phải lo lắng.', '2020-08-29 13:12:30', '2020-08-29 13:12:30'),
(84, 42, 'Thời lượng pin xuất sắc', 'image/se2020_i_10.jpg', 'Nếu bạn xem thường thời lượng pin iPhone SE 2020 vì kích thước nhỏ gọn của nó thì bạn đã sai. iPhone SE mới có thời lượng pin đáng nể với khả năng phát video liên tục trong 13 giờ sau một lần sạc đầy. Đồng thời iPhone SE 2020 cũng tương thích với sạc không dây và sạc nhanh 18W, chỉ mất 30 phút để sạc từ 0% lên 50%, luôn sẵn sàng cho cuộc sống năng động.', '2020-08-29 13:12:30', '2020-08-29 13:12:30'),
(85, 42, 'Hai SIM trong một chiếc iPhone, liên lạc linh hoạt hơn', 'image/se2020_i_11.jpg', 'Điện thoại iPhone SE 2020 hỗ trợ 2 SIM với eSIM để bạn có khả năng liên lạc linh hoạt hơn. Với 2 số điện thoại trong cùng một chiếc iPhone, bạn có nhiều lựa chọn cho việc liên lạc của mình. Một SIM cho công việc, một SIM cho gia đình bạn bè hay sử dụng 2 SIM 2 nhà mạng để tiết kiệm giá cước, tất cả là do bạn quyết định.', '2020-08-29 13:12:30', '2020-08-29 13:12:30'),
(86, 40, 'Đánh giá chi tiết iPhone 8 Plus 64GB', '', 'Apple bất ngờ ra mắt bộ đôi iPhone 8 và iPhone 8 Plus tạo ra cơn bão mới càn quét hết các bảng xếp hạng siêu phẩm. Như thường lệ, iPhone 8 Plus từ thiết kế cho tới tính năng đều mang đến cho người dùng những trải nghiệm thú vị tuyệt vời không thể bỏ lỡ.', '2020-08-29 13:20:05', '2020-08-29 13:20:05'),
(87, 40, 'iPhone 8 Plus 64GB có thiết kế sang trọng', 'image/8plus_i_1.jpg', 'iPhone 8 Plus 64Gb đã thay đổi về mặt thiết kế so với những đời iPhone cũ: mặt sau đã chuyển sang chất liệu kính bo cong 2.5D đẹp mắt hơn, loại bỏ viền ăng-ten, bộ khung kim loại cứng cáp hơn cùng với 7 lớp xử lý màu tăng mạnh khả năng chống trầy xước. Nhìn tổng thể thì không có nhiều thay đổi so với iPhone 7 Plus nhưng iPhone 8 Plus 64Gb lại mang đến cảm giác tinh tế sang trọng hơn rất nhiều.', '2020-08-29 13:20:05', '2020-08-29 13:20:05'),
(88, 40, 'iPhone 8 Plus 64GB sở hữu camera tốt nhất', 'image/8plus_i_2.jpg', 'Hệ thống camera kép tại mặt sau của iPhone 8 Plus 64Gb vẫn được thiết kế theo chiều ngang tuy nhiên lại được cải tiến mạnh mẽ: một ống kính rộng độ phân giải 12MP khẩu độ f/1.8 và một ống kính tele đồng độ phân giải khẩu độ f.2/8 được nâng cấp cho khả năng thu nhận ánh sáng nhiều hơn giúp hình ảnh sắc nét và chi tiết hơn trong mọi điều kiện môi trường. Ngoài ra còn tích hợp thêm công nghệ chống rung quang học giúp lấy nét nhanh hơn và chính xác hơn.', '2020-08-29 13:20:05', '2020-08-29 13:20:05'),
(89, 40, '', 'image/8plus_i_3.jpg', 'Quan trọng nhất là iPhone 8 Plus 64Gb còn hỗ trợ quay video chất lượng cao 4K/60fps và 1080p/240fps, điều mà chưa có chiếc smartphone nào hiện nay có thể đạt tới.', '2020-08-29 13:20:05', '2020-08-29 13:20:05'),
(90, 40, 'iPhone 8 64GB có hiệu năng mạnh mẽ', 'image/8plus_i_4.jpg', 'Sở hữu dòng chip mới nhất Apple A11 Bionic 6 nhân, trong đó 2 nhân có khả năng xử lý nhanh hơn 25%, 4 nhân còn lại có tốc độ nhanh hơn 70% so với dòng chip A10, iPhone 8 Plus 64Gb là chiếc smartphone có thể đáp ứng mọi nhu cầu mà bạn mong muốn một cách tối ưu nhất.', '2020-08-29 13:20:05', '2020-08-29 13:20:05'),
(91, 40, 'Trang bị công nghệ màn hình True Tone', 'image/8plus_i_5.jpg', 'Với màn hình True Tone 5.5 inch (vốn trước đó chỉ có trên iPad Pro), iPhone 8 Plus 64Gb sẽ ít phản chiếu ánh sáng hơn, do đó màu sắc mà người dùng thấy trên màn hình sẽ gần chính xác nhất với thực tế. Việc chặn phản chiếu ánh sáng này rất quan trọng để làm cho iPhone 8 Plus 64Gb có thể đọc chữ được nếu bạn ở ngoài trời. Độ phân giải FullHD 1920 x 1080 được cải tiến mạnh mẽ cho khả năng hiển thị chất lượng cao. ', '2020-08-29 13:20:05', '2020-08-29 13:20:05'),
(92, 40, 'Pin và sạc không dây', 'image/8plus_i_6.jpg', 'Cuối cùng thì Apple cũng tích hợp tính năng sạc không dây cho iPhone thông qua dock sạc AirPower, chuẩn Qi rất phổ biến. Tính năng này tuy không mới nhưng lại rất cần có trên iPhone vì tính an toàn và tiện lợi. Ngoài ra, iPhone 8 Plus 64Gb còn có khả năng sạc nhanh khi nạp đầy 50% lượng pin dung lượng 2900 mAh chỉ trong 30 phút. Với chip A11 Bionic 6 nhân mạnh mẽ, lượng tiêu thụ điện năng của iphone 8 Plus 64Gb giảm một nửa so với sản phẩm tiền nhiệm. Bây giờ “hết pin” không còn là vấn đề nữa rồi.', '2020-08-29 13:20:05', '2020-08-29 13:20:05'),
(93, 40, 'Hệ điều hành iOS 11', 'image/8plus_i_7.jpg', 'Hệ điều hành iOS 11 trên Apple iPhone 8 Plus 64Gb được đánh giá cao với nhiều cải tiến vượt bậc về giao diện, cho khả năng đa nhiệm mượt mà, hỗ trợ mạnh tính năng thực tế ảo AR, giúp người dùng có được trải nghiệm toàn diện hơn.', '2020-08-29 13:20:05', '2020-08-29 13:20:05'),
(94, 40, 'Tính năng chống nước', 'image/se2020_i_8.jpg', 'Theo Apple, iPhone 8 Plus 64Gb đạt chuẩn chống nước kháng bụi IP 67 cho phép chịu nước ở độ sâu 1 mét trong vòng 30 phút. Vì vậy người dùng có thể hoàn toàn yên tâm sử dụng dưới trời mưa hay trong môi trường đầy khói bụi.', '2020-08-29 13:20:05', '2020-08-29 13:20:05'),
(95, 39, 'Đánh giá chi tiết iPhone 7 Plus 32GB', '', 'Thiết kế hoàn thiện hơn', '2020-08-29 13:35:05', '2020-08-29 13:35:05'),
(96, 39, 'Thiết kế hoàn thiện hơn', 'image/7plus_i_1.jpg', 'Về thiết kế, vẫn là nhôm nguyên khối liền lạc nhưng iPhone 7 Plus đã có những nét thay đổi tinh tế khi đưa hai dải ăng-ten lên sát hai cạnh trên dưới, đồng thời bỏ đi jack cắm tai nghe 3.5 mm. Điểm nhấn ấn tượng nhất về ngoại hình của iPhone 7 Plus là việc Apple bỏ đi màu xám không gian từng rất được ưa chuộng trên các model cũ để bổ sung thêm tùy chọn màu đen mờ (màu đen bóng Jet Black chỉ có trên iPhone 7 Plus bản 128/256 GB).', '2020-08-29 13:35:05', '2020-08-29 13:35:05'),
(97, 39, 'Màn hình rộng 5.5 inch, sáng hơn, nhiều màu sắc hơn', 'image/7plus_i_2.jpg', 'iPhone 7 Plus cũng có màn hình rộng 5.5 inch độ phân giải 1080x1920 pixels tương tự iPhone 6s Plus, như vậy về kích thước tổng thể chúng ta không có gì thay đổi. Tuy nhiên, tấm nền màn hình mới đã được bổ sung thêm 25% độ sáng, đạt mức cao nhất 625 nits cùng khả năng tái tạo màu sắc, gam màu rộng hơn và hỗ trợ 3D Touch.', '2020-08-29 13:35:05', '2020-08-29 13:35:05'),
(98, 39, 'Nút Home cảm ứng lực hoàn toàn mới', 'image/7plus_i_3.jpg', 'Với chiếc điện thoại thế hệ mới, Apple đã \"xoá sổ\" hoàn toàn nút bấm vật lý trên màn hình iPhone. Giờ đây nút Home ở vị trí cũ đã trở thành cảm ứng, khi bạn nhấn xuống nó vẫn cảm nhận được lực nhấn và sẽ rung nhẹ để bạn biết rằng bạn đã tương tác. Apple đã sử dụng Taptic Engine trên Force Touch của Macbook cho chiếc iPhone mới này. Mặc dù vậy phím Home vẫn có cảm biến vân tay Touch ID và tích hợp nhiều tính năng bảo mật.', '2020-08-29 13:35:05', '2020-08-29 13:35:05');
INSERT INTO `introduction` (`id`, `product_id`, `title`, `image`, `content`, `created_at`, `updated_at`) VALUES
(99, 39, 'Camera chất lượng đột phá như máy ảnh chuyên nghiệp', 'image/7plus_i_4.jpg', 'iPhone 7 Plus đi kèm với một camera kép độ phân giải đồng thời 12 MP, trong số đó có một ống kính góc rộng khẩu độ lên đến f/1.8 và một ống kính zoom (tele) lên đến 10x, cùng tính năng ổn định hình ảnh quang học tự động. Nó cũng bao gồm một đèn flash 2 tông màu và đèn flash quad-LED. Camera iPhone 7 Plus hỗ trợ quay film 4K 60fps, chụp xóa phông, chụp trước lấy nét sau như một máy ảnh chuyên nghiệp. Camera trước độ phân giải 7 MP, chụp selfie tốt hơn và tự động chống rung. Bên cạnh đó, iOS 10 cũng cho phép người dùng iPhone 7 Plus chỉnh sửa, chọn lựa ảnh từ Live Photos, lưu ảnh ở định dạng RAW.', '2020-08-29 13:35:05', '2020-08-29 13:35:05'),
(100, 39, 'Tính năng chống nước tiện lợi', 'image/7plus_i_5.jpg', 'Có thể nói tính năng chống nước là điều làm hài lòng nhất các tín đồ nhà Táo. Với tiêu chuẩn chống nước IP67 sẽ giúp iPhone mới có thể sống ở độ sâu 1 mét nước trong 30 phút, vậy là từ nay bạn sẽ quên đi nỗi lo về thấm nước trên iPhone 7 Plus khi đi trong trời mưa hay lỡ tay rớt nước.', '2020-08-29 13:35:05', '2020-08-29 13:35:05'),
(101, 39, 'Tính năng chống nước tiện lợi', 'image/7plus_i_6.jpg', 'iPhone 7 Plus sử dụng chip A10 Fusion 4 lõi, 64-bit với tốc độ cực nhanh. Apple công bố con chip này có hiệu năng xử lý cao hơn 40% so với chip A9 và gấp 2 lần so với chip A8. Đặc biệt là nó còn cao gấp 120 lần so với iPhone đời đầu. Đi cùng đó là sự nâng cấp về bộ nhớ trong, phiên bản 16 GB trước đây đã bị loại bỏ, thay vào đó chúng ta sẽ có bộ nhớ trong ban đầu từ để thoải mái lưu trữ.', '2020-08-29 13:35:05', '2020-08-29 13:35:05'),
(102, 39, 'Âm thanh sống động cùng loa stereo', '', 'Loa ngoài trên iPhone 7 Plus bất ngờ được nâng cấp khi từ dạng đơn lên loa kép Stereo, với một loa nằm ở cạnh đáy và một nằm ở cạnh trên, cho âm lượng sống động gấp hai lần trên iPhone 6s.', '2020-08-29 13:35:05', '2020-08-29 13:35:05'),
(103, 39, 'Tăng thời lượng sử dụng pin', '', 'Theo công bố từ Apple, iPhone 7 Plus có khả năng sử dụng liên tục trong thời gian hơn 1 ngày, với 60 giờ lướt web không dây và 13 giờ sử dụng mạng LTE. Tăng hơn so với iPhone 6s Plus và đảm bảo sử dụng cho cả ngày dài.', '2020-08-29 13:35:05', '2020-08-29 13:35:05'),
(104, 38, 'Đánh giá chi tiết iPhone 6s Plus 32GB', '', 'Apple iPhone 6s Plus là chiếc iPhone màn hình lớn nhất, cho phép người dùng làm được nhiều việc hơn trên không gian rộng lớn. Ngoài ra, những tính năng mới như hệ điều hành iOS 10, 3D Touch, Live Photos hay camera 12MP xuất sắc sẽ mang đến sự hài lòng nhất cho bạn khi sử dụng một chiếc smartphone thực sự cao cấp.', '2020-08-29 13:43:29', '2020-08-29 13:43:29'),
(105, 38, 'Thiết kế truyền thống, màu sắc mới sang trọng', 'image/6s_i_1.jpg', 'iPhone 6s Plus sử dụng lớp vỏ hợp kim nhôm series 7000 mới, chất liệu đang được sử dụng trong ngành công nghiệp hàng không vũ trụ, cho độ bền hơn hẳn so với các thế hệ cũ. Vẫn là một thiết kế kiểu dáng mỏng, thanh lịch đầy sang trọng nhưng giờ iPhone 6s Plus đã mạnh mẽ và cứng cáp hơn. Một màu mới đem lại sự sang trọng cho người dùng.Ngoài ra, máy còn sở hữu kích thước tổng thể khá vừa vặn với các thông số lần lượt là 158.2 x 77.9 x 7.3 mm, cùng trọng lượng chỉ 192g cho phép người dùng mang theo máy một cách dễ dàng.', '2020-08-29 13:43:29', '2020-08-29 13:43:29'),
(106, 38, 'Hiệu năng mạnh mẽ với bộ vi xử lý A9', 'image/6s_i_2.jpg', 'iPhone 6s Plus sở hữu con chip mạnh mẽ nhất, tiên tiến nhất từ trước đến nay. Chip A9 là bộ vi xử lý 64bit thế hệ thứ 3 của Apple, có khả năng cung cấp hiệu suất tương đương với các máy tính để bàn mạnh mẽ. Bạn sẽ được trải nghiệm một chiếc iPhone nhanh hơn 70%, xử lý GPU đồ họa tốt hơn 90% trên mọi ứng dụng và các game 3D đồ họa cao.Bên cạnh đó, 6s Plus còn được trang bị bộ nhớ trong dung lượng lớn lên đến 32 GB cho phép người dùng lưu trữ dữ liệu một cách dễ dàng và thoải mái.', '2020-08-29 13:43:29', '2020-08-29 13:43:29'),
(107, 38, 'Chất lượng hiển thị tuyệt hảo với màn hình Retina', 'image/6s_i_3.jpg', 'iPhone 6s Plus xứng đáng là một trong những chiếc smartphone có màn hình đẹp nhất thế giới hiện nay. Máy được trang bị màn hình Rentina chất lượng cao, kích thước lớn 5,5 inches cùng độ phân giải 1920 x 1080 pixels mang đến cho bạn trải nghiệm hình ảnh hoàn hảo. Dù bạn xem phim, đọc báo hay làm bất cứ việc gì, một màn hình lớn vẫn luôn tiện dụng hơn.Cùng với đó, công nghệ cảm ứng 3D Touch cho phép người dùng thao tác với máy một cách đơn giản và nhanh chóng nhất.', '2020-08-29 13:43:29', '2020-08-29 13:43:29'),
(108, 38, 'Hệ thống camera sắc nét', 'image/6s_i_4.jpg', 'iPhone 6s Plus sở hữu hệ thống camera sắc nét với độ phân giải của camera sau giờ đây được nâng lên từ 8MP lên 12MP kết hợp thêm tính năng ổn định hình ảnh quang học OIS, camera iPhone 6s Plus cho khả năng chụp ảnh rất chuyên nghiệp, sắc nét, hình ảnh chi tiết. Không chỉ chụp ảnh xuất sắc, giờ đây iPhone 6s Plus còn có thể quay được video 4K, gấp 4 lần độ phân giải của video Full HD 1080p trước đây. Cả chụp ảnh và quay phim đều tuyệt vời, bạn sẽ làm được rất nhiều điều trên camera iPhone 6s Plus.Bên cạnh camera sau, camera trước cũng là một đặc điểm hấp dẫn trên các thế hệ iPhone trước đây. iPhone 6s Plus đã có một bước cải tiến mạnh mẽ khi camera FaceTime HD được nâng cấp lên độ phân giải 5MP, chụp ảnh chân dung và gọi video đầy ấn tượng. Về phần mềm, camera iPhone 6s Plus đi kèm tính năng mới là Live Photos, một cách lưu giữ hình ảnh mới của người dùng. Đó sẽ là một bức hình động lưu lại những khoảnh khắc đáng nhớ nhất.', '2020-08-29 13:43:29', '2020-08-29 13:43:29'),
(109, 38, 'Cảm biến vân tay Touch ID mới, an toàn hơn, nhạy bén hơn', 'image/6s_i_5.jpg', 'Cảm biến vân tay trên iPhone 6s Plus đã nhanh hơn và tốt hơn trước nhờ những cải tiến về công nghệ.  Touch ID giúp người dùng mở khóa nhanh và an toàn hơn. Người dùng cũng có thể sử dụng Apple Pay để thanh toán trên hàng triệu cửa hàng một cách chuyên nghiệp.', '2020-08-29 13:43:29', '2020-08-29 13:43:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `TrangThai` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `name`, `parent`, `TrangThai`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại', 0, 1, '2020-08-26 15:23:16', NULL),
(2, 'Phụ kiện', 0, 1, '2020-08-26 15:23:19', NULL),
(3, 'Tablet', 0, 1, '2020-08-26 15:23:20', NULL),
(4, 'Laptop', 0, 1, '2020-08-26 15:23:22', NULL),
(7, 'IPhone', 1, NULL, '2020-08-28 04:14:46', NULL),
(8, 'IPhone 6s plus', 7, NULL, '2020-09-01 02:31:12', '2020-09-01 02:31:12'),
(9, 'IPhone 7 plus', 7, NULL, '2020-09-01 02:31:37', NULL),
(10, 'IPhone 8 plus', 7, NULL, '2020-09-01 02:31:47', NULL),
(11, 'IPhone XS Max ', 7, NULL, '2020-09-01 02:32:32', NULL),
(12, 'IPhone SE 2020', 7, NULL, '2020-09-01 02:32:45', NULL),
(13, 'IPhone 11 ', 7, NULL, '2020-09-01 02:33:10', NULL),
(14, 'IPhone 11 Pro', 7, NULL, '2020-09-01 02:33:27', NULL),
(15, 'IPhone 11 Pro Max', 7, NULL, '2020-09-01 02:33:39', NULL);

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

--
-- Đang đổ dữ liệu cho bảng `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 29, 'hello', 0, '2020-08-30 08:10:57', '2020-08-30 08:10:57'),
(2, 29, 'im here', 0, '2020-08-30 08:14:18', '2020-08-30 08:14:18'),
(3, 29, 'toi la ai', 0, '2020-08-30 08:14:25', '2020-08-30 08:14:25'),
(4, 27, 'oasjoid', 0, '2020-08-30 08:25:25', '2020-08-30 08:25:25'),
(5, 29, 'hello', 0, '2020-08-31 05:02:48', '2020-08-31 05:02:48'),
(6, 29, 'warrwawra', 0, '2020-08-31 05:13:23', '2020-08-31 05:13:23'),
(7, 29, 'warrwawra', 0, '2020-08-31 05:13:37', '2020-08-31 05:13:37'),
(8, 22, 'ahihi', 0, '2020-08-31 05:26:00', '2020-08-31 05:26:00'),
(9, 12, 'im here', 0, '2020-08-31 05:52:00', '2020-08-31 05:52:00'),
(10, 12, 'ok kaido nha', 0, '2020-08-31 05:52:11', '2020-08-31 05:52:11'),
(11, 29, 'hello anh em', 0, '2020-08-31 05:58:18', '2020-08-31 05:58:18'),
(12, 29, 'lien quan di', 0, '2020-08-31 05:58:23', '2020-08-31 05:58:23'),
(13, 29, 'sssss', 0, '2020-08-31 06:06:24', '2020-08-31 06:06:24'),
(14, 29, 'rwarwrwa', 0, '2020-08-31 06:08:44', '2020-08-31 06:08:44'),
(15, 29, 'sdsdaasdsda', 0, '2020-09-01 01:55:42', '2020-09-01 01:55:42'),
(16, 29, 'ffffff', 0, '2020-09-01 01:59:10', '2020-09-01 01:59:10'),
(17, 29, 'adsadsdsadas', 0, '2020-09-01 02:00:05', '2020-09-01 02:00:05'),
(18, 29, 'asdsdadsa', 0, '2020-09-01 02:02:58', '2020-09-01 02:02:58'),
(19, 29, 'fhfgf', 0, '2020-09-01 02:03:03', '2020-09-01 02:03:03'),
(20, 26, 'ddsadsdsdsds', 0, '2020-09-01 02:09:42', '2020-09-01 02:09:42'),
(21, 26, 'hello anh em', 0, '2020-09-01 02:09:58', '2020-09-01 02:09:58'),
(22, 29, 'hello my name is vinh', 0, '2020-09-01 04:54:25', '2020-09-01 04:54:25'),
(23, 29, 'sssss', 0, '2020-09-01 05:05:15', '2020-09-01 05:05:15'),
(24, 29, 'aaaaa', 0, '2020-09-01 05:07:20', '2020-09-01 05:07:20'),
(25, 29, 'jjjj', 0, '2020-09-01 05:07:25', '2020-09-01 05:07:25'),
(26, 21, 'hello', 0, '2020-09-01 05:08:03', '2020-09-01 05:08:03'),
(27, 21, 'my name is luffdy', 0, '2020-09-01 05:09:07', '2020-09-01 05:09:07'),
(28, 29, 'hi', 0, '2020-09-01 05:09:52', '2020-09-01 05:09:52'),
(29, 21, 'dsasddasasdasd', 0, '2020-09-01 05:10:20', '2020-09-01 05:10:20'),
(30, 21, 'my name is luffdy', 0, '2020-09-01 05:12:30', '2020-09-01 05:12:30'),
(31, 29, 'sdaadsads', 0, '2020-09-01 05:17:49', '2020-09-01 05:17:49'),
(32, 21, 'dsdsdsds', 0, '2020-09-01 05:18:09', '2020-09-01 05:18:09'),
(33, 29, '1213213213', 0, '2020-09-01 05:19:40', '2020-09-01 05:19:40'),
(34, 21, 'sddsaasdasdads', 0, '2020-09-01 05:20:03', '2020-09-01 05:20:03'),
(35, 21, 'sddsdsadsa', 0, '2020-09-01 05:37:51', '2020-09-01 05:37:51'),
(36, 1, 'hhh', 0, '2020-09-01 05:41:20', '2020-09-01 05:41:20');

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
(9, '2020_08_21_180419_create_notifications_table', 7),
(10, '2014_10_12_100000_create_password_resets_table', 8),
(11, '2020_08_25_071026_create_tasks_table', 8),
(12, '0000_00_00_000000_create_websockets_statistics_entries_table', 9),
(13, '2020_08_28_105743_create_table_spec', 10),
(14, '2020_08_28_120032_create_table_introduction', 11);

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
('045467b7-3af8-4ecc-a416-af423f378ae3', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"shop nay ten gi\"}', NULL, '2020-08-31 03:15:37', '2020-08-31 03:15:37'),
('063f2a13-f517-422b-836a-90e22e56b675', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"cuoc doi bat tan\"}', NULL, '2020-08-31 03:12:33', '2020-08-31 03:12:33'),
('0bdc52bc-8547-49dc-8562-5843cf2785eb', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"testssss\"}', NULL, '2020-08-24 07:14:07', '2020-08-24 07:14:07'),
('0c354a55-694a-4d39-b2b4-69336d185f16', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Users\",\"content\":\"joker@gmail.com\"}', NULL, '2020-08-24 05:14:25', '2020-08-24 05:14:25'),
('1f134aa5-95fd-4b7d-87d6-a5d0a0a6be01', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"sssss\"}', NULL, '2020-08-24 07:14:38', '2020-08-24 07:14:38'),
('2b2ace22-fc89-4b59-b8c5-2c3959221e79', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"assss\"}', NULL, '2020-08-30 06:23:15', '2020-08-30 06:23:15'),
('31a28fdd-79e0-43c7-8c6c-082e647ad944', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"aaaa\"}', NULL, '2020-08-27 08:10:30', '2020-08-27 08:10:30'),
('379c4954-c63d-4f4a-8ac5-cbbe3e68b0d0', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"ahaha\"}', NULL, '2020-08-26 15:14:50', '2020-08-26 15:14:50'),
('43b8a6b7-ed3e-4e55-8427-548f50c7851f', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"sssss\"}', NULL, '2020-08-30 06:33:52', '2020-08-30 06:33:52'),
('448062f6-de03-431d-a142-4b4710a06cf5', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"san pham qua te\"}', NULL, '2020-08-25 15:48:44', '2020-08-25 15:48:44'),
('46c96fd4-1739-476a-b003-fb3c86960db8', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"ahihi do cho\"}', NULL, '2020-08-25 15:00:39', '2020-08-25 15:00:39'),
('4a47af33-624b-4e59-9809-0bc450019ead', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"con cho con\"}', NULL, '2020-08-25 15:05:50', '2020-08-25 15:05:50'),
('51c1027e-2358-41ab-b363-9731c01e28ba', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Users\",\"content\":\"kaido@gmail.com\"}', NULL, '2020-08-21 12:12:05', '2020-08-21 12:12:05'),
('58301d6d-0a5b-4efc-a146-a48e26667b13', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"ahihi do cho\"}', NULL, '2020-08-25 15:00:39', '2020-08-25 15:00:39'),
('5c0ebfa5-b6af-40d0-96be-ff49af96484e', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"con ga an co\"}', NULL, '2020-08-30 06:28:55', '2020-08-30 06:28:55'),
('5f2d11b2-7af3-4abb-b283-e2a251d1a937', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"san pham tuyet voi\"}', NULL, '2020-08-25 15:23:47', '2020-08-25 15:23:47'),
('5fa3e86f-5d55-41fb-830b-26c4876d1230', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"aaaaaaa\"}', NULL, '2020-08-24 07:16:18', '2020-08-24 07:16:18'),
('60f0536f-3856-409c-acb7-44e2190d966d', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"jsp\"}', NULL, '2020-08-25 15:02:50', '2020-08-25 15:02:50'),
('65196a83-8d3e-4cdc-88e5-f3f7ae3053bb', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"ahihi\"}', NULL, '2020-08-25 15:26:10', '2020-08-25 15:26:10'),
('68303998-8561-4908-9e25-0fe5a49f15e9', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"san pham con hang khong !\"}', NULL, '2020-08-25 15:50:12', '2020-08-25 15:50:12'),
('6d89926f-3cb4-4872-a27d-b9bcdbb1df17', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Users\",\"content\":\"javpro@gmail.com\"}', NULL, '2020-09-01 06:58:46', '2020-09-01 06:58:46'),
('6e524582-ba62-4f47-8d8a-4bc250f5222d', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"aaaaa\"}', NULL, '2020-08-31 03:01:33', '2020-08-31 03:01:33'),
('6e539fa6-3195-4da5-8843-b99792d350d4', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"san pham qua tuyet voi\"}', NULL, '2020-08-25 15:27:25', '2020-08-25 15:27:25'),
('73a596c0-d917-4502-9c42-d055913f50f7', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Users\",\"content\":\"kakashi@gmail.com\"}', NULL, '2020-08-24 05:08:02', '2020-08-24 05:08:02'),
('784d1e64-617a-4856-a1e4-eeb84ff880bb', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Users\",\"content\":\"hahaha@gmail.com\"}', NULL, '2020-08-22 05:45:07', '2020-08-22 05:45:07'),
('791e5bf2-15c8-4372-ae41-2f2738301f88', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"hello anh em\"}', NULL, '2020-08-30 06:21:16', '2020-08-30 06:21:16'),
('7ebe6e82-8765-4f8e-8ff3-6176e5096f1e', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"ahihi do cho\"}', NULL, '2020-08-25 15:00:38', '2020-08-25 15:00:38'),
('7f026ce2-60d0-47aa-8ab8-915a846ebd1b', 'App\\Notifications\\TestNotification', 'App\\User', 18, '{\"title\":\"New Users\",\"content\":\"hibiki@gmail.com\"}', NULL, '2020-08-21 12:00:22', '2020-08-21 12:00:22'),
('809bbd01-4cb3-49dd-a582-6451fc03e967', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"dsadsdasdsa\"}', NULL, '2020-08-27 08:08:06', '2020-08-27 08:08:06'),
('833b6511-867a-4b4e-9f92-b4f2a7987651', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"san\"}', NULL, '2020-08-27 08:08:15', '2020-08-27 08:08:15'),
('85a64ea2-a181-4cf8-b330-2865df1bf446', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"S\\u1ea3n ph\\u1ea9m r\\u1ea5t t\\u1ed1t\"}', NULL, '2020-08-24 05:19:51', '2020-08-24 05:19:51'),
('882a701f-fa57-4901-bc65-c86778b830cc', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Users\",\"content\":\"hihihi@gmail.com\"}', NULL, '2020-08-22 05:46:37', '2020-08-22 05:46:37'),
('8879fefe-851e-41a3-890f-e2a73f1c6e4a', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"kokokokok\"}', NULL, '2020-08-25 15:09:10', '2020-08-25 15:09:10'),
('8a5e3d0d-bbef-44ce-8ffa-6cb47740acb1', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"va day la dau\"}', NULL, '2020-08-31 03:03:38', '2020-08-31 03:03:38'),
('8c08fa94-f538-4ef0-bb04-9a6325e51f57', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"kkkkiiii\"}', NULL, '2020-08-31 03:01:03', '2020-08-31 03:01:03'),
('8e3c2681-40cf-476c-8c79-ba8cf2b70fd4', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"yeah\"}', NULL, '2020-08-25 15:04:53', '2020-08-25 15:04:53'),
('904ebfdc-594b-4f6c-a8c7-99002b1ee52e', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"112121212121\"}', NULL, '2020-09-01 05:31:00', '2020-09-01 05:31:00'),
('91f6fa3c-9ccc-4653-a807-e9177636d227', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"haaa\"}', NULL, '2020-08-24 07:33:46', '2020-08-24 07:33:46'),
('9e5f6ce3-553f-4c5a-a262-999dd22e82da', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Users\",\"content\":\"airblade@gmail.com\"}', NULL, '2020-08-22 05:40:29', '2020-08-22 05:40:29'),
('a69a02cd-30ac-4c9a-93ca-c0718c3ff38b', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"im here\"}', NULL, '2020-08-30 06:27:42', '2020-08-30 06:27:42'),
('aae4fc9b-4e04-43cf-be37-bab02b68933c', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"toi la ai\"}', NULL, '2020-08-31 03:03:19', '2020-08-31 03:03:19'),
('aeec91c7-e353-428a-922d-f5d6b5dfef97', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"hahaha\"}', NULL, '2020-08-24 07:21:37', '2020-08-24 07:21:37'),
('b002f890-9884-4b70-8951-b4a10911920f', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Users\",\"content\":\"ikuiku@gmail.com\"}', NULL, '2020-08-24 05:03:23', '2020-08-24 05:03:23'),
('b066457c-3873-4460-b974-78d3cef5150b', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"san pham tuyet voi\"}', NULL, '2020-08-25 15:08:11', '2020-08-25 15:08:11'),
('b4b7ab2e-4c9f-4f2d-93ac-7fc539a3c201', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"ahihi do cho\"}', NULL, '2020-08-25 15:00:38', '2020-08-25 15:00:38'),
('b7e6c52d-4a11-4553-bf0b-38464859f18d', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"ahihi do cho\"}', NULL, '2020-08-25 15:05:40', '2020-08-25 15:05:40'),
('c559a3f4-fe5f-412d-8203-8b998e8be60e', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"hello world\"}', NULL, '2020-08-30 06:26:47', '2020-08-30 06:26:47'),
('c5b57667-5c89-477f-b0dd-66c2bab9bfb0', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"may nay bao tien\"}', NULL, '2020-09-01 05:27:20', '2020-09-01 05:27:20'),
('ca2aff4f-854f-42f9-b757-f84385481ac9', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Users\",\"content\":\"kodkodsa@gmail.com\"}', NULL, '2020-08-31 02:59:36', '2020-08-31 02:59:36'),
('cfba2f40-0953-4578-8d83-ad9b8f4b9871', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"kakaka\"}', NULL, '2020-08-25 15:16:31', '2020-08-25 15:16:31'),
('d4bb7476-ba61-4f77-ad40-842534070ac0', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"we are\"}', NULL, '2020-08-30 06:25:15', '2020-08-30 06:25:15'),
('d84e0719-a6d3-4c8b-90fc-9beaac6cd375', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"test\"}', NULL, '2020-08-24 05:23:05', '2020-08-24 05:23:05'),
('da144570-186a-41b2-8b92-288e509e1621', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"test 2\"}', NULL, '2020-08-24 05:24:22', '2020-08-24 05:24:22'),
('dc6f7723-1b56-4172-89b5-6869474a0d60', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"yeah\"}', NULL, '2020-08-25 15:25:10', '2020-08-25 15:25:10'),
('e36e6c75-318f-4d52-9ec8-4f5822f3a469', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"kakaka\"}', NULL, '2020-08-30 06:30:32', '2020-08-30 06:30:32'),
('e5002817-d562-4878-88ad-13fbeb44fa2a', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"san pham qua te\"}', NULL, '2020-08-25 15:22:13', '2020-08-25 15:22:13'),
('e8bcd483-ac5f-4a64-98db-54d5a524d7d4', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Users\",\"content\":\"hanabi@gmail.com\"}', NULL, '2020-08-22 05:34:22', '2020-08-22 05:34:22'),
('efd7a83f-8e8e-4626-a0fd-062242dc2765', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"Haaaaaaaaaaaaaaaa\"}', NULL, '2020-08-21 12:58:27', '2020-08-21 12:58:27'),
('f1320c8d-3f68-4910-9e35-261374c1ff10', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"c\\u00f2n h\\u00e0ng kh\\u00f4ng\"}', NULL, '2020-08-24 05:22:04', '2020-08-24 05:22:04'),
('f8e8ec80-d819-4463-8062-425328ec65b7', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"chao anh em\"}', NULL, '2020-08-30 06:22:17', '2020-08-30 06:22:17'),
('faec34dc-77c7-486d-8ab6-56f93e443179', 'App\\Notifications\\TestNotification', 'App\\User', 1, '{\"title\":\"New Comments\",\"content\":\"con cho an cuc\"}', NULL, '2020-08-30 06:29:49', '2020-08-30 06:29:49');

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
(7, 12, 'offline', NULL, NULL, 14, 585070000, 1, '2020-08-20 05:31:01', '2020-08-20 05:31:01'),
(11, 28, 'paypal', '123/456/789', 'giao nhanh trong 2h', 6, 32940000, 1, '2020-09-01 06:11:54', '2020-09-01 06:11:54');

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
(14, 7, 1, 'Điện Thoại iPhone X', 34790000, 9, '2020-08-20 05:31:01', '2020-08-20 05:31:01'),
(19, 11, 3, 'Samsung Galaxy A6', 6990000, 4, '2020-09-01 06:11:54', '2020-09-01 06:11:54'),
(20, 11, 5, 'Chuột Bluetooth Apple', 2490000, 2, '2020-09-01 06:11:54', '2020-09-01 06:11:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, 1, 'Samsung Galaxy A6', 'Samsung Galaxy A6 (2018) là chiếc smartphone tầm trung vừa được ra mắt của Samsung bên cạnh chiếc Samsung Galaxy A6+ (2018).Thiết kế quen thuộcMáy được hoàn thiện từ kim loại nguyên khối, kết hợp với mặt kính cong nhẹ 2.5D cho cảm giác vuốt chạm thoải mái hơn.Mặt trước là camera \"tự sướng\" và đèn LED trợ sáng 3 cấp độ giúp chụp ảnh selfie trong điều kiện thiếu sáng tốt hơn.Mặt lưng là dãy ăng-ten trên dưới đối xứng hình chữ U và camera chính và cảm biến vân tay được gom chung vào 1 cụm.', 6990000, 'image/a6.png', 'image/a6_item1.png', 'image/a6_item2.png', 'Samsung', 39, '2020-08-18 04:49:54', '2020-09-01 06:11:54'),
(4, 1, 'Điện thoại OPPO A83s', 'OPPO A83 là chiếc smartphone dòng A đầu tiên sở hữu cho mình màn hình tràn viền và cùng với đó là camera với khả năng làm đẹp bằng AI nổi tiếng của OPPO.Thiết kế thon gọn Với xu thế màn hình 18:9 của năm 2017 thì máy sở hữu một thân hình \"thon thả\" với các góc cạnh được bo tròn mềm mại.', 4990000, 'image/a83.png', 'image/a83_item1.png', 'image/a83_item2.png', 'OPPO', 46, '2020-08-18 04:49:54', '2020-08-23 06:23:48'),
(5, 2, 'Chuột Bluetooth Apple', 'Phong cách thiết kế mang đậm bản sắc của Apple. Thời gian sử dụng chuột MLA02 kéo dài, chuột magic mouse MLA02 cho bạn thời gian sử dụng lên tới 1 tháng hoặc hơn chỉ với 1 lần sạc (2 tiếng). Cổng sạc cho chuột nằm ngay mặt dưới, dùng dây sạc đầu lightning (đi kèm với hộp).', 2490000, 'image/pk8.png', 'image/pk8_item1.jpg', 'image/pk8_item2.jpg', 'Apple', 3, '2020-08-18 04:49:54', '2020-09-01 06:11:54'),
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
(38, 1, 'iPhone 6s Plus 32GB', 'Apple iPhone 6s Plus là chiếc iPhone màn hình lớn nhất, cho phép người dùng làm được nhiều việc hơn trên không gian rộng lớn. Ngoài ra, những tính năng mới như hệ điều hành iOS 10, 3D Touch, Live Photos hay camera 12MP xuất sắc sẽ mang đến sự hài lòng nhất cho bạn khi sử dụng một chiếc smartphone thực sự cao cấp.', 7990000, 'image/6s_d_1.jpg', 'image/6s_d_2.jpg', 'image/6s_d_3.jpg', 'Apple', 16, '2020-08-29 06:54:58', '2020-08-29 06:54:58'),
(39, 1, 'iPhone 7 Plus 32GB', 'iPhone 7 Plus dường như là sản phẩm được Apple chăm chút để vượt xa iPhone 7, trở thành sản phẩm rất đáng để nâng cấp so với iPhone 6s Plus khi được nâng cấp thêm camera kép cùng chức năng chụp chân dung xoá phông cực \"hot\". Không chỉ vậy, nâng cấp đáng giá khác như tốc độ xử lý nhanh hơn, chống nước, bụi, loa ngoài sống động... Tất cả đã tạo nên một sản phẩm hàng đầu tuyệt vời.', 8990000, 'image/7plus_d_1.jpg', 'image/7plus_d_2.jpg', 'image/7plus_d_3.jpg', 'Apple', 10, '2020-08-29 07:29:56', '2020-08-29 07:29:56'),
(40, 1, 'iPhone 8 Plus 64GB', 'Apple bất ngờ ra mắt bộ đôi iPhone 8 và iPhone 8 Plus tạo ra cơn bão mới càn quét hết các bảng xếp hạng siêu phẩm. Như thường lệ, iPhone 8 Plus từ thiết kế cho tới tính năng đều mang đến cho người dùng những trải nghiệm thú vị tuyệt vời không thể bỏ lỡ.', 13990000, 'image/8plus_d_1.jpg', 'image/8plus_d_2.jpg', 'image/8plus_d_3.jpg', 'Apple', 5, '2020-08-29 07:29:56', '2020-08-29 07:29:56'),
(41, 1, 'iPhone Xs Max 256GB', 'iPhone Xs Max 256GB có thể nói là chiếc smartphone có loa ngoài tốt bậc nhất hiện nay. Cụm loa kép stereo cho chất lượng khó tin về cả độ lớn lẫn độ chi tiết. Loa ngoài trên thực tế rất quan trọng khi nó thường xuyên được người dùng sử dụng, iPhone Xs Max mang đến những phút giây giải trí tuyệt vời với màn hình lớn đỉnh cao và loa ngoài cực chất.', 25990000, 'image/xs_d_1.jpg', 'image/xs_d_2.jpg', 'image/xs_d_3.jpg', 'Apple', 25, '2020-08-29 07:29:56', '2020-08-29 07:29:56'),
(42, 1, 'iPhone SE (2020) 64GB', 'Một chiếc iPhone nhỏ gọn mang trên mình bộ vi xử lý mạnh mẽ hàng đầu, iPhone SE 2020 với mức giá hấp dẫn chưa từng thấy sẽ là sự lựa chọn phù hợp dành cho tất cả người dùng.', 12490000, 'image/se2020_d_1.jpg', 'image/se2020_d_2.jpg', 'image/se2020_d_3.jpg', 'Apple', 66, '2020-08-29 07:29:56', '2020-08-29 07:29:56'),
(43, 1, 'iPhone 11 64GB', 'Sau bao nhiêu chờ đợi cũng như đồn đoán thì cuối cùng Apple đã chính thức giới thiệu bộ 3 siêu phẩm iPhone 11 mạnh mẽ nhất của mình vào tháng 9/2019. Có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như chiếc iPhone Xr năm ngoái, đó chính là phiên bản iPhone 11 64GB.', 17990000, 'image/11_d_1.jpg', 'image/11_d_2.jpg', 'image/11_d_3.jpg', 'Apple', 105, '2020-08-29 07:29:56', '2020-08-29 07:29:56'),
(44, 1, 'iPhone 11 Pro 64GB', 'Hoàn thiện từ khung thép không gỉ chắc chắn và hai mặt kính cường lực bóng bẩy, iPhone 11 Pro 64GB thật sự nổi bật giữa đám đông. Chiếc iPhone nhỏ gọn, cho cảm giác cầm nắm hoàn hảo nhưng vẫn có màn hình đủ lớn để trải nghiệm tốt mọi thứ. 4 phiên bản màu sắc sang trọng, mang đến nhiều lựa chọn cho người dùng. 4 màu sắc iPhone 11 Pro bao gồm Vàng, Xám không gian, Bạc và đặc biệt là màu mới Xanh Midnight đầy cuốn hút.', 24990000, 'image/11pro_d_1.jpg', 'image/11pro_d_2.jpg', 'image/11pro_d_3.jpg', 'Apple', 51, '2020-08-29 07:29:56', '2020-08-29 07:29:56'),
(45, 1, 'iPhone 11 Pro Max 64GB', 'Được trang bị bộ vi xử lý Apple A13 Bionic, iPhone 11 Pro Max tự tin thể hiện đẳng cấp hiệu năng “Pro”. So với thế hệ trước, Apple A13 Bionic nhanh hơn 20% và tiêu thụ năng lượng ít hơn tới 40% cả về CPU lẫn GPU. iPhone 11 Pro Max mạnh mẽ vượt trội khi đặt cạnh bất cứ đối thủ nào trên thị trường hiện nay. Mọi tác vụ kể cả những tựa game nặng nhất cũng đều được thể hiện trơn tru, mượt mà trên iPhone 11 Pro Max 64GB.', 27990000, 'image/11promax_d_1.jpg', 'image/11promax_d_2.jpg', 'image/11promax_d_3.jpg', 'Apple', 66, '2020-08-29 07:29:56', '2020-08-29 07:29:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `name`, `src`, `alt`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'slide show', 'image/slideshow1.png', NULL, NULL, NULL, NULL),
(2, 'slide show', 'image/slideshow2.png', NULL, NULL, NULL, NULL),
(3, 'slide show', 'image/slideshow3.png', NULL, NULL, NULL, NULL),
(4, 'slide show', 'image/slideshow4.png', NULL, NULL, NULL, NULL),
(5, 'slide show', 'image/slideshow5.png', NULL, NULL, NULL, NULL),
(6, 'slide show', 'image/slideshow6.png', NULL, NULL, NULL, NULL),
(7, 'Slide Detail', 'image/a6.gif', 'D1', 3, NULL, NULL),
(8, 'Slide Detail', 'image/a6x2.jpg', 'D2', 3, NULL, NULL),
(9, 'Slide Detail', 'image/a6x3.jpg', 'D3', 3, NULL, NULL),
(10, 'Slide Detail', 'image/a6x4.jpg', 'D4', 3, NULL, NULL),
(11, 'Slide Detail', 'image/a6x5.jpg', 'D5', 3, NULL, NULL),
(12, 'Slide Detail', 'image/a6x6.jpg', 'D6', 3, NULL, NULL),
(13, 'Slide Detail', 'image/a6x7.jpg', 'D7', 3, NULL, NULL),
(14, 'Slide Detail', 'image/a6x8.jpg', 'D8', 3, NULL, NULL),
(15, 'Slide Detail', 'image/a6x9.jpg', 'D9', 3, NULL, NULL),
(16, 'Slide Detail', 'image/x_d_1.jpg', NULL, 1, NULL, NULL),
(17, 'Slide Detail', 'image/x_d_2.jpg', NULL, 1, NULL, NULL),
(18, 'Slide Detail', 'image/x_d_3.jpg', NULL, 1, NULL, NULL),
(19, 'Slide Detail', 'image/x_d_4.jpg', NULL, 1, NULL, NULL),
(20, 'Slide Detail ', 'image/x_d_5.jpg', NULL, 1, NULL, NULL),
(21, 'Slide Detail', 'image/x_d_6.jpg', NULL, 1, NULL, NULL),
(22, 'Slide Detail', 'image/6s_s_1.jpg', NULL, 38, '2020-08-29 14:07:02', '2020-08-29 14:07:02'),
(23, 'Slide Detail', 'image/6s_s_2.jpg', NULL, 38, '2020-08-29 14:07:02', '2020-08-29 14:07:02'),
(24, 'Slide Detail', 'image/6s_s_3.jpg', NULL, 38, '2020-08-29 14:07:02', '2020-08-29 14:07:02'),
(25, 'Slide Detail', 'image/6s_s_4.jpg', NULL, 38, '2020-08-29 14:07:02', '2020-08-29 14:07:02'),
(26, 'Slide Detail', 'image/6s_s_5.jpg', NULL, 38, '2020-08-29 14:07:02', '2020-08-29 14:07:02'),
(27, 'Slide Detail', 'image/6s_s_6.jpg', NULL, 38, '2020-08-29 14:07:02', '2020-08-29 14:07:02'),
(34, 'Slide Detail', 'image/7plus_s_1.jpg', NULL, 39, '2020-08-29 14:08:47', '2020-08-29 14:08:47'),
(35, 'Slide Detail', 'image/7plus_s_2.jpg', NULL, 39, '2020-08-29 14:08:47', '2020-08-29 14:08:47'),
(36, 'Slide Detail', 'image/7plus_s_3.jpg', NULL, 39, '2020-08-29 14:08:47', '2020-08-29 14:08:47'),
(37, 'Slide Detail', 'image/7plus_s_4.jpg', NULL, 39, '2020-08-29 14:08:47', '2020-08-29 14:08:47'),
(38, 'Slide Detail', 'image/7plus_s_5.jpg', NULL, 39, '2020-08-29 14:08:47', '2020-08-29 14:08:47'),
(39, 'Slide Detail', 'image/8plus_s_1.jpg', NULL, 40, '2020-08-29 14:10:20', '2020-08-29 14:10:20'),
(40, 'Slide Detail', 'image/8plus_s_2.jpg', NULL, 40, '2020-08-29 14:10:20', '2020-08-29 14:10:20'),
(41, 'Slide Detail', 'image/8plus_s_3.jpg', NULL, 40, '2020-08-29 14:10:20', '2020-08-29 14:10:20'),
(42, 'Slide Detail', 'image/8plus_s_4.jpg', NULL, 40, '2020-08-29 14:10:20', '2020-08-29 14:10:20'),
(43, 'Slide Detail', 'image/8plus_s_5.jpg', NULL, 40, '2020-08-29 14:10:20', '2020-08-29 14:10:20'),
(44, 'Slide Detail', 'image/xs_s_1.jpg', NULL, 41, '2020-08-29 14:10:46', '2020-08-29 14:10:46'),
(45, 'Slide Detail', 'image/xs_s_2.jpg', NULL, 41, '2020-08-29 14:10:46', '2020-08-29 14:10:46'),
(46, 'Slide Detail', 'image/xs_s_3.jpg', NULL, 41, '2020-08-29 14:10:46', '2020-08-29 14:10:46'),
(47, 'Slide Detail', 'image/xs_s_4.jpg', NULL, 41, '2020-08-29 14:10:46', '2020-08-29 14:10:46'),
(48, 'Slide Detail', 'image/xs_s_5.jpg', NULL, 41, '2020-08-29 14:10:46', '2020-08-29 14:10:46'),
(49, 'Slide Detail', 'image/se2020_s_1.jpg', NULL, 42, '2020-08-29 14:11:12', '2020-08-29 14:11:12'),
(50, 'Slide Detail', 'image/se2020_s_2.jpg', NULL, 42, '2020-08-29 14:11:12', '2020-08-29 14:11:12'),
(51, 'Slide Detail', 'image/se2020_s_3.jpg', NULL, 42, '2020-08-29 14:11:12', '2020-08-29 14:11:12'),
(52, 'Slide Detail', 'image/se2020_s_4.jpg', NULL, 42, '2020-08-29 14:11:12', '2020-08-29 14:11:12'),
(53, 'Slide Detail', 'image/11_s_1.jpg', NULL, 43, '2020-08-29 14:11:39', '2020-08-29 14:11:39'),
(54, 'Slide Detail', 'image/11_s_2.jpg', NULL, 43, '2020-08-29 14:11:39', '2020-08-29 14:11:39'),
(55, 'Slide Detail', 'image/11_s_3.jpg', NULL, 43, '2020-08-29 14:11:39', '2020-08-29 14:11:39'),
(56, 'Slide Detail', 'image/11_s_4.jpg', NULL, 43, '2020-08-29 14:11:39', '2020-08-29 14:11:39'),
(57, 'Slide Detail', 'image/11pro_s_1.jpg', NULL, 44, '2020-08-29 14:12:02', '2020-08-29 14:12:02'),
(58, 'Slide Detail', 'image/11pro_s_2.jpg', NULL, 44, '2020-08-29 14:12:02', '2020-08-29 14:12:02'),
(59, 'Slide Detail', 'image/11pro_s_3.jpg', NULL, 44, '2020-08-29 14:12:02', '2020-08-29 14:12:02'),
(60, 'Slide Detail', 'image/11pro_s_4.jpg', NULL, 44, '2020-08-29 14:12:02', '2020-08-29 14:12:02'),
(61, 'Slide Detail', 'image/11promax_s_1.jpg', NULL, 45, '2020-08-29 14:12:21', '2020-08-29 14:12:21'),
(62, 'Slide Detail', 'image/11promax_s_2.jpg', NULL, 45, '2020-08-29 14:12:21', '2020-08-29 14:12:21'),
(63, 'Slide Detail', 'image/11promax_s_3.jpg', NULL, 45, '2020-08-29 14:12:21', '2020-08-29 14:12:21'),
(64, 'Slide Detail', 'image/11promax_s_4.jpg', NULL, 45, '2020-08-29 14:12:21', '2020-08-29 14:12:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `specs`
--

CREATE TABLE `specs` (
  `id` int(10) UNSIGNED NOT NULL,
  `screen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cam_front` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cam_rear` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gpu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `specs`
--

INSERT INTO `specs` (`id`, `screen`, `cam_front`, `cam_rear`, `ram`, `storage`, `cpu`, `gpu`, `pin`, `os`, `sim`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Super Retina HD, 2436 x 1125px', '7.0 MP', 'Dual 12.0 MP', '3 GB', '256 GB', 'Apple A11 Bionic, 6', 'Apple GPU (three-core graphics)', '2716 mAh', 'iOS 11', 'Nano Sim, 1 Sim, hỗ trợ 4G', 1, '2020-08-28 04:31:35', '2020-08-28 04:31:35'),
(2, '5.5\", FHD, IPS LCD, 1080 x 1920 Pixel', '12.0 MP', '5.0 MP', '2 GB', '32 GB', 'Apple A9', 'PowerVR GT7600', '2750 mAh', 'iOS 13', '1, Nano SIM', 38, '2020-08-29 07:45:15', '2020-08-29 07:45:15'),
(3, '5.5\", FHD, IPS LCD, 1080 x 1920 Pixel', '12.0 MP + 12.0 MP', '7.0 MP', '3 GB', '32 GB', 'A10 Fusion', 'PowerVR Series7XT Plus', '2900 mAh', 'iOS 13', '1, Nano SIM', 39, '2020-08-29 07:45:15', '2020-08-29 07:45:15'),
(4, '5.5\", Retina HD, IPS LCD, 1080 x 1920 Pixel', '12.0 MP + 12.0 MP', '7.0 MP', '3 GB', '64 GB', 'A11 Bionic', 'Apple GPU', '2691 mAh', 'iOS 13', '1, Nano SIM', 40, '2020-08-29 07:45:15', '2020-08-29 07:45:15'),
(5, '6.5\", Super Retina HD, Super AMOLED, 1242 x 2688 Pixel', '12.0 MP + 12.0 MP', '7.0 MPP', '4 GB', '256 GB', 'A12 Bionic', 'Apple GPU 4 nhân', '3174 mAh', 'iOS 13', '1, 1 eSIM, 1 Nano SIM', 41, '2020-08-29 07:45:15', '2020-08-29 07:45:15'),
(6, '4.7\", Retina HD, IPS LCD, 750 x 1334 Pixel', '12.0 MP', '7.0 MP', '3 GB', '64 GB', 'A13 Bionic', 'Apple GPU 4 nhân', 'Đang cập nhật', 'iOS 14', '2, 1 eSIM, 1 Nano SIM', 42, '2020-08-29 07:45:15', '2020-08-29 07:45:15'),
(7, '6.1\", Liquid Retina HD, IPS LCD, 828 x 1792 Pixel', '12.0 MP + 12.0 MP', '12.0 MP', '4 GB', '64 GB', 'A13 Bionic', 'Apple GPU 4 nhân', '3110 mAh', 'iOS 13', '1, 1 eSIM, 1 Nano SIM', 43, '2020-08-29 07:45:15', '2020-08-29 07:45:15'),
(8, '5.8\", Super Retina XDR, Super AMOLED, 1125 x 2436 Pixel', '12.0 MP + 12.0 MP + 12.0 MP', '12.0 MP', '4 GB', '64 GB', 'A13 Bionic', 'Apple GPU 4 nhân', '3046 mAh', 'iOS 13', '1, 1 eSIM, 1 Nano SIM', 44, '2020-08-29 07:45:15', '2020-08-29 07:45:15'),
(9, '6.5\", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel', '12.0 MP + 12.0 MP + 12.0 MP', '12.0 MP', '4 GB', '64 GB', 'A13 Bionic', 'Apple GPU 4 nhân', '3969 mAh', 'iOS 13', '1, 1 eSIM, 1 Nano SIM', 45, '2020-08-29 07:45:15', '2020-08-29 07:45:15');

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
-- Cấu trúc bảng cho bảng `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'IPhone', 'detail', '2020-08-25 04:31:46', '2020-08-25 04:31:46');

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
(1, 'admin', 'admin@gmail.com', NULL, NULL, NULL, '$2y$10$w9kO.xnMd0q8SvTD3nwKBOA712AKLrTPuNAU7rw0wyXtfaukF6Zau', 'HCz3J63tJqLWttH712cVq0PHZ3jTNKG2gz8JXfmmce6jWRoouWFSLmkRL8hW', 1, NULL, NULL),
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
(30, 'Kakashi', 'kakashi@gmail.com', NULL, NULL, NULL, '$2y$10$4wo.16m5umAu4Weaougi6OkGqFQ72O0YYwwS0YD2K4SRdrD4qbimK', NULL, 2, '2020-08-24 05:08:01', '2020-08-24 05:08:01'),
(33, 'Lol 2020', 'lol@gmail.com', NULL, NULL, NULL, '$2y$10$tFv9MeuOmS2ad9Qoy2S7ouDE8AVjcCxHgxDR473Sro/muIW8tfQPK', NULL, 2, '2020-08-31 02:47:19', '2020-08-31 02:47:19'),
(34, 'Ahihi', 'ahaha@gmail.com', NULL, NULL, NULL, '$2y$10$AKJX2AdA3NJs46/h2tqgZ.LqKmz2Y0IOUeNeJjvuo4P7.XbD0RW1e', NULL, 2, '2020-08-31 02:57:36', '2020-08-31 02:57:36'),
(36, 'JaPro', 'javpro@gmail.com', NULL, NULL, NULL, '$2y$10$Savu5N8oCT4glhWzdhzQF.hcxOeDfXtNUI0NoApc1O7PVNFSrFCLu', NULL, 2, '2020-09-01 06:58:46', '2020-09-01 06:58:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Chỉ mục cho bảng `introduction`
--
ALTER TABLE `introduction`
  ADD PRIMARY KEY (`id`);

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
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Chỉ mục cho bảng `specs`
--
ALTER TABLE `specs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

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
-- AUTO_INCREMENT cho bảng `introduction`
--
ALTER TABLE `introduction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `orderproduct`
--
ALTER TABLE `orderproduct`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `specs`
--
ALTER TABLE `specs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

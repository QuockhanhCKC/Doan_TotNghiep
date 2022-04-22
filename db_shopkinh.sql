-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th4 22, 2022 lúc 09:36 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_shopkinh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `_chi_tiet_hoa_don`
--

CREATE TABLE IF NOT EXISTS `_chi_tiet_hoa_don` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hoa_don_id` bigint(20) UNSIGNED NOT NULL,
  `san_pham_id` bigint(20) UNSIGNED NOT NULL,
  `so_luong` int(11) NOT NULL DEFAULT 0,
  `don_gia` double NOT NULL,
  `thanh_tien` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `_chi_tiet_s_p`
--

CREATE TABLE IF NOT EXISTS `_chi_tiet_s_p` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `san_pham_id` bigint(20) UNSIGNED NOT NULL,
  `loai_sp_id` bigint(20) UNSIGNED NOT NULL,
  `nha_sx_id` bigint(20) UNSIGNED NOT NULL,
  `ten_sp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kich_co` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chat_lieu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mau_sac` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_luong` int(11) NOT NULL DEFAULT 0,
  `giam_gia` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `hinh_anh` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mo_ta` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new` int(11) NOT NULL DEFAULT 0,
  `tinh_trang` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `_chi_tiet_s_p`
--

INSERT INTO `_chi_tiet_s_p` (`id`, `san_pham_id`, `loai_sp_id`, `nha_sx_id`, `ten_sp`, `gia`, `kich_co`, `chat_lieu`, `mau_sac`, `so_luong`, `giam_gia`, `hinh_anh`, `mo_ta`, `new`, `tinh_trang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 'Mắt kính PORSCHE DESIGN P8657 TITANIUM', '1100000', '62 – 11 – 140 mm ( phù hợp mặt vừa )', 'Gọng Kim Loại', 'Bạc, Xám', 100, '', 'P8657titan_62_11_140_1100k_bac1.jpg', 'Mắt kính Porsche Design P8657 có kiểu dáng mắt kính chuồn chuồn cổ điển. Thiết kế của mắt kính Porsche P8657 đẳng cấp, sang trọng, kiểu dáng rất dễ sử dụng, phù hợp với nhiều phong cách, nhiều độ tuổi khác nhau. Đặc biệt, phiên bản này chất liệu của P8567 là Titanium cao cấp, với những ưu điểm vượt trội: siêu nhẹ, độ bền cao, lâu bị oxy hóa. Tròng kính của Porsche P8657 là tròng kính polarized phân cực chống chói và chống UV400. Kích thước mắt kính P8657 phù hợp với người có khuôn mặt vừa. Màu sắc: Bạc, Xám', 1, 1, '2022-04-21 03:57:32', '2022-04-21 03:57:32', '2022-04-21 03:57:32'),
(2, 2, 1, 1, 'Mắt kính PORSCHE DESIGN P8645', '800000', '60 -12 -145 mm ( phù hợp với mặt vừa và to)', 'Thép Stainless Steel', 'Đen, Xám', 100, '', 'P8645_60_12_145_800k_0-768x513.jpg', 'Mắt kính Porsche Design P8645 được thiết kế kiểu mắt kính vuông thời thượng. Thiết kế của Porsche P8645  đẳng cấp, sang trọng, là một trong những mẫu HOT của thương hiệu Porsche Design. Mắt kính Porsche Design P8645 rất dễ sử dụng, phù hợp với nhiều độ tuổi. Gọng kính được làm bằng chất liệu thép mảnh chất lượng cao, với ưu điểm: siêu nhẹ, bền, đem lại cảm giác thoải mái cho người dùng. Đặc biệt, vì gọng kính xẻ rãnh nên tròng kính của Porsche P8645 là tròng kính chống bể với lớp ván dầu phân cực chống chói Polarized và chống UV400. Đây cũng là một trong những mẫu kính làm tròng cận mát cực đẹp tại MatKinhHangHieu. Kích thước mắt kính Porsche Design P8645 phù hợp với người có khuôn mặt vừa và to. Màu sắc: Đen, Xám.', 1, 1, '2022-04-21 04:04:17', '2022-04-21 04:04:17', '2022-04-21 04:04:17'),
(3, 3, 1, 1, 'Mắt kính PORSCHE DESIGN P8935', '400000', '62 – 12 – 140 mm ( phù hợp mặt vừa)', 'Gọng kim loại', 'Đen, Xám', 100, '', 'P8645_60_12_145_800k_0-768x513.jpg', 'Mắt kính Porsche Design P8935 có kiểu dáng mắt kính chuồn chuồn form nhỏ, hiện đại, sang trọng. Thiết kế của mắt kính Porsche P8935 mạnh mẽ, kiểu dáng rất dễ sử dụng, phù hợp với nhiều phong cách, nhiều độ tuổi khác nhau. Gọng kính được làm bằng kim loại chất lượng cao, với ưu điểm: nhẹ, siêu bền, chống va đập, lâu bị oxy hóa. Tròng kính của Porsche P8935 là tròng kính polarized phân cực chống chói và chống UV400. Kích thước mắt kính Porsche Design P8935 phù hợp với người có khuôn mặt vừa. Màu sắc: Đen, Xám', 1, 1, '2022-04-21 05:03:58', '2022-04-21 05:03:58', '2022-04-21 05:03:58'),
(4, 4, 1, 1, 'Mắt kính PORSCHE DESIGN P8665', '900000', '63 – 10 – 140 mm ( phù hợp mặt vừa )', 'Gọng Kim Loại', 'Gương Xanh', 100, '', 'P8665_63_10_145_900k_0-768x513.jpg', 'Mắt kính Porsche Design P8665 có kiểu dáng mắt kính vuông hiện đại, sang trọng. Thiết kế của mắt kính Porsche P8665 mạnh mẽ, kiểu dáng rất dễ sử dụng, phù hợp với nhiều phong cách, nhiều độ tuổi khác nhau. Gọng kính được làm bằng chất liệu plastic kết hợp xi mạ vàng chất lượng cao, với ưu điểm: nhẹ, siêu bền, chống va đập, lâu bị oxy hóa. Tròng kính của Porsche P8665 là tròng kính polarized phân cực chống chói và chống UV400. Kích thước mắt kính P8665 phù hợp với người có khuôn mặt vừa. Màu sắc: Gương Xanh\r\n\r\n', 1, 1, '2022-04-21 05:10:14', '2022-04-21 05:10:14', '2022-04-21 05:10:14'),
(5, 5, 1, 1, 'Mắt kính PORSCHE DESIGN P8548', '800000', '62 -15 -140 mm ( phù hợp với mặt vừa và to)', 'Gọng Kim Loại', 'Bạc, Đen, Vàng', 100, '', 'P8548_62_15_140_800k_0-768x513.jpg', 'Mắt kính Porsche Design P8548 với dáng kính vuông thời trang. Thiết kế của Porsche P8548 mang đến phong cách thanh lịch, đẳng cấp và mạnh mẽ cho phái mạnh, sang trọng với sự tinh tế đặc trưng của thương hiệu Porsche Design. P8548 rất dễ sử dụng và phù hợp trong nhiều hoàn cảnh, với nhiều độ tuổi khác nhau. Gọng kính được làm bằng chất liệu kim loại chất lượng cao, với ưu điểm: nhẹ, bền và lâu bị oxi hoá. Đặc biệt, tròng kính của Porsche P8548 là tròng kính phân cực chống chói Polarized và chống UV400. Kích thước mắt kính P8423 phù hợp với người có khuôn mặt vừa và to. Màu sắc: Bạc, Đen, Vàng.', 1, 1, '2022-04-21 05:16:15', '2022-04-21 05:16:15', '2022-04-21 05:16:15'),
(6, 6, 1, 2, 'Mắt kính SHIVEDA SVD 29067', '400000', '51 – 21 – 144 mm ( phù hợp với mặt vừa và lớn)', 'Gọng kim loại + nhựa', 'Đen hồng, Trắng trong', 100, '', 'SVD29067_51_21_144_0-768x512.jpg', 'Mắt kính Shiveda SVD 29067, mắt kính nữ chính hãng thương hiệu đến từ HongKong. Thiết kế của kính SVD 29067 với kiểu dáng tròn sang trọng. Với chất liệu kim loại chất lượng tốt đi kèm những ưu điểm nổi trội: độ bền cao, chống va đập, lâu bị oxy hóa. Đặc biệt tròng kính của SVD 29067 là tròng plastic có tính năng chống chói, chống UV400, độ truyền quang học cao. Kích thước của mắt kính SDV 29067 phù hợp với khuôn mặt vừa.', 1, 1, '2022-04-21 09:05:54', '2022-04-21 09:05:54', '2022-04-21 09:05:54'),
(7, 7, 1, 2, 'Mắt kính SHIVEDA SVD 29033', '400000', '59 – 18 – 141 mm ( phù hợp với mặt vừa và lớn)', 'Gọng kim loại + Nhựa', 'Đen, Đen hồng, Xám xanh', 10, '', 'SVD29033_59_18_141_0-768x512.jpg', 'Mắt kính Shiveda SVD 29033, mắt kính nữ chính hãng thương hiệu đến từ HongKong. Thiết kế của kính SVD 29033 với kiểu dáng mắt mèo cá tính, thời trang đầy sang trọng. Với chất liệu kim loại chất lượng tốt đi kèm những ưu điểm nổi trội: độ bền cao, chống va đập, lâu bị oxy hóa. Đặc biệt tròng kính của SVD 29033 là tròng plastic có tính năng chống chói, chống UV400, độ truyền quang học cao. Kích thước của mắt kính SDV 29033 phù hợp với khuôn mặt vừa.', 1, 1, '2022-04-21 09:09:51', '2022-04-21 09:09:51', '2022-04-21 09:09:51'),
(8, 8, 1, 2, 'Mắt kính SHIVEDA SVD 29017', '400000', '55 – 17 – 139 mm ( phù hợp với mặt vừa và lớn)', 'Nhựa cao cấp', 'Đen', 10, '', 'SVD29033_59_18_141_0-768x512.jpg', 'Mắt kính Shiveda SVD 29017, mắt kính nữ chính hãng thương hiệu đến từ HongKong. Thiết kế của kính SVD 29017 với kiểu dáng mắt mèo cổ điển đầy sự sang trọng. Với chất liệu kim loại chất lượng tốt đi kèm những ưu điểm nổi trội: độ bền cao, chống va đập, lâu bị oxy hóa. Đặc biệt tròng kính của SVD 29017 là tròng plastic có tính năng chống chói, chống UV400, độ truyền quang học cao. Kích thước của mắt kính SDV 29017 phù hợp với khuôn mặt vừa.', 1, 1, '2022-04-21 09:14:17', '2022-04-21 09:14:17', '2022-04-21 09:14:17'),
(9, 9, 1, 2, 'Mắt kính Shiveda SVD 10181', '400000', '10-20mm ( phù hợp với mặt vừa )', 'Gọng kim loại + Nhựa', 'đen và trà', 10, '', 'SVD_10181_a_resize-450x329.jpg', 'Mắt kính Shiveda SVD 10181 – Mắt kính nữ chính hãng thương hiệu đến từ HongKong, giá bình dân, dáng ovan kim loại thanh mãnh, size vừa, tròng kính bằng Plastic chống UV400, độ truyền quang học cao, bảo hành dài', 1, 1, '2022-04-21 09:19:15', '2022-04-21 09:19:15', '2022-04-21 09:19:15'),
(10, 10, 1, 3, 'Mắt kính LOUIS VUITTON Z0133W', '700000', ' xx-xx mm ( phù hợp với mặt vừa và to )', 'Gọng Kim Loại', 'đồng, trắng bạc, xám chì và đen', 100, '', 'Louis_Vuitton_Z0133w_a_resize-600x347.jpg', 'Model mắt kính Louis Vuitton Z0133W là form mắt liền to, là mẫu Mắt kính unisex, trên tròng kính có khắc lún chữ LV. Tròng kính có tông màu 2 line trên đậm dưới nhạt rất thời trang, với chất liệu plastic cao cấp và tròng kính luôn đạt tiêu chuẩn chống UV 100%. Gọng kính của model Z0133W được làm bằng xi cao cấp có dạng bảng dẹp, trên mặt ngoài gọng kính có khắc nhiều hoa văn đặc trưng của hãng rất quý phái. Mặt trong của gọng kính thì được khắc chi tiết mã số cụ thể của model này rất bền mà không sợ phai theo thời gian sử dụng.', 1, 1, '2022-04-21 09:23:34', '2022-04-21 09:23:34', '2022-04-21 09:23:34'),
(11, 11, 2, 4, '\r\nGọng kính cận GENTLE MONSTER ROKE', '800000', '48 – 22 – 148 mm ( phù hợp với mặt vừa)', 'Gọng Nhựa + Kim loại', 'Đen, Đồi Mồi', 10, '0.2', 'Gentle_Monster_1.jpg', 'Gọng kính cận Gentle Monster Roke có kiểu dáng vuông quen thuộc với giới trẻ.  Gọng kính cận Gentle Roke sở hữu thiết kế tối giản với tone màu trầm kết hợp cùng form kính nửa viền và đây cũng chính là điểm khác biệt với các form kính vuông thông thường khác. Gọng kính được làm bằng chất liệu nhựa acetat cao cấp, chuẩn Au 1:1 với ưu điểm: bền và lâu bị oxi hoá. Kích thước gọng kính cận Roke hợp với người có khuôn mặt vừa. Đây cũng là một trong những model bán chạy và đang Hot hiện nay đến từ thương hiệu có logo chữ V.', 0, 1, '2022-04-21 09:32:54', '2022-04-21 09:32:54', '2022-04-21 09:32:54'),
(12, 12, 2, 5, 'Gọng kính cận nhựa Hàn Quốc V-idol 8160', '280000', '50 – 18 – 140 mm ( phù hợp với mặt nhỏ)', 'nhựa Hàn Quốc', 'Xanh', 100, '0.1', 'V-idol-8160_50_18_140_280k_Xanh-trang-2048x1536.jpg', 'Gọng kính cận nhựa Hàn Quốc V-idol 8160 có kiểu dáng vuông basic, dễ sử dụng. Thiết kế nhẹ nhàng với chất liệu nhựa dẻo siêu bền, trọng lượng nhẹ giúp người đeo thoải mái khi sử dụng. Kích thước gọng kính cận V-idol 8160 phù hợp với người có khuôn mặt vừa và to. Màu sắc: Xanh', 0, 1, '2022-04-21 09:39:29', '2022-04-21 09:39:29', '2022-04-21 09:39:29'),
(13, 13, 2, 5, 'Gọng kính cận nhựa Hàn Quốc V-idol 8135', '280000', '48 – 17 – 130 mm ( phù hợp với mặt nhỏ)', 'Gọng kính nhựa Hàn Quốc', 'Tím trong, Xanh trong', 10, '0.1', 'V-idol-8160_50_18_140_280k_Xanh-trang-2048x1536.jpg', 'Gọng kính cận nhựa Hàn Quốc V-idol 8135 có kiểu dáng vuông basic, dễ sử dụng. Thiết kế nhẹ nhàng với chất liệu nhựa dẻo siêu bền, trọng lượng nhẹ giúp người đeo thoải mái khi sử dụng. Kích thước gọng kính cận V-idol 8135 phù hợp với người có khuôn mặt nhỏ. Màu sắc: Tím trong, Xanh trong', 0, 1, '2022-04-21 09:44:37', '2022-04-21 09:44:37', '2022-04-21 09:44:37'),
(14, 14, 2, 5, 'Gọng kính cận nhựa Hàn Quốc V-idol 8142', '280000', '48 – 18 – 130 mm ( phù hợp với khuôn mặt nhỏ)', 'Gọng kính nhựa Hàn Quốc', 'Đen nhám, Xanh trong', 100, '0.1', 'V-idol-8160_50_18_140_280k_Xanh-trang-2048x1536.jpg', 'Gọng kính cận nhựa Hàn Quốc V-idol 8142 có kiểu dáng vuông basic, dễ sử dụng. Thiết kế nhẹ nhàng với chất liệu nhựa dẻo siêu bền, trọng lượng nhẹ giúp người đeo thoải mái khi sử dụng. Kích thước gọng kính cận V-idol 8142 phù hợp với người có khuôn mặt nhỏ. Màu sắc: Đen nhám, Xanh trong', 0, 1, '2022-04-21 09:48:26', '2022-04-21 09:48:26', '2022-04-21 09:48:26'),
(15, 15, 2, 5, 'Gọng kính cận nhựa Hàn Quốc V-idol 8133', '280000', '46 – 18 – 130 mm ( phù hợp với mặt vừa và to)', 'Gọng kính nhựa Hàn Quốc', 'Xanh, Tím trong', 100, '0.1', 'V-idol-8133_46_18_130_280k_xanh-trong-768x576.jpg', 'Gọng kính cận nhựa Hàn Quốc V-idol 8133 có kiểu dáng vuông basic, dễ sử dụng. Thiết kế nhẹ nhàng với chất liệu nhựa dẻo siêu bền, trọng lượng nhẹ giúp người đeo thoải mái khi sử dụng. Kích thước gọng kính cận V-idol 8133 phù hợp với người có khuôn mặt nhỏ. Màu sắc: Xanh, Tím trong', 0, 1, '2022-04-21 09:52:19', '2022-04-21 09:52:19', '2022-04-21 09:52:19'),
(16, 16, 2, 6, 'Gọng kính cận CHROME HEARTS SECRET', '950000', '49-22-145 mm ( phù hợp với mặt vừa và to )', 'Gọng Kính Cận Kim Loại', 'Đen, Bạc, Xám', 100, '0.1', 'Chrome-Hearts-Secret_49_22_145-768x1024.jpg', 'Gọng kính cận Chrome Hearts Secret có kiểu dáng tròn Hottrend, trẻ trung. Thiết kế hiện đại, xa xỉ, phù hợp với các tín đồ thời trang cả nam lẫn nữ. Gọng kính được làm bằng chất liệu titanium cao cấp, chuẩn Au 1:1 với ưu điểm: nhẹ, bền và lâu bị oxi hoá. Điểm nhấn của Secret chính họa tiết chữ thập đặc trưng của Chrome Hearts ở phần gọng kính thanh mảnh và logo thương hiệu ở phần đệm mũi. Kích thước gọng kính cận Chrome Hearts Secret hợp với người có khuôn mặt vừa. Màu sắc: Đen, Bạc, Xám', 1, 1, '2022-04-21 10:10:27', '2022-04-21 10:10:27', '2022-04-21 10:10:27'),
(17, 17, 2, 7, 'Gọng kính cận Titanium Charmant Z ZT19838', '1200000', '55-18-140 mm ( phù hợp với mặt vừa)', 'Gọng Kính Cận Titanium', 'Đen, Đồng', 10, '', 'ZT19838_55_16_140.jpg', 'Gọng kính cận Titanium  Charmant Z ZT19838 với kiểu dáng nguyên khung sang trọng. Thiết kế của gọng kính đơn giản, nhẹ nhàng giúp tôn lên đường nét khuôn mặt và không hề kén độ tuổi sử dụng. Gọng kính được làm bằng chất liệu titanium với ưu điểm: siêu nhẹ, độ bền cao và lâu bị oxi hoá theo thời gian. Kích thước gọng cận ZT19838 phù hợp với người có khuôn mặt vừa. ', 1, 1, '2022-04-21 10:19:57', '2022-04-21 10:19:57', '2022-04-21 10:19:57'),
(18, 18, 2, 6, 'Gọng kính cận CHROME HEARTS CH8823', '1000000', '53 – 17 – 145 mm ( phù hợp với mặt vừa và to)', 'Kim Loại + Nhựa', ' Đen, Đồi Mồi, Trắng Trong, Xám', 10, '', 'Chrome-Heart_CH8823_53_17_145-2.jpg', 'Gọng kính cận Chrome Hearts CH8823 có kiểu dáng tròn hiện đại, trẻ trung. Thiết kế xa xỉ đầy sức hút, phù hợp với các tín đồ thời trang cả nam lẫn nữ. Gọng kính được làm bằng chất liệu nhựa acetat cao cấp, chuẩn Au 1:1 với ưu điểm: nhẹ, bền và lâu bị oxi hoá. Điểm nhấn của CH8823 chính họa tiết đặc trưng của Chrome Hearts ở phần gọng kính. Kích thước gọng kính cận Chrome Hearts CH8823 hợp với người có khuôn mặt vừa. Màu sắc: Đen, Đồi Mồi, Trắng Trong, Xám', 1, 1, '2022-04-22 08:49:45', '2022-04-22 08:49:45', '2022-04-22 08:49:45'),
(19, 19, 2, 1, 'Gọng kính cận Porsche Design P9851', '550000', '56 – 18- 140 mm ( phù hợp với mặt vừa và to)', 'Nhựa cao cấp', 'Đen, Xám, Đồng', 10, '0.15', 'Chrome-Heart_CH8823_53_17_145-2.jpg', 'Gọng Kính Cận Porsche Design P9851 có kiểu dáng nửa khung trẻ trung. Thiết kế đơn giản, nhẹ nhàng nên dễ dàng phù hợp với nhiều phong cách và độ tuổi khác nhau. Phần gọng kính thanh mảnh, sang trọng với logo Porsche đặc trưng. Gọng P9851 được gia công từ chất liệu kim loại chất lượng tốt đi kèm với các ưu điểm: nhẹ, bền và lâu bị ăn mòn (oxi hóa). Kích thước của Gọng Kính Cận Porsche P9851 phù hợp với người có khuôn mặt vừa và to.', 0, 1, '2022-04-22 08:53:42', '2022-04-22 08:53:42', '2022-04-22 08:53:42'),
(20, 20, 2, 1, 'Gọng kính cận Porsche Design P9848', '550000', '56 – 18- 145 mm ( phù hợp với mặt vừa và to)', 'Gọng kim loại', 'Đen, Xám, Đồng, Bạc, Xanh', 10, '0.15', 'P9848_56_18_145_400k_0-768x512.jpg', 'Gọng Kính Cận Porsche Design có kiểu dáng nửa khung trẻ trung, thời thượng. Thiết kế đơn giản, nhẹ nhàng nên dễ dàng phù hợp với nhiều phong cách và độ tuổi khác nhau. Phần gọng kính thanh mảnh, sang trọng với logo Porsche đặc trưng và được gia công từ chất liệu kim loại chất lượng tốt đi kèm với các ưu điểm: nhẹ, bền và lâu bị ăn mòn (oxi hóa). Kích thước của Gọng Kính Cận Porsche P9838 phù hợp với người có khuôn mặt vừa và to.', 0, 1, '2022-04-22 08:58:12', '2022-04-22 08:58:12', '2022-04-22 08:58:12'),
(21, 21, 3, 7, 'Tròng kính ZEISS Platinum UV 1.67 Lớp váng cao cấp', '2998000', '1.67 (siêu mỏng)', 'khong', 'trong suốt', 10, '', 'zeiss_logo_trong.jpg', 'Tròng kính Zeiss Platinum UV 1.67 đến từ Đức chiết suất siêu mỏng, cứng, nhẹ, có lớp váng DuraVision® cao cấp và công nghệ FreeForm HD – thiết kế rõ nét trên từng điểm ảnh đem lại cho người sử dụng tầm nhìn thoải mái nhất', 1, 1, '2022-04-22 09:13:35', '2022-04-22 09:13:35', '2022-04-22 09:13:35'),
(22, 22, 3, 9, 'Tròng kính HOYA Nulux 1.74 HVLL cao cấp', '5590000', '1.74 (siêu siêu mỏng)', 'kính', 'Trong suốt', 100, '0.2', 'Hoya_Nulux_HVLL_174_2_resize.jpg', 'Tròng kính Hoya Nulux 1.74 HVLL cao cấp có thiết kế phẳng một mặt siêu cứng, mỏng hơn, nhẹ hơn, trong suốt, làm bằng plastic và được phủ bằng lớp váng rất đặc biệt của Hoya – HVLL cho hiệu suất quang học vượt trội, giúp bảo vệ đôi mắt và tròng kính tối ưu, sản phẩm có tính thẩm mỹ cao, cho thị lực tuyệt vời ở mọi góc nhìn mang đến cảm nhận hình ảnh chân thật nhất.', 1, 1, '2022-04-22 09:17:46', '2022-04-22 09:17:46', '2022-04-22 09:17:46'),
(23, 23, 3, 10, 'Tròng kính lọc ánh sáng xanh HOYA STELLIFY BLUE CONTROL 1.60AS', '1220000', '1.60AS (mỏng)', 'kính chống ánh sáng xang', 'trong suốt', 10, '0.2', 'Hoya_Stellify_blue_control_160_2_resize.jpg', 'Tròng kính lọc ánh sáng xanh Hoya Stellify Blue Control chiết suất mỏng 1.60AS được phủ lớp váng Hi-Vision Protect (HVP), có độ trong suốt, tương phản cao, phản quang tốt, ít bám nước, bụi bẩn và rất dễ làm sạch. Quan trọng hơn là tính năng ngăn cản đến 20% sóng tia 550, ngăn cản ánh sáng xanh dương có hại phát ra từ màn hình của các thiết bị điện tử kỹ thuật số.', 0, 1, '2022-04-22 09:22:11', '2022-04-22 09:22:11', '2022-04-22 09:22:11'),
(24, 24, 3, 10, 'Tròng kính HOYA STELLIFY 1.60AS', '990,000', '1.60AS ( mỏng)', 'kính chống tia OV', 'Trong suốt', 10, '0.2', 'Hoya_Stellify_160as_1_resize.jpg', 'Tròng kính Hoya Stellify 1.60AS có chất liệu và phủ lớp váng HVP của Hoya, độ trong suốt và tương phản cao, mỏng, phản quang tốt, ít bám nước, bụi bẩn và rất dễ làm sạch. Là sản phẩm hoàn hảo cho mắt có thị lực thấp, giá cả hợp lý nhưng chất lượng rất tốt, nhẹ nhàng và thoải mái khi đeo.\r\n', 0, 1, '2022-04-22 09:26:36', '2022-04-22 09:26:36', '2022-04-22 09:26:36'),
(25, 25, 3, 10, 'Tròng kính HOYA STELLIFY 1.55S', '580000', '1.55S', 'kính chồng UV', 'trong suốt', 10, '0.2', 'Hoya_Stellify_155_1_resize.jpg', 'Tròng kính Hoya Stellify 1.55S có chất liệu và phủ lớp váng HVP của Hoya, độ trong suốt và tương phản cao, mỏng, phản quang tốt, ít bám nước, bụi bẩn và rất dễ làm sạch. Là sản phẩm hoàn hảo cho mắt có thị lực thấp, giá cả hợp lý nhưng chất lượng rất tốt, nhẹ nhàng và thoải mái khi đeo.', 0, 1, '2022-04-22 09:32:17', '2022-04-22 09:32:17', '2022-04-22 09:32:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `_danh_gia`
--

CREATE TABLE IF NOT EXISTS `_danh_gia` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `san_pham_id` bigint(20) UNSIGNED NOT NULL,
  `diem` int(11) NOT NULL DEFAULT 0,
  `nhan_xet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `_hoa_don`
--

CREATE TABLE IF NOT EXISTS `_hoa_don` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ma_hd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `khach_hang_id` bigint(20) UNSIGNED NOT NULL,
  `tong_tien` double NOT NULL,
  `ngay_dat` datetime NOT NULL,
  `dia_chi_nhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_thuc_thanh_toan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghi_chu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tinh_trang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `_khach_hang`
--

CREATE TABLE IF NOT EXISTS `_khach_hang` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dia_chi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gioi_tinh` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinh_dai_dien` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bi_khoa` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `_khach_hang_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `_loai_s_p`
--

CREATE TABLE IF NOT EXISTS `_loai_s_p` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `_loai_s_p`
--

INSERT INTO `_loai_s_p` (`id`, `ten`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'KÍNH MÁT', NULL, NULL, NULL),
(2, 'Gọng Kính Cận', NULL, NULL, NULL),
(3, 'Tròng kính', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `_nha_san_xuat`
--

CREATE TABLE IF NOT EXISTS `_nha_san_xuat` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `_nha_san_xuat`
--

INSERT INTO `_nha_san_xuat` (`id`, `ten`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Porsche Design', NULL, NULL, NULL),
(2, 'ShiVeDa', NULL, NULL, NULL),
(3, 'Louis Vuitton', NULL, NULL, NULL),
(4, 'Mắt Kính Gentle Monster', NULL, NULL, NULL),
(5, 'V-idol', NULL, NULL, NULL),
(6, 'Chrome Hearts', NULL, NULL, NULL),
(7, 'Charmant Z', NULL, NULL, NULL),
(8, 'Zeiss', NULL, NULL, NULL),
(9, 'Hoya Nulux HVLL', NULL, NULL, NULL),
(10, 'Hoya Stellify BlueControl', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `_quan_tri_vien`
--

CREATE TABLE IF NOT EXISTS `_quan_tri_vien` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_tai_khoan` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdt` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bi_khoa` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `_san_pham`
--

CREATE TABLE IF NOT EXISTS `_san_pham` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ma_sp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_anh` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gioi_tinh` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `_san_pham`
--

INSERT INTO `_san_pham` (`id`, `ma_sp`, `hinh_anh`, `gioi_tinh`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ma_01', 'P8657titan_62_11_140_1100k_bac.jpg', '1', '2022-04-21 09:03:40', '2022-04-21 09:03:40', '2022-04-21 09:03:40'),
(2, 'ma_02', 'P8645_60_12_145_800k_0-768x513.jpg', '1', '2022-04-21 04:01:16', '2022-04-21 04:01:16', '2022-04-21 04:01:16'),
(3, 'ma_03', 'P8645_60_12_145_800k_0-768x513.jpg', '1', '2022-04-21 09:03:40', '2022-04-21 09:03:40', '2022-04-21 09:03:40'),
(4, 'ma_04', 'P8665_63_10_145_900k_0-768x513 (1).jpg', '1', '2022-04-21 09:03:07', '2022-04-21 09:03:07', '2022-04-21 09:03:07'),
(5, 'ma_05', 'P8548_62_15_140_800k_0-768x513.jpg', '1', '2022-04-21 05:13:20', '2022-04-21 05:13:20', '2022-04-21 05:13:21'),
(6, 'ma_06', 'SVD29067_51_21_144_0-768x512.jpg', '2', '2022-04-21 09:03:40', '2022-04-21 09:03:40', '2022-04-21 09:03:40'),
(7, 'ma_07', 'SVD29033_59_18_141_0-768x512.jpg', '2', '2022-04-21 09:08:22', '2022-04-21 09:08:22', '2022-04-21 09:08:22'),
(8, 'ma_08', 'SVD29033_59_18_141_0-768x512.jpg', '2', '2022-04-21 09:13:36', '2022-04-21 09:13:36', '2022-04-21 09:13:36'),
(9, 'ma_09', 'SVD_10181_a_resize-450x329.jpg', '2', '2022-04-21 09:17:14', '2022-04-21 09:17:14', '2022-04-21 09:17:14'),
(10, 'ma_10', 'Louis_Vuitton_Z0133w_a_resize-600x347.jpg', '2', '2022-04-21 09:21:40', '2022-04-21 09:21:40', '2022-04-21 09:21:40'),
(11, 'ma_11', 'Gentle_Monster_1.jpg', '1', '2022-04-21 09:32:06', '2022-04-21 09:32:06', '2022-04-21 09:32:06'),
(12, 'ma_12', 'V-idol-8160_50_18_140_280k_Xanh-trang-2048x1536.jpg', '1', '2022-04-21 09:40:16', '2022-04-21 09:40:16', '2022-04-21 09:40:16'),
(13, 'ma_13', 'V-idol-8160_50_18_140_280k_Xanh-trang-2048x1536.jpg', '2', '2022-04-21 09:43:57', '2022-04-21 09:43:57', '2022-04-21 09:43:57'),
(14, 'ma_14', 'V-idol-8160_50_18_140_280k_Xanh-trang-2048x1536.jpg', '1', '2022-04-21 09:46:31', '2022-04-21 09:46:31', '2022-04-21 09:46:31'),
(15, 'ma_15', 'V-idol-8133_46_18_130_280k_xanh-trong-768x576.jpg', '2', '2022-04-21 09:51:21', '2022-04-21 09:51:21', '2022-04-21 09:51:21'),
(16, 'ma_16', 'V-idol-8133_46_18_130_280k_xanh-trong-768x576.jpg', '2', '2022-04-21 10:10:13', '2022-04-21 10:10:13', '2022-04-21 10:10:13'),
(17, 'ma_17', 'ZT19838_55_16_140.jpg', '1', '2022-04-21 10:19:45', '2022-04-21 10:19:45', '2022-04-21 10:19:45'),
(18, 'ma_18', 'Chrome-Heart_CH8823_53_17_145-2.jpg', '2', '2022-04-22 08:51:05', '2022-04-22 08:51:05', '2022-04-22 08:51:05'),
(19, 'ma_19', 'Chrome-Heart_CH8823_53_17_145-2.jpg', '1', '2022-04-22 08:52:15', '2022-04-22 08:52:15', '2022-04-22 08:52:15'),
(20, 'ma_20', 'P9848_56_18_145_400k_0-768x512.jpg', '1', '2022-04-22 08:56:38', '2022-04-22 08:56:38', '2022-04-22 08:56:38'),
(21, 'ma_21', 'Lop_vang_duravision2_resize-768x573.jpg', '0', '2022-04-22 09:10:47', '2022-04-22 09:10:47', '2022-04-22 09:10:47'),
(22, 'ma_22', 'Hoya_Nulux_HVLL_174_2_resize.jpg', '0', '2022-04-22 09:16:49', '2022-04-22 09:16:49', '2022-04-22 09:16:49'),
(23, 'ma_23', 'Hoya_Stellify_blue_control_160_2_resize.jpg', '0', '2022-04-22 09:19:46', '2022-04-22 09:19:46', '2022-04-22 09:19:46'),
(24, 'ma_23', 'Hoya_Stellify_160as_1_resize.jpg', '0', '2022-04-22 09:25:45', '2022-04-22 09:25:45', '2022-04-22 09:25:45'),
(25, 'ma_25', 'Hoya_Stellify_155_1_resize.jpg', '0', '2022-04-22 09:28:34', '2022-04-22 09:28:34', '2022-04-22 09:28:34');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

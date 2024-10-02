-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 01, 2022 lúc 09:20 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cosi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id_brand` int(11) NOT NULL,
  `brand` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `logo_brand` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `picture` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `brand_intro` varchar(400) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id_brand`, `brand`, `logo_brand`, `picture`, `brand_intro`) VALUES
(1, 'Panasonic ', 'https://dienlanhdienmayxanh.com/wp-content/uploads/2018/01/Panasonic-Logo.jpg', 'https://quatpanasonic.info/files/assets/panasonic13801.jpg', 'Panasonic has been present in Vietnam since the 1950s, then officially entered Vietnam in 1971, this is one of the businesses that pay special attention to social activities, especially in the field of education and environment for the happy and healthy life of every Vietnamese citizen and a prosperous and prosperous Vietnamese society.'),
(2, 'Funiki', 'https://dienmaydongsapa.com/wp-content/uploads/2020/03/Funiki-Logo.jpg', 'https://tudongvietphat.com/wp-content/uploads/2021/02/Dieu-hoa-Funiki-cua-nuoc-nao.jpg', 'With the existing achievements in terms of market share and customer trust, Funiki air conditioner is really the pride of a Vietnamese brand. 2018 is a year marking many landmark changes and will bring even greater success to Funiki in particular and Hoa Phat in general.'),
(3, 'Daikin', 'https://logos-download.com/wp-content/uploads/2016/06/Daikin_logo_white_background.png', 'https://dieuhoadaikin.vip/wp-content/uploads/Tham-quan-nha-may-san-xuat-dieu-hoa-Daikin-tai-Viet-Nam-1-1024x676.jpg', 'Daikin air conditioners appeared in Vietnam in 1995, distributed by Viet Kim Company, known as the world\'s leading air conditioner manufacturer from Japan. Daikin air conditioners are mostly imported from Japan. Malaysia, Thailand, China, Japan but still ensure the quality according to international standards, so users can rest assured to use'),
(4, 'LG', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/LG_Logo_Slogan_3d.svg/1200px-LG_Logo_Slogan_3d.svg.png', 'https://www.baosoctrang.org.vn/uploads/image/2021/04/14/IMG_6605-1618397957007.jpg', 'LG Air Conditioners provide optimal solutions for climates with advanced systems that deliver outstanding heating, ventilation and air conditioning performance. With knowledge from leading experts, we meet the demand for digitized and environmentally friendly air conditioning solutions.'),
(5, 'SAMSUNG', 'https://upload.wikimedia.org/wikipedia/commons/f/f1/Samsung_logo_blue.png', 'https://cafebiz.cafebizcdn.vn/thumb_w/600/2017/photo-1-1494216785837-crop-1494218571236.png', 'Samsung air conditioner owns many outstanding technologies to support users to experience life with fresher, more comfortable air. With leading technology products, the brand from the land of kimchi is very popular with consumers. used in the Vietnamese market.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(70) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `idea` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--

--
-- Cấu trúc bảng cho bảng `img`
--

CREATE TABLE `img` (
  `id_img` int(11) NOT NULL,
  `img_1` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `img_2` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `img_3` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `img_4` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `img`
--

INSERT INTO `img` (`id_img`, `img_1`, `img_2`, `img_3`, `img_4`) VALUES
(1, 'https://cdn.mediamart.vn/images/product/diu-hoa-panasonic-1-chiu-9000btu-cs-n9wkh-8m_073f31d7.webp', 'https://cdn.mediamart.vn/images/product/diu-hoa-panasonic-1-chiu-9000btu-cs-n9wkh-8m_1d318ec7.webp', 'https://cdn.mediamart.vn/images/product/diu-hoa-panasonic-1-chiu-9000btu-cs-n9wkh-8m_391ded7c.webp', 'https://cdn.mediamart.vn/images/product/diu-hoa-panasonic-1-chiu-9000btu-cs-n9wkh-8m_e7c4a1f8.webp'),
(2, 'https://cdn.mediamart.vn/images/product/dieu-hoa-1-chieu-inverter-12000btu-panasonic-cspu12wkh8m-Z1di8P.webp', 'https://cdn.mediamart.vn/images/product/dieu-hoa-1-chieu-inverter-12000btu-panasonic-cspu12wkh8m-9e4l46.webp', 'https://cdn.mediamart.vn/images/product/dieu-hoa-1-chieu-inverter-12000btu-panasonic-cspu12wkh8m-n7svqX.webp', 'https://cdn.mediamart.vn/images/product/dieu-hoa-1-chieu-inverter-12000btu-panasonic-cspu12wkh8m-E99vH4.webp'),
(3, 'https://hc.com.vn/i/ecommerce/media/DL.043475_FEATURE_95509.jpg', 'https://hc.com.vn/i/ecommerce/media/DL.043475_FEATURE_95510.jpg', 'https://hc.com.vn/i/ecommerce/media/DL.043475_FEATURE_95512.jpg', 'https://hc.com.vn/i/ecommerce/media/DL.043475_FEATURE_95510.jpg'),
(4, 'https://phanphoidienmay.net/image/cache/catalog/dieu-hoa/Panasonic/C18FFH/dieu-hoa-panasonic-c18ffh-S-650x650.jpg', 'https://img.websosanh.vn/v2/users/wss/images/dieu-hoa-tu-dung-panasonic/24qhc2kaat6z2.jpg?compress=85&width=220', 'https://img.websosanh.vn/v2/users/wss/images/dieu-hoa-tu-dung-panasonic/24qhc2kaat6z2.jpg?compress=85&width=220', 'https://img.websosanh.vn/v2/users/wss/images/dieu-hoa-tu-dung-panasonic/zvkhc4kuciuvt.jpg?compress=85&width=220'),
(5, 'https://www.dienmayphuckhanh.vn/wp-content/uploads/2021/11/Dieu-hoa-Panasonic-18000-BTU-1-chieu-N18XKH-8.jpg', 'https://s.meta.com.vn/Data/image/2021/04/08/dieu-hoa-1-chieu-18000btu-panasonic-cs-cu-n18wkh-8-2.jpg', 'https://dienmaynguoiviet.vn/uploads/product/crawl/child/6041_dieu_hoa_panasonic_cu_cs_n18xkh_8_18000btu_org_5.jpg', 'https://dienmaynguoiviet.vn/uploads/product/crawl/1651120939_6041_n18xkh_8_2.jpg'),
(6, 'https://salt.tikicdn.com/cache/400x400/ts/product/0c/a4/70/1f3c5ac3b9bda82e833e84da5a296cdb.png.webp', 'https://salt.tikicdn.com/cache/400x400/ts/product/03/f8/64/9d5db53c0a83b6182ee7bc26bd100722.png.webp', 'https://cdn.mediamart.vn/images/product/17088_13428_dieu-hoa-tu-dung-panasonicucs-c28ffh-25000btu.webp', 'https://salt.tikicdn.com/cache/400x400/ts/product/78/09/72/cb90d81b0506ec5e3969bbdeaa4b819f.png.webp'),
(7, 'https://hc.com.vn/i/ecommerce/media/DL.043475_FEATURE_95509.jpg', 'https://hc.com.vn/i/ecommerce/media/DL.043475_FEATURE_95510.jpg', 'https://hc.com.vn/i/ecommerce/media/DL.043475_FEATURE_95512.jpg', 'https://hc.com.vn/i/ecommerce/media/DL.043475_FEATURE_95510.jpg'),
(8, 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/652/10045216-may-lanh-panasonic-1-hp-cu-cs-n9wkh-8m.jpg', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/652/10045216-may-lanh-panasonic-1-hp-cu-cs-n9wkh-8m-02.jpg', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/652/10045216-may-lanh-panasonic-1-hp-cu-cs-n9wkh-8m-04.jpg', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/652/10045216-may-lanh-panasonic-1-hp-cu-cs-n9wkh-8m-03.jpg'),
(9, 'https://s.meta.com.vn/Data/image/2017/06/21/dieu-hoa-cu-cs-z9tkh-8.jpg', 'https://s.meta.com.vn/Data/image/2017/06/21/dieu-hoa-cu-cs-z9tkh-8-de.jpg', 'https://s.meta.com.vn/Data/image/2017/06/21/dieu-hoa-cu-cs-z9tkh-8-ben.jpg', 'https://s.meta.com.vn/Data/image/2017/06/21/dieu-hoa-cu-cs-z9tkh-8-nut.jpg'),
(10, 'http://bizweb.dktcdn.net/thumb/grande/100/386/618/products/10050108-may-lanh-panasonic-inverter-1-5-hp-cu-cs-xu12xkh-8-1.jpg?v=1646016419107', 'https://bizweb.dktcdn.net/100/386/618/products/10050108-may-lanh-panasonic-inverter-1-5-hp-cu-cs-xu12xkh-8-2.jpg?v=1646016419647', 'https://dieuhoa.vip/wp-content/uploads/Dieu-hoa-Panasonic-XU12XKH-8-5.jpg', 'https://bizweb.dktcdn.net/100/386/618/products/10050108-may-lanh-panasonic-inverter-1-5-hp-cu-cs-xu12xkh-8-4.jpg?v=1646016420483'),
(11, 'https://cdn.tgdd.vn/Products/Images/2002/272061/funiki-1-hp-hsic09tmu1-1.jpg', 'https://tudongvietphat.com/wp-content/uploads/2022/04/Dieu-hoa-Funiki-SmartCare-HSIC12TMU-Inverter-12000-btu-web2-1.jpg', 'https://sudospaces.com/hoaphat-com-vn/2022/04/hsic-09tmu-02.jpg', 'https://cdn.tgdd.vn/Products/Images/2002/272061/funiki-1-hp-hsic09tmu1-1.jpg'),
(12, 'https://cdn.tgdd.vn/Products/Images/2002/272061/funiki-1-hp-hsic09tmu1-1.jpg', 'https://sudospaces.com/hoaphat-com-vn/2022/04/hsic-09tmu-02.jpg', 'https://tudongvietphat.com/wp-content/uploads/2022/04/Dieu-hoa-Funiki-SmartCare-HSIC12TMU-Inverter-12000-btu-web2-1.jpg', 'https://cdn.tgdd.vn/Products/Images/2002/272061/funiki-1-hp-hsic09tmu1-1.jpg'),
(13, 'https://cdn.tgdd.vn/Products/Images/2002/272061/funiki-1-hp-hsic09tmu1-1.jpg', 'https://sudospaces.com/hoaphat-com-vn/2022/04/hsic-09tmu-02.jpg', 'https://tudongvietphat.com/wp-content/uploads/2022/04/Dieu-hoa-Funiki-SmartCare-HSIC12TMU-Inverter-12000-btu-web2-1.jpg', 'https://tudongvietphat.com/wp-content/uploads/2022/02/Dieu-hoa-Funiki-HSC-09TMU-9000-btu-web2.jpg'),
(14, 'https://cdn.tgdd.vn/Products/Images/2002/272061/funiki-1-hp-hsic09tmu1-1.jpg', ' https://sudospaces.com/hoaphat-com-vn/2022/04/hsic-09tmu-02.jpg', 'https://tudongvietphat.com/wp-content/uploads/2022/04/Dieu-hoa-Funiki-SmartCare-HSIC12TMU-Inverter-12000-btu-web2-1.jpg', 'https://tudongvietphat.com/wp-content/uploads/2022/02/Dieu-hoa-Funiki-HSC-09TMU-9000-btu-web2.jpg'),
(15, 'https://funiki.vip/wp-content/uploads/Dieu-hoa-Funiki-HSC18MMC-1.jpg', 'https://tudongvietphat.com/wp-content/uploads/2022/02/Dieu-hoa-Funiki-HSC-18TMU-18000-btu-web2.jpg', 'https://greenair.com.vn/media/product/2246_dieu_hoa_funiki_hsc09tax_3.jpg', 'https://tudongvietphat.com/wp-content/uploads/2022/02/Dieu-hoa-Funiki-HSC-18TMU-18000-btu-web6.jpg'),
(16, 'https://dieuhoa.vip/wp-content/uploads/Dieu-hoa-Funiki-HSC24TMU-1.jpg', 'https://bizweb.dktcdn.net/thumb/1024x1024/100/378/850/products/thuong-1-c5398826-212a-49cb-bbc3-f0dd1d88209e.png?v=1651571696453', 'https://bizweb.dktcdn.net/100/378/850/products/thuong-3-09eaf736-669a-4e02-a72c-959b22426431.png?v=1651571697143', 'https://greenair.com.vn/media/product/120_2247_dieu_hoa_funiki_hsc09tax_2.jpg'),
(17, 'http://bizweb.dktcdn.net/thumb/grande/100/378/850/products/thuong-3.png?v=1651571642573', 'https://sudospaces.com/hoaphat-com-vn/2022/04/hsc-09tmu-03.jpg', 'https://sudospaces.com/hoaphat-com-vn/2022/04/hsc-09tmu-01.jpg', 'http://bizweb.dktcdn.net/thumb/grande/100/378/850/products/thuong-3.png?v=1651571642573'),
(18, 'https://dienmaythienphu.vn/wp-content/uploads/2022/02/funiki-HIC-09TMU.jpg', 'https://tudongvietphat.com/wp-content/uploads/2022/02/Dieu-hoa-Funiki-HSC-18TMU-18000-btu-web6.jpg', 'https://tudongvietphat.com/wp-content/uploads/2022/02/Dieu-hoa-Funiki-HSC-18TMU-18000-btu-web2.jpg', 'https://tudongvietphat.com/wp-content/uploads/2022/02/Dieu-hoa-Funiki-HSC-18TMU-18000-btu-web3.jpg'),
(19, 'https://hc.com.vn/i/ecommerce/media/DL.043697_FEATURE_105816.jpg', 'https://dieuhoa.vip/wp-content/uploads/Dieu-hoa-Funiki-HSC24TMU-1.jpg', 'https://bizweb.dktcdn.net/100/378/850/products/thuong-3-09eaf736-669a-4e02-a72c-959b22426431.png?v=1651571697143', 'https://tudongvietphat.com/wp-content/uploads/2022/02/Dieu-hoa-Funiki-HSC-24TMU-24000-btu-web2.jpg'),
(20, 'https://dienmaygiagoc.com.vn/uploads/product/2020/765/may-lanh-2-chieu-daikin-fthf25ravmv-inverter-1-0hp.jpg', 'https://dieuhoadaikin.vip/wp-content/uploads/Dieu-hoa-Daikin-FTHF25RAVMV-2.jpg', 'https://dienmaygiagoc.com.vn/uploads/product/07_2020/13/may-lanh-2-chieu-daikin-fthf25ravmv-inverter-1-0hp-2.jpg', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/550/10038277-may-lanh-daikin-inverter-1-hp-fthf25ravmv-4.jpg'),
(21, 'https://dieuhoa.vip/wp-content/uploads/Dieu-hoa-Daikin-FTXV25QVMV.jpg', 'https://dienmaygiagoc.com.vn/uploads/product/09_2020/25/may-lanh-daikin-ftkc25uavmv-inverter-1-0hp-1.jpg', 'https://sieuthimaylanh.com/uploads/product/03_2020/may-lanh-daikin-ftka25uavmv-1-0-hp-inverter-2.jpg', 'https://sieuthimaylanh.com/uploads/product/03_2020/may-lanh-daikin-ftka25uavmv-1-0-hp-inverter-2.jpg'),
(22, 'https://dienmay247.com.vn/wp-content/uploads/2019/03/daikin-ftc50nv1v-trang-1-org.jpg', 'https://meta.vn/Data/image/2020/05/27/dieu-hoa-daikin-1-chieu-ftc50nv1v-2.jpg', 'https://sieuthimaylanh.com/uploads/product/11_2019/may-lanh-daikin-ftc-sieu-thi-may-lanh-dien-may-gia-goc-07_2.jpg', 'https://sieuthimaylanh.com/uploads/product/11_2019/may-lanh-daikin-ftc-sieu-thi-may-lanh-dien-may-gia-goc-09_2.jpg'),
(23, 'https://cdn.nguyenkimmall.com/images/detailed/526/10036725-may-lanh-daikin-inverter-1-5-hp-atkc35Tavmv-1.jpg', 'https://cdn.nguyenkimmall.com/images/detailed/526/10036725-may-lanh-daikin-inverter-1-5-hp-atkc35Tavmv-2.jpg', 'https://cdn.nguyenkimmall.com/images/detailed/640/10036725-may-lanh-daikin-inverter-1-5-hp-atkc35Tavmv-3.jpg', 'https://cdn.nguyenkimmall.com/images/detailed/640/10036725-may-lanh-daikin-inverter-1-5-hp-atkc35Tavmv-4.jpg'),
(24, 'https://dienmaygiagoc.com.vn/uploads/product/maylanh/maylanhtreotuong/may-lanh-daikin-ftkc25uavmv-inverter-1-0hp_1.jpg', 'https://sieuthimaylanh.com/uploads/product/03_2020/may-lanh-daikin-ftka25uavmv-1-0-hp-inverter-2.jpg', 'https://sieuthimaylanh.com/uploads/product/11_2019/may-lanh-daikin-ftkq-sieu-thi-may-lanh-dien-may-gia-goc-03_1.jpg', 'https://sieuthimaylanh.com/uploads/product/05_2020/may-lanh-daikin-ftf25uv1v-1-0-hp-1_4.jpg'),
(25, 'https://banhangtaikho.com.vn/Images/Product/fvqn160axv1v-rq160dgxy1v-5ENh8a.jpg', 'https://senviethvac.vn/upload/images/dieu-hoa-tu-dung-daikin-2-chieu-khong-inverter-55000-btu.jpg', 'https://bizweb.dktcdn.net/100/136/386/products/dieu-hoa-daikin-fvqn71axv1v-rq71cgxv1v-600x338-471afc0d-6ac3-4b0b-91c1-5cbe91b03e7d.jpg?v=1640769190137', 'https://banhangtaikho.com.vn/Images/Product/fvqn160axv1v-rq160dgxy1v-5ENh8a.jpg'),
(26, 'https://hopphat.com/media/product/1762_dieu_hoa_tu_dung_daikin_inverter_1_chieu_47800_btu_fva140amvm_rzf140cym_dieu_khien_day_anh.jpg', 'https://dieuhoadaikin.vip/wp-content/uploads/Dieu-hoa-Daikin-FVA140AMVM-RZF140CYM-2.jpg', 'https://dieuhoa.vip/wp-content/uploads/Dieu-hoa-Daikin-FVA140AMVM-RZF140CYM-1.jpg', 'https://hopphat.com/media/lib/1762_dieu-hoa-tu-dung-daikin-inverter-1-chieu-47800-btu-fva140amvm-rzf140cym-dieu-khien-day-mo-ta.jpg'),
(27, 'https://bizweb.dktcdn.net/100/431/725/products/ecc-28248cf6-4321-473c-b7eb-15008a5fabd4.jpg?v=1634110261607', 'https://sieuthimaylanh.com/uploads/product/01_2018/kich-thuoc-may-lanh-ap-tran-daikin-fhnq42mv1-4-5hp.jpg', 'https://greenair.com.vn/media/product/3087_dieu_hoa_ap_tran.jpg', 'https://sieuthimaylanh.com/uploads/product/01_2018/kich-thuoc-may-lanh-ap-tran-daikin-fhnq42mv1-4-5hp.jpg'),
(28, 'https://dienmaythanhan.vn/wp-content/uploads/2020/08/May-lanh-ap-tran-Daikin-FHA140BVMA-RZF140CYM-6-0-Hp-Inverter.jpg', 'https://sieuthimaylanh.com/uploads/product/01_2018/kich-thuoc-may-lanh-ap-tran-daikin-fhq140davma-6-0hp-inverter-3-pha.jpg', 'https://dienmaygiagoc.com.vn/uploads/product/2020/1101/may-lanh-sky-air-ap-tran-co-day-daikin-inverter-5-5-hp-fha140bvma-rzf140cym-brc1e63-dieu-khien-khong-day-900-nghin-1.jpg', 'https://senviethvac.vn/upload/images/dieu-hoa-ap-tran-sky-air-daikin-47800btu.jpg'),
(29, 'https://banhangtaikho.com.vn/Images/Product/fthf25ravmv-L0Xg59.jpg', 'https://dienmayakira.net/files/sanpham/1164/1/png/dieu-hoa-daikin-2-chieu-inverter-fthf25ravmv-9000btu.png ', 'https://banhangtaikho.com.vn/Images/Product/fthf25ravmv-I3ta4a.jpg', 'https://banhangtaikho.com.vn/Images/Product/fthf25ravmv-q8f7cF.jpg'),
(30, 'https://www.lg.com/vn/images/dieu-hoa/md07550260/gallery/D-1.jpg', 'https://www.lg.com/vn/images/dieu-hoa/md07550260/gallery/D-2.jpg', 'https://www.lg.com/vn/images/dieu-hoa/md07550260/gallery/D-3.jpg', 'https://www.lg.com/vn/images/dieu-hoa/md07550260/gallery/DZ-4.jpg'),
(31, 'https://s.meta.com.vn/Data/image/2021/05/21/dieu-hoa-lg-1-chieu-inverter-18-000-btu-v18enf1-2.jpg', 'https://s.meta.com.vn/Data/Image/2021/05/21/dieu-hoa-lg-1-chieu-inverter-18-000-btu-v18enf1-4.jpg', 'https://s.meta.com.vn/Data/Image/2021/05/21/dieu-hoa-lg-1-chieu-inverter-18-000-btu-v18enf1-5.jpg', 'https://s.meta.com.vn/Data/Image/2021/05/21/dieu-hoa-lg-1-chieu-inverter-18-000-btu-v18enf1-4.jpg'),
(32, 'https://www.lg.com/vn/images/dieu-hoa/md05810812/gallery/large01.jpg', 'https://www.lg.com/vn/images/dieu-hoa/md05810812/gallery/large05.jpg', 'https://www.lg.com/vn/images/dieu-hoa/md05810812/gallery/large11.jpg', 'https://www.lg.com/vn/images/dieu-hoa/md05810812/gallery/large12.jpg'),
(33, 'https://www.lg.com/vn/images/dieu-hoa/md05925296/gallery/large01.jpg', 'https://www.lg.com/vn/images/dieu-hoa/md05925296/gallery/large02.jpg', 'https://www.lg.com/vn/images/dieu-hoa/md05925296/gallery/large12.jpg', 'https://www.lg.com/vn/images/dieu-hoa/md05925296/gallery/large13.jpg'),
(34, 'https://hc.com.vn/i/ecommerce/media/DL.003951_FEATURE_78116.jpg', 'https://hc.com.vn/i/ecommerce/media/DL.003951_FEATURE_78117.jpg', 'https://hc.com.vn/i/ecommerce/media/DL.003951_FEATURE_78119.jpg', 'https://hc.com.vn/i/ecommerce/media/DL.003951_FEATURE_78120.jpg'),
(35, 'https://www.lg.com/vn/images/dieu-hoa/md07522329/gallery/dm-01.jpg', 'https://www.lg.com/vn/images/dieu-hoa/md07522329/gallery/dm-02.jpg', 'https://www.lg.com/vn/images/dieu-hoa/md07522329/gallery/dm-03.jpg', 'https://www.lg.com/vn/images/dieu-hoa/md07522329/gallery/dz-04.jpg'),
(36, 'https://www.lg.com/vn/images/dieu-hoa/md05925198/gallery/medium01.jpg', 'https://www.lg.com/vn/images/dieu-hoa/md05925198/gallery/medium02.jpg', 'https://www.lg.com/vn/images/dieu-hoa/md05925198/gallery/medium03.jpg', 'https://www.lg.com/vn/images/dieu-hoa/md05925198/gallery/large04.jpg'),
(37, 'https://www.lg.com/vn/images/dieu-hoa/gallery/dm-01.jpg', 'https://www.lg.com/vn/images/dieu-hoa/gallery/dm-02.jpg', 'https://www.lg.com/vn/images/dieu-hoa/gallery/dm-03.jpg', 'https://www.lg.com/vn/images/dieu-hoa/gallery/dz-04.jpg'),
(38, 'https://www.lg.com/vn/images/dieu-hoa/md05810809/gallery/large01.jpg', 'https://www.lg.com/vn/images/dieu-hoa/md05810809/gallery/large02.jpg', 'https://www.lg.com/vn/images/dieu-hoa/md05810809/gallery/large06.jpg', 'https://www.lg.com/vn/images/dieu-hoa/md05810809/gallery/large12.jpg'),
(39, 'https://images.samsung.com/is/image/samsung/vn-wall-mount-outdoor-ar09tyhqasixsv-f-ar09tyhqas20-224892767?$684_547_JPG$', 'https://images.samsung.com/is/image/samsung/vn-wall-mount-outdoor-ar09tyhqasixsv-f-ar09tyhqas20-224903099?$684_547_JPG$', 'https://images.samsung.com/is/image/samsung/vn-wall-mount-outdoor-ar09tyhqasixsv-f-ar09tyhqas20-224903124?$684_547_JPG$', 'https://images.samsung.com/is/image/samsung/vn-wall-mount-outdoor-ar09tyhqasixsv-f-ar09tyhqas20-224903155?$684_547_JPG$'),
(40, 'https://images.samsung.com/is/image/samsung/p6pim/vn/f-ar18ashzaw21/gallery/vn-wall-mount-f-ar18ashzaw21-front-white-451599506?$684_547_JPG$', 'https://images.samsung.com/is/image/samsung/p6pim/vn/f-ar18ashzaw21/gallery/vn-wall-mount-f-ar18ashzaw21-front-open-white-451599448?$684_547_JPG$', 'https://images.samsung.com/is/image/samsung/p6pim/vn/f-ar18ashzaw21/gallery/vn-wall-mount-f-ar18ashzaw21-l-perspective-white-451599453?$684_547_JPG$', 'https://images.samsung.com/is/image/samsung/p6pim/vn/f-ar18ashzaw21/gallery/vn-wall-mount-f-ar18ashzaw21-front---white-451599470?$684_547_JPG$'),
(41, 'https://images.samsung.com/is/image/samsung/vn-wall-mount-energy-saving-ar5000h-ar12tyhqasinsv-frontblue-222083188?$1300_1038_PNG$', 'https://images.samsung.com/is/image/samsung/vn-wall-mount-energy-saving-ar5000h-ar12tyhqasinsv-frontopenblue-222083174?$684_547_PNG$', 'https://images.samsung.com/is/image/samsung/vn-wall-mount-energy-saving-ar5000h-ar12tyhqasinsv-rperspectiveblue-222083177?$684_547_PNG$', 'https://images.samsung.com/is/image/samsung/vn-wall-mount-energy-saving-ar5000h-ar12tyhqasinsv-rperspectiveopenblue-222083178?$684_547_PNG$'),
(42, 'https://images.samsung.com/is/image/samsung/vn-wall-mount-out-door-ar18tygcdwkxsv-f-ar18tygcdw20-white-217895961?$684_547_JPG$', 'https://images.samsung.com/is/image/samsung/vn-wall-mount-out-door-ar18tygcdwkxsv-f-ar18tygcdw20-white-217895963?$684_547_JPG$', 'https://images.samsung.com/is/image/samsung/vn-wall-mount-out-door-ar18tygcdwkxsv-f-ar18tygcdw20-white-217895965?$684_547_JPG$', 'https://images.samsung.com/is/image/samsung/vn-wall-mount-out-door-ar18tygcdwkxsv-f-ar18tygcdw20-217895973?$684_547_JPG$'),
(43, 'https://images.samsung.com/is/image/samsung/vn-wall-mount-out-door-ar18tyhycwkxsv-f-ar18tyhycw20-217658218?$684_547_JPG$', 'https://images.samsung.com/is/image/samsung/vn-wall-mount-out-door-ar18tyhycwkxsv-f-ar18tyhycw20-217658244?$684_547_JPG$', 'https://images.samsung.com/is/image/samsung/vn-wall-mount-out-door-ar18tyhycwkxsv-f-ar18tyhycw20-217658271?$684_547_JPG$', 'https://images.samsung.com/is/image/samsung/vn-wall-mount-out-door-ar18tyhycwkxsv-f-ar18tyhycw20-217658423?$684_547_JPG$'),
(44, 'https://images.samsung.com/is/image/samsung/p6pim/vn/f-ar24byaaaw20/gallery/vn-air-conditioners-f-ar24byaaaw20-front-white-531509747?$1300_1038_PNG$', 'https://images.samsung.com/is/image/samsung/p6pim/vn/f-ar24byaaaw20/gallery/vn-air-conditioners-f-ar24byaaaw20-front-open-white-531509735?$684_547_PNG$', 'https://images.samsung.com/is/image/samsung/p6pim/vn/f-ar24byaaaw20/gallery/vn-air-conditioners-f-ar24byaaaw20-l-perspective-white-531509736?$684_547_PNG$', 'https://images.samsung.com/is/image/samsung/p6pim/vn/f-ar24byaaaw20/gallery/vn-air-conditioners-f-ar24byaaaw20-over-head-white-531509743?$684_547_PNG$'),
(45, 'https://images.samsung.com/is/image/samsung/vn-wall-mount-outdoor-ar12tyhqasixsv-f-ar12tyhqas20-224926190?$684_547_JPG$', 'https://images.samsung.com/is/image/samsung/vn-wall-mount-outdoor-ar12tyhqasixsv-f-ar12tyhqas20-224936090?$684_547_JPG$', 'https://images.samsung.com/is/image/samsung/vn-wall-mount-outdoor-ar12tyhqasixsv-f-ar12tyhqas20-224936154?$684_547_JPG$', 'https://images.samsung.com/is/image/samsung/vn-wall-mount-outdoor-ar12tyhqasixsv-f-ar12tyhqas20-224936168?$684_547_JPG$'),
(46, 'https://images.samsung.com/is/image/samsung/vn-wall-mount-outdoor-ar10tyaacwkxsv-f-ar10tyaacw20-217941288?$684_547_JPG$', 'https://images.samsung.com/is/image/samsung/vn-wall-mount-outdoor-ar10tyaacwkxsv-f-ar10tyaacw20-white-217952955?$684_547_JPG$', 'https://images.samsung.com/is/image/samsung/vn-wall-mount-outdoor-ar10tyaacwkxsv-f-ar10tyaacw20-white-217952957?$684_547_JPG$', 'https://images.samsung.com/is/image/samsung/vn-wall-mount-outdoor-ar10tyaacwkxsv-f-ar10tyaacw20-217952963?$684_547_JPG$');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id_sp` int(11) NOT NULL,
  `name_products` varchar(150) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` float NOT NULL,
  `intro` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `made_in` varchar(25) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `heating_capacity` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cooling_capacity` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Power_Input` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `id_brand` int(11) NOT NULL,
  `id_type` int(10) NOT NULL,
  `id_img` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id_sp`, `name_products`, `price`, `intro`, `made_in`, `heating_capacity`, `cooling_capacity`, `Power_Input`, `id_brand`, `id_type`, `id_img`) VALUES
(1, 'Panasonic 1-way air conditioner 9000BTU N9WKH-8', 436.06, 'The indoor unit is redesigned to be more stylish, with a personality curve and shiny edges that make the product look more outstanding.\r\nReferring to Panasonic as a customer who always thinks of outstanding design, the Panasonic 9000Btu 1-way air conditioner CU/CS-N9VKH-8 brings a modern and luxurious space to your family  interior space.\r\nThe cooling capacity of 9000Btu (1.0HP) is a reasonable choice for rooms with a small area from 10m2 to 15m2. \r\nIf the specified area is exceeded, the machine', 'India', '0 BTU', '9000 BTU', '3000 W', 1, 1, 1),
(2, 'Air conditioner Panasonic CU-CS-PU12XKH-8M', 573.21, 'The indoor unit is redesigned to be more stylish, with a personality curve and shiny edges that make the product look more outstanding.\r\nReferring to Panasonic as a customer who always thinks of outstanding design, the Panasonic 9000Btu 1-way air conditioner CU/CS-N9VKH-8 brings a modern and luxurious space to your family interior space.', 'Japan', '0 BTU', '12000 BTU', '5000 W', 1, 1, 2),
(3, 'Panasonic Inverter 1-way air conditioner 12000 BTU CU/CS-U12XKH-8', 539.14, 'Features: Extremely fast cooling capacity.\r\nModern, elegant design.\r\nAbsolute heat dissipation cooling.\r\nInverter technology saves energy effectively.\r\nAdvantages of air conditioner CU/CS-U12XKH-8 Nanoe™ air filter technology (New) /Nanoe-G air purifier.\r\nAEROWING/FAST COOLING flexible louvers. P-Tech – 35% Faster Cooling/Comfortable Cooling SHOWER COOLING.\r\nINVERTER technology saves energy. Advantages of air conditioner CU/CS-U12XKH-8 Exclusive air filter technology Nanoe-G for cleaner and fres', 'Indonesia', '0 BTU', '12000 BTU', '5300 W', 1, 1, 3),
(4, 'Panasonic Single-Way Stand Air Conditioner 18,000 BTU CU/CS-C18FFH', 834.37, 'Just an AC', 'India', '0 BTU', '18000 BTU', '5700 W', 1, 2, 4),
(5, 'Panasonic 18000BTU 1-way air conditioner N18XKH-8', 642.66, 'Just an AC', 'Philippines', ' 0 BTU', '18000 BTU', '5600 W', 1, 1, 5),
(6, 'Panasonic C28FFH 1-way vertical cabinet air conditioner (28,000BTU)', 1323.7, 'Just an AC', 'Philippines', '0 BTU', '28000 BTU', '6000 W', 1, 2, 6),
(7, 'Panasonic Inverter 1-way air conditioner 12000 BTU CU/CS-U12VKH-8', 493.85, 'Just an AC', 'Japan', '0 BTU', '12000 BTU', '5000 W', 1, 1, 7),
(8, 'Panasonic Inverter Air Conditioner 1 HP CU/CS-PU9WKH-8M', 377.4, 'Just an AC', 'Japan', '0 BTU', '9000 BTU', '3000 W', 1, 1, 8),
(9, 'Panasonic 2-way Inverter R32 air conditioner standard CS/CU-YZ9WKH-8', 496.87, 'Just an AC', 'Philippines', '6000 BTU', '9000 BTU', '3000 W', 1, 1, 9),
(10, 'Panasonic Inverter Air Conditioner 11900Btu CS/CU-XU12XKH-8', 689.67, 'Just an AC', 'Philippines', '0 BTU', '11900 BTU', '4700 W', 1, 1, 10),
(11, 'Funiki Air Conditioner 9000BTU  Inverter HSIC 09TMU', 300, '\" - Automatic 3D air-swing technology, Silver Ion dust filter\r\n\r\n- Activated Carbon filter + Vitamin C purify the air\r\n\r\n- Wifi connection, energy saving inverter technology\r\n\r\n- Suitable area ≤ 15m² (< 45 m³)\"', 'Vietnam', '0 BTU', '9000 BTU', '3000 W', 2, 1, 11),
(12, 'Air conditioner Funiki 12000BTU Inverter HSIC 12TMU', 320, '\"- Automatic 3D air-swing technology, Silver Ion dust filter\r\n\r\n- Activated Carbon filter + Vitamin C purify the air\r\n\r\n- Wifi connection, energy saving inverter technology \" ', 'Vietnam', '0 BTU', '12000 BTU', '5000 W', 2, 1, 12),
(13, 'Air conditioner Funiki 9000BTU 1 way HSC 09TMU', 240, '\"Fast cooling, quiet operation\r\n\r\n- Self-diagnosis function, save power\r\n\r\n- Suitable area ≤ 15m² (< 45 m³) \" ', 'Vietnam', '0 BTU', '9000 BTU', '5300 W', 2, 1, 13),
(14, 'Funiki 12000BTU 1-way air conditioner HSC 12TMU', 349.99, '\"- Fast cooling, quiet operation\r\n\r\n- Self-diagnosis function, save power \" ', 'Vietnam', '0 BTU', '12000 BTU', '5700 W', 2, 1, 14),
(15, 'Funiki 18000BTU 1-way air conditioner HSC 18TMU', 599.99, '\"- Fast cooling, quiet operation\r\n\r\n- Self-diagnosis function, save power\"', 'Vietnam', '0 BTU', '18000 BTU', '6600 W', 2, 1, 15),
(16, 'Air conditioner Funiki 24000BTU 1 way HSC 24TMU', 649.99, '\"- Fast cooling, quiet operation\r\n\r\n- Self-diagnosis function, save power\"', 'Vietnam', '0 BTU', '24000 BTU', '6800 W', 2, 1, 16),
(17, 'Funiki 10000BTU 2-way air conditioner HSH 10TMU', 399.9, '\"- Fast cooling, 2-way Cold/Hot mode, quiet operation\r\n\r\n- Self-diagnosis function, save power\"', 'Vietnam', '8000 BTU', '10000 BTU', '5000 W', 2, 1, 17),
(18, 'Funiki 18000BTU 2-way air conditioner HSH 18TMU', 459.99, '\"- Fast cooling, 2-way Cold/Hot mode, quiet operation\r\n\r\n- Self-diagnosis function, save power\"', 'Vietnam', '8000 BTU', '18000 BTU', '3000 W', 2, 1, 18),
(19, 'Funiki 24000BTU 2-way air conditioner HSH 24TMU', 799.99, '\"- Fast cooling, 2-way Cold/Hot mode, quiet operation\r\n\r\n- Self-diagnosis function, save power\"', 'Vietnam', '9000 BTU', '24000 BTU', '9000 W', 2, 1, 19),
(20, 'air-conditioner DAIKIN FTHF25RAVMV', 669.99, '\" Anti-rust shell \r\n \r\n Fast cooling mode\r\n \r\n Inverter technolo \" ', 'Japan', '7000 BTU', '8500BTU', '3000 W', 3, 1, 20),
(21, 'air-conditioner DAIKIN FTXV25QVMV', 849.99, '\" Anti-rust housing\r\n \r\nInverter technology \" ', 'Japan', '9000 BTU', '9000BTU', '5000 W', 3, 1, 21),
(22, 'air-conditioner DAIKIN FTC50NV1V', 949.99, '\" Anti-rust shell \r\n \r\n Fast cooling mode \r\n \r\n Inverter technology \" ', 'Japan', '0 BTU', '17050BTU', '5300 W', 3, 1, 22),
(23, 'air-conditioner DAIKIN ATKC35TAVMV', 799.99, '\" Anti-rust shell \r\n\r\n Fast cooling mode \r\n\r\n Inverter technology \" ', 'Japan', '0 BTU', '12000BTU', '5700 W', 3, 1, 23),
(24, 'air-conditioner DAIKIN FTKY25WAVMV', 599.99, '\" Removes odors, allergens, mold, bacteria \r\n\r\n Streamer Technology \r\n\r\n Inverter Technology, Humidity Sensor \" ', 'Japan', '0 BTU', '9000BTU', '5600 W', 3, 1, 24),
(25, 'air-conditioner DAIKIN FVQN160AXV1V/ RQ160DGXY1', 2599.99, '\" Fast cooling/heating mode \r\n\r\n Vertical-horizontal air-swing feature to cool the entire room \r\n\r\n Prevent rust \" ', 'Japan', '9000 BTU', '55000BTU', '6000 W', 3, 2, 25),
(26, 'air-conditioner DAIKIN FVA140AMVM/RZF140CYM', 2999.99, '\" High cooling efficiency, 4-way air blowing\r\n \r\n Inverter technology\r\n\r\n Fast cooling/heating mode \r\n\r\n Prevent rust\r\n\r\n Purify fresh air \" ', 'Japan', '10000BTU', '50000BTU', '5000 W', 3, 2, 26),
(27, 'air-conditioner DAIKIN FHNQ42MV1/RNQ42MY1', 1499.99, '\" Non-inverter  \r\n\r\n Distributes cool air evenly throughout the room thanks to the auto swing mode,\r\n\r\n Can be installed on a ceiling height of 3.5m,\r\n\r\n Fan speed can be adjusted flexibly to save power consumption,Quiet operation \" ', 'Japan', '0 BTU', '42000BTU', '3000 W', 3, 3, 27),
(28, 'air-conditioner DAIKIN FHA140BVMA/RZF140CYM', 2499.99, '\" Distributes cool air evenly throughout the room\r\n\r\n Can be installed on a ceiling of 3.5m high\r\n\r\n Fan speed can be adjusted flexibly, Quiet operation\r\n\r\n Inverter technology \" ', 'Japan', '0 BTU', '47800BTU', '3000 W', 3, 3, 28),
(29, 'DAIKIN 1-WAY INVERTER 11900 BTU ATKA35UAVMV', 1599.99, 'COANDA series wall mount type,\r\n2-way - 9,000BTU - Gas R32,\r\nInverter technology saves electricity, quiet operation,\r\nComfortable COANDA mask, guaranteed quality.', 'viet nam', '11,600BTU', '11,600BTU', '4700 W', 3, 1, 29),
(30, '\"LG  Inverter 1 way AC 12.000 BTU (1,5HP) V13APIG\"', 600, '\" Enhanced Ion plasmaster gas filter\r\n- ThinQ™\r\n- Filters for allergens\r\n- Dual Inverter™\r\nEnergy saving \" ', 'South Korea', '0 BTU', '12000 BTU', '3000 W', 4, 1, 30),
(31, 'Air conditioner LG DUALCOOL 1 way air conditioner 24,000 BTU (2.5HP) V24ENF1', 999.99, '\"- Dual Inverter™\r\nEnergy saving\r\n- Rapid cooling\r\n- Gold Fin™ \" ', 'South Korea', '0 BTU', '12000 BTU', '5000 W', 4, 1, 31),
(32, 'LG DUALCOOL™ 2-way Inverter Air Conditioner 24000BTU (2.5HP) B24END', 1399.99, '\"- 2-way air conditioner\r\n-Dual Inverter™\r\n-Energy saving\r\n-Rapid cooling \" ', 'South Korea', '8000 BTU', '24000 BTU', '5300 W', 4, 1, 32),
(33, 'LG DUALCOOL™ 2-way Inverter Air Conditioner 9000BTU (1HP) B10END', 599.99, '\"- 2-way air conditioner\r\n-Dual Inverter™\r\n-Energy saving\r\n-Rapid cooling \" ', 'South Korea', '6000 BTU', '9000 BTU', '5700 W', 4, 1, 33),
(34, 'LG DUALCOOL™ Inverter 1-way UV air conditioner 12,000 BTU (1.5HP) V13APFUV', 799.99, '\"-Remove super fine dust PM0.1\r\n- UVnano™ germicidal technology\r\n-Instant cooling\r\n-Energy saving\r\n-ThinQ \" ', 'South Korea', '0 BTU', '12000 BTU ', '5600 W', 4, 1, 34),
(35, 'LG DUALCOOL™ 2-way Inverter Air Conditioner 9000BTU (1HP) B10API', 599.99, '\"-Ion plasmaster enhanced air filter\r\n-ThinQ™\r\n- Filters for allergens\r\n-Dual Inverter™\r\n-Energy saving \" ', 'South Korea', '5000 BTU', '9000 BTU', '6000 W', 4, 1, 35),
(36, 'LG DUALCOOL™ Inverter Air Conditioner One-way Air Purifier 12000BTU (1.5HP) V13APF', 799.99, '\"- Purify the air\r\n-ThinQ™\r\n-Dual Inverter™\r\n-Save energy\r\n-Rapid cooling \" ', 'South Korea', '0 BTU', '12000BTU', '5000 W', 4, 1, 36),
(37, 'LG DUALCOOL™ One-way Inverter Air Conditioner 9000BTU (1HP) V10APH2', 349.99, '\"-Intensified plasmaster ion gas filtration\r\n- Filters for allergens\r\n-Instant cooling\r\n-Energy saving\r\n-Dual Inverter Compressor ™ \" ', 'South Korea', '0 BTU', '9000 BTU', '3000 W', 4, 1, 37),
(38, 'LG DUALCOOL™ 2-way Inverter Air Conditioner 18000BTU (2HP) B18END', 1199.99, '\"- 2-way air conditioner\r\n-Dual Inverter™\r\nEnergy saving\r\n-Rapid cooling \" ', 'South Korea', ' 9000 BTU', '18000 BTU', '3000 W', 4, 1, 38),
(39, 'Digital Inverter Air Conditioner AR5000H 9,000 BTu/h (F-AR09TYHQAS20)', 599.99, '\"-Fast cooling, evenly throughout the room\r\n- Durable, energy-saving operation\r\n-Good Sleep Mode for deep, refreshing sleep \" ', 'South Korea', '0 BTU', '9.000 BTU', '3200 W', 5, 1, 39),
(40, 'Digital Inverter 2-Way Air Conditioner 18,000 BTu/h (F-AR18ASHZAW21)', 1199.99, '\"-Fast, even cooling throughout the room with Fast Cooling\r\n-Digital Inverter Boost saves up to 73%\r\n-Good Sleep Mode for deep, refreshing sleep \" ', 'South Korea', '8600 BTU', '18000 BTU', '6000 W', 5, 1, 40),
(41, 'Digital Inverter 2-way air conditioner 12,000 BTu/h (AR12ASHZAWKNSV)', 699.99, '\"-Fast, even cooling throughout the room with Fast Cooling\r\n-Digital Inverter Boost saves up to 73%\r\n-Good Sleep Mode for deep, refreshing sleep \" ', 'South Korea', '5200 BTU', '12000 BTU', '5300 W', 5, 1, 41),
(42, 'Digital Inverter WindFree™ Air Conditioner 18,000 BTu/h (F-AR18TYGCDW20)', 899.99, '\"-WindFree™ technology cools quickly without cold wind\r\n-TriCare filter filters 99% of viruses, bacteria and ultrafine dust\r\n-Digital Inverter Boost saves power up to 77% \" ', 'South Korea', '0 BTU', '18000 BTU', '6400 W', 5, 1, 42),
(43, 'Digital Inverter Air Conditioner 18,000 BTu/h (F-AR18TYHYCW20)', 749.99, '\"-DuraFin™ Plus technology optimizes heat exchanger operation\r\n-Auto Clean automatically cleans, prevents bacteria and mold\r\n-R32 refrigerant minimizes impact on the ozone layer \" ', 'South Korea', '0 BTU', '18000 BTU', '6400 W', 5, 1, 43),
(44, 'WindFree™ PM 1.0 Air Conditioner 21,500 BTu/h (F-AR24BYAAAW20)', 1549.99, '\"-AI Intelligent Cooling Technology\r\n-Sleep Mode\r\n-Motion Sensor Motion Detect Sensor\r\n-Wind-Free™ Cooling Technology\r\n \" ', 'South Korea', '0 BTU', '215000 BTU', '7400 W', 5, 1, 44),
(45, 'Digital Inverter 2-Way Air Conditioner 24,000 BTu/h (F-AR24ASHZAW21)', 1199.99, '\"-Fast, even cooling throughout the room with Fast Cooling\r\n-Digital Inverter Boost saves up to 73%\r\n-Good Sleep Mode for deep, refreshing sleep \" ', 'South Korea', '9700 BTU', '24000 BTU', '7000 W', 5, 1, 45),
(46, 'WindFree™ Air Conditioner PM1.0 9,000 BTu/h (F-AR10TYAACW20)', 799.99, '\"-WindFree™ technology cools quickly without cold wind\r\n-PM1.0 filter filters 99% of viruses, bacteria and ultrafine dust\r\n-AI artificial intelligence automatically optimizes the cooling mode \" ', 'South Korea', '0 BTU', '9000 BTU', '3000 W', 5, 1, 46);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type`
--

CREATE TABLE `type` (
  `id_type` int(11) NOT NULL,
  `type` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `type`
--

INSERT INTO `type` (`id_type`, `type`) VALUES
(1, 'ceiling sound'),
(2, 'cabinet'),
(3, 'wall hanging');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_admin` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `pass` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_admin`, `name`, `pass`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `vw_show_product`
-- (See below for the actual view)
--
CREATE TABLE `vw_show_product` (
`id_sp` int(11)
,`img_1` varchar(200)
,`img_2` varchar(200)
,`img_3` varchar(200)
,`img_4` varchar(200)
,`name_products` varchar(150)
,`price` float
,`type` varchar(15)
,`brand` varchar(10)
,`intro` varchar(500)
,`heating_capacity` varchar(10)
,`cooling_capacity` varchar(10)
,`Power_Input` varchar(10)
,`made_in` varchar(25)
,`id_brand` int(11)
,`id_type` int(10)
);

-- --------------------------------------------------------

--
-- Cấu trúc cho view `vw_show_product`
--
DROP TABLE IF EXISTS `vw_show_product`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_show_product`  AS SELECT `products`.`id_sp` AS `id_sp`, `img`.`img_1` AS `img_1`, `img`.`img_2` AS `img_2`, `img`.`img_3` AS `img_3`, `img`.`img_4` AS `img_4`, `products`.`name_products` AS `name_products`, `products`.`price` AS `price`, `type`.`type` AS `type`, `brand`.`brand` AS `brand`, `products`.`intro` AS `intro`, `products`.`heating_capacity` AS `heating_capacity`, `products`.`cooling_capacity` AS `cooling_capacity`, `products`.`Power_Input` AS `Power_Input`, `products`.`made_in` AS `made_in`, `products`.`id_brand` AS `id_brand`, `products`.`id_type` AS `id_type` FROM (((`img` join `products`) join `type`) join `brand`) WHERE `img`.`id_img` = `products`.`id_img` AND `brand`.`id_brand` = `products`.`id_brand` AND `type`.`id_type` = `products`.`id_type`;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id_img`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_sp`),
  ADD KEY `id_brand` (`id_brand`),
  ADD KEY `id_img` (`id_img`),
  ADD KEY `id_type` (`id_type`);

--
-- Chỉ mục cho bảng `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_admin`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `img`
--
ALTER TABLE `img`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `type`
--
ALTER TABLE `type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_brand`) REFERENCES `brand` (`id_brand`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`id_img`) REFERENCES `img` (`id_img`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`id_type`) REFERENCES `type` (`id_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

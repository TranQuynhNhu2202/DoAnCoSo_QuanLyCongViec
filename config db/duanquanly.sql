-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 24, 2024 at 03:01 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duanquanly`
--

-- --------------------------------------------------------

--
-- Table structure for table `congviec`
--

CREATE TABLE `congviec` (
  `IDCongViec` int NOT NULL,
  `IDNhanVien` char(10) NOT NULL,
  `HanNop` date NOT NULL,
  `NgayBatDau` date DEFAULT NULL,
  `BaoCaoCongViec` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `LinkNopSanPham` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Trangthaithuchien` int NOT NULL DEFAULT '0',
  `Tencongviec` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `congviec`
--

INSERT INTO `congviec` (`IDCongViec`, `IDNhanVien`, `HanNop`, `NgayBatDau`, `BaoCaoCongViec`, `LinkNopSanPham`, `Trangthaithuchien`, `Tencongviec`) VALUES
(1, '1387438', '2024-05-31', NULL, NULL, NULL, 2, 'Thiết kế cơ sở dữ liệu'),
(2, '1387438', '2024-05-31', NULL, 'Xin chào fjhfjrhnf', '1233333', 1, 'Cập nhật cơ sở dữ liệu'),
(3, '1387438', '2024-06-04', NULL, NULL, NULL, 2, 'Thiết kế giao diện'),
(4, '1387438', '2024-06-13', '2024-03-11', NULL, NULL, 1, 'Thiết kế giao diện đăng nhập website'),
(5, '1387438', '2024-06-19', NULL, NULL, NULL, 1, 'Thiết kế giao diện đăng ký'),
(6, '1387438', '2024-05-31', '2024-03-11', NULL, NULL, 3, 'Thiết kế navigation'),
(8, '1387438', '2024-07-11', '2024-04-11', '', '', 1, 'Thiết kế API new'),
(10, 'null', '2024-06-04', '2024-06-11', NULL, NULL, 0, 'Thiết kế giao diện'),
(11, '1387438', '2024-07-15', '2024-06-11', NULL, NULL, 0, 'Chỉnh sửa giao diện'),
(12, '1387438', '2024-11-06', '2024-06-11', NULL, NULL, 0, 'Cơ sở dữ liệu'),
(13, '1839399', '2024-05-31', '2024-06-13', 'xbgd', 'hsgdd', 1, 'Thiết kế navigation');

-- --------------------------------------------------------

--
-- Table structure for table `idmessuser`
--

CREATE TABLE `idmessuser` (
  `User1` char(255) NOT NULL,
  `User2` char(255) NOT NULL,
  `IdMessUser` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `idmessuser`
--

INSERT INTO `idmessuser` (`User1`, `User2`, `IdMessUser`) VALUES
('group', 'group', 'groupAdmin');

-- --------------------------------------------------------

--
-- Table structure for table `messenger`
--

CREATE TABLE `messenger` (
  `IdMess` int NOT NULL,
  `IdMessUser` char(50) NOT NULL,
  `Messenger` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `IDNhanVien` int NOT NULL,
  `HoVaTen` char(30) NOT NULL,
  `ChucVu` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Nhân viên',
  `DiaChi` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `GioiTinh` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SoDienThoai` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Gmail` char(20) NOT NULL,
  `NgayBatDauLamViec` date NOT NULL,
  `Trangthai` int NOT NULL DEFAULT '1' COMMENT '0= đã nghỉ việc; 1= đang làm việc; 2 : chưa được phân công ',
  `Avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'https://png.pngtree.com/png-vector/20190710/ourlarge/pngtree-user-vector-avatar-png-image_1541962.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`IDNhanVien`, `HoVaTen`, `ChucVu`, `DiaChi`, `NgaySinh`, `GioiTinh`, `SoDienThoai`, `Gmail`, `NgayBatDauLamViec`, `Trangthai`, `Avatar`) VALUES
(124893, 'Phạm Minh D', 'Nhân viên', 'Đà Nẵng', '2014-03-04', 'Nam', '09203993', 'ngoc123@gmail.com', '2024-05-09', 0, NULL),
(462783, 'Trần Thị B', 'Nhân viên', 'Đà Nẵng', '2014-05-13', 'Nữ', '0123422133', 'B345@gmail.com', '2024-05-06', 0, NULL),
(1387438, 'Trần Thị Quỳnh Như', 'Nhân viên', 'Đà Nẵng', '2005-02-22', 'Nữ', '0999000666', 'nhutran22@gmail.com', '2024-05-09', 1, 'https://khoinguonsangtao.vn/wp-content/uploads/2022/07/avatar-anime-nu-dep.jpg'),
(1839392, 'Đặng Tuấn F', 'Quản lý', 'Đà Nẵng', '2024-02-22', 'Nam', '0357497917', 'tùa@gmail.com', '2024-05-22', 1, NULL),
(1839394, 'Trần Văn H', 'Nhân viên', 'Quảng Ngãi', '2005-07-14', 'Nam', '0388666777', 'tranvan@gmail.com', '2024-06-11', 1, 'https://png.pngtree.com/png-vector/20190710/ourlarge/pngtree-user-vector-avatar-png-image_1541962.jpg'),
(1839395, 'Test', 'Nhân viên', NULL, NULL, NULL, NULL, 'test@gmail.com', '2024-06-11', 2, 'https://png.pngtree.com/png-vector/20190710/ourlarge/pngtree-user-vector-avatar-png-image_1541962.jpg'),
(1839396, '/test1', 'Nhân viên', NULL, NULL, NULL, NULL, 'test1@gmail.com', '2024-06-11', 0, 'https://png.pngtree.com/png-vector/20190710/ourlarge/pngtree-user-vector-avatar-png-image_1541962.jpg'),
(1839397, 'nhutran', 'Nhân viên', NULL, NULL, NULL, NULL, 'nhu123@gmail.com', '2024-06-13', 1, 'https://png.pngtree.com/png-vector/20190710/ourlarge/pngtree-user-vector-avatar-png-image_1541962.jpg'),
(1839398, 'quynhnhu', 'Nhân viên', NULL, NULL, NULL, NULL, 'nhutran23@gmail.com', '2024-06-13', 1, 'https://png.pngtree.com/png-vector/20190710/ourlarge/pngtree-user-vector-avatar-png-image_1541962.jpg'),
(1839399, 'SonBa', 'Nhân viên', '15 le loi', '2008-05-12', 'Nam', '013876', 'sonba@gmail.com', '2024-06-13', 1, 'https://png.pngtree.com/png-vector/20190710/ourlarge/pngtree-user-vector-avatar-png-image_1541962.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `Ten` text NOT NULL,
  `password` text NOT NULL,
  `Email` char(255) NOT NULL,
  `Level` int NOT NULL DEFAULT '1' COMMENT '0 = người quản lý; 1 = nhân viên'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`Ten`, `password`, `Email`, `Level`) VALUES
('admin', 'admin', 'admin@gmail.com', 0),
('Phan Thị Thuý Ngọc', 'admin', 'ngoc@gmail.com', 1),
('ngoc', 'ngoc', 'ngoc123@gmail.com', 1),
('Nguyễn Văn A', 'admin', 'nguyenvan@gmail.com', 1),
('nhutran ', 'admin', 'nhu123@gmail.com', 1),
('Như', 'admin', 'nhutran22@gmail.com', 1),
('quynhnhu', 'admin', 'nhutran23@gmail.com', 1),
('SonBa', '123456', 'sonba@gmail.com', 1),
('Test', 'admin', 'test@gmail.com', 1),
('/test1', 'admin', 'test1@gmail.com', 1),
('Trần Văn H', 'admin', 'tranvan@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tienthuong`
--

CREATE TABLE `tienthuong` (
  `Thang` char(2) NOT NULL,
  `Nam` char(4) NOT NULL,
  `IDNhanVien` int NOT NULL,
  `TienThuong` int NOT NULL DEFAULT '0',
  `IDTienThuong` char(10) NOT NULL,
  `IDCongViec` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tienthuong`
--

INSERT INTO `tienthuong` (`Thang`, `Nam`, `IDNhanVien`, `TienThuong`, `IDTienThuong`, `IDCongViec`) VALUES
('21', '2222', 1839392, 0, '1222', '1222');

-- --------------------------------------------------------

--
-- Table structure for table `vandephatsinh`
--

CREATE TABLE `vandephatsinh` (
  `IDDuAn` int NOT NULL,
  `BaoCao` text NOT NULL,
  `NgayBaoCao` date NOT NULL,
  `IDNhanVien` int NOT NULL,
  `PhanHoi` text NOT NULL,
  `TrangThaiXuLi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `congviec`
--
ALTER TABLE `congviec`
  ADD PRIMARY KEY (`IDCongViec`);

--
-- Indexes for table `idmessuser`
--
ALTER TABLE `idmessuser`
  ADD PRIMARY KEY (`User1`,`User2`,`IdMessUser`),
  ADD KEY `IdMessUser` (`IdMessUser`);

--
-- Indexes for table `messenger`
--
ALTER TABLE `messenger`
  ADD PRIMARY KEY (`IdMess`),
  ADD KEY `FK_idmessuser_messenger` (`IdMessUser`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`IDNhanVien`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `tienthuong`
--
ALTER TABLE `tienthuong`
  ADD PRIMARY KEY (`IDTienThuong`),
  ADD KEY `FK_nhanvien_tienthuong` (`IDNhanVien`);

--
-- Indexes for table `vandephatsinh`
--
ALTER TABLE `vandephatsinh`
  ADD PRIMARY KEY (`IDDuAn`),
  ADD KEY `fk_nhanvien_VanDePhatSinh` (`IDNhanVien`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `congviec`
--
ALTER TABLE `congviec`
  MODIFY `IDCongViec` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `messenger`
--
ALTER TABLE `messenger`
  MODIFY `IdMess` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `IDNhanVien` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1839400;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messenger`
--
ALTER TABLE `messenger`
  ADD CONSTRAINT `FK_idmessuser_messenger` FOREIGN KEY (`IdMessUser`) REFERENCES `idmessuser` (`IdMessUser`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

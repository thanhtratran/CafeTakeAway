-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8111
-- Generation Time: Jun 16, 2022 at 06:35 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafeslide`
--

-- --------------------------------------------------------

--
-- Table structure for table `ct_hoadon`
--

CREATE TABLE `ct_hoadon` (
  `MaHoaDon` varchar(30) NOT NULL,
  `MaSP` int(30) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ct_hoadon`
--

INSERT INTO `ct_hoadon` (`MaHoaDon`, `MaSP`, `SoLuong`) VALUES
('1', 11, 1),
('1', 12, 1),
('2', 9, 1),
('2', 13, 1),
('3', 4, 4),
('3', 5, 1),
('3', 13, 1),
('4', 2, 1),
('4', 3, 1),
('5', 7, 1),
('5', 11, 1),
('6', 3, 1),
('6', 9, 1),
('6', 12, 1),
('7', 3, 1),
('7', 10, 1),
('8', 3, 1),
('9', 8, 1),
('9', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ct_phieunhap`
--

CREATE TABLE `ct_phieunhap` (
  `MaPN` varchar(30) NOT NULL,
  `MaNL` varchar(30) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ct_phieunhap`
--

INSERT INTO `ct_phieunhap` (`MaPN`, `MaNL`, `SoLuong`, `DonGia`) VALUES
('1', '3', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ct_phieuxuat`
--

CREATE TABLE `ct_phieuxuat` (
  `MaPhieuXuat` varchar(30) NOT NULL,
  `MaNguyenLieu` varchar(30) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonVi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ct_phieuxuat`
--

INSERT INTO `ct_phieuxuat` (`MaPhieuXuat`, `MaNguyenLieu`, `SoLuong`, `DonVi`) VALUES
('1', '2', 100, '100'),
('1', '1', 100, '100');

-- --------------------------------------------------------

--
-- Table structure for table `ct_sanpham`
--

CREATE TABLE `ct_sanpham` (
  `MaSanPham` int(30) NOT NULL,
  `MaNguyenLieu` varchar(30) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonVi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ct_sanpham`
--

INSERT INTO `ct_sanpham` (`MaSanPham`, `MaNguyenLieu`, `SoLuong`, `DonVi`) VALUES
(1, '3', 30, 'ml'),
(1, '2', 50, 'gam');

-- --------------------------------------------------------

--
-- Table structure for table `diadiem`
--

CREATE TABLE `diadiem` (
  `MaDiaDiem` varchar(30) NOT NULL,
  `MaNV` varchar(30) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `NgayThanhToan` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diadiem`
--

INSERT INTO `diadiem` (`MaDiaDiem`, `MaNV`, `DiaChi`, `NgayThanhToan`) VALUES
('Q7_HCM', 'QL02', '453 Nguy???n B??nh, Qu???n 7', '2022-06-14'),
('Q8_HCM', 'QL01', '123 Nguy???n Ph????ng, Qu???n 8', '2022-06-14'),
('Q9_HCM', 'ADMIN01', '123 Man Thi???n, L?? V??n Vi???t, Qu???n 9', '2022-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHoaDon` varchar(30) NOT NULL,
  `MaNV` varchar(30) NOT NULL,
  `NgayLap` date NOT NULL,
  `TongTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHoaDon`, `MaNV`, `NgayLap`, `TongTien`) VALUES
('1', 'ADMIN01', '2022-05-31', 109500),
('2', 'ADMIN01', '2022-05-31', 104000),
('3', 'ADMIN01', '2022-05-31', 252000),
('4', 'ADMIN01', '2022-06-02', 53750),
('5', 'QL01', '2022-06-02', 102000),
('6', 'ADMIN01', '2022-06-03', 135250),
('7', 'QL02', '2022-06-14', 78750),
('8', 'QL02', '2022-06-14', 23750),
('9', 'ADMIN01', '2022-06-14', 102440);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoai` varchar(255) NOT NULL,
  `TenLoai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoai`, `TenLoai`) VALUES
('1', 'C?? Ph??'),
('2', 'Tr??'),
('3', 'Tr?? s???a');

-- --------------------------------------------------------

--
-- Table structure for table `nguyenlieu`
--

CREATE TABLE `nguyenlieu` (
  `MaNguyenLieu` varchar(30) NOT NULL,
  `TenNguyenLieu` varchar(255) NOT NULL,
  `DonVi` varchar(30) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nguyenlieu`
--

INSERT INTO `nguyenlieu` (`MaNguyenLieu`, `TenNguyenLieu`, `DonVi`, `SoLuong`) VALUES
('1', '???????ng', 'gam', 100000),
('2', 'Cafe', 'gam', 100000),
('3', 'S???a', 'ml', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNCC` varchar(255) NOT NULL,
  `TenNCC` text NOT NULL,
  `Email` text NOT NULL,
  `Sdt` text NOT NULL,
  `DiaChi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNCC`, `TenNCC`, `Email`, `Sdt`, `DiaChi`) VALUES
('CT_LongChau', 'CTY TNHH Long Ch??u', 'longchau@gmail.com', '3245432432', '453 Nguy???n B??nh, Qu???n 7');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNhanVien` varchar(30) NOT NULL,
  `Ho` varchar(30) NOT NULL,
  `Ten` varchar(30) NOT NULL,
  `NgaySinh` date NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `GioiTinh` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Sdt` varchar(30) NOT NULL,
  `CMND` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `Ho`, `Ten`, `NgaySinh`, `DiaChi`, `GioiTinh`, `Email`, `Sdt`, `CMND`) VALUES
('ADMIN01', 'Tr???n V??n', 'H??ng', '2000-05-11', '125 Tr???n Ph?? , C???n Th??', 'Nam', 'hung@gmail.com', '0123456789', '987654321'),
('QL01', 'Nguy???n Th???', 'Hi???n', '2000-05-07', '125 Tr???n Ph?? , C???n Th?? N???', 'N???', 'thach@gmail.com', '0123456789', '987654321'),
('QL02', 'Tr???nh Th??ng', 'Long', '1999-06-12', '125 Tr???n Ph?? , C???n Th?? N???', 'Nam', 'thach@gmail.com', '0123456789', '1234567865'),
('QL03', 'Tr???n V??n', 'S??', '1997-03-05', '125 Tr???n Ph?? , C???n Th?? N???', 'Nam', 'thach@gmail.com', '0123456789', '123457'),
('QL04', 'L????ng V??n', 'T???n', '1998-07-24', '125 Tr???n Ph?? , C???n Th?? N???', 'Nam', 'thach@gmail.com', '0123456789', '1223455');

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPhieuNhap` varchar(30) NOT NULL,
  `MaNV` varchar(30) NOT NULL,
  `MaNCC` varchar(30) NOT NULL,
  `NgayNhap` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`MaPhieuNhap`, `MaNV`, `MaNCC`, `NgayNhap`) VALUES
('1', 'ADMIN01', 'CT_LongChau', '2022-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `MaPhieuXuat` varchar(30) NOT NULL,
  `MaNV` varchar(30) NOT NULL,
  `NgayXuat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phieuxuat`
--

INSERT INTO `phieuxuat` (`MaPhieuXuat`, `MaNV`, `NgayXuat`) VALUES
('1', 'ADMIN01', '2022-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(30) NOT NULL,
  `TenSP` varchar(255) NOT NULL,
  `DonGia` float NOT NULL,
  `DonGiaSauKM` float DEFAULT NULL,
  `TinhTrang` varchar(255) NOT NULL,
  `MieuTa` varchar(255) NOT NULL,
  `Anh` varchar(255) NOT NULL,
  `KhuyenMai` tinyint(1) DEFAULT NULL,
  `MoiNhat` tinyint(1) DEFAULT NULL,
  `MaLoai` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `DonGia`, `DonGiaSauKM`, `TinhTrang`, `MieuTa`, `Anh`, `KhuyenMai`, `MoiNhat`, `MaLoai`) VALUES
(1, 'C?? Ph?? S???a ????', 35000, 29750, 'C?? s???n', 'C?? ph?? ???????c pha phin truy???n th???ng k???t h???p v???i s???a ?????c t???o n??n h????ng v??? ?????m ????, h??i h??a gi???a v??? ng???t ?????u l?????i v?? v??? ?????ng thanh tho??t n??i h???u v???.\r\n\r\n', 'ca-phe-sua-da.jpg', 1, 0, '1'),
(2, 'B???c X???u ????', 30000, NULL, 'C?? s???n', 'B???c s???u ch??nh l?? \"Ly s???a tr???ng k??m m???t ch??t c?? ph??\". Th???c u???ng n??y r???t ph?? h???p nh???ng ai v???a mu???n tr???i nghi???m ch??t v??? ?????ng c???a c?? ph?? v???a mu???n th?????ng th???c v??? ng???t b??o ng???y t??? s???a.', 'bac-xiu-da.jpg', 0, 0, '1'),
(3, 'C?? Ph?? ??en ????\r\n', 25000, 23750, 'C?? s???n', 'Kh??ng ng???t ng??o nh?? B???c s???u hay C?? ph?? s???a, C?? ph?? ??en mang trong m??nh phong v??? tr???m l???ng, thi v??? h??n. Ng?????i ta th?????ng ph???i ng???i r???t l??u m???i c???m nh???n ???????c h???t h????ng th??m ng??o ng???t, ph???ng ph???t m??i cacao v?? c??i ?????ng m?????t m?? tr??i tu???t xu???ng v??m h???ng.\r\n\r\n', 'ca-phe-den-da.jpg', 1, 0, '1'),
(4, 'Latte N??ng', 40000, NULL, 'C?? s???n', 'M???t s??? k???t h???p tinh t??? gi???a v??? ?????ng c?? ph?? Espresso nguy??n ch???t h??a quy???n c??ng v??? s???a n??ng ng???t ng??o, b??n tr??n l?? m???t l???p kem m???ng nh??? t???o n??n m???t t??ch c?? ph?? ho??n h???o v??? h????ng v??? l???n nh??n quan.', 'latte-nong.jpg', 0, 0, '1'),
(5, 'Americano N??ng', 40000, NULL, 'C?? s???n', 'Americano ???????c pha ch??? b???ng c??ch pha th??m n?????c v???i t??? l??? nh???t ?????nh v??o t??ch c?? ph?? Espresso, t??? ???? mang l???i h????ng v??? nh??? nh??ng v?? gi??? tr???n ???????c m??i h????ng c?? ph?? ?????c tr??ng.', 'americano-nong.jpg', 0, 0, '1'),
(6, 'Tr?? ????o Cam S??? ????', 45000, NULL, 'C?? s???n', 'V??? thanh ng???t c???a ????o Hy L???p, v??? chua d???u c???a Cam V??ng nguy??n v???, v??? ch??t c???a tr?? ??en t????i ???????c ??? m???i m???i 4 ti???ng, c??ng h????ng th??m n???ng ?????c tr??ng c???a s??? ch??nh l?? ??i???m s??ng l??m n??n s???c h???p d???n c???a th???c u???ng n??y.', 'tra-dao-cam-xa-da.jpg', 0, 0, '2'),
(7, 'Tr?? ????o Cam S??? N??ng', 52000, NULL, 'C?? s???n', 'V??? thanh ng???t c???a ????o Hy L???p, v??? chua d???u c???a Cam V??ng nguy??n v???, v??? ch??t c???a tr?? ??en t????i ???????c ??? m???i m???i 4 ti???ng, c??ng h????ng th??m n???ng ?????c tr??ng c???a s??? ch??nh l?? ??i???m s??ng l??m n??n s???c h???p d???n c???a th???c u???ng n??y.', 'tdcs-nong.jpg', 0, 0, '2'),
(8, 'Tr?? H???t Sen N??ng', 52000, 50440, 'C?? s???n', 'N???n tr?? oolong h???o h???ng k???t h???p c??ng h???t sen t????i, b??i b??i v?? l???p foam cheese b??o ng???y. Tr?? h???t sen l?? th???c u???ng thanh m??t, nh??? nh??ng ph?? h???p cho c??? bu???i s??ng v?? chi???u t???i.', 'tra-sen-nong.jpg', 1, 0, '2'),
(9, 'Tr?? ??en Macchiato\r\n', 65000, 52000, 'C?? s???n', 'Tr?? ??en ???????c ??? m???i m???i ng??y, gi??? nguy??n ???????c v??? ch??t m???nh m??? ?????c tr??ng c???a l?? tr??, ph??? b??n tr??n l?? l???p Macchiato \"homemade\" b???ng b???nh quy???n r?? v??? ph?? mai m???n m???n m?? b??o b??o.', 'tra-den-matchiato.jpg', 1, 1, '2'),
(10, 'Tr?? S???a M???c Ca Tr??n Ch??u Tr???ng', 55000, NULL, 'C?? s???n', 'M???i ng??y v???i The Coffee House s??? l?? ??i???u t????i m???i h??n v???i s???a h???t m???c ca th??m ngon, b??? d?????ng quy???n c??ng n???n tr?? oolong cho v??? c??n b???ng, ng???t d???u ??i k??m c??ng Tr??n ch??u tr???ng gi??n dai mang l???i c???m gi??c ?????????? trong t???ng ng???m tr?? s???a.', 'tra-sua-mac-ca.jpg', 0, 1, '3'),
(11, 'H???ng Tr?? S???a Tr??n Ch??u', 50000, NULL, 'C?? s???n', 'Th??m ch??t ng???t ng??o cho ng??y m???i v???i h???ng tr?? nguy??n l??, s???a th??m ng???y ???????c c??n ch???nh v???i t??? l??? ho??n h???o, c??ng tr??n ch??u tr???ng dai gi??n c?? s???n ????? b???n t???n h?????ng t???ng ng???m tr?? s???a ng???t ng??o th??m ng???y thi???t ????.', 'hong-tra-sua-tran-chau.jpg', 0, 1, '3'),
(12, 'Tr?? S???a Oolong N?????ng N??ng', 70000, 59500, 'C?? s???n', '?????m ???? chu???n gu v?? ???m n??ng - b???i l???p tr?? oolong n?????ng ?????m v??? ho?? c??ng l???p s???a th??m b??o. H????ng v??? ch??n ??i ????ng gu ?????m ???? - tr?? oolong ???????c \"sao\" (n?????ng) l??u h??n cho v??? ?????m ????, ho?? quy???n v???i s???a th??m ng???y. Cho t???ng ng???m ???m ??p, l??u luy???n v??? tr?? s???a ?????m ???? m??', 'oolong-nuong-nong.jpg', 1, 1, '3'),
(13, 'H???ng Tr?? Latte', 52000, NULL, '', 'M???i ng??y v???i The Coffee House s??? l?? ??i???u t????i m???i h??n v???i s???a h???t m???c ca th??m ngon, b??? d?????ng quy???n c??ng n???n tr?? oolong cho v??? c??n b???ng, ng???t d???u ??i k??m c??ng Tr??n ch??u tr???ng gi??n dai mang l???i c???m gi??c ?????????? trong t???ng ng???m tr?? s???a.', 'hong-tra-latte.jpg', 0, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `manv` varchar(30) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `chucvu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`manv`, `username`, `password`, `chucvu`) VALUES
('ADMIN01', 'admin', 'admin', 'ADMIN'),
('QL01', 'quanly01', '123', 'Qu???n L??'),
('QL02', 'quanly02', '123', 'Qu???n L??'),
('QL03', 'a', 'a', 'Qu???n L??'),
('QL04', 'b', 'b', 'Qu???n L??');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ct_hoadon`
--
ALTER TABLE `ct_hoadon`
  ADD KEY `MaHoaDon` (`MaHoaDon`,`MaSP`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Indexes for table `ct_phieunhap`
--
ALTER TABLE `ct_phieunhap`
  ADD KEY `MaNL` (`MaNL`),
  ADD KEY `MaPN` (`MaPN`);

--
-- Indexes for table `ct_phieuxuat`
--
ALTER TABLE `ct_phieuxuat`
  ADD KEY `MaPhieuXuat` (`MaPhieuXuat`,`MaNguyenLieu`),
  ADD KEY `MaNguyenLieu` (`MaNguyenLieu`);

--
-- Indexes for table `ct_sanpham`
--
ALTER TABLE `ct_sanpham`
  ADD KEY `MaSanPham` (`MaSanPham`,`MaNguyenLieu`),
  ADD KEY `MaNguyenLieu` (`MaNguyenLieu`);

--
-- Indexes for table `diadiem`
--
ALTER TABLE `diadiem`
  ADD PRIMARY KEY (`MaDiaDiem`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHoaDon`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Indexes for table `nguyenlieu`
--
ALTER TABLE `nguyenlieu`
  ADD PRIMARY KEY (`MaNguyenLieu`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPhieuNhap`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MaNCC` (`MaNCC`);

--
-- Indexes for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`MaPhieuXuat`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD UNIQUE KEY `MaSP` (`MaSP`),
  ADD KEY `MaLoai` (`MaLoai`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`manv`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `manv` (`manv`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ct_hoadon`
--
ALTER TABLE `ct_hoadon`
  ADD CONSTRAINT `ct_hoadon_ibfk_1` FOREIGN KEY (`MaHoaDon`) REFERENCES `hoadon` (`MaHoaDon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ct_hoadon_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ct_phieunhap`
--
ALTER TABLE `ct_phieunhap`
  ADD CONSTRAINT `ct_phieunhap_ibfk_2` FOREIGN KEY (`MaNL`) REFERENCES `nguyenlieu` (`MaNguyenLieu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ct_phieunhap_ibfk_3` FOREIGN KEY (`MaPN`) REFERENCES `phieunhap` (`MaPhieuNhap`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ct_phieuxuat`
--
ALTER TABLE `ct_phieuxuat`
  ADD CONSTRAINT `ct_phieuxuat_ibfk_2` FOREIGN KEY (`MaNguyenLieu`) REFERENCES `nguyenlieu` (`MaNguyenLieu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ct_phieuxuat_ibfk_3` FOREIGN KEY (`MaPhieuXuat`) REFERENCES `phieuxuat` (`MaPhieuXuat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ct_sanpham`
--
ALTER TABLE `ct_sanpham`
  ADD CONSTRAINT `ct_sanpham_ibfk_1` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ct_sanpham_ibfk_2` FOREIGN KEY (`MaNguyenLieu`) REFERENCES `nguyenlieu` (`MaNguyenLieu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `diadiem`
--
ALTER TABLE `diadiem`
  ADD CONSTRAINT `diadiem_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNhanVien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNhanVien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNhanVien`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `phieuxuat_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNhanVien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loaisanpham` (`MaLoai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`MaNhanVien`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

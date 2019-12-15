-- phpMyAdmin SQL Dump
-- version 3.1.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 23, 2013 at 07:51 PM
-- Server version: 5.1.35
-- PHP Version: 5.2.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_sepatu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `idadmin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  PRIMARY KEY (`idadmin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `namalengkap`) VALUES
(1, 'admin', 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `idanggota` int(11) NOT NULL AUTO_INCREMENT,
  `emailanggota` varchar(50) NOT NULL,
  `passwordanggota` varchar(20) NOT NULL,
  `namaanggota` varchar(50) NOT NULL,
  `jkanggota` char(1) NOT NULL,
  `tgllahiranggota` date NOT NULL DEFAULT '0000-00-00',
  `alamatanggota` text NOT NULL,
  `nohpanggota` varchar(15) NOT NULL,
  `tgldaftar` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idanggota`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`idanggota`, `emailanggota`, `passwordanggota`, `namaanggota`, `jkanggota`, `tgllahiranggota`, `alamatanggota`, `nohpanggota`, `tgldaftar`) VALUES
(1, 'memberif@gmail.com', 'memberif', 'Mahasiswa IF', 'L', '1993-10-15', 'Jl. Raya Lubuk Begalung Sumater Barat', '081234567890', '2016-12-29 18:37:16'),
(4, 'nofitarizki97@gmail.com', 'nofita', 'Nofita Rizki Marulafau', 'p', '1997-03-01', 'Lubukbuaya', '085374336145', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `idbrand` int(11) NOT NULL AUTO_INCREMENT,
  `idkat` int(11) NOT NULL,
  `idadmin` int(11) NOT NULL,
  `namabrand` varchar(30) NOT NULL,
  `logobrand` text NOT NULL,
  PRIMARY KEY (`idbrand`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`idbrand`, `idkat`, `idadmin`, `namabrand`, `logobrand`) VALUES
(19, 5, 1, 'Reebok', 'reebok_logo_bw.jpg'),
(23, 4, 1, 'Fila', 'bitebrands - logo sepatu ori 10.jpg'),
(35, 5, 1, 'Asics Tiger', 'AsicsTiger.jpg'),
(36, 4, 1, 'Asics Tiger', 'AsicsTiger.jpg'),
(38, 5, 1, 'Teva', 'Brand-55.jpg'),
(39, 5, 1, 'Homyped', 'homyped-logo.jpg'),
(40, 5, 1, 'Quicksilver', 'quiksilver-logo-C49A5E0504-seeklogo.com.png'),
(41, 5, 1, 'Diadora', 'LOGO DIADORA VECTOR GRANDE.jpg'),
(43, 5, 1, 'Cavallero', 'vxkikjr0.jpg'),
(44, 5, 1, 'Jaxon', 'jaxon.png'),
(45, 5, 1, 'Marelli', 'MARELLI.jpg'),
(46, 5, 1, 'Jim Joker', 'logo-jimjoker.jpg'),
(47, 5, 1, 'Pakalolo Boots', 'pakalolo2.jpg'),
(48, 4, 1, 'Yongki Kamaladi', 'showroom.jpg'),
(49, 4, 1, 'Triset', 'triset.jpg'),
(50, 4, 1, 'Aldo', 'aldo.jpg'),
(52, 5, 1, 'Something Borrowed', 'Something-Borrowed.jpg'),
(53, 4, 1, 'Something Borrowed', 'Something-Borrowed.jpg'),
(54, 4, 1, 'Skechers', 'skechers-logo.jpg'),
(55, 5, 1, 'Vans', 'vans-logo-gratis-opere-d-arte-vettore-grafico-risorse.jpg'),
(56, 4, 1, 'Vans', 'vans-logo-gratis-opere-d-arte-vettore-grafico-risorse.jpg'),
(57, 5, 1, 'Adidas', 'adidas.jpg'),
(58, 4, 1, 'Adidas', 'adidas.jpg'),
(60, 5, 1, 'Kickers', 'KicKers_logo.png'),
(61, 4, 1, 'Kickers', 'KicKers_logo.png'),
(62, 5, 1, 'New Balance', 'New-Balance-Logo.jpg'),
(63, 4, 1, 'New Balance', 'New-Balance-Logo.jpg'),
(64, 5, 1, 'Puma', 'Logo Puma 1.gif'),
(65, 4, 1, 'Puma', 'Logo Puma 1.gif'),
(66, 5, 1, 'Nike', 'nike.png'),
(67, 4, 1, 'Nike', 'nike.png'),
(68, 5, 1, 'Fila', 'fila-logo.jpg'),
(69, 4, 1, 'Sakroots', 'logo.png'),
(71, 4, 1, 'Teva', 'download.png'),
(72, 4, 1, 'Call It Spring', 'Call it Spring Logo[1].jpg'),
(73, 4, 1, 'Melissa', 'meilssa-augus.jpg'),
(74, 4, 1, 'Velvet', 'velvet-sept21.jpg'),
(75, 4, 1, 'Rubi', '996x250_rubi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `idcart` int(11) NOT NULL AUTO_INCREMENT,
  `idproduk` int(11) NOT NULL,
  `idanggota` int(11) NOT NULL,
  `idpenjual` int(11) NOT NULL,
  `jumlahbeli` int(11) NOT NULL,
  `tglcart` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idcart`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cart`
--


-- --------------------------------------------------------

--
-- Table structure for table `jasakirim`
--

CREATE TABLE IF NOT EXISTS `jasakirim` (
  `idjasa` int(11) NOT NULL AUTO_INCREMENT,
  `idadmin` int(11) NOT NULL,
  `namajasa` varchar(30) NOT NULL,
  `logojasa` text NOT NULL,
  `detailjasa` text NOT NULL,
  `tarif` double NOT NULL,
  PRIMARY KEY (`idjasa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jasakirim`
--

INSERT INTO `jasakirim` (`idjasa`, `idadmin`, `namajasa`, `logojasa`, `detailjasa`, `tarif`) VALUES
(1, 1, 'JNE', 'jne.jpg', 'Perusahaan yang berdiri sejak 1990 ini menawarkan 4 jenis layanan pengiriman barang, antara lain OKE (Ongkos Kirim Ekonomis), REG (Reguler), YES (Yakin Esok Sampai), dan SS (Super Speed)', 13000),
(2, 1, 'POS INDONESIA', 'pos.jpg', 'Kini untuk jasa pengiriman barang, PT Pos Indonesia menawarkan beberapa jenis layanan, diantaranya adalah Surat Kilat Khusus dan Express Next Day', 11000),
(3, 1, 'TIKI', 'tiki.jpg', 'Perusahaan jasa pengiriman barang ini menawarkan 5 jenis layanan pengiriman barang, antara lain ECO (Economi Service), REG (Reguler Service), ONS (Over Night Service), HDS (Holiday Delivery Service), dan SDS (Same Day Service)', 12500),
(4, 1, 'PANDU LOGISTIC', 'pandu.jpg', 'Perusahaan ini menawarkan 2 jenis layanan jasa pengiriman, yakni Overnight Service dan Same Day Service', 15000),
(5, 1, 'RPX HOLDING', 'rpx.jpg', 'Perusahaan yang memiliki kantor pusat di bilangan Jakarta Selatan ini menawarkan 5 jenis layanan jasa pengiriman, antara lain SameDay Package, MidDay Package, Next Day Package, Regular Package, dan Retail Package', 12000),
(6, 1, 'ESL EXPRESS', 'esl.jpg', 'ESL Express menawarkan berbagai jenis layanan jasa pengiriman. Salah satunya adalah DARAT dengan jenis kiriman RPX â€“ Paket (0,01-99,00 kg)', 14500);

-- --------------------------------------------------------

--
-- Table structure for table `kategoritambahan`
--

CREATE TABLE IF NOT EXISTS `kategoritambahan` (
  `idkategori` int(11) NOT NULL AUTO_INCREMENT,
  `idkat` int(11) NOT NULL,
  `idadmin` int(11) NOT NULL,
  `namakategori` varchar(50) NOT NULL,
  PRIMARY KEY (`idkategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `kategoritambahan`
--

INSERT INTO `kategoritambahan` (`idkategori`, `idkat`, `idadmin`, `namakategori`) VALUES
(5, 4, 1, 'Wedges'),
(6, 4, 1, 'Flats & Ballerina'),
(7, 4, 1, 'Slip On'),
(8, 4, 1, 'Sandal'),
(9, 4, 1, 'Heels'),
(10, 4, 1, 'Sneakers'),
(11, 4, 1, 'Boots'),
(12, 5, 1, 'Sneakers & Skate'),
(13, 5, 1, 'Sandal & Flip Flop'),
(14, 5, 1, 'Slip On'),
(15, 5, 1, 'Loafers'),
(16, 5, 1, 'Boots'),
(17, 6, 1, 'Boot');

-- --------------------------------------------------------

--
-- Table structure for table `kategoriutama`
--

CREATE TABLE IF NOT EXISTS `kategoriutama` (
  `idkat` int(11) NOT NULL AUTO_INCREMENT,
  `idadmin` int(11) NOT NULL,
  `namakat` varchar(40) NOT NULL,
  PRIMARY KEY (`idkat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `kategoriutama`
--

INSERT INTO `kategoriutama` (`idkat`, `idadmin`, `namakat`) VALUES
(4, 1, 'Sepatu Wanita'),
(5, 1, 'Sepatu Pria'),
(6, 1, 'Sepatu Anak');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE IF NOT EXISTS `orderdetail` (
  `idorder` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `idpenjual` int(11) NOT NULL,
  `idjasa` int(11) NOT NULL,
  `jumlahbeli` int(11) NOT NULL,
  `subtotal` double NOT NULL,
  `statusorder` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`idorder`, `idproduk`, `idpenjual`, `idjasa`, `jumlahbeli`, `subtotal`, `statusorder`) VALUES
(1, 15, 8, 1, 1, 1599000, 'Lunas'),
(2, 13, 8, 3, 1, 959400, 'Baru'),
(3, 122, 8, 1, 1, 499900, 'Lunas'),
(5, 131, 8, 3, 1, 519000, 'Baru'),
(5, 134, 8, 3, 1, 532000, 'Baru');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `idorder` int(11) NOT NULL AUTO_INCREMENT,
  `idanggota` int(11) NOT NULL,
  `alamatkirim` text NOT NULL,
  `total` double NOT NULL,
  `tglorder` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idorder`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`idorder`, `idanggota`, `alamatkirim`, `total`, `tglorder`) VALUES
(3, 2, 'ujung tanah', 499900, '2017-12-13 16:03:38'),
(4, 0, '', 0, '2017-12-13 16:04:41'),
(5, 3, 'lbuat', 1051000, '2017-12-13 16:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE IF NOT EXISTS `pembayaran` (
  `idbayar` int(11) NOT NULL AUTO_INCREMENT,
  `idorder` int(11) NOT NULL,
  `namabankpengirim` varchar(50) NOT NULL,
  `namapengirim` varchar(50) NOT NULL,
  `jumlahtransfer` double NOT NULL,
  `tgltransfer` date NOT NULL DEFAULT '0000-00-00',
  `namabankpenerima` varchar(50) NOT NULL,
  `bukti` text NOT NULL,
  PRIMARY KEY (`idbayar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`idbayar`, `idorder`, `namabankpengirim`, `namapengirim`, `jumlahtransfer`, `tgltransfer`, `namabankpenerima`, `bukti`) VALUES
(2, 1, 'Mandiri', 'Ruri Kurnia', 1599000, '2017-01-04', 'Mandiri', ''),
(3, 5, 'mandiru', 'ruri', 1051000, '2017-12-13', 'mandiri', '20170530_112845.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `penjual`
--

CREATE TABLE IF NOT EXISTS `penjual` (
  `idpenjual` int(11) NOT NULL AUTO_INCREMENT,
  `emailpenjual` varchar(50) NOT NULL,
  `passwordpenjual` varchar(20) NOT NULL,
  `namapenjual` varchar(30) NOT NULL,
  `nohppenjual` varchar(15) NOT NULL,
  `namatoko` varchar(30) NOT NULL,
  `detailpenjual` text NOT NULL,
  PRIMARY KEY (`idpenjual`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `penjual`
--

INSERT INTO `penjual` (`idpenjual`, `emailpenjual`, `passwordpenjual`, `namapenjual`, `nohppenjual`, `namatoko`, `detailpenjual`) VALUES
(8, 'nofitarizki97@gmail.com', 'nofita', 'Nofita Rizki', '085374336145', 'Toko Sepatu', 'menjual berbaai macam sepaatu');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `idproduk` int(11) NOT NULL AUTO_INCREMENT,
  `idkat` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `idpenjual` int(11) NOT NULL,
  `idbrand` int(11) NOT NULL,
  `namaproduk` varchar(100) NOT NULL,
  `hargaproduk` double NOT NULL,
  `stok` int(11) NOT NULL,
  `spesifikasi` text NOT NULL,
  `detailproduk` text NOT NULL,
  `diskon` int(11) NOT NULL,
  `berat` float NOT NULL,
  `isikotak` varchar(100) NOT NULL,
  `foto1` text NOT NULL,
  `foto2` text NOT NULL,
  `foto3` text NOT NULL,
  `tglpost` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idproduk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=135 ;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `idkat`, `idkategori`, `idpenjual`, `idbrand`, `namaproduk`, `hargaproduk`, `stok`, `spesifikasi`, `detailproduk`, `diskon`, `berat`, `isikotak`, `foto1`, `foto2`, `foto3`, `tglpost`) VALUES
(8, 5, 16, 8, 46, 'JIM JOKER Oslo 02B', 1429000, 8, '- Nubuck leather<br />\r\n- Coklat<br />\r\n- Round toe<br />\r\n- Tali depan<br />\r\n- High top<br />\r\n- Sol rubber', 'Oslo 02B dari JIM JOKER. Koleksi boots dengan detail stitching dan detail gold tone eye leats. Cool and masculine!', 45, 0, '1 Pasang JIM JOKER Oslo 02B', 'jim-joker-0132-4975621-1(1).jpg', 'jim-joker-0132-4975621-2(1).jpg', 'jim-joker-0135-4975621-4.jpg', '2017-01-04 09:53:33'),
(11, 5, 12, 8, 66, 'Nike Mens Nike Air Max 1 Ultra Essential Shoes', 1799000, 10, '- Mesh<br />\r\n- Putih<br />\r\n- Round toe<br />\r\n- Tali depan<br />\r\n- Phylon insole<br />\r\n- Rubber outsole ', 'Nike menghadirkan koleksi sneakers ikonik dengan berbagai teknologi dan support untuk kenyamanan maksimal. Mens Air Max 1 Ultra Essential Shoes dilengkapi material breathable dan warna solid yang mengombinasikan tampilan urban dengan sporty vibe.', 25, 0, '1 Pasang Nike Mens Nike Air Max 1 Ultra Essential Shoes', 'nike-1776-7069021-1(1).jpg', 'nike-1777-7069021-2(1).jpg', 'nike-1781-7069021-6(1).jpg', '2017-01-04 11:53:55'),
(12, 5, 12, 8, 35, 'Asics Tiger GELSAGA', 1999000, 3, '- Genuine leather<br />\r\n- Kombinasi hitam dan abu-abu<br />\r\n- Round toe<br />\r\n- Tali depan<br />\r\n- Insole sintetis<br />\r\n- Rubber outsole<br />\r\n- Produk unisex', 'Ciptakan nuansa urban di setiap momen dengan Asics Tiger. GELSAGA menampilkan desain yang ikonik dalam kombinasi tekstur, warna dan motif yang memberi statement di setiap langkah', 30, 0, '1 Pasang Asics Tiger GELSAGA', 'asics-tiger-7401-0571911-1(1).jpg', 'asics-tiger-1531-0571911-2(1).jpg', 'asics-tiger-1548-0571911-6(1).jpg', '2017-01-04 11:58:44'),
(13, 5, 12, 8, 66, 'Nike Air Max 90 Essential', 1599000, 5, '- Tekstil, mesh<br />\r\n- Kombinasi putih dan cool grey<br />\r\n- Round toe<br />\r\n- Tali depan<br />\r\n- Insole tekstil<br />\r\n- Rubber outsole<br />\r\n- Ukuran 41, 42, 43, 44, 45', 'Kick your casual look with a pair by Nike. Air Max 90 Essential, sepatu dengan desain modern serta kombinasi teknologi Max Air unit midsole dan material breathable sehingga memberi kenyaman saat dikenakan. Get some sporty piece for your style.', 40, 0, '1 Pasang Nike Air Max 90 Essential', 'nike-7557-5775801-1(1).jpg', 'nike-8268-5775801-2(1).jpg', 'nike-8272-5775801-6(1).jpg', '2017-01-04 12:07:13'),
(14, 5, 12, 8, 64, 'Puma Pulse XT V2 FT Shoes', 1199000, 5, '- Tekstil, polyurethane<br />\r\n- Round toe<br />\r\n- Warna biru<br />\r\n- Detail tali dengan 5 eyelets<br />\r\n- Insole tekstil<br />\r\n- Sol rubber<br />\r\n- Ukuran 41,42,43,44,45', 'Cocok dikenakan saat di luar dan di dalam ruangan, Pulse XT V2 FT Shoes Puma menampilkan desain klasik dengan detail mesh pada material yang praktis dan nyaman.', 15, 0, '1 Pasang Puma Pulse XT V2 FT Shoes', 'puma-4322-1832721-1(1).jpg', 'puma-4323-1832721-2(1).jpg', 'puma-4328-1832721-6(1).jpg', '2017-01-04 12:10:33'),
(15, 5, 12, 8, 57, 'adidas originals gazelle', 1599000, 8, '- Pig skin<br />\r\n- Biru<br />\r\n- Round toe<br />\r\n- Tali depan<br />\r\n- Sol rubber<br />\r\n- Ukuran 41,42,43,44,45', 'Ultimate simplicity for three decades and counting. adidas originals gazelle dengan three stripe warna kontras sebagai ciri khas dari nuansa 90s yang siap melengkapi gaya kasual.', 0, 0, '1 Pasang adidas originals gazelle', 'adidas-6323-6541721-1(1).jpg', 'adidas-6324-6541721-2(1).jpg', 'adidas-6328-6541721-6(1).jpg', '2017-01-04 12:13:31'),
(16, 5, 12, 8, 0, 'Nike Mens Nike Air Huarache Shoes', 1649000, 12, '- Tekstil dan leather upper<br />\r\n- Hitam<br />\r\n- Tali depan<br />\r\n- Round toecap<br />\r\n- 5 pasang eyelets dengan tali datar<br />\r\n- Rubber outsole<br />\r\n- Waffle outsole<br />\r\n- Ukuran 41,42,43,44,45', 'Support terbaik untuk langkah lebih sporty dan nyaman. Mens Nike Air Huarache Shoes dilengkapi desain ikonik original, neoprene inner sleeve paduan leather upper dan tekstil serta midsole cushioning untuk natural feel. Aplikasi Air-Sole units pada bagian heel dan forefoot untuk cushioning fleksibel.', 0, 0, '1 Pasang Nike Mens Nike Air Huarache Shoes', 'nike-4660-5412821-1(1).jpg', 'nike-4661-5412821-2(1).jpg', 'nike-4664-5412821-6(1).jpg', '2017-01-04 12:27:46'),
(17, 5, 12, 8, 35, 'Asics Tiger Gel-Lyte III-Shoes', 1699000, 7, '- Sintetis<br />\r\n- Warna navy<br />\r\n- Round toe<br />\r\n- Detail tali dengan 5 pasang blind eyelets<br />\r\n- Padded split tongue and cuff<br />\r\n- Insole tekstil<br />\r\n- Sol rubber<br />\r\n- Produk unisex<br />\r\n- Ukuran 41,42,43,44,45', 'Tampil unbeatable dengan Gel-Lyte III-Shoes ASICS Tiger yang menampilkan nuansa warna misterius. Koleksi ini menampilkan konstruksi no-Sew inovatif dan siluet original. GELÃ‚Â®-Cushioning serta Split-Tongue memberikan rasa nyaman optimal.', 15, 0, '1 Pasang Asics Tiger Gel-Lyte III-Shoes', 'asics-tiger-8488-2936021-1(1).jpg', 'asics-tiger-8489-2936021-2(1).jpg', 'asics-tiger-8491-2936021-6(1).jpg', '2017-01-04 12:32:41'),
(18, 5, 12, 8, 62, 'New Balance Zante Running Shoes', 1499000, 2, '- Tekstil<br />\r\n- Warna abu-abu, kuning<br />\r\n- Round toe<br />\r\n- Detail tali<br />\r\n- Insole tekstil<br />\r\n- Sol rubber', 'Berlari terasa menjadi seru saat mengenakan sepatu nyaman. Zante Running Shoes New Balance menampilkan teknologi Fresh Foam v2 untuk memberikan cushioning yang tepat. Desain toe spring agresif menciptakan transisi cepat saat berlari. ', 15, 0, '1 Pasang New Balance Zante Running Shoes', 'new-balance-4273-7520621-1(1).jpg', 'new-balance-4273-7520621-2(1).jpg', 'new-balance-4276-7520621-6(1).jpg', '2017-01-04 12:35:17'),
(19, 5, 12, 8, 55, 'Vans Authentic (Toy Story)', 1499000, 4, '- Kanvas<br />\r\n- Woody, True White<br />\r\n- Round toe<br />\r\n- Tali depan<br />\r\n- Fabric insole<br />\r\n- Sol rubber<br />\r\n- Ukuran 41,42,44', 'The perfect footwear to elevate casual look. Authentic (Toy Story) Vans kini tampil dengan print karakter animasi kartun dan tali dengan warna yang keren.', 0, 0, '1 Pasang Vans Authentic (Toy Story)', 'vans-4427-3282821-1(1).jpg', 'vans-4428-3282821-2(1).jpg', 'vans-4431-3282821-7(1).jpg', '2017-01-04 12:39:13'),
(20, 5, 12, 8, 68, 'FILA F Star 80', 499900, 3, '- Sintetis<br />\r\n- Warna hitam<br />\r\n- Almond toe<br />\r\n- Detail tali depan dengan 12 pasang eyelets<br />\r\n- Aksen mesh<br />\r\n- Insole sintetis<br />\r\n- Sol rubber<br />\r\n- Ukuran 41,42,43', 'Nyaman untuk dipakai sehari-hari sekaligus gaya', 20, 0, '1 Pasang FILA F Star 80', 'fila-8461-2059621-1(1).jpg', 'fila-8462-2059621-2(1).jpg', 'fila-8465-2059621-6(1).jpg', '2017-01-04 12:43:40'),
(21, 5, 12, 8, 64, 'Puma R698 Filtered Shoes', 1599000, 15, '- Tekstil, polyurethane<br />\r\n- Warna peacoat<br />\r\n- Round toe<br />\r\n- Tali depan<br />\r\n- Insole tekstil<br />\r\n- Rubber outsole<br />\r\n- Ukuran 41,42,43,44,45', 'Kick the streets in high style with Puma. R698 Filtered Shoes menghadirkan gaya autentik yang memberi kesan youthful dan versatile.', 15, 0, '1 Pasang Puma<br />\r\nR698 Filtered Shoes', 'puma-0066-4528711-1(1).jpg', 'puma-6739-4528711-2(1).jpg', 'puma-6743-4528711-6(1).jpg', '2017-01-04 12:46:16'),
(22, 5, 14, 8, 44, 'JAXON Faux Matte PU Loafers', 399000, 5, '- Suede sintetis<br />\r\n- Warna hitam<br />\r\n- Insole tekstil<br />\r\n- Sol rubber<br />\r\n- Ukuran 42,43,44,45', 'Tampil laid-back dengan koleksi JAXON. Faux Matte PU Loafers menampilkan kesan fuss-free, desain slip-on, dan cushioned insoles yang ringan.', 0, 0, '1 Pasang JAXON Faux Matte PU Loafers', 'jaxon-2362-2330921-1(1).jpg', 'jaxon-2363-2330921-2(1).jpg', 'jaxon-2365-2330921-6(1).jpg', '2017-01-04 12:48:29'),
(23, 5, 14, 8, 19, 'Reebok 3D Slip', 599900, 5, '- Kanvas<br />\r\n- Warna ash grey<br />\r\n- Round toe<br />\r\n- Insole sintetis<br />\r\n- Rubber outsole', 'Beristirahat sejenak dari hingar bingar sneakers yang haus perhatian. 3D Slip dari Reebok tampil super simpel dalam warna solid yang membuatnya terlihat versatile dan mengingatkan nuansa minimalis ala japan look.', 0, 0, '1 Pasang Reebok 3D Slip', 'reebok-7354-4992921-1(1).jpg', 'reebok-7355-4992921-2(1).jpg', 'reebok-7357-4992921-6(1).jpg', '2017-01-04 12:50:33'),
(24, 5, 14, 8, 43, 'Cavallero Didan', 799000, 2, '- Leather<br />\r\n- Warna hitam<br />\r\n- Almond toe<br />\r\n- Detail gussets elastis<br />\r\n- Slip-on style<br />\r\n- Insole sintetis<br />\r\n- Sol rubber', 'Lengkapi penampilan di berbagai kesempatan. Didan Cavallero hadir dengan desain slip-on dan detail outsole bertekstur woven yang playful.', 30, 0, '1 Pasang Cavallero Didan', 'cavallero-7021-7369821-1(1).jpg', 'cavallero-3258-7369821-2(1).jpg', 'cavallero-3263-7369821-6(1).jpg', '2017-01-04 12:52:45'),
(25, 5, 14, 8, 45, 'Marelli Men Bologna Leather Shoes', 999000, 2, '- Pantofel shoes<br />\r\n- Warna hitam<br />\r\n- Bahan leather<br />\r\n- Model slip on<br />\r\n- Square toe<br />\r\n- Tekstur garis<br />\r\n- Detail stitching dan metal logo<br />\r\n- Elastic band di bagian samping', 'Nyaman dipakai', 30, 0, '1 Pasang Marelli Men Bologna Leather Shoes', 'marelli-9834-45048-1(1).jpg', 'marelli-9837-45048-2(1).jpg', '', '2017-01-04 12:55:29'),
(26, 5, 14, 8, 47, 'Pakalolo Boots Casual Slip On', 799500, 9, '- Suede<br />\r\n- Hitam<br />\r\n- Round toe<br />\r\n- Detail stitching<br />\r\n- Insole sintetis<br />\r\n- Sol rubber', 'Casual Slip On by Pakalolo Boots', 20, 0, '1 Pasang Pakalolo Boots Casual Slip On', 'pakalolo-boots-3587-9756031-1(1).jpg', 'pakalolo-boots-3589-9756031-2(1).jpg', 'pakalolo-boots-3591-9756031-6(1).jpg', '2017-01-04 13:05:33'),
(27, 5, 14, 8, 47, 'Pakalolo Boots Slip On Casual', 799500, 3, '- Leather<br />\r\n- Warna hitam<br />\r\n- Almond toe<br />\r\n- Gussets elastis<br />\r\n- Detail embossed branding logo<br />\r\n- Desain kasual<br />\r\n- Slip-on style<br />\r\n- Insole sintetis<br />\r\n- Sol rubber', 'Slip On Casual by Pakalolo Boots', 0, 0, '1 Pasang Pakalolo Boots Slip On Casual', 'pakalolo-boots-4236-2170721-1(1).jpg', 'pakalolo-boots-6452-2170721-2(1).jpg', 'pakalolo-boots-6457-2170721-6(1).jpg', '2017-01-04 13:07:40'),
(28, 5, 14, 8, 46, 'JIM JOKER Pluto 02', 1190000, 6, '- Nubuck leather<br />\r\n- Warna tan<br />\r\n- Square toe<br />\r\n- Insole sintetis<br />\r\n- Rubber outsole', 'Santai di akhir pekan dengan koleksi sepatu kasual dari JIM JOKER. Pluto 02 menampilkan sepatu slip on dalam paduan warna tegas yang maskulin. Detail stitching berwarna kontras memberi tekstur yang lebih dinamis.', 49, 0, '1 Pasang JIM JOKER Pluto 02', 'jim-joker-8574-9734201-1(1).jpg', 'jim-joker-1495-9734201-2(1).jpg', 'jim-joker-1499-9734201-6(1).jpg', '2017-01-04 13:10:00'),
(29, 5, 14, 8, 46, 'JIM JOKER Earth 02', 1099000, 2, 'Nyaman sepanjang hari dengan sepatu slip on premium dari Jim Joker. Earth 02 terbuat dari kulit dengan tekstur suedette yang terlihat timeless dan penuh gaya.<br />\r\n', '- Kulit<br />\r\n- Warna coffee<br />\r\n- Round toe<br />\r\n- Velcro closure<br />\r\n- Insole sintetis<br />\r\n- Rubber outsole', 20, 0, '1 Pasang JIM JOKER Earth 02', 'jim-joker-9664-2341801-1(1).jpg', 'jim-joker-9666-2341801-2(1).jpg', 'jim-joker-9674-2341801-6(1).jpg', '2017-01-04 13:12:46'),
(30, 5, 14, 8, 47, 'Pakalolo Boots Y9353', 769900, 5, '- Leather <br />\r\n- Cokelat <br />\r\n- Round toe <br />\r\n- Insole sintetis <br />\r\n- Sol rubber ', 'Pakalolo Boots merilis koleksi slip ons yang tepat untuk gaya kasual hingga office look. Y9353 didesain minimalis dalam material berkualitas serta pilihan warna solid memberi finishing look yang maskulin. ', 0, 0, '1 Pasang Pakalolo Boots Y9353', 'pakalolo-boots-5454-8055811-1(1).jpg', 'pakalolo-boots-5455-8055811-2(1).jpg', 'pakalolo-boots-5459-8055811-5(1).jpg', '2017-01-04 13:15:10'),
(31, 5, 14, 8, 46, 'JIM JOKER Haper 72', 1099000, 6, '- Nubuck leather<br />\r\n- Warna cokelat<br />\r\n- Round toe<br />\r\n- Insole sintetis<br />\r\n- Sol rubber', 'Pria modern memilih sepatu koleksi JIM JOKER ini sebagai daily footwear. Desain slip on yang minimalis pada Haper 72 ini paling nyaman dikenakan saat beraktifitas indoor maupun outdoor. Makin gaya dengan pilihan warna gelap.', 45, 0, '1 Pasang JIM JOKER Haper 72', 'jim-joker-9136-651189-1(1).jpg', 'jim-joker-9137-651189-2(1).jpg', 'jim-joker-9141-651189-6(1).jpg', '2017-01-04 13:18:24'),
(32, 5, 13, 8, 57, 'adidas duramo slide', 249000, 7, '- Injected EVA<br />\r\n- Biru<br />\r\n- Open toe<br />\r\n- Insole Injected EVA <br />\r\n- Outsole Injected EVA ', 'adidas performance duramo slide tampil dalam desain clean slides dan dilengkapi footbed bertekstur yang memberi kenyamanan maksimal. Ideal for your pre- and post-workout routine! ', 0, 0, '1 Pasang adidas duramo slide', 'adidas-6062-8042021-1(1).jpg', 'adidas-6065-8042021-2(1).jpg', 'adidas-6074-8042021-6(1).jpg', '2017-01-04 13:20:41'),
(33, 5, 13, 8, 40, 'Quiksilver Molokai Tijuana M Sndl Xkrr', 245000, 8, '- Sintetis<br />\r\n- Warna merah<br />\r\n- Open toe<br />\r\n- Detail toe strap<br />\r\n- Insole sintetis<br />\r\n- Sol sintetis', 'Saat santai, jangan lupa untuk mengenakan Molokai Tijuana M Sndl Xkrr, koleksi terbaru pilihan Quicksilver. Sandal ini menampilkan material berkualitas dan sol rubber anti selip yang nyaman dikenakan di daerah basah.', 0, 0, '1 Pasang Quiksilver Molokai Tijuana M Sndl Xkrr', 'quiksilver-9730-5680821-1(1).jpg', 'quiksilver-9730-5680821-2(1).jpg', 'quiksilver-9734-5680821-6(1).jpg', '2017-01-04 13:22:55'),
(34, 5, 13, 8, 40, 'Quiksilver Carver Nubuck M Sndl', 545000, 3, '- Sintetis <br />\r\n- Hitam <br />\r\n- Y-strap<br />\r\n- Open toe<br />\r\n- Sol rubber', 'Bold and fun! Carver Nubuck M Sndl dari Quiksilver menampilkan sandal kasual berwarna tegas yang siap menemani setiap liburan. <br />\r\n', 10, 0, '1 Pasang Quiksilver Carver Nubuck M Sndl', 'quiksilver-0235-9820621-1(1).jpg', 'quiksilver-0235-9820621-2(1).jpg', 'quiksilver-0239-9820621-6(1).jpg', '2017-01-04 13:24:51'),
(35, 5, 13, 8, 41, 'Diadora Vivere Iv.16', 159000, 5, '- Sintetis<br />\r\n- Navy<br />\r\n- Open toe<br />\r\n- Detail wide strap<br />\r\n- Rubber outsole', 'Simpel dan fully comfortable. Koleksi Vivere Iv. 16 dari Diadora menampilkan sandal flip flop berwarna solid dengan detail logo dan stitching sebagai twist yang atraktif.', 0, 0, '1 Pasang Diadora Vivere Iv.16', 'diadora-3224-5305821-1(1).jpg', 'diadora-3225-5305821-2(1).jpg', 'diadora-3227-5305821-6(1).jpg', '2017-01-04 13:27:19'),
(36, 5, 13, 8, 38, 'Teva Original Universal(1004006*Mpb)', 799000, 12, '- Poliester webbing<br />\r\n- Mashup Blue<br />\r\n- Open toe<br />\r\n- Velcro strap fastening<br />\r\n- Insole sintetis<br />\r\n- Sol durabrasion Rubber', 'Temani aktifitas out door dengan sandal kreasi Teva Original Universal(1004006*Mpb), menampilkan detail vibrant print dan desain multi strap. Dilengkapi footbed yang memberi kenyamanan ekstra. ', 0, 0, '1 Pasang Teva Original Universal(1004006*Mpb)', 'teva-4629-5214021-1(1).jpg', 'teva-4632-5214021-2(1).jpg', 'teva-4646-5214021-6(1).jpg', '2017-01-04 13:29:21'),
(37, 5, 13, 8, 57, 'adidas mufc slide', 329000, 11, '- EVA<br />\r\n- Hitam<br />\r\n- Wide strap<br />\r\n- EVA sole', 'Take your team pride to the poolside Ringan dan nyaman, adidas performance mufc slide dilengkapi dengan detail logo Red Devils pada bagian depan.', 0, 0, '1 Pasang adidas mufc slide', 'adidas-6508-5885821-1(1).jpg', 'adidas-6509-5885821-2(1).jpg', 'adidas-6511-5885821-6(1).jpg', '2017-01-04 13:31:17'),
(38, 5, 13, 8, 40, 'Quiksilver Molokaidivlogo M Sndl Xkrg', 245000, 6, '- Rubber <br />\r\n- Multiwarna <br />\r\n- Y-strap<br />\r\n- Open toe<br />\r\n- Insole sintetis <br />\r\n- Sol rubber', 'Bold and fun! Molokaidivlogo M Sndl Xkbb dari Quiksilver menampilkan sandal kasual berwarna tegas yang siap menemani setiap liburan. <br />\r\n', 0, 0, '1 Pasang Quiksilver Molokaidivlogo M Sndl Xkrg', 'quiksilver-9768-5180821-1(1).jpg', 'quiksilver-9769-5180821-2(1).jpg', 'quiksilver-9772-5180821-6(1).jpg', '2017-01-04 13:33:06'),
(39, 5, 13, 8, 39, 'Homyped New Sanjose 08 Men Sandals', 349900, 2, '- Kulit sintetis<br />\r\n- Hitam<br />\r\n- Open toe<br />\r\n- Double strap<br />\r\n- Sol sintetis', 'Koleksi sandal yang cocok untuk langkah lebih nyaman dari Homyped. New Sanjose 08 Men Sandals menampilkan detail buckle pada strap yang memberi kesan trendi.', 20, 0, '1 Pasang Homyped New Sanjose 08 Men Sandals', 'homyped-4650-6351121-1(1).jpg', 'homyped-4651-6351121-2(1).jpg', 'homyped-4653-6351121-6(1).jpg', '2017-01-04 13:35:31'),
(40, 5, 13, 7, 47, 'Pakalolo Boots Thong Sandal', 399500, 5, '- Kulit sintetis<br />\r\n- Hitam<br />\r\n- Y-strap<br />\r\n- Open toe<br />\r\n- Detail stitching<br />\r\n- Insole sintetis<br />\r\n- Sol rubber', 'Thong Sandal by Pakalolo Boots', 20, 0, '1 Pasang Pakalolo Boots Thong Sandal', 'pakalolo-boots-3619-8756031-1(1).jpg', 'pakalolo-boots-3619-8756031-2(1).jpg', 'pakalolo-boots-3621-8756031-6(1).jpg', '2017-01-04 13:37:49'),
(41, 5, 13, 7, 57, 'adidas originals adilette', 419000, 7, '- PU-coated sintetis<br />\r\n- Biru<br />\r\n- Single strap<br />\r\n- PU sole', 'Koleksi footwear adidas originals satu ini telah debut dari tahun 1972 sebagai poolside slide. Adilette sekarang dapat digunakan secara general untuk pelengkap sporty look Anda.', 15, 0, '1 Pasang adidas originals adilette', 'adidas-4827-4897811-1(1).jpg', 'adidas-4828-4897811-2(1).jpg', 'adidas-4831-4897811-6(1).jpg', '2017-01-04 13:40:08'),
(42, 5, 15, 7, 46, 'JIM JOKER Dalas 1C', 1219000, 5, '- Nubuck leather<br />\r\n- Coklat tua<br />\r\n- Square toe<br />\r\n- Tali depan<br />\r\n- Sol rubber', 'Dalas 1C dari JIM JOKER, loafers dengan detail stitching warna kontras dan desain yang maskulin. ', 0, 0, '1 Pasang JIM JOKER Dalas 1C', 'jim-joker-0217-9775621-1(1).jpg', 'jim-joker-0218-9775621-2(1).jpg', 'jim-joker-0220-9775621-6(1).jpg', '2017-01-04 13:42:44'),
(43, 5, 15, 7, 46, 'JIM JOKER Drum 2Ca', 999000, 4, '- Nubuck leather<br />\r\n- Coklat<br />\r\n- Round toe<br />\r\n- Side elastic<br />\r\n- Sol rubber<br />\r\n', 'Drum 2Ca dari JIM JOKER. Koleksi loafers dengan detail perforated dan sol berwarna kontras. Cool and masculine!', 20, 0, '1 Pasang JIM JOKER Drum 2Ca', 'jim-joker-3486-7910821-1(1).jpg', 'jim-joker-3487-7910821-2(1).jpg', 'jim-joker-3490-7910821-6(1).jpg', '2017-01-04 13:51:25'),
(44, 5, 15, 7, 46, 'JIM JOKER Leaf 2Cg', 999000, 4, '- Nubuck leather<br />\r\n- Hitam<br />\r\n- Round toe<br />\r\n- Sol rubber<br />\r\n', 'Leaf 2Cg dari JIM JOKER, loafers dengan aksen triangle pattern dan desain klasik. ', 23, 0, '1 Pasang JIM JOKER Leaf 2Cg', 'jim-joker-0146-1975621-1(1).jpg', 'jim-joker-0146-1975621-2(1).jpg', 'jim-joker-0149-1975621-6(1).jpg', '2017-01-04 13:53:30'),
(45, 5, 15, 7, 45, 'Marelli Gloria', 999000, 12, '- Cow leather<br />\r\n- Hitam<br />\r\n- Square toe<br />\r\n- Side elastic<br />\r\n- Sol sintetis', 'Lengkapi gaya formal dengan koleksi sepatu dari Marelli. Gloria menampilkan detail stitching di bagian depan dan desain yang sharp. ', 30, 0, '1 Pasang Marelli Gloria', 'marelli-7380-1604511-1(1).jpg', 'marelli-7399-1604511-2(1).jpg', 'marelli-7401-1604511-5(1).jpg', '2017-01-04 13:55:15'),
(46, 5, 15, 7, 46, 'JIM JOKER Haper 70 Casual Shoes', 1099000, 6, '- Genuine leather<br />\r\n- Cokelat<br />\r\n- Round toe<br />\r\n- Insole sintetis<br />\r\n- Rubber outsole', 'Haper 70 Casual Shoes dari JIM JOKER. Sepatu bernuansa earthy tone dan detail rusted metal tone yang memberi kesan maskulin. A perfect casual pair for adventurer.', 45, 0, '1 Pasang JIM JOKER Haper 70 Casual Shoes', 'jim-joker-2248-021908-1(1).jpg', 'jim-joker-2249-021908-2(1).jpg', 'jim-joker-2254-021908-6(1).jpg', '2017-01-04 13:57:12'),
(47, 5, 16, 7, 46, 'JIM JOKER Flem 2Ba', 1299000, 13, '- Nubuck leather<br />\r\n- Warna cokelat<br />\r\n- Almond toe<br />\r\n- Detail tali depan dengan 10 pasang metal eyelets<br />\r\n- Aksen contrast stitching<br />\r\n- Insole sintetis<br />\r\n- Sol sintetis', 'Koleksi JIM JOKER yang menciptakan kesan 90s. Flem 2Ba hadir dengan desain boots dan sol yang nyaman. So fashionable!', 30, 0, '1 Pasang JIM JOKER Flem 2Ba', 'jim-joker-7739-3196921-1(1).jpg', 'jim-joker-7739-3196921-2(1).jpg', 'jim-joker-7743-3196921-6(1).jpg', '2017-01-04 14:25:33'),
(48, 5, 16, 7, 46, 'JIM JOKER Pices 11B Boot Shoes', 1299000, 10, '- Genuine leather <br />\r\n- Cokelat<br />\r\n- Round toe<br />\r\n- Tali depan<br />\r\n- Fabric insole<br />\r\n- Rubber outsole<br />\r\n', 'Pices 11B Boot Shoes dari JIM JOKER. Boots dengan detail stitching dan shoe laces berwarna kontras yang memberikan kesan maskulin.', 0, 0, '1 Pasang JIM JOKER Pices 11B Boot Shoes', 'jim-joker-7328-651097-1(1).jpg', 'jim-joker-1368-651097-2(1).jpg', 'jim-joker-1399-651097-6(1).jpg', '2017-01-04 14:47:56'),
(49, 5, 16, 7, 47, 'Pakalolo Boots Casual Lace Boots', 849500, 11, '- Leather<br />\r\n- Warna cokelat<br />\r\n- Almond toe<br />\r\n- Detail tali depan dengan 8 pasang metal eyelets<br />\r\n- Aksen stitching pada material<br />\r\n- Insole sintetis<br />\r\n- Sol rubber', 'Casual Lace Boots by Pakalolo Boots', 0, 0, '1 Pasang Pakalolo Boots Casual Lace Boots', 'pakalolo-boots-4235-3170721-1(1).jpg', 'pakalolo-boots-6440-3170721-2(1).jpg', 'pakalolo-boots-6446-3170721-6(1).jpg', '2017-01-04 14:49:34'),
(50, 5, 16, 7, 46, 'JIM JOKER Flem 1Ba', 1299000, 5, '- Nubuck leather<br />\r\n- Warna coffee<br />\r\n- Round toe<br />\r\n- Tali depan<br />\r\n- Insole sintetis<br />\r\n- Rubber outsole', 'Buat gaya maskulin lebih on point dengan JIM JOKER. Flem 1Ba menampilkan tekstur wingtip dan efek roasted yang membuatnya terlihat lebih berkarakter.', 30, 0, '1 Pasang JIM JOKER Flem 1Ba', 'jim-joker-7755-0196921-1(1).jpg', 'jim-joker-7756-0196921-2(1).jpg', 'jim-joker-7759-0196921-6(1).jpg', '2017-01-04 14:51:17'),
(51, 5, 16, 7, 45, 'Pakalolo Boots Y62951', 799500, 14, '- Leather <br />\r\n- Cokelat <br />\r\n- Round toe <br />\r\n- Detail tali depan <br />\r\n- Desain high top <br />\r\n- Insole sintetis <br />\r\n- Sol rubber ', 'New boots for the masculine man. Y62951 hadir dalam desain modern dari material berkualitas dalam warna earthy membawa sepatu ini tepat untuk outdoor activities. <br />\r\n', 0, 0, '1 Pasang Pakalolo Boots Y62951', 'pakalolo-boots-5437-9155811-1(1).jpg', 'pakalolo-boots-5438-9155811-2(1).jpg', 'pakalolo-boots-5442-9155811-5(1).jpg', '2017-01-04 14:54:55'),
(52, 5, 16, 7, 46, 'JIM JOKER Jeruk1B', 1499000, 8, '- Nubuck leather<br />\r\n- Warna coffee<br />\r\n- Round toe<br />\r\n- Tali depan<br />\r\n- High top<br />\r\n- Sol rubber', 'Perfect pair for every man by JIM JOKER. Jeruk1B, koleksi boots dengan nuansa warna earthy dan desain yang cocok untuk kegiatan outdoor. Cool!<br />\r\n', 15, 0, '1 Pasang JIM JOKER Jeruk1B', 'jim-joker-8576-6407101-1(1).jpg', 'jim-joker-0434-6407101-2(1).jpg', 'jim-joker-0438-6407101-6(1).jpg', '2017-01-04 14:56:30'),
(53, 5, 16, 7, 46, 'JIM JOKER Grape 2B', 1599000, 4, '- Nubuck leather<br />\r\n- Warna tan<br />\r\n- Round toe<br />\r\n- Tali depan<br />\r\n- High top<br />\r\n- Sol rubber', 'JIM JOKER hadir dengan koleksi terbaru. Grape 2B, boots berdesain high ankle dengan detail gold tone eyelets.. Best choice for adventure.', 50, 0, '1 Pasang JIM JOKER Grape 2B', 'jim-joker-8577-5407101-1(1).jpg', 'jim-joker-0440-5407101-2(1).jpg', 'jim-joker-0444-5407101-6(1).jpg', '2017-01-04 14:59:17'),
(54, 5, 16, 7, 43, 'Cavallero Newton', 1199000, 5, '- Kulit sintetis<br />\r\n- Coklat tua<br />\r\n- Square toe<br />\r\n- Insole genuine leather<br />\r\n- Sol rubber', 'Stay stylish and cool with Cavellero. Newton 1 casual Shoes menampilkan sepatu boots dengan aksen stitching dan detail side elastic gusset yang memberi kesan berkelas. Get ready to hit the road!', 15, 0, '1 Pasang Cavallero Newton', 'cavallero-1625-3633101-1(1).jpg', 'cavallero-1626-3633101-2(1).jpg', 'cavallero-1630-3633101-6(1).jpg', '2017-01-04 15:01:27'),
(55, 5, 16, 7, 47, 'Pakalolo Boots Y62953', 799500, 6, '- Leather <br />\r\n- Cokelat <br />\r\n- Round toe <br />\r\n- Desain high top <br />\r\n- Insole sintetis <br />\r\n- Sol rubber ', 'New boots for the classic man. Y62953 hadir dalam desain high top minimalis dari material berkualitas dalam warna earthy membawa sepatu ini tepat untuk casual activities. ', 0, 0, '1 Pasang Pakalolo Boots Y62953', 'pakalolo-boots-5443-0155811-1(1).jpg', 'pakalolo-boots-5444-0155811-2(1).jpg', 'pakalolo-boots-5448-0155811-5(1).jpg', '2017-01-04 15:03:56'),
(56, 5, 15, 7, 43, 'Cavallero Louis Casual Shoes', 1299000, 5, '- Leather<br />\r\n- Coklat muda<br />\r\n- Square toe<br />\r\n- Rubber sole<br />\r\n', 'Louis Casual Shoes dari Cavallero. Koleksi sepatu klasik untuk tampil formal.', 30, 0, '1 Pasang Cavallero Louis Casual Shoes', 'cavallero-7240-531777-1(1).jpg', 'cavallero-7245-531777-2(1).jpg', 'cavallero-7268-531777-6(1).jpg', '2017-01-04 15:07:16'),
(57, 5, 15, 7, 0, ' JIM JOKER Chick 02', 1299000, 6, '- Nubuck leather<br />\r\n- Warna coffee<br />\r\n- Square toe<br />\r\n- Insole sintetis<br />\r\n- Rubber outsole<br />\r\n', 'Loafer memberi kesan formal yang lebih chill sehingga terlihat modern dan fleksibel. Chick 02 dari JIM JOKER menampilkan koleksinya dalam warna solid, glossy finish dan tekstur kulit. Memberi kesan elegan dan classy.', 15, 0, '1 Pasang JIM JOKER Chick 02', 'jim-joker-5306-6734201-1(1).jpg', 'jim-joker-5307-6734201-2(1).jpg', 'jim-joker-5310-6734201-6(1).jpg', '2017-01-04 15:09:23'),
(58, 5, 15, 7, 46, ' JIM JOKER Venus 02', 1499000, 10, '- Leather<br />\r\n- Hitam<br />\r\n- Square toe<br />\r\n- Sol TPR', 'Koleksi bernuansa maskulin dari JIM JOKER. Venus 02, sepatu formal berdesain klasik dengan detail stitching. Pilihan tepat untuk formal occasion.<br />\r\n', 30, 0, '1 Pasang  JIM JOKER Venus 02', 'jim-joker-3681-6369901-1(1).jpg', 'jim-joker-3684-6369901-2(1).jpg', 'jim-joker-3696-6369901-6(1).jpg', '2017-01-04 15:11:24'),
(59, 5, 15, 7, 45, 'Marelli Astin Formal Shoes', 999000, 2, '- Cow leather<br />\r\n- Hitam<br />\r\n- Square toe<br />\r\n- Side elastic closure<br />\r\n- Insole sintetis<br />\r\n- Rubber outsole', 'Stay good looking with Marelli. Astin Formal Shoes menampilkan sepatu berdesain sleek dengan aksen stitching berwarna senada sebagai tekstur yang memberi kesan dinamis.', 20, 0, '1 Pasang Marelli Astin Formal Shoes', 'marelli-8780-685968-1(1).jpg', 'marelli-8783-685968-2(1).jpg', 'marelli-8794-685968-6(1).jpg', '2017-01-04 15:12:47'),
(60, 5, 15, 7, 47, 'Pakalolo Boots Y5655', 749500, 2, '- Leather<br />\r\n- Coklat<br />\r\n- Square toe<br />\r\n- Side elastic gussets<br />\r\n- Insole sintetis<br />\r\n- Sol rubber', 'Be classy and masculine at the same time with Y5655 dari Pakalolo Boots, sepatu formal dengan desain clean sleek dan slip on style yang tak hanya stylish namun juga versatile.', 0, 0, '1 Pasang Pakalolo Boots Y5655', 'pakalolo-boots-5935-9645811-1(1).jpg', 'pakalolo-boots-5939-9645811-2(1).jpg', 'pakalolo-boots-5950-9645811-5(1).jpg', '2017-01-04 15:16:03'),
(61, 4, 5, 7, 53, 'Something Borrowed Contrast Trim Wedge Heeled Sandals', 299000, 9, '- Faux suede<br />\r\n- Warna hitam<br />\r\n- Ankle strap dengan pin buckle fastening<br />\r\n- Faux suede insole<br />\r\n- Sol rubber<br />\r\n- Tinggi hak: 9.5cm<br />\r\n- Tinggi platform: 2.5cm', 'Sempurnakan penampilan dengan Contrast Trim Wedge Heeled Sandals Something Borrowed. Terbuat dari bahan faux suede, koleksi ini menampilkan aksen colour blocking pada trims yang youthful.<br />\r\n', 5, 0, '1 Pasang Something Borrowed Contrast Trim Wedge Heeled Sandals', 'something-borrowed-3176-4550721-1(1).jpg', 'something-borrowed-3177-4550721-2(1).jpg', 'something-borrowed-3179-4550721-5(1).jpg', '2017-01-04 15:18:16'),
(62, 4, 5, 7, 48, 'Yongki Komaladi Rey', 329000, 5, '- Sandal flat<br />\r\n- Sintetis<br />\r\n- Warna kamel<br />\r\n- Single front strap<br />\r\n- Open toe<br />\r\n- Ankle strap dengan velcro<br />\r\n- Thick mid-sole<br />\r\n- Insole dan sol luar sintetis', 'Rey by Yongki Komaladi<br />\r\n', 10, 0, '1 Pasang Yongki Komaladi Rey', 'yongki-komaladi-1130-5099031-1(1).jpg', 'yongki-komaladi-1131-5099031-2(1).jpg', 'yongki-komaladi-1134-5099031-6(1).jpg', '2017-01-04 15:20:14'),
(63, 4, 5, 7, 49, 'Triset Shoes Wedges Sandals', 439900, 6, '- Kulit sintetis<br />\r\n- Warna coffee<br />\r\n- Open toe<br />\r\n- Multi strap<br />\r\n- Ankle strap dengan self tie closure<br />\r\n- Insole sintetis<br />\r\n- Rubber outsole', 'Wedges Sandals by Triset Shoes', 0, 0, '1 Pasang Triset Shoes Wedges Sandals', 'triset-shoes-0472-5982031-1(1).jpg', 'triset-shoes-0473-5982031-2(1).jpg', 'triset-shoes-0475-5982031-6(1).jpg', '2017-01-04 15:22:08'),
(64, 4, 5, 7, 69, 'SAKROOTS Lalo', 399000, 2, '- EVA<br />\r\n- Multi warna<br />\r\n- Open toe<br />\r\n- Y strap<br />\r\n- Sol EVA', 'Buat akhir pekan jadi lebih hidup dan seru dengan koleksi sandal wedges yang colorful dari SAKROOTS. Hadir dalam desain all-over print, Lalo siap menemani dengan penuh gaya dan kenyamanan.', 0, 0, '1 Pasang SAKROOTS Lalo', 'sakroots-9426-7282021-1(1).jpg', 'sakroots-9428-7282021-2(1).jpg', 'sakroots-9434-7282021-4(1).jpg', '2017-01-04 15:25:52'),
(65, 4, 5, 7, 50, 'ALDO Catherin Sneakers', 1699000, 5, '- Upper tekstil <br />\r\n- Warna hitam <br />\r\n- Round toe <br />\r\n- Detail tali <br />\r\n- Insole tekstil <br />\r\n- Sol rubber <br />\r\n- Tinggi hak: 8.5cm', 'Jaga tampilan otentik Anda dengan Catherin Sneakers. Koleksi dari ALDO ini sangat cocok untuk menemani aktivitas sehari-hari.<br />\r\n', 0, 0, '1 Pasang ALDO Catherin Sneakers', 'aldo-3599-5324621-1(1).jpg', 'aldo-3600-5324621-2(1).jpg', 'aldo-3602-5324621-6(1).jpg', '2017-01-04 15:31:21'),
(66, 4, 5, 7, 69, 'SAKROOTS Layla', 399000, 2, '<br />\r\n- EVA<br />\r\n- Warna pink<br />\r\n- Open toe<br />\r\n- Y strap<br />\r\n- Sol EVA', 'Detail sketch print penuh warna memberi nuansa etnik yang menciptakan tampilan bohemian chic pada gaya santai. Layla dari SAKROOTS tampil simpel dan nyaman dalam pilihan warna favorit.', 5, 0, '1 Pasang SAKROOTS Layla', 'sakroots-7106-1382021-1(2).jpg', 'sakroots-7122-1382021-2(1).jpg', 'sakroots-2001-1382021-6(1).jpg', '2017-01-04 15:33:34'),
(67, 4, 5, 7, 0, 'ALDO Brena Wedges', 999000, 10, '- Leather<br />\r\n- Hitam<br />\r\n- Open toe<br />\r\n- Lace up fastening<br />\r\n- Detail self tie<br />\r\n- Polyurethane insole<br />\r\n- Heels: 1.8 cm<br />\r\n- Sol rubber', 'Ciptakan nuansa gaya spring dengan ALDO. Brena Wedges, sandal berdesain gladiator dengan material insole yang empuk dan nyaman.', 30, 0, '1 Pasang ALDO Brena Wedges', 'aldo-1958-2452111-1(1).jpg', 'aldo-1958-2452111-2(1).jpg', 'aldo-1960-2452111-5(1).jpg', '2017-01-04 15:35:16'),
(68, 4, 5, 7, 71, 'Teva W Flatform Universal Iridescent', 1599000, 15, '- Leather<br />\r\n- Hitam<br />\r\n- Open toe<br />\r\n- Velcro strap<br />\r\n- Insole sintetis<br />\r\n- Sol durabrasion rubber', 'W Flatform Universal Iridescent by Teva', 40, 0, '1 Pasang Teva W Flatform Universal Iridescent', 'teva-9300-0292031-1(1).jpg', 'teva-7979-0292031-2(1).jpg', 'teva-7983-0292031-6(1).jpg', '2017-01-04 15:39:03'),
(69, 4, 5, 7, 48, 'Yongki Komaladi Rita Wedges', 429000, 15, '- Kulit sintetis<br />\r\n- Warna tan<br />\r\n- Open toe<br />\r\n- Wide strap<br />\r\n- Insole sintetis<br />\r\n- Rubber outsole<br />\r\n- Tinggi hak 10 cm', 'Jika bisa terlihat lebih tinggi tanpa rasa sakit, kenapa tidak? Rita Wedges dari Yongki Komaladi menampilkan sandal wedges dengan glossy strap dan wooden heels yang siap membuat daily look jadi lebih stunning.', 15, 0, '1 Pasang Yongki Komaladi Rita Wedges', 'yongki-komaladi-9791-5474021-1(1).jpg', 'yongki-komaladi-9792-5474021-2(1).jpg', 'yongki-komaladi-9796-5474021-6(1).jpg', '2017-01-04 15:42:04'),
(70, 4, 5, 7, 72, 'Call It Spring Treawen Wedges', 990000, 15, '<br />\r\n- Polyurethane<br />\r\n- Warna cognac<br />\r\n- Peep toe<br />\r\n- Multi strap<br />\r\n- Strap fastening<br />\r\n- Insole dan outsole sintetis', 'Strap your way with these one! Treawen Wedges dari Call It Spring tampil mininalis dengan tekstur cork-like pada wedges untuk memberi kesan modern vintage.', 30, 0, '1 Pasang Call It Spring Treawen Wedges', 'call-it-spring-6587-8460801-1(1).jpg', 'call-it-spring-6592-8460801-2(1).jpg', 'call-it-spring-6600-8460801-5(1).jpg', '2017-01-04 15:50:27'),
(71, 4, 10, 7, 0, 'Nike Womens Nike Air Max Thea Shoes', 1429000, 22, '- Tekstil<br />\r\n- Putih<br />\r\n- Round toe<br />\r\n- Tali depan<br />\r\n- Phylon sole', 'Nyaman dan stylish dengan Nike. WMNS Air Max Thea dilengkapi dengan cushioning yang ringan dan empuk serta desain low-cut profile untuk memanjakan kaki saat berjalan.', 30, 0, '1 Pasang Nike Womens Nike Air Max Thea Shoes', 'nike-7477-4321021-1(1).jpg', 'nike-7478-4321021-2(1).jpg', 'nike-7481-4321021-6(1).jpg', '2017-01-04 16:50:52'),
(72, 4, 10, 7, 0, 'New Balance Women 996 Sneakers', 1399000, 4, '- Sintetis, tekstil<br />\r\n- Warna biru<br />\r\n- Round toe<br />\r\n- Detail tali<br />\r\n- Insole tekstil<br />\r\n- Sol rubber<br />\r\n', 'Menciptakan penampilan terlihat trendi dan sporty terlihat mudah saat mengenkan koleksi lifestyle sneaker dari New Balance. Women 996 Sneakers menampilkan kombinasi warna indah yang tidak hanya melengkapi gaya mix-and-match tetapi juga menambah perhatian.', 20, 0, '1 Pasang New Balance Women 996 Sneakers', 'new-balance-4269-3620621-1(1).jpg', 'new-balance-4270-3620621-2(1).jpg', 'new-balance-4272-3620621-6(1).jpg', '2017-01-04 16:53:32'),
(73, 4, 10, 7, 36, 'Asics Tiger GELSAGA', 1990000, 10, '- Genuine leather<br />\r\n- Kombinasi hitam dan abu-abu<br />\r\n- Round toe<br />\r\n- Tali depan<br />\r\n- Insole sintetis<br />\r\n- Rubber outsole<br />\r\n- Produk unisex', 'Ciptakan nuansa urban di setiap momen dengan Asics Tiger. GELSAGA menampilkan desain yang ikonik dalam kombinasi tekstur, warna dan motif yang memberi statement di setiap langkah.', 30, 0, '1 Pasang Asics Tiger GELSAGA', 'asics-tiger-7401-0571911-1(2).jpg', 'asics-tiger-1531-0571911-2(1).jpg', 'asics-tiger-1548-0571911-6(1).jpg', '2017-01-04 16:55:00'),
(74, 4, 10, 7, 65, 'Puma IGNITE V2 Womens Running Shoes', 1499000, 4, '<br />\r\n- Tekstil<br />\r\n- Warna hitam<br />\r\n- Round toe<br />\r\n- Detail tali<br />\r\n- Insole tekstil<br />\r\n- Sol rubber<br />\r\n', 'Pilihan sepatu lari terbaik dari Puma. IGNITE V2 Womens Running Shoes menampilkan material superior cushioning dan warna sporty. Cocok dikenakan saat berlari.', 15, 0, '1 Pasang Puma IGNITE V2 Womens Running Shoes', 'puma-5896-6039521-1(1).jpg', 'puma-5897-6039521-2(1).jpg', 'puma-5902-6039521-6(1).jpg', '2017-01-04 16:57:42'),
(75, 4, 10, 7, 53, 'Laced Up Platform Trainers', 399000, 5, '- Sintetis<br />\r\n- Hitam<br />\r\n- Round toe<br />\r\n- Tali depan<br />\r\n- Sole sintetis<br />\r\n- Tinggi platform 4cm', 'Tampi kasual dengan Something Borrowed untuk OOTD yang lebih sophisticated. Menampilkan desain trainer klasik, Laced Up Platform Trainers terlihat charming dengan detail grained finish dalam warna netral solid.<br />\r\n', 5, 0, '1 Pasang Laced Up Platform Trainers', 'something-borrowed-2568-3171721-1(1).jpg', 'something-borrowed-2569-3171721-2(1).jpg', 'something-borrowed-2573-3171721-6(1).jpg', '2017-01-04 17:01:44'),
(76, 4, 10, 7, 36, 'Asics Tiger Gel-Lyte III-Shoes', 1699000, 15, '- Genuine suede, sintetis<br />\r\n- Warna indian ink<br />\r\n- Round toe<br />\r\n- Tali depan<br />\r\n- Insole tekstil<br />\r\n- Sol rubber<br />\r\n', 'Tampil unbeatable dengan Gel-Lyte III-Shoes ASICS Tiger yang hadir dalam pilihan warna atraktif. Koleksi ini menampilkan konstruksi no-Sew inovatif dan siluet original. GELÂ®-Cushioning serta Split-Tongue memberikan rasa nyaman optimal.<br />\r\n', 0, 0, '1 Pasang Asics Tiger Gel-Lyte III-Shoes', 'asics-tiger-4632-9388421-1(1).jpg', 'asics-tiger-4632-9388421-2(1).jpg', 'asics-tiger-4636-9388421-6(1).jpg', '2017-01-04 17:03:20'),
(77, 4, 10, 7, 65, 'Puma R698 Remaster Sneakers', 1399000, 10, '- Faux suede, mesh tekstil<br />\r\n- Warna biru<br />\r\n- Round toe<br />\r\n- Detail tali<br />\r\n- 6 pasang eyelets<br />\r\n- Insole tekstil<br />\r\n- Sol rubber<br />\r\n- Produk unisex', 'Power up your walk with R698 Remaster Sneakers Puma. Terbuat dari bahan berkualitas, koleksi ini menampilkan detail mesh yang nyaman.', 15, 0, '1 Pasang Puma R698 Remaster Sneakers', 'puma-5823-8139521-1(1).jpg', 'puma-5824-8139521-2(1).jpg', 'puma-5829-8139521-6(1).jpg', '2017-01-04 17:05:28'),
(78, 4, 10, 7, 54, 'Skechers Go Walk 3', 899000, 14, '- Fabric<br />\r\n- Warna navy, putih<br />\r\n- Almond toe<br />\r\n- Slip-on style<br />\r\n- Teknologi GOga MatÂ®<br />\r\n- Desain memory foam<br />\r\n- Fabric insole<br />\r\n- Sol rubber', 'Go Walk 3 by Skechers', 0, 0, '1 Pasang Skechers Go Walk 3', 'skechers-0370-0599921-1(1).jpg', 'skechers-0371-0599921-2.jpg', 'skechers-0372-0599921-4.jpg', '2017-01-04 17:07:30'),
(79, 4, 10, 7, 58, 'adidas originals gazelle', 1599000, 10, '- Pig skin<br />\r\n- Kuning<br />\r\n- Round toe<br />\r\n- Tali depan<br />\r\n- Sol rubber', '<br />\r\nUltimate simplicity for three decades and counting. adidas originals gazelle dengan three stripe warna kontras sebagai ciri khas dari nuansa 90â€™s yang siap melengkapi gaya kasual.<br />\r\n', 0, 0, '1 Pasang adidas originals gazelle', 'adidas-6329-5541721-1(1).jpg', 'adidas-6330-5541721-2(1).jpg', 'adidas-6334-5541721-6(1).jpg', '2017-01-04 17:09:25'),
(80, 4, 10, 7, 36, 'Asics Tiger Gel-Lyte V-Shoes', 1899000, 20, '- nubuck leather, sintetis<br />\r\n- Warna burgundy<br />\r\n- Round toe<br />\r\n- Tali depan<br />\r\n- Insole tekstil<br />\r\n- Sol rubber<br />\r\n- Produk unisex', 'Salah satu koleksi ASIC Tiger favorit. Gel-Lyte V-Shoes menampilkan kembali desain klasik dan material sintetis berdetail diamond mesh, aksen perforasi, panel quarter mono sock-liner, dan GELÂ® technology lengkap dengan speckled midsole dan molded TPU heel yang memberikan rasa nyaman sepanjang hari.', 0, 0, '1 Pasang Asics Tiger Gel-Lyte V-Shoes', 'asics-tiger-7368-7020721-1(1).jpg', 'asics-tiger-7369-7020721-2.jpg', 'asics-tiger-7370-7020721-4.jpg', '2017-01-04 17:11:12'),
(81, 4, 10, 7, 36, 'Asics Tiger Gel-Kayano Trainer', 2299000, 17, '- Pigskin suede<br />\r\n- Abu-abu tua<br />\r\n- Round toe<br />\r\n- Tali depan<br />\r\n- Insole sintetis<br />\r\n- Rubber outsole', 'Didesain untuk high performance runner di tahun 1993, Asics Tiger membuatnya lebih modern dan urban untuk melengkapi kebutuhan street look Anda. Gel-Kayano Trainer dilengkapi dengan armored shells dan molded upper side panel untuk meningkatkan proteksi dan mobilitas dengan material premium bernuansa monokrom.', 0, 0, '1 Pasang Asics Tiger Gel-Kayano Trainer', 'asics-tiger-1947-2120721-1(1).jpg', 'asics-tiger-1948-2120721-2(1).jpg', 'asics-tiger-1950-2120721-6(1).jpg', '2017-01-04 17:13:14'),
(82, 4, 7, 7, 54, 'Skechers Go Mini Flex', 859000, 12, '- Fabric<br />\r\n- Warna hitam, abu-abu<br />\r\n- Almond toe<br />\r\n- Slip-on style<br />\r\n- Teknologi GOga MatÂ®<br />\r\n- Desain memory foam<br />\r\n- Fabric insole<br />\r\n- Sol rubber', 'Go Mini Flex by Skechers<br />\r\n', 0, 0, '1 Pasang Skechers Go Mini Flex', 'skechers-0378-8499921-1(1).jpg', 'skechers-0379-8499921-2(1).jpg', 'skechers-0382-8499921-6(1).jpg', '2017-01-04 17:14:49'),
(83, 4, 7, 7, 49, 'Triset Shoes Slip On Shoes', 389900, 4, '- Kanvas<br />\r\n- Warna hitam<br />\r\n- Almond toe<br />\r\n- Gussets elastis<br />\r\n- Slip-on style<br />\r\n- Insole sintetis<br />\r\n- Sol sintetis', 'Lengkapi casual look dengan koleksi footwer trendi dari Triset Shoes. Slip On Shoes menampilkan material durable dan sol anti selip yang nyaman dikenakan seharian. Pilihan tepat fashion seeker masa kini.<br />\r\n', 0, 0, '1 Pasang Triset Shoes Slip On Shoes', 'triset-shoes-0979-9088721-1(1).jpg', 'triset-shoes-0979-9088721-2(1).jpg', 'triset-shoes-0981-9088721-6(1).jpg', '2017-01-04 17:16:34'),
(84, 4, 7, 7, 48, 'Yongki Komaladi Rimon Sneakers', 499900, 20, '- Kulit sintetis<br />\r\n- Hitam<br />\r\n- Round toe<br />\r\n- Side elastic<br />\r\n- Platform: 5 cm<br />\r\n- Detail stitching<br />\r\n- Sol rubber<br />\r\n', 'Rimon Sneakers by Yongki Komaladi', 10, 0, '1 Pasang Yongki Komaladi Rimon Sneakers', 'yongki-komaladi-8207-1098721-1(1).jpg', 'yongki-komaladi-8208-1098721-2(1).jpg', 'yongki-komaladi-8211-1098721-6(1).jpg', '2017-01-04 17:19:12'),
(85, 4, 7, 7, 48, 'Yongki Komaladi Kity Sneakers', 459000, 4, '- Sintetis<br />\r\n- Warna gold<br />\r\n- Round toe<br />\r\n- Side elastic<br />\r\n- Platform: 5 cm<br />\r\n- Sol rubber', 'Kity Sneakers by Yongki Komaladi', 20, 0, '1 Pasang Yongki Komaladi Kity Sneakers', 'yongki-komaladi-8199-2098721-1(1).jpg', 'yongki-komaladi-8200-2098721-2(1).jpg', 'yongki-komaladi-8206-2098721-6(1).jpg', '2017-01-04 17:20:28'),
(86, 4, 7, 7, 53, 'Studded Slip On Espadrille Flats', 299000, 5, '- Upper sintetis<br />\r\n- Warna hitam<br />\r\n- Round toecap<br />\r\n- Slip on style<br />\r\n- Detail studded<br />\r\n- Insole sintetis<br />\r\n- Outsole sintetis<br />\r\n- Tinggi platform: 2cm ', 'Studded Slip On Espadrille Flats by Something Borrowed', 33, 0, '1 Pasang Studded Slip On Espadrille Flats', 'something-borrowed-2494-6775421-1(1).jpg', 'something-borrowed-2494-6775421-2(1).jpg', 'something-borrowed-2495-6775421-6(1).jpg', '2017-01-04 17:21:48'),
(88, 4, 7, 7, 53, 'Studded Slip On Espadrille Flats', 349000, 2, '- Upper sintetis<br />\r\n- Warna hitam<br />\r\n- Round toecap<br />\r\n- Slip on style<br />\r\n- Insole sintetis<br />\r\n- Outsole sintetis<br />\r\n- Tinggi platform: 2.7cm ', 'Pleated Platform Espadrille Flats by Something Borrowed<br />\r\n', 15, 0, '1 Pasang Studded Slip On Espadrille Flats', 'something-borrowed-2401-8775421-1(1).jpg', 'something-borrowed-2402-8775421-2(1).jpg', 'something-borrowed-2403-8775421-6(1).jpg', '2017-01-04 17:27:57'),
(89, 4, 7, 7, 48, 'Yongki Komaladi Lissa Skate Shoes', 429000, 2, '- Kulit sintetis<br />\r\n- Warna gun<br />\r\n- Round toe<br />\r\n- Detail elastic side<br />\r\n- Sol rubber<br />\r\n', 'Koleksi slip on Yongki Komaladi Lissa Skate Shoes hadir dalam nuansa glossy yang luxurious. Dipertegas dengan aksen snake skin yang trendi. ', 5, 0, '1 Pasang Yongki Komaladi Lissa Skate Shoes', 'yongki-komaladi-1893-2937321-1(1).jpg', 'yongki-komaladi-1896-2937321-2(1).jpg', 'yongki-komaladi-1908-2937321-6(1).jpg', '2017-01-04 17:30:22'),
(90, 4, 7, 7, 53, 'Twisted Bow Slip On Flats', 319000, 5, '- Sintetis<br />\r\n- Warna beige<br />\r\n- Round toe<br />\r\n- Slip-on style<br />\r\n- Insole sintetis<br />\r\n- Sol sintetis', 'Pilihan bersahabat untuk berbagai kesempatan eksotik. Pointed Tri Bar Ballerina Flats Something Borrowed menampilkan aksen triple metal bar yang membuat slip-on ini edgy dan keren.<br />\r\n', 0, 0, '1 Pasang Twisted Bow Slip On Flats', 'something-borrowed-1771-1060721-1(1).jpg', 'something-borrowed-1772-1060721-2(1).jpg', 'something-borrowed-1775-1060721-6(1).jpg', '2017-01-04 17:31:43'),
(91, 4, 7, 7, 48, 'Yongki Komaladi Killo Slip On', 399000, 6, '- Sintetis<br />\r\n- Hitam<br />\r\n- Round toe <br />\r\n- Insole sintetis <br />\r\n- Sol rubber ', 'Bring your basic sneakers to the higher level with these pair. Killo Slip On dari Yongki Komaladi menghadirkan sneakers yang eye catchy dengan detail beads dalam nuansa warna bold. Sophisticated! ', 15, 0, '1 Pasang Yongki Komaladi Killo Slip On', 'yongki-komaladi-4845-8809421-1(1).jpg', 'yongki-komaladi-4845-8809421-2(1).jpg', 'yongki-komaladi-4848-8809421-6(1).jpg', '2017-01-04 17:33:23'),
(92, 4, 7, 7, 56, 'Vans Classic Slip-On Sneaker Shoes', 649000, 4, '- Kanvas<br />\r\n- Hitam<br />\r\n- Rond toe<br />\r\n- Side gussets elastis<br />\r\n- Insole sintetis<br />\r\n- Rubber outsole<br />\r\n- Produk unisex', 'Classic piece never fail you! Vans Classic Slip-On Sneaker Shoes mengembalikan basic skater look yang terlihat keren di setiap momen kasual.<br />\r\n', 0, 0, '1 Pasang Vans Classic Slip-On Sneaker Shoes', 'vans-2622-361915-1(1).jpg', 'vans-2623-361915-2(1).jpg', 'vans-2629-361915-6(1).jpg', '2017-01-04 17:36:32'),
(93, 4, 8, 7, 58, 'adidas eezay marbled w', 279000, 20, '', 'Nyaman Di pakai sehari-hari', 0, 0, '1 Pasang adidas eezay marbled w', 'adidas-9356-3551721-1(1).jpg', 'adidas-9357-3551721-2(1).jpg', 'adidas-9360-3551721-6(1).jpg', '2017-01-04 17:38:31'),
(94, 4, 8, 7, 53, 'Rope Laced High Gladiator Sandals', 299000, 5, '- Upper sintetis<br />\r\n- Lace-up and pin-buckle ankle strap fastening<br />\r\n- Inner sintetis<br />\r\n- Detail tali<br />\r\n- Multi straps<br />\r\n- Outsole sintetis<br />\r\n- Tinggi shaft: 40cm <br />\r\n', 'A pair of go-with-everything sandals when the occasion demands something exotic, there is no room for mistake with these by Something Borrowed. Styled in grain finish with lace-up fastening to give these sandals extra edge and laidback cool.<br />\r\n', 5, 0, '1 Pasang Rope Laced High Gladiator Sandals', 'something-borrowed-9717-5330721-1(1).jpg', 'something-borrowed-9717-5330721-2(1).jpg', 'something-borrowed-9720-5330721-6(1).jpg', '2017-01-04 17:41:33'),
(95, 4, 8, 7, 58, 'adidas adilette cf+ training gr w', 439000, 12, '- Sintetis<br />\r\n- Hitam<br />\r\n- Open toe<br />\r\n- Wide strap<br />\r\n- Cloudfoam insole<br />\r\n- Rubber outsole<br />\r\n', 'Nyaman setelah training session yang panjang dengan sepasang sandal empuk yang stylish. adidas performance adilette cf+ training gr w hadir dengan cloudfoam ultra footbed untuk memanjakan kaki yang lelah dalam motif bunga sebagai girly hint.', 15, 0, '1 Pasang adidas adilette cf+ training gr w', 'adidas-2138-6730521-1(1).jpg', 'adidas-2138-6730521-2(1).jpg', 'adidas-2141-6730521-6(1).jpg', '2017-01-04 17:43:05'),
(96, 4, 8, 7, 53, 'Perforated Platform Sliders', 279000, 15, '- Upper sintetis<br />\r\n- Warna putih<br />\r\n- Inner sintetis<br />\r\n- Detail perforated<br />\r\n- Desain cross straps<br />\r\n- Rubber outsole<br />\r\n- Tinggi platform: 3cm <br />\r\n', 'Taking the classic silhouette to the extra height, like literally, with a pair of Something Borrowed sliders in the OOTD. The cross-strap construction features a perforated detailing to make the tribal style looking urban cool.', 15, 0, '1 Pasang Perforated Platform Sliders', 'something-borrowed-2831-4130721-4(1).jpg', 'something-borrowed-2830-4130721-3(1).jpg', 'something-borrowed-2832-4130721-5(1).jpg', '2017-01-04 17:45:06'),
(97, 4, 8, 7, 53, 'Tassled Cross Over Sliders', 249000, 10, '- Upper sintetis<br />\r\n- Warna hitam<br />\r\n- Slip-on<br />\r\n- Detail tassel<br />\r\n- Double straps<br />\r\n- Insole sintetis<br />\r\n- Outsole sintetis<br />\r\n- Tinggi hak: 1.2cm ', 'The next time you want to go out and about, opt for these sandals from Something Borrowed. Simple in design, this chic pair features a slip-on design finished with a fun tassel decorations on front, giving it the perfect blend of casual and fun.', 10, 0, '1 Pasang Tassled Cross Over Sliders', 'something-borrowed-1311-8650721-1(1).jpg', 'something-borrowed-1313-8650721-2(1).jpg', 'something-borrowed-1317-8650721-6(1).jpg', '2017-01-04 17:50:44'),
(98, 4, 9, 7, 53, 'Pointed Pumps With Contrast Heel', 299000, 5, '- Upper sintetis<br />\r\n- Insole sintetis<br />\r\n- Aksen snake skin<br />\r\n- Rubber outsole<br />\r\n- Pointed toe<br />\r\n- Tinggi hak: 11cm <br />\r\n', 'Donning colours that contrast are never a fashion dont when it comes to Something Borroweds Pointed Pumps with Contrast Heels. They feature a snake-skin finish, suitable for those who love animal prints. ', 0, 0, '1 Pasang Pointed Pumps With Contrast Heel', 'something-borrowed-2253-4650721-1(1).jpg', 'something-borrowed-2253-4650721-2(1).jpg', 'something-borrowed-2255-4650721-5(1).jpg', '2017-01-04 17:52:31'),
(99, 4, 9, 7, 53, 'Double Strap Lace Up Heels', 299000, 5, '<br />\r\n- Upper tekstil<br />\r\n- Warna hitam<br />\r\n- Detail silver tone, slim straps<br />\r\n- Detail tali<br />\r\n- Insole sintetis<br />\r\n- Outsole sintetis<br />\r\n- Tinggi hak: 11cm <br />\r\n', 'Double Strap Lace Up Heels by Something Borrowed', 5, 0, '1 Pasang Double Strap Lace Up Heels', 'something-borrowed-8951-0624911-1(1).jpg', 'something-borrowed-8952-0624911-2(1).jpg', 'something-borrowed-8955-0624911-5(1).jpg', '2017-01-04 17:55:24'),
(100, 4, 9, 7, 48, 'Yongki Komaladi Verra Heels', 429000, 2, '- Kulit sintetis<br />\r\n- Warna perak<br />\r\n- Open toe<br />\r\n- Insole sintetis<br />\r\n- Sol sintetis<br />\r\n- Tinggi hak: 6cm', 'Semakin stylish dengan Yongki Komaladi. Verra Heels menampilkan desain asimetris chic pada bagian atas dengan nuansa warna klasik yang on point.', 15, 0, '1 Pasang Yongki Komaladi Verra Heels', 'yongki-komaladi-4861-3937321-1(1).jpg', 'yongki-komaladi-4864-3937321-2(1).jpg', 'yongki-komaladi-4874-3937321-5(1).jpg', '2017-01-04 17:58:52'),
(101, 4, 9, 7, 53, 'Metallic Heeled Pumps', 299000, 5, '<br />\r\n- Upper sintetis<br />\r\n- Warna gunmetal<br />\r\n- Pointed toe<br />\r\n- Slip-on<br />\r\n- Insole sintetis<br />\r\n- Outsole sintetis<br />\r\n<br />\r\n- Tinggi hak: 9.2cm <br />\r\n', 'Metallic Heeled Pumps by Something Borrowed<br />\r\n', 15, 0, '1 Pasang Metallic Heeled Pumps', 'something-borrowed-8555-1858421-1(1).jpg', 'something-borrowed-8556-1858421-2(1).jpg', 'something-borrowed-8557-1858421-5(1).jpg', '2017-01-04 18:00:59'),
(102, 4, 9, 7, 53, 'Pointed Ankle Wrap Laced Heel', 299000, 3, '- Kulit sintetis<br />\r\n- Hitam<br />\r\n- Pointed toe<br />\r\n- Ankle strap<br />\r\n- Tinggi hak: 9 cm<br />\r\n- Insole sintetis<br />\r\n- Sol sintetis', 'Tampil classic glam dengan Something Borrowed Pointed Ankle Wrap Laced Heel, heels dengan desain sleek lace up dan pilihan warna tegas. ', 0, 0, '1 Pasang Pointed Ankle Wrap Laced Heel', 'something-borrowed-9947-2624911-1(1).jpg', 'something-borrowed-9948-2624911-2(1).jpg', 'something-borrowed-9950-2624911-5(1).jpg', '2017-01-04 18:03:15');
INSERT INTO `produk` (`idproduk`, `idkat`, `idkategori`, `idpenjual`, `idbrand`, `namaproduk`, `hargaproduk`, `stok`, `spesifikasi`, `detailproduk`, `diskon`, `berat`, `isikotak`, `foto1`, `foto2`, `foto3`, `tglpost`) VALUES
(103, 4, 6, 7, 53, 'Studded Ankle Strap Pointed Flats', 199000, 2, '- Faux suede<br />\r\n- Warna beige<br />\r\n- Pointed toe<br />\r\n- Ankle strap with pin buckle and hook fastening<br />\r\n- Insole sintetis<br />\r\n- Sol sinteti<br />\r\n- Tinggi hak: 0.6cm', 'Edgy dan chic, Studded Ankle Strap Pointed Flats Something Borrowed menyempurnakan penampilan. Berbahan faux suede, koleksi ini menampilkan detail studded pada trim yang grungy glam.', 25, 0, '1 Pasang Studded Ankle Strap Pointed Flats', 'something-borrowed-3342-9750721-1(1).jpg', 'something-borrowed-3343-9750721-2(1).jpg', 'something-borrowed-3346-9750721-6(1).jpg', '2017-01-05 09:55:48'),
(104, 4, 6, 7, 48, 'Yongki Komaladi Yudha Flats', 359000, 3, '- Kulit sintetis<br />\r\n- Warna apricot<br />\r\n- Round toe<br />\r\n- Insole sintetis<br />\r\n- Sol rubber', 'Ubah tampilan agar terlihat lebih chic lewat koleksi pilihan Yongki Komaladi. Yudha Flats, flats berdesain simpel dengan aplikasi gold tone. Love it!', 15, 0, '1 Pasang Yongki Komaladi Yudha Flats', 'yongki-komaladi-4840-9809421-1(1).jpg', 'yongki-komaladi-4841-9809421-2(1).jpg', 'yongki-komaladi-4844-9809421-6(1).jpg', '2017-01-05 09:57:44'),
(105, 4, 6, 7, 49, 'Triset Shoes Flat Shoes', 389900, 10, '- PU<br />\r\n- Warna hitam<br />\r\n- Almond toe<br />\r\n- Detail leather lace di bagian depan<br />\r\n- Slip-on style<br />\r\n- Inosle sintetis<br />\r\n- Sol sintetis', 'Be more stylish with the help of fancy shoes. Flat Shoes Triset Shoes menampilkan material durable dan detail leather lace di bagian depan yang on point.<br />\r\n', 0, 0, '1 Pasang Triset Shoes Flat Shoes', 'triset-shoes-6325-7188721-1(1).jpg', 'triset-shoes-6326-7188721-2(1).jpg', 'triset-shoes-6330-7188721-6(1).jpg', '2017-01-05 09:59:19'),
(106, 4, 6, 7, 53, 'Scallop Eyelet Round Toe Flat', 299000, 4, '- Kulit sintetis <br />\r\n- Hitam, gold <br />\r\n- Round toe <br />\r\n- Insole kulit sintetis dengan detail logo <br />\r\n- Sol sintetis ', 'Add a hint of attitude to your look with these flats by Something Borrowed. Sepatu flat dengan desain simpel berkombinasi dengan detail wavy trim dan gold tone metal eyelets untuk edgy finish. So adorable! ', 0, 0, '1 Pasang Scallop Eyelet Round Toe Flat', 'something-borrowed-4599-5533701-1(1).jpg', 'something-borrowed-4600-5533701-2(1).jpg', 'something-borrowed-4606-5533701-6(1).jpg', '2017-01-05 10:00:53'),
(107, 4, 6, 7, 53, 'T-Strap Contrast Toe Cap Pointed Flats', 229000, 2, '- Sintetis<br />\r\n- Abu-abu<br />\r\n- Pointed toe<br />\r\n- Ankle strap dengan buckle<br />\r\n- Sole sintetis', 'Tampil statementable dengan koleksi dari Something Borrowed. T-Strap Contrast Toe Cap Pointed Flats mengombinasikan desain klasik dengan tekstur dan metallic finish yang memberi kesan elegan pada gaya kasual.', 0, 0, '1 Pasang T-Strap Contrast Toe Cap Pointed Flats', 'something-borrowed-2643-9371721-1(1).jpg', 'something-borrowed-2644-9371721-2(1).jpg', 'something-borrowed-2649-9371721-6(1).jpg', '2017-01-05 10:02:46'),
(108, 4, 6, 7, 73, 'Melissa Just Dance', 1050000, 5, '<br />\r\n- Melflex<br />\r\n- Hitam<br />\r\n- Pointed toe<br />\r\n- Melflex sole', 'Mudah saja untuk tampil stylish dan nyaman jika ada Melisa di daftar OOTD! Just Dance mungkin terlihat simpel, namun detail warna tegas memberi ilusi sebuah peter pan collar yang semakin manis berkat ornamen pita kecil.', 0, 0, '1 Pasang Melissa Just Dance', 'melissa-3394-7334021-1(1).jpg', 'melissa-3394-7334021-2.jpg', 'melissa-3395-7334021-5.jpg', '2017-01-05 10:05:28'),
(109, 4, 6, 7, 74, 'Velvet Play! STELLA d Orsay Flats', 199900, 3, '- Upper sintetis<br />\r\n- Warna hitam, silver<br />\r\n- Pointed toe<br />\r\n- Ankle strap dengan detail pin buckle fastening<br />\r\n- Embossed print<br />\r\n- Inner sintetis<br />\r\n- Outsole sintetis ', 'Play! STELLA d Orsay Flats by Velvet<br />\r\n', 15, 0, '1 Pasang Velvet Play! STELLA d Orsay Flats', 'velvet-2803-7818521-1(1).jpg', 'velvet-2803-7818521-2(1).jpg', 'velvet-2804-7818521-6(1).jpg', '2017-01-05 10:08:13'),
(110, 4, 6, 7, 73, 'Melissa Vivienne Westwood Anglomania + Melissa Queen', 1750000, 8, '<br />\r\n- Melflex<br />\r\n- Oranye<br />\r\n- Peep toe<br />\r\n- Melflex sole', 'Koleksi klasik Melissa dikreasikan kembali oleh Vivienne Westwood di musim ini. Anatomical dan nyaman, Vivienne Westwood Anglomania + Melissa Queen tampil cute dengan ornamen berbentuk hati yang sempurna untuk setiap momen.', 0, 0, '1 Pasang Melissa Vivienne Westwood Anglomania + Melissa Queen', 'melissa-3249-6034021-1(1).jpg', 'melissa-3250-6034021-2(1).jpg', 'melissa-3251-6034021-5(1).jpg', '2017-01-05 10:09:43'),
(111, 4, 6, 7, 53, 'Ankle Cuff Pointed Flats', 229000, 9, '- Polyurethane upper<br />\r\n- Warna hitam<br />\r\n- Pointed toe<br />\r\n- Restleting belakang<br />\r\n- Polyurethane inner<br />\r\n- Rubber outsole<br />\r\n- Tinggi heels: 1.5cm', 'Casual style takes on the minimalist update in these Something Borrowed shoes. An upgrade from the strappy cuffed silhouette features cut-out detailing to give these flats an edgy presence and elegance.', 15, 0, '1 Pasang Ankle Cuff Pointed Flats', 'something-borrowed-3992-0411421-1(1).jpg', 'something-borrowed-3993-0411421-2(1).jpg', 'something-borrowed-3996-0411421-6(1).jpg', '2017-01-05 10:11:58'),
(112, 4, 6, 7, 73, 'Melissa Ballet Bow', 1150000, 2, '- Ukuran 35,36,37,38,39,40', 'Melissa Ballet Bow membawa keajaiban dari sepatu ballet dengan bentuk depan yang kotak serta aksen pita. Tersedia dalam 2 pilihan warna, cobalah untuk memakainya dengan penampilan yang urban untuk memberikan kontras yang kreatif.', 0, 0, '1 Pasang Melissa Ballet Bow', 'melissa-1105-7752411-1(1).jpg', 'melissa-1105-7752411-2(1).jpg', 'melissa-1107-7752411-5(1).jpg', '2017-01-05 10:13:48'),
(113, 4, 8, 7, 73, 'Melissa Tube Sandal + Jeremy Scott', 1150000, 5, '- Melflex<br />\r\n- Biru<br />\r\n- Open toe<br />\r\n- Cross strap<br />\r\n- Adjustable sling back<br />\r\n- Melflex sole<br />\r\n', 'Inflatable floats menjadi inspirasi dari kreasi Jerremy Scot kali ini. Melissa Tube Sandal + Jeremy Scott menampilkan detail inflation valve pada chain-inspired strap yang nyaman dan stylish untuk saat santai.', 0, 0, '1 Pasang Melissa Tube Sandal + Jeremy Scott', 'melissa-6660-4480521-1(1).jpg', 'melissa-6660-4480521-2(1).jpg', 'melissa-6661-4480521-6(1).jpg', '2017-01-05 10:15:24'),
(115, 4, 8, 7, 72, 'Call It Spring Caowien Sandals', 780000, 4, '- Polyurethane<br />\r\n- Silver<br />\r\n- Open toe<br />\r\n- Self-tie fastening<br />\r\n- Insole sintetis<br />\r\n- Sol sintetis<br />\r\n', 'Simplicity with bohemian spirit! Call It Spring Caowien Sandals, sandal dengan perpaduan desain criss-cross strap dan sol ringan yang nyaman untuk day off.', 30, 0, '1 Pasang Call It Spring Caowien Sandals', 'call-it-spring-7097-3109311-1(1).jpg', 'call-it-spring-7098-3109311-2(1).jpg', 'call-it-spring-7101-3109311-6(1).jpg', '2017-01-05 10:28:12'),
(116, 4, 8, 7, 73, 'Melissa Beach Slide', 1050000, 20, '- Melflex<br />\r\n- Hijau<br />\r\n- Open toe<br />\r\n- Wide strap<br />\r\n- Sol melflex<br />\r\n', 'Melissa Beach Slide dari Mellissa dirancang dengan material glossy. Sandal ini dilengkapi dengan insole berdesain cekung untuk memberikan kenyamanan.', 20, 0, '1 Pasang Melissa Beach Slide', 'melissa-3399-0434021-1(1).jpg', 'melissa-3400-0434021-2(1).jpg', 'melissa-3401-0434021-5(1).jpg', '2017-01-05 10:30:28'),
(117, 4, 8, 7, 0, 'Teva W Original Universal Hoy', 899000, 30, '- Poliester webbing<br />\r\n- Warna pink<br />\r\n- Open toe<br />\r\n- Sling back dengan velcro closure<br />\r\n- Durabrasion rubber sole', 'Tampil atraktif dengan koleksi sandal dari Teva. W Original Universal Hoy didesain oleh Emily Hoy, seorang seniman yang menampilkan motif aztec dengan palet warna signaturenya untuk menciptakan desain yang vibrant.', 0, 0, '1 Pasang Teva W Original Universal Hoy', 'teva-9299-0294821-1(2).jpg', 'teva-3042-0294821-2(1).jpg', 'teva-3046-0294821-6(1).jpg', '2017-01-05 10:32:08'),
(118, 4, 8, 7, 23, 'FILA Vitara', 239000, 15, '- Rubber<br />\r\n- Coklat tua<br />\r\n- Open toe<br />\r\n- Y strap<br />\r\n- Rubber sole<br />\r\n', 'Koleksi sandal dari FILA Vitara terlihat cute dengan print burung hantu dalam nuansa warna atraktif. A must have item!<br />\r\n', 5, 0, '1 Pasang FILA Vitara', 'fila-5606-6628911-1(1).jpg', 'fila-5607-6628911-2(1).jpg', 'fila-5611-6628911-6(1).jpg', '2017-01-05 10:34:53'),
(119, 4, 9, 7, 75, 'Rubi Pyke Heels', 499900, 7, '- Upper sintetis<br />\r\n- Putih<br />\r\n- Ankle strap dengan detail pin buckle fastening<br />\r\n- Inner sintetis<br />\r\n- Outsole sintetis<br />\r\n- Tinggi platform:3cm<br />\r\n- Tinggi heels:7cm ', 'The highly coveted staple to give your OOTD a casual statement, style it up chic with a pair of Pyke Heels by Rubi. Featuring eyelet embellished upper on the chunky silhouette to make a charming accompaniment from day to night.', 30, 0, '1 Pasang Rubi Pyke Heels', 'rubi-3601-0826521-1(1).jpg', 'rubi-3602-0826521-2(1).jpg', 'rubi-3603-0826521-5(1).jpg', '2017-01-05 10:37:44'),
(120, 4, 9, 7, 74, 'Velvet Play! Lizbeth Pointed Toe Heels', 399000, 4, '- Upper sintetis <br />\r\n- Hitam <br />\r\n- Pointed toecap <br />\r\n- Insole sintetis dan tekstil <br />\r\n- Sol sintetis <br />\r\n- Tinggi hak: 9.7cm ', 'Play! Lizbeth Pointed Toe Heels siap untuk melengkapi penampilan yang simpel dan feminin. Koleksi Velvet ini memadukan material shiny dengan desain yang sleek. Super classic! ', 0, 0, '1 Pasang Velvet Play! Lizbeth Pointed Toe Heels', 'velvet-3350-2869821-1(1).jpg', 'velvet-3351-2869821-2(1).jpg', 'velvet-3354-2869821-5(1).jpg', '2017-01-05 10:38:57'),
(121, 4, 9, 7, 53, 'Something Borrowed Patent Foil Pointed Toe Pump Heels', 299000, 8, '- Upper sintetis<br />\r\n- Warna hitam<br />\r\n- Pointed toe<br />\r\n- Slip-on style<br />\r\n- Inner sintetis<br />\r\n- Outsole sintetis<br />\r\n<br />\r\n- Tinggi hak: 10cm <br />\r\n', 'Patent Foil Pointed Toe Pump Heels by Something Borrowed<br />\r\n', 15, 0, '1 Pasang Something Borrowed Patent Foil Pointed Toe Pump Heels', 'something-borrowed-3621-9381521-1(1).jpg', 'something-borrowed-3621-9381521-2(1).jpg', 'something-borrowed-3622-9381521-5(1).jpg', '2017-01-05 10:40:28'),
(122, 4, 9, 7, 74, 'Velvet Occasion Bow Heels', 499900, 11, '- Upper sintetis<br />\r\n- Warna silver<br />\r\n- Ankle strap dengan detail pin buckle fastening<br />\r\n- Inner sintetis<br />\r\n- Detail folded bow front<br />\r\n- Outsole sintetis', 'Cherish the precious moments with a pair of Velvet shoes as you commemorate the life events. Specially designed for the Occasions collection with polished upper accompanied by folded bow front to give these heels a luxurious statement and elegance.', 0, 0, '1 Pasang Velvet Occasion Bow Heels', 'velvet-8683-4972521-1(1).jpg', 'velvet-8684-4972521-2(1).jpg', 'velvet-8687-4972521-5(1).jpg', '2017-01-05 10:44:01'),
(123, 4, 9, 7, 74, 'Velvet Occasion Jewelled Peep Toe Heels', 499900, 4, '- Sintetis<br />\r\n- Warna silver<br />\r\n- Peep toe<br />\r\n- Tinggi hak: 11 cm<br />\r\n- Insole dan sol luar sintetis', 'Tampil glamour dengan koleksi dazzling pair dari Velvet. Occasion Jewelled Peep Toe Heels hadirkan desain embellished upper yang sparkling.', 20, 0, '1 Pasang Velvet Occasion Jewelled Peep Toe Heels', 'velvet-3782-9381721-1(1).jpg', 'velvet-3783-9381721-2(1).jpg', 'velvet-3788-9381721-5(1).jpg', '2017-01-05 10:45:31'),
(124, 4, 11, 7, 53, 'High Laced Up Riding Boots', 549000, 11, '- Upper sintetis <br />\r\n- Hitam <br />\r\n- Round toe <br />\r\n- Detail resleting <br />\r\n- Inner sintetis <br />\r\n- Sol rubber <br />\r\n- Tinggi hak: 2.4cm <br />\r\n- Tinggi shaft: 18.8cm ', 'Jangan sampai musim hujan menghalangi Anda untuk bergaya! Koleksi dari Something Borrowed, High Laced Up Riding Boots menciptakan siluet rugged yang dilengkapi detail tali untuk kesan yang lebih stylish.', 0, 0, '1 Pasang High Laced Up Riding Boots', 'something-borrowed-7170-3390921-1(1).jpg', 'something-borrowed-7170-3390921-2(1).jpg', 'something-borrowed-7173-3390921-6(1).jpg', '2017-01-05 10:47:00'),
(125, 4, 11, 7, 74, 'Velvet Short Stacked Heel Boots', 399000, 3, '- Tekstil<br />\r\n- Warna camel<br />\r\n- Rounded toe<br />\r\n- Resleting samping<br />\r\n- Sole sintetis<br />\r\n- Tinggi hak 4 cm', 'Tampi lebih sempurna dengan koleksi chic boots dari Something Borrowed. Short Stacked Heel Boots menampilkan brushed finish dalam warna earthy untuk nuansa musim gugur yang statementable.<br />\r\n', 15, 0, '1 Pasang Velvet Short Stacked Heel Boots', 'velvet-7427-0388721-1(1).jpg', 'velvet-7428-0388721-2(1).jpg', 'velvet-7432-0388721-5(1).jpg', '2017-01-05 10:48:18'),
(126, 4, 11, 7, 74, 'Velvet Zip Detail Booties', 519000, 7, '- Upper sintetis <br />\r\n- Hitam <br />\r\n- Round toecap <br />\r\n- Insole sintetis <br />\r\n- Sol sintetis <br />\r\n- Detail aksen double buckle <br />\r\n- Detail resleting samping <br />\r\n- Tinggi hak: 7cm <br />\r\n- Tinggi shaft: 12.5cm <br />\r\n- Opening circumference: 28cm ', 'Velvet merilis koleksi stylish boots untuk para wanita. Zip Detail Booties menampilkan aksen double buckle dan resleting samping dalam nuansa gold tone. Ciptakan tampilan edgy pada gaya sehari-hari. ', 0, 0, '1 Pasang Velvet Zip Detail Booties', 'velvet-2474-3401921-1(1).jpg', 'velvet-2475-3401921-2(1).jpg', 'velvet-2477-3401921-5(1).jpg', '2017-01-05 10:49:33'),
(127, 4, 11, 7, 53, 'Over The Knee High Suede Boots', 709000, 4, '- Suede upper<br />\r\n- Coklat<br />\r\n- Pointed toe<br />\r\n- Suede inner<br />\r\n- Sol luar sintetis<br />\r\n- Tinggi hak: 4 cm<br />\r\n- Tinggi shaft: 58 cm<br />\r\n- Boot circumference: 40 cm', 'Glam up your style dengan koleksi terbaik dari Something Borrowed. Over The Knee High Suede Boots cocok untuk tampilan chic and stylish kapan pun.<br />\r\n', 0, 0, '1 Pasang Over The Knee High Suede Boots', 'something-borrowed-1772-1669821-1(1).jpg', 'something-borrowed-1773-1669821-2(1).jpg', 'something-borrowed-1776-1669821-6(1).jpg', '2017-01-05 10:51:29'),
(128, 4, 11, 7, 53, 'Double Side Buckle Ankle Boots by Something Borrowed', 449000, 4, '- Polyurethane upper<br />\r\n- Warna coklat<br />\r\n- Round toe<br />\r\n- Restleting samping<br />\r\n- Detail double buckle<br />\r\n- Leather inner<br />\r\n- Rubber sole<br />\r\n<br />\r\n- Tinggi hak: 4.4cm<br />\r\n- Tinggi shaft: 10.8cm ', 'Double Side Buckle Ankle Boots by Something Borrowed', 38, 0, '1 Pasang Double Side Buckle Ankle Boots by Something Borrowed', 'something-borrowed-6038-0281521-1.jpg', 'something-borrowed-6039-0281521-2.jpg', 'something-borrowed-6040-0281521-5.jpg', '2017-01-05 10:53:32'),
(129, 4, 11, 7, 53, 'High Cut Laced Up Creeper Boots', 519000, 4, '- Upper sintetis <br />\r\n- Biru <br />\r\n- Round toe<br />\r\n- Detail tali <br />\r\n- 8 pasang mata detail tali <br />\r\n- Inner sintetis <br />\r\n- Sol sintetis <br />\r\n- Tinggi hak: 4.6cm <br />\r\n- Tinggi shaft: 13cm ', 'Nothings wrong with rocker style. High Cut Laced Up Creeper Boots dari Something Borrowed memadukan material glossy dan detail tali untuk mempertegas penampilan. ', 0, 0, '1 Pasang High Cut Laced Up Creeper Boots', 'something-borrowed-5142-4590921-1(1).jpg', 'something-borrowed-5143-4590921-2(1).jpg', 'something-borrowed-5146-4590921-6(1).jpg', '2017-01-05 10:56:55'),
(130, 4, 11, 7, 53, 'Knee High Buckle Boots', 629000, 24, '- Upper sintetis <br />\r\n- Cokelat <br />\r\n- Round toe <br />\r\n- Detail resleting <br />\r\n- Inner sintetis <br />\r\n- Sol rubber <br />\r\n- Tinggi hak: 2.5cm <br />\r\n- Tinggi shaft: 34.9cm <br />\r\n- Boot circumference: 37cm ', 'Ingin tampil berbeda dari biasanya? Knee High Buckle Boots dari Something Borrowed hadir dengan desain knee high boots yang dilengkapi aksen pin buckle dalam warna yang solid. ', 0, 0, '1 Pasang Knee High Buckle Boots', 'something-borrowed-5177-7590921-1(1).jpg', 'something-borrowed-5178-7590921-2(1).jpg', 'something-borrowed-5180-7590921-5(1).jpg', '2017-01-05 10:58:09'),
(131, 4, 11, 7, 74, 'Velvet Low Heel Cowboy Boots', 519000, 2, '- Sintetis<br />\r\n- Warna taupe<br />\r\n- Round toe<br />\r\n- High top<br />\r\n- Tinggi shaft: 19 cm<br />\r\n- Heels: 2.7 cm<br />\r\n- Insole sintetis dan tekstil<br />\r\n- Sol sintetis', 'Low Heel Cowboy Boots koleksi Velvet, sepatu dengan aksen smooth grainy dan detail crumple effect. Chic and edgy.<br />\r\n', 0, 0, '1 Pasang Velvet Low Heel Cowboy Boots', 'velvet-3363-1001921-1(1).jpg', 'velvet-3363-1001921-2(1).jpg', 'velvet-3366-1001921-5(1).jpg', '2017-01-05 10:59:29'),
(132, 4, 11, 7, 74, 'Velvet Vesta Calf Boots with Heel', 599000, 13, '- Suede sintetis<br />\r\n- Abu-abu<br />\r\n- Almond toecap<br />\r\n- Insole dan sol luar sintetis<br />\r\n- Tinggi hak: 8.5 cm<br />\r\n- Tinggi shaft: 27 cm', 'Ganti koleksi boots tradisional dengan gaya alternatif yang lebih seksi. Vesta Calf Boots with Heel dari Velvet, sepatu dengan aksen faux suede yang wonderful pada desain soft body dan detail chunky block heels. Sempurna untuk efek statement making.', 0, 0, '1 Pasang Velvet Vesta Calf Boots with Heel', 'velvet-7665-2101921-1(1).jpg', 'velvet-7666-2101921-2(1).jpg', 'velvet-7667-2101921-5(1).jpg', '2017-01-05 11:03:09'),
(133, 4, 11, 7, 74, 'Velvet Mid-Height Low Heel Buckle Boots', 599000, 3, '- Upper sintetis <br />\r\n- Hitam <br />\r\n- Round toecap <br />\r\n- Detail resleting <br />\r\n- Insole sintetis <br />\r\n- Sol sintetis <br />\r\n- Tinggi hak: 4.8cm <br />\r\n- Tinggi shaft: 19cm <br />\r\n- Opening circumference: 32.5cm <br />\r\n', 'Mid-Tinggi Low Heel Buckle Boots dari Velvet didesain khusus untuk para wanita yang ingin tampilan maskulin. Aksen double buckle dalam nuansa silver tone mampu menambah kesan bold statement. <br />\r\n', 5, 0, '1 Pasang Velvet Mid-Height Low Heel Buckle Boots', 'velvet-5137-2001921-1(1).jpg', 'velvet-5138-2001921-2(1).jpg', 'velvet-5140-2001921-5(1).jpg', '2017-01-05 11:05:44'),
(134, 6, 17, 7, 76, 'hxsxh', 560000, 55, 'bagus', 'tahan air ada lampu', 5, 0, 'sepad', '20170530_113406.jpg', '', '', '2017-12-13 16:21:30');

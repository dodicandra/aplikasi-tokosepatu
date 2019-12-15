-- phpMyAdmin SQL Dump
-- version 2.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 28. Nopember 2019 jam 18:30
-- Versi Server: 5.0.45
-- Versi PHP: 5.2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `db_sepatu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `idbayar` int(11) NOT NULL auto_increment,
  `idorder` int(11) NOT NULL,
  `namabankpengirim` varchar(50) NOT NULL,
  `namapengirim` varchar(50) NOT NULL,
  `jumlahtransfer` double NOT NULL,
  `tgltransfer` date NOT NULL default '0000-00-00',
  `namabankpenerima` varchar(50) NOT NULL,
  `bukti` text NOT NULL,
  PRIMARY KEY  (`idbayar`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`idbayar`, `idorder`, `namabankpengirim`, `namapengirim`, `jumlahtransfer`, `tgltransfer`, `namabankpenerima`, `bukti`) VALUES
(2, 1, 'Mandiri', 'Ruri Kurnia', 1599000, '2017-01-04', 'Mandiri', ''),
(3, 5, 'mandiru', 'ruri', 1051000, '2017-12-13', 'mandiri', '20170530_112845.jpg'),
(4, 8, 'mandiri', 'dodi', 2000000, '0000-00-00', 'toko_sepatu', 'VANS.jpg');

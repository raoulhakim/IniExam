-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Bulan Mei 2023 pada 15.25
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iniexam`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`username`, `password`) VALUES
('hakim', 'hakim123'),
('mazmur', 'mazmur123'),
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `question`
--

CREATE TABLE `question` (
  `id` varchar(50) NOT NULL,
  `soal` varchar(500) NOT NULL,
  `opt1` varchar(500) NOT NULL,
  `opt2` varchar(500) NOT NULL,
  `opt3` varchar(500) NOT NULL,
  `opt4` varchar(500) NOT NULL,
  `jawaban` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `question`
--

INSERT INTO `question` (`id`, `soal`, `opt1`, `opt2`, `opt3`, `opt4`, `jawaban`) VALUES
('1', 'Apa fungsi compiler pada pemrograman?', 'Merubah bahasa pemrograman menjadi bahasa yang dapat dibaca mesin komputer', 'Melakukan pengecekan sintaks bahasa pemrograman', 'Menjalankan kode program agar bisa tampil di layar komputer', 'Melakukan transformasi file bahasa pemrograman menjadi file terkompresi', 'Merubah bahasa pemrograman menjadi bahasa yang dapat dibaca mesin komputer'),
('2', 'Mengapa java disebut bahasa pemrograman yang multiplatform?', 'Java memiliki mekanisme untuk meng-compile menjadi .class', 'Java berjalan di Java Virtual Machine sehingga tidak bergantung pada Sistem Operasinya', 'Java dapat di execute berkali-kali', 'Java berjalan di Java Development Kit sehingga tidak bergantung pada Sistem Operasinya', 'Java berjalan di Java Virtual Machine sehingga tidak bergantung pada Sistem Operasinya'),
('3', 'Berikut ini adalah yang bukan termasuk java literal', 'String Literal', 'Character Literal', 'Integer Literal', 'Numerical Literal', 'Numerical Literal'),
('4', 'Tipe Data Primitif adalah', 'Tipe data yang hanya bisa menampung nilai yang terbatas', 'Tipe data yang tidak di turunkan dari objek apapun', 'Tipe data yang sudah ada dari sejak awal adanya pemrograman', 'Tipe data yang tidak bisa dimodifikasi', 'Tipe data yang tidak di turunkan dari objek apapun'),
('5', 'Berikut ini manakah yang bukan termasuk tipe data Integer Literals', 'int', 'byte', 'short', 'float', 'float'),
('6', 'Variable adalah', 'Tempat menyimpan data yang dapat berubah-ubah', 'Tempat menyimpan data', 'Tempat menyimpan data yang tidak dapat berubah-ubah', 'Tempat menyimpan data bertipe static', 'Tempat menyimpan data yang dapat berubah-ubah'),
('7', 'Manakah dibawah ini cara deklarasi variable yang benar pada pemroragaman java', 'int nilai = 10.5;', 'nilai int;', 'nilai = 10;', 'int nilai;', 'int nilai;'),
('8', 'Berikut ini manakah yang bukan jenis operator pada pemrograman pada java', '+, -, *, /', '/* */', 'a++, a--', '10%2', '/* */'),
('9', 'Manakah dibawah ini pernyataan yang salah tentang class', 'Nama Class harus sama dengan nama file', 'Class harus memiliki method main agar bisa dijalankan', 'Penulisan Class boleh diawali dengan Angka', 'Penulisan Class boleh diakhiri dengan Angka', 'Penulisan Class boleh diawali dengan Angka'),
('10', 'Tempat untuk data masukan yang akan diolah dalam fungsi adalah', 'Variabel', 'Konstanta', 'Parameter', 'Array', 'Parameter');

-- --------------------------------------------------------

--
-- Struktur dari tabel `student`
--

CREATE TABLE `student` (
  `absen` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kelas` varchar(200) NOT NULL,
  `kelamin` varchar(200) NOT NULL,
  `nohp` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `benar` int(100) NOT NULL,
  `nilaiakhir` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `student`
--

INSERT INTO `student` (`absen`, `nama`, `kelas`, `kelamin`, `nohp`, `email`, `benar`, `nilaiakhir`) VALUES
('21', 'Raoul Khakim Annur', '4A', 'Laki - Laki', '081806584780', 'raoulhakim@upi.edu', 7, 70);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

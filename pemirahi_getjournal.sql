-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 08, 2021 at 08:40 PM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemirahi_getjournal`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_12_21_124123_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `abstrak` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `abstrak`, `judul`, `doi`, `file`, `created_at`, `updated_at`) VALUES
(1, 11, 'Development of Information Technology is very important for human life, one technology that is currently growing very rapidly in the form of smartphone technology is mainly based on Android. The Android platform has become very popular, the game developers seriously take it. Game is one of the entertainment media, but this time the game can be as one media introduction Cultural Traditions Bali. Game Explore Bali is designed to introduce the Bali Cultural Traditions in seven cities in Bali Province. Traditions introduced in the game consists of Ngerebong (Denpasar), Mekotek (Badung), Okokan (Tabanan), Makepung (Jembrana), Ngedeblag (Gianyar), Megibung, Terteran, Gebug Ende (Karangasem) and Ngocang, Bukakak (Buleleng) through a description and picture information. Based on the analysis by using a questionnaire that tested on 30 children for most of the samples. User knowledge about the Bali Cultural Traditions increased by 74% from the initial percentage of 67% through the information displayed on the Game Explore Bali.', 'Pengenalan Tradisi Budaya Bali melalui Aplikasi Game Explore Bali Berbasis Android', '-', 'Eot2N8ZIpF.pdf', '2020-12-22 13:30:31', '2021-01-06 22:55:06'),
(16, 3, 'Gasing merupakan permainan tradisional Masyarakat Melayu sejak dahulu. Gasing merupakan sejenis permainan yang dapat berputar pada porosnya, sambil menyeimbangkan pada satu titik. Permainan gasing tradisional seiring perkembangan zaman mulai ditinggalkan. Masyarakat lebih mengenal gasing modern yang sering disebut Beyblade. Solusi yang ditawarkan adalah media dalam bentuk game berbasis Android untuk mempermudah masyarakat dalam mendapatkan informasi mengenai permainan tradisional gasing. Game Adu Gasing merupakan sebuah game dengan genre fighting yang mengambil konsep dari permainan Gasing Indonesia. Fitur yang terdapat pada Game Adu Gasing yaitu select speed dan get power. Accelerometer berfungsi untuk menggerakkan gasing player. Penerapan Artificial Intelligence dari Game Adu Gasing yaitu diterapkan pada karakter musuh. Karakter gasing dari lawan atau musuh diberi kecerdasan buatan seolah-olah hidup agar dapat bergerak dan bertarung dengan gasing player. Kualitas Game Adu Gasing berdasarkan hasil penilaian responden adalah baik, dengan hasil persentase aspek grafis sebesar 60%, aspek rekayasa perangkat lunak sebesar 73%, aspek entertainment game sebesar 50% dan aspek content game sebesar 65%.', 'RANCANG BANGUN GAME TRADISIONAL “ADU GASING” PADA PLATFORM ANDROID', 'https://ojs.unud.ac.id/index.php/merpati/article/view/26875', '3bYKgUtEML.pdf', '2020-12-22 22:47:54', '2021-01-07 06:09:51'),
(17, 3, '123', '123 dwi.', '123', '', '2020-12-23 17:32:25', '2020-12-23 14:14:56'),
(20, 1, '1', '1456 dekwik20', '1', '', '2020-12-23 13:54:48', '2020-12-23 14:13:49'),
(21, 1, '2', '234 dekwik20', '2', '', '2020-12-23 13:56:16', '2020-12-23 14:13:34'),
(22, 3, '234', '234', '234', '', '2020-12-24 06:57:30', '2020-12-24 06:57:30'),
(23, 3, 'ghhft', 'ttg', 'hiij', '', '2020-12-24 07:12:27', '2020-12-24 07:12:27'),
(24, 3, 'guii', 'yyhjj', 'gilngy', '', '2020-12-24 07:12:42', '2020-12-24 07:12:42'),
(25, 3, 'gtgrfrv', 'f3exxw', 'xeexecr', '', '2020-12-24 07:13:29', '2020-12-24 07:13:29'),
(26, 3, 'guiij', 'fhjjj', 'gyik', '', '2020-12-24 07:19:02', '2020-12-24 07:19:02'),
(27, 3, 'hhgdg', 'tthh', 'fewrt', '', '2020-12-24 07:20:04', '2020-12-24 07:20:04'),
(28, 3, 'rtuhs', 'ghjkk', 'hiooj', '', '2020-12-24 07:20:29', '2020-12-24 07:20:29'),
(29, 3, 'rtuhs', 'ghjkk', 'hiooj', '', '2020-12-24 07:20:40', '2020-12-24 07:20:40'),
(30, 3, 'rtuhs', 'ghjkk', 'hiooj', '', '2020-12-24 07:21:00', '2020-12-24 07:21:00'),
(31, 3, 'yui', '6yyy', 'ghjk', '', '2020-12-24 07:21:18', '2020-12-24 07:21:18'),
(32, 3, 'gujft', 'tyuh', 'tyujj', '', '2020-12-24 07:22:48', '2020-12-24 07:22:48'),
(33, 1, 'hahahehe', 'hahahehe aja', 'hahahehe aja', '', '2020-12-24 07:23:42', '2020-12-24 07:23:42'),
(34, 1, 'hahahehe', 'hahahehe aja', 'hahahehe aja', '', '2020-12-24 07:24:16', '2020-12-24 07:24:16'),
(35, 1, 'hahahehe', 'hahahehe aja', 'hahahehe aja', '', '2020-12-24 07:25:32', '2020-12-24 07:25:32'),
(36, 1, 'hahahehe', 'hahahehe aja', 'hahahehe aja', '', '2020-12-24 07:27:28', '2020-12-24 07:27:28'),
(37, 1, 'hahahehe', 'hahahehe aja', 'hahahehe aja', '', '2020-12-24 07:28:13', '2020-12-24 07:28:13'),
(38, 1, 'hahahehe', 'hahahehe aja', 'hahahehe aja', '', '2020-12-24 07:28:33', '2020-12-24 07:28:33'),
(39, 1, 'hahahehe', 'hahahehe aja', 'hahahehe aja', '', '2020-12-24 07:28:55', '2020-12-24 07:28:55'),
(40, 1, 'hahahehe', 'hahahehe aja', 'hahahehe aja', '', '2020-12-24 07:29:35', '2020-12-24 07:29:35'),
(41, 1, 'hahahehe', 'hahahehe aja', 'hahahehe aja', '', '2020-12-24 07:29:51', '2020-12-24 07:29:51'),
(42, 1, 'hahahehe', 'hahahehe aja', 'hahahehe aja', '', '2020-12-24 07:30:00', '2020-12-24 07:30:00'),
(43, 1, 'hahahehe', 'hahahehe aja', 'hahahehe aja', '', '2020-12-24 07:30:29', '2020-12-24 07:30:29'),
(44, 1, 'hahahehe', 'hahahehe aja', 'hahahehe aja', '', '2020-12-24 07:30:37', '2020-12-24 07:30:37'),
(45, 3, 'fgukk', 'rhjj', 'gjlk', '', '2020-12-24 07:30:53', '2020-12-24 07:30:53'),
(46, 1, 'hahahehe', 'hahahehe aja', 'hahahehe aja', '', '2020-12-24 07:31:09', '2020-12-24 07:31:09'),
(47, 3, 'jjhg', 'thj', 'jkkk', '', '2020-12-24 07:32:34', '2020-12-24 07:32:34'),
(48, 3, 'o', 'cing', 'cing', '', '2020-12-24 07:33:11', '2020-12-24 07:33:11'),
(49, 3, 'o', 'cing', 'cing', '', '2020-12-24 07:33:12', '2020-12-24 07:33:12'),
(50, 3, 'hjhfg', 'rrgg', 'hjjg', '', '2020-12-24 07:37:24', '2020-12-24 07:37:24'),
(51, 1, 'asdad', 'asdasd', 'adsadad', '', '2020-12-24 07:37:37', '2020-12-24 07:37:37'),
(52, 1, 'asdads', 'asdasda', 'asdada', '', '2020-12-24 07:39:49', '2020-12-24 07:39:49'),
(53, 1, 'asdsad', 'asdasd', 'adads', '', '2020-12-24 07:40:55', '2020-12-24 07:40:55'),
(54, 1, 'adada', 'dasasd', 'adasda', '', '2020-12-24 07:44:46', '2020-12-24 07:44:46'),
(55, 1, 'asdasd', 'sadsad', 'asdasd', '', '2020-12-24 07:46:18', '2020-12-24 07:46:18'),
(56, 1, 'asdad', 'asdsad', 'adsada', '', '2020-12-24 07:48:14', '2020-12-24 07:48:14'),
(57, 1, 'asdad', 'asdsad', 'adsada', '', '2020-12-24 07:48:15', '2020-12-24 07:48:15'),
(58, 1, 'asdad', 'asa', 'adsad', '', '2020-12-24 07:49:58', '2020-12-24 07:49:58'),
(59, 1, 'adad', 'asdasdaaaa', 'adada', '', '2020-12-24 07:52:45', '2020-12-24 07:52:45'),
(60, 1, 'hahahehe', 'hahahehe aja', 'hahahehe aja', '', '2020-12-24 07:53:13', '2020-12-24 07:53:13'),
(61, 1, 'aaaa', 'aaaa', 'aaaa', '', '2020-12-24 07:54:18', '2020-12-24 07:54:18'),
(62, 1, 'hahahehe', 'hahahehe aja', 'hahahehe aja', '', '2020-12-24 07:54:45', '2020-12-24 07:54:45'),
(63, 1, 'sssss', 'ssss', 'ssssss', '', '2020-12-24 07:55:09', '2020-12-24 07:55:09'),
(64, 1, 'wwww', 'wwww', 'wwww', '', '2020-12-24 07:56:03', '2020-12-24 07:56:03'),
(65, 1, 'ssss', 'aaaa', 'aaaa', '', '2020-12-24 07:56:55', '2020-12-24 07:56:55'),
(66, 3, 'cuuvvu', 'fugigig', 'uvguggi', '', '2020-12-24 07:57:24', '2020-12-24 07:57:24'),
(67, 3, 'DekwikBaru', 'Dekwik', '12341234', '0ShNdh9sj5.pdf', '2020-12-27 05:57:19', '2020-12-27 05:57:19'),
(68, 1, 'dekwik', 'coba upload jurnal', '12345', 'Lhklqw1pWf.pdf', '2021-01-02 22:25:28', '2021-01-02 22:25:28'),
(69, 1, '1', 'dekwik jurnal 2', '123', 'p7zjnzWn1B.pdf', '2021-01-02 22:27:27', '2021-01-02 22:27:27'),
(71, 11, 'Carving art has an important role which is used as decoration of buildings, holy places in Bali and functional objects, but the efforts for cultural preservation still tend to be less. Tradition, decoration, and technology are the perfect combination to help preserve the variety of carving art, so that the application of Bali Carving Implementation in Two Dimentional Object is built. This application uses canvas which is an element of HTML that allows to manipulate bitmap area directly by using JavaScript. Library Fabric.js is used to simplify the manipulation of bitmaps on HTML5 canvas elements. Fabric.js allows the creation of objects, and image filters. Remove white is one filter that can be done. Remove white is used to remove white color, where the threshold value is used as the limit value of the application to remove the white color in the image so as to maximize the carving registration process on the application. The resulting application can be run on the browser and gives an illustration result of the carving implementation that can be saved in PNG file format.', 'Rancang Bangun Aplikasi Implementasi Ukiran Bali pada Objek Bangun Datar', '10.24843/JIM.2017.v05.i02.p06', 'VlNKMFAcb9.pdf', '2021-01-06 05:51:06', '2021-01-06 10:08:59'),
(72, 1, '1', 'Dekwik', '1', 'QXe6NhbshG.pdf', '2021-01-06 08:30:00', '2021-01-06 08:30:00'),
(73, 1, 'Coronary heart disease included a group of cardiovascular, and it is a leading cause of death in low and middle-income countries. Risk factors for coronary heart disease are divided into two, namely primary and secondary risk factors. The need to identify characteristics or risk factors in heart disease patients by making the classification model. The modeling of heart disease classification to know how the system can able to reach the best prediction accuracy. Fisher\'s Discriminant Ratio is one of the methods for feature selection, which is used to get high discriminant features. While Backpropagation is one of the classification models to recognize patterns in heart disease patients. The experiment results showed that the accuracy of the classification model using 13 original features reached 92%. By reducing the features based on the score of the feature selection, then the lowest feature was removed from original features and left there were 12 features involved in the classification model which the accuracy increased to 93%. Furthermore, the results of determining the threshold (accuracy does not decrease continuously) and consider the effect of eliminating the lowest features that are considered quite fluctuating on accuracy. The accuracy reached 90% by eliminating the five lowest features and left eight existing features.', 'Feature-Driven Decision Support System for Heart Disease Prediction Based on Fisher\'s Discriminant Ratio and Backpropagation Algorithm', 'https://doi.org/10.24843/LKJITI.2020.v11.i02.p01', 'SBPiu8qxqe.pdf', '2021-01-06 08:30:05', '2021-01-06 09:02:01'),
(74, 3, 'Indonesia merupakan target pasar otomotif terbesar di dunia. Perkembangan dunia otomotif di Indonesia khususnya di Bali, di Kota Denpasar semakin meningkat. Pertumbuhan dibidang otomotif membuat semakin banyak bengkel yang terdapat di Kota Denpasar. Aplikasi Sistem informasi Geografis Bengkel di Kota Denpasar Berbasis Android dibuat untuk memberikan informasi mengenai keberadaan bengkel yang ada di Kota Denpasar yang dapat diakses melalui smartphone dengan Platform Android. Sistem dapat diakses menggunakan smartphone dengan platform Android yang dipadukan dengan Google Maps API yang dapat membantu konsumen untuk mendapatkan informasi yang lengkap mengenai bengkel. Konsumen dapat mengetahui jalur yang harus dilalui dengan menggunakan fitur direction pada aplikasi. Konsumen dapat mengetahui informasi jasa dan spare part yang ada di bengkel yang dipilih. Pemilik bengkel dapat melakukan pembaharuan data informasi bengkel dan promo event sebagai sarana promosi.', 'Aplikasi Sistem Informasi Geografis Bengkel di Kota Denpasar Berbasis Android', 'https://ojs.unud.ac.id/index.php/merpati/article/view/17742', 'ANptfeX8hO.pdf', '2021-01-06 09:36:56', '2021-01-06 09:36:56'),
(80, 3, 'Apartemen menjadi hunian yang diminati masyarakat sehingga banyak dibangun oleh para pengembang properti. Pengembangan apartemen yang pesat menimbulkan persaingan dalam pemasaran, sehingga diperlukan cara pemasaran yang lebih inovatif untuk menarik pembeli. Penerapan teknologi augmented reality untuk membuat katalog apartemen menjadi lebih interaktif dapat menjadi solusi pemasaran apartemen yang inovatif. Penelitian yang dikembangkan berfokus pada penerapan Augmented Reality di katalog pemasaran apartemen dalam bentuk aplikasi berbasis Android. Denah apartemen pada katalog divisualisasikan melalui model 3-dimensi dengan penambahan informasi dan fitur-fitur yang interaktif. Aplikasi dikembangkan dengan marker dinamis. Aplikasi memiliki 3 scene yaitu Main Menu, About dan Panduan. Dua fitur utama pada aplikasi adalah tracking marker, yaitu fitur untuk mengenali marker dan rotate, fitur untuk memutar objek 3-dimensi secara 360 derajat. Aplikasi diujicobakan pada dua buah smartphone dengan spesifikasi berbeda. Hasil pengujian menunjukkan bahwa aplikasi telah berhasil mempermudah pengguna melihat visualisasi katalog tanpa mengunjungi apartemen asli.', 'Penerapan Augmented Reality dalam Visualisasi Katalog Apartemen Berbasis Android', 'https://doi.org/10.24843/JIM.2018.v06.i02.p01', 'qTI8qS7SZg.pdf', '2021-01-06 09:40:09', '2021-01-06 09:40:09'),
(81, 3, 'Kalender adalah suatu sistem pemberian nama pada sebuah periode waktu. Kalender Bali atau Kalendar Caka Bali sangat penting dalam kehidupan sosial budaya masyarakat Bali. Beberapa hari suci seperti Hari Raya Nyepi dan Siwaratri ditetapkan berdasarkan Kalender Caka. Aplikasi Kalender Bali berbasis mobile application pada android platform ini diciptakan untuk dapat membantu masyarakat yang memerlukan dalam menentukan waktu yang sudah lampau, waktu sekarang, dan waktu yang akan datang dengan bantuan komputer. Penelitian ini bertujuan untuk merancang pemodelan dan membangun sebuah Aplikasi Kalender Bali berbasis Android yang dapat digunakan untuk melihat informasi penanggalan bali, hari raya, hari nasional, otonan berdasarkan perhitungan Kalender Caka Bali. Perancangan diakukan dengan metode perangkat pemodelan sistem serta penelusuran algoritma perhitungan wewarigan, purnama, tilem dan sasih dari sejumlah pustaka Kalender Bali.Analisa dilakukan dengan menguji perhitungan wewaran, sasih, purnama, tilem, pencarian otonan yang dapat di akses dengan mudah melalui Android.Untuk meningkatkan kehandalan informasi, diperlukan adanya penelitian dan pengembangan lebih lanjut yang dapat menghasilkan pencarian padewasaan dan penentuan tanggal padewasaan terbaik pada Android.', 'Aplikasi Kalender Bali Berbasis Mobile Application pada Android Platform', 'https://103.29.196.112/index.php/merpati/article/view/17831', 'J1FoTXt8ZH.pdf', '2021-01-06 09:42:46', '2021-01-06 09:42:46'),
(83, 11, 'Banjar merupakan organisasi kemasyarakatan masyarakat tradisional Bali. Kegiatan dalam suatu banjar relatif padat, seperti upacara pernikahan, kematian, gotong royong, piodalan (upacara adat bali) dan kegiatan-kegiatan lainnya yang menyangkut dengan warga banjar. Salah satu hal penting dan sangat riskan didalam manajemen kegiatan banjar adalah absensi. Sistem absensi kegiatan setiap banjar berbeda-beda menurut awig-awig (peraturan banjar). Proses pencatatan manajemen absensi kegiatan banjar dari dulu sampai saat ini masih menggunakan cara manual yaitu pencatatan menggunakan buku. Penelitian ini melakukan uji coba menggunakan aplikasi sistem informasi berbasis web untuk mempermudah proses absensi kegiatan banjar. Berdasarkan hasil uji coba, sistem informasi manajemen absensi mampu mempermudah proses absensi dengan menggunakan laptop/smartphone dan mampu menghasilkan laporan yang tepat dan akurat.', 'Rancang Bangun Sistem Manajemen Absensi Kegiatan Banjar Berbasis Web', 'https://ojs.unud.ac.id/index.php/merpati/article/view/17885', 'w92dXr8jyi.pdf', '2021-01-06 10:07:02', '2021-01-06 10:07:02'),
(85, 1, 'Batu akik merupakan sebuah mineral alamiah dari prosedur geologi yang memiliki komponen kimiawi. Pemakaian perhiasan yang menggunakan batu akik popular di kalangan masyarakat umum karena keindahan dan keunikannya yang juga menjadi salah satu daya tarik bagi peminat batu akik. Penelitian Aplikasi Pengenalan Batu Akik Berbasis Android merupakan sistem image retrieval berbasis Android yang dirancang mampu memberikan kemudahan bagi peminat batu akik untuk mencari informasi dengan cepat mengenai batu akik, salah satunya adalah untuk mencari jenis-jenis batu akik. Pencarian jenis-jenis batu akik pada aplikasi dilakukan dengan Metode HSV dan YCbCr menggunakan histogram warna untuk mengenali warna, Gabor Filter untuk mengenali tekstur dan perhitungan Euclidean Distance untuk mencari kecocokan dari citra query dengan citra database. Uji coba dan analisa pada fitur warna HSV dan YCbCr menghasilkan akurasi sebesar 60,4% dan 59,6%, sedangkan Fitur tekstur Filter Gabor mendapatkan hasil akurasi pada theta 0 derajat sebesar 46,8%, theta 45 derajat sebesar 45,6%, theta 90 derajat sebesar 45.2% dan theta 135 derajat sebesar 42,8%. Kombinasi deteksi Metode HSV menggunakan histogram warna dan Filter Gabor mendapatkan akurasi lebih baik yaitu sebesar 60% dibandingkan Metode YCbCr menggunakan histogram warna dan Filter Gabor dengan hasil akurasi sebesar 56%.', 'Aplikasi Pengenalan Batu Akik Berbasis Android', 'https://doi.org/10.24843/JIM.2017.v05.i03.p04.', '7or5lL18We.pdf', '2021-01-06 10:13:00', '2021-01-06 10:16:16'),
(87, 3, 'Kepribadian adalah sifat dan tingkah laku khas seseorang yang membedakan seseorang dengan orang lain. Salah satu metode yang digunakan psikolog adalah Big Five Personality untuk mendapatkan jenis-jenis kepribadian. Sistem pakar adalah sistem informasi yang berisi pengetahuan dari pakar yang dapat melakukan analisa seperti seorang pakar. Sistem Pakar Kepribadian Diri dengan metode Big Five dapat memudahkan seseorang melakukan tes kepribadian tanpa psikolog, dan memudahkan psikolog dalam melakukan tes kepribadian karena tanpa melakukan perhitungan manual. Sistem Pakar Kepribadian Diri merupakan sistem berbasis web yang memberikan hasil tes kepribadian seseorang dan juga memberikan informasi tentang jenis-jenis kepribadian yang ada. Sistem ini diimplementasikan menggunakan metode forward chaining untuk mendapatkan kesimpulan dari suatu kepribadian. Output sistem pakar tes kepribadian berupa jenis-jenis kepribadian berdasarkan Big Five Personality. Persentase kepercayaan yang diperoleh berdasarkan kuesioner terhadap sistem pakar ini yaitu tingkat akurasi 74%.', 'Sistem Pakar Analisis Kepribadian Diri dengan Metode Certainty Factor', 'aug. 2015. ISSN 2685-2411', 'OqwxDJvudx.pdf', '2021-01-07 07:24:15', '2021-01-07 07:24:15'),
(88, 1, 'Persaingan diantara perusahaan-perusahaan semakin ketat, persaingan tersebut tidak hanya untuk sesama perusahaan-perusahaan di dalam negeri, tetapi juga perusahaan dari negara lain. Masing-masing perusahaan memiliki strategi untuk menghadapi persaingan tersebut. Salah satu strategi yang sekarang banyak digunakan oleh perusahaan yaitu dengan menggunakan teknologi informasi (TI). Banyak program aplikasi TI yang digunakan oleh perusahaan untuk mendukung aktifitasnya, salah satunya yaitu SAP (System Application Product in Data Processing). PT. Merpati Nusantara Airlines memahami pentingnya penggunaan teknologi informasi untuk memperkuat aktivitas back office nya, oleh karena itu PT. Merpati Nusantara mengimplementasikan SAP. Implementasi SAP disamping dapat menghasilkan keuntungan kompetitif bagi perusahaan juga memiliki resiko tingkat kegagalan yang tinggi. Oleh karena itu setiap perusahaan, dalam hal ini PT. Merpati Nusantara Airlines wajib memahami faktor-faktor kritis dan penting untuk suksesnya implementasi SAP. Penelitian dalam tesis ini bertujuan untuk mengetahui faktor-faktor kritis dan penting apa saja untuk suksesnya implementasi SAP di PT. Merpati Nusantara Airlines dan juga mengetahui berapa faktor yang dianggap kritis dan penting untuk suksesnya implementasi SAP. Penelitian ini termasuk kedalam penelitian deskriptif. Obyek penelitian ini adalah data tentang persepsi pihak-pihak yang berhubungan dengan implementasi SAP di PT. Merpati Nusantara Airlines. Alat penelitian yang digunakan yaitu kuisioner yang akan dibagikan kepada pihakpihak yang memiliki kepentingan dalam implementasi SAP. Penelitian ini akan menelusuri 11 faktor kritis yang penting dalam implementasi SAP, yaitu: Sistem bisnis yang tepat dan teknologi informasi terdahulu, visi dan rencana bisnis, business process re-engineering, budaya dan program manajemen perubahan, komunikasi, susunan dan tim kerja ERP, memantau dan mengevaluasi pelaksanaan, project champion, manajemen proyek, pembangunan software dan dukungan top manajemen. Hasil dari penelitian ini menunjukkan bahwa menurut persepsi pihak PT. Merpati Nusantara ada 6 faktor yang dianggap penting untuk suksesnya implementasi SAP. Keenam faktor tersebut yaitu: (1) budaya dan program manajemen perubahan (2) susunan dan tim kerja ERP (3) komunikasi (4) visi dan rencana bisnis (5) project champion (6) bussiness process and re-engineering. Dari keenam faktor tersebut faktor dengan skor tertinggi dalam implementasi SAP adalah susunan dan tim kerja ERP (dengan rerata skor 3,93) sedangkan faktor dengan skor terendah adalah project champion (dengan rerata skor 3,58).', 'Analisis Critical Success Factors implementasi SAP :: Studi kasus pada PT Merpati Nusantara Airlines', '-', 'Df7dUhWg5w.pdf', '2021-01-07 07:25:37', '2021-01-07 07:25:37'),
(89, 14, 'In this era of global competition, companies need to shorten the production cycle, responsive to market dynamics and customer demand and to strengthen information exchange system. In this competitive environment, Enterprise Resource Planning (ERP) is very helpful in integrating the management of all the company\'s resources. In manufacturing companies such as furniture, raw materials shall be made available for the production process. Shortages of raw materials can be anticipated early through inventory information that can be accessed quickly and accurately so that the business process is still running. This study aims to assist companies in implementing ERP systems by proposing strategies and tactics to overcome the problems encountered in implementing ERP systems. ADempiere as one ERP applications can help manage the transaction data and inventory business processes to improve corporate performance. The stages are carried out in this research is to identify problems, analyze business processes, election ADempiere application modules, implementation and testing of applications. Business processes are identified consisting of sales, purchasing and production. The results of analysis of business processes described in the Business Process Modeling Notation (BPMN) and a working model of the system is shown by the use case diagram. System test results obtained by comparing the ERP system using the manual system. The test results prove that ADempiere can produce the raw material inventory information in real time, generate transaction reports purchases, sales, production, and financial reports automatically so that it can help company leaders make decisions quickly and accurately.', 'Penerapan Enterprise Resource Planning (ERP)', '10.25077/TEKNOSI.v2i3.2016.117-128', 'MmAKHLqP16.pdf', '2021-01-07 07:48:26', '2021-01-07 07:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fcm_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `photo`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `fcm_token`) VALUES
(1, 'I Kadek', 'Dwi Yatna Priyoga', '1608571326.jpg', 'dekwik20@gmail.com', NULL, '$2y$10$hLSg.DRgwu6wImdxQD2s5eX6zluKPXZUH4B8y8RXm3T6/qKzJPXLS', NULL, '2020-12-21 06:09:35', '2021-01-08 01:30:20', 'ees60SaSTfqiV2fe0xjAat:APA91bEY225fW-YfTFkGGaZH7y_lMMgpX-vFkgYLFVJ058FV6DI7fnsvjJ6sAa3XPyMK-fpjhbB3C60gHPBBrdI6tBUE_9TONMW6HPochzj0mZNohOT8UoildsSkV2bKuGl11bMsC49t'),
(3, 'Dwi', 'Yatna', '1608646492.jpg', 'kadek.dwiyatna@gmail.com', NULL, '$2y$10$adaYbwgIy3OdEmkE0J9FjeOlZdLwO4ppIMtWFEMGCc.kdfwr2f3CS', NULL, '2020-12-22 07:13:47', '2021-01-07 23:15:14', 'ewsrTMU5QGyTE3Hvh_lZaC:APA91bEnR3oBeW02_ZO0kYbnjkRtZwGTz3mDtHG-xQQyviOn0vDhv8gZlJEq3v-IJz0Waljq8YM67CTdEFUmjuaddAa-9NAoKUeK9N3rYzcrNMwlKFjq3dVj0wDtEz8wNY_4JmovcXY5'),
(6, 'Dekwik', 'Baru', '1609127142.jpg', 'kadek@gmail.com', NULL, '$2y$10$N6dBd7Yfuf5rjSLiz.9RbubFMuq.XdXBV1BLXL6zLQw0lzPemMIYG', NULL, '2020-12-27 20:45:26', '2020-12-27 20:47:12', 'fc8D9ZQ2TIuos7DvFmgbgF:APA91bHOaEJSoNI6YTH3wCrWUiONsrOWjCdeELpXUvIHcGM6LaFQ2GsS_osHgGt2xc3C3uOanhtXGYkyc3jrYaf9W8PD3V4BbKLB_71svInnRzEHRVCy-9N1ThO_Lz0Ku1hP193QKBxQ'),
(8, 'Dek', 'Wik', '1609839730.jpg', 'cobajurnal@gmail.com', NULL, '$2y$10$D0J6FiETlRCM/gSe1HVqFO3lvWOVP.6i5zQh6BjQeSXncOk/Wvlum', NULL, '2021-01-05 02:36:41', '2021-01-05 02:42:10', 'eYZ6gnJbTTSK8b4lzy8sHq:APA91bGYnvooNfuezlKtMeNxVCQXk-bddoe2uthpyeBXsKCIYfEPG6b2H9XQRxix0vY4A7Hw55Cek9zogKqTN9XxBoGYfbNXbMunk5b8G88wH5op34AgToLbq97SXPNtE5R508ZewzX5'),
(9, 'dek', 'wik', '1609847506.jpg', 'coba@login.com', NULL, '$2y$10$bKF56.AzfuCj.aWgt3gGGON62k.dcd3YLPVlCkiShL3tUOCbUWoz6', NULL, '2021-01-05 04:51:31', '2021-01-05 04:51:46', NULL),
(10, 'dekwik', 'baru', '1609848063.jpg', 'login@coba.com', NULL, '$2y$10$XQrSW155bK5Dd32Me34J4uwjv3Rbcq3Sn65gOAorh3ZUSqLGd1J.S', NULL, '2021-01-05 05:00:12', '2021-01-05 05:01:03', 'eYZ6gnJbTTSK8b4lzy8sHq:APA91bGYnvooNfuezlKtMeNxVCQXk-bddoe2uthpyeBXsKCIYfEPG6b2H9XQRxix0vY4A7Hw55Cek9zogKqTN9XxBoGYfbNXbMunk5b8G88wH5op34AgToLbq97SXPNtE5R508ZewzX5'),
(11, 'Dekwik', 'Login', '1609935819.jpg', 'login@gmail.com', NULL, '$2y$10$wvfAhyB4p.vPMChUXXJXkehyKJdaw5TkUgVcKbD2XSRwtd8xvp3u6', NULL, '2021-01-06 05:22:58', '2021-01-06 10:05:17', 'eeFfhU-uRlmRTTQQ-K3H8O:APA91bHePE7Di-zNyUSmto8VT9smIiDu3ZL3naKUb7zLzM3pMIvloNgxfuH35fRlmBkJSxquulfmNtll4ePps9cOql3LfYBcd6YvZl00pMsr0i-iucBq8EPwPD8op-2xotZEfI_631Fz'),
(12, 'Ekaaa', 'Savitriii', '1609956102.jpg', 'eka456@gmail.com', NULL, '$2y$10$vn5hgRZJUaHdDAnJIBunWebhDokT.LANL/9sTCEjCOVcm4/AH/oIG', NULL, '2021-01-06 10:48:14', '2021-01-07 19:53:26', 'cF-YFax8RruEKdKJBR5Cbw:APA91bGoX7J8qr8EsE2TzLZvXW3ok7OxQoKwjbPJE0tvZBgor-eZlGqSbZjnnYAMlJ_mnmfYn0wDyf9K1vuzGkbTUCQJC5IDQccmzup7LInD26bfevBE5o-uQHsUj80peS2SUiGldTze'),
(13, 'Diah', 'Putri', '1610030038.jpg', 'diah@gmail.com', NULL, '$2y$10$F7WyjjCiItCx3.RrtIbFg.ntIa63nGjqAE6NT3HXzN5TSdo9kAALe', NULL, '2021-01-07 07:32:58', '2021-01-07 07:33:58', NULL),
(14, 'Diah', 'Putri M', '1610030136.jpg', 'putri@gmail.com', NULL, '$2y$10$nYp0mFkXmw0P9JjcmTWMAuezlT7ZPe52pOF2nR6TLoXIz6wJnF3Nu', NULL, '2021-01-07 07:34:58', '2021-01-07 07:37:19', 'dV61Ld9kS--D5W2lPUAjqQ:APA91bGDkItKFBWhPVIEfYJKURxIqIViDZrmln_1tuUWbSYm-WderEQkM9dLKInt3jQCeFdYzpX3aseUnxXsusv3ZXQJM0j_ZMbR7DUaLqJPjHAgx6-AGCJvojktZ5SQkRBPhgNLWjMW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jurnal_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `jurnal_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

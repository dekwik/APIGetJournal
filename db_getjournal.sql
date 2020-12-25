/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.6-MariaDB : Database - db_getjournal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_getjournal` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_getjournal`;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`lastname`,`photo`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'','','','kadek1@gmail.com',NULL,'$2y$10$1fbJb22dLqSW32r7DKozf.RKYwVjQe8QGrTb/oFHA8uD7JIrO0vfK',NULL,'2020-12-03 22:36:41','2020-12-03 22:36:41'),
(3,'','','','kadek12@gmail.com',NULL,'$2y$10$fJaNvPEDpkJkxj.nKXHSz.4z.fL6/R.EN5./6qbatJFA8PPbDOA9i',NULL,'2020-12-03 22:37:17','2020-12-03 22:37:17'),
(4,'','','','kadek@gmail.com',NULL,'$2y$10$7lsH3s5Dl/5.dtbFWUJ9aOV791yLkK6V3Q2geO3WyKSMW3V7ZZ6Gu',NULL,'2020-12-03 22:37:44','2020-12-03 22:37:44'),
(5,'','','','dekwik@gmail.com',NULL,'$2y$10$aDlj25ZlyMkVrm95767Zhetw8QuKz8CaVuMhvWyTmL.52qORuKA/K',NULL,'2020-12-03 23:02:08','2020-12-03 23:02:08'),
(7,'','','','kadek3@gmail.com',NULL,'$2y$10$0r6EgxdWfBLy.b/ICFLpM.K3bFQzk6v/0e7Kmgi8EhQyLzaX/dmLy',NULL,'2020-12-03 23:03:47','2020-12-03 23:03:47'),
(10,'Dek Wik','Wik','1607065807.jpg','dekwik2000@gmail.com',NULL,'$2y$10$AVP4tSMZ/vqUc.SIzlJGQuf9eHg3sH0CepLo1mKOcdUrg8JrkhCfi',NULL,'2020-12-03 23:06:13','2020-12-07 15:49:50'),
(12,'','','','dekwik200@gmail.com',NULL,'$2y$10$6557wM3C2b0IizC3/nrM3e.6DzySH6F3FMcGGq64Ev7pHDS7UaKUa',NULL,'2020-12-03 23:06:29','2020-12-03 23:06:29'),
(13,'','','','kadek33@gmail.com',NULL,'$2y$10$SajhGbP5C.zQyYLAhHDKn.Se/4ZX9Jh4p.zfmgy70fGH0Bgea0PJW',NULL,'2020-12-04 04:38:56','2020-12-04 04:38:56'),
(14,'','','','kadek.dwiyatna@gmail.com',NULL,'$2y$10$sioY01ATL55nqdi0s7yaveSa6AQETXRjKUHzYMiIwHcC0DNChW9g2',NULL,'2020-12-04 04:39:36','2020-12-04 04:39:36'),
(15,'','','','barudekwik@gmail.com',NULL,'$2y$10$noDl1k9DXQeD9qQj7FQyyuWoEEHwjx/o/IlrA5HJFZ0U6XppRIWfu',NULL,'2020-12-04 04:41:56','2020-12-04 04:41:56'),
(16,'','','','dekwikdaftar@gmail.com',NULL,'$2y$10$hDbI5KfMnxHwl0lnq6pD5OrOUZukKX2zpXfHQB7CauPUZoWGVLs8i',NULL,'2020-12-04 05:57:59','2020-12-04 05:57:59'),
(17,'','','','16mei2000@gmail.com',NULL,'$2y$10$xPa2s1uuVfO5IGX7HjCsBe0qVLLYc6USmZnMBJS.g7zD5aNWItEL.',NULL,'2020-12-04 06:01:21','2020-12-04 06:01:21'),
(18,'','','','dekwik1@gmail.com',NULL,'$2y$10$KMDy8LO3Zc9XS0Ga4ONhxuDv3NHaD1oe6crHGbQiin1IvQlfXMEii',NULL,'2020-12-04 06:07:36','2020-12-04 06:07:36'),
(19,'','','','dekwik2@gmail.com',NULL,'$2y$10$kVXf9O4NRB6DjIbmxj/IJe7ItfPHkm3jHnuibFoUWsQV6SqmLb6Zm',NULL,'2020-12-04 06:18:17','2020-12-04 06:18:17'),
(22,'','','','kadekdwi1@gmailcom',NULL,'$2y$10$nGtUAN92W5k1u7X0dKS0K.qs4n9tk5pudXPKp.buA/8H8MuI1s5KW',NULL,'2020-12-04 06:33:50','2020-12-04 06:33:50'),
(23,'','','','dekwik3@gmail.com',NULL,'$2y$10$2.e1mmULcXBNyxod3q0gGO6dHxDBp/qw1BaAhMJDGF08mV4fIeHle',NULL,'2020-12-04 06:42:09','2020-12-04 06:42:09'),
(24,'','','','kadek.dwiyatna1@gmail.com',NULL,'$2y$10$bEVtFFTztLFp8JEjToEJcesLkgzU2KbgYN52cXt3CeXnemBX6jOIS',NULL,'2020-12-04 06:47:31','2020-12-04 06:47:31'),
(25,'dek','wik','1607065075.jpg','kadek123@gmail.com',NULL,'$2y$10$wL7xl2NqKZ3S7ieS56jnQO8OeC.3r9NzMtibxrbzorvXHI6wVcuWq',NULL,'2020-12-04 06:56:16','2020-12-04 06:57:55'),
(26,'dek','wik','1607065807.jpg','kadek.dwiyatna3@gmail.com',NULL,'$2y$10$StmHOuEUMl49GZFD1j1ZFO8/hsTqDlySo4twCyLd6aQrO/aW/HHG2',NULL,'2020-12-04 07:09:49','2020-12-04 07:10:07'),
(28,'dek wik','baru','1607325754.jpg','dekwikcobaemail@gmail.com',NULL,'$2y$10$l2Fc1SKGxE6SsjF/DjeHReunWtX85mg/QzOsHGvmgDLaJlnEpDJ.K',NULL,'2020-12-07 07:00:10','2020-12-07 07:36:13');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

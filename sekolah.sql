/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : sekolah

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 04/11/2020 16:28:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agenda_sekolah
-- ----------------------------
DROP TABLE IF EXISTS `agenda_sekolah`;
CREATE TABLE `agenda_sekolah`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `status_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for artikel
-- ----------------------------
DROP TABLE IF EXISTS `artikel`;
CREATE TABLE `artikel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `status_id` int(11) NULL DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_activation_attempts
-- ----------------------------
DROP TABLE IF EXISTS `auth_activation_attempts`;
CREATE TABLE `auth_activation_attempts`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_groups`;
CREATE TABLE `auth_groups`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_groups_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_groups_permissions`;
CREATE TABLE `auth_groups_permissions`  (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `auth_groups_permissions_permission_id_foreign`(`permission_id`) USING BTREE,
  INDEX `group_id_permission_id`(`group_id`, `permission_id`) USING BTREE,
  CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_groups_users
-- ----------------------------
DROP TABLE IF EXISTS `auth_groups_users`;
CREATE TABLE `auth_groups_users`  (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `auth_groups_users_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `group_id_user_id`(`group_id`, `user_id`) USING BTREE,
  CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_logins
-- ----------------------------
DROP TABLE IF EXISTS `auth_logins`;
CREATE TABLE `auth_logins`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(11) UNSIGNED NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `email`(`email`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_permissions`;
CREATE TABLE `auth_permissions`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_reset_attempts
-- ----------------------------
DROP TABLE IF EXISTS `auth_reset_attempts`;
CREATE TABLE `auth_reset_attempts`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_tokens
-- ----------------------------
DROP TABLE IF EXISTS `auth_tokens`;
CREATE TABLE `auth_tokens`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `selector` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hashedValidator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `auth_tokens_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `selector`(`selector`) USING BTREE,
  CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_users_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_users_permissions`;
CREATE TABLE `auth_users_permissions`  (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `auth_users_permissions_permission_id_foreign`(`permission_id`) USING BTREE,
  INDEX `user_id_permission_id`(`user_id`, `permission_id`) USING BTREE,
  CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ekstrakulikuler
-- ----------------------------
DROP TABLE IF EXISTS `ekstrakulikuler`;
CREATE TABLE `ekstrakulikuler`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status_id` int(11) NULL DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for galeri
-- ----------------------------
DROP TABLE IF EXISTS `galeri`;
CREATE TABLE `galeri`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status_id` int(11) NULL DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for info_kilat
-- ----------------------------
DROP TABLE IF EXISTS `info_kilat`;
CREATE TABLE `info_kilat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `status_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_agama
-- ----------------------------
DROP TABLE IF EXISTS `m_agama`;
CREATE TABLE `m_agama`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_alasan_layak_pip
-- ----------------------------
DROP TABLE IF EXISTS `m_alasan_layak_pip`;
CREATE TABLE `m_alasan_layak_pip`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_bentuk_pendidikan
-- ----------------------------
DROP TABLE IF EXISTS `m_bentuk_pendidikan`;
CREATE TABLE `m_bentuk_pendidikan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_jenis_bantuan
-- ----------------------------
DROP TABLE IF EXISTS `m_jenis_bantuan`;
CREATE TABLE `m_jenis_bantuan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_jenis_layanan_khusus
-- ----------------------------
DROP TABLE IF EXISTS `m_jenis_layanan_khusus`;
CREATE TABLE `m_jenis_layanan_khusus`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_keahlian_lab
-- ----------------------------
DROP TABLE IF EXISTS `m_keahlian_lab`;
CREATE TABLE `m_keahlian_lab`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_kebutuhan_khusus
-- ----------------------------
DROP TABLE IF EXISTS `m_kebutuhan_khusus`;
CREATE TABLE `m_kebutuhan_khusus`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_kepegawaian
-- ----------------------------
DROP TABLE IF EXISTS `m_kepegawaian`;
CREATE TABLE `m_kepegawaian`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_lembaga_pengangkat
-- ----------------------------
DROP TABLE IF EXISTS `m_lembaga_pengangkat`;
CREATE TABLE `m_lembaga_pengangkat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_mata_pelajaran
-- ----------------------------
DROP TABLE IF EXISTS `m_mata_pelajaran`;
CREATE TABLE `m_mata_pelajaran`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_moda_transportasi
-- ----------------------------
DROP TABLE IF EXISTS `m_moda_transportasi`;
CREATE TABLE `m_moda_transportasi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_pekerjaan
-- ----------------------------
DROP TABLE IF EXISTS `m_pekerjaan`;
CREATE TABLE `m_pekerjaan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_pendidikan
-- ----------------------------
DROP TABLE IF EXISTS `m_pendidikan`;
CREATE TABLE `m_pendidikan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_penghasilan
-- ----------------------------
DROP TABLE IF EXISTS `m_penghasilan`;
CREATE TABLE `m_penghasilan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_ptk
-- ----------------------------
DROP TABLE IF EXISTS `m_ptk`;
CREATE TABLE `m_ptk`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_sekolah
-- ----------------------------
DROP TABLE IF EXISTS `m_sekolah`;
CREATE TABLE `m_sekolah`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nama` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `npsn` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `bentuk_pendidikan_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `kelurahan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `kecamatan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `kota` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `provinsi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `rt` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `rw` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `kodepos` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `lintang` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `bujur` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `telepon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nomorfax` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_sekolah
-- ----------------------------
INSERT INTO `m_sekolah` VALUES (0, 'logosekolah.png', 'SMP Diponegoro', NULL, NULL, 'Jl Tunggul Ametung No 20', NULL, 'Kecamatan Tumpang', 'Kabupaten Malang', NULL, NULL, NULL, '65156', NULL, NULL, '085855530788', NULL, 'smpdiponegorotmpang9@gmail.com', 'smpdiponegorotumpang.sch.id');

-- ----------------------------
-- Table structure for m_sumber_gaji
-- ----------------------------
DROP TABLE IF EXISTS `m_sumber_gaji`;
CREATE TABLE `m_sumber_gaji`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_sumber_listrik
-- ----------------------------
DROP TABLE IF EXISTS `m_sumber_listrik`;
CREATE TABLE `m_sumber_listrik`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_tempat_tinggal
-- ----------------------------
DROP TABLE IF EXISTS `m_tempat_tinggal`;
CREATE TABLE `m_tempat_tinggal`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_tingkat
-- ----------------------------
DROP TABLE IF EXISTS `m_tingkat`;
CREATE TABLE `m_tingkat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for materi_ajar
-- ----------------------------
DROP TABLE IF EXISTS `materi_ajar`;
CREATE TABLE `materi_ajar`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NULL DEFAULT NULL,
  `kopetensi_khusus_id` int(11) NULL DEFAULT NULL,
  `judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tingkat_id` int(11) NULL DEFAULT NULL,
  `penyusun` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `namespace` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1604461868, 1);
INSERT INTO `migrations` VALUES (2, '2020-10-30-102440', 'App\\Database\\Migrations\\SubSekolah', 'default', 'App', 1604461868, 1);
INSERT INTO `migrations` VALUES (3, '2020-11-02-032916', 'App\\Database\\Migrations\\MStatus', 'default', 'App', 1604461868, 1);

-- ----------------------------
-- Table structure for pengumuman
-- ----------------------------
DROP TABLE IF EXISTS `pengumuman`;
CREATE TABLE `pengumuman`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `status_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ppdb
-- ----------------------------
DROP TABLE IF EXISTS `ppdb`;
CREATE TABLE `ppdb`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nama_lengkap` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `jenis_kelamin` int(11) NULL DEFAULT NULL,
  `nisn` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nisd` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ns_skhun` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nun_sd` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nik` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tanggal_lahir` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `agama` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `berkebutuhan_khusus` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `rt` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `rw` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `kelurahan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `kecamatan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `kota_kabupaten` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `provinsi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `kodepos` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `alat_transportasi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `jenis_tinggal` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `no_telp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `asal_sekolah_sd` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `kps` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nokps` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nama_ayah` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tempat_lahir_ayah` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tanggal_lahir_ayah` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pekerjaan_ayah` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pendidikan_ayah` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `penghasilan_bulanan_ayah` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nama_ibu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tempat_lahir_ibu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tanggal_lahir_ibu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pekerjaan_ibu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pendidikan_ibu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `penghasilan_bulanan_ibu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nama_wali` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tempat_lahir_wali` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tanggal_lahir_wali` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pekerjaan_wali` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pendidikan_wali` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `penghasilan_bulanan_wali` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tinggi_badan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `berat_badan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `jarak_rumah_ke_sekolah` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `waktu_tempuh_ke_sekolah` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `jumlah_saudara` int(3) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ppdb
-- ----------------------------
INSERT INTO `ppdb` VALUES ('5932ef88-1dba-11eb-8ef3-00d861c273c8', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-11-03 16:52:56');
INSERT INTO `ppdb` VALUES ('f6ce2028-1dba-11eb-b06c-00d861c273c8', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-11-03 16:57:20');
INSERT INTO `ppdb` VALUES ('7f523ad8-1e3d-11eb-af30-00d861c273c8', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-11-04 08:31:44');
INSERT INTO `ppdb` VALUES ('62dedc7e-1e3f-11eb-ab43-00d861c273c8', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-11-04 08:45:15');
INSERT INTO `ppdb` VALUES ('867cfd76-1e46-11eb-9adb-00d861c273c8', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-11-04 09:36:21');
INSERT INTO `ppdb` VALUES ('149a612e-1e48-11eb-97c1-00d861c273c8', 'amin', 0, '284561564874', '54865456', '4516416', '754651', '546541', 'malang', '-', '', '', 'malang', '8', '10', 'pandan', 'pandan', 'malang', 'jatim', '68524', 'motor', 'sendiri', '085696321456', 'playu@gmail.com', 'sdn 7 malang', 'persetujuan2', '-', 'paijo', '-', '-', '-', '-', '-', 'painem', '-', '-', '-', '-', '-', 'giman', '-', '-', '-', '-', '-', '150', '45', '2 km', '5 menit', 5, '2020-11-04 09:47:29');
INSERT INTO `ppdb` VALUES ('efabe422-1e48-11eb-b7ca-00d861c273c8', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-11-04 09:53:37');
INSERT INTO `ppdb` VALUES ('56706f8e-1e49-11eb-bd49-00d861c273c8', '', 0, '', '', '', '', '', '', '2020-11-05', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-11-30', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-11-04 09:56:29');
INSERT INTO `ppdb` VALUES ('8cf9ae62-1e49-11eb-b75b-00d861c273c8', '', 0, '', '', '', '', '', '', '2020-12-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-11-25', '', '', '', '', '', '2020-11-17', '', '', '', '', '', '', '', 0, '2020-11-04 09:58:01');
INSERT INTO `ppdb` VALUES ('fcdeb484-1e49-11eb-854e-00d861c273c8', '', 0, '', '', '', '', '', '', '2020-11-04', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-11-18', '', '', '', '', '', '2020-11-20', '', '', '', '', '', '2020-12-03', '', '', '', '', '', '', '', 0, '2020-11-04 10:01:08');
INSERT INTO `ppdb` VALUES ('da4e9188-1e4d-11eb-b748-00d861c273c8', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-11-04 10:28:48');

-- ----------------------------
-- Table structure for prestasi
-- ----------------------------
DROP TABLE IF EXISTS `prestasi`;
CREATE TABLE `prestasi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status_id` int(11) NULL DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sarana_prasarana
-- ----------------------------
DROP TABLE IF EXISTS `sarana_prasarana`;
CREATE TABLE `sarana_prasarana`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status_id` int(11) NULL DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `type_status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES ('gender1', 'Laki - laki', 1);
INSERT INTO `status` VALUES ('gender2', 'Perempuan', 1);
INSERT INTO `status` VALUES ('persetujuan1', 'Ya', 2);
INSERT INTO `status` VALUES ('persetujuan2', 'Tidak', 2);

-- ----------------------------
-- Table structure for sub_ppdb
-- ----------------------------
DROP TABLE IF EXISTS `sub_ppdb`;
CREATE TABLE `sub_ppdb`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ppdb_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `jenis_prestasi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tingkat` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tahun` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `penyelenggaraan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub_ppdb
-- ----------------------------
INSERT INTO `sub_ppdb` VALUES (1, 'f6ce2028-1dba-11eb-b06c-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (2, 'f6ce2028-1dba-11eb-b06c-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (3, 'f6ce2028-1dba-11eb-b06c-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (4, '7f523ad8-1e3d-11eb-af30-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (5, '7f523ad8-1e3d-11eb-af30-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (6, '7f523ad8-1e3d-11eb-af30-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (7, '62dedc7e-1e3f-11eb-ab43-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (8, '62dedc7e-1e3f-11eb-ab43-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (9, '62dedc7e-1e3f-11eb-ab43-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (10, '867cfd76-1e46-11eb-9adb-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (11, '867cfd76-1e46-11eb-9adb-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (12, '867cfd76-1e46-11eb-9adb-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (13, '149a612e-1e48-11eb-97c1-00d861c273c8', '-', '-', '-', '-');
INSERT INTO `sub_ppdb` VALUES (14, '149a612e-1e48-11eb-97c1-00d861c273c8', '-', '-', '-', '-');
INSERT INTO `sub_ppdb` VALUES (15, '149a612e-1e48-11eb-97c1-00d861c273c8', '-', '-', '-', '-');
INSERT INTO `sub_ppdb` VALUES (16, 'efabe422-1e48-11eb-b7ca-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (17, 'efabe422-1e48-11eb-b7ca-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (18, 'efabe422-1e48-11eb-b7ca-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (19, '56706f8e-1e49-11eb-bd49-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (20, '56706f8e-1e49-11eb-bd49-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (21, '56706f8e-1e49-11eb-bd49-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (22, '8cf9ae62-1e49-11eb-b75b-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (23, '8cf9ae62-1e49-11eb-b75b-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (24, '8cf9ae62-1e49-11eb-b75b-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (25, 'fcdeb484-1e49-11eb-854e-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (26, 'fcdeb484-1e49-11eb-854e-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (27, 'fcdeb484-1e49-11eb-854e-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (28, 'da4e9188-1e4d-11eb-b748-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (29, 'da4e9188-1e4d-11eb-b748-00d861c273c8', '', '', '', '');
INSERT INTO `sub_ppdb` VALUES (30, 'da4e9188-1e4d-11eb-b748-00d861c273c8', '', '', '', '');

-- ----------------------------
-- Table structure for type_status
-- ----------------------------
DROP TABLE IF EXISTS `type_status`;
CREATE TABLE `type_status`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type_status
-- ----------------------------
INSERT INTO `type_status` VALUES (1, 'Gender');
INSERT INTO `type_status` VALUES (2, 'Persetujuan');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reset_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reset_at` datetime(0) NULL DEFAULT NULL,
  `reset_expires` datetime(0) NULL DEFAULT NULL,
  `activate_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status_message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status_id` int(11) NULL DEFAULT NULL,
  `video` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : connector

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 30/04/2022 02:23:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for branches
-- ----------------------------
DROP TABLE IF EXISTS `branches`;
CREATE TABLE `branches`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `classes_email_unique`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of branches
-- ----------------------------
INSERT INTO `branches` VALUES (1, 'Class 12', 'info@class21.com', '', '1', NULL, '2022-04-15 21:07:07');
INSERT INTO `branches` VALUES (2, 'Title1', 'title@title.com1', '', '2', '2022-04-12 17:59:29', '2022-04-15 21:07:57');
INSERT INTO `branches` VALUES (4, 'karchi', 'karchi@karchi.com', '', '1', '2022-04-13 21:55:28', '2022-04-13 21:55:28');
INSERT INTO `branches` VALUES (5, 'Karachi1122', '12345678122', 'karachiakadjlak122', '1', '2022-04-17 14:50:09', '2022-04-17 14:59:20');

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `classes_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES (1, 'Class 12', 'info@class21.com', '1', NULL, '2022-04-15 21:07:07');
INSERT INTO `classes` VALUES (2, 'Title1', 'title@title.com1', '2', '2022-04-12 17:59:29', '2022-04-15 21:07:57');
INSERT INTO `classes` VALUES (4, 'karchi', 'karchi@karchi.com', '1', '2022-04-13 21:55:28', '2022-04-13 21:55:28');

-- ----------------------------
-- Table structure for donors
-- ----------------------------
DROP TABLE IF EXISTS `donors`;
CREATE TABLE `donors`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `donors_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of donors
-- ----------------------------
INSERT INTO `donors` VALUES (1, 'Waqar', 'waqar@gmail.com', '02134320000', '1', '2022-04-09 18:24:16', '2022-04-13 20:10:43');
INSERT INTO `donors` VALUES (3, 'alifdasdlf', 'asdf111@asdf.com111', '123456787654', '1', '2022-04-10 12:22:19', '2022-04-13 21:54:18');
INSERT INTO `donors` VALUES (5, 'alifdasdlf', 'asdf@asdf.com1', '123456787654', '1', '2022-04-10 12:23:59', '2022-04-10 12:23:59');
INSERT INTO `donors` VALUES (6, 'alifdasdlf', 'asdf@asdf.com12', '123456787654', '2', '2022-04-10 12:24:03', '2022-04-10 12:24:03');
INSERT INTO `donors` VALUES (7, 'Ali Raza', 'aliraza@art.com', '1234567890', '1', '2022-04-12 13:28:49', '2022-04-12 13:28:49');
INSERT INTO `donors` VALUES (12, 'Ali Raza', 'aliraza1@art.com', '23454321`12345', '1', '2022-04-12 13:36:55', '2022-04-12 13:36:55');
INSERT INTO `donors` VALUES (13, 'Ali Raza', 'aliraza21@art.com', '23454321`12345', '1', '2022-04-12 13:38:22', '2022-04-12 13:38:22');
INSERT INTO `donors` VALUES (14, 'New Donor1', 'donor1@gmail.com', '12345678765431', '1', '2022-04-13 06:23:07', '2022-04-13 06:44:04');
INSERT INTO `donors` VALUES (15, 'Ali Raza', 'aliraza@new.con', '0987654345678', '1', '2022-04-13 20:10:01', '2022-04-13 20:10:01');
INSERT INTO `donors` VALUES (16, 'Ali Raza', 'alirazaa@karachi.com', '0987654567876545678', '1', '2022-04-13 21:54:43', '2022-04-13 21:54:43');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (8, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (9, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (10, '2020_01_06_195131_create_classes_table', 1);
INSERT INTO `migrations` VALUES (11, '2020_01_06_195132_create_donors_table', 1);
INSERT INTO `migrations` VALUES (12, '2022_04_07_195133_create_students_table', 1);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('0289b3e2b38ea5a9f5e3f665fb2301ade1893502305bcbcbc95a7f95a11a5bb71596a0af124dd5bb', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:50:39', '2022-04-10 08:50:39', '2023-04-10 08:50:39');
INSERT INTO `oauth_access_tokens` VALUES ('04a0d011db99fc85973c24a410022c19f3de0a956451a91641c2b293430b0f4d4185b36de1ba6c09', 1, 4, 'LaravelAuthApp', '[]', 0, '2022-04-21 14:41:52', '2022-04-21 14:41:52', '2023-04-21 14:41:52');
INSERT INTO `oauth_access_tokens` VALUES ('0981f4034ab45613c09a43a1c60db27be2da4c2bd2f9de84cfce5d3f07506201b95aef57001fb0e5', 2, 2, 'LaravelAuthApp', '[]', 0, '2022-04-09 14:01:08', '2022-04-09 14:01:08', '2023-04-09 14:01:08');
INSERT INTO `oauth_access_tokens` VALUES ('09c27cb1df8ca9ca3c833b293af2bd68dce484c46f2bc9b74780e45f1821886cfad2d1838fea24f1', 2, 2, 'LaravelAuthApp', '[]', 0, '2022-04-09 14:01:18', '2022-04-09 14:01:18', '2023-04-09 14:01:18');
INSERT INTO `oauth_access_tokens` VALUES ('0f096ac40f2d11f1430ab6494644ed92afdc7c96e029acf5cc9151a01e6c56f7b7811642ba203759', 1, 1, 'LaravelAuthApp', '[]', 0, '2022-04-08 19:39:09', '2022-04-08 19:39:09', '2023-04-08 19:39:09');
INSERT INTO `oauth_access_tokens` VALUES ('100e8ef4b3bada234a9f4a23ecaf7e9f20e9adb9e6eedd4352be68991da98991f7fb8883e028392b', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-12 21:13:09', '2022-04-12 21:13:09', '2023-04-12 21:13:09');
INSERT INTO `oauth_access_tokens` VALUES ('11a2433aec72231f0282f5d0298a9dece29b3d1097ed0693c271364a189c5ee703dd32f3dfc77a25', 1, 1, 'LaravelAuthApp', '[]', 0, '2022-04-08 19:48:34', '2022-04-08 19:48:34', '2023-04-08 19:48:34');
INSERT INTO `oauth_access_tokens` VALUES ('122c5cce5f143c049edadfbf79cb23e671f47fa17449f7998216f2e699f25e290660b28fd971e80d', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:50:51', '2022-04-10 08:50:51', '2023-04-10 08:50:51');
INSERT INTO `oauth_access_tokens` VALUES ('13b7c4a98c21d519c99c9d1f520e1d70193e7edf6a649915adae15426302c3d7df7966da633a6759', 1, 4, 'LaravelAuthApp', '[]', 0, '2022-04-09 14:58:46', '2022-04-09 14:58:46', '2023-04-09 14:58:46');
INSERT INTO `oauth_access_tokens` VALUES ('13ef3c53fbbac4ed2d24ae12b37a53f05a3326c79e0f68acf8f200169a79ae1e5814dc65da9ec864', 1, 4, 'LaravelAuthApp', '[]', 0, '2022-04-29 20:49:38', '2022-04-29 20:49:38', '2023-04-29 20:49:38');
INSERT INTO `oauth_access_tokens` VALUES ('146cbe08e4fbf55933b75a8b5b75ec79ed8ed83a1952fafb81e25e21ed382c884b58af9146de738b', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-12 06:21:02', '2022-04-12 06:21:02', '2023-04-12 06:21:02');
INSERT INTO `oauth_access_tokens` VALUES ('153f930ab9354087b4e69aecb768a81a62e8e27ea4ec0a5076e752b1dd37132074f1aec46a18770b', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-13 20:05:49', '2022-04-13 20:05:49', '2023-04-13 20:05:49');
INSERT INTO `oauth_access_tokens` VALUES ('19f23b566a4250c30fb843d0b375df98f2bba1a566a28c9a9c20c5b75e2cf193f147157f93b1072d', 1, 1, 'LaravelAuthApp', '[]', 0, '2022-04-09 07:41:27', '2022-04-09 07:41:27', '2023-04-09 07:41:27');
INSERT INTO `oauth_access_tokens` VALUES ('25d2c9301d14046325ebc2eec2e01f98410a7aaf6fd849c8e188e3c47df15613fb07345b1442bcf3', 1, 4, 'LaravelAuthApp', '[]', 0, '2022-04-17 14:02:18', '2022-04-17 14:02:18', '2023-04-17 14:02:18');
INSERT INTO `oauth_access_tokens` VALUES ('26b3e25f8fe58a96dc9959b4e545398934d331e726b65d5965921de96eb54cb12c96dca4634c8724', 1, 4, 'LaravelAuthApp', '[]', 0, '2022-04-17 18:46:20', '2022-04-17 18:46:20', '2023-04-17 18:46:20');
INSERT INTO `oauth_access_tokens` VALUES ('26f42baff8c3fad962c78450440750d3b96b958de41431cbfa16e3d2abe818822275996f87afc1c1', 2, 2, 'LaravelAuthApp', '[]', 0, '2022-04-09 14:20:05', '2022-04-09 14:20:05', '2023-04-09 14:20:05');
INSERT INTO `oauth_access_tokens` VALUES ('288a7bafac7ca78b34ab9d25f6eb8beccf6d9ba311c52dcf38069393f57b4ad04ea6cf5fd81a7b6b', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:52:05', '2022-04-10 08:52:05', '2023-04-10 08:52:05');
INSERT INTO `oauth_access_tokens` VALUES ('29c3165ce633fd104a58b2168978dfa32c5607d578ceff1e3f6e0baacd32be0f59e5f1618e2d839d', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:51:54', '2022-04-10 08:51:54', '2023-04-10 08:51:54');
INSERT INTO `oauth_access_tokens` VALUES ('2de56848c7ce08f6f2fe245a601cda47d5695626960cf296a6b843c7ad72609a0cd0c04eb2cc61bc', 2, 2, 'LaravelAuthApp', '[]', 0, '2022-04-09 14:03:53', '2022-04-09 14:03:53', '2023-04-09 14:03:53');
INSERT INTO `oauth_access_tokens` VALUES ('2ec62f38d7eebc1ba2e56c895f56a43b3c6714fb5e5522129b36964ee2642fdca39ebb69e6b16b91', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:46:58', '2022-04-10 08:46:58', '2023-04-10 08:46:58');
INSERT INTO `oauth_access_tokens` VALUES ('30b95472a0db036618afb9c2590429951b3cc60226d16f7d05f4637dcded103fddb3825272bb6345', 1, 4, 'LaravelAuthApp', '[]', 0, '2022-04-15 20:53:14', '2022-04-15 20:53:14', '2023-04-15 20:53:14');
INSERT INTO `oauth_access_tokens` VALUES ('30ed28aeeb0c3bb4b14a0811146d9ca7ed668dd28e60d2390edfe14f97cd6bce66470fcbf634ef6e', 1, 4, 'LaravelAuthApp', '[]', 0, '2022-04-15 20:23:34', '2022-04-15 20:23:34', '2023-04-15 20:23:34');
INSERT INTO `oauth_access_tokens` VALUES ('34aae39b8a7862da5e3b6b2760eb05ed56578e8f24ff65d1c9c348f680d44dc9ff1e0e5323a6891a', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-09 18:39:50', '2022-04-09 18:39:50', '2023-04-09 18:39:50');
INSERT INTO `oauth_access_tokens` VALUES ('36defadb1ce3fd2daa536582dd2ab0a9e9fe01a2a4ae77d0166fa55563abcfd8a61b68e6498cfa8d', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:46:53', '2022-04-10 08:46:53', '2023-04-10 08:46:53');
INSERT INTO `oauth_access_tokens` VALUES ('370e7cb718937a397a15aa9a029de3673454f6fc4751cf381301b2fcfedf449dc93b29b61ad73bbe', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-11 19:26:23', '2022-04-11 19:26:23', '2023-04-11 19:26:23');
INSERT INTO `oauth_access_tokens` VALUES ('3887a7395cb02c0d793732493167cc2003d85c477c3b9751c49c42cd448875899c451d48cefce581', 1, 4, 'LaravelAuthApp', '[]', 0, '2022-04-29 12:59:54', '2022-04-29 12:59:54', '2023-04-29 12:59:54');
INSERT INTO `oauth_access_tokens` VALUES ('440623ca5dde52abf27455a8da2d73c370acd058a644826a58ce68f69140e38ae3746f8b1afc6677', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-09 17:55:08', '2022-04-09 17:55:08', '2023-04-09 17:55:08');
INSERT INTO `oauth_access_tokens` VALUES ('457bcc4ec20f8ca42f99c874c13fa98bf8e7bb677a36df5e44f36c5cb90af603c5cf064519b22d7c', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-09 17:55:27', '2022-04-09 17:55:27', '2023-04-09 17:55:27');
INSERT INTO `oauth_access_tokens` VALUES ('50b541b6fe49e23fcf8a3056c488ed21d41e58012e582e966981d71774b2657f2cad6360dd0ee106', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 11:20:00', '2022-04-10 11:20:00', '2023-04-10 11:20:00');
INSERT INTO `oauth_access_tokens` VALUES ('5166e0b16a971536c51b5fc8e70c5753680e1873850588609d53973502f07b4f36b183d1a46aa7b6', 1, 1, 'LaravelAuthApp', '[]', 0, '2022-04-09 13:14:48', '2022-04-09 13:14:48', '2023-04-09 13:14:48');
INSERT INTO `oauth_access_tokens` VALUES ('59cf65bc86595bf08ba85997ee79edfff27664db0d8405bca39e2697ff8cf7496a4a9d77c6cea9c2', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:46:55', '2022-04-10 08:46:55', '2023-04-10 08:46:55');
INSERT INTO `oauth_access_tokens` VALUES ('5cba4c848eb333692541c2c619900003f6fa9c63ccb917ea1761735a97072289cdea1220463db3f9', 1, 1, 'LaravelAuthApp', '[]', 0, '2022-04-08 19:49:04', '2022-04-08 19:49:04', '2023-04-08 19:49:04');
INSERT INTO `oauth_access_tokens` VALUES ('5d5dba473a57e605d6f9cd5a1f537c8c795db5ff75a3e3cc4df8bbb5ea3371c6a3a1b5c6c3c369fc', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:50:59', '2022-04-10 08:50:59', '2023-04-10 08:50:59');
INSERT INTO `oauth_access_tokens` VALUES ('60284cbcdb85c1baa8de89124301d067cb753cfb2ff5a704385f79827bfd08216c863187fc1e712e', 1, 4, 'LaravelAuthApp', '[]', 0, '2022-04-17 14:20:25', '2022-04-17 14:20:25', '2023-04-17 14:20:25');
INSERT INTO `oauth_access_tokens` VALUES ('64180d620b531cff6e80e16a662e82c8488c169e422a2ff9573f5604ffca4f119edeba854afb2342', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 11:20:16', '2022-04-10 11:20:16', '2023-04-10 11:20:16');
INSERT INTO `oauth_access_tokens` VALUES ('66d813c83656b2fa40686d520197bdecc6ed61c990b12bf1adaecca2c2767f8d990669358c9d491f', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-12 21:13:20', '2022-04-12 21:13:20', '2023-04-12 21:13:20');
INSERT INTO `oauth_access_tokens` VALUES ('693d00030b389bfb847b23d06eca3dfe4c7b84bc5dc61f09f27da5a77735712e32ca8dfcad4c32a8', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:46:52', '2022-04-10 08:46:52', '2023-04-10 08:46:52');
INSERT INTO `oauth_access_tokens` VALUES ('6cce7e1e6cd5fc66a6628b0c6a14a433cbdc7c44e2e9e7838eb81b273e9caf91894640baf638e8c8', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-13 06:22:47', '2022-04-13 06:22:47', '2023-04-13 06:22:47');
INSERT INTO `oauth_access_tokens` VALUES ('6f276abf15b71ac7869f0d71a29d3b2f00e7e138b1acc8f0270f49bea3122ffeb62c29a534bdb29b', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:50:22', '2022-04-10 08:50:22', '2023-04-10 08:50:22');
INSERT INTO `oauth_access_tokens` VALUES ('709067a3006e13dd23f443c2c7693c5f4afe4e64d92ea0f94d4b26d81c8d6e8e7b50626e34804e04', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:39:41', '2022-04-10 08:39:41', '2023-04-10 08:39:41');
INSERT INTO `oauth_access_tokens` VALUES ('765bad9875be7f9faa018a1d24e3f1daa9e6583bf5959e165fdc2f61e917814c1643540ec4532e15', 3, 2, 'LaravelAuthApp', '[]', 0, '2022-04-09 14:37:41', '2022-04-09 14:37:41', '2023-04-09 14:37:41');
INSERT INTO `oauth_access_tokens` VALUES ('79a7c7e9ec868c10a94df120418cc35e3bd43ca81e9472cda314bca78338ca5bf110442cafd4a29a', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:46:55', '2022-04-10 08:46:55', '2023-04-10 08:46:55');
INSERT INTO `oauth_access_tokens` VALUES ('7c1d9f9170b7b9e8048a767c99f52c46dc270652b7eb799970df699bc8cabcf40992df605fe0a538', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 11:20:39', '2022-04-10 11:20:39', '2023-04-10 11:20:39');
INSERT INTO `oauth_access_tokens` VALUES ('7e56f65751a49ca1a69aec86fb3ebf548572835e16482d8ec8aa850466b47ab5a56b57f20a435434', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-12 12:23:10', '2022-04-12 12:23:10', '2023-04-12 12:23:10');
INSERT INTO `oauth_access_tokens` VALUES ('892e7deeb0a6040122897502fc836bc3896ccc03c0fe83cc86f9b207087cb12c3672d64f5f8efdaf', 3, 2, 'LaravelAuthApp', '[]', 0, '2022-04-09 14:37:53', '2022-04-09 14:37:53', '2023-04-09 14:37:53');
INSERT INTO `oauth_access_tokens` VALUES ('8c008f3d4ffb767b681220e947ff9b8738318b10a362388dce563dc599bcbbd88e0670ec8f36cbb8', 1, 1, 'LaravelAuthApp', '[]', 0, '2022-04-08 19:49:12', '2022-04-08 19:49:12', '2023-04-08 19:49:12');
INSERT INTO `oauth_access_tokens` VALUES ('9474bd5750d87314352beafe338fee785818cc6c61a14d8227d616e3110cd389e00bec60d02aef8e', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-12 06:21:13', '2022-04-12 06:21:13', '2023-04-12 06:21:13');
INSERT INTO `oauth_access_tokens` VALUES ('9b031dd6e7fb419f8a9a3cbb63c23a0725f09d452e40b823ef990369a070d98a6796e9342d956c3e', 1, 1, 'LaravelAuthApp', '[]', 0, '2022-04-09 13:15:19', '2022-04-09 13:15:19', '2023-04-09 13:15:19');
INSERT INTO `oauth_access_tokens` VALUES ('9b5330e3dcacaf8cb39c1ed34096b054e1ab11f793a07a55a33316be75e4a8302d98fb3a6e213d7b', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-12 21:23:31', '2022-04-12 21:23:31', '2023-04-12 21:23:31');
INSERT INTO `oauth_access_tokens` VALUES ('9bce30e740dd4a6c945828e9c47b6011e98e4dc35af7030a4306baab50e8063728adb401dcd74fe0', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:48:44', '2022-04-10 08:48:44', '2023-04-10 08:48:44');
INSERT INTO `oauth_access_tokens` VALUES ('a3d4e64f094f8d2d5698e2b1447ff05deb58f388865bdee54f8c76c9ecb0a4cda2ab11695948814a', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-09 18:40:46', '2022-04-09 18:40:46', '2023-04-09 18:40:46');
INSERT INTO `oauth_access_tokens` VALUES ('a4fdce0bca8199e8bbe44c149e33b77f3af7082baa10fd057838a9e2ba575274722db3b6aa9a8036', 1, 4, 'LaravelAuthApp', '[]', 0, '2022-04-13 20:09:39', '2022-04-13 20:09:39', '2023-04-13 20:09:39');
INSERT INTO `oauth_access_tokens` VALUES ('a6bd67fd4830c4b179981989e83284d5ba3cc15a0c7092ee0669b04f9aaabbd4e7c1024890a03519', 1, 1, 'LaravelAuthApp', '[]', 0, '2022-04-08 19:36:03', '2022-04-08 19:36:03', '2023-04-08 19:36:03');
INSERT INTO `oauth_access_tokens` VALUES ('a8b573dc684e7ee0a0814a2c3e5b3be09336d30b8cb04551eab96524d2c70635cb0f5f8173c4aee1', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-09 17:58:27', '2022-04-09 17:58:27', '2023-04-09 17:58:27');
INSERT INTO `oauth_access_tokens` VALUES ('aa1ab5bb5097211ca54d8b7d152af0b99b11b077cdb6ded53937e16b845a21ff9466370509431d50', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-12 06:19:28', '2022-04-12 06:19:28', '2023-04-12 06:19:28');
INSERT INTO `oauth_access_tokens` VALUES ('aa8e2cb07c1c380a7b0a38de367c8368cebabfe76584d0879ecd372c2abf8d9d56d8cf8e9192db58', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:46:57', '2022-04-10 08:46:57', '2023-04-10 08:46:57');
INSERT INTO `oauth_access_tokens` VALUES ('ad88da93574b6dfc38f4890c0dac49cfa36de4975991785ddebbc1c4fba3e7e93ac22898bce74e9a', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:46:56', '2022-04-10 08:46:56', '2023-04-10 08:46:56');
INSERT INTO `oauth_access_tokens` VALUES ('aef114571e7dc82343fdae7f987e786f746b1b27d202af85f07d80598aad6236fbac87b8c5739bf4', 2, 2, 'LaravelAuthApp', '[]', 0, '2022-04-09 14:02:57', '2022-04-09 14:02:57', '2023-04-09 14:02:57');
INSERT INTO `oauth_access_tokens` VALUES ('b37a5b9a0b3b53f0f829588d3a3a58da0c8f5c6d42783ee59c0e4eca3b92852c8371ef7b4bf4e6f1', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:52:22', '2022-04-10 08:52:22', '2023-04-10 08:52:22');
INSERT INTO `oauth_access_tokens` VALUES ('b5637ac38b4ebc1ea61b6ddc95e95a4aab6219d03b06699c4897000a654ab1746c04077e2748122a', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:51:29', '2022-04-10 08:51:29', '2023-04-10 08:51:29');
INSERT INTO `oauth_access_tokens` VALUES ('b73503cad0200e3b388b778ad0dabd5545a222b3785f34b5fd50c914024056f33960e09b7a6b66c4', 1, 1, 'LaravelAuthApp', '[]', 0, '2022-04-08 19:07:06', '2022-04-08 19:07:06', '2023-04-08 19:07:06');
INSERT INTO `oauth_access_tokens` VALUES ('b9233f0d404a1ce4e94c8f4bc9391c6d65a960fef3e4bfa8957247d2d3b04ec259b1a633efa66b40', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:52:49', '2022-04-10 08:52:49', '2023-04-10 08:52:49');
INSERT INTO `oauth_access_tokens` VALUES ('bb1793fa8ccacf751685786bb86bcbcb81150dacd0d0f3f31118a06ef14a3aab1513d0fdebbe5dd9', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 16:07:42', '2022-04-10 16:07:42', '2023-04-10 16:07:42');
INSERT INTO `oauth_access_tokens` VALUES ('bcb6e6d958019c6c30e63dc1a6a04eb3041f79b75629484ca51a418ded52384f8c8fcb10f6725350', 1, 1, 'LaravelAuthApp', '[]', 0, '2022-04-09 07:41:58', '2022-04-09 07:41:58', '2023-04-09 07:41:58');
INSERT INTO `oauth_access_tokens` VALUES ('c53a330188a483c1e9140e460dd76998dddd89cc893acf5fc6f86700e281a70db73864e06756bb48', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:52:43', '2022-04-10 08:52:43', '2023-04-10 08:52:43');
INSERT INTO `oauth_access_tokens` VALUES ('c5640973113907ff084d88defa0ffb1d9404466721cfc1b37dca6826858325db59883200c6829b3e', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-12 21:13:38', '2022-04-12 21:13:38', '2023-04-12 21:13:38');
INSERT INTO `oauth_access_tokens` VALUES ('c7cac785b668114855f736655fbe48adb37741689b1a1f90ab1b4931c299197c9a8594fdaee1204f', 2, 2, 'LaravelAuthApp', '[]', 0, '2022-04-09 14:23:38', '2022-04-09 14:23:38', '2023-04-09 14:23:38');
INSERT INTO `oauth_access_tokens` VALUES ('cc41c7fec2d3f64c84c3a51185d8fc85a85d8498837eb92b6ae0a624ca7f2f42eb15f1340981b545', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 16:14:37', '2022-04-10 16:14:37', '2023-04-10 16:14:37');
INSERT INTO `oauth_access_tokens` VALUES ('cedfbdd4fae0fa89e315dc802a3ce90b79d8407cf6d626d9c3a6178ba560dd2acbe7a062a7beedf3', 1, 4, 'LaravelAuthApp', '[]', 0, '2022-04-27 17:38:56', '2022-04-27 17:38:56', '2023-04-27 17:38:56');
INSERT INTO `oauth_access_tokens` VALUES ('d548702d29deb9e12ba888edf8c1dcb80af6a382630da473a3a6e62a4ce45e7a9da2d69756a5652d', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-09 18:05:30', '2022-04-09 18:05:30', '2023-04-09 18:05:30');
INSERT INTO `oauth_access_tokens` VALUES ('db8cf3f0112c619862d5a10b0197ec4870971cdbed4fca5194807e9b6a076f4c2c7c95dbf0bf6b46', 1, 1, 'LaravelAuthApp', '[]', 0, '2022-04-09 13:33:47', '2022-04-09 13:33:47', '2023-04-09 13:33:47');
INSERT INTO `oauth_access_tokens` VALUES ('dc95690d7876fdbbcf67dca8bffd2fba7cc41bfb0002efe1181fbd0a740035c314fe3287a8ebbd4a', 1, 2, 'LaravelAuthApp', '[]', 0, '2022-04-09 13:36:55', '2022-04-09 13:36:55', '2023-04-09 13:36:55');
INSERT INTO `oauth_access_tokens` VALUES ('dcd1a39b90c6aeeaadcf8f2d530f2962ff50f6edebed30258e4400efbe95427cfd6cdb31f2c5b9e0', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-09 18:48:16', '2022-04-09 18:48:16', '2023-04-09 18:48:16');
INSERT INTO `oauth_access_tokens` VALUES ('e645de09bd2c9f593895b9b80b5cd567e429f6fc903913a1bc633cdcdb10e03159802d7b9757308b', 1, 4, 'LaravelAuthApp', '[]', 0, '2022-04-13 21:53:09', '2022-04-13 21:53:09', '2023-04-13 21:53:09');
INSERT INTO `oauth_access_tokens` VALUES ('e9baf423d54199523edb385e4fc2183f102bd00fa9aee03c79fcf420579fcd8a92bda2b6e08021a0', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:39:57', '2022-04-10 08:39:57', '2023-04-10 08:39:57');
INSERT INTO `oauth_access_tokens` VALUES ('ecafdbc41da5deb6002639edf6a976db5f3e622565d62f4aa8ac534fe1f512ad3dd8c0a58f98745e', 1, 2, 'LaravelAuthApp', '[]', 0, '2022-04-09 14:32:30', '2022-04-09 14:32:30', '2023-04-09 14:32:30');
INSERT INTO `oauth_access_tokens` VALUES ('ed0086d9cea8db7ac1500481abf8acf6cf3896ad9e05681ebf61974fbcf33796c072cbb011adf1c2', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:52:35', '2022-04-10 08:52:35', '2023-04-10 08:52:35');
INSERT INTO `oauth_access_tokens` VALUES ('ef70cbc359cbe5ec41ef85ace269e9c385431c1b51ac01f2029dead49913f43169316350b7526823', 9, 4, 'LaravelAuthApp', '[]', 0, '2022-04-10 08:54:17', '2022-04-10 08:54:17', '2023-04-10 08:54:17');
INSERT INTO `oauth_access_tokens` VALUES ('efb4a17c563e05b8bb44f7dcd7d038c5ff8f0c52bb12d39999f5070131ad849784a4dc3536b34a6b', 1, 4, 'LaravelAuthApp', '[]', 0, '2022-04-09 14:52:14', '2022-04-09 14:52:14', '2023-04-09 14:52:14');
INSERT INTO `oauth_access_tokens` VALUES ('f458d1d5993772c2aff42fb9a80a20d9eefeb4c1f23a2bba599caedbc0b627750f58311e446e6b28', 7, 4, 'LaravelAuthApp', '[]', 0, '2022-04-09 14:49:34', '2022-04-09 14:49:34', '2023-04-09 14:49:34');
INSERT INTO `oauth_access_tokens` VALUES ('f4d1fdd1320db6ae9bcb812e06db095beaca929c0654c7645514402b5ee34e707355f6de0ebe3b4f', 7, 4, 'LaravelAuthApp', '[]', 0, '2022-04-09 14:44:47', '2022-04-09 14:44:47', '2023-04-09 14:44:47');
INSERT INTO `oauth_access_tokens` VALUES ('fb818e850005963a62158ed06d83fdba0445e67d4d8f30115419a6f860e70694a84a91f623a10f0d', 7, 4, 'LaravelAuthApp', '[]', 0, '2022-04-09 14:44:35', '2022-04-09 14:44:35', '2023-04-09 14:44:35');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_auth_codes_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (4, NULL, 'LaravelAuth', 'IZ6AzNtMDdhIkSftqhfE8mvzLv6MRtVUwg0Mqs3h', NULL, 'http://localhost', 1, 0, 0, '2022-04-09 14:44:18', '2022-04-09 14:44:18');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2022-04-08 17:43:08', '2022-04-08 17:43:08');
INSERT INTO `oauth_personal_access_clients` VALUES (2, 2, '2022-04-09 13:36:50', '2022-04-09 13:36:50');
INSERT INTO `oauth_personal_access_clients` VALUES (3, 4, '2022-04-09 14:44:18', '2022-04-09 14:44:18');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 'slfkjd', 'ldfkajs1', 1, NULL, NULL);
INSERT INTO `posts` VALUES (2, 'slfkjd', 'ldfkajs1', 1, NULL, NULL);

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `date_of_birth` date NULL DEFAULT NULL,
  `religion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nationality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `migrated_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `disability` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `father_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `fcnic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `father_occupation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `father_education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mother_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mcnic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mother_occupation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mother_education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `whatsapp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `did_child` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `child_last_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `monthly_income` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `class_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `donor_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `student_profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `rules_regulation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `birth_certificate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `fcnic_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mcnic_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `students_class_id_foreign`(`class_id`) USING BTREE,
  INDEX `students_donor_id_foreign`(`donor_id`) USING BTREE,
  INDEX `students_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `students_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `students_donor_id_foreign` FOREIGN KEY (`donor_id`) REFERENCES `donors` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Ali Raza', 'admin@gmail.com', NULL, '$2a$12$Au1ftA5jRqA44.SOKMB07OC4iCaVc24lg.6gDBBRRqnroJYeCZR2i', NULL, '2022-04-08 17:16:05', '2022-04-08 17:16:05');
INSERT INTO `users` VALUES (2, 'Ali Raza', 'aliraza123@gmail.com', NULL, '$2y$10$jSMM2llRr3xn/WA1ZqJPzO/lofbpDImPXK08SxXDkOyA.vXqHyq2W', NULL, '2022-04-09 14:01:08', '2022-04-09 14:01:08');
INSERT INTO `users` VALUES (3, 'ali raza', 'aliraza@aliraza.com', NULL, '$2y$10$GBeWP90bmE5BSFKOObWoZ.OfvFK5ePq05UOw00hTdimUYP1eXDMCq', NULL, '2022-04-09 14:37:41', '2022-04-09 14:37:41');
INSERT INTO `users` VALUES (5, 'Ali Raza', 'aliraza0@aliraza0.com', NULL, '$2y$10$3MvuZqXOi8i8j6KsbEZgIett9ZeeJbeK96kkxzo2QRnsjNU8MNBnK', NULL, '2022-04-09 14:43:02', '2022-04-09 14:43:02');
INSERT INTO `users` VALUES (7, 'Ali Raza', 'aliraza0@aliraza0.com1', NULL, '$2y$10$bq1oJlpmptgnyY.a8Ekrp.D8PaPhjH1tcSXUjl51JxOVqUQHqZsUa', NULL, '2022-04-09 14:44:35', '2022-04-09 14:44:35');
INSERT INTO `users` VALUES (9, 'aliraza', 'alirazaa@gmail.com', NULL, '$2y$10$yVt74tqIJoltLleWYIXyc.8Of2Q24afb2lAeEw0oMB.CKLtIBgH2u', NULL, '2022-04-09 17:55:07', '2022-04-09 17:55:07');

SET FOREIGN_KEY_CHECKS = 1;

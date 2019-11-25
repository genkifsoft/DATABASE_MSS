/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : 192.168.88.226:3306
 Source Schema         : vn_moto_shop_service_media

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 25/11/2019 14:47:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_youtube_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `movie_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `movie_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `movie_description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `movie_author_id` char(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `movie_create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `shop_id` int(11) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  PRIMARY KEY (`movie_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (1, '13123', 'title', 'webike shop service post', 'description', 'EWCEO000048745961', '2019-09-16 16:40:24', 521, 326017);
INSERT INTO `movie` VALUES (2, 'dMaeUE0222E', 'video', 'webike shop service post', 'Webike 326017 multi_language 16:44:20 16/09/2019', 'EWCEO000048745961', '2019-09-16 16:47:25', 521, 0);
INSERT INTO `movie` VALUES (3, 'o_UX3ZVDspY', 'video', 'webike shop service post', 'Webike  multi_language 17:07:20 16/09/2019', 'EWCEO000048745961', '2019-09-16 17:07:34', 521, 123);
INSERT INTO `movie` VALUES (4, 'wNTFXpg0R5Y', 'video', 'webike shop service post', 'Webike  multi_language 17:19:55 16/09/2019', 'EWCEO000048745961', '2019-09-16 17:20:09', 521, 0);
INSERT INTO `movie` VALUES (5, 'gyhq-sw4EoU', 'Webike  multi_language 17:26:11 16/09/2019', 'webike shop service post', 'Webike  multi_language 17:26:11 16/09/2019', 'EWCEO000048745961', '2019-09-16 17:26:29', 521, 0);
INSERT INTO `movie` VALUES (6, 'G2WNorZ2mdk', 'Webike  multi_language 17:28:56 16/09/2019', 'webike shop service post', 'Webike  multi_language 17:28:56 16/09/2019', 'EWCEO000048745961', '2019-09-16 17:29:09', 521, 0);
INSERT INTO `movie` VALUES (7, 'AbaX5HZ0mUs', 'Webike  multi_language 17:30:58 16/09/2019', 'webike shop service post', 'Webike  multi_language 17:30:58 16/09/2019', 'EWCEO000048745961', '2019-09-16 17:31:29', 521, 0);
INSERT INTO `movie` VALUES (8, 'LQDpiJXwfGY', 'Webike 664864 17:43:20 16/09/2019', '', 'asdasdasdasdasd', 'EWCEO000048745961', '2019-09-16 17:43:20', 521, 664864);
INSERT INTO `movie` VALUES (9, 'LQDpiJXwfGY', 'Webike 664865 17:44:06 16/09/2019', '', 'https://www.youtube.com/watch?v=LQDpiJXwfGY', 'EWCEO000048745961', '2019-09-16 17:44:06', 521, 664865);
INSERT INTO `movie` VALUES (10, '65AMdl26s5c', 'Webike 664866 17:54:30 16/09/2019', '', 'https://www.youtube.com/watch?v=65AMdl26s5c', 'EWCEO000048745961', '2019-09-16 17:54:30', 521, 664866);
INSERT INTO `movie` VALUES (11, '65AMdl26s5c', 'Webike 664867 17:55:09 16/09/2019', '', 'https://www.youtube.com/watch?v=65AMdl26s5c', 'EWCEO000048745961', '2019-09-16 17:55:09', 521, 664867);
INSERT INTO `movie` VALUES (12, '65AMdl26s5c', 'Webike 664868 17:56:35 16/09/2019', '', 'https://www.youtube.com/watch?v=65AMdl26s5c', 'EWCEO000048745961', '2019-09-16 17:56:35', 521, 664868);
INSERT INTO `movie` VALUES (13, 'CzGnisyWqmw', 'Webike  multi_language 09:34:00 18/09/2019', 'webike shop service post', 'Webike  multi_language 09:34:00 18/09/2019', 'EWCEO000048745961', '2019-09-18 09:34:17', 521, 0);
INSERT INTO `movie` VALUES (14, 'sc3KxItviik', 'Webike 326026 14:30:59 05/11/2019', '', 'Morbi ipsum nulla, semper non sagittis sed, iaculis nec metus. Duis commodo, urna id mattis tincidunt, mi dui rutrum nunc, et suscipit mauris massa sit amet est. Etiam iaculis erat urna, vitae pulvinar velit rhoncus ultrices. Donec condimentum sed urna ullamcorper dignissim. Sed eleifend et ex at vestibulum. Nunc suscipit arcu elit, pretium convallis lorem pretium non. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pellentesque nec elit id dignissim. Integer vel sapien tincidunt, sagittis ligula ultricies, consectetur risus. Quisque ultrices tempor congue. Proin tortor quam, dapibus eu tortor in, porta lacinia neque. Sed augue tortor, varius sed neque ut, ultricies scelerisque justo. Curabitur eu ante porttitor, bibendum est vitae, ultrices purus. Vestibulum convallis finibus nunc, vitae accumsan dui ultrices in.', 'JHEMN000050661445', '2019-11-05 14:30:59', 10, 326026);
INSERT INTO `movie` VALUES (15, 'RBaym8VW2s0', 'Webike 326840 16:02:14 20/11/2019', '', 'Morbi ipsum nulla, semper non sagittis sed, iaculis nec metus. Duis commodo, urna id mattis tincidunt, mi dui rutrum nunc, et suscipit mauris massa sit amet est. Etiam iaculis erat urna, vitae pulvinar velit rhoncus ultrices. Donec condimentum sed urna ullamcorper dignissim. Sed eleifend et ex at vestibulum. Nunc suscipit arcu elit, pretium convallis lorem pretium non. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pellentesque nec elit id dignissim. Integer vel sapien tincidunt, sagittis ligula ultricies, consectetur risus. Quisque ultrices tempor congue. Proin tortor quam, dapibus eu tortor in, porta lacinia neque. Sed augue tortor, varius sed neque ut, ultricies scelerisque justo. Curabitur eu ante porttitor, bibendum est vitae, ultrices purus. Vestibulum convallis finibus nunc, vitae accumsan dui ultrices in.', 'JHEMN000050661445', '2019-11-20 16:02:14', 22, 326840);

-- ----------------------------
-- Table structure for mst_youtube_user
-- ----------------------------
DROP TABLE IF EXISTS `mst_youtube_user`;
CREATE TABLE `mst_youtube_user`  (
  `youtube_user_no` int(11) NOT NULL,
  `youtube_user_mail` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `youtube_user_passwd` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `youtube_user_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `youtube_user_dev_key` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `youtube_user_client_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `youtube_user_refreshtoken` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`youtube_user_no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo`  (
  `photo_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `photo_type_code` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo_local_path` char(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo_file_name` char(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `photo_author_id` char(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo_comment` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `photo_create_date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `photo_alter_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `photo_view_status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `shop_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`photo_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 125 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES (1, 'B', 'vn/photo/shop/certificate/', '2019/09/16/a3ba3964253e9cea069761f6cc1d5541.jpg', 'XJOCJ000049467632', '', '2019-09-19 15:33:01', '2019-09-19 15:33:01', 'O', 533);
INSERT INTO `photo` VALUES (2, 'B', 'vn/photo/shop/certificate/', '2019/09/16/d4c5cd7c7631055d1f0f20ec021f7bac.jpg', 'EWCEO000048745961', '', '2019-09-20 14:49:26', '2019-09-20 14:49:26', 'O', 539);
INSERT INTO `photo` VALUES (3, 'B', 'vn/photo/shop/certificate/', '2019/09/16/edf5339540ea2383a44f1ff8b7a8fa2e.jpg', 'EWCEO000048745961', '', '2019-09-20 15:09:49', '2019-09-20 15:09:49', 'O', 543);
INSERT INTO `photo` VALUES (4, 'B', 'vn/photo/shop/certificate/', '2019/09/16/bc28ab36a1d0151ba48d49d6dd530186.jpg', 'EWCEO000048745961', '', '2019-09-20 15:15:18', '2019-09-20 15:15:18', 'O', 544);
INSERT INTO `photo` VALUES (5, 'B', 'vn/photo/shop/certificate/', '2019/09/16/1f4f7c1d3087ca036b07f927f8996ec0.jpg', 'EWCEO000048745961', '', '2019-09-20 16:46:00', '2019-09-20 16:46:00', 'O', 545);
INSERT INTO `photo` VALUES (6, 'B', 'vn/photo/shop/certificate/', '2019/09/20/821fb1af2f618218c0c93496a547ac9f.jpg', 'KLAYL000048371160', '', '2019-09-20 16:54:09', '2019-09-20 16:54:09', 'O', 546);
INSERT INTO `photo` VALUES (7, 'B', 'vn/photo/shop/certificate/', '2019/09/16/23d8b234e09647e089f31626ad954638.jpg', 'EWCEO000048745961', '', '2019-09-20 18:03:00', '2019-09-20 18:03:00', 'O', 563);
INSERT INTO `photo` VALUES (8, 'B', 'vn/photo/shop/certificate/', '2019/09/16/bd0516401c4490096bbc918efba04b22.jpg', 'EWCEO000048745961', '', '2019-09-20 18:04:03', '2019-09-20 18:04:03', 'O', 565);
INSERT INTO `photo` VALUES (9, 'B', 'vn/photo/shop/certificate/', '2019/09/16/fc3a100a06d68cc894e95014f4bd7a38.jpg', 'EWCEO000048745961', '', '2019-09-20 18:04:31', '2019-09-20 18:04:31', 'O', 566);
INSERT INTO `photo` VALUES (10, 'B', 'vn/photo/shop/certificate/', '2019/09/16/bafa148864dd17a81df1df6446bba86d.jpg', 'EWCEO000048745961', '', '2019-09-23 09:38:54', '2019-09-23 09:38:54', 'O', 568);
INSERT INTO `photo` VALUES (11, 'B', 'vn/photo/shop/certificate/', '2019/09/16/4652c4a14132f452e271f38d662b1642.jpg', 'EWCEO000048745961', '', '2019-09-24 08:51:49', '2019-09-24 08:51:49', 'O', 569);
INSERT INTO `photo` VALUES (12, 'B', 'vn/photo/shop/certificate/', '2019/09/16/eff9720c6fd7605d181b06a7602b9779.jpg', 'EWCEO000048745961', '', '2019-09-24 09:30:53', '2019-09-24 09:30:53', 'O', 570);
INSERT INTO `photo` VALUES (13, 'B', 'vn/photo/shop/certificate/', '2019/09/16/4517a97b4868c63eab3ed038f110aab6.jpg', 'EWCEO000048745961', '', '2019-09-24 09:30:54', '2019-09-24 09:30:54', 'O', 570);
INSERT INTO `photo` VALUES (14, 'E', 'vn/photo/shop/environment/', '2019/10/18/0fb90ad953b7b1d1c6cef9b2093ee887.jpg', 'BVTIZ000050792444', '', '2019-10-18 16:19:35', '2019-10-18 16:19:35', 'O', 1);
INSERT INTO `photo` VALUES (15, 'B', 'vn/photo/shop/certificate/', '2019/10/24/43a3c77bb8fb14ac108fe2b751347168.jpg', 'undefined', '', '2019-10-24 16:06:57', '2019-10-24 16:06:57', 'O', 3);
INSERT INTO `photo` VALUES (16, 'B', 'vn/photo/shop/certificate/', '2019/10/24/5b78df2848dd9137abc1e62e3d74eded.jpg', 'undefined', '', '2019-10-24 16:18:49', '2019-10-24 16:18:49', 'O', 3);
INSERT INTO `photo` VALUES (17, 'B', 'vn/photo/shop/certificate/', '2019/10/24/c333b59570ea3739c4875d75e07961bc.jpg', 'undefined', '', '2019-10-24 16:21:11', '2019-10-24 16:21:11', 'O', 4);
INSERT INTO `photo` VALUES (18, 'B', 'vn/photo/shop/certificate/', '2019/10/24/fb63826c538b6d4baf0593a39b0823f2.jpg', 'undefined', '', '2019-10-24 16:22:06', '2019-10-24 16:22:06', 'O', 4);
INSERT INTO `photo` VALUES (19, 'B', 'vn/photo/shop/certificate/', '2019/10/24/d95119a9e80dcbc4ea5fbf5d8b893d82.jpg', 'undefined', '', '2019-10-24 16:33:25', '2019-10-24 16:33:25', 'O', 4);
INSERT INTO `photo` VALUES (20, 'B', 'vn/photo/shop/certificate/', '2019/10/24/aa8ca9dcf5216dfcc473447321d1c6a7.jpg', 'undefined', '', '2019-10-24 16:36:12', '2019-10-24 16:36:12', 'O', 3);
INSERT INTO `photo` VALUES (21, 'B', 'vn/photo/shop/certificate/', '2019/10/24/7ae111ca9020973b6f0edff1809467c0.jpg', 'undefined', '', '2019-10-24 16:44:44', '2019-10-24 16:44:44', 'O', 3);
INSERT INTO `photo` VALUES (22, 'B', 'vn/photo/shop/certificate/', '2019/10/24/85f363892db993861d3132852935c593.jpg', 'IOADJ000012409546', '', '2019-10-24 16:50:31', '2019-10-24 16:50:31', 'O', 3);
INSERT INTO `photo` VALUES (23, 'B', 'vn/photo/shop/certificate/', '2019/10/24/5bb7bb9f5a6fcb1e171ea230b12597d4.jpg', 'IOADJ000012409546', '', '2019-10-24 16:57:23', '2019-10-24 16:57:23', 'O', 3);
INSERT INTO `photo` VALUES (24, 'C', 'vn/photo/shop/cover/2019/10/25/', '9be09ff019588232cfadb196a8e56032.png', 'NYURW000050792586', '', '2019-10-25 11:47:47', '2019-10-25 11:47:47', 'O', 10);
INSERT INTO `photo` VALUES (25, 'B', 'vn/photo/shop/certificate/', '2019/10/25/ca3dc0fd89a079017c336f5dd678969b.png', 'JHEMN000050661445', '', '2019-10-25 15:15:12', '2019-10-25 15:15:12', 'O', 10);
INSERT INTO `photo` VALUES (26, 'E', 'vn/photo/shop/environment/', '2019/10/28/cecd6c5e7d32fd0d07a31b7dec9f6b76.jpg', 'CBCDK000012745880', '', '2019-10-28 14:51:38', '2019-10-28 14:51:38', 'O', 501);
INSERT INTO `photo` VALUES (27, 'I', 'vn/photo/shop/introduction/', '2019/10/28/5ff50a59a3e00f593b6118eae661194d.jpg', 'JEZGN000012678899', '', '2019-10-28 16:25:25', '2019-10-28 16:25:25', 'O', 501);
INSERT INTO `photo` VALUES (28, 'C', 'vn/photo/shop/cover/2019/10/28/', '042cff835398812a417b80211316c7d6.png', 'JHEMN000050661445', '', '2019-10-28 16:51:19', '2019-10-28 16:51:19', 'O', 10);
INSERT INTO `photo` VALUES (29, 'I', 'vn/photo/shop/introduction/', '2019/10/28/23705f07eb04b468486d7b270525489c.jpg', 'JHEMN000050661445', '', '2019-10-28 17:13:31', '2019-10-28 17:13:31', 'O', 10);
INSERT INTO `photo` VALUES (30, 'E', 'vn/photo/shop/environment/', '2019/10/28/ad6f64afba1089df8562dfe72b9572dc.jpg', 'JHEMN000050661445', '', '2019-10-28 17:30:34', '2019-10-28 17:30:34', 'O', 10);
INSERT INTO `photo` VALUES (31, 'E', 'vn/photo/shop/environment/', '2019/10/28/69f2e246919dcf9c75774b8799ecaa20.jpg', 'JHEMN000050661445', '', '2019-10-28 17:36:36', '2019-10-28 17:36:36', 'O', 10);
INSERT INTO `photo` VALUES (32, 'I', 'vn/photo/shop/introduction/', '2019/10/28/fe24d09a188280b86de2bd54ff187140.jpg', 'JHEMN000050661445', '', '2019-10-28 17:39:10', '2019-10-28 17:39:10', 'O', 10);
INSERT INTO `photo` VALUES (33, 'P', 'vn/photo/shop/post/', '2019/10/28/9e4240f50dcc636f00bd320757413ffc.jpg', 'JHEMN000050661445', '', '2019-10-28 17:40:41', '2019-10-28 17:40:41', 'O', 10);
INSERT INTO `photo` VALUES (34, 'E', 'vn/photo/shop/environment/', '2019/10/29/0aa81dd6b7704ee9b87396b159a6b675.jpg', 'JEZGN000012678899', '', '2019-10-29 08:52:52', '2019-10-29 08:52:52', 'O', 10);
INSERT INTO `photo` VALUES (35, 'E', 'vn/photo/shop/environment/', '2019/10/29/f8433031f2a5e4d303ee0ab82c68a1c1.jpg', 'JEZGN000012678899', '', '2019-10-29 08:53:42', '2019-10-29 08:53:42', 'O', 10);
INSERT INTO `photo` VALUES (36, 'E', 'vn/photo/shop/environment/', '2019/10/29/1b01a20460558cbd3a69ab59a27e751c.jpg', 'JHEMN000050661445', '', '2019-10-29 10:14:51', '2019-10-29 10:14:51', 'O', 10);
INSERT INTO `photo` VALUES (37, 'E', 'vn/photo/shop/environment/', '2019/10/29/1ca81eec9f32a59e923981585cc54ef5.jpg', 'JHEMN000050661445', '', '2019-10-29 10:15:49', '2019-10-29 10:15:49', 'O', 10);
INSERT INTO `photo` VALUES (38, 'E', 'vn/photo/shop/environment/', '2019/10/29/43ba21f287fe66f0af3cd5bf48641ab2.jpg', 'JHEMN000050661445', '', '2019-10-29 10:18:26', '2019-10-29 10:18:26', 'O', 10);
INSERT INTO `photo` VALUES (39, 'I', 'vn/photo/shop/introduction/', '2019/10/29/dcaaca2ee5ebc8fd0b6f3181db13ca59.jpg', 'JHEMN000050661445', '', '2019-10-29 10:24:25', '2019-10-29 10:24:25', 'O', 10);
INSERT INTO `photo` VALUES (40, 'E', 'vn/photo/shop/environment/', '2019/10/29/7c8501803b13f2a2ded5bca79d8ff0bc.png', 'NYURW000050792586', '', '2019-10-29 11:01:35', '2019-10-29 11:01:35', 'O', 12);
INSERT INTO `photo` VALUES (41, 'E', 'vn/photo/shop/environment/', '2019/10/29/428b1a82180a508d87733f9e17508891.png', 'NYURW000050792586', '', '2019-10-29 11:03:04', '2019-10-29 11:03:04', 'O', 12);
INSERT INTO `photo` VALUES (42, 'E', 'vn/photo/shop/environment/', '2019/10/29/9c5d2cdf4f090597194d20b937e342cc.jpg', 'NYURW000050792586', '', '2019-10-29 11:03:53', '2019-10-29 11:03:53', 'O', 12);
INSERT INTO `photo` VALUES (43, 'B', 'vn/photo/shop/certificate/', '2019/10/29/0c5610e09dca5f59386af7921a65ff54.png', 'NYURW000050792586', '', '2019-10-29 11:25:16', '2019-10-29 11:25:16', 'O', 571);
INSERT INTO `photo` VALUES (44, 'C', 'vn/photo/shop/cover/2019/10/29/', 'e9fb0837660e35aab5ab99310e2de05f.jpg', 'NYURW000050792586', '', '2019-10-29 11:28:54', '2019-10-29 11:28:54', 'O', 571);
INSERT INTO `photo` VALUES (50, 'M', 'vn/photo/shop/map/', '09e13ab617639ecfd9907fbbcd25d631.png', 'VBZAC000012925861', '', '2019-10-31 18:12:28', '2019-10-31 18:12:28', 'O', 574);
INSERT INTO `photo` VALUES (51, 'M', 'vn/photo/shop/map/', '6a8e23f749bf76df290da43969582506.png', 'VBZAC000012925861', '', '2019-10-31 18:17:11', '2019-10-31 18:17:11', 'O', 575);
INSERT INTO `photo` VALUES (52, 'E', 'vn/photo/shop/environment/', '2019/11/01/63e46c2fb8ede2d7f71427d2734f1355.jpg', '0', '', '2019-11-01 10:16:15', '2019-11-01 10:16:15', 'O', 10);
INSERT INTO `photo` VALUES (53, 'M', 'vn/photo/shop/position/2019/11/01/', '424f289a6b4d59362a0a1bba087c39e9.png', '0', '', '2019-11-01 10:24:21', '2019-11-07 15:00:48', 'D', 10);
INSERT INTO `photo` VALUES (54, 'M', 'vn/photo/shop/position/', 'e18c4aca12fcc1e518e0d70012507219.png', '0', '', '2019-11-01 10:33:08', '2019-11-07 15:00:48', 'D', 10);
INSERT INTO `photo` VALUES (55, 'M', 'vn/photo/shop/position/2019/11/01/', '2e5aa01221d5ddb90b3f25e844cdef06.png', '0', '', '2019-11-01 10:46:27', '2019-11-07 15:00:48', 'D', 10);
INSERT INTO `photo` VALUES (56, 'M', 'D:/SHOPSERVICE/upload/vn/photo/shop/position/2019/11/01/', 'f5e8a225b0b136df82e72fd54e6d6bfb.png', '0', '', '2019-11-01 10:54:28', '2019-11-07 15:00:48', 'D', 10);
INSERT INTO `photo` VALUES (57, 'M', 'vn/photo/shop/position/2019/11/01/', '4ce8e42a73fd3b9e28a005806247da67.png', '0', '', '2019-11-01 11:07:03', '2019-11-07 15:00:48', 'D', 10);
INSERT INTO `photo` VALUES (58, 'I', 'vn/photo/shop/introduction/', '2019/11/01/0be9b3d7821955d566cc96b8e5aada14.jpg', 'UAGTO000012833291', '', '2019-11-01 14:39:51', '2019-11-01 14:39:51', 'O', 10);
INSERT INTO `photo` VALUES (59, 'M', 'vn/photo/shop/position/2019/11/04/', '2993e5ae0a1636d6bdc40845df731127.png', '0', '', '2019-11-04 15:08:32', '2019-11-07 15:00:48', 'D', 10);
INSERT INTO `photo` VALUES (60, 'M', 'vn/photo/shop/position/2019/11/04/', '7ca8ab3b9bdc7e4be93137954a9ef53d.png', 'JHEMN000050661445', '', '2019-11-04 15:10:12', '2019-11-04 15:10:12', 'O', 7);
INSERT INTO `photo` VALUES (61, 'M', 'vn/photo/shop/position/2019/11/04/', '014c7c93c11bf18a23ec1d6c117197e9.png', 'JHEMN000050661445', '', '2019-11-04 17:33:48', '2019-11-07 15:00:48', 'D', 10);
INSERT INTO `photo` VALUES (62, 'I', 'vn/photo/shop/introduction/', '2019/11/05/08fac458bbaa1ca10cd1a72d83fb80c3.jpg', 'JHEMN000050661445', '', '2019-11-05 14:14:48', '2019-11-05 14:14:48', 'O', 10);
INSERT INTO `photo` VALUES (63, 'P', 'vn/photo/shop/post/', '2019/11/05/6073f07993e36e149095a1b604aad93c.jpg', 'JHEMN000050661445', '', '2019-11-05 14:31:01', '2019-11-05 14:31:01', 'O', 10);
INSERT INTO `photo` VALUES (64, 'E', 'vn/photo/shop/environment/', '2019/11/05/a5b3a00d647cbb90dd7f9c91ba888355.jpg', 'JHEMN000050661445', '', '2019-11-05 16:52:00', '2019-11-05 16:52:00', 'O', 11);
INSERT INTO `photo` VALUES (65, 'M', 'vn/photo/shop/position/2019/11/05/', 'da24f5a3fb62db9fa59e4d9504d087f9.png', 'JHEMN000050661445', '', '2019-11-05 17:59:46', '2019-11-05 17:59:46', 'O', 20);
INSERT INTO `photo` VALUES (66, 'M', 'vn/photo/shop/position/2019/11/06/', 'b80140f3fe099b29e29410401d6e8548.png', 'JHEMN000050661445', '', '2019-11-06 12:01:05', '2019-11-06 12:01:05', 'O', 32);
INSERT INTO `photo` VALUES (67, 'M', 'vn/photo/shop/position/2019/11/06/', '781bbc94ddcd0412a4398036df0266b3.png', 'JHEMN000050661445', '', '2019-11-06 13:51:43', '2019-11-06 13:51:43', 'O', 33);
INSERT INTO `photo` VALUES (68, 'M', 'vn/photo/shop/position/2019/11/06/', '82aa1af4e8dc009b6952c46e158574e9.png', 'JHEMN000050661445', '', '2019-11-06 14:48:41', '2019-11-06 14:48:41', 'O', 34);
INSERT INTO `photo` VALUES (69, 'E', 'vn/photo/shop/environment/', '2019/11/06/ea84088322c52e769558f9ab04da787d.jpg', 'JHEMN000050661445', '', '2019-11-06 17:38:23', '2019-11-06 17:38:23', 'O', 10);
INSERT INTO `photo` VALUES (70, 'M', 'vn/photo/shop/position/2019/11/06/', 'd215e66f51ae3d2853a633bb23759686.png', '0', '', '2019-11-06 18:43:53', '2019-11-06 18:43:53', 'O', 35);
INSERT INTO `photo` VALUES (71, 'M', 'vn/photo/shop/position/2019/11/07/', '29020b6aa36e058564fa0d646492e0bd.png', 'JHEMN000050661445', '', '2019-11-07 10:11:43', '2019-11-07 10:11:43', 'O', 6001);
INSERT INTO `photo` VALUES (72, 'M', 'vn/photo/shop/position/2019/11/07/', 'eb67b6b0a6e5e48da0bcb532cfcb01cc.png', 'UAGTO000012833291', '', '2019-11-07 11:58:17', '2019-11-07 11:58:17', 'O', 11);
INSERT INTO `photo` VALUES (73, 'M', 'vn/photo/shop/position/2019/11/07/', '681237cbaeef278347575f062fb80781.png', 'JHEMN000050661445', '', '2019-11-07 14:43:24', '2019-11-07 15:00:48', 'D', 10);
INSERT INTO `photo` VALUES (74, 'M', 'vn/photo/shop/position/2019/11/07/', '1285fbfa55525a71b94741252b14fa76.png', 'JHEMN000050661445', '', '2019-11-07 14:45:25', '2019-11-07 15:00:48', 'D', 10);
INSERT INTO `photo` VALUES (75, 'B', 'vn/photo/shop/certificate/', '2019/11/07/d1899c6f23e25615523c327470c6cd65.jpg', 'UAGTO000012833291', '', '2019-11-07 14:58:19', '2019-11-07 14:58:19', 'O', 11);
INSERT INTO `photo` VALUES (76, 'M', 'vn/photo/shop/position/2019/11/07/', '09d6b986e496586f4eb37fb20889276a.png', 'JHEMN000050661445', '', '2019-11-07 15:00:46', '2019-11-07 15:00:46', 'O', 10);
INSERT INTO `photo` VALUES (77, 'M', 'vn/photo/shop/position/2019/11/07/', '80a7f0cb7585a68e03e35c79f081bc64.png', '0', '', '2019-11-07 16:19:41', '2019-11-22 15:27:16', 'D', 22);
INSERT INTO `photo` VALUES (78, 'M', 'vn/photo/shop/position/2019/11/07/', 'b9ebdf403ed094ceed2cbb9eb1674ca0.png', 'JHEMN000050661445', '', '2019-11-07 16:43:07', '2019-11-22 15:27:16', 'D', 22);
INSERT INTO `photo` VALUES (79, 'C', 'vn/photo/shop/cover/2019/11/07/', '2cab362e015d00c3c1f0bee790e928c0.jpg', 'JHEMN000050661445', '', '2019-11-07 16:43:15', '2019-11-07 16:43:15', 'O', 22);
INSERT INTO `photo` VALUES (80, 'P', 'vn/photo/shop/post/', '2019/11/07/cc4bdd91a03cc972bdad5bed43be4688.jpg', 'JHEMN000050661445', '', '2019-11-07 16:53:41', '2019-11-07 16:53:41', 'O', 22);
INSERT INTO `photo` VALUES (81, 'M', 'vn/photo/shop/position/2019/11/08/', 'e9e576699788f12bc08dad4eb33b4ef5.png', 'UAGTO000012833291', '', '2019-11-08 09:06:08', '2019-11-08 09:06:08', 'O', 23);
INSERT INTO `photo` VALUES (82, 'M', 'vn/photo/shop/position/2019/11/08/', '2f414949ce13c57735b3094351c080ce.png', 'JHEMN000050661445', '', '2019-11-08 09:51:45', '2019-11-22 15:27:16', 'D', 22);
INSERT INTO `photo` VALUES (83, 'M', 'vn/photo/shop/position/2019/11/08/', 'a2a548b79c47e9ebdd00439a9e77656d.png', 'JHEMN000050661445', '', '2019-11-08 10:50:16', '2019-11-08 10:50:16', 'O', 8474);
INSERT INTO `photo` VALUES (84, 'M', 'vn/photo/shop/position/2019/11/13/', 'bbf288a6d8008662d68075308c7bc58c.png', 'JHEMN000050661445', '', '2019-11-13 14:32:17', '2019-11-22 15:27:16', 'D', 22);
INSERT INTO `photo` VALUES (85, 'C', 'vn/photo/shop/cover/2019/11/13/', 'c73595488e648a2e9664d3d90b0aaac6.jpg', 'JHEMN000050661445', '', '2019-11-13 14:32:23', '2019-11-13 14:32:23', 'O', 22);
INSERT INTO `photo` VALUES (86, 'M', 'vn/photo/shop/position/2019/11/13/', 'fd21c8023a07eafc47402b474da27179.png', 'JHEMN000050661445', '', '2019-11-13 14:34:47', '2019-11-22 15:27:16', 'D', 22);
INSERT INTO `photo` VALUES (87, 'C', 'vn/photo/shop/cover/2019/11/13/', '131d5400a72c52cde0c529cf5e75b617.jpg', 'JHEMN000050661445', '', '2019-11-13 14:34:52', '2019-11-13 14:34:52', 'O', 22);
INSERT INTO `photo` VALUES (88, 'M', 'vn/photo/shop/position/2019/11/13/', '90dab5d23807865008c72ff46ce5ae63.png', 'JHEMN000050661445', '', '2019-11-13 14:43:32', '2019-11-13 14:43:32', 'O', 1);
INSERT INTO `photo` VALUES (89, 'C', 'vn/photo/shop/cover/2019/11/13/', '4a5a32933d236e836cf2c4f46d72e6ee.jpg', 'JHEMN000050661445', '', '2019-11-13 15:51:58', '2019-11-13 15:51:58', 'O', 22);
INSERT INTO `photo` VALUES (90, 'C', 'vn/photo/shop/cover/2019/11/13/', 'b303db0516cea0ad475c9741dd165315.jpg', 'JHEMN000050661445', '', '2019-11-13 15:56:15', '2019-11-13 15:56:15', 'O', 22);
INSERT INTO `photo` VALUES (91, 'M', 'vn/photo/shop/position/2019/11/13/', '87aa235da7d7c699ed987b0c7953a31e.png', 'JHEMN000050661445', '', '2019-11-13 16:43:56', '2019-11-22 15:27:16', 'D', 22);
INSERT INTO `photo` VALUES (92, 'M', 'vn/photo/shop/position/2019/11/14/', '3e432f235979abaff6d0b8018c5826d0.png', 'JHEMN000050661445', '', '2019-11-14 10:54:49', '2019-11-22 15:27:16', 'D', 22);
INSERT INTO `photo` VALUES (93, 'C', 'vn/photo/shop/cover/2019/11/14/', 'a171e80efb2e743cee8aa5799aa9e8e1.jpg', 'JHEMN000050661445', '', '2019-11-14 10:54:54', '2019-11-14 10:54:54', 'O', 22);
INSERT INTO `photo` VALUES (94, 'M', 'vn/photo/shop/position/2019/11/14/', 'afaacc9a1ab32386c5a4e3e731870082.png', 'JHEMN000050661445', '', '2019-11-14 10:57:15', '2019-11-22 15:27:16', 'D', 22);
INSERT INTO `photo` VALUES (95, 'C', 'vn/photo/shop/cover/2019/11/14/', 'eb83c17219dfd83c4edf2205b7ca52b9.jpg', 'JHEMN000050661445', '', '2019-11-14 10:57:21', '2019-11-14 10:57:21', 'O', 22);
INSERT INTO `photo` VALUES (96, 'M', 'vn/photo/shop/position/2019/11/14/', '7c7cde46a390b2b6ee1c8f2848129f77.png', '0', '', '2019-11-14 11:05:37', '2019-11-14 11:05:37', 'O', 711);
INSERT INTO `photo` VALUES (97, 'M', 'vn/photo/shop/position/2019/11/14/', 'a3861c93ad26bb24e795590555e29120.png', 'JHEMN000050661445', '', '2019-11-14 11:10:49', '2019-11-22 15:27:16', 'D', 22);
INSERT INTO `photo` VALUES (98, 'C', 'vn/photo/shop/cover/2019/11/14/', '7fdfd205ec9859dfc1cb9fb593dbcd94.jpg', 'JHEMN000050661445', '', '2019-11-14 11:10:56', '2019-11-14 11:10:56', 'O', 22);
INSERT INTO `photo` VALUES (99, 'M', 'vn/photo/shop/position/2019/11/14/', 'c94f95e8a1b931f9162ed0c9d06c2c34.png', 'JHEMN000050661445', '', '2019-11-14 13:55:59', '2019-11-14 13:55:59', 'O', 606);
INSERT INTO `photo` VALUES (100, 'M', 'vn/photo/shop/position/2019/11/14/', '14de5e0d9bdb6490ec01404c5808ed4c.png', 'JHEMN000050661445', '', '2019-11-14 13:57:09', '2019-11-14 13:57:09', 'O', 588);
INSERT INTO `photo` VALUES (101, 'M', 'vn/photo/shop/position/2019/11/14/', 'dd3318a2ed0a739f74784e16ffba5cf3.png', 'JHEMN000050661445', '', '2019-11-14 14:56:39', '2019-11-22 15:27:16', 'D', 22);
INSERT INTO `photo` VALUES (102, 'P', 'vn/photo/shop/post/', '2019/11/14/a8f8f7fd5a4a4d17b2d835acd8aaf170.jpg', 'JHEMN000050661445', '', '2019-11-14 15:55:36', '2019-11-14 16:00:35', 'D', 22);
INSERT INTO `photo` VALUES (103, 'I', 'vn/photo/shop/introduction/', '2019/11/15/2fd9b62fdf9a4d2ef9c4e8e58199bd1d.jpg', 'JHEMN000050661445', '', '2019-11-15 11:59:59', '2019-11-15 11:59:59', 'O', 22);
INSERT INTO `photo` VALUES (104, 'P', 'vn/photo/shop/post/', '2019/11/15/4d4dbaa30ab504d1d19191f50efa07ec.jpg', 'JHEMN000050661445', '', '2019-11-15 13:14:20', '2019-11-15 13:14:20', 'O', 22);
INSERT INTO `photo` VALUES (105, 'M', 'vn/photo/shop/position/2019/11/18/', '34cdce743a1f931f22ef98b238b8adbe.png', 'JHEMN000050661445', '', '2019-11-18 09:17:20', '2019-11-22 15:27:16', 'D', 22);
INSERT INTO `photo` VALUES (106, 'M', 'vn/photo/shop/position/2019/11/19/', '3130184c8d23365b618650c683cab17f.png', 'JHEMN000050661445', '', '2019-11-19 16:09:20', '2019-11-19 17:43:39', 'D', 8505);
INSERT INTO `photo` VALUES (107, 'M', 'vn/photo/shop/position/2019/11/19/', '4a03ab3c7bb727cce64e914d691caeaf.png', 'JHEMN000050661445', '', '2019-11-19 16:11:42', '2019-11-19 16:12:39', 'D', 8456);
INSERT INTO `photo` VALUES (108, 'M', 'vn/photo/shop/position/2019/11/19/', '95f21f300ffc4898daced150ea467875.png', 'JHEMN000050661445', '', '2019-11-19 16:12:38', '2019-11-19 16:12:38', 'O', 8456);
INSERT INTO `photo` VALUES (109, 'M', 'vn/photo/shop/position/2019/11/19/', '373f7bf8ec488c61a05f1cb905f107d9.png', 'JHEMN000050661445', '', '2019-11-19 16:16:55', '2019-11-19 17:56:54', 'D', 6002);
INSERT INTO `photo` VALUES (110, 'M', 'vn/photo/shop/position/2019/11/19/', 'f85f718693948ea80501b9fd713b23bf.png', 'JHEMN000050661445', '', '2019-11-19 16:23:30', '2019-11-19 16:23:30', 'O', 8469);
INSERT INTO `photo` VALUES (111, 'M', 'vn/photo/shop/position/2019/11/19/', 'f180b244119ae0a8b9c2027cad5affa0.png', 'JHEMN000050661445', '', '2019-11-19 16:57:13', '2019-11-22 15:27:16', 'D', 22);
INSERT INTO `photo` VALUES (112, 'M', 'vn/photo/shop/position/2019/11/19/', '94092121b9ea7ba37159ae335849f1ee.png', 'JHEMN000050661445', '', '2019-11-19 17:07:30', '2019-11-19 17:07:30', 'O', 4);
INSERT INTO `photo` VALUES (113, 'M', 'vn/photo/shop/position/2019/11/19/', 'e1a9ea6b8f639a9d7f1faf141a3810d1.png', 'JHEMN000050661445', '', '2019-11-19 17:26:47', '2019-11-19 17:43:39', 'D', 8505);
INSERT INTO `photo` VALUES (114, 'M', 'vn/photo/shop/position/2019/11/19/', '73a0ed655091ce5c1525b191c4e247eb.png', 'JHEMN000050661445', '', '2019-11-19 17:43:39', '2019-11-19 17:43:39', 'O', 8505);
INSERT INTO `photo` VALUES (115, 'M', 'vn/photo/shop/position/2019/11/19/', '08cff94dca580d5f9ca072800c46f681.png', 'JHEMN000050661445', '', '2019-11-19 17:44:31', '2019-11-19 17:44:31', 'O', 582);
INSERT INTO `photo` VALUES (116, 'M', 'vn/photo/shop/position/2019/11/19/', '313f4cf75d38807910143cfbdf2a47c4.png', 'JHEMN000050661445', '', '2019-11-19 17:56:54', '2019-11-19 17:56:54', 'O', 6002);
INSERT INTO `photo` VALUES (117, 'M', 'vn/photo/shop/position/2019/11/20/', '41b3e0931e960eeb535ae72ba2af6faf.png', 'JHEMN000050661445', '', '2019-11-20 09:49:21', '2019-11-20 09:49:21', 'O', 8475);
INSERT INTO `photo` VALUES (118, 'M', 'vn/photo/shop/position/2019/11/20/', 'ee9f98437644658bcd9b78ee89e8a258.png', 'JHEMN000050661445', '', '2019-11-20 11:11:45', '2019-11-22 15:27:16', 'D', 22);
INSERT INTO `photo` VALUES (119, 'M', 'vn/photo/shop/position/2019/11/20/', '29a554a829fe69c2ca248beb7780530f.png', 'JHEMN000050661445', '', '2019-11-20 11:19:57', '2019-11-22 15:27:16', 'D', 22);
INSERT INTO `photo` VALUES (120, 'M', 'vn/photo/shop/position/2019/11/21/', '252932c1b75ba5f0f61cdeacd57f1b50.png', 'JHEMN000050661445', '', '2019-11-21 08:15:02', '2019-11-21 08:15:02', 'O', 583);
INSERT INTO `photo` VALUES (121, 'I', 'vn/photo/shop/introduction/', '2019/11/21/d1f387495ee3719c0158410962f777be.jpg', 'JHEMN000050661445', '', '2019-11-21 09:26:28', '2019-11-21 09:26:28', 'O', 22);
INSERT INTO `photo` VALUES (122, 'M', 'vn/photo/shop/position/2019/11/21/', '53ba06e84593d61789d59ce3a168bea6.png', 'JHEMN000050661445', '', '2019-11-21 09:29:44', '2019-11-22 15:27:16', 'D', 22);
INSERT INTO `photo` VALUES (123, 'P', 'vn/photo/shop/post/', '2019/11/21/33a7885ddbaff66ad05eeed95a678008.jpg', 'JHEMN000050661445', '', '2019-11-21 09:52:39', '2019-11-21 09:52:39', 'O', 22);
INSERT INTO `photo` VALUES (124, 'M', 'vn/photo/shop/position/2019/11/22/', '5565c233d5e261fbc9a0fa07cad98d04.png', 'JHEMN000050661445', '', '2019-11-22 15:27:01', '2019-11-22 15:27:01', 'O', 22);

-- ----------------------------
-- Table structure for rl_photo_post
-- ----------------------------
DROP TABLE IF EXISTS `rl_photo_post`;
CREATE TABLE `rl_photo_post`  (
  `post_id` bigint(20) NOT NULL,
  `photo_id` bigint(20) NOT NULL,
  `photo_div` int(4) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `rl_alter_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`post_id`, `photo_id`, `photo_div`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of rl_photo_post
-- ----------------------------
INSERT INTO `rl_photo_post` VALUES (664869, 33, 1, 10, '2019-10-28 17:40:41');
INSERT INTO `rl_photo_post` VALUES (326026, 63, 1, 10, '2019-11-05 14:31:01');
INSERT INTO `rl_photo_post` VALUES (326038, 80, 1, 22, '2019-11-07 16:53:41');
INSERT INTO `rl_photo_post` VALUES (326840, 104, 1, 22, '2019-11-15 13:14:20');
INSERT INTO `rl_photo_post` VALUES (664872, 123, 1, 22, '2019-11-21 09:52:39');

-- ----------------------------
-- Table structure for rl_photo_shop_cover
-- ----------------------------
DROP TABLE IF EXISTS `rl_photo_shop_cover`;
CREATE TABLE `rl_photo_shop_cover`  (
  `shop_id` int(11) NOT NULL,
  `photo_id` bigint(20) NOT NULL,
  `photo_div` int(4) NOT NULL,
  `rl_alter_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`shop_id`, `photo_id`, `photo_div`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of rl_photo_shop_cover
-- ----------------------------
INSERT INTO `rl_photo_shop_cover` VALUES (10, 24, 0, '2019-10-28 16:51:19');
INSERT INTO `rl_photo_shop_cover` VALUES (10, 28, 1, '2019-10-28 16:51:19');
INSERT INTO `rl_photo_shop_cover` VALUES (571, 44, 1, '2019-10-29 11:28:54');
INSERT INTO `rl_photo_shop_cover` VALUES (22, 79, 0, '2019-11-14 11:10:57');
INSERT INTO `rl_photo_shop_cover` VALUES (22, 85, 0, '2019-11-14 11:10:57');
INSERT INTO `rl_photo_shop_cover` VALUES (22, 87, 0, '2019-11-14 11:10:57');
INSERT INTO `rl_photo_shop_cover` VALUES (22, 89, 0, '2019-11-14 11:10:57');
INSERT INTO `rl_photo_shop_cover` VALUES (22, 90, 0, '2019-11-14 11:10:57');
INSERT INTO `rl_photo_shop_cover` VALUES (22, 93, 0, '2019-11-14 11:10:57');
INSERT INTO `rl_photo_shop_cover` VALUES (22, 95, 0, '2019-11-14 11:10:57');
INSERT INTO `rl_photo_shop_cover` VALUES (22, 98, 1, '2019-11-14 11:10:57');

-- ----------------------------
-- Table structure for rl_photo_shop_environment
-- ----------------------------
DROP TABLE IF EXISTS `rl_photo_shop_environment`;
CREATE TABLE `rl_photo_shop_environment`  (
  `post_id` bigint(20) NOT NULL,
  `photo_id` bigint(20) NOT NULL,
  `photo_div` int(4) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `rl_alter_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`post_id`, `photo_id`, `photo_div`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of rl_photo_shop_environment
-- ----------------------------
INSERT INTO `rl_photo_shop_environment` VALUES (1155, 14, 1, 1, '2019-10-18 16:19:36');
INSERT INTO `rl_photo_shop_environment` VALUES (1156, 26, 1, 501, '2019-10-28 14:51:38');
INSERT INTO `rl_photo_shop_environment` VALUES (15, 30, 1, 10, '2019-10-28 17:30:34');
INSERT INTO `rl_photo_shop_environment` VALUES (12, 31, 1, 10, '2019-10-28 17:36:36');
INSERT INTO `rl_photo_shop_environment` VALUES (400, 34, 1, 10, '2019-10-29 08:52:52');
INSERT INTO `rl_photo_shop_environment` VALUES (1157, 35, 1, 10, '2019-10-29 08:53:43');
INSERT INTO `rl_photo_shop_environment` VALUES (1158, 36, 1, 10, '2019-10-29 10:14:52');
INSERT INTO `rl_photo_shop_environment` VALUES (14, 37, 1, 10, '2019-10-29 10:15:50');
INSERT INTO `rl_photo_shop_environment` VALUES (13, 38, 1, 10, '2019-10-29 10:18:27');
INSERT INTO `rl_photo_shop_environment` VALUES (1159, 40, 1, 12, '2019-10-29 11:01:35');
INSERT INTO `rl_photo_shop_environment` VALUES (1160, 41, 1, 12, '2019-10-29 11:03:04');
INSERT INTO `rl_photo_shop_environment` VALUES (1161, 42, 1, 12, '2019-10-29 11:03:54');
INSERT INTO `rl_photo_shop_environment` VALUES (1, 52, 1, 10, '2019-11-01 10:16:15');
INSERT INTO `rl_photo_shop_environment` VALUES (395, 64, 1, 11, '2019-11-05 16:52:00');
INSERT INTO `rl_photo_shop_environment` VALUES (1163, 69, 1, 10, '2019-11-06 17:38:23');

-- ----------------------------
-- Table structure for rl_photo_shop_introduction
-- ----------------------------
DROP TABLE IF EXISTS `rl_photo_shop_introduction`;
CREATE TABLE `rl_photo_shop_introduction`  (
  `post_id` bigint(20) NOT NULL,
  `photo_id` bigint(20) NOT NULL,
  `photo_div` int(4) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `rl_alter_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`post_id`, `photo_id`, `photo_div`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of rl_photo_shop_introduction
-- ----------------------------
INSERT INTO `rl_photo_shop_introduction` VALUES (3852, 27, 1, 501, '2019-10-28 16:25:26');
INSERT INTO `rl_photo_shop_introduction` VALUES (3853, 29, 1, 10, '2019-10-28 17:13:31');
INSERT INTO `rl_photo_shop_introduction` VALUES (15, 32, 1, 10, '2019-10-28 17:39:10');
INSERT INTO `rl_photo_shop_introduction` VALUES (3854, 39, 1, 10, '2019-10-29 10:24:26');
INSERT INTO `rl_photo_shop_introduction` VALUES (3855, 58, 1, 10, '2019-11-01 14:39:51');
INSERT INTO `rl_photo_shop_introduction` VALUES (17, 62, 1, 10, '2019-11-05 14:14:48');
INSERT INTO `rl_photo_shop_introduction` VALUES (22, 103, 1, 22, '2019-11-15 11:59:59');
INSERT INTO `rl_photo_shop_introduction` VALUES (3856, 121, 1, 22, '2019-11-21 09:26:29');

-- ----------------------------
-- Table structure for rl_photo_shop_position
-- ----------------------------
DROP TABLE IF EXISTS `rl_photo_shop_position`;
CREATE TABLE `rl_photo_shop_position`  (
  `shop_id` int(11) NOT NULL,
  `photo_id` bigint(20) NOT NULL,
  `photo_div` int(4) NOT NULL,
  `rl_alter_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`shop_id`, `photo_id`, `photo_div`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of rl_photo_shop_position
-- ----------------------------
INSERT INTO `rl_photo_shop_position` VALUES (588, 100, 1, '2019-11-14 13:57:09');
INSERT INTO `rl_photo_shop_position` VALUES (575, 51, 1, '2019-10-31 18:17:11');
INSERT INTO `rl_photo_shop_position` VALUES (574, 50, 1, '2019-10-31 18:12:28');
INSERT INTO `rl_photo_shop_position` VALUES (4, 112, 1, '2019-11-19 17:07:31');
INSERT INTO `rl_photo_shop_position` VALUES (606, 99, 1, '2019-11-14 13:55:59');
INSERT INTO `rl_photo_shop_position` VALUES (1, 88, 1, '2019-11-13 14:43:32');
INSERT INTO `rl_photo_shop_position` VALUES (711, 96, 1, '2019-11-14 11:05:37');
INSERT INTO `rl_photo_shop_position` VALUES (8474, 83, 1, '2019-11-08 10:50:16');
INSERT INTO `rl_photo_shop_position` VALUES (7, 60, 1, '2019-11-04 15:10:12');
INSERT INTO `rl_photo_shop_position` VALUES (23, 81, 1, '2019-11-08 09:06:08');
INSERT INTO `rl_photo_shop_position` VALUES (20, 65, 1, '2019-11-05 17:59:47');
INSERT INTO `rl_photo_shop_position` VALUES (32, 66, 1, '2019-11-06 12:01:06');
INSERT INTO `rl_photo_shop_position` VALUES (33, 67, 1, '2019-11-06 13:51:43');
INSERT INTO `rl_photo_shop_position` VALUES (34, 68, 1, '2019-11-06 14:48:42');
INSERT INTO `rl_photo_shop_position` VALUES (35, 70, 1, '2019-11-06 18:43:53');
INSERT INTO `rl_photo_shop_position` VALUES (6001, 71, 1, '2019-11-07 10:11:44');
INSERT INTO `rl_photo_shop_position` VALUES (11, 72, 1, '2019-11-07 11:58:17');
INSERT INTO `rl_photo_shop_position` VALUES (10, 76, 1, '2019-11-07 15:00:48');
INSERT INTO `rl_photo_shop_position` VALUES (8505, 114, 1, '2019-11-19 17:43:39');
INSERT INTO `rl_photo_shop_position` VALUES (8475, 117, 1, '2019-11-20 09:49:21');
INSERT INTO `rl_photo_shop_position` VALUES (8456, 108, 1, '2019-11-19 16:12:39');
INSERT INTO `rl_photo_shop_position` VALUES (8469, 110, 1, '2019-11-19 16:23:30');
INSERT INTO `rl_photo_shop_position` VALUES (22, 124, 1, '2019-11-22 15:27:15');
INSERT INTO `rl_photo_shop_position` VALUES (582, 115, 1, '2019-11-19 17:44:31');
INSERT INTO `rl_photo_shop_position` VALUES (6002, 116, 1, '2019-11-19 17:56:54');
INSERT INTO `rl_photo_shop_position` VALUES (583, 120, 1, '2019-11-21 08:15:02');

-- ----------------------------
-- Table structure for rl_photo_shop_profile
-- ----------------------------
DROP TABLE IF EXISTS `rl_photo_shop_profile`;
CREATE TABLE `rl_photo_shop_profile`  (
  `shop_id` int(11) NOT NULL,
  `photo_id` bigint(20) NOT NULL,
  `photo_div` int(4) NOT NULL,
  `rl_alter_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`shop_id`, `photo_id`, `photo_div`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of rl_photo_shop_profile
-- ----------------------------
INSERT INTO `rl_photo_shop_profile` VALUES (533, 1, 0, '2019-09-19 15:33:01');
INSERT INTO `rl_photo_shop_profile` VALUES (539, 2, 0, '2019-09-20 14:49:26');
INSERT INTO `rl_photo_shop_profile` VALUES (543, 3, 0, '2019-09-20 15:09:49');
INSERT INTO `rl_photo_shop_profile` VALUES (544, 4, 0, '2019-09-20 15:15:18');
INSERT INTO `rl_photo_shop_profile` VALUES (545, 5, 0, '2019-09-20 16:46:00');
INSERT INTO `rl_photo_shop_profile` VALUES (546, 6, 0, '2019-09-20 16:54:09');
INSERT INTO `rl_photo_shop_profile` VALUES (563, 7, 0, '2019-09-20 18:03:00');
INSERT INTO `rl_photo_shop_profile` VALUES (565, 8, 0, '2019-09-20 18:04:03');
INSERT INTO `rl_photo_shop_profile` VALUES (566, 9, 0, '2019-09-20 18:04:31');
INSERT INTO `rl_photo_shop_profile` VALUES (568, 10, 0, '2019-09-23 09:38:54');
INSERT INTO `rl_photo_shop_profile` VALUES (569, 11, 0, '2019-09-24 08:51:49');
INSERT INTO `rl_photo_shop_profile` VALUES (570, 12, 0, '2019-09-24 09:30:54');
INSERT INTO `rl_photo_shop_profile` VALUES (570, 13, 0, '2019-09-24 09:30:54');
INSERT INTO `rl_photo_shop_profile` VALUES (3, 15, 0, '2019-10-24 16:06:57');
INSERT INTO `rl_photo_shop_profile` VALUES (3, 16, 0, '2019-10-24 16:18:50');
INSERT INTO `rl_photo_shop_profile` VALUES (4, 17, 0, '2019-10-24 16:21:12');
INSERT INTO `rl_photo_shop_profile` VALUES (4, 18, 0, '2019-10-24 16:22:07');
INSERT INTO `rl_photo_shop_profile` VALUES (4, 19, 0, '2019-10-24 16:33:26');
INSERT INTO `rl_photo_shop_profile` VALUES (3, 20, 0, '2019-10-24 16:36:13');
INSERT INTO `rl_photo_shop_profile` VALUES (3, 21, 0, '2019-10-24 16:44:45');
INSERT INTO `rl_photo_shop_profile` VALUES (3, 22, 0, '2019-10-24 16:50:32');
INSERT INTO `rl_photo_shop_profile` VALUES (3, 23, 0, '2019-10-24 16:57:23');
INSERT INTO `rl_photo_shop_profile` VALUES (10, 25, 0, '2019-10-25 15:15:14');
INSERT INTO `rl_photo_shop_profile` VALUES (571, 43, 0, '2019-10-29 11:25:16');
INSERT INTO `rl_photo_shop_profile` VALUES (11, 75, 0, '2019-11-07 14:58:19');

-- ----------------------------
-- Table structure for youtube_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `youtube_access_tokens`;
CREATE TABLE `youtube_access_tokens`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `access_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of youtube_access_tokens
-- ----------------------------
INSERT INTO `youtube_access_tokens` VALUES (1, '{\"access_token\":\"ya29.GluHB_X9YzXK4NLPA1QzSxV5p4srjIx2-YOgSd8hjRo3RFRcn5nrmxIaR_ahsS1jXJ7HCPF6X56wHJ-RGZBfnFVnV2c0enqhroyNxWx04e50KGPhh_-z20FqGSc-\",\"expires_in\":3600,\"refresh_token\":\"1\\/SxbMpnEdoyrpxH959ytdyTRuOu6Ry-KVtI3Cqzkrbb8\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1568773959}', '2019-09-18 02:32:39');

SET FOREIGN_KEY_CHECKS = 1;

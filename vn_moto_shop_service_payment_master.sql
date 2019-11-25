/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : 192.168.88.226:3306
 Source Schema         : vn_moto_shop_service_payment_master

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 25/11/2019 14:48:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mst_product_category
-- ----------------------------
DROP TABLE IF EXISTS `mst_product_category`;
CREATE TABLE `mst_product_category`  (
  `product_category_id` int(4) NOT NULL,
  `product_category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_category_parent_code` int(4) NULL DEFAULT NULL,
  `product_category_level` int(1) NULL DEFAULT NULL,
  `product_category_last_update` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `product_category_update_user` char(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_category_effect_flag` int(1) NULL DEFAULT 1,
  `module_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`product_category_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mst_product_category
-- ----------------------------
INSERT INTO `mst_product_category` VALUES (1, 'Exposure', NULL, 1, '2019-09-24 10:51:34', 'mss_admin', 1, NULL);
INSERT INTO `mst_product_category` VALUES (2, 'Management', NULL, 1, '2019-09-24 10:51:34', 'mss_admin', 1, NULL);
INSERT INTO `mst_product_category` VALUES (3, 'Control', NULL, 1, '2019-09-24 10:51:34', 'mss_admin', 1, NULL);
INSERT INTO `mst_product_category` VALUES (4, 'Check', NULL, 1, '2019-09-24 10:51:34', 'mss_admin', 1, NULL);
INSERT INTO `mst_product_category` VALUES (10, 'Post function', 1, 2, '2019-10-24 11:14:28', 'mss_admin', 1, 'post');
INSERT INTO `mst_product_category` VALUES (20, 'Campaign function', 1, 2, '2019-10-24 11:14:46', 'mss_admin', 1, 'campaign');
INSERT INTO `mst_product_category` VALUES (30, 'Motomarket function', 1, 2, '2019-10-24 11:14:39', 'mss_admin', 1, 'motomarket');
INSERT INTO `mst_product_category` VALUES (40, 'Highlight function', 1, 2, '2019-09-24 10:59:41', 'mss_admin', 1, NULL);
INSERT INTO `mst_product_category` VALUES (50, 'Random banner control function', 1, 2, '2019-09-24 10:59:41', 'mss_admin', 1, NULL);
INSERT INTO `mst_product_category` VALUES (60, 'EDM function', 1, 2, '2019-09-24 10:59:41', 'mss_admin', 1, NULL);
INSERT INTO `mst_product_category` VALUES (70, 'Messages function', 1, 2, '2019-09-24 10:59:41', 'mss_admin', 1, NULL);
INSERT INTO `mst_product_category` VALUES (80, 'Reservation function', 1, 2, '2019-09-24 10:59:41', 'mss_admin', 1, NULL);
INSERT INTO `mst_product_category` VALUES (90, 'Stock management function', 2, 2, '2019-09-24 10:59:41', 'mss_admin', 1, NULL);
INSERT INTO `mst_product_category` VALUES (100, 'Pit management function', 2, 2, '2019-09-24 10:59:41', 'mss_admin', 1, NULL);
INSERT INTO `mst_product_category` VALUES (110, 'Monitor function', 3, 2, '2019-09-24 10:59:41', 'mss_admin', 1, NULL);
INSERT INTO `mst_product_category` VALUES (120, 'Online Check out function', 3, 2, '2019-09-24 10:59:41', 'mss_admin', 1, NULL);
INSERT INTO `mst_product_category` VALUES (130, 'Sales analystic function', 3, 2, '2019-09-24 10:59:41', 'mss_admin', 1, NULL);
INSERT INTO `mst_product_category` VALUES (140, 'HR report function', 3, 2, '2019-09-24 10:59:41', 'mss_admin', 1, NULL);
INSERT INTO `mst_product_category` VALUES (150, 'MSS basic function', 1, 2, '2019-10-29 14:04:36', 'mss_admin', 1, 'shop_environment, shop_service');

-- ----------------------------
-- Table structure for mst_product_feature
-- ----------------------------
DROP TABLE IF EXISTS `mst_product_feature`;
CREATE TABLE `mst_product_feature`  (
  `product_feature_id` int(4) NOT NULL,
  `product_feature_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_feature_last_update` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `product_feature_update_user` char(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`product_feature_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mst_product_feature
-- ----------------------------
INSERT INTO `mst_product_feature` VALUES (2, 'Package set', '2019-10-29 14:07:52', 'mss_admin');
INSERT INTO `mst_product_feature` VALUES (1, 'Regular service', '2019-10-29 14:07:47', 'mss_admin');

-- ----------------------------
-- Table structure for tbl_price_table_info
-- ----------------------------
DROP TABLE IF EXISTS `tbl_price_table_info`;
CREATE TABLE `tbl_price_table_info`  (
  `price_table_info_id` int(4) NOT NULL,
  `price_table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price_table_effect_flag` int(1) NOT NULL DEFAULT 0,
  `price_table_start_date` datetime(0) NULL DEFAULT NULL,
  `price_table_end_date` datetime(0) NULL DEFAULT NULL,
  `price_table_create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `price_table_alter_date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `price_table_update_user` char(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`price_table_info_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_price_table_info
-- ----------------------------
INSERT INTO `tbl_price_table_info` VALUES (100, 'Price table master', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-09-27 09:49:50', '2019-09-27 09:49:50', 'mss_admin');
INSERT INTO `tbl_price_table_info` VALUES (200, 'Price table master', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-09-27 09:49:50', '2019-09-27 09:49:50', 'mss_admin');

-- ----------------------------
-- Table structure for tbl_price_table_item
-- ----------------------------
DROP TABLE IF EXISTS `tbl_price_table_item`;
CREATE TABLE `tbl_price_table_item`  (
  `price_table_item_id` int(8) NOT NULL AUTO_INCREMENT,
  `price_table_info_id` int(4) NOT NULL,
  `product_service_id` int(8) NOT NULL,
  `month` int(2) NULL DEFAULT 0,
  `price` double NULL DEFAULT 0,
  `price_orginal` double NULL DEFAULT 0,
  `view_on_list` int(1) NULL DEFAULT 0,
  PRIMARY KEY (`price_table_item_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 715 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of tbl_price_table_item
-- ----------------------------
INSERT INTO `tbl_price_table_item` VALUES (408, 200, 3000, 12, 360000800, 375001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (407, 200, 2000, 12, 240000800, 250001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (406, 200, 1000, 12, 120000800, 125001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (405, 200, 140, 12, 16800800, 17501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (404, 200, 130, 12, 15600800, 16251000, 0);
INSERT INTO `tbl_price_table_item` VALUES (403, 200, 120, 12, 14400800, 15001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (402, 200, 110, 12, 13200800, 13751000, 0);
INSERT INTO `tbl_price_table_item` VALUES (401, 200, 100, 12, 12000800, 12501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (400, 200, 90, 12, 10800800, 11251000, 0);
INSERT INTO `tbl_price_table_item` VALUES (399, 200, 80, 12, 9600800, 10001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (398, 200, 70, 12, 8400800, 8751000, 0);
INSERT INTO `tbl_price_table_item` VALUES (397, 200, 60, 12, 7200800, 7501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (396, 200, 50, 12, 6000800, 6251000, 0);
INSERT INTO `tbl_price_table_item` VALUES (395, 200, 40, 12, 4800800, 5001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (394, 200, 30, 12, 3600800, 3751000, 0);
INSERT INTO `tbl_price_table_item` VALUES (393, 200, 20, 12, 2400800, 2501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (392, 200, 10, 12, 1200800, 1251000, 0);
INSERT INTO `tbl_price_table_item` VALUES (391, 200, 3000, 3, 90000800, 105001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (390, 200, 2000, 3, 60000800, 70001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (389, 200, 1000, 3, 30000800, 35001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (388, 200, 140, 3, 4200800, 4901000, 0);
INSERT INTO `tbl_price_table_item` VALUES (387, 200, 130, 3, 3900800, 4551000, 0);
INSERT INTO `tbl_price_table_item` VALUES (386, 200, 120, 3, 3600800, 4201000, 0);
INSERT INTO `tbl_price_table_item` VALUES (385, 200, 110, 3, 3300800, 3851000, 0);
INSERT INTO `tbl_price_table_item` VALUES (384, 200, 100, 3, 3000800, 3501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (383, 200, 90, 3, 2700800, 3151000, 0);
INSERT INTO `tbl_price_table_item` VALUES (382, 200, 80, 3, 2400800, 2801000, 0);
INSERT INTO `tbl_price_table_item` VALUES (381, 200, 70, 3, 2100800, 2451000, 0);
INSERT INTO `tbl_price_table_item` VALUES (380, 200, 60, 3, 1800800, 2101000, 0);
INSERT INTO `tbl_price_table_item` VALUES (379, 200, 50, 3, 1500800, 1751000, 0);
INSERT INTO `tbl_price_table_item` VALUES (378, 200, 40, 3, 1200800, 1401000, 0);
INSERT INTO `tbl_price_table_item` VALUES (377, 200, 30, 3, 900800, 1051000, 0);
INSERT INTO `tbl_price_table_item` VALUES (376, 200, 20, 3, 600800, 701000, 0);
INSERT INTO `tbl_price_table_item` VALUES (375, 200, 10, 3, 300800, 351000, 0);
INSERT INTO `tbl_price_table_item` VALUES (374, 200, 3000, 1, 30000800, 45001000, 1);
INSERT INTO `tbl_price_table_item` VALUES (373, 200, 2000, 1, 20000800, 30001000, 1);
INSERT INTO `tbl_price_table_item` VALUES (372, 200, 1000, 1, 10000800, 15001000, 1);
INSERT INTO `tbl_price_table_item` VALUES (371, 200, 140, 1, 1400800, 2101000, 1);
INSERT INTO `tbl_price_table_item` VALUES (370, 200, 130, 1, 1300800, 1951000, 1);
INSERT INTO `tbl_price_table_item` VALUES (369, 200, 120, 1, 1200800, 1801000, 1);
INSERT INTO `tbl_price_table_item` VALUES (368, 200, 110, 1, 1100800, 1651000, 1);
INSERT INTO `tbl_price_table_item` VALUES (367, 200, 100, 1, 1000800, 1501000, 1);
INSERT INTO `tbl_price_table_item` VALUES (366, 200, 90, 1, 900800, 1351000, 1);
INSERT INTO `tbl_price_table_item` VALUES (365, 200, 80, 1, 800800, 1201000, 1);
INSERT INTO `tbl_price_table_item` VALUES (364, 200, 70, 1, 700800, 1051000, 1);
INSERT INTO `tbl_price_table_item` VALUES (363, 200, 60, 1, 600800, 901000, 1);
INSERT INTO `tbl_price_table_item` VALUES (362, 200, 50, 1, 500800, 751000, 1);
INSERT INTO `tbl_price_table_item` VALUES (361, 200, 40, 1, 400800, 601000, 1);
INSERT INTO `tbl_price_table_item` VALUES (360, 200, 30, 1, 300800, 451000, 1);
INSERT INTO `tbl_price_table_item` VALUES (359, 200, 20, 1, 200800, 301000, 1);
INSERT INTO `tbl_price_table_item` VALUES (358, 200, 10, 1, 100800, 151000, 1);
INSERT INTO `tbl_price_table_item` VALUES (357, 100, 3000, 12, 360000000, 375000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (356, 100, 2000, 12, 240000000, 250000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (355, 100, 1000, 12, 120000000, 125000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (354, 100, 140, 12, 16800000, 17500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (353, 100, 130, 12, 15600000, 16250000, 0);
INSERT INTO `tbl_price_table_item` VALUES (352, 100, 120, 12, 14400000, 15000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (351, 100, 110, 12, 13200000, 13750000, 0);
INSERT INTO `tbl_price_table_item` VALUES (350, 100, 100, 12, 12000000, 12500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (349, 100, 90, 12, 10800000, 11250000, 0);
INSERT INTO `tbl_price_table_item` VALUES (348, 100, 80, 12, 9600000, 10000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (347, 100, 70, 12, 8400000, 8750000, 0);
INSERT INTO `tbl_price_table_item` VALUES (346, 100, 60, 12, 7200000, 7500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (345, 100, 50, 12, 6000000, 6250000, 0);
INSERT INTO `tbl_price_table_item` VALUES (344, 100, 40, 12, 4800000, 5000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (343, 100, 30, 12, 3600000, 3750000, 0);
INSERT INTO `tbl_price_table_item` VALUES (342, 100, 20, 12, 2400000, 2500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (341, 100, 10, 12, 1200000, 1250000, 0);
INSERT INTO `tbl_price_table_item` VALUES (340, 100, 3000, 3, 90000000, 105000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (339, 100, 2000, 3, 60000000, 70000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (338, 100, 1000, 3, 30000000, 35000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (337, 100, 140, 3, 4200000, 4900000, 0);
INSERT INTO `tbl_price_table_item` VALUES (336, 100, 130, 3, 3900000, 4550000, 0);
INSERT INTO `tbl_price_table_item` VALUES (335, 100, 120, 3, 3600000, 4200000, 0);
INSERT INTO `tbl_price_table_item` VALUES (334, 100, 110, 3, 3300000, 3850000, 0);
INSERT INTO `tbl_price_table_item` VALUES (333, 100, 100, 3, 3000000, 3500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (332, 100, 90, 3, 2700000, 3150000, 0);
INSERT INTO `tbl_price_table_item` VALUES (331, 100, 80, 3, 2400000, 2800000, 0);
INSERT INTO `tbl_price_table_item` VALUES (330, 100, 70, 3, 2100000, 2450000, 0);
INSERT INTO `tbl_price_table_item` VALUES (329, 100, 60, 3, 1800000, 2100000, 0);
INSERT INTO `tbl_price_table_item` VALUES (328, 100, 50, 3, 1500000, 1750000, 0);
INSERT INTO `tbl_price_table_item` VALUES (327, 100, 40, 3, 1200000, 1400000, 0);
INSERT INTO `tbl_price_table_item` VALUES (326, 100, 30, 3, 900000, 1050000, 0);
INSERT INTO `tbl_price_table_item` VALUES (325, 100, 20, 3, 600000, 700000, 0);
INSERT INTO `tbl_price_table_item` VALUES (324, 100, 10, 3, 300000, 350000, 0);
INSERT INTO `tbl_price_table_item` VALUES (323, 100, 3000, 1, 30000000, 45000000, 1);
INSERT INTO `tbl_price_table_item` VALUES (322, 100, 2000, 1, 20000000, 30000000, 1);
INSERT INTO `tbl_price_table_item` VALUES (321, 100, 1000, 1, 10000000, 15000000, 1);
INSERT INTO `tbl_price_table_item` VALUES (320, 100, 140, 1, 1400000, 2100000, 1);
INSERT INTO `tbl_price_table_item` VALUES (319, 100, 130, 1, 1300000, 1950000, 1);
INSERT INTO `tbl_price_table_item` VALUES (318, 100, 120, 1, 1200000, 1800000, 1);
INSERT INTO `tbl_price_table_item` VALUES (317, 100, 110, 1, 1100000, 1650000, 1);
INSERT INTO `tbl_price_table_item` VALUES (316, 100, 100, 1, 1000000, 1500000, 1);
INSERT INTO `tbl_price_table_item` VALUES (315, 100, 90, 1, 900000, 1350000, 1);
INSERT INTO `tbl_price_table_item` VALUES (314, 100, 80, 1, 800000, 1200000, 1);
INSERT INTO `tbl_price_table_item` VALUES (313, 100, 70, 1, 700000, 1050000, 1);
INSERT INTO `tbl_price_table_item` VALUES (312, 100, 60, 1, 600000, 900000, 1);
INSERT INTO `tbl_price_table_item` VALUES (311, 100, 50, 1, 500000, 750000, 1);
INSERT INTO `tbl_price_table_item` VALUES (310, 100, 40, 1, 400000, 600000, 1);
INSERT INTO `tbl_price_table_item` VALUES (309, 100, 30, 1, 300000, 450000, 1);
INSERT INTO `tbl_price_table_item` VALUES (308, 100, 20, 1, 200000, 300000, 1);
INSERT INTO `tbl_price_table_item` VALUES (307, 100, 10, 1, 100001, 150000, 1);
INSERT INTO `tbl_price_table_item` VALUES (409, 200, 3001, 12, 360000800, 375001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (410, 200, 2001, 12, 240000800, 250001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (411, 200, 1001, 12, 120000800, 125001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (412, 200, 141, 12, 16800800, 17501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (413, 200, 131, 12, 15600800, 16251000, 0);
INSERT INTO `tbl_price_table_item` VALUES (414, 200, 121, 12, 14400800, 15001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (415, 200, 111, 12, 13200800, 13751000, 0);
INSERT INTO `tbl_price_table_item` VALUES (416, 200, 101, 12, 12000800, 12501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (417, 200, 91, 12, 10800800, 11251000, 0);
INSERT INTO `tbl_price_table_item` VALUES (418, 200, 81, 12, 9600800, 10001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (419, 200, 71, 12, 8400800, 8751000, 0);
INSERT INTO `tbl_price_table_item` VALUES (420, 200, 61, 12, 7200800, 7501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (421, 200, 51, 12, 6000800, 6251000, 0);
INSERT INTO `tbl_price_table_item` VALUES (422, 200, 41, 12, 4800800, 5001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (423, 200, 31, 12, 3600800, 3751000, 0);
INSERT INTO `tbl_price_table_item` VALUES (424, 200, 21, 12, 2400800, 2501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (425, 200, 11, 12, 1200800, 1251000, 0);
INSERT INTO `tbl_price_table_item` VALUES (426, 200, 3001, 3, 90000800, 105001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (427, 200, 2001, 3, 60000800, 70001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (428, 200, 1001, 3, 30000800, 35001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (429, 200, 141, 3, 4200800, 4901000, 0);
INSERT INTO `tbl_price_table_item` VALUES (430, 200, 131, 3, 3900800, 4551000, 0);
INSERT INTO `tbl_price_table_item` VALUES (431, 200, 121, 3, 3600800, 4201000, 0);
INSERT INTO `tbl_price_table_item` VALUES (432, 200, 111, 3, 3300800, 3851000, 0);
INSERT INTO `tbl_price_table_item` VALUES (433, 200, 101, 3, 3000800, 3501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (434, 200, 91, 3, 2700800, 3151000, 0);
INSERT INTO `tbl_price_table_item` VALUES (435, 200, 81, 3, 2400800, 2801000, 0);
INSERT INTO `tbl_price_table_item` VALUES (436, 200, 71, 3, 2100800, 2451000, 0);
INSERT INTO `tbl_price_table_item` VALUES (437, 200, 61, 3, 1800800, 2101000, 0);
INSERT INTO `tbl_price_table_item` VALUES (438, 200, 51, 3, 1500800, 1751000, 0);
INSERT INTO `tbl_price_table_item` VALUES (439, 200, 41, 3, 1200800, 1401000, 0);
INSERT INTO `tbl_price_table_item` VALUES (440, 200, 31, 3, 900800, 1051000, 0);
INSERT INTO `tbl_price_table_item` VALUES (441, 200, 21, 3, 600800, 701000, 0);
INSERT INTO `tbl_price_table_item` VALUES (442, 200, 11, 3, 300800, 351000, 0);
INSERT INTO `tbl_price_table_item` VALUES (443, 200, 3001, 1, 30000800, 45001000, 1);
INSERT INTO `tbl_price_table_item` VALUES (444, 200, 2001, 1, 20000800, 30001000, 1);
INSERT INTO `tbl_price_table_item` VALUES (445, 200, 1001, 1, 10000800, 15001000, 1);
INSERT INTO `tbl_price_table_item` VALUES (446, 200, 141, 1, 1400800, 2101000, 1);
INSERT INTO `tbl_price_table_item` VALUES (447, 200, 131, 1, 1300800, 1951000, 1);
INSERT INTO `tbl_price_table_item` VALUES (448, 200, 121, 1, 1200800, 1801000, 1);
INSERT INTO `tbl_price_table_item` VALUES (449, 200, 111, 1, 1100800, 1651000, 1);
INSERT INTO `tbl_price_table_item` VALUES (450, 200, 101, 1, 1000800, 1501000, 1);
INSERT INTO `tbl_price_table_item` VALUES (451, 200, 91, 1, 900800, 1351000, 1);
INSERT INTO `tbl_price_table_item` VALUES (452, 200, 81, 1, 800800, 1201000, 1);
INSERT INTO `tbl_price_table_item` VALUES (453, 200, 71, 1, 700800, 1051000, 1);
INSERT INTO `tbl_price_table_item` VALUES (454, 200, 61, 1, 600800, 901000, 1);
INSERT INTO `tbl_price_table_item` VALUES (455, 200, 51, 1, 500800, 751000, 1);
INSERT INTO `tbl_price_table_item` VALUES (456, 200, 41, 1, 400800, 601000, 1);
INSERT INTO `tbl_price_table_item` VALUES (457, 200, 31, 1, 300800, 451000, 1);
INSERT INTO `tbl_price_table_item` VALUES (458, 200, 21, 1, 200800, 301000, 1);
INSERT INTO `tbl_price_table_item` VALUES (459, 200, 11, 1, 100800, 151000, 1);
INSERT INTO `tbl_price_table_item` VALUES (460, 100, 3001, 12, 360000000, 375000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (461, 100, 2001, 12, 240000000, 250000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (462, 100, 1001, 12, 120000000, 125000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (463, 100, 141, 12, 16800000, 17500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (464, 100, 131, 12, 15600000, 16250000, 0);
INSERT INTO `tbl_price_table_item` VALUES (465, 100, 121, 12, 14400000, 15000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (466, 100, 111, 12, 13200000, 13750000, 0);
INSERT INTO `tbl_price_table_item` VALUES (467, 100, 101, 12, 12000000, 12500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (468, 100, 91, 12, 10800000, 11250000, 0);
INSERT INTO `tbl_price_table_item` VALUES (469, 100, 81, 12, 9600000, 10000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (470, 100, 71, 12, 8400000, 8750000, 0);
INSERT INTO `tbl_price_table_item` VALUES (471, 100, 61, 12, 7200000, 7500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (472, 100, 51, 12, 6000000, 6250000, 0);
INSERT INTO `tbl_price_table_item` VALUES (473, 100, 41, 12, 4800000, 5000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (474, 100, 31, 12, 3600000, 3750000, 0);
INSERT INTO `tbl_price_table_item` VALUES (475, 100, 21, 12, 2400000, 2500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (476, 100, 11, 12, 1200000, 1250000, 0);
INSERT INTO `tbl_price_table_item` VALUES (477, 100, 3001, 3, 90000000, 105000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (478, 100, 2001, 3, 60000000, 70000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (479, 100, 1001, 3, 30000000, 35000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (480, 100, 141, 3, 4200000, 4900000, 0);
INSERT INTO `tbl_price_table_item` VALUES (481, 100, 131, 3, 3900000, 4550000, 0);
INSERT INTO `tbl_price_table_item` VALUES (482, 100, 121, 3, 3600000, 4200000, 0);
INSERT INTO `tbl_price_table_item` VALUES (483, 100, 111, 3, 3300000, 3850000, 0);
INSERT INTO `tbl_price_table_item` VALUES (484, 100, 101, 3, 3000000, 3500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (485, 100, 91, 3, 2700000, 3150000, 0);
INSERT INTO `tbl_price_table_item` VALUES (486, 100, 81, 3, 2400000, 2800000, 0);
INSERT INTO `tbl_price_table_item` VALUES (487, 100, 71, 3, 2100000, 2450000, 0);
INSERT INTO `tbl_price_table_item` VALUES (488, 100, 61, 3, 1800000, 2100000, 0);
INSERT INTO `tbl_price_table_item` VALUES (489, 100, 51, 3, 1500000, 1750000, 0);
INSERT INTO `tbl_price_table_item` VALUES (490, 100, 41, 3, 1200000, 1400000, 0);
INSERT INTO `tbl_price_table_item` VALUES (491, 100, 31, 3, 900000, 1050000, 0);
INSERT INTO `tbl_price_table_item` VALUES (492, 100, 21, 3, 600000, 700000, 0);
INSERT INTO `tbl_price_table_item` VALUES (493, 100, 11, 3, 300000, 350000, 0);
INSERT INTO `tbl_price_table_item` VALUES (494, 100, 3001, 1, 30000000, 45000000, 1);
INSERT INTO `tbl_price_table_item` VALUES (495, 100, 2001, 1, 20000000, 30000000, 1);
INSERT INTO `tbl_price_table_item` VALUES (496, 100, 1001, 1, 10000000, 15000000, 1);
INSERT INTO `tbl_price_table_item` VALUES (497, 100, 141, 1, 1400000, 2100000, 1);
INSERT INTO `tbl_price_table_item` VALUES (498, 100, 131, 1, 1300000, 1950000, 1);
INSERT INTO `tbl_price_table_item` VALUES (499, 100, 121, 1, 1200000, 1800000, 1);
INSERT INTO `tbl_price_table_item` VALUES (500, 100, 111, 1, 1100000, 1650000, 1);
INSERT INTO `tbl_price_table_item` VALUES (501, 100, 101, 1, 1000000, 1500000, 1);
INSERT INTO `tbl_price_table_item` VALUES (502, 100, 91, 1, 900000, 1350000, 1);
INSERT INTO `tbl_price_table_item` VALUES (503, 100, 81, 1, 800000, 1200000, 1);
INSERT INTO `tbl_price_table_item` VALUES (504, 100, 71, 1, 700000, 1050000, 1);
INSERT INTO `tbl_price_table_item` VALUES (505, 100, 61, 1, 600000, 900000, 1);
INSERT INTO `tbl_price_table_item` VALUES (506, 100, 51, 1, 500000, 750000, 1);
INSERT INTO `tbl_price_table_item` VALUES (507, 100, 41, 1, 400000, 600000, 1);
INSERT INTO `tbl_price_table_item` VALUES (508, 100, 31, 1, 300000, 450000, 1);
INSERT INTO `tbl_price_table_item` VALUES (509, 100, 21, 1, 200000, 300000, 1);
INSERT INTO `tbl_price_table_item` VALUES (510, 100, 11, 1, 100000, 150000, 1);
INSERT INTO `tbl_price_table_item` VALUES (511, 200, 3002, 12, 360000800, 375001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (512, 200, 2002, 12, 240000800, 250001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (513, 200, 1002, 12, 120000800, 125001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (514, 200, 142, 12, 16800800, 17501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (515, 200, 132, 12, 15600800, 16251000, 0);
INSERT INTO `tbl_price_table_item` VALUES (516, 200, 122, 12, 14400800, 15001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (517, 200, 112, 12, 13200800, 13751000, 0);
INSERT INTO `tbl_price_table_item` VALUES (518, 200, 102, 12, 12000800, 12501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (519, 200, 92, 12, 10800800, 11251000, 0);
INSERT INTO `tbl_price_table_item` VALUES (520, 200, 82, 12, 9600800, 10001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (521, 200, 72, 12, 8400800, 8751000, 0);
INSERT INTO `tbl_price_table_item` VALUES (522, 200, 62, 12, 7200800, 7501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (523, 200, 52, 12, 6000800, 6251000, 0);
INSERT INTO `tbl_price_table_item` VALUES (524, 200, 42, 12, 4800800, 5001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (525, 200, 32, 12, 3600800, 3751000, 0);
INSERT INTO `tbl_price_table_item` VALUES (526, 200, 22, 12, 2400800, 2501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (527, 200, 12, 12, 1200800, 1251000, 0);
INSERT INTO `tbl_price_table_item` VALUES (528, 200, 3002, 3, 90000800, 105001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (529, 200, 2002, 3, 60000800, 70001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (530, 200, 1002, 3, 30000800, 35001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (531, 200, 142, 3, 4200800, 4901000, 0);
INSERT INTO `tbl_price_table_item` VALUES (532, 200, 132, 3, 3900800, 4551000, 0);
INSERT INTO `tbl_price_table_item` VALUES (533, 200, 122, 3, 3600800, 4201000, 0);
INSERT INTO `tbl_price_table_item` VALUES (534, 200, 112, 3, 3300800, 3851000, 0);
INSERT INTO `tbl_price_table_item` VALUES (535, 200, 102, 3, 3000800, 3501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (536, 200, 92, 3, 2700800, 3151000, 0);
INSERT INTO `tbl_price_table_item` VALUES (537, 200, 82, 3, 2400800, 2801000, 0);
INSERT INTO `tbl_price_table_item` VALUES (538, 200, 72, 3, 2100800, 2451000, 0);
INSERT INTO `tbl_price_table_item` VALUES (539, 200, 62, 3, 1800800, 2101000, 0);
INSERT INTO `tbl_price_table_item` VALUES (540, 200, 52, 3, 1500800, 1751000, 0);
INSERT INTO `tbl_price_table_item` VALUES (541, 200, 42, 3, 1200800, 1401000, 0);
INSERT INTO `tbl_price_table_item` VALUES (542, 200, 32, 3, 900800, 1051000, 0);
INSERT INTO `tbl_price_table_item` VALUES (543, 200, 22, 3, 600800, 701000, 0);
INSERT INTO `tbl_price_table_item` VALUES (544, 200, 12, 3, 300800, 351000, 0);
INSERT INTO `tbl_price_table_item` VALUES (545, 200, 3002, 1, 30000800, 45001000, 1);
INSERT INTO `tbl_price_table_item` VALUES (546, 200, 2002, 1, 20000800, 30001000, 1);
INSERT INTO `tbl_price_table_item` VALUES (547, 200, 1002, 1, 10000800, 15001000, 1);
INSERT INTO `tbl_price_table_item` VALUES (548, 200, 142, 1, 1400800, 2101000, 1);
INSERT INTO `tbl_price_table_item` VALUES (549, 200, 132, 1, 1300800, 1951000, 1);
INSERT INTO `tbl_price_table_item` VALUES (550, 200, 122, 1, 1200800, 1801000, 1);
INSERT INTO `tbl_price_table_item` VALUES (551, 200, 112, 1, 1100800, 1651000, 1);
INSERT INTO `tbl_price_table_item` VALUES (552, 200, 102, 1, 1000800, 1501000, 1);
INSERT INTO `tbl_price_table_item` VALUES (553, 200, 92, 1, 900800, 1351000, 1);
INSERT INTO `tbl_price_table_item` VALUES (554, 200, 82, 1, 800800, 1201000, 1);
INSERT INTO `tbl_price_table_item` VALUES (555, 200, 72, 1, 700800, 1051000, 1);
INSERT INTO `tbl_price_table_item` VALUES (556, 200, 62, 1, 600800, 901000, 1);
INSERT INTO `tbl_price_table_item` VALUES (557, 200, 52, 1, 500800, 751000, 1);
INSERT INTO `tbl_price_table_item` VALUES (558, 200, 42, 1, 400800, 601000, 1);
INSERT INTO `tbl_price_table_item` VALUES (559, 200, 32, 1, 300800, 451000, 1);
INSERT INTO `tbl_price_table_item` VALUES (560, 200, 22, 1, 200800, 301000, 1);
INSERT INTO `tbl_price_table_item` VALUES (561, 200, 12, 1, 100800, 151000, 1);
INSERT INTO `tbl_price_table_item` VALUES (562, 100, 3002, 12, 360000000, 375000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (563, 100, 2002, 12, 240000000, 250000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (564, 100, 1002, 12, 120000000, 125000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (565, 100, 142, 12, 16800000, 17500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (566, 100, 132, 12, 15600000, 16250000, 0);
INSERT INTO `tbl_price_table_item` VALUES (567, 100, 122, 12, 14400000, 15000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (568, 100, 112, 12, 13200000, 13750000, 0);
INSERT INTO `tbl_price_table_item` VALUES (569, 100, 102, 12, 12000000, 12500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (570, 100, 92, 12, 10800000, 11250000, 0);
INSERT INTO `tbl_price_table_item` VALUES (571, 100, 82, 12, 9600000, 10000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (572, 100, 72, 12, 8400000, 8750000, 0);
INSERT INTO `tbl_price_table_item` VALUES (573, 100, 62, 12, 7200000, 7500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (574, 100, 52, 12, 6000000, 6250000, 0);
INSERT INTO `tbl_price_table_item` VALUES (575, 100, 42, 12, 4800000, 5000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (576, 100, 32, 12, 3600000, 3750000, 0);
INSERT INTO `tbl_price_table_item` VALUES (577, 100, 22, 12, 2400000, 2500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (578, 100, 12, 12, 1200000, 1250000, 0);
INSERT INTO `tbl_price_table_item` VALUES (579, 100, 3002, 3, 90000000, 105000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (580, 100, 2002, 3, 60000000, 70000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (581, 100, 1002, 3, 30000000, 35000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (582, 100, 142, 3, 4200000, 4900000, 0);
INSERT INTO `tbl_price_table_item` VALUES (583, 100, 132, 3, 3900000, 4550000, 0);
INSERT INTO `tbl_price_table_item` VALUES (584, 100, 122, 3, 3600000, 4200000, 0);
INSERT INTO `tbl_price_table_item` VALUES (585, 100, 112, 3, 3300000, 3850000, 0);
INSERT INTO `tbl_price_table_item` VALUES (586, 100, 102, 3, 3000000, 3500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (587, 100, 92, 3, 2700000, 3150000, 0);
INSERT INTO `tbl_price_table_item` VALUES (588, 100, 82, 3, 2400000, 2800000, 0);
INSERT INTO `tbl_price_table_item` VALUES (589, 100, 72, 3, 2100000, 2450000, 0);
INSERT INTO `tbl_price_table_item` VALUES (590, 100, 62, 3, 1800000, 2100000, 0);
INSERT INTO `tbl_price_table_item` VALUES (591, 100, 52, 3, 1500000, 1750000, 0);
INSERT INTO `tbl_price_table_item` VALUES (592, 100, 42, 3, 1200000, 1400000, 0);
INSERT INTO `tbl_price_table_item` VALUES (593, 100, 32, 3, 900000, 1050000, 0);
INSERT INTO `tbl_price_table_item` VALUES (594, 100, 22, 3, 600000, 700000, 0);
INSERT INTO `tbl_price_table_item` VALUES (595, 100, 12, 3, 300000, 350000, 0);
INSERT INTO `tbl_price_table_item` VALUES (596, 100, 3002, 1, 30000000, 45000000, 1);
INSERT INTO `tbl_price_table_item` VALUES (597, 100, 2002, 1, 20000000, 30000000, 1);
INSERT INTO `tbl_price_table_item` VALUES (598, 100, 1002, 1, 10000000, 15000000, 1);
INSERT INTO `tbl_price_table_item` VALUES (599, 100, 142, 1, 1400000, 2100000, 1);
INSERT INTO `tbl_price_table_item` VALUES (600, 100, 132, 1, 1300000, 1950000, 1);
INSERT INTO `tbl_price_table_item` VALUES (601, 100, 122, 1, 1200000, 1800000, 1);
INSERT INTO `tbl_price_table_item` VALUES (602, 100, 112, 1, 1100000, 1650000, 1);
INSERT INTO `tbl_price_table_item` VALUES (603, 100, 102, 1, 1000000, 1500000, 1);
INSERT INTO `tbl_price_table_item` VALUES (604, 100, 92, 1, 900000, 1350000, 1);
INSERT INTO `tbl_price_table_item` VALUES (605, 100, 82, 1, 800000, 1200000, 1);
INSERT INTO `tbl_price_table_item` VALUES (606, 100, 72, 1, 700000, 1050000, 1);
INSERT INTO `tbl_price_table_item` VALUES (607, 100, 62, 1, 600000, 900000, 1);
INSERT INTO `tbl_price_table_item` VALUES (608, 100, 52, 1, 500000, 750000, 1);
INSERT INTO `tbl_price_table_item` VALUES (609, 100, 42, 1, 400000, 600000, 1);
INSERT INTO `tbl_price_table_item` VALUES (610, 100, 32, 1, 300000, 450000, 1);
INSERT INTO `tbl_price_table_item` VALUES (611, 100, 22, 1, 200000, 300000, 1);
INSERT INTO `tbl_price_table_item` VALUES (612, 100, 12, 1, 100000, 150000, 1);
INSERT INTO `tbl_price_table_item` VALUES (613, 200, 3003, 12, 360000800, 375001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (614, 200, 2003, 12, 240000800, 250001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (615, 200, 1003, 12, 120000800, 125001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (616, 200, 143, 12, 16800800, 17501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (617, 200, 133, 12, 15600800, 16251000, 0);
INSERT INTO `tbl_price_table_item` VALUES (618, 200, 123, 12, 14400800, 15001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (619, 200, 113, 12, 13200800, 13751000, 0);
INSERT INTO `tbl_price_table_item` VALUES (620, 200, 103, 12, 12000800, 12501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (621, 200, 93, 12, 10800800, 11251000, 0);
INSERT INTO `tbl_price_table_item` VALUES (622, 200, 83, 12, 9600800, 10001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (623, 200, 73, 12, 8400800, 8751000, 0);
INSERT INTO `tbl_price_table_item` VALUES (624, 200, 63, 12, 7200800, 7501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (625, 200, 53, 12, 6000800, 6251000, 0);
INSERT INTO `tbl_price_table_item` VALUES (626, 200, 43, 12, 4800800, 5001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (627, 200, 33, 12, 3600800, 3751000, 0);
INSERT INTO `tbl_price_table_item` VALUES (628, 200, 23, 12, 2400800, 2501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (629, 200, 13, 12, 1200800, 1251000, 0);
INSERT INTO `tbl_price_table_item` VALUES (630, 200, 3003, 3, 90000800, 105001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (631, 200, 2003, 3, 60000800, 70001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (632, 200, 1003, 3, 30000800, 35001000, 0);
INSERT INTO `tbl_price_table_item` VALUES (633, 200, 143, 3, 4200800, 4901000, 0);
INSERT INTO `tbl_price_table_item` VALUES (634, 200, 133, 3, 3900800, 4551000, 0);
INSERT INTO `tbl_price_table_item` VALUES (635, 200, 123, 3, 3600800, 4201000, 0);
INSERT INTO `tbl_price_table_item` VALUES (636, 200, 113, 3, 3300800, 3851000, 0);
INSERT INTO `tbl_price_table_item` VALUES (637, 200, 103, 3, 3000800, 3501000, 0);
INSERT INTO `tbl_price_table_item` VALUES (638, 200, 93, 3, 2700800, 3151000, 0);
INSERT INTO `tbl_price_table_item` VALUES (639, 200, 83, 3, 2400800, 2801000, 0);
INSERT INTO `tbl_price_table_item` VALUES (640, 200, 73, 3, 2100800, 2451000, 0);
INSERT INTO `tbl_price_table_item` VALUES (641, 200, 63, 3, 1800800, 2101000, 0);
INSERT INTO `tbl_price_table_item` VALUES (642, 200, 53, 3, 1500800, 1751000, 0);
INSERT INTO `tbl_price_table_item` VALUES (643, 200, 43, 3, 1200800, 1401000, 0);
INSERT INTO `tbl_price_table_item` VALUES (644, 200, 33, 3, 900800, 1051000, 0);
INSERT INTO `tbl_price_table_item` VALUES (645, 200, 23, 3, 600800, 701000, 0);
INSERT INTO `tbl_price_table_item` VALUES (646, 200, 13, 3, 300800, 351000, 0);
INSERT INTO `tbl_price_table_item` VALUES (647, 200, 3003, 1, 30000800, 45001000, 1);
INSERT INTO `tbl_price_table_item` VALUES (648, 200, 2003, 1, 20000800, 30001000, 1);
INSERT INTO `tbl_price_table_item` VALUES (649, 200, 1003, 1, 10000800, 15001000, 1);
INSERT INTO `tbl_price_table_item` VALUES (650, 200, 143, 1, 1400800, 2101000, 1);
INSERT INTO `tbl_price_table_item` VALUES (651, 200, 133, 1, 1300800, 1951000, 1);
INSERT INTO `tbl_price_table_item` VALUES (652, 200, 123, 1, 1200800, 1801000, 1);
INSERT INTO `tbl_price_table_item` VALUES (653, 200, 113, 1, 1100800, 1651000, 1);
INSERT INTO `tbl_price_table_item` VALUES (654, 200, 103, 1, 1000800, 1501000, 1);
INSERT INTO `tbl_price_table_item` VALUES (655, 200, 93, 1, 900800, 1351000, 1);
INSERT INTO `tbl_price_table_item` VALUES (656, 200, 83, 1, 800800, 1201000, 1);
INSERT INTO `tbl_price_table_item` VALUES (657, 200, 73, 1, 700800, 1051000, 1);
INSERT INTO `tbl_price_table_item` VALUES (658, 200, 63, 1, 600800, 901000, 1);
INSERT INTO `tbl_price_table_item` VALUES (659, 200, 53, 1, 500800, 751000, 1);
INSERT INTO `tbl_price_table_item` VALUES (660, 200, 43, 1, 400800, 601000, 1);
INSERT INTO `tbl_price_table_item` VALUES (661, 200, 33, 1, 300800, 451000, 1);
INSERT INTO `tbl_price_table_item` VALUES (662, 200, 23, 1, 200800, 301000, 1);
INSERT INTO `tbl_price_table_item` VALUES (663, 200, 13, 1, 100800, 151000, 1);
INSERT INTO `tbl_price_table_item` VALUES (664, 100, 3003, 12, 360000000, 375000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (665, 100, 2003, 12, 240000000, 250000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (666, 100, 1003, 12, 120000000, 125000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (667, 100, 143, 12, 16800000, 17500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (668, 100, 133, 12, 15600000, 16250000, 0);
INSERT INTO `tbl_price_table_item` VALUES (669, 100, 123, 12, 14400000, 15000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (670, 100, 113, 12, 13200000, 13750000, 0);
INSERT INTO `tbl_price_table_item` VALUES (671, 100, 103, 12, 12000000, 12500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (672, 100, 93, 12, 10800000, 11250000, 0);
INSERT INTO `tbl_price_table_item` VALUES (673, 100, 83, 12, 9600000, 10000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (674, 100, 73, 12, 8400000, 8750000, 0);
INSERT INTO `tbl_price_table_item` VALUES (675, 100, 63, 12, 7200000, 7500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (676, 100, 53, 12, 6000000, 6250000, 0);
INSERT INTO `tbl_price_table_item` VALUES (677, 100, 43, 12, 4800000, 5000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (678, 100, 33, 12, 3600000, 3750000, 0);
INSERT INTO `tbl_price_table_item` VALUES (679, 100, 23, 12, 2400000, 2500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (680, 100, 13, 12, 1200000, 1250000, 0);
INSERT INTO `tbl_price_table_item` VALUES (681, 100, 3003, 3, 90000000, 105000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (682, 100, 2003, 3, 60000000, 70000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (683, 100, 1003, 3, 30000000, 35000000, 0);
INSERT INTO `tbl_price_table_item` VALUES (684, 100, 143, 3, 4200000, 4900000, 0);
INSERT INTO `tbl_price_table_item` VALUES (685, 100, 133, 3, 3900000, 4550000, 0);
INSERT INTO `tbl_price_table_item` VALUES (686, 100, 123, 3, 3600000, 4200000, 0);
INSERT INTO `tbl_price_table_item` VALUES (687, 100, 113, 3, 3300000, 3850000, 0);
INSERT INTO `tbl_price_table_item` VALUES (688, 100, 103, 3, 3000000, 3500000, 0);
INSERT INTO `tbl_price_table_item` VALUES (689, 100, 93, 3, 2700000, 3150000, 0);
INSERT INTO `tbl_price_table_item` VALUES (690, 100, 83, 3, 2400000, 2800000, 0);
INSERT INTO `tbl_price_table_item` VALUES (691, 100, 73, 3, 2100000, 2450000, 0);
INSERT INTO `tbl_price_table_item` VALUES (692, 100, 63, 3, 1800000, 2100000, 0);
INSERT INTO `tbl_price_table_item` VALUES (693, 100, 53, 3, 1500000, 1750000, 0);
INSERT INTO `tbl_price_table_item` VALUES (694, 100, 43, 3, 1200000, 1400000, 0);
INSERT INTO `tbl_price_table_item` VALUES (695, 100, 33, 3, 900000, 1050000, 0);
INSERT INTO `tbl_price_table_item` VALUES (696, 100, 23, 3, 600000, 700000, 0);
INSERT INTO `tbl_price_table_item` VALUES (697, 100, 13, 3, 300000, 350000, 0);
INSERT INTO `tbl_price_table_item` VALUES (698, 100, 3003, 1, 30000000, 45000000, 1);
INSERT INTO `tbl_price_table_item` VALUES (699, 100, 2003, 1, 20000000, 30000000, 1);
INSERT INTO `tbl_price_table_item` VALUES (700, 100, 1003, 1, 10000000, 15000000, 1);
INSERT INTO `tbl_price_table_item` VALUES (701, 100, 143, 1, 1400000, 2100000, 1);
INSERT INTO `tbl_price_table_item` VALUES (702, 100, 133, 1, 1300000, 1950000, 1);
INSERT INTO `tbl_price_table_item` VALUES (703, 100, 123, 1, 1200000, 1800000, 1);
INSERT INTO `tbl_price_table_item` VALUES (704, 100, 113, 1, 1100000, 1650000, 1);
INSERT INTO `tbl_price_table_item` VALUES (705, 100, 103, 1, 1000000, 1500000, 1);
INSERT INTO `tbl_price_table_item` VALUES (706, 100, 93, 1, 900000, 1350000, 1);
INSERT INTO `tbl_price_table_item` VALUES (707, 100, 83, 1, 800000, 1200000, 1);
INSERT INTO `tbl_price_table_item` VALUES (708, 100, 73, 1, 700000, 1050000, 1);
INSERT INTO `tbl_price_table_item` VALUES (709, 100, 63, 1, 600000, 900000, 1);
INSERT INTO `tbl_price_table_item` VALUES (710, 100, 53, 1, 500000, 750000, 1);
INSERT INTO `tbl_price_table_item` VALUES (711, 100, 43, 1, 400000, 600000, 1);
INSERT INTO `tbl_price_table_item` VALUES (712, 100, 33, 1, 300000, 450000, 1);
INSERT INTO `tbl_price_table_item` VALUES (713, 100, 23, 1, 200000, 300000, 1);
INSERT INTO `tbl_price_table_item` VALUES (714, 100, 13, 1, 100000, 150000, 1);

-- ----------------------------
-- Table structure for tbl_product_service_info
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_service_info`;
CREATE TABLE `tbl_product_service_info`  (
  `product_service_id` int(8) NOT NULL,
  `product_service_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_service_create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `product_service_alter_date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `product_feature_id` int(4) NOT NULL,
  `product_service_description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `product_service_remark` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `product_service_photo_id` bigint(20) NULL DEFAULT NULL,
  `product_service_update_user` char(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_service_effect_flag` int(1) NULL DEFAULT 1,
  PRIMARY KEY (`product_service_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_product_service_info
-- ----------------------------
INSERT INTO `tbl_product_service_info` VALUES (1000, '1000 -- Recommended set', '2019-09-24 11:22:02', '2019-10-29 14:38:44', 3, 'Recommended set description', 'Recommended set remark', 5, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (2000, '2000 -- Management set', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 2, 'Management set description', 'Management set remark', 2, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (3000, '3000 -- Control set', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 2, 'Control set description', 'Control set remark', 3, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (10, '10 -- Post function', '2019-09-24 11:22:02', '2019-10-14 13:37:50', 1, 'Post function description', 'Post function remark', 4, 'mss_admin', 0);
INSERT INTO `tbl_product_service_info` VALUES (20, '20 -- Campaign function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Campaign function description', 'Campaign function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (30, '30 -- Motomarket function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Motomarket function description', 'Motomarket function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (40, '40 -- Motomarket function', '2019-09-24 11:22:02', '2019-10-01 11:42:40', 1, 'Motomarket function description', 'Motomarket function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (50, '50 -- Messages function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Messages function description', 'Messages function remark', 5, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (60, '60 -- Highlight  function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Highlight  function description', 'Highlight  function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (70, '70 -- Reservation  function', '2019-09-23 11:22:02', '2019-10-02 11:42:40', 1, 'Reservation  function description', 'Reservation  function remark', 8, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (80, '80 -- EDM function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'EDM function description', 'EDM function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (90, '90 -- Monitor function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Monitor function', 'Monitor function', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (100, '100 -- Random banner control function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Random banner control description', 'Random banner control remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (110, '110 -- Stock management function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Stock management description', 'Stock management remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (120, '120 -- Pit management function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Pit management description', 'Pit management remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (130, '130 -- Sales analystic function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Sales analystic description', 'Sales analystic remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (140, '140 -- Online Check out function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Online Check out description', 'Online Check out remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (1001, '1001 -- Recommended set Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2019-09-02 11:22:02', '2019-10-03 11:42:40', 3, 'Recommended set description\r\n\r\nIt is a long established fact that a reader \r\nwill be distracted by the readable content of a \r\npage when looking at its layout. \r\nThe point of using Lorem Ipsum is that it \r\nhas a more-or-less normal distribution of letters, \r\nas opposed to using \'Content here, content here\', \r\nmaking it look like readable English. Many desktop \r\npublishing packages and web page editors now use \r\nLorem Ipsum as their default model text, and a search \r\nfor \'lorem ipsum\' will uncover many web sites still in \r\ntheir infancy. Various versions have evolved over the years, \r\nsometimes by accident, sometimes on purpose \r\n(injected humour and the like).\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nSuspendisse dapibus tellus eget nisl blandit, a posuere lectus rhoncus.\r\nPhasellus at tortor eget quam posuere accumsan.\r\nProin sed nisi a eros ornare egestas vel a elit.\r\nVestibulum varius turpis vitae nunc aliquam dapibus.\r\nPraesent porta augue ut sagittis congue.\r\nNulla id purus sit amet dui sollicitudin maximus.\r\nQuisque nec ex non tortor dictum varius.\r\nPellentesque molestie massa eget neque rutrum finibus.\r\nCras non orci at neque tincidunt lobortis ut sed purus.\r\nDonec nec sem ullamcorper metus posuere pellentesque at eget mauris.\r\nVivamus sit amet massa tempus, ultricies diam quis, suscipit lorem.\r\nSed sollicitudin ante sit amet elit scelerisque varius.\r\nVestibulum ultrices enim eu dictum efficitur.\r\nSed suscipit nulla eget feugiat lobortis.\r\nCurabitur ac sem suscipit, tempor felis sit amet, auctor eros.\r\nDonec molestie ligula congue malesuada feugiat.\r\nDuis dapibus enim vel justo blandit, at hendrerit elit feugiat.\r\nPhasellus a ex nec elit malesuada pretium.\r\nSuspendisse tristique diam in nunc tristique consequat.', 'Recommended set remark\r\nRecommended set description\r\n\r\nIt is a long established fact that a reader \r\nwill be distracted by the readable content of a \r\npage when looking at its layout. \r\nThe point of using Lorem Ipsum is that it \r\nhas a more-or-less normal distribution of letters, \r\nas opposed to using \'Content here, content here\', \r\nmaking it look like readable English. Many desktop \r\npublishing packages and web page editors now use \r\nLorem Ipsum as their default model text, and a search \r\nfor \'lorem ipsum\' will uncover many web sites still in \r\ntheir infancy. Various versions have evolved over the years, \r\nsometimes by accident, sometimes on purpose \r\n(injected humour and the like).\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nSuspendisse dapibus tellus eget nisl blandit, a posuere lectus rhoncus.\r\nPhasellus at tortor eget quam posuere accumsan.\r\nProin sed nisi a eros ornare egestas vel a elit.\r\nVestibulum varius turpis vitae nunc aliquam dapibus.\r\nPraesent porta augue ut sagittis congue.\r\nNulla id purus sit amet dui sollicitudin maximus.\r\nQuisque nec ex non tortor dictum varius.\r\nPellentesque molestie massa eget neque rutrum finibus.\r\nCras non orci at neque tincidunt lobortis ut sed purus.\r\nDonec nec sem ullamcorper metus posuere pellentesque at eget mauris.\r\nVivamus sit amet massa tempus, ultricies diam quis, suscipit lorem.\r\nSed sollicitudin ante sit amet elit scelerisque varius.\r\nVestibulum ultrices enim eu dictum efficitur.\r\nSed suscipit nulla eget feugiat lobortis.\r\nCurabitur ac sem suscipit, tempor felis sit amet, auctor eros.\r\nDonec molestie ligula congue malesuada feugiat.\r\nDuis dapibus enim vel justo blandit, at hendrerit elit feugiat.\r\nPhasellus a ex nec elit malesuada pretium.\r\nSuspendisse tristique diam in nunc tristique consequat.', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (2001, '2001 -- Management set', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 2, 'Management set description', 'Management set remark', 2, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (3001, '3001 -- Control set', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 2, 'Control set description', 'Control set remark', 3, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (11, '11 -- Post function', '2019-09-24 11:22:02', '2019-10-10 18:06:53', 1, 'Post function description', 'Post function remark', 4, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (21, '21 -- Campaign function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Campaign function description', 'Campaign function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (31, '31 -- Motomarket function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Motomarket function description', 'Motomarket function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (41, '41 -- Motomarket function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Motomarket function description', 'Motomarket function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (51, '51 -- Messages function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Messages function description', 'Messages function remark', 5, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (61, '61 -- Highlight  function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Highlight  function description', 'Highlight  function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (71, '71 -- Reservation  function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Reservation  function description', 'Reservation  function remark', 8, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (81, '81 -- EDM function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'EDM function description', 'EDM function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (91, '91 -- Monitor function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Monitor function', 'Monitor function', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (101, '101 -- Random banner control function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Random banner control description', 'Random banner control remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (111, '111 -- Stock management function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Stock management description', 'Stock management remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (121, '121 -- Pit management function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Pit management description', 'Pit management remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (131, '131 -- Sales analystic function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Sales analystic description', 'Sales analystic remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (141, '141 -- Online Check out function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Online Check out description', 'Online Check out remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (1002, '1002 -- Recommended set Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 3, 'Recommended set description\r\n\r\nIt is a long established fact that a reader \r\nwill be distracted by the readable content of a \r\npage when looking at its layout. \r\nThe point of using Lorem Ipsum is that it \r\nhas a more-or-less normal distribution of letters, \r\nas opposed to using \'Content here, content here\', \r\nmaking it look like readable English. Many desktop \r\npublishing packages and web page editors now use \r\nLorem Ipsum as their default model text, and a search \r\nfor \'lorem ipsum\' will uncover many web sites still in \r\ntheir infancy. Various versions have evolved over the years, \r\nsometimes by accident, sometimes on purpose \r\n(injected humour and the like).\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nSuspendisse dapibus tellus eget nisl blandit, a posuere lectus rhoncus.\r\nPhasellus at tortor eget quam posuere accumsan.\r\nProin sed nisi a eros ornare egestas vel a elit.\r\nVestibulum varius turpis vitae nunc aliquam dapibus.\r\nPraesent porta augue ut sagittis congue.\r\nNulla id purus sit amet dui sollicitudin maximus.\r\nQuisque nec ex non tortor dictum varius.\r\nPellentesque molestie massa eget neque rutrum finibus.\r\nCras non orci at neque tincidunt lobortis ut sed purus.\r\nDonec nec sem ullamcorper metus posuere pellentesque at eget mauris.\r\nVivamus sit amet massa tempus, ultricies diam quis, suscipit lorem.\r\nSed sollicitudin ante sit amet elit scelerisque varius.\r\nVestibulum ultrices enim eu dictum efficitur.\r\nSed suscipit nulla eget feugiat lobortis.\r\nCurabitur ac sem suscipit, tempor felis sit amet, auctor eros.\r\nDonec molestie ligula congue malesuada feugiat.\r\nDuis dapibus enim vel justo blandit, at hendrerit elit feugiat.\r\nPhasellus a ex nec elit malesuada pretium.\r\nSuspendisse tristique diam in nunc tristique consequat.', 'Recommended set remark\r\nRecommended set description\r\n\r\nIt is a long established fact that a reader \r\nwill be distracted by the readable content of a \r\npage when looking at its layout. \r\nThe point of using Lorem Ipsum is that it \r\nhas a more-or-less normal distribution of letters, \r\nas opposed to using \'Content here, content here\', \r\nmaking it look like readable English. Many desktop \r\npublishing packages and web page editors now use \r\nLorem Ipsum as their default model text, and a search \r\nfor \'lorem ipsum\' will uncover many web sites still in \r\ntheir infancy. Various versions have evolved over the years, \r\nsometimes by accident, sometimes on purpose \r\n(injected humour and the like).\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nSuspendisse dapibus tellus eget nisl blandit, a posuere lectus rhoncus.\r\nPhasellus at tortor eget quam posuere accumsan.\r\nProin sed nisi a eros ornare egestas vel a elit.\r\nVestibulum varius turpis vitae nunc aliquam dapibus.\r\nPraesent porta augue ut sagittis congue.\r\nNulla id purus sit amet dui sollicitudin maximus.\r\nQuisque nec ex non tortor dictum varius.\r\nPellentesque molestie massa eget neque rutrum finibus.\r\nCras non orci at neque tincidunt lobortis ut sed purus.\r\nDonec nec sem ullamcorper metus posuere pellentesque at eget mauris.\r\nVivamus sit amet massa tempus, ultricies diam quis, suscipit lorem.\r\nSed sollicitudin ante sit amet elit scelerisque varius.\r\nVestibulum ultrices enim eu dictum efficitur.\r\nSed suscipit nulla eget feugiat lobortis.\r\nCurabitur ac sem suscipit, tempor felis sit amet, auctor eros.\r\nDonec molestie ligula congue malesuada feugiat.\r\nDuis dapibus enim vel justo blandit, at hendrerit elit feugiat.\r\nPhasellus a ex nec elit malesuada pretium.\r\nSuspendisse tristique diam in nunc tristique consequat.', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (2002, '2002 -- Management set', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 2, 'Management set description', 'Management set remark', 2, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (3002, '3002 -- Control set', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 2, 'Control set description', 'Control set remark', 3, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (12, '12 -- Post function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Post function description', 'Post function remark', 4, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (22, '22 -- Campaign function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Campaign function description', 'Campaign function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (32, '32 -- Motomarket function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Motomarket function description', 'Motomarket function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (42, '42 -- Motomarket function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Motomarket function description', 'Motomarket function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (52, '52 -- Messages function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Messages function description', 'Messages function remark', 5, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (62, '62 -- Highlight  function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Highlight  function description', 'Highlight  function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (72, '72 -- Reservation  function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Reservation  function description', 'Reservation  function remark', 8, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (82, '82 -- EDM function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'EDM function description', 'EDM function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (92, '92 -- Monitor function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Monitor function', 'Monitor function', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (102, '102 -- Random banner control function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Random banner control description', 'Random banner control remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (112, '112 -- Stock management function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Stock management description', 'Stock management remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (122, '122 -- Pit management function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Pit management description', 'Pit management remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (132, '132 -- Sales analystic function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Sales analystic description', 'Sales analystic remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (142, '142 -- Online Check out function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Online Check out description', 'Online Check out remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (1003, '1003 -- Recommended set Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 3, 'Recommended set description\r\n\r\nIt is a long established fact that a reader \r\nwill be distracted by the readable content of a \r\npage when looking at its layout. \r\nThe point of using Lorem Ipsum is that it \r\nhas a more-or-less normal distribution of letters, \r\nas opposed to using \'Content here, content here\', \r\nmaking it look like readable English. Many desktop \r\npublishing packages and web page editors now use \r\nLorem Ipsum as their default model text, and a search \r\nfor \'lorem ipsum\' will uncover many web sites still in \r\ntheir infancy. Various versions have evolved over the years, \r\nsometimes by accident, sometimes on purpose \r\n(injected humour and the like).\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nSuspendisse dapibus tellus eget nisl blandit, a posuere lectus rhoncus.\r\nPhasellus at tortor eget quam posuere accumsan.\r\nProin sed nisi a eros ornare egestas vel a elit.\r\nVestibulum varius turpis vitae nunc aliquam dapibus.\r\nPraesent porta augue ut sagittis congue.\r\nNulla id purus sit amet dui sollicitudin maximus.\r\nQuisque nec ex non tortor dictum varius.\r\nPellentesque molestie massa eget neque rutrum finibus.\r\nCras non orci at neque tincidunt lobortis ut sed purus.\r\nDonec nec sem ullamcorper metus posuere pellentesque at eget mauris.\r\nVivamus sit amet massa tempus, ultricies diam quis, suscipit lorem.\r\nSed sollicitudin ante sit amet elit scelerisque varius.\r\nVestibulum ultrices enim eu dictum efficitur.\r\nSed suscipit nulla eget feugiat lobortis.\r\nCurabitur ac sem suscipit, tempor felis sit amet, auctor eros.\r\nDonec molestie ligula congue malesuada feugiat.\r\nDuis dapibus enim vel justo blandit, at hendrerit elit feugiat.\r\nPhasellus a ex nec elit malesuada pretium.\r\nSuspendisse tristique diam in nunc tristique consequat.', 'Recommended set remark\r\nRecommended set description\r\n\r\nIt is a long established fact that a reader \r\nwill be distracted by the readable content of a \r\npage when looking at its layout. \r\nThe point of using Lorem Ipsum is that it \r\nhas a more-or-less normal distribution of letters, \r\nas opposed to using \'Content here, content here\', \r\nmaking it look like readable English. Many desktop \r\npublishing packages and web page editors now use \r\nLorem Ipsum as their default model text, and a search \r\nfor \'lorem ipsum\' will uncover many web sites still in \r\ntheir infancy. Various versions have evolved over the years, \r\nsometimes by accident, sometimes on purpose \r\n(injected humour and the like).\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nSuspendisse dapibus tellus eget nisl blandit, a posuere lectus rhoncus.\r\nPhasellus at tortor eget quam posuere accumsan.\r\nProin sed nisi a eros ornare egestas vel a elit.\r\nVestibulum varius turpis vitae nunc aliquam dapibus.\r\nPraesent porta augue ut sagittis congue.\r\nNulla id purus sit amet dui sollicitudin maximus.\r\nQuisque nec ex non tortor dictum varius.\r\nPellentesque molestie massa eget neque rutrum finibus.\r\nCras non orci at neque tincidunt lobortis ut sed purus.\r\nDonec nec sem ullamcorper metus posuere pellentesque at eget mauris.\r\nVivamus sit amet massa tempus, ultricies diam quis, suscipit lorem.\r\nSed sollicitudin ante sit amet elit scelerisque varius.\r\nVestibulum ultrices enim eu dictum efficitur.\r\nSed suscipit nulla eget feugiat lobortis.\r\nCurabitur ac sem suscipit, tempor felis sit amet, auctor eros.\r\nDonec molestie ligula congue malesuada feugiat.\r\nDuis dapibus enim vel justo blandit, at hendrerit elit feugiat.\r\nPhasellus a ex nec elit malesuada pretium.\r\nSuspendisse tristique diam in nunc tristique consequat.', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (2003, '2003 -- Management set', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 2, 'Management set description', 'Management set remark', 2, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (3003, '3003 -- Control set', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 2, 'Control set description', 'Control set remark', 3, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (13, '13 -- Post function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Post function description', 'Post function remark', 4, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (23, '23 -- Campaign function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Campaign function description', 'Campaign function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (33, '33 -- Motomarket function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Motomarket function description', 'Motomarket function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (43, '43 -- Motomarket function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Motomarket function description', 'Motomarket function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (53, '53 -- Messages function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Messages function description', 'Messages function remark', 5, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (63, '63 -- Highlight  function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Highlight  function description', 'Highlight  function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (73, '73 -- Reservation  function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Reservation  function description', 'Reservation  function remark', 8, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (83, '83 -- EDM function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'EDM function description', 'EDM function remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (93, '93 -- Monitor function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Monitor function', 'Monitor function', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (103, '103 -- Random banner control function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Random banner control description', 'Random banner control remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (113, '113 -- Stock management function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Stock management description', 'Stock management remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (123, '123 -- Pit management function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Pit management description', 'Pit management remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (133, '133 -- Sales analystic function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Sales analystic description', 'Sales analystic remark', 0, 'mss_admin', 1);
INSERT INTO `tbl_product_service_info` VALUES (143, '143 -- Online Check out function', '2019-09-24 11:22:02', '2019-10-04 11:42:40', 1, 'Online Check out description', 'Online Check out remark', 0, 'mss_admin', 1);

-- ----------------------------
-- Table structure for tbl_product_service_item
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_service_item`;
CREATE TABLE `tbl_product_service_item`  (
  `product_service_id` int(8) NOT NULL,
  `product_category_id` int(4) NOT NULL,
  PRIMARY KEY (`product_service_id`, `product_category_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of tbl_product_service_item
-- ----------------------------
INSERT INTO `tbl_product_service_item` VALUES (10, 10);
INSERT INTO `tbl_product_service_item` VALUES (11, 10);
INSERT INTO `tbl_product_service_item` VALUES (12, 10);
INSERT INTO `tbl_product_service_item` VALUES (13, 10);
INSERT INTO `tbl_product_service_item` VALUES (20, 20);
INSERT INTO `tbl_product_service_item` VALUES (21, 20);
INSERT INTO `tbl_product_service_item` VALUES (22, 20);
INSERT INTO `tbl_product_service_item` VALUES (23, 20);
INSERT INTO `tbl_product_service_item` VALUES (30, 30);
INSERT INTO `tbl_product_service_item` VALUES (31, 30);
INSERT INTO `tbl_product_service_item` VALUES (32, 30);
INSERT INTO `tbl_product_service_item` VALUES (33, 30);
INSERT INTO `tbl_product_service_item` VALUES (40, 40);
INSERT INTO `tbl_product_service_item` VALUES (41, 40);
INSERT INTO `tbl_product_service_item` VALUES (42, 40);
INSERT INTO `tbl_product_service_item` VALUES (43, 40);
INSERT INTO `tbl_product_service_item` VALUES (50, 50);
INSERT INTO `tbl_product_service_item` VALUES (51, 50);
INSERT INTO `tbl_product_service_item` VALUES (52, 50);
INSERT INTO `tbl_product_service_item` VALUES (53, 50);
INSERT INTO `tbl_product_service_item` VALUES (60, 60);
INSERT INTO `tbl_product_service_item` VALUES (61, 60);
INSERT INTO `tbl_product_service_item` VALUES (62, 60);
INSERT INTO `tbl_product_service_item` VALUES (63, 60);
INSERT INTO `tbl_product_service_item` VALUES (70, 70);
INSERT INTO `tbl_product_service_item` VALUES (71, 70);
INSERT INTO `tbl_product_service_item` VALUES (72, 70);
INSERT INTO `tbl_product_service_item` VALUES (73, 70);
INSERT INTO `tbl_product_service_item` VALUES (80, 80);
INSERT INTO `tbl_product_service_item` VALUES (81, 80);
INSERT INTO `tbl_product_service_item` VALUES (82, 80);
INSERT INTO `tbl_product_service_item` VALUES (83, 80);
INSERT INTO `tbl_product_service_item` VALUES (90, 90);
INSERT INTO `tbl_product_service_item` VALUES (91, 90);
INSERT INTO `tbl_product_service_item` VALUES (92, 90);
INSERT INTO `tbl_product_service_item` VALUES (93, 90);
INSERT INTO `tbl_product_service_item` VALUES (100, 100);
INSERT INTO `tbl_product_service_item` VALUES (101, 100);
INSERT INTO `tbl_product_service_item` VALUES (102, 100);
INSERT INTO `tbl_product_service_item` VALUES (103, 100);
INSERT INTO `tbl_product_service_item` VALUES (110, 110);
INSERT INTO `tbl_product_service_item` VALUES (111, 110);
INSERT INTO `tbl_product_service_item` VALUES (112, 110);
INSERT INTO `tbl_product_service_item` VALUES (113, 110);
INSERT INTO `tbl_product_service_item` VALUES (120, 120);
INSERT INTO `tbl_product_service_item` VALUES (121, 120);
INSERT INTO `tbl_product_service_item` VALUES (122, 120);
INSERT INTO `tbl_product_service_item` VALUES (123, 120);
INSERT INTO `tbl_product_service_item` VALUES (130, 130);
INSERT INTO `tbl_product_service_item` VALUES (131, 130);
INSERT INTO `tbl_product_service_item` VALUES (132, 130);
INSERT INTO `tbl_product_service_item` VALUES (133, 130);
INSERT INTO `tbl_product_service_item` VALUES (140, 140);
INSERT INTO `tbl_product_service_item` VALUES (141, 140);
INSERT INTO `tbl_product_service_item` VALUES (142, 140);
INSERT INTO `tbl_product_service_item` VALUES (143, 140);
INSERT INTO `tbl_product_service_item` VALUES (1000, 1);
INSERT INTO `tbl_product_service_item` VALUES (1000, 2);
INSERT INTO `tbl_product_service_item` VALUES (1000, 3);
INSERT INTO `tbl_product_service_item` VALUES (1000, 4);
INSERT INTO `tbl_product_service_item` VALUES (1000, 10);
INSERT INTO `tbl_product_service_item` VALUES (1000, 20);
INSERT INTO `tbl_product_service_item` VALUES (1000, 30);
INSERT INTO `tbl_product_service_item` VALUES (1000, 40);
INSERT INTO `tbl_product_service_item` VALUES (1000, 50);
INSERT INTO `tbl_product_service_item` VALUES (1000, 60);
INSERT INTO `tbl_product_service_item` VALUES (1000, 70);
INSERT INTO `tbl_product_service_item` VALUES (1000, 80);
INSERT INTO `tbl_product_service_item` VALUES (1000, 90);
INSERT INTO `tbl_product_service_item` VALUES (1000, 100);
INSERT INTO `tbl_product_service_item` VALUES (1000, 110);
INSERT INTO `tbl_product_service_item` VALUES (1000, 120);
INSERT INTO `tbl_product_service_item` VALUES (1000, 130);
INSERT INTO `tbl_product_service_item` VALUES (1000, 140);
INSERT INTO `tbl_product_service_item` VALUES (1001, 10);
INSERT INTO `tbl_product_service_item` VALUES (1001, 20);
INSERT INTO `tbl_product_service_item` VALUES (1001, 30);
INSERT INTO `tbl_product_service_item` VALUES (1001, 40);
INSERT INTO `tbl_product_service_item` VALUES (1002, 10);
INSERT INTO `tbl_product_service_item` VALUES (1002, 20);
INSERT INTO `tbl_product_service_item` VALUES (1002, 30);
INSERT INTO `tbl_product_service_item` VALUES (1002, 40);
INSERT INTO `tbl_product_service_item` VALUES (1003, 10);
INSERT INTO `tbl_product_service_item` VALUES (1003, 20);
INSERT INTO `tbl_product_service_item` VALUES (1003, 30);
INSERT INTO `tbl_product_service_item` VALUES (1003, 40);
INSERT INTO `tbl_product_service_item` VALUES (2000, 90);
INSERT INTO `tbl_product_service_item` VALUES (2000, 100);
INSERT INTO `tbl_product_service_item` VALUES (2001, 90);
INSERT INTO `tbl_product_service_item` VALUES (2001, 100);
INSERT INTO `tbl_product_service_item` VALUES (2002, 90);
INSERT INTO `tbl_product_service_item` VALUES (2002, 100);
INSERT INTO `tbl_product_service_item` VALUES (2003, 90);
INSERT INTO `tbl_product_service_item` VALUES (2003, 100);
INSERT INTO `tbl_product_service_item` VALUES (3000, 110);
INSERT INTO `tbl_product_service_item` VALUES (3000, 120);
INSERT INTO `tbl_product_service_item` VALUES (3000, 130);
INSERT INTO `tbl_product_service_item` VALUES (3000, 140);
INSERT INTO `tbl_product_service_item` VALUES (3001, 110);
INSERT INTO `tbl_product_service_item` VALUES (3001, 120);
INSERT INTO `tbl_product_service_item` VALUES (3001, 130);
INSERT INTO `tbl_product_service_item` VALUES (3001, 140);
INSERT INTO `tbl_product_service_item` VALUES (3002, 110);
INSERT INTO `tbl_product_service_item` VALUES (3002, 120);
INSERT INTO `tbl_product_service_item` VALUES (3002, 130);
INSERT INTO `tbl_product_service_item` VALUES (3002, 140);
INSERT INTO `tbl_product_service_item` VALUES (3003, 110);
INSERT INTO `tbl_product_service_item` VALUES (3003, 120);
INSERT INTO `tbl_product_service_item` VALUES (3003, 130);
INSERT INTO `tbl_product_service_item` VALUES (3003, 140);

SET FOREIGN_KEY_CHECKS = 1;

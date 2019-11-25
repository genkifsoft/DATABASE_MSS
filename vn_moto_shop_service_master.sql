/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : 192.168.88.226:3306
 Source Schema         : vn_moto_shop_service_master

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 25/11/2019 14:47:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mst_bike_type_lang
-- ----------------------------
DROP TABLE IF EXISTS `mst_bike_type_lang`;
CREATE TABLE `mst_bike_type_lang`  (
  `bike_type_code` int(6) NOT NULL,
  `language_code` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bike_type_lang_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `bike_type_lang_last_update` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `bike_type_lang_update_user` char(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bike_type_code`, `language_code`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mst_bike_type_lang
-- ----------------------------
INSERT INTO `mst_bike_type_lang` VALUES (1, 'en', 'Moped scooter', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_bike_type_lang` VALUES (2, 'en', 'Scooters', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_bike_type_lang` VALUES (3, 'en', 'Big scooter', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_bike_type_lang` VALUES (4, 'en', 'Mini bike', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_bike_type_lang` VALUES (5, 'en', 'Street', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_bike_type_lang` VALUES (6, 'en', 'Classic type', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_bike_type_lang` VALUES (7, 'en', 'naked', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_bike_type_lang` VALUES (8, 'en', 'Super sports / replica', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_bike_type_lang` VALUES (9, 'en', 'Tourer', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_bike_type_lang` VALUES (10, 'en', 'American / Cruiser', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_bike_type_lang` VALUES (11, 'en', 'Offroad / Motard', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_bike_type_lang` VALUES (12, 'en', 'Overseas manufacturer', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_bike_type_lang` VALUES (13, 'en', 'Business bike', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_bike_type_lang` VALUES (14, 'en', 'Racer / competition', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_bike_type_lang` VALUES (15, 'en', 'Electric bike / ATV', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_bike_type_lang` VALUES (1, 'vi', 'Xe tay ga', '2019-08-23 15:52:46', NULL);

-- ----------------------------
-- Table structure for mst_service
-- ----------------------------
DROP TABLE IF EXISTS `mst_service`;
CREATE TABLE `mst_service`  (
  `service_code` int(4) NOT NULL,
  `service_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `service_search_key` char(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `service_description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `service_last_update` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `service_update_user` char(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `service_thumbnail` char(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `service_background` char(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `service_logo` char(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `service_select_view_no` int(4) NULL DEFAULT 0,
  PRIMARY KEY (`service_code`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mst_service
-- ----------------------------
INSERT INTO `mst_service` VALUES (1, 'Mua bán phụ tùng', 'buy_sales', '', '2019-11-20 10:11:48', NULL, 'uploads/imgs/vn/categories/buy_sale.jpg', NULL, NULL, 10);
INSERT INTO `mst_service` VALUES (2, 'Custom', 'custom', '', '2019-09-09 10:37:48', NULL, NULL, NULL, NULL, 20);
INSERT INTO `mst_service` VALUES (3, 'Goverment check', 'goverment_check', '', '2019-09-09 10:37:48', NULL, NULL, NULL, NULL, 30);
INSERT INTO `mst_service` VALUES (4, 'Cho thuê xe', 'bike_rental', '', '2019-09-09 10:37:48', NULL, NULL, NULL, NULL, 40);
INSERT INTO `mst_service` VALUES (5, 'Bảo hiểm xe máy', 'insurance', '', '2019-09-09 10:37:48', NULL, NULL, NULL, NULL, 50);
INSERT INTO `mst_service` VALUES (6, 'Paint painting', 'paint', '', '2019-09-09 10:37:48', NULL, NULL, NULL, NULL, 60);
INSERT INTO `mst_service` VALUES (7, 'Maintenance', 'manternace', '', '2019-09-09 10:37:48', NULL, NULL, NULL, NULL, 70);
INSERT INTO `mst_service` VALUES (8, 'Riding Gear', 'riding_gear', '', '2019-09-09 10:37:48', NULL, NULL, NULL, NULL, 80);
INSERT INTO `mst_service` VALUES (9, 'Road Service', 'road_service', '', '2019-09-09 10:37:48', NULL, NULL, NULL, NULL, 90);
INSERT INTO `mst_service` VALUES (10, 'Transfer', 'transfer', '', '2019-09-09 10:37:48', NULL, NULL, NULL, NULL, 100);
INSERT INTO `mst_service` VALUES (11, 'Rửa xe', 'wash', '', '2019-09-09 10:37:48', NULL, NULL, NULL, NULL, 110);
INSERT INTO `mst_service` VALUES (12, 'Handmade', 'hand_made', '', '2019-09-09 10:37:48', NULL, NULL, NULL, NULL, 120);

-- ----------------------------
-- Table structure for mst_service_lang
-- ----------------------------
DROP TABLE IF EXISTS `mst_service_lang`;
CREATE TABLE `mst_service_lang`  (
  `service_code` int(4) NOT NULL,
  `language_code` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `service_lang_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `service_lang_last_update` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `service_lang_update_user` char(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`service_code`, `language_code`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mst_service_lang
-- ----------------------------
INSERT INTO `mst_service_lang` VALUES (1, 'en', 'Buys & Sales', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_lang` VALUES (2, 'en', 'Custom', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_lang` VALUES (3, 'en', 'Goverment check', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_lang` VALUES (4, 'en', 'Bike Rental', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_lang` VALUES (5, 'en', 'Insurance', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_lang` VALUES (6, 'en', 'Paint painting', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_lang` VALUES (7, 'en', 'Maintenance', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_lang` VALUES (8, 'en', 'Riding Gear', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_lang` VALUES (9, 'en', 'Road Service', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_lang` VALUES (10, 'en', 'Transfer', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_lang` VALUES (11, 'en', 'Wash/Clearn', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_lang` VALUES (12, 'en', 'Handmade', '2019-08-02 20:09:07', NULL);

-- ----------------------------
-- Table structure for mst_service_sub_category
-- ----------------------------
DROP TABLE IF EXISTS `mst_service_sub_category`;
CREATE TABLE `mst_service_sub_category`  (
  `service_sub_category_code` int(4) NOT NULL,
  `service_sub_category_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `service_code` int(4) NOT NULL,
  `service_sub_category_search_key` char(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `service_sub_category_description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `service_sub_category_last_update` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `service_sub_category_update_user` char(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `service_sub_category_logo` char(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `service_sub_category_select_view_no` int(4) NULL DEFAULT 0,
  PRIMARY KEY (`service_sub_category_code`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mst_service_sub_category
-- ----------------------------
INSERT INTO `mst_service_sub_category` VALUES (10, 'Thay dầu', 2, 'oilchange', '', '2019-09-09 10:38:36', NULL, NULL, 10);
INSERT INTO `mst_service_sub_category` VALUES (20, 'Thay lốp xe', 2, 'tirechange', '', '2019-09-09 10:38:36', NULL, NULL, 20);
INSERT INTO `mst_service_sub_category` VALUES (30, 'Thay pin', 2, 'batterychange', '', '2019-09-09 10:38:36', NULL, NULL, 30);
INSERT INTO `mst_service_sub_category` VALUES (40, 'Thay bugi', 2, 'sparkplugchange', '', '2019-09-09 10:38:36', NULL, NULL, 40);
INSERT INTO `mst_service_sub_category` VALUES (50, 'Thay má phanh', 2, 'brakepadchange', '', '2019-09-09 10:38:36', NULL, NULL, 50);
INSERT INTO `mst_service_sub_category` VALUES (60, 'Thay đổi xích / xích', 2, 'chainsprocketchange', '', '2019-09-09 10:38:36', NULL, NULL, 60);
INSERT INTO `mst_service_sub_category` VALUES (70, 'Thay lọc khí', 2, 'airfilterchange', '', '2019-09-09 10:38:36', NULL, NULL, 70);
INSERT INTO `mst_service_sub_category` VALUES (80, 'Thay hệ thống xả', 2, 'exhaust', '', '2019-09-09 10:38:36', NULL, NULL, 80);
INSERT INTO `mst_service_sub_category` VALUES (90, 'Phanh liên quan', 2, 'brakes', '', '2019-09-09 10:38:36', NULL, NULL, 90);
INSERT INTO `mst_service_sub_category` VALUES (100, 'Hệ thống điện', 2, 'electrical', '', '2019-09-09 10:38:36', NULL, NULL, 100);
INSERT INTO `mst_service_sub_category` VALUES (110, 'Động cơ liên quan', 2, 'engine', '', '2019-09-09 10:38:36', NULL, NULL, 110);
INSERT INTO `mst_service_sub_category` VALUES (120, 'Xích chuỗi', 2, 'chainsprocket', '', '2019-09-09 10:38:36', NULL, NULL, 120);
INSERT INTO `mst_service_sub_category` VALUES (130, 'Phun nhiên liệu', 2, 'fuelinjection', '', '2019-09-09 10:38:36', NULL, NULL, 130);
INSERT INTO `mst_service_sub_category` VALUES (140, 'Ghế', 2, 'seat', '', '2019-09-09 10:38:36', NULL, NULL, 140);
INSERT INTO `mst_service_sub_category` VALUES (150, 'handling', 2, 'handling', '', '2019-09-09 10:38:36', NULL, NULL, 150);
INSERT INTO `mst_service_sub_category` VALUES (160, 'suspension', 2, 'suspension', '', '2019-09-09 10:38:36', NULL, NULL, 160);
INSERT INTO `mst_service_sub_category` VALUES (170, 'bodywork', 2, 'bodywork', '', '2019-09-09 10:38:36', NULL, NULL, 170);
INSERT INTO `mst_service_sub_category` VALUES (180, 'Operation system', 2, 'control', '', '2019-09-09 10:38:36', NULL, NULL, 180);
INSERT INTO `mst_service_sub_category` VALUES (190, 'gương', 2, 'mirror', '', '2019-09-09 10:38:36', NULL, NULL, 190);
INSERT INTO `mst_service_sub_category` VALUES (200, 'Around the handle', 2, 'handle', '', '2019-09-09 10:38:36', NULL, NULL, 200);
INSERT INTO `mst_service_sub_category` VALUES (210, 'Around the handle', 2, 'screen', '', '2019-09-09 10:38:36', NULL, NULL, 210);
INSERT INTO `mst_service_sub_category` VALUES (220, 'Exterior related', 2, 'fairings', '', '2019-09-09 10:38:36', NULL, NULL, 220);
INSERT INTO `mst_service_sub_category` VALUES (230, 'Case', 0, ' carrier', '', '2019-09-09 10:38:36', NULL, NULL, 230);
INSERT INTO `mst_service_sub_category` VALUES (240, 'navigation system', 2, 'navigationsystem', '', '2019-09-09 10:38:36', NULL, NULL, 240);
INSERT INTO `mst_service_sub_category` VALUES (250, 'Dụng cụ', 2, 'instruments', '', '2019-09-09 10:38:36', NULL, NULL, 250);
INSERT INTO `mst_service_sub_category` VALUES (260, 'Hệ thống làm mát', 2, 'coolingsystem', '', '2019-09-09 10:38:36', NULL, NULL, 260);
INSERT INTO `mst_service_sub_category` VALUES (270, 'Carryover parts', 2, 'carryover-parts', '', '2019-09-09 10:38:36', NULL, NULL, 270);
INSERT INTO `mst_service_sub_category` VALUES (280, 'Thay dầu', 7, 'oilchange', '', '2019-09-09 10:38:36', NULL, NULL, 280);
INSERT INTO `mst_service_sub_category` VALUES (290, 'Thay lốp xe', 7, 'tirechange', '', '2019-09-09 10:38:36', NULL, NULL, 290);
INSERT INTO `mst_service_sub_category` VALUES (300, 'Thay pin', 7, 'batterychange', '', '2019-09-09 10:38:36', NULL, NULL, 300);
INSERT INTO `mst_service_sub_category` VALUES (310, 'Thay bugi', 7, 'sparkplugchange', '', '2019-09-09 10:38:36', NULL, NULL, 310);
INSERT INTO `mst_service_sub_category` VALUES (320, 'Thay má phanh', 7, 'brakepadchange', '', '2019-09-09 10:38:36', NULL, NULL, 320);
INSERT INTO `mst_service_sub_category` VALUES (330, 'Thay đổi xích / xích', 7, 'chainsprocketchange', '', '2019-09-09 10:38:36', NULL, NULL, 330);
INSERT INTO `mst_service_sub_category` VALUES (340, 'Thay lọc khí', 7, 'airfilterchange', '', '2019-09-09 10:38:36', NULL, NULL, 340);
INSERT INTO `mst_service_sub_category` VALUES (350, 'Thay hệ thống xả', 7, 'exhaust', '', '2019-09-09 10:38:36', NULL, NULL, 350);
INSERT INTO `mst_service_sub_category` VALUES (360, 'Phanh liên quan', 7, 'brakes', '', '2019-09-09 10:38:36', NULL, NULL, 360);
INSERT INTO `mst_service_sub_category` VALUES (370, 'Hệ thống điện', 7, 'electrical', '', '2019-09-09 10:38:36', NULL, NULL, 370);
INSERT INTO `mst_service_sub_category` VALUES (380, 'Động cơ liên quan', 7, 'engine', '', '2019-09-09 10:38:36', NULL, NULL, 380);
INSERT INTO `mst_service_sub_category` VALUES (390, 'Xích chuỗi', 7, 'chainsprocket', '', '2019-09-09 10:38:36', NULL, NULL, 390);
INSERT INTO `mst_service_sub_category` VALUES (400, 'Phun nhiên liệu', 7, 'fuelinjection', '', '2019-09-09 10:38:36', NULL, NULL, 400);
INSERT INTO `mst_service_sub_category` VALUES (410, 'Ghế', 7, 'seat', '', '2019-09-09 10:38:36', NULL, NULL, 410);
INSERT INTO `mst_service_sub_category` VALUES (420, 'handling', 7, 'handling', '', '2019-09-09 10:38:36', NULL, NULL, 420);
INSERT INTO `mst_service_sub_category` VALUES (430, 'suspension', 7, 'suspension', '', '2019-09-09 10:38:36', NULL, NULL, 430);
INSERT INTO `mst_service_sub_category` VALUES (440, 'bodywork', 7, 'bodywork', '', '2019-09-09 10:38:36', NULL, NULL, 440);
INSERT INTO `mst_service_sub_category` VALUES (450, 'Operation system', 7, 'control', '', '2019-09-09 10:38:36', NULL, NULL, 450);
INSERT INTO `mst_service_sub_category` VALUES (460, 'gương', 7, 'mirror', '', '2019-09-09 10:38:36', NULL, NULL, 460);
INSERT INTO `mst_service_sub_category` VALUES (470, 'Around the handle', 7, 'handle', '', '2019-09-09 10:38:36', NULL, NULL, 470);
INSERT INTO `mst_service_sub_category` VALUES (480, 'Around the handle', 7, 'screen', '', '2019-09-09 10:38:36', NULL, NULL, 480);
INSERT INTO `mst_service_sub_category` VALUES (490, 'Exterior related', 7, 'fairings', '', '2019-09-09 10:38:36', NULL, NULL, 490);
INSERT INTO `mst_service_sub_category` VALUES (500, 'Case', 0, ' carrier', '', '2019-09-09 10:38:36', NULL, NULL, 500);
INSERT INTO `mst_service_sub_category` VALUES (510, 'navigation system', 7, 'navigationsystem', '', '2019-09-09 10:38:36', NULL, NULL, 510);
INSERT INTO `mst_service_sub_category` VALUES (520, 'Dụng cụ', 7, 'instruments', '', '2019-09-09 10:38:36', NULL, NULL, 520);
INSERT INTO `mst_service_sub_category` VALUES (530, 'Hệ thống làm mát', 7, 'coolingsystem', '', '2019-09-09 10:38:36', NULL, NULL, 530);
INSERT INTO `mst_service_sub_category` VALUES (540, 'Carryover parts', 7, 'carryover-parts', '', '2019-09-09 10:38:36', NULL, NULL, 540);

-- ----------------------------
-- Table structure for mst_service_sub_category_lang
-- ----------------------------
DROP TABLE IF EXISTS `mst_service_sub_category_lang`;
CREATE TABLE `mst_service_sub_category_lang`  (
  `service_sub_category_code` int(4) NOT NULL,
  `language_code` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `service_sub_category_lang_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `service_sub_category_lang_last_update` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `service_sub_category_lang_update_user` char(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`service_sub_category_code`, `language_code`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mst_service_sub_category_lang
-- ----------------------------
INSERT INTO `mst_service_sub_category_lang` VALUES (10, 'en', 'Oil change', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (20, 'en', 'Tire exchange', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (30, 'en', 'Battery exchange', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (40, 'en', 'Spark Plug change', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (50, 'en', 'Brake pad change', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (60, 'en', 'Chain / sprocket change', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (70, 'en', 'Air Filter change', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (80, 'en', 'exhaust', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (90, 'en', 'Brake related', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (100, 'en', 'Electrical system', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (110, 'en', 'Engine related', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (120, 'en', 'Chains procket', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (130, 'en', 'Fuel injection', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (140, 'en', 'Seat', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (150, 'en', 'Handling', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (160, 'en', 'Suspension', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (170, 'en', 'Body work', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (180, 'en', 'Operation system', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (190, 'en', 'mirror', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (200, 'en', 'Around the handle', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (210, 'en', 'screen', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (220, 'en', 'Exterior related', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (230, 'en', '2', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (240, 'en', 'Navi', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (250, 'en', 'Instruments', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (260, 'en', 'Cooling system', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (270, 'en', 'Carryover parts', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (280, 'en', 'Oil change', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (290, 'en', 'Tire exchange', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (300, 'en', 'Battery exchange', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (310, 'en', 'Spark Plug change', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (320, 'en', 'Brake pad change', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (330, 'en', 'Chain / sprocket change', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (340, 'en', 'Air Filter change', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (350, 'en', 'exhaust', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (360, 'en', 'Brake related', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (370, 'en', 'Electrical system', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (380, 'en', 'Engine related', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (390, 'en', 'Chains procket', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (400, 'en', 'Fuel injection', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (410, 'en', 'Seat', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (420, 'en', 'Handling', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (430, 'en', 'Suspension', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (440, 'en', 'Body work', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (450, 'en', 'Operation system', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (460, 'en', 'mirror', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (470, 'en', 'Around the handle', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (480, 'en', 'screen', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (490, 'en', 'Exterior related', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (500, 'en', '7', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (510, 'en', 'Navi', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (520, 'en', 'Instruments', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (530, 'en', 'Cooling system', '2019-08-02 20:09:07', NULL);
INSERT INTO `mst_service_sub_category_lang` VALUES (540, 'en', 'Carryover parts', '2019-08-02 20:09:07', NULL);

SET FOREIGN_KEY_CHECKS = 1;

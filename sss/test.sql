/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 08/06/2020 18:57:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_resume
-- ----------------------------
DROP TABLE IF EXISTS `tb_resume`;
CREATE TABLE `tb_resume`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户账号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户姓名',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_resume
-- ----------------------------
INSERT INTO `tb_resume` VALUES (7, '杨晨', '地球', '18808554913');
INSERT INTO `tb_resume` VALUES (8, '齐木', '同住地球', '112233445566');
INSERT INTO `tb_resume` VALUES (9, '花花', '火星', '18808554903');
INSERT INTO `tb_resume` VALUES (10, '大佬', '外太空', '18808554920');
INSERT INTO `tb_resume` VALUES (11, '某某', '四大', '123456789');
INSERT INTO `tb_resume` VALUES (13, 'xxx', 'www', '18808554923');
INSERT INTO `tb_resume` VALUES (21, 'test', 'cece', '1850953445');

SET FOREIGN_KEY_CHECKS = 1;

/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50711
Source Host           : 127.0.0.1:3306
Source Database       : yii2_1207

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2017-12-07 14:35:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '登录名',
  `nickname` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '昵称',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '邮箱',
  `profile` text COLLATE utf8_unicode_ci COMMENT '简介',
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '/uploads/resource/avatar.png' COMMENT '头像',
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Auth_key',
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '登录密码',
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'password_reset_token',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '状态，10、正常，0、已删除',
  `created_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='管理员信息表';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '超级管理员', 'admin@yii2_1207.host', '超级管理员', '/uploads/resource/avatar.png', 'ZvB1Jn0NvP9M0vdLt82W9zVs8ROo8NSS', '$2y$13$d0tLth77iMjrXvpfLQE8z.DSnyXP.VbgxZT81Jry98AqWzGKkUHuu', null, '10', '0', '0');

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1512617098');
INSERT INTO `migration` VALUES ('m130524_201442_init', '1512617100');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '自动登录key',
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '加密密码',
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '重置密码token',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '邮箱',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '状态，10、正常，0、已删除',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'tom', 'pzjZCMfTatNdRVMCxIPWKMyyRmZOkKKD', '$2y$13$1Hzlt7fNm9igILnwMQa9e.f3zr1miLXwShTHwpYNZQLSm3FNcF6k6', null, 'tom@ceshi.com', '10', '1512617350', '1512617350');
INSERT INTO `user` VALUES ('2', 'jerry', '-SHpYWXP_owUYKadeXsLyNtYNCVRMiVc', '$2y$13$Q0LhP7Xrsc6/pa/TgFIxDuxfnXhJIbun8qomU2YIae0dAK1Oy9516', null, 'jerry@ceshi.com', '10', '1512623871', '1512623871');
SET FOREIGN_KEY_CHECKS=1;

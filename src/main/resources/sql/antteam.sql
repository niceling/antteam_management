/*
Navicat MySQL Data Transfer

Source Server         : antteam
Source Server Version : 50530
Source Host           : localhost:3306
Source Database       : antteam

Target Server Type    : MYSQL
Target Server Version : 50530
File Encoding         : 65001

Date: 2015-10-30 14:31:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ant_ower_res
-- ----------------------------
DROP TABLE IF EXISTS `ant_ower_res`;
CREATE TABLE `ant_ower_res` (
  `ower_id` int(11) NOT NULL COMMENT 'type=1:user_id;type=2: role_id',
  `res_id` int(11) NOT NULL,
  `type` int(1) DEFAULT NULL,
  PRIMARY KEY (`ower_id`,`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ant_resources
-- ----------------------------
DROP TABLE IF EXISTS `ant_resources`;
CREATE TABLE `ant_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `resKey` varchar(50) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `resUrl` varchar(200) DEFAULT NULL,
  `level` int(4) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `ishide` int(3) DEFAULT '0',
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ant_role
-- ----------------------------
DROP TABLE IF EXISTS `ant_role`;
CREATE TABLE `ant_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `state` varchar(3) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `roleKey` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ant_user
-- ----------------------------
DROP TABLE IF EXISTS `ant_user`;
CREATE TABLE `ant_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `accountName` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `credentialsSalt` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `locked` varchar(3) DEFAULT '0',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletestatus` int(1) DEFAULT '0' COMMENT '逻辑删除状态0:存在1:删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ant_user_role
-- ----------------------------
DROP TABLE IF EXISTS `ant_user_role`;
CREATE TABLE `ant_user_role` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

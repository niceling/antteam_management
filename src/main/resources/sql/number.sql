/*
Navicat MySQL Data Transfer

Source Server         : number
Source Server Version : 50530
Source Host           : localhost:3306
Source Database       : number

Target Server Type    : MYSQL
Target Server Version : 50530
File Encoding         : 65001

Date: 2015-10-28 21:38:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `number`
-- ----------------------------
DROP TABLE IF EXISTS `number`;
CREATE TABLE `number` (
  `order_id` bigint(50) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `create_time` date NOT NULL,
  `total` int(10) DEFAULT '0',
  `one` int(10) DEFAULT NULL,
  `two` int(10) DEFAULT NULL,
  `tree` int(10) DEFAULT NULL,
  `four` int(10) DEFAULT NULL,
  `five` int(10) DEFAULT NULL,
  `six` int(10) DEFAULT NULL,
  `seven` int(10) DEFAULT NULL,
  `eight` int(10) DEFAULT NULL,
  `nine` int(10) DEFAULT NULL,
  `ten` int(10) DEFAULT NULL,
  `eleven` int(10) DEFAULT NULL,
  `twelve` int(10) DEFAULT NULL,
  `thirteen` int(10) DEFAULT NULL,
  `fourteen` int(10) DEFAULT NULL,
  `fifteen` int(10) DEFAULT NULL,
  `sixteen` int(10) DEFAULT NULL,
  `seventeen` int(10) DEFAULT NULL,
  `eighteen` int(10) DEFAULT NULL,
  `nineteen` int(10) DEFAULT NULL,
  `twenty` int(10) DEFAULT NULL,
  `twenty_one` int(10) DEFAULT NULL,
  `twenty_two` int(10) DEFAULT NULL,
  `twenty_three` int(10) DEFAULT NULL,
  `twenty_four` int(10) DEFAULT NULL,
  `twenty_five` int(10) DEFAULT NULL,
  `twenty_six` int(10) DEFAULT NULL,
  `twenty_seven` int(10) DEFAULT NULL,
  `twenty_eight` int(10) DEFAULT NULL,
  `twenty_nine` int(10) DEFAULT NULL,
  `thirty` int(10) DEFAULT NULL,
  `thirty_one` int(10) DEFAULT NULL,
  `thirty_two` int(10) DEFAULT NULL,
  `thirty_three` int(10) DEFAULT NULL,
  `thirty_four` int(10) DEFAULT NULL,
  `thirty_five` int(10) DEFAULT NULL,
  `thirty_six` int(10) DEFAULT NULL,
  `thirty_seven` int(10) DEFAULT NULL,
  `thirty_eight` int(10) DEFAULT NULL,
  `thirty_nine` int(10) DEFAULT NULL,
  `forty` int(10) DEFAULT NULL,
  `forty_one` int(10) DEFAULT NULL,
  `forty_two` int(10) DEFAULT NULL,
  `forty_three` int(10) DEFAULT NULL,
  `forty_four` int(10) DEFAULT NULL,
  `forty_five` int(10) DEFAULT NULL,
  `forty_six` int(10) DEFAULT NULL,
  `forty_seven` int(10) DEFAULT NULL,
  `forty_eight` int(10) DEFAULT NULL,
  `forty_nine` int(10) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2015092600034 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of number
-- ----------------------------
INSERT INTO `number` VALUES ('2015092600001', '李四', '2015-09-26', '0', '1', '1', '1', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `number` VALUES ('2015092600002', '张三', '2015-09-26', '3', '1', '1', '1', '1', '1', '11', '1', '11', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `number` VALUES ('2015092600019', '王五22编辑来的', '2015-09-27', '5', '12', '1', '1', '1', '1', null, null, null, null, null, null, null, '22', '2', '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `number` VALUES ('2015092600020', '王五', '2015-09-27', '18', '12', '1', '1', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `number` VALUES ('2015092600021', '修改数据的', '2015-09-27', '13', '1', '1', '1', '1', '1', null, null, null, null, null, null, '2', '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `number` VALUES ('2015092600025', '王五', '2015-09-27', null, '1', '1', '1', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `number` VALUES ('2015092600028', '1232', '2015-09-27', null, '23', '213', '123', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '123', null, null, null, null, null, null, null, null, null, null, null, '13', null, '13', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `number` VALUES ('2015092600031', '客户1', '2015-09-27', null, '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49');
INSERT INTO `number` VALUES ('2015092600032', '测试数据', '2015-09-29', '138', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '22', '2', '22', '2', '2', '2');
INSERT INTO `number` VALUES ('2015092600033', '添加数据来的', '2015-09-29', '8', '1', '1', '1', '1', '1', '1', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `number_page`
-- ----------------------------
DROP TABLE IF EXISTS `number_page`;
CREATE TABLE `number_page` (
  `order_id` bigint(50) NOT NULL AUTO_INCREMENT,
  `create_time` date NOT NULL,
  `total` int(11) DEFAULT '0',
  `one_txt` text,
  `one_sum` int(11) DEFAULT '0',
  `two_txt` text,
  `two_sum` int(11) DEFAULT '0',
  `three_txt` text,
  `three_sum` int(11) DEFAULT '0',
  `four_txt` text,
  `four_sum` int(11) DEFAULT '0',
  `five_txt` text,
  `five_sum` int(11) DEFAULT '0',
  `six_txt` text,
  `six_sum` int(11) DEFAULT '0',
  `seven_txt` text,
  `seven_sum` int(11) DEFAULT '0',
  `eight_txt` text,
  `eight_sum` int(11) DEFAULT '0',
  `nine_txt` text,
  `nine_sum` int(11) DEFAULT '0',
  `ten_txt` text,
  `ten_sum` int(11) DEFAULT '0',
  `eleven_txt` text,
  `eleven_sum` int(11) DEFAULT '0',
  `twelve_txt` text,
  `twelve_sum` int(11) DEFAULT '0',
  `thirteen_txt` text,
  `thirteen_sum` int(11) DEFAULT '0',
  `fourteen_txt` text,
  `fourtee_sum` int(11) DEFAULT '0',
  `fifteen_txt` text,
  `fifteen_sum` int(11) DEFAULT '0',
  `sixteen_txt` text,
  `sixteen_sum` int(11) DEFAULT '0',
  `seventeen_txt` text,
  `seventeen_sum` int(11) DEFAULT '0',
  `eighteen_txt` text,
  `eighteen_sum` int(11) DEFAULT '0',
  `nineteen_txt` text,
  `nineteen_sum` int(11) DEFAULT '0',
  `twenty_txt` text,
  `tweenty_sum` int(11) DEFAULT '0',
  `tweenty_one_txt` text,
  `tweenty_one_sum` int(11) DEFAULT '0',
  `twenty_two_txt` text,
  `twenty_two_sum` int(11) DEFAULT '0',
  `twenty_three_text` text,
  `twenty_three_sum` int(11) DEFAULT '0',
  `twenty_four_text` text,
  `twenty_four_sum` int(11) DEFAULT '0',
  `twenty_five_text` text,
  `twenty_five_sum` int(11) DEFAULT '0',
  `twenty_six_text` text,
  `twenty_six_sum` int(11) DEFAULT '0',
  `twenty_seven_text` text,
  `twenty_seven_sum` int(11) DEFAULT '0',
  `twenty_eight_text` text,
  `twenty_eight_sum` int(11) DEFAULT '0',
  `twenty_nine_text` text,
  `twenty_nine_sum` int(11) DEFAULT '0',
  `thirty_text` text,
  `thirty_sum` int(11) DEFAULT '0',
  `thirty_one_txt` text,
  `thirty_one_sum` int(11) DEFAULT '0',
  `thirty_two_txt` text,
  `thirty_two_sum` int(11) DEFAULT '0',
  `thirty_three_text` text,
  `thirty_three_sum` int(11) DEFAULT '0',
  `thirty_four_text` text,
  `thirty_four_sum` int(11) DEFAULT '0',
  `thirty_five_text` text,
  `thirty_five_sum` int(11) DEFAULT '0',
  `thirty_six_text` text,
  `thirty_six_sum` int(11) DEFAULT '0',
  `thirty_seven_text` text,
  `thirty_seven_sum` int(11) DEFAULT '0',
  `thirty_eight_text` text,
  `thirty_eight_sum` int(11) DEFAULT '0',
  `thirty_nine_text` text,
  `thirty_nine_sum` int(11) DEFAULT '0',
  `forty_text` text,
  `forty_sum` int(11) DEFAULT '0',
  `forty_one_txt` text,
  `forty_one_sum` int(11) DEFAULT '0',
  `forty_two_txt` text,
  `forty_two_sum` int(11) DEFAULT '0',
  `forty_three_text` text,
  `forty_three_sum` int(11) DEFAULT '0',
  `forty_four_text` text,
  `forty_four_sum` int(11) DEFAULT '0',
  `forty_five_text` text,
  `forty_five_sum` int(11) DEFAULT '0',
  `forty_six_text` text,
  `forty_six_sum` int(11) DEFAULT '0',
  `forty_seven_text` text,
  `forty_seven_sum` int(11) DEFAULT '0',
  `forty_eight_text` text,
  `forty_eight_sum` int(11) DEFAULT '0',
  `forty_nine_text` text,
  `forty_nine_sum` int(11) DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of number_page
-- ----------------------------
INSERT INTO `number_page` VALUES ('1', '2015-09-29', '0', '1+2+3', '0', '1+2+3', '0', '1+2+3', '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0');
INSERT INTO `number_page` VALUES ('2', '2015-09-29', '0', '1', '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0', null, '0');

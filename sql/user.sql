/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2018-08-09 17:11:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `USER_NAME` varchar(255) NOT NULL COMMENT '用户名',
  `USER_CODE` varchar(100) NOT NULL COMMENT '用户编码uuid',
  `COMPANY` varchar(255) NOT NULL,
  `LOGIN_NAME` varchar(255) NOT NULL COMMENT '登录名',
  `PASSWORD` varchar(255) NOT NULL COMMENT '密码',
  `EMAIL` varchar(255) DEFAULT NULL COMMENT '邮件',
  `USER_TYPE` int(1) NOT NULL COMMENT '用户类型',
  `STATUS` int(1) NOT NULL COMMENT '用户状态',
  `USER_DESC` varchar(255) NOT NULL COMMENT '用户描述',
  `CREATOR` varchar(255) DEFAULT NULL COMMENT '创建者',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATER` varchar(255) NOT NULL COMMENT '更新者',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('8', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('9', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('10', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('11', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('12', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('13', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('14', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('15', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('16', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('17', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('18', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('19', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('20', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('21', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('22', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('23', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('24', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('25', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('26', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('27', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('28', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('29', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('30', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('31', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('32', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('33', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('34', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('35', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('36', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('37', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('38', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('39', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('40', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('41', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('42', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('43', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('44', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('45', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('46', 'qqqq', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');
INSERT INTO `user` VALUES ('47', 'aaaa', '1', 'ss', 'wwww', '11111', null, '2', '1', 'ssss', null, '2018-08-06 16:07:17', 'edasd', '2018-08-07 16:07:24');

/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : master

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2018-08-09 17:11:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dbinfo
-- ----------------------------
DROP TABLE IF EXISTS `dbinfo`;
CREATE TABLE `dbinfo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据库信息id',
  `DB_NAME` varchar(255) NOT NULL COMMENT '数据库名称',
  `DB_IP` varchar(100) DEFAULT NULL COMMENT '数据库访问地址',
  `DB_PORT` varchar(255) DEFAULT NULL COMMENT '数据库访问端口',
  `DB_USER` varchar(255) DEFAULT NULL COMMENT '数据库账户',
  `DB_PASSWORD` varchar(255) DEFAULT NULL COMMENT '数据库密码',
  `STATUS` int(1) DEFAULT NULL COMMENT '数据库是否已加载标记',
  `CREATOR` varchar(255) DEFAULT NULL COMMENT '创建者',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATER` varchar(255) NOT NULL COMMENT '更新者',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `DB_NAME` (`DB_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dbinfo
-- ----------------------------
INSERT INTO `dbinfo` VALUES ('1', 'demo', 'localhost', '3306', 'root', '123456', '0', 'admin', '2018-08-09 14:59:28', 'admin', '2018-08-09 14:59:34');
INSERT INTO `dbinfo` VALUES ('2', 'demo2', 'localhost', '3306', 'root', '123456', '0', 'admin', '2018-08-09 14:59:28', 'admin', '2018-08-09 14:59:34');

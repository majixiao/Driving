/*
Navicat MySQL Data Transfer

Source Server         : mysql_localhost
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : driving

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2019-03-17 15:03:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adminuser
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES ('3', 'm', 'm');
INSERT INTO `adminuser` VALUES ('4', '1', '1');

-- ----------------------------
-- Table structure for appointment
-- ----------------------------
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `pnumber` int(11) DEFAULT NULL,
  `pdate` date DEFAULT NULL,
  `premaining` int(11) DEFAULT NULL,
  `pstarttime` date DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKA8155B9F9E0946CD` (`cid`),
  CONSTRAINT `FKA8155B9F9E0946CD` FOREIGN KEY (`cid`) REFERENCES `coach` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9057 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appointment
-- ----------------------------
INSERT INTO `appointment` VALUES ('9048', '科目三', '50', '2019-03-12', '50', '2019-04-12', '上午九点场', '98');
INSERT INTO `appointment` VALUES ('9049', '科目一', '30', '2019-03-12', '30', '2019-03-07', '上午八点场', '98');
INSERT INTO `appointment` VALUES ('9052', '科目三', '50', '2019-03-12', '49', '2019-03-23', '上午九点场', '103');
INSERT INTO `appointment` VALUES ('9053', '科目二', '60', '2019-03-12', '60', '2019-03-17', '下午12点', '103');
INSERT INTO `appointment` VALUES ('9055', '科目三', '45', '2019-03-12', '44', '2019-03-23', '下午四点', '107');
INSERT INTO `appointment` VALUES ('9056', '科目一', '30', '2019-03-12', '30', '2019-06-12', '上午八点场', '107');

-- ----------------------------
-- Table structure for coach
-- ----------------------------
DROP TABLE IF EXISTS `coach`;
CREATE TABLE `coach` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cphone` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `cnumber` varchar(255) DEFAULT NULL,
  `cmodel` varchar(255) DEFAULT NULL,
  `cdrivetime` varchar(255) DEFAULT NULL,
  `cdesc` varchar(255) DEFAULT NULL,
  `cpwd` varchar(255) DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `cstate` int(11) DEFAULT NULL,
  `cemail` varchar(255) DEFAULT NULL,
  `cage` int(11) DEFAULT NULL,
  `csex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coach
-- ----------------------------
INSERT INTO `coach` VALUES ('98', '13957313530', '教头', '浙F-15698', '奔驰sss', '5年', '踏实负责的一个教练', '20', '2019-03-12', '1', '1395731330@qq.com', '30', '女');
INSERT INTO `coach` VALUES ('101', '13957313533', '地方', '吉B-3653', '奥斯莱斯', '1年', '有经验', '33', '2019-03-12', '0', '131231321@qq.com', '33', '女');
INSERT INTO `coach` VALUES ('102', '13957313534', '灯笼裤', '吉B-3654', 'qq', '5年', '懊糟', '34', '2019-03-13', '0', '131564645@qq.com', '34', '男');
INSERT INTO `coach` VALUES ('103', '13957313535', '来看啊', '吉B-6845', '宝马', '4年', '帅气', '35', '2019-03-12', '1', '1231321321@qq.com', '35', '女');
INSERT INTO `coach` VALUES ('104', '13957313536', 'mark', '吉B-6341', '现代', '1年', '诶里', '36', '2019-03-13', '0', '134651@qq.com', '36', '男');
INSERT INTO `coach` VALUES ('105', '13957313537', 'tom', '吉B-6598', '丰田', '6年', '技术熟练', '37', '2019-03-13', '0', '1654313@qq.com', '37', '女');
INSERT INTO `coach` VALUES ('106', '13957313538', 'madin', '吉B-3689', '大黄蜂', '4年', '好人', '38', '2019-03-12', '0', '354646313@qq.com', '38', '男');
INSERT INTO `coach` VALUES ('107', '13957313539', '大佬级别', '吉B-3658', '宾利', '6年', '黑道大哥ss', '39', '2019-03-12', '1', '34651323@qq.com', '39', '男');
INSERT INTO `coach` VALUES ('109', '15154526398', '马马', '浙f1236', '奔驰', '三年', '帅哥', '12', '2019-03-12', '0', '93235689985@qq.com', '12', '男');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rdate` date DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `FKC8466C51C50E0C7B` (`sid`),
  KEY `FKC8466C511CC9A0BA` (`pid`),
  CONSTRAINT `FKC8466C511CC9A0BA` FOREIGN KEY (`pid`) REFERENCES `appointment` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKC8466C51C50E0C7B` FOREIGN KEY (`sid`) REFERENCES `students` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('56', '2019-03-12', '30', '9052');
INSERT INTO `record` VALUES ('57', '2019-03-12', '30', '9055');

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) DEFAULT NULL,
  `sphone` varchar(255) DEFAULT NULL,
  `ssex` varchar(255) DEFAULT NULL,
  `sage` int(11) DEFAULT NULL,
  `spw` varchar(255) DEFAULT NULL,
  `semail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('25', '张一', '15157358720', '女', '63', '20', '1984168564@qq.com');
INSERT INTO `students` VALUES ('26', '李四', '15157358731', '女', '23', '31', '123695874@qq.com');
INSERT INTO `students` VALUES ('27', '王五', '15157358732', '男', '32', '32', '15157358732@qq.com');
INSERT INTO `students` VALUES ('28', '赵六', '15157358733', '男', '33', '33', '15157358654@qq.com');
INSERT INTO `students` VALUES ('29', '詹八', '15157358734', '男', '34', '34', '15157356546qq.com');
INSERT INTO `students` VALUES ('30', '新一', '15157358735', '男', '35', '35', '15157358735@qq.com');
INSERT INTO `students` VALUES ('31', '旧二', '15157358736', '女', '36', '36', '15157358736@qq.com');
INSERT INTO `students` VALUES ('32', '马达', '15157358737', '男', '37', '37', '15157358737@qq.com');
INSERT INTO `students` VALUES ('33', '马斯', '15157358738', '男', '38', '38', '15157358738@qq.com');
INSERT INTO `students` VALUES ('34', '随流', '15157358739', '男', '39', '39', '15157358739@qq.com');
INSERT INTO `students` VALUES ('35', 'test', '13166859617', '男', '20', '111', '1111@ttt');
INSERT INTO `students` VALUES ('36', '宝贝', '12345678936', '男', '32', '12', '932323232@qq.com');

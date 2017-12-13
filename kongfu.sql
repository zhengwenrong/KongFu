/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : kongfu

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2017-12-13 13:55:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `addressId` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `plot` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `linkMan` varchar(50) default NULL,
  `phone` varchar(20) default NULL,
  `userId` varchar(50) default NULL,
  PRIMARY KEY  (`addressId`),
  KEY `userId` (`userId`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `categoryId` int(50) NOT NULL auto_increment,
  `parantcategory` varchar(50) NOT NULL,
  `categoryname` varchar(255) NOT NULL,
  PRIMARY KEY  (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '热卖', '新品-超值双人餐');
INSERT INTO `category` VALUES ('2', '热卖', '新品-早餐');
INSERT INTO `category` VALUES ('3', '热卖', '新品-特惠饮料');
INSERT INTO `category` VALUES ('4', '热卖', '新品-栗子焖土鸡饭');
INSERT INTO `category` VALUES ('5', '营养早餐', '新品-早餐');
INSERT INTO `category` VALUES ('6', '营养早餐', '套餐营养配');
INSERT INTO `category` VALUES ('7', '营养早餐', '米粉、米线');
INSERT INTO `category` VALUES ('8', '营养早餐', '包点');
INSERT INTO `category` VALUES ('9', '营养早餐', '粥');
INSERT INTO `category` VALUES ('10', '营养早餐', '饮品');
INSERT INTO `category` VALUES ('11', '丰富主食', '栗子焖土鸡饭');
INSERT INTO `category` VALUES ('12', '丰富主食', '鲜香云耳土鸡饭');
INSERT INTO `category` VALUES ('13', '丰富主食', '超值双人餐');
INSERT INTO `category` VALUES ('14', '丰富主食', '豪满足套餐');
INSERT INTO `category` VALUES ('15', '丰富主食', '排骨拼鸡腿肉饭');
INSERT INTO `category` VALUES ('16', '丰富主食', '鲜剁冬菇肉饼饭');
INSERT INTO `category` VALUES ('17', '丰富主食', '冬(香)菇鸡腿肉饭');
INSERT INTO `category` VALUES ('18', '丰富主食', '酸菜卤肉饭');
INSERT INTO `category` VALUES ('19', '丰富主食', '鲜辣排骨饭');
INSERT INTO `category` VALUES ('20', '丰富主食', '榨菜牛肉饭');
INSERT INTO `category` VALUES ('21', '丰富主食', '鱼香茄子饭');
INSERT INTO `category` VALUES ('22', '丰富主食', '米粉、米线');
INSERT INTO `category` VALUES ('23', '丰富主食', '蒸汤');
INSERT INTO `category` VALUES ('24', '丰富主食', '小吃/配菜/米饭');
INSERT INTO `category` VALUES ('25', '轻松下午茶', '套餐');
INSERT INTO `category` VALUES ('26', '轻松下午茶', '米粉、米线');
INSERT INTO `category` VALUES ('27', '轻松下午茶', '小吃');
INSERT INTO `category` VALUES ('28', '轻松下午茶', '饮品');

-- ----------------------------
-- Table structure for memu
-- ----------------------------
DROP TABLE IF EXISTS `memu`;
CREATE TABLE `memu` (
  `memuId` varchar(50) NOT NULL,
  `memuName` varchar(255) NOT NULL,
  `memuPrice` double NOT NULL,
  `memuImageUrl` varchar(255) default NULL,
  `memuCategory` int(11) default NULL,
  PRIMARY KEY  (`memuId`),
  KEY `memuCategory` (`memuCategory`),
  CONSTRAINT `memu_ibfk_1` FOREIGN KEY (`memuCategory`) REFERENCES `category` (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of memu
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) default NULL,
  `gender` varchar(10) default NULL,
  `birthday` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `province` varchar(50) default NULL,
  `city` varchar(50) default NULL,
  `interest` varchar(255) default NULL,
  `tag` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('20d7025b4ec34484b237d2a9965ecd65', '15018159367', '123', '文荣', '男', '2017-12-01', '234', '广东', '阳江', '清淡-浓重-滋补', '鲁菜-苏菜-闽菜');

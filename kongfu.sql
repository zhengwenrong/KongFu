/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : kongfu

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2017-12-17 09:59:48
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
  `alias` varchar(255) default NULL,
  PRIMARY KEY  (`addressId`),
  KEY `userId` (`userId`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('45e353525b20452599d35d01c77e909c', '江门市', '江门职业技术学院', '1栋705', '郑文荣', '15018159367', 'a93c59ab1ab34a40a1e543b6163e3016', '学校');
INSERT INTO `address` VALUES ('a3fbc5d6e0b141cb9519f683edffec6a', '江门市', '蓬江区江门职业技术学院', '1栋705室', '郑文荣', '15018159367', 'd90acab781024078b96e2e06e7cbfa22', '学校');

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
INSERT INTO `memu` VALUES ('0001a44484ef4b2395a9d1c4d3ab1adf', '酸菜脆笋蒸蛋', '21', 'uploadMemuImg/8d67ec5b4fa8479395c204800af67c36.jpg', '18');
INSERT INTO `memu` VALUES ('025b1bcad00b4873b01cd72b95a12170', '鱼香茄子饭+四季猪骨汤', '18', 'uploadMemuImg/b28a836c0d2d4c6ebd6bca2bfd2a72a0.jpg', '21');
INSERT INTO `memu` VALUES ('027879206f2447e493476e629dc6c315', '棒棒哒鸡汤', '8', 'uploadMemuImg/6a2dcceda3104e89ac909beda3fe1f9a.png', '25');
INSERT INTO `memu` VALUES ('03c04e9285f048dead777e93b2519ffb', '鲜剁冬菇肉饼饭', '8', 'uploadMemuImg/b746a0076f504bec82c883401e69a5fa.jpg', '16');
INSERT INTO `memu` VALUES ('0467c6c339a64e23beceeb346405df71', '炒米粉', '6', 'uploadMemuImg/e278b92534c04f8da82e6cd7a795b7c4.jpg', '2');
INSERT INTO `memu` VALUES ('06e3f7257c534ca3bfd882860d5370f8', '骨菇汤', '9', 'uploadMemuImg/4cf79c2d74e841b1a7fb2d8f9452a11d.jpg', '23');
INSERT INTO `memu` VALUES ('081ffbf042744758b017e837565298d9', '七彩雪碧果蔬饮', '6', 'uploadMemuImg/81b276c128084345bb9631e88d347aa8.jpg', '10');
INSERT INTO `memu` VALUES ('08c7c458eddf4b5ba4e0314366f22eed', '鱼香茄子饭+金杏蜜桃汁', '14', 'uploadMemuImg/531e93758b5d44969c427ca331e41721.jpg', '21');
INSERT INTO `memu` VALUES ('0a10aab75e244f66b5f36f088ba7aeef', '汤套配脆笋蒸蛋', '29', 'uploadMemuImg/edf91ada5dd94bf4b291c602e8b5c0fe.jpg', '17');
INSERT INTO `memu` VALUES ('0f7c02aef3ef4926a105b813b0442c5f', '鱼蛋粉+花卷', '18', 'uploadMemuImg/020208f5209a40fb8f8bd685f469aca0.png', '6');
INSERT INTO `memu` VALUES ('0f95353a94fb40a6b27ca53072937f17', '棒棒哒下午茶', '10', 'uploadMemuImg/e82c37338d224b97909a1c1ebe8ccf82.png', '25');
INSERT INTO `memu` VALUES ('0faddd575d444291a2001cc1e454dedc', '三色辫子包', '5', 'uploadMemuImg/d1fdc556ed6a49d5b37cdc4726a980ff.jpg', '8');
INSERT INTO `memu` VALUES ('1098225083514255b8fc80b4b2881434', '炒米粉', '6', 'uploadMemuImg/c15a4a22de1b43afb6b580500c76c43d.jpg', '26');
INSERT INTO `memu` VALUES ('1183c97ae7f84df2bcc663c658303b09', '萌萌哒汤圆', '3', 'uploadMemuImg/b5b3a98d0a724dc5a86cb07d105d1ec7.jpg', '5');
INSERT INTO `memu` VALUES ('1666f3a113bd497db12c2e209951edbb', '蝴蝶酥', '5', 'uploadMemuImg/6e8cb71aff67437587111605b203f1d8.jpg', '24');
INSERT INTO `memu` VALUES ('16fba49036b64289b09c9354cd0eec5b', '西关艇仔粥', '20', 'uploadMemuImg/6a952f7a0a5e4fb1ba42f37399bad472.jpg', '5');
INSERT INTO `memu` VALUES ('1910afb552174a3197f4318f757475ff', '咖喱粉丝虾', '7', 'uploadMemuImg/e4a6924c2c8d4c49975c1ac5a4f30304.jpg', '26');
INSERT INTO `memu` VALUES ('193c8d7296a842549762d6d5e167c4a6', '猪肠卷(月销第一)', '2', 'uploadMemuImg/0b91b336a11d47caabaa804b95fc25d0.jpg', '5');
INSERT INTO `memu` VALUES ('1afdf38656f341d8984e7533ce35e8a4', '栗子鸡满足餐', '23', 'uploadMemuImg/829a111439264d7ab580a3cd45308d2a.png', '11');
INSERT INTO `memu` VALUES ('1e68668ecf8d43ecbd94b91babe5dd4d', '陈皮饮', '5', 'uploadMemuImg/5b4d26a87935418c96408007e46512bf.jpg', '10');
INSERT INTO `memu` VALUES ('2026cf6d827143689492d88268438c9d', '排骨饭脆笋蒸蛋', '24', 'uploadMemuImg/a3d4ab7cdfcb43f68beba5d0d74f3451.jpg', '19');
INSERT INTO `memu` VALUES ('203ec3b70d57430fb2cdae4fd2ff13d5', '美味奇缘欢享餐', '34', 'uploadMemuImg/4a463646fe5443bfbe5d8fb45e74f27e.jpg', '1');
INSERT INTO `memu` VALUES ('223bfb392a874723b2bb8af827e52745', '八宝粥', '6', 'uploadMemuImg/0f2ae6e011bd4a2cb9ac704a80891d4c.jpg', '9');
INSERT INTO `memu` VALUES ('25362525814f4b6e81df682793d05487', '排骨拼鸡腿肉菜满足餐', '31', 'uploadMemuImg/85baabb6f21b4af4ab70814e6a324e03.jpg', '14');
INSERT INTO `memu` VALUES ('2732ca153e764ad68683eed4b760f819', '鲜剁冬菇肉饼菜单人餐', '14', 'uploadMemuImg/3fe62ddb92d240f7bf2bb8ea6470085c.jpg', '16');
INSERT INTO `memu` VALUES ('2ac3138a6f8e4b769d0c4f5e4f44f63b', '炸油角', '4', 'uploadMemuImg/9d4dada273e9439694784c60fb7c194b.jpg', '24');
INSERT INTO `memu` VALUES ('2c7f789971f54296a39b02ffef8e597d', '促销双人套餐', '36', 'uploadMemuImg/73e4a5e543bf46f48034f4b719746d17.png', '1');
INSERT INTO `memu` VALUES ('3032df3911fb47869e89948676511ad7', '酸菜卤肉豪华单人汤套', '22', 'uploadMemuImg/fb7b37db98064c25ae7b5dc16c75f49c.jpg', '14');
INSERT INTO `memu` VALUES ('3310880de03c4e9b84a19465b173e84d', '冬（香）菇鸡腿肉菜', '9', 'uploadMemuImg/3933f2828042453f802721706709b6f7.jpg', '17');
INSERT INTO `memu` VALUES ('335c5d5aea2b4c928f54f53d593d3c98', '臊子面', '9', 'uploadMemuImg/a0e6ae2e00ef445ab881a4de333282c3.jpg', '7');
INSERT INTO `memu` VALUES ('364ac5fb8e67472483afcdd2e4c9f2a9', '栗子鸡豪华餐', '21', 'uploadMemuImg/b753a800083b4056a699adeac9c79ee2.png', '11');
INSERT INTO `memu` VALUES ('3c3a7f84542443ee8b477acbb6fec942', '凤梨优酸饮', '7', 'uploadMemuImg/ee586f3826df4be89a39debd75f9e448.jpg', '10');
INSERT INTO `memu` VALUES ('3d219d38ffd9425cabd6663e5133f73e', '凉拌粉丝', '6', 'uploadMemuImg/308abe5c75b748ab841402ede30bb3a7.jpg', '7');
INSERT INTO `memu` VALUES ('3d3dda2b59d94fb39fbea64b7c5324df', '鲜香云耳蒸土鸡菜', '11', 'uploadMemuImg/7b456815e4004301b9baddd679f5337d.png', '12');
INSERT INTO `memu` VALUES ('3d7bbcf643854aeeb48c7eddff745efc', '吃土巧克力粥', '1', 'uploadMemuImg/abc7869be53e4b51bf5b553d6e534b44.jpg', '5');
INSERT INTO `memu` VALUES ('3dbfd3da141c4802a9e64c30c88e2eff', '冬菇鸡丝羹', '15', 'uploadMemuImg/4ee2c0839e574f15a6ae3bf20c8405e8.jpg', '23');
INSERT INTO `memu` VALUES ('3e652ca7aa824fe298a8e05443f9aa50', '七彩雪碧果蔬饮', '6', 'uploadMemuImg/6eaaacdf6bec4f188c0e5131f2b9167c.jpg', '28');
INSERT INTO `memu` VALUES ('4b734ae762d647b096b0a0d110708db0', '虾米炒米粉', '9', 'uploadMemuImg/c2cf8244c8144c04b0e9a97429b030c1.jpg', '7');
INSERT INTO `memu` VALUES ('4f3bc2cd9a6c4f57a9ec173da5c78185', '蝴蝶酥', '5', 'uploadMemuImg/02fc11b1d8de41b998af27ffadf0a092.jpg', '27');
INSERT INTO `memu` VALUES ('5366c2dec8d64bcb8e82fc5833596ff6', '枸杞鱼片汤', '7', 'uploadMemuImg/47c50e089ed74b22837e4c8bddfed62f.jpg', '23');
INSERT INTO `memu` VALUES ('53c210b15f714c90ad770c43c882c5c3', '栗子焖土鸡汤套', '27', 'uploadMemuImg/d26acd12e954469b984360baa5b1f140.png', '4');
INSERT INTO `memu` VALUES ('53ee8ad6b1304a3ca61c5436bf2cfff3', '芒果酸奶冰饮', '8', 'uploadMemuImg/2cf1fce069c44feba8a99c5133a78a90.jpg', '28');
INSERT INTO `memu` VALUES ('5516f717d1804525b05ab701b486f66d', '露水汤圆', '6', 'uploadMemuImg/cda5206d7cfd4be0942dca8b57cf729b.jpg', '27');
INSERT INTO `memu` VALUES ('57e83eb8c6d945df878489dc102ed189', '卤肉饭配脆笋', '20', 'uploadMemuImg/ee467991b9d542aab5edc7739ecf4f34.jpg', '18');
INSERT INTO `memu` VALUES ('5a2ae7ea1dcf4fd3b57d2656aa6e72fc', '夏日冰饮', '3', 'uploadMemuImg/d8d4494ef72844eeaf8c42b3711d0755.jpg', '10');
INSERT INTO `memu` VALUES ('5ade5154fdaf4bc5aab812b21521502c', '云耳土鸡鸡腿双人套餐', '37', 'uploadMemuImg/a5607c820385481885b0f328f46e544a.jpg', '1');
INSERT INTO `memu` VALUES ('5f2c5a25c2b84662965cc31f42789f5d', '姜汁凉饮', '5', 'uploadMemuImg/50e6751f5b344f15b97c9e42078415be.jpg', '10');
INSERT INTO `memu` VALUES ('61f3c4f0668d476aae35b4ecc7650fa9', '炒面', '6', 'uploadMemuImg/4aae9029b4aa4158b435ac928229c032.jpg', '7');
INSERT INTO `memu` VALUES ('621b89fd5d5e4af2a57d92895dcc3957', '广州老字号肠粉', '18', 'uploadMemuImg/7013535ac30f426cb22c3c145f76be50.jpg', '5');
INSERT INTO `memu` VALUES ('6342082086db4a27930200560563ea5b', '美味奇缘餐B', '19', 'uploadMemuImg/cba080739494485787f1b3530a92e10f.jpg', '1');
INSERT INTO `memu` VALUES ('64507812d16348aa8dd3da1c38d1149d', '南瓜小米粥', '4', 'uploadMemuImg/77a2583a0dff494a89eb92bc3c97ab99.jpg', '9');
INSERT INTO `memu` VALUES ('665d1dbad224422ca14b5bcf775767f3', '凤梨优乳饮', '7', 'uploadMemuImg/f824cbcd5ad24d62a35c54fa6c029b2f.jpg', '28');
INSERT INTO `memu` VALUES ('6b5fdd0f22e84523a267d1060fe9cbd5', '卤肉饭土鸡汤豪华餐', '23', 'uploadMemuImg/b8b57853a6d74e3abfe41a446ee03dca.jpg', '18');
INSERT INTO `memu` VALUES ('6fa3e10f943640b884ba9c7ca30c4dd1', '露水汤圆', '6', 'uploadMemuImg/7ad11b5a7d634b61ae7b370f7572bb4c.jpg', '24');
INSERT INTO `memu` VALUES ('70bdd11aa057498db81bf0f1ee72de19', '鲜榨草莓汁', '6', 'uploadMemuImg/e4d4d4895e844fd9ba6ce4b2d9662d78.jpg', '3');
INSERT INTO `memu` VALUES ('72053e82acf04e37a533cf93f9b6de63', '韩国素面', '8', 'uploadMemuImg/b76a53ffb5a84663aaff0dffab049fcf.jpg', '7');
INSERT INTO `memu` VALUES ('75714a6cc2ad49c2ba66d6af10f14af9', '随便', '6', 'uploadMemuImg/3ec5c4c317a84fa19b01a2c543860344.jpg', '28');
INSERT INTO `memu` VALUES ('7bebd8d91d1e4691b00515fa81685950', '榨菜牛肉饭套餐', '14', 'uploadMemuImg/bf5f63e8600a4b6daa0205dc154bc08a.jpg', '20');
INSERT INTO `memu` VALUES ('7d0e207c96bf418fa5da7b3045d963a4', '七彩雪碧果蔬饮', '7', 'uploadMemuImg/b84451310ba74abaae97896ced74ac5a.jpg', '3');
INSERT INTO `memu` VALUES ('7d77afcc03654866bae64995350d2b8a', '门丁肉饼', '4', 'uploadMemuImg/d7c18e399ecf40e59ebdd10e66765cad.gif', '24');
INSERT INTO `memu` VALUES ('7e7dade0e6b843ddae2c376c5beacd07', '榨菜牛肉饭豪华套餐', '16', 'uploadMemuImg/34ff676ba2284b85b0dc8c6876277270.jpg', '20');
INSERT INTO `memu` VALUES ('804afb3f220147b8bf5ffcdaa513a49f', '流沙包', '3', 'uploadMemuImg/704962fb430a4290aefdf89cf2c22e67.jpg', '8');
INSERT INTO `memu` VALUES ('8450d48452b7448489453558ad0ebdd1', '炒米粉', '6', 'uploadMemuImg/2c56224b18984ca0bb0de30198ed3e52.jpg', '7');
INSERT INTO `memu` VALUES ('846c992bbdd74dd48bd94ce52d5e8b77', '虾米炒米粉', '9', 'uploadMemuImg/bb44a4b448264792b01461e45c1e1316.jpg', '26');
INSERT INTO `memu` VALUES ('885c265918d74e5ba7be5dde1d629a4d', '咖喱粉丝虾', '7', 'uploadMemuImg/712893a72b414861867abb945ed74f35.jpg', '7');
INSERT INTO `memu` VALUES ('8d0f24c630024a879fa0f698dbe26cf5', '门丁肉饼', '4', 'uploadMemuImg/709a5bd29250489baae3aa8ea3a28b1a.gif', '27');
INSERT INTO `memu` VALUES ('8d297ce5d62a4d98a3fbf0c9c1895f60', '健康草莓汁', '4', 'uploadMemuImg/bccb4fc0e4ac4579a05c2ba811f96ef2.jpg', '10');
INSERT INTO `memu` VALUES ('8e053f34b7d348768b6f82d807633ed6', '糯米包', '4', 'uploadMemuImg/041454e550da41bd9d02847ced0a7160.jpg', '8');
INSERT INTO `memu` VALUES ('8f703769965a417089192f5b5c26eaf2', '炒米粉', '6', 'uploadMemuImg/3bd0078802274d178acadc5583e570f1.jpg', '22');
INSERT INTO `memu` VALUES ('8fbf6b921b44499698ecf1662a2465c6', '蚵仔煎', '7', 'uploadMemuImg/0e15869c3f20413fa63e41c403cda047.jpg', '24');
INSERT INTO `memu` VALUES ('8fd274f082b343b49c11cd25848f7398', '鲜剁冬菇肉饼菜满足餐', '14', 'uploadMemuImg/57c14f6091b84849958c957af7d4b5dd.jpg', '16');
INSERT INTO `memu` VALUES ('921a7e6d3f574d60993805f98c0a8034', '枸杞雪梨银耳甜汤', '11', 'uploadMemuImg/04610e13a7c240b3b637be7d4e2c7b47.jpg', '23');
INSERT INTO `memu` VALUES ('989b218d02f74b0e9b6b685f996eb99e', '栗子焖土鸡饭', '12', 'uploadMemuImg/53f4c18536ae4c519f762acf1e5a80d5.png', '11');
INSERT INTO `memu` VALUES ('9944cc770dba4e16a3f9249397dec039', '榨菜牛肉饭', '10', 'uploadMemuImg/7951f6bf9b204629b0a8396190a1bb35.jpg', '20');
INSERT INTO `memu` VALUES ('9a899b36e800465c9294f44666d62284', '手撕包', '2', 'uploadMemuImg/a01a53977763451fbb3fc680f78ef9b6.jpg', '8');
INSERT INTO `memu` VALUES ('9c82faa937b04b049afc720e221f73ba', '咖喱粉丝虾', '8', 'uploadMemuImg/7996f352de3f44c6a9f89ca08667e433.jpg', '22');
INSERT INTO `memu` VALUES ('9eb124b4075449f6a2cc6e1b604e3cd2', '姜汁凉饮', '5', 'uploadMemuImg/f8d529d1975940cca89d904b936ab00e.jpg', '28');
INSERT INTO `memu` VALUES ('a19cb4bd2f6d45d8a90ab360f4d9b60f', '排骨拼鸡腿肉菜+饮料', '25', 'uploadMemuImg/b2e9b70ab5574e4a9949bfe88b04f9fa.jpg', '15');
INSERT INTO `memu` VALUES ('a52e9b563fd94ee8ad2e9a951a7d7e25', '双人套餐', '32', 'uploadMemuImg/854a63e7a0f6400aa61bd9964eb9b500.png', '1');
INSERT INTO `memu` VALUES ('a66ba226e2444cf199c2d8adede5915c', '鸡腿肉饭土鸡汤豪华餐', '21', 'uploadMemuImg/08383393b8da4e4ca6a9ef7d74f3c8b4.jpg', '17');
INSERT INTO `memu` VALUES ('a688aea79bd14320af83a98322b7a5c5', '鱼香茄子饭', '11', 'uploadMemuImg/c839fe9c26294119b97aeb6bd59a7964.jpg', '21');
INSERT INTO `memu` VALUES ('a7b8a7730a264416b0f6f353e7b1a4a1', '双粉美味活力套餐', '23', 'uploadMemuImg/4e817997d2ed4e7dac039945f81de1a3.png', '6');
INSERT INTO `memu` VALUES ('a90cb8fd8268464faa15ec942008c4bd', '香煎土豆饼', '5', 'uploadMemuImg/e354d9a7cab9468ba481bac28ce5dd09.jpg', '24');
INSERT INTO `memu` VALUES ('ac234a2b6b8e44728acf06e72265369e', '瘦肉粥', '5', 'uploadMemuImg/c2b162743b1548e9897b416dfdd09af6.jpg', '9');
INSERT INTO `memu` VALUES ('aed6f1dbc0e344049eacb865d1bd2ac8', '鸡蛋仔', '6', 'uploadMemuImg/d1b0b74d991c4087909a6768cf676cf4.jpg', '24');
INSERT INTO `memu` VALUES ('af13e070b2de4501b521109640ef2a21', '酸辣粉', '8', 'uploadMemuImg/c2b871bcd47840f0a6972aa988b999de.png', '7');
INSERT INTO `memu` VALUES ('b15ff7e96e56454093469b4c08d0c09e', '栗子鸡经典汤套+蒸蛋', '27', 'uploadMemuImg/fe62ca34c204434c939bdeb5884233ae.png', '4');
INSERT INTO `memu` VALUES ('b28cc46e59964c9896c26b2130e75aac', '鲜剁冬菇肉饼菜', '6', 'uploadMemuImg/4a4ddef99c2949f2a6b89170c2f1643c.jpg', '16');
INSERT INTO `memu` VALUES ('b33e035ef8fa44bc84b54ff4bec8070e', '鲜辣排骨菜', '8', 'uploadMemuImg/bf8aa99bc8e64d54b13767248408ae83.jpg', '19');
INSERT INTO `memu` VALUES ('b4283df6792b4da789789713226cda3f', '枸杞雪梨银耳甜汤', '11', 'uploadMemuImg/bd7e6db493b94946baaf00e637edaa73.jpg', '23');
INSERT INTO `memu` VALUES ('b58b33a069d448e792d568444d884264', '双拼饭土鸡汤豪华餐', '33', 'uploadMemuImg/71c85ad38e0e435083ad4c62e0af3e41.jpg', '15');
INSERT INTO `memu` VALUES ('b7bfb12db4c1454897aedd0b54a2e213', '鸡蛋仔', '6', 'uploadMemuImg/fc8ace3958b744f1a6668457744e56c3.jpg', '27');
INSERT INTO `memu` VALUES ('bb3cfaa628024d80afd42af495a6985e', '芬兰燕麦粥', '7', 'uploadMemuImg/cf7ca6a9cb574befbbc81afd9a5f9a4c.jpg', '9');
INSERT INTO `memu` VALUES ('c0a494663639412db902758d7d022c4d', '花生酥饼', '4', 'uploadMemuImg/8a1ad21203b64c11a8145933ac87464c.jpg', '27');
INSERT INTO `memu` VALUES ('c13b5be9ae8b4dedb60c71bcb4d8b43b', '辣骨饭土鸡汤豪华餐', '22', 'uploadMemuImg/02b3ba909c6b4c17845e79e7c4972bd7.jpg', '19');
INSERT INTO `memu` VALUES ('c247bc81d0724aafaa5668bc021b2290', '排骨拼鸡腿肉菜', '19', 'uploadMemuImg/445a7a56c8624c1587c16663f4f338da.jpg', '15');
INSERT INTO `memu` VALUES ('c2b5dba82c24405983eb735773869753', '双人套餐', '31', 'uploadMemuImg/1e00c27f339442908e5f6fced309751c.jpg', '13');
INSERT INTO `memu` VALUES ('c540f4a7dc8d4fd6b6580dfcfa19be46', '卤肉饭土鸡汤+饮料', '17', 'uploadMemuImg/8f684a3925854f7d858cc1de4d455274.jpg', '18');
INSERT INTO `memu` VALUES ('c60a429458364bb08372000deb3b189e', '花生酥饼', '4', 'uploadMemuImg/f19a0cbad73b4bfd9a61255bdf20fb89.jpg', '24');
INSERT INTO `memu` VALUES ('c68ae1775530473b80c02bf9025e9429', '虾粥', '8', 'uploadMemuImg/768b7b70cd154f91b1e180a8bfe26e6a.jpg', '9');
INSERT INTO `memu` VALUES ('c6a91c1dc9a24a0d8090f824e6280613', '云耳土鸡鸡腿双人套餐', '34', 'uploadMemuImg/08aaccae5c744e29908340ed7ccdf5e8.jpg', '13');
INSERT INTO `memu` VALUES ('c6ed3a1d62a34fb3abf22dd7aaa0aa47', '蒸饺+小豆浆', '8', 'uploadMemuImg/b98c107ee29348f488939045275790cb.png', '25');
INSERT INTO `memu` VALUES ('c8f02d68a1904c5fbacd662bc55709b2', '台式香肠汤面', '8', 'uploadMemuImg/2e40fe814f7940c2ab86d4d526f0c2d6.jpg', '7');
INSERT INTO `memu` VALUES ('ccae0f49e79a4c9d9ce10667dbff92c8', '栗子鸡常规汤套配脆笋', '28', 'uploadMemuImg/6bde60c82b57413fb682d9882914752e.png', '11');
INSERT INTO `memu` VALUES ('cf26475259524204812efa617262e694', '八宝粥', '8', 'uploadMemuImg/f8ca0efd0f904d22b80eaefb52306913.jpg', '9');
INSERT INTO `memu` VALUES ('d1357b3003004ba3ae73f48838d9fdcd', '藜麦小米粥', '8', 'uploadMemuImg/b15854fa3aa2400ba06414c0237c6efb.jpg', '2');
INSERT INTO `memu` VALUES ('d33a07dc06f44e9db7fe5b7eb3cbdabe', '牛腩粉', '7', 'uploadMemuImg/d4a8459771ea410baaf8660ca605490b.jpg', '5');
INSERT INTO `memu` VALUES ('d7ac318348b845a18e736e67d6dea3ff', '海鲜酸辣汤', '12', 'uploadMemuImg/0de64595c3cd4a0fabc33557c8509475.jpg', '23');
INSERT INTO `memu` VALUES ('d9f87ad5d3314703bc3d9c29ec6257d7', '凉拌粉丝', '6', 'uploadMemuImg/8f65e753b7764e2887f4655b8856f5b2.jpg', '26');
INSERT INTO `memu` VALUES ('da093f1091134e10b17eaf3ff8faa7a3', '云耳土鸡鸡腿双人套餐', '42', 'uploadMemuImg/0c11092a856242ebad874a970d8077a1.png', '1');
INSERT INTO `memu` VALUES ('dc8033b0fca54e938b4296220d2fb58e', '茴香大包', '4', 'uploadMemuImg/418b59faef5c490d8c5f94fea27bd6c3.jpg', '8');
INSERT INTO `memu` VALUES ('de52a0d5504f4b35bc2575d1f06f3db2', '陈皮饮', '8', 'uploadMemuImg/06968fbe797448b880f70f5b3b04b61a.jpg', '28');
INSERT INTO `memu` VALUES ('e1a2779095ca4a309425ee12c64fa4b1', '藜麦小米粥', '8', 'uploadMemuImg/6121db78f6974c83b3d0f0cfbdc36327.jpg', '9');
INSERT INTO `memu` VALUES ('e1a838304cc14a2ca0b6f7c6e768f03a', '鸡腿肉饭土鸡汤+饮料', '15', 'uploadMemuImg/a2fd4bf521cf404790cb42f6d1170c05.png', '17');
INSERT INTO `memu` VALUES ('e70c4ccd2c5d401e96aac5c1b9396c5d', '栗子焖土鸡饭', '23', 'uploadMemuImg/642782d01f534caba883973c2111b6a4.png', '4');
INSERT INTO `memu` VALUES ('eb5bc7d6d9cd4c498163d10191158b7a', '红豆燕麦汤', '9', 'uploadMemuImg/9ad826ad2ace49de86099782c8751525.jpg', '23');
INSERT INTO `memu` VALUES ('ecc66ed3edd44a0d9b4eb4726ff67c07', '酸辣粉', '8', 'uploadMemuImg/9918121bf6e147d9b93dbf6588186e17.png', '26');
INSERT INTO `memu` VALUES ('eccf7dec8cf84027be11f3d71db5edba', '田园时蔬粥', '7', 'uploadMemuImg/a217f53f88d24d3db7e36e7dfe808803.jpg', '9');
INSERT INTO `memu` VALUES ('ef08c00ea98d4fce9b28238d58f00c18', '双人套餐（华南）', '36', 'uploadMemuImg/0c89b69b3a914d12a14de3cbf926e0a1.jpg', '13');
INSERT INTO `memu` VALUES ('f2376c80bbd046dba343973172fdb0bd', '鲜香米粉猪骨汤', '11', 'uploadMemuImg/0762b366cfeb41369d2d2b10da13c6f2.png', '25');
INSERT INTO `memu` VALUES ('fa890a253b5544f981ae2239510f84f0', '蚵仔煎', '7', 'uploadMemuImg/d81caf6b3a2844e6b13e7e6ad4c239a3.jpg', '27');
INSERT INTO `memu` VALUES ('fb3b0cc02d194af986f3f32d6cc6168f', '鲜美蔬菜粥', '4', 'uploadMemuImg/cfa89385ab374e398c8fb6ce517ad5cb.jpg', '9');
INSERT INTO `memu` VALUES ('fc7391ee447d4dfb8f71986cbab0871b', '肉丸猪肝粥', '7', 'uploadMemuImg/39cc4cc6c2fe4652b46726d11b5a48fb.jpg', '9');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `order_id` varchar(50) default NULL,
  `memu_id` varchar(50) default NULL,
  `buynum` int(11) default NULL,
  KEY `order_id` (`order_id`),
  KEY `memu_id` (`memu_id`),
  CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`memu_id`) REFERENCES `memu` (`memuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('ffcecf028996475ab4594b705cbbbe2a', '0f7c02aef3ef4926a105b813b0442c5f', '1');
INSERT INTO `orderitem` VALUES ('ad7917234466497b89c09e551bf5864d', '8e053f34b7d348768b6f82d807633ed6', '7');
INSERT INTO `orderitem` VALUES ('951667ec5b7242da998ff1004c972c70', '3d3dda2b59d94fb39fbea64b7c5324df', '1');
INSERT INTO `orderitem` VALUES ('951667ec5b7242da998ff1004c972c70', 'b58b33a069d448e792d568444d884264', '1');
INSERT INTO `orderitem` VALUES ('951667ec5b7242da998ff1004c972c70', 'a19cb4bd2f6d45d8a90ab360f4d9b60f', '1');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(50) NOT NULL,
  `money` double default NULL,
  `ordertime` datetime default NULL,
  `receiverinfo` varchar(255) default NULL,
  `paystatus` int(11) default NULL,
  `linkman` varchar(50) default NULL,
  `phone` varchar(20) default NULL,
  `user_id` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('951667ec5b7242da998ff1004c972c70', '69', '2017-12-17 08:37:48', '江门市蓬江区江门职业技术学院1栋705室', '0', '郑文荣', '15018159367', 'd90acab781024078b96e2e06e7cbfa22');
INSERT INTO `orders` VALUES ('ad7917234466497b89c09e551bf5864d', '28', '2017-12-17 08:29:57', '江门市江门职业技术学院1栋705', '0', '郑文荣', '15018159367', 'a93c59ab1ab34a40a1e543b6163e3016');
INSERT INTO `orders` VALUES ('ffcecf028996475ab4594b705cbbbe2a', '18', '2017-12-16 22:56:50', '江门市蓬江区江门职业技术学院1栋705室', '0', '郑文荣', '15018159367', 'd90acab781024078b96e2e06e7cbfa22');

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
INSERT INTO `user` VALUES ('a93c59ab1ab34a40a1e543b6163e3016', '15018159366', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('d90acab781024078b96e2e06e7cbfa22', '17727044202', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, null);

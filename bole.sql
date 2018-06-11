/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : bole

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2018-06-11 17:38:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `shortName` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tempt` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `shotIntroduce` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `founder` varchar(255) DEFAULT NULL,
  `stage` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `invest_name` varchar(255) DEFAULT NULL,
  `invest_stage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------

-- ----------------------------
-- Table structure for founder
-- ----------------------------
DROP TABLE IF EXISTS `founder`;
CREATE TABLE `founder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `sina` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `com_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of founder
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `class2_id` int(11) NOT NULL,
  `hot_num` int(10) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'Java', '1', '0000000500');
INSERT INTO `product` VALUES ('2', 'C++', '1', '0000000250');
INSERT INTO `product` VALUES ('3', 'PHP', '1', '0000000400');
INSERT INTO `product` VALUES ('4', '数据挖掘', '1', '0000000000');
INSERT INTO `product` VALUES ('5', 'C', '1', '0000000300');
INSERT INTO `product` VALUES ('6', 'C#', '1', '0000000000');
INSERT INTO `product` VALUES ('7', '.NET', '1', '0000000000');
INSERT INTO `product` VALUES ('8', 'Hadoop', '1', '0000000000');
INSERT INTO `product` VALUES ('9', 'Python', '1', '0000000000');
INSERT INTO `product` VALUES ('10', 'Delphi', '1', '0000000000');
INSERT INTO `product` VALUES ('11', 'VB', '1', '0000000000');
INSERT INTO `product` VALUES ('12', 'Perl', '1', '0000000000');
INSERT INTO `product` VALUES ('13', 'Ruby', '1', '0000000000');
INSERT INTO `product` VALUES ('14', 'Node.js', '1', '0000000000');
INSERT INTO `product` VALUES ('15', 'HTML5', '2', '0000000000');
INSERT INTO `product` VALUES ('16', 'Android', '2', '0000000175');
INSERT INTO `product` VALUES ('17', 'iOS', '2', '0000000170');
INSERT INTO `product` VALUES ('18', 'WP', '2', '0000000000');
INSERT INTO `product` VALUES ('19', 'web前端', '3', '0000000150');
INSERT INTO `product` VALUES ('20', 'Flash', '3', '0000000000');
INSERT INTO `product` VALUES ('21', 'html5', '3', '0000000000');
INSERT INTO `product` VALUES ('22', 'JavaScript', '3', '0000000000');
INSERT INTO `product` VALUES ('23', 'U3D', '3', '0000000000');
INSERT INTO `product` VALUES ('24', 'COCOS2D-X', '3', '0000000000');
INSERT INTO `product` VALUES ('25', '测试工程师', '4', '0000000140');
INSERT INTO `product` VALUES ('26', '自动化测试', '4', '0000000000');
INSERT INTO `product` VALUES ('27', '功能测试', '4', '0000000000');
INSERT INTO `product` VALUES ('28', '性能测试', '4', '0000000000');
INSERT INTO `product` VALUES ('29', '测试开发', '4', '0000000000');
INSERT INTO `product` VALUES ('30', '运维工程师', '5', '0000000000');
INSERT INTO `product` VALUES ('31', '运维开发工程师', '5', '0000000000');
INSERT INTO `product` VALUES ('32', '网络工程师', '5', '0000000000');
INSERT INTO `product` VALUES ('33', '系统工程师', '5', '0000000000');
INSERT INTO `product` VALUES ('34', 'IT支持', '5', '0000000000');
INSERT INTO `product` VALUES ('35', 'MySQL', '6', '0000000000');
INSERT INTO `product` VALUES ('36', 'SQLServer', '6', '0000000000');
INSERT INTO `product` VALUES ('37', 'Oracle', '6', '0000000000');
INSERT INTO `product` VALUES ('38', 'DB2', '6', '0000000000');
INSERT INTO `product` VALUES ('39', 'MongoDB', '6', '0000000000');
INSERT INTO `product` VALUES ('40', '项目经理', '7', '0000000125');
INSERT INTO `product` VALUES ('41', '技术经理', '8', '0000000130');
INSERT INTO `product` VALUES ('42', '技术总监', '8', '0000000000');
INSERT INTO `product` VALUES ('43', '测试经理', '8', '0000000000');
INSERT INTO `product` VALUES ('44', '架构师', '8', '0000000110');
INSERT INTO `product` VALUES ('45', 'CTO', '8', '0000000000');
INSERT INTO `product` VALUES ('46', '运维总监', '8', '0000000000');
INSERT INTO `product` VALUES ('47', '产品经理', '9', '0000000200');
INSERT INTO `product` VALUES ('48', '网页产品经理', '9', '0000000000');
INSERT INTO `product` VALUES ('49', '移动产品经理', '9', '0000000000');
INSERT INTO `product` VALUES ('50', '产品助理', '9', '0000000190');
INSERT INTO `product` VALUES ('51', '数据产品经理', '9', '0000000000');
INSERT INTO `product` VALUES ('52', '电商产品经理', '9', '0000000000');
INSERT INTO `product` VALUES ('53', '游戏策划', '9', '0000000000');
INSERT INTO `product` VALUES ('54', '网页产品设计师', '10', '0000000000');
INSERT INTO `product` VALUES ('55', '无线产品设计师', '10', '0000000180');
INSERT INTO `product` VALUES ('56', '产品部经理', '11', '0000000000');
INSERT INTO `product` VALUES ('57', '产品总监', '11', '0000000170');
INSERT INTO `product` VALUES ('58', '视觉设计师', '12', '0000000000');
INSERT INTO `product` VALUES ('59', '网页设计师', '12', '0000000000');
INSERT INTO `product` VALUES ('60', 'Flash设计师', '12', '0000000000');
INSERT INTO `product` VALUES ('61', 'APP设计师', '12', '0000000000');
INSERT INTO `product` VALUES ('62', 'UI设计师', '12', '0000000200');
INSERT INTO `product` VALUES ('63', '平面设计师', '12', '0000000000');
INSERT INTO `product` VALUES ('64', '美术设计师(2D/3D)', '12', '0000000190');
INSERT INTO `product` VALUES ('65', '广告设计师', '12', '0000000000');
INSERT INTO `product` VALUES ('66', '多媒体设计师', '12', '0000000000');
INSERT INTO `product` VALUES ('67', '原画师', '12', '0000000000');
INSERT INTO `product` VALUES ('68', '游戏特效', '12', '0000000000');
INSERT INTO `product` VALUES ('69', '游戏界面设计师', '12', '0000000170');
INSERT INTO `product` VALUES ('70', '游戏场景', '12', '0000000000');
INSERT INTO `product` VALUES ('71', '游戏角色', '12', '0000000000');
INSERT INTO `product` VALUES ('72', '游戏动作', '12', '0000000000');
INSERT INTO `product` VALUES ('73', '交互设计师', '13', '0000000000');
INSERT INTO `product` VALUES ('74', '无线交互设计师', '13', '0000000180');
INSERT INTO `product` VALUES ('75', '网页交互设计师', '13', '0000000000');
INSERT INTO `product` VALUES ('76', '硬件交互设计师', '13', '0000000000');
INSERT INTO `product` VALUES ('77', '数据分析师', '14', '0000000000');
INSERT INTO `product` VALUES ('78', '用户研究员', '14', '0000000000');
INSERT INTO `product` VALUES ('79', '游戏数值策划', '14', '0000000000');
INSERT INTO `product` VALUES ('80', '设计经理/主管', '15', '0000000160');
INSERT INTO `product` VALUES ('81', '设计总监', '15', '0000000000');
INSERT INTO `product` VALUES ('82', '视觉设计经理/主管', '15', '0000000000');
INSERT INTO `product` VALUES ('83', '视觉设计总监', '15', '0000000000');
INSERT INTO `product` VALUES ('84', '交互设计经理/主管', '15', '0000000000');
INSERT INTO `product` VALUES ('85', '交互设计总监', '15', '0000000000');
INSERT INTO `product` VALUES ('86', '用户研究经理/主管', '15', '0000000000');
INSERT INTO `product` VALUES ('87', '用户运营', '16', '0000000200');
INSERT INTO `product` VALUES ('88', '产品运营', '16', '0000000000');
INSERT INTO `product` VALUES ('89', '数据运营', '16', '0000000000');
INSERT INTO `product` VALUES ('90', '内容运营', '16', '0000000190');
INSERT INTO `product` VALUES ('91', '活动运营', '16', '0000000000');
INSERT INTO `product` VALUES ('92', '商家运营', '16', '0000000000');
INSERT INTO `product` VALUES ('93', '品类运营', '16', '0000000180');
INSERT INTO `product` VALUES ('94', '游戏运营', '16', '0000000000');
INSERT INTO `product` VALUES ('95', '网络推广', '16', '0000000000');
INSERT INTO `product` VALUES ('96', '副主编', '17', '0000000000');
INSERT INTO `product` VALUES ('97', '内容编辑', '17', '0000000000');
INSERT INTO `product` VALUES ('98', '售前咨询', '18', '0000000000');
INSERT INTO `product` VALUES ('99', '售后客服', '18', '0000000000');
INSERT INTO `product` VALUES ('100', '主编', '19', '0000000000');
INSERT INTO `product` VALUES ('101', '运营总监', '19', '0000000000');
INSERT INTO `product` VALUES ('102', 'COO', '19', '0000000000');
INSERT INTO `product` VALUES ('103', '市场营销', '20', '0000000200');
INSERT INTO `product` VALUES ('104', '市场策划', '20', '0000000000');
INSERT INTO `product` VALUES ('105', '市场顾问', '20', '0000000000');
INSERT INTO `product` VALUES ('106', '市场推广', '20', '0000000190');
INSERT INTO `product` VALUES ('107', 'SEO', '20', '0000000000');
INSERT INTO `product` VALUES ('108', 'SEM', '20', '0000000180');
INSERT INTO `product` VALUES ('109', '商务渠道', '20', '0000000000');
INSERT INTO `product` VALUES ('110', '商业数据分析', '20', '0000000000');
INSERT INTO `product` VALUES ('111', '活动策划', '20', '0000000170');
INSERT INTO `product` VALUES ('112', '媒介经理', '21', '0000000000');
INSERT INTO `product` VALUES ('113', '广告协调', '21', '0000000000');
INSERT INTO `product` VALUES ('114', '品牌公关', '21', '0000000000');
INSERT INTO `product` VALUES ('115', '销售专员', '22', '0000000160');
INSERT INTO `product` VALUES ('116', '销售经理', '22', '0000000000');
INSERT INTO `product` VALUES ('117', '客户代表', '22', '0000000000');
INSERT INTO `product` VALUES ('118', '大客户代表', '22', '0000000000');
INSERT INTO `product` VALUES ('119', 'BD经理', '22', '0000000000');
INSERT INTO `product` VALUES ('120', '商务渠道', '22', '0000000000');
INSERT INTO `product` VALUES ('121', '渠道销售', '22', '0000000000');
INSERT INTO `product` VALUES ('122', '代理商销售', '22', '0000000000');
INSERT INTO `product` VALUES ('123', '市场总监', '23', '0000000000');
INSERT INTO `product` VALUES ('124', '销售总监', '23', '0000000000');
INSERT INTO `product` VALUES ('125', '商务总监', '23', '0000000000');
INSERT INTO `product` VALUES ('126', 'CMO', '23', '0000000000');
INSERT INTO `product` VALUES ('127', '公关总监', '23', '0000000000');
INSERT INTO `product` VALUES ('128', '人力资源', '24', '0000000000');
INSERT INTO `product` VALUES ('129', '招聘', '24', '0000000000');
INSERT INTO `product` VALUES ('130', 'HRBP', '24', '0000000200');
INSERT INTO `product` VALUES ('131', '人事/HR', '24', '0000000000');
INSERT INTO `product` VALUES ('132', '培训经理', '24', '0000000190');
INSERT INTO `product` VALUES ('133', '薪资福利经理', '24', '0000000000');
INSERT INTO `product` VALUES ('134', '绩效考核经理', '24', '0000000180');
INSERT INTO `product` VALUES ('135', '助理', '25', '0000000000');
INSERT INTO `product` VALUES ('136', '前台', '25', '0000000000');
INSERT INTO `product` VALUES ('137', '法务', '25', '0000000170');
INSERT INTO `product` VALUES ('138', '行政', '25', '0000000000');
INSERT INTO `product` VALUES ('139', '会计', '26', '0000000000');
INSERT INTO `product` VALUES ('140', '出纳', '26', '0000000000');
INSERT INTO `product` VALUES ('141', '财务', '26', '0000000000');
INSERT INTO `product` VALUES ('142', '行政总监/经理', '27', '0000000000');
INSERT INTO `product` VALUES ('143', '财务总监/经理', '27', '0000000000');
INSERT INTO `product` VALUES ('144', 'HRD/HRM', '27', '0000000000');
INSERT INTO `product` VALUES ('145', 'CFO', '27', '0000000000');

-- ----------------------------
-- Table structure for product_class
-- ----------------------------
DROP TABLE IF EXISTS `product_class`;
CREATE TABLE `product_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_class
-- ----------------------------
INSERT INTO `product_class` VALUES ('1', '技术');
INSERT INTO `product_class` VALUES ('2', '产品');
INSERT INTO `product_class` VALUES ('3', '设计');
INSERT INTO `product_class` VALUES ('4', '运营');
INSERT INTO `product_class` VALUES ('5', '市场与销售');
INSERT INTO `product_class` VALUES ('6', '智能');

-- ----------------------------
-- Table structure for product_class2
-- ----------------------------
DROP TABLE IF EXISTS `product_class2`;
CREATE TABLE `product_class2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `class1_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_class2
-- ----------------------------
INSERT INTO `product_class2` VALUES ('1', '后端开发', '1');
INSERT INTO `product_class2` VALUES ('2', '移动开发', '1');
INSERT INTO `product_class2` VALUES ('3', '前端开发', '1');
INSERT INTO `product_class2` VALUES ('4', '测试', '1');
INSERT INTO `product_class2` VALUES ('5', '运维', '1');
INSERT INTO `product_class2` VALUES ('6', 'DBA', '1');
INSERT INTO `product_class2` VALUES ('7', '项目管理', '1');
INSERT INTO `product_class2` VALUES ('8', '高端职位', '1');
INSERT INTO `product_class2` VALUES ('9', '产品经理', '2');
INSERT INTO `product_class2` VALUES ('10', '产品设计师', '2');
INSERT INTO `product_class2` VALUES ('11', '高端职位', '2');
INSERT INTO `product_class2` VALUES ('12', '视觉设计', '3');
INSERT INTO `product_class2` VALUES ('13', '交互设计', '3');
INSERT INTO `product_class2` VALUES ('14', '用户研究', '3');
INSERT INTO `product_class2` VALUES ('15', '高端职位', '3');
INSERT INTO `product_class2` VALUES ('16', '运营', '4');
INSERT INTO `product_class2` VALUES ('17', '编辑', '4');
INSERT INTO `product_class2` VALUES ('18', '客服', '4');
INSERT INTO `product_class2` VALUES ('19', '高端职位', '4');
INSERT INTO `product_class2` VALUES ('20', '市场/营销', '5');
INSERT INTO `product_class2` VALUES ('21', '公关', '5');
INSERT INTO `product_class2` VALUES ('22', '销售', '5');
INSERT INTO `product_class2` VALUES ('23', '高端职位', '5');
INSERT INTO `product_class2` VALUES ('24', '人力资源', '6');
INSERT INTO `product_class2` VALUES ('25', '行政', '6');
INSERT INTO `product_class2` VALUES ('26', '财务', '6');
INSERT INTO `product_class2` VALUES ('27', '高端职位', '6');

-- ----------------------------
-- Table structure for pro_com
-- ----------------------------
DROP TABLE IF EXISTS `pro_com`;
CREATE TABLE `pro_com` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `com_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pro_com
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', '123', '123', '0');
INSERT INTO `user` VALUES ('2', '456', '456', '456', '1');
INSERT INTO `user` VALUES ('3', '789', '789', '789', '0');

-- ----------------------------
-- Table structure for weal
-- ----------------------------
DROP TABLE IF EXISTS `weal`;
CREATE TABLE `weal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weal_name` varchar(255) DEFAULT NULL,
  `com_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weal
-- ----------------------------

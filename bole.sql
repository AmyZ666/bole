/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : bole

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2018-06-27 21:52:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `short_introduce` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `stage` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `invest_name` varchar(255) DEFAULT NULL,
  `invest_stage` varchar(255) DEFAULT NULL,
  `status` int(10) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '烟台富土康有限公司', '富土康', 'futu.png', 'www.fushikang.com', '烟台市莱山县中山大街', '2018-06-11 21:02:06', '我们的公司待遇很好', '快乐圣诞节的疯狂了坚实的开了房间卡拉斯加对方快乐圣诞节快乐放假快乐撒书法家卡拉是假的', '移动互联网', '初创型（天使轮）', '15-50人', '腾讯', 'A轮融资', '0000000001');
INSERT INTO `company` VALUES ('2', 'MOMO', 'MOMO', 'momo.png', 'www.momo.com', '西安', '2018-06-18 10:49:56', null, 'sfsafsasfsafsdf', '运营', 'C轮', '20-30', '腾讯', null, '0000000002');
INSERT INTO `company` VALUES ('3', '博雅', 'boya', 'boya.jpg', 'www.boya.com', '北京', '2017-09-12 10:52:46', null, '快乐圣诞节的疯狂了坚实的开了房间卡拉斯加对方快乐圣诞节快乐放假快乐撒书法家卡拉是假的', '后端开发', 'B轮', '50-100', '网易', null, '0000000001');
INSERT INTO `company` VALUES ('4', '飞道科技', 'feidao', 'feidao.png', 'www.feidao.com', '郑州', '2016-07-12 10:54:37', null, '快乐圣诞节的疯狂了坚实的开了房间卡拉斯加对方快乐圣诞节快乐放假快乐撒书法家卡拉是假的', '前端开发', 'D轮及以上', '50-100', '阿里巴巴', null, '0000000002');
INSERT INTO `company` VALUES ('5', '携程', 'xc', 'xc.png', 'www.xiecheng.com', '上海', '2015-05-12 10:56:28', null, '快乐圣诞节的疯狂了坚实的开了房间卡拉斯加对方快乐圣诞节快乐放假快乐撒书法家卡拉是假的', '移动开发', 'D轮及以上', '12-30', '百度', null, '0000000000');
INSERT INTO `company` VALUES ('6', '谷歌', 'google', 'google.png', 'www.google.com', '上海', '2017-05-12 10:57:55', null, '快乐圣诞节的疯狂了坚实的开了房间卡拉斯加对方快乐圣诞节快乐放假快乐撒书法家卡拉是假的', '行政', 'D轮及以上', '40-50', '滴滴', null, '0000000000');
INSERT INTO `company` VALUES ('7', '蘑菇街', 'mgj', 'mgj.png', 'www.mgj.com', '成都', '2018-06-12 10:59:49', null, '快乐圣诞节的疯狂了坚实的开了房间卡拉斯加对方快乐圣诞节快乐放假快乐撒书法家卡拉是假的', '会计', 'D轮及以上', '13-40', '百度', null, '0000000000');
INSERT INTO `company` VALUES ('8', '金棕榈', 'jzl', 'jzl.png', 'www.jzl.com', '上海', '2018-04-12 11:07:35', null, '快乐圣诞节的疯狂了坚实的开了房间卡拉斯加对方快乐圣诞节快乐放假快乐撒书法家卡拉是假的', '移动开发', 'B轮', '40-130', '百度', null, '0000000000');
INSERT INTO `company` VALUES ('9', '永航科技', 'yh', 'yh.png', 'www.yh.com', '北京', '2017-11-12 11:10:20', null, '快乐圣诞节的疯狂了坚实的开了房间卡拉斯加对方快乐圣诞节快乐放假快乐撒书法家卡拉是假的', '后端开发', 'D轮及以上', '30-50', '阿里巴巴', null, '0000000000');
INSERT INTO `company` VALUES ('10', '北京思特奇', 'stq', 'stq.png', 'www.stq.com', '南昌', '2018-04-02 11:13:34', null, '快乐圣诞节的疯狂了坚实的开了房间卡拉斯加对方快乐圣诞节快乐放假快乐撒书法家卡拉是假的', '移动开发', 'D轮及以上', '20-30', '腾讯', null, '0000000000');
INSERT INTO `company` VALUES ('11', '搜狗', '搜狗', 'sg.png', 'www.sougou.com', '北京', '2018-04-01 11:14:58', null, '快乐圣诞节的疯狂了坚实的开了房间卡拉斯加对方快乐圣诞节快乐放假快乐撒书法家卡拉是假的', '市场营销', 'C轮', '20-59', '美团', null, '0000000000');
INSERT INTO `company` VALUES ('12', '乐影网', 'ly', 'ly.png', 'www.ly.png', '北京', '2018-04-15 11:16:34', null, '快乐圣诞节的疯狂了坚实的开了房间卡拉斯加对方快乐圣诞节快乐放假快乐撒书法家卡拉是假的', '后端开发', 'B轮', '30-60', '阿里巴巴', null, '0000000000');
INSERT INTO `company` VALUES ('13', '阿里巴巴', 'albb', 'albb.png', 'www.Alibaba.com', '杭州', '2018-01-25 11:17:47', null, '快乐圣诞节的疯狂了坚实的开了房间卡拉斯加对方快乐圣诞节快乐放假快乐撒书法家卡拉是假的', '移动开发', '已上市', '2w+', '软银', null, '0000000000');
INSERT INTO `company` VALUES ('14', '中科蓝鲸', 'zklj', 'zklj.png', 'www.zklj.com', '北京', '2017-11-19 11:19:05', null, '快乐圣诞节的疯狂了坚实的开了房间卡拉斯加对方快乐圣诞节快乐放假快乐撒书法家卡拉是假的', '设计', 'D轮及以上', '50-100', '百度', null, '0000000000');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of founder
-- ----------------------------
INSERT INTO `founder` VALUES ('1', '张曦', 'CEO', '啦啦的歌', '基本介绍基本介绍', '1');
INSERT INTO `founder` VALUES ('2', '李曦', 'CEO', '啦啦的歌', '基本介绍基本介绍', '2');
INSERT INTO `founder` VALUES ('3', '钱曦', 'CEO', '啦啦的歌', '基本介绍基本介绍', '3');
INSERT INTO `founder` VALUES ('4', '赵曦', 'CEO', '啦啦的歌', '基本介绍基本介绍', '4');
INSERT INTO `founder` VALUES ('5', '孙曦', 'CEO', '啦啦的歌', '基本介绍基本介绍', '5');
INSERT INTO `founder` VALUES ('6', '周曦', 'CEO', '啦啦的歌', '基本介绍基本介绍', '6');
INSERT INTO `founder` VALUES ('7', '吴曦', 'CEO', '啦啦的歌', '基本介绍基本介绍', '7');
INSERT INTO `founder` VALUES ('8', '郑曦', 'CEO', '啦啦的歌', '基本介绍基本介绍', '8');
INSERT INTO `founder` VALUES ('9', '王曦', 'CEO', '啦啦的歌', '基本介绍基本介绍', '9');
INSERT INTO `founder` VALUES ('10', '乔曦', 'CEO', '啦啦的歌', '基本介绍基本介绍', '10');
INSERT INTO `founder` VALUES ('11', '徐曦', 'CEO', '啦啦的歌', '基本介绍基本介绍', '11');
INSERT INTO `founder` VALUES ('12', '胡曦', 'CEO', '啦啦的歌', '基本介绍基本介绍', '12');
INSERT INTO `founder` VALUES ('13', '于曦', 'CEO', '啦啦的歌', '基本介绍基本介绍', '13');
INSERT INTO `founder` VALUES ('14', '高曦', 'CEO', '啦啦的歌', '基本介绍基本介绍', '14');

-- ----------------------------
-- Table structure for jianli
-- ----------------------------
DROP TABLE IF EXISTS `jianli`;
CREATE TABLE `jianli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `exp` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `hope_city` varchar(255) DEFAULT NULL,
  `hope_position` varchar(255) DEFAULT NULL,
  `hope_salary` varchar(255) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `school_education` varchar(255) DEFAULT NULL,
  `school_major` varchar(255) DEFAULT NULL,
  `start_school` datetime DEFAULT NULL,
  `end_school` datetime DEFAULT NULL,
  `self_introduction` text,
  `img` varchar(255) DEFAULT NULL,
  `pro_introduction` varchar(255) DEFAULT NULL,
  `produce` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jianli
-- ----------------------------
INSERT INTO `jianli` VALUES ('1', '张三', '1', '2018-06-05 08:41:25', '男', '大专', '3年', '1864444444', 'jason@qq.com', '杭州', '产品经理', '10k-12k', '鲁东大学', '大专', '生物', '2016-05-18 08:53:23', '2018-06-19 08:53:55', '本人性格开朗，稳重，有活力，待人热情，真诚。工作负责，积极主动，能吃苦耐劳；喜欢思考，虚心与人交流，以取长补短。有较强的组织能力、实际动手能力和团体协作精神，能迅速适应各种环境，并融合其中。在工作期间分析工作要领，社会责任感强，踏实肯干，主动争取锻炼机会。', null, null, null);
INSERT INTO `jianli` VALUES ('2', '李四', '2', '2018-01-10 08:44:39', '女', '本科', '3年', '1234524367', '1234@qq.com', '广州', '项目总监', '8k-10k', '烟台大学', '本科', '软件工程', '2013-06-11 08:56:00', '2018-06-07 08:55:56', '我有过这个专业的工作经历，勤奋刻骨，比较擅长与人的沟通，相信能胜任这个职位。', null, null, null);
INSERT INTO `jianli` VALUES ('3', '王五', '3', '2018-05-16 08:58:40', '男', '本科', '2年', '14567853245', '2345@qq.com', '烟台', '技术总监', '13k-14k', '鲁东大学', '本科', '土木工程', '2012-10-01 08:56:44', '2018-06-19 08:56:39', '我有过这个专业的工作经历，勤奋刻骨，比较擅长与人的沟通，相信能胜任这个职位。', null, null, null);
INSERT INTO `jianli` VALUES ('4', '老刘', '4', '2018-06-07 08:59:46', '女', '本科', '1年', '15678987340', '4567@qq.com', '广西', '总经理秘书', '6k-10k', '西安电子', '本科', '教育心理学', '2013-02-19 09:01:33', '2018-06-28 09:01:48', '我有过这个专业的工作经历，勤奋刻骨，比较擅长与人的沟通，相信能胜任这个职位。', null, null, null);
INSERT INTO `jianli` VALUES ('5', '徐景浩', '5', '2018-06-05 09:05:09', '男', '研究生', '2年', '12345678909', '3457@qq.com', '深圳', '律师', '13k-17k', '青岛科技', '研究生', '法学', '2000-06-19 09:02:05', '2018-06-08 09:02:03', '我有过这个专业的工作经历，勤奋刻骨，比较擅长与人的沟通，相信能胜任这个职位。', null, null, null);
INSERT INTO `jianli` VALUES ('6', '于雷', '6', '2018-06-12 09:05:39', '女', '本科', '3年', '13456327895', '3789@qq.com', '青岛', '前端工程师', '13k-15k', '上海交大', '本科', '软件工程', '2004-06-19 09:10:46', '2018-06-06 09:10:59', '我有过这个专业的工作经历，勤奋刻骨，比较擅长与人的沟通，相信能胜任这个职位。', null, null, null);
INSERT INTO `jianli` VALUES ('7', '胡天海', '7', '2018-06-13 09:16:20', '男', '研究生', '1年', '13568909876', '1578@qq.com', '烟台', '律师', '10k-15k', '烟台大学', '研究生', '法学', '2015-02-19 09:12:14', '2018-06-12 09:12:00', '我有过这个专业的工作经历，勤奋刻骨，比较擅长与人的沟通，相信能胜任这个职位。', null, null, null);
INSERT INTO `jianli` VALUES ('8', '张家旺', '8', '2018-06-23 09:16:24', '女', '本科', '2年', '12435789076', '190@qq.com', '威海', '后端工程师', '8k-10k', '鲁东大学', '本科', '计算机', '2015-06-19 09:12:20', '2018-06-27 09:12:05', '我有过这个专业的工作经历，勤奋刻骨，比较擅长与人的沟通，相信能胜任这个职位。', null, null, null);
INSERT INTO `jianli` VALUES ('9', '杨国玉', '9', '2018-06-19 09:16:28', '男', '大专', '3年', '12345765432', '1250@qq.com', '潍坊', '会计', '6k-8k', '工商学院', '大专', '会计', '2015-01-01 09:12:26', '2018-06-20 09:12:10', '我有过这个专业的工作经历，勤奋刻骨，比较擅长与人的沟通，相信能胜任这个职位。', null, null, null);
INSERT INTO `jianli` VALUES ('10', '孙凯旋', '10', '2018-06-19 09:16:55', '男', '本科', '2年', '18796545678', '12345@qq.com', '浙江', 'Java工程师', '10k-15k', '浙江大学', '本科', '计算机', '2010-06-19 09:22:02', '2014-06-19 09:22:10', '我有过这个专业的工作经历，勤奋刻骨，比较擅长与人的沟通，相信能胜任这个职位。', null, null, null);
INSERT INTO `jianli` VALUES ('11', '啦啦啦', '11', '2018-06-13 09:16:59', '女', '本科', '5年', '10986543213', '1qwe@qq.com', '江苏', '调酒师', '5k-8k', '南通大学', '本科', '葡萄酒', '2016-06-19 09:22:32', '2018-06-19 09:22:29', '我有过这个专业的工作经历，勤奋刻骨，比较擅长与人的沟通，相信能胜任这个职位。', null, null, null);
INSERT INTO `jianli` VALUES ('12', '呜呜呜', '12', '2018-06-15 09:17:03', '男', '大专', '1年', '10987654345', 'qwer@qq.com', '南京', '会计', '8k-10k', '华北理工', '大专', '会计', '1990-06-19 09:22:38', '2018-06-13 09:22:46', '我有过这个专业的工作经历，勤奋刻骨，比较擅长与人的沟通，相信能胜任这个职位。', null, null, null);
INSERT INTO `jianli` VALUES ('13', '嘻嘻嘻', '13', '2018-06-20 09:17:06', '女', '大专', '2年', '17892761726', 'qwerf@qq.com', '厦门', '数学教师', '6k-8k', '厦门大学', '大专', '教育学', '2006-06-19 09:22:50', '2018-06-19 09:22:59', '我有过这个专业的工作经历，勤奋刻骨，比较擅长与人的沟通，相信能胜任这个职位。', null, null, null);

-- ----------------------------
-- Table structure for jiantocom
-- ----------------------------
DROP TABLE IF EXISTS `jiantocom`;
CREATE TABLE `jiantocom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `pos_id` int(11) DEFAULT NULL,
  `com_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `yesorno` int(11) DEFAULT NULL,
  `commit_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiantocom
-- ----------------------------
INSERT INTO `jiantocom` VALUES ('1', '1', '1', '1', '1', '1', '2018-06-27 18:23:58');
INSERT INTO `jiantocom` VALUES ('2', '2', '1', '1', '1', '0', '2018-06-13 18:24:01');
INSERT INTO `jiantocom` VALUES ('3', '3', '1', '1', '2', '0', '2018-05-09 18:24:04');
INSERT INTO `jiantocom` VALUES ('4', '4', '1', '1', '0', '0', '2018-06-02 22:24:08');
INSERT INTO `jiantocom` VALUES ('5', '5', '1', '1', '1', '0', '2018-06-08 16:24:14');
INSERT INTO `jiantocom` VALUES ('6', '6', '1', '1', '2', '0', '2018-06-10 19:24:19');
INSERT INTO `jiantocom` VALUES ('7', '7', '1', '1', '0', '0', '2018-06-30 18:24:23');
INSERT INTO `jiantocom` VALUES ('8', '8', '1', '1', '1', '0', '2018-06-08 16:24:27');
INSERT INTO `jiantocom` VALUES ('9', '9', '1', '1', '2', '0', '2018-06-09 18:24:33');
INSERT INTO `jiantocom` VALUES ('10', '1', '2', '1', '4', '0', '2018-06-06 23:17:46');
INSERT INTO `jiantocom` VALUES ('11', '1', '3', '1', '1', '0', '2018-06-25 16:17:54');
INSERT INTO `jiantocom` VALUES ('12', '1', '4', '1', '1', '0', '2018-06-10 23:18:02');
INSERT INTO `jiantocom` VALUES ('13', '1', '5', '1', '0', '0', '2018-05-08 00:18:12');
INSERT INTO `jiantocom` VALUES ('14', '1', '6', '1', '0', '0', '2018-06-06 01:18:19');
INSERT INTO `jiantocom` VALUES ('15', '1', '7', '1', '2', '0', '2018-06-05 20:18:37');
INSERT INTO `jiantocom` VALUES ('16', '1', '8', '1', '2', '0', '2018-05-16 22:18:43');

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `exp` varchar(255) DEFAULT NULL,
  `educution` varchar(255) DEFAULT NULL,
  `tempt` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `com_id` int(11) unsigned zerofill DEFAULT NULL,
  `hot_num` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `detail_address` varchar(255) DEFAULT NULL,
  `status` int(10) unsigned zerofill DEFAULT '0000000000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('1', '运营总监', '北京', '15k-20k', '3-5年', '本科', '发展前景', '2018-06-13 08:34:32', '00000000001', '1000', null, null, '0000000000');
INSERT INTO `position` VALUES ('2', '售前工程师（运维经验优先）', '北京', '6k-12k', '3-5年', '大专', '五险一金+商业保险+带薪年假+奖金等', '2018-05-01 08:44:15', '00000000001', '999', null, null, '0000000000');
INSERT INTO `position` VALUES ('3', '手机游戏运营', '南京', '4k-8k', '1-3年', '本科', '工作氛围和谐,正面激励成长，福利好', '2017-09-26 08:47:25', '00000000003', '998', null, null, '0000000002');
INSERT INTO `position` VALUES ('4', '葡萄酒内容运营专员', '广州', '5k-8k', '1-3年', '本科', '喝着世界美酒快乐的工作！', '2018-03-01 08:50:44', '00000000004', '997', null, null, '0000000002');
INSERT INTO `position` VALUES ('5', '百度移动游戏UI designer', '北京', '7k-14k', '1-3年', '本科', '喜欢游戏，喜欢生活，游戏生活', '2018-06-18 08:51:48', '00000000001', '996', null, null, '0000000000');
INSERT INTO `position` VALUES ('6', 'ios', '北京', '13k-26k', '1-3年', '本科', '中国第一智能手机广告平台', '2018-06-04 08:53:18', '00000000001', '995', null, null, '0000000000');
INSERT INTO `position` VALUES ('7', 'java', '北京', '15k-25k', '1-3年', '本科', '项目快速发展，技术氛围浓厚，有业界大牛', '2018-05-28 08:54:33', '00000000001', '994', null, null, '0000000000');
INSERT INTO `position` VALUES ('8', 'web前端', '上海', '6k-12k', '1-3年', '本科', '靠谱的工程师要来靠谱的公司', '2016-06-06 08:56:53', '00000000001', '993', null, null, '0000000000');
INSERT INTO `position` VALUES ('9', 'java', '杭州', '15k-30k', '不限', '本科', '有技术挑战，有成长机会，有漂亮妹子', '2018-04-18 08:58:20', '00000000001', '992', null, null, '0000000000');
INSERT INTO `position` VALUES ('10', '测试实习生', '上海', '3k-5k', '不限', '本科', '实习通过，毕业直接转正，实习期有餐贴', '1999-06-13 08:59:25', '00000000001', '991', null, null, '0000000000');
INSERT INTO `position` VALUES ('11', '网页产品设计师', '北京', '8k-10k', '1-3年', '本科', '六险一金，饭补，班车，晋升机制，氛围好', '2017-07-13 09:01:30', '00000000001', '990', null, null, '0000000000');
INSERT INTO `position` VALUES ('12', '产品经理（工商系统项目）', '北京', '10k-20k', '5-10年', '本科', '和一群聪明的人共事', '2017-06-13 09:02:47', '00000000001', '989', null, null, '0000000000');
INSERT INTO `position` VALUES ('13', '团队经理', '北京', '10k-15k', '不限', '大专', '位置佳，环境优越，发展空间大，薪酬高', '2016-06-13 09:03:53', '00000000001', '988', null, null, '0000000000');
INSERT INTO `position` VALUES ('14', '手游商务', '上海', '6k-10k', '1-3年', '大专', '一年两次调薪，免费早，晚餐，项目，年终奖', '2010-06-13 09:05:22', '00000000001', '987', null, null, '0000000000');
INSERT INTO `position` VALUES ('15', '市场推广', '上海', '7k-12k', '1-3年', '大专', '年度16薪 市场营销发展方向', '2018-05-01 09:06:50', '00000000001', '986', null, null, '0000000000');
INSERT INTO `position` VALUES ('16', '前端开发', '北京', '10k-20k', '3-5年', '本科', '借移动医疗大势享受坐直升飞机的职业发展', '2018-06-04 09:09:04', '00000000001', '985', null, null, '0000000000');
INSERT INTO `position` VALUES ('17', '前端开发', '北京', '8k-16k', '3-5年', '本科', '第一家互联网私人银行招募各路牛人', '2018-06-13 09:10:11', '00000000001', '984', null, null, '0000000000');
INSERT INTO `position` VALUES ('18', '高级web前端开发工程师', '上海', '8k-15k', '3-5年', '大专', '上市公司创业型团队 五险一金 精英团队', '2018-01-01 09:12:33', '00000000001', '983', null, null, '0000000000');
INSERT INTO `position` VALUES ('19', '前端开发', '广州', '8k-9k', '1-3年', '不限', '高新，双休，五险一金！等你来了！', '2018-06-27 09:13:32', '00000000001', '982', null, null, '0000000000');
INSERT INTO `position` VALUES ('20', '前端开发', '上海', '7k-14k', '1-3年', '大专', '全新的外贸业务开发模式，等你一起来创造！', '2016-02-13 09:20:43', '00000000001', '981', null, null, '0000000000');
INSERT INTO `position` VALUES ('21', '前端开发', '上海', '4k-7k', '1-3年', '大专', '保险，双休，带薪年假等', '1990-06-13 09:25:08', '00000000001', '980', null, null, '0000000000');
INSERT INTO `position` VALUES ('22', '前端开发', '杭州', '4k-7k', '1-3年', '大专', '保险，双休，带薪年假等', '2018-06-26 09:26:15', '00000000001', '979', null, null, '0000000000');
INSERT INTO `position` VALUES ('23', '前端开发', '北京', '6k-12k', '1-3年', '不限', '前端主管', '2018-06-13 09:27:22', '00000000001', '978', null, null, '0000000000');
INSERT INTO `position` VALUES ('24', '前端开发工程师', '上海', '8k-12k', '不限', '大专', '发展空间，与大牛一起工作', '2018-06-26 09:28:56', '00000000001', '977', null, null, '0000000000');
INSERT INTO `position` VALUES ('25', '前端开发工程师实习生', '上海', '3k-6k', '不限', '大专', '快速成长的机会，优秀可转正', '2018-06-11 09:30:06', '00000000001', '976', null, null, '0000000000');
INSERT INTO `position` VALUES ('26', 'js前端开发工程师-北京-01899', '北京', '10k-20k', '3-5年', '本科', '六险一金，饭补，班车，晋升机制，领导好', '2018-05-13 09:32:23', '00000000001', '975', null, null, '0000000000');
INSERT INTO `position` VALUES ('27', '资深js前端开发工程师-北京-02398', '北京', '15k-25k', '3-5年', '本科', '六险一金，饭补，班车，晋升机制，氛围好', '2018-06-13 09:34:28', '00000000001', '974', null, null, '0000000000');
INSERT INTO `position` VALUES ('28', '前端开发工程师', '北京', '10k-18k', '1-3年', '本科', '精英团队；有竞争力的薪酬', '2018-01-13 09:35:27', '00000000001', '973', null, null, '0000000000');
INSERT INTO `position` VALUES ('29', '前端开发工程师', '苏州', '6k-12k', '1-3年', '大专', 'c轮融资，工作环境好，待遇优', '2018-06-05 09:36:35', '00000000001', '972', null, null, '0000000000');
INSERT INTO `position` VALUES ('30', 'web前端开发工程师，主管', '深圳', '6k以上', '1-3年', '大专', '年底双薪，带薪年假，周末双休，年度旅游', '2018-06-13 09:38:12', '00000000001', '971', null, null, '0000000000');

-- ----------------------------
-- Table structure for pos_description
-- ----------------------------
DROP TABLE IF EXISTS `pos_description`;
CREATE TABLE `pos_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pos_description
-- ----------------------------
INSERT INTO `pos_description` VALUES ('1', '1', '挖掘公司互联网产品现有和预期的市场需求');
INSERT INTO `pos_description` VALUES ('2', '1', '负责组织公司互联网新产品开发和产品改进');
INSERT INTO `pos_description` VALUES ('3', '1', '发掘收集竞争对手信息，进行竞争对手分析，制定应对战略');
INSERT INTO `pos_description` VALUES ('4', '1', '在产品运营中倾听用户声音，了解用户潜在需求，并在产品改进中满足');
INSERT INTO `pos_description` VALUES ('5', '1', '在产品运营中整合已有的产品功能、用户资源、推广资源，策划运营活动');
INSERT INTO `pos_description` VALUES ('6', '1', '与市场、运营、UI、开发、测试、公关、法务、客服等人员紧密合作，实现产品目标');
INSERT INTO `pos_description` VALUES ('7', '2', '在产品发行过程中，进行推广，了解需求');
INSERT INTO `pos_description` VALUES ('8', '2', '比较与对手公司的区别，和对手公司的差距，然后进行创新');
INSERT INTO `pos_description` VALUES ('9', '2', '为了了解客户的意愿，客户的喜爱程度，更倾向于哪种产品');
INSERT INTO `pos_description` VALUES ('10', '2', '挖掘公司互联网产品现有和预期的市场需求');
INSERT INTO `pos_description` VALUES ('11', '2', '负责组织公司互联网新产品开发和产品改进');
INSERT INTO `pos_description` VALUES ('12', '2', '发掘收集竞争对手信息，进行竞争对手分析，制定应对战略');
INSERT INTO `pos_description` VALUES ('13', '3', '在产品运营中倾听用户声音，了解用户潜在需求，并在产品改进中满足');
INSERT INTO `pos_description` VALUES ('14', '3', '在产品运营中整合已有的产品功能、用户资源、推广资源，策划运营活动');
INSERT INTO `pos_description` VALUES ('15', '3', '与市场、运营、UI、开发、测试、公关、法务、客服等人员紧密合作，实现产品目标');
INSERT INTO `pos_description` VALUES ('16', '3', '在产品发行过程中，进行推广，了解需求');
INSERT INTO `pos_description` VALUES ('17', '3', '比较与对手公司的区别，和对手公司的差距，然后进行创新');
INSERT INTO `pos_description` VALUES ('18', '3', '为了了解客户的意愿，客户的喜爱程度，更倾向于哪种产品');
INSERT INTO `pos_description` VALUES ('19', '4', '与市场、运营、UI、开发、测试、公关、法务、客服等人员紧密合作，实现产品目标');
INSERT INTO `pos_description` VALUES ('20', '4', '在产品发行过程中，进行推广，了解需求');
INSERT INTO `pos_description` VALUES ('21', '4', '比较与对手公司的区别，和对手公司的差距，然后进行创新');
INSERT INTO `pos_description` VALUES ('22', '4', '为了了解客户的意愿，客户的喜爱程度，更倾向于哪种产品');
INSERT INTO `pos_description` VALUES ('23', '4', '挖掘公司互联网产品现有和预期的市场需求');
INSERT INTO `pos_description` VALUES ('24', '4', '负责组织公司互联网新产品开发和产品改进');

-- ----------------------------
-- Table structure for pos_order
-- ----------------------------
DROP TABLE IF EXISTS `pos_order`;
CREATE TABLE `pos_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pos_order
-- ----------------------------
INSERT INTO `pos_order` VALUES ('1', '1', '本科及以上学历，英语四级以上，专业不限');
INSERT INTO `pos_order` VALUES ('2', '1', '对互联网产品有敏锐的直觉和良好的市场分析能力');
INSERT INTO `pos_order` VALUES ('3', '1', '有严密的逻辑分析能力，有良好的沟通协作能力');
INSERT INTO `pos_order` VALUES ('4', '1', '有很强的责任心、学习能力、文字表达能力');
INSERT INTO `pos_order` VALUES ('5', '1', '具有很强的团队协助精神，善于总结和分享经验');
INSERT INTO `pos_order` VALUES ('6', '1', '具有互联网产品规划和产品设计经验者优先');
INSERT INTO `pos_order` VALUES ('7', '2', '英语六级，研究生学历，专业对口');
INSERT INTO `pos_order` VALUES ('8', '2', '责任心强，英语四级以上，本科学历');
INSERT INTO `pos_order` VALUES ('9', '2', '精通计算机，口语很好，协作能力强');
INSERT INTO `pos_order` VALUES ('10', '2', '本科及以上学历，英语四级以上，专业不限');
INSERT INTO `pos_order` VALUES ('11', '2', '对互联网产品有敏锐的直觉和良好的市场分析能力');
INSERT INTO `pos_order` VALUES ('12', '2', '有严密的逻辑分析能力，有良好的沟通协作能力');
INSERT INTO `pos_order` VALUES ('13', '3', '有很强的责任心、学习能力、文字表达能力');
INSERT INTO `pos_order` VALUES ('14', '3', '具有很强的团队协助精神，善于总结和分享经验');
INSERT INTO `pos_order` VALUES ('15', '3', '具有互联网产品规划和产品设计经验者优先');
INSERT INTO `pos_order` VALUES ('16', '3', '英语六级，研究生学历，专业对口');
INSERT INTO `pos_order` VALUES ('17', '3', '责任心强，英语四级以上，本科学历');
INSERT INTO `pos_order` VALUES ('18', '3', '精通计算机，口语很好，协作能力强');
INSERT INTO `pos_order` VALUES ('19', '4', '责任心强，英语四级以上，本科学历');
INSERT INTO `pos_order` VALUES ('20', '4', '精通计算机，口语很好，协作能力强');
INSERT INTO `pos_order` VALUES ('21', '4', '本科及以上学历，英语四级以上，专业不限');
INSERT INTO `pos_order` VALUES ('22', '4', '对互联网产品有敏锐的直觉和良好的市场分析能力');
INSERT INTO `pos_order` VALUES ('23', '4', '有严密的逻辑分析能力，有良好的沟通协作能力');
INSERT INTO `pos_order` VALUES ('24', '4', '有很强的责任心、学习能力、文字表达能力');

-- ----------------------------
-- Table structure for pos_other
-- ----------------------------
DROP TABLE IF EXISTS `pos_other`;
CREATE TABLE `pos_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pos_other
-- ----------------------------
INSERT INTO `pos_other` VALUES ('1', '1', '五险一金、商业综合医疗保险，节日慰问金');
INSERT INTO `pos_other` VALUES ('2', '1', '生日礼金、结婚礼金、年度体检、旅游');
INSERT INTO `pos_other` VALUES ('3', '1', '工作时间为5天工作制，享受国家法定节假日');
INSERT INTO `pos_other` VALUES ('4', '1', '带薪年假7天、带薪病假、产假（陪产假）、婚假、丧假等');
INSERT INTO `pos_other` VALUES ('5', '1', '每周定期举办足球、羽毛球、篮球及员工深度互动等文体活动');
INSERT INTO `pos_other` VALUES ('6', '1', '餐补，带薪休假，年度旅游');
INSERT INTO `pos_other` VALUES ('7', '2', '国家法定节假日，带薪产假，五险一金');
INSERT INTO `pos_other` VALUES ('8', '2', '活动丰富，医疗保险，年度体检');
INSERT INTO `pos_other` VALUES ('9', '2', '结婚礼金，五险一金，旅游，带薪休假');
INSERT INTO `pos_other` VALUES ('10', '2', '五险一金、商业综合医疗保险，节日慰问金');
INSERT INTO `pos_other` VALUES ('11', '2', '生日礼金、结婚礼金、年度体检、旅游');
INSERT INTO `pos_other` VALUES ('12', '2', '工作时间为5天工作制，享受国家法定节假日');
INSERT INTO `pos_other` VALUES ('13', '3', '带薪年假7天、带薪病假、产假（陪产假）、婚假、丧假等');
INSERT INTO `pos_other` VALUES ('14', '3', '每周定期举办足球、羽毛球、篮球及员工深度互动等文体活动');
INSERT INTO `pos_other` VALUES ('15', '3', '餐补，带薪休假，年度旅游');
INSERT INTO `pos_other` VALUES ('16', '3', '国家法定节假日，带薪产假，五险一金');
INSERT INTO `pos_other` VALUES ('17', '3', '活动丰富，医疗保险，年度体检');
INSERT INTO `pos_other` VALUES ('18', '3', '结婚礼金，五险一金，旅游，带薪休假');
INSERT INTO `pos_other` VALUES ('19', '4', '餐补，带薪休假，年度旅游');
INSERT INTO `pos_other` VALUES ('20', '4', '国家法定节假日，带薪产假，五险一金');
INSERT INTO `pos_other` VALUES ('21', '4', '活动丰富，医疗保险，年度体检');
INSERT INTO `pos_other` VALUES ('22', '4', '结婚礼金，五险一金，旅游，带薪休假');
INSERT INTO `pos_other` VALUES ('23', '4', '五险一金、商业综合医疗保险，节日慰问金');
INSERT INTO `pos_other` VALUES ('24', '4', '生日礼金、结婚礼金、年度体检、旅游');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', '123', '123', '0');
INSERT INTO `user` VALUES ('2', '456', '456', '123', '1');
INSERT INTO `user` VALUES ('3', '789', '789', '789', '2');

-- ----------------------------
-- Table structure for weal
-- ----------------------------
DROP TABLE IF EXISTS `weal`;
CREATE TABLE `weal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weal_name` varchar(255) DEFAULT NULL,
  `com_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weal
-- ----------------------------
INSERT INTO `weal` VALUES ('1', '五险一金', '1');
INSERT INTO `weal` VALUES ('2', '零食免费', '1');
INSERT INTO `weal` VALUES ('3', '周末双休', '1');

-- ----------------------------
-- Table structure for weal_pos
-- ----------------------------
DROP TABLE IF EXISTS `weal_pos`;
CREATE TABLE `weal_pos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weal_pos
-- ----------------------------
INSERT INTO `weal_pos` VALUES ('1', '1', '绩效奖金');
INSERT INTO `weal_pos` VALUES ('2', '1', '五险一金');
INSERT INTO `weal_pos` VALUES ('3', '1', '带薪年假');
INSERT INTO `weal_pos` VALUES ('4', '2', '午餐补助');
INSERT INTO `weal_pos` VALUES ('5', '2', '五险一金');
INSERT INTO `weal_pos` VALUES ('6', '2', '午餐补助');
INSERT INTO `weal_pos` VALUES ('7', '3', '技能培训');
INSERT INTO `weal_pos` VALUES ('8', '3', '绩效奖金');
INSERT INTO `weal_pos` VALUES ('9', '3', '带薪年假');
INSERT INTO `weal_pos` VALUES ('10', '4', '午餐补助');
INSERT INTO `weal_pos` VALUES ('11', '4', '五险一金');
INSERT INTO `weal_pos` VALUES ('12', '4', '带薪年假');
INSERT INTO `weal_pos` VALUES ('13', '5', '技能培训');
INSERT INTO `weal_pos` VALUES ('14', '5', '带薪年假');
INSERT INTO `weal_pos` VALUES ('15', '5', '五险一金');
INSERT INTO `weal_pos` VALUES ('16', '6', '午餐补助');
INSERT INTO `weal_pos` VALUES ('17', '6', '技能培训');
INSERT INTO `weal_pos` VALUES ('18', '6', '绩效奖金');
INSERT INTO `weal_pos` VALUES ('19', '7', '带薪年假');
INSERT INTO `weal_pos` VALUES ('20', '7', '午餐补助');
INSERT INTO `weal_pos` VALUES ('21', '7', '技能培训');
INSERT INTO `weal_pos` VALUES ('22', '8', '五险一金');
INSERT INTO `weal_pos` VALUES ('23', '8', '带薪年假');
INSERT INTO `weal_pos` VALUES ('24', '8', '午餐补助');
INSERT INTO `weal_pos` VALUES ('25', '9', '技能培训');
INSERT INTO `weal_pos` VALUES ('26', '9', '带薪年假');
INSERT INTO `weal_pos` VALUES ('27', '9', '午餐补助');
INSERT INTO `weal_pos` VALUES ('28', '10', '技能培训');
INSERT INTO `weal_pos` VALUES ('29', '10', '午餐补助');
INSERT INTO `weal_pos` VALUES ('30', '10', '绩效奖金');
INSERT INTO `weal_pos` VALUES ('31', '11', '带薪年假');
INSERT INTO `weal_pos` VALUES ('32', '11', '午餐补助');
INSERT INTO `weal_pos` VALUES ('33', '11', '技能培训');
INSERT INTO `weal_pos` VALUES ('34', '12', '带薪年假');
INSERT INTO `weal_pos` VALUES ('35', '12', '绩效奖金');
INSERT INTO `weal_pos` VALUES ('36', '12', '技能培训');
INSERT INTO `weal_pos` VALUES ('37', '13', '技能培训');
INSERT INTO `weal_pos` VALUES ('38', '13', '五险一金');
INSERT INTO `weal_pos` VALUES ('39', '13', '午餐补助');
INSERT INTO `weal_pos` VALUES ('40', '14', '绩效奖金');
INSERT INTO `weal_pos` VALUES ('41', '14', '带薪年假');
INSERT INTO `weal_pos` VALUES ('42', '14', '午餐补助');
INSERT INTO `weal_pos` VALUES ('43', '15', '技能培训');
INSERT INTO `weal_pos` VALUES ('44', '15', '五险一金');
INSERT INTO `weal_pos` VALUES ('45', '15', '午餐补助');
INSERT INTO `weal_pos` VALUES ('46', '16', '技能培训');
INSERT INTO `weal_pos` VALUES ('47', '16', '绩效奖金');
INSERT INTO `weal_pos` VALUES ('48', '16', '午餐补助');
INSERT INTO `weal_pos` VALUES ('49', '17', '午餐补助');
INSERT INTO `weal_pos` VALUES ('50', '17', '技能培训');
INSERT INTO `weal_pos` VALUES ('51', '17', '绩效奖金');
INSERT INTO `weal_pos` VALUES ('52', '18', '五险一金');
INSERT INTO `weal_pos` VALUES ('53', '18', '午餐补助');
INSERT INTO `weal_pos` VALUES ('54', '18', '绩效奖金');
INSERT INTO `weal_pos` VALUES ('55', '19', '带薪年假');
INSERT INTO `weal_pos` VALUES ('56', '19', '五险一金');
INSERT INTO `weal_pos` VALUES ('57', '19', '技能培训');
INSERT INTO `weal_pos` VALUES ('58', '20', '带薪年假');
INSERT INTO `weal_pos` VALUES ('59', '20', '午餐补助');
INSERT INTO `weal_pos` VALUES ('60', '20', '五险一金');
INSERT INTO `weal_pos` VALUES ('61', '21', '技能培训');
INSERT INTO `weal_pos` VALUES ('62', '21', '午餐补助');
INSERT INTO `weal_pos` VALUES ('63', '21', '绩效奖金');
INSERT INTO `weal_pos` VALUES ('64', '22', '五险一金');
INSERT INTO `weal_pos` VALUES ('65', '22', '午餐补助');
INSERT INTO `weal_pos` VALUES ('66', '22', '技能培训');
INSERT INTO `weal_pos` VALUES ('67', '23', '午餐补助');
INSERT INTO `weal_pos` VALUES ('68', '23', '技能培训');
INSERT INTO `weal_pos` VALUES ('69', '23', '五险一金');
INSERT INTO `weal_pos` VALUES ('70', '24', '带薪年假');
INSERT INTO `weal_pos` VALUES ('71', '24', '技能培训');
INSERT INTO `weal_pos` VALUES ('72', '24', '绩效奖金');
INSERT INTO `weal_pos` VALUES ('73', '25', '带薪年假');
INSERT INTO `weal_pos` VALUES ('74', '25', '五险一金');
INSERT INTO `weal_pos` VALUES ('75', '25', '技能培训');
INSERT INTO `weal_pos` VALUES ('76', '26', '午餐补助');
INSERT INTO `weal_pos` VALUES ('77', '26', '技能培训');
INSERT INTO `weal_pos` VALUES ('78', '26', '绩效奖金');
INSERT INTO `weal_pos` VALUES ('79', '27', '五险一金');
INSERT INTO `weal_pos` VALUES ('80', '27', '带薪年假');
INSERT INTO `weal_pos` VALUES ('81', '27', '技能培训');
INSERT INTO `weal_pos` VALUES ('82', '28', '五险一金');
INSERT INTO `weal_pos` VALUES ('83', '28', '午餐补助');
INSERT INTO `weal_pos` VALUES ('84', '28', '技能培训');
INSERT INTO `weal_pos` VALUES ('85', '29', '技能培训');
INSERT INTO `weal_pos` VALUES ('86', '29', '五险一金');
INSERT INTO `weal_pos` VALUES ('87', '29', '带薪年假');
INSERT INTO `weal_pos` VALUES ('88', '30', '午餐补助');
INSERT INTO `weal_pos` VALUES ('89', '30', '绩效奖金');
INSERT INTO `weal_pos` VALUES ('90', '30', '带薪年假');

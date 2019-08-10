/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : tourism

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2019-08-10 17:24:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '代理主键,自增',
  `uid` int(11) DEFAULT '0' COMMENT '用户编号',
  `comment` text COMMENT '评论内容',
  `comment_time` datetime DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------

-- ----------------------------
-- Table structure for tb_message
-- ----------------------------
DROP TABLE IF EXISTS `tb_message`;
CREATE TABLE `tb_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户编号',
  `message` varchar(255) DEFAULT '' COMMENT '留言内容',
  `input_time` datetime DEFAULT NULL COMMENT '留言时间',
  `sex` bit(2) DEFAULT b'0' COMMENT '性别',
  `txt_name` varchar(50) DEFAULT '' COMMENT '称呼',
  `txt_tell` varchar(100) DEFAULT '' COMMENT '电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_message
-- ----------------------------
INSERT INTO `tb_message` VALUES ('1', '0', 'asd1asd1asdq', '2019-06-08 22:33:44', '\0', 'asd1', 'dwd1');
INSERT INTO `tb_message` VALUES ('2', '0', 'asd1asd1asadqasdasdas', '2019-06-08 22:34:17', '', 'asdasojd', 'sdqwsdf');
INSERT INTO `tb_message` VALUES ('3', '0', '四点七五·1我得21区分1发都1', '2019-06-08 23:24:37', '', '按时大阿松的·千万千瓦的·请求权', '请问');
INSERT INTO `tb_message` VALUES ('4', '0', 'wfewhefoiwenfo', '2019-06-12 13:28:16', '', 'woewefj', 'sndiwefn');
INSERT INTO `tb_message` VALUES ('5', '0', '12312312123123', '2019-08-10 17:01:00', '\0', 'q231231', '123123');
INSERT INTO `tb_message` VALUES ('6', '0', 'asdaoiuqhad', '2019-08-10 17:01:46', null, 'yuanxing', 'xzuxcnaidwan');

-- ----------------------------
-- Table structure for tb_picture
-- ----------------------------
DROP TABLE IF EXISTS `tb_picture`;
CREATE TABLE `tb_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picpath` varchar(255) DEFAULT NULL,
  `spot_name` varchar(255) DEFAULT NULL,
  `spot_intro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_picture
-- ----------------------------
INSERT INTO `tb_picture` VALUES ('1', '/upload/8b6e3547-5007-4bb1-bbf6-f46a140c7bbc.png', '1212', '121212');
INSERT INTO `tb_picture` VALUES ('2', '/upload/ec5cc0cf-95d0-435a-8a53-e2041fa940c0.jpg', '12132312', '2312312312312');
INSERT INTO `tb_picture` VALUES ('3', '/upload/37184ca2-2166-41eb-8514-f1d56c88f2c1.png', '12123121231', '2131231we12qweq');
INSERT INTO `tb_picture` VALUES ('4', '/upload/c6674cb8-7bad-42d4-b14a-5752054a930f.png', '12132312', '<p>速度覅和iwfowiejfowijeofwjeof</p>\r\n\r\n<p>sdfiwhefiwueiebie</p>\r\n\r\n<p>违反沃尔黄飞鸿文化覅</p>\r\n\r\n<p>whfuwiehfi</p>\r\n\r\n<p>sdfoh293fhsoidfhwi</p>\r\n\r\n<p>sdfo23hfiwhg9f3h9whoeaifgoeguf3ugiwofh83wojfowh389w</p>\r\n');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT '' COMMENT '用户名',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `tellphone` varchar(100) DEFAULT '' COMMENT '电话',
  `nickname` varchar(100) DEFAULT '' COMMENT '昵称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'admin', '123', '12345678901', 'cjy');
INSERT INTO `tb_user` VALUES ('2', 'asd', 'asdas', 'asdasd', '');
INSERT INTO `tb_user` VALUES ('3', 'adsahi', '111', '的撒骄傲', null);
INSERT INTO `tb_user` VALUES ('4', '', '', '', null);
INSERT INTO `tb_user` VALUES ('5', 'user', '123', '12391214102', null);

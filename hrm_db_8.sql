/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : hrm_db_8

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-12-30 09:54:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for card_info
-- ----------------------------
DROP TABLE IF EXISTS `card_info`;
CREATE TABLE `card_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_time` datetime NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of card_info
-- ----------------------------
INSERT INTO `card_info` VALUES ('1', '2017-12-27 14:54:48', '2017-12-29 14:54:51', '2017-12-29 14:54:55');

-- ----------------------------
-- Table structure for dept_inf
-- ----------------------------
DROP TABLE IF EXISTS `dept_inf`;
CREATE TABLE `dept_inf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept_inf
-- ----------------------------
INSERT INTO `dept_inf` VALUES ('1', '技术部', '技术部');
INSERT INTO `dept_inf` VALUES ('2', '运营部', '运营部');
INSERT INTO `dept_inf` VALUES ('3', '财务部', '财务部');
INSERT INTO `dept_inf` VALUES ('4', '总公办', '总公办');
INSERT INTO `dept_inf` VALUES ('5', '市场部', '市场部');
INSERT INTO `dept_inf` VALUES ('6', '教学部', '教学部');
INSERT INTO `dept_inf` VALUES ('7', 'aaaa', 'aaaa');
INSERT INTO `dept_inf` VALUES ('8', '舍管部', '管理宿舍');

-- ----------------------------
-- Table structure for document_inf
-- ----------------------------
DROP TABLE IF EXISTS `document_inf`;
CREATE TABLE `document_inf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `filename` varchar(300) NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of document_inf
-- ----------------------------
INSERT INTO `document_inf` VALUES ('5', 'qwqaD', '新建文本文档.txt', 'qwewerty', '2017-06-21 09:23:48', '1');
INSERT INTO `document_inf` VALUES ('6', 'wsedrftgfyuio', '数据结构简单总结.txt', 'qWASEDRFGTHJ', '2017-06-21 09:26:43', '1');

-- ----------------------------
-- Table structure for employee_inf
-- ----------------------------
DROP TABLE IF EXISTS `employee_inf`;
CREATE TABLE `employee_inf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `card_id` varchar(18) NOT NULL,
  `address` varchar(50) NOT NULL,
  `post_code` varchar(50) DEFAULT NULL,
  `tel` varchar(16) DEFAULT NULL,
  `phone` varchar(11) NOT NULL,
  `qq_num` varchar(10) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `sex` int(11) NOT NULL DEFAULT '1',
  `party` varchar(10) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `race` varchar(100) DEFAULT NULL,
  `education` varchar(10) DEFAULT NULL,
  `speciality` varchar(20) DEFAULT NULL,
  `hobby` varchar(100) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee_inf
-- ----------------------------
INSERT INTO `employee_inf` VALUES ('1', '1', '8', '白胡子', '4328011988', '东海', '510000', '020-7777777', '18864803272', '1591992570', '1591992570@qq.com', '0', '共青团员', '1996-10-01 08:58:22', '汉', '本科', '计算机', '爬山', '无', '2017-12-29 14:42:38');
INSERT INTO `employee_inf` VALUES ('2', '2', '1', '海伦', '4328011999', '北京', '520000', '020-5555555', '18864803252', '1886456823', '18864803252@163.com', '1', '共青团员', '2017-05-23 09:01:17', '汉', '本科', '计算机', null, '', '2017-12-29 14:42:56');
INSERT INTO `employee_inf` VALUES ('3', '1', '2', '艾哲', '4328011555', '湖北', '530000', '020-6666666', '15687543225', '1521321454', '12154521445@163.com', '1', '共青团员', '2017-05-23 09:03:12', '汉', '本科', '计算机', '撩妹', '无', '2017-12-29 14:43:03');
INSERT INTO `employee_inf` VALUES ('4', '3', '5', '黑胡子', '411424199604296211', '北海', '144242', '86884115', '15071415116', '8629833', '862983319@qq.com', '1', 'ddd', '2017-12-05 00:00:00', 'ff', 'dd', 'fff', 'fff', 'fffff', '2017-12-29 14:43:20');

-- ----------------------------
-- Table structure for job_inf
-- ----------------------------
DROP TABLE IF EXISTS `job_inf`;
CREATE TABLE `job_inf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job_inf
-- ----------------------------
INSERT INTO `job_inf` VALUES ('1', '总经理', '职员');
INSERT INTO `job_inf` VALUES ('2', 'java开发工程师', 'java开发工程师');
INSERT INTO `job_inf` VALUES ('3', 'java中级开发工程师', 'java中级开发工程师');
INSERT INTO `job_inf` VALUES ('4', 'java高级开发工程师', 'java高级开发工程第');
INSERT INTO `job_inf` VALUES ('5', '系统管理员', '系统管理员');
INSERT INTO `job_inf` VALUES ('6', '架构师', '架构师');
INSERT INTO `job_inf` VALUES ('7', '主管', '主管');
INSERT INTO `job_inf` VALUES ('8', '经理', '经理');
INSERT INTO `job_inf` VALUES ('9', '总经理', '总经理');
INSERT INTO `job_inf` VALUES ('10', '学生', '学生');

-- ----------------------------
-- Table structure for notice_inf
-- ----------------------------
DROP TABLE IF EXISTS `notice_inf`;
CREATE TABLE `notice_inf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice_inf
-- ----------------------------
INSERT INTO `notice_inf` VALUES ('1', '前端招聘', '<h2> 任职要求</h2>\r\n<p>1. 本科及以上学历，计算机软件相关专业，8年以上开发经验</p>\r\n<p>2. 根据公司产品发展方向，参与web.手机客户端.桌面客户端产品研发</p>\r\n<p>3. 根据产品设计，负责利用HTML5和CSS3实现App界面研发</p>\r\n<p>4. 负责利用JavaScript等技术实现App中的交互效果</p>\r\n<p>5. 根据项目需求，对公司Android.IOS平台下的产品应用程序设计.开发.维... </p>', '2017-12-29 15:58:40', '1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员');
INSERT INTO `role` VALUES ('2', 'CEO');
INSERT INTO `role` VALUES ('3', '经理');
INSERT INTO `role` VALUES ('4', '老板');

-- ----------------------------
-- Table structure for user_inf
-- ----------------------------
DROP TABLE IF EXISTS `user_inf`;
CREATE TABLE `user_inf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(20) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `createdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_inf
-- ----------------------------
INSERT INTO `user_inf` VALUES ('1', 'admin', '123456', '2', '2017-12-29 14:28:25', '超级管理员1');
INSERT INTO `user_inf` VALUES ('5', '任赛龙', '123', '1', '2017-12-28 10:24:55', '任赛龙');
INSERT INTO `user_inf` VALUES ('6', '王喜', '123', '1', '2017-12-28 10:24:39', '王喜');
INSERT INTO `user_inf` VALUES ('12', '胖子', '123', '1', '2017-12-29 14:40:33', '胖子');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '2');
INSERT INTO `user_role` VALUES ('2', '2', '2');
INSERT INTO `user_role` VALUES ('3', '3', '2');
INSERT INTO `user_role` VALUES ('4', '4', '1');
INSERT INTO `user_role` VALUES ('5', '5', '3');
INSERT INTO `user_role` VALUES ('6', '6', '4');

-- ----------------------------
-- Table structure for work_info
-- ----------------------------
DROP TABLE IF EXISTS `work_info`;
CREATE TABLE `work_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `card_info_id` int(11) NOT NULL,
  `salary` double NOT NULL,
  `status` int(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work_info
-- ----------------------------
INSERT INTO `work_info` VALUES ('1', '1', '1', '4000', '1', '2017-12-27 14:55:32', '2017-12-29 14:55:36');

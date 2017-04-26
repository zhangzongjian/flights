/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50704
Source Host           : localhost:3306
Source Database       : flights

Target Server Type    : MYSQL
Target Server Version : 50704
File Encoding         : 65001

Date: 2017-04-25 23:21:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(100) DEFAULT NULL COMMENT '账号',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `realname` varchar(100) DEFAULT NULL COMMENT '姓名',
  `position` varchar(100) DEFAULT NULL COMMENT '职位',
  `lastlogintime` varchar(100) DEFAULT NULL COMMENT '最后登录时间',
  `createtime` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `authority` varchar(100) DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES ('1', 'admin', 'admin', '', '', '', '', '');

-- ----------------------------
-- Table structure for airport
-- ----------------------------
DROP TABLE IF EXISTS `airport`;
CREATE TABLE `airport` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `airportname` varchar(100) DEFAULT NULL COMMENT '机场名称',
  `airportcity` varchar(100) DEFAULT NULL COMMENT '所属城市',
  `createtime` varchar(100) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `airportname` (`airportname`)
) ENGINE=InnoDB AUTO_INCREMENT=1341 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of airport
-- ----------------------------
INSERT INTO `airport` VALUES ('1339', '白云国际机场', '广州', '2017-04-25 22:29');
INSERT INTO `airport` VALUES ('1340', '周水子国际机场', '大连', '2017-04-25 22:43');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `companycode` varchar(100) DEFAULT NULL COMMENT '公司代码',
  `information` varchar(100) DEFAULT NULL COMMENT '公司信息',
  `companyname` varchar(100) DEFAULT NULL COMMENT '公司名称',
  `mobilephone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `companyphone` varchar(100) DEFAULT NULL COMMENT '固定电话',
  `companyurl` varchar(100) DEFAULT NULL COMMENT '公司网址',
  `createtime` varchar(100) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', 'MU', '', '东方航空', '', '', '', '2017-04-25 22:22');

-- ----------------------------
-- Table structure for company_plane
-- ----------------------------
DROP TABLE IF EXISTS `company_plane`;
CREATE TABLE `company_plane` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyid` int(11) DEFAULT NULL COMMENT '航空公司编号',
  `planeid` int(11) DEFAULT NULL COMMENT '机型编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_plane
-- ----------------------------
INSERT INTO `company_plane` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobilephone` varchar(100) DEFAULT NULL COMMENT '手机号码',
  `accounttype` varchar(100) DEFAULT NULL COMMENT '账号类型',
  `nickname` varchar(100) DEFAULT NULL COMMENT '昵称',
  `realname` varchar(100) DEFAULT NULL COMMENT '姓名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `birthday` varchar(100) DEFAULT NULL COMMENT '出生日期',
  `sex` varchar(100) DEFAULT NULL COMMENT '性别',
  `phone` varchar(100) DEFAULT NULL COMMENT '联系固话',
  `createtime` varchar(100) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------

-- ----------------------------
-- Table structure for discount
-- ----------------------------
DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `discounttype` varchar(100) DEFAULT NULL COMMENT '折扣类型',
  `discountrate` float DEFAULT NULL COMMENT '折扣率',
  `createtime` varchar(100) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discount
-- ----------------------------
INSERT INTO `discount` VALUES ('246', '儿童半票', '0.5', '2017-04-25 22:35');

-- ----------------------------
-- Table structure for flight
-- ----------------------------
DROP TABLE IF EXISTS `flight`;
CREATE TABLE `flight` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `flightno` varchar(100) DEFAULT NULL COMMENT '航班号',
  `starttime` varchar(100) DEFAULT NULL COMMENT '出发时间',
  `startairportid` int(11) DEFAULT NULL COMMENT '出发机场',
  `arrivaltime` varchar(100) DEFAULT NULL COMMENT '抵达时间',
  `endairportid` int(11) DEFAULT NULL COMMENT '目的机场',
  `planeid` int(11) DEFAULT NULL COMMENT '飞机',
  `startrealtime` varchar(100) DEFAULT NULL COMMENT '实际出发时间',
  `arrivalrealtime` varchar(100) DEFAULT NULL COMMENT '实际抵达时间',
  `status` varchar(100) DEFAULT NULL COMMENT '状态',
  `createtime` varchar(100) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flight
-- ----------------------------
INSERT INTO `flight` VALUES ('1', 'AQ1037', '2017-04-25 22:35', '1339', '2017-04-26 22:35', '1340', '1', '', '', '', '2017-04-25 22:44');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `orderno` varchar(100) DEFAULT NULL COMMENT '订单号',
  `flightid` int(11) DEFAULT NULL COMMENT '航班编号',
  `ticketpriceid` int(11) DEFAULT NULL COMMENT '票价编号',
  `ordertime` varchar(100) DEFAULT NULL COMMENT '预定时间',
  `person` varchar(100) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `orderstatus` varchar(100) DEFAULT NULL COMMENT '订单状态',
  `customerid` int(11) DEFAULT NULL COMMENT '客户编号',
  `createtime` varchar(100) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for passenger
-- ----------------------------
DROP TABLE IF EXISTS `passenger`;
CREATE TABLE `passenger` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `passengername` varchar(100) DEFAULT NULL COMMENT '乘客姓名',
  `passengercard` varchar(100) DEFAULT NULL COMMENT '身份证号',
  `passengertype` varchar(100) DEFAULT NULL COMMENT '乘客类型',
  `mobilephone` varchar(100) DEFAULT NULL COMMENT '手机号码',
  `customerid` int(11) DEFAULT NULL COMMENT '客户编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of passenger
-- ----------------------------

-- ----------------------------
-- Table structure for plane
-- ----------------------------
DROP TABLE IF EXISTS `plane`;
CREATE TABLE `plane` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `planeversion` varchar(100) DEFAULT NULL COMMENT '型号',
  `planetype` varchar(100) DEFAULT NULL COMMENT '类型',
  `planeage` int(11) DEFAULT NULL COMMENT '机龄',
  `businessclassamount` int(11) DEFAULT NULL COMMENT '公务舱座位数量',
  `firstclassamount` int(11) DEFAULT NULL COMMENT '头等舱座位数量',
  `economyclassamount` int(11) DEFAULT NULL COMMENT '经济舱座位数量',
  `createtime` varchar(100) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plane
-- ----------------------------
INSERT INTO `plane` VALUES ('1', 'A321', '大型机', '13', null, null, null, '2017-04-25 22:28');

-- ----------------------------
-- Table structure for ticketprice
-- ----------------------------
DROP TABLE IF EXISTS `ticketprice`;
CREATE TABLE `ticketprice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `classtype` varchar(100) DEFAULT NULL COMMENT '舱位类型',
  `classamount` varchar(100) DEFAULT NULL COMMENT '舱位数量',
  `price` float DEFAULT NULL COMMENT '价格',
  `flightid` int(11) DEFAULT NULL COMMENT '航班编号',
  `discountid` int(11) DEFAULT NULL COMMENT '折扣类型',
  `dprice` float DEFAULT NULL COMMENT '优惠价',
  `createtime` varchar(100) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ticketprice
-- ----------------------------
INSERT INTO `ticketprice` VALUES ('1', '经济舱', '50', '900', '1', '246', null, '2017-04-25 22:34');
INSERT INTO `ticketprice` VALUES ('2', '商务舱', '60', '1000', '1', null, null, '2017-04-25 22:52');

-- ----------------------------
-- View structure for flight_detail
-- ----------------------------
DROP VIEW IF EXISTS `flight_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `flight_detail` AS SELECT
	flight.id AS flightid,
	flight.flightno,
	flight.starttime,
	flight.arrivaltime,
	flight.startrealtime,
	flight.arrivalrealtime,
	flight.`status`,
	plane.planeversion,
	plane.planetype,
	plane.planeage,
	plane.businessclassamount,
	plane.firstclassamount,
	plane.economyclassamount,
	arrivalAirport.airportname AS arrivalAirportName,
	arrivalAirport.airportcity AS arrivalAirportCity,
	startAirport.airportname AS startAirportName,
	startAirport.airportcity AS startAirportCity,
	company.companycode,
	company.information,
	company.companyname,
	company.mobilephone,
	company.companyphone,
	company.companyurl,
	ticketprice.classtype,
	ticketprice.classamount,
	ticketprice.price,
	ticketprice.dprice,
	discount.discounttype,
	discount.discountrate
FROM
	flight,
	plane,
	airport AS arrivalAirport,
	airport AS startAirport,
	company_plane,
	company,
	ticketprice,
	discount
WHERE
	flight.endairportid = arrivalAirport.id
AND flight.planeid = plane.id
AND flight.startairportid = startAirport.id
AND company.id = company_plane.companyid
AND plane.id = company_plane.planeid
AND ticketprice.flightid = flight.id
AND ticketprice.discountid = discount.id ;

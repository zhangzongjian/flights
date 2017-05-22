/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50704
Source Host           : 127.0.0.1:3306
Source Database       : flights

Target Server Type    : MYSQL
Target Server Version : 50704
File Encoding         : 65001

Date: 2017-05-22 21:45:15
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
  `lastlogintime` datetime DEFAULT NULL COMMENT '最后登录时间',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `authority` varchar(100) DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES ('1', 'admin', 'admin', '张某', '超级管理员', '2017-05-21 00:59:27', '2017-05-04 00:00:00', '');
INSERT INTO `administrator` VALUES ('2', 'zhangsan', 'admin', '张三', '信息录入员', '2017-05-21 00:59:31', '2017-05-04 00:00:00', null);
INSERT INTO `administrator` VALUES ('3', 'lisi', 'admin', '李四', '机票销售员', '2017-05-21 00:59:34', '2017-05-04 00:00:00', null);
INSERT INTO `administrator` VALUES ('4', 'admin', 'admin', '张某', '超级管理员', '2017-05-21 01:14:02', '2017-05-21 01:14:02', '');
INSERT INTO `administrator` VALUES ('5', 'admin', 'admin', '张某', '超级管理员', '2017-05-22 21:30:54', '2017-05-22 21:30:54', '');
INSERT INTO `administrator` VALUES ('6', 'admin', 'admin', '张某', '超级管理员', '2017-05-22 21:39:36', '2017-05-22 21:39:36', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=1358 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of airport
-- ----------------------------
INSERT INTO `airport` VALUES ('1354', '白云国际机场', '广州', '2017-05-04 13:00');
INSERT INTO `airport` VALUES ('1355', '周子水国际机场', '大连', '2017-05-04 13:00');
INSERT INTO `airport` VALUES ('1356', '首都国际机场', '北京', '2017-05-04 13:00');
INSERT INTO `airport` VALUES ('1357', '南苑机场', '北京', '2017-05-04 13:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('2', 'MU', '公司信息', '东方航空', '15622385135', '3335245', 'www.baidu.com', '2017-04-25 22:22');
INSERT INTO `company` VALUES ('3', 'CA', '公司信息', '中国国航', '15622385135', '3335245', 'www.baidu.com', '2017-04-25 22:22');
INSERT INTO `company` VALUES ('4', 'CZ', '公司信息', '南方航空', '15622385135', '3335245', 'www.baidu.com', '2017-04-25 22:22');
INSERT INTO `company` VALUES ('5', 'FM', '公司信息', '上海航空公司', '15622385135', '3335245', 'www.baidu.com', '2017-04-25 22:22');
INSERT INTO `company` VALUES ('6', 'ZH', '公司信息', '深圳航空公司', '15622385135', '3335245', 'www.baidu.com', '2017-04-25 22:22');

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
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '1102349546@qq.com', '15622385135', '', 'JIAN', '坚', 'abc', '1996-12-25', '男', '34654651', '2017-05-05 16:40:16');
INSERT INTO `customer` VALUES ('2', 'a112349546@163.com', '15622385136', '', 'zhangzongjian', '张宗坚', 'admin', '1996-12-26', '男', '38815687', '2017-05-23 03:04:00');
INSERT INTO `customer` VALUES ('3', '2099221914@qq.com', null, null, '', '', 'zzjian', '', '女', '', '2017-05-20 23:59:12');
INSERT INTO `customer` VALUES ('5', null, '15622385134', null, '', '', 'zzjian', '', null, '', '2017-05-21 00:15:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discount
-- ----------------------------
INSERT INTO `discount` VALUES ('246', '节日半价', '0.5', '2017-04-25 22:35');
INSERT INTO `discount` VALUES ('247', '8折', '0.8', '2017-04-25 22:35');
INSERT INTO `discount` VALUES ('248', '7折', '0.7', '2017-05-03 12:56');

-- ----------------------------
-- Table structure for flight
-- ----------------------------
DROP TABLE IF EXISTS `flight`;
CREATE TABLE `flight` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `flightno` varchar(100) DEFAULT NULL COMMENT '航班号',
  `starttime` datetime DEFAULT NULL COMMENT '出发时间',
  `startairportid` int(11) DEFAULT NULL COMMENT '出发机场',
  `arrivaltime` datetime DEFAULT NULL COMMENT '抵达时间',
  `endairportid` int(11) DEFAULT NULL COMMENT '目的机场',
  `planeid` int(11) DEFAULT NULL COMMENT '飞机',
  `startrealtime` datetime DEFAULT NULL COMMENT '实际出发时间',
  `arrivalrealtime` datetime DEFAULT NULL COMMENT '实际抵达时间',
  `status` varchar(100) DEFAULT '计划' COMMENT '状态',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flight
-- ----------------------------
INSERT INTO `flight` VALUES ('3', 'AQ1037', '2017-05-05 13:06:54', '1354', '2017-05-05 17:07:05', '1356', '5', null, null, '计划', '2017-05-04 13:07:41');
INSERT INTO `flight` VALUES ('4', 'CZ3099', '2017-05-05 15:06:00', '1354', '2017-05-05 19:07:00', '1356', '5', null, null, '计划', '2017-05-04 13:07:00');
INSERT INTO `flight` VALUES ('5', 'HU7804', '2017-05-05 10:06:54', '1354', '2017-05-05 14:07:05', '1356', '7', null, null, '计划', '2017-05-04 13:07:41');
INSERT INTO `flight` VALUES ('6', 'AQ1037', '2017-05-05 07:46:47', '1354', '2017-05-05 09:27:02', '1356', '8', null, null, '计划', '2017-05-04 13:07:41');
INSERT INTO `flight` VALUES ('7', 'AQ1037', '2017-05-04 07:46:47', '1354', '2017-05-04 09:27:02', '1356', '6', '2017-05-04 07:55:47', '2017-05-04 09:42:02', '到达', '2017-05-04 13:07:41');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `orderno` varchar(100) DEFAULT NULL COMMENT '订单号',
  `flightid` int(11) DEFAULT NULL COMMENT '航班编号',
  `ticketpriceid` int(11) DEFAULT NULL COMMENT '票价编号',
  `ordertime` datetime DEFAULT NULL COMMENT '预定时间',
  `person` varchar(100) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `orderstatus` varchar(100) DEFAULT NULL COMMENT '订单状态',
  `customerid` int(11) DEFAULT NULL COMMENT '客户编号',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('19', '1493875940585', null, '5', '2017-05-04 13:32:20', '张宗坚', '15622385135', '已付款', '1', '2017-05-04 13:32:20');
INSERT INTO `order` VALUES ('20', '1493876059988', null, '11', '2017-05-04 13:34:19', '张宗坚', '15622385135', '已付款', '1', '2017-05-04 13:34:19');
INSERT INTO `order` VALUES ('21', '1495301294596', null, '8', '2017-05-21 01:28:14', '张总监', '15622385135', '已取消', '5', '2017-05-21 01:28:14');

-- ----------------------------
-- Table structure for order_passenger
-- ----------------------------
DROP TABLE IF EXISTS `order_passenger`;
CREATE TABLE `order_passenger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `passengerid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_passenger
-- ----------------------------
INSERT INTO `order_passenger` VALUES ('31', '19', '30');
INSERT INTO `order_passenger` VALUES ('32', '20', '31');
INSERT INTO `order_passenger` VALUES ('33', '20', '32');
INSERT INTO `order_passenger` VALUES ('34', '21', '33');

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of passenger
-- ----------------------------
INSERT INTO `passenger` VALUES ('30', '张三', '441702199412263337', null, '15622245135', '1');
INSERT INTO `passenger` VALUES ('31', '小马', '441702199611254438', null, '15622351689', '1');
INSERT INTO `passenger` VALUES ('32', '老王', '441702199412233339', null, '15622358498', '1');
INSERT INTO `passenger` VALUES ('33', '李小龙', '441702199412263338', null, '15622385135', '1');

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
  `companyid` int(11) DEFAULT NULL,
  `createtime` varchar(100) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plane
-- ----------------------------
INSERT INTO `plane` VALUES ('2', '737-800', '波音', '16', '60', '70', '80', '3', '2017-05-03 22:28');
INSERT INTO `plane` VALUES ('3', 'A321', '空中客机', '16', '60', '70', '80', '3', '2017-05-03 22:28');
INSERT INTO `plane` VALUES ('4', 'A320', '空中客机', '16', '60', '70', '80', '2', '2017-05-03 22:28');
INSERT INTO `plane` VALUES ('5', 'A319', '空中客机', '16', '60', '70', '80', '5', '2017-05-03 22:28');
INSERT INTO `plane` VALUES ('6', '737-801', '波音', '16', '60', '70', '80', '6', '2017-05-03 22:28');
INSERT INTO `plane` VALUES ('7', 'A320', '空中客机', '16', '60', '70', '80', '4', '2017-05-03 22:28');
INSERT INTO `plane` VALUES ('8', 'A319', '空中客机', '16', '60', '70', '80', '6', '2017-05-03 22:28');

-- ----------------------------
-- Table structure for ticketprice
-- ----------------------------
DROP TABLE IF EXISTS `ticketprice`;
CREATE TABLE `ticketprice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `classtype` varchar(100) DEFAULT NULL COMMENT '舱位类型',
  `classamount` int(11) DEFAULT NULL COMMENT '舱位数量',
  `price` float DEFAULT NULL COMMENT '价格',
  `flightid` int(11) DEFAULT NULL COMMENT '航班编号',
  `discountid` int(11) DEFAULT NULL COMMENT '折扣类型',
  `dprice` float DEFAULT NULL COMMENT '优惠价',
  `createtime` varchar(100) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ticketprice
-- ----------------------------
INSERT INTO `ticketprice` VALUES ('5', '经济舱', '79', '1390', '3', '246', null, null);
INSERT INTO `ticketprice` VALUES ('6', '头等舱', '70', '1970', '3', '246', null, null);
INSERT INTO `ticketprice` VALUES ('7', '商务舱', '60', '2500', '3', '246', null, null);
INSERT INTO `ticketprice` VALUES ('8', '经济舱', '80', '1400', '4', '247', null, null);
INSERT INTO `ticketprice` VALUES ('9', '头等舱', '70', '2000', '4', '247', null, null);
INSERT INTO `ticketprice` VALUES ('10', '商务舱', '60', '2500', '4', '247', null, null);
INSERT INTO `ticketprice` VALUES ('11', '经济舱', '78', '1390', '5', '248', null, null);
INSERT INTO `ticketprice` VALUES ('12', '头等舱', '70', '1970', '5', '248', null, null);
INSERT INTO `ticketprice` VALUES ('13', '头等舱', '80', '2500', '6', null, '2350', null);

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
	company.companyurl
FROM
flight ,
plane ,
airport AS arrivalAirport ,
airport AS startAirport ,
company
WHERE
flight.endairportid = arrivalAirport.id AND
flight.planeid = plane.id AND
flight.startairportid = startAirport.id AND
company.id = plane.companyid ;

-- ----------------------------
-- View structure for order_detail
-- ----------------------------
DROP VIEW IF EXISTS `order_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `order_detail` AS SELECT
`order`.id,
`order`.orderno,
`order`.ordertime,
`order`.person,
`order`.phone,
`order`.orderstatus,
customer.id as customerid,
customer.email,
customer.mobilephone as c_mobile,
customer.accounttype,
customer.nickname,
customer.realname,
customer.`password`,
customer.birthday,
customer.sex,
customer.phone as c_phone,
customer.createtime,
flight_detail.flightid,
flight_detail.flightno,
flight_detail.starttime,
flight_detail.arrivaltime,
flight_detail.startrealtime,
flight_detail.arrivalrealtime,
flight_detail.`status`,
flight_detail.planeversion,
flight_detail.planetype,
flight_detail.planeage,
flight_detail.businessclassamount,
flight_detail.firstclassamount,
flight_detail.economyclassamount,
flight_detail.arrivalAirportName,
flight_detail.arrivalAirportCity,
flight_detail.startAirportName,
flight_detail.startAirportCity,
flight_detail.companycode,
flight_detail.information,
flight_detail.companyname,
flight_detail.mobilephone as com_mobilephome,
flight_detail.companyphone,
flight_detail.companyurl,
ticketprice_detail.classtype,
ticketprice_detail.classamount,
ticketprice_detail.price,
ticketprice_detail.dprice,
ticketprice_detail.discounttype,
ticketprice_detail.discountrate
FROM
`order` ,
flight_detail ,
customer ,
ticketprice_detail
WHERE
`order`.ticketpriceid = ticketprice_detail.id AND
`order`.customerid = customer.id AND
ticketprice_detail.flightid = flight_detail.flightid ;

-- ----------------------------
-- View structure for ticketprice_detail
-- ----------------------------
DROP VIEW IF EXISTS `ticketprice_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `ticketprice_detail` AS SELECT
ticketprice.classtype,
ticketprice.classamount,
ticketprice.price,
ticketprice.flightid,
ticketprice.dprice,
discount.discounttype,
discount.discountrate,
ticketprice.id
FROM
ticketprice
LEFT JOIN discount ON ticketprice.discountid = discount.id ;

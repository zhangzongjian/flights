/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50704
Source Host           : localhost:3306
Source Database       : flights

Target Server Type    : MYSQL
Target Server Version : 50704
File Encoding         : 65001

Date: 2017-05-03 16:25:57
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
) ENGINE=InnoDB AUTO_INCREMENT=1354 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of airport
-- ----------------------------
INSERT INTO `airport` VALUES ('1339', '白云国际机场', '广州', '2017-04-25 22:29');
INSERT INTO `airport` VALUES ('1340', '周水子国际机场', '大连', '2017-04-25 22:43');
INSERT INTO `airport` VALUES ('1353', '北京普通机场', '北京', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', 'MU', '', '东方航空', '', '', '', '2017-04-25 22:22');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '1102349546@qq.com', '15622385135', null, 'Jack', '坚', 'abc', '1996-12-25', '女', '34654651', null);

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
INSERT INTO `discount` VALUES ('246', null, null, '2017-04-25 22:35');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flight
-- ----------------------------
INSERT INTO `flight` VALUES ('1', 'AQ1037', '2017-04-27 22:35:00', '1339', '2017-05-04 22:35:00', '1353', '1', null, null, '计划', '2017-04-25 22:44:00');
INSERT INTO `flight` VALUES ('2', 'BQ1037', '2017-04-27 00:19:09', '1339', '2017-04-29 00:19:14', '1353', '1', null, null, '计划', '2017-04-25 00:19:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('11', '1493454800304', null, '2', '2017-04-29 16:33:20', '高的', '245642', '未付款', '1', '2017-04-29 16:33:20');
INSERT INTO `order` VALUES ('14', '1493792768395', null, '1', '2017-05-03 14:26:08', '24523', '5234525', '未付款', '1', '2017-05-03 14:26:08');
INSERT INTO `order` VALUES ('15', '1493792813140', null, '4', '2017-05-03 14:26:53', 'asdgas', 'sagsfg', '未付款', '1', '2017-05-03 14:26:53');
INSERT INTO `order` VALUES ('16', '1493794537769', null, '1', '2017-05-03 14:55:37', 'asdf', 'sdfasdf', '未付款', '1', '2017-05-03 14:55:37');

-- ----------------------------
-- Table structure for order_passenger
-- ----------------------------
DROP TABLE IF EXISTS `order_passenger`;
CREATE TABLE `order_passenger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `passengerid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_passenger
-- ----------------------------
INSERT INTO `order_passenger` VALUES ('2', '1', '1');
INSERT INTO `order_passenger` VALUES ('3', '1', '2');
INSERT INTO `order_passenger` VALUES ('4', '2', '3');
INSERT INTO `order_passenger` VALUES ('5', '2', '4');
INSERT INTO `order_passenger` VALUES ('6', '3', '5');
INSERT INTO `order_passenger` VALUES ('7', '3', '6');
INSERT INTO `order_passenger` VALUES ('8', '4', '7');
INSERT INTO `order_passenger` VALUES ('9', '4', '8');
INSERT INTO `order_passenger` VALUES ('10', '5', '9');
INSERT INTO `order_passenger` VALUES ('11', '5', '10');
INSERT INTO `order_passenger` VALUES ('12', '6', '11');
INSERT INTO `order_passenger` VALUES ('13', '6', '12');
INSERT INTO `order_passenger` VALUES ('14', '7', '13');
INSERT INTO `order_passenger` VALUES ('15', '7', '14');
INSERT INTO `order_passenger` VALUES ('16', '8', '15');
INSERT INTO `order_passenger` VALUES ('17', '8', '16');
INSERT INTO `order_passenger` VALUES ('18', '9', '17');
INSERT INTO `order_passenger` VALUES ('19', '9', '18');
INSERT INTO `order_passenger` VALUES ('21', '11', '20');
INSERT INTO `order_passenger` VALUES ('24', '14', '23');
INSERT INTO `order_passenger` VALUES ('25', '15', '24');
INSERT INTO `order_passenger` VALUES ('26', '16', '25');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of passenger
-- ----------------------------
INSERT INTO `passenger` VALUES ('1', '张三', '94025', null, '094280', null);
INSERT INTO `passenger` VALUES ('2', '李四', '948603', null, '24528092', null);
INSERT INTO `passenger` VALUES ('3', '冯五', '20495290', null, '20499', '1');
INSERT INTO `passenger` VALUES ('4', '陈六', '2408', null, '2958302', '1');
INSERT INTO `passenger` VALUES ('5', '冯五', '20495290', null, '20499', '1');
INSERT INTO `passenger` VALUES ('6', '陈六', '2408', null, '2958302', '1');
INSERT INTO `passenger` VALUES ('7', '冯五', '20495290', null, '20499', '1');
INSERT INTO `passenger` VALUES ('8', '陈六', '2408', null, '2958302', '1');
INSERT INTO `passenger` VALUES ('9', '冯五', '20495290', null, '20499', '1');
INSERT INTO `passenger` VALUES ('10', '陈六', '2408', null, '2958302', '1');
INSERT INTO `passenger` VALUES ('11', '冯五', '20495290', null, '20499', '1');
INSERT INTO `passenger` VALUES ('12', '陈六', '2408', null, '2958302', '1');
INSERT INTO `passenger` VALUES ('13', '冯五', '20495290', null, '20499', '1');
INSERT INTO `passenger` VALUES ('14', '陈六', '2408', null, '2958302', '1');
INSERT INTO `passenger` VALUES ('15', '冯五', '20495290', null, '20499', '1');
INSERT INTO `passenger` VALUES ('16', '陈六', '2408', null, '2958302', '1');
INSERT INTO `passenger` VALUES ('17', '冯五', '20495290', null, '20499', '1');
INSERT INTO `passenger` VALUES ('18', '陈六', '2408', null, '2958302', '1');
INSERT INTO `passenger` VALUES ('20', '阿斯蒂芬', '2452', null, '23524', '1');
INSERT INTO `passenger` VALUES ('23', '242', '523524', null, '2352452', '1');
INSERT INTO `passenger` VALUES ('24', 'dfgada', 'adfa', null, 'sdfasdgasg', '1');
INSERT INTO `passenger` VALUES ('25', 'asdfa', 'sdfsa', null, 'dfasdf', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plane
-- ----------------------------
INSERT INTO `plane` VALUES ('1', '737-800', '波音', '13', null, null, null, '1', '2017-04-25 22:28');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ticketprice
-- ----------------------------
INSERT INTO `ticketprice` VALUES ('1', '经济舱', '50', '900', '1', '246', null, '2017-04-25 22:34');
INSERT INTO `ticketprice` VALUES ('2', '商务舱', '60', '1000', '1', '246', null, '2017-04-25 22:52');
INSERT INTO `ticketprice` VALUES ('3', '经济舱', '45', '1600.5', '2', null, null, '2017-04-25 22:52');
INSERT INTO `ticketprice` VALUES ('4', '头等舱', '45', '1500', '2', '246', '200', '2017-04-25 22:52');

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

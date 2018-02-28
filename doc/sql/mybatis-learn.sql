/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50639
Source Host           : localhost:3306
Source Database       : mybatis-learn

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2018-02-26 00:30:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '张三', 'zhangsan@qq.com');
INSERT INTO `sys_user` VALUES ('2', '李四', 'lisi@qq.com');


CREATE TABLE `sys_order` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`user_id`  int(11) NOT NULL ,
`create_time`  datetime NOT NULL ,
PRIMARY KEY (`id`),
CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT
)ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
INSERT INTO `sys_order` (`id`, `user_id`, `create_time`) VALUES ('1', '1', '2018-02-28 11:03:35')
INSERT INTO `sys_order` (`id`, `user_id`, `create_time`) VALUES ('2', '2', '2018-02-28 11:03:53');
INSERT INTO `sys_order` (`id`, `user_id`, `create_time`) VALUES ('3', '1', '2018-02-28 11:04:09');

CREATE TABLE `sys_order_detail` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`order_id`  int(11) NOT NULL ,
`item_id` int(11) NOT NULL,
PRIMARY KEY (`id`),
CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `sys_order` (`id`) ON DELETE RESTRICT,
CONSTRAINT `item_id` FOREIGN KEY (`item_id`) REFERENCES `sys_item` (`id`) ON DELETE RESTRICT
)ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
INSERT INTO `sys_order_detail` (`id`, `order_id`, `item_id`) VALUES ('1', '1', '1');
INSERT INTO `sys_order_detail` (`id`, `order_id`, `item_id`) VALUES ('2', '1', '2');
INSERT INTO `sys_order_detail` (`id`, `order_id`, `item_id`) VALUES ('3', '2', '2');
INSERT INTO `sys_order_detail` (`id`, `order_id`, `item_id`) VALUES ('4', '3', '4');
INSERT INTO `sys_order_detail` (`id`, `order_id`, `item_id`) VALUES ('5', '3', '3');
INSERT INTO `sys_order_detail` (`id`, `order_id`, `item_id`) VALUES ('6', '3', '4');
INSERT INTO `sys_order_detail` (`id`, `order_id`, `item_id`) VALUES ('7', '3', '5');

CREATE TABLE `sys_item` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) NOT NULL ,
`price` double NOT NULL,
PRIMARY KEY (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
INSERT INTO `sys_item` (`id`, `name`, `price`) VALUES ('1', 'Apple iPad mini 4 平板电脑 7.9英寸（128G WLAN版/A8芯片/Retina显示屏/Touch ID技术 MK9P2CH）银色', '2888');
INSERT INTO `sys_item` (`id`, `name`, `price`) VALUES ('2', 'CL 55A950C 55英寸32核人工智能 HDR曲面超薄4K电视金属机身（枪色）', '3888');
INSERT INTO `sys_item` (`id`, `name`, `price`) VALUES ('3', '惠普（HP）暗影精灵3Pro 144Hz 电竞游戏笔记本电脑（i5-7300HQ 8G 128GSSD+1T GTX1050Ti 4G独显 IPS )', '6599');
INSERT INTO `sys_item` (`id`, `name`, `price`) VALUES ('4', 'TP-LINK TL-WDR5620 1200M 5G双频智能无线路由器 四天线智能wifi 稳定穿墙高速家用路由器', '121');
INSERT INTO `sys_item` (`id`, `name`, `price`) VALUES ('5', "意大利袋鼠（L'ALPINA）女包斜挎包韩版单肩包女时尚流苏挂饰潮流链条包休闲手提包 香芋粉", '369');
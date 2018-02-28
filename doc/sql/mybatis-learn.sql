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
INSERT INTO `sys_user` VALUES ('1', '����', 'zhangsan@qq.com');
INSERT INTO `sys_user` VALUES ('2', '����', 'lisi@qq.com');


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
INSERT INTO `sys_item` (`id`, `name`, `price`) VALUES ('1', 'Apple iPad mini 4 ƽ����� 7.9Ӣ�磨128G WLAN��/A8оƬ/Retina��ʾ��/Touch ID���� MK9P2CH����ɫ', '2888');
INSERT INTO `sys_item` (`id`, `name`, `price`) VALUES ('2', 'CL 55A950C 55Ӣ��32���˹����� HDR���泬��4K���ӽ�������ǹɫ��', '3888');
INSERT INTO `sys_item` (`id`, `name`, `price`) VALUES ('3', '���գ�HP����Ӱ����3Pro 144Hz �羺��Ϸ�ʼǱ����ԣ�i5-7300HQ 8G 128GSSD+1T GTX1050Ti 4G���� IPS )', '6599');
INSERT INTO `sys_item` (`id`, `name`, `price`) VALUES ('4', 'TP-LINK TL-WDR5620 1200M 5G˫Ƶ��������·���� ����������wifi �ȶ���ǽ���ټ���·����', '121');
INSERT INTO `sys_item` (`id`, `name`, `price`) VALUES ('5', "���������L'ALPINA��Ů��б������浥���Ůʱ�����չ��γ������������������ �����", '369');
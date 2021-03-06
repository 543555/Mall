/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 08/12/2021 22:41:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mall_category
-- ----------------------------
DROP TABLE IF EXISTS `mall_category`;
CREATE TABLE `mall_category`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '类别Id',
  `parent_id` int(0) NULL DEFAULT NULL COMMENT '父类别id当id=0时说明是根节点,一级类别',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别名称',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '类别状态1-正常,2-已废弃',
  `sort_order` int(0) NULL DEFAULT NULL COMMENT '排序编号,同类展示顺序,数值相等则自然排序',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100051 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_category
-- ----------------------------
INSERT INTO `mall_category` VALUES (100001, 0, '家用电器', 1, 1, '2000-03-25 16:46:00', '2000-03-25 16:46:00');
INSERT INTO `mall_category` VALUES (100002, 0, '数码3C', 1, 2, '2000-03-25 16:46:21', '2000-03-25 16:46:21');
INSERT INTO `mall_category` VALUES (100003, 0, '服装箱包', 1, 1, '2000-03-25 16:49:53', '2000-03-25 16:49:53');
INSERT INTO `mall_category` VALUES (100004, 0, '食品生鲜', 1, 1, '2000-03-25 16:50:19', '2000-03-25 16:50:19');
INSERT INTO `mall_category` VALUES (100005, 0, '酒水饮料', 1, 1, '2000-03-25 16:50:29', '2000-03-25 16:50:29');
INSERT INTO `mall_category` VALUES (100006, 100001, '冰箱', 1, 1, '2000-03-25 16:52:15', '2000-03-25 16:52:15');
INSERT INTO `mall_category` VALUES (100007, 100001, '电视', 1, 2, '2000-03-25 16:52:26', '2000-03-25 16:52:26');
INSERT INTO `mall_category` VALUES (100008, 100001, '洗衣机', 1, 1, '2000-03-25 16:52:39', '2000-03-25 16:52:39');
INSERT INTO `mall_category` VALUES (100009, 100001, '空调', 1, 1, '2000-03-25 16:52:45', '2000-03-25 16:52:45');
INSERT INTO `mall_category` VALUES (100010, 100001, '电热水器', 1, 1, '2000-03-25 16:52:54', '2000-03-25 16:52:54');
INSERT INTO `mall_category` VALUES (100011, 100002, '电脑', 1, 1, '2000-03-25 16:53:18', '2000-03-25 16:53:18');
INSERT INTO `mall_category` VALUES (100012, 100002, '手机', 1, 1, '2000-03-25 16:53:27', '2000-03-25 16:53:27');
INSERT INTO `mall_category` VALUES (100013, 100002, '平板电脑', 1, 1, '2000-03-25 16:53:35', '2000-03-25 16:53:35');
INSERT INTO `mall_category` VALUES (100014, 100002, '数码相机', 1, 1, '2000-03-25 16:53:56', '2000-03-25 16:53:56');
INSERT INTO `mall_category` VALUES (100015, 100002, '3C配件', 1, 1, '2000-03-25 16:54:07', '2000-03-25 16:54:07');
INSERT INTO `mall_category` VALUES (100016, 100003, '女装', 1, 1, '2000-03-25 16:54:44', '2000-03-25 16:54:44');
INSERT INTO `mall_category` VALUES (100017, 100003, '帽子', 1, 1, '2000-03-25 16:54:51', '2000-03-25 16:54:51');
INSERT INTO `mall_category` VALUES (100018, 100003, '旅行箱', 1, 1, '2000-03-25 16:55:02', '2000-03-25 16:55:02');
INSERT INTO `mall_category` VALUES (100019, 100003, '手提包', 1, 1, '2000-03-25 16:55:09', '2000-03-25 16:55:09');
INSERT INTO `mall_category` VALUES (100020, 100003, '保暖内衣', 1, 1, '2000-03-25 16:55:18', '2000-03-25 16:55:18');
INSERT INTO `mall_category` VALUES (100021, 100004, '零食', 1, 1, '2000-03-25 16:55:30', '2000-03-25 16:55:30');
INSERT INTO `mall_category` VALUES (100022, 100004, '生鲜', 1, 1, '2000-03-25 16:55:37', '2000-03-25 16:55:37');
INSERT INTO `mall_category` VALUES (100023, 100004, '半成品菜', 1, 1, '2000-03-25 16:55:47', '2000-03-25 16:55:47');
INSERT INTO `mall_category` VALUES (100024, 100004, '速冻食品', 1, 1, '2000-03-25 16:55:56', '2000-03-25 16:55:56');
INSERT INTO `mall_category` VALUES (100025, 100004, '进口食品', 1, 1, '2000-03-25 16:56:06', '2000-03-25 16:56:06');
INSERT INTO `mall_category` VALUES (100026, 100005, '白酒', 1, 1, '2000-03-25 16:56:22', '2000-03-25 16:56:22');
INSERT INTO `mall_category` VALUES (100027, 100005, '红酒', 1, 1, '2000-03-25 16:56:30', '2000-03-25 16:56:30');
INSERT INTO `mall_category` VALUES (100028, 100005, '饮料', 1, 1, '2000-03-25 16:56:37', '2000-03-25 16:56:37');
INSERT INTO `mall_category` VALUES (100029, 100005, '调制鸡尾酒', 1, 1, '2000-03-25 16:56:45', '2000-03-25 16:56:45');
INSERT INTO `mall_category` VALUES (100030, 100005, '进口洋酒', 1, 1, '2000-03-25 16:57:05', '2000-03-25 16:57:05');
INSERT INTO `mall_category` VALUES (100040, 100006, '进口冰箱', 1, 1, NULL, NULL);
INSERT INTO `mall_category` VALUES (100050, 100040, '进口德国冰箱', 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for mall_order
-- ----------------------------
DROP TABLE IF EXISTS `mall_order`;
CREATE TABLE `mall_order`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_no` bigint(0) NULL DEFAULT NULL COMMENT '订单号',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户id',
  `shipping_id` int(0) NULL DEFAULT NULL,
  `payment` decimal(20, 2) NULL DEFAULT NULL COMMENT '实际付款金额,单位是元,保留两位小数',
  `payment_type` int(0) NULL DEFAULT NULL COMMENT '支付类型,1-在线支付',
  `postage` int(0) NULL DEFAULT NULL COMMENT '运费,单位是元',
  `status` int(0) NULL DEFAULT NULL COMMENT '订单状态:0-已取消-10-未付款，20-已付款，40-已发货，50-交易成功，60-交易关闭',
  `payment_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `send_time` datetime(0) NULL DEFAULT NULL COMMENT '发货时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '交易完成时间',
  `close_time` datetime(0) NULL DEFAULT NULL COMMENT '交易关闭时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_no_index`(`order_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_order
-- ----------------------------
INSERT INTO `mall_order` VALUES (4, 1638878086896, 1, 4, 6999.00, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `mall_order` VALUES (8, 1638883644949, 1, 4, 10298.00, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `mall_order` VALUES (9, 1638883917634, 1, 4, 10298.00, 1, 0, 0, NULL, NULL, NULL, '2021-12-07 13:33:19', NULL, NULL);
INSERT INTO `mall_order` VALUES (10, 1638884638836, 1, 4, 13998.00, 1, 0, 0, NULL, NULL, NULL, '2021-12-07 13:44:54', NULL, NULL);

-- ----------------------------
-- Table structure for mall_order_item
-- ----------------------------
DROP TABLE IF EXISTS `mall_order_item`;
CREATE TABLE `mall_order_item`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '订单子表id',
  `user_id` int(0) NULL DEFAULT NULL,
  `order_no` bigint(0) NULL DEFAULT NULL,
  `product_id` int(0) NULL DEFAULT NULL COMMENT '商品id',
  `product_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `product_image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片地址',
  `current_unit_price` decimal(20, 2) NULL DEFAULT NULL COMMENT '生成订单时的商品单价，单位是元,保留两位小数',
  `quantity` int(0) NULL DEFAULT NULL COMMENT '商品数量',
  `total_price` decimal(20, 2) NULL DEFAULT NULL COMMENT '商品总价,单位是元,保留两位小数',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_no_index`(`order_no`) USING BTREE,
  INDEX `order_no_user_id_index`(`user_id`, `order_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_order_item
-- ----------------------------
INSERT INTO `mall_order_item` VALUES (2, 1, 1638878086896, 26, 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', 6999.00, 1, 6999.00, NULL, NULL);
INSERT INTO `mall_order_item` VALUES (6, 1, 1638883644949, 26, 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', 6999.00, 1, 6999.00, NULL, NULL);
INSERT INTO `mall_order_item` VALUES (7, 1, 1638883644949, 27, 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', 3299.00, 1, 3299.00, NULL, NULL);
INSERT INTO `mall_order_item` VALUES (8, 1, 1638883917634, 27, 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', 3299.00, 1, 3299.00, NULL, NULL);
INSERT INTO `mall_order_item` VALUES (9, 1, 1638883917634, 26, 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', 6999.00, 1, 6999.00, NULL, NULL);
INSERT INTO `mall_order_item` VALUES (10, 1, 1638884638836, 26, 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', 6999.00, 2, 13998.00, NULL, NULL);

-- ----------------------------
-- Table structure for mall_pay_info
-- ----------------------------
DROP TABLE IF EXISTS `mall_pay_info`;
CREATE TABLE `mall_pay_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户id',
  `order_no` bigint(0) NULL DEFAULT NULL COMMENT '订单号',
  `pay_platform` int(0) NULL DEFAULT NULL COMMENT '支付平台:1-支付宝,2-微信',
  `platform_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付宝支付流水号',
  `platform_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付宝支付状态',
  `pay_amount` decimal(20, 2) NOT NULL COMMENT '支付金额',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mall_product
-- ----------------------------
DROP TABLE IF EXISTS `mall_product`;
CREATE TABLE `mall_product`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `category_id` int(0) NOT NULL COMMENT '分类id,对应mall_category表的主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品副标题',
  `main_image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品主图,url相对地址',
  `sub_images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片地址,json格式,扩展用',
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品详情',
  `price` decimal(20, 2) NOT NULL COMMENT '价格,单位-元保留两位小数',
  `stock` int(0) NOT NULL COMMENT '库存数量',
  `status` int(0) NULL DEFAULT 1 COMMENT '商品状态.1-在售 2-下架 3-删除',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_product
-- ----------------------------
INSERT INTO `mall_product` VALUES (26, 100002, 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', 'iPhone 7，现更以红色呈现。', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg,b6c56eb0-1748-49a9-98dc-bcc4b9788a54.jpeg,92f17532-1527-4563-aa1d-ed01baa0f7b2.jpeg,3adbe4f7-e374-4533-aa79-cc4a98c529bf.jpeg', '<p><img alt=\"10000.jpg\" src=\"http://img.springboot.cn/00bce8d4-e9af-4c8d-b205-e6c75c7e252b.jpg\" width=\"790\" height=\"553\"><br></p><p><img alt=\"20000.jpg\" src=\"http://img.springboot.cn/4a70b4b4-01ee-46af-9468-31e67d0995b8.jpg\" width=\"790\" height=\"525\"><br></p><p><img alt=\"30000.jpg\" src=\"http://img.springboot.cn/0570e033-12d7-49b2-88f3-7a5d84157223.jpg\" width=\"790\" height=\"365\"><br></p><p><img alt=\"40000.jpg\" src=\"http://img.springboot.cn/50515c02-3255-44b9-a829-9e141a28c08a.jpg\" width=\"790\" height=\"525\"><br></p><p><img alt=\"50000.jpg\" src=\"http://img.springboot.cn/c138fc56-5843-4287-a029-91cf3732d034.jpg\" width=\"790\" height=\"525\"><br></p><p><img alt=\"60000.jpg\" src=\"http://img.springboot.cn/c92d1f8a-9827-453f-9d37-b10a3287e894.jpg\" width=\"790\" height=\"525\"><br></p><p><br></p><p><img alt=\"TB24p51hgFkpuFjSspnXXb4qFXa-1776456424.jpg\" src=\"http://img.springboot.cn/bb1511fc-3483-471f-80e5-c7c81fa5e1dd.jpg\" width=\"790\" height=\"375\"><br></p><p><br></p><p><img alt=\"shouhou.jpg\" src=\"http://img.springboot.cn/698e6fbe-97ea-478b-8170-008ad24030f7.jpg\" width=\"750\" height=\"150\"><br></p><p><img alt=\"999.jpg\" src=\"http://img.springboot.cn/ee276fe6-5d79-45aa-8393-ba1d210f9c89.jpg\" width=\"790\" height=\"351\"><br></p>', 6999.00, 91, 1, '2000-04-01 22:34:48', '2000-04-13 21:45:41');
INSERT INTO `mall_product` VALUES (27, 100006, 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', '送品牌烤箱，五一大促', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg,4bb02f1c-62d5-48cc-b358-97b05af5740d.jpeg,36bdb49c-72ae-4185-9297-78829b54b566.jpeg', '<p><img alt=\"miaoshu.jpg\" src=\"http://img.springboot.cn/9c5c74e6-6615-4aa0-b1fc-c17a1eff6027.jpg\" width=\"790\" height=\"444\"><br></p><p><img alt=\"miaoshu2.jpg\" src=\"http://img.springboot.cn/31dc1a94-f354-48b8-a170-1a1a6de8751b.jpg\" width=\"790\" height=\"1441\"><img alt=\"miaoshu3.jpg\" src=\"http://img.springboot.cn/7862594b-3063-4b52-b7d4-cea980c604e0.jpg\" width=\"790\" height=\"1442\"><img alt=\"miaoshu4.jpg\" src=\"http://img.springboot.cn/9a650563-dc85-44d6-b174-d6960cfb1d6a.jpg\" width=\"790\" height=\"1441\"><br></p>', 3299.00, 97, 1, '2000-04-13 18:51:54', '2000-04-13 21:45:41');
INSERT INTO `mall_product` VALUES (28, 100012, '4+64G送手环/Huawei/华为 nova 手机P9/P10plus青春', 'NOVA青春版1999元', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg,13da2172-4445-4eb5-a13f-c5d4ede8458c.jpeg,58d5d4b7-58d4-4948-81b6-2bae4f79bf02.jpeg', '<p><img alt=\"11TB2fKK3cl0kpuFjSsziXXa.oVXa_!!1777180618.jpg\" src=\"http://img.springboot.cn/5c2d1c6d-9e09-48ce-bbdb-e833b42ff664.jpg\" width=\"790\" height=\"966\"><img alt=\"22TB2YP3AkEhnpuFjSZFpXXcpuXXa_!!1777180618.jpg\" src=\"http://img.springboot.cn/9a10b877-818f-4a27-b6f7-62887f3fb39d.jpg\" width=\"790\" height=\"1344\"><img alt=\"33TB2Yyshk.hnpuFjSZFpXXcpuXXa_!!1777180618.jpg\" src=\"http://img.springboot.cn/7d7fbd69-a3cb-4efe-8765-423bf8276e3e.jpg\" width=\"790\" height=\"700\"><img alt=\"TB2diyziB8kpuFjSspeXXc7IpXa_!!1777180618.jpg\" src=\"http://img.springboot.cn/1d7160d2-9dba-422f-b2a0-e92847ba6ce9.jpg\" width=\"790\" height=\"393\"><br></p>', 1999.00, 100, 1, '2000-04-13 18:57:18', '2000-04-13 21:45:41');
INSERT INTO `mall_product` VALUES (29, 100008, 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '门店机型 德邦送货', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg,42b1b8bc-27c7-4ee1-80ab-753d216a1d49.jpeg,2f1b3de1-1eb1-4c18-8ca2-518934931bec.jpeg', '<p><img alt=\"1TB2WLZrcIaK.eBjSspjXXXL.XXa_!!2114960396.jpg\" src=\"http://img.springboot.cn/ffcce953-81bd-463c-acd1-d690b263d6df.jpg\" width=\"790\" height=\"920\"><img alt=\"2TB2zhOFbZCO.eBjSZFzXXaRiVXa_!!2114960396.jpg\" src=\"http://img.springboot.cn/58a7bd25-c3e7-4248-9dba-158ef2a90e70.jpg\" width=\"790\" height=\"1052\"><img alt=\"3TB27mCtb7WM.eBjSZFhXXbdWpXa_!!2114960396.jpg\" src=\"http://img.springboot.cn/2edbe9b3-28be-4a8b-a9c3-82e40703f22f.jpg\" width=\"790\" height=\"820\"><br></p>', 4299.00, 100, 1, '2000-04-13 19:07:47', '2000-04-13 21:45:41');

-- ----------------------------
-- Table structure for mall_shipping
-- ----------------------------
DROP TABLE IF EXISTS `mall_shipping`;
CREATE TABLE `mall_shipping`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户id',
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货姓名',
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货固定电话',
  `receiver_mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货移动电话',
  `receiver_province` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份',
  `receiver_city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `receiver_district` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区/县',
  `receiver_address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `receiver_zip` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮编',
  `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_shipping
-- ----------------------------
INSERT INTO `mall_shipping` VALUES (4, 1, '陈先生', '010', '123456789', '广东省', '广州市', '海珠区', '华南理工大学', '100000', '2000-01-22 14:26:25', '2000-01-22 14:26:25');
INSERT INTO `mall_shipping` VALUES (29, 1, '陈大浩', '0209394959', '12345678910', '广东省', '杭州市', '番禺区', '华南鲤鱼大学', '600000', NULL, NULL);
INSERT INTO `mall_shipping` VALUES (30, 1, '陈中浩', '0209394959', '12345678910', '广东省', '肇庆', '端州区', '华南水鱼大学', '620000', NULL, NULL);
INSERT INTO `mall_shipping` VALUES (31, 1, '陈大浩', '0209394959', '12345678910', '广东省', '广东', '番禺区', '华南鲤鱼大学', '600000', NULL, NULL);
INSERT INTO `mall_shipping` VALUES (32, 1, '陈大浩', '0209394959', '12345678910', '广东省', '广东', '番禺区', '华南鲤鱼大学', '600000', NULL, NULL);
INSERT INTO `mall_shipping` VALUES (33, 1, '陈大浩', '0209394959', '12345678910', '广东省', '广东', '番禺区', '华南鲤鱼大学', '600000', NULL, NULL);

-- ----------------------------
-- Table structure for mall_test
-- ----------------------------
DROP TABLE IF EXISTS `mall_test`;
CREATE TABLE `mall_test`  (
  `mall_test` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mall_user
-- ----------------------------
DROP TABLE IF EXISTS `mall_user`;
CREATE TABLE `mall_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '用户表id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码，MD5加密',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `question` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '找回密码问题',
  `answer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '找回密码答案',
  `role` int(0) NOT NULL COMMENT '角色0-管理员,1-普通用户',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_name_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_user
-- ----------------------------
INSERT INTO `mall_user` VALUES (1, 'admin', '21232F297A57A5A743894A0E4A801FC3', 'admin@qq.com', NULL, NULL, NULL, 0, '2000-08-06 15:12:00', '2000-08-06 15:12:00');

SET FOREIGN_KEY_CHECKS = 1;

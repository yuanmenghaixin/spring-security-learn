/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : spring-authority

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2017-08-03 16:00:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_authorities
-- ----------------------------
DROP TABLE IF EXISTS `sys_authorities`;
CREATE TABLE `sys_authorities` (
  `id` char(32) NOT NULL,
  `authority_name` varchar(45) NOT NULL COMMENT '权限名称',
  `authority_desc` varchar(45) DEFAULT NULL COMMENT '权限排序',
  `authority_code` varchar(45) NOT NULL COMMENT '权限编码',
  `is_enabled` tinyint(1) NOT NULL COMMENT '是否可用',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user_id` char(36) DEFAULT NULL COMMENT '创建用户ID',
  `is_sys` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统权限';

-- ----------------------------
-- Records of sys_authorities
-- ----------------------------
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bb8e5013b9bbc9efc0002', '登陆权限', '登陆权限', 'AUTH_LOGIN', '1', '2012-12-15 07:25:28', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bb8e5013b9bc297b40003', '用户管理', '用户管理', 'AUTH_USER_LIST', '1', '2012-12-15 07:31:59', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bb8e5013b9bc321a40004', '添加用户', '添加用户', 'AUTH_USER_ADD', '1', '2012-12-15 07:32:34', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bc6f9700000', '删除用户', '删除用户', 'AUTH_USER_DELETE', '1', '2012-12-15 07:36:43', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bc7673e0001', '用户角色', '用户角色', 'AUTH_USER_ROLE_LIST', '1', '2012-12-15 07:37:12', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bc82d580002', '添加用户角色', '添加用户角色', 'AUTH_USER_ROLE_ADD', '1', '2012-12-15 07:38:03', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bc892900003', '删除用户角色', '删除用户角色', 'AUTH_USER_ROLE_DELETE', '1', '2012-12-15 07:38:31', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bc935f00004', '角色管理', '角色管理', 'AUTH_ROLE_LIST', '1', '2012-12-15 07:39:13', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bc993d10005', '添加角色', '添加角色', 'AUTH_ROLE_ADD', '1', '2012-12-15 07:39:37', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bc9f3b20006', '删除角色', '删除角色', 'AUTH_ROLE_DELETE', '1', '2012-12-15 07:40:01', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bca6a290007', '修改角色', '修改角色', 'AUTH_ROLE_EDIT', '1', '2012-12-15 07:40:32', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bcb38900008', '角色权限', '角色权限', 'AUTH_ROLE_AUTHORITY_LIST', '1', '2012-12-15 07:41:25', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bcbd69d0009', '添加角色权限', '添加角色权限', 'AUTH_ROLE_AUTHORITY_ADD', '1', '2012-12-15 07:42:05', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bcc55a8000a', '删除角色权限', '删除角色权限', 'AUTH_ROLE_AUTHORITY_DELETE', '1', '2012-12-15 07:42:37', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bcf7d43000b', '权限管理', '权限管理', 'AUTH_AUTH_LIST', '1', '2012-12-15 07:46:02', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bd02004000c', '添加权限', '添加权限', 'AUTH_AUTH_ADD', '1', '2012-12-15 07:46:46', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bd072f3000d', '删除权限', '删除权限', 'AUTH_AUTH_DELETE', '1', '2012-12-15 07:47:07', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bd0e77d000e', '修改权限', '修改权限', 'AUTH_AUTH_EDIT', '1', '2012-12-15 07:47:37', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bd1427c000f', '权限资源管理', '权限资源管理', 'AUTH_AUTH_RESOUCES_LIST', '1', '2012-12-15 07:48:00', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bd189e20010', '权限资源添加', '权限资源添加', 'AUTH_AUTH_RESOUCES_ADD', '1', '2012-12-15 07:48:19', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bd1e6c20011', '权限资源删除', '权限资源删除', 'AUTH_AUTH_RESOUCES_DELETE', '1', '2012-12-15 07:48:42', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bd246980012', '资源管理', '资源管理', 'AUTH_RESOUCES_LIST', '1', '2012-12-15 07:49:07', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bd299d30013', '添加资源', '添加资源', 'AUTH_RESOUCES_ADD', '1', '2012-12-15 07:49:28', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bd352030014', '删除资源', '删除资源', 'AUTH_RESOUCES_DELETE', '1', '2012-12-15 07:50:15', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3b9bc620013b9bd3af6f0015', '修改资源', '修改资源', 'AUTH_RESOUCES_EDIT', '1', '2012-12-15 07:50:39', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('297ee8ae3ba0f16d013ba0f466ec0000', '用户编辑', '用户编辑', 'AUTH_USER_EDIT', '1', '2012-12-16 07:44:29', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('402881e43cf29f70013cf2c169580022', '图标战士', '', 'AUTH_SYS_ICON_VIEW', '1', '2013-02-19 22:00:27', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('4028d1813bc263ac013bc2686c8b0007', '菜单管理', '菜单管理', 'AUTH_MENU_LIST', '1', '2012-12-22 19:38:41', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('4028d1813bc263ac013bc268c36b0008', '添加菜单', '添加菜单', 'AUTH_MENU_ADD', '1', '2012-12-22 19:39:03', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('4028d1813bc263ac013bc26949800009', '删除菜单', '删除菜单', 'AUTH_MENU_DELETE', '1', '2012-12-22 19:39:38', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('4028d1813bc263ac013bc2699e41000a', '角色菜单管理', '角色菜单管理', 'AUTH_ROLEMENU_LIST', '1', '2012-12-22 19:39:59', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('4028d1813bc263ac013bc26a04a5000b', '创建角色菜单', '创建角色菜单', 'AUTH_ROLEMENU_CREATE', '1', '2012-12-22 19:40:26', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('4028d1813bc263ac013bc26ba6a6000c', '修改菜单', '修改菜单', 'AUTH_MENU_EDIT', '1', '2012-12-22 19:42:13', '11111111111111111111111111111111', '0');
INSERT INTO `sys_authorities` VALUES ('4028d1813bdc7bde013bdc7e95f80002', '登陆日志查看', '登陆日志查看', 'AUTH_LOGINLOG_LIST', '1', '2012-12-27 21:13:01', '11111111111111111111111111111111', '0');

-- ----------------------------
-- Table structure for sys_authorities_resources
-- ----------------------------
DROP TABLE IF EXISTS `sys_authorities_resources`;
CREATE TABLE `sys_authorities_resources` (
  `authority_id` char(32) NOT NULL,
  `resource_id` char(32) NOT NULL,
  KEY `fk_sys_authorities_resources_sys_authorities1_idx` (`authority_id`),
  KEY `fk_sys_authorities_resources_sys_authorities_resources1_idx` (`resource_id`),
  CONSTRAINT `fk_sys_authorities_resources_sys_authorities1` FOREIGN KEY (`authority_id`) REFERENCES `sys_authorities` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_sys_authorities_resources_sys_authorities_resources1` FOREIGN KEY (`resource_id`) REFERENCES `sys_resources` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_authorities_resources
-- ----------------------------
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bb8e5013b9bc297b40003', '11111111111111111111111111111113');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bb8e5013b9bc321a40004', '11111111111111111111111111111111');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bc620013b9bc6f9700000', '11111111111111111111111111111112');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bc620013b9bc7673e0001', '297ee8ae3b996071013b996150cb0000');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bc620013b9bc82d580002', '297ee8ae3b996071013b9962379b0001');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bc620013b9bc892900003', '297ee8ae3b996071013b9962a0470002');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bc620013b9bc935f00004', '297ee8ae3b996949013b996f92290000');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bc620013b9bc993d10005', '297ee8ae3b996949013b996fe0150001');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bc620013b9bc9f3b20006', '297ee8ae3b996949013b997047c40002');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bc620013b9bcb38900008', '297ee8ae3b996949013b9971b4240003');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bc620013b9bcbd69d0009', '297ee8ae3b996949013b9975393c0005');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bc620013b9bcc55a8000a', '297ee8ae3b996949013b997489ad0004');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bc620013b9bcf7d43000b', '297ee8ae3b996949013b9979e1230007');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bc620013b9bd02004000c', '297ee8ae3b996949013b997a6f210008');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bc620013b9bd072f3000d', '297ee8ae3b996949013b997ae9bf0009');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bc620013b9bd1427c000f', '297ee8ae3b996949013b997c1316000a');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bc620013b9bd189e20010', '297ee8ae3b996949013b997cdcb8000c');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bc620013b9bd1e6c20011', '297ee8ae3b996949013b997c74f6000b');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bc620013b9bd246980012', '297ee8ae3b996949013b997dc178000d');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bc620013b9bd299d30013', '297ee8ae3b996949013b997e44c6000e');
INSERT INTO `sys_authorities_resources` VALUES ('297ee8ae3b9bc620013b9bd352030014', '297ee8ae3b996949013b997eae5a000f');
INSERT INTO `sys_authorities_resources` VALUES ('4028d1813bc263ac013bc2686c8b0007', '4028d1813bc263ac013bc264183b0000');
INSERT INTO `sys_authorities_resources` VALUES ('4028d1813bc263ac013bc268c36b0008', '4028d1813bc263ac013bc264ac690001');
INSERT INTO `sys_authorities_resources` VALUES ('4028d1813bc263ac013bc26949800009', '4028d1813bc263ac013bc2660fee0004');
INSERT INTO `sys_authorities_resources` VALUES ('4028d1813bc263ac013bc2699e41000a', '4028d1813bc263ac013bc26714580005');
INSERT INTO `sys_authorities_resources` VALUES ('4028d1813bc263ac013bc26a04a5000b', '4028d1813bc263ac013bc267b48f0006');
INSERT INTO `sys_authorities_resources` VALUES ('4028d1813bc263ac013bc26ba6a6000c', '4028d1813bc263ac013bc2659cae0003');
INSERT INTO `sys_authorities_resources` VALUES ('4028d1813bdc7bde013bdc7e95f80002', '4028d1813bdc7bde013bdc7dda250001');

-- ----------------------------
-- Table structure for sys_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_menus`;
CREATE TABLE `sys_menus` (
  `id` char(32) NOT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT '名称',
  `icon_style` varchar(45) DEFAULT NULL COMMENT '图标',
  `code` varchar(45) DEFAULT NULL COMMENT '编码',
  `parent_id` char(32) DEFAULT NULL COMMENT '父节点ID',
  `source_id` char(32) DEFAULT NULL COMMENT '资源ID',
  `menu_index` int(11) DEFAULT NULL COMMENT '排序',
  `deep` int(11) DEFAULT NULL COMMENT '深度',
  `role_id` char(32) DEFAULT NULL COMMENT '角色ID',
  `sys` tinyint(1) DEFAULT NULL COMMENT '是否是系统资源',
  `url` varchar(200) DEFAULT NULL COMMENT '请求路径',
  PRIMARY KEY (`id`),
  KEY `fk_sys_menus_menus` (`parent_id`),
  KEY `fk_sys_menu_resouces` (`source_id`),
  CONSTRAINT `fk_sys_menu_resouces` FOREIGN KEY (`source_id`) REFERENCES `sys_resources` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_sys_menus_menus` FOREIGN KEY (`parent_id`) REFERENCES `sys_menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Records of sys_menus
-- ----------------------------
INSERT INTO `sys_menus` VALUES ('402881e43bbdad6e013bbdae52bc0000', '系统管理', 'm-sys-manger', null, null, null, '1', '1', null, '0', null);
INSERT INTO `sys_menus` VALUES ('402881e43bbdc946013bbdca29670000', '用户管理', 'm-user-mananger', null, '402881e43bbdad6e013bbdae52bc0000', '11111111111111111111111111111113', '1', '2', null, '0', null);
INSERT INTO `sys_menus` VALUES ('402881e43bbdc946013bbde0b9820001', '角色管理', 'm-role-manager', null, '402881e43bbdad6e013bbdae52bc0000', '297ee8ae3b996949013b996f92290000', '2', '2', null, '0', null);
INSERT INTO `sys_menus` VALUES ('402881e43bbdc946013bbde0ef750002', '权限管理', 'm-authority', null, '402881e43bbdad6e013bbdae52bc0000', '297ee8ae3b996949013b9979e1230007', '3', '2', null, '0', null);
INSERT INTO `sys_menus` VALUES ('402881e43bbdc946013bbde132220003', '模块管理', 'm-module', null, '402881e43bbdad6e013bbdae52bc0000', '297ee8ae3b996949013b997dc178000d', '4', '2', null, '0', null);
INSERT INTO `sys_menus` VALUES ('4028d1813bc263ac013bc26e9c540017', '菜单管理', 'm-menu-manager', null, '402881e43bbdad6e013bbdae52bc0000', '4028d1813bc263ac013bc264183b0000', '5', '2', null, '0', null);
INSERT INTO `sys_menus` VALUES ('4028d1813bc263ac013bc26edb220018', '角色菜单管理', 'm-role-menu-manager', null, '402881e43bbdad6e013bbdae52bc0000', '4028d1813bc263ac013bc26714580005', '6', '2', null, '0', null);
INSERT INTO `sys_menus` VALUES ('4028d1813bdc7bde013bdc802c560003', '登陆日志查看', 'm-sys-log', null, '402881e43bbdad6e013bbdae52bc0000', '4028d1813bdc7bde013bdc7dda250001', '8', '2', null, '1', null);

-- ----------------------------
-- Table structure for sys_resources
-- ----------------------------
DROP TABLE IF EXISTS `sys_resources`;
CREATE TABLE `sys_resources` (
  `id` char(32) NOT NULL,
  `resource_name` varchar(45) DEFAULT NULL COMMENT '资源名称',
  `resource_desc` varchar(45) DEFAULT NULL COMMENT '资源排序',
  `resource_type` int(11) DEFAULT NULL COMMENT '资源类型',
  `resource_path` varchar(255) NOT NULL COMMENT '资源路径',
  `is_enabled` tinyint(1) DEFAULT NULL COMMENT '是否可用',
  `priority` varchar(45) DEFAULT NULL,
  `is_sys` tinyint(1) NOT NULL,
  `parent_id` char(32) DEFAULT NULL,
  `creator_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_sys_resources_1_idx` (`parent_id`),
  KEY `fk_sys_resouces_resouces` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统资源表';

-- ----------------------------
-- Records of sys_resources
-- ----------------------------
INSERT INTO `sys_resources` VALUES ('11111111111111111111111111111111', '添加用户', '添加用户', null, '/admin/user/add', '1', null, '0', '11111111111111111111111111111113', null);
INSERT INTO `sys_resources` VALUES ('11111111111111111111111111111112', '删除用户', '删除用户', null, '/admin/user/delete', '1', null, '0', '11111111111111111111111111111113', null);
INSERT INTO `sys_resources` VALUES ('11111111111111111111111111111113', '用户管理', '用户信息列表', null, '/admin/user/list', '1', null, '0', null, null);
INSERT INTO `sys_resources` VALUES ('297ee8ae3b996071013b996150cb0000', '用户角色列表', '用户角色列表', null, '/admin/user/role/list', '1', null, '0', '11111111111111111111111111111113', null);
INSERT INTO `sys_resources` VALUES ('297ee8ae3b996071013b9962379b0001', '添加用户角色', '添加用户角色', null, '/admin/user/role/add', '1', null, '0', '297ee8ae3b996071013b996150cb0000', null);
INSERT INTO `sys_resources` VALUES ('297ee8ae3b996071013b9962a0470002', '删除用户角色', '删除用户角色', null, '/admin/user/role/delete', '1', null, '0', '297ee8ae3b996071013b996150cb0000', null);
INSERT INTO `sys_resources` VALUES ('297ee8ae3b996949013b996f92290000', '角色列表', '角色列表', null, '/admin/role/list', '1', null, '0', null, null);
INSERT INTO `sys_resources` VALUES ('297ee8ae3b996949013b996fe0150001', '添加角色', '添加角色', null, '/admin/role/add', '1', null, '0', '297ee8ae3b996949013b996f92290000', null);
INSERT INTO `sys_resources` VALUES ('297ee8ae3b996949013b997047c40002', '删除角色', '删除角色', null, '/admin/role/delete', '1', null, '0', '297ee8ae3b996949013b996f92290000', null);
INSERT INTO `sys_resources` VALUES ('297ee8ae3b996949013b9971b4240003', '角色权限列表', '角色权限列表', null, '/admin/use/authority', '1', null, '0', '297ee8ae3b996949013b996f92290000', null);
INSERT INTO `sys_resources` VALUES ('297ee8ae3b996949013b997489ad0004', '删除角色权限', '删除角色权限', null, '/admin/use/authority/delete', '1', null, '0', '297ee8ae3b996949013b9971b4240003', null);
INSERT INTO `sys_resources` VALUES ('297ee8ae3b996949013b9975393c0005', '添加角色权限', '添加角色权限', null, '/admin/use/authority/add', '1', null, '0', '297ee8ae3b996949013b9971b4240003', null);
INSERT INTO `sys_resources` VALUES ('297ee8ae3b996949013b9979e1230007', '权限管理-列表', '权限列表', null, '/admin/authority/list', '1', null, '0', null, null);
INSERT INTO `sys_resources` VALUES ('297ee8ae3b996949013b997a6f210008', '添加权限', '添加权限', null, '/admin/authority/add', '1', null, '0', '297ee8ae3b996949013b9979e1230007', null);
INSERT INTO `sys_resources` VALUES ('297ee8ae3b996949013b997ae9bf0009', '删除权限', '删除权限', null, '/admin/authority/delete', '1', null, '0', '297ee8ae3b996949013b9979e1230007', null);
INSERT INTO `sys_resources` VALUES ('297ee8ae3b996949013b997c1316000a', '权限资源', '权限资源', null, '/admin/authority/resouces', '1', null, '0', '297ee8ae3b996949013b9979e1230007', null);
INSERT INTO `sys_resources` VALUES ('297ee8ae3b996949013b997c74f6000b', '删除权限资源', '删除权限资源', null, '/admin/authority/resouces/delete', '1', null, '0', '297ee8ae3b996949013b997c1316000a', null);
INSERT INTO `sys_resources` VALUES ('297ee8ae3b996949013b997cdcb8000c', '添加权限资源', '添加权限资源', null, '/admin/authority/resouces/add', '1', null, '0', '297ee8ae3b996949013b997c1316000a', null);
INSERT INTO `sys_resources` VALUES ('297ee8ae3b996949013b997dc178000d', '系统资源管理', '系统资源管理', null, '/admin/resouces/list', '1', null, '0', null, null);
INSERT INTO `sys_resources` VALUES ('297ee8ae3b996949013b997e44c6000e', '添加资源', '添加资源', null, '/admin/resouces/add', '1', null, '0', '297ee8ae3b996949013b997dc178000d', null);
INSERT INTO `sys_resources` VALUES ('297ee8ae3b996949013b997eae5a000f', '删除资源', '删除资源', null, '/admin/resouces/delete', '1', null, '0', '297ee8ae3b996949013b997dc178000d', null);
INSERT INTO `sys_resources` VALUES ('4028d1813bc263ac013bc264183b0000', '菜单管理', '菜单管理', null, '/admin/menu/list', '1', null, '0', null, null);
INSERT INTO `sys_resources` VALUES ('4028d1813bc263ac013bc264ac690001', '添加菜单', '添加菜单', null, '/admin/menu/add', '1', null, '0', '4028d1813bc263ac013bc264183b0000', null);
INSERT INTO `sys_resources` VALUES ('4028d1813bc263ac013bc2659cae0003', '修改菜单', '修改菜单', null, '/admin/menu/edit', '1', null, '0', '4028d1813bc263ac013bc264183b0000', null);
INSERT INTO `sys_resources` VALUES ('4028d1813bc263ac013bc2660fee0004', '删除菜单', '删除菜单', null, '/admin/menu/delete', '1', null, '0', '4028d1813bc263ac013bc264183b0000', null);
INSERT INTO `sys_resources` VALUES ('4028d1813bc263ac013bc26714580005', '角色菜单管理', '角色菜单管理', null, '/admin/rolemenu/list', '1', null, '0', null, null);
INSERT INTO `sys_resources` VALUES ('4028d1813bc263ac013bc267b48f0006', '生成角色菜单', '生成角色菜单', null, '/admin/rolemenu/autocreate', '1', null, '0', '4028d1813bc263ac013bc26714580005', null);
INSERT INTO `sys_resources` VALUES ('4028d1813bdc7bde013bdc7dda250001', '登陆日志管理', '登陆日志管理', null, '/admin/loginlog/list', '1', null, '0', null, null);

-- ----------------------------
-- Table structure for sys_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles` (
  `id` char(32) NOT NULL,
  `role_name` varchar(45) DEFAULT NULL COMMENT '角色名称',
  `role_desc` varchar(45) NOT NULL COMMENT '角色排序',
  `data_level` int(11) NOT NULL COMMENT '数据权限',
  `is_enabled` tinyint(1) NOT NULL COMMENT '是否可用',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user_id` char(32) DEFAULT NULL COMMENT '创建人',
  `is_sys` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色';

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES ('297ee8ae3b84c24b013b84c71fd60000', '用户管理员', '用户管理员', '0', '1', '2013-02-09 17:03:29', '11111111111111111111111111111111', '0');
INSERT INTO `sys_roles` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '超级管理员', '超级管理员', '1', '1', '2012-12-15 07:57:04', '11111111111111111111111111111111', '0');
INSERT INTO `sys_roles` VALUES ('297eeea940b831c10140b833152f0001', '超级用户', '', '1', '1', '2013-08-26 09:18:10', '4028d1813c705372013c705aac010005', '0');
INSERT INTO `sys_roles` VALUES ('4028d1813c8c02ab013c8c030b6a0001', '系统管理', '', '0', '1', '2013-01-30 23:11:15', '11111111111111111111111111111111', '0');

-- ----------------------------
-- Table structure for sys_roles_anthorities
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_anthorities`;
CREATE TABLE `sys_roles_anthorities` (
  `role_id` char(32) NOT NULL,
  `authority_id` char(32) NOT NULL,
  KEY `fk_sys_roles_anthorities_1_idx` (`role_id`),
  KEY `fk_sys_roles_anthorities_1_idx1` (`authority_id`),
  CONSTRAINT `fk_sys_roles_anthorities_authority_id` FOREIGN KEY (`authority_id`) REFERENCES `sys_authorities` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_sys_roles_anthorities_role_id` FOREIGN KEY (`role_id`) REFERENCES `sys_roles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_roles_anthorities
-- ----------------------------
INSERT INTO `sys_roles_anthorities` VALUES ('4028d1813c8c02ab013c8c030b6a0001', '297ee8ae3b9bb8e5013b9bbc9efc0002');
INSERT INTO `sys_roles_anthorities` VALUES ('4028d1813c8c02ab013c8c030b6a0001', '297ee8ae3b9bb8e5013b9bc297b40003');
INSERT INTO `sys_roles_anthorities` VALUES ('4028d1813c8c02ab013c8c030b6a0001', '297ee8ae3b9bb8e5013b9bc321a40004');
INSERT INTO `sys_roles_anthorities` VALUES ('4028d1813c8c02ab013c8c030b6a0001', '297ee8ae3b9bc620013b9bc6f9700000');
INSERT INTO `sys_roles_anthorities` VALUES ('4028d1813c8c02ab013c8c030b6a0001', '297ee8ae3b9bc620013b9bc7673e0001');
INSERT INTO `sys_roles_anthorities` VALUES ('4028d1813c8c02ab013c8c030b6a0001', '297ee8ae3b9bc620013b9bc82d580002');
INSERT INTO `sys_roles_anthorities` VALUES ('4028d1813c8c02ab013c8c030b6a0001', '297ee8ae3b9bc620013b9bc892900003');
INSERT INTO `sys_roles_anthorities` VALUES ('4028d1813c8c02ab013c8c030b6a0001', '297ee8ae3b9bc620013b9bc935f00004');
INSERT INTO `sys_roles_anthorities` VALUES ('4028d1813c8c02ab013c8c030b6a0001', '297ee8ae3b9bc620013b9bc993d10005');
INSERT INTO `sys_roles_anthorities` VALUES ('4028d1813c8c02ab013c8c030b6a0001', '297ee8ae3b9bc620013b9bc9f3b20006');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b84c24b013b84c71fd60000', '297ee8ae3b9bb8e5013b9bbc9efc0002');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b84c24b013b84c71fd60000', '297ee8ae3b9bb8e5013b9bc297b40003');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b84c24b013b84c71fd60000', '297ee8ae3b9bc620013b9bc935f00004');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b84c24b013b84c71fd60000', '297ee8ae3b9bc620013b9bcf7d43000b');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b84c24b013b84c71fd60000', '297ee8ae3b9bc620013b9bd246980012');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b84c24b013b84c71fd60000', '4028d1813bdc7bde013bdc7e95f80002');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bb8e5013b9bbc9efc0002');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bb8e5013b9bc297b40003');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bb8e5013b9bc321a40004');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bc6f9700000');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bc7673e0001');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bc82d580002');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bc892900003');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bc935f00004');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bc993d10005');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bc9f3b20006');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bca6a290007');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bcb38900008');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bcbd69d0009');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bcc55a8000a');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bcf7d43000b');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bd02004000c');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bd072f3000d');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bd0e77d000e');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bd1427c000f');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bd189e20010');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bd1e6c20011');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bd246980012');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bd299d30013');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bd352030014');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3b9bc620013b9bd3af6f0015');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '4028d1813bc263ac013bc2686c8b0007');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '4028d1813bc263ac013bc268c36b0008');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '4028d1813bc263ac013bc26949800009');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '4028d1813bc263ac013bc2699e41000a');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '4028d1813bc263ac013bc26a04a5000b');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '4028d1813bc263ac013bc26ba6a6000c');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '297ee8ae3ba0f16d013ba0f466ec0000');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '4028d1813bdc7bde013bdc7e95f80002');
INSERT INTO `sys_roles_anthorities` VALUES ('297ee8ae3b9bc620013b9bd98fd00016', '402881e43cf29f70013cf2c169580022');
INSERT INTO `sys_roles_anthorities` VALUES ('297eeea940b831c10140b833152f0001', '297ee8ae3b9bb8e5013b9bbc9efc0002');

-- ----------------------------
-- Table structure for sys_role_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menus`;
CREATE TABLE `sys_role_menus` (
  `id` char(32) NOT NULL,
  `ind` int(11) DEFAULT NULL COMMENT '排序',
  `menu_id` char(32) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT NULL,
  `role_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_role_menus_menus` (`menu_id`),
  KEY `fk_role_menus_role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_menus
-- ----------------------------
INSERT INTO `sys_role_menus` VALUES ('402881e43f889b31013f88eb9a480048', '8', '4028d1813bdc7bde013bdc802c560003', '0', '297ee8ae3b9bc620013b9bd98fd00016');
INSERT INTO `sys_role_menus` VALUES ('402881e43f889b31013f88eb9a8d0049', '4', '402881e43bbdc946013bbde132220003', '0', '297ee8ae3b9bc620013b9bd98fd00016');
INSERT INTO `sys_role_menus` VALUES ('402881e43f889b31013f88eb9acd004a', '2', '402881e43bbdc946013bbde0b9820001', '0', '297ee8ae3b9bc620013b9bd98fd00016');
INSERT INTO `sys_role_menus` VALUES ('402881e43f889b31013f88eb9b1d004b', '5', '4028d1813bc263ac013bc26e9c540017', '0', '297ee8ae3b9bc620013b9bd98fd00016');
INSERT INTO `sys_role_menus` VALUES ('402881e43f889b31013f88eb9b5e004c', '1', '402881e43bbdc946013bbdca29670000', '0', '297ee8ae3b9bc620013b9bd98fd00016');
INSERT INTO `sys_role_menus` VALUES ('402881e43f889b31013f88eb9bb3004d', '3', '402881e43bbdc946013bbde0ef750002', '0', '297ee8ae3b9bc620013b9bd98fd00016');
INSERT INTO `sys_role_menus` VALUES ('402881e43f889b31013f88eb9bfe004e', '6', '4028d1813bc263ac013bc26edb220018', '0', '297ee8ae3b9bc620013b9bd98fd00016');
INSERT INTO `sys_role_menus` VALUES ('402881e43f889b31013f88eb9bff004f', '6', '402881e43bbdad6e013bbdae52bc0000', '0', '297ee8ae3b9bc620013b9bd98fd00016');
INSERT INTO `sys_role_menus` VALUES ('402881e43f889b31013f88eb9ea60057', '2', '4028b8813cfc753b013cfce6af9a001a', '0', '297ee8ae3b9bc620013b9bd98fd00016');
INSERT INTO `sys_role_menus` VALUES ('402881e73cafa75d013cafb1e4ce0003', '2', '402881e43bbdc946013bbdca29670000', '0', '4028d1813c8c02ab013c8c030b6a0001');
INSERT INTO `sys_role_menus` VALUES ('402881e73cafa75d013cafb1e4d90004', '3', '402881e43bbdc946013bbde0b9820001', '0', '4028d1813c8c02ab013c8c030b6a0001');
INSERT INTO `sys_role_menus` VALUES ('402881e73cafa75d013cafb1e4d90005', '1', '402881e43bbdad6e013bbdae52bc0000', '0', '4028d1813c8c02ab013c8c030b6a0001');
INSERT INTO `sys_role_menus` VALUES ('4028d1813c8c14dd013c8c1670cf0001', '1', '402881e43bbdc946013bbdca29670000', '0', '4028d1813c8be1b2013c8bf6670b0003');
INSERT INTO `sys_role_menus` VALUES ('4028d1813c8c14dd013c8c1670dc0002', '2', '402881e43bbdc946013bbde0b9820001', '0', '4028d1813c8be1b2013c8bf6670b0003');
INSERT INTO `sys_role_menus` VALUES ('4028d1813c8c14dd013c8c1670ea0003', '3', '4028d1813bc263ac013bc26edb220018', '0', '4028d1813c8be1b2013c8bf6670b0003');
INSERT INTO `sys_role_menus` VALUES ('4028d1813c8c14dd013c8c1671080005', '5', '4028d1813bdc7bde013bdc802c560003', '0', '4028d1813c8be1b2013c8bf6670b0003');
INSERT INTO `sys_role_menus` VALUES ('4028d1813c8c14dd013c8c1671160007', '1', '402881e43bbdad6e013bbdae52bc0000', '0', '4028d1813c8be1b2013c8bf6670b0003');
INSERT INTO `sys_role_menus` VALUES ('4028d1813c8c14dd013c8c1671300008', '1', '402881e43bbdc946013bbdca29670000', '0', '4028d1813c8be1b2013c8bf6670b0003');
INSERT INTO `sys_role_menus` VALUES ('4028d1813c8c14dd013c8c16713f0009', '2', '402881e43bbdc946013bbde0b9820001', '0', '4028d1813c8be1b2013c8bf6670b0003');
INSERT INTO `sys_role_menus` VALUES ('4028d1813c8c14dd013c8c16714e000a', '3', '4028d1813bc263ac013bc26edb220018', '0', '4028d1813c8be1b2013c8bf6670b0003');
INSERT INTO `sys_role_menus` VALUES ('4028d1813c8c14dd013c8c167167000c', '5', '4028d1813bdc7bde013bdc802c560003', '0', '4028d1813c8be1b2013c8bf6670b0003');
INSERT INTO `sys_role_menus` VALUES ('8a488efd3e3117c6013e372764d00024', '8', '4028d1813bdc7bde013bdc802c560003', '0', '297ee8ae3b84c24b013b84c71fd60000');
INSERT INTO `sys_role_menus` VALUES ('8a488efd3e3117c6013e372764f80025', '4', '402881e43bbdc946013bbde132220003', '0', '297ee8ae3b84c24b013b84c71fd60000');
INSERT INTO `sys_role_menus` VALUES ('8a488efd3e3117c6013e372765200026', '2', '402881e43bbdc946013bbde0b9820001', '0', '297ee8ae3b84c24b013b84c71fd60000');
INSERT INTO `sys_role_menus` VALUES ('8a488efd3e3117c6013e372765490027', '1', '402881e43bbdc946013bbdca29670000', '0', '297ee8ae3b84c24b013b84c71fd60000');
INSERT INTO `sys_role_menus` VALUES ('8a488efd3e3117c6013e372765730028', '3', '402881e43bbdc946013bbde0ef750002', '0', '297ee8ae3b84c24b013b84c71fd60000');
INSERT INTO `sys_role_menus` VALUES ('8a488efd3e3117c6013e372765730029', '1', '402881e43bbdad6e013bbdae52bc0000', '0', '297ee8ae3b84c24b013b84c71fd60000');
INSERT INTO `sys_role_menus` VALUES ('8a488efd3e3117c6013e3727665e002c', '2', '4028b8813cfc753b013cfce6af9a001a', '0', '297ee8ae3b84c24b013b84c71fd60000');

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users` (
  `id` char(32) NOT NULL,
  `user_name` varchar(45) NOT NULL COMMENT '用户名',
  `user_account` varchar(60) NOT NULL COMMENT '帐号',
  `user_password` varchar(45) NOT NULL COMMENT '密码',
  `user_type` int(11) DEFAULT NULL COMMENT '类型',
  `is_account_non_expired` tinyint(1) DEFAULT NULL,
  `is_account_non_locked` tinyint(1) DEFAULT NULL,
  `is_credentials_non_expired` tinyint(1) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `is_sys` tinyint(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` char(32) DEFAULT NULL,
  `job` char(32) DEFAULT NULL,
  `owner` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `user_account` (`user_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES ('11111111111111111111111111111111', 'tim', 'tim', '4QrcOUm6Wau+VuBX8g+IPg==', '1', '1', '1', '1', '1', '1', '2012-12-01 01:01:01', '11111111111111111111111111111111', '1', null);
INSERT INTO `sys_users` VALUES ('4028d1813c705372013c705aac010005', 'admini', 'admini', '4QrcOUm6Wau+VuBX8g+IPg==', '0', '1', '1', '1', '1', '0', '2013-01-25 15:21:09', '11111111111111111111111111111111', '2', null);

-- ----------------------------
-- Table structure for sys_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_roles`;
CREATE TABLE `sys_users_roles` (
  `user_id` char(32) NOT NULL,
  `role_id` char(32) NOT NULL,
  KEY `fk_sys_users_roles_1_idx` (`user_id`),
  KEY `fk_sys_users_roles_1_idx1` (`role_id`),
  CONSTRAINT `fk_sys_users_roles_role_id` FOREIGN KEY (`role_id`) REFERENCES `sys_roles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_sys_users_roles_user_id` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_users_roles
-- ----------------------------
INSERT INTO `sys_users_roles` VALUES ('11111111111111111111111111111111', '297ee8ae3b9bc620013b9bd98fd00016');
INSERT INTO `sys_users_roles` VALUES ('4028d1813c705372013c705aac010005', '297ee8ae3b9bc620013b9bd98fd00016');

-- ----------------------------
-- Table structure for user_login_log
-- ----------------------------
DROP TABLE IF EXISTS `user_login_log`;
CREATE TABLE `user_login_log` (
  `id` char(32) NOT NULL,
  `user_id` char(32) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(45) DEFAULT NULL COMMENT '登陆账号',
  `login_time` datetime DEFAULT NULL COMMENT '登陆时间',
  `logout_time` datetime DEFAULT NULL COMMENT '退出时间',
  `login_ip` varchar(15) DEFAULT NULL COMMENT '登陆端口',
  `user_agent` varchar(200) DEFAULT NULL COMMENT '浏览器信息',
  `login_port` int(11) DEFAULT NULL COMMENT '登陆端口',
  `login_local_port` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_login_log
-- ----------------------------
INSERT INTO `user_login_log` VALUES ('8a4827055da6f63f015da6f6c9d00000', '11111111111111111111111111111111', 'tim', '2017-08-03 15:19:37', null, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '55163', '8080');
INSERT INTO `user_login_log` VALUES ('8a4827055da6f63f015da6fde9820001', '11111111111111111111111111111111', 'tim', '2017-08-03 15:27:24', null, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '55251', '8080');
INSERT INTO `user_login_log` VALUES ('8a4827055da6fe9b015da6fecee70000', '11111111111111111111111111111111', 'tim', '2017-08-03 15:28:23', null, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '55281', '8080');
INSERT INTO `user_login_log` VALUES ('8a4827055da6fe9b015da6ff14300001', '4028d1813c705372013c705aac010005', 'admini', '2017-08-03 15:28:41', null, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '55295', '8080');
INSERT INTO `user_login_log` VALUES ('8a4827055da6fe9b015da70312a80002', '4028d1813c705372013c705aac010005', 'admini', '2017-08-03 15:33:02', null, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '55356', '8080');

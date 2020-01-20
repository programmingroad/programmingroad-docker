-- ----------------------------
-- Table structure for cover
-- ----------------------------
CREATE TABLE `cover`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '图片url',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `deleted` int(1) NOT NULL DEFAULT 0 COMMENT '是否删除 0未删 1删除',
  PRIMARY KEY (`id`) USING BTREE
) COMMENT = '封面表' ROW_FORMAT = Dynamic;
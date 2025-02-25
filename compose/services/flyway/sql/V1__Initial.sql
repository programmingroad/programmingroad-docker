-- ----------------------------
-- Table structure for article
-- ----------------------------
CREATE TABLE `article`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tag_id` bigint(20) NULL DEFAULT NULL COMMENT '标签id',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NULL COMMENT '内容',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `released` int(1) NOT NULL DEFAULT 0 COMMENT '是否发布 0未发布 1已发布',
  `deleted` int(1) NOT NULL DEFAULT 0 COMMENT '是否删除 0未删 1删除',
  PRIMARY KEY (`id`) USING BTREE
) COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tag
-- ----------------------------
CREATE TABLE `tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '标签名称',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `deleted` int(1) NOT NULL DEFAULT 0 COMMENT '是否删除 0未删 1删除',
  PRIMARY KEY (`id`) USING BTREE
) COMMENT = '标签表' ROW_FORMAT = Dynamic;
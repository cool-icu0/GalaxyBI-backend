/*
 Navicat Premium Data Transfer

 Source Server         : a
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : galaxybi

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 04/10/2024 03:33:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chart
-- ----------------------------
DROP TABLE IF EXISTS `chart`;
CREATE TABLE `chart`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `goal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '分析目标',
  `chartData` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '图表数据',
  `chartType` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图表类型',
  `genChart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '生成的图表数据',
  `genResult` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '生成的分析结论',
  `status` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'wait' COMMENT '状态',
  `execMessage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '执行信息',
  `userId` bigint(20) NULL DEFAULT NULL COMMENT '创建用户 id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `chartName` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图标名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1841922336820396034 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '图表信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chart
-- ----------------------------
INSERT INTO `chart` VALUES (1838951009910095874, '分析网站用户的增长情况', '日期,用户数\n1号,10\n2号,20\n3号,30\n', '折线图', '{\n    \"title\": {\n        \"text\": \"网站用户增长情况分析\"\n    },\n    \"tooltip\": {\n        \"trigger\": \"axis\"\n    },\n    \"xAxis\": {\n        \"type\": \"category\",\n        \"data\": [\"1号\", \"2号\", \"3号\"]\n    },\n    \"yAxis\": {\n        \"type\": \"value\"\n    },\n    \"series\": [{\n        \"name\": \"用户数\",\n        \"type\": \"line\",\n        \"data\": [10, 20, 30]\n    }]\n}', '结论：\n根据提供的数据，网站的用户数量从1号的10人增长到2号的20人，再到3号的30人。这表明网站的用户数量在这段时间内呈现出明显的增长趋势，每天的用户增长率为100%。这种快速增长可能表明网站的内容或服务吸引了更多的用户，或者推广活动取得了显著效果。如果这种增长趋势能够持续，网站的未来发展前景看好。', 'succeed', NULL, 1832525298148159490, '2024-09-25 22:37:41', '2024-09-30 08:39:55', 0, 'cool的网站用户增长情况');
INSERT INTO `chart` VALUES (1838998265648447489, '分析网站用户的增长情况', '日期,用户数\n1号,10\n2号,20\n3号,30\n', '柱状图', '{\n    \"title\": {\n        \"text\": \"网站用户增长情况分析\"\n    },\n    \"tooltip\": {},\n    \"xAxis\": {\n        \"data\": [\"1号\", \"2号\", \"3号\"]\n    },\n    \"yAxis\": {},\n    \"series\": [{\n        \"name\": \"用户数\",\n        \"type\": \"bar\",\n        \"data\": [10, 20, 30]\n    }]\n}', '结论：\n根据提供的数据，我们可以看到网站用户数从1号到3号呈现明显的增长趋势。具体来看，1号的用户数为10人，2号增长到了20人，而3号进一步增加到了30人。这表明网站的用户基数在不断扩大，呈现出良好的发展态势。如果这种增长趋势能够持续，那么网站的市场影响力和用户基础将进一步增强。', 'succeed', NULL, 1832525298148159490, '2024-09-26 01:45:28', '2024-09-30 08:40:05', 0, 'cool的网站用户增长情况');
INSERT INTO `chart` VALUES (1838998321583685634, '分析网站用户的增长情况', '日期,用户数\n1号,10\n2号,20\n3号,30\n', '堆叠图', '{\n    \"title\": {\n        \"text\": \"网站用户增长情况分析\"\n    },\n    \"tooltip\": {\n        \"trigger\": \"axis\",\n        \"formatter\": \"{b} <br/>{a0}: {c0} 个<br/>{a1}: {c1} 个\"\n    },\n    \"legend\": {\n        \"data\": [\"新增用户\"]\n    },\n    \"xAxis\": {\n        \"type\": \"category\",\n        \"data\": [\"1号\", \"2号\", \"3号\"]\n    },\n    \"yAxis\": {\n        \"type\": \"value\"\n    },\n    \"series\": [{\n        \"name\": \"新增用户\",\n        \"type\": \"bar\",\n        \"stack\": \"用户数\",\n        \"data\": [10, 20, 30]\n    }]\n}', '结论：\n从提供的数据可以看出，网站的用户数量在逐日增加。具体来说，1号有10个用户，2号增加了10个用户，总数达到20个；3号又增加了10个用户，总数达到30个。这表明网站的用户增长速度是稳定的，每天增加10个新用户。', 'succeed', NULL, 1832525298148159490, '2024-09-26 01:45:41', '2024-09-30 08:40:05', 0, 'cool的网站用户增长情况');
INSERT INTO `chart` VALUES (1838998382782775298, '分析网站用户的增长情况', '日期,用户数\n1号,10\n2号,20\n3号,30\n', '饼图', '{\n    \"title\": {\n        \"text\": \"网站用户增长情况分析\"\n    },\n    \"tooltip\": {\n        \"trigger\": \"item\",\n        \"formatter\": \"{a} <br/>{b} : {c} ({d}%)\"\n    },\n    \"legend\": {\n        \"data\": [\"用户数\"]\n    },\n    \"series\": [\n        {\n            \"name\": \"用户数\",\n            \"type\": \"pie\",\n            \"radius\": \"50%\",\n            \"data\": [\n                {\"value\": 10, \"name\": \"1号\"},\n                {\"value\": 20, \"name\": \"2号\"},\n                {\"value\": 30, \"name\": \"3号\"}\n            ]\n        }\n    ]\n}', '结论：\n从提供的数据可以看出，网站用户数在连续三天内呈现明显的增长趋势。具体来看，1号的用户数为10人，2号的用户数为20人，比1号增加了10人，增长率为100%；3号的用户数为30人，比2号增加了10人，增长率同样为100%。这表明网站的用户基数在不断扩大，且增长速度稳定。如果这种趋势持续下去，可以预见未来几天网站的用户数还将继续增加。', 'succeed', NULL, 1832525298148159490, '2024-09-26 01:45:56', '2024-09-30 08:40:05', 0, 'cool的网站用户增长情况');
INSERT INTO `chart` VALUES (1838998519806492673, '分析网站用户的增长情况', '日期,用户数\n1号,10\n2号,20\n3号,30\n', '雷达图', '{\n    \"title\": {\n        \"text\": \"网站用户增长情况分析\"\n    },\n    \"tooltip\": {},\n    \"legend\": {\n        \"data\": [\"用户数\"]\n    },\n    \"radar\": {\n        \"indicator\": [\n            { \"name\": \"1号\", \"max\": 50 },\n            { \"name\": \"2号\", \"max\": 50 },\n            { \"name\": \"3号\", \"max\": 50 }\n        ],\n        \"splitNumber\": 3\n    },\n    \"series\": [\n        {\n            \"name\": \"用户数\",\n            \"type\": \"radar\",\n            \"data\": [\n                {\n                    \"value\": [10, 20, 30],\n                    \"name\": \"用户数\"\n                }\n            ]\n        }\n    ]\n}', '结论：\n从提供的数据中可以看出，网站用户数量在连续三天内呈现明显的增长趋势。具体来说，1号的用户数为10，2号的用户数为20，3号的用户数为30。这表明网站的用户基数正在稳步扩大，且增长速度较快。这种增长可能与网站的推广活动、内容质量提升或者用户体验优化等因素有关。建议继续关注用户增长的趋势，并结合用户反馈和市场动态进行相应的策略调整，以保持用户的持续增长。', 'succeed', NULL, 1832525298148159490, '2024-09-26 01:46:28', '2024-09-30 08:40:05', 0, 'cool的网站用户增长情况');
INSERT INTO `chart` VALUES (1840556304126042114, '请给我分析一下网站用户增长情况', '日期,用户数\n1号,10\n2号,20\n3号,30\n', '折线图', '{\n    \"title\": {\n        \"text\": \"网站用户增长情况\"\n    },\n    \"tooltip\": {\n        \"trigger\": \"axis\"\n    },\n    \"xAxis\": {\n        \"type\": \"category\",\n        \"data\": [\"1号\", \"2号\", \"3号\"]\n    },\n    \"yAxis\": {\n        \"type\": \"value\"\n    },\n    \"series\": [{\n        \"name\": \"用户数\",\n        \"type\": \"line\",\n        \"data\": [10, 20, 30]\n    }]\n}', '结论：\n从提供的数据来看，网站用户数量呈现出明显的逐日增长趋势。具体来说，从1号到2号，用户数从10增长到了20，增长了100%；从2号到3号，用户数从20增长到了30，再次增长了50%。这表明网站的吸引力在逐渐增强，用户基数在稳步扩大。如果这种增长趋势能够持续，网站的未来发展前景将非常乐观。', 'succeed', NULL, 1832525298148159490, '2024-09-30 08:56:33', '2024-09-30 09:03:16', 0, 'cool的网站用户增长情况');
INSERT INTO `chart` VALUES (1840557898011893761, '分析网站的用户增长情况', '日期,用户数\n1号,10\n2号,20\n3号,30\n', '折线图', '{\n    \"title\": {\n        \"text\": \"网站用户增长情况分析\"\n    },\n    \"tooltip\": {\n        \"trigger\": \"axis\"\n    },\n    \"xAxis\": {\n        \"type\": \"category\",\n        \"data\": [\"1号\", \"2号\", \"3号\"]\n    },\n    \"yAxis\": {\n        \"type\": \"value\"\n    },\n    \"series\": [{\n        \"name\": \"用户数\",\n        \"type\": \"line\",\n        \"data\": [10, 20, 30]\n    }]\n}', '结论：\n从提供的数据中可以看出，网站的用户数量在逐日增加。具体来说，从1号到3号，用户数从10增加到30，呈现出明显的线性增长趋势。这表明网站的吸引力和用户粘性在逐渐增强，如果保持这种趋势，预计未来用户数将继续稳步增长。', 'succeed', NULL, 1832525298148159490, '2024-09-30 09:02:53', '2024-09-30 09:03:02', 0, 'cool的网站用户情况');
INSERT INTO `chart` VALUES (1841922843727200258, '分析网站的用户增长情况', '日期,用户数\n1号,10\n2号,20\n3号,30\n', '折线图', '{\n    \"title\": {\n        \"text\": \"网站用户增长情况\"\n    },\n    \"tooltip\": {},\n    \"xAxis\": {\n        \"data\": [\"1号\", \"2号\", \"3号\"]\n    },\n    \"yAxis\": {},\n    \"series\": [{\n        \"name\": \"用户数\",\n        \"type\": \"line\",\n        \"data\": [10, 20, 30]\n    }]\n}', '结论：\n从提供的数据中可以看出，网站的用户数量呈现明显的线性增长趋势。从1号的10个用户增长到2号的20个用户，再到3号的30个用户，每天的用户增长量都是前一天的两倍。这表明网站可能进行了有效的推广活动或者提供了极具吸引力的服务，吸引了大量新用户的加入。如果这种增长趋势能够持续，网站的未来发展前景将非常乐观。', 'succeed', NULL, 1832525298148159490, '2024-10-04 03:26:41', '2024-10-04 03:26:50', 0, 'cool的网站用户情况');
INSERT INTO `chart` VALUES (1841923202663153665, '分析网站用户的增长情况', '日期,用户数\n1号,10\n2号,20\n3号,30\n', '柱状图', '{\n    \"xAxis\": {\n        \"type\": \"category\",\n        \"data\": [\"1号\", \"2号\", \"3号\"]\n    },\n    \"yAxis\": {\n        \"type\": \"value\"\n    },\n    \"series\": [{\n        \"data\": [10, 20, 30],\n        \"type\": \"bar\"\n    }]\n}', '结论：\n从提供的数据中可以看出，网站用户数在1号到3号之间呈现明显的增长趋势。具体来说，1号有10个用户，2号增长到20个用户，3号进一步增长到30个用户。这表明网站的用户基数在这几天内稳步增加，可能是由于网站推广活动或内容质量提升等因素吸引了更多用户。', 'succeed', NULL, 1832525298148159490, '2024-10-04 03:28:07', '2024-10-04 03:28:15', 0, 'cool的网站用户情况');

-- ----------------------------
-- Table structure for chart_1659210482555121666
-- ----------------------------
DROP TABLE IF EXISTS `chart_1659210482555121666`;
CREATE TABLE `chart_1659210482555121666`  (
  `日期` int(11) NULL DEFAULT NULL,
  `用户数` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chart_1659210482555121666
-- ----------------------------
INSERT INTO `chart_1659210482555121666` VALUES (1, 10);
INSERT INTO `chart_1659210482555121666` VALUES (2, 20);
INSERT INTO `chart_1659210482555121666` VALUES (3, 30);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userAccount` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号',
  `userPassword` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `userName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `userAvatar` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户头像',
  `userRole` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user' COMMENT '用户角色：user/admin',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_userAccount`(`userAccount` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1832525298148159491 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1832525298148159490, 'cool', 'b0dd3697a192885d7c055db46155b26a', '酷儿', 'https://foruda.gitee.com/avatar/1676566705652498709/9913536_xiao-chenago_1676566705.png!avatar200', 'user', '2024-09-08 05:04:12', '2024-09-20 00:57:06', 0);

SET FOREIGN_KEY_CHECKS = 1;

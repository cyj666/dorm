/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : dorm

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-08-01 10:42:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `employees`
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `employee_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(255) NOT NULL,
  `employee_sex` varchar(255) DEFAULT NULL,
  `employee_job` varchar(255) DEFAULT NULL,
  `employee_workplace` varchar(255) DEFAULT NULL,
  `employee_family` varchar(255) DEFAULT NULL,
  `employee_remark` varchar(255) DEFAULT NULL,
  `employee_no` varchar(255) NOT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `employee_status` int(11) NOT NULL DEFAULT '1',
  `log` longtext,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `weiyi` (`employee_no`) USING BTREE,
  KEY `quick` (`employee_name`,`employee_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3327 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES ('2745', '王晓芳', '女', null, '华一行政办', null, '常日', 'H1503486', null, '1', null);
INSERT INTO `employees` VALUES ('2746', '周咏红', null, null, '动力', null, '后勤', 'H1806020', null, '1', null);
INSERT INTO `employees` VALUES ('2747', '朱雪玉', null, null, '华一后纺', null, '后勤', 'H1603558', null, '1', null);
INSERT INTO `employees` VALUES ('2748', '康凤英', null, null, '华一后纺', null, '乙班', 'H1711078', null, '1', null);
INSERT INTO `employees` VALUES ('2749', '杨椒珍', null, null, '华一后纺', null, '乙班', 'H1803127', null, '1', null);
INSERT INTO `employees` VALUES ('2750', '赵春梅', null, null, '华一后纺', null, '乙班', 'H1807142', null, '1', null);
INSERT INTO `employees` VALUES ('2751', '聂付杰', null, null, '华一行政办', null, '', 'H1402179', null, '1', null);
INSERT INTO `employees` VALUES ('2752', '谢婉妹', null, null, '华一后纺', null, '乙班', 'H1802009', null, '1', null);
INSERT INTO `employees` VALUES ('2753', '谢强英', null, null, '华一后纺', null, '丙班', 'H1702359', null, '1', null);
INSERT INTO `employees` VALUES ('2754', '石梦', null, null, '华一后纺', null, '丙班', 'H1702187', null, '1', null);
INSERT INTO `employees` VALUES ('2755', '赵雨杰', null, null, '华一后纺', null, '丙班', 'H1702533', null, '1', null);
INSERT INTO `employees` VALUES ('2756', '黄娟', null, null, '华一后纺', null, '丙班', 'H1702583', null, '1', null);
INSERT INTO `employees` VALUES ('2757', '谢丽华', null, null, '华一后纺', null, '甲班', 'H0510059', null, '1', null);
INSERT INTO `employees` VALUES ('2758', '徐能霞', null, null, '华一后纺', null, '甲班', 'H1803126', null, '1', null);
INSERT INTO `employees` VALUES ('2759', '杨雪静', null, null, '华一后纺', null, '甲班', 'H1702299', null, '1', null);
INSERT INTO `employees` VALUES ('2760', '何远霞', null, null, '华一后纺', null, '甲班', 'H1702584', null, '1', null);
INSERT INTO `employees` VALUES ('2761', '杨蓓嘉', null, null, '华一后纺', null, '甲班', 'H1804080', null, '1', null);
INSERT INTO `employees` VALUES ('2762', '孙琦', null, null, '华一后纺', null, '丙班', 'H1702549', null, '1', null);
INSERT INTO `employees` VALUES ('2763', '赵阳', null, null, '华一后纺', null, '丙班', 'H1503437', null, '1', null);
INSERT INTO `employees` VALUES ('2764', '陶媛', null, null, '华一行政办', null, '科室', 'H1709145', null, '1', null);
INSERT INTO `employees` VALUES ('2765', '蒯亚琴', null, null, '行政管理部', null, '科室', 'H1703133', null, '1', null);
INSERT INTO `employees` VALUES ('2766', '王伍凤', null, null, '华一前纺', null, '常日', 'H1503063', null, '1', null);
INSERT INTO `employees` VALUES ('2767', '夏培培', null, null, '销售管理部', null, '常日', 'H1605005', null, '1', null);
INSERT INTO `employees` VALUES ('2768', '周春英', null, null, '华一后纺', null, '丙班', 'H1803727', null, '1', null);
INSERT INTO `employees` VALUES ('2769', '赵趁雨', null, null, '华一后纺', null, '丙班', 'H1710076', null, '1', null);
INSERT INTO `employees` VALUES ('2770', '毕露露', null, null, '华一后纺', null, '丙班', 'H1702296', null, '1', null);
INSERT INTO `employees` VALUES ('2771', '朱晴晴', null, null, '华一后纺', null, '丙班', 'H1702297', null, '1', null);
INSERT INTO `employees` VALUES ('2772', '毕曼', null, null, '华一后纺', null, '丙班', 'H1807032', null, '1', null);
INSERT INTO `employees` VALUES ('2773', '李佰伶', null, null, '华一平包', null, '丙班', 'H1410003', null, '1', null);
INSERT INTO `employees` VALUES ('2774', '王芳', null, null, '华一品保', null, '丙班', 'H1805122', null, '1', null);
INSERT INTO `employees` VALUES ('2775', '李陶红', null, null, '华一平包', null, '丙班', 'H1807141', null, '1', null);
INSERT INTO `employees` VALUES ('2776', '孟晓灵', null, null, '华一行政办', null, '后勤', 'H1303030', null, '1', null);
INSERT INTO `employees` VALUES ('2777', '张兰珍', null, null, '华一行政办', null, '后勤', 'H1503861', null, '1', null);
INSERT INTO `employees` VALUES ('2778', '吴金玲', null, null, '华一行政办', null, '后勤', 'H1609065', null, '1', null);
INSERT INTO `employees` VALUES ('2779', '李如敏', null, null, '华一行政办', null, '后勤', 'H1804223', null, '1', null);
INSERT INTO `employees` VALUES ('2780', '向继玉', null, null, '华一行政办', null, '常日', 'H1205043', null, '1', null);
INSERT INTO `employees` VALUES ('2781', '娄晓红', null, null, 'PMC部', null, '常日', 'H0803053', null, '1', null);
INSERT INTO `employees` VALUES ('2782', '李银环', null, null, '华一前纺', null, '常日', 'H1302005', null, '1', null);
INSERT INTO `employees` VALUES ('2783', '吴风枝', null, null, '华一行政办', null, '常日', 'H1603123', null, '1', null);
INSERT INTO `employees` VALUES ('2784', '张松华', null, null, '华一平包', null, '乙班', 'H1506165', null, '1', null);
INSERT INTO `employees` VALUES ('2785', '伍诗雅', null, null, '华一平包', null, '乙班', 'H1805055', null, '1', null);
INSERT INTO `employees` VALUES ('2786', '赵晨', null, null, '质量保证部', null, '甲班', 'H1610073', null, '1', null);
INSERT INTO `employees` VALUES ('2787', '李文倩', null, null, '华一平包', null, '甲班', 'H1407034', null, '1', null);
INSERT INTO `employees` VALUES ('2788', '赵琢', null, null, '华一品保', null, '甲班', 'H1803141', null, '1', null);
INSERT INTO `employees` VALUES ('2789', '方小丽', null, null, '华一平包', null, '乙班', 'H1802043', null, '1', null);
INSERT INTO `employees` VALUES ('2790', '李丽', null, null, '华一平包', null, '乙班', 'H1803597', null, '1', null);
INSERT INTO `employees` VALUES ('2791', '史杏', null, null, '华一品保', null, '乙班', 'H1807146', null, '1', null);
INSERT INTO `employees` VALUES ('2792', '张蓉卫', null, null, '华一平包', null, '丙班', 'H1702206', null, '1', null);
INSERT INTO `employees` VALUES ('2793', '张鹭娟', null, null, '华一平包', null, '丙班', 'H1702207', null, '1', null);
INSERT INTO `employees` VALUES ('2794', '刘凤鑫', null, null, '华一平包', null, '丙班', 'H1803326', null, '1', null);
INSERT INTO `employees` VALUES ('2795', '李文敬', null, null, '华一平包', null, '丙班', 'H1406018', null, '1', null);
INSERT INTO `employees` VALUES ('2796', '谭艳萍', null, null, '华一平包', null, '丙班', 'H1503529', null, '1', null);
INSERT INTO `employees` VALUES ('2797', '路新颖', null, null, '华一平包', null, '常日', 'H1504245', null, '1', null);
INSERT INTO `employees` VALUES ('2798', '周青华', null, null, '华一平包', null, '常日', 'H1702498', null, '1', null);
INSERT INTO `employees` VALUES ('2799', '潘诗然', null, null, '证券室', null, '大学生', 'H1806051', null, '1', null);
INSERT INTO `employees` VALUES ('2800', '曹敦岚', null, null, '财务管理部', null, '大学生', 'H1803330', null, '1', null);
INSERT INTO `employees` VALUES ('2801', '方亦君', null, null, '财务管理部', null, '大学生', 'H1804074', null, '1', null);
INSERT INTO `employees` VALUES ('2802', '朱丽霞', null, null, '秘书办', null, '公司', 'H1702209', null, '1', null);
INSERT INTO `employees` VALUES ('2803', '黄倩雯', null, null, '总裁办', null, '公司', 'H1804087', null, '1', null);
INSERT INTO `employees` VALUES ('2804', '张丽娅', null, null, '财务管理部', null, '公司', 'H1702113', null, '1', null);
INSERT INTO `employees` VALUES ('2805', '罗竞涵', null, null, '销售管理部', null, '公司', 'H1712015', null, '1', null);
INSERT INTO `employees` VALUES ('2806', '丁圆', null, null, '财务管理部', null, '公司', 'H1003115', null, '1', null);
INSERT INTO `employees` VALUES ('2807', '王爽', null, null, '销售管理部', null, '公司', 'H1102167', null, '1', null);
INSERT INTO `employees` VALUES ('2808', '虞婷婷', null, null, '秘书办', null, '公司', 'H1703205', null, '1', null);
INSERT INTO `employees` VALUES ('2809', '成旭露', null, null, '财务管理部', null, '公司', 'H1701003', null, '1', null);
INSERT INTO `employees` VALUES ('2810', '陈飞娟', null, null, '财务管理部', null, '', 'H1610007', null, '1', null);
INSERT INTO `employees` VALUES ('2811', '蒋凌怡', null, null, '财务管理部', null, '财务', 'H1711036', null, '1', null);
INSERT INTO `employees` VALUES ('2812', '滕莉琴', null, null, '财务管理部', null, '财务', 'H1802001', null, '1', null);
INSERT INTO `employees` VALUES ('2813', '蒋芳芳', null, null, '人力资源部', null, '科级', 'H1702646', null, '1', null);
INSERT INTO `employees` VALUES ('2814', '林赛霞', null, null, '人力资源部', null, '科级', 'H1804097', null, '1', null);
INSERT INTO `employees` VALUES ('2815', '叶梓云', null, null, '人力资源部', null, '', 'H1702629', null, '1', null);
INSERT INTO `employees` VALUES ('2816', '蒋海青', null, null, '财务管理部', null, '人力/财务', 'H1703100', null, '1', null);
INSERT INTO `employees` VALUES ('2817', '黄俊燕', null, null, '财务管理部', null, '处级', 'H9912001', null, '1', null);
INSERT INTO `employees` VALUES ('2818', '陈宗仓', null, null, '动力', null, '夫妻', 'H0401001', null, '1', null);
INSERT INTO `employees` VALUES ('2819', '彭玉兰', null, null, '华一行政办', null, '夫妻', 'H0401002', null, '1', null);
INSERT INTO `employees` VALUES ('2820', '陈旗', null, null, '华一后纺', null, '夫妻', 'H1702112', null, '1', null);
INSERT INTO `employees` VALUES ('2821', '蒋永礼', null, null, '义乌第二办事处', null, '董事长批示过', 'H0609036', null, '1', null);
INSERT INTO `employees` VALUES ('2822', '王选志', null, null, '设备管理部', null, '夫妻', 'H0611024', null, '1', null);
INSERT INTO `employees` VALUES ('2823', '李靖', null, null, '华一平包', null, '夫妻', 'H1803116', null, '1', null);
INSERT INTO `employees` VALUES ('2824', '何永忠', null, null, '华一平包', null, '夫妻', 'H0806123', null, '1', null);
INSERT INTO `employees` VALUES ('2825', '何春英', null, null, '华一行政办', null, '夫妻', 'H0804014', null, '1', null);
INSERT INTO `employees` VALUES ('2826', '安丽梅', null, null, '华一平包', null, '夫妻', 'H1608028', null, '1', null);
INSERT INTO `employees` VALUES ('2827', '朱希祥', null, null, '华一平包', null, '夫妻', 'H0612010', null, '1', null);
INSERT INTO `employees` VALUES ('2828', '王西君', null, null, '华一前纺', null, '夫妻', 'H0808001', null, '1', null);
INSERT INTO `employees` VALUES ('2829', '王艳', null, null, '华一行政办', null, '夫妻', 'H0808002', null, '1', null);
INSERT INTO `employees` VALUES ('2830', '毛国庆', null, null, '仓储1', null, '仓储部', 'H1302118', null, '1', null);
INSERT INTO `employees` VALUES ('2831', '高继国', null, null, '仓储1', null, '仓储部', 'H1607027', null, '1', null);
INSERT INTO `employees` VALUES ('2832', '张世贤', null, null, '仓储1', null, '仓储部', 'H1803061', null, '1', null);
INSERT INTO `employees` VALUES ('2833', '张传甲', null, null, '华一行政办', null, '宿管值班室', 'H0403011', null, '1', null);
INSERT INTO `employees` VALUES ('2834', '夏盐生', null, null, '仓储1', null, '夫妻', 'H0902130', null, '1', null);
INSERT INTO `employees` VALUES ('2835', '周艳丽', null, null, '动力', null, '夫妻', 'H0905022', null, '1', null);
INSERT INTO `employees` VALUES ('2836', '张在武', null, null, '仓储1', null, '夫妻', 'H1602197', null, '1', null);
INSERT INTO `employees` VALUES ('2837', '颜云萍', null, null, '华一前纺', null, '夫妻', 'H1603821', null, '1', null);
INSERT INTO `employees` VALUES ('2838', '张家望', null, null, '华一行政办', null, '行政', 'H1702358', null, '1', null);
INSERT INTO `employees` VALUES ('2839', '孙乾冬', null, null, '华一行政办', null, '行政', 'H1803707', null, '1', null);
INSERT INTO `employees` VALUES ('2840', '江有福', null, null, '仓储1', null, '夫妻', 'H1003175', null, '1', null);
INSERT INTO `employees` VALUES ('2841', '冉霞', null, null, '华一平包', null, '夫妻', 'H1510128', null, '1', null);
INSERT INTO `employees` VALUES ('2842', '瞿吉文', null, null, '华一后纺', null, '夫妻', 'H0502046', null, '1', null);
INSERT INTO `employees` VALUES ('2843', '颜连华', null, null, '设备管理部', null, '夫妻', 'H0802072', null, '1', null);
INSERT INTO `employees` VALUES ('2844', '亢江云', null, null, '华一后纺', null, '夫妻', 'H1311021', null, '1', null);
INSERT INTO `employees` VALUES ('2845', '吴月华', null, null, '华一后纺', null, '夫妻', 'H0502047', null, '1', null);
INSERT INTO `employees` VALUES ('2846', '陈晨阳', null, null, '华一平包', null, '乙班', 'H1803110', null, '1', null);
INSERT INTO `employees` VALUES ('2847', '江超杰', null, null, '华一平包', null, '乙班', 'H1803715', null, '1', null);
INSERT INTO `employees` VALUES ('2848', '谢远涛', null, null, '华一后纺', null, '丙班', 'H0902149', null, '1', null);
INSERT INTO `employees` VALUES ('2849', '马克祥', null, null, '华一后纺', null, '丙班', 'H1806054', null, '1', null);
INSERT INTO `employees` VALUES ('2850', '宋正强', null, null, '行政管理部', null, '夫妻', 'H0411012', null, '1', null);
INSERT INTO `employees` VALUES ('2851', '郝琼英', null, null, '销售管理部', null, '夫妻', 'H1209017', null, '1', null);
INSERT INTO `employees` VALUES ('2852', '柯发娣', null, null, '华一行政办', null, '夫妻', 'H1709059', null, '1', null);
INSERT INTO `employees` VALUES ('2853', '王军领', null, null, '华一行政办', null, '夫妻', 'H1709058', null, '1', null);
INSERT INTO `employees` VALUES ('2854', '姚松亮', null, null, '设备管理部', null, '夫妻', 'H1207094', null, '1', null);
INSERT INTO `employees` VALUES ('2855', '李雅琴', null, null, '华一平包', null, '夫妻', 'H1403057', null, '1', null);
INSERT INTO `employees` VALUES ('2856', '方琳', null, null, '华一/保安', null, '夫妻', 'H1803407', null, '1', null);
INSERT INTO `employees` VALUES ('2857', '周艳君', null, null, '华一品保', null, '夫妻', 'H1803406', null, '1', null);
INSERT INTO `employees` VALUES ('2858', '闫辉', null, null, '华一前纺', null, '夫妻', 'H1003101', null, '1', null);
INSERT INTO `employees` VALUES ('2859', '靳凤芝', null, null, '华一后纺', null, '夫妻', 'H1003102', null, '1', null);
INSERT INTO `employees` VALUES ('2860', '胡永枫', null, null, '华一行政办', null, '保安', 'H1609066', null, '1', null);
INSERT INTO `employees` VALUES ('2861', '吴华东', null, null, '华一行政办', null, '保安', 'H1803743', null, '1', null);
INSERT INTO `employees` VALUES ('2862', '谭传洲', null, null, '华一平包', null, '甲班', 'H1603206', null, '1', null);
INSERT INTO `employees` VALUES ('2863', '黄显龙', null, null, '华一平包', null, '甲班', 'H1702575', null, '1', null);
INSERT INTO `employees` VALUES ('2864', '晏齐林', null, null, '华一平包', null, '甲班', 'H1803705', null, '1', null);
INSERT INTO `employees` VALUES ('2865', '田宏飞', null, null, '设备管理部', null, '夫妻', 'H0310013', null, '1', null);
INSERT INTO `employees` VALUES ('2866', '罗金香', null, null, '华一后纺', null, '夫妻', 'H1510049', null, '1', null);
INSERT INTO `employees` VALUES ('2867', '吴则朋', null, null, '华一平包', null, '甲班', 'H0703011', null, '1', null);
INSERT INTO `employees` VALUES ('2868', '罗勇', null, null, '华一平包', null, '甲班', 'H1512018', null, '1', null);
INSERT INTO `employees` VALUES ('2869', '瞿章生', null, null, '华一平包', null, '甲班', '1803635', null, '1', null);
INSERT INTO `employees` VALUES ('2870', '谭涛', null, null, '华一平包', null, '保全', 'H1107180', null, '1', null);
INSERT INTO `employees` VALUES ('2871', '刘帅', null, null, '华一平包', null, '乙班', 'H1702184', null, '1', null);
INSERT INTO `employees` VALUES ('2872', '谭传普', null, null, '华一品保', null, '乙班', 'H1806046', null, '1', null);
INSERT INTO `employees` VALUES ('2873', '刘亚超', null, null, '品保', null, '乙班', 'H1805059', null, '1', null);
INSERT INTO `employees` VALUES ('2874', '安江华', null, null, '华一平包', null, '乙班', 'H1803431', null, '1', null);
INSERT INTO `employees` VALUES ('2875', '吴东辉', null, null, '华一品保', null, '乙班', 'H1803626', null, '1', null);
INSERT INTO `employees` VALUES ('2876', '黄峰', null, null, '华一平包', null, '丙班', 'H1602282', null, '1', null);
INSERT INTO `employees` VALUES ('2877', '陈晨辉', null, null, '华一平包', null, '丙班', 'H1803111', null, '1', null);
INSERT INTO `employees` VALUES ('2878', '陈梦', null, null, '华一平包', null, '丙班', 'H1707189', null, '1', null);
INSERT INTO `employees` VALUES ('2879', '瞿宏一', null, null, '华一平包', null, '丙班', 'H1611031', null, '1', null);
INSERT INTO `employees` VALUES ('2880', '王赛博', null, null, '华一品保', null, '丙班', 'H1806044', null, '1', null);
INSERT INTO `employees` VALUES ('2881', '贺泽鑫', null, null, '华一平包', null, '丙班', 'H1709038', null, '1', null);
INSERT INTO `employees` VALUES ('2882', '陈汉', null, null, '华一平包', null, '丙班', 'H1803254', null, '1', null);
INSERT INTO `employees` VALUES ('2883', '廖少杰', null, null, '华一品保', null, '丙班', 'H1806045', null, '1', null);
INSERT INTO `employees` VALUES ('2884', '张意', null, null, '华一后纺', null, '甲班', 'H1503119', null, '1', null);
INSERT INTO `employees` VALUES ('2885', '李玉杰', null, null, '华一后纺', null, '甲班', 'H1807033', null, '1', null);
INSERT INTO `employees` VALUES ('2886', '马立春', null, null, '华一行政办', null, '', 'H1702101', null, '1', null);
INSERT INTO `employees` VALUES ('2887', '刘创', null, null, '设备管理部', null, '机电', 'H1602198', null, '1', null);
INSERT INTO `employees` VALUES ('2888', '华国星', null, null, '设备管理部', null, '机电', 'H1702706', null, '1', null);
INSERT INTO `employees` VALUES ('2889', '余刘金', null, null, '设备管理部', null, '机电', 'H1705006', null, '1', null);
INSERT INTO `employees` VALUES ('2890', '王康元', null, null, '华一前纺', null, '乙班', 'H1709020', null, '1', null);
INSERT INTO `employees` VALUES ('2891', '廖卫星', null, null, '华一前纺', null, '乙班', 'H1803334', null, '1', null);
INSERT INTO `employees` VALUES ('2892', '刘长清', null, null, '华一前纺', null, '乙班', 'H1409048', null, '1', null);
INSERT INTO `employees` VALUES ('2893', '王波', null, null, '华一前纺', null, '乙班', 'H1608107', null, '1', null);
INSERT INTO `employees` VALUES ('2894', '吴高云', null, null, '行政管理部', null, '常日', 'H1309124', null, '1', null);
INSERT INTO `employees` VALUES ('2895', '吴庆丰', null, null, '行政管理部', null, '常日', 'H1102103', null, '1', null);
INSERT INTO `employees` VALUES ('2896', '谢远浪', null, null, '华一前纺', null, '泵板', 'H0705011', null, '1', null);
INSERT INTO `employees` VALUES ('2897', '杨帆', null, null, '华一纺丝', null, '泵板', 'H1707080', null, '1', null);
INSERT INTO `employees` VALUES ('2898', '廖智星', null, null, '华一前纺', null, '丙班', 'H1608064', null, '1', null);
INSERT INTO `employees` VALUES ('2899', '金杭标', null, null, '设备管理部', null, '科级', 'H0402024', null, '1', null);
INSERT INTO `employees` VALUES ('2900', '王献杰', null, null, '华一前纺', null, '科级', 'H1307144', null, '1', null);
INSERT INTO `employees` VALUES ('2901', '肖承洋', null, null, '华一前纺', null, '丙班', 'H1303334', null, '1', null);
INSERT INTO `employees` VALUES ('2902', '江涛', null, null, '华一前纺', null, '丙班', 'H1503060', null, '1', null);
INSERT INTO `employees` VALUES ('2903', '李兵', null, null, '华一前纺', null, '丙班', 'H1804092', null, '1', null);
INSERT INTO `employees` VALUES ('2904', '王新民', null, null, '华一前纺', null, '甲班', 'H1211005', null, '1', null);
INSERT INTO `employees` VALUES ('2905', '赵洋洋', null, null, '华一前纺', null, '甲班', 'H1806058', null, '1', null);
INSERT INTO `employees` VALUES ('2906', '魏帅', null, null, '华一前纺', null, '乙班', 'H1510121', null, '1', null);
INSERT INTO `employees` VALUES ('2907', '吴刘强', null, null, '华一前纺', null, '甲班', 'H1210016', null, '1', null);
INSERT INTO `employees` VALUES ('2908', '廖欣星', null, null, '华一前纺', null, '甲班', 'H1610028', null, '1', null);
INSERT INTO `employees` VALUES ('2909', '李小林', null, null, '设备管理部', null, '后纺保全', 'H1309120', null, '1', null);
INSERT INTO `employees` VALUES ('2910', '王泽明', null, null, '设备管理部', null, '后纺保全', 'H1702210', null, '1', null);
INSERT INTO `employees` VALUES ('2911', '周东磊', null, null, '华一后纺', null, '乙班', 'H1006047', null, '1', null);
INSERT INTO `employees` VALUES ('2912', '刘畅', null, null, '华一后纺', null, '后纺综合', 'H1402293', null, '1', null);
INSERT INTO `employees` VALUES ('2913', '陈红宇', null, null, '设备管理部', null, '后纺保全', 'H0602115', null, '1', null);
INSERT INTO `employees` VALUES ('2914', '冉清华', null, null, '设备管理部', null, '后纺保全', 'H1603243', null, '1', null);
INSERT INTO `employees` VALUES ('2915', '王文辉', null, null, '设备管理部', null, '后纺保全', 'H1805077', null, '1', null);
INSERT INTO `employees` VALUES ('2916', '张奇', null, null, '设备管理部', null, '后纺保全', 'H1007044', null, '1', null);
INSERT INTO `employees` VALUES ('2917', '王文杰', null, null, '设备管理部', null, '后纺保全', 'H1202080', null, '1', null);
INSERT INTO `employees` VALUES ('2918', '江先进', null, null, '仓储1', null, '仓储', 'H1202207', null, '1', null);
INSERT INTO `employees` VALUES ('2919', '张德强', null, null, '仓储1', null, '仓储', 'H1307027', null, '1', null);
INSERT INTO `employees` VALUES ('2920', '杨良友', null, null, '仓储1', null, '仓储', 'H1803258', null, '1', null);
INSERT INTO `employees` VALUES ('2921', '瞿继收', null, null, '仓储1', null, '仓储', 'H1303147', null, '1', null);
INSERT INTO `employees` VALUES ('2922', '冉景红', null, null, '仓储1', null, '仓储', 'H1402053', null, '1', null);
INSERT INTO `employees` VALUES ('2923', '郑代友', null, null, '仓储1', null, '仓储', 'H1107245', null, '1', null);
INSERT INTO `employees` VALUES ('2924', '申屠洪根', null, null, '仓储1', null, '仓储', 'H1609028', null, '1', null);
INSERT INTO `employees` VALUES ('2925', '姜波', null, null, '华一行政办', null, '保安', 'H1410103', null, '1', null);
INSERT INTO `employees` VALUES ('2926', '赵沪龙', null, null, '华一行政办', null, '保安', 'H1805116', null, '1', null);
INSERT INTO `employees` VALUES ('2927', '虞惠民', null, null, '华一行政办', null, '保安', 'H1407091', null, '1', null);
INSERT INTO `employees` VALUES ('2928', '杨小良', null, null, '华一行政办', null, '保安', 'H1704022', null, '1', null);
INSERT INTO `employees` VALUES ('2929', '刘海东', null, null, '设备管理部', null, '董事长批示过', 'H0609009', null, '1', null);
INSERT INTO `employees` VALUES ('2930', '李宇超', null, null, '设备管理部', null, '机电', 'H1703063', null, '1', null);
INSERT INTO `employees` VALUES ('2931', '吴云菲', null, null, '设备管理部', null, '机电', 'H1804071', null, '1', null);
INSERT INTO `employees` VALUES ('2932', '王果', null, null, '设备部', null, '机电', 'H1504233', null, '1', null);
INSERT INTO `employees` VALUES ('2933', '吴猛', null, null, '动力', null, '夫妻', 'H1603128', null, '1', null);
INSERT INTO `employees` VALUES ('2934', '但乾乾', null, null, '华一前纺', null, '夫妻', 'H1210047', null, '1', null);
INSERT INTO `employees` VALUES ('2935', '刘东伟', null, null, '华一前纺', null, '', 'H1505082', null, '1', null);
INSERT INTO `employees` VALUES ('2936', '任仰波', null, null, '设备管理部', null, '前纺/甲班', 'H1608063', null, '1', null);
INSERT INTO `employees` VALUES ('2937', '苏空军', null, null, '华一前纺', null, '夫妻', 'H0403031', null, '1', null);
INSERT INTO `employees` VALUES ('2938', '张凤丽', null, null, '华一后纺', null, '夫妻', 'H1703181', null, '1', null);
INSERT INTO `employees` VALUES ('2939', '王留柱', null, null, '华一平包', null, '甲班', 'H1702456', null, '1', null);
INSERT INTO `employees` VALUES ('2940', '张佳伟', null, null, '华一平包', null, '甲班', 'H1710029', null, '1', null);
INSERT INTO `employees` VALUES ('2941', '叶飞虹', null, null, '财务管理部', null, '夫妻', 'H0302004', null, '1', null);
INSERT INTO `employees` VALUES ('2942', '宋召南', null, null, '动力', null, '动力', 'H1403370', null, '1', null);
INSERT INTO `employees` VALUES ('2943', '汪国栋', null, null, '动力', null, '动力', 'H1708117', null, '1', null);
INSERT INTO `employees` VALUES ('2944', '徐帮虎', null, null, '动力', null, '动力', 'H0308005', null, '1', null);
INSERT INTO `employees` VALUES ('2945', '朱熊飞', null, null, '动力', null, '动力', 'H1408175', null, '1', null);
INSERT INTO `employees` VALUES ('2946', '徐志武', null, null, '华一司机', null, '夫妻', 'H1202121', null, '1', null);
INSERT INTO `employees` VALUES ('2947', '马效如', null, null, '动力', null, '夫妻', 'H1804078', null, '1', null);
INSERT INTO `employees` VALUES ('2948', '陈峰', null, null, '流程信息部', null, '处级', 'H0803097', null, '1', null);
INSERT INTO `employees` VALUES ('2949', '刘军政', null, null, '华一行政办', null, '保安队长', 'H1506172', null, '1', null);
INSERT INTO `employees` VALUES ('2950', '肖齐红', null, null, '华一行政办', null, '保安队长', 'H1403323', null, '1', null);
INSERT INTO `employees` VALUES ('2951', '高玉友', null, null, '销售管理部', null, '夫妻', 'H0902056', null, '1', null);
INSERT INTO `employees` VALUES ('2952', '谢柳亚', null, null, '仓储1', null, '夫妻', 'H1406005', null, '1', null);
INSERT INTO `employees` VALUES ('2953', '张京明', null, null, '设备管理部', null, '处级/夫妻', 'H1011016', null, '1', null);
INSERT INTO `employees` VALUES ('2954', '刘华芳', null, null, '华一前纺', null, '处级/夫妻', 'H1609037', null, '1', null);
INSERT INTO `employees` VALUES ('2955', '李建开', null, null, '华一平包', null, '夫妻', 'H1003345', null, '1', null);
INSERT INTO `employees` VALUES ('2956', '吴华粉', null, null, '华一平包', null, '夫妻', 'H1502015', null, '1', null);
INSERT INTO `employees` VALUES ('2957', '朱明成', null, null, '华一前纺', null, '夫妻', 'H0802006', null, '1', null);
INSERT INTO `employees` VALUES ('2958', '李吉燕', null, null, '华一后纺', null, '夫妻', 'H1310040', null, '1', null);
INSERT INTO `employees` VALUES ('2959', '徐见明', null, null, '财务管理部', null, '夫妻', 'H1704004', null, '1', null);
INSERT INTO `employees` VALUES ('2960', '赵冰', null, null, '华一后纺', null, '处级', 'H0907001', null, '1', null);
INSERT INTO `employees` VALUES ('2961', '周谋成', null, null, '设备管理部', null, '处级', 'H0910017', null, '1', null);
INSERT INTO `employees` VALUES ('2962', '林荣斌', null, null, '义乌第一办事处', null, '办事处', 'H0608012', null, '1', null);
INSERT INTO `employees` VALUES ('2963', '吴文龙', null, null, '华一前纺', null, '工程师', 'H1706009', null, '1', null);
INSERT INTO `employees` VALUES ('2964', '曹智强', null, null, '华一前纺', null, '处级', 'H0907004', null, '1', null);
INSERT INTO `employees` VALUES ('2965', '李璐璐', null, null, '华一平包', null, '夫妻', 'H0907002', null, '1', null);
INSERT INTO `employees` VALUES ('2966', '丁旭峰', null, null, '销售管理部', null, '科员', 'H1202244', null, '1', null);
INSERT INTO `employees` VALUES ('2967', '丁健鹏', null, null, '销售管理部', null, '科员', 'H1803062', null, '1', null);
INSERT INTO `employees` VALUES ('2968', '丁徐谨', null, null, '华一平包', null, '科员', 'H1803430', null, '1', null);
INSERT INTO `employees` VALUES ('2969', '吴庆楠', null, null, '人力资源开发部', null, '处级', 'H1606004', null, '1', null);
INSERT INTO `employees` VALUES ('2970', '颜昌新', null, null, '仓储管理部', null, '处级', 'H0402037', null, '1', null);
INSERT INTO `employees` VALUES ('2971', '洪武平', null, null, '华一行政办', null, '处级', 'H0311005', null, '1', null);
INSERT INTO `employees` VALUES ('2972', '张守运', null, null, '浩睿新材', null, '处级', 'H1512022', null, '1', null);
INSERT INTO `employees` VALUES ('2973', '杨良红', null, null, '销售管理部', null, '处级', 'H1608026', null, '1', null);
INSERT INTO `employees` VALUES ('2974', '胡方波', null, null, '董事会', null, '处级', 'H0708500', null, '1', null);
INSERT INTO `employees` VALUES ('2975', '刘明月', null, null, '研究院', null, '处级', 'H1402118', null, '1', null);
INSERT INTO `employees` VALUES ('2976', '王乾', null, null, '五洲/总经理室', null, '处级', 'H1607019', null, '1', null);
INSERT INTO `employees` VALUES ('2977', '刘学敏', null, null, '总裁办', null, '处级', 'H1610006', null, '1', null);
INSERT INTO `employees` VALUES ('2978', '骆晓军', null, null, '华一平包', null, '处级', 'H0703030', null, '1', null);
INSERT INTO `employees` VALUES ('2979', '何琴', null, null, '销售管理部', null, '处级', 'H0609040', null, '1', null);
INSERT INTO `employees` VALUES ('2980', '张雪华', null, null, '研究院', null, '处级', 'H0911024', null, '1', null);
INSERT INTO `employees` VALUES ('2981', '崔常生', null, null, '销售管理部', null, '处级', 'H0802047', null, '1', null);
INSERT INTO `employees` VALUES ('2982', '郑波', null, null, '聚合筹备办', null, '处级', 'H1711049', null, '1', null);
INSERT INTO `employees` VALUES ('2983', '王喜桥', null, null, '行政中心', null, '处级', 'H0507056', null, '1', null);
INSERT INTO `employees` VALUES ('2984', '陈贵泽', null, null, '财务管理中心', null, '处级', 'H1806017', null, '1', null);
INSERT INTO `employees` VALUES ('2985', '苏波', null, null, '市场中心', null, '处级', 'H0307002', null, '1', null);
INSERT INTO `employees` VALUES ('2986', '谭延坤', null, null, '研究院', null, '处级', 'H0307001', null, '1', null);
INSERT INTO `employees` VALUES ('2987', '张益清', null, null, '事业管理部', null, '处级', 'H1609044', null, '1', null);
INSERT INTO `employees` VALUES ('2988', '何宜敏', null, null, '法务部', null, '处级', 'H1802002', null, '1', null);
INSERT INTO `employees` VALUES ('2989', '周建兵', null, null, 'PMC部', null, '处级', 'H0412007', null, '1', null);
INSERT INTO `employees` VALUES ('2990', '陈丽', null, null, '人力资源部', null, '处级', 'H1309066', null, '1', null);
INSERT INTO `employees` VALUES ('2991', '张惠珍', null, null, '财务中心', null, '处级', 'H0504014', null, '1', null);
INSERT INTO `employees` VALUES ('2992', '许骏', null, null, '管理中心', null, '处级', 'H0411020', null, '1', null);
INSERT INTO `employees` VALUES ('2993', '牛长胜', null, null, '总经理室', null, '处级', 'H1402100', null, '1', null);
INSERT INTO `employees` VALUES ('2994', '王丽文', null, null, '财务管理部', null, '处级', 'H1403420', null, '1', null);
INSERT INTO `employees` VALUES ('2995', '金少华', null, null, '财务管理部', null, '处级', 'H0508034', null, '1', null);
INSERT INTO `employees` VALUES ('2996', '翟海山', null, null, '工程技术中心', null, '处级', 'H0307018', null, '1', null);
INSERT INTO `employees` VALUES ('2997', '杨彩利', null, null, 'PMC部', null, '处级', 'H0803018', null, '1', null);
INSERT INTO `employees` VALUES ('2998', '王宗华', null, null, '仓储1', null, '夫妻', 'H0204002', null, '1', null);
INSERT INTO `employees` VALUES ('2999', '樊广雨', null, null, '仓储1', null, '夫妻', 'H1803121', null, '1', null);
INSERT INTO `employees` VALUES ('3000', '赵利红', null, null, '三鼎', null, '夫妻', 'H1206029', null, '1', null);
INSERT INTO `employees` VALUES ('3001', '张爱云', null, null, '华一后纺', null, '夫妻', 'H1503027', null, '1', null);
INSERT INTO `employees` VALUES ('3002', '颜双菊', null, null, '华一后纺', null, '夫妻', 'H1709019', null, '1', null);
INSERT INTO `employees` VALUES ('3003', '张成伟', null, null, '华一后纺', null, '夫妻', 'H1604001', null, '1', null);
INSERT INTO `employees` VALUES ('3004', '谢艳君', null, null, '华一后纺', null, '夫妻', 'H1602091', null, '1', null);
INSERT INTO `employees` VALUES ('3005', '郭士田', null, null, '华一后纺', null, '夫妻', 'H1409198', null, '1', null);
INSERT INTO `employees` VALUES ('3006', '徐龙', null, null, '华一后纺', null, '夫妻', 'H1702291', null, '1', null);
INSERT INTO `employees` VALUES ('3007', '张学芬', null, null, '华一后纺', null, '夫妻', 'H1402108', null, '1', null);
INSERT INTO `employees` VALUES ('3008', '李复兵', null, null, '华一前纺', null, '夫妻', 'H1503528', null, '1', null);
INSERT INTO `employees` VALUES ('3009', '匡开明', null, null, '仓储1', null, '夫妻', 'H1702107', null, '1', null);
INSERT INTO `employees` VALUES ('3010', '何海波', null, null, '华一后纺', null, '夫妻', 'H1803718', null, '1', null);
INSERT INTO `employees` VALUES ('3011', '罗学婵', null, null, '华一后纺', null, '夫妻', 'H1803717', null, '1', null);
INSERT INTO `employees` VALUES ('3012', '曹兴付', null, null, '华一前纺', null, '夫妻', 'H1310037', null, '1', null);
INSERT INTO `employees` VALUES ('3013', '陈锐', null, null, '华一前纺', null, '前纺', 'H0812023', null, '1', null);
INSERT INTO `employees` VALUES ('3014', '邓成凯', null, null, '华一前纺', null, '前纺', 'H1702626', null, '1', null);
INSERT INTO `employees` VALUES ('3015', '胡田浩', null, null, '华一前纺', null, '前纺', 'H1805124', null, '1', null);
INSERT INTO `employees` VALUES ('3016', '朱凤飞', null, null, '华一前纺', null, '前纺', 'H1803711', null, '1', null);
INSERT INTO `employees` VALUES ('3017', '叶凯晖', null, null, '华一前纺', null, '前纺', 'H1807086', null, '1', null);
INSERT INTO `employees` VALUES ('3018', '高猛', null, null, '华一前纺', null, '夫妻', 'H1702589', null, '1', null);
INSERT INTO `employees` VALUES ('3019', '刘洪婷', null, null, '华一后纺', null, '夫妻', 'H1702588', null, '1', null);
INSERT INTO `employees` VALUES ('3020', '肖彬', null, null, '华一后纺', null, '后纺', 'H1609004', null, '1', null);
INSERT INTO `employees` VALUES ('3021', '王振飞', null, null, '华一后纺', null, '后纺', 'H1708113', null, '1', null);
INSERT INTO `employees` VALUES ('3022', '张义文', null, null, '华一后纺', null, '后纺', 'H1803706', null, '1', null);
INSERT INTO `employees` VALUES ('3023', '殷晓雪', null, null, '生产管理部', null, '后纺', 'H1011001', null, '1', null);
INSERT INTO `employees` VALUES ('3024', '吕金剑', null, null, '华一后纺', null, '后纺', 'H1804006', null, '1', null);
INSERT INTO `employees` VALUES ('3025', '周壮', null, null, '华一后纺', null, '后纺', 'H1803728', null, '1', null);
INSERT INTO `employees` VALUES ('3026', '赵宁', null, null, '华一后纺', null, '后纺', 'H1306048', null, '1', null);
INSERT INTO `employees` VALUES ('3027', '刘锋辉', null, null, '华一后纺', null, '后纺', 'H1403283', null, '1', null);
INSERT INTO `employees` VALUES ('3028', '朱希柏', null, null, '华一后纺', null, '后纺', 'H1410041', null, '1', null);
INSERT INTO `employees` VALUES ('3029', '卫扬义', null, null, '华一后纺', null, '后纺', 'H1105001', null, '1', null);
INSERT INTO `employees` VALUES ('3030', '王飞', null, null, '华一后纺', null, '后纺', 'H1803433', null, '1', null);
INSERT INTO `employees` VALUES ('3031', '鄢晓江', null, null, '华一前纺', null, '前纺', 'H1702352', null, '1', null);
INSERT INTO `employees` VALUES ('3032', '陈华俊', null, null, '华一前纺', null, '前纺', 'H1803438', null, '1', null);
INSERT INTO `employees` VALUES ('3033', '殷学民', null, null, '华一行政办', null, '宿舍值班室', 'H1705010', null, '1', null);
INSERT INTO `employees` VALUES ('3034', '徐保生', null, null, '华一前纺', null, '前纺', 'H1602343', null, '1', null);
INSERT INTO `employees` VALUES ('3035', '谢吉健', null, null, '华一前纺', null, '前纺', 'H1803341', null, '1', null);
INSERT INTO `employees` VALUES ('3036', '彭凯凯', null, null, '华一前纺', null, '前纺', 'H1510050', null, '1', null);
INSERT INTO `employees` VALUES ('3037', '吴东攀', null, null, '华一前纺', null, '前纺', 'H1804079', null, '1', null);
INSERT INTO `employees` VALUES ('3038', '丁从伟', null, null, '华一前纺', null, '前纺', 'H1703043', null, '1', null);
INSERT INTO `employees` VALUES ('3039', '黄超', null, null, '华一前纺', null, '前纺', 'H1802065', null, '1', null);
INSERT INTO `employees` VALUES ('3040', '杨甲礼', null, null, '华一平包', null, '夫妻', 'H1711077', null, '1', null);
INSERT INTO `employees` VALUES ('3041', '何正敏', null, null, '华一平包', null, '夫妻', 'H1711076', null, '1', null);
INSERT INTO `employees` VALUES ('3042', '张在勤', null, null, '华一后纺', null, '夫妻', 'H1604156', null, '1', null);
INSERT INTO `employees` VALUES ('3043', '颜凤华', null, null, '华一后纺', null, '处级', 'H0905056', null, '1', null);
INSERT INTO `employees` VALUES ('3044', '杨度', null, null, '设备管理部', null, '夫妻', 'H1612002', null, '1', null);
INSERT INTO `employees` VALUES ('3045', '邹玉玉', null, null, '质量保证部', null, '夫妻', 'H1304149', null, '1', null);
INSERT INTO `employees` VALUES ('3046', '杨国保', null, null, '华一行政办', null, '宿舍值班室', 'H0806101', null, '1', null);
INSERT INTO `employees` VALUES ('3047', '黄剑', null, null, '动力', null, '处级', 'H1805001', null, '1', null);
INSERT INTO `employees` VALUES ('3048', '范玉英', null, null, '华二仓储2', null, '处级', 'H1609063', null, '1', null);
INSERT INTO `employees` VALUES ('3049', '赵云', null, null, '华一前纺', null, '夫妻', 'H1603824', null, '1', null);
INSERT INTO `employees` VALUES ('3050', '杨靖', null, null, '华一后纺', null, '夫妻', 'H1104067', null, '1', null);
INSERT INTO `employees` VALUES ('3051', '谢浩', null, null, '华一后纺', null, '夫妻', 'H1302058', null, '1', null);
INSERT INTO `employees` VALUES ('3052', '吕剑侠', null, null, '华一后纺', null, '夫妻', 'H1403004', null, '1', null);
INSERT INTO `employees` VALUES ('3053', '李彬', null, null, '华一前纺', null, '夫妻', 'H1502011', null, '1', null);
INSERT INTO `employees` VALUES ('3054', '张田莉', null, null, '三鼎/物流部', null, '夫妻', 'H1805566', null, '1', null);
INSERT INTO `employees` VALUES ('3055', '徐能云', null, null, '华一后纺', null, '夫妻', 'H1102105', null, '1', null);
INSERT INTO `employees` VALUES ('3056', '赵庆', null, null, '华一前纺', null, '夫妻', 'H1703123', null, '1', null);
INSERT INTO `employees` VALUES ('3057', '吴常飞', null, null, '华一平包', null, '夫妻', 'H1709039', null, '1', null);
INSERT INTO `employees` VALUES ('3058', '朱业勤', null, null, '华一后纺', null, '夫妻', 'H1602051', null, '1', null);
INSERT INTO `employees` VALUES ('3059', '谢艳霞', null, null, '华一后纺', null, '夫妻', 'H1602052', null, '1', null);
INSERT INTO `employees` VALUES ('3060', '张亮', null, null, '华一前纺', null, '夫妻', 'H1608034', null, '1', null);
INSERT INTO `employees` VALUES ('3061', '王进会', null, null, '华一后纺', null, '夫妻', 'H1608035', null, '1', null);
INSERT INTO `employees` VALUES ('3062', '万欢莲', null, null, '华一平包', null, '夫妻', 'H1803112', null, '1', null);
INSERT INTO `employees` VALUES ('3063', '张良七', null, null, '华一前纺', null, '夫妻', 'H1803741', null, '1', null);
INSERT INTO `employees` VALUES ('3064', '李景满', null, null, '仓储1', null, '夫妻', 'H1702039', null, '1', null);
INSERT INTO `employees` VALUES ('3065', '胡兰珍', null, null, '华一后纺', null, '夫妻', 'H0710039', null, '1', null);
INSERT INTO `employees` VALUES ('3066', '史从魁', null, null, '仓储1', null, '夫妻', 'H0911018', null, '1', null);
INSERT INTO `employees` VALUES ('3067', '王思元', null, null, '华一前纺', null, '夫妻', 'H1710006', null, '1', null);
INSERT INTO `employees` VALUES ('3068', '范桂丽', null, null, '平包', null, '夫妻', 'H1710007', null, '1', null);
INSERT INTO `employees` VALUES ('3069', '祝灿', null, null, '华一前纺', null, '前纺', 'H1603626', null, '1', null);
INSERT INTO `employees` VALUES ('3070', '卢延峰', null, null, '华一前纺', null, '前纺', 'H1702713', null, '1', null);
INSERT INTO `employees` VALUES ('3071', '聂忠华', null, null, '华一前纺', null, '前纺', 'H1708029', null, '1', null);
INSERT INTO `employees` VALUES ('3072', '甘琨', null, null, '华一前纺', null, '前纺', 'H1805096', null, '1', null);
INSERT INTO `employees` VALUES ('3073', '许小龙', null, null, '华一前纺', null, '前纺', 'H1805099', null, '1', null);
INSERT INTO `employees` VALUES ('3074', '黄奔涛', null, null, '华一前纺', null, '前纺', 'H1805095', null, '1', null);
INSERT INTO `employees` VALUES ('3075', '杨勇', null, null, '华一前纺', null, '前纺', 'H1603136', null, '1', null);
INSERT INTO `employees` VALUES ('3076', '唐晓村', null, null, '华一前纺', null, '前纺', 'H1702578', null, '1', null);
INSERT INTO `employees` VALUES ('3077', '赵伟', null, null, '华一前纺', null, '前纺', 'H1206107', null, '1', null);
INSERT INTO `employees` VALUES ('3078', '徐建忠', null, null, '华一前纺', null, '前纺', 'H1206094', null, '1', null);
INSERT INTO `employees` VALUES ('3079', '李朋', null, null, '华一后纺', null, '后纺', 'H1806048', null, '1', null);
INSERT INTO `employees` VALUES ('3080', '丁东波', null, null, '华一后纺', null, '后纺', 'H1807050', null, '1', null);
INSERT INTO `employees` VALUES ('3081', '刘叙林', null, null, '华一后纺', null, '后纺', 'H1602054', null, '1', null);
INSERT INTO `employees` VALUES ('3082', '彭旭升', null, null, '华一后纺', null, '后纺', 'H1702500', null, '1', null);
INSERT INTO `employees` VALUES ('3083', '闫飞', null, null, '设备管理部', null, '后纺', 'H1610052', null, '1', null);
INSERT INTO `employees` VALUES ('3084', '汤作', null, null, '华一后纺', null, '后纺', 'H1602324', null, '1', null);
INSERT INTO `employees` VALUES ('3085', '罗聪', null, null, '华一后纺', null, '后纺', 'H1807047', null, '1', null);
INSERT INTO `employees` VALUES ('3086', '孟令伍', null, null, '华一后纺', null, '后纺', 'H1503314', null, '1', null);
INSERT INTO `employees` VALUES ('3087', '李辉', null, null, '华一前纺', null, '前纺', 'H1407234', null, '1', null);
INSERT INTO `employees` VALUES ('3088', '马邦娟', null, null, '华一前纺', null, '前纺', 'H1404048', null, '1', null);
INSERT INTO `employees` VALUES ('3089', '叶城', null, null, '设备管理部', null, '前纺', 'H1010059', null, '1', null);
INSERT INTO `employees` VALUES ('3090', '裴雪健', null, null, '设备管理部', null, '前纺', 'H1707150', null, '1', null);
INSERT INTO `employees` VALUES ('3091', '魏信波', null, null, '设备管理部', null, '前纺', 'H1804172', null, '1', null);
INSERT INTO `employees` VALUES ('3092', '左贤超', null, null, '华一前纺', null, '前纺', 'H1603623', null, '1', null);
INSERT INTO `employees` VALUES ('3093', '李明磊', null, null, '华一前纺', null, '前纺', 'H1709016', null, '1', null);
INSERT INTO `employees` VALUES ('3094', '童永德', null, null, '华一前纺', null, '前纺', 'H1603726', null, '1', null);
INSERT INTO `employees` VALUES ('3095', '杨芳全', null, null, '华一前纺', null, '前纺', 'H1109029', null, '1', null);
INSERT INTO `employees` VALUES ('3096', '江有平', null, null, '华一前纺', null, '夫妻', 'H1602149', null, '1', null);
INSERT INTO `employees` VALUES ('3097', '朱美珍', null, null, '华一平包', null, '夫妻', 'H1510125', null, '1', null);
INSERT INTO `employees` VALUES ('3098', '陈松', null, null, '华一前纺', null, '夫妻', 'H0502013', null, '1', null);
INSERT INTO `employees` VALUES ('3099', '徐帮芹', null, null, '华一后纺', null, '夫妻', 'H0502012', null, '1', null);
INSERT INTO `employees` VALUES ('3100', '杨凯', null, null, '华一后纺', null, '夫妻', 'H1607025', null, '1', null);
INSERT INTO `employees` VALUES ('3101', '赵婷婷', null, null, '华一平包', null, '夫妻', 'H1607026', null, '1', null);
INSERT INTO `employees` VALUES ('3102', '杨微', null, null, '华一后纺', null, '夫妻', 'H1608087', null, '1', null);
INSERT INTO `employees` VALUES ('3103', '姜维', null, null, '华一行政办', null, '夫妻', 'H1508001', null, '1', null);
INSERT INTO `employees` VALUES ('3104', '殷涛', null, null, '设备管理部', null, '夫妻', 'H0902155', null, '1', null);
INSERT INTO `employees` VALUES ('3105', '孙晴晴', null, null, '华一后纺', null, '夫妻', 'H1011021', null, '1', null);
INSERT INTO `employees` VALUES ('3106', '张根跃', null, null, '行政管理部', null, '夫妻', 'H1503082', null, '1', null);
INSERT INTO `employees` VALUES ('3107', '邹红娟', null, null, '华一平包', null, '夫妻', 'H1503083', null, '1', null);
INSERT INTO `employees` VALUES ('3108', '刘晓晓', null, null, '华一后纺', null, '夫妻', 'H1308015', null, '1', null);
INSERT INTO `employees` VALUES ('3109', '吴明珠', null, null, '质量保证部', null, '夫妻', 'H1610009', null, '1', null);
INSERT INTO `employees` VALUES ('3110', '张林虎', null, null, '华一前纺', null, '夫妻', 'H0602066', null, '1', null);
INSERT INTO `employees` VALUES ('3111', '顾苗苗', null, null, '华一后纺', null, '夫妻', 'H0802021', null, '1', null);
INSERT INTO `employees` VALUES ('3112', '黄亚良', null, null, '设备管理部', null, '夫妻', 'H1211006', null, '1', null);
INSERT INTO `employees` VALUES ('3113', '温碧霞', null, null, '华一平包', null, '夫妻', 'H1211004', null, '1', null);
INSERT INTO `employees` VALUES ('3114', '孙黄玉', null, null, '华一前纺', null, '夫妻', 'H1611053', null, '1', null);
INSERT INTO `employees` VALUES ('3115', '张方元', null, null, '华一后纺', null, '夫妻', 'H1604158', null, '1', null);
INSERT INTO `employees` VALUES ('3116', '单珊', null, null, '华一后纺', null, '夫妻', 'H1604157', null, '1', null);
INSERT INTO `employees` VALUES ('3117', '欧红卫', null, null, '华一前纺', null, '夫妻', 'H1003182', null, '1', null);
INSERT INTO `employees` VALUES ('3118', '曾慧英', null, null, '华一平包', null, '夫妻', 'H1003183', null, '1', null);
INSERT INTO `employees` VALUES ('3119', '童泽龙', null, null, '华一前纺', null, '夫妻', 'H1805093', null, '1', null);
INSERT INTO `employees` VALUES ('3120', '杨朝妹', null, null, '华一平包', null, '夫妻', 'H1805094', null, '1', null);
INSERT INTO `employees` VALUES ('3121', '舒云会', null, null, '华一前纺', null, '夫妻', 'H1802041', null, '1', null);
INSERT INTO `employees` VALUES ('3122', '段琴仙', null, null, '华一品质', null, '夫妻', 'H1802044', null, '1', null);
INSERT INTO `employees` VALUES ('3123', '胡启明', null, null, '仓储1', null, '夫妻', 'H1702545', null, '1', null);
INSERT INTO `employees` VALUES ('3124', '瞿新凤', null, null, '华一平包', null, '夫妻', 'H1703111', null, '1', null);
INSERT INTO `employees` VALUES ('3125', '吴印昌', null, null, '华一后纺', null, '夫妻', 'H1803720', null, '1', null);
INSERT INTO `employees` VALUES ('3126', '宣方洁', null, null, '华一后纺', null, '夫妻', 'H1803721', null, '1', null);
INSERT INTO `employees` VALUES ('3127', '卢佰万', null, null, '华一前纺', null, '前纺', 'H1211008', null, '1', null);
INSERT INTO `employees` VALUES ('3128', '卢松挺', null, null, '华一前纺', null, '前纺', 'H1702648', null, '1', null);
INSERT INTO `employees` VALUES ('3129', '肖浪', null, null, '华一前纺', null, '前纺', 'H1806019', null, '1', null);
INSERT INTO `employees` VALUES ('3130', '王震', null, null, '华一后纺', null, '后纺', 'H1702367', null, '1', null);
INSERT INTO `employees` VALUES ('3131', '叶旭', null, null, '华一后纺', null, '后纺', 'H1807080', null, '1', null);
INSERT INTO `employees` VALUES ('3132', '洪荣松', null, null, '华一前纺', null, '前纺', 'H1702590', null, '1', null);
INSERT INTO `employees` VALUES ('3133', '张红林', null, null, '华一前纺', null, '前纺', 'H1805078', null, '1', null);
INSERT INTO `employees` VALUES ('3134', '周鹏', null, null, '华一前纺', null, '前纺', 'H1504400', null, '1', null);
INSERT INTO `employees` VALUES ('3135', '谢清', null, null, '华一前纺', null, '前纺', 'H1702499', null, '1', null);
INSERT INTO `employees` VALUES ('3136', '廖阳贵', null, null, '华一后纺', null, '后纺', 'H1603135', null, '1', null);
INSERT INTO `employees` VALUES ('3137', '孙好', null, null, '华一后纺', null, '后纺', 'H1603249', null, '1', null);
INSERT INTO `employees` VALUES ('3138', '申虎子', null, null, '设备管理部', null, '丙班', 'H1505128', null, '1', null);
INSERT INTO `employees` VALUES ('3139', '张在刚', null, null, '华一后纺', null, '后纺', 'H1608108', null, '1', null);
INSERT INTO `employees` VALUES ('3140', '何锡松', null, null, '华一后纺', null, '后纺', 'H1803704', null, '1', null);
INSERT INTO `employees` VALUES ('3141', '吕亚君', null, null, '华一后纺', null, '后纺', 'H1803259', null, '1', null);
INSERT INTO `employees` VALUES ('3142', '陈先瑞', null, null, '华一后纺', null, '后纺', 'H1807071', null, '1', null);
INSERT INTO `employees` VALUES ('3143', '李宏水', null, null, '华一后纺', null, '后纺', 'H1702585', null, '1', null);
INSERT INTO `employees` VALUES ('3144', '颜利民', null, null, '华一前纺', null, '前纺', 'H1003107', null, '1', null);
INSERT INTO `employees` VALUES ('3145', '唐文东', null, null, '华一前纺', null, '前纺', 'H1803109', null, '1', null);
INSERT INTO `employees` VALUES ('3146', '张文迪', null, null, '华一前纺', null, '前纺', 'H0902002', null, '1', null);
INSERT INTO `employees` VALUES ('3147', '黄亚朋', null, null, '华一前纺', null, '前纺', 'H1708112', null, '1', null);
INSERT INTO `employees` VALUES ('3148', '吴常科', null, null, '华一前纺', null, '前纺', 'H1807038', null, '1', null);
INSERT INTO `employees` VALUES ('3149', '陈南', null, null, '华一前纺', null, '前纺', 'H1807073', null, '1', null);
INSERT INTO `employees` VALUES ('3150', '滕纯志', null, null, '质量保证部', null, '处级', 'H1407046', null, '1', null);
INSERT INTO `employees` VALUES ('3151', '丁伟', null, null, '财务管理部', null, '夫妻', 'H0707025', null, '1', null);
INSERT INTO `employees` VALUES ('3152', '郑丽丹', null, null, '销售管理部', null, '夫妻', 'H1202115', null, '1', null);
INSERT INTO `employees` VALUES ('3153', '周建纯', null, null, '设备管理部', null, '夫妻', 'H1003257', null, '1', null);
INSERT INTO `employees` VALUES ('3154', '张颖', null, null, '五洲行政管理部', null, '夫妻', 'H0909022', null, '1', null);
INSERT INTO `employees` VALUES ('3155', '彭林', null, null, '华一平包', null, '夫妻', 'H1609068', null, '1', null);
INSERT INTO `employees` VALUES ('3156', '谢灿煌', null, null, '华一平包', null, '夫妻', 'H1708107', null, '1', null);
INSERT INTO `employees` VALUES ('3157', '向勇', null, null, '仓储1', null, '夫妻', 'H1206052', null, '1', null);
INSERT INTO `employees` VALUES ('3158', '张丽霞', null, null, '华一平包', null, '夫妻', 'H1206051', null, '1', null);
INSERT INTO `employees` VALUES ('3159', '江丽勇', null, null, '流程信息部', null, '夫妻', 'H1806050', null, '1', null);
INSERT INTO `employees` VALUES ('3160', '谢增华', null, null, '华一后纺', null, '夫妻', 'H1803600', null, '1', null);
INSERT INTO `employees` VALUES ('3161', '马晨旭', null, null, '华一后纺', null, '夫妻', 'H1803701', null, '1', null);
INSERT INTO `employees` VALUES ('3162', '任丽刚', null, null, '设备管理部', null, '夫妻', 'H1603407', null, '1', null);
INSERT INTO `employees` VALUES ('3163', '邓俊萍', null, null, '华一平包', null, '夫妻', 'H1803129', null, '1', null);
INSERT INTO `employees` VALUES ('3164', '钟广法', null, null, '华一平包', null, '夫妻', 'H0907034', null, '1', null);
INSERT INTO `employees` VALUES ('3165', '蔡银花', null, null, '华一后纺', null, '夫妻', 'H0903086', null, '1', null);
INSERT INTO `employees` VALUES ('3166', '张震震', null, null, '华一后纺', null, '夫妻', 'H1503167', null, '1', null);
INSERT INTO `employees` VALUES ('3167', '王凤娜', null, null, '华一后纺', null, '夫妻', 'H1503169', null, '1', null);
INSERT INTO `employees` VALUES ('3168', '沈文斌', null, null, '智能平台信息部', null, '夫妻', 'H1806016', null, '1', null);
INSERT INTO `employees` VALUES ('3169', '马艳芹', null, null, '五洲生产管理部', null, '夫妻', 'H1804001', null, '1', null);
INSERT INTO `employees` VALUES ('3170', '陈文海', null, null, '已内酰胺', null, '夫妻', 'H1803735', null, '1', null);
INSERT INTO `employees` VALUES ('3171', '谢开国', null, null, '华一平包', null, '夫妻', 'H1503737', null, '1', null);
INSERT INTO `employees` VALUES ('3172', '陈梅香', null, null, '华一平包', null, '夫妻', 'H1503738', null, '1', null);
INSERT INTO `employees` VALUES ('3173', '叶小涵', null, null, '华一后纺', null, '夫妻', 'H1803422', null, '1', null);
INSERT INTO `employees` VALUES ('3174', '卜延安', null, null, '华一后纺', null, '夫妻', 'H1506027', null, '1', null);
INSERT INTO `employees` VALUES ('3175', '邓海红', null, null, '华一前纺', null, '夫妻', 'H1003121', null, '1', null);
INSERT INTO `employees` VALUES ('3176', '魏信荣', null, null, '华一平包', null, '夫妻', 'H1702114', null, '1', null);
INSERT INTO `employees` VALUES ('3177', '杨文合', null, null, '华一平包', null, '平包', 'H0808021', null, '1', null);
INSERT INTO `employees` VALUES ('3178', '祝涛', null, null, '华一平包', null, '平包', 'H1702104', null, '1', null);
INSERT INTO `employees` VALUES ('3179', '何旭松', null, null, '华一前纺', null, '前纺', 'H1803723', null, '1', null);
INSERT INTO `employees` VALUES ('3180', '周葛旨豪', null, null, '华一前纺', null, '前纺', 'H1806052', null, '1', null);
INSERT INTO `employees` VALUES ('3181', '陆栋超', null, null, '华一前纺', null, '前纺', 'H1209012', null, '1', null);
INSERT INTO `employees` VALUES ('3182', '许成喜', null, null, '华一平包', null, '平包', 'H1202472', null, '1', null);
INSERT INTO `employees` VALUES ('3183', '吴杰', null, null, '华一后纺', null, '后纺', 'H1603413', null, '1', null);
INSERT INTO `employees` VALUES ('3184', '覃路军', null, null, '华一后纺', null, '后纺', 'H1806124', null, '1', null);
INSERT INTO `employees` VALUES ('3185', '轩宇翔', null, null, '华一前纺', null, '后纺', 'H1803570', null, '1', null);
INSERT INTO `employees` VALUES ('3186', '轩宝珠', null, null, '华一前纺', null, '后纺', 'H1803571', null, '1', null);
INSERT INTO `employees` VALUES ('3187', '刘洋', null, null, '华一后纺', null, '后纺', 'H1503160', null, '1', null);
INSERT INTO `employees` VALUES ('3188', '刘康俊', null, null, '华一后纺', null, '后纺', 'H1803722', null, '1', null);
INSERT INTO `employees` VALUES ('3189', '邹健', null, null, '华一后纺', null, '后纺', 'H1703092', null, '1', null);
INSERT INTO `employees` VALUES ('3190', '李东旭', null, null, '华一后纺', null, '后纺', 'H1807072', null, '1', null);
INSERT INTO `employees` VALUES ('3191', '李文举', null, null, '华一平包', null, '平包', 'H1303312', null, '1', null);
INSERT INTO `employees` VALUES ('3192', '李波', null, null, '动力', null, '前纺', 'H1803054', null, '1', null);
INSERT INTO `employees` VALUES ('3193', '杨平而', null, null, '动力', null, '前纺', 'H1803432', null, '1', null);
INSERT INTO `employees` VALUES ('3194', '向长安', null, null, '华一后纺', null, '前纺', 'H1709090', null, '1', null);
INSERT INTO `employees` VALUES ('3195', '刘丙菊', null, null, '华一后纺', null, '前纺', 'H1710079', null, '1', null);
INSERT INTO `employees` VALUES ('3196', '李宫荣', null, null, '仓储1', null, '夫妻', 'H1102158', null, '1', null);
INSERT INTO `employees` VALUES ('3197', '彭森', null, null, '仓储1', null, '夫妻', 'H1102157', null, '1', null);
INSERT INTO `employees` VALUES ('3198', '孙辉超', null, null, '华一前纺', null, '夫妻', 'H0402022', null, '1', null);
INSERT INTO `employees` VALUES ('3199', '刘莉', null, null, '华一平包', null, '夫妻', 'H0409004', null, '1', null);
INSERT INTO `employees` VALUES ('3200', '童树伟', null, null, '华一前纺', null, '夫妻', 'H1603102', null, '1', null);
INSERT INTO `employees` VALUES ('3201', '王春艳', null, null, '华一平包', null, '夫妻', 'H1603101', null, '1', null);
INSERT INTO `employees` VALUES ('3202', '叶辉', null, null, '企管部', null, '夫妻', 'H1803562', null, '1', null);
INSERT INTO `employees` VALUES ('3203', '嵇丽梅', null, null, '人力资源开发部', null, '夫妻', 'H1804180', null, '1', null);
INSERT INTO `employees` VALUES ('3204', '朱俊', null, null, '华一平包', null, '夫妻', 'H1802007', null, '1', null);
INSERT INTO `employees` VALUES ('3205', '徐超', null, null, '华一平包', null, '夫妻', 'H1802008', null, '1', null);
INSERT INTO `employees` VALUES ('3206', '段琴秀', null, null, '华一平包', null, '夫妻', 'H1706062', null, '1', null);
INSERT INTO `employees` VALUES ('3207', '王国松', null, null, '华一后纺', null, '夫妻', 'H1802042', null, '1', null);
INSERT INTO `employees` VALUES ('3208', '韩艳林', null, null, '华一平包', null, '夫妻', 'H0807014', null, '1', null);
INSERT INTO `employees` VALUES ('3209', '安志华', null, null, '华一平包', null, '夫妻', 'H0909042', null, '1', null);
INSERT INTO `employees` VALUES ('3210', '孙俊峰', null, null, '设备管理部', null, '夫妻', 'H1609009', null, '1', null);
INSERT INTO `employees` VALUES ('3211', '昝皖月', null, null, '三鼎', null, '夫妻', 'H1803104', null, '1', null);
INSERT INTO `employees` VALUES ('3212', '宋利国', null, null, '华一前纺', null, '夫妻', 'H1702341', null, '1', null);
INSERT INTO `employees` VALUES ('3213', '覃文娟', null, null, '华一平包', null, '夫妻', 'H1702340', null, '1', null);
INSERT INTO `employees` VALUES ('3214', '吴丽萍', null, null, '财务管理部', null, '处级', 'H1408169', null, '1', null);
INSERT INTO `employees` VALUES ('3215', '周鸣', null, null, '华一前纺', null, '夫妻', 'H1603108', null, '1', null);
INSERT INTO `employees` VALUES ('3216', '邹淑芳', null, null, '质量保证部', null, '夫妻', 'H1603729', null, '1', null);
INSERT INTO `employees` VALUES ('3217', '楼冠群', null, null, '销售管理部', null, '科员', 'H1803120', null, '1', null);
INSERT INTO `employees` VALUES ('3218', '颜志伟', null, null, '法务部', null, '科员', 'H1806059', null, '1', null);
INSERT INTO `employees` VALUES ('3219', '黄明', null, null, '华一前纺', null, '夫妻', 'H1403306', null, '1', null);
INSERT INTO `employees` VALUES ('3220', '陈怀英', null, null, '华一前纺', null, '夫妻', 'H1403305', null, '1', null);
INSERT INTO `employees` VALUES ('3221', '燕飞龙', null, null, '华一后纺', null, '夫妻', 'H1702363', null, '1', null);
INSERT INTO `employees` VALUES ('3222', '王凯月', null, null, '华一后纺', null, '夫妻', 'H1702364', null, '1', null);
INSERT INTO `employees` VALUES ('3223', '罗波', null, null, '华一前纺', null, '夫妻', 'H1707147', null, '1', null);
INSERT INTO `employees` VALUES ('3224', '穆晓云', null, null, '华一平包', null, '夫妻', 'H1708118', null, '1', null);
INSERT INTO `employees` VALUES ('3225', '秦志坚', null, null, '市场管理部', null, '副部长', 'H1611016', null, '1', null);
INSERT INTO `employees` VALUES ('3226', '祝金涛', null, null, '华一平包', null, '夫妻', 'H1603828', null, '1', null);
INSERT INTO `employees` VALUES ('3227', '张银灵', null, null, '华一平包', null, '夫妻', 'H1702105', null, '1', null);
INSERT INTO `employees` VALUES ('3228', '尹京', null, null, '华一前纺', null, '夫妻', 'H1702366', null, '1', null);
INSERT INTO `employees` VALUES ('3229', '赵丽娟', null, null, '华一平包', null, '夫妻', 'H1702365', null, '1', null);
INSERT INTO `employees` VALUES ('3230', '陶显平', null, null, '华一前纺', null, '夫妻', 'H1503464', null, '1', null);
INSERT INTO `employees` VALUES ('3231', '冯华香', null, null, '华一平包', null, '夫妻', 'H1504053', null, '1', null);
INSERT INTO `employees` VALUES ('3232', '李昕宇', null, null, '市场管理部', null, '部级', 'H1610071', null, '1', null);
INSERT INTO `employees` VALUES ('3233', '易培均', null, null, '工程技术中心', null, '工程师', 'H1609036', null, '1', null);
INSERT INTO `employees` VALUES ('3234', '刘琼', null, null, 'PMC', null, '工程师', 'H1702650', null, '1', null);
INSERT INTO `employees` VALUES ('3235', '赖光贤', null, null, '企业文化部', null, '夫妻', 'H1803332', null, '1', null);
INSERT INTO `employees` VALUES ('3236', '周超', null, null, '设备管理部', null, '夫妻', 'H1506151', null, '1', null);
INSERT INTO `employees` VALUES ('3237', '李参参', null, null, '华一前纺', null, '夫妻', 'H1611055', null, '1', null);
INSERT INTO `employees` VALUES ('3238', '杨元进', null, null, '华一行政办', null, '夫妻', 'H1702534', null, '1', null);
INSERT INTO `employees` VALUES ('3239', '葛森杰', null, null, '秘书办', null, '副经理', 'H1806134', null, '1', null);
INSERT INTO `employees` VALUES ('3240', '项恋', null, null, '秘书办', null, '夫妻', 'H1310200', null, '1', null);
INSERT INTO `employees` VALUES ('3241', '杨为义', null, null, '仓储1', null, '夫妻', 'H1102160', null, '1', null);
INSERT INTO `employees` VALUES ('3242', '黄金翠', null, null, '华一品保', null, '夫妻', 'H1807143', null, '1', null);
INSERT INTO `employees` VALUES ('3243', '余虹', null, null, '秘书办', null, '科员', 'H1602177', null, '1', null);
INSERT INTO `employees` VALUES ('3244', '朱兰仙', null, null, '秘书办', null, '科员', 'H1606006', null, '1', null);
INSERT INTO `employees` VALUES ('3245', '杨志华', null, null, '仓储1', null, '夫妻', 'H1102436', null, '1', null);
INSERT INTO `employees` VALUES ('3246', '陈秀风', null, null, '三鼎', null, '夫妻', 'H1802263', null, '1', null);
INSERT INTO `employees` VALUES ('3247', '张英明', null, null, '监察部', null, '经理', 'H1202192', null, '1', null);
INSERT INTO `employees` VALUES ('3248', '杨晓容', null, null, '华一前纺', null, '副经理', 'H1202193', null, '1', null);
INSERT INTO `employees` VALUES ('3249', '孙会军', null, null, '华一后纺', null, '夫妻', 'H1510088', null, '1', null);
INSERT INTO `employees` VALUES ('3250', '赵静', null, null, '华一后纺', null, '夫妻', 'H1702711', null, '1', null);
INSERT INTO `employees` VALUES ('3251', '张建新', null, null, '华一前纺', null, '夫妻', 'H1402051', null, '1', null);
INSERT INTO `employees` VALUES ('3252', '曾福碧', null, null, '华一后纺', null, '夫妻', 'H1006067', null, '1', null);
INSERT INTO `employees` VALUES ('3253', '袁翠艳', '女', null, '事业管理部', null, '事业管理部/智能互联平台', 'H1803322', null, '1', null);
INSERT INTO `employees` VALUES ('3254', '李云霞', '女', null, '智能互联平台', null, '事业管理部/智能互联平台', 'H1807031', null, '1', null);
INSERT INTO `employees` VALUES ('3255', '楼俊倩', '女', null, '市场管理部', null, '市场管理部/总裁办', 'H1703131', null, '1', null);
INSERT INTO `employees` VALUES ('3256', '邓慧慧', '女', null, '总裁办', null, '市场管理部/总裁办', 'H1707064', null, '1', null);
INSERT INTO `employees` VALUES ('3257', '张丽聪', '女', null, '财务管理部', null, '行政管理部/财务管理部', 'H1703183', null, '1', null);
INSERT INTO `employees` VALUES ('3258', '黄慕莛', '女', null, '秘书办', null, '秘书办/采购管理部', 'H1706077', null, '1', null);
INSERT INTO `employees` VALUES ('3259', '王二梅', '女', null, '人资部', null, '秘书办/采购管理部', 'H1803124', null, '1', null);
INSERT INTO `employees` VALUES ('3260', '罗倩', '女', null, '财务管理部', null, '秘书办/采购管理部', 'H1807158', null, '1', null);
INSERT INTO `employees` VALUES ('3261', '雷培香', '女', null, '知识产权室', null, '知识产权室/行政管理部', 'H1807049', null, '1', null);
INSERT INTO `employees` VALUES ('3262', '关寒丹', '女', null, '行政管理部', null, '知识产权室/行政管理部', 'H1807162', null, '1', null);
INSERT INTO `employees` VALUES ('3263', '宋梦飞', '男', null, '基金筹备组', null, '基金筹备组/已内酰胺', 'H1703186', null, '1', null);
INSERT INTO `employees` VALUES ('3264', '王涛', '男', null, '已内酰胺', null, '基金筹备组/已内酰胺', 'H1807159', null, '1', null);
INSERT INTO `employees` VALUES ('3265', '杜政天', '男', null, '平包', null, '平包/后纺', 'H1703178', null, '1', null);
INSERT INTO `employees` VALUES ('3266', '袁刘胜', '男', null, '华一后纺', null, '平包/后纺', 'H1807088', null, '1', null);
INSERT INTO `employees` VALUES ('3267', '杜嘉玮', '男', null, 'PMC部', null, 'PMC/已内酰胺', 'H1709018', null, '1', null);
INSERT INTO `employees` VALUES ('3268', '张聪', '男', null, '已内酰胺', null, 'PMC/已内酰胺', 'H1807119', null, '1', null);
INSERT INTO `employees` VALUES ('3269', '陈宾辉', '男', null, '华一前纺', null, '华一前纺', 'H1807151', null, '1', null);
INSERT INTO `employees` VALUES ('3270', '李文煜', '男', null, '华一前纺', null, '华一前纺', 'H1807', null, '1', null);
INSERT INTO `employees` VALUES ('3271', '陈英杰', '男', null, '流程信息部', null, '流程信息部', 'H1707076', null, '1', null);
INSERT INTO `employees` VALUES ('3272', '平凯宇', '男', null, '流程信息部', null, '流程信息部', 'H1803137', null, '1', null);
INSERT INTO `employees` VALUES ('3273', '夏长河', '男', null, '销售管理部', null, '销售管理部/行政管理部', 'H1803340', null, '1', null);
INSERT INTO `employees` VALUES ('3274', '秦乐乐', '男', null, '行政管理部', null, '销售管理部/行政管理部', 'H1807166', null, '1', null);
INSERT INTO `employees` VALUES ('3275', '徐威洋', '男', null, '管理中心', null, '证券室', 'H1707191', null, '1', null);
INSERT INTO `employees` VALUES ('3276', '张晓文', '男', null, '证卷室', null, '证券室', 'H1805019', null, '1', null);
INSERT INTO `employees` VALUES ('3277', '韩可', '女', null, '销售管理部', null, '销售管理部/采购管理部', 'H1807120', null, '1', null);
INSERT INTO `employees` VALUES ('3278', '舒萍', '女', null, '采购管理部', null, '销售管理部/采购管理部', 'H1807153', null, '1', null);
INSERT INTO `employees` VALUES ('3279', '熊鼎奇', '男', null, '华一加弹', null, '华一后纺', 'H1707043', null, '1', null);
INSERT INTO `employees` VALUES ('3280', '胡明', '男', null, '华一加弹', null, '华一后纺', 'H1707083', null, '1', null);
INSERT INTO `employees` VALUES ('3281', '王泽斌', '男', null, '销售管理部', null, '销售管理部', 'H1803066', null, '1', null);
INSERT INTO `employees` VALUES ('3282', '余洋', '男', null, '企业文化部', null, '销售管理部', 'H1807184', null, '1', null);
INSERT INTO `employees` VALUES ('3283', '黄书起', '男', null, '设备管理部/后', null, '设备管理部后纺/后纺', 'H1707033', null, '1', null);
INSERT INTO `employees` VALUES ('3284', '贾进亭', '男', null, '华一后纺', null, '设备管理部后纺/后纺', 'H1806125', null, '1', null);
INSERT INTO `employees` VALUES ('3285', '谢桂', '男', null, '质量保证部', null, '质量保证部', 'H1707095', null, '1', null);
INSERT INTO `employees` VALUES ('3286', '段中玖', '男', null, '华一平包', null, '平包/质保', 'H1707100', null, '1', null);
INSERT INTO `employees` VALUES ('3287', '徐赐照', '男', null, '华一质保', null, '平包/质保', 'H1707116', null, '1', null);
INSERT INTO `employees` VALUES ('3288', '杨维', '男', null, '华一加弹', null, '后纺/前纺', 'H1707113', null, '1', null);
INSERT INTO `employees` VALUES ('3289', '葛言强', '男', null, '前纺', null, '后纺/前纺', 'H1807036', null, '1', null);
INSERT INTO `employees` VALUES ('3290', '龚小妹', '女', null, '华一行政办', null, '宿管值班室', 'H1703096', null, '1', null);
INSERT INTO `employees` VALUES ('3291', '宗瑞艳', '女', null, '市场拓展部', null, '市场拓展部/国际贸易部', 'H1803574', null, '1', null);
INSERT INTO `employees` VALUES ('3292', '季丽娜', '女', null, '国际贸易部', null, '市场拓展部/国际贸易部', 'H1807046', null, '1', null);
INSERT INTO `employees` VALUES ('3293', '陈昌霞', '女', null, '人力资源部', null, '', 'H1807042', null, '1', null);
INSERT INTO `employees` VALUES ('3294', '张勤芳', '女', null, 'PMC', null, '', 'H1807145', null, '1', null);
INSERT INTO `employees` VALUES ('3295', '郭凯卿', '女', null, 'PMC部', null, 'PMC/市场拓展部', 'H1807091', null, '1', null);
INSERT INTO `employees` VALUES ('3296', '王蓉', '女', null, '市场拓展部', null, 'PMC/市场拓展部', 'H1807092', null, '1', null);
INSERT INTO `employees` VALUES ('3297', '白雪婷', '女', null, '人力资源部', null, '人力资源部', 'H1802062', null, '1', null);
INSERT INTO `employees` VALUES ('3298', '赵真真', '女', null, '人力资源部', null, '人力资源部', 'H1802093', null, '1', null);
INSERT INTO `employees` VALUES ('3299', '任景美', null, null, '事业管理部', null, '企划部/副总级', 'H1410097', null, '1', null);
INSERT INTO `employees` VALUES ('3300', '孙宝乾', null, null, '销售管理部', null, '销售部/部长', 'H1310064', null, '1', null);
INSERT INTO `employees` VALUES ('3301', '张新夫', null, null, '行政管理部', null, '行政管理部/部长', 'H1504385', null, '1', null);
INSERT INTO `employees` VALUES ('3302', '戚爱民', null, null, '董事办', null, '副总级', 'H1804096', null, '1', null);
INSERT INTO `employees` VALUES ('3303', '张振', null, null, '已内酰胺', null, '部级', 'H1709060', null, '1', null);
INSERT INTO `employees` VALUES ('3304', '朱文建', null, null, '切片项目组', null, '副总级', 'H15055037', null, '1', null);
INSERT INTO `employees` VALUES ('3305', '舒志华', null, null, '制造部', null, '副总级', 'H1707021', null, '1', null);
INSERT INTO `employees` VALUES ('3306', '陈乐平', null, null, '人力行政平台', null, '副总级', 'H1806041', null, '1', null);
INSERT INTO `employees` VALUES ('3307', '莫顺学', null, null, '证券室', '', '11.1入住,证券室/部长,', 'H1609030', null, '1', null);
INSERT INTO `employees` VALUES ('3308', '顾耀明', null, null, '切片项目组', '刘春平', '7.18入住,切片项目组/部长,夫妻', 'H1707169', null, '1', null);
INSERT INTO `employees` VALUES ('3309', '张庆喜', null, null, '已内酰胺', '', ',已内酰胺/总工,', 'H1806055', null, '1', null);
INSERT INTO `employees` VALUES ('3310', '祝春阳', null, null, '公司', '', '9.4入住,总经理,', 'H1709032', null, '1', null);
INSERT INTO `employees` VALUES ('3311', '徐学全', null, null, '营销平台', '', ',副总,', 'H1807147', null, '1', null);
INSERT INTO `employees` VALUES ('3312', '邢成龙', null, null, '客户服务部', '', 'H1803133', 'H1803132', null, '1', null);
INSERT INTO `employees` VALUES ('3313', '李云', null, null, '生产管理部', '', '客服经理/五洲工艺工程师', 'H1803133', null, '1', null);
INSERT INTO `employees` VALUES ('3314', '郝敬华', null, null, '电仪管理部', '', '', 'H0704006', null, '1', null);
INSERT INTO `employees` VALUES ('3315', '孙林', null, null, '设备管理部', '', '', 'H0403002', null, '1', null);
INSERT INTO `employees` VALUES ('3316', '喻志强', null, null, '公司流程信息部', '', '', 'H1705008', null, '1', null);
INSERT INTO `employees` VALUES ('3317', '冯壹军', null, null, '市场管理部', '', '', 'H1611018', null, '1', null);
INSERT INTO `employees` VALUES ('3318', '高潮歌', null, null, '总工室', '', '', 'H1702380', null, '1', null);
INSERT INTO `employees` VALUES ('3319', '胡有春', null, null, '销售管理部', '', '', 'H1607006', null, '1', null);
INSERT INTO `employees` VALUES ('3320', '胡启年', null, null, '行政管理部', '', '', 'H1705007', null, '1', null);
INSERT INTO `employees` VALUES ('3321', '韩燕', null, null, '五洲财务管理部', '', '', 'H0511062', null, '1', null);
INSERT INTO `employees` VALUES ('3322', '吴小彬', null, null, '人力资源部', '', '部长', 'H1801026', null, '1', null);
INSERT INTO `employees` VALUES ('3323', '王永敏', null, null, '切片项目组', '', '', 'H1803564', null, '1', null);
INSERT INTO `employees` VALUES ('3324', '李素平', null, null, '财务管理部', '', '', 'H1712018', null, '1', null);
INSERT INTO `employees` VALUES ('3325', '江建东', null, null, '人力资源部平台', '', '部长', 'H1805017', null, '1', null);
INSERT INTO `employees` VALUES ('3326', '陈幸贵', null, null, '已内酰胺', '', '', 'H1802005', null, '1', null);

-- ----------------------------
-- Table structure for `employees_rooms`
-- ----------------------------
DROP TABLE IF EXISTS `employees_rooms`;
CREATE TABLE `employees_rooms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_no` varchar(11) NOT NULL,
  `room_no` varchar(11) NOT NULL,
  `date_in` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2187 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employees_rooms
-- ----------------------------
INSERT INTO `employees_rooms` VALUES ('1588', 'H1503486', '101', null, null, '2745', '1962');
INSERT INTO `employees_rooms` VALUES ('1589', 'H1806020', '102', null, null, '2746', '1963');
INSERT INTO `employees_rooms` VALUES ('1590', 'H1603558', '103', null, null, '2747', '1964');
INSERT INTO `employees_rooms` VALUES ('1591', 'H1711078', '104', null, null, '2748', '1965');
INSERT INTO `employees_rooms` VALUES ('1592', 'H1803127', '104', null, null, '2749', '1965');
INSERT INTO `employees_rooms` VALUES ('1593', 'H1807142', '104', null, null, '2750', '1965');
INSERT INTO `employees_rooms` VALUES ('1594', 'H1402179', '105', null, null, '2751', '1966');
INSERT INTO `employees_rooms` VALUES ('1595', 'H1802009', '106', null, null, '2752', '1967');
INSERT INTO `employees_rooms` VALUES ('1596', 'H1702359', '107', null, null, '2753', '1968');
INSERT INTO `employees_rooms` VALUES ('1597', 'H1702187', '107', null, null, '2754', '1968');
INSERT INTO `employees_rooms` VALUES ('1598', 'H1702533', '108', null, null, '2755', '1969');
INSERT INTO `employees_rooms` VALUES ('1599', 'H1702583', '108', null, null, '2756', '1969');
INSERT INTO `employees_rooms` VALUES ('1600', 'H0510059', '201', null, null, '2757', '1971');
INSERT INTO `employees_rooms` VALUES ('1601', 'H1803126', '201', null, null, '2758', '1971');
INSERT INTO `employees_rooms` VALUES ('1602', 'H1702299', '203', null, null, '2759', '1973');
INSERT INTO `employees_rooms` VALUES ('1603', 'H1702584', '204', null, null, '2760', '1974');
INSERT INTO `employees_rooms` VALUES ('1604', 'H1804080', '204', null, null, '2761', '1974');
INSERT INTO `employees_rooms` VALUES ('1605', 'H1702549', '205', null, null, '2762', '1975');
INSERT INTO `employees_rooms` VALUES ('1606', 'H1503437', '205', null, null, '2763', '1975');
INSERT INTO `employees_rooms` VALUES ('1607', 'H1709145', '206', null, null, '2764', '1976');
INSERT INTO `employees_rooms` VALUES ('1608', 'H1703133', '206', null, null, '2765', '1976');
INSERT INTO `employees_rooms` VALUES ('1609', 'H1503063', '207', null, null, '2766', '1977');
INSERT INTO `employees_rooms` VALUES ('1610', 'H1605005', '207', null, null, '2767', '1977');
INSERT INTO `employees_rooms` VALUES ('1611', 'H1803727', '208', null, null, '2768', '1978');
INSERT INTO `employees_rooms` VALUES ('1612', 'H1710076', '208', null, null, '2769', '1978');
INSERT INTO `employees_rooms` VALUES ('1613', 'H1702296', '209', null, null, '2770', '1979');
INSERT INTO `employees_rooms` VALUES ('1614', 'H1702297', '209', null, null, '2771', '1979');
INSERT INTO `employees_rooms` VALUES ('1615', 'H1807032', '209', null, null, '2772', '1979');
INSERT INTO `employees_rooms` VALUES ('1616', 'H1410003', '303', null, null, '2773', '1982');
INSERT INTO `employees_rooms` VALUES ('1617', 'H1805122', '303', null, null, '2774', '1982');
INSERT INTO `employees_rooms` VALUES ('1618', 'H1807141', '303', null, null, '2775', '1982');
INSERT INTO `employees_rooms` VALUES ('1619', 'H1303030', '306', null, null, '2776', '1985');
INSERT INTO `employees_rooms` VALUES ('1620', 'H1503861', '306', null, null, '2777', '1985');
INSERT INTO `employees_rooms` VALUES ('1621', 'H1609065', '306', null, null, '2778', '1985');
INSERT INTO `employees_rooms` VALUES ('1622', 'H1804223', '306', null, null, '2779', '1985');
INSERT INTO `employees_rooms` VALUES ('1623', 'H1205043', '308', null, null, '2780', '1987');
INSERT INTO `employees_rooms` VALUES ('1624', 'H0803053', '308', null, null, '2781', '1987');
INSERT INTO `employees_rooms` VALUES ('1625', 'H1302005', '309', null, null, '2782', '1988');
INSERT INTO `employees_rooms` VALUES ('1626', 'H1603123', '309', null, null, '2783', '1988');
INSERT INTO `employees_rooms` VALUES ('1627', 'H1506165', '401', null, null, '2784', '1989');
INSERT INTO `employees_rooms` VALUES ('1628', 'H1805055', '401', null, null, '2785', '1989');
INSERT INTO `employees_rooms` VALUES ('1629', 'H1610073', '402', null, null, '2786', '1990');
INSERT INTO `employees_rooms` VALUES ('1630', 'H1407034', '403', null, null, '2787', '1991');
INSERT INTO `employees_rooms` VALUES ('1631', 'H1803141', '403', null, null, '2788', '1991');
INSERT INTO `employees_rooms` VALUES ('1632', 'H1802043', '404', null, null, '2789', '1992');
INSERT INTO `employees_rooms` VALUES ('1633', 'H1803597', '404', null, null, '2790', '1992');
INSERT INTO `employees_rooms` VALUES ('1634', 'H1807146', '404', null, null, '2791', '1992');
INSERT INTO `employees_rooms` VALUES ('1635', 'H1702206', '405', null, null, '2792', '1993');
INSERT INTO `employees_rooms` VALUES ('1636', 'H1702207', '405', null, null, '2793', '1993');
INSERT INTO `employees_rooms` VALUES ('1637', 'H1803326', '405', null, null, '2794', '1993');
INSERT INTO `employees_rooms` VALUES ('1638', 'H1406018', '406', null, null, '2795', '1994');
INSERT INTO `employees_rooms` VALUES ('1639', 'H1503529', '406', null, null, '2796', '1994');
INSERT INTO `employees_rooms` VALUES ('1640', 'H1504245', '407', null, null, '2797', '1995');
INSERT INTO `employees_rooms` VALUES ('1641', 'H1702498', '407', null, null, '2798', '1995');
INSERT INTO `employees_rooms` VALUES ('1642', 'H1806051', '408', null, null, '2799', '1996');
INSERT INTO `employees_rooms` VALUES ('1643', 'H1803330', '409', null, null, '2800', '1997');
INSERT INTO `employees_rooms` VALUES ('1644', 'H1804074', '409', null, null, '2801', '1997');
INSERT INTO `employees_rooms` VALUES ('1645', 'H1702209', '501', null, null, '2802', '1998');
INSERT INTO `employees_rooms` VALUES ('1646', 'H1804087', '501', null, null, '2803', '1998');
INSERT INTO `employees_rooms` VALUES ('1647', 'H1702113', '502', null, null, '2804', '1999');
INSERT INTO `employees_rooms` VALUES ('1648', 'H1712015', '502', null, null, '2805', '1999');
INSERT INTO `employees_rooms` VALUES ('1649', 'H1003115', '503', null, null, '2806', '2000');
INSERT INTO `employees_rooms` VALUES ('1650', 'H1102167', '503', null, null, '2807', '2000');
INSERT INTO `employees_rooms` VALUES ('1651', 'H1703205', '504', null, null, '2808', '2001');
INSERT INTO `employees_rooms` VALUES ('1652', 'H1701003', '504', null, null, '2809', '2001');
INSERT INTO `employees_rooms` VALUES ('1653', 'H1610007', '506', null, null, '2810', '2003');
INSERT INTO `employees_rooms` VALUES ('1654', 'H1711036', '506', null, null, '2811', '2003');
INSERT INTO `employees_rooms` VALUES ('1655', 'H1802001', '506', null, null, '2812', '2003');
INSERT INTO `employees_rooms` VALUES ('1656', 'H1702646', '507', null, null, '2813', '2004');
INSERT INTO `employees_rooms` VALUES ('1657', 'H1804097', '507', null, null, '2814', '2004');
INSERT INTO `employees_rooms` VALUES ('1658', 'H1702629', '508', null, null, '2815', '2005');
INSERT INTO `employees_rooms` VALUES ('1659', 'H1703100', '508', null, null, '2816', '2005');
INSERT INTO `employees_rooms` VALUES ('1660', 'H9912001', '509', null, null, '2817', '2006');
INSERT INTO `employees_rooms` VALUES ('1661', 'H0401001', '101', null, null, '2818', '2007');
INSERT INTO `employees_rooms` VALUES ('1662', 'H0401002', '101', null, null, '2819', '2007');
INSERT INTO `employees_rooms` VALUES ('1663', 'H1702112', '101', null, null, '2820', '2007');
INSERT INTO `employees_rooms` VALUES ('1664', 'H0609036', '102', null, null, '2821', '2008');
INSERT INTO `employees_rooms` VALUES ('1665', 'H0611024', '103', null, null, '2822', '2009');
INSERT INTO `employees_rooms` VALUES ('1666', 'H1803116', '103', null, null, '2823', '2009');
INSERT INTO `employees_rooms` VALUES ('1667', 'H0609036', '104', null, null, '2821', '2010');
INSERT INTO `employees_rooms` VALUES ('1668', 'H0806123', '105', null, null, '2824', '2011');
INSERT INTO `employees_rooms` VALUES ('1669', 'H0804014', '105', null, null, '2825', '2011');
INSERT INTO `employees_rooms` VALUES ('1670', 'H1608028', '106', null, null, '2826', '2012');
INSERT INTO `employees_rooms` VALUES ('1671', 'H0612010', '106', null, null, '2827', '2012');
INSERT INTO `employees_rooms` VALUES ('1672', 'H0808001', '107', null, null, '2828', '2013');
INSERT INTO `employees_rooms` VALUES ('1673', 'H0808002', '107', null, null, '2829', '2013');
INSERT INTO `employees_rooms` VALUES ('1674', 'H1302118', '108', null, null, '2830', '2014');
INSERT INTO `employees_rooms` VALUES ('1675', 'H1607027', '108', null, null, '2831', '2014');
INSERT INTO `employees_rooms` VALUES ('1676', 'H1803061', '108', null, null, '2832', '2014');
INSERT INTO `employees_rooms` VALUES ('1677', 'H0403011', '109', null, null, '2833', '2015');
INSERT INTO `employees_rooms` VALUES ('1678', 'H0902130', '110', null, null, '2834', '2016');
INSERT INTO `employees_rooms` VALUES ('1679', 'H0905022', '110', null, null, '2835', '2016');
INSERT INTO `employees_rooms` VALUES ('1680', 'H1602197', '111', null, null, '2836', '2017');
INSERT INTO `employees_rooms` VALUES ('1681', 'H1603821', '111', null, null, '2837', '2017');
INSERT INTO `employees_rooms` VALUES ('1682', 'H1702358', '112', null, null, '2838', '2018');
INSERT INTO `employees_rooms` VALUES ('1683', 'H1803707', '112', null, null, '2839', '2018');
INSERT INTO `employees_rooms` VALUES ('1684', 'H1003175', '113', null, null, '2840', '2019');
INSERT INTO `employees_rooms` VALUES ('1685', 'H1510128', '113', null, null, '2841', '2019');
INSERT INTO `employees_rooms` VALUES ('1686', 'H0502046', '114', null, null, '2842', '2020');
INSERT INTO `employees_rooms` VALUES ('1687', 'H0802072', '114', null, null, '2843', '2020');
INSERT INTO `employees_rooms` VALUES ('1688', 'H1311021', '115', null, null, '2844', '2021');
INSERT INTO `employees_rooms` VALUES ('1689', 'H0502047', '115', null, null, '2845', '2021');
INSERT INTO `employees_rooms` VALUES ('1690', 'H1803110', '116', null, null, '2846', '2022');
INSERT INTO `employees_rooms` VALUES ('1691', 'H1803715', '116', null, null, '2847', '2022');
INSERT INTO `employees_rooms` VALUES ('1692', 'H0902149', '117', null, null, '2848', '2023');
INSERT INTO `employees_rooms` VALUES ('1693', 'H1806054', '117', null, null, '2849', '2023');
INSERT INTO `employees_rooms` VALUES ('1694', 'H0411012', '201', null, null, '2850', '2024');
INSERT INTO `employees_rooms` VALUES ('1695', 'H1209017', '201', null, null, '2851', '2024');
INSERT INTO `employees_rooms` VALUES ('1696', 'H1709059', '202', null, null, '2852', '2025');
INSERT INTO `employees_rooms` VALUES ('1697', 'H1709058', '202', null, null, '2853', '2025');
INSERT INTO `employees_rooms` VALUES ('1698', 'H1207094', '203', null, null, '2854', '2026');
INSERT INTO `employees_rooms` VALUES ('1699', 'H1403057', '203', null, null, '2855', '2026');
INSERT INTO `employees_rooms` VALUES ('1700', 'H1803407', '204', null, null, '2856', '2027');
INSERT INTO `employees_rooms` VALUES ('1701', 'H1803406', '204', null, null, '2857', '2027');
INSERT INTO `employees_rooms` VALUES ('1702', 'H1003101', '205', null, null, '2858', '2028');
INSERT INTO `employees_rooms` VALUES ('1703', 'H1003102', '205', null, null, '2859', '2028');
INSERT INTO `employees_rooms` VALUES ('1704', 'H1609066', '206', null, null, '2860', '2029');
INSERT INTO `employees_rooms` VALUES ('1705', 'H1803743', '206', null, null, '2861', '2029');
INSERT INTO `employees_rooms` VALUES ('1706', 'H1603206', '207', null, null, '2862', '2030');
INSERT INTO `employees_rooms` VALUES ('1707', 'H1702575', '207', null, null, '2863', '2030');
INSERT INTO `employees_rooms` VALUES ('1708', 'H1803705', '207', null, null, '2864', '2030');
INSERT INTO `employees_rooms` VALUES ('1709', 'H0310013', '208', null, null, '2865', '2031');
INSERT INTO `employees_rooms` VALUES ('1710', 'H1510049', '208', null, null, '2866', '2031');
INSERT INTO `employees_rooms` VALUES ('1711', 'H0703011', '209', null, null, '2867', '2032');
INSERT INTO `employees_rooms` VALUES ('1712', 'H1512018', '209', null, null, '2868', '2032');
INSERT INTO `employees_rooms` VALUES ('1713', '1803635', '209', null, null, '2869', '2032');
INSERT INTO `employees_rooms` VALUES ('1714', 'H1107180', '210', null, null, '2870', '2033');
INSERT INTO `employees_rooms` VALUES ('1715', 'H1702184', '211', null, null, '2871', '2034');
INSERT INTO `employees_rooms` VALUES ('1716', 'H1806046', '211', null, null, '2872', '2034');
INSERT INTO `employees_rooms` VALUES ('1717', 'H1805059', '211', null, null, '2873', '2034');
INSERT INTO `employees_rooms` VALUES ('1718', 'H1803431', '212', null, null, '2874', '2035');
INSERT INTO `employees_rooms` VALUES ('1719', 'H1803626', '212', null, null, '2875', '2035');
INSERT INTO `employees_rooms` VALUES ('1720', 'H1602282', '213', null, null, '2876', '2036');
INSERT INTO `employees_rooms` VALUES ('1721', 'H1803111', '213', null, null, '2877', '2036');
INSERT INTO `employees_rooms` VALUES ('1722', 'H1707189', '214', null, null, '2878', '2037');
INSERT INTO `employees_rooms` VALUES ('1723', 'H1611031', '214', null, null, '2879', '2037');
INSERT INTO `employees_rooms` VALUES ('1724', 'H1806044', '214', null, null, '2880', '2037');
INSERT INTO `employees_rooms` VALUES ('1725', 'H1709038', '215', null, null, '2881', '2038');
INSERT INTO `employees_rooms` VALUES ('1726', 'H1803254', '215', null, null, '2882', '2038');
INSERT INTO `employees_rooms` VALUES ('1727', 'H1806045', '215', null, null, '2883', '2038');
INSERT INTO `employees_rooms` VALUES ('1728', 'H1503119', '216', null, null, '2884', '2039');
INSERT INTO `employees_rooms` VALUES ('1729', 'H1807033', '216', null, null, '2885', '2039');
INSERT INTO `employees_rooms` VALUES ('1730', 'H1702101', '217', null, null, '2886', '2040');
INSERT INTO `employees_rooms` VALUES ('1731', 'H1602198', '301', null, null, '2887', '2041');
INSERT INTO `employees_rooms` VALUES ('1732', 'H1702706', '301', null, null, '2888', '2041');
INSERT INTO `employees_rooms` VALUES ('1733', 'H1705006', '301', null, null, '2889', '2041');
INSERT INTO `employees_rooms` VALUES ('1734', 'H1709020', '302', null, null, '2890', '2042');
INSERT INTO `employees_rooms` VALUES ('1735', 'H1803334', '302', null, null, '2891', '2042');
INSERT INTO `employees_rooms` VALUES ('1736', 'H1409048', '303', null, null, '2892', '2043');
INSERT INTO `employees_rooms` VALUES ('1737', 'H1608107', '303', null, null, '2893', '2043');
INSERT INTO `employees_rooms` VALUES ('1738', 'H1309124', '304', null, null, '2894', '2044');
INSERT INTO `employees_rooms` VALUES ('1739', 'H1102103', '304', null, null, '2895', '2044');
INSERT INTO `employees_rooms` VALUES ('1740', 'H0705011', '305', null, null, '2896', '2045');
INSERT INTO `employees_rooms` VALUES ('1741', 'H1707080', '305', null, null, '2897', '2045');
INSERT INTO `employees_rooms` VALUES ('1742', 'H1608064', '306', null, null, '2898', '2046');
INSERT INTO `employees_rooms` VALUES ('1743', 'H0402024', '307', null, null, '2899', '2047');
INSERT INTO `employees_rooms` VALUES ('1744', 'H1307144', '307', null, null, '2900', '2047');
INSERT INTO `employees_rooms` VALUES ('1745', 'H1303334', '308', null, null, '2901', '2048');
INSERT INTO `employees_rooms` VALUES ('1746', 'H1503060', '308', null, null, '2902', '2048');
INSERT INTO `employees_rooms` VALUES ('1747', 'H1804092', '309', null, null, '2903', '2049');
INSERT INTO `employees_rooms` VALUES ('1748', 'H1608064', '309', null, null, '2898', '2049');
INSERT INTO `employees_rooms` VALUES ('1749', 'H1211005', '310', null, null, '2904', '2050');
INSERT INTO `employees_rooms` VALUES ('1750', 'H1806058', '310', null, null, '2905', '2050');
INSERT INTO `employees_rooms` VALUES ('1751', 'H1510121', '311', null, null, '2906', '2051');
INSERT INTO `employees_rooms` VALUES ('1752', 'H1210016', '312', null, null, '2907', '2052');
INSERT INTO `employees_rooms` VALUES ('1753', 'H1610028', '312', null, null, '2908', '2052');
INSERT INTO `employees_rooms` VALUES ('1754', 'H1309120', '313', null, null, '2909', '2053');
INSERT INTO `employees_rooms` VALUES ('1755', 'H1702210', '313', null, null, '2910', '2053');
INSERT INTO `employees_rooms` VALUES ('1756', 'H1006047', '314', null, null, '2911', '2054');
INSERT INTO `employees_rooms` VALUES ('1757', 'H1702210', '314', null, null, '2910', '2054');
INSERT INTO `employees_rooms` VALUES ('1758', 'H1402293', '315', null, null, '2912', '2055');
INSERT INTO `employees_rooms` VALUES ('1759', 'H0602115', '316', null, null, '2913', '2056');
INSERT INTO `employees_rooms` VALUES ('1760', 'H1603243', '316', null, null, '2914', '2056');
INSERT INTO `employees_rooms` VALUES ('1761', 'H1805077', '316', null, null, '2915', '2056');
INSERT INTO `employees_rooms` VALUES ('1762', 'H1007044', '317', null, null, '2916', '2057');
INSERT INTO `employees_rooms` VALUES ('1763', 'H1202080', '317', null, null, '2917', '2057');
INSERT INTO `employees_rooms` VALUES ('1764', 'H1202207', '401', null, null, '2918', '2058');
INSERT INTO `employees_rooms` VALUES ('1765', 'H1307027', '401', null, null, '2919', '2058');
INSERT INTO `employees_rooms` VALUES ('1766', 'H1803258', '401', null, null, '2920', '2058');
INSERT INTO `employees_rooms` VALUES ('1767', 'H1303147', '402', null, null, '2921', '2059');
INSERT INTO `employees_rooms` VALUES ('1768', 'H1402053', '402', null, null, '2922', '2059');
INSERT INTO `employees_rooms` VALUES ('1769', 'H1107245', '403', null, null, '2923', '2060');
INSERT INTO `employees_rooms` VALUES ('1770', 'H1609028', '403', null, null, '2924', '2060');
INSERT INTO `employees_rooms` VALUES ('1771', 'H1410103', '404', null, null, '2925', '2061');
INSERT INTO `employees_rooms` VALUES ('1772', 'H1805116', '404', null, null, '2926', '2061');
INSERT INTO `employees_rooms` VALUES ('1773', 'H1407091', '406', null, null, '2927', '2063');
INSERT INTO `employees_rooms` VALUES ('1774', 'H1704022', '406', null, null, '2928', '2063');
INSERT INTO `employees_rooms` VALUES ('1775', 'H0609009', '407', null, null, '2929', '2064');
INSERT INTO `employees_rooms` VALUES ('1776', 'H1703063', '408', null, null, '2930', '2065');
INSERT INTO `employees_rooms` VALUES ('1777', 'H1804071', '408', null, null, '2931', '2065');
INSERT INTO `employees_rooms` VALUES ('1778', 'H1504233', '408', null, null, '2932', '2065');
INSERT INTO `employees_rooms` VALUES ('1779', 'H1603128', '409', null, null, '2933', '2066');
INSERT INTO `employees_rooms` VALUES ('1780', 'H1210047', '409', null, null, '2934', '2066');
INSERT INTO `employees_rooms` VALUES ('1781', 'H1505082', '410', null, null, '2935', '2067');
INSERT INTO `employees_rooms` VALUES ('1782', 'H1608063', '410', null, null, '2936', '2067');
INSERT INTO `employees_rooms` VALUES ('1783', 'H0403031', '411', null, null, '2937', '2068');
INSERT INTO `employees_rooms` VALUES ('1784', 'H1703181', '411', null, null, '2938', '2068');
INSERT INTO `employees_rooms` VALUES ('1785', 'H1702456', '412', null, null, '2939', '2069');
INSERT INTO `employees_rooms` VALUES ('1786', 'H1710029', '412', null, null, '2940', '2069');
INSERT INTO `employees_rooms` VALUES ('1787', 'H0302004', '413', null, null, '2941', '2070');
INSERT INTO `employees_rooms` VALUES ('1788', 'H1403370', '414', null, null, '2942', '2071');
INSERT INTO `employees_rooms` VALUES ('1789', 'H1708117', '414', null, null, '2943', '2071');
INSERT INTO `employees_rooms` VALUES ('1790', 'H0308005', '415', null, null, '2944', '2072');
INSERT INTO `employees_rooms` VALUES ('1791', 'H1408175', '415', null, null, '2945', '2072');
INSERT INTO `employees_rooms` VALUES ('1792', 'H1202121', '417', null, null, '2946', '2074');
INSERT INTO `employees_rooms` VALUES ('1793', 'H1804078', '417', null, null, '2947', '2074');
INSERT INTO `employees_rooms` VALUES ('1794', 'H0609009', '501', null, null, '2929', '2075');
INSERT INTO `employees_rooms` VALUES ('1795', 'H0803097', '502', null, null, '2948', '2076');
INSERT INTO `employees_rooms` VALUES ('1796', 'H1506172', '503', null, null, '2949', '2077');
INSERT INTO `employees_rooms` VALUES ('1797', 'H1403323', '503', null, null, '2950', '2077');
INSERT INTO `employees_rooms` VALUES ('1798', 'H0902056', '505', null, null, '2951', '2079');
INSERT INTO `employees_rooms` VALUES ('1799', 'H1406005', '505', null, null, '2952', '2079');
INSERT INTO `employees_rooms` VALUES ('1800', 'H1011016', '506', null, null, '2953', '2080');
INSERT INTO `employees_rooms` VALUES ('1801', 'H1609037', '506', null, null, '2954', '2080');
INSERT INTO `employees_rooms` VALUES ('1802', 'H1003345', '507', null, null, '2955', '2081');
INSERT INTO `employees_rooms` VALUES ('1803', 'H1502015', '507', null, null, '2956', '2081');
INSERT INTO `employees_rooms` VALUES ('1804', 'H0802006', '508', null, null, '2957', '2082');
INSERT INTO `employees_rooms` VALUES ('1805', 'H1310040', '508', null, null, '2958', '2082');
INSERT INTO `employees_rooms` VALUES ('1806', 'H1704004', '509', null, null, '2959', '2083');
INSERT INTO `employees_rooms` VALUES ('1807', 'H0907001', '510', null, null, '2960', '2084');
INSERT INTO `employees_rooms` VALUES ('1808', 'H0910017', '511', null, null, '2961', '2085');
INSERT INTO `employees_rooms` VALUES ('1809', 'H0608012', '512', null, null, '2962', '2086');
INSERT INTO `employees_rooms` VALUES ('1810', 'H1706009', '513', null, null, '2963', '2087');
INSERT INTO `employees_rooms` VALUES ('1811', 'H0907004', '514', null, null, '2964', '2088');
INSERT INTO `employees_rooms` VALUES ('1812', 'H0907004', '515', null, null, '2964', '2089');
INSERT INTO `employees_rooms` VALUES ('1813', 'H0907002', '515', null, null, '2965', '2089');
INSERT INTO `employees_rooms` VALUES ('1814', 'H1202244', '516', null, null, '2966', '2090');
INSERT INTO `employees_rooms` VALUES ('1815', 'H1803062', '516', null, null, '2967', '2090');
INSERT INTO `employees_rooms` VALUES ('1816', 'H1803430', '516', null, null, '2968', '2090');
INSERT INTO `employees_rooms` VALUES ('1817', 'H1606004', '517', null, null, '2969', '2091');
INSERT INTO `employees_rooms` VALUES ('1818', 'H0402037', '101', null, null, '2970', '2092');
INSERT INTO `employees_rooms` VALUES ('1819', 'H0311005', '401', null, null, '2971', '2093');
INSERT INTO `employees_rooms` VALUES ('1820', 'H1512022', '102', null, null, '2972', '2094');
INSERT INTO `employees_rooms` VALUES ('1821', 'H1608026', '102', null, null, '2973', '2094');
INSERT INTO `employees_rooms` VALUES ('1822', 'H0708500', '402', null, null, '2974', '2095');
INSERT INTO `employees_rooms` VALUES ('1823', 'H1402118', '402', null, null, '2975', '2095');
INSERT INTO `employees_rooms` VALUES ('1824', 'H1607019', '403', null, null, '2976', '2097');
INSERT INTO `employees_rooms` VALUES ('1825', 'H1610006', '403', null, null, '2977', '2097');
INSERT INTO `employees_rooms` VALUES ('1826', 'H0703030', '404', null, null, '2978', '2099');
INSERT INTO `employees_rooms` VALUES ('1827', 'H0609040', '404', null, null, '2979', '2099');
INSERT INTO `employees_rooms` VALUES ('1828', 'H0911024', '201', null, null, '2980', '2100');
INSERT INTO `employees_rooms` VALUES ('1829', 'H0802047', '201', null, null, '2981', '2100');
INSERT INTO `employees_rooms` VALUES ('1830', 'H1711049', '501', null, null, '2982', '2101');
INSERT INTO `employees_rooms` VALUES ('1831', 'H0507056', '202', null, null, '2983', '2102');
INSERT INTO `employees_rooms` VALUES ('1832', 'H1806017', '502', null, null, '2984', '2103');
INSERT INTO `employees_rooms` VALUES ('1833', 'H0307002', '203', null, null, '2985', '2104');
INSERT INTO `employees_rooms` VALUES ('1834', 'H0307001', '503', null, null, '2986', '2105');
INSERT INTO `employees_rooms` VALUES ('1835', 'H1609044', '204', null, null, '2987', '2106');
INSERT INTO `employees_rooms` VALUES ('1836', 'H1802002', '504', null, null, '2988', '2107');
INSERT INTO `employees_rooms` VALUES ('1837', 'H0412007', '301', null, null, '2989', '2108');
INSERT INTO `employees_rooms` VALUES ('1838', 'H1309066', '301', null, null, '2990', '2108');
INSERT INTO `employees_rooms` VALUES ('1839', 'H0504014', '302', null, null, '2991', '2110');
INSERT INTO `employees_rooms` VALUES ('1840', 'H0411020', '303', null, null, '2992', '2112');
INSERT INTO `employees_rooms` VALUES ('1841', 'H1402100', '603', null, null, '2993', '2113');
INSERT INTO `employees_rooms` VALUES ('1842', 'H1403420', '603', null, null, '2994', '2113');
INSERT INTO `employees_rooms` VALUES ('1843', 'H0508034', '304', null, null, '2995', '2114');
INSERT INTO `employees_rooms` VALUES ('1844', 'H0307018', '604', null, null, '2996', '2115');
INSERT INTO `employees_rooms` VALUES ('1845', 'H0803018', '604', null, null, '2997', '2115');
INSERT INTO `employees_rooms` VALUES ('1846', 'H0204002', '201', null, null, '2998', '2116');
INSERT INTO `employees_rooms` VALUES ('1847', 'H1803121', '202', null, null, '2999', '2117');
INSERT INTO `employees_rooms` VALUES ('1848', 'H1206029', '202', null, null, '3000', '2117');
INSERT INTO `employees_rooms` VALUES ('1849', 'H1503027', '203', null, null, '3001', '2118');
INSERT INTO `employees_rooms` VALUES ('1850', 'H1709019', '203', null, null, '3002', '2118');
INSERT INTO `employees_rooms` VALUES ('1851', 'H1604001', '204', null, null, '3003', '2119');
INSERT INTO `employees_rooms` VALUES ('1852', 'H1602091', '204', null, null, '3004', '2119');
INSERT INTO `employees_rooms` VALUES ('1853', 'H1409198', '205', null, null, '3005', '2120');
INSERT INTO `employees_rooms` VALUES ('1854', 'H1702291', '206', null, null, '3006', '2121');
INSERT INTO `employees_rooms` VALUES ('1855', 'H1402108', '206', null, null, '3007', '2121');
INSERT INTO `employees_rooms` VALUES ('1856', 'H1503528', '207', null, null, '3008', '2122');
INSERT INTO `employees_rooms` VALUES ('1857', 'H1503529', '207', null, null, '2796', '2122');
INSERT INTO `employees_rooms` VALUES ('1858', 'H1702107', '208', null, null, '3009', '2123');
INSERT INTO `employees_rooms` VALUES ('1859', 'H1803718', '209', null, null, '3010', '2124');
INSERT INTO `employees_rooms` VALUES ('1860', 'H1803717', '209', null, null, '3011', '2124');
INSERT INTO `employees_rooms` VALUES ('1861', 'H1310037', '210', null, null, '3012', '2125');
INSERT INTO `employees_rooms` VALUES ('1862', 'H0812023', '211', null, null, '3013', '2126');
INSERT INTO `employees_rooms` VALUES ('1863', 'H1702626', '212', null, null, '3014', '2127');
INSERT INTO `employees_rooms` VALUES ('1864', 'H1805124', '212', null, null, '3015', '2127');
INSERT INTO `employees_rooms` VALUES ('1865', 'H1803711', '213', null, null, '3016', '2128');
INSERT INTO `employees_rooms` VALUES ('1866', 'H1807086', '213', null, null, '3017', '2128');
INSERT INTO `employees_rooms` VALUES ('1867', 'H1702589', '215', null, null, '3018', '2130');
INSERT INTO `employees_rooms` VALUES ('1868', 'H1702588', '215', null, null, '3019', '2130');
INSERT INTO `employees_rooms` VALUES ('1869', 'H1609004', '217', null, null, '3020', '2132');
INSERT INTO `employees_rooms` VALUES ('1870', 'H1708113', '217', null, null, '3021', '2132');
INSERT INTO `employees_rooms` VALUES ('1871', 'H1803706', '217', null, null, '3022', '2132');
INSERT INTO `employees_rooms` VALUES ('1872', 'H1011001', '218', null, null, '3023', '2133');
INSERT INTO `employees_rooms` VALUES ('1873', 'H1804006', '219', null, null, '3024', '2134');
INSERT INTO `employees_rooms` VALUES ('1874', 'H1803728', '219', null, null, '3025', '2134');
INSERT INTO `employees_rooms` VALUES ('1875', 'H1306048', '220', null, null, '3026', '2135');
INSERT INTO `employees_rooms` VALUES ('1876', 'H1403283', '220', null, null, '3027', '2135');
INSERT INTO `employees_rooms` VALUES ('1877', 'H1410041', '221', null, null, '3028', '2136');
INSERT INTO `employees_rooms` VALUES ('1878', 'H1105001', '221', null, null, '3029', '2136');
INSERT INTO `employees_rooms` VALUES ('1879', 'H1803433', '222', null, null, '3030', '2137');
INSERT INTO `employees_rooms` VALUES ('1880', 'H1702352', '223', null, null, '3031', '2138');
INSERT INTO `employees_rooms` VALUES ('1881', 'H1803438', '223', null, null, '3032', '2138');
INSERT INTO `employees_rooms` VALUES ('1882', 'H1705010', '224', null, null, '3033', '2139');
INSERT INTO `employees_rooms` VALUES ('1883', 'H1602343', '225', null, null, '3034', '2140');
INSERT INTO `employees_rooms` VALUES ('1884', 'H1803341', '225', null, null, '3035', '2140');
INSERT INTO `employees_rooms` VALUES ('1885', 'H1510050', '226', null, null, '3036', '2141');
INSERT INTO `employees_rooms` VALUES ('1886', 'H1804079', '226', null, null, '3037', '2141');
INSERT INTO `employees_rooms` VALUES ('1887', 'H1703043', '227', null, null, '3038', '2142');
INSERT INTO `employees_rooms` VALUES ('1888', 'H1802065', '227', null, null, '3039', '2142');
INSERT INTO `employees_rooms` VALUES ('1889', 'H1711077', '228', null, null, '3040', '2143');
INSERT INTO `employees_rooms` VALUES ('1890', 'H1711076', '228', null, null, '3041', '2143');
INSERT INTO `employees_rooms` VALUES ('1891', 'H1604156', '229', null, null, '3042', '2144');
INSERT INTO `employees_rooms` VALUES ('1892', 'H0905056', '230', null, null, '3043', '2145');
INSERT INTO `employees_rooms` VALUES ('1893', 'H1612002', '231', null, null, '3044', '2146');
INSERT INTO `employees_rooms` VALUES ('1894', 'H1304149', '231', null, null, '3045', '2146');
INSERT INTO `employees_rooms` VALUES ('1895', 'H0806101', '232', null, null, '3046', '2147');
INSERT INTO `employees_rooms` VALUES ('1896', 'H1805001', '233', null, null, '3047', '2148');
INSERT INTO `employees_rooms` VALUES ('1897', 'H1609063', '233', null, null, '3048', '2148');
INSERT INTO `employees_rooms` VALUES ('1898', 'H1603824', '234', null, null, '3049', '2149');
INSERT INTO `employees_rooms` VALUES ('1899', 'H1104067', '234', null, null, '3050', '2149');
INSERT INTO `employees_rooms` VALUES ('1900', 'H1302058', '235', null, null, '3051', '2150');
INSERT INTO `employees_rooms` VALUES ('1901', 'H1403004', '235', null, null, '3052', '2150');
INSERT INTO `employees_rooms` VALUES ('1902', 'H1502011', '236', null, null, '3053', '2151');
INSERT INTO `employees_rooms` VALUES ('1903', 'H1805566', '236', null, null, '3054', '2151');
INSERT INTO `employees_rooms` VALUES ('1904', 'H1102105', '301', null, null, '3055', '2152');
INSERT INTO `employees_rooms` VALUES ('1905', 'H1703123', '302', null, null, '3056', '2153');
INSERT INTO `employees_rooms` VALUES ('1906', 'H1709039', '302', null, null, '3057', '2153');
INSERT INTO `employees_rooms` VALUES ('1907', 'H1602051', '303', null, null, '3058', '2154');
INSERT INTO `employees_rooms` VALUES ('1908', 'H1602052', '303', null, null, '3059', '2154');
INSERT INTO `employees_rooms` VALUES ('1909', 'H1608034', '304', null, null, '3060', '2155');
INSERT INTO `employees_rooms` VALUES ('1910', 'H1608035', '304', null, null, '3061', '2155');
INSERT INTO `employees_rooms` VALUES ('1911', 'H1803112', '305', null, null, '3062', '2156');
INSERT INTO `employees_rooms` VALUES ('1912', 'H1803741', '305', null, null, '3063', '2156');
INSERT INTO `employees_rooms` VALUES ('1913', 'H1702039', '306', null, null, '3064', '2157');
INSERT INTO `employees_rooms` VALUES ('1914', 'H0710039', '306', null, null, '3065', '2157');
INSERT INTO `employees_rooms` VALUES ('1915', 'H0911018', '307', null, null, '3066', '2158');
INSERT INTO `employees_rooms` VALUES ('1916', 'H1710006', '309', null, null, '3067', '2160');
INSERT INTO `employees_rooms` VALUES ('1917', 'H1710007', '309', null, null, '3068', '2160');
INSERT INTO `employees_rooms` VALUES ('1918', 'H1603626', '310', null, null, '3069', '2161');
INSERT INTO `employees_rooms` VALUES ('1919', 'H1702713', '312', null, null, '3070', '2163');
INSERT INTO `employees_rooms` VALUES ('1920', 'H1708029', '312', null, null, '3071', '2163');
INSERT INTO `employees_rooms` VALUES ('1921', 'H1805096', '313', null, null, '3072', '2164');
INSERT INTO `employees_rooms` VALUES ('1922', 'H1805099', '313', null, null, '3073', '2164');
INSERT INTO `employees_rooms` VALUES ('1923', 'H1805095', '313', null, null, '3074', '2164');
INSERT INTO `employees_rooms` VALUES ('1924', 'H1603136', '314', null, null, '3075', '2165');
INSERT INTO `employees_rooms` VALUES ('1925', 'H1702578', '314', null, null, '3076', '2165');
INSERT INTO `employees_rooms` VALUES ('1926', 'H1206107', '315', null, null, '3077', '2166');
INSERT INTO `employees_rooms` VALUES ('1927', 'H1206094', '316', null, null, '3078', '2167');
INSERT INTO `employees_rooms` VALUES ('1928', 'H1806048', '317', null, null, '3079', '2168');
INSERT INTO `employees_rooms` VALUES ('1929', 'H1807050', '317', null, null, '3080', '2168');
INSERT INTO `employees_rooms` VALUES ('1930', 'H1602054', '318', null, null, '3081', '2169');
INSERT INTO `employees_rooms` VALUES ('1931', 'H1702500', '318', null, null, '3082', '2169');
INSERT INTO `employees_rooms` VALUES ('1932', 'H1610052', '319', null, null, '3083', '2170');
INSERT INTO `employees_rooms` VALUES ('1933', 'H1602324', '320', null, null, '3084', '2171');
INSERT INTO `employees_rooms` VALUES ('1934', 'H1807047', '320', null, null, '3085', '2171');
INSERT INTO `employees_rooms` VALUES ('1935', 'H1503314', '322', null, null, '3086', '2173');
INSERT INTO `employees_rooms` VALUES ('1936', 'H1407234', '324', null, null, '3087', '2175');
INSERT INTO `employees_rooms` VALUES ('1937', 'H1404048', '324', null, null, '3088', '2175');
INSERT INTO `employees_rooms` VALUES ('1938', 'H1010059', '325', null, null, '3089', '2176');
INSERT INTO `employees_rooms` VALUES ('1939', 'H1707150', '325', null, null, '3090', '2176');
INSERT INTO `employees_rooms` VALUES ('1940', 'H1804172', '325', null, null, '3091', '2176');
INSERT INTO `employees_rooms` VALUES ('1941', 'H1603623', '326', null, null, '3092', '2177');
INSERT INTO `employees_rooms` VALUES ('1942', 'H1709016', '326', null, null, '3093', '2177');
INSERT INTO `employees_rooms` VALUES ('1943', 'H1603726', '328', null, null, '3094', '2179');
INSERT INTO `employees_rooms` VALUES ('1944', 'H1109029', '328', null, null, '3095', '2179');
INSERT INTO `employees_rooms` VALUES ('1945', 'H1602149', '329', null, null, '3096', '2180');
INSERT INTO `employees_rooms` VALUES ('1946', 'H1510125', '329', null, null, '3097', '2180');
INSERT INTO `employees_rooms` VALUES ('1947', 'H0502013', '330', null, null, '3098', '2181');
INSERT INTO `employees_rooms` VALUES ('1948', 'H0502012', '330', null, null, '3099', '2181');
INSERT INTO `employees_rooms` VALUES ('1949', 'H1607025', '331', null, null, '3100', '2182');
INSERT INTO `employees_rooms` VALUES ('1950', 'H1607026', '331', null, null, '3101', '2182');
INSERT INTO `employees_rooms` VALUES ('1951', 'H1608087', '331', null, null, '3102', '2182');
INSERT INTO `employees_rooms` VALUES ('1952', 'H1508001', '332', null, null, '3103', '2183');
INSERT INTO `employees_rooms` VALUES ('1953', 'H0902155', '333', null, null, '3104', '2184');
INSERT INTO `employees_rooms` VALUES ('1954', 'H1011021', '333', null, null, '3105', '2184');
INSERT INTO `employees_rooms` VALUES ('1955', 'H1503082', '334', null, null, '3106', '2185');
INSERT INTO `employees_rooms` VALUES ('1956', 'H1503083', '334', null, null, '3107', '2185');
INSERT INTO `employees_rooms` VALUES ('1957', 'H1308015', '335', null, null, '3108', '2186');
INSERT INTO `employees_rooms` VALUES ('1958', 'H1610009', '335', null, null, '3109', '2186');
INSERT INTO `employees_rooms` VALUES ('1959', 'H0602066', '336', null, null, '3110', '2187');
INSERT INTO `employees_rooms` VALUES ('1960', 'H0802021', '336', null, null, '3111', '2187');
INSERT INTO `employees_rooms` VALUES ('1961', 'H1211006', '401', null, null, '3112', '2188');
INSERT INTO `employees_rooms` VALUES ('1962', 'H1211004', '401', null, null, '3113', '2188');
INSERT INTO `employees_rooms` VALUES ('1963', 'H1611053', '402', null, null, '3114', '2189');
INSERT INTO `employees_rooms` VALUES ('1964', 'H1604158', '403', null, null, '3115', '2190');
INSERT INTO `employees_rooms` VALUES ('1965', 'H1604157', '403', null, null, '3116', '2190');
INSERT INTO `employees_rooms` VALUES ('1966', 'H1803438', '404', null, null, '3032', '2191');
INSERT INTO `employees_rooms` VALUES ('1967', 'H1804080', '404', null, null, '2761', '2191');
INSERT INTO `employees_rooms` VALUES ('1968', 'H1003182', '405', null, null, '3117', '2192');
INSERT INTO `employees_rooms` VALUES ('1969', 'H1003183', '405', null, null, '3118', '2192');
INSERT INTO `employees_rooms` VALUES ('1970', 'H1805093', '406', null, null, '3119', '2193');
INSERT INTO `employees_rooms` VALUES ('1971', 'H1805094', '406', null, null, '3120', '2193');
INSERT INTO `employees_rooms` VALUES ('1972', 'H1802041', '407', null, null, '3121', '2194');
INSERT INTO `employees_rooms` VALUES ('1973', 'H1802044', '407', null, null, '3122', '2194');
INSERT INTO `employees_rooms` VALUES ('1974', 'H1702545', '408', null, null, '3123', '2195');
INSERT INTO `employees_rooms` VALUES ('1975', 'H1703111', '408', null, null, '3124', '2195');
INSERT INTO `employees_rooms` VALUES ('1976', 'H1803720', '410', null, null, '3125', '2197');
INSERT INTO `employees_rooms` VALUES ('1977', 'H1803721', '410', null, null, '3126', '2197');
INSERT INTO `employees_rooms` VALUES ('1978', 'H1211008', '411', null, null, '3127', '2198');
INSERT INTO `employees_rooms` VALUES ('1979', 'H1702648', '411', null, null, '3128', '2198');
INSERT INTO `employees_rooms` VALUES ('1980', 'H1804079', '412', null, null, '3037', '2199');
INSERT INTO `employees_rooms` VALUES ('1981', 'H1806019', '412', null, null, '3129', '2199');
INSERT INTO `employees_rooms` VALUES ('1982', 'H1702367', '413', null, null, '3130', '2200');
INSERT INTO `employees_rooms` VALUES ('1983', 'H1807080', '413', null, null, '3131', '2200');
INSERT INTO `employees_rooms` VALUES ('1984', 'H1702590', '415', null, null, '3132', '2202');
INSERT INTO `employees_rooms` VALUES ('1985', 'H1805078', '415', null, null, '3133', '2202');
INSERT INTO `employees_rooms` VALUES ('1986', 'H1504400', '416', null, null, '3134', '2203');
INSERT INTO `employees_rooms` VALUES ('1987', 'H1702499', '416', null, null, '3135', '2203');
INSERT INTO `employees_rooms` VALUES ('1988', 'H1603135', '417', null, null, '3136', '2204');
INSERT INTO `employees_rooms` VALUES ('1989', 'H1603249', '418', null, null, '3137', '2205');
INSERT INTO `employees_rooms` VALUES ('1990', 'H1505128', '419', null, null, '3138', '2206');
INSERT INTO `employees_rooms` VALUES ('1991', 'H1610052', '419', null, null, '3083', '2206');
INSERT INTO `employees_rooms` VALUES ('1992', 'H1608108', '420', null, null, '3139', '2207');
INSERT INTO `employees_rooms` VALUES ('1993', 'H1803704', '420', null, null, '3140', '2207');
INSERT INTO `employees_rooms` VALUES ('1994', 'H1803259', '421', null, null, '3141', '2208');
INSERT INTO `employees_rooms` VALUES ('1995', 'H1807071', '421', null, null, '3142', '2208');
INSERT INTO `employees_rooms` VALUES ('1996', 'H1702585', '422', null, null, '3143', '2209');
INSERT INTO `employees_rooms` VALUES ('1997', 'H1003107', '423', null, null, '3144', '2210');
INSERT INTO `employees_rooms` VALUES ('1998', 'H1803109', '423', null, null, '3145', '2210');
INSERT INTO `employees_rooms` VALUES ('1999', 'H0902002', '424', null, null, '3146', '2211');
INSERT INTO `employees_rooms` VALUES ('2000', 'H1708112', '424', null, null, '3147', '2211');
INSERT INTO `employees_rooms` VALUES ('2001', 'H1807038', '425', null, null, '3148', '2212');
INSERT INTO `employees_rooms` VALUES ('2002', 'H1807073', '425', null, null, '3149', '2212');
INSERT INTO `employees_rooms` VALUES ('2003', 'H1806019', '425', null, null, '3129', '2212');
INSERT INTO `employees_rooms` VALUES ('2004', 'H1407046', '426', null, null, '3150', '2213');
INSERT INTO `employees_rooms` VALUES ('2005', 'H1407046', '427', null, null, '3150', '2214');
INSERT INTO `employees_rooms` VALUES ('2006', 'H0707025', '428', null, null, '3151', '2215');
INSERT INTO `employees_rooms` VALUES ('2007', 'H1202115', '428', null, null, '3152', '2215');
INSERT INTO `employees_rooms` VALUES ('2008', 'H1003257', '429', null, null, '3153', '2216');
INSERT INTO `employees_rooms` VALUES ('2009', 'H0909022', '429', null, null, '3154', '2216');
INSERT INTO `employees_rooms` VALUES ('2010', 'H1609068', '430', null, null, '3155', '2217');
INSERT INTO `employees_rooms` VALUES ('2011', 'H1708107', '430', null, null, '3156', '2217');
INSERT INTO `employees_rooms` VALUES ('2012', 'H1206052', '431', null, null, '3157', '2218');
INSERT INTO `employees_rooms` VALUES ('2013', 'H1206051', '431', null, null, '3158', '2218');
INSERT INTO `employees_rooms` VALUES ('2014', 'H1806050', '432', null, null, '3159', '2219');
INSERT INTO `employees_rooms` VALUES ('2015', 'H1003257', '433', null, null, '3153', '2220');
INSERT INTO `employees_rooms` VALUES ('2016', 'H1803600', '434', null, null, '3160', '2221');
INSERT INTO `employees_rooms` VALUES ('2017', 'H1803701', '434', null, null, '3161', '2221');
INSERT INTO `employees_rooms` VALUES ('2018', 'H1603407', '435', null, null, '3162', '2222');
INSERT INTO `employees_rooms` VALUES ('2019', 'H1803129', '435', null, null, '3163', '2222');
INSERT INTO `employees_rooms` VALUES ('2020', 'H0907034', '436', null, null, '3164', '2223');
INSERT INTO `employees_rooms` VALUES ('2021', 'H0903086', '436', null, null, '3165', '2223');
INSERT INTO `employees_rooms` VALUES ('2022', 'H1503167', '502', null, null, '3166', '2225');
INSERT INTO `employees_rooms` VALUES ('2023', 'H1503169', '502', null, null, '3167', '2225');
INSERT INTO `employees_rooms` VALUES ('2024', 'H1806016', '503', null, null, '3168', '2226');
INSERT INTO `employees_rooms` VALUES ('2025', 'H1804001', '504', null, null, '3169', '2227');
INSERT INTO `employees_rooms` VALUES ('2026', 'H1803735', '505', null, null, '3170', '2228');
INSERT INTO `employees_rooms` VALUES ('2027', 'H1503737', '507', null, null, '3171', '2230');
INSERT INTO `employees_rooms` VALUES ('2028', 'H1503738', '507', null, null, '3172', '2230');
INSERT INTO `employees_rooms` VALUES ('2029', 'H1803422', '510', null, null, '3173', '2233');
INSERT INTO `employees_rooms` VALUES ('2030', 'H1506027', '510', null, null, '3174', '2233');
INSERT INTO `employees_rooms` VALUES ('2031', 'H1003121', '511', null, null, '3175', '2234');
INSERT INTO `employees_rooms` VALUES ('2032', 'H1702114', '511', null, null, '3176', '2234');
INSERT INTO `employees_rooms` VALUES ('2033', 'H0808021', '513', null, null, '3177', '2236');
INSERT INTO `employees_rooms` VALUES ('2034', 'H1702104', '513', null, null, '3178', '2236');
INSERT INTO `employees_rooms` VALUES ('2035', 'H1803723', '514', null, null, '3179', '2237');
INSERT INTO `employees_rooms` VALUES ('2036', 'H1806052', '514', null, null, '3180', '2237');
INSERT INTO `employees_rooms` VALUES ('2037', 'H1209012', '517', null, null, '3181', '2240');
INSERT INTO `employees_rooms` VALUES ('2038', 'H1202472', '518', null, null, '3182', '2241');
INSERT INTO `employees_rooms` VALUES ('2039', 'H1603413', '519', null, null, '3183', '2242');
INSERT INTO `employees_rooms` VALUES ('2040', 'H1806124', '519', null, null, '3184', '2242');
INSERT INTO `employees_rooms` VALUES ('2041', 'H1803570', '520', null, null, '3185', '2243');
INSERT INTO `employees_rooms` VALUES ('2042', 'H1803571', '520', null, null, '3186', '2243');
INSERT INTO `employees_rooms` VALUES ('2043', 'H1503160', '521', null, null, '3187', '2244');
INSERT INTO `employees_rooms` VALUES ('2044', 'H1803722', '521', null, null, '3188', '2244');
INSERT INTO `employees_rooms` VALUES ('2045', 'H1703092', '522', null, null, '3189', '2245');
INSERT INTO `employees_rooms` VALUES ('2046', 'H1807072', '522', null, null, '3190', '2245');
INSERT INTO `employees_rooms` VALUES ('2047', 'H1303312', '523', null, null, '3191', '2246');
INSERT INTO `employees_rooms` VALUES ('2048', 'H1803054', '524', null, null, '3192', '2247');
INSERT INTO `employees_rooms` VALUES ('2049', 'H1803432', '524', null, null, '3193', '2247');
INSERT INTO `employees_rooms` VALUES ('2050', 'H1805001', '524', null, null, '3047', '2247');
INSERT INTO `employees_rooms` VALUES ('2051', 'H1806044', '525', null, null, '2880', '2248');
INSERT INTO `employees_rooms` VALUES ('2052', 'H1709090', '526', null, null, '3194', '2249');
INSERT INTO `employees_rooms` VALUES ('2053', 'H1710079', '526', null, null, '3195', '2249');
INSERT INTO `employees_rooms` VALUES ('2054', 'H1102158', '527', null, null, '3196', '2250');
INSERT INTO `employees_rooms` VALUES ('2055', 'H1102157', '527', null, null, '3197', '2250');
INSERT INTO `employees_rooms` VALUES ('2056', 'H0402022', '528', null, null, '3198', '2251');
INSERT INTO `employees_rooms` VALUES ('2057', 'H0409004', '528', null, null, '3199', '2251');
INSERT INTO `employees_rooms` VALUES ('2058', 'H1603102', '529', null, null, '3200', '2252');
INSERT INTO `employees_rooms` VALUES ('2059', 'H1603101', '529', null, null, '3201', '2252');
INSERT INTO `employees_rooms` VALUES ('2060', 'H1803562', '530', null, null, '3202', '2253');
INSERT INTO `employees_rooms` VALUES ('2061', 'H1804180', '530', null, null, '3203', '2253');
INSERT INTO `employees_rooms` VALUES ('2062', 'H1802007', '531', null, null, '3204', '2254');
INSERT INTO `employees_rooms` VALUES ('2063', 'H1802008', '531', null, null, '3205', '2254');
INSERT INTO `employees_rooms` VALUES ('2064', 'H1706062', '532', null, null, '3206', '2255');
INSERT INTO `employees_rooms` VALUES ('2065', 'H1802042', '532', null, null, '3207', '2255');
INSERT INTO `employees_rooms` VALUES ('2066', 'H0807014', '533', null, null, '3208', '2256');
INSERT INTO `employees_rooms` VALUES ('2067', 'H0909042', '533', null, null, '3209', '2256');
INSERT INTO `employees_rooms` VALUES ('2068', 'H1609009', '534', null, null, '3210', '2257');
INSERT INTO `employees_rooms` VALUES ('2069', 'H1803104', '534', null, null, '3211', '2257');
INSERT INTO `employees_rooms` VALUES ('2070', 'H1702341', '535', null, null, '3212', '2258');
INSERT INTO `employees_rooms` VALUES ('2071', 'H1702340', '535', null, null, '3213', '2258');
INSERT INTO `employees_rooms` VALUES ('2072', 'H1408169', '536', null, null, '3214', '2259');
INSERT INTO `employees_rooms` VALUES ('2073', 'H1603108', '601', null, null, '3215', '2260');
INSERT INTO `employees_rooms` VALUES ('2074', 'H1603729', '601', null, null, '3216', '2260');
INSERT INTO `employees_rooms` VALUES ('2075', 'H1803120', '602', null, null, '3217', '2261');
INSERT INTO `employees_rooms` VALUES ('2076', 'H1806059', '602', null, null, '3218', '2261');
INSERT INTO `employees_rooms` VALUES ('2077', 'H1403306', '603', null, null, '3219', '2262');
INSERT INTO `employees_rooms` VALUES ('2078', 'H1403305', '603', null, null, '3220', '2262');
INSERT INTO `employees_rooms` VALUES ('2079', 'H1702363', '604', null, null, '3221', '2263');
INSERT INTO `employees_rooms` VALUES ('2080', 'H1702364', '604', null, null, '3222', '2263');
INSERT INTO `employees_rooms` VALUES ('2081', 'H1707147', '605', null, null, '3223', '2264');
INSERT INTO `employees_rooms` VALUES ('2082', 'H1708118', '605', null, null, '3224', '2264');
INSERT INTO `employees_rooms` VALUES ('2083', 'H1611016', '606', null, null, '3225', '2265');
INSERT INTO `employees_rooms` VALUES ('2084', 'H1603828', '608', null, null, '3226', '2267');
INSERT INTO `employees_rooms` VALUES ('2085', 'H1702105', '608', null, null, '3227', '2267');
INSERT INTO `employees_rooms` VALUES ('2086', 'H1702366', '609', null, null, '3228', '2268');
INSERT INTO `employees_rooms` VALUES ('2087', 'H1702365', '609', null, null, '3229', '2268');
INSERT INTO `employees_rooms` VALUES ('2088', 'H1503464', '614', null, null, '3230', '2273');
INSERT INTO `employees_rooms` VALUES ('2089', 'H1504053', '614', null, null, '3231', '2273');
INSERT INTO `employees_rooms` VALUES ('2090', 'H1610071', '616', null, null, '3232', '2275');
INSERT INTO `employees_rooms` VALUES ('2091', 'H1609036', '617', null, null, '3233', '2276');
INSERT INTO `employees_rooms` VALUES ('2092', 'H1702650', '617', null, null, '3234', '2276');
INSERT INTO `employees_rooms` VALUES ('2093', 'H1803332', '618', null, null, '3235', '2277');
INSERT INTO `employees_rooms` VALUES ('2094', 'H1506151', '620', null, null, '3236', '2279');
INSERT INTO `employees_rooms` VALUES ('2095', 'H1611055', '620', null, null, '3237', '2279');
INSERT INTO `employees_rooms` VALUES ('2096', 'H1702534', '621', null, null, '3238', '2280');
INSERT INTO `employees_rooms` VALUES ('2097', 'H1806134', '622', null, null, '3239', '2281');
INSERT INTO `employees_rooms` VALUES ('2098', 'H1310200', '623', null, null, '3240', '2282');
INSERT INTO `employees_rooms` VALUES ('2099', 'H1102160', '626', null, null, '3241', '2285');
INSERT INTO `employees_rooms` VALUES ('2100', 'H1807143', '626', null, null, '3242', '2285');
INSERT INTO `employees_rooms` VALUES ('2101', 'H1602177', '627', null, null, '3243', '2286');
INSERT INTO `employees_rooms` VALUES ('2102', 'H1606006', '627', null, null, '3244', '2286');
INSERT INTO `employees_rooms` VALUES ('2103', 'H1102436', '630', null, null, '3245', '2289');
INSERT INTO `employees_rooms` VALUES ('2104', 'H1802263', '630', null, null, '3246', '2289');
INSERT INTO `employees_rooms` VALUES ('2105', 'H1202192', '632', null, null, '3247', '2291');
INSERT INTO `employees_rooms` VALUES ('2106', 'H1202192', '633', null, null, '3247', '2292');
INSERT INTO `employees_rooms` VALUES ('2107', 'H1202193', '633', null, null, '3248', '2292');
INSERT INTO `employees_rooms` VALUES ('2108', 'H1510088', '634', null, null, '3249', '2293');
INSERT INTO `employees_rooms` VALUES ('2109', 'H1702711', '634', null, null, '3250', '2293');
INSERT INTO `employees_rooms` VALUES ('2110', 'H1402051', '636', null, null, '3251', '2295');
INSERT INTO `employees_rooms` VALUES ('2111', 'H1006067', '636', null, null, '3252', '2295');
INSERT INTO `employees_rooms` VALUES ('2112', 'H1803322', '601', null, null, '3253', '2296');
INSERT INTO `employees_rooms` VALUES ('2113', 'H1807031', '601', null, null, '3254', '2296');
INSERT INTO `employees_rooms` VALUES ('2114', 'H1703131', '602', null, null, '3255', '2297');
INSERT INTO `employees_rooms` VALUES ('2115', 'H1707064', '602', null, null, '3256', '2297');
INSERT INTO `employees_rooms` VALUES ('2116', 'H1703133', '603', null, null, '2765', '2298');
INSERT INTO `employees_rooms` VALUES ('2117', 'H1703183', '603', null, null, '3257', '2298');
INSERT INTO `employees_rooms` VALUES ('2118', 'H1706077', '604', null, null, '3258', '2299');
INSERT INTO `employees_rooms` VALUES ('2119', 'H1803124', '604', null, null, '3259', '2299');
INSERT INTO `employees_rooms` VALUES ('2120', 'H1807049', '605', null, null, '3261', '2300');
INSERT INTO `employees_rooms` VALUES ('2121', 'H1807162', '605', null, null, '3262', '2300');
INSERT INTO `employees_rooms` VALUES ('2122', 'H1703186', '606', null, null, '3263', '2301');
INSERT INTO `employees_rooms` VALUES ('2123', 'H1807159', '606', null, null, '3264', '2301');
INSERT INTO `employees_rooms` VALUES ('2124', 'H1703178', '607', null, null, '3265', '2302');
INSERT INTO `employees_rooms` VALUES ('2125', 'H1807088', '607', null, null, '3266', '2302');
INSERT INTO `employees_rooms` VALUES ('2126', 'H1709018', '608', null, null, '3267', '2303');
INSERT INTO `employees_rooms` VALUES ('2127', 'H1807119', '608', null, null, '3268', '2303');
INSERT INTO `employees_rooms` VALUES ('2128', 'H1807151', '609', null, null, '3269', '2304');
INSERT INTO `employees_rooms` VALUES ('2129', 'H1807', '609', null, null, '3270', '2304');
INSERT INTO `employees_rooms` VALUES ('2130', 'H1707076', '610', null, null, '3271', '2305');
INSERT INTO `employees_rooms` VALUES ('2131', 'H1803137', '610', null, null, '3272', '2305');
INSERT INTO `employees_rooms` VALUES ('2132', 'H1803340', '613', null, null, '3273', '2308');
INSERT INTO `employees_rooms` VALUES ('2133', 'H1807166', '613', null, null, '3274', '2308');
INSERT INTO `employees_rooms` VALUES ('2134', 'H1707191', '615', null, null, '3275', '2310');
INSERT INTO `employees_rooms` VALUES ('2135', 'H1805019', '615', null, null, '3276', '2310');
INSERT INTO `employees_rooms` VALUES ('2136', 'H1807120', '616', null, null, '3277', '2311');
INSERT INTO `employees_rooms` VALUES ('2137', 'H1807153', '616', null, null, '3278', '2311');
INSERT INTO `employees_rooms` VALUES ('2138', 'H1707043', '620', null, null, '3279', '2315');
INSERT INTO `employees_rooms` VALUES ('2139', 'H1707083', '620', null, null, '3280', '2315');
INSERT INTO `employees_rooms` VALUES ('2140', 'H1803066', '622', null, null, '3281', '2317');
INSERT INTO `employees_rooms` VALUES ('2141', 'H1807184', '622', null, null, '3282', '2317');
INSERT INTO `employees_rooms` VALUES ('2142', 'H1707033', '624', null, null, '3283', '2319');
INSERT INTO `employees_rooms` VALUES ('2143', 'H1806125', '624', null, null, '3284', '2319');
INSERT INTO `employees_rooms` VALUES ('2144', 'H1707095', '625', null, null, '3285', '2320');
INSERT INTO `employees_rooms` VALUES ('2145', 'H1707100', '626', null, null, '3286', '2321');
INSERT INTO `employees_rooms` VALUES ('2146', 'H1707116', '626', null, null, '3287', '2321');
INSERT INTO `employees_rooms` VALUES ('2147', 'H1707113', '627', null, null, '3288', '2322');
INSERT INTO `employees_rooms` VALUES ('2148', 'H1807036', '627', null, null, '3289', '2322');
INSERT INTO `employees_rooms` VALUES ('2149', 'H1703096', '628', null, null, '3290', '2323');
INSERT INTO `employees_rooms` VALUES ('2150', 'H1803574', '629', null, null, '3291', '2324');
INSERT INTO `employees_rooms` VALUES ('2151', 'H1807046', '629', null, null, '3292', '2324');
INSERT INTO `employees_rooms` VALUES ('2152', 'H1807042', '630', null, null, '3293', '2325');
INSERT INTO `employees_rooms` VALUES ('2153', 'H1807158', '630', null, null, '3260', '2325');
INSERT INTO `employees_rooms` VALUES ('2154', 'H1807091', '631', null, null, '3295', '2326');
INSERT INTO `employees_rooms` VALUES ('2155', 'H1807092', '631', null, null, '3296', '2326');
INSERT INTO `employees_rooms` VALUES ('2156', 'H1802062', '632', null, null, '3297', '2327');
INSERT INTO `employees_rooms` VALUES ('2157', 'H1802093', '632', null, null, '3298', '2327');
INSERT INTO `employees_rooms` VALUES ('2158', 'H1410097', '201', null, null, '3299', '2328');
INSERT INTO `employees_rooms` VALUES ('2159', 'H1310064', '301', null, null, '3300', '2329');
INSERT INTO `employees_rooms` VALUES ('2160', 'H1504385', '401', null, null, '3301', '2330');
INSERT INTO `employees_rooms` VALUES ('2161', 'H1804096', '501', null, null, '3302', '2331');
INSERT INTO `employees_rooms` VALUES ('2162', 'H1709060', '601', null, null, '3303', '2332');
INSERT INTO `employees_rooms` VALUES ('2163', 'H15055037', '602', null, null, '3304', '2333');
INSERT INTO `employees_rooms` VALUES ('2164', 'H1707021', '603', null, null, '3305', '2334');
INSERT INTO `employees_rooms` VALUES ('2165', 'H1806041', '604', null, null, '3306', '2335');
INSERT INTO `employees_rooms` VALUES ('2166', 'H1609030', '504', null, null, '3307', '2336');
INSERT INTO `employees_rooms` VALUES ('2167', 'H1707169', '601', null, null, '3308', '2337');
INSERT INTO `employees_rooms` VALUES ('2168', 'H1806055', '602', null, null, '3309', '2338');
INSERT INTO `employees_rooms` VALUES ('2169', 'H1709032', '603', null, null, '3310', '2339');
INSERT INTO `employees_rooms` VALUES ('2170', 'H1807147', '604', null, null, '3311', '2340');
INSERT INTO `employees_rooms` VALUES ('2171', 'H1803132', '106', null, null, '3312', '2343');
INSERT INTO `employees_rooms` VALUES ('2172', 'H1803133', '106', null, null, '3313', '2343');
INSERT INTO `employees_rooms` VALUES ('2173', 'H0704006', '204', null, null, '3314', '2344');
INSERT INTO `employees_rooms` VALUES ('2174', 'H0403002', '205', null, null, '3315', '2345');
INSERT INTO `employees_rooms` VALUES ('2175', 'H1705008', '206', null, null, '3316', '2346');
INSERT INTO `employees_rooms` VALUES ('2176', 'H1611018', '304', null, null, '3317', '2347');
INSERT INTO `employees_rooms` VALUES ('2177', 'H1702380', '305', null, null, '3318', '2348');
INSERT INTO `employees_rooms` VALUES ('2178', 'H1607006', '404', null, null, '3319', '2349');
INSERT INTO `employees_rooms` VALUES ('2179', 'H1705007', '406', null, null, '3320', '2351');
INSERT INTO `employees_rooms` VALUES ('2180', 'H0511062', '504', null, null, '3321', '2352');
INSERT INTO `employees_rooms` VALUES ('2181', 'H1705007', '506', null, null, '3320', '2353');
INSERT INTO `employees_rooms` VALUES ('2182', 'H1801026', '101', null, null, '3322', '2354');
INSERT INTO `employees_rooms` VALUES ('2183', 'H1803564', '202', null, null, '3323', '2356');
INSERT INTO `employees_rooms` VALUES ('2184', 'H1712018', '302', null, null, '3324', '2357');
INSERT INTO `employees_rooms` VALUES ('2185', 'H1805017', '402', null, null, '3325', '2358');
INSERT INTO `employees_rooms` VALUES ('2186', 'H1802005', '503', null, null, '3326', '2360');

-- ----------------------------
-- Table structure for `employees_rooms_history`
-- ----------------------------
DROP TABLE IF EXISTS `employees_rooms_history`;
CREATE TABLE `employees_rooms_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_no` varchar(255) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `date_in` date NOT NULL,
  `date_out` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employees_rooms_history
-- ----------------------------
INSERT INTO `employees_rooms_history` VALUES ('6', 'H17078', '610', '2018-03-28', '2018-04-24');
INSERT INTO `employees_rooms_history` VALUES ('8', 'H17076', '103', '2018-04-28', '2018-06-04');
INSERT INTO `employees_rooms_history` VALUES ('9', 'H17000', '123', '2018-06-19', '2018-06-19');
INSERT INTO `employees_rooms_history` VALUES ('11', 'H00001', '612', '2018-06-25', '2018-06-25');

-- ----------------------------
-- Table structure for `employees_rooms_new`
-- ----------------------------
DROP TABLE IF EXISTS `employees_rooms_new`;
CREATE TABLE `employees_rooms_new` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(11) NOT NULL,
  `room_id` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employees_rooms_new
-- ----------------------------

-- ----------------------------
-- Table structure for `employee_network`
-- ----------------------------
DROP TABLE IF EXISTS `employee_network`;
CREATE TABLE `employee_network` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `network_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee_network
-- ----------------------------
INSERT INTO `employee_network` VALUES ('2', '7', '4');

-- ----------------------------
-- Table structure for `network`
-- ----------------------------
DROP TABLE IF EXISTS `network`;
CREATE TABLE `network` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mac` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `continued` smallint(6) NOT NULL,
  `remark` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of network
-- ----------------------------
INSERT INTO `network` VALUES ('4', '11-22-33-44-55-66', '1.2.3.54', '2018-04-18', '2019-04-05', '12', null);

-- ----------------------------
-- Table structure for `permissions`
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(255) NOT NULL,
  `permission_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'add:employee', '增加员工的权限');
INSERT INTO `permissions` VALUES ('2', 'update:employee', '修改员工的权限');
INSERT INTO `permissions` VALUES ('3', 'delete:employee', '删除员工的权限');
INSERT INTO `permissions` VALUES ('4', 'get:employee', '查看员工的权限');
INSERT INTO `permissions` VALUES ('5', 'get:user', '查看账户/用户的权限');
INSERT INTO `permissions` VALUES ('6', 'update:user', '修改账户');
INSERT INTO `permissions` VALUES ('7', 'delete:user', '删除用户');
INSERT INTO `permissions` VALUES ('8', 'add:user', '增加用户');

-- ----------------------------
-- Table structure for `rate`
-- ----------------------------
DROP TABLE IF EXISTS `rate`;
CREATE TABLE `rate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` int(10) unsigned DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `jan` double DEFAULT NULL,
  `feb` double DEFAULT NULL,
  `mar` double DEFAULT NULL,
  `apr` double DEFAULT NULL,
  `may` double DEFAULT NULL,
  `jun` double DEFAULT NULL,
  `jul` double DEFAULT NULL,
  `aug` double DEFAULT NULL,
  `sep` double DEFAULT NULL,
  `oct` double DEFAULT NULL,
  `nov` double DEFAULT NULL,
  `dec` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `a` (`room_id`),
  CONSTRAINT `a` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2098 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rate
-- ----------------------------
INSERT INTO `rate` VALUES ('1699', '1962', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1700', '1963', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1701', '1964', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1702', '1965', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1703', '1966', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1704', '1967', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1705', '1968', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1706', '1969', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1707', '1970', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1708', '1971', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1709', '1972', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1710', '1973', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1711', '1974', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1712', '1975', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1713', '1976', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1714', '1977', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1715', '1978', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1716', '1979', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1717', '1980', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1718', '1981', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1719', '1982', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1720', '1983', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1721', '1984', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1722', '1985', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1723', '1986', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1724', '1987', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1725', '1988', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1726', '1989', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1727', '1990', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1728', '1991', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1729', '1992', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1730', '1993', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1731', '1994', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1732', '1995', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1733', '1996', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1734', '1997', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1735', '1998', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1736', '1999', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1737', '2000', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1738', '2001', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1739', '2002', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1740', '2003', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1741', '2004', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1742', '2005', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1743', '2006', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1744', '2007', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1745', '2008', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1746', '2009', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1747', '2010', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1748', '2011', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1749', '2012', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1750', '2013', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1751', '2014', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1752', '2015', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1753', '2016', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1754', '2017', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1755', '2018', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1756', '2019', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1757', '2020', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1758', '2021', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1759', '2022', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1760', '2023', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1761', '2024', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1762', '2025', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1763', '2026', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1764', '2027', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1765', '2028', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1766', '2029', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1767', '2030', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1768', '2031', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1769', '2032', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1770', '2033', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1771', '2034', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1772', '2035', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1773', '2036', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1774', '2037', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1775', '2038', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1776', '2039', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1777', '2040', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1778', '2041', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1779', '2042', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1780', '2043', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1781', '2044', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1782', '2045', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1783', '2046', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1784', '2047', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1785', '2048', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1786', '2049', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1787', '2050', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1788', '2051', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1789', '2052', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1790', '2053', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1791', '2054', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1792', '2055', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1793', '2056', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1794', '2057', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1795', '2058', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1796', '2059', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1797', '2060', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1798', '2061', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1799', '2062', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1800', '2063', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1801', '2064', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1802', '2065', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1803', '2066', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1804', '2067', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1805', '2068', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1806', '2069', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1807', '2070', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1808', '2071', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1809', '2072', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1810', '2073', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1811', '2074', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1812', '2075', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1813', '2076', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1814', '2077', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1815', '2078', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1816', '2079', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1817', '2080', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1818', '2081', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1819', '2082', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1820', '2083', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1821', '2084', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1822', '2085', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1823', '2086', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1824', '2087', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1825', '2088', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1826', '2089', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1827', '2090', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1828', '2091', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1829', '2092', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1830', '2093', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1831', '2094', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1832', '2095', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1833', '2096', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1834', '2097', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1835', '2098', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1836', '2099', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1837', '2100', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1838', '2101', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1839', '2102', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1840', '2103', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1841', '2104', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1842', '2105', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1843', '2106', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1844', '2107', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1845', '2108', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1846', '2109', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1847', '2110', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1848', '2111', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1849', '2112', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1850', '2113', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1851', '2114', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1852', '2115', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1853', '2116', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1854', '2117', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1855', '2118', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1856', '2119', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1857', '2120', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1858', '2121', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1859', '2122', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1860', '2123', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1861', '2124', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1862', '2125', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1863', '2126', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1864', '2127', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1865', '2128', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1866', '2129', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1867', '2130', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1868', '2131', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1869', '2132', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1870', '2133', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1871', '2134', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1872', '2135', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1873', '2136', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1874', '2137', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1875', '2138', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1876', '2139', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1877', '2140', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1878', '2141', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1879', '2142', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1880', '2143', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1881', '2144', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1882', '2145', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1883', '2146', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1884', '2147', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1885', '2148', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1886', '2149', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1887', '2150', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1888', '2151', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1889', '2152', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1890', '2153', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1891', '2154', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1892', '2155', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1893', '2156', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1894', '2157', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1895', '2158', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1896', '2159', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1897', '2160', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1898', '2161', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1899', '2162', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1900', '2163', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1901', '2164', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1902', '2165', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1903', '2166', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1904', '2167', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1905', '2168', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1906', '2169', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1907', '2170', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1908', '2171', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1909', '2172', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1910', '2173', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1911', '2174', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1912', '2175', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1913', '2176', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1914', '2177', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1915', '2178', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1916', '2179', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1917', '2180', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1918', '2181', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1919', '2182', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1920', '2183', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1921', '2184', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1922', '2185', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1923', '2186', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1924', '2187', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1925', '2188', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1926', '2189', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1927', '2190', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1928', '2191', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1929', '2192', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1930', '2193', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1931', '2194', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1932', '2195', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1933', '2196', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1934', '2197', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1935', '2198', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1936', '2199', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1937', '2200', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1938', '2201', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1939', '2202', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1940', '2203', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1941', '2204', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1942', '2205', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1943', '2206', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1944', '2207', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1945', '2208', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1946', '2209', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1947', '2210', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1948', '2211', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1949', '2212', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1950', '2213', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1951', '2214', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1952', '2215', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1953', '2216', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1954', '2217', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1955', '2218', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1956', '2219', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1957', '2220', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1958', '2221', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1959', '2222', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1960', '2223', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1961', '2224', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1962', '2225', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1963', '2226', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1964', '2227', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1965', '2228', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1966', '2229', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1967', '2230', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1968', '2231', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1969', '2232', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1970', '2233', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1971', '2234', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1972', '2235', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1973', '2236', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1974', '2237', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1975', '2238', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1976', '2239', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1977', '2240', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1978', '2241', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1979', '2242', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1980', '2243', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1981', '2244', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1982', '2245', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1983', '2246', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1984', '2247', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1985', '2248', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1986', '2249', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1987', '2250', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1988', '2251', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1989', '2252', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1990', '2253', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1991', '2254', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1992', '2255', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1993', '2256', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1994', '2257', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1995', '2258', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1996', '2259', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1997', '2260', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1998', '2261', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('1999', '2262', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2000', '2263', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2001', '2264', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2002', '2265', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2003', '2266', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2004', '2267', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2005', '2268', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2006', '2269', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2007', '2270', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2008', '2271', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2009', '2272', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2010', '2273', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2011', '2274', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2012', '2275', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2013', '2276', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2014', '2277', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2015', '2278', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2016', '2279', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2017', '2280', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2018', '2281', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2019', '2282', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2020', '2283', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2021', '2284', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2022', '2285', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2023', '2286', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2024', '2287', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2025', '2288', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2026', '2289', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2027', '2290', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2028', '2291', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2029', '2292', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2030', '2293', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2031', '2294', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2032', '2295', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2033', '2296', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2034', '2297', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2035', '2298', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2036', '2299', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2037', '2300', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2038', '2301', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2039', '2302', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2040', '2303', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2041', '2304', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2042', '2305', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2043', '2306', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2044', '2307', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2045', '2308', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2046', '2309', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2047', '2310', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2048', '2311', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2049', '2312', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2050', '2313', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2051', '2314', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2052', '2315', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2053', '2316', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2054', '2317', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2055', '2318', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2056', '2319', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2057', '2320', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2058', '2321', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2059', '2322', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2060', '2323', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2061', '2324', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2062', '2325', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2063', '2326', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2064', '2327', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2065', '2328', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2066', '2329', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2067', '2330', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2068', '2331', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2069', '2332', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2070', '2333', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2071', '2334', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2072', '2335', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2073', '2336', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2074', '2337', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2075', '2338', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2076', '2339', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2077', '2340', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2078', '2341', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2079', '2342', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2080', '2343', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2081', '2344', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2082', '2345', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2083', '2346', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2084', '2347', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2085', '2348', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2086', '2349', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2087', '2350', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2088', '2351', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2089', '2352', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2090', '2353', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2091', '2354', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2092', '2355', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2093', '2356', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2094', '2357', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2095', '2358', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2096', '2359', '2018', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `rate` VALUES ('2097', '2360', '2018', null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `repair`
-- ----------------------------
DROP TABLE IF EXISTS `repair`;
CREATE TABLE `repair` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_no` varchar(255) DEFAULT NULL,
  `reason` text,
  `result` text,
  `remark` text,
  `declarant` varchar(255) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `result_date` date DEFAULT NULL,
  `repairman` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repair
-- ----------------------------
INSERT INTO `repair` VALUES ('2', '101', '水龙头漏水', '修好了', '刚换过', '李四', '2018-04-24', '2018-04-24', '小王');

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  `role_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'admin', '管理员，有所有功能。');
INSERT INTO `roles` VALUES ('2', 'it', ' 信息部，');
INSERT INTO `roles` VALUES ('4', 'guest', '游客');

-- ----------------------------
-- Table structure for `roles_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE `roles_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles_permissions
-- ----------------------------
INSERT INTO `roles_permissions` VALUES ('1', '1', '1');
INSERT INTO `roles_permissions` VALUES ('2', '1', '2');
INSERT INTO `roles_permissions` VALUES ('3', '1', '3');
INSERT INTO `roles_permissions` VALUES ('4', '1', '4');
INSERT INTO `roles_permissions` VALUES ('5', '1', '5');
INSERT INTO `roles_permissions` VALUES ('6', '2', '1');
INSERT INTO `roles_permissions` VALUES ('7', '2', '2');
INSERT INTO `roles_permissions` VALUES ('8', '2', '3');
INSERT INTO `roles_permissions` VALUES ('9', '2', '4');
INSERT INTO `roles_permissions` VALUES ('17', '4', '1');
INSERT INTO `roles_permissions` VALUES ('18', '4', '2');
INSERT INTO `roles_permissions` VALUES ('19', '4', '3');
INSERT INTO `roles_permissions` VALUES ('20', '4', '4');
INSERT INTO `roles_permissions` VALUES ('21', '4', '5');
INSERT INTO `roles_permissions` VALUES ('29', '1', '6');
INSERT INTO `roles_permissions` VALUES ('30', '1', '7');
INSERT INTO `roles_permissions` VALUES ('31', '1', '8');

-- ----------------------------
-- Table structure for `rooms`
-- ----------------------------
DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms` (
  `room_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `factory_name` varchar(255) NOT NULL,
  `building` int(11) NOT NULL,
  `unit` int(11) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `remark` longtext,
  `room_no` varchar(11) NOT NULL,
  `size` int(11) DEFAULT NULL,
  `room_admin` varchar(255) DEFAULT NULL,
  `room_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`room_id`),
  UNIQUE KEY `weiyi` (`factory_name`,`building`,`unit`,`room_no`) USING BTREE,
  KEY `room_id` (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2361 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rooms
-- ----------------------------
INSERT INTO `rooms` VALUES ('1962', '华一', '1', '1', '1', '四人间', '', '101', '4', 'a', '1');
INSERT INTO `rooms` VALUES ('1963', '华一', '1', '1', '1', '四人间', '', '102', '4', null, '1');
INSERT INTO `rooms` VALUES ('1964', '华一', '1', '1', '1', '四人间', '', '103', '4', null, '1');
INSERT INTO `rooms` VALUES ('1965', '华一', '1', '1', '1', '四人间', '', '104', '4', null, '1');
INSERT INTO `rooms` VALUES ('1966', '华一', '1', '1', '1', '四人间', '', '105', '4', null, '1');
INSERT INTO `rooms` VALUES ('1967', '华一', '1', '1', '1', '四人间', '', '106', '4', null, '1');
INSERT INTO `rooms` VALUES ('1968', '华一', '1', '1', '1', '四人间', '', '107', '4', null, '1');
INSERT INTO `rooms` VALUES ('1969', '华一', '1', '1', '1', '四人间', '', '108', '4', null, '1');
INSERT INTO `rooms` VALUES ('1970', '华一', '1', '1', '1', '四人间', '', '109', '4', null, '1');
INSERT INTO `rooms` VALUES ('1971', '华一', '1', '1', '2', '四人间', '', '201', '4', null, '1');
INSERT INTO `rooms` VALUES ('1972', '华一', '1', '1', '2', '四人间', '', '202', '4', null, '1');
INSERT INTO `rooms` VALUES ('1973', '华一', '1', '1', '2', '四人间', '', '203', '4', null, '1');
INSERT INTO `rooms` VALUES ('1974', '华一', '1', '1', '2', '四人间', '', '204', '4', null, '1');
INSERT INTO `rooms` VALUES ('1975', '华一', '1', '1', '2', '四人间', '', '205', '4', null, '1');
INSERT INTO `rooms` VALUES ('1976', '华一', '1', '1', '2', '四人间', '', '206', '4', null, '1');
INSERT INTO `rooms` VALUES ('1977', '华一', '1', '1', '2', '四人间', '', '207', '4', null, '1');
INSERT INTO `rooms` VALUES ('1978', '华一', '1', '1', '2', '四人间', '', '208', '4', null, '1');
INSERT INTO `rooms` VALUES ('1979', '华一', '1', '1', '2', '四人间', '', '209', '4', null, '1');
INSERT INTO `rooms` VALUES ('1980', '华一', '1', '1', '3', '四人间', '', '301', '4', null, '1');
INSERT INTO `rooms` VALUES ('1981', '华一', '1', '1', '3', '四人间', '', '302', '4', null, '1');
INSERT INTO `rooms` VALUES ('1982', '华一', '1', '1', '3', '四人间', '', '303', '4', null, '1');
INSERT INTO `rooms` VALUES ('1983', '华一', '1', '1', '3', '四人间', '', '304', '4', null, '1');
INSERT INTO `rooms` VALUES ('1984', '华一', '1', '1', '3', '四人间', '', '305', '4', null, '1');
INSERT INTO `rooms` VALUES ('1985', '华一', '1', '1', '3', '四人间', '', '306', '4', null, '1');
INSERT INTO `rooms` VALUES ('1986', '华一', '1', '1', '3', '四人间', '', '307', '4', null, '1');
INSERT INTO `rooms` VALUES ('1987', '华一', '1', '1', '3', '四人间', '', '308', '4', null, '1');
INSERT INTO `rooms` VALUES ('1988', '华一', '1', '1', '3', '四人间', '', '309', '4', null, '1');
INSERT INTO `rooms` VALUES ('1989', '华一', '1', '1', '4', '四人间', '', '401', '4', null, '1');
INSERT INTO `rooms` VALUES ('1990', '华一', '1', '1', '4', '四人间', '', '402', '4', null, '1');
INSERT INTO `rooms` VALUES ('1991', '华一', '1', '1', '4', '四人间', '', '403', '4', null, '1');
INSERT INTO `rooms` VALUES ('1992', '华一', '1', '1', '4', '四人间', '', '404', '4', null, '1');
INSERT INTO `rooms` VALUES ('1993', '华一', '1', '1', '4', '四人间', '', '405', '4', null, '1');
INSERT INTO `rooms` VALUES ('1994', '华一', '1', '1', '4', '四人间', '', '406', '4', null, '1');
INSERT INTO `rooms` VALUES ('1995', '华一', '1', '1', '4', '四人间', '', '407', '4', null, '1');
INSERT INTO `rooms` VALUES ('1996', '华一', '1', '1', '4', '四人间', '', '408', '4', null, '1');
INSERT INTO `rooms` VALUES ('1997', '华一', '1', '1', '4', '四人间', '', '409', '4', null, '1');
INSERT INTO `rooms` VALUES ('1998', '华一', '1', '1', '5', '四人间', '', '501', '4', null, '1');
INSERT INTO `rooms` VALUES ('1999', '华一', '1', '1', '5', '四人间', '', '502', '4', null, '1');
INSERT INTO `rooms` VALUES ('2000', '华一', '1', '1', '5', '四人间', '', '503', '4', null, '1');
INSERT INTO `rooms` VALUES ('2001', '华一', '1', '1', '5', '四人间', '', '504', '4', null, '1');
INSERT INTO `rooms` VALUES ('2002', '华一', '1', '1', '5', '四人间', '', '505', '4', null, '1');
INSERT INTO `rooms` VALUES ('2003', '华一', '1', '1', '5', '四人间', '', '506', '4', null, '1');
INSERT INTO `rooms` VALUES ('2004', '华一', '1', '1', '5', '四人间', '', '507', '4', null, '1');
INSERT INTO `rooms` VALUES ('2005', '华一', '1', '1', '5', '四人间', '', '508', '4', null, '1');
INSERT INTO `rooms` VALUES ('2006', '华一', '1', '1', '5', '四人间', '', '509', '4', null, '1');
INSERT INTO `rooms` VALUES ('2007', '华一', '1', '2', '1', '夫妻', '', '101', '4', null, '1');
INSERT INTO `rooms` VALUES ('2008', '华一', '1', '2', '1', '董事长批示过', '', '102', '4', null, '1');
INSERT INTO `rooms` VALUES ('2009', '华一', '1', '2', '1', '夫妻', '', '103', '4', null, '1');
INSERT INTO `rooms` VALUES ('2010', '华一', '1', '2', '1', '董事长批示过', '', '104', '4', null, '1');
INSERT INTO `rooms` VALUES ('2011', '华一', '1', '2', '1', '夫妻', '', '105', '4', null, '1');
INSERT INTO `rooms` VALUES ('2012', '华一', '1', '2', '1', '夫妻', '', '106', '4', null, '1');
INSERT INTO `rooms` VALUES ('2013', '华一', '1', '2', '1', '夫妻', '', '107', '4', null, '1');
INSERT INTO `rooms` VALUES ('2014', '华一', '1', '2', '1', '仓储部', '', '108', '4', null, '1');
INSERT INTO `rooms` VALUES ('2015', '华一', '1', '2', '1', '宿管值班室', '', '109', '4', null, '1');
INSERT INTO `rooms` VALUES ('2016', '华一', '1', '2', '1', '夫妻', '', '110', '4', null, '1');
INSERT INTO `rooms` VALUES ('2017', '华一', '1', '2', '1', '夫妻', '', '111', '4', null, '1');
INSERT INTO `rooms` VALUES ('2018', '华一', '1', '2', '1', '行政', '', '112', '4', null, '1');
INSERT INTO `rooms` VALUES ('2019', '华一', '1', '2', '1', '夫妻', '', '113', '4', null, '1');
INSERT INTO `rooms` VALUES ('2020', '华一', '1', '2', '1', '夫妻', '', '114', '4', null, '1');
INSERT INTO `rooms` VALUES ('2021', '华一', '1', '2', '1', '夫妻', '', '115', '4', null, '1');
INSERT INTO `rooms` VALUES ('2022', '华一', '1', '2', '1', '乙班', '', '116', '4', null, '1');
INSERT INTO `rooms` VALUES ('2023', '华一', '1', '2', '1', '丙班', '', '117', '4', null, '1');
INSERT INTO `rooms` VALUES ('2024', '华一', '1', '2', '2', '夫妻', '', '201', '4', null, '1');
INSERT INTO `rooms` VALUES ('2025', '华一', '1', '2', '2', '夫妻', '', '202', '4', null, '1');
INSERT INTO `rooms` VALUES ('2026', '华一', '1', '2', '2', '夫妻', '', '203', '4', null, '1');
INSERT INTO `rooms` VALUES ('2027', '华一', '1', '2', '2', '夫妻', '', '204', '4', null, '1');
INSERT INTO `rooms` VALUES ('2028', '华一', '1', '2', '2', '夫妻', '', '205', '4', null, '1');
INSERT INTO `rooms` VALUES ('2029', '华一', '1', '2', '2', '保安', '', '206', '4', null, '1');
INSERT INTO `rooms` VALUES ('2030', '华一', '1', '2', '2', '甲班', '', '207', '4', null, '1');
INSERT INTO `rooms` VALUES ('2031', '华一', '1', '2', '2', '夫妻', '', '208', '4', null, '1');
INSERT INTO `rooms` VALUES ('2032', '华一', '1', '2', '2', '甲班', '', '209', '4', null, '1');
INSERT INTO `rooms` VALUES ('2033', '华一', '1', '2', '2', '保全', '', '210', '4', null, '1');
INSERT INTO `rooms` VALUES ('2034', '华一', '1', '2', '2', '乙班', '', '211', '4', null, '1');
INSERT INTO `rooms` VALUES ('2035', '华一', '1', '2', '2', '乙班', '', '212', '4', null, '1');
INSERT INTO `rooms` VALUES ('2036', '华一', '1', '2', '2', '丙班', '', '213', '4', null, '1');
INSERT INTO `rooms` VALUES ('2037', '华一', '1', '2', '2', '丙班', '', '214', '4', null, '1');
INSERT INTO `rooms` VALUES ('2038', '华一', '1', '2', '2', '丙班', '', '215', '4', null, '1');
INSERT INTO `rooms` VALUES ('2039', '华一', '1', '2', '2', '甲班', '', '216', '4', null, '1');
INSERT INTO `rooms` VALUES ('2040', '华一', '1', '2', '2', '', '', '217', '4', null, '1');
INSERT INTO `rooms` VALUES ('2041', '华一', '1', '2', '3', '机电', '', '301', '4', null, '1');
INSERT INTO `rooms` VALUES ('2042', '华一', '1', '2', '3', '乙班', '', '302', '4', null, '1');
INSERT INTO `rooms` VALUES ('2043', '华一', '1', '2', '3', '乙班', '', '303', '4', null, '1');
INSERT INTO `rooms` VALUES ('2044', '华一', '1', '2', '3', '常日', '', '304', '4', null, '1');
INSERT INTO `rooms` VALUES ('2045', '华一', '1', '2', '3', '泵板', '', '305', '4', null, '1');
INSERT INTO `rooms` VALUES ('2046', '华一', '1', '2', '3', '丙班', '', '306', '4', null, '1');
INSERT INTO `rooms` VALUES ('2047', '华一', '1', '2', '3', '科级', '', '307', '4', null, '1');
INSERT INTO `rooms` VALUES ('2048', '华一', '1', '2', '3', '丙班', '', '308', '4', null, '1');
INSERT INTO `rooms` VALUES ('2049', '华一', '1', '2', '3', '丙班', '', '309', '4', null, '1');
INSERT INTO `rooms` VALUES ('2050', '华一', '1', '2', '3', '甲班', '', '310', '4', null, '1');
INSERT INTO `rooms` VALUES ('2051', '华一', '1', '2', '3', '乙班', '', '311', '4', null, '1');
INSERT INTO `rooms` VALUES ('2052', '华一', '1', '2', '3', '甲班', '', '312', '4', null, '1');
INSERT INTO `rooms` VALUES ('2053', '华一', '1', '2', '3', '后纺保全', '', '313', '4', null, '1');
INSERT INTO `rooms` VALUES ('2054', '华一', '1', '2', '3', '乙班', '', '314', '4', null, '1');
INSERT INTO `rooms` VALUES ('2055', '华一', '1', '2', '3', '后纺综合', '', '315', '4', null, '1');
INSERT INTO `rooms` VALUES ('2056', '华一', '1', '2', '3', '后纺保全', '', '316', '4', null, '1');
INSERT INTO `rooms` VALUES ('2057', '华一', '1', '2', '3', '后纺保全', '', '317', '4', null, '1');
INSERT INTO `rooms` VALUES ('2058', '华一', '1', '2', '4', '仓储', '', '401', '4', null, '1');
INSERT INTO `rooms` VALUES ('2059', '华一', '1', '2', '4', '仓储', '遥控器1个（1-303）', '402', '4', null, '1');
INSERT INTO `rooms` VALUES ('2060', '华一', '1', '2', '4', '仓储', '', '403', '4', null, '1');
INSERT INTO `rooms` VALUES ('2061', '华一', '1', '2', '4', '保安', '', '404', '4', null, '1');
INSERT INTO `rooms` VALUES ('2062', '华一', '1', '2', '4', '行政', '', '405', '4', null, '1');
INSERT INTO `rooms` VALUES ('2063', '华一', '1', '2', '4', '保安', '', '406', '4', null, '1');
INSERT INTO `rooms` VALUES ('2064', '华一', '1', '2', '4', '董事长批示过', '', '407', '4', null, '1');
INSERT INTO `rooms` VALUES ('2065', '华一', '1', '2', '4', '机电', '', '408', '4', null, '1');
INSERT INTO `rooms` VALUES ('2066', '华一', '1', '2', '4', '夫妻', '', '409', '4', null, '1');
INSERT INTO `rooms` VALUES ('2067', '华一', '1', '2', '4', '', '', '410', '4', null, '1');
INSERT INTO `rooms` VALUES ('2068', '华一', '1', '2', '4', '夫妻', '', '411', '4', null, '1');
INSERT INTO `rooms` VALUES ('2069', '华一', '1', '2', '4', '甲班', '', '412', '4', null, '1');
INSERT INTO `rooms` VALUES ('2070', '华一', '1', '2', '4', '夫妻', '', '413', '4', null, '1');
INSERT INTO `rooms` VALUES ('2071', '华一', '1', '2', '4', '动力', '', '414', '4', null, '1');
INSERT INTO `rooms` VALUES ('2072', '华一', '1', '2', '4', '动力', '', '415', '4', null, '1');
INSERT INTO `rooms` VALUES ('2073', '华一', '1', '2', '4', '保安', '', '416', '4', null, '1');
INSERT INTO `rooms` VALUES ('2074', '华一', '1', '2', '4', '夫妻', '', '417', '4', null, '1');
INSERT INTO `rooms` VALUES ('2075', '华一', '1', '2', '5', '夫妻', '', '501', '4', null, '1');
INSERT INTO `rooms` VALUES ('2076', '华一', '1', '2', '5', '处级', '', '502', '4', null, '1');
INSERT INTO `rooms` VALUES ('2077', '华一', '1', '2', '5', '保安队长', '', '503', '4', null, '1');
INSERT INTO `rooms` VALUES ('2078', '华一', '1', '2', '5', '科员', '', '504', '4', null, '1');
INSERT INTO `rooms` VALUES ('2079', '华一', '1', '2', '5', '夫妻', '', '505', '4', null, '1');
INSERT INTO `rooms` VALUES ('2080', '华一', '1', '2', '5', '处级/夫妻', '', '506', '4', null, '1');
INSERT INTO `rooms` VALUES ('2081', '华一', '1', '2', '5', '夫妻', '', '507', '4', null, '1');
INSERT INTO `rooms` VALUES ('2082', '华一', '1', '2', '5', '夫妻', '', '508', '4', null, '1');
INSERT INTO `rooms` VALUES ('2083', '华一', '1', '2', '5', '夫妻', '', '509', '4', null, '1');
INSERT INTO `rooms` VALUES ('2084', '华一', '1', '2', '5', '处级', '', '510', '4', null, '1');
INSERT INTO `rooms` VALUES ('2085', '华一', '1', '2', '5', '处级', '', '511', '4', null, '1');
INSERT INTO `rooms` VALUES ('2086', '华一', '1', '2', '5', '办事处', '', '512', '4', null, '1');
INSERT INTO `rooms` VALUES ('2087', '华一', '1', '2', '5', '工程师', '', '513', '4', null, '1');
INSERT INTO `rooms` VALUES ('2088', '华一', '1', '2', '5', '处级', '', '514', '4', null, '1');
INSERT INTO `rooms` VALUES ('2089', '华一', '1', '2', '5', '夫妻', '', '515', '4', null, '1');
INSERT INTO `rooms` VALUES ('2090', '华一', '1', '2', '5', '科员', '', '516', '4', null, '1');
INSERT INTO `rooms` VALUES ('2091', '华一', '1', '2', '5', '处级', '', '517', '4', null, '1');
INSERT INTO `rooms` VALUES ('2092', '华一', '1', '3', '1', '双人间', null, '101', '2', null, '1');
INSERT INTO `rooms` VALUES ('2093', '华一', '1', '3', '4', '双人间', null, '401', '2', null, '1');
INSERT INTO `rooms` VALUES ('2094', '华一', '1', '3', '1', '双人间', null, '102', '2', null, '1');
INSERT INTO `rooms` VALUES ('2095', '华一', '1', '3', '4', '双人间', null, '402', '2', null, '1');
INSERT INTO `rooms` VALUES ('2096', '华一', '1', '3', '1', '双人间', null, '103', '2', null, '1');
INSERT INTO `rooms` VALUES ('2097', '华一', '1', '3', '4', '双人间', null, '403', '2', null, '1');
INSERT INTO `rooms` VALUES ('2098', '华一', '1', '3', '1', '双人间', null, '104', '2', null, '1');
INSERT INTO `rooms` VALUES ('2099', '华一', '1', '3', '4', '双人间', null, '404', '2', null, '1');
INSERT INTO `rooms` VALUES ('2100', '华一', '1', '3', '2', '双人间', null, '201', '2', null, '1');
INSERT INTO `rooms` VALUES ('2101', '华一', '1', '3', '5', '双人间', null, '501', '2', null, '1');
INSERT INTO `rooms` VALUES ('2102', '华一', '1', '3', '2', '双人间', null, '202', '2', null, '1');
INSERT INTO `rooms` VALUES ('2103', '华一', '1', '3', '5', '双人间', null, '502', '2', null, '1');
INSERT INTO `rooms` VALUES ('2104', '华一', '1', '3', '2', '双人间', null, '203', '2', null, '1');
INSERT INTO `rooms` VALUES ('2105', '华一', '1', '3', '5', '双人间', null, '503', '2', null, '1');
INSERT INTO `rooms` VALUES ('2106', '华一', '1', '3', '2', '双人间', null, '204', '2', null, '1');
INSERT INTO `rooms` VALUES ('2107', '华一', '1', '3', '5', '双人间', null, '504', '2', null, '1');
INSERT INTO `rooms` VALUES ('2108', '华一', '1', '3', '3', '双人间', null, '301', '2', null, '1');
INSERT INTO `rooms` VALUES ('2109', '华一', '1', '3', '6', '双人间', null, '601', '2', null, '1');
INSERT INTO `rooms` VALUES ('2110', '华一', '1', '3', '3', '双人间', null, '302', '2', null, '1');
INSERT INTO `rooms` VALUES ('2111', '华一', '1', '3', '6', '双人间', null, '602', '2', null, '1');
INSERT INTO `rooms` VALUES ('2112', '华一', '1', '3', '3', '双人间', null, '303', '2', null, '1');
INSERT INTO `rooms` VALUES ('2113', '华一', '1', '3', '6', '双人间', null, '603', '2', null, '1');
INSERT INTO `rooms` VALUES ('2114', '华一', '1', '3', '3', '双人间', null, '304', '2', null, '1');
INSERT INTO `rooms` VALUES ('2115', '华一', '1', '3', '6', '双人间', null, '604', '2', null, '1');
INSERT INTO `rooms` VALUES ('2116', '二分厂', '7', '1', '2', '夫妻', '', '201', '2', null, '1');
INSERT INTO `rooms` VALUES ('2117', '二分厂', '7', '1', '2', '夫妻', '', '202', '2', null, '1');
INSERT INTO `rooms` VALUES ('2118', '二分厂', '7', '1', '2', '夫妻', '', '203', '2', null, '1');
INSERT INTO `rooms` VALUES ('2119', '二分厂', '7', '1', '2', '夫妻', '', '204', '2', null, '1');
INSERT INTO `rooms` VALUES ('2120', '二分厂', '7', '1', '2', '夫妻', '', '205', '2', null, '1');
INSERT INTO `rooms` VALUES ('2121', '二分厂', '7', '1', '2', '夫妻', '', '206', '2', null, '1');
INSERT INTO `rooms` VALUES ('2122', '二分厂', '7', '1', '2', '夫妻', '', '207', '2', null, '1');
INSERT INTO `rooms` VALUES ('2123', '二分厂', '7', '1', '2', '夫妻', '', '208', '2', null, '1');
INSERT INTO `rooms` VALUES ('2124', '二分厂', '7', '1', '2', '夫妻', '', '209', '2', null, '1');
INSERT INTO `rooms` VALUES ('2125', '二分厂', '7', '1', '2', '夫妻', '', '210', '2', null, '1');
INSERT INTO `rooms` VALUES ('2126', '二分厂', '7', '1', '2', '前纺', '', '211', '2', null, '1');
INSERT INTO `rooms` VALUES ('2127', '二分厂', '7', '1', '2', '前纺', '', '212', '2', null, '1');
INSERT INTO `rooms` VALUES ('2128', '二分厂', '7', '1', '2', '前纺', '', '213', '2', null, '1');
INSERT INTO `rooms` VALUES ('2129', '二分厂', '7', '1', '2', '前纺', '', '214', '2', null, '1');
INSERT INTO `rooms` VALUES ('2130', '二分厂', '7', '1', '2', '夫妻', '', '215', '2', null, '1');
INSERT INTO `rooms` VALUES ('2131', '二分厂', '7', '1', '2', '前纺', '', '216', '2', null, '1');
INSERT INTO `rooms` VALUES ('2132', '二分厂', '7', '1', '2', '后纺', '', '217', '2', null, '1');
INSERT INTO `rooms` VALUES ('2133', '二分厂', '7', '1', '2', '后纺', '', '218', '2', null, '1');
INSERT INTO `rooms` VALUES ('2134', '二分厂', '7', '1', '2', '后纺', '', '219', '2', null, '1');
INSERT INTO `rooms` VALUES ('2135', '二分厂', '7', '1', '2', '后纺', '', '220', '2', null, '1');
INSERT INTO `rooms` VALUES ('2136', '二分厂', '7', '1', '2', '后纺', '', '221', '2', null, '1');
INSERT INTO `rooms` VALUES ('2137', '二分厂', '7', '1', '2', '后纺', '', '222', '2', null, '1');
INSERT INTO `rooms` VALUES ('2138', '二分厂', '7', '1', '2', '前纺', '', '223', '2', null, '1');
INSERT INTO `rooms` VALUES ('2139', '二分厂', '7', '1', '2', '宿舍值班室', '', '224', '2', null, '1');
INSERT INTO `rooms` VALUES ('2140', '二分厂', '7', '1', '2', '前纺', '', '225', '2', null, '1');
INSERT INTO `rooms` VALUES ('2141', '二分厂', '7', '1', '2', '前纺', '', '226', '2', null, '1');
INSERT INTO `rooms` VALUES ('2142', '二分厂', '7', '1', '2', '前纺', '', '227', '2', null, '1');
INSERT INTO `rooms` VALUES ('2143', '二分厂', '7', '1', '2', '夫妻', '', '228', '2', null, '1');
INSERT INTO `rooms` VALUES ('2144', '二分厂', '7', '1', '2', '夫妻', '', '229', '2', null, '1');
INSERT INTO `rooms` VALUES ('2145', '二分厂', '7', '1', '2', '处级', '', '230', '2', null, '1');
INSERT INTO `rooms` VALUES ('2146', '二分厂', '7', '1', '2', '夫妻', '', '231', '2', null, '1');
INSERT INTO `rooms` VALUES ('2147', '二分厂', '7', '1', '2', '宿舍值班室', '', '232', '2', null, '1');
INSERT INTO `rooms` VALUES ('2148', '二分厂', '7', '1', '2', '处级', '', '233', '2', null, '1');
INSERT INTO `rooms` VALUES ('2149', '二分厂', '7', '1', '2', '夫妻', '', '234', '2', null, '1');
INSERT INTO `rooms` VALUES ('2150', '二分厂', '7', '1', '2', '夫妻', '', '235', '2', null, '1');
INSERT INTO `rooms` VALUES ('2151', '二分厂', '7', '1', '2', '夫妻', '', '236', '2', null, '1');
INSERT INTO `rooms` VALUES ('2152', '二分厂', '7', '1', '3', '夫妻', '', '301', '2', null, '1');
INSERT INTO `rooms` VALUES ('2153', '二分厂', '7', '1', '3', '夫妻', '', '302', '2', null, '1');
INSERT INTO `rooms` VALUES ('2154', '二分厂', '7', '1', '3', '夫妻', '', '303', '2', null, '1');
INSERT INTO `rooms` VALUES ('2155', '二分厂', '7', '1', '3', '夫妻', '', '304', '2', null, '1');
INSERT INTO `rooms` VALUES ('2156', '二分厂', '7', '1', '3', '夫妻', '', '305', '2', null, '1');
INSERT INTO `rooms` VALUES ('2157', '二分厂', '7', '1', '3', '夫妻', '', '306', '2', null, '1');
INSERT INTO `rooms` VALUES ('2158', '二分厂', '7', '1', '3', '夫妻', '', '307', '2', null, '1');
INSERT INTO `rooms` VALUES ('2159', '二分厂', '7', '1', '3', '夫妻', '', '308', '2', null, '1');
INSERT INTO `rooms` VALUES ('2160', '二分厂', '7', '1', '3', '夫妻', '', '309', '2', null, '1');
INSERT INTO `rooms` VALUES ('2161', '二分厂', '7', '1', '3', '前纺', '', '310', '2', null, '1');
INSERT INTO `rooms` VALUES ('2162', '二分厂', '7', '1', '3', '前纺', '', '311', '2', null, '1');
INSERT INTO `rooms` VALUES ('2163', '二分厂', '7', '1', '3', '前纺', '', '312', '2', null, '1');
INSERT INTO `rooms` VALUES ('2164', '二分厂', '7', '1', '3', '前纺', '', '313', '2', null, '1');
INSERT INTO `rooms` VALUES ('2165', '二分厂', '7', '1', '3', '前纺', '', '314', '2', null, '1');
INSERT INTO `rooms` VALUES ('2166', '二分厂', '7', '1', '3', '前纺', '', '315', '2', null, '1');
INSERT INTO `rooms` VALUES ('2167', '二分厂', '7', '1', '3', '前纺', '', '316', '2', null, '1');
INSERT INTO `rooms` VALUES ('2168', '二分厂', '7', '1', '3', '后纺', '', '317', '2', null, '1');
INSERT INTO `rooms` VALUES ('2169', '二分厂', '7', '1', '3', '后纺', '', '318', '2', null, '1');
INSERT INTO `rooms` VALUES ('2170', '二分厂', '7', '1', '3', '后纺', '', '319', '2', null, '1');
INSERT INTO `rooms` VALUES ('2171', '二分厂', '7', '1', '3', '后纺', '', '320', '2', null, '1');
INSERT INTO `rooms` VALUES ('2172', '二分厂', '7', '1', '3', '后纺', '', '321', '2', null, '1');
INSERT INTO `rooms` VALUES ('2173', '二分厂', '7', '1', '3', '后纺', '', '322', '2', null, '1');
INSERT INTO `rooms` VALUES ('2174', '二分厂', '7', '1', '3', '前纺', '', '323', '2', null, '1');
INSERT INTO `rooms` VALUES ('2175', '二分厂', '7', '1', '3', '前纺', '', '324', '2', null, '1');
INSERT INTO `rooms` VALUES ('2176', '二分厂', '7', '1', '3', '前纺', '', '325', '2', null, '1');
INSERT INTO `rooms` VALUES ('2177', '二分厂', '7', '1', '3', '前纺', '', '326', '2', null, '1');
INSERT INTO `rooms` VALUES ('2178', '二分厂', '7', '1', '3', '前纺', '', '327', '2', null, '1');
INSERT INTO `rooms` VALUES ('2179', '二分厂', '7', '1', '3', '前纺', '', '328', '2', null, '1');
INSERT INTO `rooms` VALUES ('2180', '二分厂', '7', '1', '3', '夫妻', ' ', '329', '2', null, '1');
INSERT INTO `rooms` VALUES ('2181', '二分厂', '7', '1', '3', '夫妻', '', '330', '2', null, '1');
INSERT INTO `rooms` VALUES ('2182', '二分厂', '7', '1', '3', '夫妻', '', '331', '2', null, '1');
INSERT INTO `rooms` VALUES ('2183', '二分厂', '7', '1', '3', '夫妻', '', '332', '2', null, '1');
INSERT INTO `rooms` VALUES ('2184', '二分厂', '7', '1', '3', '夫妻', '', '333', '2', null, '1');
INSERT INTO `rooms` VALUES ('2185', '二分厂', '7', '1', '3', '夫妻', '五洲', '334', '2', null, '1');
INSERT INTO `rooms` VALUES ('2186', '二分厂', '7', '1', '3', '夫妻', '', '335', '2', null, '1');
INSERT INTO `rooms` VALUES ('2187', '二分厂', '7', '1', '3', '夫妻', '', '336', '2', null, '1');
INSERT INTO `rooms` VALUES ('2188', '二分厂', '7', '1', '4', '夫妻', '', '401', '2', null, '1');
INSERT INTO `rooms` VALUES ('2189', '二分厂', '7', '1', '4', '夫妻', '', '402', '2', null, '1');
INSERT INTO `rooms` VALUES ('2190', '二分厂', '7', '1', '4', '夫妻', '', '403', '2', null, '1');
INSERT INTO `rooms` VALUES ('2191', '二分厂', '7', '1', '4', '夫妻', '', '404', '2', null, '1');
INSERT INTO `rooms` VALUES ('2192', '二分厂', '7', '1', '4', '夫妻', '', '405', '2', null, '1');
INSERT INTO `rooms` VALUES ('2193', '二分厂', '7', '1', '4', '夫妻', '', '406', '2', null, '1');
INSERT INTO `rooms` VALUES ('2194', '二分厂', '7', '1', '4', '夫妻', '', '407', '2', null, '1');
INSERT INTO `rooms` VALUES ('2195', '二分厂', '7', '1', '4', '夫妻', '', '408', '2', null, '1');
INSERT INTO `rooms` VALUES ('2196', '二分厂', '7', '1', '4', '处级', '五洲', '409', '2', null, '1');
INSERT INTO `rooms` VALUES ('2197', '二分厂', '7', '1', '4', '夫妻', '', '410', '2', null, '1');
INSERT INTO `rooms` VALUES ('2198', '二分厂', '7', '1', '4', '前纺', '2014.1.14领一个美的空调遥控器', '411', '2', null, '1');
INSERT INTO `rooms` VALUES ('2199', '二分厂', '7', '1', '4', '前纺', '', '412', '2', null, '1');
INSERT INTO `rooms` VALUES ('2200', '二分厂', '7', '1', '4', '后纺', '', '413', '2', null, '1');
INSERT INTO `rooms` VALUES ('2201', '二分厂', '7', '1', '4', '前纺', '', '414', '2', null, '1');
INSERT INTO `rooms` VALUES ('2202', '二分厂', '7', '1', '4', '前纺', '', '415', '2', null, '1');
INSERT INTO `rooms` VALUES ('2203', '二分厂', '7', '1', '4', '前纺', '', '416', '2', null, '1');
INSERT INTO `rooms` VALUES ('2204', '二分厂', '7', '1', '4', '后纺', '', '417', '2', null, '1');
INSERT INTO `rooms` VALUES ('2205', '二分厂', '7', '1', '4', '后纺', '', '418', '2', null, '1');
INSERT INTO `rooms` VALUES ('2206', '二分厂', '7', '1', '4', '丙班', '', '419', '2', null, '1');
INSERT INTO `rooms` VALUES ('2207', '二分厂', '7', '1', '4', '后纺', ' ', '420', '2', null, '1');
INSERT INTO `rooms` VALUES ('2208', '二分厂', '7', '1', '4', '后纺', '', '421', '2', null, '1');
INSERT INTO `rooms` VALUES ('2209', '二分厂', '7', '1', '4', '后纺', '', '422', '2', null, '1');
INSERT INTO `rooms` VALUES ('2210', '二分厂', '7', '1', '4', '前纺', '', '423', '2', null, '1');
INSERT INTO `rooms` VALUES ('2211', '二分厂', '7', '1', '4', '前纺', '', '424', '2', null, '1');
INSERT INTO `rooms` VALUES ('2212', '二分厂', '7', '1', '4', '前纺', '', '425', '2', null, '1');
INSERT INTO `rooms` VALUES ('2213', '二分厂', '7', '1', '4', '处级', '', '426', '2', null, '1');
INSERT INTO `rooms` VALUES ('2214', '二分厂', '7', '1', '4', '处级', '', '427', '2', null, '1');
INSERT INTO `rooms` VALUES ('2215', '二分厂', '7', '1', '4', '夫妻', '', '428', '2', null, '1');
INSERT INTO `rooms` VALUES ('2216', '二分厂', '7', '1', '4', '夫妻', '', '429', '2', null, '1');
INSERT INTO `rooms` VALUES ('2217', '二分厂', '7', '1', '4', '夫妻', '', '430', '2', null, '1');
INSERT INTO `rooms` VALUES ('2218', '二分厂', '7', '1', '4', '夫妻', ' ', '431', '2', null, '1');
INSERT INTO `rooms` VALUES ('2219', '二分厂', '7', '1', '4', '夫妻', '    ', '432', '2', null, '1');
INSERT INTO `rooms` VALUES ('2220', '二分厂', '7', '1', '4', '夫妻', '', '433', '2', null, '1');
INSERT INTO `rooms` VALUES ('2221', '二分厂', '7', '1', '4', '夫妻', '', '434', '2', null, '1');
INSERT INTO `rooms` VALUES ('2222', '二分厂', '7', '1', '4', '夫妻', '', '435', '2', null, '1');
INSERT INTO `rooms` VALUES ('2223', '二分厂', '7', '1', '4', '夫妻', '', '436', '2', null, '1');
INSERT INTO `rooms` VALUES ('2224', '二分厂', '7', '1', '5', '夫妻', ' ', '501', '2', null, '1');
INSERT INTO `rooms` VALUES ('2225', '二分厂', '7', '1', '5', '夫妻', '', '502', '2', null, '1');
INSERT INTO `rooms` VALUES ('2226', '二分厂', '7', '1', '5', '夫妻', '', '503', '2', null, '1');
INSERT INTO `rooms` VALUES ('2227', '二分厂', '7', '1', '5', '夫妻', '', '504', '2', null, '1');
INSERT INTO `rooms` VALUES ('2228', '二分厂', '7', '1', '5', '夫妻', '', '505', '2', null, '1');
INSERT INTO `rooms` VALUES ('2229', '二分厂', '7', '1', '5', '科员', '', '506', '2', null, '1');
INSERT INTO `rooms` VALUES ('2230', '二分厂', '7', '1', '5', '夫妻', '', '507', '2', null, '1');
INSERT INTO `rooms` VALUES ('2231', '二分厂', '7', '1', '5', '夫妻', '', '508', '2', null, '1');
INSERT INTO `rooms` VALUES ('2232', '二分厂', '7', '1', '5', '夫妻', '', '509', '2', null, '1');
INSERT INTO `rooms` VALUES ('2233', '二分厂', '7', '1', '5', '夫妻', '', '510', '2', null, '1');
INSERT INTO `rooms` VALUES ('2234', '二分厂', '7', '1', '5', '夫妻', '', '511', '2', null, '1');
INSERT INTO `rooms` VALUES ('2235', '二分厂', '7', '1', '5', '帮工', '男生宿舍', '512', '2', null, '1');
INSERT INTO `rooms` VALUES ('2236', '二分厂', '7', '1', '5', '平包', '', '513', '2', null, '1');
INSERT INTO `rooms` VALUES ('2237', '二分厂', '7', '1', '5', '前纺', '', '514', '2', null, '1');
INSERT INTO `rooms` VALUES ('2238', '二分厂', '7', '1', '5', '前纺', '', '515', '2', null, '1');
INSERT INTO `rooms` VALUES ('2239', '二分厂', '7', '1', '5', '前纺', '', '516', '2', null, '1');
INSERT INTO `rooms` VALUES ('2240', '二分厂', '7', '1', '5', '前纺', '', '517', '2', null, '1');
INSERT INTO `rooms` VALUES ('2241', '二分厂', '7', '1', '5', '平包', '', '518', '2', null, '1');
INSERT INTO `rooms` VALUES ('2242', '二分厂', '7', '1', '5', '后纺', '', '519', '2', null, '1');
INSERT INTO `rooms` VALUES ('2243', '二分厂', '7', '1', '5', '后纺', '', '520', '2', null, '1');
INSERT INTO `rooms` VALUES ('2244', '二分厂', '7', '1', '5', '后纺', '', '521', '2', null, '1');
INSERT INTO `rooms` VALUES ('2245', '二分厂', '7', '1', '5', '后纺', '', '522', '2', null, '1');
INSERT INTO `rooms` VALUES ('2246', '二分厂', '7', '1', '5', '平包', '', '523', '2', null, '1');
INSERT INTO `rooms` VALUES ('2247', '二分厂', '7', '1', '5', '前纺', '', '524', '2', null, '1');
INSERT INTO `rooms` VALUES ('2248', '二分厂', '7', '1', '5', '平包', '', '525', '2', null, '1');
INSERT INTO `rooms` VALUES ('2249', '二分厂', '7', '1', '5', '前纺', '', '526', '2', null, '1');
INSERT INTO `rooms` VALUES ('2250', '二分厂', '7', '1', '5', '夫妻', '', '527', '2', null, '1');
INSERT INTO `rooms` VALUES ('2251', '二分厂', '7', '1', '5', '夫妻', '', '528', '2', null, '1');
INSERT INTO `rooms` VALUES ('2252', '二分厂', '7', '1', '5', '夫妻', '', '529', '2', null, '1');
INSERT INTO `rooms` VALUES ('2253', '二分厂', '7', '1', '5', '夫妻', '', '530', '2', null, '1');
INSERT INTO `rooms` VALUES ('2254', '二分厂', '7', '1', '5', '夫妻', '', '531', '2', null, '1');
INSERT INTO `rooms` VALUES ('2255', '二分厂', '7', '1', '5', '夫妻', '', '532', '2', null, '1');
INSERT INTO `rooms` VALUES ('2256', '二分厂', '7', '1', '5', '夫妻', '', '533', '2', null, '1');
INSERT INTO `rooms` VALUES ('2257', '二分厂', '7', '1', '5', '夫妻', '', '534', '2', null, '1');
INSERT INTO `rooms` VALUES ('2258', '二分厂', '7', '1', '5', '夫妻', '', '535', '2', null, '1');
INSERT INTO `rooms` VALUES ('2259', '二分厂', '7', '1', '5', '处级', '', '536', '2', null, '1');
INSERT INTO `rooms` VALUES ('2260', '二分厂', '7', '1', '6', '夫妻', '', '601', '2', null, '1');
INSERT INTO `rooms` VALUES ('2261', '二分厂', '7', '1', '6', '科员', '', '602', '2', null, '1');
INSERT INTO `rooms` VALUES ('2262', '二分厂', '7', '1', '6', '夫妻', '', '603', '2', null, '1');
INSERT INTO `rooms` VALUES ('2263', '二分厂', '7', '1', '6', '夫妻', '', '604', '2', null, '1');
INSERT INTO `rooms` VALUES ('2264', '二分厂', '7', '1', '6', '夫妻', '', '605', '2', null, '1');
INSERT INTO `rooms` VALUES ('2265', '二分厂', '7', '1', '6', '副部长', '', '606', '2', null, '1');
INSERT INTO `rooms` VALUES ('2266', '二分厂', '7', '1', '6', '夫妻', '', '607', '2', null, '1');
INSERT INTO `rooms` VALUES ('2267', '二分厂', '7', '1', '6', '夫妻', '', '608', '2', null, '1');
INSERT INTO `rooms` VALUES ('2268', '二分厂', '7', '1', '6', '夫妻', '', '609', '2', null, '1');
INSERT INTO `rooms` VALUES ('2269', '二分厂', '7', '1', '6', '夫妻', '', '610', '2', null, '1');
INSERT INTO `rooms` VALUES ('2270', '二分厂', '7', '1', '6', '专员', '', '611', '2', null, '1');
INSERT INTO `rooms` VALUES ('2271', '二分厂', '7', '1', '6', '工程师', '五洲', '612', '2', null, '1');
INSERT INTO `rooms` VALUES ('2272', '二分厂', '7', '1', '6', '五洲', '', '613', '2', null, '1');
INSERT INTO `rooms` VALUES ('2273', '二分厂', '7', '1', '6', '夫妻', '', '614', '2', null, '1');
INSERT INTO `rooms` VALUES ('2274', '二分厂', '7', '1', '6', '工程师', '五洲', '615', '2', null, '1');
INSERT INTO `rooms` VALUES ('2275', '二分厂', '7', '1', '6', '部级', '部长', '616', '2', null, '1');
INSERT INTO `rooms` VALUES ('2276', '二分厂', '7', '1', '6', '工程师', '五洲', '617', '2', null, '1');
INSERT INTO `rooms` VALUES ('2277', '二分厂', '7', '1', '6', '夫妻', '', '618', '2', null, '1');
INSERT INTO `rooms` VALUES ('2278', '二分厂', '7', '1', '6', '夫妻', '', '619', '2', null, '1');
INSERT INTO `rooms` VALUES ('2279', '二分厂', '7', '1', '6', '夫妻', '', '620', '2', null, '1');
INSERT INTO `rooms` VALUES ('2280', '二分厂', '7', '1', '6', '夫妻', '', '621', '2', null, '1');
INSERT INTO `rooms` VALUES ('2281', '二分厂', '7', '1', '6', '副经理', '五洲', '622', '2', null, '1');
INSERT INTO `rooms` VALUES ('2282', '二分厂', '7', '1', '6', '夫妻', '', '623', '2', null, '1');
INSERT INTO `rooms` VALUES ('2283', '二分厂', '7', '1', '6', '处级', '', '624', '2', null, '1');
INSERT INTO `rooms` VALUES ('2284', '二分厂', '7', '1', '6', '工程师', '五洲', '625', '2', null, '1');
INSERT INTO `rooms` VALUES ('2285', '二分厂', '7', '1', '6', '夫妻', '', '626', '2', null, '1');
INSERT INTO `rooms` VALUES ('2286', '二分厂', '7', '1', '6', '科员', '', '627', '2', null, '1');
INSERT INTO `rooms` VALUES ('2287', '二分厂', '7', '1', '6', '夫妻', '', '628', '2', null, '1');
INSERT INTO `rooms` VALUES ('2288', '二分厂', '7', '1', '6', '夫妻', '', '629', '2', null, '1');
INSERT INTO `rooms` VALUES ('2289', '二分厂', '7', '1', '6', '夫妻', '', '630', '2', null, '1');
INSERT INTO `rooms` VALUES ('2290', '二分厂', '7', '1', '6', '副经理', '五洲', '631', '2', null, '1');
INSERT INTO `rooms` VALUES ('2291', '二分厂', '7', '1', '6', '经理', '', '632', '2', null, '1');
INSERT INTO `rooms` VALUES ('2292', '二分厂', '7', '1', '6', '副经理', '', '633', '2', null, '1');
INSERT INTO `rooms` VALUES ('2293', '二分厂', '7', '1', '6', '夫妻', '无结婚证复印件，18267225507', '634', '2', null, '1');
INSERT INTO `rooms` VALUES ('2294', '二分厂', '7', '1', '6', '技术员', '五洲', '635', '2', null, '1');
INSERT INTO `rooms` VALUES ('2295', '二分厂', '7', '1', '6', '夫妻', '', '636', '2', null, '1');
INSERT INTO `rooms` VALUES ('2296', '二分厂', '8', '1', '6', '双人间', '', '601', '2', null, '1');
INSERT INTO `rooms` VALUES ('2297', '二分厂', '8', '1', '6', '双人间', '', '602', '2', null, '1');
INSERT INTO `rooms` VALUES ('2298', '二分厂', '8', '1', '6', '双人间', '', '603', '2', null, '1');
INSERT INTO `rooms` VALUES ('2299', '二分厂', '8', '1', '6', '双人间', '', '604', '2', null, '1');
INSERT INTO `rooms` VALUES ('2300', '二分厂', '8', '1', '6', '双人间', '', '605', '2', null, '1');
INSERT INTO `rooms` VALUES ('2301', '二分厂', '8', '1', '6', '双人间', '', '606', '2', null, '1');
INSERT INTO `rooms` VALUES ('2302', '二分厂', '8', '1', '6', '双人间', '', '607', '2', null, '1');
INSERT INTO `rooms` VALUES ('2303', '二分厂', '8', '1', '6', '双人间', '', '608', '2', null, '1');
INSERT INTO `rooms` VALUES ('2304', '二分厂', '8', '1', '6', '双人间', '', '609', '2', null, '1');
INSERT INTO `rooms` VALUES ('2305', '二分厂', '8', '1', '6', '双人间', '', '610', '2', null, '1');
INSERT INTO `rooms` VALUES ('2306', '二分厂', '8', '1', '6', '双人间', '', '611', '2', null, '1');
INSERT INTO `rooms` VALUES ('2307', '二分厂', '8', '1', '6', '双人间', '', '612', '2', null, '1');
INSERT INTO `rooms` VALUES ('2308', '二分厂', '8', '1', '6', '双人间', '', '613', '2', null, '1');
INSERT INTO `rooms` VALUES ('2309', '二分厂', '8', '1', '6', '双人间', '', '614', '2', null, '1');
INSERT INTO `rooms` VALUES ('2310', '二分厂', '8', '1', '6', '双人间', '', '615', '2', null, '1');
INSERT INTO `rooms` VALUES ('2311', '二分厂', '8', '1', '6', '双人间', '', '616', '2', null, '1');
INSERT INTO `rooms` VALUES ('2312', '二分厂', '8', '1', '6', '双人间', '', '617', '2', null, '1');
INSERT INTO `rooms` VALUES ('2313', '二分厂', '8', '1', '6', '双人间', '', '618', '2', null, '1');
INSERT INTO `rooms` VALUES ('2314', '二分厂', '8', '1', '6', '双人间', '', '619', '2', null, '1');
INSERT INTO `rooms` VALUES ('2315', '二分厂', '8', '1', '6', '双人间', '', '620', '2', null, '1');
INSERT INTO `rooms` VALUES ('2316', '二分厂', '8', '1', '6', '双人间', '', '621', '2', null, '1');
INSERT INTO `rooms` VALUES ('2317', '二分厂', '8', '1', '6', '双人间', '', '622', '2', null, '1');
INSERT INTO `rooms` VALUES ('2318', '二分厂', '8', '1', '6', '双人间', '', '623', '2', null, '1');
INSERT INTO `rooms` VALUES ('2319', '二分厂', '8', '1', '6', '双人间', '', '624', '2', null, '1');
INSERT INTO `rooms` VALUES ('2320', '二分厂', '8', '1', '6', '双人间', '', '625', '2', null, '1');
INSERT INTO `rooms` VALUES ('2321', '二分厂', '8', '1', '6', '双人间', '', '626', '2', null, '1');
INSERT INTO `rooms` VALUES ('2322', '二分厂', '8', '1', '6', '双人间', '', '627', '2', null, '1');
INSERT INTO `rooms` VALUES ('2323', '二分厂', '8', '1', '6', '双人间', '', '628', '2', null, '1');
INSERT INTO `rooms` VALUES ('2324', '二分厂', '8', '1', '6', '双人间', '', '629', '2', null, '1');
INSERT INTO `rooms` VALUES ('2325', '二分厂', '8', '1', '6', '双人间', '', '630', '2', null, '1');
INSERT INTO `rooms` VALUES ('2326', '二分厂', '8', '1', '6', '双人间', '', '631', '2', null, '1');
INSERT INTO `rooms` VALUES ('2327', '二分厂', '8', '1', '6', '双人间', '', '632', '2', null, '1');
INSERT INTO `rooms` VALUES ('2328', '二分厂', '13', '1', '2', '单人间', '', '201', '1', null, '1');
INSERT INTO `rooms` VALUES ('2329', '二分厂', '13', '1', '3', '单人间', '', '301', '1', null, '1');
INSERT INTO `rooms` VALUES ('2330', '二分厂', '13', '1', '4', '单人间', '', '401', '1', null, '1');
INSERT INTO `rooms` VALUES ('2331', '二分厂', '13', '1', '5', '单人间', '', '501', '1', null, '1');
INSERT INTO `rooms` VALUES ('2332', '二分厂', '13', '1', '6', '单人间', '', '601', '1', null, '1');
INSERT INTO `rooms` VALUES ('2333', '二分厂', '13', '1', '6', '单人间', '', '602', '1', null, '1');
INSERT INTO `rooms` VALUES ('2334', '二分厂', '13', '1', '6', '单人间', '', '603', '1', null, '1');
INSERT INTO `rooms` VALUES ('2335', '二分厂', '13', '1', '6', '单人间', '', '604', '1', null, '1');
INSERT INTO `rooms` VALUES ('2336', '二分厂', '15', '1', '5', '单人间', '', '504', '1', null, '1');
INSERT INTO `rooms` VALUES ('2337', '二分厂', '15', '1', '6', '单人间', '夫妻', '601', '1', null, '1');
INSERT INTO `rooms` VALUES ('2338', '二分厂', '15', '1', '6', '单人间', '', '602', '1', null, '1');
INSERT INTO `rooms` VALUES ('2339', '二分厂', '15', '1', '6', '单人间', '', '603', '1', null, '1');
INSERT INTO `rooms` VALUES ('2340', '二分厂', '15', '1', '6', '单人间', '', '604', '1', null, '1');
INSERT INTO `rooms` VALUES ('2341', '二分厂', '5', '2', '1', '双人间', '', '104', '2', null, '1');
INSERT INTO `rooms` VALUES ('2342', '二分厂', '5', '2', '1', '双人间', '', '105', '2', null, '1');
INSERT INTO `rooms` VALUES ('2343', '二分厂', '5', '2', '1', '双人间', '', '106', '2', null, '1');
INSERT INTO `rooms` VALUES ('2344', '二分厂', '5', '2', '2', '双人间', '', '204', '2', null, '1');
INSERT INTO `rooms` VALUES ('2345', '二分厂', '5', '2', '2', '双人间', '', '205', '2', null, '1');
INSERT INTO `rooms` VALUES ('2346', '二分厂', '5', '2', '2', '双人间', '', '206', '2', null, '1');
INSERT INTO `rooms` VALUES ('2347', '二分厂', '5', '2', '3', '双人间', '', '304', '2', null, '1');
INSERT INTO `rooms` VALUES ('2348', '二分厂', '5', '2', '3', '双人间', '', '305', '2', null, '1');
INSERT INTO `rooms` VALUES ('2349', '二分厂', '5', '2', '4', '双人间', '', '404', '2', null, '1');
INSERT INTO `rooms` VALUES ('2350', '二分厂', '5', '2', '4', '双人间', '', '405', '2', null, '1');
INSERT INTO `rooms` VALUES ('2351', '二分厂', '5', '2', '4', '双人间', '', '406', '2', null, '1');
INSERT INTO `rooms` VALUES ('2352', '二分厂', '5', '2', '5', '双人间', '', '504', '2', null, '1');
INSERT INTO `rooms` VALUES ('2353', '二分厂', '5', '2', '5', '双人间', '', '506', '2', null, '1');
INSERT INTO `rooms` VALUES ('2354', '二分厂', '5', '1', '1', '单人间', '空调遥控器1个', '101', '1', null, '1');
INSERT INTO `rooms` VALUES ('2355', '二分厂', '5', '1', '1', '单人间', '', '103', '1', null, '1');
INSERT INTO `rooms` VALUES ('2356', '二分厂', '5', '1', '2', '单人间', '', '202', '1', null, '1');
INSERT INTO `rooms` VALUES ('2357', '二分厂', '5', '1', '3', '单人间', '', '302', '1', null, '1');
INSERT INTO `rooms` VALUES ('2358', '二分厂', '5', '1', '4', '单人间', '', '402', '1', null, '1');
INSERT INTO `rooms` VALUES ('2359', '二分厂', '5', '1', '5', '单人间', '', '502', '1', null, '1');
INSERT INTO `rooms` VALUES ('2360', '二分厂', '5', '1', '5', '单人间', '空调遥控器1个', '503', '1', null, '1');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  `last_ip` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `locked` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2018-03-01 16:14:34', '2018-08-01 08:49:21', '192.168.1.192', '0', '0');
INSERT INTO `users` VALUES ('3', '000001', '04fc711301f3c784d66955d98d399afb', '2018-03-03 16:36:33', '2018-08-01 09:18:17', '192.168.1.161', '0', '0');
INSERT INTO `users` VALUES ('12', '000002', '768c1c687efe184ae6dd2420710b8799', '2018-03-09 09:20:25', '2018-06-28 15:53:47', '192.168.1.237', '0', '0');
INSERT INTO `users` VALUES ('14', '000003', 'f7a5c99c58103f6b65c451efd0f81826', '2018-03-21 13:37:15', '2018-05-24 09:55:15', '192.168.1.192', '0', '0');

-- ----------------------------
-- Table structure for `users_roles`
-- ----------------------------
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_roles
-- ----------------------------
INSERT INTO `users_roles` VALUES ('1', '1', '1');
INSERT INTO `users_roles` VALUES ('5', '10', '10');
INSERT INTO `users_roles` VALUES ('28', '13', '2');
INSERT INTO `users_roles` VALUES ('30', '12', '2');
INSERT INTO `users_roles` VALUES ('40', '16', '1');
INSERT INTO `users_roles` VALUES ('47', '17', '4');
INSERT INTO `users_roles` VALUES ('53', '14', '4');
INSERT INTO `users_roles` VALUES ('57', '3', '1');
INSERT INTO `users_roles` VALUES ('59', '15', '4');

-- ----------------------------
-- Table structure for `werates`
-- ----------------------------
DROP TABLE IF EXISTS `werates`;
CREATE TABLE `werates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_no` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `rate` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of werates
-- ----------------------------
INSERT INTO `werates` VALUES ('7', '102', '2018/12', '45.4');
INSERT INTO `werates` VALUES ('8', '123', '2018/12', '13.5');
INSERT INTO `werates` VALUES ('9', '610', '2018/12', '22.3');
INSERT INTO `werates` VALUES ('10', '610', '2018/12', '66.9');

-- ----------------------------
-- Procedure structure for `myproc`
-- ----------------------------
DROP PROCEDURE IF EXISTS `myproc`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `myproc`(OUT s INT)
BEGIN 
		SELECT COUNT(*) INTO s FROM users;
	END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `myproc1`
-- ----------------------------
DROP PROCEDURE IF EXISTS `myproc1`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `myproc1`(INOUT p int)
BEGIN 
		SELECT p;
		SET p = 5+p;
		SELECT p;
	END
;;
DELIMITER ;

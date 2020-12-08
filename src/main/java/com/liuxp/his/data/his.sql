DROP DATABASE IF EXISTS `his`;
CREATE DATABASE `his`;
USE his;

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for check
-- ----------------------------
DROP TABLE IF EXISTS `check`;
CREATE TABLE `check`  (
  `checkID` int NOT NULL AUTO_INCREMENT,
  `checkCode` varchar(255) ,
  `checkName` varchar(255) ,
  `checkSpecification` varchar(255) ,
  `checkPrice` double(6, 2) ,
  `costTypeID` int ,
  `deptID` int ,
  `checkHelperCode` varchar(255) ,
  `createTime` datetime(0) ,
  `lastModifyTime` datetime(0) ,
  PRIMARY KEY (`checkID`) ,
  FOREIGN KEY (`costTypeID`) REFERENCES `costtype` (`costTypeID`) ,
  FOREIGN KEY (`deptID`) REFERENCES `department` (`deptID`) 
) ;

-- ----------------------------
-- Records of check
-- ----------------------------
INSERT INTO `check` VALUES (1, '120200001', '大抢救', '日', 200.00, 16, 133, 'DQJ', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (2, '120200002', '中抢救', '日', 150.00, 16, 133, 'ZQJ', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (3, '120200003', '小抢救', '日', 80.00, 16, 133, 'XQJ', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (4, '120300001', '中心吸氧', '小时', 2.50, 16, 122, 'ZXXY', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (5, '120300002', '低流量吸氧', '小时', 2.00, 16, 122, 'DLLXY', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (6, '120300003', '高频吸氧', '小时', 4.00, 16, 122, 'GPXY', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (7, '120500001', '大清创缝合', '次', 120.00, 16, 133, 'DQCFH', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (8, '120500002', '中清创缝合', '次', 80.00, 16, 133, 'ZQCFH', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (9, '120500003', '小清创缝合', '次', 40.00, 16, 133, 'XQCFH', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (10, '121000001', '洗胃', '次', 40.00, 16, 133, 'XW', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (11, '120800002', '肠内高营养治疗', '日', 5.00, 16, 133, 'CNGYYZL', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (12, '121500001', '灌肠', '次', 10.00, 16, 133, 'GC', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (13, '240100003', '计算机治疗计划系统(TPS)', '疗程', 180.00, 7, 128, 'JSJZLJHXT', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (14, '240100004', '特定计算机治疗计划系统', '疗程', 500.00, 7, 128, 'TDJSJZLJHXT', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (15, '240100004b', '加速器适型治疗计划系统', '疗程', 500.00, 7, 128, 'JSQSXZLJHXT', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (16, '240100004c', '伽玛刀治疗计划系统', '疗程', 500.00, 7, 128, 'GMDZLJHXT', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (17, '240100004d', 'X刀之TPS治疗计划系统', '疗程', 500.00, 7, 128, 'XDZTPSZLJHXT', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (18, '240100004e', '逆向调强TPS及优化治疗计划系统', '疗程', 500.00, 7, 128, 'NXTQTPSJYHZLJHXT', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (19, '240100005', '放射治疗的适时监控', '次', 50.00, 7, 128, 'FSZLDSSJK', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (20, '210101001', '普通透视', '每个部位', 5.00, 7, 128, 'PTTS', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (25, '210101002', '食管钡餐透视', '次', 15.00, 7, 128, 'SGBCTS', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (26, '210101003', '床旁透视与术中透视', '半小时', 40.00, 7, 128, 'CPTSYSZTS', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (27, '210101004', 'C型臂术中透视', '半小时', 150.00, 7, 128, 'CXBSZTS', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (28, '210103001', '气脑造影', '次', 80.00, 7, 128, 'QNZY', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (29, '210103003', '脑室碘水造影', '次', 60.00, 7, 128, 'NSDSZY', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (30, '210103004', 'X清肌酸激酶－MB同工酶活性测定（干化X法）', '次', 60.00, 3, 125, 'XQJSJM－MBTGMHXCD（GHXF）', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (31, '210103005', 'X清肌酸激酶－MB同工酶活性测定（金标法）', '次', 60.00, 3, 125, 'XQJSJM－MBTGMHXCD（JBF）', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (32, '210103006', '尿α1微量球蛋白测定（化X发光法）', '单侧', 50.00, 3, 125, 'Nα1WLQDBCD（HXFGF）', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (33, '210103007', 'β2微球蛋白测定（各种免疫X方法）', '单侧', 50.00, 3, 125, 'β2WQDBCD（GZMYXFF）', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (34, '210103008', 'X清β2微球蛋白测定（化X发光法）', '单侧', 40.00, 3, 125, 'XQβ2WQDBCD（HXFGF）', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (35, '210103009', '尿β2微球蛋白测定（化X发光法）', '单侧', 80.00, 3, 125, 'Nβ2WQDBCD（HXFGF）', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (36, '210103010', '尿蛋白电泳分析（凝胶法）', '单侧', 70.00, 3, 125, 'NDBDYFX（NJF）', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (37, '210103011', 'X清抗谷氨酸脱J酶抗体测定（各种免疫X方法）', '单侧', 50.00, 3, 125, 'XQKGASTJMKTCD（GZMYXFF）', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (38, '210103012', '胃泌素测定（各种免疫X方法）', '次', 50.00, 3, 125, 'WMSCD（GZMYXFF）', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (39, '210103013', 'X浆凝X酶原时间测定(PT)(仪器法)', '次', 50.00, 3, 125, 'XJNXMYSJCD(PT)(YQF)', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (40, '210103014', 'X清肌酸激酶－MB同工酶活性测定（速率法）', '次', 60.00, 3, 125, 'XQJSJM－MBTGMHXCD（SLF）', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (41, '210103015', '醛固酮测定（化X发光法、荧光免疫法）', '次', 50.00, 3, 125, 'QGTCD（HXFGF、YGMYF）', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (42, '210103016', '尿儿茶酚胺测定（色谱法）', '次', 80.00, 3, 125, 'NECFACD（SPF）', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (43, '210103017', '尿香草苦杏仁酸(VMA)测定（色谱法）', '次', 60.00, 3, 125, 'NXCKXRS(VMA)CD（SPF）', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (44, '210103018', 'X浆肾素活性测定', '次', 80.00, 3, 125, 'XJSSHXCD', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (45, '210103019', 'X管紧张素Ⅱ测定', '次', 100.00, 3, 125, 'XGJZSⅡCD', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (46, '210103020', '促红细胞生成素测定', '次', 50.00, 3, 125, 'CHXBSCSCD', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (47, '210103021', '睾酮测定（化X发光法、荧光免疫法）', '次', 80.00, 3, 125, 'ZTCD（HXFGF、YGMYF）', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (48, '210103022', '葡萄糖测定（干化X法）(X清)', '次', 300.00, 3, 125, 'PTTCD（GHXF）(XQ)', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (49, '210103023', '糖化X红蛋白测定（色谱法）', '次', 80.00, 3, 125, 'THXHDBCD（SPF）', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (50, '210103024', 'X浆乳酸测定', '次', 80.00, 3, 125, 'XJRSCD', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (51, '210103025', '尿N-X-β-D-氨基葡萄糖苷酶测定', '次', 70.00, 3, 125, 'NN-X-β-D-AJPTTZMCD', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (52, '210103026', '尿β-D-半乳糖苷酶测定', '次', 50.00, 3, 125, 'Nβ-D-BRTZMCD', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (53, '210103027', '唐氏综合症筛查', '单侧', 70.00, 3, 125, 'TSZHZSC', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (54, '210103028', '雌三醇测定（化X发光法、荧光免疫法）', '次', 50.00, 3, 125, 'CSCCD（HXFGF、YGMYF）', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (55, '210103029', '雌二醇测定（化X发光法、荧光免疫法）', '次', 50.00, 3, 125, 'CECCD（HXFGF、YGMYF）', '2019-03-01 00:00:00', '2020-07-02 14:50:00');
INSERT INTO `check` VALUES (56, '210103030', '孕酮测定（化X发光法、荧光免疫法）', '单侧', 50.00, 3, 125, 'YTCD（HXFGF、YGMYF）', '2019-03-01 00:00:00', '2020-07-02 14:50:00');

-- ----------------------------
-- Table structure for costtype
-- ----------------------------
DROP TABLE IF EXISTS `costtype`;
CREATE TABLE `costtype`  (
  `costTypeID` int NOT NULL AUTO_INCREMENT,
  `cpstTypeCode` varchar(255) ,
  `costTypeName` varchar(255) ,
  PRIMARY KEY (`costTypeID`) 
) ;

-- ----------------------------
-- Records of costtype
-- ----------------------------
INSERT INTO `costtype` VALUES (1, 'GHF', '挂号费');
INSERT INTO `costtype` VALUES (2, 'ZLF', '诊疗费');
INSERT INTO `costtype` VALUES (3, 'JYF', '检验费');
INSERT INTO `costtype` VALUES (4, 'JYCLF', '检验材料费');
INSERT INTO `costtype` VALUES (5, 'CSJCF', '超声检查费');
INSERT INTO `costtype` VALUES (6, 'CSCLF', '超声材料费');
INSERT INTO `costtype` VALUES (7, 'FSJCF', '放射检查费');
INSERT INTO `costtype` VALUES (8, 'FSCLF', '放射材料费');
INSERT INTO `costtype` VALUES (9, 'MRIJCF', 'MRI检查费');
INSERT INTO `costtype` VALUES (10, 'MRICLF', 'MRI材料费');
INSERT INTO `costtype` VALUES (11, 'CTJCF', 'CT检查费');
INSERT INTO `costtype` VALUES (12, 'CTCLF', 'CT材料费');
INSERT INTO `costtype` VALUES (13, 'XYF', '西药费');
INSERT INTO `costtype` VALUES (14, 'ZCYF', '中成药费');
INSERT INTO `costtype` VALUES (15, 'ZCYF', '中草药费');
INSERT INTO `costtype` VALUES (16, 'CZF', '处置费');
INSERT INTO `costtype` VALUES (17, 'CZCLF', '处置材料费');
INSERT INTO `costtype` VALUES (18, 'MZF', '麻醉费');
INSERT INTO `costtype` VALUES (19, 'MZYF', '麻醉药费');
INSERT INTO `costtype` VALUES (20, 'MZSSF', '门诊手术费');
INSERT INTO `costtype` VALUES (21, 'QT', '其他');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `deptID` int NOT NULL AUTO_INCREMENT,
  `deptCode` varchar(255) ,
  `deptName` varchar(255) ,
  `deptCategoryID` int ,
  PRIMARY KEY (`deptID`) ,
  FOREIGN KEY (`deptCategoryID`) REFERENCES `deptcategory` (`deptCategoryID`) 
) ;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, 'XXGNK', '心血管内科', 1);
INSERT INTO `department` VALUES (2, 'SJNK', '神经内科', 1);
INSERT INTO `department` VALUES (3, 'PTNK', '普通内科', 1);
INSERT INTO `department` VALUES (4, 'XHNK', '消化内科', 1);
INSERT INTO `department` VALUES (5, 'HXNK', '呼吸内科', 1);
INSERT INTO `department` VALUES (6, 'NFMK', '内分泌科', 1);
INSERT INTO `department` VALUES (7, 'SBNK', '肾病内科', 1);
INSERT INTO `department` VALUES (8, 'XYNK', '血液内科', 1);
INSERT INTO `department` VALUES (9, 'GRNK', '感染内科', 1);
INSERT INTO `department` VALUES (10, 'LNBNK', '老年病内科', 1);
INSERT INTO `department` VALUES (11, 'FSMYNK', '风湿免疫内科', 1);
INSERT INTO `department` VALUES (12, 'TXK', '透析科', 1);
INSERT INTO `department` VALUES (13, 'BTFYK', '变态反应科', 1);
INSERT INTO `department` VALUES (14, 'PTWK', '普通外科', 2);
INSERT INTO `department` VALUES (15, 'MNWK', '泌尿外科', 2);
INSERT INTO `department` VALUES (16, 'SJWK', '神经外科', 2);
INSERT INTO `department` VALUES (17, 'XWK', '胸外科', 2);
INSERT INTO `department` VALUES (18, 'ZXWK', '整形外科', 2);
INSERT INTO `department` VALUES (19, 'GCWK', '肛肠外科', 2);
INSERT INTO `department` VALUES (20, 'GDWK', '肝胆外科', 2);
INSERT INTO `department` VALUES (21, 'RXWK', '乳腺外科', 2);
INSERT INTO `department` VALUES (22, 'XXGWK', '心血管外科', 2);
INSERT INTO `department` VALUES (23, 'XZWK', '心脏外科', 2);
INSERT INTO `department` VALUES (24, 'QGYZ', '器官移植', 2);
INSERT INTO `department` VALUES (25, 'WCWK', '微创外科', 2);
INSERT INTO `department` VALUES (26, 'GNSJWK', '功能神经外科', 2);
INSERT INTO `department` VALUES (27, 'XTWK', '腺体外科', 2);
INSERT INTO `department` VALUES (28, 'EKZH', '儿科综合', 4);
INSERT INTO `department` VALUES (29, 'XEWK', '小儿外科', 4);
INSERT INTO `department` VALUES (30, 'ETBJK', '儿童保健科', 4);
INSERT INTO `department` VALUES (31, 'XSEK', '新生儿科', 4);
INSERT INTO `department` VALUES (32, 'XEGK', '小儿骨科', 4);
INSERT INTO `department` VALUES (33, 'XESJNK', '小儿神经内科', 4);
INSERT INTO `department` VALUES (34, 'XEHXK', '小儿呼吸科', 4);
INSERT INTO `department` VALUES (35, 'XEXYK', '小儿血液科', 4);
INSERT INTO `department` VALUES (36, 'XEEBHK', '小儿耳鼻喉科', 4);
INSERT INTO `department` VALUES (37, 'XEXNK', '小儿心内科', 4);
INSERT INTO `department` VALUES (38, 'XEKFK', '小儿康复科', 4);
INSERT INTO `department` VALUES (39, 'XEJSK', '小儿精神科', 4);
INSERT INTO `department` VALUES (40, 'XESNK', '小儿肾内科', 4);
INSERT INTO `department` VALUES (41, 'XEXHK', '小儿消化科', 4);
INSERT INTO `department` VALUES (42, 'XEPFK', '小儿皮肤科', 4);
INSERT INTO `department` VALUES (43, 'XEJZK', '小儿急诊科', 4);
INSERT INTO `department` VALUES (44, 'XENFMK', '小儿内分泌科', 4);
INSERT INTO `department` VALUES (45, 'XEMNWK', '小儿泌尿外科', 4);
INSERT INTO `department` VALUES (46, 'XEGRK', '小儿感染科', 4);
INSERT INTO `department` VALUES (47, 'XEXWK01', '小儿心外科', 4);
INSERT INTO `department` VALUES (48, 'XEXWK02', '小儿胸外科', 4);
INSERT INTO `department` VALUES (49, 'XESJWK', '小儿神经外科', 4);
INSERT INTO `department` VALUES (50, 'XEZXK', '小儿整形科', 4);
INSERT INTO `department` VALUES (51, 'XEFSMYK', '小儿风湿免疫科', 4);
INSERT INTO `department` VALUES (52, 'XEFK', '小儿妇科', 4);
INSERT INTO `department` VALUES (53, 'CRK', '传染科', 5);
INSERT INTO `department` VALUES (54, 'GBK', '肝病科', 5);
INSERT INTO `department` VALUES (55, 'AZBK', '艾滋病科', 5);
INSERT INTO `department` VALUES (56, 'CRWZS', '传染危重室', 5);
INSERT INTO `department` VALUES (57, 'FCKZH', '妇产科综合', 6);
INSERT INTO `department` VALUES (58, 'FK', '妇科', 6);
INSERT INTO `department` VALUES (59, 'CK', '产科', 6);
INSERT INTO `department` VALUES (60, 'JHSYK', '计划生育科', 6);
INSERT INTO `department` VALUES (61, 'FKNFM', '妇科内分泌', 6);
INSERT INTO `department` VALUES (62, 'YCZYK', '遗传咨询科', 6);
INSERT INTO `department` VALUES (63, 'CQJCK', '产前检查科', 6);
INSERT INTO `department` VALUES (64, 'FMNK', '妇泌尿科', 6);
INSERT INTO `department` VALUES (65, 'QLX', '前列腺', 7);
INSERT INTO `department` VALUES (66, 'XGNZA', '性功能障碍', 7);
INSERT INTO `department` VALUES (67, 'SZQGR', '生殖器感染', 7);
INSERT INTO `department` VALUES (68, 'NXBY', '男性不育', 7);
INSERT INTO `department` VALUES (69, 'SZZX', '生殖整形', 7);
INSERT INTO `department` VALUES (70, 'JSK', '精神科', 8);
INSERT INTO `department` VALUES (71, 'SFJDK', '司法鉴定科', 8);
INSERT INTO `department` VALUES (72, 'YWYLK', '药物依赖科', 8);
INSERT INTO `department` VALUES (73, 'ZYJSK', '中医精神科', 8);
INSERT INTO `department` VALUES (74, 'SXZAK', '双相障碍科', 8);
INSERT INTO `department` VALUES (75, 'PFK', '皮肤科', 9);
INSERT INTO `department` VALUES (76, 'XBK', '性病科', 9);
INSERT INTO `department` VALUES (77, 'ZYZHK', '中医综合科', 10);
INSERT INTO `department` VALUES (78, 'ZJK', '针灸科', 10);
INSERT INTO `department` VALUES (79, 'ZYGK', '中医骨科', 10);
INSERT INTO `department` VALUES (80, 'ZYFCK', '中医妇产科', 10);
INSERT INTO `department` VALUES (81, 'ZYWK', '中医外科', 10);
INSERT INTO `department` VALUES (82, 'ZYEK', '中医儿科', 10);
INSERT INTO `department` VALUES (83, 'ZYGCK', '中医肛肠科', 10);
INSERT INTO `department` VALUES (84, 'ZYPFK', '中医皮肤科', 10);
INSERT INTO `department` VALUES (85, 'ZYWGK', '中医五官科', 10);
INSERT INTO `department` VALUES (86, 'ZYAMK', '中医按摩科', 10);
INSERT INTO `department` VALUES (87, 'ZYXHK', '中医消化科', 10);
INSERT INTO `department` VALUES (88, 'ZYZLK', '中医肿瘤科', 10);
INSERT INTO `department` VALUES (89, 'ZYXNK', '中医心内科', 10);
INSERT INTO `department` VALUES (90, 'ZYSJNK', '中医神经内科', 10);
INSERT INTO `department` VALUES (91, 'ZYSBNK', '中医肾病内科', 10);
INSERT INTO `department` VALUES (92, 'ZYNFM', '中医内分泌', 10);
INSERT INTO `department` VALUES (93, 'ZYHXK', '中医呼吸科', 10);
INSERT INTO `department` VALUES (94, 'ZYGBK', '中医肝病科', 10);
INSERT INTO `department` VALUES (95, 'ZYNK', '中医男科', 10);
INSERT INTO `department` VALUES (96, 'ZYFSMYNK', '中医风湿免疫内科', 10);
INSERT INTO `department` VALUES (97, 'ZYXYK', '中医血液科', 10);
INSERT INTO `department` VALUES (98, 'ZYRXWK', '中医乳腺外科', 10);
INSERT INTO `department` VALUES (99, 'ZYLNBK', '中医老年病科', 10);
INSERT INTO `department` VALUES (100, 'ZLZHK', '肿瘤综合科', 11);
INSERT INTO `department` VALUES (101, 'ZLNK', '肿瘤内科', 11);
INSERT INTO `department` VALUES (102, 'FLK', '放疗科', 11);
INSERT INTO `department` VALUES (103, 'ZLWK', '肿瘤外科', 11);
INSERT INTO `department` VALUES (104, 'ZLFK', '肿瘤妇科', 11);
INSERT INTO `department` VALUES (105, 'GZLK', '骨肿瘤科', 11);
INSERT INTO `department` VALUES (106, 'ZLKFK', '肿瘤康复科', 11);
INSERT INTO `department` VALUES (107, 'GWK', '骨外科', 12);
INSERT INTO `department` VALUES (108, 'SWK', '手外科', 12);
INSERT INTO `department` VALUES (109, 'CSGK', '创伤骨科', 12);
INSERT INTO `department` VALUES (110, 'JZWK', '脊柱外科', 12);
INSERT INTO `department` VALUES (111, 'GGJK', '骨关节科', 12);
INSERT INTO `department` VALUES (112, 'GZSSK', '骨质疏松科', 12);
INSERT INTO `department` VALUES (113, 'JXGK', '矫形骨科', 12);
INSERT INTO `department` VALUES (114, 'EBYHTJK', '耳鼻咽喉头颈科', 13);
INSERT INTO `department` VALUES (115, 'KQK', '口腔科', 13);
INSERT INTO `department` VALUES (116, 'YK', '眼科', 13);
INSERT INTO `department` VALUES (117, 'KFK', '康复科', 14);
INSERT INTO `department` VALUES (118, 'LLK', '理疗科', 14);
INSERT INTO `department` VALUES (119, 'MZK', '麻醉科', 15);
INSERT INTO `department` VALUES (120, 'TTK', '疼痛科', 15);
INSERT INTO `department` VALUES (121, 'YYK', '营养科', 16);
INSERT INTO `department` VALUES (122, 'GYYK', '高压氧科', 17);
INSERT INTO `department` VALUES (123, 'GNJCK', '功能检查科', 17);
INSERT INTO `department` VALUES (124, 'BLK', '病理科', 17);
INSERT INTO `department` VALUES (125, 'JYK', '检验科', 17);
INSERT INTO `department` VALUES (126, 'SYZX', '实验中心', 17);
INSERT INTO `department` VALUES (127, 'XDTK', '心电图科', 17);
INSERT INTO `department` VALUES (128, 'FSK', '放射科', 18);
INSERT INTO `department` VALUES (129, 'CSZDK', '超声诊断科', 18);
INSERT INTO `department` VALUES (130, 'YXYXK', '医学影像科', 18);
INSERT INTO `department` VALUES (131, 'HYK', '核医学科', 18);
INSERT INTO `department` VALUES (132, 'YJK', '药剂科', 19);
INSERT INTO `department` VALUES (133, 'HLK', '护理科', 19);
INSERT INTO `department` VALUES (134, 'TJK', '体检科', 19);
INSERT INTO `department` VALUES (135, 'JZK', '急诊科', 19);
INSERT INTO `department` VALUES (136, 'GGWSYYFK', '公共卫生与预防科', 19);
INSERT INTO `department` VALUES (137, 'SBK', '设备科', 19);
INSERT INTO `department` VALUES (138, 'CWK', '财务科', 19);

-- ----------------------------
-- Table structure for deptcategory
-- ----------------------------
DROP TABLE IF EXISTS `deptcategory`;
CREATE TABLE `deptcategory`  (
  `deptCategoryID` int NOT NULL AUTO_INCREMENT,
  `deptCategoryCode` varchar(255) ,
  `deptCategoryName` varchar(255) ,
  PRIMARY KEY (`deptCategoryID`) 
) ;

-- ----------------------------
-- Records of deptcategory
-- ----------------------------
INSERT INTO `deptcategory` VALUES (1, 'NK', '内科');
INSERT INTO `deptcategory` VALUES (2, 'WK', '外科');
INSERT INTO `deptcategory` VALUES (4, 'EK', '儿科');
INSERT INTO `deptcategory` VALUES (5, 'CRBK', '传染病科');
INSERT INTO `deptcategory` VALUES (6, 'FCK', '妇产科');
INSERT INTO `deptcategory` VALUES (7, 'NK', '男科');
INSERT INTO `deptcategory` VALUES (8, 'JSXLK', '精神心理科');
INSERT INTO `deptcategory` VALUES (9, 'PFXBK', '皮肤性病科');
INSERT INTO `deptcategory` VALUES (10, 'ZYK', '中医科');
INSERT INTO `deptcategory` VALUES (11, 'ZLK', '肿瘤科');
INSERT INTO `deptcategory` VALUES (12, 'GK', '骨科');
INSERT INTO `deptcategory` VALUES (13, 'WGK', '五官科');
INSERT INTO `deptcategory` VALUES (14, 'KFYXK', '康复医学科');
INSERT INTO `deptcategory` VALUES (15, 'MZYXK', '麻醉医学科');
INSERT INTO `deptcategory` VALUES (16, 'YYK', '营养科');
INSERT INTO `deptcategory` VALUES (17, 'YJK', '医技科');
INSERT INTO `deptcategory` VALUES (18, 'YXYXX', '医学影像学');
INSERT INTO `deptcategory` VALUES (19, 'QTKS', '其他科室');

-- ----------------------------
-- Table structure for diagnose
-- ----------------------------
DROP TABLE IF EXISTS `diagnose`;
CREATE TABLE `diagnose`  (
  `diagnoseID` int NOT NULL AUTO_INCREMENT,
  `patientIndexID` int ,
  `registerID` int ,
  `diseaseID` int ,
  `diagnoseType` int ,
  `diseaseTime` datetime(0) ,
  PRIMARY KEY (`diagnoseID`) ,
  FOREIGN KEY (`patientIndexID`) REFERENCES `patientindex` (`patientIndexID`) ,
  FOREIGN KEY (`registerID`) REFERENCES `register` (`registerID`) ,
  FOREIGN KEY (`diseaseID`) REFERENCES `disease` (`diseaseID`) 
) ;

-- ----------------------------
-- Records of diagnose
-- ----------------------------
INSERT INTO `diagnose` VALUES (4, 1, 3, 2, 1, '2010-06-11 00:00:00');
INSERT INTO `diagnose` VALUES (6, 3, 4, 4, 1, '2010-06-11 00:00:00');
INSERT INTO `diagnose` VALUES (10, 4, 6, 9, 1, '2019-03-19 00:00:00');
INSERT INTO `diagnose` VALUES (12, 5, 9, 5, 1, '2019-03-20 15:21:00');
INSERT INTO `diagnose` VALUES (13, 1, 26, 3, 2, '2019-03-25 16:51:00');
INSERT INTO `diagnose` VALUES (14, 1, 26, 8, 1, '2019-03-26 09:28:00');
INSERT INTO `diagnose` VALUES (16, 8, 27, 8, 1, '2019-03-28 00:00:00');
INSERT INTO `diagnose` VALUES (17, 1, 29, 5, 1, '2019-03-28 13:45:00');
INSERT INTO `diagnose` VALUES (18, 1, 29, 10, 1, '2019-03-28 13:45:00');
INSERT INTO `diagnose` VALUES (19, 1, 30, 1, 1, '2019-03-28 15:25:00');
INSERT INTO `diagnose` VALUES (20, 19, 34, 4, 1, '2019-03-29 15:15:00');
INSERT INTO `diagnose` VALUES (21, 1, 3, 1, 1, '2019-04-01 13:26:36');

-- ----------------------------
-- Table structure for disease
-- ----------------------------
DROP TABLE IF EXISTS `disease`;
CREATE TABLE `disease`  (
  `diseaseID` int NOT NULL AUTO_INCREMENT,
  `diseaseCode` varchar(255) ,
  `diseaseName` varchar(255) ,
  `diseaseICDCode` varchar(255) ,
  `diseaseCategoryID` int ,
  PRIMARY KEY (`diseaseID`) ,
  FOREIGN KEY (`diseaseCategoryID`) REFERENCES `diseasecategory` (`diseaseCategoryID`) 
) ;

-- ----------------------------
-- Records of disease
-- ----------------------------
INSERT INTO `disease` VALUES (1, 'GDXHL', '古典型霍乱', 'A00.051', 140);
INSERT INTO `disease` VALUES (2, 'ZXDXHL', '中型[典型]霍乱', 'A00.052', 140);
INSERT INTO `disease` VALUES (3, 'ZXBFXHGXHL', '重型[暴发型或干性]霍乱', 'A00.053', 140);
INSERT INTO `disease` VALUES (4, 'QXFDXHL', '轻型[非典型]霍乱', 'A00.151', 140);
INSERT INTO `disease` VALUES (5, 'AETHL', '埃尔托霍乱', 'A00.152', 140);
INSERT INTO `disease` VALUES (6, 'AETXCY', '埃尔托小肠炎', 'A00.153', 33);
INSERT INTO `disease` VALUES (7, 'HL', '霍乱 NOS', 'A00.901', 140);
INSERT INTO `disease` VALUES (8, 'SH', '伤寒', 'A01.001', 306);
INSERT INTO `disease` VALUES (9, 'SHGJXBXZ', '伤寒杆菌性败血症', 'A01.002', 306);
INSERT INTO `disease` VALUES (10, 'SHXNMY', '伤寒性脑膜炎', 'A01.003+', 232);
INSERT INTO `disease` VALUES (11, 'SHFY', '伤寒肺炎', 'A01.051+', 81);
INSERT INTO `disease` VALUES (12, 'SHFMY', '伤寒腹膜炎', 'A01.052', 306);
INSERT INTO `disease` VALUES (13, 'ABTSBSH', '埃贝特Eberth`s氏病(伤寒)', 'A01.053', 306);
INSERT INTO `disease` VALUES (14, 'CCXXSH', '肠出血性伤寒', 'A01.054', 306);
INSERT INTO `disease` VALUES (15, 'SHXCCK', '伤寒性肠穿孔', 'A01.055', 306);
INSERT INTO `disease` VALUES (16, 'CSH', '肠伤寒', 'A01.056', 306);
INSERT INTO `disease` VALUES (17, 'SHYXCY', '伤寒样小肠炎', 'A01.057', 33);
INSERT INTO `disease` VALUES (18, 'JXFSH', '甲型副伤寒', 'A01.101', 306);
INSERT INTO `disease` VALUES (19, 'YXFSH', '乙型副伤寒', 'A01.201', 306);
INSERT INTO `disease` VALUES (20, 'BXFSH', '丙型副伤寒', 'A01.301', 306);
INSERT INTO `disease` VALUES (21, 'FSH', '副伤寒', 'A01.401', 306);
INSERT INTO `disease` VALUES (22, 'QSMSJCY', 'Ｂ群沙门氏菌肠炎', 'A02.001', 33);
INSERT INTO `disease` VALUES (23, 'QSMSJCY', 'Ｃ群沙门氏菌肠炎', 'A02.002', 33);
INSERT INTO `disease` VALUES (24, 'AGLSMSJCY', '阿哥拉沙门氏菌肠炎', 'A02.003', 33);
INSERT INTO `disease` VALUES (25, 'SMSJXCY', '沙门氏菌性肠炎', 'A02.004', 33);
INSERT INTO `disease` VALUES (26, 'SMSJLDXQXCY', '沙门氏菌伦敦血清型肠炎', 'A02.005', 33);
INSERT INTO `disease` VALUES (27, 'SMSJWCY', '沙门氏菌胃肠炎', 'A02.006', 33);
INSERT INTO `disease` VALUES (28, 'SSHSMSJXCY', '鼠伤寒沙门氏菌性肠炎', 'A02.007', 33);
INSERT INTO `disease` VALUES (29, 'YESMSJCY', '婴儿沙门氏菌肠炎', 'A02.008', 33);
INSERT INTO `disease` VALUES (30, 'SMSJCDGR', '沙门氏菌肠道感染', 'A02.051', 31);
INSERT INTO `disease` VALUES (31, 'SMSJYLSNXCY', '沙门氏菌(亚利桑那)小肠炎', 'A02.052', 33);
INSERT INTO `disease` VALUES (32, 'SMSJBXZ', '沙门氏菌败血症', 'A02.101', 9);
INSERT INTO `disease` VALUES (33, 'SMSJSSHBYBXZ', '沙门氏菌鼠伤寒伴有败血症', 'A02.102', 306);
INSERT INTO `disease` VALUES (34, 'SMSJXFY', '沙门氏菌性肺炎', 'A02.201+', 81);
INSERT INTO `disease` VALUES (35, 'SMSJXGJY', '沙门氏菌性关节炎', 'A02.202+', 123);
INSERT INTO `disease` VALUES (36, 'SMSJXNMY', '沙门氏菌性脑膜炎', 'A02.203+', 232);
INSERT INTO `disease` VALUES (37, 'SMSJXGSY', '沙门氏菌性骨髓炎', 'A02.251+', 114);
INSERT INTO `disease` VALUES (38, 'SMSJXSXGJZB', '沙门氏菌性肾小管-间质病', 'A02.252+', 161);
INSERT INTO `disease` VALUES (39, 'QTTZDSMSJGR', '其他特指的沙门氏菌感染', 'A02.851', 95);
INSERT INTO `disease` VALUES (40, 'SMSJGR', '沙门氏菌感染 NOS', 'A02.901', 95);
INSERT INTO `disease` VALUES (41, 'SSHSMSJGR', '鼠伤寒沙门氏菌感染', 'A02.902', 306);
INSERT INTO `disease` VALUES (42, 'SMSJSSWZD', '沙门氏菌属食物中毒', 'A02.903', 324);
INSERT INTO `disease` VALUES (43, 'SMSZHJLJ', '什密氏志贺菌痢疾', 'A03.001', 200);
INSERT INTO `disease` VALUES (44, 'ZHKLZLJYQZHJB', '志贺-克鲁泽痢疾[A亚群志贺菌病]', 'A03.051', 200);
INSERT INTO `disease` VALUES (45, 'SMCSDCLJ', '施米茨(－施蒂策)痢疾', 'A03.052', 200);
INSERT INTO `disease` VALUES (46, 'FSZHJLJ', '弗氏志贺菌痢疾', 'A03.101', 200);
INSERT INTO `disease` VALUES (47, 'XSLSXJXLJ', '希斯－罗素细菌性痢疾', 'A03.151', 380);
INSERT INTO `disease` VALUES (48, 'BSZHJLJ', '鲍氏志贺菌痢疾', 'A03.201', 200);
INSERT INTO `disease` VALUES (49, 'BYDXJXLJ', '波伊德细菌性痢疾', 'A03.251', 380);
INSERT INTO `disease` VALUES (50, 'SNSZHJLJ', '宋内氏志贺菌痢疾', 'A03.301', 200);
INSERT INTO `disease` VALUES (51, 'BDXZHJLJ', '不定型志贺菌痢疾', 'A03.801', 200);
INSERT INTO `disease` VALUES (52, 'JLHHGR', '菌痢混合感染', 'A03.802', 95);
INSERT INTO `disease` VALUES (53, 'QTZHJLJ', '其他志贺菌痢疾', 'A03.851', 200);
INSERT INTO `disease` VALUES (54, 'XJXLJ', '细菌性痢疾 NOS', 'A03.901', 380);
INSERT INTO `disease` VALUES (55, 'MXXJXLJJXFZ', '慢性细菌性痢疾急性发作', 'A03.902', 380);
INSERT INTO `disease` VALUES (56, 'MXQYXXJXLJ', '慢性迁延型细菌性痢疾', 'A03.903', 380);
INSERT INTO `disease` VALUES (57, 'MXYFXJL', '慢性隐伏型菌痢', 'A03.904', 278);
INSERT INTO `disease` VALUES (58, 'ZDXBFXLJ', '中毒性[暴发型]痢疾', 'A03.905', 200);
INSERT INTO `disease` VALUES (59, 'XJXJCY', '细菌性结肠炎', 'A03.951', 33);
INSERT INTO `disease` VALUES (60, 'XJXGJYLJ', '细菌性关节炎痢疾', 'A03.952+', 123);
INSERT INTO `disease` VALUES (61, 'XSECBYXDCAXSJCY', '新生儿肠病原性大肠埃希氏菌肠炎', 'A04.001', 33);
INSERT INTO `disease` VALUES (62, 'CBYXDCAXSJCY', '肠病原性大肠埃希氏菌肠炎', 'A04.002', 33);
INSERT INTO `disease` VALUES (63, 'CDYBXDCAXSJGR', '肠道原病性大肠埃希氏菌感染', 'A04.051', 31);
INSERT INTO `disease` VALUES (64, 'CDXDCAXSJCY', '肠毒性大肠埃希氏菌肠炎', 'A04.101', 33);
INSERT INTO `disease` VALUES (65, 'XSECDXDCAXSJCY', '新生儿肠毒性大肠埃希氏菌肠炎', 'A04.102', 33);
INSERT INTO `disease` VALUES (66, 'CDXDCAXSJGR', '肠毒性大肠埃希氏菌感染', 'A04.151', 95);
INSERT INTO `disease` VALUES (67, 'QXXDCAXSJCY', '侵袭性大肠埃希氏菌肠炎', 'A04.201', 33);
INSERT INTO `disease` VALUES (68, 'XSEQXXDCGJCY', '新生儿侵袭性大肠杆菌肠炎', 'A04.202', 33);
INSERT INTO `disease` VALUES (69, 'CXXDCAXSJCY', '出血性大肠埃希氏菌肠炎', 'A04.301', 33);
INSERT INTO `disease` VALUES (70, 'XSECXXDCGJCY', '新生儿出血性大肠杆菌肠炎', 'A04.302', 33);
INSERT INTO `disease` VALUES (71, 'DCAXSGJXCDGR', '大肠埃希氏杆菌性肠道感染', 'A04.401', 31);
INSERT INTO `disease` VALUES (72, 'XSEDCGJCY', '新生儿大肠杆菌肠炎', 'A04.402', 33);
INSERT INTO `disease` VALUES (73, 'XSENFXDCGJCY', '新生儿粘附性大肠杆菌肠炎', 'A04.403', 33);
INSERT INTO `disease` VALUES (74, 'NFXDCGJCY', '粘附性大肠杆菌肠炎', 'A04.404', 33);
INSERT INTO `disease` VALUES (75, 'WQGJCY', '弯曲杆菌肠炎', 'A04.501', 33);
INSERT INTO `disease` VALUES (76, 'YESSJCYBXB', '耶尔森氏菌肠炎[冰箱病]', 'A04.601', 33);
INSERT INTO `disease` VALUES (77, 'NBSZYBGJCY', '难辨梭状芽胞杆菌肠炎', 'A04.701', 33);
INSERT INTO `disease` VALUES (78, 'NBSZYBGJXXCJCY', '难辨梭状芽胞杆菌性小肠结肠炎', 'A04.751', 33);
INSERT INTO `disease` VALUES (79, 'BLDBJCY', '吡邻单胞菌肠炎', 'A04.801', 33);
INSERT INTO `disease` VALUES (80, 'BXGJXCY', '变形杆菌性肠炎', 'A04.802', 33);
INSERT INTO `disease` VALUES (81, 'CQGJCY', '产气杆菌肠炎', 'A04.803', 33);
INSERT INTO `disease` VALUES (82, 'CDYYJGR', '肠道厌氧菌感染', 'A04.804', 31);
INSERT INTO `disease` VALUES (83, 'FHL', '副霍乱', 'A04.805', 140);
INSERT INTO `disease` VALUES (84, 'FRXGJCY', '副溶血孤菌肠炎', 'A04.806', 33);
INSERT INTO `disease` VALUES (85, 'JHSPTQJXCY', '金黄色葡萄球菌性肠炎', 'A04.807', 33);
INSERT INTO `disease` VALUES (86, 'LNGJXCY', '绿脓杆菌性肠炎', 'A04.808', 33);
INSERT INTO `disease` VALUES (87, 'NBYBGJCY', '难辨芽胞杆菌肠炎', 'A04.809', 33);
INSERT INTO `disease` VALUES (88, 'SSQDBJCY', '嗜水气单胞菌肠炎', 'A04.810', 33);
INSERT INTO `disease` VALUES (89, 'CQJMSZYBGJCQJMGJCY', '产气荚膜梭状芽胞杆菌(产气荚膜杆菌)肠炎', 'A04.851', 33);
INSERT INTO `disease` VALUES (90, 'CDGR', '肠道感染', 'A04.901', 31);
INSERT INTO `disease` VALUES (91, 'XJXCY', '细菌性肠炎 NOS', 'A04.902', 33);
INSERT INTO `disease` VALUES (92, 'GRXFX', '感染性腹泻', 'A04.903', 95);
INSERT INTO `disease` VALUES (93, 'PTQJXSWZD', '葡萄球菌性食物中毒', 'A05.001', 324);
INSERT INTO `disease` VALUES (94, 'RDZD', '肉毒中毒', 'A05.101', 471);
INSERT INTO `disease` VALUES (95, 'RDSZYBGJXSWZD', '肉毒梭状芽胞杆菌性食物中毒', 'A05.151', 324);
INSERT INTO `disease` VALUES (96, 'CXXHSXCY', '出血性坏死性肠炎', 'A05.201', 33);
INSERT INTO `disease` VALUES (97, 'JXHSXCY', '急性坏死性肠炎', 'A05.202', 33);
INSERT INTO `disease` VALUES (98, 'JXCXXHSXCY', '急性出血性坏死性肠炎', 'A05.203', 33);
INSERT INTO `disease` VALUES (99, 'HSXCY', '坏死性肠炎', 'A05.251', 33);
INSERT INTO `disease` VALUES (100, 'CQJMSZYBGJWEXSZYBGJX', '产气夹膜梭状芽胞杆菌[韦尔希梭状芽胞杆菌]性食物中毒', 'A05.252', 324);
INSERT INTO `disease` VALUES (101, 'ZFB', '猪腹病', 'A05.253', 264);
INSERT INTO `disease` VALUES (102, 'FRXHJXSWZD', '副溶血弧菌性食物中毒', 'A05.301', 324);
INSERT INTO `disease` VALUES (103, 'LYYBGJXSWZD', '蜡样芽胞杆菌性食物中毒', 'A05.451', 324);
INSERT INTO `disease` VALUES (104, 'DCGJXSWZD', '大肠杆菌性食物中毒', 'A05.851', 324);
INSERT INTO `disease` VALUES (105, 'SYGJXSWZD', '嗜盐杆菌性食物中毒', 'A05.852', 324);
INSERT INTO `disease` VALUES (106, 'XJXSWZD', '细菌性食物中毒', 'A05.901', 324);
INSERT INTO `disease` VALUES (107, 'SWZD', '食物中毒 NOS', 'A05.951', 324);
INSERT INTO `disease` VALUES (108, 'WCXSWZD', '胃肠型食物中毒', 'A05.952', 324);
INSERT INTO `disease` VALUES (109, 'XCLCSWZD', '香肠(腊肠)食物中毒', 'A05.953', 324);
INSERT INTO `disease` VALUES (110, 'AMBXCY', '阿米巴性肠炎', 'A06.001', 33);
INSERT INTO `disease` VALUES (111, 'AMBXJCY', '阿米巴性结肠炎', 'A06.002', 33);
INSERT INTO `disease` VALUES (112, 'AMBXLJ', '阿米巴性痢疾', 'A06.003', 200);
INSERT INTO `disease` VALUES (113, 'CDAMBB', '肠道阿米巴病 NOS', 'A06.004', 31);
INSERT INTO `disease` VALUES (114, 'JXAMBLJ', '急性阿米巴痢疾', 'A06.005', 200);
INSERT INTO `disease` VALUES (115, 'JXAMBB', '急性阿米巴病', 'A06.051', 1);
INSERT INTO `disease` VALUES (116, 'MXCDAMBB', '慢性肠道阿米巴病', 'A06.101', 31);
INSERT INTO `disease` VALUES (117, 'MXAMBXLJ', '慢性阿米巴性痢疾', 'A06.151', 200);
INSERT INTO `disease` VALUES (118, 'AMBCKY', '阿米巴(肠)溃疡', 'A06.152', 1);
INSERT INTO `disease` VALUES (119, 'MXAMBB', '慢性阿米巴病', 'A06.153', 1);
INSERT INTO `disease` VALUES (120, 'MXAMBBCY', '慢性阿米巴病肠炎', 'A06.154', 33);
INSERT INTO `disease` VALUES (121, 'FLJXAMBJCY', '非痢疾性阿米巴结肠炎', 'A06.201', 33);
INSERT INTO `disease` VALUES (122, 'FLJXAMBCY', '非痢疾性阿米巴肠炎', 'A06.251', 33);
INSERT INTO `disease` VALUES (123, 'JXFLJXAMBCY', '急性非痢疾性阿米巴肠炎', 'A06.252', 33);
INSERT INTO `disease` VALUES (124, 'MXFLJXAMBCY', '慢性非痢疾性阿米巴肠炎', 'A06.253', 33);
INSERT INTO `disease` VALUES (125, 'AMBXRYZAMBL', '阿米巴性肉芽肿(阿米巴瘤)', 'A06.301', 1);
INSERT INTO `disease` VALUES (126, 'AMBBCCK', '阿米巴病肠穿孔', 'A06.351', 1);
INSERT INTO `disease` VALUES (127, 'CDAMB', '肠道阿米巴', 'A06.352', 31);
INSERT INTO `disease` VALUES (128, 'AMBXGNZ', '阿米巴性肝脓肿', 'A06.401', 243);
INSERT INTO `disease` VALUES (129, 'GAMBB', '肝阿米巴病', 'A06.402', 92);
INSERT INTO `disease` VALUES (130, 'AMBNZ', '阿米巴脓肿', 'A06.451', 243);
INSERT INTO `disease` VALUES (131, 'AMBXFNZ', '阿米巴性肺脓肿', 'A06.501+', 243);
INSERT INTO `disease` VALUES (132, 'GFAMBNZ', '肝肺阿米巴脓肿', 'A06.502+', 243);
INSERT INTO `disease` VALUES (133, 'AMBXNNZ', '阿米巴性脑脓肿', 'A06.651+', 243);
INSERT INTO `disease` VALUES (134, 'AMBNHGNZ', '阿米巴脑和肝脓肿', 'A06.652+', 243);
INSERT INTO `disease` VALUES (135, 'AMBNHFNZ', '阿米巴脑和肺脓肿', 'A06.653+', 243);
INSERT INTO `disease` VALUES (136, 'AMBNHGFNZ', '阿米巴脑和肝、肺脓肿', 'A06.654+', 243);
INSERT INTO `disease` VALUES (137, 'AMBXPFKY', '阿米巴性皮肤溃疡', 'A06.701', 250);
INSERT INTO `disease` VALUES (138, 'AMBPY', '阿米巴皮炎', 'A06.751', 1);
INSERT INTO `disease` VALUES (139, 'FAMBB', '肺阿米巴病', 'A06.801+', 1);
INSERT INTO `disease` VALUES (140, 'AMBXLWY', '阿米巴性阑尾炎', 'A06.851', 1);
INSERT INTO `disease` VALUES (141, 'AMBXWYY', '阿米巴性外阴炎', 'A06.852', 1);
INSERT INTO `disease` VALUES (142, 'AMBXXBY', '阿米巴性心包炎', 'A06.853+', 1);
INSERT INTO `disease` VALUES (143, 'AMBXGTY', '阿米巴性龟头炎', 'A06.854+', 126);
INSERT INTO `disease` VALUES (144, 'AMBB', '阿米巴病 NOS', 'A06.901', 1);
INSERT INTO `disease` VALUES (145, 'XDCB', '小袋虫病', 'A07.001', 36);
INSERT INTO `disease` VALUES (146, 'XDCXLJ', '小袋虫性痢疾', 'A07.051', 200);
INSERT INTO `disease` VALUES (147, 'JDCBCJDCLBBMCB', '贾第虫病(肠贾第虫)[兰伯鞭毛虫病]', 'A07.101', 36);
INSERT INTO `disease` VALUES (148, 'CLXBMCBLSJDBMCB', '肠梨形鞭毛虫病[蓝氏贾第鞭毛虫病]', 'A07.151', 36);
INSERT INTO `disease` VALUES (149, 'YBZCB', '隐孢子虫病', 'A07.251', 36);
INSERT INTO `disease` VALUES (150, 'DBZQCBQCB', '等孢子球虫病(球虫病)', 'A07.301', 36);
INSERT INTO `disease` VALUES (151, 'CDQCB', '肠道球虫病', 'A07.351', 31);
INSERT INTO `disease` VALUES (152, 'CDDCB', '肠道滴虫病', 'A07.801', 31);
INSERT INTO `disease` VALUES (153, 'RBZCB', '肉孢子虫病', 'A07.802', 36);
INSERT INTO `disease` VALUES (154, 'CDMDCB', '肠道毛滴虫病', 'A07.851', 31);
INSERT INTO `disease` VALUES (155, 'BMCXFX', '鞭毛虫性腹泻', 'A07.951', 91);
INSERT INTO `disease` VALUES (156, 'YSDWXJCY', '原生动物性结肠炎', 'A07.952', 33);
INSERT INTO `disease` VALUES (157, 'YSDWXLJ', '原生动物性痢疾', 'A07.953', 200);
INSERT INTO `disease` VALUES (158, 'YSDWXFX', '原生动物性腹泻', 'A07.954', 91);
INSERT INTO `disease` VALUES (159, 'XZLZBDCY', '旋转(轮状)病毒肠炎', 'A08.001', 33);
INSERT INTO `disease` VALUES (160, 'NWKBDCY', '诺瓦克病毒肠炎', 'A08.101', 33);
INSERT INTO `disease` VALUES (161, 'LXXEX', '流行性恶心', 'A08.151', 68);
INSERT INTO `disease` VALUES (162, 'LXXBDXNWKXWCB', '流行性病毒性诺瓦克型胃肠病', 'A08.152', 370);
INSERT INTO `disease` VALUES (163, 'LXXOTZHZBLDLB', '流行性呕吐综合征[布拉德利病]', 'A08.153', 268);
INSERT INTO `disease` VALUES (164, 'LXXWCYSPSB', '流行性胃肠炎[斯潘塞病]', 'A08.154', 33);
INSERT INTO `disease` VALUES (165, 'XYJGBDXCY', '小圆结构病毒性肠炎', 'A08.155', 33);
INSERT INTO `disease` VALUES (166, 'XBDCY', '腺病毒肠炎', 'A08.201', 33);
INSERT INTO `disease` VALUES (167, 'LZBDWCY', '轮转病毒胃肠炎', 'A08.351', 33);
INSERT INTO `disease` VALUES (168, 'BDXCY', '病毒性肠炎', 'A08.401', 33);
INSERT INTO `disease` VALUES (169, 'BDXWCY', '病毒性胃肠炎', 'A08.402', 33);
INSERT INTO `disease` VALUES (170, 'CDBDGR', '肠道病毒感染', 'A08.451', 31);
INSERT INTO `disease` VALUES (171, 'BDXWCB', '病毒性胃肠病', 'A08.452', 370);
INSERT INTO `disease` VALUES (172, 'FJHXWJJZS', '肺结核，显微镜检证实', 'A15.001', 171);
INSERT INTO `disease` VALUES (173, 'JHXFXWBXJXWJXTJCZS', '结核性肺纤维变性，经显微镜下痰检查证实', 'A15.051', 171);
INSERT INTO `disease` VALUES (174, 'JHXQXJXWJXTJCZS', '结核性气胸，经显微镜下痰检查证实', 'A15.052', 171);
INSERT INTO `disease` VALUES (175, 'JHXFYJXWJXTJCZS', '结核性肺炎，经显微镜下痰检查证实', 'A15.053', 81);
INSERT INTO `disease` VALUES (176, 'JHXZQGKZJXWJXTJCZS', '结核性支气管扩张，经显微镜下痰检查证实', 'A15.054', 171);
INSERT INTO `disease` VALUES (177, 'FJHBJJTPYSZS', '肺结核病，仅经痰培养所证实', 'A15.101', 171);
INSERT INTO `disease` VALUES (178, 'JHXFXWBXJJTPYSZS', '结核性肺纤维变性，仅经痰培养所证实', 'A15.151', 171);
INSERT INTO `disease` VALUES (179, 'JHXQXJJTPYSZS', '结核性气胸，仅经痰培养所证实', 'A15.152', 171);
INSERT INTO `disease` VALUES (180, 'JHXFYJJTPYSZS', '结核性肺炎，仅经痰培养所证实', 'A15.153', 81);
INSERT INTO `disease` VALUES (181, 'JHXZQGKZJJTPYSZS', '结核性支气管扩张，仅经痰培养所证实', 'A15.154', 171);
INSERT INTO `disease` VALUES (182, 'FJHBJZZXSZS', '肺结核病，经组织学所证实', 'A15.201', 171);
INSERT INTO `disease` VALUES (183, 'JHXFXWBXJZZXSZS', '结核性肺纤维变性，经组织学所证实', 'A15.251', 171);
INSERT INTO `disease` VALUES (184, 'JHXQXJZZXSZS', '结核性气胸，经组织学所证实', 'A15.252', 171);
INSERT INTO `disease` VALUES (185, 'JHXFYJZZXSZS', '结核性肺炎，经组织学所证实', 'A15.253', 81);
INSERT INTO `disease` VALUES (186, 'JHXZQGKZJZZXSZS', '结核性支气管扩张，经组织学所证实', 'A15.254', 171);
INSERT INTO `disease` VALUES (187, 'FJHBJWTZDFFSZS', '肺结核病，经未特指的方法所证实', 'A15.351', 171);
INSERT INTO `disease` VALUES (188, 'JHXFXWBXJWTZDFFSZS', '结核性肺纤维变性，经未特指的方法所证实', 'A15.352', 171);
INSERT INTO `disease` VALUES (189, 'JHXQXJWTZDFFSZS', '结核性气胸，经未特指的方法所证实', 'A15.353', 171);
INSERT INTO `disease` VALUES (190, 'JHXFYJWTZDFFSZS', '结核性肺炎，经未特指的方法所证实', 'A15.354', 81);
INSERT INTO `disease` VALUES (191, 'JHXZQGKZJWTZDFFSZS', '结核性支气管扩张，经未特指的方法所证实', 'A15.355', 171);
INSERT INTO `disease` VALUES (192, 'FMLBJJHBJXJXHZZXSZS', '肺门淋巴结结核病，经细菌学和组织学所证实', 'A15.451', 171);
INSERT INTO `disease` VALUES (193, 'ZGLBJJHBJXJXHZZXSZS', '纵隔淋巴结结核病，经细菌学和组织学所证实', 'A15.452', 171);
INSERT INTO `disease` VALUES (194, 'QGZQGLBJJHBJXJXHZZXS', '气管支气管淋巴结结核病，经细菌学和组织学所证实', 'A15.453', 171);
INSERT INTO `disease` VALUES (195, 'FMLBJJHYZS', '肺门淋巴结结核,已证实', 'A15.501', 171);
INSERT INTO `disease` VALUES (196, 'ZQGJHBJXJXHZZXSZS', '支气管结核病，经细菌学和组织学所证实', 'A15.551', 171);
INSERT INTO `disease` VALUES (197, 'SMJHBJXJXHZZXSZS', '声门结核病，经细菌学和组织学所证实', 'A15.552', 171);
INSERT INTO `disease` VALUES (198, 'HJHBJXJXHZZXSZS', '喉结核病，经细菌学和组织学所证实', 'A15.553', 133);
INSERT INTO `disease` VALUES (199, 'QGJHBJXJXHZZXSZS', '气管结核病，经细菌学和组织学所证实', 'A15.554', 171);
INSERT INTO `disease` VALUES (200, 'JHXXMYJXJXHZZXSZS', '结核性胸膜炎，经细菌学和组织学所证实', 'A15.601', 171);
INSERT INTO `disease` VALUES (201, 'JHXNXJXJXHZZXSZS', '结核性脓胸，经细菌学和组织学所证实', 'A15.651', 171);
INSERT INTO `disease` VALUES (202, 'YFXHXDJHBJXJXHZZXSZS', '原发性呼吸道结核病，经细菌学和组织学所证实', 'A15.751', 171);
INSERT INTO `disease` VALUES (203, 'ZGJHBJXJXHZZSZS', '纵隔结核病，经细菌学和组织所证实', 'A15.851', 171);
INSERT INTO `disease` VALUES (204, 'BYJHBJXJXHZZXSZS', '鼻咽结核病，经细菌学和组织学所证实', 'A15.852', 16);
INSERT INTO `disease` VALUES (205, 'DRHBDJHBJXJXHZZXSZS', '窦(任何鼻窦)结核病，经细菌学和组织学所证实', 'A15.853', 16);
INSERT INTO `disease` VALUES (206, 'BJHBJXJXHZZXSZS', '鼻结核病，经细菌学和组织学所证实', 'A15.854', 16);
INSERT INTO `disease` VALUES (207, 'HXJHBJXJXHZZXSZS', '呼吸结核病 NOS，经细菌学和组织学所证实', 'A15.951', 171);
INSERT INTO `disease` VALUES (208, 'JHXZQGKZXJXHZZJCWYX', '结核性支气管扩张，细菌学和组织检查为阴性', 'A16.051', 171);
INSERT INTO `disease` VALUES (209, 'JHXFXWBXXJXHZZXJCWYX', '结核性肺纤维变性，细菌学和组织学检查为阴性', 'A16.052', 171);
INSERT INTO `disease` VALUES (210, 'JHXFYXJXHZZXJCWYX', '结核性肺炎，细菌学和组织学检查为阴性', 'A16.053', 81);
INSERT INTO `disease` VALUES (211, 'JHXQXXJXHZZXJCWYX', '结核性气胸，细菌学和组织学检查为阴性', 'A16.054', 171);
INSERT INTO `disease` VALUES (212, 'FJHBWXJXHZZXJC', '肺结核病，未做细菌学和组织学检查', 'A16.151', 171);
INSERT INTO `disease` VALUES (213, 'JHXZQGKZWXJXHZZXJC', '结核性支气管扩张，未做细菌学和组织学检查', 'A16.152', 171);
INSERT INTO `disease` VALUES (214, 'JHXFXWBXWXJXHZZXJC', '结核性肺纤维变性，未做细菌学和组织学检查', 'A16.153', 171);
INSERT INTO `disease` VALUES (215, 'JHXFYWXJXHZZXJC', '结核性肺炎，未做细菌学和组织学检查', 'A16.154', 81);
INSERT INTO `disease` VALUES (216, 'JHXQXWXJXHZZXJC', '结核性气胸，未做细菌学和组织学检查', 'A16.155', 171);
INSERT INTO `disease` VALUES (217, 'FGLXJH', '肺干酪性结核', 'A16.201', 171);
INSERT INTO `disease` VALUES (218, 'FJHWTJXJXHZZXDZS', '肺结核，未提及细菌学或组织学的证实', 'A16.202', 171);
INSERT INTO `disease` VALUES (219, 'FJHLWTJXJXHZZXDZS', '肺结核瘤，未提及细菌学或组织学的证实', 'A16.203', 171);
INSERT INTO `disease` VALUES (220, 'JHXFYGLXFYWTJXJXHZZX', '结核性肺炎，未提及细菌学或组织学的证实(干酪性肺炎)', 'A16.204', 81);
INSERT INTO `disease` VALUES (221, 'JHXFXWBXZZXWTJXJXHZZ', '结核性肺纤维变性(增殖性)，未提及细菌学或组织学的证实', 'A16.205', 171);
INSERT INTO `disease` VALUES (222, 'JHXZQGKZWTJXJXHZZXDZ', '结核性支气管扩张，未提及细菌学或组织学的证实', 'A16.206', 171);
INSERT INTO `disease` VALUES (223, 'JRXFJHWTJXJXHZZXDZS', '浸润型肺结核，未提及细菌学或组织学的证实', 'A16.208', 171);
INSERT INTO `disease` VALUES (224, 'KDXFJHWTJXJXHZZXDZS', '空洞型肺结核，未提及细菌学或组织学的证实', 'A16.209', 171);
INSERT INTO `disease` VALUES (225, 'ZZXFJHWTJXJXHZZXDZS', '增殖型肺结核，未提及细菌学或组织学的证实', 'A16.210', 171);
INSERT INTO `disease` VALUES (226, 'FCXJHXWTJXJXHZZXDZS', '结核性肺出血，未提及细菌学或组织学的证实', 'A16.251', 171);
INSERT INTO `disease` VALUES (227, 'JJXFJHWTJXJXHZZXDZS', '结节型肺结核，未提及细菌学或组织学的证实', 'A16.252', 171);


-- ----------------------------
-- Table structure for diseasecategory
-- ----------------------------
DROP TABLE IF EXISTS `diseasecategory`;
CREATE TABLE `diseasecategory`  (
  `diseaseCategoryID` int NOT NULL AUTO_INCREMENT,
  `diseaseName` varchar(255) ,
  PRIMARY KEY (`diseaseCategoryID`) 
) ;

-- ----------------------------
-- Records of diseasecategory
-- ----------------------------
INSERT INTO `diseasecategory` VALUES (1, '阿米巴病');
INSERT INTO `diseasecategory` VALUES (2, '癌症');
INSERT INTO `diseasecategory` VALUES (3, '白斑病');
INSERT INTO `diseasecategory` VALUES (4, '白内障');
INSERT INTO `diseasecategory` VALUES (5, '白血病');
INSERT INTO `diseasecategory` VALUES (6, '白血症');
INSERT INTO `diseasecategory` VALUES (7, '百日咳');
INSERT INTO `diseasecategory` VALUES (8, '败血病');
INSERT INTO `diseasecategory` VALUES (9, '败血症');
INSERT INTO `diseasecategory` VALUES (10, '斑疹热');
INSERT INTO `diseasecategory` VALUES (11, '瘢痕');
INSERT INTO `diseasecategory` VALUES (12, '半月板疾病');
INSERT INTO `diseasecategory` VALUES (13, '包皮疾病');
INSERT INTO `diseasecategory` VALUES (14, '孢子菌病');
INSERT INTO `diseasecategory` VALUES (15, '贲门疾病');
INSERT INTO `diseasecategory` VALUES (16, '鼻部疾病');
INSERT INTO `diseasecategory` VALUES (17, '扁桃体疾病');
INSERT INTO `diseasecategory` VALUES (18, '扁桃体炎');
INSERT INTO `diseasecategory` VALUES (19, '髌骨疾病');
INSERT INTO `diseasecategory` VALUES (20, '病毒病');
INSERT INTO `diseasecategory` VALUES (21, '玻璃体疾病');
INSERT INTO `diseasecategory` VALUES (22, '玻璃体炎');
INSERT INTO `diseasecategory` VALUES (23, '不良性行为');
INSERT INTO `diseasecategory` VALUES (24, '不育症');
INSERT INTO `diseasecategory` VALUES (25, '产后疾病');
INSERT INTO `diseasecategory` VALUES (26, '产科疾病');
INSERT INTO `diseasecategory` VALUES (27, '产前检查');
INSERT INTO `diseasecategory` VALUES (28, '产伤');
INSERT INTO `diseasecategory` VALUES (29, '产伤引起的疾病');
INSERT INTO `diseasecategory` VALUES (30, '肠道传染病');
INSERT INTO `diseasecategory` VALUES (31, '肠道疾病');
INSERT INTO `diseasecategory` VALUES (32, '肠梗阻');
INSERT INTO `diseasecategory` VALUES (33, '肠炎');
INSERT INTO `diseasecategory` VALUES (34, '痴呆');
INSERT INTO `diseasecategory` VALUES (35, '齿槽疾病');
INSERT INTO `diseasecategory` VALUES (36, '虫病');
INSERT INTO `diseasecategory` VALUES (37, '抽动症');
INSERT INTO `diseasecategory` VALUES (38, '出血');
INSERT INTO `diseasecategory` VALUES (39, '出血热');
INSERT INTO `diseasecategory` VALUES (40, '除异物');
INSERT INTO `diseasecategory` VALUES (41, '搐动症');
INSERT INTO `diseasecategory` VALUES (42, '搐搦症');
INSERT INTO `diseasecategory` VALUES (43, '疮');
INSERT INTO `diseasecategory` VALUES (44, '创伤性疾病');
INSERT INTO `diseasecategory` VALUES (45, '垂体疾病');
INSERT INTO `diseasecategory` VALUES (46, '唇裂');
INSERT INTO `diseasecategory` VALUES (47, '促性腺激素缺乏症');
INSERT INTO `diseasecategory` VALUES (48, '痤疮');
INSERT INTO `diseasecategory` VALUES (49, '挫伤');
INSERT INTO `diseasecategory` VALUES (50, '大肠疾病');
INSERT INTO `diseasecategory` VALUES (51, '呆小病');
INSERT INTO `diseasecategory` VALUES (52, '代谢紊乱');
INSERT INTO `diseasecategory` VALUES (53, '胆囊疾病');
INSERT INTO `diseasecategory` VALUES (54, '蛋白尿');
INSERT INTO `diseasecategory` VALUES (55, '倒睫');
INSERT INTO `diseasecategory` VALUES (56, '低血糖');
INSERT INTO `diseasecategory` VALUES (57, '癫痫');
INSERT INTO `diseasecategory` VALUES (58, '动脉闭塞');
INSERT INTO `diseasecategory` VALUES (59, '动脉供血不足');
INSERT INTO `diseasecategory` VALUES (60, '动脉回流');
INSERT INTO `diseasecategory` VALUES (61, '动脉扩张');
INSERT INTO `diseasecategory` VALUES (62, '动脉瘤');
INSERT INTO `diseasecategory` VALUES (63, '动脉硬化');
INSERT INTO `diseasecategory` VALUES (64, '冻伤');
INSERT INTO `diseasecategory` VALUES (65, '痘病');
INSERT INTO `diseasecategory` VALUES (66, '多动症');
INSERT INTO `diseasecategory` VALUES (67, '多糖病');
INSERT INTO `diseasecategory` VALUES (68, '恶心');
INSERT INTO `diseasecategory` VALUES (69, '腭裂');
INSERT INTO `diseasecategory` VALUES (70, '耳部疾病');
INSERT INTO `diseasecategory` VALUES (71, '耳聋');
INSERT INTO `diseasecategory` VALUES (72, '二尖瓣疾病');
INSERT INTO `diseasecategory` VALUES (73, '发热');
INSERT INTO `diseasecategory` VALUES (74, '发育不良');
INSERT INTO `diseasecategory` VALUES (75, '发育疾病');
INSERT INTO `diseasecategory` VALUES (76, '房室传导');
INSERT INTO `diseasecategory` VALUES (77, '肥胖');
INSERT INTO `diseasecategory` VALUES (78, '腓骨疾病');
INSERT INTO `diseasecategory` VALUES (79, '肺病');
INSERT INTO `diseasecategory` VALUES (80, '肺动脉疾病');
INSERT INTO `diseasecategory` VALUES (81, '肺炎');
INSERT INTO `diseasecategory` VALUES (82, '分娩');
INSERT INTO `diseasecategory` VALUES (83, '蜂窝织炎');
INSERT INTO `diseasecategory` VALUES (84, '蜂窝组织炎');
INSERT INTO `diseasecategory` VALUES (85, '腐蚀伤');
INSERT INTO `diseasecategory` VALUES (86, '妇科疾病');
INSERT INTO `diseasecategory` VALUES (87, '附睾疾病');
INSERT INTO `diseasecategory` VALUES (88, '附睾炎');
INSERT INTO `diseasecategory` VALUES (89, '腹膜疾病');
INSERT INTO `diseasecategory` VALUES (90, '腹膜炎');
INSERT INTO `diseasecategory` VALUES (91, '腹泻');
INSERT INTO `diseasecategory` VALUES (92, '肝部疾病');
INSERT INTO `diseasecategory` VALUES (93, '肝炎');
INSERT INTO `diseasecategory` VALUES (94, '感冒');
INSERT INTO `diseasecategory` VALUES (95, '感染');
INSERT INTO `diseasecategory` VALUES (96, '肛门疾病');
INSERT INTO `diseasecategory` VALUES (97, '肛周疾病');
INSERT INTO `diseasecategory` VALUES (98, '高血糖');
INSERT INTO `diseasecategory` VALUES (99, '高血压');
INSERT INTO `diseasecategory` VALUES (100, '高脂血症');
INSERT INTO `diseasecategory` VALUES (101, '睾丸疾病');
INSERT INTO `diseasecategory` VALUES (102, '宫颈疾病');
INSERT INTO `diseasecategory` VALUES (103, '宫颈炎');
INSERT INTO `diseasecategory` VALUES (104, '巩膜炎');
INSERT INTO `diseasecategory` VALUES (105, '佝偻病');
INSERT INTO `diseasecategory` VALUES (106, '骨刺');
INSERT INTO `diseasecategory` VALUES (107, '骨骺炎');
INSERT INTO `diseasecategory` VALUES (108, '骨坏死');
INSERT INTO `diseasecategory` VALUES (109, '骨活组织检查');
INSERT INTO `diseasecategory` VALUES (110, '骨膜炎');
INSERT INTO `diseasecategory` VALUES (111, '骨切开');
INSERT INTO `diseasecategory` VALUES (112, '骨软化');
INSERT INTO `diseasecategory` VALUES (113, '骨髓疾病');
INSERT INTO `diseasecategory` VALUES (114, '骨髓炎');
INSERT INTO `diseasecategory` VALUES (115, '骨炎');
INSERT INTO `diseasecategory` VALUES (116, '骨折');
INSERT INTO `diseasecategory` VALUES (117, '骨质疏松');
INSERT INTO `diseasecategory` VALUES (118, '骨质增生');
INSERT INTO `diseasecategory` VALUES (119, '骨纵形短缺缺陷');
INSERT INTO `diseasecategory` VALUES (120, '鼓膜疾病');
INSERT INTO `diseasecategory` VALUES (121, '鼓膜炎');
INSERT INTO `diseasecategory` VALUES (122, '鼓室炎');
INSERT INTO `diseasecategory` VALUES (123, '关节疾病');
INSERT INTO `diseasecategory` VALUES (124, '关节炎');
INSERT INTO `diseasecategory` VALUES (125, '冠状动脉疾病');
INSERT INTO `diseasecategory` VALUES (126, '龟头炎');
INSERT INTO `diseasecategory` VALUES (127, '颌窦炎');
INSERT INTO `diseasecategory` VALUES (128, '颌骨疾病');
INSERT INTO `diseasecategory` VALUES (129, '颌下腺疾病');
INSERT INTO `diseasecategory` VALUES (130, '黑(色素)瘤');
INSERT INTO `diseasecategory` VALUES (131, '黑色素瘤');
INSERT INTO `diseasecategory` VALUES (132, '虹膜疾病');
INSERT INTO `diseasecategory` VALUES (133, '喉部疾病');
INSERT INTO `diseasecategory` VALUES (134, '滑膜炎');
INSERT INTO `diseasecategory` VALUES (135, '滑囊炎');
INSERT INTO `diseasecategory` VALUES (136, '踝部疾病');
INSERT INTO `diseasecategory` VALUES (137, '黄疸');
INSERT INTO `diseasecategory` VALUES (138, '蛔虫');
INSERT INTO `diseasecategory` VALUES (139, '昏迷');
INSERT INTO `diseasecategory` VALUES (140, '霍乱');
INSERT INTO `diseasecategory` VALUES (141, '肌断裂');
INSERT INTO `diseasecategory` VALUES (142, '肌腱疾病');
INSERT INTO `diseasecategory` VALUES (143, '肌挛缩');
INSERT INTO `diseasecategory` VALUES (144, '肌肉萎缩');
INSERT INTO `diseasecategory` VALUES (145, '肌无力');
INSERT INTO `diseasecategory` VALUES (146, '肌炎');
INSERT INTO `diseasecategory` VALUES (147, '肌张力障碍');
INSERT INTO `diseasecategory` VALUES (148, '畸形');
INSERT INTO `diseasecategory` VALUES (149, '疾病疗法');
INSERT INTO `diseasecategory` VALUES (150, '挤压伤');
INSERT INTO `diseasecategory` VALUES (151, '脊髓灰质炎');
INSERT INTO `diseasecategory` VALUES (152, '脊髓疾病');
INSERT INTO `diseasecategory` VALUES (153, '脊髓炎');
INSERT INTO `diseasecategory` VALUES (154, '脊柱疾病');
INSERT INTO `diseasecategory` VALUES (155, '脊柱炎');
INSERT INTO `diseasecategory` VALUES (156, '寄生虫病');
INSERT INTO `diseasecategory` VALUES (157, '甲沟炎');
INSERT INTO `diseasecategory` VALUES (158, '甲状旁腺疾病');
INSERT INTO `diseasecategory` VALUES (159, '甲状腺疾病');
INSERT INTO `diseasecategory` VALUES (160, '假肢安装');
INSERT INTO `diseasecategory` VALUES (161, '间质病');
INSERT INTO `diseasecategory` VALUES (162, '腱鞘囊肿');
INSERT INTO `diseasecategory` VALUES (163, '腱鞘炎');
INSERT INTO `diseasecategory` VALUES (164, '浆膜炎');
INSERT INTO `diseasecategory` VALUES (165, '焦虑障碍');
INSERT INTO `diseasecategory` VALUES (166, '角膜疾病');
INSERT INTO `diseasecategory` VALUES (167, '角膜炎');
INSERT INTO `diseasecategory` VALUES (168, '脚气');
INSERT INTO `diseasecategory` VALUES (169, '疖病');
INSERT INTO `diseasecategory` VALUES (170, '结肠疾病');
INSERT INTO `diseasecategory` VALUES (171, '结核');
INSERT INTO `diseasecategory` VALUES (172, '结节病');
INSERT INTO `diseasecategory` VALUES (173, '结膜疾病');
INSERT INTO `diseasecategory` VALUES (174, '结膜炎');
INSERT INTO `diseasecategory` VALUES (175, '截瘫');
INSERT INTO `diseasecategory` VALUES (176, '精囊疾病');
INSERT INTO `diseasecategory` VALUES (177, '精神和行为障碍');
INSERT INTO `diseasecategory` VALUES (178, '颈动脉疾病');
INSERT INTO `diseasecategory` VALUES (179, '痉挛');
INSERT INTO `diseasecategory` VALUES (180, '静脉梗阻');
INSERT INTO `diseasecategory` VALUES (181, '静脉疾病');
INSERT INTO `diseasecategory` VALUES (182, '静脉瘤');
INSERT INTO `diseasecategory` VALUES (183, '静脉曲张');
INSERT INTO `diseasecategory` VALUES (184, '静脉栓塞');
INSERT INTO `diseasecategory` VALUES (185, '静脉炎');
INSERT INTO `diseasecategory` VALUES (186, '静脉阻塞');
INSERT INTO `diseasecategory` VALUES (187, '疽病');
INSERT INTO `diseasecategory` VALUES (188, '菌病');
INSERT INTO `diseasecategory` VALUES (189, '菌血病');
INSERT INTO `diseasecategory` VALUES (190, '开放性伤口');
INSERT INTO `diseasecategory` VALUES (191, '口部疾病');
INSERT INTO `diseasecategory` VALUES (192, '口腔炎');
INSERT INTO `diseasecategory` VALUES (193, '口炎');
INSERT INTO `diseasecategory` VALUES (194, '狂犬病');
INSERT INTO `diseasecategory` VALUES (195, '溃疡');
INSERT INTO `diseasecategory` VALUES (196, '阑尾炎');
INSERT INTO `diseasecategory` VALUES (197, '劳损');
INSERT INTO `diseasecategory` VALUES (198, '泪囊炎');
INSERT INTO `diseasecategory` VALUES (199, '泪腺炎');
INSERT INTO `diseasecategory` VALUES (200, '痢疾');
INSERT INTO `diseasecategory` VALUES (201, '裂伤');
INSERT INTO `diseasecategory` VALUES (202, '淋巴管疾病');
INSERT INTO `diseasecategory` VALUES (203, '淋巴管瘤');
INSERT INTO `diseasecategory` VALUES (204, '淋巴管炎');
INSERT INTO `diseasecategory` VALUES (205, '淋巴疾病');
INSERT INTO `diseasecategory` VALUES (206, '淋巴结病');
INSERT INTO `diseasecategory` VALUES (207, '淋巴结炎');
INSERT INTO `diseasecategory` VALUES (208, '淋巴瘤');
INSERT INTO `diseasecategory` VALUES (209, '淋病');
INSERT INTO `diseasecategory` VALUES (210, '流产');
INSERT INTO `diseasecategory` VALUES (211, '流感');
INSERT INTO `diseasecategory` VALUES (212, '瘘病');
INSERT INTO `diseasecategory` VALUES (213, '颅内疾病');
INSERT INTO `diseasecategory` VALUES (214, '颅内损伤');
INSERT INTO `diseasecategory` VALUES (215, '鲁氏菌病');
INSERT INTO `diseasecategory` VALUES (216, '螺旋体病');
INSERT INTO `diseasecategory` VALUES (217, '麻痹');
INSERT INTO `diseasecategory` VALUES (218, '麻风病');
INSERT INTO `diseasecategory` VALUES (219, '麻疹');
INSERT INTO `diseasecategory` VALUES (220, '脉管炎');
INSERT INTO `diseasecategory` VALUES (221, '脉络膜炎');
INSERT INTO `diseasecategory` VALUES (222, '慢性查加斯病');
INSERT INTO `diseasecategory` VALUES (223, '盲肠疾病');
INSERT INTO `diseasecategory` VALUES (224, '毛囊炎');
INSERT INTO `diseasecategory` VALUES (225, '梅毒');
INSERT INTO `diseasecategory` VALUES (226, '霉菌病');
INSERT INTO `diseasecategory` VALUES (227, '霉菌性疾病');
INSERT INTO `diseasecategory` VALUES (228, '免疫性疾病');
INSERT INTO `diseasecategory` VALUES (229, '膜睫状体炎');
INSERT INTO `diseasecategory` VALUES (230, '男科疾病');
INSERT INTO `diseasecategory` VALUES (231, '囊肿');
INSERT INTO `diseasecategory` VALUES (232, '脑膜炎');
INSERT INTO `diseasecategory` VALUES (233, '脑血管病');
INSERT INTO `diseasecategory` VALUES (234, '脑炎');
INSERT INTO `diseasecategory` VALUES (235, '内分泌系统疾病');
INSERT INTO `diseasecategory` VALUES (236, '念珠菌病');
INSERT INTO `diseasecategory` VALUES (237, '尿道疾病');
INSERT INTO `diseasecategory` VALUES (238, '尿道炎');
INSERT INTO `diseasecategory` VALUES (239, '尿毒症');
INSERT INTO `diseasecategory` VALUES (240, '尿失禁');
INSERT INTO `diseasecategory` VALUES (241, '凝血疾病');
INSERT INTO `diseasecategory` VALUES (242, '脓疱');
INSERT INTO `diseasecategory` VALUES (243, '脓肿');
INSERT INTO `diseasecategory` VALUES (244, '疟疾');
INSERT INTO `diseasecategory` VALUES (245, '帕金森');
INSERT INTO `diseasecategory` VALUES (246, '膀胱疾病');
INSERT INTO `diseasecategory` VALUES (247, '膀胱炎');
INSERT INTO `diseasecategory` VALUES (248, '疱疹');
INSERT INTO `diseasecategory` VALUES (249, '盆腔炎');
INSERT INTO `diseasecategory` VALUES (250, '皮肤病');
INSERT INTO `diseasecategory` VALUES (251, '皮瘤');
INSERT INTO `diseasecategory` VALUES (252, '皮炎');
INSERT INTO `diseasecategory` VALUES (253, '脾病');
INSERT INTO `diseasecategory` VALUES (254, '偏瘫');
INSERT INTO `diseasecategory` VALUES (255, '贫血');
INSERT INTO `diseasecategory` VALUES (256, '品行障碍');
INSERT INTO `diseasecategory` VALUES (257, '破伤风');
INSERT INTO `diseasecategory` VALUES (258, '葡萄胎');
INSERT INTO `diseasecategory` VALUES (259, '其他肠类疾病');
INSERT INTO `diseasecategory` VALUES (260, '其他动脉疾病');
INSERT INTO `diseasecategory` VALUES (261, '其他瘤');
INSERT INTO `diseasecategory` VALUES (262, '其他胰腺疾病');
INSERT INTO `diseasecategory` VALUES (263, '其他章疾病');
INSERT INTO `diseasecategory` VALUES (264, '其它腹部疾病');
INSERT INTO `diseasecategory` VALUES (265, '其它骨疾病');
INSERT INTO `diseasecategory` VALUES (266, '其它呼吸疾病');
INSERT INTO `diseasecategory` VALUES (267, '其它肌部疾病');
INSERT INTO `diseasecategory` VALUES (268, '其它疾病');
INSERT INTO `diseasecategory` VALUES (269, '其它泌尿系统疾病');
INSERT INTO `diseasecategory` VALUES (270, '其它气管病');
INSERT INTO `diseasecategory` VALUES (271, '其它热病');
INSERT INTO `diseasecategory` VALUES (272, '其它舌部疾病');
INSERT INTO `diseasecategory` VALUES (273, '其它疼痛');
INSERT INTO `diseasecategory` VALUES (274, '其它胸部疾病');
INSERT INTO `diseasecategory` VALUES (275, '其它血液疾病');
INSERT INTO `diseasecategory` VALUES (276, '其它咽部疾病');
INSERT INTO `diseasecategory` VALUES (277, '其它炎症');
INSERT INTO `diseasecategory` VALUES (278, '其它暂时无法归类的');
INSERT INTO `diseasecategory` VALUES (279, '其它支气管病');
INSERT INTO `diseasecategory` VALUES (280, '其它足部疾病');
INSERT INTO `diseasecategory` VALUES (281, '脐带疾病');
INSERT INTO `diseasecategory` VALUES (282, '气道疾病');
INSERT INTO `diseasecategory` VALUES (283, '气管炎');
INSERT INTO `diseasecategory` VALUES (284, '气胸');
INSERT INTO `diseasecategory` VALUES (285, '前列腺疾病');
INSERT INTO `diseasecategory` VALUES (286, '前列腺炎');
INSERT INTO `diseasecategory` VALUES (287, '浅表损伤');
INSERT INTO `diseasecategory` VALUES (288, '羟化酶缺陷');
INSERT INTO `diseasecategory` VALUES (289, '情感障碍');
INSERT INTO `diseasecategory` VALUES (290, '曲霉病');
INSERT INTO `diseasecategory` VALUES (291, '染色体疾病');
INSERT INTO `diseasecategory` VALUES (292, '人格障碍');
INSERT INTO `diseasecategory` VALUES (293, '妊娠引起的疾病');
INSERT INTO `diseasecategory` VALUES (294, '肉瘤 ');
INSERT INTO `diseasecategory` VALUES (295, '肉芽肿');
INSERT INTO `diseasecategory` VALUES (296, '蠕虫病');
INSERT INTO `diseasecategory` VALUES (297, '乳突炎');
INSERT INTO `diseasecategory` VALUES (298, '乳腺疾病');
INSERT INTO `diseasecategory` VALUES (299, '乳腺炎');
INSERT INTO `diseasecategory` VALUES (300, '软骨病');
INSERT INTO `diseasecategory` VALUES (301, '软骨瘤');
INSERT INTO `diseasecategory` VALUES (302, '腮腺炎');
INSERT INTO `diseasecategory` VALUES (303, '三尖瓣疾病');
INSERT INTO `diseasecategory` VALUES (304, '晒伤');
INSERT INTO `diseasecategory` VALUES (305, '疝病');
INSERT INTO `diseasecategory` VALUES (306, '伤寒');
INSERT INTO `diseasecategory` VALUES (307, '上肢疾病');
INSERT INTO `diseasecategory` VALUES (308, '上肢其它疾病');
INSERT INTO `diseasecategory` VALUES (309, '烧伤');
INSERT INTO `diseasecategory` VALUES (310, '舌炎');
INSERT INTO `diseasecategory` VALUES (311, '蛇咬伤');
INSERT INTO `diseasecategory` VALUES (312, '身材矮小');
INSERT INTO `diseasecategory` VALUES (313, '神经系统疾病');
INSERT INTO `diseasecategory` VALUES (314, '肾病');
INSERT INTO `diseasecategory` VALUES (315, '肾炎');
INSERT INTO `diseasecategory` VALUES (316, '声带疾病');
INSERT INTO `diseasecategory` VALUES (317, '失语');
INSERT INTO `diseasecategory` VALUES (318, '虱病');
INSERT INTO `diseasecategory` VALUES (319, '湿疣');
INSERT INTO `diseasecategory` VALUES (320, '湿疹');
INSERT INTO `diseasecategory` VALUES (321, '十二指肠疾病');
INSERT INTO `diseasecategory` VALUES (322, '食道疾病');
INSERT INTO `diseasecategory` VALUES (323, '食管疾病');
INSERT INTO `diseasecategory` VALUES (324, '食物中毒');
INSERT INTO `diseasecategory` VALUES (325, '视力疾病');
INSERT INTO `diseasecategory` VALUES (326, '视网膜疾病');
INSERT INTO `diseasecategory` VALUES (327, '视网膜炎');
INSERT INTO `diseasecategory` VALUES (328, '手部疾病');
INSERT INTO `diseasecategory` VALUES (329, '手部其它疾病');
INSERT INTO `diseasecategory` VALUES (330, '手术');
INSERT INTO `diseasecategory` VALUES (331, '输精管疾病');
INSERT INTO `diseasecategory` VALUES (332, '输卵管疾病');
INSERT INTO `diseasecategory` VALUES (333, '输尿管疾病');
INSERT INTO `diseasecategory` VALUES (334, '输尿管炎');
INSERT INTO `diseasecategory` VALUES (335, '鼠疫');
INSERT INTO `diseasecategory` VALUES (336, '水痘');
INSERT INTO `diseasecategory` VALUES (337, '水肿');
INSERT INTO `diseasecategory` VALUES (338, '睡眠疾病');
INSERT INTO `diseasecategory` VALUES (339, '四肢其它疾病');
INSERT INTO `diseasecategory` VALUES (340, '粟疹');
INSERT INTO `diseasecategory` VALUES (341, '酸尿证');
INSERT INTO `diseasecategory` VALUES (342, '酸血症');
INSERT INTO `diseasecategory` VALUES (343, '损伤');
INSERT INTO `diseasecategory` VALUES (344, '锁骨疾病');
INSERT INTO `diseasecategory` VALUES (345, '瘫痪');
INSERT INTO `diseasecategory` VALUES (346, '炭疽');
INSERT INTO `diseasecategory` VALUES (347, '唐氏综合征');
INSERT INTO `diseasecategory` VALUES (348, '糖尿病');
INSERT INTO `diseasecategory` VALUES (349, '天花');
INSERT INTO `diseasecategory` VALUES (350, '听道疾病');
INSERT INTO `diseasecategory` VALUES (351, '听骨疾病');
INSERT INTO `diseasecategory` VALUES (352, '听觉丧失');
INSERT INTO `diseasecategory` VALUES (353, '听力疾病');
INSERT INTO `diseasecategory` VALUES (354, '瞳孔疾病');
INSERT INTO `diseasecategory` VALUES (355, '痛风');
INSERT INTO `diseasecategory` VALUES (356, '痛经');
INSERT INTO `diseasecategory` VALUES (357, '头部疾病');
INSERT INTO `diseasecategory` VALUES (358, '头痛');
INSERT INTO `diseasecategory` VALUES (359, '土拉菌病');
INSERT INTO `diseasecategory` VALUES (360, '腿部疾病');
INSERT INTO `diseasecategory` VALUES (361, '吞咽困难');
INSERT INTO `diseasecategory` VALUES (362, '脱出');
INSERT INTO `diseasecategory` VALUES (363, '脱发');
INSERT INTO `diseasecategory` VALUES (364, '脱髓鞘');
INSERT INTO `diseasecategory` VALUES (365, '脱位');
INSERT INTO `diseasecategory` VALUES (366, '外翻');
INSERT INTO `diseasecategory` VALUES (367, '外阴疾病');
INSERT INTO `diseasecategory` VALUES (368, '外阴炎');
INSERT INTO `diseasecategory` VALUES (369, '维生素疾病');
INSERT INTO `diseasecategory` VALUES (370, '胃部疾病');
INSERT INTO `diseasecategory` VALUES (371, '胃炎');
INSERT INTO `diseasecategory` VALUES (372, '吸虫病');
INSERT INTO `diseasecategory` VALUES (373, '吸收障碍');
INSERT INTO `diseasecategory` VALUES (374, '息肉');
INSERT INTO `diseasecategory` VALUES (375, '膝部疾病');
INSERT INTO `diseasecategory` VALUES (376, '细胞疾病');
INSERT INTO `diseasecategory` VALUES (377, '细胞瘤');
INSERT INTO `diseasecategory` VALUES (378, '细胞再生障碍');
INSERT INTO `diseasecategory` VALUES (379, '细胞增多症');
INSERT INTO `diseasecategory` VALUES (380, '细菌性疾病');
INSERT INTO `diseasecategory` VALUES (381, '下疳');
INSERT INTO `diseasecategory` VALUES (382, '下肢其它疾病');
INSERT INTO `diseasecategory` VALUES (383, '先天性疾病');
INSERT INTO `diseasecategory` VALUES (384, '纤维瘤');
INSERT INTO `diseasecategory` VALUES (385, '腺体疾病');
INSERT INTO `diseasecategory` VALUES (386, '腺样体疾病');
INSERT INTO `diseasecategory` VALUES (387, '消化道疾病');
INSERT INTO `diseasecategory` VALUES (388, '消化疾病');
INSERT INTO `diseasecategory` VALUES (389, '小肠疾病');
INSERT INTO `diseasecategory` VALUES (390, '哮喘');
INSERT INTO `diseasecategory` VALUES (391, '斜视');
INSERT INTO `diseasecategory` VALUES (392, '心瓣疾病');
INSERT INTO `diseasecategory` VALUES (393, '心包疾病');
INSERT INTO `diseasecategory` VALUES (394, '心包炎');
INSERT INTO `diseasecategory` VALUES (395, '心动过缓');
INSERT INTO `diseasecategory` VALUES (396, '心动过速');
INSERT INTO `diseasecategory` VALUES (397, '心肌病');
INSERT INTO `diseasecategory` VALUES (398, '心绞痛');
INSERT INTO `diseasecategory` VALUES (399, '心境障碍');
INSERT INTO `diseasecategory` VALUES (400, '心律疾病');
INSERT INTO `diseasecategory` VALUES (401, '心内膜炎');
INSERT INTO `diseasecategory` VALUES (402, '心血管病');
INSERT INTO `diseasecategory` VALUES (403, '心脏病');
INSERT INTO `diseasecategory` VALUES (404, '心脏疾病');
INSERT INTO `diseasecategory` VALUES (405, '新生儿疾病');
INSERT INTO `diseasecategory` VALUES (406, '胸骨疾病');
INSERT INTO `diseasecategory` VALUES (407, '胸膜疾病');
INSERT INTO `diseasecategory` VALUES (408, '胸膜炎');
INSERT INTO `diseasecategory` VALUES (409, '胸腺疾病');
INSERT INTO `diseasecategory` VALUES (410, '休克');
INSERT INTO `diseasecategory` VALUES (411, '徐动症');
INSERT INTO `diseasecategory` VALUES (412, '眩晕');
INSERT INTO `diseasecategory` VALUES (413, '血管疾病');
INSERT INTO `diseasecategory` VALUES (414, '血管瘤');
INSERT INTO `diseasecategory` VALUES (415, '血管炎');
INSERT INTO `diseasecategory` VALUES (416, '血红蛋白病');
INSERT INTO `diseasecategory` VALUES (417, '血红蛋白尿');
INSERT INTO `diseasecategory` VALUES (418, '血尿');
INSERT INTO `diseasecategory` VALUES (419, '血栓');
INSERT INTO `diseasecategory` VALUES (420, '血小板疾病');
INSERT INTO `diseasecategory` VALUES (421, '血友病');
INSERT INTO `diseasecategory` VALUES (422, '血肿');
INSERT INTO `diseasecategory` VALUES (423, '荨麻疹');
INSERT INTO `diseasecategory` VALUES (424, '循环系统疾病');
INSERT INTO `diseasecategory` VALUES (425, '牙齿疾病');
INSERT INTO `diseasecategory` VALUES (426, '芽生菌病');
INSERT INTO `diseasecategory` VALUES (427, '雅司病');
INSERT INTO `diseasecategory` VALUES (428, '咽峡炎');
INSERT INTO `diseasecategory` VALUES (429, '咽炎');
INSERT INTO `diseasecategory` VALUES (430, '眼部疾病');
INSERT INTO `diseasecategory` VALUES (431, '咬伤');
INSERT INTO `diseasecategory` VALUES (432, '药物反应');
INSERT INTO `diseasecategory` VALUES (433, '药物引起的疾病');
INSERT INTO `diseasecategory` VALUES (434, '依恋障碍');
INSERT INTO `diseasecategory` VALUES (435, '胰部疾病');
INSERT INTO `diseasecategory` VALUES (436, '胰岛素疾病');
INSERT INTO `diseasecategory` VALUES (437, '胰腺炎');
INSERT INTO `diseasecategory` VALUES (438, '移植');
INSERT INTO `diseasecategory` VALUES (439, '遗传疾病');
INSERT INTO `diseasecategory` VALUES (440, '遗尿');
INSERT INTO `diseasecategory` VALUES (441, '遗尿症');
INSERT INTO `diseasecategory` VALUES (442, '抑郁');
INSERT INTO `diseasecategory` VALUES (443, '疫苗引起的疾病');
INSERT INTO `diseasecategory` VALUES (444, '癔病');
INSERT INTO `diseasecategory` VALUES (445, '阴囊疾病');
INSERT INTO `diseasecategory` VALUES (446, '引产');
INSERT INTO `diseasecategory` VALUES (447, '引流');
INSERT INTO `diseasecategory` VALUES (448, '营养不良');
INSERT INTO `diseasecategory` VALUES (449, '营养过度');
INSERT INTO `diseasecategory` VALUES (450, '蝇蛆病');
INSERT INTO `diseasecategory` VALUES (451, '痈病');
INSERT INTO `diseasecategory` VALUES (452, '幽门疾病');
INSERT INTO `diseasecategory` VALUES (453, '疣病');
INSERT INTO `diseasecategory` VALUES (454, '幼儿急疹');
INSERT INTO `diseasecategory` VALUES (455, '原虫性疾病');
INSERT INTO `diseasecategory` VALUES (456, '晕动病');
INSERT INTO `diseasecategory` VALUES (457, '晕厥');
INSERT INTO `diseasecategory` VALUES (458, '孕产妇医疗');
INSERT INTO `diseasecategory` VALUES (459, '早熟');
INSERT INTO `diseasecategory` VALUES (460, '造影术');
INSERT INTO `diseasecategory` VALUES (461, '粘膜斑');
INSERT INTO `diseasecategory` VALUES (462, '粘液囊炎');
INSERT INTO `diseasecategory` VALUES (463, '照相术');
INSERT INTO `diseasecategory` VALUES (464, '真菌性疾病');
INSERT INTO `diseasecategory` VALUES (465, '支气管炎');
INSERT INTO `diseasecategory` VALUES (466, '肢体疾病');
INSERT INTO `diseasecategory` VALUES (467, '脂肪瘤');
INSERT INTO `diseasecategory` VALUES (468, '直肠疾病');
INSERT INTO `diseasecategory` VALUES (469, '指');
INSERT INTO `diseasecategory` VALUES (470, '痣');
INSERT INTO `diseasecategory` VALUES (471, '中毒');
INSERT INTO `diseasecategory` VALUES (472, '中医疾病');
INSERT INTO `diseasecategory` VALUES (473, '肿瘤');
INSERT INTO `diseasecategory` VALUES (474, '肿胀');
INSERT INTO `diseasecategory` VALUES (475, '蛛网膜疾病');
INSERT INTO `diseasecategory` VALUES (476, '蛛网膜炎');
INSERT INTO `diseasecategory` VALUES (477, '主动脉疾病');
INSERT INTO `diseasecategory` VALUES (478, '注射');
INSERT INTO `diseasecategory` VALUES (479, '椎管疾病');
INSERT INTO `diseasecategory` VALUES (480, '椎管狭窄');
INSERT INTO `diseasecategory` VALUES (481, '紫癜');
INSERT INTO `diseasecategory` VALUES (482, '自杀');

-- ----------------------------
-- Table structure for doctitle
-- ----------------------------
DROP TABLE IF EXISTS `doctitle`;
CREATE TABLE `doctitle`  (
  `docTitleID` int NOT NULL AUTO_INCREMENT,
  `docTitleCode` varchar(255) ,
  `DocTitleName` varchar(255) ,
  PRIMARY KEY (`docTitleID`) 
) ;

-- ----------------------------
-- Records of doctitle
-- ----------------------------
INSERT INTO `doctitle` VALUES (1, 'ZRYS', '主任医师');
INSERT INTO `doctitle` VALUES (2, 'FZRYS', '副主任医师');
INSERT INTO `doctitle` VALUES (3, 'ZZYS', '主治医师');
INSERT INTO `doctitle` VALUES (4, 'ZYYS', '住院医师');

-- ----------------------------
-- Table structure for drug
-- ----------------------------
DROP TABLE IF EXISTS `drug`;
CREATE TABLE `drug`  (
  `drugID` int NOT NULL AUTO_INCREMENT,
  `drugCode` varchar(255) ,
  `drugName` varchar(255) ,
  `drugSpecification` varchar(255) ,
  `packUnit` varchar(255) ,
  `manufacturer` varchar(255) ,
  `drugDosageID` int ,
  `drugTypeID` int ,
  `drugPrice` double(6, 2) ,
  `drugHelperCode` varchar(255) ,
  `createTime` datetime(0) ,
  `lastModifyTime` datetime(0) ,
  PRIMARY KEY (`drugID`) ,
  FOREIGN KEY (`drugDosageID`) REFERENCES `drugdosage` (`drugDosageID`) ,
  FOREIGN KEY (`drugTypeID`) REFERENCES `drugtype` (`drugTypeID`) 
) ;

-- ----------------------------
-- Records of drug
-- ----------------------------
INSERT INTO `drug` VALUES (1, '86979474000208', '注射用甲氨喋呤', '1g×1支', '支', '江苏恒瑞医药股份有限公司', 1, 1, 15.73, 'ZSYJAZZ', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (2, '86979474000209', '氟康唑氯化钠注射液(大扶康)', '200mg×100ml/瓶', '瓶', '辉瑞制药有限公司', 1, 1, 7.01, 'FKZLHNZSY(DFK)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (3, '86979474000208', '50%葡萄糖注射液(塑瓶)', '10:20ml×1支', '支', '中国大冢制药有限公司', 1, 1, 25.16, 'PTTZSY(SP)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (4, '86979474000209', '盐酸特比萘芬泡腾片（丁克）', '50mg×7片/盒', '盒', '齐鲁制药有限公司', 2, 1, 40.62, 'YSTBZFYDPTP（DK）', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (5, '86979474000208', '红芪冲剂', '10g/袋', '袋', '南京药业股份有限公司药材分公司', 3, 3, 30.79, 'HZ', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (6, '86979474000208', '盐酸氨酮戊酸散（外用）', '118mg×1瓶', '瓶', '上海复旦张江生物医药股份有限公司', 4, 1, 19.51, 'YSATWSS（WY）', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (7, '86979474000209', '盐酸美金刚片(易贝申)', '10mg×28片/盒', '盒', '丹麦灵北药厂', 2, 1, 22.05, 'YSMJGP(YBS)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (8, '86979474000208', '磷酸奥司他韦胶囊(达菲)', '75mg×10粒/盒', '盒', '上海罗氏制药有限公司S', 5, 1, 60.96, 'LSASTWJN(DF)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (9, '86979474000209', '泽泻颗粒', '1g/10g/袋', '袋', '江阴天江药业有限公司', 6, 2, 0.09, 'ZXKL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (10, '86979474000208', '山药颗粒', '0.5g/10g/袋', '袋', NULL, 6, 2, 6.79, 'SYKL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (11, '86979474000208', '熟大黄颗粒', '1g/6g/袋', '袋', '江阴天江药业有限公司', 6, 2, 23.51, 'SDHKL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (12, '86979474000209', '黄连颗粒', '0.5g/3g袋', '袋', '江阴天江药业有限公司', 6, 2, 1.07, 'HLKL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (13, '86979474000208', '黄芩颗粒(酒)', '2g/10g/袋', '袋', '江阴天江药业有限公司', 6, 2, 81.74, 'HZKL(J)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (14, '86979474000209', '炒白芍颗粒', '1g/10g/袋', '袋', '江阴天江药业有限公司', 6, 2, 31.86, 'CBSKL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (15, '86979474000208', '炒白术颗粒', '3g/10g/袋', '袋', NULL, 6, 2, 41.50, 'CBSKL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (16, '86979474000208', '白芷颗粒', '1g/6g/袋', '袋', '江阴天江药业有限公司', 6, 2, 67.72, 'BZKL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (17, '86979474000209', '薤白颗粒', '2.5g/10g袋', '袋', '江阴天江药业有限公司', 6, 2, 17.95, 'ZBKL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (18, '86979474000208', '川芎颗粒', '2g/6g/袋', '袋', NULL, 6, 2, 0.70, 'CZKL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (19, '86979474000209', '维生素K1注射液', '1ml:10mg×10支/盒', '盒', '芜湖康奇制药', 1, 1, 10.39, 'WSSK1ZSY', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (20, '86979474000208', '利培酮片（维思通）', '1mg×20片/盒', '盒', '西安杨森制药有限公司', 2, 1, 5.52, 'LPTP（WST）', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (21, '86979474000208', '0.9%氯化钠注射液(塑瓶)', '2.25g:250ml×1瓶', '瓶', '中国大冢制药有限公司', 1, 1, 14.34, '0.9%LHNZSY(SP)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (22, '86979474000209', '0.9%氯化钠注射液（百特）', '500ml×1袋', '瓶', '上海百特医疗用品有限公司', 1, 1, 46.91, '0.9%LHNZSY（BT）', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (23, '86979474000208', '0.9%氯化钠注射液(塑瓶)', '0.9g:100ml×1瓶', '瓶', '中国大冢制药有限公司', 1, 1, 6.34, '0.9%LHNZSY(SP)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (24, '86979474000209', '10%葡萄糖注射液(塑瓶)', '50g:500ml×1瓶', '瓶', '中国大冢制药有限公司', 1, 1, 5.04, '10%PTTZSY(SP)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (25, '86979474000208', '10%葡萄糖注射液(塑瓶)', '25g:250ml×1瓶', '袋', '中国大冢制药有限公司', 1, 1, 16.02, '10%PTTZSY(SP)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (26, '86979474000208', '5%葡萄糖注射液(塑瓶)', '25g:500ml×1瓶', '瓶', '中国大冢制药有限公司', 1, 1, 47.78, '5%PTTZSY(SP)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (27, '86979474000209', '5%葡萄糖注射液(塑瓶)', '12.5g:250ml×1瓶', '瓶', '中国大冢制药有限公司', 1, 1, 45.62, '5%PTTZSY(SP)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (28, '86979474000208', '5%葡萄糖注射液(塑瓶)', '5g:100ml×1瓶', '瓶', '中国大冢制药有限公司', 1, 1, 17.53, '5%PTTZSY(SP)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (29, '86979474000209', '胃苏颗粒', '5g*9袋/盒', '盒', '扬子江药业集团有限公司', 6, 2, 1.73, 'WSKL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (30, '86979474000208', '复方甘露醇注射液(伸宁)', '250ml×1袋', '袋', '南京正大天晴制药有限公司', 1, 1, 15.56, 'FFGLCZSY(SN)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (31, '86979474000208', '艾塞那肽注射液(百泌达)', '5ug:1.2ml×1支', '支', '礼来（美国）公司S', 1, 1, 23.71, 'ASNZZSY(BMD)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (32, '86979474000209', '艾塞那肽注射液(百泌达)', '10ug:2.4ml×1支', '支', '礼来（美国）公司', 1, 1, 91.92, 'ASNZZSY(BMD)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (33, '86979474000208', '丹参颗粒', '2g/10g/袋', '袋', '江阴天江药业有限公司', 6, 2, 11.61, 'DCKL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (34, '86979474000209', '亮菌甲素注射液', '10ml:5mg×1支', '支', '云南大理药业股份有限公司', 1, 1, 62.41, 'LJJSZSY', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (35, '86979474000208', '瞿麦', '1000mg/g', '克', '江苏', 3, 3, 43.84, 'ZM', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (36, '86979474000208', '肠内营养粉剂(安素)', '1000mg/g', '克', '雅培荷兰', 7, 1, 3.12, 'CNYYFJ(AS)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (37, '86979474000209', '桉叶油', '1000g/瓶', '瓶', '吉水同仁', 48, 1, 3.40, 'ZYY', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (38, '86979474000208', '肉苁蓉', '1000mg/g', '克', '内蒙', 3, 3, 51.82, 'RZR', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (39, '86979474000209', '番木鳖酊', '1000mg/g', '克', NULL, 48, 1, 16.84, 'FMBJ', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (40, '86979474000208', '枸橼酸芬太尼注射液', '0.1mg×1支', '支', '湖北宜昌人福药业', 1, 1, 19.42, 'ZZSFTNZSY', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (41, '86979474000208', '枸橼酸芬太尼注射液', '0.5mg×1支', '支', '宜昌人福药业有限责任公司', 1, 1, 2.66, 'ZZSFTNZSY', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (42, '86979474000209', '酚红(AR)', '25g×1瓶', '瓶', '江西济民可信药业有限公司', 48, 1, 13.43, 'FH(AR)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (43, '86979474000208', '酚红IND', '25g×1瓶', '瓶', NULL, 48, 1, 4.07, 'FHIND', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (44, '86979474000209', '酚酞', '25g×1瓶', '瓶', NULL, 48, 1, 10.42, 'FT', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (45, '86979474000208', '蜂蜡', '500g×1瓶', '瓶', '华申康复', 48, 1, 3.47, 'FL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (46, '86979474000208', '呋喃西林', '25g×1袋', '袋', NULL, 48, 1, 37.75, 'ZZXL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (47, '86979474000209', '氯雷他定糖浆(开瑞坦)', '60ml：60mg×1瓶', '瓶', '上海先灵葆雅制药有限公司', 49, 1, 72.62, 'LLTDTJ(KRT)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (48, '86979474000208', '丙泊酚注射液(得普利麻)', '50ml：0.5g×1瓶', '瓶', '阿斯利康制药有限公司', 1, 1, 2.23, 'BBFZSY(DPLM)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (49, '86979474000209', 'BG维生素E软胶囊', '0.1g×30粒/盒', '盒', '浙江医药新昌制药厂', 50, 1, 11.03, 'BGWSSERJN', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (50, '86979474000208', '贝前列素钠片', '20ug×10片/盒', '盒', '北京泰德制药股份有限公司', 2, 1, 30.09, 'BQLSNP', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (51, '86979474000208', '盐酸伊立替康注射液(开普拓）', '5ml:100mg×1瓶', '瓶', '辉瑞制药', 1, 1, 7.42, 'YSYLTKZSY(KPT）', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (52, '86979474000209', '磺胺(AR)', '100g×1瓶', '瓶', NULL, 48, 1, 1.72, 'HA(AR)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (53, '86979474000208', '白附子', '1000mg/g', '克', NULL, 3, 3, 31.83, 'BFZ', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (54, '86979474000209', '白癫风胶囊', '1000mg/g', '克', '天津宏仁堂药业有限公司', 5, 1, 3.41, 'BZFJN', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (55, '86979474000208', '奋乃静片', '2mg×100片/瓶', '瓶', '上海朝晖药业有限公司', 2, 1, 0.54, 'FNJP', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (56, '86979474000208', '注射用头孢他啶(复达欣)', '1g×1支', '支', '葛兰素史克制药(苏州)有限公司', 1, 1, 8.05, 'ZSYTZTZ(FDX)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (57, '86979474000209', '复方氨基酸(绿支安)18AA注射液', '10.3%200ml×1瓶', '瓶', '广州绿十字制药有限公司', 1, 1, 49.18, 'FFAJS(LZA)18AAZSY', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (58, '86979474000208', '吡诺克辛滴眼液(卡林-U)', '5ml×1支', '支', '日本参天制药株式会社', 51, 1, 51.24, 'ZNKXDYY(KL-U)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (59, '86979474000209', '卡巴胆碱注射液（卡米可林）', '0.1mg×1支', '支', '山东正大福瑞达制药有限公司', 51, 1, 5.23, 'KBDJZSY（KMKL）', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (60, '86979474000208', '重组人粒细胞(特尔立)巨噬细胞集落冻干粉针', '150ug×1瓶', '瓶', '夏门特宝生物工程股份有限公司', 52, 1, 32.97, 'ZZRLXB(TEL)JSXBJLDGFZ', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (61, '86979474000208', '哌拉西林他唑巴坦钠(特治星)', '4.5g×1支', '支', '惠氏制药有限公司', 1, 1, 50.50, 'ZLXLTZBTN(TZX)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (62, '86979474000209', '地黄颗粒', '3g/10g/袋', '袋', '江阴天江药业有限公司', 6, 2, 5.48, 'DHKL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (63, '86979474000208', '当归颗粒', '4g/10g/袋', '袋', '江阴天江药业有限公司', 6, 2, 68.19, 'DGKL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (64, '86979474000209', '维生素B1注射液', '2ml:100mg×10支/盒', '盒', '杭州民生药业有限公司', 1, 1, 12.70, 'WSSB1ZSY', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (65, '86979474000208', '芒硝颗粒', '10g/4g/袋', '袋', '江阴天江药业有限公司', 6, 2, 13.00, 'MXKL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (66, '86979474000208', '生大黄颗粒', '1g:3g/袋', '袋', '江阴天江药业有限公司', 6, 2, 30.87, 'SDHKL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (67, '86979474000209', '虎杖颗粒', '1g/15g/袋', '袋', '江阴天江药业有限公司', 6, 2, 23.76, 'HZKL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (68, '86979474000208', '鱼腥草颗粒', '1g/15g/袋', '袋', '江阴天江药业有限公司', 6, 2, 14.89, 'YXCKL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (69, '86979474000209', '苦参颗粒', '1g/10g/袋', '袋', '江阴天江药业有限公司', 6, 2, 1.39, 'KCKL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (70, '86979474000208', '硫酸镁注射液', '10ml:2.5g×5支/盒', '盒', '杭州民生药业有限公司', 1, 1, 42.29, 'LSMZSY', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (71, '86979474000208', '胡黄连', '1000mg/g', '克', '进口', 3, 3, 37.20, 'HHL', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (72, '86979474000209', '虎杖', '1000mg/g', '克', '江苏', 3, 3, 16.01, 'HZ', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (73, '86979474000208', '聚桂醇注射液', '10ml:100mg×1支/盒', '盒', '陕西天宇制药有限公司S', 1, 1, 12.87, 'JGCZSY', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (74, '86979474000209', '康肤冲剂(I)', '20g×10袋/盒', '盒', '南京市中西医结合医院', 53, 2, 33.74, 'KFCJ(I)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (75, '86979474000208', '注射用头孢哌酮舒巴坦(舒普深)', '1.5g×1瓶', '瓶', '辉瑞制药有限公司（大连）', 1, 1, 2.07, 'ZSYTZZTSBT(SPS)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (76, '86979474000208', '清热通淋片', '0.39g*48片/盒', '盒', '江西杏林白马药业有限公司', 2, 1, 19.18, 'QRTLP', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (77, '86979474000209', '康莱特注射液', '10g×100ml/瓶', '瓶', '浙江康莱特药业有限公司', 1, 1, 11.36, 'KLTZSY', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (78, '86979474000208', '山茨菇', '1000mg/g', '克', ' 贵州', 3, 3, 70.02, 'SCG', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (79, '86979474000209', '马来酸桂哌齐特注射液(克林澳)', '80mg×1支', '支', '北京四环制药有限公司', 1, 1, 67.66, 'MLSGZQTZSY(KLA)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (80, '86979474000208', '氯化镁', '500g×1瓶', '瓶', '北京', 48, 1, 6.25, 'LHM', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (81, '86979474000208', '呋塞米注射液(速尿)', '2ml:20mg×10支/盒', '盒', '上海禾丰制药有限公司', 1, 1, 5.63, 'ZSMZSY(SN)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (82, '86979474000209', '注射用奈达铂（奥先达）', '10mg×1支', '支', '江苏奥赛康药业股份有限公司', 1, 1, 9.04, 'ZSYNDB（AXD）', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (83, '86979474000208', '注射用夫西地酸钠', '0.125g×1支', '支', 'G成都天台山制药有限公司', 1, 1, 44.97, 'ZSYFXDSN', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (84, '86979474000209', '阳起石', '1000mg/g', '克', NULL, 3, 3, 25.38, 'YQS', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (85, '86979474000208', '铜绿假单胞菌注射液', '1ml×1支', '支', '北京万特尔生物制药有限公司', 1, 1, 37.76, 'TLJDBJZSY', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (86, '86979474000208', '盐酸氟西汀胶囊(百忧解)', '20mg×7粒/盒', '盒', '礼来苏州制药有限公司', 2, 1, 15.61, 'YSFXTJN(BYJ)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (87, '86979474000209', '10%氯化钠注射液', '10ml:1g×5支/盒', '盒', '湖北天圣康迪制药有限公司', 1, 1, 4.50, '10%LHNZSY', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (88, '86979474000208', '注射用替考拉宁(他格适)', '200mg×1瓶', '瓶', '赛诺菲(北京)制药有限公司', 1, 1, 14.21, 'ZSYTKLN(TGS)', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (89, '86979474000209', '石决明', '1000mg/g', '克', ' 进口', 3, 3, 10.74, 'SJM', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (90, '86979474000208', '石榴皮', '1000mg/g', '克', NULL, 3, 3, 9.49, 'SLP', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (91, '86979474000208', '熟地', '1000mg/g', '克', '江苏', 3, 3, 55.10, 'SD', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (92, '86979474000209', '水牛角片', '1000mg/g', '克', '江苏', 3, 3, 5.68, 'SNJP', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (93, '86979474000208', '水蜈蚣', '1000mg/g', '克', NULL, 3, 3, 2.20, 'SZZ', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (94, '86979474000209', '水蛭', '1000mg/g', '克', '江苏', 3, 3, 71.56, 'SZ', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (95, '86979474000208', '苏梗', '1000mg/g', '克', '江苏', 3, 3, 17.14, 'SG', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (96, '86979474000208', '苏木', '1000mg/g', '克', NULL, 3, 3, 34.06, 'SM', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (97, '86979474000209', '太子参', '1000mg/g', '克', ' 江苏', 3, 3, 28.50, 'TZC', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (98, '86979474000208', '檀香', '1000mg/g', '克', '201116', 3, 3, 1.48, 'TX', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (99, '86979474000209', '桃仁', '1000mg/g', '克', '陕西', 3, 3, 41.29, 'TR', '2019-03-01 00:00:00', '2020-07-02 00:00:00');
INSERT INTO `drug` VALUES (100, '86979474000208', '天冬', '1000mg/g', '克', '湖北', 3, 3, 38.04, 'TD', '2019-03-01 00:00:00', '2020-07-02 00:00:00');

-- ----------------------------
-- Table structure for drugdosage
-- ----------------------------
DROP TABLE IF EXISTS `drugdosage`;
CREATE TABLE `drugdosage`  (
  `drugDosageID` int NOT NULL AUTO_INCREMENT,
  `drugDosageCode` varchar(255) ,
  `drugDosageName` varchar(255) ,
  PRIMARY KEY (`drugDosageID`) 
) ;

-- ----------------------------
-- Records of drugdosage
-- ----------------------------
INSERT INTO `drugdosage` VALUES (1, 'ZJ', '针剂');
INSERT INTO `drugdosage` VALUES (2, 'PJ', '片剂');
INSERT INTO `drugdosage` VALUES (3, 'ZYYP', '中药饮片');
INSERT INTO `drugdosage` VALUES (4, 'SJ', '散剂');
INSERT INTO `drugdosage` VALUES (5, 'JN', '胶囊');
INSERT INTO `drugdosage` VALUES (6, 'KLJ', '颗粒剂');
INSERT INTO `drugdosage` VALUES (7, 'FJ', '粉剂');
INSERT INTO `drugdosage` VALUES (8, 'BMP', '簿膜片');
INSERT INTO `drugdosage` VALUES (9, 'RJ', '乳剂');
INSERT INTO `drugdosage` VALUES (10, 'YJ', '液剂');
INSERT INTO `drugdosage` VALUES (11, 'NJ', '凝胶');
INSERT INTO `drugdosage` VALUES (12, 'RGJ', '软膏剂');
INSERT INTO `drugdosage` VALUES (13, 'QWJ', '气雾剂');
INSERT INTO `drugdosage` VALUES (14, 'FSP', '分散片');
INSERT INTO `drugdosage` VALUES (15, 'YPQX', '药品器械');
INSERT INTO `drugdosage` VALUES (16, 'SJ', '栓剂');
INSERT INTO `drugdosage` VALUES (17, 'NFSJ', '内服水剂');
INSERT INTO `drugdosage` VALUES (18, 'PJ', '喷剂');
INSERT INTO `drugdosage` VALUES (19, 'JJ', '胶剂');
INSERT INTO `drugdosage` VALUES (20, 'TJ', '酊剂');
INSERT INTO `drugdosage` VALUES (21, 'DJ', '滴剂');
INSERT INTO `drugdosage` VALUES (22, 'HSP', '缓释片');
INSERT INTO `drugdosage` VALUES (23, 'YGZJ', '眼膏制剂');
INSERT INTO `drugdosage` VALUES (24, 'CRP', '肠溶片');
INSERT INTO `drugdosage` VALUES (25, 'SJ', '霜剂');
INSERT INTO `drugdosage` VALUES (26, 'DEJ', '滴耳剂');
INSERT INTO `drugdosage` VALUES (27, 'HXJ', '混悬剂');
INSERT INTO `drugdosage` VALUES (28, 'HSJN', '缓释胶囊');
INSERT INTO `drugdosage` VALUES (29, 'NJJN', '凝胶胶囊');
INSERT INTO `drugdosage` VALUES (30, 'CJ', '擦剂');
INSERT INTO `drugdosage` VALUES (31, 'HP', '含片');
INSERT INTO `drugdosage` VALUES (32, 'GHJ', '干混剂');
INSERT INTO `drugdosage` VALUES (33, 'XJ', '洗剂');
INSERT INTO `drugdosage` VALUES (34, 'BPJ', '鼻喷剂');
INSERT INTO `drugdosage` VALUES (35, 'MJ', '膜剂');
INSERT INTO `drugdosage` VALUES (36, 'TG', '贴膏');
INSERT INTO `drugdosage` VALUES (37, 'TJ', '贴剂');
INSERT INTO `drugdosage` VALUES (38, 'HJ', '合剂');
INSERT INTO `drugdosage` VALUES (39, 'SJ', '湿巾');
INSERT INTO `drugdosage` VALUES (40, 'KPJ', '口喷剂');
INSERT INTO `drugdosage` VALUES (41, 'DSY', '大输液');
INSERT INTO `drugdosage` VALUES (42, 'YPCL', '药品材料');
INSERT INTO `drugdosage` VALUES (43, 'KSP', '控释片');
INSERT INTO `drugdosage` VALUES (44, 'DBJ', '滴鼻剂');
INSERT INTO `drugdosage` VALUES (45, 'DW', '滴丸');
INSERT INTO `drugdosage` VALUES (46, 'GTJJ', '干糖浆剂');
INSERT INTO `drugdosage` VALUES (47, 'WHXRJ', '雾化吸入剂');
INSERT INTO `drugdosage` VALUES (48, 'YLY', '原料药');
INSERT INTO `drugdosage` VALUES (49, 'TJJ', '糖浆剂');
INSERT INTO `drugdosage` VALUES (50, 'RJN', '软胶囊');
INSERT INTO `drugdosage` VALUES (51, 'DYJ', '滴眼剂');
INSERT INTO `drugdosage` VALUES (52, 'DGFZ', '冻干粉针');
INSERT INTO `drugdosage` VALUES (53, 'CJ', '冲剂');
INSERT INTO `drugdosage` VALUES (54, 'WJ', '丸剂');
INSERT INTO `drugdosage` VALUES (55, 'KFYL', '口服液类');

-- ----------------------------
-- Table structure for drugtype
-- ----------------------------
DROP TABLE IF EXISTS `drugtype`;
CREATE TABLE `drugtype`  (
  `drugTypeID` int NOT NULL AUTO_INCREMENT,
  `drugTypeCode` varchar(255) ,
  `drugTypeName` varchar(255) ,
  PRIMARY KEY (`drugTypeID`) 
) ;

-- ----------------------------
-- Records of drugtype
-- ----------------------------
INSERT INTO `drugtype` VALUES (1, 'XY', '西药');
INSERT INTO `drugtype` VALUES (2, 'ZCY', '中成药');
INSERT INTO `drugtype` VALUES (3, 'ZCY', '中草药');

-- ----------------------------
-- Table structure for invoice
-- ----------------------------
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice`  (
  `invoiceID` int NOT NULL AUTO_INCREMENT,
  `invoiceNumber` bigint (15) ,
  `invoiceValue` double(6, 2) ,
  `invoiceState` varchar(255) ,
  `chargeTime` datetime(0) ,
  `chargeUserID` int ,
  `registerID` int ,
  PRIMARY KEY (`invoiceID`) ,
  FOREIGN KEY (`chargeUserID`) REFERENCES `user` (`userID`) ,
  FOREIGN KEY (`registerID`) REFERENCES `register` (`registerID`) 
) ;

-- ----------------------------
-- Records of invoice
-- ----------------------------
INSERT INTO `invoice` VALUES (56, 800801, 51.00, '2', '2019-03-25 10:09:28', 9, 26);
INSERT INTO `invoice` VALUES (132, 800802, 48.65, '3', '2019-04-01 11:26:23', 9, 36);
INSERT INTO `invoice` VALUES (133, 800803, -8.65, '7', '2019-04-01 11:27:48', 9, 36);
INSERT INTO `invoice` VALUES (134, 800804, 48.65, '3', '2019-04-01 11:38:23', 9, 36);
INSERT INTO `invoice` VALUES (135, 800805, -48.65, '7', '2019-04-01 11:39:40', 9, 36);
INSERT INTO `invoice` VALUES (136, 800806, 77.90, '3', '2019-04-01 11:40:19', 9, 36);
INSERT INTO `invoice` VALUES (137, 800807, -67.90, '7', '2019-04-01 11:41:37', 9, 36);
INSERT INTO `invoice` VALUES (138, 800808, -10.00, '7', '2019-04-01 11:42:42', 9, 36);
INSERT INTO `invoice` VALUES (139, 800809, 8.00, '3', '2019-04-01 13:25:23', 9, 37);
INSERT INTO `invoice` VALUES (142, 800810, 129.94, '3', '2019-04-01 13:33:54', 9, 37);
INSERT INTO `invoice` VALUES (143, 800811, -129.94, '7', '2019-04-01 13:38:56', 9, 37);
INSERT INTO `invoice` VALUES (144, 800812, 247.37, '3', '2019-04-01 13:39:37', 9, 37);
INSERT INTO `invoice` VALUES (145, 800813, -155.00, '7', '2019-04-01 13:39:57', 9, 37);
INSERT INTO `invoice` VALUES (146, 800814, 0.00, '1', '2019-06-25 11:44:13', 9, 40);
INSERT INTO `invoice` VALUES (147, 800815, 0.00, '1', '2019-06-25 11:45:33', 9, 40);
INSERT INTO `invoice` VALUES (148, 800816, 0.00, '1', '2019-06-25 11:52:32', 9, 40);
INSERT INTO `invoice` VALUES (149, 800817, 0.00, '1', '2019-06-25 11:55:24', 9, 40);
INSERT INTO `invoice` VALUES (150, 800818, 0.00, '1', '2019-06-25 12:01:39', 9, 40);
INSERT INTO `invoice` VALUES (151, 800819, 0.00, '1', '2019-06-25 12:02:17', 9, 40);
INSERT INTO `invoice` VALUES (152, 800820, 0.00, '1', '2019-06-25 12:03:04', 9, 40);
INSERT INTO `invoice` VALUES (153, 800821, 0.00, '1', '2019-06-25 12:03:34', 9, 40);
INSERT INTO `invoice` VALUES (154, 800822, 0.00, '1', '2019-06-25 12:04:44', 9, 40);
INSERT INTO `invoice` VALUES (155, 800823, 27.00, '1', '2019-06-25 12:05:30', 9, 40);
INSERT INTO `invoice` VALUES (156, 800824, 27.00, '1', '2019-06-25 14:21:33', 9, 40);
INSERT INTO `invoice` VALUES (157, 800825, 0.00, '7', '2019-06-25 14:22:52', 9, 40);
INSERT INTO `invoice` VALUES (158, 800826, 0.00, '7', '2019-06-25 14:25:11', 9, 40);
INSERT INTO `invoice` VALUES (159, 800827, -27.00, '7', '2019-06-25 14:28:50', 9, 40);
INSERT INTO `invoice` VALUES (160, 800828, -27.00, '7', '2019-06-25 14:29:06', 9, 40);

-- ----------------------------
-- Table structure for patient
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient`  (
  `patientID` BIGINT(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) ,
  `sex` varchar(255) ,
  `identifyID` varchar(255) ,
  `birth` date ,
  `age` varchar(255) ,
  `ageType` varchar(255) ,
  `address` varchar(255) ,
  `createTime` datetime(0) ,
  PRIMARY KEY (`patientID`) 
) ;

-- ----------------------------
-- Records of patient
-- ----------------------------
INSERT INTO `patient` VALUES (600600, '李白', '男', '110101199003073335', '1900-01-02', '18', '岁', '北京', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600601, '杜甫', '男', '110101199003073634', '1900-01-02', '17', '岁', '雄安', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600602, '李商隐', '男', '110101199003075496', '1900-01-02', '11', '岁', '哈尔滨', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600603, '杜牧', '男', '110101199003072519', '1900-01-02', '11', '岁', '大连', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600604, '李清照', '男', '11010119900307643X', '1900-01-02', '56', '岁', '青岛', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600605, '李贺', '男', '110101199003078937', '1900-01-02', '67', '岁', '长沙', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600606, '卢照邻', '男', '110101199003079577', '1900-01-02', '33', '岁', '天津', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600607, '陆游', '男', '110101199003072770', '1900-01-02', '33', '岁', '上海', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600608, '屈原', '男', '11010119900307045X', '1900-01-02', '72', '岁', '广州', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600609, '白居易', '男', '210102199208051076', '1900-01-02', '23', '岁', '台北', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600610, '王安石', '男', '210102199208050938', '1900-01-02', '11', '岁', '香港', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600611, '李煜', '男', '210102199208051834', '1900-01-02', '33', '岁', '杭州', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600612, '孟浩然', '男', '210102199208058972', '1900-01-02', '23', '岁', '南京', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600613, '王勃', '男', '210102199208055392', '1900-01-02', '22', '岁', '武汉', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600614, '范仲淹', '男', '210102199208056053', '1900-01-02', '22', '岁', '成都', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600615, '陶渊明', '男', '210102199208059377', '1900-01-02', '33', '岁', '深圳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600617, '苏洵', '男', '210102199208059916', '1900-01-02', '8', '岁', '重庆', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600618, '苏辙', '男', '210102199208058999', '1900-01-02', '22', '岁', '厦门', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600619, '苏轼', '男', '21010219920805025X', '2000-01-01', '19', '岁', '沈阳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600620, '苏轼', '男', '21010219920805025X', '2000-01-01', '19', '岁', '沈阳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600621, '苏轼', '男', '21010219920805025X', '2000-01-01', '19', '岁', '沈阳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600622, '辛弃疾', '男', '210102199208057253', '1900-01-02', '21', '岁', '沈阳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600623, '刘禹锡', '男', '320114198702156937', '1900-01-02', '21', '岁', '南京', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600624, '王维', '男', '320114198702158713', '1900-01-02', '21', '岁', '南京', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600625, '李商隐', '男', '32011419870215929X', '1900-01-02', '21', '岁', '南京', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600626, '纳兰性德', '男', '320114198702159134', '1900-01-02', '21', '岁', '南京', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600627, '杜牧', '男', '320114198702159038', '1900-01-02', '21', '岁', '南京', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600628, '元稹', '男', '320114198702158932', '1900-01-02', '21', '岁', '南京', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600629, '柳宗元', '男', '320114198702157593', '1900-01-02', '21', '岁', '南京', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600630, '岑参', '男', '320114198702159775', '1900-01-02', '21', '岁', '南京', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600631, '韩愈', '男', '320114198702159097', '1900-01-02', '21', '岁', '南京', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600632, '欧阳修', '男', '320114198702156056', '1900-01-02', '21', '岁', '南京', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600633, '齐己', '男', '320114198702156275', '1900-01-02', '21', '岁', '南京', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600634, '贾岛', '男', '320114198702156996', '1900-01-02', '21', '岁', '南京', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600635, '韦应物', '男', '320114198702158836', '1900-01-02', '21', '岁', '南京', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600636, '曹操', '男', '320114198702157497', '1900-01-02', '21', '岁', '南京', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600637, '温庭筠', '男', '32011419870215945X', '1900-01-02', '21', '岁', '南京', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600638, '柳永', '男', '440304199210189484', '1900-01-02', '21', '岁', '深圳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600639, '刘长卿', '男', '440304199210187462', '1900-01-02', '21', '岁', '深圳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600640, '曹植', '男', '440304199210188967', '1900-01-02', '21', '岁', '深圳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600641, '王昌龄', '男', '440304199210188326', '1900-01-02', '21', '岁', '深圳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600642, '张籍', '男', '440304199210186267', '1900-01-02', '21', '岁', '深圳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600643, '孟郊', '男', '440304199210186523', '1900-01-02', '21', '岁', '深圳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600644, '皎然', '男', '440304199210186347', '1900-01-02', '21', '岁', '深圳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600645, '贯休', '男', '440304199210188182', '1900-01-02', '21', '岁', '深圳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600646, '许浑', '男', '440304199210189409', '1900-01-02', '21', '岁', '深圳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600647, '罗隐', '男', '440304199210189222', '1900-01-02', '21', '岁', '深圳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600648, '杨万里', '男', '440304199210186267', '1900-01-02', '21', '岁', '深圳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600649, '陆龟蒙', '男', '440304199210188203', '1900-01-02', '21', '岁', '深圳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600650, '张祜', '男', '440304199210186689', '1900-01-02', '21', '岁', '深圳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600651, '王建', '男', '44030419921018830X', '1900-01-02', '21', '岁', '深圳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600652, '韦庄', '男', '440304199210188924', '1900-01-02', '21', '岁', '深圳', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600653, '诸葛亮', '男', '430111197906137887', '1900-01-02', '21', '岁', '长沙', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600654, '姚合', '男', '430111197906136681', '1900-01-02', '21', '岁', '长沙', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600655, '晏殊', '男', '430111197906139727', '1900-01-02', '21', '岁', '长沙', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600656, '卢纶', '男', '430111197906139161', '1900-01-02', '21', '岁', '长沙', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600657, '杜荀鹤', '男', '430111197906138249', '1900-01-02', '21', '岁', '长沙', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600658, '岳飞', '男', '430111197906137182', '1900-01-02', '21', '岁', '长沙', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600659, '周邦彦', '男', '430111197906139727', '1900-01-02', '21', '岁', '长沙', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600660, '晏几道', '男', '430111197906138388', '1900-01-02', '21', '岁', '长沙', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600661, '钱起', '男', '43011119790613730X', '1900-01-02', '21', '岁', '长沙', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600662, '韩偓', '男', '430111197906139444', '1900-01-02', '21', '岁', '长沙', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600663, '皮日休', '男', '430111197906137983', '1900-01-02', '21', '岁', '长沙', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600664, '秦观', '男', '430111197906137203', '1900-01-02', '21', '岁', '长沙', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600665, '吴文英', '男', '430111197906138126', '1900-01-02', '21', '岁', '长沙', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600666, '朱熹', '男', '430111197906136665', '1900-01-02', '21', '岁', '长沙', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600667, '高适', '男', '430111197906137326', '1900-01-02', '21', '岁', '长沙', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600668, '方干', '男', '35021119790613928X', '1900-01-02', '21', '岁', '厦门', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600669, '马致远', '男', '350211197906138180', '1900-01-02', '21', '岁', '厦门', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600670, '李峤', '男', '350211197906138287', '1900-01-02', '21', '岁', '厦门', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600671, '权德舆', '男', '350211197906136046', '1900-01-02', '21', '岁', '厦门', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600672, '皇甫冉', '男', '350211197906136409', '1900-01-02', '21', '岁', '厦门', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600673, '左丘明', '男', '350211197906136943', '1900-01-02', '21', '岁', '厦门', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600674, '刘辰翁', '男', '350211197906138922', '1900-01-02', '21', '岁', '厦门', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600675, '郑谷', '男', '350211197906136986', '1900-01-02', '21', '岁', '厦门', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600676, '黄庭坚', '男', '350211197906139984', '1900-01-02', '21', '岁', '厦门', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600677, '贺铸', '男', '350211197906138826', '1900-01-02', '21', '岁', '厦门', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600678, '赵长卿', '男', '350211197906138041', '1900-01-02', '21', '岁', '厦门', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600679, '张九龄', '男', '350211197906137882', '1900-01-02', '21', '岁', '厦门', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600680, '卓文君', '男', '350211197906138105', '1900-01-02', '21', '岁', '厦门', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600681, '戴叔伦司', '男', '350211197906139327', '1900-01-02', '21', '岁', '厦门', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600682, '马迁周', '男', '35021119790613928X', '1900-01-02', '21', '岁', '厦门', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600683, '敦颐', '男', '510101199008166455', '1900-01-02', '21', '岁', '成都', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600684, '文天祥', '男', '51010119900816787X', '1900-01-02', '21', '岁', '成都', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600685, '张说', '男', '510101199008167810', '1900-01-02', '21', '岁', '成都', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600686, '张炎', '男', '510101199008167650', '1900-01-02', '21', '岁', '成都', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600687, '吴融', '男', '510101199008168573', '1900-01-02', '21', '岁', '成都', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600688, '郦道元', '男', '510101199008168370', '1900-01-02', '21', '岁', '成都', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600689, '陈著', '男', '510101199008167896', '1900-01-02', '21', '岁', '成都', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600690, '宋之问', '男', '510101199008168178', '1900-01-02', '21', '岁', '成都', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600691, '贺知章', '男', '510101199008169832', '1900-01-02', '21', '岁', '成都', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600692, '王之涣', '男', '510101199008168995', '1900-01-02', '21', '岁', '成都', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600693, '吴潜', '男', '510101199008166973', '1900-01-02', '21', '岁', '成都', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600694, '范成大', '男', '510101199008167351', '1900-01-02', '21', '岁', '成都', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600695, '李端', '男', '510101199008168012', '1900-01-02', '21', '岁', '成都', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600696, '白朴', '男', '510101199008167896', '1900-01-02', '21', '岁', '成都', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600697, '刘克庄', '男', '510101199008166578', '1900-01-02', '21', '岁', '成都', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600698, '顾况', '男', '510101199008169728', '1900-01-02', '21', '岁', '成都', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600699, '张乔', '男', '510101199008167220', '1900-01-02', '21', '岁', '成都', '2020-07-02 14:50:00');
INSERT INTO `patient` VALUES (600700, '马戴', '男', '510101199008166543', '1900-01-02', '21', '岁', '成都', '2020-07-02 14:50:00');

-- ----------------------------
-- Table structure for patientcheck
-- ----------------------------
DROP TABLE IF EXISTS `patientcheck`;
CREATE TABLE `patientcheck`  (
  `patientCheckID` int NOT NULL AUTO_INCREMENT,
  `registerID` int ,
  `patientIndexID` int ,
  `checkID` int ,
  `checkResult` varchar(255) ,
  `userID` int ,
  `createTime` datetime(0) ,
  `state` int ,
	`checkType` int,
  PRIMARY KEY (`patientCheckID`) ,
  FOREIGN KEY (`registerID`) REFERENCES `register` (`registerID`) ,
  FOREIGN KEY (`patientIndexID`) REFERENCES `patientindex` (`patientIndexID`) ,
  FOREIGN KEY (`checkID`) REFERENCES `check` (`checkID`) ,
  FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) 
) ;

-- ----------------------------
-- Records of patientcheck
-- ----------------------------
INSERT INTO `patientcheck` VALUES (1, 3, 1, 36, '正常', 2, '2020-07-02 00:00:00', 1, 1);
INSERT INTO `patientcheck` VALUES (2, 4, 3, 37, '正常', 2, '2020-07-02 00:00:00', 1, 1);
INSERT INTO `patientcheck` VALUES (3, 6, 4, 38, '正常', 2, '2020-07-02 00:00:00', 1, 1);
INSERT INTO `patientcheck` VALUES (4, 9, 5, 39, '正常', 2, '2020-07-02 00:00:00', 1, 1);
INSERT INTO `patientcheck` VALUES (5, 28, 6, 40, '正常', 2, '2020-07-02 00:00:00', 1, 1);
INSERT INTO `patientcheck` VALUES (6, 26, 7, 41, '正常', 2, '2020-07-02 00:00:00', 1, 1);
INSERT INTO `patientcheck` VALUES (7, 27, 8, 42, '正常', 2, '2020-07-02 00:00:00', 1,1);
INSERT INTO `patientcheck` VALUES (8, 29, 9, 43, '正常', 2, '2020-07-02 00:00:00', 1,1);
INSERT INTO `patientcheck` VALUES (9, 30, 10, 44, '正常', 2, '2020-07-02 00:00:00', 1,1);
INSERT INTO `patientcheck` VALUES (10, 28, 11, 45, '正常', 2, '2020-07-02 00:00:00', 1,1);
INSERT INTO `patientcheck` VALUES (11, 31, 13, 46, '正常', 2, '2020-07-02 00:00:00', 1,1);
INSERT INTO `patientcheck` VALUES (12, 32, 15, 47, '正常', 2, '2020-07-02 00:00:00', 1,1);
INSERT INTO `patientcheck` VALUES (13, 33, 18, 50, '正常', 2, '2020-07-02 00:00:00', 1,1);
INSERT INTO `patientcheck` VALUES (14, 34, 19, 51, '正常', 2, '2020-07-02 00:00:00', 1,1);
INSERT INTO `patientcheck` VALUES (15, 37, 20, 52, '正常', 2, '2020-07-02 00:00:00', 1,1);
INSERT INTO `patientcheck` VALUES (16, 40, 21, 53, '正常', 2, '2020-07-02 00:00:00', 1,1);

-- ----------------------------
-- Table structure for patientcostdetail
-- ----------------------------
DROP TABLE IF EXISTS `patientcostdetail`;
CREATE TABLE `patientcostdetail`  (
  `patientCostDetailID` int NOT NULL AUTO_INCREMENT,
  `registerID` int ,
  `invoiceID` int ,
  `itemType` int ,
  `costTypeID` int ,
  `itemName` varchar(255) ,
  `itemPrice` double(6, 2) ,
  `itemMount` int ,
  `executeDeptID` int ,
  `createTime` datetime(0) ,
  `createUserID` int ,
  `chargeTime` datetime(0) ,
  `chargeUserID` int ,
  PRIMARY KEY (`patientCostDetailID`) ,
  FOREIGN KEY (`registerID`) REFERENCES `register` (`registerID`) ,
  FOREIGN KEY (`invoiceID`) REFERENCES `invoice` (`invoiceID`) ,
  FOREIGN KEY (`costTypeID`) REFERENCES `costtype` (`costTypeID`) ,
  FOREIGN KEY (`executeDeptID`) REFERENCES `department` (`deptID`) ,
  FOREIGN KEY (`createUserID`) REFERENCES `user` (`userID`) ,
  FOREIGN KEY (`chargeUserID`) REFERENCES `user` (`userID`) 
) ;

-- ----------------------------
-- Records of patientcostdetail
-- ----------------------------
INSERT INTO `patientcostdetail` VALUES (254, 36, 134, 1, 2, '胃苏颗粒', 1.73, 5, 22, '2019-04-01 11:38:23', 9, '2019-04-01 11:38:23', 9);
INSERT INTO `patientcostdetail` VALUES (255, 36, 134, 1, 3, '洗胃', 40.00, 1, 22, '2019-04-01 11:38:23', 9, '2019-04-01 11:38:23', 9);
INSERT INTO `patientcostdetail` VALUES (256, 36, 135, 1, 2, '胃苏颗粒', 1.73, -5, 22, '2019-04-01 11:39:40', 9, '2019-04-01 11:39:40', 9);
INSERT INTO `patientcostdetail` VALUES (257, 36, 135, 1, 3, '洗胃', 40.00, -1, 22, '2019-04-01 11:39:40', 9, '2019-04-01 11:39:40', 9);
INSERT INTO `patientcostdetail` VALUES (258, 36, 136, 1, 2, '山药颗粒', 6.79, 10, 22, '2019-04-01 11:40:19', 9, '2019-04-01 11:40:19', 9);
INSERT INTO `patientcostdetail` VALUES (259, 36, 136, 1, 3, '灌肠', 10.00, 1, 22, '2019-04-01 11:40:19', 9, '2019-04-01 11:40:19', 9);
INSERT INTO `patientcostdetail` VALUES (260, 36, 137, 1, 2, '山药颗粒', 6.79, -10, 22, '2019-04-01 11:41:37', 9, '2019-04-01 11:41:37', 9);
INSERT INTO `patientcostdetail` VALUES (261, 36, 138, 1, 3, '灌肠', 10.00, -1, 22, '2019-04-01 11:42:42', 9, '2019-04-01 11:42:42', 9);
INSERT INTO `patientcostdetail` VALUES (262, 37, 139, 1, 2, '挂号费', 8.00, 1, 1, '2019-04-01 13:25:23', 9, '2019-04-01 13:25:23', 9);
INSERT INTO `patientcostdetail` VALUES (263, 37, 142, 1, 3, '蜂蜡', 3.47, 2, 22, '2019-04-01 13:33:54', 9, '2019-04-01 13:33:54', 9);
INSERT INTO `patientcostdetail` VALUES (264, 37, 142, 1, 2, '甲紫溶液', 41.00, 3, 22, '2019-04-01 13:33:54', 9, '2019-04-01 13:33:54', 9);
INSERT INTO `patientcostdetail` VALUES (265, 37, 143, 1, 2, '蜂蜡', 3.47, -2, 22, '2019-04-01 13:38:56', 9, '2019-04-01 13:38:56', 9);
INSERT INTO `patientcostdetail` VALUES (266, 37, 143, 1, 2, '甲紫溶液', 41.00, -3, 22, '2019-04-01 13:38:56', 9, '2019-04-01 13:38:56', 9);
INSERT INTO `patientcostdetail` VALUES (267, 37, 144, 1, 3, '红芪冲剂', 30.79, 3, 22, '2019-04-01 13:39:37', 9, '2019-04-01 13:39:37', 9);
INSERT INTO `patientcostdetail` VALUES (268, 37, 144, 1, 2, '脑室碘水造影', 60.00, 1, 22, '2019-04-01 13:39:37', 9, '2019-04-01 13:39:37', 9);
INSERT INTO `patientcostdetail` VALUES (269, 37, 144, 1, 3, '气脑造影', 80.00, 1, 22, '2019-04-01 13:39:37', 9, '2019-04-01 13:39:37', 9);
INSERT INTO `patientcostdetail` VALUES (270, 37, 144, 1, 2, '食管钡餐透视', 15.00, 1, 22, '2019-04-01 13:39:37', 9, '2019-04-01 13:39:37', 9);
INSERT INTO `patientcostdetail` VALUES (271, 37, 145, 1, 3, '脑室碘水造影', 60.00, -1, 22, '2019-04-01 13:39:57', 9, '2019-04-01 13:39:57', 9);
INSERT INTO `patientcostdetail` VALUES (272, 37, 145, 1, 2, '气脑造影', 80.00, -1, 22, '2019-04-01 13:39:57', 9, '2019-04-01 13:39:57', 9);
INSERT INTO `patientcostdetail` VALUES (273, 37, 145, 1, 3, '食管钡餐透视', 15.00, -1, 22, '2019-04-01 13:39:57', 9, '2019-04-01 13:39:57', 9);
INSERT INTO `patientcostdetail` VALUES (274, 40, 137, 1, 2, '鱼腥草颗粒', 15.00, 1, 1, '2019-06-25 11:44:13', 2, '2019-06-25 11:44:13', 9);
INSERT INTO `patientcostdetail` VALUES (275, 40, 138, 1, 3, '鱼腥草颗粒', 15.00, 1, 1, '2019-06-25 11:44:13', 2, '2019-06-25 11:44:13', 9);
INSERT INTO `patientcostdetail` VALUES (276, 40, 139, 1, 2, '鱼腥草颗粒', 15.00, 1, 1, '2019-06-25 11:45:33', 2, '2019-06-25 11:45:33', 9);
INSERT INTO `patientcostdetail` VALUES (277, 40, 142, 1, 3, '鱼腥草颗粒', 15.00, 1, 1, '2019-06-25 11:45:33', 2, '2019-06-25 11:45:33', 9);
INSERT INTO `patientcostdetail` VALUES (278, 40, 143, 1, 2, '鱼腥草颗粒', 15.00, 1, 1, '2019-06-25 11:52:32', 2, '2019-06-25 11:52:32', 9);
INSERT INTO `patientcostdetail` VALUES (279, 40, 144, 1, 2, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, 1, '2019-06-25 11:52:32', 2, '2019-06-25 11:52:32', 9);
INSERT INTO `patientcostdetail` VALUES (280, 40, 145, 1, 2, '鱼腥草颗粒', 15.00, 1, 1, '2019-06-25 11:55:24', 2, '2019-06-25 11:55:24', 9);
INSERT INTO `patientcostdetail` VALUES (281, 40, 146, 1, 3, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, 1, '2019-06-25 11:55:24', 2, '2019-06-25 11:55:24', 9);
INSERT INTO `patientcostdetail` VALUES (282, 40, 147, 1, 2, '鱼腥草颗粒', 15.00, 1, 1, '2019-06-25 12:01:39', 2, '2019-06-25 12:01:39', 9);
INSERT INTO `patientcostdetail` VALUES (283, 40, 148, 1, 3, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, 1, '2019-06-25 12:01:39', 2, '2019-06-25 12:01:39', 9);
INSERT INTO `patientcostdetail` VALUES (284, 40, 149, 1, 2, '鱼腥草颗粒', 15.00, 1, 1, '2019-06-25 12:02:17', 2, '2019-06-25 12:02:17', 9);
INSERT INTO `patientcostdetail` VALUES (285, 40, 150, 1, 3, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, 1, '2019-06-25 12:02:17', 2, '2019-06-25 12:02:17', 9);
INSERT INTO `patientcostdetail` VALUES (286, 40, 151, 1, 2, '鱼腥草颗粒', 15.00, 1, 1, '2019-06-25 12:03:04', 2, '2019-06-25 12:03:04', 9);
INSERT INTO `patientcostdetail` VALUES (287, 40, 152, 1, 3, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, 1, '2019-06-25 12:03:04', 2, '2019-06-25 12:03:04', 9);
INSERT INTO `patientcostdetail` VALUES (288, 40, 153, 1, 2, '鱼腥草颗粒', 15.00, 1, 1, '2019-06-25 12:03:34', 2, '2019-06-25 12:03:34', 9);
INSERT INTO `patientcostdetail` VALUES (289, 40, 154, 1, 3, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, 1, '2019-06-25 12:03:34', 2, '2019-06-25 12:03:34', 9);
INSERT INTO `patientcostdetail` VALUES (290, 40, 155, 1, 2, '鱼腥草颗粒', 15.00, 1, 1, '2019-06-25 12:04:44', 2, '2019-06-25 12:04:44', 9);
INSERT INTO `patientcostdetail` VALUES (291, 40, 156, 1, 3, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, 1, '2019-06-25 12:04:44', 2, '2019-06-25 12:04:44', 9);
INSERT INTO `patientcostdetail` VALUES (292, 40, 157, 1, 2, '鱼腥草颗粒', 15.00, 1, 1, '2019-06-25 12:05:30', 2, '2019-06-25 12:05:30', 9);
INSERT INTO `patientcostdetail` VALUES (293, 40, 158, 1, 2, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, 1, '2019-06-25 12:05:30', 2, '2019-06-25 12:05:30', 9);
INSERT INTO `patientcostdetail` VALUES (294, 40, 159, 1, 2, '鱼腥草颗粒', 15.00, 1, 1, '2019-06-25 14:21:33', 2, '2019-06-25 14:21:33', 9);
INSERT INTO `patientcostdetail` VALUES (295, 40, 160, 1, 3, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, 1, '2019-06-25 14:21:33', 2, '2019-06-25 14:21:33', 9);
INSERT INTO `patientcostdetail` VALUES (296, 40, 151, 1, 2, '鱼腥草颗粒', -15.00, 1, 1, '2019-06-25 14:28:50', 2, '2019-06-25 14:28:50', 9);
INSERT INTO `patientcostdetail` VALUES (297, 40, 151, 1, 3, '0.9%氯化钠注射液(塑瓶)', -6.00, 2, 1, '2019-06-25 14:28:50', 2, '2019-06-25 14:28:50', 9);
INSERT INTO `patientcostdetail` VALUES (298, 40, 151, 1, 2, '鱼腥草颗粒', -15.00, 1, 1, '2019-06-25 14:29:06', 2, '2019-06-25 14:29:06', 9);
INSERT INTO `patientcostdetail` VALUES (299, 40, 151, 1, 3, '0.9%氯化钠注射液(塑瓶)', -6.00, 2, 1, '2019-06-25 14:29:06', 2, '2019-06-25 14:29:06', 9);

-- ----------------------------
-- Table structure for patientindex
-- ----------------------------
DROP TABLE IF EXISTS `patientindex`;
CREATE TABLE `patientindex`  (
  `patientIndexID` int NOT NULL AUTO_INCREMENT,
  `patientID` BIGINT(11) ,
  `registerID` int ,
  `chiefComplaint` varchar(255) ,
  `presentMedicalHistory` varchar(255) ,
  `presentMedicalTreatment` varchar(255) ,
  `pastMedicalHistory` varchar(255) ,
  `allergicHistory` varchar(255) ,
  `bodyCheck` varchar(255) ,
  `checkRec` varchar(255) ,
  `notice` varchar(255) ,
  `checkResult` varchar(255) ,
  `diagnoseResult` varchar(255) ,
  `treatmentSuggestion` varchar(255) ,
  `state` int ,
  PRIMARY KEY (`patientIndexID`) ,
  FOREIGN KEY (`patientID`) REFERENCES `patient` (`patientID`) ,
  FOREIGN KEY (`registerID`) REFERENCES `register` (`registerID`) 
) ;

-- ----------------------------
-- Records of patientindex
-- ----------------------------
INSERT INTO `patientindex` VALUES (1, 600601, 3, '半月前受凉后开始咳嗽，呈阵发性，无畏冷发热，无咯血及胸痛，伴有少量的白色黏稠痰。曾服止咳糖浆等3天，效果不好。', '阵发性咳嗽半月', '曾服止咳糖浆等3天，效果不好', '既往有10年余慢性咳嗽史，曾诊断为“慢性支气管炎”，不吸烟。否认肺结核病史。', '无', 'BP 128/80mmHg,无呼吸困难，唇不发绀，双肺有散在干性啰音，未闻及湿啰性啰音，心率90次/min，律齐，无杂音，腹平软无压痛，肝脾未触及，双下肢无浮肿。', '血常规，胸片', '无', NULL, NULL, NULL, 2);
INSERT INTO `patientindex` VALUES (3, 600607, 4, '转移性右下腹痛伴恶心、呕吐8小时。', '该患于8小时前无诱因出现腹部疼痛，初表现为上腹部隐痛，4小时后疼痛逐渐加重并转移至右下腹固定，无腰背部及会阴部放散痛，呈阵发性发作，伴有恶心、呕吐数次，呕吐物为胃内容物，量共约200毫升，未经任何诊治，今因腹痛不缓解前来我院就诊，门诊以“腹痛待查”收入院。病程中患者无咳嗽、咳痰，无心悸、气短，无呼吸困难，无腹胀、腹泻，无尿频、尿急、尿痛及血尿，患病以来，睡眠不良，食欲欠佳，大小便正常。', '该患以转移性右下腹痛伴恶心、呕吐8小时于2008年06月11日入院。', '无结核及肝炎病史，无糖尿病及心脏病、高血压病史，无药物过敏史及手术史。', '无', '无', '血常规', '无', NULL, NULL, NULL, 1);
INSERT INTO `patientindex` VALUES (4, 600605, 6, '间断性右上腹疼痛2年。', '该患缘于2年前无明显诱因开始出现右上腹部隐痛，伴右胸背部放散痛，无肩部放散痛，腹痛呈间断性发作，曾予以抗感染治疗（具体药名及剂量不详）后腹痛可缓解。', '于2010年1月14日在四平市爱龄齐医院行超声检查提示：胆囊多发结石，但未经治疗，今为进一步治疗来我院，门诊以胆囊结石收入院。病程中无寒战、高热，无反酸、嗳气，无恶心、呕吐，无呕血、黑便，无黄染。患病以来，睡眠不良，食欲欠佳，大小便正常。', '无结核及肝炎病史，无糖尿病及心脏病、高血压病史，无药物过敏史及手术史。', '无', '无', '腹部彩超（2008-06-11）', '低脂饮食', NULL, NULL, NULL, 2);
INSERT INTO `patientindex` VALUES (5, 600606, 9, '右下腹痛伴恶心。', '该患于8小时前无诱因出现腹部疼痛，初表现为上腹部隐痛，4小时后疼痛逐渐加重并转移至右下腹固定，无腰背部及会阴部放散痛，呈阵发性发作，伴有恶心、呕吐数次，呕吐物为胃内容物，量共约200毫升，未经任何诊治，今因腹痛不缓解前来我院就诊，门诊以“腹痛待查”收入院。病程中患者无咳嗽、咳痰，无心悸、气短，无呼吸困难，无腹胀、腹泻，无尿频、尿急、尿痛及血尿，患病以来，睡眠不良，食欲欠佳，大小便正常。', '该患以转移性右下腹痛伴恶心、呕吐8小时于2008年06月11日入院。', '无结核及肝炎病史，无糖尿病及心脏病、高血压病史，无药物过敏史及手术史。', '无', '无', '血常规', '无', NULL, NULL, NULL, 2);
INSERT INTO `patientindex` VALUES (6, 600609, 28, '111', '222', '333', '444', '555', '666', '777', '888', NULL, NULL, NULL, 2);
INSERT INTO `patientindex` VALUES (7, 600607, 26, '11', '22', '33', '44', '55', '66', 'ww', 'gggg', NULL, NULL, NULL, 2);
INSERT INTO `patientindex` VALUES (8, 600608, 27, '苏二强苏二强苏二强苏二强苏二强啊啊', '苏二强苏二强苏二强苏二强', '苏二强苏二强苏二强苏二强', '苏二强苏二强苏二强苏二强', '苏二强苏二强苏二强苏二强', '苏二强苏二强苏二强苏二强苏二强', '苏二强', '苏二强', NULL, NULL, NULL, 3);
INSERT INTO `patientindex` VALUES (9, 600610, 29, 'q', 'q', 'q', 'q', 'q', 'q', 'q', 'q', NULL, NULL, NULL, 3);
INSERT INTO `patientindex` VALUES (10, 600611, 30, '3', '3', '3', '3', '3', '3', '3', '3', NULL, NULL, NULL, 3);
INSERT INTO `patientindex` VALUES (11, 600609, 28, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', NULL, NULL, NULL, 3);
INSERT INTO `patientindex` VALUES (13, 600612, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO `patientindex` VALUES (15, 600613, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO `patientindex` VALUES (18, 600614, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO `patientindex` VALUES (19, 600615, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `patientindex` VALUES (20, 600618, 37, 'qq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `patientindex` VALUES (21, 600620, 40, '头痛', '感冒', '吃了头孢', '发烧', '无', '体温偏高', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `patientindex` VALUES (22, 600606, 209, '主诉', '现病史', '现病史治疗情况', '既往史', '过敏史', '体格检查', '检查建议', '注意事项', NULL, NULL, NULL, 2);
INSERT INTO `patientindex` VALUES (23, 600601, 205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);


-- ----------------------------
-- Table structure for patientprescription
-- ----------------------------
DROP TABLE IF EXISTS `patientprescription`;
CREATE TABLE `patientprescription`  (
  `patientPrescriptionID` int NOT NULL AUTO_INCREMENT,
  `patientIndexID` int ,
  `registerID` int ,
  `userID` int ,
  `prescriptionName` varchar(255) ,
  `createTime` datetime(0) ,
  `state` int ,
  PRIMARY KEY (`patientPrescriptionID`) ,
  FOREIGN KEY (`patientIndexID`) REFERENCES `patientindex` (`patientIndexID`) ,
  FOREIGN KEY (`registerID`) REFERENCES `register` (`registerID`) ,
  FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) 
) ;

-- ----------------------------
-- Records of patientprescription
-- ----------------------------
INSERT INTO `patientprescription` VALUES (1, 1, 34, 2, '小儿感冒', '2019-03-17 17:19:19', 2);
INSERT INTO `patientprescription` VALUES (2, 3, 4, 5, '肠炎', '2019-03-17 17:59:19', 2);
INSERT INTO `patientprescription` VALUES (38, 4, 9, 1, '模板：念珠菌性皮炎', '2019-03-28 10:27:28', 1);
INSERT INTO `patientprescription` VALUES (39, 5, 9, 1, '新增处方1', '2019-03-28 10:38:57', 1);
INSERT INTO `patientprescription` VALUES (40, 6, 27, 1, '新增处方1', '2019-03-28 11:00:14', 2);
INSERT INTO `patientprescription` VALUES (41, 7, 29, 1, '新增处方1', '2019-03-28 13:46:47', 6);
INSERT INTO `patientprescription` VALUES (46, 8, 30, 1, 'www', '2019-03-28 15:27:01', 6);
INSERT INTO `patientprescription` VALUES (47, 9, 30, 1, '模板：病毒性胃肠炎', '2019-03-28 15:28:12', 6);
INSERT INTO `patientprescription` VALUES (48, 10, 32, 1, 's1', '2019-03-29 09:27:12', 6);
INSERT INTO `patientprescription` VALUES (51, 11, 33, 1, '模板：病毒性胃肠炎', '2019-03-29 14:47:46', 3);
INSERT INTO `patientprescription` VALUES (52, 13, 33, 1, '模板：念珠菌性皮炎', '2019-03-29 14:47:52', 3);
INSERT INTO `patientprescription` VALUES (53, 15, 34, 1, '模板：病毒性胃肠炎', '2019-03-29 15:20:15', 2);
INSERT INTO `patientprescription` VALUES (54, 18, 34, 1, '模板：季节性常发哮喘', '2019-03-29 15:20:22', 2);
INSERT INTO `patientprescription` VALUES (55, 19, 26, 1, '模板：季节性常发哮喘', '2019-03-29 15:42:04', 1);
INSERT INTO `patientprescription` VALUES (56, 20, 37, 1, 'a1', '2019-04-01 13:27:53', 2);
INSERT INTO `patientprescription` VALUES (57, 21, 37, 1, '模板：支气管哮喘', '2019-04-01 13:47:39', 1);
INSERT INTO `patientprescription` VALUES (58, 1, 40, 2, '感冒', '2019-06-25 00:46:50', 1);
INSERT INTO `patientprescription` VALUES (59, 3, 40, 2, '感冒', '2019-06-25 08:12:23', 1);
INSERT INTO `patientprescription` VALUES (60, 4, 40, 2, '感冒', '2019-06-25 08:14:36', 1);
INSERT INTO `patientprescription` VALUES (61, 5, 40, 2, '感冒', '2019-06-25 08:15:08', 1);
INSERT INTO `patientprescription` VALUES (62, 6, 40, 2, '感冒', '2019-06-25 08:16:03', 1);
INSERT INTO `patientprescription` VALUES (63, 7, 40, 2, '感冒', '2019-06-25 08:16:50', 1);
INSERT INTO `patientprescription` VALUES (64, 8, 40, 2, '感冒', '2019-06-25 08:18:10', 1);
INSERT INTO `patientprescription` VALUES (65, 9, 40, 2, '感冒', '2019-06-25 08:18:36', 1);
INSERT INTO `patientprescription` VALUES (66, 10, 40, 2, '感冒', '2019-06-25 08:19:38', 1);
INSERT INTO `patientprescription` VALUES (67, 11, 40, 2, '感冒', '2019-06-25 08:20:22', 1);
INSERT INTO `patientprescription` VALUES (68, 13, 40, 2, '感冒', '2019-06-25 08:21:14', 1);
INSERT INTO `patientprescription` VALUES (69, 15, 40, 2, '感冒', '2019-06-25 08:21:24', 1);
INSERT INTO `patientprescription` VALUES (70, 18, 40, 2, '感冒', '2019-06-25 08:28:55', 1);
INSERT INTO `patientprescription` VALUES (71, 19, 40, 2, '感冒', '2019-06-25 08:29:08', 1);
INSERT INTO `patientprescription` VALUES (72, 20, 40, 2, '感冒', '2019-06-25 09:26:28', 1);
INSERT INTO `patientprescription` VALUES (73, 21, 40, 2, '感冒', '2019-06-25 09:27:03', 1);
INSERT INTO `patientprescription` VALUES (74, 1, 40, 2, '感冒', '2019-06-25 09:39:46', 1);
INSERT INTO `patientprescription` VALUES (75, 3, 40, 2, '感冒', '2019-06-25 09:41:14', 1);
INSERT INTO `patientprescription` VALUES (76, 4, 40, 2, '感冒', '2019-06-25 09:41:29', 1);
INSERT INTO `patientprescription` VALUES (77, 5, 40, 2, '感冒', '2019-06-25 09:41:40', 1);
INSERT INTO `patientprescription` VALUES (78, 6, 40, 2, '感冒', '2019-06-25 09:42:18', 1);
INSERT INTO `patientprescription` VALUES (79, 7, 40, 2, '感冒', '2019-06-25 09:45:21', 1);
INSERT INTO `patientprescription` VALUES (80, 8, 40, 2, '感冒', '2019-06-25 09:45:37', 1);
INSERT INTO `patientprescription` VALUES (81, 9, 40, 2, '感冒', '2019-06-25 09:46:11', 1);
INSERT INTO `patientprescription` VALUES (82, 10, 40, 2, '感冒', '2019-06-25 09:50:49', 1);
INSERT INTO `patientprescription` VALUES (83, 11, 40, 2, '感冒', '2019-06-25 09:51:00', 1);
INSERT INTO `patientprescription` VALUES (84, 13, 40, 2, '感冒', '2019-06-25 09:51:24', 1);
INSERT INTO `patientprescription` VALUES (85, 15, 40, 2, '感冒', '2019-06-25 09:51:43', 1);
INSERT INTO `patientprescription` VALUES (86, 18, 40, 2, '感冒', '2019-06-25 09:52:19', 1);
INSERT INTO `patientprescription` VALUES (87, 19, 40, 2, '感冒', '2019-06-25 09:52:32', 1);
INSERT INTO `patientprescription` VALUES (88, 20, 40, 2, '感冒', '2019-06-25 09:53:22', 1);
INSERT INTO `patientprescription` VALUES (89, 21, 40, 2, '感冒', '2019-06-25 09:54:14', 1);
INSERT INTO `patientprescription` VALUES (90, 1, 40, 2, '感冒', '2019-06-25 09:56:49', 1);
INSERT INTO `patientprescription` VALUES (91, 3, 40, 2, '感冒', '2019-06-25 11:46:24', 1);
INSERT INTO `patientprescription` VALUES (92, 4, 40, 2, '感冒', '2019-06-25 11:49:17', 1);
INSERT INTO `patientprescription` VALUES (93, 5, 40, 2, '感冒', '2019-06-25 11:50:03', 1);
INSERT INTO `patientprescription` VALUES (94, 6, 40, 2, '感冒', '2019-06-25 11:51:14', 1);
INSERT INTO `patientprescription` VALUES (95, 7, 40, 2, '感冒', '2019-06-25 11:52:10', 1);
INSERT INTO `patientprescription` VALUES (96, 8, 40, 2, '感冒', '2019-06-25 11:55:19', 1);
INSERT INTO `patientprescription` VALUES (97, 9, 40, 2, '感冒', '2019-06-25 14:19:13', 1);
INSERT INTO `patientprescription` VALUES (98, 10, 40, 2, '感冒', '2019-06-25 14:19:38', 1);
INSERT INTO `patientprescription` VALUES (99, 11, 40, 2, '感冒', '2019-06-25 14:20:14', 1);
INSERT INTO `patientprescription` VALUES (100, 13, 40, 2, '感冒', '2019-06-25 14:20:33', 1);
INSERT INTO `patientprescription` VALUES (101, 22, 209, 2, '感冒', '2020-07-04 15:06:56', 1);


-- ----------------------------
-- Table structure for patientprescriptiondetail
-- ----------------------------
DROP TABLE IF EXISTS `patientprescriptiondetail`;
CREATE TABLE `patientprescriptiondetail`  (
  `patientPrescriptionDetailID` int NOT NULL AUTO_INCREMENT,
  `patientPrescriptionID` int ,
  `drugID` int ,
  `usage` varchar(255) ,
  `dosage` varchar(255) ,
  `frequency` varchar(255) ,
  `amount` int ,
  `state` int ,
  PRIMARY KEY (`patientPrescriptionDetailID`) ,
  FOREIGN KEY (`patientPrescriptionID`) REFERENCES `patientprescription` (`patientPrescriptionID`) ,
  FOREIGN KEY (`drugID`) REFERENCES `drug` (`drugID`) 
) ;

-- ----------------------------
-- Records of patientprescriptiondetail
-- ----------------------------
INSERT INTO `patientprescriptiondetail` VALUES (1, 1, 10, '口服', '30g', '一日二次', 10, 6);
INSERT INTO `patientprescriptiondetail` VALUES (2, 1, 29, '口服', '5g', '一日二次', 5, 6);
INSERT INTO `patientprescriptiondetail` VALUES (3, 51, 36, '1', '1', '1', 1, 3);
INSERT INTO `patientprescriptiondetail` VALUES (4, 51, 39, '1', '1', '1', 1, 3);
INSERT INTO `patientprescriptiondetail` VALUES (5, 51, 2, NULL, NULL, NULL, 1, 3);
INSERT INTO `patientprescriptiondetail` VALUES (6, 52, 23, '静脉注射', '100ml', '一日一次', 1, 2);
INSERT INTO `patientprescriptiondetail` VALUES (7, 52, 30, '静脉注射', '200ml', '一日一次', 1, 2);
INSERT INTO `patientprescriptiondetail` VALUES (8, 53, 36, '1', '1', '1', 1, 2);
INSERT INTO `patientprescriptiondetail` VALUES (9, 53, 39, '1', '1', '1', 1, 2);
INSERT INTO `patientprescriptiondetail` VALUES (10, 53, 2, NULL, NULL, NULL, 1, 2);
INSERT INTO `patientprescriptiondetail` VALUES (11, 54, 9, '口服', '1g', '一日三次', 1, 2);
INSERT INTO `patientprescriptiondetail` VALUES (12, 54, 33, '口服', '2g', '一日三次', 1, 2);
INSERT INTO `patientprescriptiondetail` VALUES (13, 54, 47, '口服', '适量', '多次', 1, 2);
INSERT INTO `patientprescriptiondetail` VALUES (14, 55, 9, '口服', '1g', '一日三次', 1, 4);
INSERT INTO `patientprescriptiondetail` VALUES (15, 55, 33, '口服', '2g', '一日三次', 1, 4);
INSERT INTO `patientprescriptiondetail` VALUES (16, 55, 47, '口服', '适量', '多次', 1, 4);
INSERT INTO `patientprescriptiondetail` VALUES (17, 56, 5, 'q', 'q', 'q', 3, 4);
INSERT INTO `patientprescriptiondetail` VALUES (18, 56, 45, 'w', 'w', 'w', 2, 6);
INSERT INTO `patientprescriptiondetail` VALUES (19, 56, 45, 'e', 'e', 'e', 3, 6);
INSERT INTO `patientprescriptiondetail` VALUES (20, 57, 44, '11', '11', '11', 1, 2);
INSERT INTO `patientprescriptiondetail` VALUES (21, 57, 68, '22', '22', '22', 1, 2);
INSERT INTO `patientprescriptiondetail` VALUES (22, 69, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (23, 69, 23, NULL, NULL, NULL, 23, 2);
INSERT INTO `patientprescriptiondetail` VALUES (24, 70, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (25, 70, 23, NULL, NULL, NULL, 23, 2);
INSERT INTO `patientprescriptiondetail` VALUES (26, 71, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (27, 71, 23, NULL, NULL, NULL, 23, 2);
INSERT INTO `patientprescriptiondetail` VALUES (28, 72, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (29, 72, 23, NULL, NULL, NULL, 23, 2);
INSERT INTO `patientprescriptiondetail` VALUES (30, 73, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (31, 73, 23, NULL, NULL, NULL, 23, 2);
INSERT INTO `patientprescriptiondetail` VALUES (32, 78, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (33, 78, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (34, 79, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (35, 79, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (36, 80, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (37, 80, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (38, 81, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (39, 81, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (40, 83, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (41, 83, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (42, 85, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (43, 85, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (44, 87, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (45, 87, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (46, 88, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (47, 88, 68, NULL, NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (48, 89, 68, '口服', NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (49, 89, 68, '口服', NULL, NULL, 68, 2);
INSERT INTO `patientprescriptiondetail` VALUES (50, 90, 68, '口服', '18g', '一日三次', 1, 3);
INSERT INTO `patientprescriptiondetail` VALUES (51, 90, 68, '口服', '18g', '一日三次', 1, 3);
INSERT INTO `patientprescriptiondetail` VALUES (52, 91, 68, '口服', '18g', '一日三次', 1, 2);
INSERT INTO `patientprescriptiondetail` VALUES (53, 91, 68, '口服', '18g', '一日三次', 1, 2);
INSERT INTO `patientprescriptiondetail` VALUES (54, 92, 1, NULL, NULL, NULL, 0, 2);
INSERT INTO `patientprescriptiondetail` VALUES (55, 92, 1, NULL, NULL, NULL, 0, 2);
INSERT INTO `patientprescriptiondetail` VALUES (56, 93, 68, '口服', '18g', '一日三次', 1, 2);
INSERT INTO `patientprescriptiondetail` VALUES (57, 93, 1, NULL, NULL, NULL, 0, 2);
INSERT INTO `patientprescriptiondetail` VALUES (58, 94, 68, '口服', '18g', '一日三次', 1, 2);
INSERT INTO `patientprescriptiondetail` VALUES (59, 94, 23, '静脉注射', '100ml', '一日一次', 2, 2);
INSERT INTO `patientprescriptiondetail` VALUES (60, 95, 68, '口服', '18g', '一日三次', 1, 3);
INSERT INTO `patientprescriptiondetail` VALUES (61, 95, 23, '静脉注射', '100ml', '一日一次', 2, 3);
INSERT INTO `patientprescriptiondetail` VALUES (62, 96, 68, '口服', '18g', '一日三次', 1, 3);
INSERT INTO `patientprescriptiondetail` VALUES (63, 96, 23, '静脉注射', '100ml', '一日一次', 2, 3);
INSERT INTO `patientprescriptiondetail` VALUES (64, 97, 68, '口服', '18g', '一日三次', 1, 2);
INSERT INTO `patientprescriptiondetail` VALUES (65, 97, 23, '静脉注射', '100ml', '一日一次', 2, 2);
INSERT INTO `patientprescriptiondetail` VALUES (66, 98, 68, '口服', '18g', '一日三次', 1, 2);
INSERT INTO `patientprescriptiondetail` VALUES (67, 98, 23, '静脉注射', '100ml', '一日一次', 2, 2);
INSERT INTO `patientprescriptiondetail` VALUES (68, 99, 68, '口服', '18g', '一日三次', 1, 2);
INSERT INTO `patientprescriptiondetail` VALUES (69, 99, 23, '静脉注射', '100ml', '一日一次', 2, 2);
INSERT INTO `patientprescriptiondetail` VALUES (70, 100, 68, '口服', '18g', '一日三次', 1, 6);
INSERT INTO `patientprescriptiondetail` VALUES (71, 100, 23, '静脉注射', '100ml', '一日一次', 2, 6);
INSERT INTO `patientprescriptiondetail` VALUES (72, 101, 10, NULL, NULL, NULL, 10, 1);
INSERT INTO `patientprescriptiondetail` VALUES (73, 101, 29, NULL, NULL, NULL, 5, 1);

-- ----------------------------
-- Table structure for pscriptcharge
-- ----------------------------
DROP TABLE IF EXISTS `pscriptcharge`;
CREATE TABLE `pscriptcharge`  (
  `pscriptChargeID` int NOT NULL AUTO_INCREMENT,
  `drugID` int ,
  `drugPrice` double(6, 2) ,
  `amount` int ,
  PRIMARY KEY (`pscriptChargeID`) ,
  FOREIGN KEY (`drugID`) REFERENCES `drug` (`drugID`) 
) ;

-- ----------------------------
-- Records of pscriptcharge
-- ----------------------------
INSERT INTO `pscriptcharge` VALUES (1, 10, 30.79, 10);
INSERT INTO `pscriptcharge` VALUES (2, 29, 19.51, 5);
INSERT INTO `pscriptcharge` VALUES (3, 36, 22.05, 1);
INSERT INTO `pscriptcharge` VALUES (4, 39, 60.96, 1);
INSERT INTO `pscriptcharge` VALUES (5, 2, 0.09, 1);
INSERT INTO `pscriptcharge` VALUES (6, 23, 6.79, 1);
INSERT INTO `pscriptcharge` VALUES (7, 30, 23.51, 1);
INSERT INTO `pscriptcharge` VALUES (8, 36, 1.07, 1);
INSERT INTO `pscriptcharge` VALUES (9, 39, 81.74, 1);
INSERT INTO `pscriptcharge` VALUES (10, 2, 31.86, 1);
INSERT INTO `pscriptcharge` VALUES (11, 9, 41.50, 1);
INSERT INTO `pscriptcharge` VALUES (12, 33, 67.72, 1);
INSERT INTO `pscriptcharge` VALUES (13, 47, 17.95, 1);
INSERT INTO `pscriptcharge` VALUES (14, 9, 0.70, 1);
INSERT INTO `pscriptcharge` VALUES (15, 33, 10.39, 1);
INSERT INTO `pscriptcharge` VALUES (16, 47, 5.52, 1);
INSERT INTO `pscriptcharge` VALUES (17, 5, 14.34, 3);
INSERT INTO `pscriptcharge` VALUES (18, 45, 46.91, 2);
INSERT INTO `pscriptcharge` VALUES (19, 10, 6.34, 3);
INSERT INTO `pscriptcharge` VALUES (20, 44, 5.04, 1);
INSERT INTO `pscriptcharge` VALUES (21, 68, 16.02, 1);
INSERT INTO `pscriptcharge` VALUES (22, 68, 47.78, 68);
INSERT INTO `pscriptcharge` VALUES (23, 23, 45.62, 23);
INSERT INTO `pscriptcharge` VALUES (24, 68, 17.53, 68);
INSERT INTO `pscriptcharge` VALUES (25, 23, 1.73, 23);
INSERT INTO `pscriptcharge` VALUES (26, 68, 5.04, 68);
INSERT INTO `pscriptcharge` VALUES (27, 23, 16.02, 23);
INSERT INTO `pscriptcharge` VALUES (28, 10, 6.79, 10);
INSERT INTO `pscriptcharge` VALUES (29, 29, 1.73, 5);

-- ----------------------------
-- Table structure for pscripttemplate
-- ----------------------------
DROP TABLE IF EXISTS `pscripttemplate`;
CREATE TABLE `pscripttemplate`  (
  `pscriptTemplateID` int NOT NULL AUTO_INCREMENT,
  `pscriptTemplateName` varchar(255) ,
  `userID` int ,
  `createTime` datetime(0) ,
  `useRange` int ,
  PRIMARY KEY (`pscriptTemplateID`) ,
  FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) 
) ;

-- ----------------------------
-- Records of pscripttemplate
-- ----------------------------
INSERT INTO `pscripttemplate` VALUES (2, '念珠菌性皮炎', 1, '2019-03-21 13:25:45', 1);
INSERT INTO `pscripttemplate` VALUES (3, '急性黄疸性丁型肝炎', 1, '2019-03-21 13:25:59', 2);
INSERT INTO `pscripttemplate` VALUES (4, '病毒性胃肠炎', 1, '2019-03-21 13:26:25', 3);
INSERT INTO `pscripttemplate` VALUES (5, '流行性腮腺炎 NOS', 1, '2019-03-21 13:26:33', 1);
INSERT INTO `pscripttemplate` VALUES (7, '春季常发性感冒', 1, '2019-03-22 16:34:08', 3);
INSERT INTO `pscripttemplate` VALUES (8, '季节性常发哮喘', 1, '2019-03-29 14:50:13', 2);
INSERT INTO `pscripttemplate` VALUES (9, '支气管哮喘', 1, '2019-04-01 13:43:44', 2);

-- ----------------------------
-- Table structure for pscripttemplatedetail
-- ----------------------------
DROP TABLE IF EXISTS `pscripttemplatedetail`;
CREATE TABLE `pscripttemplatedetail`  (
  `pscriptTemplateDetailID` int NOT NULL AUTO_INCREMENT,
  `pscriptTemplateID` int ,
  `drugID` int ,
  `useage` varchar(255) ,
  `dosage` varchar(255) ,
  `frequency` varchar(255) ,
  PRIMARY KEY (`pscriptTemplateDetailID`) ,
  FOREIGN KEY (`pscriptTemplateID`) REFERENCES `pscripttemplate` (`pscriptTemplateID`) 
) ;

-- ----------------------------
-- Records of pscripttemplatedetail
-- ----------------------------
INSERT INTO `pscripttemplatedetail` VALUES (2, 2, 23, '静脉注射', '100ml', '一日一次');
INSERT INTO `pscripttemplatedetail` VALUES (3, 2, 30, '静脉注射', '200ml', '一日一次');
INSERT INTO `pscripttemplatedetail` VALUES (4, 5, 86, NULL, NULL, NULL);
INSERT INTO `pscripttemplatedetail` VALUES (6, 3, 5, '11', '11', '11');
INSERT INTO `pscripttemplatedetail` VALUES (7, 3, 57, '22', '22', '22');
INSERT INTO `pscripttemplatedetail` VALUES (8, 7, 9, '1', '1', '1');
INSERT INTO `pscripttemplatedetail` VALUES (9, 4, 36, '1', '1', '1');
INSERT INTO `pscripttemplatedetail` VALUES (10, 4, 39, '1', '1', '1');
INSERT INTO `pscripttemplatedetail` VALUES (11, 4, 2, NULL, NULL, NULL);
INSERT INTO `pscripttemplatedetail` VALUES (12, 8, 9, '口服', '1g', '一日三次');
INSERT INTO `pscripttemplatedetail` VALUES (13, 8, 33, '口服', '2g', '一日三次');
INSERT INTO `pscripttemplatedetail` VALUES (14, 8, 47, '口服', '适量', '多次');
INSERT INTO `pscripttemplatedetail` VALUES (15, 9, 44, '11', '11', '11');
INSERT INTO `pscripttemplatedetail` VALUES (18, 9, 68, '22', '22', '22');

-- ----------------------------
-- Table structure for register
-- ----------------------------
DROP TABLE IF EXISTS `register`;
CREATE TABLE `register`  (
  `registerID` int NOT NULL AUTO_INCREMENT,
  `patientID` BIGINT(11) ,
  `diagnoseDate` date ,
  `noon` varchar(255) ,
  `deptID` int ,
  `doctorUserID` int ,
  `registerLevelID` int ,
  `bookNeeded` int ,
  `registerTime` datetime(0) ,
  `registerUserID` int ,
  `diagnoseState` int ,
  PRIMARY KEY (`registerID`) ,
  FOREIGN KEY (`patientID`) REFERENCES `patient` (`patientID`) ,
  FOREIGN KEY (`deptID`) REFERENCES `department` (`deptID`) ,
  FOREIGN KEY (`doctorUserID`) REFERENCES `user` (`userID`) ,
  FOREIGN KEY (`registerLevelID`) REFERENCES `registerlevel` (`registerLevelID`) ,
  FOREIGN KEY (`registerUserID`) REFERENCES `user` (`userID`) 
) ;

-- ----------------------------
-- Records of register
-- ----------------------------
INSERT INTO `register` VALUES (3, 600600, '2019-03-18', '上午', 1, 1, 2, 1, '2019-03-18 09:20:34', 9, 2);
INSERT INTO `register` VALUES (4, 600601, '2019-03-19', '下午', 2, 1, 1, 1, '2019-03-18 09:21:26', 9, 1);
INSERT INTO `register` VALUES (5, 600602, '2019-03-18', '上午', 2, 1, 2, 0, '2019-03-18 09:22:24', 9, 1);
INSERT INTO `register` VALUES (6, 600603, '2019-03-19', '上午', 1, 1, 1, 1, '2019-03-19 09:18:25', 9, 2);
INSERT INTO `register` VALUES (7, 600604, '2019-03-19', '上午', 1, 1, 1, 1, '2019-03-19 10:08:51', 9, 1);
INSERT INTO `register` VALUES (8, 600605, '2019-03-19', '上午', 1, 1, 1, 1, '2019-03-19 10:09:35', 9, 1);
INSERT INTO `register` VALUES (9, 600606, '2019-03-19', '下午', 2, 1, 2, 0, '2019-03-19 10:10:44', 9, 2);
INSERT INTO `register` VALUES (26,600607, '2019-03-26', '上午', 1, 1, 1, 1, '2019-03-26 09:27:00', 9, 2);
INSERT INTO `register` VALUES (27, 600608, '2019-03-28', '上午', 1, 1, 1, 1, '2019-03-28 10:55:20', 9, 3);
INSERT INTO `register` VALUES (28, 600609, '2019-03-28', '上午', 1, 1, 1, 0, '2019-03-28 10:57:03', 9, 3);
INSERT INTO `register` VALUES (29, 600610, '2019-03-28', '下午', 1, 1, 1, 1, '2019-03-28 13:45:25', 9, 3);
INSERT INTO `register` VALUES (30, 600611, '2019-03-28', '下午', 1, 1, 1, 1, '2019-03-28 15:23:48', 9, 3);
INSERT INTO `register` VALUES (31, 600612, '2019-03-26', '上午', 1, 1, 1, 1, '2019-03-28 16:53:35', 9, 3);
INSERT INTO `register` VALUES (32, 600613, '2019-03-29', '上午', 1, 1, 1, 0, '2019-03-29 09:23:45', 9, 2);
INSERT INTO `register` VALUES (33, 600614, '2019-03-29', '上午', 1, 1, 1, 0, '2019-03-29 14:41:00', 9, 3);
INSERT INTO `register` VALUES (34, 600615, '2019-03-29', '上午', 1, 1, 1, 0, '2019-03-29 14:46:17', 9, 2);
INSERT INTO `register` VALUES (36, 600617, '2019-04-01', '下午', 1, 1, 1, 1, '2019-04-01 10:36:40', 9, 1);
INSERT INTO `register` VALUES (37, 600618, '2019-04-01', '下午', 1, 2, 2, 0, '2019-04-01 13:25:23', 9, 2);
INSERT INTO `register` VALUES (39, 600619, '2019-06-24', '上', 1, 2, 2, 0, '2019-06-24 10:59:19', 9, 4);
INSERT INTO `register` VALUES (40, 600620, '2019-06-24', '上', 1, 2, 2, 0, '2019-06-24 10:59:29', 9, 2);
INSERT INTO `register` VALUES (41, 600621, '2019-06-24', '下', 1, 2, 2, 0, '2019-06-24 11:07:19', 9, 4);
INSERT INTO `register` VALUES (121, 600622, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:08', 9, 3);
INSERT INTO `register` VALUES (122, 600623, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:08', 9, 3);
INSERT INTO `register` VALUES (123, 600624, '2019-07-01', '下', 1, 1, 1, 0, '2019-07-02 04:30:08', 9, 3);
INSERT INTO `register` VALUES (124, 600625, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:08', 9, 3);
INSERT INTO `register` VALUES (125, 600626, '2019-07-01', '上', 1, 1, 1, 0, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (126, 600627, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (127, 600628, '2019-07-01', '上', 1, 1, 1, 0, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (128, 600629, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (129, 600630, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (130, 600631, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (131, 600632, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (132, 600633, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (133, 600634, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (134, 600635, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (135, 600636, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (136, 600637, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (137, 600638, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (138, 600639, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (139, 600640, '2019-07-01', '上', 1, 1, 1, 0, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (140, 600641, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (141, 600642, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (142, 600643, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (143, 600644, '2019-07-01', '上', 1, 1, 1, 0, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (144, 600645, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (145, 600646, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (146, 600647, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (147, 600648, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (148, 600649, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (149, 600650, '2019-07-01', '下', 1, 1, 1, 0, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (150, 600651, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (151, 600652, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (152, 600653, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (153, 600654, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (154, 600655, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (155, 600656, '2019-07-01', '上', 1, 1, 1, 0, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (156, 600657, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (157, 600658, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (158, 600659, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (159, 600660, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (160, 600661, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (161, 600662, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (162, 600663, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (163, 600664, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (164, 600665, '2019-07-01', '下', 1, 1, 1, 0, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (165, 600666, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (166, 600667, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (167, 600668, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (168, 600669, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (169, 600670, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (170, 600671, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (171, 600672, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (172, 600673, '2019-07-01', '下', 1, 1, 1, 0, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (173, 600674, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (174, 600675, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (175, 600676, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (176, 600677, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (177, 600678, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (178, 600679, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (179, 600680, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (180, 600681, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (181, 600682, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (182, 600683, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (183, 600684, '2019-07-01', '上', 1, 1, 1, 0, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (184, 600685, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (185, 600686, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (186, 600687, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (187, 600688, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (188, 600689, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (189, 600690, '2019-07-01', '上', 1, 1, 1, 0, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (190, 600691, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (191, 600692, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (192, 600693, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (193, 600694, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (194, 600695, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (195, 600696, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (196, 600697, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (197, 600698, '2019-07-01', '下', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (198, 600699, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (199, 600700, '2019-07-01', '上', 1, 1, 1, 1, '2019-07-02 04:30:09', 9, 3);
INSERT INTO `register` VALUES (200, 600600, '2020-08-01', '上', 1, 1, 1, 1, '2020-06-12 00:00:00', 9, 1);
INSERT INTO `register` VALUES (201, 600600, '2020-08-01', '上', 1, 1, 1, 1, '2020-06-29 22:32:11', 9, 1);
INSERT INTO `register` VALUES (202, 600600, '2020-08-01', '上', 1, 1, 1, 1, '2020-07-01 00:00:00', 9, 1);
INSERT INTO `register` VALUES (203, 600601, '2020-08-01', '上', 1, 1, 1, 1, '2020-06-03 00:00:00', 9, 1);
INSERT INTO `register` VALUES (204, 600601, '2020-08-01', '上', 1, 1, 1, 1, '2020-06-18 00:00:00', 9, 1);
INSERT INTO `register` VALUES (205, 600601, '2020-08-01', '上', 1, 1, 1, 1, '2020-06-15 00:00:00', 9, 1);
INSERT INTO `register` VALUES (206, 600601, '2020-08-01', '上', 1, 1, 1, 1, '2020-06-17 00:00:00', 9, 1);
INSERT INTO `register` VALUES (207, 600601, '2020-08-01', '下午', 1, 1, 1, 1, '2020-06-17 00:00:00', 9, 2);
INSERT INTO `register` VALUES (208, 600601, '2020-08-02', '上午', 1, 1, 1, 1, '2020-06-17 00:00:00', 9, 0);
INSERT INTO `register` VALUES (209, 600606, '2020-07-04', '上午', 1, 1, 1, 1, '2020-07-04 14:55:58', 9, 2);

-- ----------------------------
-- Table structure for registerlevel
-- ----------------------------
DROP TABLE IF EXISTS `registerlevel`;
CREATE TABLE `registerlevel`  (
  `registerLevelID` int NOT NULL AUTO_INCREMENT,
  `registerLevelCode` varchar(255) ,
  `registerLevelName` varchar(255) ,
  `registerCost` double(6, 2) ,
  `registerLimit` int ,
  PRIMARY KEY (`registerLevelID`) 
) ;

-- ----------------------------
-- Records of registerlevel
-- ----------------------------
INSERT INTO `registerlevel` VALUES (1, 'zjh', '专家号', 1.00, 50);
INSERT INTO `registerlevel` VALUES (2, 'pth', '普通号', 2.00, 8);

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule`  (
  `scheduleID` int NOT NULL AUTO_INCREMENT,
  `scheduleDate` date ,
  `deptID` int ,
  `userID` int ,
  `scheduleNoon` varchar(255) ,
  `scheduleRuleID` int ,
  PRIMARY KEY (`scheduleID`) ,
  FOREIGN KEY (`deptID`) REFERENCES `department` (`deptID`) ,
  FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ,
  FOREIGN KEY (`scheduleRuleID`) REFERENCES `schedulerule` (`scheduleRuleID`) 
) ;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES (1, '2019-04-01', 1, 1, '上午', 1);
INSERT INTO `schedule` VALUES (2, '2019-04-01', 1, 2, '上午', 3);
INSERT INTO `schedule` VALUES (3, '2019-04-01', 1, 3, '上午', 6);
INSERT INTO `schedule` VALUES (4, '2019-04-01', 1, 2, '下午', 3);
INSERT INTO `schedule` VALUES (5, '2019-04-01', 1, 3, '下午', 6);
INSERT INTO `schedule` VALUES (6, '2019-04-02', 1, 2, '上午', 3);
INSERT INTO `schedule` VALUES (7, '2019-04-02', 1, 3, '上午', 6);
INSERT INTO `schedule` VALUES (8, '2019-04-02', 1, 2, '下午', 3);
INSERT INTO `schedule` VALUES (9, '2019-04-02', 1, 3, '下午', 6);
INSERT INTO `schedule` VALUES (10, '2019-04-03', 1, 2, '上午', 3);
INSERT INTO `schedule` VALUES (11, '2019-04-01', 1, 1, '下午', 1);
INSERT INTO `schedule` VALUES (12, '2019-04-03', 1, 3, '上午', 6);
INSERT INTO `schedule` VALUES (13, '2019-04-03', 1, 2, '下午', 3);
INSERT INTO `schedule` VALUES (14, '2019-04-02', 1, 1, '上午', 1);
INSERT INTO `schedule` VALUES (15, '2019-04-03', 1, 3, '下午', 6);
INSERT INTO `schedule` VALUES (16, '2019-04-02', 1, 1, '下午', 1);
INSERT INTO `schedule` VALUES (17, '2019-04-04', 1, 3, '上午', 6);
INSERT INTO `schedule` VALUES (18, '2019-04-03', 1, 1, '上午', 1);
INSERT INTO `schedule` VALUES (19, '2019-04-04', 1, 3, '下午', 6);
INSERT INTO `schedule` VALUES (20, '2019-04-03', 1, 1, '下午', 1);
INSERT INTO `schedule` VALUES (21, '2019-04-05', 1, 3, '上午', 6);
INSERT INTO `schedule` VALUES (22, '2019-04-04', 1, 1, '上午', 1);
INSERT INTO `schedule` VALUES (23, '2019-04-04', 1, 1, '下午', 1);
INSERT INTO `schedule` VALUES (24, '2019-04-05', 1, 1, '上午', 1);
INSERT INTO `schedule` VALUES (25, '2019-03-25', 1, 1, '上午', 10);
INSERT INTO `schedule` VALUES (26, '2019-03-25', 1, 1, '下午', 10);
INSERT INTO `schedule` VALUES (27, '2019-03-26', 1, 1, '上午', 10);
INSERT INTO `schedule` VALUES (28, '2019-03-26', 1, 1, '下午', 10);
INSERT INTO `schedule` VALUES (29, '2019-03-27', 1, 1, '上午', 10);
INSERT INTO `schedule` VALUES (30, '2019-03-27', 1, 1, '下午', 10);
INSERT INTO `schedule` VALUES (31, '2019-03-28', 1, 1, '上午', 10);
INSERT INTO `schedule` VALUES (32, '2019-03-28', 1, 1, '下午', 10);
INSERT INTO `schedule` VALUES (33, '2019-03-29', 1, 1, '上午', 10);

-- ----------------------------
-- Table structure for schedulerule
-- ----------------------------
DROP TABLE IF EXISTS `schedulerule`;
CREATE TABLE `schedulerule`  (
  `scheduleRuleID` int NOT NULL AUTO_INCREMENT,
  `scheduleRuleName` varchar(255) ,
  `deptID` int ,
  `userID` int ,
  `rule` varchar(255) ,
  PRIMARY KEY (`scheduleRuleID`) ,
  FOREIGN KEY (`deptID`) REFERENCES `department` (`deptID`) ,
  FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) 
) ;

-- ----------------------------
-- Records of schedulerule
-- ----------------------------
INSERT INTO `schedulerule` VALUES (1, 'q1', 1, 1, '11111111100000');
INSERT INTO `schedulerule` VALUES (2, 'q1', 2, 6, '11111111110000');
INSERT INTO `schedulerule` VALUES (3, 'q1', 1, 2, '11111100000000');
INSERT INTO `schedulerule` VALUES (4, 'q1', 2, 5, '11111111100000');
INSERT INTO `schedulerule` VALUES (5, 'q1', 2, 4, '11111100000000');
INSERT INTO `schedulerule` VALUES (6, 'q1', 1, 3, '11111111100000');
INSERT INTO `schedulerule` VALUES (7, '周日值班', 2, 6, '00000000001100');
INSERT INTO `schedulerule` VALUES (8, '周日值班', 2, 5, '00000000000011');
INSERT INTO `schedulerule` VALUES (9, 'm1', 2, 6, '00000011110000');
INSERT INTO `schedulerule` VALUES (10, 'b1', 1, 1, '11111111100000');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userID` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) ,
  `password` varchar(255) ,
  `realName` varchar(255) ,
  `userTypeID` int ,
  `participateScheduling` int ,
  `docTitleID` int ,
  `departmentID` int ,
  `registerLevelID` int ,
  PRIMARY KEY (`userID`) ,
  FOREIGN KEY (`userTypeID`) REFERENCES `usertype` (`userTypeID`) ,
  FOREIGN KEY (`docTitleID`) REFERENCES `doctitle` (`docTitleID`) ,
  FOREIGN KEY (`departmentID`) REFERENCES `department` (`deptID`) ,
  FOREIGN KEY (`registerLevelID`) REFERENCES `registerlevel` (`registerLevelID`) 
) ;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'bianque', 'bianque123', '扁鹊', 3, 1, 1, 1, 1);
INSERT INTO `user` VALUES (2, 'fwb', 'fwb123', '张仲景', 3, 1, 1, 1, 2);
INSERT INTO `user` VALUES (3, 'hqb', 'hqb123', '皇甫谧', 3, 1, 1, 1, 2);
INSERT INTO `user` VALUES (4, 'huatuo', 'huatuo123', '华佗', 3, 1, 1, 2, 1);
INSERT INTO `user` VALUES (5, 'xll', 'xll123', '葛洪', 3, 1, 2, 2, 2);
INSERT INTO `user` VALUES (6, 'adq', 'adq123', '孙思邈', 3, 1, 2, 2, 2);
INSERT INTO `user` VALUES (8, 'dd', 'iop888', '钱乙', 1, 0, 2, 9, 2);
INSERT INTO `user` VALUES (9, 'root', 'root', '李时珍', 1, 0, 2, 1, 1);
INSERT INTO `user` VALUES (10, 'ghy', 'ghy123', '挂号收费员', 2, 0, 2, 1, 1);
INSERT INTO `user` VALUES (11, 'admin', 'admin123', '医院管理员', 1, 0, 2, 1, 1);

-- ----------------------------
-- Table structure for usertype
-- ----------------------------
DROP TABLE IF EXISTS `usertype`;
CREATE TABLE `usertype`  (
  `userTypeID` int NOT NULL AUTO_INCREMENT,
  `typeName` varchar(255) ,
  PRIMARY KEY (`userTypeID`) 
) ;

-- ----------------------------
-- Records of usertype
-- ----------------------------
INSERT INTO `usertype` VALUES (1, '管理员');
INSERT INTO `usertype` VALUES (2, '挂号员');
INSERT INTO `usertype` VALUES (3, '医生');

SET FOREIGN_KEY_CHECKS = 1;

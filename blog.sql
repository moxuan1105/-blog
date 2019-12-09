/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 127.0.0.1:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 09/12/2019 16:50:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章标题',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章图片',
  `article` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文章内容',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  `read` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '阅读数',
  `is_draft` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '草稿箱 1 表示 当前是草稿文件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, 'hahahahah', '/upload/images/1c/4d1199812eb27c0eaa35053fa28d41.jpeg', '<p>jdhfjksadjkasdkjasdjkas,mdas;djopasjdflaskjfakljdsha;oskd</p><p>sdabjksdfhalk;fhajkfhaLSDHKAKJSFBNBFASM,NDJKA</p><p>DASD,AMNA.NDSSKLDNAL;SF</p><p>ASDLKANSDFA;SJKFH;LAKFNAMS,Dkldsjklfnajklsnads</p><p>asdlkasfnlas/kdmf;asdasdf大发快放假阿萨德dsakldjafasdf</p><p>akjlfasdljkfad爱仕达多klajsdfaf d案发生的发生离开合法身份进口量</p>', '2019-11-14 10:53:27', '2019-11-14 10:53:27', NULL, 9, 0);
INSERT INTO `article` VALUES (2, 'bbabababa', '/static/blog/images/dva.jpg', '<p>jdhfjksadjkasdkjasdjkas,mdas;djopasjdflaskjfakljdsha;oskd</p><p>sdabjksdfhalk;fhajkfhaLSDHKAKJSFBNBFASM,NDJKA</p><p>DASD,AMNA.NDSSKLDNAL;SF</p><p>ASDLKANSDFA;SJKFH;LAKFNAMS,Dkldsjklfnajklsnads</p><p>asdlkasfnlas/kdmf;asdasdf大发快放假阿萨德dsakldjafasdf</p><p>akjlfasdljkfad爱仕达多klajsdfaf d案发生的发生离开合法身份进口量</p>', '2019-11-27 16:41:17', '2019-11-27 16:41:17', '2019-11-27 16:41:17', 32, 0);
INSERT INTO `article` VALUES (3, 'sdasdasd', '/upload/images/1c/4d1199812eb27c0eaa35053fa28d41.jpeg', '<p>jdhfjksadjkasdkjasdjkas,mdas;djopasjdflaskjfakljdsha;oskd</p><p>sdabjksdfhalk;fhajkfhaLSDHKAKJSFBNBFASM,NDJKA</p><p>DASD,AMNA.NDSSKLDNAL;SF</p><p>ASDLKANSDFA;SJKFH;LAKFNAMS,Dkldsjklfnajklsnads</p><p>asdlkasfnlas/kdmf;asdasdf大发快放假阿萨德dsakldjafasdf</p><p>akjlfasdljkfad爱仕达多klajsdfaf d案发生的发生离开合法身份进口量</p>', '2019-11-27 16:41:20', '2019-11-27 16:41:20', '2019-11-27 16:41:20', 22, 0);
INSERT INTO `article` VALUES (4, 'jhfghgdfh', '/static/blog/images/dva.jpg', '<p>jdhfjksadjkasdkjasdjkas,mdas;djopasjdflaskjfakljdsha;oskd</p><p>sdabjksdfhalk;fhajkfhaLSDHKAKJSFBNBFASM,NDJKA</p><p>DASD,AMNA.NDSSKLDNAL;SF</p><p>ASDLKANSDFA;SJKFH;LAKFNAMS,Dkldsjklfnajklsnads</p><p>asdlkasfnlas/kdmf;asdasdf大发快放假阿萨德dsakldjafasdf</p><p>akjlfasdljkfad爱仕达多klajsdfaf d案发生的发生离开合法身份进口量</p>', '2019-11-27 16:41:22', '2019-11-27 16:41:22', NULL, 7, 0);
INSERT INTO `article` VALUES (5, '撒大声地无群大', '/upload/images/1c/4d1199812eb27c0eaa35053fa28d41.jpeg', '<p>jdhfjksadjkasdkjasdjkas,mdas;djopasjdflaskjfakljdsha;oskd</p><p>sdabjksdfhalk;fhajkfhaLSDHKAKJSFBNBFASM,NDJKA</p><p>DASD,AMNA.NDSSKLDNAL;SF</p><p>ASDLKANSDFA;SJKFH;LAKFNAMS,Dkldsjklfnajklsnads</p><p>asdlkasfnlas/kdmf;asdasdf大发快放假阿萨德dsakldjafasdf</p><p>akjlfasdljkfad爱仕达多klajsdfaf d案发生的发生离开合法身份进口量</p>', '2019-11-27 16:40:33', '2019-11-27 16:40:33', '2019-11-27 16:40:33', 1, 0);
INSERT INTO `article` VALUES (6, 'asdasdasasdasdqweqweqwrqweqw', '/static/blog/images/dva.jpg', '<p>jdhfjksadjkasdkjasdjkas,mdas;djopasjdflaskjfakljdsha;oskd</p><p>sdabjksdfhalk;fhajkfhaLSDHKAKJSFBNBFASM,NDJKA</p><p>DASD,AMNA.NDSSKLDNAL;SF</p><p>ASDLKANSDFA;SJKFH;LAKFNAMS,Dkldsjklfnajklsnads</p><p>asdlkasfnlas/kdmf;asdasdf大发快放假阿萨德dsakldjafasdf</p><p>akjlfasdljkfad爱仕达多klajsdfaf d案发生的发生离开合法身份进口量</p>', '2019-11-27 16:41:25', '2019-11-27 16:41:25', '2019-11-27 16:41:25', 3, 0);
INSERT INTO `article` VALUES (7, 'sdasdasdasfasdasdasdasfadf', '/upload/images/1c/4d1199812eb27c0eaa35053fa28d41.jpeg', '<div><span>&lt;</span><span>script</span><span>&gt;</span><span>alert</span>(<span>\'adas\'</span>)<span>&lt;</span><span>/</span><span>script</span><span>&gt;</span></div>', '2019-11-27 16:40:36', '2019-11-27 16:40:36', '2019-11-27 16:40:36', 3, 0);
INSERT INTO `article` VALUES (8, 'sdasdasdasfasdasdasdasfadf', '/static/blog/images/dva.jpg', '<p>&lt;script&gt;</p><p>alert(\'dasdasf\');</p><p>&lt;/script&gt;</p>', '2019-11-27 16:41:29', '2019-11-27 16:41:29', '2019-11-27 16:41:29', 1, 0);
INSERT INTO `article` VALUES (9, 'dasdasdjhqwjkleyhkqjwhk', '/static/blog/images/dva.jpg', '<p>jksdfhashdsaygdabnsdbcsdkucgiou</p><p>sadjklasdfhgashfk</p><p>asdjaksfghasfadhgasldhjasklfasd</p><p>asdklas;djksdhklsd</p><p>\\asd</p><p>asfasklfhjasdklhalsd</p><p>asdlkjahfaskjld</p><p>asdalksfhasjkfa</p><p>FASFASLK;JFkjsd;lkfjpas;la</p><p>asdlksdn;f;jkasd</p><p>sflkdf;\'asdasdasfasdadad</p>', '2019-11-27 16:41:32', '2019-11-27 16:41:32', '2019-11-27 16:41:32', 3, 0);
INSERT INTO `article` VALUES (10, 'dasdad', '/static/blog/images/dva.jpg', '<p>afaffasdasdjhadf</p><p>dasdjhmgdjkasf</p><p>asdaklfdjaklsdfasd</p><p>asfasdasfgdsg</p><p>asdasf</p><p>gagasdasfgagsda</p>', '2019-11-14 10:53:45', '2019-11-14 10:53:45', '2019-11-14 10:53:45', 0, 0);
INSERT INTO `article` VALUES (11, 'asdasdasdjh', '/static/blog/images/dva.jpg', '<p>jdhfjksadjkasdkjasdjkas,mdas;djopasjdflaskjfakljdsha;oskd</p><p>sdabjksdfhalk;fhajkfhaLSDHKAKJSFBNBFASM,NDJKA</p><p>DASD,AMNA.NDSSKLDNAL;SF</p><p>ASDLKANSDFA;SJKFH;LAKFNAMS,Dkldsjklfnajklsnads</p><p>asdlkasfnlas/kdmf;asdasdf大发快放假阿萨德dsakldjafasdf</p><p>akjlfasdljkfad爱仕达多klajsdfaf d案发生的发生离开合法身份进口量</p>', '2019-11-14 09:18:43', '2019-11-14 09:18:43', NULL, 73, 0);
INSERT INTO `article` VALUES (12, '醉望西楼一腔愁', '/static/blog/images/dva.jpg', '<p>云，缠绵了西楼，朦胧了廊柱，灰暗了琉璃黄瓦，一条斜晖的瓦当横挡着屋檐下散落的碎叶，零零的飘落。远远望去只是雾朦胧下的一团云，飘浮苍廓雾西楼。</p><p>谁砚墨池相思愁，一伞泪流?</p><p>几根丝弦拨弹，落地细雨无言。呢喃弥漫寒凉的夜风，细读窗棂吹瘦的凋零。一把相思的细沙从指缝里泄落着过往云烟，袅袅着断弦下零碎的音符。虚幻散尽，雨随风落，一夜的繁华浮梦，娇艳着光阴里的蚀骨暗冬。</p><p>断望西楼，几鸣夜深的钟声滴答着流年的几世梦殇，回荡着云绕雨雾的黑夜漠然。落花的清晨，弯曲着苍白的昨夜岚枕，湿透了绣锦银衫上的几丝暖意。几支破碎，几片<a href=\"https://www.duanwenxue.com/diary/sinian/\">思念</a>，拼出了石巷里长长的一曲轻笛，凄美婉转。婉莹独壁的朦朦黄亮，模糊昏暗一黛着横瓦上一粒红豆，痴缘着厮守，冰冷的西楼。</p><p>逸望鼓楼的琴台，挑断了弦上曾经的相思。云沉廊桥，遗梦流水，回落的枯叶上还留有横竖笔划，残月映光着唇语缠绵过的口红齿白，一碎梦语里的柔情缕缕。</p><p>孤花独艳，绕不过廊柱上灰灰的尘埃，朦胧的西楼终是一抹幻影。花瓣雨滴一残斑驳，四叶草未必开在心间，菩提树也未必种在心田。清晨的誓言等不到暖阳，酒浓情重也只是黄纸上的几笔撇捺。</p><p>一砚浊墨，飘浮着黄黄的落叶。散发着难闻的腐臭的恶味，尽也是贯穿了俗气风烛的时光下的肮脏。就连清水砚好的一池俊墨只是一晚上就变得不可再闻。时光凭栏处，风雨扫落叶。一江河海埋葬着过去的岁月，再也不能回到昨日。曾经的柔肠百回已经凝冻在严寒的冬雪里，不是几句温暖就可以掩饰不在意。</p><p>细细想来，不就是一阵冬雪，过去就是春天了吗?冰封终是挡不住百花齐放的春天到来。苦寒再冷寂，一炉白梅娇俏，满屋生辉。冬夜再凄冷，一壶执着春色，藏着暖暖的心事。虽然隔空一场，共思一腔愁，落漠处，望西楼。</p><p>繁花横飞，紫烟渺醉。年华落尽三生爱，开花又是三世情。虽共一桥青花云，漫天撕碎万片绿。终一梦里几多爱，相思阵阵风花夜。几醉相知，几杯酒盏，不离不弃是情，安暖分手也是爱。握手言未来，再醉西楼见。</p><p>许是红颜难画，暮云难写，记一腔情愁，不如画一副红梅，花径幽然，薄雾不再。清晰的西楼又现最美的容颜，山临近秀，拂枝回香，拂尽落殇的风尘，还一柱紫红的长廊。近处点点花香，远方簇簇春光。</p><p>曾有醉望过淡淡西楼，曾有过愁思连连情裹琉璃，终是忘却昨日愁漠，晨曦中一朵雪白的花、一片绿翠的叶、一缕夕阳的光、一程相思的云……</p>', '2019-11-16 10:22:17', '2019-11-16 10:22:17', NULL, 116, 0);
INSERT INTO `article` VALUES (13, '未闻花名', '/static/blog/images/dva.jpg', '<p><p style=\"text-align: center;\">山有灵<br>不问出处<br>取一壶清水<br>择行囊向山问<br>山有云<br>千年朝更人不已<br>白骨化泥绿蓑衣<br>红花绿叶世间存<br>不问河东不向西<br>采葭于南春自在<br>徒登望北照芙蕖<br>山有意<br>浅泥避风护夜雨<br>绿叶常伴雨中曲<br>若邀多情山间住<br>怎来偏执韧为期<br>五斗不过碗中食<br>芳菲长存蝶自诩</p></p>', '2019-12-06 15:09:20', '2019-12-06 15:09:20', NULL, 7, 0);
INSERT INTO `article` VALUES (14, '数据结构考试大纲', '/static/blog/images/dva.jpg', '# 数据结构考试大纲\n\n标签 ：复习文档\n\n---\n\n## 第1章 概述\n---\n### 1.概念和术语\n$\\color{red}{数据}$:是能输入到计算机中并能被计算机程序处理的符号的总称。\n$\\color{red}{数据元素}$:是数据的基本单位,它在计算机处理和程序设计中通常作为一个整体进行考虑和处理。一个数据元素可由若干数据项组成。\n$\\color{red}{数据对象}$:是具有相同特征的数据元素的集合,是数据的一个子集。\n$\\color{red}{数据结构}$:是数据元素的组织形式,或数据元素相互之间存在一种或多种特定关系的集合。\n$\\color{red}{数据的逻辑结构}$:是指数据结构中数据元素之间的逻辑关系。\n$\\color{red}{数据的存储结构}$:是数据的逻辑结构在计算机内存中的存储方式,又称物理机构。\n$\\color{red}{数据类型}$:是一组具有相同性质的操作对象以及该组操作对象上的运算方法的集合。\n$\\color{red}{抽象数据类型}$:是指一个数学模型已经在该模型上定义的一套运算规则的集合。\n$\\color{red}{算法}$:建立在数据机构基础上的,为解决问题而采取的步骤和方法。 \n### 2.逻辑结构的四种基本形态\n根据数据元素之间的不同特征,通常有下列四类基本结构:\n(1)$\\color{red}{集合}$:结构中的数据元素间除了\"同属于一个集合\"的关系外,别无其他关系。\n(2)$\\color{red}{线性结构}$:结构找那个的数据元素之间存在一个对一个的关系。\n(3)$\\color{red}{树形关系}$:结构中的数据元素之间存在一个对多个的关系。\n(4)$\\color{red}{图形结构或网状结构}$:结构中的数据元素之间存在多个对多个的关系。\n### 3.数据存储结构的基本组织方式\n数据存储结构有顺序和链式两种方式\n(1)$\\color{red}{顺序存储结构的特点}$:要借助数据元素在存储器中的相应位置来体现数据元素相互间的逻辑关系,常用高级编程语言中的\"一堆数组\"来描述或实现。\n(2)$\\color{red}{链式存储结构的特点}$:通过表示数据存储地址的指针来表示数据元素之间的逻辑关系,通常用链表来实现。\n在顺序存储结构的基础上,有课延伸变化出另外两种存储结构,即索引存储和散列存储。\n(1)$\\color{red}{索引存储}$就是在数据文件的基础上增加了一个索引表文件。通过索引表建立索引,可以把一个顺序表分成几个顺序子表,其目的就是在查询时提高查询效率,避免盲目查找。\n(2)$\\color{red}{散列存储}$就是通过数据元素与存储地址之间建立起某种映射关系,使每个数据元素与每一个存储地址之间精良达到一一对应的目的。这样,查找时间同样可大大提高效率。\n### 4.数据结构的研究内容\n数据结构的核心研究内容包括三个方面:数据的逻辑结构、存储以及相应的基本操作运算的定义和实现。\n### 5.算法的五个重要特征\n(1)$\\color{red}{有穷性}$:一个算法必须保证在执行有限步骤之后结束,而不是无限的。\n(2)$\\color{red}{确定性}$:算法中每一条指令必须有明确的含义,而不是模棱两可的。\n(3)$\\color{red}{可行性}$:每一个操作不走都必须在有限的时间内完成。\n(4)$\\color{red}{输入}$:一个算法可以有一个或多个输出,也可以没有输入。\n(5)$\\color{red}{输出}$:一个算法可以有一个或多个输出,没有输出的算法是没有实际意义的。\n### 6.算法的评价标准\n(1)$\\color{red}{正确性}$。\n(2)$\\color{red}{易读性}$。\n(3)$\\color{red}{高效性}$。\n(4)$\\color{red}{可维护性}$。\n### 7.算法分析的目的\n算法分析主要是指分析算法的效率。算法效率的度量主要从两个方面:算法的运行时间和算法所需的存储空间。分析的目的是通过考察算法的时间和空间效率,以求改进算法或对不同的算法进行比较。一般情况下,鉴于运算空间(内存)较为充足,所以把算法的时间复杂度分析作为重点。\n### 8.算法的时间复杂度分析\n(1)算法运算时间的度量的两种方法:事后统计的方法和事前分析估算的方法。\n(2)算法运行时间的分析规则\n通常把一个程序的运行时间定义为一个T(n),其中n是该程序的抚摸,而不是某一个具体的输入。T(n)的单位是不确定的,一般把他看成在一个特定计算机上执行的指令条数。通常记作:T(n) = O(f(n)),其中f(n)表示数据输入规模。\n常见的算法时间复杂度的形式按性能降序的排列如下:\n>O(1)<O($\\log_2$n)<O(n)<O(n$\\log_2$n)<O($n^2$)<O($n^3$)<O($2^n$)\n### 9.算法空间复杂度的含义\n空间复杂度是对一个算法在运行过程中临时占用存储空间大小度量。算发在计算机存储器内占用的存储空间;算法运行过程红临时占用的存储空间。考虑一个算法的空间复杂度时,要综合分析这三个方面的因素。通常记作:S(n)=O(f(n)),其中n为问题的规模或大小。\n\n---\n## 第2、3章 线性表、栈、队列\n### 1.线性表的定义\n线性表是n个数据元素的有限序列,其中n(n$\\geq$0)为线性表的长度。\n线性表中各个元素的类型相同。对于线性表(a1,a2, $\\ldots$,ai,$\\ldots$,an)而言,数据元素a1没有直接前趋,an没有直接后继,表中的其他元素ai(2$\\leq$i$\\leq$n-1)有且仅一个直接前趋ai-1和直接后继ai+1。\n### 2.顺序表\n顺序表是指线性表的顺序存储结构,即用一组连续的存储单元一次存放线性表的数据元素。在C语言中可用一堆数组来表示。在顺序表中,以数据元素在计算机内\"物理位置相邻\"来表示表中数据元素间的逻辑关系。\n顺序表是一种随机存储结构,只要确定了存储顺序表的起始位置,则表中任一元素都可以随机存取。所以在顺序表中可以方便的进行数据元素的查找即存取,但是在进行插入和删除操作时,将会引起元素的大量移动,因而效率比较低,并且易产生空间浪费或\"上溢\"现象。\n顺序表的操作还应注意元素的存储位置,即数组下表(C语言中下标从0开始)。\n### 3.链表\n链表是线性表的链式储存结构。链表是用一组任意的存储单元(可以是连续的,也可以是不连续的)存放线性表的数据元素。在链表中,可以通过指针来表示元素之间的逻辑关系的,不再有逻辑顺序与存储顺序一致的特点,是非顺序存储结构。在单链表中,每个结点由数据域和指针域组成。数据域保存数据元素的信息,指针域存放其直接后继的存储位置。其类型可描述为:\n```C++\ntypedef struct Node{\n    elemtype data;\n    struct Node *next;\n}LinkList\n```\n单链表有头指针唯一确定,为了方便操作,可在链表的第一个结点之前添加一个表头结点,在链表中进行插入和删除操作只需要修改有关的指针内容,不需要移动元素。因此,链表较顺序表的插入和删除操作更加方便。搞笑。为了便于实现各种运算,若无特许说明,均采用带头结点的链表。\n### 4.栈\n$\\color{red}{栈(Stack)}$是限定尽在表的一端进行插入或删除操作的线性表,通常把允许插入和删除操作的一端成为栈顶(Top),而另一端称为栈底(Bottom),表为空时称为空栈。在栈上的主要运算是入栈和出栈。栈中元素如果按a1,a2,$\\ldots$,an 的顺序进栈,则出栈顺序为an,an-1,$\\ldots$,a1,因此,栈又称为\"后进先出\"(Last In First Out) 的线性表,简称LIFO表。同线性表相似,栈也有顺序栈和链栈两种存储结构。顺序栈易产生\"上溢\"现象,而链栈不容易产生。另外,注意对栈的操作只能在栈顶进行。\n### 5.队列\n$\\color{red}{队列(Queue)}$是限定只能在表的一端进行插入,在表的另一端进行删除的线性表。通常把允许插入的一端称为队尾(rear),允许删除的一端称为队头(front),队列中元素如果按 a1,a2,$\\ldots$, an 的顺序进队,则出队的顺序仍为a1, a2, $\\ldots$, an。 因此,队列又称为\"先进先出\"(First In First Out)的线性表,简称FIFO表。\n队列也有顺序队列和链队列两种存储结构。在顺序队列中,为避免\"假满\"现象,一般采用循环队列(即首尾相接),链队列会因为队满而产生\"上溢\"现象。\n\n---\n## 第4章 串\n### 1.概念和术语\n$\\color{red}{ 串(String)(或字符串) }$:是由零个或多个自读组成的有限序列,一般记为s=\"$a^1a^2$\\ldots$a^n$\"(n$\\geq$0)\n其中,s是串的名,用双引号括起来的字符串序列是串的值。\n$\\color{red}{串的长度}$:串中字符的个数n。\n$\\color{red}{子串和主串}$:串中人一个连续的字符组成的子序列称为改串的子串,包含子串的串相应地称为主串。\n$\\color{red}{空串}$:不包含任何字符的串,表示为\"$\\Phi$\"。\n$\\color{red}{空格串}$:由一个或多个空格字符组成的串,例如:\"&emsp;&emsp;\";\n### 2.串的基本操作\n (1)用串变量渎职(assign(s,t))和用串常亮赋值create(s,ss)\n (2)判等函数 equal(s,t)\n (3)求长函数 length(s)\n (4)连接函数 concat(s,t)\n (5)求子串函数 substring(s,pos,len)\n (6)定位函数 index(s,t)\n (7)置换函数 replace(s,t,v)\n (8)插入子串 insert(s,pos,t)\n (9)删除子串 delete(s,pos,k)\n (10)串的赋值 copy(s,t)\n### 3.串的顺序存储结构(顺序串)\n串的顺序存储方式类似于线性表的顺序存储结构,其存储结构用C语言描述为:\n```C++\ntypedef struct strnode{\n    char data[maxlen];\n    int len;\n}SeqString  // 定义顺序串类型\n\n```\n\n---\n\n## 第5章 数组和广义表\n### 1.多维数组的顺序存储结构\n对于多维数组,有两种存储方式:\n一是以行为主序(或先行后列)的顺序存放,如BASIC、PASCAL、C 等程序设计语言中用的是以行为主的顺序分配,即一行分配完了接着分配下一行。\n另一种是以列为主序(先列后行)的顺序存放,如FORTRAN语言中,用的是以列为主序的分配顺序,即一列一列地分配。\n以行为主序的分配规律是:最右边的下标先变化,即最有下标从小到大,循环一遍后,右边第二个下标再变,$\\ldots$,从右向左,最后是左下标,以列为主序分配的规律是:最左边额下标先变化,即最左下标从小到大,循环一遍后,左边第二个下标在变,$\\ldots$,从左向右,最后是右下标。\n\n不论是按何种方式存储,只要确定了数组的首地址以及每个数组元素所占用的单元数,就可以将数组元素的存储地址表示为其下标的线性函数。设有m${\\tt x}$n二维数组Amn,以\"以行为主序\"的分配为例,按照元素的下标确定其地址的计算方法如下：\n设数组的基址为LOC(all),每个数组元素占据L个地址单元,计算aij 的物理地址的函数为:\nLOC(aij) = LOC(a11) + ((i-1)\\*n+j-1)+L\n同理,对于三维数组Amnp,即m${\\tt x}$a${\\tt x}$p 数组,对于数组元素aijk 其物理地址为: \n LOC(aijk) = LOC(a111) + ((i-1)\\*n\\*p+(j-i)\\*p+k-1)*L\n 注意:在C语言中,数组中每一维的下界定义为0,则:\n LOC(aij) = LOC(a00)+(i\\*n+j)\\*L\n ### 2.特殊矩阵压缩存储的意义\n 在很多科学计算与工程中,经常要使用矩阵的概念。矩阵具有与数组相似的性质,如元素数目固定、元素按下标关系有序地排列,所以在编程时可以利用二维数组来存储矩阵,也可以利用程序设计语言中的各种矩阵运算。\n 在某些情况下,特别是在数值分析中,经常会出现一些阶数很高的矩阵,其中含有许多值相同的元素或零元素,如三角矩阵、对称矩阵、稀疏矩阵等,从节约存储空间的角度考虑,此时若用二维数组存储会造成空间的极大浪费,为了节省存储空间,可以对这类矩阵进行压缩存储。即为对多个相同值得元素只分配一个存储空间,而对零元素可以不分配空间。\n ### 3.对称矩阵压缩存储的方法\n 对称矩阵的特点是:在一个n 阶方阵中,有aij = aji,其中1$\\leq $i, j$\\leq$n。\n 对称矩阵关于主对角线对称,因此只需存储上三角或下三角即可。\n 对于对称矩阵中的任意元素aij,若令I=max(i,j),J=min(i,j),则将上面两个式子综合起来得到:k=I\\*(I-1)/2+J-1。给出对称矩阵A中任意元素aij,依据它的下标 i 和 j 就可由上述对应股爱惜式确定骑在数组M中的位置K,因此aij的地址可由下式计算。\n Loc(aij)=Loc(M\\[K])=Loc(M\\[0])+K\\*L = Loc(M\\[0])+\\[I\\*(I+1)/2+J]\\*L\n 其中:L为每个数据元素所占的存储单元长度。\nI=max(i,j)。\nJ=min(i,j)。\nK=I\\*(I+1)/2+J。\n### 4.三角矩阵压缩存储的方法\n形如图的矩阵称为三角矩阵,其中c为某个常数。其中下面图(a)为下三角矩阵:主对角线以上均为同一个常数;(b)为上三角矩阵,主对角线一下均为同一个常数;下面讨论他们的压缩存储方法。\n$$ \\begin{bmatrix} 3 & c & c &c & c \\\\ 6 & 2 & c & c & c\\\\ 4 & 8 & 1 & c & c \\\\ 7 & 4 & 6 & 0 & c \\\\ 8 & 2 & 9 & 5 & 7 \\end{bmatrix} $$\n\n$$(a) 下三角矩阵 $$\n\n$$ \\begin{bmatrix} 3 & 4 & 8 &1 & 0 \\\\ c & 2 & 9 & 4 & 6\\\\ c & c & 1 & 5 & 7 \\\\ c & c & c & 0 & 8 \\\\ c & c & c & c & 7 \\end{bmatrix} $$\n\n$$(b) 上三角矩阵 $$\n\n三角矩阵中的重复元素c可以共享一个存储空间,其余元素有n(n+1)/2个,因此可压缩存储到向量sa\\[0$\\ldots$(n+1)/2]中,c存放在向量的最后一个分量重,排列时以行序为主。$a^{ij}$和sa\\[k]的对应关系是:\n下三角矩阵\n$$k= \\begin{cases}\n    i*(i-1)/2+j-1, &\\text{$当i \\geq j$} \\\\ n*(n+1)/2 , & \\text{$当i>j $}\n\\end{cases} $$\n\n上三角矩阵:\n$$k= \\begin{cases} \n    (i-1) * (2n-i+2)/2+j-i, &\\text{$当i \\leq j$} \\\\ n*(n+1)/2 ,&\\text{ $当i > j$}\n\\end{cases} $$\n### 5.稀疏矩阵及其压缩存储的特点\n设m$*$n矩阵中有t个非零元素且t << m\\*n,这样的矩阵陈伟稀疏矩阵。稀疏矩阵的压缩存储采取如下方法:将非零元素所在行、列以及他的值构成一个三元组(i,j,v),然后在按某种规律存储这些三元组,这种方法可以节约存储空间。\n### 6.稀疏矩阵压缩存储的顺序存储方式\n以顺序方式组织存储时常用的方法时三元组顺序表,方法是:将三元组按行优先的顺序,同一行中列号从小到大的规律排列成一个线性表,采用顺序存储方法存储该表。\n### 7.稀疏矩阵压缩的链式存储方式\n稀疏矩阵压缩的链式存储方式,即十字链表。当矩阵中非零元素的个数和位置在使用中经常发生变化时,不宜采用顺序存储结构,可采用十字链表进行存储。其结点结构如图所示。\n|row|col|v|\n|:-|:-:|:-:|\n|Down|-|right|\n\n### 8.广义表(列表)的定义、术语及它与线性表的关系\n广义表\na1,a2,$\\ldots$,ai,$\\ldots$,an的有序序列,一般记作:Ls = (a1,a2,$\\ldots$,ai,$\\ldots$,an)。\n其中:Ls是广义表的名称,n是它的长度,每个ai(1$\\leq$i$\\leq$)是Ls的成员,它可以是单个元素,也可以是一个广义表,分别称为广义表的单元表和子表。当广义表Ls非空时,称第一个元素a1为Ls的表头(head),称其余元素组成的表(a2,$\\ldots$,ai,$\\ldots$,an)为Ls的表尾(tail)。\n表的深度:表中元素的最深嵌套层数。\n广义表与线性表的关系:当广义表Ls中的元素全是原子时,广义表即为线性表。因此,可认为线性表是广义表的特例,广义表是线性表的推广。\n### 9.广义表的三个重要性质\n(1)广义表是一种多层次的数据结构。广义表的元素可以是氮元素,也可以是子表,而子表的元素还可以是子表,$\\ldots$。\n(2)广义表可以是递归的表。广义表的定义并没有限制元素的递归,即广义表也可以是其自身的子表。例如表E就是递归的表。\n(3)广义表可以为其他表所共享。例如,表A、表B、表C是表D的共享子表,在D找那个可以不必列出子表的值,二用子表的名称来引用。\n### 10.广义表的存储结构\n按结点形式的不同,广义表的链式存储结构克分为两种不同的存储方式,一种称为头尾表示法,另一种陈伟孩子兄弟表示法。\n### 11.广义表的基本运算\n广义表有连个重要的基本操作,即取头操作(Head)和取尾操作(Tail)。\n此外,在广义表上可以定义与线性表类似的一些操作,如建立、插入、删除、拆开、连接、复制、遍历等。\n\n---\n## 第6章 树\n>从对线性结构的研究到对树形结构的研究,是数据结构课程学习的一次跃变。\n### 1.理解树的递归定义\n树(Tree)是零个或多个结点的有限集合。结点数为0的树称为空数，结点数大于0的树称为非空树，在一个非空树中：\n(1)有且仅有一个特定的称为根(root)的结点；\n(2)当结点数大于1时，除根结点外，其他结点被分为n(n>0)个互不相交的子集：\nT1,T2,$\\cdots$,Tn,其中每个子集本身又是一颗树(称之为子树)，每一颗子树的根xi(1$\\leq$i$\\leq$n)都是跟结点root的后继，树T1,T2,$\\cdots$,Tn称为根的子树。\n### 2.掌握树的基本概念\n结点的度(Degree)：是指结点拥有的子树的数目。\n叶子或终端结点：是指度为0的结点。\n非终端结点或分支结点：是指度不为0的结点。\n树的度：是指树内结点的度的最大值。\n孩子(Child)和双亲(Parent)：某个结点的子树的根称为改结点的孩子，相应的，改结点称为其孩子的双亲。\n兄弟：同一个双亲的孩子结点互为兄弟。\n结点的层次：规定根所在的层次为第一层，根的孩子在第二层，以此类推。\n树的深度或高度：书中结点最大的层数。\n有序树：是指树中结点的各子树从左至右是有序的，否者称为无序树。\n森林：是指n(n$\\geq$0)棵互不相交的树的集合。\n### 3.理解二叉树的递归定义及其与树的区别\n二叉树(Binary Tree)是结点的有限集合，这个集合或者为空，或者是由一个根结点或两棵互不相交的分别称为左子树和右子树的二叉树组成。二叉树中的每个结点至多有两棵子树，且子树有左右之分，次序不能颠倒。\n二叉树是一种重要的树形结构，但二叉树不是输的特例。二叉树的5种形态分别为：空二叉树，只有根节点的二叉树，根结点和左子树，根结点和右子树，根结点和左右子树。\n二叉树与树的区别：二叉树中每个结点的孩子至多不超过两个，而树对结点的孩子数无限制，另外二叉树中结点的子树有左右之分，而树的子树没有次序。\n### 4.掌握二叉树和完全二叉树的概念\n满二叉树(Full Binary Tree)和完全二叉树(Complete Binary Tree)，是两种特殊形态的二叉树。\n一棵深度为k且有2k-1个结点的二叉树称为满二叉树。\n深度为k，有n个结点的二叉树，当且仅当其每一个结点都与深度为k的满二叉树编号从1至n的结点一一对应，称之为完全二叉树。\n完全二叉树的特点是：\n(1)只允许最后一层有空缺结点且空缺在右边，即叶子结点只能在层次最大的两层上出现。\n(2)对任意结点，如果其右子树的深度为j，则其左子树的深度必为j或j+1。\n### 5.理解二叉树的性质\n已知二叉树的深度h可求出改二叉树拥有的最多结点数，已知结点数n可求出对应树或二叉树的最大和最小高度。\n性质1：在二叉树的第i层上最多有2i-1个结点(i$\\geq$1)。\n性质2：深度为k的二叉树最多有2k-1个结点(k$\\geq$1)。\n性质3：对任何一棵二叉树T,如果其终端结点数为n0，度为2的结点数为n2，则n0=n2+1。\n性质4：具有n个结点的完全二叉树的深度$\\log_2n$+1.\n性质5：如果对一棵有n个结点的完全二叉树(其深度为$\\log_2n$+1，其中k为不大于$\\log_2n$的最大整数)的结点按层序编号(编号方法为从第一层到最后一层，每一层从左到右)，则对任一结点有\n(1) 如果i=1，则结点i是二叉树的根，无双亲；如果i>1,则其双亲是第i/2个结点。\n(2) 如果2i>n，则结点i无左孩子(即结点i为叶子结点)；否则其左孩子是第2i个结点。\n(3) 如果2i+1>n，则结点i无左右孩子；否则其右孩子是第2i+1个结点。\n### 6.二叉树结点的编号规则和对应的顺序存储结构\n顺序存储二叉树的具体方法是：在一棵具有n个结点的完全二叉树中，从根结点开始编号为1，自上到下，每层自左至右地给所有结点编号，这样可以得到一个反应整个二叉树结构的线性序列；然后将完全二叉树上编号为i的结点依次存储在一维数组a\\[1$\\ldots$n]中下标为i的元素中。\n### 7.二叉树的链接存储结构及存储结点的类型定义\n链式结构是使用链表来存储二叉树中的数据元素，链表中的一个结点相应地存储二叉树中的一个结点。常见的二叉树的链式存储结构有两种；二叉链表和三叉链表。\n二叉链表是指链表中的每个结点包含两个指针域和一个数据域，分别用来存储指向二叉树中结点的左右孩子的指针及结点信息。\n三叉链表是指链表中的每个结点包含三个指针域和一个数据域，相比二叉链表多出的一个指针域则用来指向该结点的双亲结点。\n不论哪种链表，头指针都指向二叉树的根结点。\n在含有n个结点的二叉链表中，共有2n个指针域，但实际有效的指针树等于二叉树中的分支数(即n-1)，所以共存在n+1个空的指针域。\n### 8.掌握二叉树的先序、中序、后序遍历的递归算法和非递归算法。\n\n### 9.能够根据先序+中序、后序+中序的遍历确定一棵二叉树，并理解为什么先序+后序不能确定一棵二叉树。\n\n### 10.掌握线索二叉树的定义及存储结构，会画出先序、中序和后序线索二叉树或相应的线索链表。\n\n### 11.掌握遍历中序线索二叉树的规划及算法。\n\n### 12.掌握树的三种存储结构；双清表示法、孩子表示法、孩子/兄弟表示法，掌握这三种存储方法的特点，并且能够画出指定树的存储结构图。\n\n### 13.理解二叉树与森林转换的目的，掌握树和二叉树之间的相互装换，掌握森林和二叉树之间的相互装换。\n\n### 14.掌握树的先根、后根和按层遍历的过程。\n\n### 15.掌握森林的先根、后根遍历。具有n个结点的完全二叉树的深度\n\n### 16.掌握路径、路径长度、结点的权、结点的带权路径长度、树的带权路径长度的概念。\n路径：若在树中存在着一个结点序列k1，k2，$\\ldots$，kj，使得ki是ki+1的双亲(1$\\leq$i$\\leq$j)，则此结点序列称为从k1到kj的路径。\n路径长度：从k1到kj所经过的分支数称为这两点之间的路径长度，他等于路径上的结点数减1。\n结点的权：在许多应用中，常常将树中的某个结点的赋上一个具有某种意义的数值，这个和某个结点相关的数值称为该结点的权或权值。\n结点的带权路径长度：是指从树根到该结点之间的路径长度与结点的权值的乘积。\n树的带权路径长度：是指树中所有叶子结点的带权路径长度之和，通常记作$$WPL=\\sum_{i=1}^n{W_iL_i}$$。其中n表示叶子结点的个数，$W_i$表示叶子结点$K_i$的权值，$L_i$表示根结点到$K_i$的路径长度。\n\n### 17.掌握哈夫曼树的概念。\n哈夫曼树(Huffman Tree)：又称为最优二叉树，它是n个带权的叶子结点构成的所有二叉树中带权路径长度WPL最小的二叉树。\n\n### 18.掌握哈夫曼树的构造方法，即根据一组给定的权值构造相应的哈夫曼树。\n\n### 19.理解哈夫曼编码的含义，能根据实际问题构造哈夫曼编码。\n\n\n## 第7章 图\n### 1.基本概念及术语\n\n', '2019-12-09 14:29:33', '2019-12-09 14:29:33', NULL, 22, 0);

-- ----------------------------
-- Table structure for article_category
-- ----------------------------
DROP TABLE IF EXISTS `article_category`;
CREATE TABLE `article_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NULL DEFAULT NULL COMMENT '文章id',
  `category_id` int(11) NULL DEFAULT NULL COMMENT '文章类别id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章  文章类别中间表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章类别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章类别' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` int(10) UNSIGNED NOT NULL COMMENT '文章id',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '昵称',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `comment` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply_id` int(10) NULL DEFAULT NULL COMMENT '回复评论id',
  PRIMARY KEY (`id`, `article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 12, '墨轩', '2019-11-28 17:05:08', '45645464大苏打撒旦', NULL);
INSERT INTO `comment` VALUES (2, 12, 'gsdfsdghgsfgsdfgsdf', '2019-11-28 17:30:09', 'dffsdsdffgsertsefsdfs', 1);
INSERT INTO `comment` VALUES (3, 12, '瑾轩', '2019-11-30 16:08:36', 'dasdafadsfasfdasda', 2);
INSERT INTO `comment` VALUES (4, 12, 'DSAADAFASF', '2019-12-05 16:46:51', 'ADASDASDAADAF', NULL);
INSERT INTO `comment` VALUES (5, 11, 'moxuan', '2019-12-05 17:06:11', 'saddsasadadsda', NULL);
INSERT INTO `comment` VALUES (6, 11, 'moxuan', '2019-12-05 17:07:42', 'saddsasadadsda', NULL);
INSERT INTO `comment` VALUES (7, 11, 'moxuan', '2019-12-05 17:07:56', 'dasdasdas', NULL);
INSERT INTO `comment` VALUES (8, 11, '墨轩', '2019-12-05 17:08:35', 'asdasdsa', NULL);
INSERT INTO `comment` VALUES (9, 11, '瑾轩', '2019-12-05 17:25:15', '大数据合计合计回款', NULL);
INSERT INTO `comment` VALUES (10, 11, '瑾轩', '2019-12-05 17:25:33', '大萨达大所多', NULL);
INSERT INTO `comment` VALUES (11, 11, '々好奇萌宝〃', '2019-12-06 10:39:31', '地下城与勇士', NULL);
INSERT INTO `comment` VALUES (12, 11, '黄剑龙', '2019-12-06 10:41:55', '哈哈哈哈', NULL);
INSERT INTO `comment` VALUES (13, 11, '啊啊啊', '2019-12-06 10:42:07', '我欧了', NULL);
INSERT INTO `comment` VALUES (14, 11, '啊啊', '2019-12-06 10:44:03', '啊啊啊啊', NULL);
INSERT INTO `comment` VALUES (15, 11, '1', '2019-12-06 10:45:26', '11111', NULL);
INSERT INTO `comment` VALUES (16, 11, '11111', '2019-12-06 10:45:45', '111231231', NULL);
INSERT INTO `comment` VALUES (17, 11, '123', '2019-12-06 10:46:40', '大声道撒大所多', NULL);
INSERT INTO `comment` VALUES (18, 11, '11234', '2019-12-06 14:02:12', '大萨达所大所多', NULL);
INSERT INTO `comment` VALUES (19, 11, '阿萨阿迪', '2019-12-06 14:02:37', '奥德赛撒多所大', NULL);
INSERT INTO `comment` VALUES (20, 11, 'asd', '2019-12-06 14:05:00', '撒大大所', NULL);
INSERT INTO `comment` VALUES (21, 11, 'aaaa', '2019-12-06 14:10:39', 'asdasasdqweqweqw', NULL);
INSERT INTO `comment` VALUES (22, 11, 'asda', '2019-12-06 14:11:52', 'asdasdasda', NULL);
INSERT INTO `comment` VALUES (23, 12, 'sdafasdadfasdasd', '2019-12-06 14:59:01', '回复@瑾轩 :dasdasdasddasdasd', NULL);
INSERT INTO `comment` VALUES (24, 12, 'sdadafasd', '2019-12-06 14:59:10', 'fasdaeqweqwasdasd', NULL);
INSERT INTO `comment` VALUES (25, 12, '黄剑龙', '2019-12-06 15:00:38', '回复@DSAADAFASF :asdhuashdaksjdhajskdhui', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录名',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '显示名称',
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` datetime(0) NOT NULL COMMENT '创建时间',
  `modified_time` datetime(0) NOT NULL COMMENT '修改时间',
  `is_del` smallint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0 使用   1 删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'F7689968', 'moxuan', '$2y$10$lYnJeJd9A3cUG0zoM4XG2OZAASgRUlK4MWgoXN0/2CV8NpMHg9cf.', '2019-10-16 10:44:53', '2019-10-29 17:28:45', 0);
INSERT INTO `user` VALUES (2, 'F7688775', '黄剑龙', '$2y$10$yXgPkmr6czIzK7V13kCP/epTgjLU.lBoRULvRoVWPKkn/F/mwbBuu', '2019-10-30 14:16:16', '2019-10-30 14:16:16', 0);
INSERT INTO `user` VALUES (3, 'F8547', '5114', '$2y$10$2WoNR1x54NZnRWPXWhbfVeSDuAM.o0Urx79OvRMSGCXlFZpYgeHpa', '2019-10-30 14:17:24', '2019-10-30 14:17:24', 0);

SET FOREIGN_KEY_CHECKS = 1;

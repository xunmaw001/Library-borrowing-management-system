-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmx1x74
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmx1x74/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmx1x74/upload/1612183696505.jpg'),(3,'picture3','http://localhost:8080/jspmx1x74/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstushuguanxinxi`
--

DROP TABLE IF EXISTS `discusstushuguanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstushuguanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612183828024 DEFAULT CHARSET=utf8 COMMENT='图书馆信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstushuguanxinxi`
--

LOCK TABLES `discusstushuguanxinxi` WRITE;
/*!40000 ALTER TABLE `discusstushuguanxinxi` DISABLE KEYS */;
INSERT INTO `discusstushuguanxinxi` VALUES (121,'2021-02-01 11:14:08',1,1,'评论内容1','回复内容1'),(122,'2021-02-01 11:14:08',2,2,'评论内容2','回复内容2'),(123,'2021-02-01 11:14:08',3,3,'评论内容3','回复内容3'),(124,'2021-02-01 11:14:08',4,4,'评论内容4','回复内容4'),(125,'2021-02-01 11:14:08',5,5,'评论内容5','回复内容5'),(126,'2021-02-01 11:14:08',6,6,'评论内容6','回复内容6'),(1612183828023,'2021-02-01 12:50:27',1612183551807,1612183734335,'很不错的图书馆',NULL);
/*!40000 ALTER TABLE `discusstushuguanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstushuxinxi`
--

DROP TABLE IF EXISTS `discusstushuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612183866378 DEFAULT CHARSET=utf8 COMMENT='图书信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstushuxinxi`
--

LOCK TABLES `discusstushuxinxi` WRITE;
/*!40000 ALTER TABLE `discusstushuxinxi` DISABLE KEYS */;
INSERT INTO `discusstushuxinxi` VALUES (131,'2021-02-01 11:14:08',1,1,'评论内容1','回复内容1'),(132,'2021-02-01 11:14:08',2,2,'评论内容2','回复内容2'),(133,'2021-02-01 11:14:08',3,3,'评论内容3','回复内容3'),(134,'2021-02-01 11:14:08',4,4,'评论内容4','回复内容4'),(135,'2021-02-01 11:14:08',5,5,'评论内容5','回复内容5'),(136,'2021-02-01 11:14:08',6,6,'评论内容6','回复内容6'),(1612183866377,'2021-02-01 12:51:06',1612183640651,1612183734335,'很好的书',NULL);
/*!40000 ALTER TABLE `discusstushuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaonafajin`
--

DROP TABLE IF EXISTS `jiaonafajin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaonafajin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuedanhao` varchar(200) DEFAULT NULL COMMENT '借阅单号',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `fakuanshuoming` varchar(200) DEFAULT NULL COMMENT '罚款说明',
  `fakuanjine` float DEFAULT NULL COMMENT '罚款金额',
  `fakuanriqi` date DEFAULT NULL COMMENT '罚款日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612184182544 DEFAULT CHARSET=utf8 COMMENT='缴纳罚金';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaonafajin`
--

LOCK TABLES `jiaonafajin` WRITE;
/*!40000 ALTER TABLE `jiaonafajin` DISABLE KEYS */;
INSERT INTO `jiaonafajin` VALUES (81,'2021-02-01 11:14:08','借阅单号1','图书编号1','图书名称1','罚款说明1',1,'2021-02-01','用户名1','姓名1','未支付'),(82,'2021-02-01 11:14:08','借阅单号2','图书编号2','图书名称2','罚款说明2',2,'2021-02-01','用户名2','姓名2','未支付'),(83,'2021-02-01 11:14:08','借阅单号3','图书编号3','图书名称3','罚款说明3',3,'2021-02-01','用户名3','姓名3','未支付'),(84,'2021-02-01 11:14:08','借阅单号4','图书编号4','图书名称4','罚款说明4',4,'2021-02-01','用户名4','姓名4','未支付'),(85,'2021-02-01 11:14:08','借阅单号5','图书编号5','图书名称5','罚款说明5',5,'2021-02-01','用户名5','姓名5','未支付'),(86,'2021-02-01 11:14:08','借阅单号6','图书编号6','图书名称6','罚款说明6',6,'2021-02-01','用户名6','姓名6','未支付'),(1612184182543,'2021-02-01 12:56:22','20212120511047800215','1612183584','晚熟的人','',10,'2021-03-19','1','陈一','已支付');
/*!40000 ALTER TABLE `jiaonafajin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612183919371 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (111,'2021-02-01 11:14:08',1,'用户名1','留言内容1','回复内容1'),(112,'2021-02-01 11:14:08',2,'用户名2','留言内容2','回复内容2'),(113,'2021-02-01 11:14:08',3,'用户名3','留言内容3','回复内容3'),(114,'2021-02-01 11:14:08',4,'用户名4','留言内容4','回复内容4'),(115,'2021-02-01 11:14:08',5,'用户名5','留言内容5','回复内容5'),(116,'2021-02-01 11:14:08',6,'用户名6','留言内容6','回复内容6'),(1612183919370,'2021-02-01 12:51:58',1612183734335,'1','请问励志类的书可以借阅多少天','也是30天');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612183682628 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-02-01 11:14:08','标题1','简介1','http://localhost:8080/jspmx1x74/upload/news_picture1.jpg','内容1'),(102,'2021-02-01 11:14:08','标题2','简介2','http://localhost:8080/jspmx1x74/upload/news_picture2.jpg','内容2'),(103,'2021-02-01 11:14:08','标题3','简介3','http://localhost:8080/jspmx1x74/upload/1612180293534.jpg','内容3\r\n'),(104,'2021-02-01 11:14:08','标题4','简介4','http://localhost:8080/jspmx1x74/upload/news_picture4.jpg','内容4'),(105,'2021-02-01 11:14:08','标题5','简介5','http://localhost:8080/jspmx1x74/upload/1612180302782.jpg','内容5\r\n'),(106,'2021-02-01 11:14:08','标题6','简介6','http://localhost:8080/jspmx1x74/upload/news_picture6.jpg','内容6'),(1612183682627,'2021-02-01 12:48:02','公告信息A','','http://localhost:8080/jspmx1x74/upload/1612183671693.jpg','公告信息\r\n<img src=\"http://localhost:8080/jspmx1x74/upload/1612183680518.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmx1x74/upload/1612183680518.jpg\">\r\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612183858717 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1612183820790,'2021-02-01 12:50:20',1612183734335,1612183551807,'tushuguanxinxi','广州图书馆','http://localhost:8080/jspmx1x74/upload/1612183509950.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','8oqrpine1zsgcgys0chbst2wd85fnupl','2021-02-01 11:47:02','2021-02-01 13:55:35'),(2,11,'用户1','yonghu','用户','bdyevdkxvcj4poimh164ooiqibo9xro7','2021-02-01 12:20:37','2021-02-01 13:20:37'),(3,1612183734335,'1','yonghu','用户','mxof7fod8o8b1qhhkxauwn407cpzqp5z','2021-02-01 12:48:59','2021-02-01 13:58:15');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuguanxinxi`
--

DROP TABLE IF EXISTS `tushuguanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuguanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushuguanmingcheng` varchar(200) NOT NULL COMMENT '图书馆名称',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `jianguanshijian` date DEFAULT NULL COMMENT '建馆时间',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `tushuguanjieshao` longtext COMMENT '图书馆介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612183551808 DEFAULT CHARSET=utf8 COMMENT='图书馆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuguanxinxi`
--

LOCK TABLES `tushuguanxinxi` WRITE;
/*!40000 ALTER TABLE `tushuguanxinxi` DISABLE KEYS */;
INSERT INTO `tushuguanxinxi` VALUES (21,'2021-02-01 11:14:08','图书馆名称1','http://localhost:8080/jspmx1x74/upload/1612180044073.jpg','2021-02-01','联系电话1','地址1','图书馆介绍1'),(22,'2021-02-01 11:14:08','图书馆名称2','http://localhost:8080/jspmx1x74/upload/1612180052247.jpg','2021-02-01','联系电话2','地址2','图书馆介绍2'),(23,'2021-02-01 11:14:08','图书馆名称3','http://localhost:8080/jspmx1x74/upload/1612180060268.jpg','2021-02-01','联系电话3','地址3','图书馆介绍3'),(24,'2021-02-01 11:14:08','图书馆名称4','http://localhost:8080/jspmx1x74/upload/1612180065995.jpg','2021-02-01','联系电话4','地址4','图书馆介绍4'),(25,'2021-02-01 11:14:08','图书馆名称5','http://localhost:8080/jspmx1x74/upload/1612180074661.jpg','2021-02-01','联系电话5','地址5','图书馆介绍5'),(26,'2021-02-01 11:14:08','图书馆名称6','http://localhost:8080/jspmx1x74/upload/1612180090082.jpg','2021-02-01','联系电话6','地址6','图书馆介绍6'),(1612183551807,'2021-02-01 12:45:51','广州图书馆','http://localhost:8080/jspmx1x74/upload/1612183509950.jpg','2020-08-03','020-83839820','广州市珠江东路','是广州文化窗口，2018年被评为以及图书馆');
/*!40000 ALTER TABLE `tushuguanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuguihai`
--

DROP TABLE IF EXISTS `tushuguihai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuguihai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuedanhao` varchar(200) DEFAULT NULL COMMENT '借阅单号',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `kejietianshu` varchar(200) DEFAULT NULL COMMENT '可借天数',
  `tushuguanmingcheng` varchar(200) DEFAULT NULL COMMENT '图书馆名称',
  `jieyueriqi` varchar(200) DEFAULT NULL COMMENT '借阅日期',
  `guihairiqi` date DEFAULT NULL COMMENT '归还日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612184118512 DEFAULT CHARSET=utf8 COMMENT='图书归还';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuguihai`
--

LOCK TABLES `tushuguihai` WRITE;
/*!40000 ALTER TABLE `tushuguihai` DISABLE KEYS */;
INSERT INTO `tushuguihai` VALUES (71,'2021-02-01 11:14:08','借阅单号1','图书编号1','图书名称1','可借天数1','图书馆名称1','借阅日期1','2021-02-01','备注1','用户名1','姓名1','是',''),(72,'2021-02-01 11:14:08','借阅单号2','图书编号2','图书名称2','可借天数2','图书馆名称2','借阅日期2','2021-02-01','备注2','用户名2','姓名2','是',''),(73,'2021-02-01 11:14:08','借阅单号3','图书编号3','图书名称3','可借天数3','图书馆名称3','借阅日期3','2021-02-01','备注3','用户名3','姓名3','是',''),(74,'2021-02-01 11:14:08','借阅单号4','图书编号4','图书名称4','可借天数4','图书馆名称4','借阅日期4','2021-02-01','备注4','用户名4','姓名4','是',''),(75,'2021-02-01 11:14:08','借阅单号5','图书编号5','图书名称5','可借天数5','图书馆名称5','借阅日期5','2021-02-01','备注5','用户名5','姓名5','是',''),(76,'2021-02-01 11:14:08','借阅单号6','图书编号6','图书名称6','可借天数6','图书馆名称6','借阅日期6','2021-02-01','备注6','用户名6','姓名6','是',''),(1612184118511,'2021-02-01 12:55:17','20212120511047800215','1612183584','晚熟的人','30','广州图书馆','2021-02-01','2021-03-19','','1','陈一','是','超过归还日期10天，产生了10元罚金');
/*!40000 ALTER TABLE `tushuguihai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushujieyue`
--

DROP TABLE IF EXISTS `tushujieyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushujieyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuedanhao` varchar(200) DEFAULT NULL COMMENT '借阅单号',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushuguanmingcheng` varchar(200) DEFAULT NULL COMMENT '图书馆名称',
  `kejietianshu` varchar(200) DEFAULT NULL COMMENT '可借天数',
  `kejieshuliang` varchar(200) DEFAULT NULL COMMENT '可借数量',
  `jieyueriqi` date DEFAULT NULL COMMENT '借阅日期',
  `jieyuetianshu` int(11) DEFAULT NULL COMMENT '借阅天数',
  `yinghairiqi` date DEFAULT NULL COMMENT '应还日期',
  `jieyuezhuangtai` varchar(200) DEFAULT NULL COMMENT '借阅状态',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jieyuedanhao` (`jieyuedanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1612183887473 DEFAULT CHARSET=utf8 COMMENT='图书借阅';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushujieyue`
--

LOCK TABLES `tushujieyue` WRITE;
/*!40000 ALTER TABLE `tushujieyue` DISABLE KEYS */;
INSERT INTO `tushujieyue` VALUES (51,'2021-02-01 11:14:08','借阅单号1','图书编号1','图书名称1','图书馆名称1','可借天数1','可借数量1','2021-02-01',1,'2021-02-01','借阅','用户名1','姓名1','身份证1','是',''),(52,'2021-02-01 11:14:08','借阅单号2','图书编号2','图书名称2','图书馆名称2','可借天数2','可借数量2','2021-02-01',2,'2021-02-01','借阅','用户名2','姓名2','身份证2','是',''),(53,'2021-02-01 11:14:08','借阅单号3','图书编号3','图书名称3','图书馆名称3','可借天数3','可借数量3','2021-02-01',3,'2021-02-01','借阅','用户名3','姓名3','身份证3','是',''),(54,'2021-02-01 11:14:08','借阅单号4','图书编号4','图书名称4','图书馆名称4','可借天数4','可借数量4','2021-02-01',4,'2021-02-01','借阅','用户名4','姓名4','身份证4','是',''),(55,'2021-02-01 11:14:08','借阅单号5','图书编号5','图书名称5','图书馆名称5','可借天数5','可借数量5','2021-02-01',5,'2021-02-01','借阅','用户名5','姓名5','身份证5','是',''),(56,'2021-02-01 11:14:08','借阅单号6','图书编号6','图书名称6','图书馆名称6','可借天数6','可借数量6','2021-02-01',6,'2021-02-01','借阅','用户名6','姓名6','身份证6','是',''),(1612183887472,'2021-02-01 12:51:27','20212120511047800215','1612183584','晚熟的人','广州图书馆','30','5','2021-02-01',30,'2021-03-04','已归还','1','陈一','123456789789456123','是','同意');
/*!40000 ALTER TABLE `tushujieyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuleixing`
--

DROP TABLE IF EXISTS `tushuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushuleixing` varchar(200) NOT NULL COMMENT '图书类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushuleixing` (`tushuleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1612183565867 DEFAULT CHARSET=utf8 COMMENT='图书类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuleixing`
--

LOCK TABLES `tushuleixing` WRITE;
/*!40000 ALTER TABLE `tushuleixing` DISABLE KEYS */;
INSERT INTO `tushuleixing` VALUES (31,'2021-02-01 11:14:08','图书类型1'),(32,'2021-02-01 11:14:08','图书类型2'),(33,'2021-02-01 11:14:08','图书类型3'),(34,'2021-02-01 11:14:08','图书类型4'),(35,'2021-02-01 11:14:08','图书类型5'),(36,'2021-02-01 11:14:08','经管励志'),(1612183565866,'2021-02-01 12:46:05','文学小说');
/*!40000 ALTER TABLE `tushuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuxinxi`
--

DROP TABLE IF EXISTS `tushuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) NOT NULL COMMENT '图书名称',
  `tushuleixing` varchar(200) NOT NULL COMMENT '图书类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `tushujianjie` longtext COMMENT '图书简介',
  `shujialeibie` varchar(200) DEFAULT NULL COMMENT '书架类别',
  `tushujiage` float DEFAULT NULL COMMENT '图书价格',
  `kejietianshu` int(11) DEFAULT NULL COMMENT '可借天数',
  `kejieshuliang` int(11) DEFAULT NULL COMMENT '可借数量',
  `tushuguanmingcheng` varchar(200) DEFAULT NULL COMMENT '图书馆名称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushubianhao` (`tushubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1612183640652 DEFAULT CHARSET=utf8 COMMENT='图书信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuxinxi`
--

LOCK TABLES `tushuxinxi` WRITE;
/*!40000 ALTER TABLE `tushuxinxi` DISABLE KEYS */;
INSERT INTO `tushuxinxi` VALUES (41,'2021-02-01 11:14:08','图书编号1','图书名称1','图书类型1','http://localhost:8080/jspmx1x74/upload/tushuxinxi_tupian1.jpg','作者1','出版社1','图书简介1','书架类别1',1,1,1,'图书馆名称1','联系电话1','2021-02-01 19:14:08',1),(42,'2021-02-01 11:14:08','图书编号2','图书名称2','图书类型2','http://localhost:8080/jspmx1x74/upload/tushuxinxi_tupian2.jpg','作者2','出版社2','图书简介2','书架类别2',2,2,2,'图书馆名称2','联系电话2','2021-02-01 19:14:08',2),(43,'2021-02-01 11:14:08','图书编号3','图书名称3','图书类型3','http://localhost:8080/jspmx1x74/upload/1612180118179.jpg','作者3','出版社3','图书简介3\r\n','书架类别3',3,3,3,'图书馆名称3','联系电话3','2021-02-01 19:48:35',7),(44,'2021-02-01 11:14:08','图书编号4','图书名称4','图书类型4','http://localhost:8080/jspmx1x74/upload/1612180136673.jpg','作者4','出版社4','图书简介4\r\n','书架类别4',4,4,4,'图书馆名称4','联系电话4','2021-02-01 19:48:53',8),(45,'2021-02-01 11:14:08','图书编号5','图书名称5','图书类型5','http://localhost:8080/jspmx1x74/upload/1612180227269.jpeg','作者5','出版社5','图书简介5\r\n','书架类别5',5,5,5,'图书馆名称5','联系电话5','2021-02-01 19:50:12',9),(46,'2021-02-01 11:14:08','图书编号6','图书名称6','图书类型6','http://localhost:8080/jspmx1x74/upload/1612180252145.jpg','作者6','出版社6','图书简介6\r\n','书架类别6',6,6,6,'图书馆名称6','联系电话6','2021-02-01 19:50:46',12),(1612183640651,'2021-02-01 12:47:20','1612183584','晚熟的人','文学小说','http://localhost:8080/jspmx1x74/upload/1612183597301.jpg','莫言','人民文学出版社','图书介绍\r\n<img src=\"http://localhost:8080/jspmx1x74/upload/1612183638228.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmx1x74/upload/1612183638228.jpg\">\r\n','类别',39,30,5,'广州图书馆','020-83839820','2021-02-01 20:51:30',3);
/*!40000 ALTER TABLE `tushuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuxujie`
--

DROP TABLE IF EXISTS `tushuxujie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuxujie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuedanhao` varchar(200) DEFAULT NULL COMMENT '借阅单号',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushuguanmingcheng` varchar(200) DEFAULT NULL COMMENT '图书馆名称',
  `jieyueriqi` varchar(200) DEFAULT NULL COMMENT '借阅日期',
  `yinghairiqi` varchar(200) DEFAULT NULL COMMENT '应还日期',
  `xujietianshu` int(11) NOT NULL COMMENT '续借天数',
  `xujieriqi` date DEFAULT NULL COMMENT '续借日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612184005113 DEFAULT CHARSET=utf8 COMMENT='图书续借';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuxujie`
--

LOCK TABLES `tushuxujie` WRITE;
/*!40000 ALTER TABLE `tushuxujie` DISABLE KEYS */;
INSERT INTO `tushuxujie` VALUES (61,'2021-02-01 11:14:08','借阅单号1','图书编号1','图书名称1','图书馆名称1','借阅日期1','应还日期1',1,'2021-02-01','用户名1','姓名1','是',''),(62,'2021-02-01 11:14:08','借阅单号2','图书编号2','图书名称2','图书馆名称2','借阅日期2','应还日期2',2,'2021-02-01','用户名2','姓名2','是',''),(63,'2021-02-01 11:14:08','借阅单号3','图书编号3','图书名称3','图书馆名称3','借阅日期3','应还日期3',3,'2021-02-01','用户名3','姓名3','是',''),(64,'2021-02-01 11:14:08','借阅单号4','图书编号4','图书名称4','图书馆名称4','借阅日期4','应还日期4',4,'2021-02-01','用户名4','姓名4','是',''),(65,'2021-02-01 11:14:08','借阅单号5','图书编号5','图书名称5','图书馆名称5','借阅日期5','应还日期5',5,'2021-02-01','用户名5','姓名5','是',''),(66,'2021-02-01 11:14:08','借阅单号6','图书编号6','图书名称6','图书馆名称6','借阅日期6','应还日期6',6,'2021-02-01','用户名6','姓名6','是',''),(1612184005112,'2021-02-01 12:53:24','20212120511047800215','1612183584','晚熟的人','广州图书馆','2021-02-01','2021-03-04',5,'2021-02-24','1','陈一','是','ok');
/*!40000 ALTER TABLE `tushuxujie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-01 11:14:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1612183734336 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-02-01 11:14:08','用户1','123456','姓名1','http://localhost:8080/jspmx1x74/upload/yonghu_touxiang1.jpg','男','13823888881','440300199101010001'),(12,'2021-02-01 11:14:08','用户2','123456','姓名2','http://localhost:8080/jspmx1x74/upload/yonghu_touxiang2.jpg','男','13823888882','440300199202020002'),(13,'2021-02-01 11:14:08','用户3','123456','姓名3','http://localhost:8080/jspmx1x74/upload/yonghu_touxiang3.jpg','男','13823888883','440300199303030003'),(14,'2021-02-01 11:14:08','用户4','123456','姓名4','http://localhost:8080/jspmx1x74/upload/yonghu_touxiang4.jpg','男','13823888884','440300199404040004'),(15,'2021-02-01 11:14:08','用户5','123456','姓名5','http://localhost:8080/jspmx1x74/upload/yonghu_touxiang5.jpg','男','13823888885','440300199505050005'),(16,'2021-02-01 11:14:08','用户6','123456','姓名6','http://localhost:8080/jspmx1x74/upload/yonghu_touxiang6.jpg','男','13823888886','440300199606060006'),(1612183734335,'2021-02-01 12:48:54','1','1','陈一','http://localhost:8080/jspmx1x74/upload/1612183799684.jpg','女','12312312312','123456789789456123');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-02 10:20:53

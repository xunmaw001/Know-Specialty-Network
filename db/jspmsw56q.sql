-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmsw56q
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615384890027 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-10 13:40:16',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-10 13:40:16',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-10 13:40:16',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-10 13:40:16',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-10 13:40:16',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-10 13:40:16',6,'宇宙银河系月球1号','月某','13823888886','是'),(1615384890026,'2021-03-10 14:01:29',1615384848920,'广东省揭阳市榕城区东兴街道壹厨(揭阳店)','陈一','12312312312','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'techanxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615384938783 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1615383686421,'2021-03-10 13:41:25','techanxinxi',11,46,'特产名称6','http://localhost:8080/jspmsw56q/upload/techanxinxi_tupian6.jpg',1,99.9,0);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chandi`
--

DROP TABLE IF EXISTS `chandi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chandi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chandi` varchar(200) NOT NULL COMMENT '产地',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chandi` (`chandi`)
) ENGINE=InnoDB AUTO_INCREMENT=1615384477929 DEFAULT CHARSET=utf8 COMMENT='产地';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chandi`
--

LOCK TABLES `chandi` WRITE;
/*!40000 ALTER TABLE `chandi` DISABLE KEYS */;
INSERT INTO `chandi` VALUES (31,'2021-03-10 13:40:16','产地1'),(32,'2021-03-10 13:40:16','产地2'),(33,'2021-03-10 13:40:16','产地3'),(34,'2021-03-10 13:40:16','产地4'),(35,'2021-03-10 13:40:16','产地5'),(36,'2021-03-10 13:40:16','产地6'),(1615384469588,'2021-03-10 13:54:29','河南焦作'),(1615384477928,'2021-03-10 13:54:37','河南开封');
/*!40000 ALTER TABLE `chandi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615385110448 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-03-10 13:40:16',1,1,'提问1','回复1',1),(62,'2021-03-10 13:40:16',2,2,'提问2','回复2',2),(63,'2021-03-10 13:40:16',3,3,'提问3','回复3',3),(64,'2021-03-10 13:40:16',4,4,'提问4','回复4',4),(65,'2021-03-10 13:40:16',5,5,'提问5','回复5',5),(66,'2021-03-10 13:40:16',6,6,'提问6','回复6',6),(1615385110447,'2021-03-10 14:05:09',1615384848920,NULL,'‍请问有罗罗牌杏仁酥吗\r\n','有的，请直接搜索\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmsw56q/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmsw56q/upload/1615384665587.jpg'),(3,'picture3','http://localhost:8080/jspmsw56q/upload/1615384783898.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstechanxinxi`
--

DROP TABLE IF EXISTS `discusstechanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstechanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615384974227 DEFAULT CHARSET=utf8 COMMENT='特产信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstechanxinxi`
--

LOCK TABLES `discusstechanxinxi` WRITE;
/*!40000 ALTER TABLE `discusstechanxinxi` DISABLE KEYS */;
INSERT INTO `discusstechanxinxi` VALUES (131,'2021-03-10 13:40:16',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-03-10 13:40:16',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-03-10 13:40:16',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-03-10 13:40:16',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-03-10 13:40:16',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-03-10 13:40:16',6,6,'用户名6','评论内容6','回复内容6'),(1615384974226,'2021-03-10 14:02:54',1615384743758,1615384848920,NULL,'rfretgre',NULL);
/*!40000 ALTER TABLE `discusstechanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszhaoshangzixun`
--

DROP TABLE IF EXISTS `discusszhaoshangzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszhaoshangzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='招商资讯评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszhaoshangzixun`
--

LOCK TABLES `discusszhaoshangzixun` WRITE;
/*!40000 ALTER TABLE `discusszhaoshangzixun` DISABLE KEYS */;
INSERT INTO `discusszhaoshangzixun` VALUES (141,'2021-03-10 13:40:16',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-03-10 13:40:16',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-03-10 13:40:16',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-03-10 13:40:16',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-03-10 13:40:16',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-03-10 13:40:16',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusszhaoshangzixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615385027977 DEFAULT CHARSET=utf8 COMMENT='交流论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (71,'2021-03-10 13:40:16','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(72,'2021-03-10 13:40:16','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(73,'2021-03-10 13:40:16','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(74,'2021-03-10 13:40:16','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(75,'2021-03-10 13:40:16','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(76,'2021-03-10 13:40:16','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1615385016637,'2021-03-10 14:03:36','分享焦作山药粉','<p>分享焦作山药粉</p>\n<p><img src=\"../../..//upload/1615385013388.jpg\" alt=\"\" width=\"606\" height=\"517\" /></p>',0,1615384848920,'1','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1615384827817 DEFAULT CHARSET=utf8 COMMENT='特产资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (121,'2021-03-10 13:40:16','标题1','简介1','http://localhost:8080/jspmsw56q/upload/1615384612602.jpg','内容1\r\n'),(122,'2021-03-10 13:40:16','标题2','简介2','http://localhost:8080/jspmsw56q/upload/1615384618517.png','内容2\r\n'),(123,'2021-03-10 13:40:16','标题3','简介3','http://localhost:8080/jspmsw56q/upload/1615384624401.jpg','内容3\r\n'),(124,'2021-03-10 13:40:16','标题4','简介4','http://localhost:8080/jspmsw56q/upload/1615384637030.jpg','内容4\r\n'),(125,'2021-03-10 13:40:16','标题5','简介5','http://localhost:8080/jspmsw56q/upload/1615384643575.gif','内容5\r\n'),(126,'2021-03-10 13:40:16','标题6','简介6','http://localhost:8080/jspmsw56q/upload/1615384649360.jpg','内容6\r\n'),(1615384827816,'2021-03-10 14:00:26','特产优惠资讯','优惠资讯','http://localhost:8080/jspmsw56q/upload/1615384813600.png','特产优惠\r\n<img src=\"http://localhost:8080/jspmsw56q/upload/1615384825713.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmsw56q/upload/1615384825713.jpg\">\r\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'techanxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1615385072325 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1615385072324,'2021-03-10 14:04:32','20213102243182999810','techanxinxi',1615384848920,1615384743758,'陈氏太极铁棍山药粉','http://localhost:8080/jspmsw56q/upload/1615384718698.jpg',2,198,198,396,396,1,'已完成','广东省揭阳市榕城区东兴街道壹厨(揭阳店)');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1615384980447 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1615384937482,'2021-03-10 14:02:17',1615384848920,1615384743758,'techanxinxi','陈氏太极铁棍山药粉','http://localhost:8080/jspmsw56q/upload/1615384718698.jpg'),(1615384980446,'2021-03-10 14:02:59',1615384848920,1615384771326,'zhaoshangzixun','招商资讯A','http://localhost:8080/jspmsw56q/upload/1615384762473.png');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `techanfenlei`
--

DROP TABLE IF EXISTS `techanfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `techanfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `techanfenlei` varchar(200) NOT NULL COMMENT '特产分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `techanfenlei` (`techanfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1615384461650 DEFAULT CHARSET=utf8 COMMENT='特产分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `techanfenlei`
--

LOCK TABLES `techanfenlei` WRITE;
/*!40000 ALTER TABLE `techanfenlei` DISABLE KEYS */;
INSERT INTO `techanfenlei` VALUES (21,'2021-03-10 13:40:16','特产分类1'),(22,'2021-03-10 13:40:16','特产分类2'),(23,'2021-03-10 13:40:16','特产分类3'),(24,'2021-03-10 13:40:16','特产分类4'),(25,'2021-03-10 13:40:16','特产分类5'),(26,'2021-03-10 13:40:16','特产分类6'),(1615384446231,'2021-03-10 13:54:05','小吃美食'),(1615384454535,'2021-03-10 13:54:14','农副产品'),(1615384461649,'2021-03-10 13:54:20','工艺品');
/*!40000 ALTER TABLE `techanfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `techanxinxi`
--

DROP TABLE IF EXISTS `techanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `techanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `techanmingcheng` varchar(200) NOT NULL COMMENT '特产名称',
  `techanfenlei` varchar(200) NOT NULL COMMENT '特产分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `chandi` varchar(200) DEFAULT NULL COMMENT '产地',
  `techanxiangqing` longtext COMMENT '特产详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615384743759 DEFAULT CHARSET=utf8 COMMENT='特产信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `techanxinxi`
--

LOCK TABLES `techanxinxi` WRITE;
/*!40000 ALTER TABLE `techanxinxi` DISABLE KEYS */;
INSERT INTO `techanxinxi` VALUES (41,'2021-03-10 13:40:16','特产名称1','特产分类1','http://localhost:8080/jspmsw56q/upload/1615384502889.jpg','品牌1','规格1','产地1','特产详情1\r\n','2021-03-10 21:54:47',3,99.9),(42,'2021-03-10 13:40:16','特产名称2','农副产品','http://localhost:8080/jspmsw56q/upload/1615384525869.jpg','品牌2','规格2','产地2','特产详情2\r\n','2021-03-10 21:55:09',4,99.9),(43,'2021-03-10 13:40:16','特产名称3','特产分类3','http://localhost:8080/jspmsw56q/upload/1615384534086.jpg','品牌3','规格3','产地3','特产详情3\r\n','2021-03-10 21:55:30',5,99.9),(44,'2021-03-10 13:40:16','特产名称4','特产分类4','http://localhost:8080/jspmsw56q/upload/1615384541536.jpg','品牌4','规格4','产地4','特产详情4\r\n','2021-03-10 21:55:39',6,99.9),(45,'2021-03-10 13:40:16','特产名称5','特产分类5','http://localhost:8080/jspmsw56q/upload/1615384548952.jpg','品牌5','规格5','产地5','特产详情5\r\n','2021-03-10 22:01:45',13,99.9),(46,'2021-03-10 13:40:16','特产名称6','特产分类6','http://localhost:8080/jspmsw56q/upload/1615384559244.jpg','品牌6','规格6','产地6','特产详情6\r\n','2021-03-10 21:55:53',9,99.9),(1615384743758,'2021-03-10 13:59:03','陈氏太极铁棍山药粉','农副产品','http://localhost:8080/jspmsw56q/upload/1615384718698.jpg','陈氏太极','960g','河南焦作','特产介绍\r\n<img src=\"http://localhost:8080/jspmsw56q/upload/1615384741166.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmsw56q/upload/1615384741166.jpg\">\r\n','2021-03-10 22:04:32',3,198);
/*!40000 ALTER TABLE `techanxinxi` ENABLE KEYS */;
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
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','5jj5pzagajd0qx86wkh1mbygms3dpu9k','2021-03-10 13:40:45','2021-03-10 15:05:21'),(2,11,'用户1','yonghu','用户','70pkvxdai9br876ilw7zt1mny4gfcgmk','2021-03-10 13:41:17','2021-03-10 14:41:18'),(3,1615384848920,'1','yonghu','用户','s7rs1tb5fjqf27w69a4eg0pqulto1v8q','2021-03-10 14:00:54','2021-03-10 15:00:54');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-10 13:40:16');
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
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615384848921 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-10 13:40:16','用户1','123456','姓名1','男','http://localhost:8080/jspmsw56q/upload/yonghu_touxiang1.jpg','13823888881',100),(12,'2021-03-10 13:40:16','用户2','123456','姓名2','男','http://localhost:8080/jspmsw56q/upload/yonghu_touxiang2.jpg','13823888882',100),(13,'2021-03-10 13:40:16','用户3','123456','姓名3','男','http://localhost:8080/jspmsw56q/upload/yonghu_touxiang3.jpg','13823888883',100),(14,'2021-03-10 13:40:16','用户4','123456','姓名4','男','http://localhost:8080/jspmsw56q/upload/yonghu_touxiang4.jpg','13823888884',100),(15,'2021-03-10 13:40:16','用户5','123456','姓名5','男','http://localhost:8080/jspmsw56q/upload/yonghu_touxiang5.jpg','13823888885',100),(16,'2021-03-10 13:40:16','用户6','123456','姓名6','男','http://localhost:8080/jspmsw56q/upload/yonghu_touxiang6.jpg','13823888886',100),(1615384848920,'2021-03-10 14:00:48','1','1','陈一','女','http://localhost:8080/jspmsw56q/upload/1615384865030.jpg','12312312312',1604);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaoshangzixun`
--

DROP TABLE IF EXISTS `zhaoshangzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaoshangzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615384771327 DEFAULT CHARSET=utf8 COMMENT='招商资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaoshangzixun`
--

LOCK TABLES `zhaoshangzixun` WRITE;
/*!40000 ALTER TABLE `zhaoshangzixun` DISABLE KEYS */;
INSERT INTO `zhaoshangzixun` VALUES (51,'2021-03-10 13:40:16','标题1','类型1','http://localhost:8080/jspmsw56q/upload/1615384572487.jpg','内容1\r\n','2021-03-10'),(52,'2021-03-10 13:40:16','标题2','类型2','http://localhost:8080/jspmsw56q/upload/1615384578892.jpg','内容2\r\n','2021-03-10'),(53,'2021-03-10 13:40:16','标题3','类型3','http://localhost:8080/jspmsw56q/upload/1615384584640.png','内容3\r\n','2021-03-10'),(54,'2021-03-10 13:40:16','标题4','类型4','http://localhost:8080/jspmsw56q/upload/1615384590456.jpg','内容4\r\n','2021-03-10'),(55,'2021-03-10 13:40:16','标题5','类型5','http://localhost:8080/jspmsw56q/upload/1615384596740.jpg','内容5\r\n','2021-03-10'),(56,'2021-03-10 13:40:16','标题6','类型6','http://localhost:8080/jspmsw56q/upload/1615384602592.jpg','内容6\r\n','2021-03-10'),(1615384771326,'2021-03-10 13:59:31','招商资讯A','招商','http://localhost:8080/jspmsw56q/upload/1615384762473.png','资讯内容\r\n<img src=\"http://localhost:8080/jspmsw56q/upload/1615384769908.png\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmsw56q/upload/1615384769908.png\">\r\n','2021-03-10');
/*!40000 ALTER TABLE `zhaoshangzixun` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-15 14:59:22

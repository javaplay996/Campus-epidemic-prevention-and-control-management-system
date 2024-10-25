/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuanyiqingfangkongguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuanyiqingfangkongguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuanyiqingfangkongguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `daka` */

DROP TABLE IF EXISTS `daka`;

CREATE TABLE `daka` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `daka_name` varchar(200) DEFAULT NULL COMMENT '健康码打卡  Search111 ',
  `daka_file` varchar(200) DEFAULT NULL COMMENT '健康码照片',
  `daka_wendu` decimal(10,2) DEFAULT NULL COMMENT '体温',
  `daka_text` text COMMENT '备注 ',
  `daka_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='检测信息';

/*Data for the table `daka` */

insert  into `daka`(`id`,`yonghu_id`,`daka_name`,`daka_file`,`daka_wendu`,`daka_text`,`daka_delete`,`insert_time`,`create_time`) values (1,1,'健康码打卡1','upload/file.rar','91.73','备注1',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(2,1,'健康码打卡2','upload/file.rar','49.65','备注2',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(3,1,'健康码打卡3','upload/file.rar','537.18','备注3',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(4,2,'健康码打卡4','upload/file.rar','558.72','备注4',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(5,2,'健康码打卡5','upload/file.rar','257.84','备注5',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(6,1,'健康码打卡6','upload/file.rar','245.38','备注6',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(7,1,'健康码打卡7','upload/file.rar','711.31','备注7',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(8,1,'健康码打卡8','upload/file.rar','266.44','备注8',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(9,1,'健康码打卡9','upload/file.rar','720.78','备注9',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(10,3,'健康码打卡10','upload/file.rar','360.48','备注10',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(11,1,'健康码打卡11','upload/file.rar','887.21','备注11',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(12,2,'健康码打卡12','upload/file.rar','570.04','备注12',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(13,3,'健康码打卡13','upload/file.rar','226.51','备注13',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(14,3,'健康码打卡14','upload/file.rar','738.25','备注14',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(18,1,'打卡','upload/1679539357097.jpg','38.20','是的呀 ',1,'2023-03-23 10:42:43','2023-03-23 10:42:43');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-23 10:12:01'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-23 10:12:01'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-23 10:12:01'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-23 10:12:01'),(5,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-23 10:12:01'),(6,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-23 10:12:01'),(7,'fengkong_didian_types','地区',1,'地区1',NULL,NULL,'2023-03-23 10:12:01'),(8,'fengkong_didian_types','地区',2,'地区2',NULL,NULL,'2023-03-23 10:12:01'),(9,'fengkong_didian_types','地区',3,'地区3',NULL,NULL,'2023-03-23 10:12:01'),(10,'fengkong_types','风险类型',1,'低风险',NULL,NULL,'2023-03-23 10:12:01'),(11,'fengkong_types','风险类型',2,'中风险',NULL,NULL,'2023-03-23 10:12:01'),(12,'fengkong_types','风险类型',3,'高风险',NULL,NULL,'2023-03-23 10:12:01'),(13,'wangfan_yuyue_yesno_types','申报状态',1,'待审核',NULL,NULL,'2023-03-23 10:12:01'),(14,'wangfan_yuyue_yesno_types','申报状态',2,'同意',NULL,NULL,'2023-03-23 10:12:01'),(15,'wangfan_yuyue_yesno_types','申报状态',3,'拒绝',NULL,NULL,'2023-03-23 10:12:01'),(16,'wangfan_yuyue_types','交通工具',1,'自驾',NULL,NULL,'2023-03-23 10:12:01'),(17,'wangfan_yuyue_types','交通工具',2,'汽车',NULL,NULL,'2023-03-23 10:12:01'),(18,'wangfan_yuyue_types','交通工具',3,'火车',NULL,NULL,'2023-03-23 10:12:01'),(19,'news_types','新闻类型',1,'新闻类型1',NULL,NULL,'2023-03-23 10:12:01'),(20,'news_types','新闻类型',2,'新闻类型2',NULL,NULL,'2023-03-23 10:12:01'),(21,'wuzi_types','物资类型',1,'物资类型1',NULL,NULL,'2023-03-23 10:12:01'),(22,'wuzi_types','物资类型',2,'物资类型2',NULL,NULL,'2023-03-23 10:12:01'),(23,'wuzi_types','物资类型',3,'物资类型3',NULL,NULL,'2023-03-23 10:12:01'),(24,'wuzi_types','物资类型',4,'物资类型4',NULL,NULL,'2023-03-23 10:12:01'),(25,'wuzi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-23 10:12:01');

/*Table structure for table `fengkong` */

DROP TABLE IF EXISTS `fengkong`;

CREATE TABLE `fengkong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fengkong_name` varchar(200) DEFAULT NULL COMMENT '地区名称  Search111 ',
  `fengkong_photo` varchar(200) DEFAULT NULL COMMENT '地区照片',
  `fengkong_didian_types` int(11) DEFAULT NULL COMMENT '地区 Search111',
  `fengkong_types` int(11) DEFAULT NULL COMMENT '风险类型 Search111',
  `fengkong_content` text COMMENT '地区介绍 ',
  `fengkong_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='隔离信息';

/*Data for the table `fengkong` */

insert  into `fengkong`(`id`,`fengkong_name`,`fengkong_photo`,`fengkong_didian_types`,`fengkong_types`,`fengkong_content`,`fengkong_delete`,`insert_time`,`create_time`) values (1,'地区名称1','upload/fengkong1.jpg',2,3,'地区介绍1',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(2,'地区名称2','upload/fengkong2.jpg',1,1,'地区介绍2',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(3,'地区名称3','upload/fengkong3.jpg',1,1,'地区介绍3',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(4,'地区名称4','upload/fengkong4.jpg',1,2,'地区介绍4',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(5,'地区名称5','upload/fengkong5.jpg',2,3,'地区介绍5',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(6,'地区名称6','upload/fengkong6.jpg',3,1,'地区介绍6',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(7,'地区名称7','upload/fengkong7.jpg',1,3,'地区介绍7',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(8,'地区名称8','upload/fengkong8.jpg',1,1,'地区介绍8',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(9,'地区名称9','upload/fengkong9.jpg',3,2,'地区介绍9',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(10,'地区名称10','upload/fengkong10.jpg',2,3,'地区介绍10',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(11,'地区名称11','upload/fengkong11.jpg',2,1,'地区介绍11',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(12,'地区名称12','upload/fengkong12.jpg',3,3,'地区介绍12',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(13,'地区名称13','upload/fengkong13.jpg',3,1,'地区介绍13',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(14,'地区名称14','upload/fengkong14.jpg',3,2,'地区介绍14',1,'2023-03-23 10:23:15','2023-03-23 10:23:15');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='交流论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',445,1,'2023-03-23 10:23:15','2023-03-23 10:23:15','2023-03-23 10:23:15'),(2,'帖子标题2',1,NULL,'发布内容2',49,1,'2023-03-23 10:23:15','2023-03-23 10:23:15','2023-03-23 10:23:15'),(3,'帖子标题3',2,NULL,'发布内容3',223,1,'2023-03-23 10:23:15','2023-03-23 10:23:15','2023-03-23 10:23:15'),(4,'帖子标题4',1,NULL,'发布内容4',447,1,'2023-03-23 10:23:15','2023-03-23 10:23:15','2023-03-23 10:23:15'),(5,'帖子标题5',1,NULL,'发布内容5',81,1,'2023-03-23 10:23:15','2023-03-23 10:23:15','2023-03-23 10:23:15'),(6,'帖子标题6',2,NULL,'发布内容6',104,1,'2023-03-23 10:23:15','2023-03-23 10:23:15','2023-03-23 10:23:15'),(7,'帖子标题7',1,NULL,'发布内容7',233,1,'2023-03-23 10:23:15','2023-03-23 10:23:15','2023-03-23 10:23:15'),(8,'帖子标题8',3,NULL,'发布内容8',402,1,'2023-03-23 10:23:15','2023-03-23 10:23:15','2023-03-23 10:23:15'),(9,'帖子标题9',2,NULL,'发布内容9',226,1,'2023-03-23 10:23:15','2023-03-23 10:23:15','2023-03-23 10:23:15'),(10,'帖子标题10',1,NULL,'发布内容10',180,1,'2023-03-23 10:23:15','2023-03-23 10:23:15','2023-03-23 10:23:15'),(11,'帖子标题11',2,NULL,'发布内容11',435,1,'2023-03-23 10:23:15','2023-03-23 10:23:15','2023-03-23 10:23:15'),(12,'帖子标题12',1,NULL,'发布内容12',405,1,'2023-03-23 10:23:15','2023-03-23 10:23:15','2023-03-23 10:23:15'),(13,'帖子标题13',3,NULL,'发布内容13',28,1,'2023-03-23 10:23:15','2023-03-23 10:23:15','2023-03-23 10:23:15'),(14,'帖子标题14',3,NULL,'发布内容14',406,1,'2023-03-23 10:23:15','2023-03-23 10:23:15','2023-03-23 10:23:15'),(15,'帖子',1,NULL,'<p>帖子</p>',NULL,1,'2023-03-23 10:41:47',NULL,'2023-03-23 10:41:47'),(16,NULL,1,NULL,'',15,2,'2023-03-23 10:41:53',NULL,'2023-03-23 10:41:53'),(17,NULL,1,NULL,'丫丫',15,2,'2023-03-23 10:41:59',NULL,'2023-03-23 10:41:59'),(18,NULL,NULL,1,'163516',15,2,'2023-03-23 10:44:20',NULL,'2023-03-23 10:44:20');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='校园公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-03-23 10:23:15','公告详情1','2023-03-23 10:23:15'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-03-23 10:23:15','公告详情2','2023-03-23 10:23:15'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-03-23 10:23:15','公告详情3','2023-03-23 10:23:15'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-03-23 10:23:15','公告详情4','2023-03-23 10:23:15'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-03-23 10:23:15','公告详情5','2023-03-23 10:23:15'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-03-23 10:23:15','公告详情6','2023-03-23 10:23:15'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-03-23 10:23:15','公告详情7','2023-03-23 10:23:15'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-03-23 10:23:15','公告详情8','2023-03-23 10:23:15'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-03-23 10:23:15','公告详情9','2023-03-23 10:23:15'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-03-23 10:23:15','公告详情10','2023-03-23 10:23:15'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-03-23 10:23:15','公告详情11','2023-03-23 10:23:15'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-03-23 10:23:15','公告详情12','2023-03-23 10:23:15'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-03-23 10:23:15','公告详情13','2023-03-23 10:23:15'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-03-23 10:23:15','公告详情14','2023-03-23 10:23:15');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int(11) NOT NULL COMMENT '新闻类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻发布时间 ',
  `news_content` longtext COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='疫情新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'新闻名称1','upload/news1.jpg',1,'2023-03-23 10:23:15','新闻详情1','2023-03-23 10:23:15'),(2,'新闻名称2','upload/news2.jpg',1,'2023-03-23 10:23:15','新闻详情2','2023-03-23 10:23:15'),(3,'新闻名称3','upload/news3.jpg',1,'2023-03-23 10:23:15','新闻详情3','2023-03-23 10:23:15'),(4,'新闻名称4','upload/news4.jpg',2,'2023-03-23 10:23:15','新闻详情4','2023-03-23 10:23:15'),(5,'新闻名称5','upload/news5.jpg',1,'2023-03-23 10:23:15','新闻详情5','2023-03-23 10:23:15'),(6,'新闻名称6','upload/news6.jpg',2,'2023-03-23 10:23:15','新闻详情6','2023-03-23 10:23:15'),(7,'新闻名称7','upload/news7.jpg',1,'2023-03-23 10:23:15','新闻详情7','2023-03-23 10:23:15'),(8,'新闻名称8','upload/news8.jpg',1,'2023-03-23 10:23:15','新闻详情8','2023-03-23 10:23:15'),(9,'新闻名称9','upload/news9.jpg',2,'2023-03-23 10:23:15','新闻详情9','2023-03-23 10:23:15'),(10,'新闻名称10','upload/news10.jpg',1,'2023-03-23 10:23:15','新闻详情10','2023-03-23 10:23:15'),(11,'新闻名称11','upload/news11.jpg',1,'2023-03-23 10:23:15','新闻详情11','2023-03-23 10:23:15'),(12,'新闻名称12','upload/news12.jpg',2,'2023-03-23 10:23:15','新闻详情12','2023-03-23 10:23:15'),(13,'新闻名称13','upload/news13.jpg',2,'2023-03-23 10:23:15','新闻详情13','2023-03-23 10:23:15'),(14,'新闻名称14','upload/news14.jpg',2,'2023-03-23 10:23:15','新闻详情14','2023-03-23 10:23:15');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','y2bonci0kfkj19a71nex701sbazu7ft9','2023-03-23 10:25:52','2023-03-23 11:41:17'),(2,1,'admin','users','管理员','1ifd7shvdi7noxan4mnlm5gdis4inqcm','2023-03-23 10:43:27','2023-03-23 11:43:28');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-23 10:12:00');

/*Table structure for table `wangfan_yuyue` */

DROP TABLE IF EXISTS `wangfan_yuyue`;

CREATE TABLE `wangfan_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wangfan_yuyue_text` text COMMENT '申请理由',
  `wangfan_yuyue_types` int(11) DEFAULT NULL COMMENT '交通工具 Search111',
  `wangfan_yuyue_mudidi` varchar(200) DEFAULT NULL COMMENT '去哪里',
  `wangfan_yuyue_chufadi` varchar(200) DEFAULT NULL COMMENT '所在地',
  `wangfan_yuyue_chufa_time` date DEFAULT NULL COMMENT '出发时间',
  `wangfan_yuyue_daoda_time` date DEFAULT NULL COMMENT '到达时间',
  `wangfan_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '申报状态 Search111 ',
  `wangfan_yuyue_yesno_text` text COMMENT '审核回复',
  `wangfan_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '活动报名时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='上报信息';

/*Data for the table `wangfan_yuyue` */

insert  into `wangfan_yuyue`(`id`,`yonghu_id`,`wangfan_yuyue_text`,`wangfan_yuyue_types`,`wangfan_yuyue_mudidi`,`wangfan_yuyue_chufadi`,`wangfan_yuyue_chufa_time`,`wangfan_yuyue_daoda_time`,`wangfan_yuyue_yesno_types`,`wangfan_yuyue_yesno_text`,`wangfan_yuyue_shenhe_time`,`insert_time`,`create_time`) values (1,3,'申请理由1',3,'去哪里1','所在地1','2023-03-23','2023-03-23',1,NULL,NULL,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(2,3,'申请理由2',1,'去哪里2','所在地2','2023-03-23','2023-03-23',1,NULL,NULL,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(3,2,'申请理由3',2,'去哪里3','所在地3','2023-03-23','2023-03-23',1,NULL,NULL,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(4,1,'申请理由4',1,'去哪里4','所在地4','2023-03-23','2023-03-23',1,NULL,NULL,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(5,3,'申请理由5',2,'去哪里5','所在地5','2023-03-23','2023-03-23',1,NULL,NULL,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(6,1,'申请理由6',2,'去哪里6','所在地6','2023-03-23','2023-03-23',1,NULL,NULL,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(7,2,'申请理由7',2,'去哪里7','所在地7','2023-03-23','2023-03-23',1,NULL,NULL,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(8,1,'申请理由8',1,'去哪里8','所在地8','2023-03-23','2023-03-23',1,NULL,NULL,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(9,3,'申请理由9',2,'去哪里9','所在地9','2023-03-23','2023-03-23',1,NULL,NULL,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(10,1,'申请理由10',3,'去哪里10','所在地10','2023-03-23','2023-03-23',1,NULL,NULL,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(11,3,'申请理由11',1,'去哪里11','所在地11','2023-03-23','2023-03-23',1,NULL,NULL,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(12,2,'申请理由12',2,'去哪里12','所在地12','2023-03-23','2023-03-23',1,NULL,NULL,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(13,1,'申请理由13',3,'去哪里13','所在地13','2023-03-23','2023-03-23',1,NULL,NULL,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(14,3,'申请理由14',1,'去哪里14','所在地14','2023-03-23','2023-03-23',1,NULL,NULL,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(18,1,'探亲返校',1,'回家','说的','2023-03-23','2023-03-24',2,'同意','2023-03-23 10:45:21','2023-03-23 10:43:14','2023-03-23 10:43:14');

/*Table structure for table `wuzi` */

DROP TABLE IF EXISTS `wuzi`;

CREATE TABLE `wuzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_name` varchar(200) DEFAULT NULL COMMENT '物资名称  Search111 ',
  `wuzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '物资编号',
  `wuzi_photo` varchar(200) DEFAULT NULL COMMENT '物资照片',
  `wuzi_xinghao` varchar(200) DEFAULT NULL COMMENT '物资型号',
  `wuzi_guige` varchar(200) DEFAULT NULL COMMENT '物资规格',
  `wuzi_changjia` varchar(200) DEFAULT NULL COMMENT '物资生产厂家',
  `wuzi_types` int(11) DEFAULT NULL COMMENT '物资类型 Search111',
  `wuzi_kucun_number` int(11) DEFAULT NULL COMMENT '物资库存',
  `wuzi_content` longtext COMMENT '物资介绍 ',
  `wuzi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='物资';

/*Data for the table `wuzi` */

insert  into `wuzi`(`id`,`wuzi_name`,`wuzi_uuid_number`,`wuzi_photo`,`wuzi_xinghao`,`wuzi_guige`,`wuzi_changjia`,`wuzi_types`,`wuzi_kucun_number`,`wuzi_content`,`wuzi_delete`,`insert_time`,`create_time`) values (1,'物资名称1','1679538195143','upload/wuzi1.jpg','物资型号1','物资规格1','物资生产厂家1',1,101,'物资介绍1',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(2,'物资名称2','1679538195169','upload/wuzi2.jpg','物资型号2','物资规格2','物资生产厂家2',4,102,'物资介绍2',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(3,'物资名称3','1679538195124','upload/wuzi3.jpg','物资型号3','物资规格3','物资生产厂家3',1,103,'物资介绍3',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(4,'物资名称4','1679538195110','upload/wuzi4.jpg','物资型号4','物资规格4','物资生产厂家4',4,104,'物资介绍4',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(5,'物资名称5','1679538195181','upload/wuzi5.jpg','物资型号5','物资规格5','物资生产厂家5',2,105,'物资介绍5',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(6,'物资名称6','1679538195135','upload/wuzi6.jpg','物资型号6','物资规格6','物资生产厂家6',1,106,'物资介绍6',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(7,'物资名称7','1679538195167','upload/wuzi7.jpg','物资型号7','物资规格7','物资生产厂家7',1,107,'物资介绍7',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(8,'物资名称8','1679538195134','upload/wuzi8.jpg','物资型号8','物资规格8','物资生产厂家8',3,108,'物资介绍8',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(9,'物资名称9','1679538195110','upload/wuzi9.jpg','物资型号9','物资规格9','物资生产厂家9',4,109,'物资介绍9',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(10,'物资名称10','1679538195121','upload/wuzi10.jpg','物资型号10','物资规格10','物资生产厂家10',2,1010,'物资介绍10',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(11,'物资名称11','1679538195139','upload/wuzi11.jpg','物资型号11','物资规格11','物资生产厂家11',2,1011,'物资介绍11',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(12,'物资名称12','1679538195155','upload/wuzi12.jpg','物资型号12','物资规格12','物资生产厂家12',1,1012,'物资介绍12',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(13,'物资名称13','1679538195108','upload/wuzi13.jpg','物资型号13','物资规格13','物资生产厂家13',3,1013,'物资介绍13',1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(14,'物资名称14','1679538195174','upload/wuzi14.jpg','物资型号14','物资规格14','物资生产厂家14',2,1014,'物资介绍14',1,'2023-03-23 10:23:15','2023-03-23 10:23:15');

/*Table structure for table `wuzi_collection` */

DROP TABLE IF EXISTS `wuzi_collection`;

CREATE TABLE `wuzi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wuzi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='物资收藏';

/*Data for the table `wuzi_collection` */

insert  into `wuzi_collection`(`id`,`wuzi_id`,`yonghu_id`,`wuzi_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(2,2,3,1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(3,3,3,1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(4,4,2,1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(5,5,2,1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(6,6,3,1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(7,7,3,1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(8,8,2,1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(9,9,1,1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(10,10,3,1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(11,11,2,1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(12,12,3,1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(13,13,3,1,'2023-03-23 10:23:15','2023-03-23 10:23:15'),(14,14,1,1,'2023-03-23 10:23:15','2023-03-23 10:23:15');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-03-23 10:23:15'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-03-23 10:23:15'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','2023-03-23 10:23:15');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

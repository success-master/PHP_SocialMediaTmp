-- MySQL dump 10.15  Distrib 10.0.38-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: knowled5_maindb
-- ------------------------------------------------------
-- Server version	10.0.38-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `knowled5_maindb`
--


--
-- Table structure for table `adverts`
--

DROP TABLE IF EXISTS `adverts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adverts` (
  `adv_userid` int(11) NOT NULL DEFAULT '0',
  `adv_username` varchar(30) NOT NULL DEFAULT '',
  `adv_smoker` varchar(250) DEFAULT NULL,
  `adv_children` varchar(250) DEFAULT NULL,
  `adv_comment` text,
  `adv_location` varchar(250) DEFAULT NULL,
  `adv_countryid` int(11) NOT NULL DEFAULT '0',
  `adv_stateid` int(11) NOT NULL DEFAULT '0',
  `adv_cityid` int(11) NOT NULL DEFAULT '0',
  `adv_height` varchar(15) DEFAULT NULL,
  `adv_marital` varchar(250) DEFAULT NULL,
  `adv_bodytype` varchar(250) DEFAULT NULL,
  `adv_ethnicity` varchar(250) DEFAULT NULL,
  `adv_religion` varchar(250) DEFAULT NULL,
  `adv_sex` char(1) DEFAULT NULL,
  `adv_seekmen` char(1) DEFAULT NULL,
  `adv_seekwmn` char(1) DEFAULT NULL,
  `adv_seekcpl` char(1) DEFAULT NULL,
  `adv_seeking` varchar(250) DEFAULT NULL,
  `adv_picture` varchar(75) DEFAULT NULL,
  `adv_dob` date DEFAULT NULL,
  `adv_approved` int(11) DEFAULT NULL,
  `adv_agency` varchar(7) DEFAULT NULL,
  `adv_createdate` datetime DEFAULT NULL,
  `adv_title` varchar(30) DEFAULT NULL,
  `adv_education` varchar(250) DEFAULT NULL,
  `adv_income` varchar(250) DEFAULT NULL,
  `adv_profession` varchar(250) DEFAULT NULL,
  `adv_expiredate` date DEFAULT NULL,
  `adv_views` int(3) DEFAULT '0',
  `adv_zipcode` varchar(5) DEFAULT NULL,
  `adv_paused` enum('Y','N') NOT NULL DEFAULT 'N',
  `adv_rejectreason` varchar(255) NOT NULL DEFAULT '',
  `adv_eyecolor` varchar(250) NOT NULL DEFAULT '',
  `adv_haircolor` varchar(250) NOT NULL DEFAULT '',
  `adv_drink` varchar(250) NOT NULL DEFAULT '',
  `adv_ip` varchar(255) NOT NULL DEFAULT '',
  `block_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`adv_userid`),
  KEY `adv_userid` (`adv_userid`,`adv_title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adverts`
--

LOCK TABLES `adverts` WRITE;
/*!40000 ALTER TABLE `adverts` DISABLE KEYS */;
INSERT INTO `adverts` (`adv_userid`, `adv_username`, `adv_smoker`, `adv_children`, `adv_comment`, `adv_location`, `adv_countryid`, `adv_stateid`, `adv_cityid`, `adv_height`, `adv_marital`, `adv_bodytype`, `adv_ethnicity`, `adv_religion`, `adv_sex`, `adv_seekmen`, `adv_seekwmn`, `adv_seekcpl`, `adv_seeking`, `adv_picture`, `adv_dob`, `adv_approved`, `adv_agency`, `adv_createdate`, `adv_title`, `adv_education`, `adv_income`, `adv_profession`, `adv_expiredate`, `adv_views`, `adv_zipcode`, `adv_paused`, `adv_rejectreason`, `adv_eyecolor`, `adv_haircolor`, `adv_drink`, `adv_ip`, `block_time`) VALUES (14651,'manager','Social','No','This is just a demo profile. Hope you like the dating software that we have produced. Feel free to create your own profile as well!   ','',204,5,3755,'152','Single','Petite','Caucasian','Christian','M','N','Y','Y','Activity Pals','','1966-01-29',1,NULL,'2019-11-28 23:22:42','Girl - Looking for fun','Some College','Above 100k','Self-employed','2019-11-27',0,'14140','N','','Blue','Blonde','Yes on special occasions','223.226.120.214 ','2019-12-02 19:58:09');
/*!40000 ALTER TABLE `adverts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affiliates`
--

DROP TABLE IF EXISTS `affiliates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliates` (
  `aff_userid` int(11) NOT NULL AUTO_INCREMENT,
  `aff_username` varchar(25) DEFAULT NULL,
  `aff_password` varchar(191) NOT NULL DEFAULT '',
  `aff_surname` varchar(25) DEFAULT NULL,
  `aff_forename` varchar(25) DEFAULT NULL,
  `aff_email` varchar(75) DEFAULT NULL,
  `aff_address` varchar(50) DEFAULT NULL,
  `aff_street` varchar(50) DEFAULT NULL,
  `aff_town` varchar(50) DEFAULT NULL,
  `aff_state` varchar(50) DEFAULT NULL,
  `aff_zipcode` varchar(10) DEFAULT NULL,
  `aff_country` varchar(50) DEFAULT NULL,
  `aff_joindate` date DEFAULT NULL,
  `aff_business` varchar(50) DEFAULT NULL,
  `aff_payname` varchar(50) DEFAULT NULL,
  `aff_website` varchar(100) DEFAULT NULL,
  `aff_fax` varchar(25) DEFAULT NULL,
  `aff_telephone` varchar(25) DEFAULT NULL,
  `aff_approved` tinyint(4) DEFAULT NULL,
  `aff_clickthru` int(11) DEFAULT NULL,
  PRIMARY KEY (`aff_userid`)
) ENGINE=MyISAM AUTO_INCREMENT=10288 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affiliates`
--

LOCK TABLES `affiliates` WRITE;
/*!40000 ALTER TABLE `affiliates` DISABLE KEYS */;
INSERT INTO `affiliates` (`aff_userid`, `aff_username`, `aff_password`, `aff_surname`, `aff_forename`, `aff_email`, `aff_address`, `aff_street`, `aff_town`, `aff_state`, `aff_zipcode`, `aff_country`, `aff_joindate`, `aff_business`, `aff_payname`, `aff_website`, `aff_fax`, `aff_telephone`, `aff_approved`, `aff_clickthru`) VALUES (10284,'testaffiliate','5f4dcc3b5aa765d61d8327deb882cf99','lastname','firstname1','info@idatemedia.com','Address','Street','Houston','Texas','77573','204','2019-04-05','Business Name','Business Name','https://www.idatemedia.com','','713-555-1212',NULL,NULL),(10285,'testaffiliate1','e10adc3949ba59abbe56e057f20f883e','Surname','Forename','jennifer@gmail.com','...','123','Batavia','New York','14020','204','2019-04-30','Student','check','http://dev.idatemedia.com/profiles/Jennifer.html','','1234567890',1,0),(10286,'testaffiliate2','5f4dcc3b5aa765d61d8327deb882cf99','Surname','Forename','mahiraaz0786@gmail.com','test','123','Batavia','New York','14020','204','2019-04-30','Business Name','check','http://dev.idatemedia.com/profiles/Jennifer.html','','1234567890',1,0);
/*!40000 ALTER TABLE `affiliates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audios`
--

DROP TABLE IF EXISTS `audios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audios` (
  `aud_id` int(11) NOT NULL AUTO_INCREMENT,
  `aud_userid` int(11) NOT NULL DEFAULT '0',
  `aud_audio` varchar(75) NOT NULL DEFAULT '',
  `aud_private` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`aud_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audios`
--

LOCK TABLES `audios` WRITE;
/*!40000 ALTER TABLE `audios` DISABLE KEYS */;
/*!40000 ALTER TABLE `audios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avatars`
--

DROP TABLE IF EXISTS `avatars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avatars` (
  `avatar_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avatar_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avatars`
--

LOCK TABLES `avatars` WRITE;
/*!40000 ALTER TABLE `avatars` DISABLE KEYS */;
INSERT INTO `avatars` (`avatar_id`, `pic_id`) VALUES (32,184);
/*!40000 ALTER TABLE `avatars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `badwords`
--

DROP TABLE IF EXISTS `badwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `badwords` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `word` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `word` (`word`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badwords`
--

LOCK TABLES `badwords` WRITE;
/*!40000 ALTER TABLE `badwords` DISABLE KEYS */;
INSERT INTO `badwords` (`id`, `word`) VALUES (10,'hotmail.com'),(11,'yahoo.com'),(12,'gmail.com'),(13,'fuck'),(14,'shit'),(15,'wanker');
/*!40000 ALTER TABLE `badwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bannercodeformats`
--

DROP TABLE IF EXISTS `bannercodeformats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bannercodeformats` (
  `size` varchar(20) NOT NULL DEFAULT '',
  `label` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`size`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bannercodeformats`
--

LOCK TABLES `bannercodeformats` WRITE;
/*!40000 ALTER TABLE `bannercodeformats` DISABLE KEYS */;
INSERT INTO `bannercodeformats` (`size`, `label`) VALUES ('468x60','468x60'),('120x60','120x60'),('100x100','100x100'),('120x90','120x90'),('728x90','728x90'),('300x600','300x600');
/*!40000 ALTER TABLE `bannercodeformats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bannercodes`
--

DROP TABLE IF EXISTS `bannercodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bannercodes` (
  `banner_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `size` varchar(20) NOT NULL DEFAULT '',
  `label` varchar(50) NOT NULL DEFAULT '',
  `code` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '-1',
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bannercodes`
--

LOCK TABLES `bannercodes` WRITE;
/*!40000 ALTER TABLE `bannercodes` DISABLE KEYS */;
INSERT INTO `bannercodes` (`banner_id`, `size`, `label`, `code`, `hits`, `is_active`) VALUES (6,'468x60','468x60','<p><a href=\"#\"><img src=\"http://dating.idatemedia.com/468x60.jpg\" /></a></p>\r\n',1,1),(7,'100x100','testb','<p><a href=\"https://dummyimage.com/100x100/993d99/fff.jpg\"><img alt=\"\" src=\"https://dummyimage.com/100x100/993d99/fff.jpg\" style=\"height:100px; width:100px\" /></a></p>\r\n',10,1),(8,'728x90','728x90','<img src=\"http://dating.idatemedia.com/728x90.jpg\" />',-1,1);
/*!40000 ALTER TABLE `bannercodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `ban_id` int(11) NOT NULL AUTO_INCREMENT,
  `ban_text` text NOT NULL,
  `ban_picture` varchar(255) NOT NULL DEFAULT '',
  `ban_start` date DEFAULT NULL,
  `ban_end` date DEFAULT NULL,
  PRIMARY KEY (`ban_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` (`ban_id`, `ban_text`, `ban_picture`, `ban_start`, `ban_end`) VALUES (21,'Test Aff Banner','468x60.jpg','2019-01-01','2019-09-19');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bannerstats`
--

DROP TABLE IF EXISTS `bannerstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bannerstats` (
  `banner_id` int(10) unsigned NOT NULL DEFAULT '0',
  `statdate` date NOT NULL DEFAULT '0000-00-00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_id`,`statdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bannerstats`
--

LOCK TABLES `bannerstats` WRITE;
/*!40000 ALTER TABLE `bannerstats` DISABLE KEYS */;
INSERT INTO `bannerstats` (`banner_id`, `statdate`, `hits`) VALUES (6,'2019-04-06',2),(6,'2019-04-10',12),(6,'2019-04-29',1),(6,'2019-04-30',1),(6,'2019-05-02',6),(6,'2019-11-26',1),(6,'2020-02-01',1),(6,'2020-02-03',1);
/*!40000 ALTER TABLE `bannerstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_forum`
--

DROP TABLE IF EXISTS `bb_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bb_forum` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_title` char(250) NOT NULL DEFAULT '',
  `forum_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `forum_status` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`forum_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_forum`
--

LOCK TABLES `bb_forum` WRITE;
/*!40000 ALTER TABLE `bb_forum` DISABLE KEYS */;
INSERT INTO `bb_forum` (`forum_id`, `forum_title`, `forum_time`, `forum_status`) VALUES (6,'Great Dates','2019-03-18 14:45:57',1),(7,'About test','2019-11-26 03:51:37',1);
/*!40000 ALTER TABLE `bb_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_posts`
--

DROP TABLE IF EXISTS `bb_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bb_posts` (
  `post_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) NOT NULL DEFAULT '0',
  `post_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_approved` tinyint(4) NOT NULL DEFAULT '0',
  `post_text` text NOT NULL,
  `subtopic_id` int(11) NOT NULL DEFAULT '0',
  `post_ext` varchar(4) NOT NULL DEFAULT '',
  PRIMARY KEY (`post_id`),
  KEY `subtopic_id` (`subtopic_id`,`post_approved`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_posts`
--

LOCK TABLES `bb_posts` WRITE;
/*!40000 ALTER TABLE `bb_posts` DISABLE KEYS */;
INSERT INTO `bb_posts` (`post_id`, `topic_id`, `poster_id`, `post_time`, `post_approved`, `post_text`, `subtopic_id`, `post_ext`) VALUES (7,0,14651,'2019-03-18 14:46:20',1,'A test forum area.',3,''),(8,0,14651,'2019-03-18 14:46:35',1,'How are you?',4,''),(9,0,14863,'2019-04-02 11:18:23',1,'Just a sample post in the forum.',5,''),(10,0,14863,'2019-04-02 11:21:04',1,'Another forum post.',6,''),(11,0,14875,'2019-04-10 07:34:23',1,'dfdfdfd  :smile: ',6,''),(12,0,14651,'2019-04-10 18:33:00',1,'Testing.',6,'');
/*!40000 ALTER TABLE `bb_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_subtopics`
--

DROP TABLE IF EXISTS `bb_subtopics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bb_subtopics` (
  `subtopic_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subtopic_title` varchar(250) NOT NULL DEFAULT '',
  `subtopic_status` tinyint(3) NOT NULL DEFAULT '0',
  `forum_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `subtopic_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`subtopic_id`),
  KEY `subtopic_status` (`subtopic_status`,`forum_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_subtopics`
--

LOCK TABLES `bb_subtopics` WRITE;
/*!40000 ALTER TABLE `bb_subtopics` DISABLE KEYS */;
INSERT INTO `bb_subtopics` (`subtopic_id`, `subtopic_title`, `subtopic_status`, `forum_id`, `topic_id`, `subtopic_time`) VALUES (3,'Sky Bar',1,6,0,'2019-03-18 14:46:20'),(4,'Hi',1,6,0,'2019-03-18 14:46:35'),(5,'First dating',1,6,0,'2019-04-02 11:18:23'),(6,'First dating',1,6,0,'2019-04-02 11:21:04');
/*!40000 ALTER TABLE `bb_subtopics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_topics`
--

DROP TABLE IF EXISTS `bb_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bb_topics` (
  `topic_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic_title` varchar(250) NOT NULL DEFAULT '',
  `topic_desc` varchar(250) DEFAULT NULL,
  `topic_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `forum_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_topics`
--

LOCK TABLES `bb_topics` WRITE;
/*!40000 ALTER TABLE `bb_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `bb_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blockmail`
--

DROP TABLE IF EXISTS `blockmail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blockmail` (
  `blk_receiverid` int(11) NOT NULL DEFAULT '0',
  `blk_senderid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blk_receiverid`,`blk_senderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blockmail`
--

LOCK TABLES `blockmail` WRITE;
/*!40000 ALTER TABLE `blockmail` DISABLE KEYS */;
/*!40000 ALTER TABLE `blockmail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `blg_id` int(11) NOT NULL AUTO_INCREMENT,
  `blg_userid` int(11) NOT NULL DEFAULT '0',
  `blg_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blg_message` text NOT NULL,
  `blg_approved` enum('Y','N','R') NOT NULL DEFAULT 'N',
  `blg_private` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`blg_id`),
  KEY `blg_userid` (`blg_userid`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` (`blg_id`, `blg_userid`, `blg_datetime`, `blg_message`, `blg_approved`, `blg_private`) VALUES (40,14651,'2019-04-03 19:20:38','Welcome to this test Blog. :laugh: ','Y','N'),(41,14862,'2019-04-03 19:20:44',' :suprise: hello all world  :tongue: ','Y','Y'),(42,14651,'2019-04-03 19:20:47','This is just a sample blog post here. Would like to see more...','Y','N'),(43,14877,'2019-11-21 05:17:28','test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test  :laugh:  :tongue:  :shock:  :bashful:  :sad: ','Y','N');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_detail`
--

DROP TABLE IF EXISTS `chat_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_detail` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `im_id` int(10) NOT NULL,
  `chat_type` varchar(20) NOT NULL,
  `chat_duration` varchar(255) NOT NULL,
  `chat_tokens` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`chat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_detail`
--

LOCK TABLES `chat_detail` WRITE;
/*!40000 ALTER TABLE `chat_detail` DISABLE KEYS */;
INSERT INTO `chat_detail` (`chat_id`, `im_id`, `chat_type`, `chat_duration`, `chat_tokens`, `created_at`) VALUES (1,0,'','','','2019-04-26 12:59:02'),(2,0,'','','','2019-04-26 13:13:22'),(3,0,'','','','2019-04-26 13:15:39');
/*!40000 ALTER TABLE `chat_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clubs`
--

DROP TABLE IF EXISTS `clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clubs` (
  `cl_clubid` int(11) NOT NULL AUTO_INCREMENT,
  `cl_userid` int(11) NOT NULL DEFAULT '0',
  `cl_clubname` varchar(50) NOT NULL DEFAULT '',
  `cl_address` text,
  `cl_city` varchar(45) NOT NULL DEFAULT '',
  `cl_country` varchar(45) NOT NULL DEFAULT '',
  `cl_phone` varchar(25) DEFAULT NULL,
  `cl_website` varchar(50) DEFAULT NULL,
  `cl_description` text,
  `cl_picture` varchar(75) DEFAULT NULL,
  `cl_approved` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cl_clubid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubs`
--

LOCK TABLES `clubs` WRITE;
/*!40000 ALTER TABLE `clubs` DISABLE KEYS */;
/*!40000 ALTER TABLE `clubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ent_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `approve` set('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversations` (
  `cid` varchar(25) NOT NULL DEFAULT '',
  `uid` varchar(25) NOT NULL DEFAULT '',
  `msgstartdt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `msgdttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `msgtext` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations`
--

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_sessions`
--

DROP TABLE IF EXISTS `db_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_sessions` (
  `session_id` varchar(32) NOT NULL DEFAULT '',
  `session_created` int(11) NOT NULL DEFAULT '0',
  `session_active` int(11) NOT NULL DEFAULT '0',
  `session_counter` int(11) NOT NULL DEFAULT '0',
  `session_remote_address` varchar(128) NOT NULL DEFAULT '',
  `session_data` longtext NOT NULL,
  `session_userid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_sessions`
--

LOCK TABLES `db_sessions` WRITE;
/*!40000 ALTER TABLE `db_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_articles`
--

DROP TABLE IF EXISTS `dir_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_articles` (
  `articles_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `body` mediumtext NOT NULL,
  `enterdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`articles_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_articles`
--

LOCK TABLES `dir_articles` WRITE;
/*!40000 ALTER TABLE `dir_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `dir_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_b_categories`
--

DROP TABLE IF EXISTS `dir_b_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_b_categories` (
  `ban_id` int(11) NOT NULL DEFAULT '0',
  `ban_category` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `ban_category` (`ban_category`,`ban_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_b_categories`
--

LOCK TABLES `dir_b_categories` WRITE;
/*!40000 ALTER TABLE `dir_b_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `dir_b_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_banners`
--

DROP TABLE IF EXISTS `dir_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_banners` (
  `ban_id` int(11) NOT NULL AUTO_INCREMENT,
  `ban_text` text NOT NULL,
  `ban_start` date DEFAULT NULL,
  `ban_end` date DEFAULT NULL,
  `ban_sponsor` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ban_id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_banners`
--

LOCK TABLES `dir_banners` WRITE;
/*!40000 ALTER TABLE `dir_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `dir_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_categories`
--

DROP TABLE IF EXISTS `dir_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent` varchar(120) NOT NULL DEFAULT '',
  `cat_child` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_categories`
--

LOCK TABLES `dir_categories` WRITE;
/*!40000 ALTER TABLE `dir_categories` DISABLE KEYS */;
INSERT INTO `dir_categories` (`cat_id`, `cat_parent`, `cat_child`) VALUES (1,'Generic Category','Test Sub-category 1'),(2,'Generic Category','Test Sub-category 2'),(3,'Generic Category','Test Sub-category 3');
/*!40000 ALTER TABLE `dir_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_mail_list`
--

DROP TABLE IF EXISTS `dir_mail_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_mail_list` (
  `mail_address` varchar(75) NOT NULL DEFAULT '',
  `time_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `auth_string` varchar(12) NOT NULL DEFAULT '',
  `authorised` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`mail_address`),
  KEY `mail_address` (`mail_address`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_mail_list`
--

LOCK TABLES `dir_mail_list` WRITE;
/*!40000 ALTER TABLE `dir_mail_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `dir_mail_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_searchlogs`
--

DROP TABLE IF EXISTS `dir_searchlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_searchlogs` (
  `src_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `src_string` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`src_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2130 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_searchlogs`
--

LOCK TABLES `dir_searchlogs` WRITE;
/*!40000 ALTER TABLE `dir_searchlogs` DISABLE KEYS */;
INSERT INTO `dir_searchlogs` (`src_id`, `src_string`) VALUES (2123,''),(2124,'gnm'),(2125,''),(2126,''),(2127,''),(2128,'gnm'),(2129,'test');
/*!40000 ALTER TABLE `dir_searchlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_site_list`
--

DROP TABLE IF EXISTS `dir_site_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_site_list` (
  `site_id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(120) NOT NULL DEFAULT '',
  `site_description` text NOT NULL,
  `site_email` varchar(120) NOT NULL DEFAULT '',
  `site_url` varchar(120) NOT NULL DEFAULT '',
  `site_linkback` varchar(250) NOT NULL DEFAULT '',
  `site_category` varchar(120) NOT NULL DEFAULT '',
  `site_live` enum('Y','N') NOT NULL DEFAULT 'N',
  `site_sponsor` enum('Y','N') NOT NULL DEFAULT 'N',
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `clicks_counter` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`site_id`),
  FULLTEXT KEY `site_name` (`site_name`,`site_description`,`site_category`,`site_url`)
) ENGINE=MyISAM AUTO_INCREMENT=2059 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_site_list`
--

LOCK TABLES `dir_site_list` WRITE;
/*!40000 ALTER TABLE `dir_site_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `dir_site_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_template`
--

DROP TABLE IF EXISTS `dir_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) NOT NULL DEFAULT '',
  `template_value` mediumtext NOT NULL,
  `template_variables` mediumtext NOT NULL,
  `template_type` enum('text','html') NOT NULL DEFAULT 'text',
  `template_title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `config_name` (`template_name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_template`
--

LOCK TABLES `dir_template` WRITE;
/*!40000 ALTER TABLE `dir_template` DISABLE KEYS */;
INSERT INTO `dir_template` (`template_id`, `template_name`, `template_value`, `template_variables`, `template_type`, `template_title`) VALUES (1,'Add_Url_Email','Dear Webmaster\r\nYour request to be added to the directory {CONST_LINK_SITE} has been received.\r\nThe following data has been submitted for review:\r\nSite Name: {sitename}\r\nCategory: {category}\r\nDescription: {description}\r\nEmail: {email}\r\nURL: {url}\r\nLink URL: {linkurl}\r\n\r\nIf you have not already placed a link back, please use the following code placed not further than one click from your homepage:\r\n\r\n<p align=\'center\'><font face=\'Verdana\' size=\'1\'><a href=\'{CONST_LINK_ROOT}\'><img ALT=\'Click here\' border=\'0\' src=\'{CONST_LINK_ROOT}/images/ondating_1.gif\' width=\'120\' height=\'60\'><br>{CONST_LINK_SITE}</a></font></p>\r\n\r\n\r\nIf any of this information is incorrect then please respond to this email with the corrections. Your site will be reviewed for inclusion with a couple of days.\r\n\r\n\r\nAdministrator','CONST_LINK_SITE;sitename;category;description;email;url;linkurl;CONST_LINK_ROOT;','text','Link Request Received'),(3,'Add_Url_Accept_Email','<p><font face=\'Verdana\' size=\'2\'>Dear webmaster<br><br>\r\n                            Your link {txtUrl} has been added to {CONST_LINK_ROOT} in the <b> {main_cat} </b> category and cross-referenced under <b>{sub_cat}</b>. \r\n                            You have also been included in the search engine. \r\n                            Links are checked once a month so please do not remove the link to our site or you may be removed without notice.<br><br>\r\n                            Thank you for advertising with us, we appreciate it and we wish you all the best with your site.<br><br>\r\n                            Regards<br><br>\r\n                            Administrator</font></p>','txtUrl;main_cat;CONST_LINK_ROOT;sub_cat;CONST_LINK_SITE;sitename;category;description;email;url;linkurl;','html','Link Request Approved'),(4,'Add_Url_Reject_Email','<font face=\'Verdana\' size=\'2\'>Dear webmaster<br><br>\r\n                    Unfortunately we are unable to add your link to our directory/search engine for the following reason(s):<p><i>{lstReason}</i></p>\r\n                    <p><i>{txtReason}</i></p>\r\n                    Please resubmit your site when it meets the criteria and we will be happy to include you in the directory and search engine.<br><br>\r\n                    Regards<br><br>\r\n                    Administrator</font>','txtReason;lstReason;CONST_LINK_SITE;sitename;category;description;email;url;linkurl;CONST_LINK_ROOT;','html','Link Request Rejected');
/*!40000 ALTER TABLE `dir_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_voting`
--

DROP TABLE IF EXISTS `dir_voting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_voting` (
  `siteid` int(11) NOT NULL DEFAULT '0',
  `votes` int(11) DEFAULT '0',
  `value` int(11) DEFAULT '0',
  `average` decimal(3,2) unsigned DEFAULT '0.00',
  PRIMARY KEY (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_voting`
--

LOCK TABLES `dir_voting` WRITE;
/*!40000 ALTER TABLE `dir_voting` DISABLE KEYS */;
/*!40000 ALTER TABLE `dir_voting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_voting_history`
--

DROP TABLE IF EXISTS `dir_voting_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_voting_history` (
  `site_id` int(11) NOT NULL DEFAULT '0',
  `IP` varchar(255) NOT NULL DEFAULT '',
  `lastvote` datetime DEFAULT NULL,
  PRIMARY KEY (`site_id`,`IP`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_voting_history`
--

LOCK TABLES `dir_voting_history` WRITE;
/*!40000 ALTER TABLE `dir_voting_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `dir_voting_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encounters`
--

DROP TABLE IF EXISTS `encounters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encounters` (
  `enc_recno` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `enc_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `enc_viewerid` int(11) unsigned NOT NULL DEFAULT '0',
  `enc_viewdate` date DEFAULT '0000-00-00',
  PRIMARY KEY (`enc_recno`),
  KEY `enc_userid` (`enc_userid`,`enc_viewerid`)
) ENGINE=MyISAM AUTO_INCREMENT=580 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encounters`
--

LOCK TABLES `encounters` WRITE;
/*!40000 ALTER TABLE `encounters` DISABLE KEYS */;
INSERT INTO `encounters` (`enc_recno`, `enc_userid`, `enc_viewerid`, `enc_viewdate`) VALUES (518,14840,14859,'2019-04-05'),(519,0,14859,'2019-03-07'),(520,14859,14651,'2019-12-27'),(521,14840,14651,'2019-12-08'),(522,14651,14859,'2019-04-05'),(523,14860,14651,'2019-12-31'),(524,14861,14651,'2020-01-27'),(526,14651,14863,'2019-04-02'),(527,14864,14651,'2020-01-27'),(528,14865,14651,'2020-02-03'),(529,14651,14870,'2019-04-05'),(530,14870,14651,'2020-01-14'),(531,14871,14651,'2020-02-03'),(532,14863,14651,'2019-04-07'),(533,14865,14859,'2019-04-05'),(534,14869,14651,'2020-01-14'),(535,14871,14868,'2019-04-05'),(536,14868,14651,'2019-12-17'),(537,14872,14651,'2020-01-19'),(539,14871,14872,'2019-04-06'),(540,14864,14872,'2019-04-06'),(568,14876,14872,'2019-05-01'),(542,14651,14875,'2019-04-16'),(543,0,14875,'2019-04-08'),(544,14875,14651,'2020-01-07'),(545,14651,14872,'2019-05-01'),(546,14863,14875,'2019-04-10'),(547,14870,14875,'2019-04-10'),(548,14876,14651,'2019-12-26'),(549,14876,14875,'2019-04-29'),(550,14876,14859,'2019-04-16'),(551,14875,14876,'2019-04-19'),(552,14876,14877,'2019-04-18'),(553,14859,14876,'2019-04-16'),(554,14877,14876,'2019-04-18'),(556,14868,14877,'2019-04-16'),(557,14869,14877,'2019-04-16'),(558,14865,14877,'2019-04-16'),(559,14651,14877,'2019-04-16'),(560,14870,14877,'2019-04-17'),(561,14840,14877,'2019-04-16'),(562,14858,14876,'2019-04-16'),(563,14872,14877,'2019-04-17'),(564,14651,14876,'2019-04-17'),(567,14872,14876,'2019-04-24'),(569,14859,14872,'2019-05-20'),(570,14651,14864,'2019-11-18'),(571,14858,14864,'2019-11-18'),(572,14876,14840,'2019-11-21'),(573,14872,14840,'2019-11-21'),(574,14870,14840,'2019-11-21'),(575,14868,14840,'2019-11-21'),(576,14845,14651,'2019-11-21'),(577,14859,14840,'2019-11-25'),(578,14867,14651,'2020-02-03'),(579,14879,14651,'2019-12-17');
/*!40000 ALTER TABLE `encounters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `ev_eventid` int(11) NOT NULL AUTO_INCREMENT,
  `ev_userid` int(11) NOT NULL DEFAULT '0',
  `ev_eventname` varchar(50) NOT NULL DEFAULT '',
  `ev_address` varchar(60) DEFAULT NULL,
  `ev_city` varchar(45) DEFAULT NULL,
  `ev_state` varchar(250) NOT NULL DEFAULT '',
  `ev_country` varchar(45) DEFAULT NULL,
  `ev_schedule` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ev_phone` varchar(25) DEFAULT NULL,
  `ev_website` varchar(50) DEFAULT NULL,
  `ev_description` text,
  `ev_picture` varchar(75) DEFAULT NULL,
  `ev_approved` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ev_eventid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` (`ev_eventid`, `ev_userid`, `ev_eventname`, `ev_address`, `ev_city`, `ev_state`, `ev_country`, `ev_schedule`, `ev_phone`, `ev_website`, `ev_description`, `ev_picture`, `ev_approved`) VALUES (13,0,'Test Event','My House','3690','4','204','0000-00-00 00:00:00','310-555-1212','http://www.google.com','THias asd fasd fasd fasd fasd f','/events/TestEvent.jpg',1),(14,0,'test','test','3508','1','204','2019-03-31 12:00:00','5544332211','http://test.com','fjkdbguid fgudfgduf giudful gdfug diugdf uifdghd guidg df uidgh udfhg uidfgh  udifgud uidfh fdgu','/events/test.jpg',1),(15,0,'Test Two Event','Houston, Texas','3675','3','204','2019-06-05 22:00:00','310-555-1212','https://www.idatemedia.com','This is a test description and hope it works for you.','/events/TestTwoEvent.jpg',1),(16,0,'Test event','xyz','3509','1','204','2019-11-30 18:00:00','000121212','http://','here is event desc','',1),(17,0,'testeve','xyz','3509','1','204','0000-00-00 00:00:00','000121212','','fsdfds','',1);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flirt`
--

DROP TABLE IF EXISTS `flirt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flirt` (
  `Flirt_ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Flirt_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flirt`
--

LOCK TABLES `flirt` WRITE;
/*!40000 ALTER TABLE `flirt` DISABLE KEYS */;
INSERT INTO `flirt` (`Flirt_ID`) VALUES (13),(14),(15),(16),(17),(18),(20),(28);
/*!40000 ALTER TABLE `flirt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery` (
  `Gallery_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LangID` char(3) NOT NULL DEFAULT '',
  `Name` varchar(250) NOT NULL DEFAULT '',
  `Description` mediumtext NOT NULL,
  `mem_id` int(11) NOT NULL DEFAULT '0',
  `Level` enum('Private','Hotlist','Public') NOT NULL DEFAULT 'Private',
  PRIMARY KEY (`Gallery_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` (`Gallery_ID`, `LangID`, `Name`, `Description`, `mem_id`, `Level`) VALUES (7,'EN','Name','dsbf sdufg sdu sdguyfs dguysdf gsdf',14859,'Private'),(8,'EN','My Good Pics','Just some pics.',14860,'Public'),(9,'EN','test','',14877,'Hotlist'),(10,'EN','test','ffff',14651,'Public'),(11,'EN','Two','my gallery',14651,'Public'),(12,'EN','Nature','this is my gallery.Please have a look .',14840,'Public');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleryitem`
--

DROP TABLE IF EXISTS `galleryitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleryitem` (
  `GalleryItem_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Gallery_ID` int(11) NOT NULL DEFAULT '0',
  `Description` varchar(255) NOT NULL DEFAULT '',
  `Type` enum('Image','Video') NOT NULL DEFAULT 'Image',
  `Approved` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`GalleryItem_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleryitem`
--

LOCK TABLES `galleryitem` WRITE;
/*!40000 ALTER TABLE `galleryitem` DISABLE KEYS */;
INSERT INTO `galleryitem` (`GalleryItem_ID`, `Gallery_ID`, `Description`, `Type`, `Approved`) VALUES (12,8,'','Image','Approved'),(13,8,'','Image','Approved'),(14,10,'','Image','Approved'),(15,10,'','Image','Approved'),(16,11,'','Image','Approved'),(17,12,'','Image','Approved'),(18,12,'','Image','Approved');
/*!40000 ALTER TABLE `galleryitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo_city`
--

DROP TABLE IF EXISTS `geo_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_city` (
  `gct_cityid` int(11) NOT NULL AUTO_INCREMENT,
  `gct_countryid` int(11) NOT NULL DEFAULT '0',
  `gct_name` char(30) DEFAULT NULL,
  `gct_gmt` tinyint(3) NOT NULL DEFAULT '0',
  `gct_stateid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gct_cityid`,`gct_countryid`,`gct_stateid`),
  KEY `gct_countryid` (`gct_countryid`,`gct_stateid`)
) ENGINE=MyISAM AUTO_INCREMENT=14249 DEFAULT CHARSET=latin1 PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo_city`
--

LOCK TABLES `geo_city` WRITE;
/*!40000 ALTER TABLE `geo_city` DISABLE KEYS */;
INSERT INTO `geo_city` (`gct_cityid`, `gct_countryid`, `gct_name`, `gct_gmt`, `gct_stateid`) VALUES (14247,0,'Unspecified',0,0),(1,2,'Bajram',1,0),(2,2,'Ballsht',1,0),(3,2,'Berat',1,0),(4,2,'Bilisht',1,0),(5,2,'Bulqize',1,0),(6,2,'Burrel',1,0),(7,2,'Cernik',1,0),(8,2,'Corovode',1,0),(9,2,'Delvine',1,0),(10,2,'Durres',1,0),(11,2,'Elbasan',1,0),(12,2,'Erseke',1,0),(13,2,'Fier',1,0),(14,2,'Gjirokaster',1,0),(15,2,'Gramsh',1,0),(16,2,'Han i Hotit',1,0),(17,2,'Kavaje',1,0),(18,2,'Kelcyre',1,0),(19,2,'Klos',1,0),(20,2,'Koplik',1,0),(21,2,'Korce',1,0),(22,2,'Kruje',1,0),(23,2,'Krume',1,0),(24,2,'Kucove',1,0),(25,2,'Kukes',1,0),(26,2,'Lac',1,0),(27,2,'Lezhe',1,0),(28,2,'Maliq',1,0),(29,2,'Mavrove',1,0),(30,2,'Peqin',1,0),(31,2,'Permet',1,0),(32,2,'Peshkopi',1,0),(33,2,'Pogradec',1,0),(34,2,'Puke',1,0),(35,2,'Rreshen',1,0),(36,2,'Rrogozhine',1,0),(37,2,'Sarande',1,0),(38,2,'Selenice',1,0),(39,2,'Shengjin',1,0),(40,2,'Shijak',1,0),(41,2,'Shkoder',1,0),(42,2,'Tepelene',1,0),(43,2,'Tirana *',1,0),(44,2,'Valbone',1,0),(45,2,'Vlore',1,0),(46,3,'Algers*',1,0),(47,3,'Annaba',1,0),(48,3,'Bechar',1,0),(49,3,'Blida',1,0),(50,3,'Constantine',1,0),(51,3,'Ghardaia',1,0),(52,3,'Oran',1,0),(53,3,'Setif',1,0),(54,3,'Sidi Bel Abbes',1,0),(55,3,'Tamanrasset',1,0),(56,3,'Tindouf',1,0),(57,3,'Tlemcen',1,0),(58,4,'Pago Pago',-11,0),(59,5,'Soyo',1,0),(60,5,'Ambriz',1,0),(61,5,'Luanda*',1,0),(62,5,'Malanje',1,0),(63,5,'Porto Amboim',1,0),(64,5,'Luena',1,0),(65,5,'Lobito',1,0),(66,5,'Benguela',1,0),(67,5,'Huambo',1,0),(68,5,'Lubango',1,0),(69,5,'Menongue',1,0),(70,5,'Namibe',1,0),(71,6,'The Valley*',-4,0),(72,6,'Blowing Point',-4,0),(73,7,'Queen Maud Land',0,0),(74,7,'Graham Land',0,0),(75,7,'South Pole',0,0),(76,7,'Marie Byrd Land',0,0),(77,7,'Victoria Land',0,0),(78,7,'Wilkes Land',0,0),(79,8,'Codrington',-4,0),(80,8,'Saint John\'s*',-4,0),(81,9,'San Miguel',-3,0),(82,9,'Resistencia',-3,0),(83,9,'San Juan',-3,0),(84,9,'Cordoba',-3,0),(85,9,'Santa Fe',-3,0),(86,9,'Mendoza',-3,0),(87,9,'Rozario',-3,0),(88,9,'Rio Cuarto',-3,0),(89,9,'Buenos Aires*',-3,0),(90,9,'La Plata',-3,0),(91,9,'Bahia Blanca',-3,0),(92,9,'San Carlos',-3,0),(93,9,'Viedma',-3,0),(94,9,'Mar del Plata',-3,0),(95,9,'Comodoro Rivadavia',-3,0),(96,9,'Puerto Santa Cruz',-3,0),(97,9,'Ushuaia',-3,0),(98,10,'Gyumri',4,0),(99,10,'Vanadzor(Kirovokan)',4,0),(100,10,'Sevan',4,0),(101,10,'Yerevan*',4,0),(102,10,'Sot\'k',4,0),(103,10,'Angeghakoti',4,0),(104,10,'Kapan',4,0),(105,11,'Druif',-4,0),(106,11,'Oranjestad',-4,0),(107,11,'Santa Cruz',-4,0),(108,11,'Barcadera',-4,0),(109,11,'Sint Nicolaas',-4,0),(110,13,'Adelaide*',9,73),(111,13,'Albany',8,76),(112,13,'Aldury',9,0),(113,13,'Alice Springs',9,71),(114,13,'Armidale',9,70),(115,13,'Bairnsdale',10,75),(116,13,'Ballarat',10,72),(117,13,'Bendigo',10,75),(118,13,'Bourke',9,0),(119,13,'Brisbane',10,72),(120,13,'Broken Hill',9,70),(121,13,'Broome',8,76),(122,13,'Bunburu',8,76),(123,13,'Bundaberg',10,72),(124,13,'Cairns*',10,72),(125,13,'Canberra*',10,69),(127,13,'Carnarvon',8,76),(128,13,'Ceduna',9,73),(129,13,'Charleville',9,0),(130,13,'Charters Towers',9,0),(131,13,'Cobar',9,0),(132,13,'Coffs Harbour',9,70),(133,13,'Coober Pedy',9,73),(134,13,'Cunnamulla',9,0),(135,13,'Dampier',9,0),(136,13,'Darwin',9,71),(137,13,'Derby',9,0),(138,13,'Devonpart',9,0),(139,13,'Dubbo',9,70),(140,13,'Esperance',8,76),(141,13,'Forsayth',9,0),(142,13,'Geelong',10,75),(143,13,'Geraldton',8,76),(144,13,'Gold Coast',10,72),(145,13,'Hillston',9,0),(146,13,'Hobart*',10,74),(147,13,'Kalgoorlie',8,76),(148,13,'Karratha',8,76),(149,13,'Katherine',9,71),(150,13,'Kununurra',8,76),(151,13,'Launceston',10,74),(152,13,'Leigh Creek',9,0),(153,13,'Leonora',9,0),(154,13,'Lismore',9,0),(155,13,'Mackay',10,72),(156,13,'Maryborough',10,72),(157,13,'Meekatharra',9,0),(158,13,'Melbourne*',10,75),(159,13,'Mildura',10,75),(160,13,'Mount Gambier',9,73),(161,13,'Mount Isa',10,72),(162,13,'Newcastle',9,70),(163,13,'Newman',9,0),(164,13,'Normanton',9,0),(165,13,'Orange',9,70),(166,13,'Paraburdoo',9,0),(167,13,'Fremantle',8,76),(168,13,'Port Augusta',9,73),(169,13,'Port Hedland',8,76),(170,13,'Port Macquarie',9,70),(171,13,'Port Pirie',9,73),(172,13,'Quilpie',9,0),(173,13,'Rockhampton',10,72),(174,13,'Swan Hill',10,75),(175,13,'Sydney*',9,70),(176,13,'Tamworth',9,70),(177,13,'Tennant Creek',9,71),(178,13,'Toowoomba',10,72),(179,13,'Townsville',10,72),(180,13,'Wagga Wagga',9,70),(181,13,'Walgett',9,0),(182,13,'Warrnambool',10,75),(183,13,'Weipa',9,0),(184,13,'Whyalla Norrie',9,73),(185,13,'Wollongong',9,70),(186,13,'Wyndham',9,0),(187,13,'Yaraka',9,0),(188,13,'Yarrie',9,0),(189,13,'Yulara',9,0),(190,14,'Linz',1,0),(191,14,'Vienna*',1,0),(192,14,'Salzburg',1,0),(193,14,'Innsbruck',1,0),(194,14,'Klagenfurt',1,0),(195,14,'Graz',1,0),(196,15,'Xacmaz',3,0),(197,15,'Saki',3,0),(198,15,'Mingacevir',3,0),(199,15,'Lyaki',3,0),(200,15,'Ganca',3,0),(201,15,'Sumgayit',3,0),(202,15,'Baku*',3,0),(203,15,'Kurdamir',3,0),(204,15,'Xankandi(Stepanakert)',3,0),(205,15,'Naxcivan',3,0),(206,15,'Astara',3,0),(207,16,'Massau*',-5,0),(208,16,'Grand Bahama',-5,0),(209,16,'Free Port',-5,0),(210,16,'Great Abaco',-5,0),(211,16,'Eleuthera',-5,0),(212,16,'Cat Island',-5,0),(213,16,'Great Exuma',-5,0),(214,16,'Long Island',-5,0),(215,16,'Great Inagua',-5,0),(216,16,'Matthew Town',-5,0),(217,17,'Al Muharraq',3,0),(218,17,'Manama*',3,0),(219,17,'Mina Salman',3,0),(220,17,'Jidd Hafs',3,0),(221,17,'Sitrah',3,0),(222,17,'Awali',3,0),(223,18,'Randgrpur',6,0),(224,18,'Mymensingh',6,0),(225,18,'Dhaka*',6,0),(226,18,'Narayangani',6,0),(227,18,'Chandpur',6,0),(228,18,'Khulna',6,0),(229,18,'Barisal',6,0),(230,18,'Mongla Port',6,0),(231,18,'Chittagong',6,0),(232,18,'Cox\'s Bazar',6,0),(233,19,'Speightstown',-4,0),(234,19,'Bathsheba',-4,0),(235,19,'Holetown',-4,0),(236,19,'Bridgetown',-4,0),(237,19,'The Crane',-4,0),(238,20,'Polatsk',2,0),(239,20,'Vitsyebsk',2,0),(240,20,'Orsha',2,0),(241,20,'Minsk*',2,0),(242,20,'Hrodno',2,0),(243,20,'Mahilyow',2,0),(244,20,'Baranavichy',2,0),(245,20,'Babruysk',2,0),(246,20,'Homyel',2,0),(247,20,'Pinsk',2,0),(248,20,'Brest',2,0),(249,20,'Mazyr',2,0),(250,21,'Antwerp',1,0),(251,21,'Zeebrugge',1,0),(252,21,'Oostende',1,0),(253,21,'Brugge',1,0),(254,21,'Gent',1,0),(255,21,'Hasselt',1,0),(256,21,'Brussels',1,0),(257,21,'Kortrijk',1,0),(258,21,'Mons',1,0),(259,21,'Charleroi',1,0),(260,21,'Namur',1,0),(261,21,'Bastogne',1,0),(262,22,'Corozal',-6,0),(263,22,'Orange',-6,0),(264,22,'Walk',-6,0),(265,22,'Belize City',-6,0),(266,22,'Belmopan',-6,0),(267,22,'Big Creek',-6,0),(268,22,'Punta Gorda',-6,0),(269,23,'Malanville',1,0),(270,23,'Kandi',1,0),(271,23,'Natitingou',1,0),(272,23,'Parakou',1,0),(273,23,'Abomey',1,0),(274,23,'Porto-Novo*',1,0),(275,23,'Ouidah',1,0),(276,23,'Cotonou',1,0),(277,24,'Saint George',-4,0),(278,24,'Somerset',-4,0),(279,24,'Hamilton*',-4,0),(280,25,'Gasa Dzong',6,0),(281,25,'Tongsa',6,0),(282,25,'Paro',6,0),(283,25,'Thimphu*',6,0),(284,25,'Tashigang',6,0),(285,25,'Phuntsholing',6,0),(286,25,'Samdrup Jongkhar',6,0),(287,26,'Cobija',-4,0),(288,26,'Trinidad',-4,0),(289,26,'La Paz*',-4,0),(290,26,'Cochabamba',-4,0),(291,26,'Oruro',-4,0),(292,26,'Santa Cruz',-4,0),(293,26,'Sucre',-4,0),(294,26,'Potosi',-4,0),(295,26,'Tarija',-4,0),(296,27,'Prijedor',1,0),(297,27,'Bihac',1,0),(298,27,'Banja Luka',1,0),(299,27,'Bosanski Brod',1,0),(300,27,'Brcko',1,0),(301,27,'Tuzla',1,0),(302,27,'Zenica',1,0),(303,27,'Saraejevo*',1,0),(304,27,'Gorazde',1,0),(305,27,'Mostar',1,0),(306,28,'Kasane',2,0),(307,28,'Maun',2,0),(308,28,'Francistown',2,0),(309,28,'Ghanzi',2,0),(310,28,'Mamuno',2,0),(311,28,'Mahalapye',2,0),(312,28,'Bobonong',2,0),(313,28,'Serowe',2,0),(314,28,'Gaborone*',2,0),(315,28,'Tshabong',2,0),(316,29,'Manaus',-4,0),(317,29,'Belem',-4,0),(318,29,'Sao Luis',-4,0),(319,29,'Fortaleza',-4,0),(320,29,'Recife',-4,0),(321,29,'Rio Branco',-4,0),(322,29,'Salvador',-4,0),(323,29,'Cuiaba',-4,0),(324,29,'Brasilia*',-4,0),(325,29,'Corumba',-4,0),(326,29,'Belo Horizonte',-4,0),(327,29,'Sao Paulo',-4,0),(328,29,'Santos',-4,0),(329,29,'Vitoria',-4,0),(330,29,'Rio de Janeiro',-4,0),(331,29,'Porto Alegre',-4,0),(332,30,'Angegada',-4,0),(333,30,'Virgin Gorda',-4,0),(334,30,'Jost Van Dyke',-4,0),(335,30,'Tortola',-4,0),(336,30,'Road Town',-4,0),(337,31,'Muara',8,0),(338,31,'Bandar Seri Begawan*',8,0),(339,31,'Tutong',8,0),(340,31,'Seria',8,0),(341,31,'Kuala Belait',8,0),(342,31,'Bangar',8,0),(343,31,'Sukang',8,0),(344,32,'Vidin',2,0),(345,32,'Lom',2,0),(346,32,'Pleven',2,0),(347,32,'Ruse',2,0),(348,32,'Varna',2,0),(349,32,'Sofia',2,0),(350,32,'Nesebur',2,0),(351,32,'Burgas',2,0),(352,32,'Stara Zagora',2,0),(354,32,'Plovdiv',2,0),(355,32,'Blagoevgrad',2,0),(356,32,'Kurdzhali',2,0),(357,34,'Cibitoke',2,0),(358,34,'Muyinga',2,0),(359,34,'Ngozi',2,0),(360,34,'Bubanza',2,0),(361,34,'Bujumbura*',2,0),(362,34,'Gitega',2,0),(363,34,'Bururi',2,0),(364,35,'Maroua',1,0),(365,35,'Garoua',1,0),(366,35,'Ngaoundere',1,0),(367,35,'Bamenda',1,0),(368,35,'Bafoussam',1,0),(369,35,'Nkongsamba',1,0),(370,35,'Tiko',1,0),(371,35,'Douala',1,0),(372,35,'Yaounde*',1,0),(373,35,'Kribi',1,0),(374,36,'Siemreab',7,0),(375,36,'Batdambang',7,0),(376,36,'Stoeng Treng',7,0),(377,36,'Kracheh',7,0),(378,36,'Kampong Cham',7,0),(379,36,'Phnom Penh*',7,0),(380,36,'Krong Kaoh Kong',7,0),(381,36,'Kampong Saom',7,0),(382,36,'Kampot',7,0),(384,37,'Edmonton*',-7,52),(386,37,'Iqaluit*',-5,59),(388,37,'Victoria*',-9,53),(390,37,'Toronto',-5,60),(392,37,'Winnipeg*',-6,54),(394,37,'Charlottetown*',-4,61),(396,37,'Fredericton*',-4,55),(398,37,'Quebec City*',-5,62),(400,37,'St. John\'s*',-3,56),(402,37,'Regina*',-6,63),(404,37,'Yellowknife*',-7,57),(406,37,'Whitehorse*',-8,64),(408,37,'Halifax*',-4,58),(409,38,'Santo Antao',-1,0),(410,38,'Mindelo',-1,0),(411,38,'Santa Luzia',-1,0),(412,38,'Sao Vicente',-1,0),(413,38,'Sao Nicolau',-1,0),(414,38,'Sal',-1,0),(415,38,'Santa Maria',-1,0),(416,38,'Boa Vista',-1,0),(417,38,'Tarrafal',-1,0),(418,38,'Maio',-1,0),(419,38,'Praia*',-1,0),(420,38,'Fogo',-1,0),(421,38,'Sao Tiago',-1,0),(422,38,'Brava',-1,0),(423,39,'Cayman Brac',-5,0),(424,39,'Little Cayman',-5,0),(425,39,'Grand Cayman',-5,0),(426,39,'George Town',-5,0),(427,40,'Birao',1,0),(428,40,'Bossangoa',1,0),(429,40,'Bria',1,0),(430,40,'Bambari',1,0),(431,40,'Bouar',1,0),(432,40,'Bangui*',1,0),(433,40,'Mbaiki',1,0),(434,40,'Nola',1,0),(435,40,'Bangassou',1,0),(436,41,'Aozou',1,0),(437,41,'Faya-Largeau',1,0),(438,41,'Mao',1,0),(439,41,'Abeche',1,0),(440,41,'Mongo',1,0),(441,41,'N\'Djamena*',1,0),(442,41,'Bongor',1,0),(443,41,'Sarh',1,0),(444,41,'Doba',1,0),(445,41,'Moundou',1,0),(446,42,'Arica',-4,0),(447,42,'Iquique',-4,0),(448,42,'Antofagasta',-4,0),(449,42,'Chanaral',-4,0),(450,42,'Coquimbo',-4,0),(451,42,'Valparaiso',-4,0),(452,42,'San Antonio',-4,0),(453,42,'Santiago*',-4,0),(454,42,'Rancagua',-4,0),(455,42,'Talcahuano',-4,0),(456,42,'Concepcion',-4,0),(457,42,'Lebu',-4,0),(458,42,'Temuco',-4,0),(459,42,'Puerto Montt',-4,0),(460,42,'Punta Arenas',-4,0),(461,43,'Harbin',8,0),(462,43,'Shenyand',8,0),(463,43,'Beijing*',8,0),(464,43,'Tianjin',8,0),(465,43,'Urumqi',8,0),(466,43,'Lanzhou',8,0),(467,43,'Xi\'an',8,0),(468,43,'Zhengzhou',8,0),(469,43,'Nanjing',8,0),(470,43,'Shanghai',8,0),(471,43,'Wuhan',8,0),(472,43,'Chengdu',8,0),(473,43,'Chongqing',8,0),(474,43,'Lhaza',8,0),(475,43,'Guangzhou',8,0),(476,43,'Taiwan (Is)',8,0),(477,43,'Taipei',8,0),(478,44,'Santa Marta',-5,0),(479,44,'Barranquilla',-5,0),(480,44,'Cartagena',-5,0),(481,44,'Covenas',-5,0),(482,44,'Turbo',-5,0),(483,44,'Cucuta',-5,0),(484,44,'Medellin',-5,0),(485,44,'Bogota*',-5,0),(486,44,'Ibague',-5,0),(487,44,'Buenaventura',-5,0),(488,44,'Cali',-5,0),(489,44,'Tumaco',-5,0),(490,44,'Pasto',-5,0),(491,44,'Mitu',-5,0),(492,44,'Leticia',-5,0),(493,45,'Moroni*',3,0),(494,45,'Fomboni',3,0),(495,45,'Moutsamoudou',3,0),(496,45,'Anjouan(Nzwani)',3,0),(497,45,'Domoni',3,0),(498,45,'Moheli(Mwali)',3,0),(499,46,'Gbadolite',1,0),(500,46,'Bumba',1,0),(501,46,'Mbandaka',1,0),(502,46,'Kisangani',1,0),(503,46,'Goma',1,0),(504,46,'Bukavu',1,0),(505,46,'Kindu',1,0),(506,46,'Ilebo',1,0),(507,46,'Kinshasa*',1,0),(508,46,'Matadi',1,0),(509,46,'Kikwit',1,0),(510,46,'Kananga',1,0),(511,46,'Mbuji-Mayi',1,0),(512,46,'Kalemie',1,0),(513,46,'Kolwezi',1,0),(514,46,'Likasi',1,0),(515,46,'LubumbashiBoma',1,0),(516,46,'Banana',1,0),(517,48,'Liberia',-6,0),(518,48,'Nicoya',-6,0),(519,48,'Puntarenas',-6,0),(520,48,'Alajuela',-6,0),(521,48,'Caldera',-6,0),(522,48,'San Jose',-6,0),(523,48,'Moin',-6,0),(524,48,'Puerto Limon',-6,0),(525,48,'San Isidro',-6,0),(526,48,'Golfito',-6,0),(527,49,'Zagreb',1,0),(528,49,'Sisak',1,0),(529,49,'Osijek',1,0),(530,49,'Rijeka',1,0),(531,49,'Omisalj',1,0),(532,49,'Pula',1,0),(533,49,'Zadar',1,0),(534,49,'Sibenik',1,0),(535,49,'Split',1,0),(536,49,'Ploce',1,0),(537,49,'Dubrovnik',1,0),(538,50,'Havana*',-5,0),(539,50,'Mariel',-5,0),(540,50,'Matanzas',-5,0),(541,50,'Pinar del Rio',-5,0),(542,50,'Santa Clara',-5,0),(543,50,'Cienfuegos',-5,0),(544,50,'Nuevitas',-5,0),(545,50,'Camaguey',-5,0),(546,50,'Holguin',-5,0),(547,50,'Manzanillo',-5,0),(548,50,'Bayamo',-5,0),(549,50,'Guantanamo',-5,0),(550,50,'Santiago de Cuba',-5,0),(551,50,'Isla de La Juventud',-5,0),(552,51,'Kyrenia',2,0),(553,51,'Morphou',2,0),(554,51,'Nicosia*',2,0),(555,51,'Famagusta',2,0),(556,51,'Larnaca',2,0),(557,51,'Polis',2,0),(558,51,'Paphos',2,0),(559,51,'Episkopi',2,0),(560,52,'Decin',1,0),(561,52,'Liberec',1,0),(562,52,'Usti nad Labem',1,0),(563,52,'Prague*',1,0),(564,52,'Plzen',1,0),(565,52,'Hradec Kralove',1,0),(566,52,'Ostrava',1,0),(567,52,'Olomouc',1,0),(568,52,'Ceske Budejovice',1,0),(569,52,'Brno',1,0),(570,53,'Skagen',1,0),(571,53,'Alborg',1,0),(572,53,'Arhus',1,0),(573,53,'Jutland',1,0),(574,53,'Esbjerg',1,0),(575,53,'Aberna',1,0),(576,53,'Odense',1,0),(577,53,'Copenhagen*',1,0),(578,53,'Lolland',1,0),(579,53,'Mon',1,0),(580,53,'Falster',1,0),(581,53,'Bornholm',1,0),(582,55,'Khor Angar',3,0),(583,55,'Balho',3,0),(584,55,'Obock',3,0),(585,55,'Tadjoura',3,0),(586,55,'Yoboki',3,0),(587,55,'Dikhil',3,0),(588,55,'Ali Sabieh',3,0),(589,55,'Djibouti*',3,0),(590,56,'Portsmouth',-4,0),(591,56,'Marigot',-4,0),(592,56,'Rosalie',-4,0),(593,56,'Roseau*',-4,0),(594,57,'Puerto Plata',-4,0),(595,57,'Monte Cristi',-4,0),(596,57,'Santiago',-4,0),(597,57,'San Francisco',-4,0),(598,57,'La Vega',-4,0),(599,57,'Elias Pina',-4,0),(600,57,'Santo Domingo*',-4,0),(601,57,'Haina',-4,0),(602,57,'Higuey',-4,0),(603,57,'San Pedro',-4,0),(604,57,'La Romana',-4,0),(605,58,'San Lorenzo',-5,0),(606,58,'Quito*',-5,0),(607,58,'Nueva Loja',-5,0),(608,58,'Manta',-5,0),(609,58,'Portoviejo',-5,0),(610,58,'Ambato',-5,0),(611,58,'Puyo',-5,0),(612,58,'Riobamba',-5,0),(613,58,'Guayaquil',-5,0),(614,58,'La Libertad',-5,0),(615,58,'Cuenca',-5,0),(616,58,'Machala',-5,0),(617,58,'Puerto Bolivar',-5,0),(618,58,'Loja',-5,0),(619,59,'Alexandoria',2,0),(620,59,'Damietta',2,0),(621,59,'Port Said',2,0),(622,59,'Al Jizah',2,0),(623,59,'Cairo*',2,0),(624,59,'Suez',2,0),(625,59,'Sinai',2,0),(626,59,'Bani Suwayf',2,0),(627,59,'Al Minya',2,0),(628,59,'Al Ghardaqan',2,0),(629,59,'Sharm',2,0),(630,59,'Shaykh',2,0),(631,59,'Lixor',2,0),(632,60,'Chalatenango',-6,0),(633,60,'Santa Ana',-6,0),(634,60,'Ahuachapan',-6,0),(635,60,'Sensuntepeque',-6,0),(636,60,'Sonsonate',-6,0),(637,60,'Nueva San Salvador',-6,0),(638,60,'San Salvador*',-6,0),(639,60,'Acajutla',-6,0),(640,60,'La Libertad',-6,0),(641,60,'San Vicente',-6,0),(642,60,'San Miguel',-6,0),(643,60,'Puerto El Triunfo',-6,0),(644,60,'La Union',-6,0),(645,60,'Puerto Cutuco',-6,0),(646,61,'Malabo*',1,0),(647,61,'Luba',1,0),(648,61,'Ebebiyin',1,0),(649,61,'Mongomo',1,0),(650,61,'Evinayong',1,0),(651,61,'Bata',1,0),(652,61,'Mbini',1,0),(654,61,'Acalayong',1,0),(655,62,'Nak\'fa',3,0),(656,62,'Keren',3,0),(657,62,'Massawa',3,0),(658,62,'Ak\'ordat',3,0),(659,62,'Asmara*',3,0),(660,62,'Assab',3,0),(661,62,'Tio',3,0),(662,63,'Paldiski',2,0),(663,63,'Tallinn*',2,0),(664,63,'Narva',2,0),(665,63,'Kohtla-Jarve',2,0),(666,63,'Haapsalu',2,0),(667,63,'Parnu',2,0),(668,63,'Tartu',2,0),(669,63,'Valga',2,0),(670,63,'Hiiumaa (Is)',2,0),(671,63,'Saaremaa (Is)',2,0),(672,64,'Gonder',3,0),(673,64,'Bahir Dar',3,0),(674,64,'Dese',3,0),(675,64,'Dire Dawa',3,0),(676,64,'Addis Ababa*',3,0),(677,64,'Nazret',3,0),(678,64,'Harer',3,0),(679,64,'Werder',3,0),(680,64,'Awasa',3,0),(681,64,'Dolo Odo',3,0),(682,64,'Moyale',3,0),(683,65,'Klaksvik',0,0),(684,65,'Vestmanna',0,0),(685,65,'Torshavn*',0,0),(686,65,'Tvoroyri',0,0),(687,66,'Stanley*',-4,0),(688,66,'Port Howard',-4,0),(689,66,'Weddell',-4,0),(690,66,'Goose Green',-4,0),(691,67,'Suva*',12,0),(692,67,'Labasa',12,0),(693,67,'Savusavu',12,0),(694,67,'Levuka',12,0),(695,67,'Lautoka',12,0),(696,68,'Ivalo',2,0),(697,68,'Rovaniemi',2,0),(698,68,'Oulu',2,0),(699,68,'Kokkola',2,0),(700,68,'Vaasa',2,0),(701,68,'Kuopio',2,0),(702,68,'Joensuu',2,0),(703,68,'Varkaus',2,0),(704,68,'Pori',2,0),(705,68,'Tampere',2,0),(706,68,'Lahti',2,0),(707,68,'Rauma',2,0),(708,68,'Uusikaupunki',2,0),(709,68,'Turku',2,0),(710,68,'Kotka',2,0),(711,68,'Hamina',2,0),(712,68,'Loviisa',2,0),(713,68,'Helsinki*',2,0),(714,69,'Saint-Laurent',-3,0),(715,69,'Kuorou',-3,0),(716,69,'Degrad des Gannes',-3,0),(717,69,'Cayenne*',-3,0),(718,69,'Saint-Georgies',-3,0),(719,69,'Saul',-3,0),(720,70,'Papeete*',-10,0),(721,70,'Uturoa',-10,0),(722,70,'Mataura',-10,0),(723,70,'Rikitea',-10,0),(724,71,'Dunkerque',1,117),(725,71,'Lille',1,117),(726,71,'Cherbourg',1,115),(727,71,'Rouen',1,123),(728,71,'Paris*',1,111),(729,71,'Nancy',1,114),(730,71,'Brest',1,105),(731,71,'Strasbourg',1,102),(732,71,'Orleans',1,107),(733,71,'Dijon',1,106),(734,71,'Nantes',1,118),(735,71,'Limoges',1,113),(736,71,'Lyon',1,122),(737,71,'Grenoble',1,122),(738,71,'Valence',1,122),(739,71,'Bordeaux',1,103),(740,71,'Toulouse',1,116),(741,71,'Nice',1,121),(742,71,'Toulon',1,121),(743,71,'Marseille',1,121),(744,71,'Perpignan',1,112),(745,73,'Oyem',0,0),(746,73,'Libreville*',0,0),(747,73,'Kango',0,0),(748,73,'Owendo',0,0),(749,73,'Makokou',0,0),(750,73,'Booue',0,0),(751,73,'Port-Gentil',0,0),(752,73,'Lambarene',0,0),(753,73,'Lastoursville',0,0),(754,73,'Franceville',0,0),(755,73,'Mouila',0,0),(756,73,'Tchibanga',0,0),(757,73,'Mayumba',0,0),(758,74,'Banjul*',0,0),(759,74,'Serekunda',0,0),(760,74,'Brikama',0,0),(761,74,'Farafenni',0,0),(762,74,'Mansa Konko',0,0),(763,74,'Sukuta',0,0),(764,74,'Georgetown',0,0),(765,74,'Basse Santa Su',0,0),(766,75,'Sokhumi',4,0),(767,75,'P\'ot\'i',4,0),(768,75,'Bat\'umi',4,0),(769,75,'K\'utaisi',4,0),(770,75,'Akhalts\'ikhe',4,0),(771,75,'Akhalk\'alak\'i',4,0),(772,75,'Ts\'khinvali',4,0),(773,75,'Gori',4,0),(774,75,'T\'bilisi*',4,0),(775,75,'Rustavi',4,0),(776,76,'Berlin*',1,126),(777,76,'Bonn',1,133),(778,76,'Bremen',1,128),(779,76,'Bremerhaven',1,128),(780,76,'Cologne',1,133),(781,76,'Dresden',1,136),(782,76,'Duisburg',1,133),(783,76,'Dusseldorf',1,133),(784,76,'Emden',1,132),(785,76,'Essen',1,133),(786,76,'Frankfurt am Main',1,130),(787,76,'Hamburg',1,129),(788,76,'Hannover',1,132),(789,76,'Kassel',1,130),(790,76,'Kiel',1,138),(791,76,'Leipzig',1,136),(792,76,'Lubeck',1,138),(793,76,'Magdeburg',1,137),(794,76,'Mannheim',1,124),(795,76,'Munich',1,125),(796,76,'Rostock',1,131),(797,76,'Stuttgart',1,124),(798,76,'Wiesbaden',1,130),(989,77,'Accra',0,0),(990,77,'Tamale',0,0),(991,77,'Kumasi',0,0),(992,77,'Ho',0,0),(993,77,'Asamankese',0,0),(994,77,'Nsawam',0,0),(995,77,'Tarkwa',0,0),(996,77,'Tema',0,0),(997,77,'Cape Coast',0,0),(998,77,'Takoradi',0,0),(999,79,'Alexandroupolis',2,0),(1000,79,'Kavala',2,0),(1001,79,'Thessaloniki',2,0),(1002,79,'Ioannina',2,0),(1003,79,'Larisa',2,0),(1004,79,'Kerkyra',2,0),(1005,79,'Volos',2,0),(1006,79,'Chalkis',2,0),(1007,79,'Patrai',2,0),(1008,79,'Elefsis',2,0),(1009,79,'Peiraiefs',2,0),(1010,79,'Athens*',2,0),(1011,79,'Limnos',2,0),(1012,79,'Lesvos',2,0),(1013,79,'Chios',2,0),(1014,79,'Samos',2,0),(1015,79,'Naxos',2,0),(1016,79,'Kos',2,0),(1017,79,'Rhodes',2,0),(1018,79,'Irakleion',2,0),(1019,79,'Crete',2,0),(1020,80,'Nord',-3,0),(1021,80,'Qaanaag(Thule)',-3,0),(1022,80,'Danmark Havn',-3,0),(1023,80,'Ittoggortoormit(Scoresbysund)',-3,0),(1024,80,'Qedertarsuag',-3,0),(1025,80,'Sisimiut',-3,0),(1026,80,'Kangerlussuag(Sondre Stromfjor',-3,0),(1027,80,'Tasiilag(Ammassalik)',-3,0),(1028,80,'Nuuk(Godthab)*',-3,0),(1029,80,'Kangerluarsoruseg',-3,0),(1030,80,'Paamiut(Frederikshab)',-3,0),(1031,80,'Narsarsuag',-3,0),(1032,80,'Nanortalik',-3,0),(1033,81,'Saint George\'s*',-4,0),(1034,81,'Grenville',-4,0),(1035,81,'Hillsborough',-4,0),(1036,82,'Basse-Terre*',-4,0),(1037,82,'Marigot',-4,0),(1038,82,'Pointe-a-Pitre',-4,0),(1039,82,'Grande-Anse',-4,0),(1040,82,'Grand-Bourg',-4,0),(1041,83,'Yigo',10,0),(1042,83,'Tamuning',10,0),(1043,83,'Hagatna(Agana)*',10,0),(1044,83,'Agat',10,0),(1045,83,'Merizo',10,0),(1046,85,'Flores',-6,0),(1047,85,'Coban',-6,0),(1048,85,'Puerto Barrios',-6,0),(1049,85,'Huehuetenango',-6,0),(1050,85,'Zacapa',-6,0),(1051,85,'Mazatenango',-6,0),(1052,85,'Quetzaltenango',-6,0),(1053,85,'Guatemala*',-6,0),(1054,85,'Champerico',-6,0),(1055,85,'Puerto San Jose',-6,0),(1056,85,'Puerto Quetzal',-6,0),(1057,86,'Kamsar',0,0),(1058,86,'Boke',0,0),(1059,86,'Fria',0,0),(1060,86,'Kindia',0,0),(1061,86,'Conakry*',0,0),(1062,86,'Labe',0,0),(1063,86,'Siguiri',0,0),(1064,86,'Kankan',0,0),(1065,86,'Macenta',0,0),(1066,86,'Nzerekore',0,0),(1067,87,'Cacheu',0,0),(1068,87,'Mansoa',0,0),(1069,87,'Farim',0,0),(1070,87,'Gabu',0,0),(1071,87,'Bafata',0,0),(1072,87,'Bissau*',0,0),(1073,87,'Catio',0,0),(1074,88,'Mabaruma',-3,0),(1075,88,'Parika',-3,0),(1076,88,'Georgetown*',-3,0),(1077,88,'Bartica',-3,0),(1078,88,'Linden',-3,0),(1079,88,'Ituni',-3,0),(1080,88,'New Amsterdam',-3,0),(1081,88,'Lethem',-3,0),(1082,89,'Port-de-Paix',-5,0),(1083,89,'Cap-Haitien',-5,0),(1084,89,'Gonaives',-5,0),(1085,89,'Saint-Marc',-5,0),(1086,89,'Hinche',-5,0),(1087,89,'PORT-AU-PRINCE',-5,0),(1088,89,'Jacmel',-5,0),(1089,89,'Miragoane',-5,0),(1090,89,'Jeremie',-5,0),(1091,89,'Lts Cayes',-5,0),(1092,90,'Puerto Cortes',-6,0),(1093,90,'Tela',-6,0),(1094,90,'La Ceiba',-6,0),(1095,90,'Puerto Castilla',-6,0),(1096,90,'San Pedro Sula',-6,0),(1097,90,'San Lorenzo',-6,0),(1098,90,'Puerto Lempira',-6,0),(1099,90,'Santa Rosa de Copan',-6,0),(1100,90,'Juticalpa',-6,0),(1101,90,'Tegucigalpa*',-6,0),(1102,90,'Choluteca',-6,0),(1103,91,'Sheung Shui',8,0),(1104,91,'Tuen Mun',8,0),(1106,91,'Tsuen Wan',8,0),(1107,91,'Kowloon',8,0),(1108,91,'Aberdeen',8,0),(1109,91,'Victoria*',8,0),(1110,92,'Szombathely',1,0),(1111,92,'Gyor',1,0),(1112,92,'Szekesfehervar',1,0),(1113,92,'Pecs',1,0),(1114,92,'Szeged',1,0),(1115,92,'Kecskemet',1,0),(1116,92,'Dunaujvaros',1,0),(1117,92,'Budapest*',1,0),(1118,92,'Debrecen',1,0),(1119,92,'Miskolc',1,0),(1120,92,'Nyiregyhaza',1,0),(1121,93,'Isafjordhur',0,0),(1122,93,'Akureyri',0,0),(1123,93,'Husavik',0,0),(1124,93,'Raufarhofn',0,0),(1125,93,'Seydhisfjordhur',0,0),(1126,93,'Hofn',0,0),(1127,93,'Straumsvik',0,0),(1128,93,'Keflavik',0,0),(1129,93,'Hafnarfjordhur',0,0),(1130,93,'Vik',0,0),(1131,93,'Vestmannaeyiar',0,0),(1132,93,'Reykjavik*',0,0),(1133,94,'Srinagar',6,0),(1134,94,'Amritsar',6,0),(1135,94,'New Delhi*',6,0),(1136,94,'Agra',6,0),(1137,94,'Kanpur',6,0),(1138,94,'Kandia',6,0),(1139,94,'Bhopal',6,0),(1140,94,'Ahmadabad',6,0),(1141,94,'Cflcutta Haldia',6,0),(1142,94,'Imphal',6,0),(1143,94,'Nagpur',6,0),(1144,94,'Mumbai(Bombay)',6,0),(1145,94,'Vishakhapatnam',6,0),(1146,94,'Hyderabad',6,0),(1147,94,'Panaji',6,0),(1148,94,'Marmagao',6,0),(1149,94,'Bangalore',6,0),(1150,94,'Chennai(Madras)',6,0),(1151,94,'Calicut',6,0),(1152,94,'Cochin',6,0),(1153,94,'Pondicherry',6,0),(1154,94,'Madurai',6,0),(1155,94,'Tuticorin',6,0),(1156,94,'Port Blair',6,0),(1157,95,'Medan',8,0),(1158,95,'Pekanbaru',8,0),(1159,95,'Palembang',8,0),(1160,95,'Jakarta*',8,0),(1161,95,'Cirebon',8,0),(1162,95,'Cilacap',8,0),(1163,95,'Semarang',8,0),(1165,95,'Surabaya',8,0),(1166,95,'Denpasar',8,0),(1167,95,'Kupang',8,0),(1168,95,'Ujungpandang',8,0),(1169,95,'Ambon',8,0),(1170,95,'Biak',8,0),(1171,96,'Tabriz',4,0),(1172,96,'Tehran*',4,0),(1173,96,'Mashhad',4,0),(1174,96,'Qom',4,0),(1175,96,'Kermanshah',4,0),(1176,96,'Dezful',4,0),(1177,96,'Esfahan',4,0),(1178,96,'Birjang',4,0),(1179,96,'Ahvaz',4,0),(1180,96,'Yazd',4,0),(1181,96,'Bandar-e Khomeyi',4,0),(1182,96,'Abadan',4,0),(1183,96,'Shiraz',4,0),(1184,96,'Kerman',4,0),(1185,96,'Bushehr',4,0),(1186,96,'Zahedan',4,0),(1187,96,'Bandar\'Abbas',4,0),(1188,96,'Chabahar',4,0),(1189,97,'Mosul',3,0),(1190,97,'Irbil',3,0),(1191,97,'Karkuk',3,0),(1192,97,'As Sulaymaniyah',3,0),(1193,97,'Samarra',3,0),(1194,97,'Ar Rutban',3,0),(1195,97,'Baghdad*',3,0),(1196,97,'Karbala',3,0),(1197,97,'An Najaf',3,0),(1198,97,'Al Kut',3,0),(1199,97,'An Nasinyah',3,0),(1200,97,'Al Basrah',3,0),(1201,97,'Umm Qasr',3,0),(1202,98,'Lifford',0,0),(1203,98,'Sligo',0,0),(1204,98,'Monaghan',0,0),(1205,98,'Castlebar',0,0),(1206,98,'Drogheda',0,0),(1207,98,'Galway',0,0),(1208,98,'Tuilamore',0,0),(1209,98,'Dublin*',0,0),(1210,98,'Wicklow',0,0),(1211,98,'Arklow',0,0),(1212,98,'Shannon',0,0),(1213,98,'Limerick',0,0),(1214,98,'Foines',0,0),(1215,98,'Waferford',0,0),(1216,98,'New Ross',0,0),(1217,98,'Killarney',0,0),(1218,98,'Cork',0,0),(1219,99,'Nahariyya',2,0),(1220,99,'Haifa',2,0),(1221,99,'Nazareth',2,0),(1222,99,'Hadera',2,0),(1223,99,'Tel Aviv-Yafo',2,0),(1224,99,'Petah Tigwa',2,0),(1225,99,'Bat Yam',2,0),(1226,99,'Holon',2,0),(1227,99,'Ashdod',2,0),(1228,99,'Ashgelon',2,0),(1229,99,'Jerusalem*',2,0),(1230,99,'Beersheba',2,0),(1231,99,'Dimona',2,0),(1232,100,'Turin',1,0),(1233,100,'Milan',1,0),(1234,100,'Trieste',1,0),(1235,100,'Venise',1,0),(1236,100,'Ravenna',1,0),(1237,100,'Bologna',1,0),(1238,100,'Genoa',1,0),(1239,100,'La Spezia',1,0),(1240,100,'Livorno',1,0),(1241,100,'Florence',1,0),(1242,100,'Ancona',1,0),(1243,100,'Piombino',1,0),(1244,100,'Rome*',1,0),(1245,100,'Gaeta',1,0),(1246,100,'Naples',1,0),(1247,100,'Bari',1,0),(1248,100,'Palermo',1,0),(1249,100,'Catania',1,0),(1250,100,'Reggio di Calabria',1,0),(1251,100,'Augusta',1,0),(1252,100,'Porto Torrez',1,0),(1253,100,'Oristano',1,0),(1254,100,'Cagliari',1,0),(1255,102,'Montego Bay',-5,0),(1256,102,'Negril',-5,0),(1257,102,'Discovery Bay',-5,0),(1258,102,'Ocho Rios',-5,0),(1259,102,'Black River',-5,0),(1260,102,'Mandeville',-5,0),(1261,102,'May Pen',-5,0),(1262,102,'Spanish Town',-5,0),(1263,102,'Port Antonio',-5,0),(1264,102,'Alligator Pond',-5,0),(1265,102,'Port Esguivel',-5,0),(1266,102,'Portmore',-5,0),(1267,102,'Kingston*',-5,0),(1268,102,'Morant Bay',-5,0),(1269,102,'Rocky Point',-5,0),(1270,103,'Sapporo',9,0),(1271,103,'Akita',9,0),(1272,103,'Sendai',9,0),(1273,103,'Tokio*',9,0),(1274,103,'Nagoya',9,0),(1275,103,'Kobe',9,0),(1276,103,'Osaka',9,0),(1277,103,'Fukuoka',9,0),(1278,103,'Kitakyushu',9,0),(1279,104,'Irbid',2,0),(1280,104,'Az Zarga\'',2,0),(1281,104,'Amman*',2,0),(1282,104,'Al Karak',2,0),(1283,104,'Ma\'an',2,0),(1284,104,'Al\'Agabah',2,0),(1285,105,'Oral(Ural\'sk)',6,0),(1286,105,'Agtobe(Aktyubinsk)',6,0),(1287,105,'Atyrau',6,0),(1288,105,'Agtau',6,0),(1289,105,'Petropavlovsk',6,0),(1290,105,'Qostanay(Kostanay)',6,0),(1291,105,'Astana*',6,0),(1292,105,'Pavlodar',6,0),(1293,105,'Semey(Semipalatinsk)',6,0),(1294,105,'Oskemen(Ust\'-Kamenogorsk)',6,0),(1295,105,'Qaraghandy(Karaganda)',6,0),(1296,105,'Baygongyr(Baykonyr)',6,0),(1297,105,'Qyzylorda',6,0),(1298,105,'Taraz',6,0),(1299,105,'Shymkent',6,0),(1300,105,'Almaty',6,0),(1301,106,'Lodvar',3,0),(1302,106,'Moyale',3,0),(1303,106,'Marsabit',3,0),(1304,106,'Wajir',3,0),(1305,106,'Eldoret',3,0),(1306,106,'Meru',3,0),(1307,106,'Kisumu',3,0),(1308,106,'Nakuru',3,0),(1309,106,'Carissa',3,0),(1310,106,'Nairobi*',3,0),(1311,106,'Machakos',3,0),(1312,106,'Lamu',3,0),(1313,106,'Malindi',3,0),(1314,106,'Mombasa',3,0),(1315,107,'Tarawa*',12,0),(1316,108,'Kangnung',9,0),(1317,108,'Seoul*',9,0),(1318,108,'Inch\'on',9,0),(1319,108,'Wonju',9,0),(1320,108,'Pukp\'yong dong',9,0),(1321,108,'Suwon',9,0),(1322,108,'Taegu',9,0),(1323,108,'Taejon',9,0),(1324,108,'P\'ohang',9,0),(1325,108,'Ulsan',9,0),(1326,108,'Chonju',9,0),(1327,108,'Kunsan',9,0),(1328,108,'Kwangju',9,0),(1329,108,'Masan',9,0),(1330,108,'Chinhae',9,0),(1331,108,'Pusan',9,0),(1332,108,'Yusu',9,0),(1333,108,'Mokp\'o',9,0),(1334,108,'Cheju-do',9,0),(1335,109,'Sonbong',9,0),(1336,109,'Najin',9,0),(1337,109,'Ch\'ongjin',9,0),(1338,109,'Hyesan',9,0),(1339,109,'Kanggye',9,0),(1340,109,'Kimch\'aek',9,0),(1341,109,'Sinuiju',9,0),(1342,109,'Hamhung',9,0),(1343,109,'Hungnam',9,0),(1344,109,'Sunch\'on',9,0),(1345,109,'Wonsan',9,0),(1346,109,'P\'yongyang*',9,0),(1347,109,'Namp\'o',9,0),(1348,109,'Songnim',9,0),(1349,109,'Sariwon',9,0),(1350,109,'Kaesong',9,0),(1351,109,'Kosong',9,0),(1352,109,'Haeju',9,0),(1353,109,'P\'anmunjom',9,0),(1354,110,'Abdali',3,0),(1355,110,'Warbah',3,0),(1356,110,'Bubiyan',3,0),(1357,110,'Qasr as Sabiyah',3,0),(1358,110,'Kuwait',3,0),(1359,110,'Ash Shuwaykh',3,0),(1360,110,'Mina al Ahmadi',3,0),(1361,110,'Ash Shu\'ayban',3,0),(1362,110,'Mina Abd Allah',3,0),(1363,110,'Mina Su\'ud',3,0),(1364,110,'Al Wafrah',3,0),(1365,110,'Qasr',3,0),(1366,111,'Bishkek*',5,0),(1367,111,'Tokmok',5,0),(1368,111,'Karakol',5,0),(1369,111,'Balykchy',5,0),(1370,111,'Naryn',5,0),(1371,111,'Talas',5,0),(1372,111,'Jalal-Abad',5,0),(1373,111,'Osh',5,0),(1374,111,'Kyzyl-Kyya',5,0),(1375,111,'Sary-Tash',5,0),(1376,112,'Phongsali',7,0),(1377,112,'Louand Namtha',7,0),(1378,112,'Louangphrabang',7,0),(1379,112,'Xiangkhoang',7,0),(1380,112,'Ban Nape',7,0),(1381,112,'Vientiane*',7,0),(1382,112,'Savannakhet',7,0),(1383,112,'Saravan',7,0),(1384,112,'Pakxe',7,0),(1385,113,'Valmiera',2,0),(1386,113,'Ventspils',2,0),(1387,113,'Jurmala',2,0),(1388,113,'Riga*',2,0),(1389,113,'Aluksne',2,0),(1390,113,'Skrunda',2,0),(1391,113,'Liepaja',2,0),(1392,113,'Jelgava',2,0),(1393,113,'Jekabpils',2,0),(1394,113,'Rezekne',2,0),(1395,113,'Daugavpils',2,0),(1396,114,'Al Batrun',2,0),(1397,114,'Al Mina',2,0),(1398,114,'Tripoli',2,0),(1399,114,'Al Hirmil',2,0),(1400,114,'Shikka',2,0),(1401,114,'Jubayl',2,0),(1402,114,'Ba\'labakk',2,0),(1403,114,'Juniyah',2,0),(1404,114,'Beirut*',2,0),(1405,114,'Antilyas',2,0),(1406,114,'Zahlah',2,0),(1407,114,'Sidon',2,0),(1408,114,'Jazzin',2,0),(1409,114,'Az Zahrani',2,0),(1410,114,'Tyre',2,0),(1411,114,'An Naqurah',2,0),(1412,115,'Leribe',2,0),(1413,115,'Teyateyaneng',2,0),(1414,115,'Mokhotlong',2,0),(1415,115,'Maseru*',2,0),(1416,115,'Thaba-Tseka',2,0),(1417,115,'Mafeteng',2,0),(1418,115,'Mohales Hoek',2,0),(1419,115,'Qacha\'s Nek',2,0),(1420,115,'Quthing',2,0),(1421,116,'Voinjama',0,0),(1422,116,'Yekepa',0,0),(1423,116,'Tubmanburg',0,0),(1424,116,'Gbarnga',0,0),(1425,116,'Monrovia*',0,0),(1426,116,'Harbel',0,0),(1427,116,'Zwedru',0,0),(1428,116,'Greenville',0,0),(1429,116,'Harper',0,0),(1430,117,'Tripoli*',2,0),(1431,117,'Al Khums',2,0),(1432,117,'Misratah',2,0),(1433,117,'Zuwarah',2,0),(1434,117,'Surt',2,0),(1435,117,'Ra\'s Lanuf',2,0),(1436,117,'Marsa al Burayqah',2,0),(1437,117,'Ghadamis',2,0),(1438,117,'Sabha',2,0),(1439,117,'Al Jawf',2,0),(1440,118,'Siauliai',2,0),(1441,118,'Klaipeda',2,0),(1442,118,'Panevezys',2,0),(1443,118,'Utenta',2,0),(1444,118,'Taurage',2,0),(1445,118,'Kaunas',2,0),(1446,118,'Vilnius*',2,0),(1447,118,'Marijamople',2,0),(1448,119,'Troisvierges',1,0),(1449,119,'Diekirch',1,0),(1450,119,'Mertert',1,0),(1451,119,'Grevenmacher',1,0),(1452,119,'Luxembourg',1,0),(1453,119,'Differdange',1,0),(1454,119,'Esch',1,0),(1455,119,'Dudelange',1,0),(1456,121,'Kumanovo',1,0),(1457,121,'Tetovo',1,0),(1458,121,'Skopje*',1,0),(1459,121,'Gostivar',1,0),(1460,121,'Titov Veles',1,0),(1461,121,'Stip',1,0),(1462,121,'Kicevo',1,0),(1463,121,'Priler',1,0),(1464,121,'Stumica',1,0),(1465,121,'Bitola',1,0),(1466,122,'Antsiranana',3,0),(1467,122,'Antsohimbondrona',3,0),(1468,122,'Mahajanga',3,0),(1469,122,'Toamasina',3,0),(1470,122,'Antananarivo*',3,0),(1471,122,'Morondava',3,0),(1472,122,'Fianarantsoa',3,0),(1473,122,'Mananjary',3,0),(1474,122,'Manakara',3,0),(1475,122,'Toliara',3,0),(1476,122,'Tolanaro',3,0),(1477,123,'Karonga',2,0),(1478,123,'Mzuzu',2,0),(1479,123,'Nkhata Bay',2,0),(1480,123,'Nkhotakota',2,0),(1481,123,'Chipoka',2,0),(1482,123,'Lilongwe',2,0),(1483,123,'Monkey Bay',2,0),(1484,123,'Zomba',2,0),(1485,123,'Blantyre',2,0),(1486,124,'Kota Baharu',8,0),(1487,124,'George Town',8,0),(1488,124,'Kuala Terengganu',8,0),(1489,124,'Ipoh',8,0),(1490,124,'Lumut',8,0),(1491,124,'Kuantan',8,0),(1492,124,'Kelang',8,0),(1493,124,'Kuala Lumpur*',8,0),(1494,124,'Port Dickson',8,0),(1495,124,'Melaka',8,0),(1496,124,'Johor Bahara',8,0),(1497,124,'Kuching',8,0),(1498,124,'Sibu',8,0),(1499,124,'Miri',8,0),(1500,124,'Kota Kinabalu',8,0),(1501,124,'Kubat',8,0),(1502,124,'Sandakar',8,0),(1503,124,'Lahad Datu',8,0),(1504,124,'Tawau',8,0),(1505,125,'Male Atoll',5,0),(1506,125,'Male*',5,0),(1507,125,'Addu Atoll',5,0),(1508,125,'Gan',5,0),(1509,126,'Taoudenni',0,0),(1510,126,'Kidal',0,0),(1511,126,'Tombouctou',0,0),(1512,126,'Gao',0,0),(1513,126,'Mopti',0,0),(1514,126,'Kayes',0,0),(1515,126,'Koulikoro',0,0),(1516,126,'Bamako*',0,0),(1517,126,'Segou',0,0),(1518,126,'Sikasso',0,0),(1520,127,'Gozo',1,0),(1521,127,'Rabat',1,0),(1522,127,'Comino',1,0),(1523,127,'Malta',1,0),(1524,127,'Valletta*',1,0),(1525,127,'Marsaxlokk',1,0),(1526,127,'Birzebbuga',1,0),(1527,128,'Ratak Chain',12,0),(1528,128,'Ralik Chain',12,0),(1529,128,'Majuro',12,0),(1530,129,'Bir Moghrein',0,0),(1531,129,'F\'derik',0,0),(1532,129,'Nouadhibou',0,0),(1533,129,'Atar',0,0),(1534,129,'Tidjikdja',0,0),(1535,129,'Nouakchott*',0,0),(1536,129,'Rosso',0,0),(1537,129,'Bogue',0,0),(1538,129,'Kaedi',0,0),(1539,129,'Kifa',0,0),(1540,129,'Nema',0,0),(1541,130,'Goodlands',4,0),(1542,130,'Triolet',4,0),(1543,130,'Port Louis',4,0),(1544,130,'Centre de Flacq',4,0),(1545,130,'Quarte Bornes',4,0),(1546,130,'Curepipe',4,0),(1547,130,'Tamarin',4,0),(1548,130,'Mahebourg',4,0),(1549,130,'Chemin Grenier',4,0),(1550,130,'Souillac',4,0),(1551,131,'Tijuana',-6,0),(1552,131,'Ensenada',-6,0),(1553,131,'Ciudad Juarez',-6,0),(1554,131,'Guaymas',-6,0),(1555,131,'Chihuahua',-6,0),(1556,131,'Nuevo Laredo',-6,0),(1557,131,'Topolobampo',-6,0),(1558,131,'Monterrey',-6,0),(1559,131,'Matamoros',-6,0),(1560,131,'Tampico',-6,0),(1561,131,'Leon',-6,0),(1562,131,'La Paz',-6,0),(1563,131,'Mazatlan',-6,0),(1564,131,'Puerto Vallarta',-6,0),(1565,131,'Manzanillo',-6,0),(1566,131,'Lazaro Cardenas',-6,0),(1567,131,'Acapulco',-6,0),(1568,131,'Guadalajara',-6,0),(1569,131,'Mexico',-6,0),(1570,131,'Tuxpan',-6,0),(1571,131,'Veracruz',-6,0),(1572,131,'Coatzacoalcos',-6,0),(1573,131,'Oaxaca',-6,0),(1574,131,'Progreso',-6,0),(1575,131,'Merida',-6,0),(1576,131,'Cancun',-6,0),(1577,131,'Salina Cruz',-6,0),(1578,132,'Palikir',10,0),(1579,133,'Briceni',2,0),(1580,133,'Balti',2,0),(1581,133,'Ribnata',2,0),(1582,133,'Dubasari',2,0),(1583,133,'Chisinau*',2,0),(1584,133,'Tighina (Bendery)',2,0),(1585,133,'Tiraspol',2,0),(1586,133,'Cahul',2,0),(1587,134,'Olgry',8,0),(1588,134,'Dund-Us',8,0),(1589,134,'Altay',8,0),(1590,134,'Erdenet',8,0),(1591,134,'Darhat',8,0),(1592,134,'Bulgan',8,0),(1593,134,'Choybalsan',8,0),(1594,134,'Bayanhongor',8,0),(1595,134,'Ulaanbaator*',8,0),(1596,134,'Buyant-Uhaa',8,0),(1597,134,'Dalandzadgan',8,0),(1598,135,'St.Peter\'s',-4,0),(1599,135,'St.John\'s',-4,0),(1600,135,'Bethal',-4,0),(1601,135,'Salem',-4,0),(1602,135,'Plymouth',-4,0),(1603,135,'St.Patrick\'s',-4,0),(1604,136,'Ceuta',0,0),(1605,136,'Tangier',0,0),(1606,136,'Tetouan',0,0),(1607,136,'Melilla',0,0),(1608,136,'Oujda',0,0),(1609,136,'Kenitra',0,0),(1610,136,'Fez',0,0),(1611,136,'Rabat*',0,0),(1612,136,'Casablanca',0,0),(1613,136,'Mohammedia',0,0),(1614,136,'Bou Arta',0,0),(1615,136,'Safi',0,0),(1616,136,'Marrakech',0,0),(1617,136,'Ouarzazate',0,0),(1618,136,'Agadir',0,0),(1619,136,'Tarfaya',0,0),(1620,137,'Lichinga',2,0),(1621,137,'Pemba',2,0),(1622,137,'Cidade de Nacala',2,0),(1623,137,'Nampula',2,0),(1624,137,'Tete',2,0),(1625,137,'Quelimane',2,0),(1626,137,'Chimoio',2,0),(1627,137,'Beira',2,0),(1628,137,'Chicualacuala',2,0),(1629,137,'Inhambane',2,0),(1630,137,'Maputo*',2,0),(1631,138,'Ondangwa',1,0),(1632,138,'Rundu',1,0),(1633,138,'Grootfontein',1,0),(1634,138,'Gobabis',1,0),(1635,138,'Swakopmund',1,0),(1636,138,'Walvis Bay',1,0),(1637,138,'Windhoek*',1,0),(1638,138,'Rehoboth',1,0),(1639,138,'Keetmanshoop',1,0),(1640,138,'Luderitz',1,0),(1641,138,'Karasburg',1,0),(1642,138,'Katima Mulilo',1,0),(1643,139,'Nauru',12,0),(1644,140,'Dhangadhi',6,0),(1645,140,'Nepalganj',6,0),(1646,140,'Pokhara',6,0),(1647,140,'Kathmandu*',6,0),(1648,140,'Bhaktapur',6,0),(1649,140,'Patan',6,0),(1650,140,'Birgandj',6,0),(1651,140,'Janakpur',6,0),(1652,140,'Dharan',6,0),(1653,141,'Westpunt',-4,0),(1654,141,'Willemstad',-4,0),(1655,141,'Kralendijk',-4,0),(1656,142,'Delfzijl',1,0),(1657,142,'Leeuwarden',1,0),(1658,142,'Groningen',1,0),(1659,142,'Assen',1,0),(1660,142,'Zwolle',1,0),(1661,142,'Den Helder',1,0),(1662,142,'I.Jmuiden',1,0),(1663,142,'Haarlem',1,0),(1664,142,'Amsterdam*',1,0),(1665,142,'Utrecht',1,0),(1666,142,'Arnhem',1,0),(1667,142,'The Hague',1,0),(1668,142,'Europort',1,0),(1669,142,'Dordrecht',1,0),(1670,142,'Tilburg',1,0),(1671,142,'Nijmegen',1,0),(1672,142,'Eindhoven',1,0),(1673,142,'Terneuzen',1,0),(1674,142,'Maastricht',1,0),(1675,143,'Nevis',-4,0),(1676,144,'Poindimie',11,0),(1677,144,'We',11,0),(1678,144,'Mueo',11,0),(1679,144,'Thio',11,0),(1680,144,'Noumea*',11,0),(1682,145,'Auckland',12,77),(1683,145,'Hamilton',12,90),(1684,145,'Tauranga',12,78),(1685,145,'Gisborne',12,80),(1686,145,'New Plymounth',12,88),(1687,145,'Napier',12,81),(1688,145,'Palmerston North',12,82),(1689,145,'Wellington',12,91),(1690,145,'Greymouth',12,92),(1691,145,'Christchurch',12,79),(1692,145,'Invercargill',12,87),(1693,145,'Dunedin',12,86),(1694,145,'Stewart Island',12,0),(1695,146,'Puerto Cabezas',-6,0),(1696,146,'Esteli',-6,0),(1697,146,'Matagalpa',-6,0),(1698,146,'Corinto',-6,0),(1699,146,'Leon',-6,0),(1700,146,'Puerto Sandino',-6,0),(1701,146,'Granada',-6,0),(1702,146,'Rivas',-6,0),(1703,146,'San Juan del Sur',-6,0),(1704,146,'Rama',-6,0),(1705,146,'Bluefields',-6,0),(1706,146,'El Bluff',-6,0),(1707,146,'San Carlos',-6,0),(1708,147,'Agadez',1,0),(1709,147,'Tahoua',1,0),(1710,147,'Niamey*',1,0),(1711,147,'Dosso',1,0),(1712,147,'Maradi',1,0),(1713,147,'Zinder',1,0),(1714,147,'Diffa',1,0),(1715,148,'Sokoto',1,0),(1716,148,'Kano',1,0),(1717,148,'Maiduguri',1,0),(1718,148,'Zaria',1,0),(1719,148,'Kaduna',1,0),(1720,148,'Jos',1,0),(1721,148,'Abuja*',1,0),(1722,148,'Yola',1,0),(1723,148,'Ilorin',1,0),(1724,148,'Ogbomoso',1,0),(1725,148,'Osogbo',1,0),(1726,148,'Ibadan',1,0),(1727,148,'Lagos',1,0),(1728,148,'Benin City',1,0),(1729,148,'Warri',1,0),(1730,148,'Port Harcourt',1,0),(1731,149,'Mutalau',-11,0),(1732,149,'Hikutavake',-11,0),(1733,149,'Lakepa',-11,0),(1734,149,'Liku',-11,0),(1735,149,'Alofi',-11,0),(1736,149,'Avatele',-11,0),(1737,150,'Cascade',11,0),(1738,150,'Burnt Pine',11,0),(1739,150,'Kingston*',11,0),(1740,150,'Nepean',11,0),(1741,150,'Philip Island',11,0),(1742,151,'Hammerfest',1,0),(1743,151,'Vardo',1,0),(1744,151,'Tromso',1,0),(1745,151,'Harstad',1,0),(1746,151,'Narvik',1,0),(1747,151,'Bodo',1,0),(1748,151,'Mo',1,0),(1749,151,'Trondheim',1,0),(1750,151,'Alesund',1,0),(1751,151,'Floro',1,0),(1752,151,'Bergen',1,0),(1753,151,'Hamar',1,0),(1754,151,'Drammen',1,0),(1755,151,'Oslo*',1,0),(1756,151,'Stavanger',1,0),(1757,151,'Kristiansand',1,0),(1758,152,'Suhar',4,0),(1759,152,'Mina\'al',4,0),(1760,152,'Fahi',4,0),(1761,152,'Matrah',4,0),(1762,152,'\'Ibri',4,0),(1763,152,'Muscat*',4,0),(1764,152,'Nizwa',4,0),(1765,152,'Sur',4,0),(1766,152,'Dugm',4,0),(1767,152,'Thamarit',4,0),(1768,152,'Salalah',4,0),(1769,152,'Raysut',4,0),(1770,153,'Gilgit',5,0),(1771,153,'Peshawar',5,0),(1772,153,'Islamabad*',5,0),(1773,153,'Rawalpindi',5,0),(1774,153,'Faisalabad',5,0),(1775,153,'Lahore',5,0),(1776,153,'Zhob',5,0),(1777,153,'Multan',5,0),(1778,153,'Qetta',5,0),(1779,153,'Bahawalpur',5,0),(1780,153,'Nok Kundi',5,0),(1781,153,'Sukkur',5,0),(1782,153,'Ormara',5,0),(1783,153,'Hyderabad',5,0),(1784,153,'Gwadar',5,0),(1785,153,'Karachi',5,0),(1786,154,'Koror*',9,0),(1787,155,'Bocas del Toro',-5,0),(1788,155,'David',-5,0),(1789,155,'Santiago',-5,0),(1790,155,'Chitre',-5,0),(1791,155,'Coco Solo',-5,0),(1792,155,'Cristobal',-5,0),(1793,155,'Colon',-5,0),(1794,155,'Balboa',-5,0),(1795,155,'Vacamonte',-5,0),(1796,155,'Panama*',-5,0),(1797,155,'El Porvenir',-5,0),(1798,155,'La Palma',-5,0),(1799,155,'Yaviza',-5,0),(1800,156,'Wewak',10,0),(1801,156,'Madang',10,0),(1802,156,'Daru',10,0),(1803,156,'Lae',10,0),(1804,156,'Port Moresby*',10,0),(1805,156,'Rabaul',10,0),(1806,156,'Kieta',10,0),(1807,157,'Capitan Pablo Lagerenza',-4,0),(1808,157,'Doctor Pedro P. Pena',-4,0),(1809,157,'Fuerte Olimpo',-4,0),(1810,157,'Pedro Juan Caballero',-4,0),(1811,157,'Concepcion',-4,0),(1812,157,'San Pedro',-4,0),(1813,157,'Salto del Guaira',-4,0),(1814,157,'Asuncion*',-4,0),(1815,157,'Ciudad del Este',-4,0),(1816,157,'Vilarrica',-4,0),(1817,157,'Villeta',-4,0),(1818,157,'Pilar',-4,0),(1819,157,'Encarnacion',-4,0),(1820,158,'Talara',-5,0),(1821,158,'Paita',-5,0),(1822,158,'Piura',-5,0),(1823,158,'Iguitos',-5,0),(1824,158,'Yurimaguas',-5,0),(1825,158,'Chiclayo',-5,0),(1826,158,'Trujillo',-5,0),(1827,158,'Salaverry',-5,0),(1828,158,'Chimbote',-5,0),(1829,158,'Pucallpa',-5,0),(1830,158,'Huanuco',-5,0),(1831,158,'Lima*',-5,0),(1832,158,'Callao',-5,0),(1833,158,'San Martin',-5,0),(1834,158,'Huancayo',-5,0),(1835,158,'Ica',-5,0),(1836,158,'Cusco',-5,0),(1837,158,'Puerto Maldonado',-5,0),(1838,158,'Arequipa',-5,0),(1839,158,'Matarani',-5,0),(1840,158,'Ilo',-5,0),(1841,158,'Tacna',-5,0),(1842,159,'Aparri',8,0),(1843,159,'Baguio',8,0),(1844,159,'San Fernando',8,0),(1845,159,'Quezon',8,0),(1846,159,'Manila*',8,0),(1847,159,'Batangas',8,0),(1848,159,'Legaspi',8,0),(1849,159,'Iloilo',8,0),(1850,159,'Bacolod',8,0),(1851,159,'Cebu',8,0),(1852,159,'Puerto Princesa',8,0),(1853,159,'Butuan',8,0),(1854,159,'Iligan',8,0),(1855,159,'Cagayan de Oro',8,0),(1856,159,'Zamboanga',8,0),(1857,159,'Jolo',8,0),(1858,159,'Davao',8,0),(1859,160,'Ustka',1,0),(1860,160,'Gdynia',1,0),(1861,160,'Gdansk',1,0),(1862,160,'Kolobrzeg',1,0),(1863,160,'Swinoujscie',1,0),(1864,160,'Szczecin',1,0),(1865,160,'Bydgoszcz',1,0),(1866,160,'Bialystok',1,0),(1867,160,'Poznan',1,0),(1868,160,'Warzsawa*',1,0),(1869,160,'Lodz',1,0),(1870,160,'Radom',1,0),(1871,160,'Wroclaw',1,0),(1872,160,'Lublin',1,0),(1873,160,'Czestochowa',1,0),(1874,160,'Gliwice',1,0),(1875,160,'Katowice',1,0),(1876,160,'Rzeszow',1,0),(1877,160,'Krakow',1,0),(1878,161,'Viana do Castelo',1,0),(1879,161,'Braga',1,0),(1880,161,'Leixoes',1,0),(1881,161,'Porto',1,0),(1882,161,'Aveiro',1,0),(1883,161,'Coimbra',1,0),(1884,161,'Covilha',1,0),(1885,161,'Portalegre',1,0),(1886,161,'Lisbon*',1,0),(1887,161,'Barreiro',1,0),(1888,161,'Setubal',1,0),(1889,161,'Beja',1,0),(1890,161,'Faro',1,0),(1891,162,'Al Khuwayr',3,0),(1892,162,'Al Khawr',3,0),(1893,162,'Dukhan',3,0),(1894,162,'Umm Salal\' Ali',3,0),(1895,162,'Ar Rayyan',3,0),(1896,162,'Doha*',3,0),(1897,162,'Umm Bab',3,0),(1898,162,'Al Wakrah',3,0),(1899,162,'Umm Sa\'id',3,0),(1900,163,'Saint-denis*',4,0),(1901,163,'Le port',4,0),(1902,163,'Saint-Andre',4,0),(1903,163,'Saint-Paul',4,0),(1904,163,'Saint-Benoit',4,0),(1905,163,'Saint-Louis',4,0),(1906,163,'Saint-Pierre',4,0),(1907,163,'Saint-Joseph',4,0),(1908,164,'Oradea',2,0),(1909,164,'Cluj-Napoca',2,0),(1910,164,'Lasi',2,0),(1911,164,'Arad',2,0),(1912,164,'Sibiu',2,0),(1913,164,'Brasov',2,0),(1914,164,'Galati',2,0),(1915,164,'Braila',2,0),(1916,164,'Ploiesti',2,0),(1917,164,'Tuicea',2,0),(1918,164,'Bucharest*',2,0),(1919,164,'Constanta',2,0),(1920,164,'Mangalia',2,0),(1921,164,'Giurgiu',2,0),(1922,164,'Craiova',2,0),(1923,165,'Moscow*',3,172),(1924,165,'Saint Petersburg',3,172),(1925,165,'Azov',3,200),(1926,165,'Amursk',10,161),(1927,165,'Apatity',3,173),(1928,165,'Arkhangel\'sk',3,142),(1929,165,'Asbest',5,207),(1930,165,'Astrakhan',4,143),(1931,165,'Barnaul',7,140),(1932,165,'Belgorod',3,144),(1933,165,'Biysk',7,140),(1934,165,'Billings',3,0),(1935,165,'Blagoveshchensk',9,141),(1936,165,'Bratsk',8,152),(1937,165,'Bryansk',3,145),(1938,165,'Wanino',3,0),(1939,165,'Vladivostok',10,182),(1940,165,'Vladimir',3,216),(1941,165,'Volgograd',3,217),(1942,165,'Volgodonsk',3,200),(1943,165,'Vologda',3,218),(1944,165,'Voronezh',3,219),(1945,165,'Voskresensk',3,172),(1946,165,'Votkinsk',4,214),(1947,165,'Vyborg',3,169),(1948,165,'Gelendgik',3,165),(1949,165,'Dimitrovgrad',5,215),(1951,165,'Dolgoprudny',3,172),(1952,165,'Dubna',3,172),(1953,165,'Ekaterinburg',5,207),(1954,165,'Elizovo',12,158),(1955,165,'Essentuki',3,206),(1956,165,'Zhukovskiy',3,172),(1957,165,'Zareshtny',3,0),(1958,165,'Zelenogorsk',7,166),(1959,165,'Zelenograd',2,156),(1960,165,'Zlatoust',5,147),(1961,165,'Ivanovo',3,153),(1962,165,'Izhevsk',4,214),(1963,165,'Irkutsk',8,152),(1964,165,'Ishim',5,213),(1965,165,'Ioshkar-Ola',3,194),(1966,165,'Kazan',3,199),(1967,165,'Kaliningrad',2,156),(1968,165,'Kaluga',3,157),(1969,165,'Kamensk - Ural',5,207),(1970,165,'Kandalaksha',3,173),(1971,165,'Kemerovo',7,160),(1972,165,'Kirov',3,157),(1973,165,'Kislovodsk',3,206),(1974,165,'Kolomna',3,172),(1975,165,'Komsomolsk na Amure',10,161),(1976,165,'Korolev',3,172),(1977,165,'Kostomuksh',3,191),(1978,165,'Kostroma',3,164),(1979,165,'Krasnodar',3,165),(1980,165,'Krasnoyarsk',7,166),(1981,165,'Kurgan',5,167),(1982,165,'Kursk',3,168),(1983,165,'Kyzyl',7,198),(1984,165,'Lipetsk',3,170),(1985,165,'Magadan',11,171),(1986,165,'Magnitogorsk',5,147),(1987,165,'Maloyaroslavets',3,157),(1988,165,'Makhachkala',3,188),(1989,165,'Miass',5,147),(1990,165,'Murmansk',3,173),(1991,165,'Mytishi',3,172),(1992,165,'Naberegnye Chelny',3,199),(1993,165,'Nagano',3,0),(1994,165,'Nadym',5,220),(1995,165,'Nal\'chik',3,155),(1996,165,'Nakhodka',10,182),(1997,165,'Nizhnevartovsk',5,162),(1998,165,'Nizhni Novgorod',3,174),(1999,165,'Nizhni Tagil',5,207),(2000,165,'Nikolaevsk na Amure',10,161),(2001,165,'Belikiy Novgorod',3,175),(2002,165,'Novokuznetsk',7,160),(2003,165,'Novomoskovsk',3,211),(2004,165,'Novorossisk',3,165),(2005,165,'Novosibirsk',6,176),(2006,165,'Novocherkassk',3,200),(2007,165,'Novyy Urengoy',5,220),(2008,165,'Norilsk',7,166),(2009,165,'Obninsk',3,157),(2010,165,'Omsk',6,177),(2011,165,'Orel',3,179),(2012,165,'Orenburg',5,178),(2013,165,'Penza',3,180),(2014,165,'Pervouralsk',5,207),(2015,165,'Pereslavl - Zalessky',7,221),(2016,165,'Perm\'',5,181),(2017,165,'Petrozavodsk',3,191),(2018,165,'Petropavlovs - kamcsh.',12,158),(2019,165,'Podolsk',3,172),(2020,165,'Polevskoj',5,207),(2021,165,'Protvino',3,172),(2022,165,'Pskov',3,183),(2023,165,'Pushkino',3,172),(2024,165,'Pyatigorsk',3,206),(2025,165,'Revda',5,207),(2026,165,'Rostov na Donu',3,200),(2027,165,'Rostov',7,221),(2028,165,'Rubtsovsk',7,140),(2029,165,'Ryazan',3,201),(2030,165,'Samara',4,203),(2031,165,'Saransk',3,195),(2032,165,'Saratov',5,204),(2033,165,'Sarov',3,174),(2034,165,'Severodvinsk',3,142),(2035,165,'Seversk',6,210),(2036,165,'Segezh',3,191),(2037,165,'Semicaracorsk',3,0),(2038,165,'Semipalatinsk',3,0),(2039,165,'Sergiev Posad',3,172),(2040,165,'Serov',5,207),(2041,165,'Serpukhov',3,172),(2042,165,'Smolensk',3,205),(2043,165,'Snezhinsk',5,147),(2044,165,'Sosnovyy Bor',3,169),(2045,165,'Sochi',3,165),(2046,165,'Stary Oskol',3,144),(2047,165,'Strezhevoy',6,210),(2048,165,'Surgut',5,162),(2049,165,'Syzran',4,203),(2050,165,'Syktyvcar',5,193),(2051,165,'Taganrog',3,200),(2052,165,'Tambov',3,208),(2053,165,'Tver\'',3,212),(2054,165,'Tikhoretsk',3,165),(2055,165,'Tol\'yatti',4,203),(2056,165,'Tomsk',6,210),(2057,165,'Troitsk',5,147),(2058,165,'Tuapse',3,165),(2059,165,'Tula',3,211),(2060,165,'Tyumen\'',5,213),(2061,165,'Ul\'yanovsk',5,215),(2062,165,'Ussurijsk',10,182),(2063,165,'Ufa',5,186),(2064,165,'Ukhta',5,193),(2065,165,'Fryazino',3,172),(2066,165,'Khabarovsk',10,161),(2067,165,'Khanty-Mansiysk',5,162),(2068,165,'Cheboksary',3,150),(2069,165,'Chelyabinsk',5,147),(2070,165,'Cherepovets',3,218),(2071,165,'Cherkesk',3,159),(2072,165,'Chernogorlovka',3,0),(2073,165,'Chita',9,148),(2074,165,'Elista',3,190),(2075,165,'Engels',5,204),(2076,165,'Yuzhno-Sakhalinsk',10,202),(2077,165,'Yurga',7,160),(2078,165,'Yakutsk',9,197),(2079,165,'Yalta',3,0),(2080,165,'Yaroslavl\'',7,221),(2081,166,'Byumba',2,0),(2082,166,'Ruhengeri',2,0),(2083,166,'Gisenyi',2,0),(2084,166,'Kigali*',2,0),(2085,166,'Gitarama',2,0),(2086,166,'Kibuye',2,0),(2087,166,'Kibungo',2,0),(2088,166,'Cyangugu',2,0),(2089,166,'Butare',2,0),(2090,167,'Saipan',10,0),(2091,168,'Santo Antonio',0,0),(2092,168,'Sao Tome*',0,0),(2093,168,'Santa Cruz',0,0),(2094,168,'Neves',0,0),(2095,169,'Tabuk',3,0),(2096,169,'Duba',3,0),(2097,169,'Ha\'il',3,0),(2098,169,'Ra\'s al Khafji',3,0),(2099,169,'Al Dammam',3,0),(2100,169,'Buraydah',3,0),(2101,169,'Medina',3,0),(2102,169,'Riyadh*',3,0),(2103,169,'Al Hufur',3,0),(2104,169,'Yanbu\' al Bahr',3,0),(2105,169,'Rabigh',3,0),(2106,169,'Jiddah',3,0),(2107,169,'Mecca',3,0),(2108,169,'Jizan',3,0),(2109,170,'Subotica',1,0),(2110,170,'Novi Sad',1,0),(2111,170,'Pancevo',1,0),(2112,170,'Belgrade*',1,0),(2113,170,'Bor',1,0),(2114,170,'Uzice',1,0),(2115,170,'Nis',1,0),(2116,170,'Novi Pazar',1,0),(2117,170,'Pristina',1,0),(2118,170,'Tivat',1,0),(2119,170,'Kotor',1,0),(2120,170,'Podgorica*',1,0),(2121,170,'Bar',1,0),(2122,171,'Victiria*',4,0),(2123,172,'Kabala',0,0),(2124,172,'Kambia',0,0),(2125,172,'Makeni',0,0),(2126,172,'Sefadu',0,0),(2127,172,'Lungi',0,0),(2128,172,'Pepel',0,0),(2129,172,'Lunsar',0,0),(2130,172,'Freetown',0,0),(2131,172,'Kailahun',0,0),(2132,172,'Kenema',0,0),(2133,172,'Bo',0,0),(2134,172,'Monaligi',0,0),(2135,172,'Bonthe',0,0),(2136,172,'Sulima',0,0),(2137,172,'Shenge',0,0),(2138,173,'Woodlands',8,0),(2139,173,'Seletar',8,0),(2140,173,'Changi',8,0),(2141,173,'Bedok',8,0),(2142,173,'Jurong',8,0),(2143,173,'Singapore*',8,0),(2144,174,'Zilina',1,0),(2145,174,'Martin',1,0),(2146,174,'Trencin',1,0),(2147,174,'Banska Bystrica',1,0),(2148,174,'Preov',1,0),(2149,174,'Ko ice',1,0),(2150,174,'Lucenec',1,0),(2151,174,'Tmava',1,0),(2152,174,'Nitra',1,0),(2153,174,'Bratislava*',1,0),(2154,174,'Gabcikovo',1,0),(2155,174,'Komarno',1,0),(2156,175,'Maribor',1,0),(2157,175,'Velenje',1,0),(2158,175,'Kranj',1,0),(2159,175,'Ljublana*',1,0),(2160,175,'Nova Gorica',1,0),(2161,175,'Novo Mesto',1,0),(2162,175,'Izola',1,0),(2163,175,'Piran',1,0),(2164,175,'Koper',1,0),(2165,176,'Honiara*',11,0),(2166,176,'Gizo',11,0),(2167,176,'Yandina',11,0),(2168,176,'Aola',11,0),(2169,177,'Bender Cassim',3,0),(2170,177,'Berbera',3,0),(2171,177,'Hargeyesa',3,0),(2172,177,'Garoowe',3,0),(2173,177,'Galcaio',3,0),(2174,177,'Beledweyne',3,0),(2175,177,'Baidoa',3,0),(2176,177,'Mogadishu*',3,0),(2177,177,'Merca',3,0),(2178,177,'Chisimayu',3,0),(2179,178,'Messina',2,0),(2180,178,'Pietersburg',2,0),(2181,178,'Pretoria*',2,95),(2182,178,'Johannesburg',2,95),(2183,178,'Ladysmit',2,0),(2184,178,'Richards Bay',2,96),(2185,178,'Durban',2,96),(2186,178,'Upington',2,100),(2187,178,'Kimberley',2,100),(2188,178,'Bloemfontein',2,94),(2189,178,'De Aar',2,0),(2190,178,'East London',2,93),(2191,178,'Port Elizabeth',2,93),(2192,178,'Mossel Bay',2,101),(2193,178,'Saldanha',2,101),(2194,178,'Cape Town',2,101),(2195,179,'Aviles',1,289),(2196,179,'Gijon',1,289),(2197,179,'La Coruna',1,297),(2198,179,'Santander',1,302),(2199,179,'Bilbao',1,291),(2200,179,'Pasajes',1,291),(2201,179,'Leon',1,294),(2202,179,'Vigo',1,297),(2203,179,'Valladolid',1,294),(2204,179,'Zaragoza',1,288),(2205,179,'Tarragona',1,295),(2206,179,'Barcelona',1,295),(2207,179,'Salamanca',1,294),(2208,179,'Castellon de La Plana',1,299),(2209,179,'Valencia',1,299),(2210,179,'Alicante',1,299),(2211,179,'Cartagena',1,300),(2212,179,'Cordoba',1,287),(2213,179,'Huelva',1,287),(2214,179,'Sevilla',1,287),(2215,179,'Malaga',1,287),(2217,179,'Cadiz',1,287),(2218,78,'Gibraltar',1,0),(2219,179,'Ceuta',1,287),(2220,179,'Melilla',1,287),(2221,180,'Jaffna',6,0),(2222,180,'Mannar',6,0),(2223,180,'Trincomalee',6,0),(2224,180,'Anuradhapura',6,0),(2225,180,'Kalpitiya',6,0),(2226,180,'Puttalam',6,0),(2227,180,'Matale',6,0),(2228,180,'Kandy',6,0),(2229,180,'Negombo',6,0),(2230,180,'Badulla',6,0),(2231,180,'Colombo*',6,0),(2232,180,'Dehiwala-Mt.Lavinia',6,0),(2233,180,'Kotte',6,0),(2234,180,'Moratuwa',6,0),(2235,180,'Galle',6,0),(2236,180,'Hambantota',6,0),(2237,181,'Chateaubelair',-4,0),(2238,181,'Georgetown',-4,0),(2239,181,'Kingstown*',-4,0),(2240,182,'Halfa',2,0),(2241,182,'Port Sudan',2,0),(2242,182,'Sawakin',2,0),(2243,182,'Atbarah',2,0),(2244,182,'Omdurman',2,0),(2245,182,'Kassala',2,0),(2246,182,'Khartoum*',2,0),(2247,182,'Al Fashir',2,0),(2248,182,'Al Ubayyid',2,0),(2249,182,'Nyala',2,0),(2250,182,'Malakal',2,0),(2251,182,'Waw',2,0),(2252,182,'Bor',2,0),(2253,182,'Juba',2,0),(2254,182,'Nimule',2,0),(2255,183,'Nieuw Amsterdam',-3,0),(2256,183,'Nieuw Nickerie',-3,0),(2257,183,'Paramaribo*',-3,0),(2258,183,'Moengo',-3,0),(2259,183,'Wageningen',-3,0),(2260,183,'Paranam',-3,0),(2261,183,'Albina',-3,0),(2262,183,'Brokopondo',-3,0),(2263,184,'Piggs Peak',0,0),(2264,184,'Mhlume',0,0),(2265,184,'Mbabane*',0,0),(2266,184,'Lobamba',0,0),(2267,184,'Manzini',0,0),(2268,184,'Siteki',0,0),(2269,184,'Mankayane',0,0),(2270,184,'Big Bend',0,0),(2271,184,'Hlatikulu',0,0),(2272,184,'Nhlangano',0,0),(2273,184,'Lavumisa',0,0),(2274,185,'Kiruna',1,0),(2275,185,'Tarnaby',1,0),(2276,185,'Lulea',1,0),(2277,185,'Umea',1,0),(2278,185,'Sundsvall',1,0),(2279,185,'Hudiksvall',1,0),(2280,185,'Gavle',1,0),(2281,185,'Uppsala',1,0),(2282,185,'Karistand',1,0),(2283,185,'Orebro',1,0),(2284,185,'Norrkoping',1,0),(2285,185,'Linkoping',1,0),(2286,185,'Jonkoping',1,0),(2287,185,'Goteborg',1,0),(2288,185,'Kalmar',1,0),(2289,185,'Halmstad',1,0),(2290,185,'Helsingborg',1,0),(2291,185,'Karishamin',1,0),(2292,185,'Karlskrona',1,0),(2293,185,'Solvesborg',1,0),(2294,185,'Malmo',1,0),(2295,186,'Schaffhausen',1,0),(2296,186,'Basel',1,0),(2297,186,'Winterthur',1,0),(2298,186,'St.Gallen',1,0),(2299,186,'Zurich',1,0),(2300,186,'Biel',1,0),(2301,186,'Neuchatel',1,0),(2302,186,'Bern',1,0),(2303,186,'Lucerne',1,0),(2304,186,'Fribourg',1,0),(2305,186,'Thun',1,0),(2306,186,'Lausanne',1,0),(2307,186,'Geneva',1,0),(2308,186,'Chur',1,0),(2309,186,'Lugano',1,0),(2310,187,'Aleppo',2,0),(2311,187,'Al Hasakah',2,0),(2312,187,'Ar Raqqah',2,0),(2313,187,'Latakia',2,0),(2314,187,'Jablah',2,0),(2315,187,'Baniyas',2,0),(2316,187,'Hamah',2,0),(2317,187,'Tartus',2,0),(2318,187,'Hims',2,0),(2319,187,'Dayr az Zawr',2,0),(2320,187,'Tadmur',2,0),(2321,187,'Damascus',2,0),(2322,187,'Al Qunaytirah',2,0),(2323,187,'As Suwayda',2,0),(2324,188,'Chi-Lung',8,0),(2325,188,'Taipei',8,0),(2326,188,'Su-ao',8,0),(2327,188,'T\'ai-chung',8,0),(2328,188,'Chang-hua',8,0),(2329,188,'Hua-lien',8,0),(2330,188,'T\'ai-nan',8,0),(2331,188,'T\'ai-tung',8,0),(2332,188,'Kao-hsiung',8,0),(2333,188,'Ma-kung',8,0),(2334,189,'Khujand',6,0),(2335,189,'Gharm',6,0),(2336,189,'Murghob',6,0),(2337,189,'Panjakent',6,0),(2338,189,'Dushanbe',6,0),(2339,189,'Kulob',6,0),(2340,189,'Qurghonteppa',6,0),(2341,189,'Khorugh',6,0),(2342,190,'Bukoba',3,0),(2343,190,'Musoma',3,0),(2344,190,'Mwanza',3,0),(2345,190,'Arusha',3,0),(2346,190,'Kigoma',3,0),(2347,190,'Tabora',3,0),(2348,190,'Tanga',3,0),(2349,190,'Wete',3,0),(2350,190,'Mkoani',3,0),(2351,190,'Pemba',3,0),(2352,190,'Zanzibar',3,0),(2353,190,'Dodoma',3,0),(2354,190,'Dar es Salaam*',3,0),(2355,190,'Sumbawanga',3,0),(2356,190,'Irinda',3,0),(2357,190,'Mbeya',3,0),(2358,190,'Sogea',3,0),(2359,190,'Lindi',3,0),(2360,190,'Mtwara',3,0),(2361,191,'Chiang Mai',7,0),(2362,191,'Udon Thani',7,0),(2363,191,'Phitsanulok',7,0),(2364,191,'Khon Kaen',7,0),(2365,191,'Nakhon Sawan',7,0),(2366,191,'Ubon Ratchathani',7,0),(2367,191,'Nakhon Ratchasima',7,0),(2368,191,'Bangkok',7,0),(2369,191,'Si Racha',7,0),(2370,191,'Laem Chabang',7,0),(2371,191,'Sattahip',7,0),(2372,191,'Surat Thani',7,0),(2373,191,'Phuket',7,0),(2374,191,'Songkhla',7,0),(2375,191,'Hat Yai',7,0),(2376,191,'Pattani',7,0),(2377,192,'Dapaong',0,0),(2378,192,'Mango',0,0),(2379,192,'Kara',0,0),(2380,192,'Bassar',0,0),(2381,192,'Sokode',0,0),(2382,192,'Soutouboua',0,0),(2383,192,'Atakpame',0,0),(2384,192,'Kpalime',0,0),(2385,192,'Notse',0,0),(2386,192,'Tsevie',0,0),(2387,192,'Kpeme',0,0),(2388,192,'Aneho',0,0),(2389,192,'Lome*',0,0),(2390,193,'Nuku\'alofa*',13,0),(2391,193,'Neiafu',13,0),(2392,194,'Scarborough',-4,0),(2393,194,'Toco',-4,0),(2394,194,'Port-of-Spain*',-4,0),(2395,194,'Arima',-4,0),(2396,194,'Tunapuna',-4,0),(2397,194,'Sangre Grande',-4,0),(2398,194,'Point Lisas',-4,0),(2399,194,'Rio Claro',-4,0),(2400,194,'Pointe-a-Pierre',-4,0),(2401,194,'San Fernando',-4,0),(2403,194,'Point Fortin',-4,0),(2404,194,'Siparia',-4,0),(2405,194,'Guayaguayare',-4,0),(2406,195,'Bizerte',1,0),(2407,195,'L\'Ariana',1,0),(2408,195,'La Goulette',1,0),(2409,195,'Tunis*',1,0),(2410,195,'Nabeul',1,0),(2411,195,'Le Kef',1,0),(2412,195,'Sousse',1,0),(2413,195,'Kasserine',1,0),(2414,195,'Sfax',1,0),(2415,195,'Gafsa',1,0),(2416,195,'Tozeur',1,0),(2417,195,'Gabes',1,0),(2418,195,'Medenine',1,0),(2419,195,'Tataouine',1,0),(2420,196,'Istambul',2,0),(2421,196,'Kocaeli (Izmit)',2,0),(2422,196,'Gemlik',2,0),(2423,196,'Bursa',2,0),(2424,196,'Balikesir',2,0),(2425,196,'Manisa',2,0),(2426,196,'Izmir',2,0),(2427,196,'Eskisehir',2,0),(2428,196,'Antalya',2,0),(2429,196,'Ankara*',2,0),(2430,196,'Konya',2,0),(2431,196,'Samsun',2,0),(2432,196,'Sivas',2,0),(2433,196,'Kayseri',2,0),(2434,196,'Kahramanmaras',2,0),(2435,196,'Gaziantep',2,0),(2436,196,'Adana',2,0),(2437,196,'Icel (Mersin)',2,0),(2438,196,'Iskenderun',2,0),(2439,196,'Trabzon',2,0),(2440,196,'Hopa',2,0),(2441,196,'Erzurum',2,0),(2442,196,'Van',2,0),(2443,196,'Diyarbakir',2,0),(2444,196,'Sanli Urfa',2,0),(2446,197,'Turkmenbashy',5,0),(2447,197,'Nebitdag',5,0),(2448,197,'Dashhowuz',5,0),(2449,197,'Ashgabat',5,0),(2450,197,'Charjew',5,0),(2451,197,'Mary',5,0),(2452,197,'Kerki',5,0),(2453,197,'Gushgy',5,0),(2454,198,'Grand Turk*',-5,0),(2455,198,'Bottle Creek',-5,0),(2456,198,'Cockburn Harbour',-5,0),(2457,199,'Funafuti',12,0),(2458,200,'Arua',3,0),(2459,200,'Gulu',3,0),(2460,200,'Lira',3,0),(2461,200,'Moroto',3,0),(2462,200,'Soroti',3,0),(2463,200,'Mbale',3,0),(2464,200,'Jinja',3,0),(2465,200,'Port Bell',3,0),(2466,200,'Fort Portal',3,0),(2467,200,'Kampala*',3,0),(2468,200,'Entebbe',3,0),(2469,200,'Masaka',3,0),(2470,200,'Mbarara',3,0),(2471,201,'Chernihiv',2,264),(2472,201,'Chornobyl',2,273),(2473,201,'Luts\'k',2,283),(2474,201,'Zhytomyr',2,286),(2475,201,'L\'viv',2,275),(2476,201,'Kiev*',2,273),(2477,201,'Kharkiv',2,269),(2478,201,'Luhans\'k',2,274),(2479,201,'Dnipropetrovs\'k',2,266),(2480,201,'Donets\'k',2,267),(2481,201,'Zaporizhzhya',2,285),(2482,201,'Mariupol',2,267),(2483,201,'Berdyans\'k',2,285),(2484,201,'Kherson',2,270),(2485,201,'Odesa',2,277),(2486,201,'Illichivs\'k',2,277),(2487,201,'Kerch',2,262),(2488,201,'Simferopol',2,262),(2489,201,'Sevastopol',2,262),(2490,201,'Yalta',2,262),(2491,201,'Izmayil',2,277),(2492,201,'Reni',2,277),(2493,201,'Mykolayiv',2,276),(2494,201,'Kryvyy Rih',2,266),(2495,201,'Kirovohrad',2,272),(2496,201,'Uzhhorod',2,284),(2497,201,'Chernivtsi',2,265),(2498,202,'Ra\'s al Khayman',4,0),(2499,202,'Umm al Qaywayn',4,0),(2500,202,'Ajman',4,0),(2501,202,'Khawr Fakkan',4,0),(2502,202,'Al Fujayrah',4,0),(2503,202,'Sharjah',4,0),(2504,202,'Dubai',4,0),(2505,202,'Mina\'Jabal\'All',4,0),(2506,202,'Abu Dhabi*',4,0),(2507,202,'Al\'Ayn',4,0),(2508,202,'Ar Ruways',4,0),(2509,202,'Qutuf',4,0),(2594,205,'Nukus',5,0),(2595,205,'Urganch',5,0),(2596,205,'Bukhoro',5,0),(2597,205,'Nawoiy',5,0),(2598,205,'Samarqand',5,0),(2599,205,'Qarshi',5,0),(2600,205,'Termiz',5,0),(2601,205,'Tashkent*',5,0),(2602,205,'Andijon',5,0),(2603,205,'Farghona',5,0),(2604,206,'Amuay',-4,0),(2605,206,'Puerto Cabello',-4,0),(2606,206,'Maracaibo',-4,0),(2607,206,'Caracas*',-4,0),(2608,206,'Maracay',-4,0),(2609,206,'Valencia',-4,0),(2610,206,'Puerto La Cruz',-4,0),(2611,206,'Ciudad Guayana',-4,0),(2612,206,'San Fernando',-4,0),(2613,206,'Puerto Ayacucho',-4,0),(2614,206,'Barquisimeto',-4,0),(2615,207,'Lao Cai',7,0),(2616,207,'Hong Gai',7,0),(2617,207,'Hanoi*',7,0),(2618,207,'Haiphong',7,0),(2619,207,'Vinh',7,0),(2620,207,'Hue',7,0),(2621,207,'Da Nang',7,0),(2622,207,'Qui Nhon',7,0),(2623,207,'Nha Trang',7,0),(2624,207,'Cam Ranh',7,0),(2625,207,'Ho Chi Minh City',7,0),(2626,207,'Long Xuyen',7,0),(2627,207,'Can Tho',7,0),(2628,208,'Mata-Utu*',0,0),(2629,208,'Sigave (Leava)',0,0),(2630,209,'Sa\'dah',3,0),(2631,209,'Sanaa*',3,0),(2632,209,'Harib',3,0),(2633,209,'Al Hudaydah',3,0),(2634,209,'Ta\'izz',3,0),(2635,209,'Mocha',3,0),(2636,209,'Aden',3,0),(2637,209,'Habarut',3,0),(2638,209,'Al Ghaydah',3,0),(2639,209,'Saywun',3,0),(2640,209,'Nishtun',3,0),(2641,209,'Al Mukalla',3,0),(2642,209,'Socotra',3,0),(2643,211,'Mpulungu',2,0),(2644,211,'Kasama',2,0),(2645,211,'Chipata',2,0),(2646,211,'Kapiri Mposhi',2,0),(2647,211,'Solwezi',2,0),(2648,211,'Mufulira',2,0),(2649,211,'Kitwe',2,0),(2650,211,'Ndola',2,0),(2651,211,'Kabwe',2,0),(2652,211,'Lusaka*',2,0),(2653,211,'Mongu',2,0),(2654,211,'Livingstone',2,0),(2655,212,'Kariba',2,0),(2656,212,'Chinhoyi',2,0),(2657,212,'Harare*',2,0),(2658,212,'Chitungwiza',2,0),(2659,212,'Binga',2,0),(2660,212,'Hwange',2,0),(2661,212,'Kadoma',2,0),(2662,212,'Gweru',2,0),(2663,212,'Mutare',2,0),(2664,212,'Masvingo',2,0),(2665,212,'Bulawayo',2,0),(2666,212,'Beitbridge',2,0),(2667,1,'Kabul*',4,0),(2668,1,'Kheyrabad',4,0),(2669,1,'Mazar-e Sharif',4,0),(2670,1,'Shir Khan',4,0),(2671,1,'Konduz',4,0),(2672,1,'Bagram',4,0),(2673,1,'Jalalabad',4,0),(2674,1,'Towraghondi',4,0),(2675,1,'Herat',4,0),(2676,1,'Shindand',4,0),(2677,1,'Ghazni',4,0),(2678,1,'Kandahar',4,0),(2679,1,'Zaranj',4,0),(2680,4,'Other',-11,0),(2681,12,'Other',0,0),(2682,12,'Ascension Island',0,0),(2683,47,'Avarua*',-10,0),(2684,47,'Other',-10,0),(2685,101,' Ivory Coast',0,0),(2686,101,'Other',0,0),(2687,107,'Other',12,0),(2688,120,'Taipa',8,0),(2689,120,'Coloane',8,0),(2690,132,'Other',10,0),(2691,139,'Other',12,0),(2692,143,'Other',-4,0),(2693,154,'Other',9,0),(2694,167,'Other',10,0),(2695,171,'Other',4,0),(2696,199,'Other',12,0),(2697,95,'Bandung',8,0),(2791,203,'Aberdeen',0,67),(2792,203,'Aberystwyth',0,68),(2793,203,'Ambleside',0,65),(2794,203,'Armagh',0,66),(2796,203,'Ashford, Kent',0,65),(2797,203,'Barmouth',0,68),(2798,203,'Barnstaple',0,65),(2799,203,'Basingstoke',0,65),(2800,203,'Bath',0,65),(2801,203,'Beaumaris',0,68),(2802,203,'Belfast',0,66),(2803,203,'Berwick-upon-Tweed',0,65),(2804,203,'Birmingham',0,65),(2805,203,'Bishop\"s Stortford',0,65),(2806,203,'Blackpool',0,65),(2807,203,'Boston',0,65),(2808,203,'Bournemouth',0,65),(2809,203,'Bracknell',0,65),(2810,203,'Bradford',0,65),(2811,203,'Brighton',0,65),(2813,203,'Bristol',0,65),(2814,203,'Cambridge',0,65),(2815,203,'Canterbury',0,65),(2816,203,'Canvey Island',0,65),(2817,203,'Cardiff',0,68),(2818,203,'Carlisle',0,65),(2819,203,'Chelmsford',0,65),(2820,203,'Cheltenham',0,65),(2821,203,'Chester',0,65),(2822,203,'Coleraine',0,66),(2823,203,'Corsham',0,65),(2824,203,'Coventry',0,65),(2825,203,'Crail',0,67),(2826,203,'Cumbernauld',0,67),(2827,203,'Denbigh',0,68),(2828,203,'Derby',0,65),(2829,203,'Dorking',0,65),(2830,203,'Douglas, Isle of Man',0,65),(2831,203,'Dumfries',0,67),(2832,203,'Dundee',0,67),(2833,203,'Dunfermline',0,67),(2834,203,'Durham',0,65),(2835,203,'East Grinstead',0,65),(2836,203,'Eastbourne',0,65),(2837,203,'Edinburgh',0,67),(2838,203,'Elgin',0,67),(2839,203,'Ely',0,65),(2840,203,'Enniskillen',0,66),(2841,203,'Evesham',0,65),(2842,203,'Exeter',0,65),(2843,203,'Faringdon',0,65),(2844,203,'Farnborough',0,65),(2845,203,'Farnham',0,65),(2846,203,'Faversham',0,65),(2847,203,'Folkestone',0,65),(2848,203,'Fordham',0,65),(2849,203,'Forres',0,67),(2850,203,'Freshwater',0,65),(2852,203,'Glasgow',0,67),(2853,203,'Gloucester',0,65),(2855,203,'Grantham',0,65),(2856,203,'Gravesend',0,65),(2857,203,'Great Ayton',0,65),(2858,203,'Grimsby',0,65),(2859,203,'Guernsey',0,65),(2860,203,'Guildford',0,65),(2861,203,'Halstead, ES',0,65),(2862,203,'Hastings',0,65),(2863,203,'Hillsborough',0,66),(2864,203,'Holyhead',0,68),(2865,203,'Hull',0,65),(2866,203,'Inverness',0,67),(2867,203,'Inverurie',0,67),(2868,203,'Ipswich',0,65),(2869,203,'Kendal',0,65),(2870,203,'Kettering',0,65),(2871,203,'Kidderminster',0,65),(2872,203,'King\"s Lynn',0,65),(2873,203,'Lancaster',0,65),(2874,203,'Leeds',0,65),(2875,203,'Leicester',0,65),(2876,203,'Lewes',0,65),(2877,203,'Lincoln',0,65),(2878,203,'Lisnaskea',0,66),(2879,203,'Liverpool',0,65),(2880,203,'Llandudno',0,68),(2881,203,'London',0,65),(2882,203,'Londonderry',0,66),(2883,203,'Long Eaton',0,65),(2884,203,'Loughborough',0,65),(2885,203,'Luton, Bedfordshire',0,65),(2886,203,'Maidstone',0,65),(2887,203,'Malmesbury',0,65),(2888,203,'Manchester',0,65),(2889,203,'Margate',0,65),(2890,203,'Marlborough',0,65),(2891,203,'Middlesbrough',0,65),(2892,203,'Milton Keynes',0,65),(2893,203,'Newcastle-upon-Tyne',0,65),(2894,203,'Newent',0,65),(2895,203,'Newmarket',0,65),(2896,203,'Newport, Isle of Wight',0,65),(2897,203,'Northampton',0,65),(2898,203,'Norwich',0,65),(2899,203,'Nottingham',0,65),(2900,203,'Nuneaton',0,65),(2901,203,'Otley',0,65),(2902,203,'Oxford',0,65),(2903,203,'Peterborough',0,65),(2904,203,'Plymouth',0,65),(2905,203,'Poole',0,65),(2906,203,'Portree',0,67),(2907,203,'Portsmouth',0,65),(2908,203,'Preston',0,65),(2909,203,'Prestwick',0,67),(2910,203,'Radlett',0,65),(2911,203,'Reading',0,65),(2912,203,'Rugeley',0,65),(2913,203,'Salford',0,65),(2914,203,'Salisbury',0,65),(2915,203,'Saundersfoot',0,68),(2916,203,'Scarborough',0,65),(2917,203,'Scunthorpe',0,65),(2918,203,'Sheffield',0,65),(2919,203,'Sleaford',0,65),(2920,203,'Slough',0,65),(2921,203,'Soham',0,65),(2922,203,'Solihull',0,65),(2923,203,'Southampton',0,65),(2924,203,'St. Albans',0,65),(2925,203,'St. Andrews',0,67),(2926,203,'St. Helens',0,65),(2927,203,'St. Helier',0,65),(2928,203,'Stevenage',0,65),(2929,203,'Stirling',0,67),(2930,203,'Stoke-on-Trent',0,65),(2931,203,'Stratford-upon-Avon',0,65),(2932,203,'Swansea',0,68),(2933,203,'Swindon',0,65),(2934,203,'Tamworth',0,65),(2935,203,'Taunton',0,65),(2936,203,'Telford',0,65),(2937,203,'Tetbury',0,65),(2938,203,'Thurso',0,67),(2939,203,'Truro',0,65),(2940,203,'Uist Islands',0,67),(2941,203,'Uxbridge',0,65),(2942,203,'Walsall',0,65),(2943,203,'Warwick',0,65),(2944,203,'Watford',0,65),(2945,203,'Wells',0,65),(2946,203,'Weymouth',0,65),(2947,203,'Whitby',0,65),(2948,203,'Winchester',0,65),(2949,203,'Windsor',0,65),(2950,203,'Wolverhampton',0,65),(2951,203,'Worcester',0,65),(2952,203,'Worthing',0,65),(2953,203,'Wrexham',0,68),(2954,203,'York',0,65),(2957,185,'Stockholm',1,0),(2958,145,'Nelson',12,84),(2959,94,'Guwahati',6,0),(2960,94,'Shillong',6,0),(2962,94,'Aizwall',6,0),(2963,94,'Kohimal',6,0),(2964,94,'Agartalal',6,0),(2965,94,'Itanagar',6,0),(2966,203,'Jersey',0,65),(2967,203,'Aberaeron',0,68),(2968,203,'Aberdare',0,68),(2969,203,'Aberdovey',0,68),(2970,203,'Abergavenny',0,68),(2971,203,'Abergele',0,68),(2972,203,'Abertillery',0,68),(2974,203,'Amlwch',0,68),(2975,203,'Ammanford',0,68),(2976,203,'Arthog',0,68),(2977,203,'Bagillt',0,68),(2978,203,'Bala',0,68),(2979,203,'Bangor',0,66),(2980,203,'Bangor',0,68),(2981,203,'Bargoed',0,68),(2983,203,'Barry',0,68),(2985,203,'Benllech Bay',0,68),(2986,203,'Betws-y-Coed',0,68),(2987,203,'Blackwood',0,68),(2988,203,'Blaenau Ffestiniog',0,68),(2989,203,'Bodorgan',0,68),(2990,203,'Boncath',0,68),(2991,203,'Borth',0,68),(2992,203,'Bow Street',0,65),(2993,203,'Brecon',0,68),(2994,203,'Bridgend Cf',0,68),(2995,203,'Brynteg',0,68),(2996,203,'Buckley',0,68),(2997,203,'Burry Port',0,68),(2998,203,'Caernarfon',0,68),(2999,203,'Caerphilly',0,68),(3000,203,'Caersws',0,68),(3001,203,'Caldicot',0,68),(3003,203,'Cardigan',0,68),(3004,203,'Carmarthen',0,68),(3005,203,'Chepstow',0,68),(3006,203,'Clarbeston Road',0,68),(3007,203,'Clynderwen',0,68),(3008,203,'Colwyn Bay',0,68),(3009,203,'Corwen',0,68),(3010,203,'Criccieth',0,68),(3011,203,'Crickhowell',0,68),(3012,203,'Crymych',0,68),(3013,203,'Cwmbran',0,68),(3014,203,'Deeside',0,68),(3016,203,'Dinas Powys',0,68),(3017,203,'Dolgellau',0,68),(3018,203,'Dolwyddelan',0,68),(3019,203,'Dulas',0,68),(3020,203,'Dyffryn Ardudwy',0,68),(3021,203,'Ebbw Vale',0,68),(3022,203,'Ewloe',0,68),(3023,203,'Fairbourne',0,68),(3024,203,'Ferndale',0,68),(3025,203,'Flint',0,68),(3026,203,'Garndolbenmaen',0,68),(3027,203,'Glogue',0,68),(3028,203,'Goodwick',0,68),(3029,203,'Harlech',0,68),(3030,203,'Haverfordwest',0,68),(3031,203,'Hengoed',0,68),(3033,203,'Holywell',0,68),(3034,203,'Kidwelly',0,68),(3035,203,'Kilgetty',0,68),(3036,203,'Knighton',0,68),(3037,203,'Lampeter',0,68),(3038,203,'Llanarth',0,68),(3039,203,'Llanbedrgoch',0,68),(3040,203,'Llanbrynmair',0,68),(3041,203,'Llandeilo',0,68),(3042,203,'Llandovery',0,68),(3043,203,'Llandrindod Wells',0,68),(3045,203,'Llandudno Junction',0,68),(3046,203,'Llandysul',0,68),(3047,203,'Llanelli',0,68),(3048,203,'Llanerchymedd',0,68),(3049,203,'Llanfairfechan',0,68),(3050,203,'Llanfairpwllgwyngyll',0,68),(3051,203,'Llanfechain',0,68),(3052,203,'Llanfyllin',0,68),(3053,203,'Llanfyrnach',0,68),(3054,203,'Llangadog',0,68),(3055,203,'Llangammarch Wells',0,68),(3056,203,'Llangefni',0,68),(3057,203,'Llangollen',0,68),(3058,203,'Llanidloes',0,68),(3059,203,'Llanon',0,68),(3060,203,'Llanrhystud',0,68),(3061,203,'Llanrwst',0,68),(3062,203,'Llansantffraid',0,68),(3063,203,'Llantwit Major',0,68),(3064,203,'Llanwddyn',0,68),(3065,203,'Llanwrda',0,68),(3066,203,'Llanybydder',0,68),(3067,203,'Llanymynech',0,68),(3068,203,'Llwyngwril',0,68),(3069,203,'Machynlleth',0,68),(3070,203,'Maesteg',0,68),(3071,203,'Marianglas',0,68),(3072,203,'Meifod',0,68),(3073,203,'Menai Bridge',0,68),(3074,203,'Merthyr Tydfil',0,68),(3075,203,'Milford Haven',0,68),(3076,203,'Moelfre',0,68),(3077,203,'Mold',0,68),(3078,203,'Montgomery',0,68),(3079,203,'Mountain Ash',0,68),(3080,203,'Mumbles',0,68),(3081,203,'Neath',0,68),(3082,203,'New Quay',0,68),(3083,203,'New Tredegar',0,68),(3084,203,'Newcastle Emlyn',0,68),(3085,203,'Newport',0,68),(3086,203,'Newport',0,65),(3087,203,'Newtown',0,68),(3088,203,'Neyland',0,68),(3089,203,'Pembroke',0,68),(3090,203,'Penarth',0,68),(3091,203,'Pencader',0,68),(3092,203,'Penmaenmawr',0,68),(3093,203,'Penrhyndeudraeth',0,68),(3094,203,'Pentraeth',0,68),(3095,203,'Pentre',0,68),(3096,203,'Penysarn',0,68),(3097,203,'Pontyclun',0,68),(3098,203,'Pontypool',0,68),(3099,203,'Pontypridd',0,68),(3100,203,'Port Talbot',0,68),(3101,203,'Porth',0,68),(3102,203,'Porthcawl',0,68),(3103,203,'Porthmadog',0,68),(3104,203,'Prestatyn',0,68),(3105,203,'Presteigne',0,68),(3106,203,'Pwllheli',0,68),(3107,203,'Rhosgoch',0,68),(3108,203,'Rhosneigr',0,68),(3109,203,'Rhyl',0,68),(3110,203,'St. Asaph',0,68),(3112,203,'Talsarnau',0,68),(3113,203,'Talybont',0,68),(3114,203,'Tenby',0,68),(3115,203,'Tintern',0,68),(3116,203,'Tonypandy',0,68),(3117,203,'Tredegar',0,68),(3118,203,'Trefriw',0,68),(3119,203,'Tregaron',0,68),(3120,203,'Treharris',0,68),(3121,203,'Treorchy',0,68),(3122,203,'Ty Croes',0,68),(3123,203,'Tyn-Y-Gongl',0,68),(3124,203,'Tywyn',0,68),(3125,203,'Usk',0,68),(3126,203,'Welshpool',0,68),(3127,203,'Whitland',0,68),(3129,203,'Y Felinheli',0,68),(3130,203,'Ystrad Meurig',0,68),(3131,179,'Madrid*',1,298),(3136,179,'Las Palmas',1,292),(3137,213,'Aguada',-5,0),(3138,213,'Aguadilla',-5,0),(3139,213,'Bayamon',-5,0),(3140,213,'Caguas',-5,0),(3141,213,'Canovanas',-5,0),(3142,213,'Carolina',-5,0),(3143,213,'Cayey',-5,0),(3144,213,'Ceiba',-5,0),(3145,213,'Coamo',-5,0),(3146,213,'Condado',-5,0),(3147,213,'Culebra',-5,0),(3148,213,'Fajardo',-5,0),(3149,213,'Guanica',-5,0),(3150,213,'Hato Rey',-5,0),(3151,213,'Humacao',-5,0),(3152,213,'Juncos',-5,0),(3153,213,'Levittown',-5,0),(3154,213,'Mayaguez',-5,0),(3155,213,'Ponce',-5,0),(3156,213,'Rincon',-5,0),(3157,213,'Rio Blanco',-5,0),(3158,213,'Rio Grande',-5,0),(3159,213,'Rio Piedras',-5,0),(3160,213,'San German',-5,0),(3161,213,'San Juan*',-5,0),(3162,213,'Santurce',-5,0),(3163,213,'Trujillo Alto',-5,0),(3164,201,'Alupka',2,262),(3165,201,'Alushta',2,262),(3166,201,'Dzhankoi',2,262),(3167,201,'Feodosia',2,262),(3168,201,'Foros',2,262),(3169,201,'Hurzuf',2,262),(3171,201,'Partenit',2,262),(3172,201,'Saky',2,262),(3175,201,'Sudak',2,262),(3177,201,'Yevpatoria',2,262),(3178,201,'Cherkasy',2,263),(3179,201,'Chyhyryn',2,263),(3180,201,'Kamyanka',2,263),(3181,201,'Kaniv',2,263),(3182,201,'Korsun-Shevchenkivsky',2,263),(3183,201,'Smila',2,263),(3184,201,'Uman',2,263),(3185,201,'Zolotonosha',2,263),(3186,201,'Zvenyhorodka',2,263),(3187,201,'Bakhmach',2,264),(3188,201,'Bobrovytsya',2,264),(3189,201,'Borzna',2,264),(3191,201,'Ichnya',2,264),(3192,201,'Korop',2,264),(3193,201,'Kozelets',2,264),(3194,201,'Mena',2,264),(3195,201,'Nizhyn',2,264),(3196,201,'Novhorod Siversky',2,264),(3197,201,'Pryluky',2,264),(3198,201,'Semenivka',2,264),(3199,201,'Shchors',2,264),(3201,201,'Hertsa',2,265),(3202,201,'Kelmentsi',2,265),(3203,201,'Khotyn',2,265),(3204,201,'Kitsman',2,265),(3205,201,'Novoselytsia',2,265),(3206,201,'Putyla',2,265),(3207,201,'Sokyryany',2,265),(3208,201,'Storozhynets',2,265),(3209,201,'Vyzhnytsia',2,265),(3210,201,'Dniprodzerzhynsk',2,266),(3213,201,'Nikopol',2,266),(3214,201,'Novomoskovsk',2,266),(3215,201,'Pavlohrad',2,266),(3216,201,'Pyatykhatky',2,266),(3217,201,'Synelnykove',2,266),(3218,201,'Vilnohirsk',2,266),(3219,201,'Zhovti Vody',2,266),(3220,201,'Artemivsk',2,267),(3222,201,'Horlivka',2,267),(3223,201,'Khartsyzk',2,267),(3224,201,'Kirovsk',2,267),(3225,201,'Kostyantynivka',2,267),(3226,201,'Kramatorsk',2,267),(3227,201,'Makiyivka',2,267),(3229,201,'Novoazovsk',2,267),(3230,201,'Shakhtarsk',2,267),(3231,201,'Slovyansk',2,267),(3232,201,'Snizhne',2,267),(3233,201,'Torez',2,267),(3234,201,'Volnovakha',2,267),(3235,201,'Yenakiyeve',2,267),(3236,201,'Bohorodchany',2,268),(3237,201,'Burshtyn',2,268),(3238,201,'Dolyna',2,268),(3239,201,'Halych',2,268),(3240,201,'Horodenka',2,268),(3241,201,'Ivano-Frankivsk',2,268),(3242,201,'Kalush',2,268),(3243,201,'Kolomyia',2,268),(3244,201,'Kosiv',2,268),(3245,201,'Nadvirna',2,268),(3246,201,'Rohatyn',2,268),(3247,201,'Rozhnyativ',2,268),(3248,201,'Sniatyn',2,268),(3249,201,'Tlumach',2,268),(3250,201,'Tysmenytsya',2,268),(3251,201,'Verkhovyna',2,268),(3252,201,'Yaremche',2,268),(3253,201,'Balakliya',2,269),(3254,201,'Barvinkove',2,269),(3255,201,'Bohodukhiv',2,269),(3256,201,'Chuhuiv',2,269),(3257,201,'Derhachi',2,269),(3258,201,'Izyum',2,269),(3260,201,'Kolomak',2,269),(3261,201,'Krasnohrad',2,269),(3262,201,'Kupyansk',2,269),(3263,201,'Lozova',2,269),(3264,201,'Lyubotyn',2,269),(3265,201,'Merefa',2,269),(3266,201,'Pechenihy',2,269),(3267,201,'Vovchansk',2,269),(3268,201,'Zmiiv',2,269),(3269,201,'Zolochiv',2,269),(3270,201,'Askaniya Nova',2,270),(3271,201,'Beryslav',2,270),(3272,201,'Chaplynka',2,270),(3273,201,'Henichesk',2,270),(3274,201,'Hola Prystan',2,270),(3275,201,'Kakhovka',2,270),(3276,201,'Kalanchak',2,270),(3278,201,'Nova Kakhovka',2,270),(3279,201,'Skadovsk',2,270),(3280,201,'Tsyurupynsk',2,270),(3281,201,'Bilohirya',2,271),(3282,201,'Derazhnya',2,271),(3283,201,'Dunayivtsi',2,271),(3284,201,'Horodok',2,271),(3285,201,'Izyaslav',2,271),(3286,201,'Kamyanets Podilsky',2,271),(3287,201,'Khmelnytskyi',2,271),(3288,201,'Krasyliv',2,271),(3289,201,'Letychiv',2,271),(3290,201,'Medzhybizh',2,271),(3291,201,'Nova Ushytsya',2,271),(3292,201,'Polonne',2,271),(3293,201,'Shepetivka',2,271),(3294,201,'Slavuta',2,271),(3295,201,'Starokonstyantyniv',2,271),(3296,201,'Teofipol',2,271),(3297,201,'Volochysk',2,271),(3298,201,'Bobrynets',2,272),(3299,201,'Haivoron',2,272),(3300,201,'Holovanivsk',2,272),(3302,201,'Nova Praha',2,272),(3303,201,'Novoarkhanhelsk',2,272),(3304,201,'Novomyrhorod',2,272),(3305,201,'Novoukrayinka',2,272),(3306,201,'Oleksandrivka',2,272),(3307,201,'Oleksandriya',2,272),(3308,201,'Svitlovodsk',2,272),(3309,201,'Ustynivka',2,272),(3310,201,'Vilshanka',2,272),(3311,201,'Znamyanka',2,272),(3312,201,'Bila Tserkva',2,273),(3313,201,'Bohuslav',2,273),(3314,201,'Boryspil',2,273),(3315,201,'Brovary',2,273),(3317,201,'Fastiv',2,273),(3318,201,'Irpin',2,273),(3319,201,'Kaharlyk',2,273),(3321,201,'Obukhiv',2,273),(3322,201,'Pereyaslav-Khmelnytskyi',2,273),(3323,201,'Rokytne',2,273),(3324,201,'Slavutych',2,273),(3325,201,'Stavyshche',2,273),(3326,201,'Tetiyiv',2,273),(3327,201,'Vasylkiv',2,273),(3328,201,'Yahotyn',2,273),(3329,201,'Alchevsk',2,274),(3330,201,'Antratsyt',2,274),(3331,201,'Bryanka',2,274),(3332,201,'Kirovsk',2,274),(3333,201,'Krasnodon',2,274),(3334,201,'Krasnyy Luch',2,274),(3335,201,'Kreminna',2,274),(3337,201,'Perevalsk',2,274),(3338,201,'Pervomaysk',2,274),(3339,201,'Popasna',2,274),(3340,201,'Rovenky',2,274),(3341,201,'Rubizhne',2,274),(3342,201,'Severodonetsk',2,274),(3343,201,'Slavyanoserbsk',2,274),(3344,201,'Stakhaniv',2,274),(3345,201,'Starobilsk',2,274),(3346,201,'Sverdlovsk',2,274),(3347,201,'Boryslav',2,275),(3348,201,'Brody',2,275),(3349,201,'Chervonohrad',2,275),(3350,201,'Drohobych',2,275),(3352,201,'Peremyshlyany',2,275),(3353,201,'Rava Ruska',2,275),(3354,201,'Sambir',2,275),(3355,201,'Skole',2,275),(3356,201,'Sokal',2,275),(3357,201,'Stebnyk',2,275),(3358,201,'Stryi',2,275),(3359,201,'Truskavets',2,275),(3360,201,'Zhydachiv',2,275),(3361,201,'Zolochiv',2,275),(3362,201,'Bashtanka',2,276),(3363,201,'Kryve Ozero',2,276),(3365,201,'Nova Odesa',2,276),(3366,201,'Novyy Buh',2,276),(3367,201,'Ochakiv',2,276),(3368,201,'Pervomaysk',2,276),(3369,201,'Snihurivka',2,276),(3370,201,'Velyka Korenykha',2,276),(3371,201,'Voznesensk',2,276),(3372,201,'Zhovtneve',2,276),(3373,201,'Artsyz',2,277),(3374,201,'Balta',2,277),(3375,201,'Bilhorod Dnistrovsky',2,277),(3376,201,'Bolhrad',2,277),(3379,201,'Kiliya',2,277),(3380,201,'Kodyma',2,277),(3381,201,'Kotovsk',2,277),(3384,201,'Tatarbunary',2,277),(3385,201,'Vylkovo',2,277),(3386,201,'Dekanka',2,278),(3387,201,'Hadiach',2,278),(3388,201,'Karlivka',2,278),(3389,201,'Khorol',2,278),(3390,201,'Kobeliaky',2,278),(3391,201,'Kotelva',2,278),(3392,201,'Kremenchuk',2,278),(3393,201,'Lokhvytsia',2,278),(3394,201,'Lubny',2,278),(3395,201,'Myrhorod',2,278),(3396,201,'Novi Sanzhary',2,278),(3397,201,'Poltava',2,278),(3398,201,'Pyriatyn',2,278),(3399,201,'Romodan',2,278),(3400,201,'Zinkiv',2,278),(3401,201,'Dubno',2,279),(3402,201,'Dubrovytsia',2,279),(3403,201,'Hoshcha',2,279),(3404,201,'Kostopil',2,279),(3405,201,'Kuznetsovsk',2,279),(3406,201,'Mlyniv',2,279),(3407,201,'Ostroh',2,279),(3408,201,'Radyvyliv',2,279),(3409,201,'Rivne',2,279),(3410,201,'Sarny',2,279),(3411,201,'Volodymyrets',2,279),(3412,201,'Zdolbuniv',2,279),(3413,201,'Hlukhiv',2,280),(3414,201,'Konotop',2,280),(3415,201,'Krolevets',2,280),(3416,201,'Lebedyn',2,280),(3417,201,'Lypova Dolyna',2,280),(3418,201,'Okhtyrka',2,280),(3419,201,'Putyvl',2,280),(3420,201,'Romny',2,280),(3421,201,'Seredyna Buda',2,280),(3422,201,'Shostka',2,280),(3423,201,'Sumy',2,280),(3424,201,'Trostyanets',2,280),(3425,201,'Berezhany',2,281),(3426,201,'Borshchiv',2,281),(3427,201,'Buchach',2,281),(3428,201,'Chortkiv',2,281),(3429,201,'Husiatyn',2,281),(3430,201,'Kozova',2,281),(3431,201,'Kremenets',2,281),(3432,201,'Monastyryska',2,281),(3433,201,'Pidhaytsi',2,281),(3434,201,'Pidvolochysk',2,281),(3435,201,'Skalat',2,281),(3436,201,'Terebovlya',2,281),(3437,201,'Ternopil',2,281),(3438,201,'Zalishchyky',2,281),(3439,201,'Zbarazh',2,281),(3440,201,'Zboriv',2,281),(3441,201,'Bar',2,282),(3442,201,'Bershad',2,282),(3443,201,'Haisyn',2,282),(3444,201,'Khmilnyk',2,282),(3445,201,'Komarivtsi',2,282),(3446,201,'Kozyatyn',2,282),(3447,201,'Kryzhopil',2,282),(3448,201,'Mohyliv Podilsky',2,282),(3449,201,'Nemyriv',2,282),(3450,201,'Pohrebyshche',2,282),(3451,201,'Sharhorod',2,282),(3452,201,'Tomashpil',2,282),(3453,201,'Trostyanets',2,282),(3454,201,'Tulchyn',2,282),(3455,201,'Vinnytsia',2,282),(3456,201,'Yampil',2,282),(3457,201,'Zhmerynka',2,282),(3458,201,'Horokhiv',2,283),(3459,201,'Kamin Kashyrsky',2,283),(3460,201,'Kivertsi',2,283),(3461,201,'Kovel',2,283),(3462,201,'Luboml',2,283),(3464,201,'Lyubeshiv',2,283),(3465,201,'Manevychi',2,283),(3466,201,'Novovolynsk',2,283),(3467,201,'Ratne',2,283),(3468,201,'Rozhyshche',2,283),(3469,201,'Shatsk',2,283),(3470,201,'Torchyn',2,283),(3471,201,'Turiysk',2,283),(3472,201,'Volodymyr Volynsky',2,283),(3473,201,'Berehovo',2,284),(3474,201,'Chop',2,284),(3475,201,'Irshava',2,284),(3476,201,'Khust',2,284),(3477,201,'Mizhhirya',2,284),(3478,201,'Mukachevo',2,284),(3479,201,'Perechyn',2,284),(3480,201,'Rakhiv',2,284),(3481,201,'Serednye',2,284),(3482,201,'Solotvyno',2,284),(3483,201,'Svalyava',2,284),(3484,201,'Tyachiv',2,284),(3486,201,'Velyky Berezny',2,284),(3487,201,'Volovets',2,284),(3488,201,'Vynohradovo',2,284),(3490,201,'Enerhodar',2,285),(3491,201,'Huliaipole',2,285),(3492,201,'Kyrylivka',2,285),(3493,201,'Melitopol',2,285),(3494,201,'Polohy',2,285),(3495,201,'Prymorsk',2,285),(3496,201,'Tokmak',2,285),(3497,201,'Vilnyansk',2,285),(3499,201,'Berdychiv',2,286),(3500,201,'Brusyliv',2,286),(3501,201,'Korosten',2,286),(3502,201,'Korostyshiv',2,286),(3503,201,'Novohrad Volynsky',2,286),(3504,201,'Ovruch',2,286),(3505,201,'Radomyshl',2,286),(3507,204,'Washington*',-5,51),(3508,204,'Anchorage',-6,1),(3509,204,'Andalusia',-6,1),(3510,204,'Anniston',-6,1),(3511,204,'Athens',-6,1),(3512,204,'Atmore',-6,1),(3513,204,'Attalla',-6,1),(3514,204,'Auburn',-6,1),(3515,204,'Bay Minette',-6,1),(3516,204,'Bessemer',-6,1),(3517,204,'Birmingham',-6,1),(3518,204,'Boaz',-6,1),(3519,204,'Brewton',-6,1),(3520,204,'Calera',-6,1),(3521,204,'Camden',-6,1),(3522,204,'Childersburg',-6,1),(3523,204,'Clanton',-6,1),(3524,204,'Cullman',-6,1),(3525,204,'Daphne',-6,1),(3526,204,'Decatur',-6,1),(3527,204,'Demopolis',-6,1),(3528,204,'Dothan',-6,1),(3529,204,'Enterprise',-6,1),(3530,204,'Eufaula',-6,1),(3531,204,'Evergreen',-6,1),(3532,204,'Fairfield',-6,1),(3533,204,'Fairhope',-6,1),(3534,204,'Florence',-6,1),(3535,204,'Foley',-6,1),(3536,204,'Ft Payne',-6,1),(3537,204,'Fultondale',-6,1),(3538,204,'Gadsden',-6,1),(3539,204,'Greenville',-6,1),(3540,204,'Gulf Shores',-6,1),(3541,204,'Guntersville',-6,1),(3542,204,'Hamilton',-6,1),(3543,204,'Heflin',-6,1),(3544,204,'Homewood',-6,1),(3545,204,'Hoover',-6,1),(3546,204,'Hope Hull',-6,1),(3547,204,'Huntsville',-6,1),(3548,204,'Irondale',-6,1),(3549,204,'Jasper',-6,1),(3550,204,'Lanett',-6,1),(3551,204,'Leeds',-6,1),(3552,204,'Lincoln',-6,1),(3553,204,'Livingston',-6,1),(3554,204,'Madison',-6,1),(3555,204,'Mobile',-6,1),(3556,204,'Monroeville',-6,1),(3557,204,'Montgomery*',-6,1),(3558,204,'Moulton',-6,1),(3559,204,'Muscle Shoals',-6,1),(3560,204,'Northport',-6,1),(3561,204,'Opelika',-6,1),(3562,204,'Orange Beach',-6,1),(3563,204,'Oxford',-6,1),(3564,204,'Ozark',-6,1),(3565,204,'Pelham',-6,1),(3566,204,'Pell City',-6,1),(3567,204,'Phenix City',-6,1),(3568,204,'Prattville',-6,1),(3569,204,'Priceville',-6,1),(3570,204,'Saraland',-6,1),(3571,204,'Scottsboro',-6,1),(3572,204,'Selma',-6,1),(3573,204,'Sheffield',-6,1),(3574,204,'Shorter',-6,1),(3575,204,'Soldotna',-6,1),(3576,204,'Sylacauga',-6,1),(3577,204,'Talladega',-6,1),(3578,204,'Thomasville',-6,1),(3579,204,'Troy',-6,1),(3580,204,'Trussville',-6,1),(3581,204,'Tuscaloosa',-6,1),(3582,204,'Valley',-6,1),(3583,204,'Vance',-6,1),(3584,204,'York',-6,1),(3585,204,'Anchorage',-8,2),(3586,204,'Anchor Point',-8,2),(3587,204,'Barrow',-8,2),(3588,204,'Cooper Landing',-8,2),(3589,204,'Copper Center',-8,2),(3590,204,'Cordova',-8,2),(3591,204,'Delta Junction',-8,2),(3592,204,'Denali Park',-8,2),(3593,204,'Fairbanks',-8,2),(3594,204,'Girdwood',-8,2),(3595,204,'Glennallen',-8,2),(3596,204,'Haines',-8,2),(3597,204,'Healy',-8,2),(3598,204,'Homer',-8,2),(3599,204,'Hope',-8,2),(3600,204,'Hyder',-8,2),(3601,204,'Juneau*',-8,2),(3602,204,'Kenai',-8,2),(3603,204,'Ketchikan',-8,2),(3604,204,'Kodiak',-8,2),(3605,204,'Kotzebue',-8,2),(3606,204,'Nenana',-8,2),(3607,204,'Ninilchik',-8,2),(3608,204,'Nome',-8,2),(3609,204,'North Pole',-8,2),(3610,204,'Palmer',-8,2),(3611,204,'Petersburg',-8,2),(3612,204,'Seward',-8,2),(3613,204,'Sitka',-8,2),(3614,204,'Skagway',-8,2),(3615,204,'Soldotna',-8,2),(3616,204,'Sterling',-8,2),(3617,204,'Talkeetna',-8,2),(3618,204,'Tok',-8,2),(3619,204,'Valdez',-8,2),(3620,204,'Wasilla',-8,2),(3621,204,'Whittier',-8,2),(3622,204,'Apache Junction',-7,3),(3623,204,'Benson',-7,3),(3624,204,'Buckeye',-7,3),(3625,204,'Bullhead City',-7,3),(3626,204,'Camp Verde',-7,3),(3627,204,'Carefree',-7,3),(3628,204,'Casa Grande',-7,3),(3629,204,'Catalina',-7,3),(3630,204,'Chambers',-7,3),(3631,204,'Chandler',-7,3),(3632,204,'Chinle',-7,3),(3633,204,'Cottonwood',-7,3),(3634,204,'Eagar',-7,3),(3635,204,'Ehrenberg',-7,3),(3636,204,'Flagstaff',-7,3),(3637,204,'Fountain Hills',-7,3),(3638,204,'Gila Bend',-7,3),(3639,204,'Glendale',-7,3),(3640,204,'Globe',-7,3),(3641,204,'Gold Canyon',-7,3),(3642,204,'Goodyear',-7,3),(3643,204,'Grand Canyon',-7,3),(3644,204,'Green Valley',-7,3),(3645,204,'Heber',-7,3),(3646,204,'Holbrook',-7,3),(3647,204,'Kayenta',-7,3),(3648,204,'Kingman',-7,3),(3649,204,'Lakeside-Pinetop',-7,3),(3650,204,'Lake Havasu City',-7,3),(3651,204,'Litchfield Park',-7,3),(3652,204,'Marana',-7,3),(3653,204,'Maricopa Reservation',-7,3),(3654,204,'Mesa',-7,3),(3655,204,'Nogales',-7,3),(3656,204,'Oro Valley',-7,3),(3657,204,'Page',-7,3),(3658,204,'Paradise Valley',-7,3),(3659,204,'Parker',-7,3),(3660,204,'Payson',-7,3),(3661,204,'Peach Springs',-7,3),(3662,204,'Peoria',-7,3),(3663,204,'Phoenix*',-7,3),(3664,204,'Pinetop-Lakeside',-7,3),(3665,204,'Prescott',-7,3),(3666,204,'Prescott Valley',-7,3),(3667,204,'Rio Rico',-7,3),(3668,204,'Safford',-7,3),(3669,204,'St. Michaels',-7,3),(3670,204,'San Carlos',-7,3),(3671,204,'Scottsdale',-7,3),(3672,204,'Sedona',-7,3),(3673,204,'Show Low',-7,3),(3674,204,'Sierra Vista',-7,3),(3675,204,'Snowflake',-7,3),(3676,204,'Sun City',-7,3),(3677,204,'Surprise',-7,3),(3678,204,'Tempe',-7,3),(3679,204,'Tolleson',-7,3),(3680,204,'Tombstone',-7,3),(3681,204,'Tuba City',-7,3),(3682,204,'Tucson',-7,3),(3683,204,'Wickenburg',-7,3),(3684,204,'Willcox',-7,3),(3685,204,'Williams',-7,3),(3686,204,'Winslow',-7,3),(3687,204,'Yuma',-7,3),(3688,204,'Alma',-6,4),(3689,204,'Arkadelphia',-6,4),(3690,204,'Bald Knob',-6,4),(3691,204,'Batesville',-6,4),(3692,204,'Benton',-6,4),(3693,204,'Bentonville',-6,4),(3694,204,'Blytheville',-6,4),(3695,204,'Brinkley',-6,4),(3696,204,'Bryant',-6,4),(3697,204,'Cabot',-6,4),(3698,204,'Camden',-6,4),(3699,204,'Carlisle',-6,4),(3700,204,'Clarksville',-6,4),(3701,204,'Clinton',-6,4),(3702,204,'Conway',-6,4),(3703,204,'DeQueen',-6,4),(3704,204,'Dumas',-6,4),(3705,204,'El Dorado',-6,4),(3706,204,'Eureka Springs',-6,4),(3707,204,'Fairfield Bay',-6,4),(3708,204,'Fayetteville',-6,4),(3709,204,'Forrest City',-6,4),(3710,204,'Fort Smith',-6,4),(3711,204,'Gurdon',-6,4),(3712,204,'Hardy',-6,4),(3713,204,'Harrison',-6,4),(3714,204,'Hope',-6,4),(3715,204,'Hot Springs',-6,4),(3716,204,'Jacksonville',-6,4),(3717,204,'Johnson',-6,4),(3718,204,'Jonesboro',-6,4),(3719,204,'Lake Village',-6,4),(3720,204,'Little Rock*',-6,4),(3721,204,'Lonoke',-6,4),(3722,204,'Magnolia',-6,4),(3723,204,'Malvern',-6,4),(3724,204,'Marion',-6,4),(3725,204,'McGehee',-6,4),(3726,204,'Monticello',-6,4),(3727,204,'Morrilton',-6,4),(3728,204,'Mountain Home',-6,4),(3729,204,'Mountain View',-6,4),(3730,204,'Newport',-6,4),(3731,204,'North Little Rock',-6,4),(3732,204,'Osceola',-6,4),(3733,204,'Ozark',-6,4),(3734,204,'Paragould',-6,4),(3735,204,'Pine Bluff',-6,4),(3736,204,'Pocahontas',-6,4),(3737,204,'Prescott',-6,4),(3738,204,'Rogers',-6,4),(3739,204,'Russellville',-6,4),(3740,204,'Searcy',-6,4),(3741,204,'Siloam Springs',-6,4),(3742,204,'Springdale',-6,4),(3743,204,'Stuttgart',-6,4),(3744,204,'Texarkana',-6,4),(3745,204,'Van Buren',-6,4),(3746,204,'Warren',-6,4),(3747,204,'West Helena',-6,4),(3748,204,'West Memphis',-6,4),(3749,204,'White Hall',-6,4),(3750,204,'Adelanto',-8,5),(3751,204,'Agoura Hills',-8,5),(3752,204,'Ahwahnee',-8,5),(3753,204,'Alameda',-8,5),(3754,204,'Alhambra',-8,5),(3755,204,'Alpine',-8,5),(3756,204,'Alturas',-8,5),(3757,204,'Anaheim',-8,5),(3758,204,'Anaheim Hills',-8,5),(3759,204,'Anderson',-8,5),(3760,204,'Angels Camp',-8,5),(3761,204,'Antioch',-8,5),(3762,204,'Aptos',-8,5),(3763,204,'Arcadia',-8,5),(3764,204,'Arcata',-8,5),(3765,204,'Arroyo Grande',-8,5),(3766,204,'Artesia',-8,5),(3767,204,'Atascadero',-8,5),(3768,204,'Auburn',-8,5),(3769,204,'Avalon',-8,5),(3770,204,'Avila Beach',-8,5),(3771,204,'Azusa',-8,5),(3772,204,'Bakersfield',-8,5),(3773,204,'Baldwin Park',-8,5),(3774,204,'Banning',-8,5),(3775,204,'Barstow',-8,5),(3776,204,'Beale AFB',-8,5),(3777,204,'Beaumont',-8,5),(3778,204,'Bell Gardens',-8,5),(3779,204,'Bellflower',-8,5),(3780,204,'Belmont',-8,5),(3781,204,'Ben Lomond',-8,5),(3782,204,'Benicia',-8,5),(3783,204,'Berkeley',-8,5),(3784,204,'Beverly Hills',-8,5),(3785,204,'Big Bear Lake',-8,5),(3786,204,'Big Sur',-8,5),(3787,204,'Bishop',-8,5),(3788,204,'Blue Jay',-8,5),(3789,204,'Blythe',-8,5),(3790,204,'Bodega Bay',-8,5),(3791,204,'Borrego Springs',-8,5),(3792,204,'Boyes Hot Springs',-8,5),(3793,204,'Brawley',-8,5),(3794,204,'Brea',-8,5),(3795,204,'Brentwood',-8,5),(3796,204,'Bridgeport',-8,5),(3797,204,'Brisbane',-8,5),(3798,204,'Buellton',-8,5),(3799,204,'Buena Park',-8,5),(3800,204,'Burbank',-8,5),(3801,204,'Burlingame',-8,5),(3802,204,'Calabasas',-8,5),(3803,204,'Calexico',-8,5),(3804,204,'Calistoga',-8,5),(3805,204,'Camarillo',-8,5),(3806,204,'Cambria',-8,5),(3807,204,'Cameron Park',-8,5),(3808,204,'Camp Pendleton',-8,5),(3809,204,'Campbell',-8,5),(3810,204,'Canoga Park',-8,5),(3811,204,'Capistrano Beach',-8,5),(3812,204,'Capitola',-8,5),(3813,204,'Cardiff by the Sea',-8,5),(3814,204,'Carlsbad',-8,5),(3815,204,'Carmel',-8,5),(3816,204,'Carmel Valley',-8,5),(3817,204,'Carpinteria',-8,5),(3818,204,'Carson',-8,5),(3819,204,'Castaic',-8,5),(3820,204,'Castro Valley',-8,5),(3821,204,'Cathedral City',-8,5),(3822,204,'Cayucos',-8,5),(3823,204,'Ceres',-8,5),(3824,204,'Cerritos',-8,5),(3825,204,'Chatsworth',-8,5),(3826,204,'Chico',-8,5),(3827,204,'Chino',-8,5),(3828,204,'Chowchilla',-8,5),(3829,204,'Chula Vista',-8,5),(3830,204,'City of Industry',-8,5),(3831,204,'Claremont',-8,5),(3832,204,'Clearlake',-8,5),(3833,204,'Clovis',-8,5),(3834,204,'Coalinga',-8,5),(3835,204,'Coarsegold',-8,5),(3836,204,'Colton',-8,5),(3837,204,'Commerce',-8,5),(3838,204,'Compton',-8,5),(3839,204,'Concord',-8,5),(3840,204,'Copperopolis',-8,5),(3841,204,'Corning',-8,5),(3842,204,'Corona',-8,5),(3843,204,'Coronado',-8,5),(3844,204,'Corte Madera',-8,5),(3845,204,'Costa Mesa',-8,5),(3846,204,'Covina',-8,5),(3847,204,'Crescent City',-8,5),(3848,204,'Culver City',-8,5),(3849,204,'Cupertino',-8,5),(3850,204,'Cypress',-8,5),(3851,204,'Daly City',-8,5),(3852,204,'Dana Point',-8,5),(3853,204,'Davis',-8,5),(3854,204,'Del Mar',-8,5),(3855,204,'Delano',-8,5),(3856,204,'Desert Hot Springs',-8,5),(3857,204,'Diamond Bar',-8,5),(3858,204,'Dinuba',-8,5),(3859,204,'Dixon',-8,5),(3860,204,'Downey',-8,5),(3861,204,'Duarte',-8,5),(3862,204,'Dublin',-8,5),(3863,204,'Dunnigan',-8,5),(3864,204,'Dunsmuir',-8,5),(3865,204,'Edwards AFB',-8,5),(3866,204,'El Cajon',-8,5),(3867,204,'El Centro',-8,5),(3868,204,'El Ceritto',-8,5),(3869,204,'El Monte',-8,5),(3870,204,'El Segundo',-8,5),(3871,204,'Emeryville',-8,5),(3872,204,'Encinitas',-8,5),(3873,204,'Escondido',-8,5),(3874,204,'Eureka',-8,5),(3875,204,'Exeter',-8,5),(3876,204,'Fairfield',-8,5),(3877,204,'Fallbrook',-8,5),(3878,204,'Fillmore',-8,5),(3879,204,'Firebaugh',-8,5),(3880,204,'Fish Camp',-8,5),(3881,204,'Folsom',-8,5),(3882,204,'Fontana',-8,5),(3883,204,'Foothill Ranch',-8,5),(3884,204,'Fort Bragg',-8,5),(3885,204,'Fort Irwin',-8,5),(3886,204,'Fortuna',-8,5),(3887,204,'Foster City',-8,5),(3888,204,'Fountain Valley',-8,5),(3889,204,'Fremont',-8,5),(3890,204,'Fresno',-8,5),(3891,204,'Fullerton',-8,5),(3892,204,'Galt',-8,5),(3893,204,'Garberville',-8,5),(3894,204,'Garden Grove',-8,5),(3895,204,'Gardena',-8,5),(3896,204,'Gilroy',-8,5),(3897,204,'Glendale',-8,5),(3898,204,'Glendora',-8,5),(3899,204,'Goleta',-8,5),(3900,204,'Gorman',-8,5),(3901,204,'Grass Valley',-8,5),(3902,204,'Grover Beach',-8,5),(3903,204,'Hacienda Heights',-8,5),(3904,204,'Half Moon Bay',-8,5),(3905,204,'Hanford',-8,5),(3906,204,'Harbor City',-8,5),(3907,204,'Hawthorne',-8,5),(3908,204,'Hayward',-8,5),(3909,204,'Healdsburg',-8,5),(3910,204,'Helendale',-8,5),(3911,204,'Hemet',-8,5),(3912,204,'Hermosa Beach',-8,5),(3913,204,'Hesperia',-8,5),(3914,204,'Highland',-8,5),(3915,204,'Hollister',-8,5),(3916,204,'Hollywood',-8,5),(3917,204,'Huntington Beach',-8,5),(3918,204,'Imperial Beach',-8,5),(3919,204,'Indian Wells',-8,5),(3920,204,'Indio',-8,5),(3921,204,'Inglewood',-8,5),(3922,204,'Irvine',-8,5),(3923,204,'June Lake',-8,5),(3924,204,'Kettleman City',-8,5),(3925,204,'King City',-8,5),(3926,204,'La Jolla',-8,5),(3927,204,'La Mesa',-8,5),(3928,204,'La Mirada',-8,5),(3929,204,'La Palma',-8,5),(3930,204,'La Quinta',-8,5),(3931,204,'Lafayette',-8,5),(3932,204,'Laguna Beach',-8,5),(3933,204,'Laguna Hills',-8,5),(3934,204,'Laguna Woods',-8,5),(3935,204,'Lake Arrowhead',-8,5),(3936,204,'Lake Forest',-8,5),(3937,204,'Lancaster',-8,5),(3938,204,'Larkspur',-8,5),(3939,204,'Lathrop',-8,5),(3940,204,'Lawndale',-8,5),(3941,204,'Lebec',-8,5),(3942,204,'Lee Vining',-8,5),(3943,204,'Lemoore',-8,5),(3944,204,'Lindsay',-8,5),(3945,204,'Livermore',-8,5),(3946,204,'Lodi',-8,5),(3947,204,'Lompoc',-8,5),(3948,204,'Lone Pine',-8,5),(3949,204,'Long Beach',-8,5),(3950,204,'Los Alamitos',-8,5),(3951,204,'Los Altos',-8,5),(3952,204,'Los Angeles',-8,5),(3953,204,'Los Banos',-8,5),(3954,204,'Los Gatos',-8,5),(3955,204,'Lost Hills',-8,5),(3956,204,'Lynwood',-8,5),(3957,204,'Madera',-8,5),(3958,204,'Malibu',-8,5),(3959,204,'Mammoth Lakes',-8,5),(3960,204,'Manhattan Beach',-8,5),(3961,204,'Manteca',-8,5),(3962,204,'Marina',-8,5),(3963,204,'Marina del Rey',-8,5),(3964,204,'Mariposa',-8,5),(3965,204,'Martinez',-8,5),(3966,204,'Marysville',-8,5),(3967,204,'McClellan',-8,5),(3968,204,'McKinleyville',-8,5),(3969,204,'Mendocino',-8,5),(3970,204,'Menlo Park',-8,5),(3971,204,'Merced',-8,5),(3972,204,'Mill Valley',-8,5),(3973,204,'Millbrae',-8,5),(3974,204,'Milpitas',-8,5),(3975,204,'Mission Hills',-8,5),(3976,204,'Mission Viejo',-8,5),(3977,204,'Modesto',-8,5),(3978,204,'Mojave',-8,5),(3979,204,'Monrovia',-8,5),(3980,204,'Montebello',-8,5),(3981,204,'Monterey',-8,5),(3982,204,'Monterey Park',-8,5),(3983,204,'Moreno Valley',-8,5),(3984,204,'Morgan Hill',-8,5),(3985,204,'Morro Bay',-8,5),(3986,204,'Mount Shasta',-8,5),(3987,204,'Mountain View',-8,5),(3988,204,'Napa',-8,5),(3989,204,'National City',-8,5),(3990,204,'Needles',-8,5),(3991,204,'Nevada City',-8,5),(3992,204,'Newark',-8,5),(3993,204,'Newbury Park',-8,5),(3994,204,'Newport Beach',-8,5),(3995,204,'Newport Coast',-8,5),(3996,204,'Norco',-8,5),(3997,204,'North Highlands',-8,5),(3998,204,'North Hollywood',-8,5),(3999,204,'Norwalk',-8,5),(4000,204,'Novato',-8,5),(4001,204,'Oakdale',-8,5),(4002,204,'Oakhurst',-8,5),(4003,204,'Oakland',-8,5),(4004,204,'Oceanside',-8,5),(4005,204,'Ojai',-8,5),(4006,204,'Ontario',-8,5),(4007,204,'Orange',-8,5),(4008,204,'Oroville',-8,5),(4009,204,'Oxnard',-8,5),(4010,204,'Pacific Grove',-8,5),(4011,204,'Pacifica',-8,5),(4012,204,'Palm Desert',-8,5),(4013,204,'Palm Springs',-8,5),(4014,204,'Palmdale',-8,5),(4015,204,'Palo Alto',-8,5),(4016,204,'Paradise',-8,5),(4017,204,'Pasadena',-8,5),(4018,204,'Paso Robles',-8,5),(4019,204,'Patterson',-8,5),(4020,204,'Perris',-8,5),(4021,204,'Petaluma',-8,5),(4022,204,'Phelan',-8,5),(4023,204,'Pico Rivera',-8,5),(4024,204,'Pinole',-8,5),(4025,204,'Pismo Beach',-8,5),(4026,204,'Placentia',-8,5),(4027,204,'Placerville',-8,5),(4028,204,'Playa del Rey',-8,5),(4029,204,'Pleasant Hill',-8,5),(4030,204,'Pleasanton',-8,5),(4031,204,'Pollock Pines',-8,5),(4032,204,'Pomona',-8,5),(4033,204,'Port Hueneme',-8,5),(4034,204,'Porterville',-8,5),(4035,204,'Poway',-8,5),(4036,204,'Rancho Bernardo',-8,5),(4037,204,'Rancho Cordova',-8,5),(4038,204,'Rancho Cucamonga',-8,5),(4039,204,'Rancho Dominguez',-8,5),(4040,204,'Rancho Mirage',-8,5),(4041,204,'Rancho Santa Fe',-8,5),(4042,204,'Red Bluff',-8,5),(4043,204,'Redding',-8,5),(4044,204,'Redlands',-8,5),(4045,204,'Redondo Beach',-8,5),(4046,204,'Redwood City',-8,5),(4047,204,'Rialto',-8,5),(4048,204,'Richmond',-8,5),(4049,204,'Ridgecrest',-8,5),(4050,204,'Riverside',-8,5),(4051,204,'Rocklin',-8,5),(4052,204,'Rohnert Park',-8,5),(4053,204,'Rosemead',-8,5),(4054,204,'Roseville',-8,5),(4055,204,'Rowland Heights',-8,5),(4056,204,'Rutherford',-8,5),(4057,204,'Sacramento*',-8,5),(4058,204,'Salida',-8,5),(4059,204,'Salinas',-8,5),(4060,204,'San Bernardino',-8,5),(4061,204,'San Bruno',-8,5),(4062,204,'San Carlos',-8,5),(4063,204,'San Clemente',-8,5),(4064,204,'San Diego',-8,5),(4065,204,'San Dimas',-8,5),(4066,204,'San Francisco',-8,5),(4067,204,'San Jose',-8,5),(4068,204,'San Juan Capistrano',-8,5),(4069,204,'San Leandro',-8,5),(4070,204,'San Luis Obispo',-8,5),(4071,204,'San Marcos',-8,5),(4072,204,'San Mateo',-8,5),(4073,204,'San Pablo',-8,5),(4074,204,'San Pedro',-8,5),(4075,204,'San Rafael',-8,5),(4076,204,'San Ramon',-8,5),(4077,204,'San Simeon',-8,5),(4078,204,'San Ysidro',-8,5),(4079,204,'Santa Ana',-8,5),(4080,204,'Santa Barbara',-8,5),(4081,204,'Santa Clara',-8,5),(4082,204,'Santa Clarita',-8,5),(4083,204,'Santa Cruz',-8,5),(4084,204,'Santa Fe Springs',-8,5),(4085,204,'Santa Maria',-8,5),(4086,204,'Santa Monica',-8,5),(4087,204,'Santa Nella',-8,5),(4088,204,'Santa Rosa',-8,5),(4089,204,'Santee',-8,5),(4090,204,'Saratoga',-8,5),(4091,204,'Sausalito',-8,5),(4092,204,'Scotts Valley',-8,5),(4093,204,'Seal Beach',-8,5),(4094,204,'Seaside',-8,5),(4095,204,'Sebastopol',-8,5),(4096,204,'Selma',-8,5),(4097,204,'Sequoia National Park',-8,5),(4098,204,'Shoshone',-8,5),(4099,204,'Simi Valley',-8,5),(4100,204,'Solana Beach',-8,5),(4101,204,'Soledad',-8,5),(4102,204,'Solvang',-8,5),(4103,204,'Sonoma',-8,5),(4104,204,'Sonora',-8,5),(4105,204,'South El Monte',-8,5),(4106,204,'South Lake Tahoe',-8,5),(4107,204,'Southgate',-8,5),(4108,204,'St. Helena',-8,5),(4109,204,'Stanton',-8,5),(4110,204,'Stevenson Ranch',-8,5),(4111,204,'Stinson Beach',-8,5),(4112,204,'Stockton',-8,5),(4113,204,'Suisun City',-8,5),(4114,204,'Summerland',-8,5),(4115,204,'Sun City',-8,5),(4116,204,'Sunnyvale',-8,5),(4117,204,'Sunset Beach',-8,5),(4118,204,'Susanville',-8,5),(4119,204,'Sylmar',-8,5),(4120,204,'Tahoe City',-8,5),(4121,204,'Tahoe Vista',-8,5),(4122,204,'Tehachapi',-8,5),(4123,204,'Temecula',-8,5),(4124,204,'Thousand Oaks',-8,5),(4125,204,'Thousand Palms',-8,5),(4126,204,'Three Rivers',-8,5),(4127,204,'Tiburon',-8,5),(4128,204,'Torrance',-8,5),(4129,204,'Tracy',-8,5),(4130,204,'Truckee',-8,5),(4131,204,'Tulare',-8,5),(4132,204,'Turlock',-8,5),(4133,204,'Twentynine Palms',-8,5),(4134,204,'Ukiah',-8,5),(4135,204,'Union City',-8,5),(4136,204,'Upland',-8,5),(4137,204,'Vacaville',-8,5),(4138,204,'Valencia',-8,5),(4139,204,'suburb of Santa Clarita',-8,5),(4140,204,'Vallejo',-8,5),(4141,204,'Venice',-8,5),(4142,204,'Ventura',-8,5),(4143,204,'Victorville',-8,5),(4144,204,'Visalia',-8,5),(4145,204,'Vista',-8,5),(4146,204,'Walnut',-8,5),(4147,204,'Walnut Creek',-8,5),(4148,204,'Watsonville',-8,5),(4149,204,'Weaverville',-8,5),(4150,204,'Weed',-8,5),(4151,204,'West Covina',-8,5),(4152,204,'West Hollywood',-8,5),(4153,204,'West Sacramento',-8,5),(4154,204,'Westlake Village',-8,5),(4155,204,'Westley',-8,5),(4156,204,'Westminster',-8,5),(4157,204,'Whittier',-8,5),(4158,204,'Williams',-8,5),(4159,204,'Willits',-8,5),(4160,204,'Willows',-8,5),(4161,204,'Wilmington',-8,5),(4162,204,'Woodland',-8,5),(4163,204,'Yermo',-8,5),(4164,204,'Yorba Linda',-8,5),(4165,204,'Yountville',-8,5),(4166,204,'Yreka',-8,5),(4167,204,'Yuba City',-8,5),(4168,204,'Yucca Valley',-8,5),(4169,204,'Alamosa',-7,6),(4170,204,'Aspen',-7,6),(4171,204,'Aurora',-7,6),(4172,204,'Avon',-7,6),(4173,204,'Basalt',-7,6),(4174,204,'Beaver Creek',-7,6),(4175,204,'Boulder',-7,6),(4176,204,'Breckenridge',-7,6),(4177,204,'Brighton',-7,6),(4178,204,'Broomfield',-7,6),(4179,204,'Brush',-7,6),(4180,204,'Buena Vista',-7,6),(4181,204,'Burlington',-7,6),(4182,204,'Canon City',-7,6),(4183,204,'Carbondale',-7,6),(4184,204,'Castle Rock',-7,6),(4185,204,'Cedaredge',-7,6),(4186,204,'Clifton',-7,6),(4187,204,'Colorado Springs',-7,6),(4188,204,'Copper Mountain',-7,6),(4189,204,'Cortez',-7,6),(4190,204,'Craig',-7,6),(4191,204,'Delta',-7,6),(4192,204,'Denver*',-7,6),(4193,204,'Dillon',-7,6),(4194,204,'Durango',-7,6),(4195,204,'Eagle',-7,6),(4196,204,'Edwards',-7,6),(4197,204,'Empire',-7,6),(4198,204,'Englewood',-7,6),(4199,204,'Estes Park',-7,6),(4200,204,'Evans',-7,6),(4201,204,'Evergreen',-7,6),(4202,204,'Fort Collins',-7,6),(4203,204,'Fort Morgan',-7,6),(4204,204,'Fountain',-7,6),(4205,204,'Fraser',-7,6),(4206,204,'Frisco',-7,6),(4207,204,'Fruita',-7,6),(4208,204,'Georgetown',-7,6),(4209,204,'Glendale',-7,6),(4210,204,'Glenwood Springs',-7,6),(4211,204,'Golden',-7,6),(4212,204,'Grand Junction',-7,6),(4213,204,'Grand Lake',-7,6),(4214,204,'Greeley',-7,6),(4215,204,'Greenwood Village',-7,6),(4216,204,'Gunnison',-7,6),(4217,204,'Henderson',-7,6),(4218,204,'Highlands Ranch',-7,6),(4219,204,'Keystone',-7,6),(4220,204,'La Junta',-7,6),(4221,204,'Lakewood',-7,6),(4222,204,'Lamar',-7,6),(4223,204,'Las Animas',-7,6),(4224,204,'Leadville',-7,6),(4225,204,'Limon',-7,6),(4226,204,'Littleton',-7,6),(4227,204,'Longmont',-7,6),(4228,204,'Louisville',-7,6),(4229,204,'Loveland',-7,6),(4230,204,'Manitou Springs',-7,6),(4231,204,'Monte Vista',-7,6),(4232,204,'Montrose',-7,6),(4233,204,'Mount Crested Butte',-7,6),(4234,204,'Nederland',-7,6),(4235,204,'Northglenn',-7,6),(4236,204,'Ouray',-7,6),(4237,204,'Pagosa Springs',-7,6),(4238,204,'Parachute',-7,6),(4239,204,'Pueblo',-7,6),(4240,204,'Pueblo West',-7,6),(4241,204,'Ronan',-7,6),(4242,204,'Salida',-7,6),(4243,204,'Silvercreek',-7,6),(4244,204,'Silverthorne',-7,6),(4245,204,'Snowmass Village',-7,6),(4246,204,'South Fork',-7,6),(4247,204,'Steamboat Springs',-7,6),(4248,204,'Sterling',-7,6),(4249,204,'Stratton',-7,6),(4250,204,'Telluride',-7,6),(4251,204,'Thornton',-7,6),(4252,204,'Trinidad',-7,6),(4253,204,'Uncasville',-7,6),(4254,204,'Vail',-7,6),(4255,204,'Walsenburg',-7,6),(4256,204,'Westminster',-7,6),(4257,204,'Wheat Ridge',-7,6),(4258,204,'Windsor',-7,6),(4259,204,'Winter Park',-7,6),(4260,204,'Woodland Park',-7,6),(4261,204,'Yampa',-7,6),(4262,204,'Avon',-5,7),(4263,204,'Berlin',-5,7),(4264,204,'Bethel',-5,7),(4265,204,'Branford',-5,7),(4266,204,'Bridgeport',-5,7),(4267,204,'Cos Cob',-5,7),(4268,204,'Cromwell',-5,7),(4269,204,'Danbury',-5,7),(4270,204,'Danielson',-5,7),(4271,204,'Darien',-5,7),(4272,204,'Dayville',-5,7),(4273,204,'East Hartford',-5,7),(4274,204,'East Haven',-5,7),(4275,204,'East Windsor',-5,7),(4276,204,'Enfield',-5,7),(4277,204,'Farmington',-5,7),(4278,204,'Greenwich',-5,7),(4279,204,'Groton',-5,7),(4280,204,'Hamden',-5,7),(4281,204,'Hartford*',-5,7),(4282,204,'Madison',-5,7),(4283,204,'Manchester',-5,7),(4284,204,'Mansfield Center',-5,7),(4285,204,'Meriden',-5,7),(4286,204,'Milford',-5,7),(4287,204,'Milldale',-5,7),(4288,204,'Mystic',-5,7),(4289,204,'New Canaan',-5,7),(4290,204,'New Haven',-5,7),(4291,204,'New London',-5,7),(4292,204,'Niantic',-5,7),(4293,204,'North Haven',-5,7),(4294,204,'North Stonington',-5,7),(4295,204,'Norwalk',-5,7),(4296,204,'Norwich',-5,7),(4297,204,'Old Greenwich',-5,7),(4298,204,'Old Saybrook',-5,7),(4299,204,'Orange',-5,7),(4300,204,'Plainville',-5,7),(4301,204,'Riverside',-5,7),(4302,204,'Rocky Hill',-5,7),(4303,204,'Shelton',-5,7),(4304,204,'Simsbury',-5,7),(4305,204,'South Windsor',-5,7),(4306,204,'Southbury',-5,7),(4307,204,'Southington',-5,7),(4308,204,'Stamford',-5,7),(4309,204,'Storrs',-5,7),(4310,204,'Stratford',-5,7),(4311,204,'Torrington',-5,7),(4312,204,'Trumbull',-5,7),(4313,204,'Uncasville',-5,7),(4314,204,'Vernon',-5,7),(4315,204,'Wallingford',-5,7),(4316,204,'Waterbury',-5,7),(4317,204,'Waterford',-5,7),(4318,204,'West Haven',-5,7),(4319,204,'Westport',-5,7),(4320,204,'Wethersfield',-5,7),(4321,204,'Willington',-5,7),(4322,204,'Windsor',-5,7),(4323,204,'Windsor Locks',-5,7),(4324,204,'Bear',-5,8),(4325,204,'Bethany Beach',-5,8),(4326,204,'Dewey Beach',-5,8),(4327,204,'Dover*',-5,8),(4328,204,'Fenwick Island',-5,8),(4329,204,'Georgetown',-5,8),(4330,204,'Harrington',-5,8),(4331,204,'Lewes',-5,8),(4332,204,'Milford',-5,8),(4333,204,'Montchanin',-5,8),(4334,204,'New Castle',-5,8),(4335,204,'Newark',-5,8),(4336,204,'Rehoboth Beach',-5,8),(4337,204,'Seaford',-5,8),(4338,204,'Wilmington',-5,8),(4339,204,'Alachua',-5,9),(4340,204,'Altamonte Springs',-5,9),(4341,204,'Amelia Island',-5,9),(4342,204,'Apalachicola',-5,9),(4343,204,'Apollo Beach',-5,9),(4344,204,'Apopka',-5,9),(4345,204,'Arcadia',-5,9),(4346,204,'Atlantic Beach',-5,9),(4347,204,'Aventura',-5,9),(4348,204,'Avon Park',-5,9),(4349,204,'Bal Harbour',-5,9),(4350,204,'Baldwin',-5,9),(4351,204,'Bay Lake',-5,9),(4352,204,'Boca Raton',-5,9),(4353,204,'Bonita Springs',-5,9),(4354,204,'Boynton Beach',-5,9),(4355,204,'Bradenton',-5,9),(4356,204,'Bradenton Beach',-5,9),(4357,204,'Brandon',-5,9),(4358,204,'Brooksville',-5,9),(4359,204,'Bushnell',-5,9),(4360,204,'Cape Canaveral',-5,9),(4361,204,'Cape Coral',-5,9),(4362,204,'Captiva Island',-5,9),(4363,204,'Casselberry',-5,9),(4364,204,'Celebration',-5,9),(4365,204,'Charlotte Harbour',-5,9),(4366,204,'Chiefland',-5,9),(4367,204,'Chipley',-5,9),(4368,204,'Clearwater',-5,9),(4369,204,'Clearwater Beach',-5,9),(4370,204,'Clermont',-5,9),(4371,204,'Clewiston',-5,9),(4372,204,'Cocoa',-5,9),(4373,204,'Cocoa Beach',-5,9),(4374,204,'Coconut Grove',-5,9),(4375,204,'Coral Gables',-5,9),(4376,204,'Coral Springs',-5,9),(4377,204,'Crestview',-5,9),(4378,204,'Crystal River',-5,9),(4379,204,'Cutler Ridge',-5,9),(4380,204,'Cypress Gardens',-5,9),(4381,204,'Dania Beach',-5,9),(4382,204,'Davenport',-5,9),(4383,204,'Davie',-5,9),(4384,204,'Daytona Beach',-5,9),(4385,204,'Daytona Beach Shores',-5,9),(4386,204,'Debary',-5,9),(4387,204,'Deerfield Beach',-5,9),(4388,204,'Defuniak Springs',-5,9),(4389,204,'Deland',-5,9),(4390,204,'Delray Beach',-5,9),(4391,204,'Deltona',-5,9),(4392,204,'Destin Beach',-5,9),(4393,204,'Dundee',-5,9),(4394,204,'Dunedin',-5,9),(4395,204,'East Palatka',-5,9),(4396,204,'Elkton',-5,9),(4397,204,'Ellenton',-5,9),(4398,204,'Englewood',-5,9),(4399,204,'Fern Park',-5,9),(4400,204,'Fernandina Beach',-5,9),(4401,204,'Fisher Island',-5,9),(4402,204,'Florida City',-5,9),(4403,204,'Fort Lauderdale',-5,9),(4404,204,'Fort Myers',-5,9),(4405,204,'Fort Myers Beach',-5,9),(4406,204,'Fort Pierce',-5,9),(4407,204,'Fort Walton Beach',-5,9),(4408,204,'Gainesville',-5,9),(4409,204,'Gulf Breeze',-5,9),(4410,204,'Haines City',-5,9),(4411,204,'Hallandale',-5,9),(4412,204,'Heathrow',-5,9),(4413,204,'Hernando',-5,9),(4414,204,'Hialeah',-5,9),(4415,204,'Highland Beach',-5,9),(4416,204,'Hillsboro Beach',-5,9),(4417,204,'Hollywood',-5,9),(4418,204,'Hollywood Beach',-5,9),(4419,204,'Homestead',-5,9),(4420,204,'Homosassa',-5,9),(4421,204,'Huntsville',-5,9),(4422,204,'Hutchinson Island',-5,9),(4423,204,'Indialantic',-5,9),(4424,204,'Indian Rocks Beach',-5,9),(4425,204,'Indian Shores',-5,9),(4426,204,'Islamorada',-5,9),(4427,204,'Jacksonville',-5,9),(4428,204,'Jacksonville Beach',-5,9),(4429,204,'Jasper',-5,9),(4430,204,'Jensen Beach',-5,9),(4431,204,'Juno Beach',-5,9),(4432,204,'Jupiter',-5,9),(4433,204,'Key Biscayne',-5,9),(4434,204,'Key Largo',-5,9),(4435,204,'Key West',-5,9),(4436,204,'Kissimmee',-5,9),(4437,204,'Lake City',-5,9),(4438,204,'Lake Mary',-5,9),(4439,204,'Lake Placid',-5,9),(4440,204,'Lake Wales',-5,9),(4441,204,'Lake Worth',-5,9),(4442,204,'Lakeland',-5,9),(4443,204,'Lamont',-5,9),(4444,204,'Lantana',-5,9),(4445,204,'Largo',-5,9),(4446,204,'Lauderdale by the Sea',-5,9),(4447,204,'Leesburg',-5,9),(4448,204,'Live Oak',-5,9),(4449,204,'Long Key',-5,9),(4450,204,'Longboat Key',-5,9),(4451,204,'Longwood',-5,9),(4452,204,'MacClenny',-5,9),(4453,204,'Madeira Beach',-5,9),(4454,204,'Madison',-5,9),(4455,204,'Maitland',-5,9),(4456,204,'Manalapan',-5,9),(4457,204,'Marathon',-5,9),(4458,204,'Marco Island',-5,9),(4459,204,'Marianna',-5,9),(4460,204,'Mary Esther',-5,9),(4461,204,'Melbourne',-5,9),(4462,204,'Merritt Island',-5,9),(4463,204,'Miami',-5,9),(4464,204,'Miami Beach',-5,9),(4465,204,'Miami Lakes',-5,9),(4466,204,'Miami Springs',-5,9),(4467,204,'Micanopy',-5,9),(4468,204,'Midway',-5,9),(4469,204,'Milton',-5,9),(4470,204,'Miramar',-5,9),(4471,204,'Mossy Head',-5,9),(4472,204,'Mount Dora',-5,9),(4473,204,'Mulberry',-5,9),(4474,204,'Naples',-5,9),(4475,204,'Navarre',-5,9),(4476,204,'Navarre Beach',-5,9),(4477,204,'Neptune Beach',-5,9),(4478,204,'New Port Richey',-5,9),(4479,204,'New Smyrna Beach',-5,9),(4480,204,'Niceville',-5,9),(4481,204,'North Bay Village',-5,9),(4482,204,'North Fort Myers',-5,9),(4483,204,'North Miami',-5,9),(4484,204,'North Miami Beach',-5,9),(4485,204,'North Palm Beach',-5,9),(4486,204,'North Redington Beach',-5,9),(4487,204,'North Seffner',-5,9),(4488,204,'Oakland Park',-5,9),(4489,204,'Ocala',-5,9),(4490,204,'Ocoee',-5,9),(4491,204,'Okeechobee',-5,9),(4492,204,'Oldsmar',-5,9),(4493,204,'Orange City',-5,9),(4494,204,'Orange Park',-5,9),(4495,204,'Orlando',-5,9),(4496,204,'Ormond Beach',-5,9),(4497,204,'Osprey',-5,9),(4498,204,'Palatka',-5,9),(4499,204,'Palm Bay',-5,9),(4500,204,'Palm Beach',-5,9),(4501,204,'Palm Beach Gardens',-5,9),(4502,204,'Palm Beach Shores',-5,9),(4503,204,'Palm Coast',-5,9),(4504,204,'Palm Harbor',-5,9),(4505,204,'Panama City',-5,9),(4506,204,'Panama City Beach',-5,9),(4507,204,'Pembroke Pines',-5,9),(4508,204,'Pensacola',-5,9),(4509,204,'Pensacola Beach',-5,9),(4510,204,'Perdido Key',-5,9),(4511,204,'Perry',-5,9),(4512,204,'Pinellas Park',-5,9),(4513,204,'Plant City',-5,9),(4514,204,'Plantation',-5,9),(4515,204,'Pompano Beach',-5,9),(4516,204,'Ponte Vedra Beach',-5,9),(4517,204,'Port Charlotte',-5,9),(4518,204,'Port Richey',-5,9),(4519,204,'Port St. Lucie',-5,9),(4520,204,'Punta Gorda',-5,9),(4521,204,'Quincy',-5,9),(4522,204,'Redington Beach',-5,9),(4523,204,'Riviera Beach',-5,9),(4524,204,'Ruskin',-5,9),(4525,204,'Safety Harbor',-5,9),(4526,204,'Sanford',-5,9),(4527,204,'Sanibel Island',-5,9),(4528,204,'Sarasota',-5,9),(4529,204,'Satellite Beach',-5,9),(4530,204,'Seaside',-5,9),(4531,204,'Sebastian',-5,9),(4532,204,'Sebring',-5,9),(4533,204,'Siesta Key',-5,9),(4534,204,'Silver Springs',-5,9),(4535,204,'Singer Island',-5,9),(4536,204,'Spring Hill',-5,9),(4537,204,'St. Augustine',-5,9),(4538,204,'St. Augustine Beach',-5,9),(4539,204,'St. Pete Beach',-5,9),(4540,204,'St. Petersburg',-5,9),(4541,204,'Starke',-5,9),(4542,204,'Stuart',-5,9),(4543,204,'Sugar Loaf Key',-5,9),(4544,204,'Sun City Center',-5,9),(4545,204,'Sunny Isles',-5,9),(4546,204,'Sunrise',-5,9),(4547,204,'Tallahassee*',-5,9),(4548,204,'Tamarac',-5,9),(4549,204,'Tampa',-5,9),(4550,204,'Tarpon Springs',-5,9),(4551,204,'Temple Terrace',-5,9),(4552,204,'The Villages',-5,9),(4553,204,'Titusville',-5,9),(4554,204,'Treasure Island',-5,9),(4555,204,'Venice',-5,9),(4556,204,'Vero Beach',-5,9),(4557,204,'Vilano Beach',-5,9),(4558,204,'Villages - The',-5,9),(4559,204,'Weeki Wachee',-5,9),(4560,204,'Wesley Chapel',-5,9),(4561,204,'West Melbourne',-5,9),(4562,204,'West Palm Beach',-5,9),(4563,204,'Weston',-5,9),(4564,204,'Wildwood',-5,9),(4565,204,'Winter Garden',-5,9),(4566,204,'Winter Haven',-5,9),(4567,204,'Winter Park',-5,9),(4568,204,'Yulee',-5,9),(4569,204,'Zephyrhills',-5,9),(4570,204,'Acworth',-5,10),(4571,204,'Adairsville',-5,10),(4572,204,'Adel',-5,10),(4573,204,'Albany',-5,10),(4574,204,'Alma',-5,10),(4575,204,'Alpharetta',-5,10),(4576,204,'Americus',-5,10),(4577,204,'Ashburn',-5,10),(4578,204,'Athens',-5,10),(4579,204,'Atlanta*',-5,10),(4580,204,'Augusta',-5,10),(4581,204,'Austell',-5,10),(4582,204,'Bainbridge',-5,10),(4583,204,'Barnesville',-5,10),(4584,204,'Baxley',-5,10),(4585,204,'Blairsville',-5,10),(4586,204,'Blakely',-5,10),(4587,204,'Blue Ridge',-5,10),(4588,204,'Braselton',-5,10),(4589,204,'Bremen',-5,10),(4590,204,'Brunswick',-5,10),(4591,204,'Buford',-5,10),(4592,204,'Byron',-5,10),(4593,204,'Cairo',-5,10),(4594,204,'Calhoun',-5,10),(4595,204,'Canton',-5,10),(4596,204,'Carrollton',-5,10),(4597,204,'Cartersville',-5,10),(4598,204,'Cedartown',-5,10),(4599,204,'Chamblee',-5,10),(4600,204,'Chatsworth',-5,10),(4601,204,'Chula',-5,10),(4602,204,'Claxton',-5,10),(4603,204,'Clayton',-5,10),(4604,204,'Cleveland',-5,10),(4605,204,'College Park',-5,10),(4606,204,'Columbus',-5,10),(4607,204,'Commerce',-5,10),(4608,204,'Conyers',-5,10),(4609,204,'Cordele',-5,10),(4610,204,'Cornelia',-5,10),(4611,204,'Covington',-5,10),(4612,204,'Cumming',-5,10),(4613,204,'Cuthbert',-5,10),(4614,204,'Dahlonega',-5,10),(4615,204,'Dalton',-5,10),(4616,204,'Darien',-5,10),(4617,204,'Dawson',-5,10),(4618,204,'Dawsonville',-5,10),(4619,204,'Decatur',-5,10),(4620,204,'Dillard',-5,10),(4621,204,'Donalsonville',-5,10),(4622,204,'Doraville',-5,10),(4623,204,'Douglas',-5,10),(4624,204,'Douglasville',-5,10),(4625,204,'Dublin',-5,10),(4626,204,'Duluth',-5,10),(4627,204,'East Dublin',-5,10),(4628,204,'East Point',-5,10),(4629,204,'Eastman',-5,10),(4630,204,'Elberton',-5,10),(4631,204,'Fayetteville',-5,10),(4632,204,'Fitzgerald',-5,10),(4633,204,'Folkston',-5,10),(4634,204,'Forest Park',-5,10),(4635,204,'Forsyth',-5,10),(4636,204,'Fort Benning',-5,10),(4637,204,'Fort Gillem',-5,10),(4638,204,'Fort Oglethorpe',-5,10),(4639,204,'Fort Stewart',-5,10),(4640,204,'Fort Valley',-5,10),(4641,204,'Gainesville',-5,10),(4642,204,'Garden City',-5,10),(4643,204,'Gray',-5,10),(4644,204,'Greensboro',-5,10),(4645,204,'Griffin',-5,10),(4646,204,'Grovetown',-5,10),(4647,204,'Hahira',-5,10),(4648,204,'Hampton',-5,10),(4649,204,'Hapeville',-5,10),(4650,204,'Hartwell',-5,10),(4651,204,'Hawkinsville',-5,10),(4652,204,'Hazlehurst',-5,10),(4653,204,'Helen',-5,10),(4654,204,'Hiawassee',-5,10),(4655,204,'Hinesville',-5,10),(4656,204,'Hiram',-5,10),(4657,204,'Hogansville',-5,10),(4658,204,'Jackson',-5,10),(4659,204,'Jefferson',-5,10),(4660,204,'Jeffersonville',-5,10),(4661,204,'Jekyll Island',-5,10),(4662,204,'Jesup',-5,10),(4663,204,'Jonesboro',-5,10),(4664,204,'Kennesaw',-5,10),(4665,204,'Kingsland',-5,10),(4666,204,'Lafayette',-5,10),(4667,204,'LaGrange',-5,10),(4668,204,'Lake Lanier Islands',-5,10),(4669,204,'Lake Park',-5,10),(4670,204,'Lavonia',-5,10),(4671,204,'Lawrenceville',-5,10),(4672,204,'Lenox',-5,10),(4673,204,'Lithia Springs',-5,10),(4674,204,'Lithonia',-5,10),(4675,204,'Locust Grove',-5,10),(4676,204,'Loganville',-5,10),(4677,204,'Macon',-5,10),(4678,204,'Madison',-5,10),(4679,204,'Manchester',-5,10),(4680,204,'Marietta',-5,10),(4681,204,'McDonough',-5,10),(4682,204,'Metter',-5,10),(4683,204,'Milledgeville',-5,10),(4684,204,'Millen',-5,10),(4685,204,'Monroe',-5,10),(4686,204,'Montezuma',-5,10),(4687,204,'Morrow',-5,10),(4688,204,'Moultrie',-5,10),(4689,204,'Newnan',-5,10),(4690,204,'Norcross',-5,10),(4691,204,'Oakwood',-5,10),(4692,204,'Peachtree City',-5,10),(4693,204,'Pelham',-5,10),(4694,204,'Perry',-5,10),(4695,204,'Pine Mountain',-5,10),(4696,204,'Pooler',-5,10),(4697,204,'Port Wentworth',-5,10),(4698,204,'Register',-5,10),(4699,204,'Richland',-5,10),(4700,204,'Richmond Hill',-5,10),(4701,204,'Rincon',-5,10),(4702,204,'Ringgold',-5,10),(4703,204,'Riverdale',-5,10),(4704,204,'Rockmart',-5,10),(4705,204,'Rome',-5,10),(4706,204,'Roswell',-5,10),(4707,204,'Royston',-5,10),(4708,204,'Sandersville',-5,10),(4709,204,'Savannah',-5,10),(4710,204,'Savannah Beach',-5,10),(4711,204,'Smyrna',-5,10),(4712,204,'St. Marys',-5,10),(4713,204,'St. Simons Island',-5,10),(4714,204,'Statesboro',-5,10),(4715,204,'Stockbridge',-5,10),(4716,204,'Stone Mountain',-5,10),(4717,204,'Suwanee',-5,10),(4718,204,'Swainsboro',-5,10),(4719,204,'Sylvania',-5,10),(4720,204,'Sylvester',-5,10),(4721,204,'Tallapoosa',-5,10),(4722,204,'Thomaston',-5,10),(4723,204,'Thomasville',-5,10),(4724,204,'Thomson',-5,10),(4725,204,'Tifton',-5,10),(4726,204,'Toccoa',-5,10),(4727,204,'Trenton',-5,10),(4728,204,'Tucker',-5,10),(4729,204,'Tybee Island',-5,10),(4730,204,'Unadilla',-5,10),(4731,204,'Union City',-5,10),(4732,204,'Valdosta',-5,10),(4733,204,'Vidalia',-5,10),(4734,204,'Vienna',-5,10),(4735,204,'Villa Rica',-5,10),(4736,204,'Warm Springs',-5,10),(4737,204,'Warner Robins',-5,10),(4738,204,'Washington',-5,10),(4739,204,'Waycross',-5,10),(4740,204,'Waynesboro',-5,10),(4741,204,'West Point',-5,10),(4742,204,'White',-5,10),(4743,204,'Winder',-5,10),(4744,204,'Woodstock',-5,10),(4745,204,'Aiea',-9,11),(4746,204,'Hana',-9,11),(4747,204,'Hilo',-9,11),(4748,204,'Honolulu*',-9,11),(4749,204,'Kaanapali',-9,11),(4750,204,'Kahana',-9,11),(4751,204,'Kahuku',-9,11),(4752,204,'Kahului',-9,11),(4753,204,'Kailua-Kona',-9,11),(4754,204,'Kamuela',-9,11),(4755,204,'Kapaa',-9,11),(4756,204,'Kapalua',-9,11),(4757,204,'Kapolei',-9,11),(4758,204,'Kaunakakai',-9,11),(4759,204,'Kihei',-9,11),(4760,204,'Kohala Coast',-9,11),(4761,204,'Koloa',-9,11),(4762,204,'Kona',-9,11),(4763,204,'Lahaina',-9,11),(4764,204,'Lanai City',-9,11),(4765,204,'Lihue',-9,11),(4766,204,'Maalaea',-9,11),(4767,204,'Mauna Loa',-9,11),(4768,204,'Napili',-9,11),(4769,204,'Poipu Beach',-9,11),(4770,204,'Princeville',-9,11),(4771,204,'Volcano Village',-9,11),(4772,204,'Waikoloa',-9,11),(4773,204,'Wailea',-9,11),(4774,204,'Wailua',-9,11),(4775,204,'Waimea',-9,11),(4776,204,'Kauai',-9,11),(4777,204,'Lanai',-9,11),(4778,204,'Maui',-9,11),(4779,204,'Molokai',-9,11),(4780,204,'Oahu',-9,11),(4781,204,'Ammon',-7,12),(4782,204,'Ashton',-7,12),(4783,204,'Blackfoot',-7,12),(4784,204,'Boise*',-7,12),(4785,204,'Bonners Ferry',-7,12),(4786,204,'Burley',-7,12),(4787,204,'Caldwell',-7,12),(4788,204,'Coeur d\'Alene',-7,12),(4789,204,'Davenport',-7,12),(4790,204,'Driggs',-7,12),(4791,204,'Idaho Falls',-7,12),(4792,204,'Jerome',-7,12),(4793,204,'Ketchum',-7,12),(4794,204,'Lewiston',-7,12),(4795,204,'McCall',-7,12),(4796,204,'Meridian',-7,12),(4797,204,'Montpelier',-7,12),(4798,204,'Moscow',-7,12),(4799,204,'Mountain Home',-7,12),(4800,204,'Nampa',-7,12),(4801,204,'Pocatello',-7,12),(4802,204,'Post Falls',-7,12),(4803,204,'Rexburg',-7,12),(4804,204,'Rigby',-7,12),(4805,204,'Riggins',-7,12),(4806,204,'Sandpoint',-7,12),(4807,204,'St. Anthony',-7,12),(4808,204,'Twin Falls',-7,12),(4809,204,'Wallace',-7,12),(4810,204,'White Bird',-7,12),(4811,204,'Addison',-6,13),(4812,204,'Algonquin',-6,13),(4813,204,'Alsip',-6,13),(4814,204,'Altamont',-6,13),(4815,204,'Alton',-6,13),(4816,204,'Anna',-6,13),(4817,204,'Antioch',-6,13),(4818,204,'Arcola',-6,13),(4819,204,'Arlington Heights',-6,13),(4820,204,'Aurora',-6,13),(4821,204,'Bannockburn',-6,13),(4822,204,'Barrington',-6,13),(4823,204,'Beardstown',-6,13),(4824,204,'Bedford Park',-6,13),(4825,204,'Belleville',-6,13),(4826,204,'Benton',-6,13),(4827,204,'Bloomingdale',-6,13),(4828,204,'Bloomington',-6,13),(4829,204,'Bolingbrook',-6,13),(4830,204,'Bourbonnais',-6,13),(4831,204,'Bradley',-6,13),(4832,204,'Bridgeview',-6,13),(4833,204,'Buffalo Grove',-6,13),(4834,204,'Burbank',-6,13),(4835,204,'Burr Ridge',-6,13),(4836,204,'Cahokia',-6,13),(4837,204,'Cairo',-6,13),(4838,204,'Calumet City',-6,13),(4839,204,'Calumet Park',-6,13),(4840,204,'Carbondale',-6,13),(4841,204,'Carlinville',-6,13),(4842,204,'Carlyle',-6,13),(4843,204,'Carol Stream',-6,13),(4844,204,'Casey',-6,13),(4845,204,'Caseyville',-6,13),(4846,204,'Champaign',-6,13),(4847,204,'Charleston',-6,13),(4848,204,'Chenoa',-6,13),(4849,204,'Chester',-6,13),(4850,204,'Chicago',-6,13),(4851,204,'Chillicothe',-6,13),(4852,204,'Collinsville',-6,13),(4853,204,'Countryside',-6,13),(4854,204,'Crestwood',-6,13),(4855,204,'Crystal Lake',-6,13),(4856,204,'Danville',-6,13),(4857,204,'Darien',-6,13),(4858,204,'Decatur',-6,13),(4859,204,'Deerfield',-6,13),(4860,204,'DeKalb',-6,13),(4861,204,'Des Plaines',-6,13),(4862,204,'Dix',-6,13),(4863,204,'Dixon',-6,13),(4864,204,'Downers Grove',-6,13),(4865,204,'Du Quoin',-6,13),(4866,204,'East Hazel Crest',-6,13),(4867,204,'East Moline',-6,13),(4868,204,'East Peoria',-6,13),(4869,204,'East St. Louis',-6,13),(4870,204,'Edwardsville',-6,13),(4871,204,'Effingham',-6,13),(4872,204,'El Paso',-6,13),(4873,204,'Elgin',-6,13),(4874,204,'Elk Grove Village',-6,13),(4875,204,'Elmhurst',-6,13),(4876,204,'Evanston',-6,13),(4877,204,'Fairview Heights',-6,13),(4878,204,'Findlay',-6,13),(4879,204,'Flora',-6,13),(4880,204,'Forsyth',-6,13),(4881,204,'Franklin Park',-6,13),(4882,204,'Freeport',-6,13),(4883,204,'Galena',-6,13),(4884,204,'Galesburg',-6,13),(4885,204,'Geneseo',-6,13),(4886,204,'Geneva',-6,13),(4887,204,'Glendale Heights',-6,13),(4888,204,'Glenview',-6,13),(4889,204,'Grayville',-6,13),(4890,204,'Greenville',-6,13),(4891,204,'Gurnee',-6,13),(4892,204,'Hanover Park',-6,13),(4893,204,'Harrisburg',-6,13),(4894,204,'Harvard',-6,13),(4895,204,'Harvey',-6,13),(4896,204,'Highland',-6,13),(4897,204,'Highland Park',-6,13),(4898,204,'Hillside',-6,13),(4899,204,'Hoffman Estates',-6,13),(4900,204,'Homewood',-6,13),(4901,204,'Itasca',-6,13),(4902,204,'Jacksonville',-6,13),(4903,204,'Jerseyville',-6,13),(4904,204,'Joliet',-6,13),(4905,204,'Kankakee',-6,13),(4906,204,'Lake Bluff',-6,13),(4907,204,'Lansing',-6,13),(4908,204,'Lebanon',-6,13),(4909,204,'LeRoy',-6,13),(4910,204,'Libertyville',-6,13),(4911,204,'Lincoln',-6,13),(4912,204,'Lincolnshire',-6,13),(4913,204,'Lincolnwood',-6,13),(4914,204,'Lisle',-6,13),(4915,204,'Litchfield',-6,13),(4916,204,'Lombard',-6,13),(4917,204,'Macomb',-6,13),(4918,204,'Manteno',-6,13),(4919,204,'Marion',-6,13),(4920,204,'Markham',-6,13),(4921,204,'Maryville',-6,13),(4922,204,'Matteson',-6,13),(4923,204,'Mattoon',-6,13),(4924,204,'McHenry',-6,13),(4925,204,'McLean',-6,13),(4926,204,'Melrose Park',-6,13),(4927,204,'Mendota',-6,13),(4928,204,'Metropolis',-6,13),(4929,204,'Mokena',-6,13),(4930,204,'Moline',-6,13),(4931,204,'Monee',-6,13),(4932,204,'Monmouth',-6,13),(4933,204,'Monticello',-6,13),(4934,204,'Morris',-6,13),(4935,204,'Morton',-6,13),(4936,204,'Mount Carmel',-6,13),(4937,204,'Mount Prospect',-6,13),(4938,204,'Mount Vernon',-6,13),(4939,204,'Mundelein',-6,13),(4940,204,'Naperville',-6,13),(4941,204,'Nashville',-6,13),(4942,204,'Niles',-6,13),(4943,204,'Normal',-6,13),(4944,204,'North Chicago',-6,13),(4945,204,'Northbrook',-6,13),(4946,204,'Northlake',-6,13),(4947,204,'Oak Brook',-6,13),(4948,204,'Oak Forest',-6,13),(4949,204,'Oak Lawn',-6,13),(4950,204,'Oak Park',-6,13),(4951,204,'Oakbrook Terrace',-6,13),(4952,204,'O\'Fallon',-6,13),(4953,204,'Oglesby',-6,13),(4954,204,'Orland Park',-6,13),(4955,204,'Oswego',-6,13),(4956,204,'Ottawa',-6,13),(4957,204,'Palatine',-6,13),(4958,204,'Pekin',-6,13),(4959,204,'Peoria',-6,13),(4960,204,'Peru',-6,13),(4961,204,'Pontiac',-6,13),(4962,204,'Pontoon Beach',-6,13),(4963,204,'Prospect Heights',-6,13),(4964,204,'Quincy',-6,13),(4965,204,'Rantoul',-6,13),(4966,204,'Richmond',-6,13),(4967,204,'River Grove',-6,13),(4968,204,'Riverwoods',-6,13),(4969,204,'Robinson',-6,13),(4970,204,'Rochelle',-6,13),(4971,204,'Rock Falls',-6,13),(4972,204,'Rock Island',-6,13),(4973,204,'Rockford',-6,13),(4974,204,'Rolling Meadows',-6,13),(4975,204,'Romeoville',-6,13),(4976,204,'Rosemont',-6,13),(4977,204,'Salem',-6,13),(4978,204,'Savanna',-6,13),(4979,204,'Savoy',-6,13),(4980,204,'Schaumburg',-6,13),(4981,204,'Schiller Park',-6,13),(4982,204,'Sheffield',-6,13),(4983,204,'Skokie',-6,13),(4984,204,'South Beliot',-6,13),(4985,204,'South Holland',-6,13),(4986,204,'South Jacksonville',-6,13),(4987,204,'Sparta',-6,13),(4988,204,'Springfield*',-6,13),(4989,204,'St. Charles',-6,13),(4990,204,'Staunton',-6,13),(4991,204,'Sycamore',-6,13),(4992,204,'Taylorville',-6,13),(4993,204,'Thomson',-6,13),(4994,204,'Tinley Park',-6,13),(4995,204,'Troy',-6,13),(4996,204,'Tuscola',-6,13),(4997,204,'Ullin',-6,13),(4998,204,'Urbana',-6,13),(4999,204,'Vandalia',-6,13),(5000,204,'Vernon Hills',-6,13),(5001,204,'Vienna',-6,13),(5002,204,'Wadsworth',-6,13),(5003,204,'Warrenville',-6,13),(5004,204,'Waukegan',-6,13),(5005,204,'Wenona',-6,13),(5006,204,'West Dundee',-6,13),(5007,204,'Westchester',-6,13),(5008,204,'Westmont',-6,13),(5009,204,'Wheeling',-6,13),(5010,204,'Willowbrook',-6,13),(5011,204,'Wood Dale',-6,13),(5012,204,'Woodstock',-6,13),(5013,204,'Yorkville',-6,13),(5014,204,'Anderson',-5,14),(5015,204,'Angola',-5,14),(5016,204,'Auburn',-5,14),(5017,204,'Avon',-5,14),(5018,204,'Batesville',-5,14),(5019,204,'Bedford',-5,14),(5020,204,'Bloomington',-5,14),(5021,204,'Bluffton',-5,14),(5022,204,'Brazil',-5,14),(5023,204,'Brownsburg',-5,14),(5024,204,'Carmel',-5,14),(5025,204,'Castleton',-5,14),(5026,204,'Chesterton',-5,14),(5027,204,'Clarksville',-5,14),(5028,204,'Cloverdale',-5,14),(5029,204,'College Park',-5,14),(5030,204,'Columbia City',-5,14),(5031,204,'Columbus',-5,14),(5032,204,'Corydon',-5,14),(5033,204,'Crawfordsville',-5,14),(5034,204,'Dale',-5,14),(5035,204,'Decatur',-5,14),(5036,204,'Edinburgh',-5,14),(5037,204,'Elizabeth',-5,14),(5038,204,'Elkhart',-5,14),(5039,204,'Evansville',-5,14),(5040,204,'Fishers',-5,14),(5041,204,'Fort Wayne',-5,14),(5042,204,'Frankfort',-5,14),(5043,204,'Franklin',-5,14),(5044,204,'Fremont',-5,14),(5045,204,'French Lick',-5,14),(5046,204,'Gary',-5,14),(5047,204,'Goshen',-5,14),(5048,204,'Granger',-5,14),(5049,204,'Greenfield',-5,14),(5050,204,'Greensburg',-5,14),(5051,204,'Greenwood',-5,14),(5052,204,'Hammond',-5,14),(5053,204,'Haubstadt',-5,14),(5054,204,'Hebron',-5,14),(5055,204,'Hobart',-5,14),(5056,204,'Howe',-5,14),(5057,204,'Huntington',-5,14),(5058,204,'Indianapolis*',-5,14),(5059,204,'Jasper',-5,14),(5060,204,'Jeffersonville',-5,14),(5061,204,'Kendallville',-5,14),(5062,204,'Kentland',-5,14),(5063,204,'Knox',-5,14),(5064,204,'Kokomo',-5,14),(5065,204,'Lafayette',-5,14),(5066,204,'LaPorte',-5,14),(5067,204,'Lawrenceburg',-5,14),(5068,204,'Lebanon',-5,14),(5069,204,'Logansport',-5,14),(5070,204,'Madison',-5,14),(5071,204,'Marion',-5,14),(5072,204,'Markle',-5,14),(5073,204,'Martinsville',-5,14),(5074,204,'Merrillville',-5,14),(5075,204,'Michigan City',-5,14),(5076,204,'Mishawaka',-5,14),(5077,204,'Monticello',-5,14),(5078,204,'Mount Vernon',-5,14),(5079,204,'Muncie',-5,14),(5080,204,'Nappanee',-5,14),(5081,204,'Nashville',-5,14),(5082,204,'New Albany',-5,14),(5083,204,'New Castle',-5,14),(5084,204,'New Haven',-5,14),(5085,204,'Noblesville',-5,14),(5086,204,'North Vernon',-5,14),(5087,204,'Peru',-5,14),(5088,204,'Plainfield',-5,14),(5089,204,'Plymouth',-5,14),(5090,204,'Portage',-5,14),(5091,204,'Porter',-5,14),(5092,204,'Portland',-5,14),(5093,204,'Princeton',-5,14),(5094,204,'Remington',-5,14),(5095,204,'Rensselaer',-5,14),(5096,204,'Richmond',-5,14),(5097,204,'Rising Sun',-5,14),(5098,204,'Rochester',-5,14),(5099,204,'Rushville',-5,14),(5100,204,'Schererville',-5,14),(5101,204,'Scottsburg',-5,14),(5102,204,'Sellersburg',-5,14),(5103,204,'Seymour',-5,14),(5104,204,'Shelbyville',-5,14),(5105,204,'Shipshewana',-5,14),(5106,204,'South Bend',-5,14),(5107,204,'Sullivan',-5,14),(5108,204,'Taylorsville',-5,14),(5109,204,'Tell City',-5,14),(5110,204,'Terre Haute',-5,14),(5111,204,'Valparaiso',-5,14),(5112,204,'Vincennes',-5,14),(5113,204,'Wabash',-5,14),(5114,204,'Warren',-5,14),(5115,204,'Warsaw',-5,14),(5116,204,'Washington',-5,14),(5117,204,'West Lafayette',-5,14),(5118,204,'Westfield',-5,14),(5119,204,'Adair',-6,15),(5120,204,'Algona',-6,15),(5121,204,'Altoona',-6,15),(5122,204,'Amana Colonies',-6,15),(5123,204,'Ames',-6,15),(5124,204,'Ankeny',-6,15),(5125,204,'Atlantic',-6,15),(5126,204,'Bettendorf',-6,15),(5127,204,'Boone',-6,15),(5128,204,'Brooklyn',-6,15),(5129,204,'Burlington',-6,15),(5130,204,'Carroll',-6,15),(5131,204,'Carter Lake',-6,15),(5132,204,'Cedar Falls',-6,15),(5133,204,'Cedar Rapids',-6,15),(5134,204,'Centerville',-6,15),(5135,204,'Charles City',-6,15),(5136,204,'Cherokee',-6,15),(5137,204,'Clarinda',-6,15),(5138,204,'Clear Lake',-6,15),(5139,204,'Clinton',-6,15),(5140,204,'Clive',-6,15),(5141,204,'Coralville',-6,15),(5142,204,'Council Bluffs',-6,15),(5143,204,'Cresco',-6,15),(5144,204,'Creston',-6,15),(5145,204,'Davenport',-6,15),(5146,204,'Decorah',-6,15),(5147,204,'Denison',-6,15),(5148,204,'Des Moines*',-6,15),(5149,204,'Dubuque',-6,15),(5150,204,'Dyersville',-6,15),(5151,204,'Eldridge',-6,15),(5152,204,'Elk Horn',-6,15),(5153,204,'Emmetsburg',-6,15),(5154,204,'Estherville',-6,15),(5155,204,'Evansdale',-6,15),(5156,204,'Fairfield',-6,15),(5157,204,'Forest City',-6,15),(5158,204,'Fort Dodge',-6,15),(5159,204,'Fort Madison',-6,15),(5160,204,'Grimes',-6,15),(5161,204,'Grinnell',-6,15),(5162,204,'Grundy Center',-6,15),(5163,204,'Humboldt',-6,15),(5164,204,'Iowa City',-6,15),(5165,204,'Iowa Falls',-6,15),(5166,204,'Jefferson',-6,15),(5167,204,'Johnston',-6,15),(5168,204,'Keokuk',-6,15),(5169,204,'Le Claire',-6,15),(5170,204,'Le Mars',-6,15),(5171,204,'Manchester',-6,15),(5172,204,'Marion',-6,15),(5173,204,'Marshalltown',-6,15),(5174,204,'Mason City',-6,15),(5175,204,'Missouri Valley',-6,15),(5176,204,'Mount Pleasant',-6,15),(5177,204,'Muscatine',-6,15),(5178,204,'Nevada',-6,15),(5179,204,'Newton',-6,15),(5180,204,'Oelwein',-6,15),(5181,204,'Okoboji',-6,15),(5182,204,'Onawa',-6,15),(5183,204,'Orange City',-6,15),(5184,204,'Osage',-6,15),(5185,204,'Osceola',-6,15),(5186,204,'Oskaloosa',-6,15),(5187,204,'Ottumwa',-6,15),(5188,204,'Pella',-6,15),(5189,204,'Peosta',-6,15),(5190,204,'Red Oak',-6,15),(5191,204,'Sergeant Bluff',-6,15),(5192,204,'Shenandoah',-6,15),(5193,204,'Sioux Center',-6,15),(5194,204,'Sioux City',-6,15),(5195,204,'Spencer',-6,15),(5196,204,'Spirit Lake',-6,15),(5197,204,'Storm Lake',-6,15),(5198,204,'Stuart',-6,15),(5199,204,'Toledo',-6,15),(5200,204,'Urbana',-6,15),(5201,204,'Urbandale',-6,15),(5202,204,'Walcott',-6,15),(5203,204,'Walnut',-6,15),(5204,204,'Waterloo',-6,15),(5205,204,'Waverly',-6,15),(5206,204,'West Des Moines',-6,15),(5207,204,'West Liberty',-6,15),(5208,204,'West Union',-6,15),(5209,204,'Williams',-6,15),(5210,204,'Williamsburg',-6,15),(5211,204,'Winterset',-6,15),(5212,204,'Abilene',-6,16),(5213,204,'Arkansas City',-6,16),(5214,204,'Atchison',-6,16),(5215,204,'Belleville',-6,16),(5216,204,'Beloit',-6,16),(5217,204,'Bonner Springs',-6,16),(5218,204,'Chanute',-6,16),(5219,204,'Colby',-6,16),(5220,204,'Columbus',-6,16),(5221,204,'Concordia',-6,16),(5222,204,'De Soto',-6,16),(5223,204,'Dodge City',-6,16),(5224,204,'El Dorado',-6,16),(5225,204,'Ellsworth',-6,16),(5226,204,'Emporia',-6,16),(5227,204,'Fort Scott',-6,16),(5228,204,'Garden City',-6,16),(5229,204,'Goodland',-6,16),(5230,204,'Great Bend',-6,16),(5231,204,'Greensburg',-6,16),(5232,204,'Hays',-6,16),(5233,204,'Holton',-6,16),(5234,204,'Hutchinson',-6,16),(5235,204,'Independence',-6,16),(5236,204,'Iola',-6,16),(5237,204,'Junction City',-6,16),(5238,204,'Kansas City',-6,16),(5239,204,'Lansing',-6,16),(5240,204,'Larned',-6,16),(5241,204,'Lawrence',-6,16),(5242,204,'Leavenworth',-6,16),(5243,204,'Lenexa',-6,16),(5244,204,'Liberal',-6,16),(5245,204,'Manhattan',-6,16),(5246,204,'Marysville',-6,16),(5247,204,'Mayetta',-6,16),(5248,204,'McPherson',-6,16),(5249,204,'Merriam',-6,16),(5250,204,'Newton',-6,16),(5251,204,'Oakley',-6,16),(5252,204,'Olathe',-6,16),(5253,204,'Ottawa',-6,16),(5254,204,'Overland Park',-6,16),(5255,204,'Park City',-6,16),(5256,204,'Parsons',-6,16),(5257,204,'Pittsburg',-6,16),(5258,204,'Pratt',-6,16),(5259,204,'Russell',-6,16),(5260,204,'Salina',-6,16),(5261,204,'Sharon Springs',-6,16),(5262,204,'Shawnee',-6,16),(5263,204,'South Hutchinson',-6,16),(5264,204,'Topeka*',-6,16),(5265,204,'Ulysses',-6,16),(5266,204,'Wakeeney',-6,16),(5267,204,'Wichita',-6,16),(5268,204,'Winfield',-6,16),(5269,204,'Albany',-5,17),(5270,204,'Ashland',-5,17),(5271,204,'Barbourville',-5,17),(5272,204,'Bardstown',-5,17),(5273,204,'Beaver Dam',-5,17),(5274,204,'Benton',-5,17),(5275,204,'Berea',-5,17),(5276,204,'Bowling Green',-5,17),(5277,204,'Brooks',-5,17),(5278,204,'Cadiz',-5,17),(5279,204,'Calvert City',-5,17),(5280,204,'Campbellsville',-5,17),(5281,204,'Carrollton',-5,17),(5282,204,'Catlettsburg',-5,17),(5283,204,'Cave City',-5,17),(5284,204,'Central City',-5,17),(5285,204,'Columbia',-5,17),(5286,204,'Corbin',-5,17),(5287,204,'Covington',-5,17),(5288,204,'Danville',-5,17),(5289,204,'Dry Ridge',-5,17),(5290,204,'Eddyville',-5,17),(5291,204,'Elizabethtown',-5,17),(5292,204,'Erlanger',-5,17),(5293,204,'Florence',-5,17),(5294,204,'Fort Campbell',-5,17),(5295,204,'Fort Knox',-5,17),(5296,204,'Fort Mitchell',-5,17),(5297,204,'Fort Wright',-5,17),(5298,204,'Frankfort*',-5,17),(5299,204,'Franklin',-5,17),(5300,204,'Georgetown',-5,17),(5301,204,'Gilbertsville',-5,17),(5302,204,'Glasgow',-5,17),(5303,204,'Goody',-5,17),(5304,204,'Grand Rivers',-5,17),(5305,204,'Grayson',-5,17),(5306,204,'Harlan',-5,17),(5307,204,'Harrodsburg',-5,17),(5308,204,'Hazard',-5,17),(5309,204,'Hebron',-5,17),(5310,204,'Henderson',-5,17),(5311,204,'Hopkinsville',-5,17),(5312,204,'Horse Cave',-5,17),(5313,204,'Jeffersontown',-5,17),(5314,204,'Kuttawa',-5,17),(5315,204,'La Grange',-5,17),(5316,204,'Lebanon',-5,17),(5317,204,'Leitchfield',-5,17),(5318,204,'Lewisport',-5,17),(5319,204,'Lexington',-5,17),(5320,204,'London',-5,17),(5321,204,'Louisa',-5,17),(5322,204,'Louisville',-5,17),(5323,204,'Madisonville',-5,17),(5324,204,'Manchester',-5,17),(5325,204,'Mayfield',-5,17),(5326,204,'Maysville',-5,17),(5327,204,'Middlesboro',-5,17),(5328,204,'Monticello',-5,17),(5329,204,'Morehead',-5,17),(5330,204,'Mount Sterling',-5,17),(5331,204,'Mount Vernon',-5,17),(5332,204,'Murray',-5,17),(5333,204,'Newport',-5,17),(5334,204,'Nicholasville',-5,17),(5335,204,'Oak Grove',-5,17),(5336,204,'Owensboro',-5,17),(5337,204,'Paducah',-5,17),(5338,204,'Paintsville',-5,17),(5339,204,'Park City',-5,17),(5340,204,'Pikeville',-5,17),(5341,204,'Prestonsburg',-5,17),(5342,204,'Radcliff',-5,17),(5343,204,'Richmond',-5,17),(5344,204,'Richwood',-5,17),(5345,204,'Russellville',-5,17),(5346,204,'Shelbyville',-5,17),(5347,204,'Shepherdsville',-5,17),(5348,204,'Somerset',-5,17),(5349,204,'Springfield',-5,17),(5350,204,'Walton',-5,17),(5351,204,'Whitley City',-5,17),(5352,204,'Williamsburg',-5,17),(5353,204,'Williamstown',-5,17),(5354,204,'Winchester',-5,17),(5355,204,'Alexandria',-6,18),(5356,204,'Amite',-6,18),(5357,204,'Arcadia',-6,18),(5358,204,'Baker',-6,18),(5359,204,'Bastrop',-6,18),(5360,204,'Baton Rouge*',-6,18),(5361,204,'LSU, casinos',-6,18),(5362,204,'Bossier City',-6,18),(5363,204,'Breaux Bridge',-6,18),(5364,204,'Bunkie',-6,18),(5365,204,'Chalmette',-6,18),(5366,204,'Covington',-6,18),(5367,204,'Crowley',-6,18),(5368,204,'Delhi',-6,18),(5369,204,'Denham Springs',-6,18),(5370,204,'Donaldsonville',-6,18),(5371,204,'Duson',-6,18),(5372,204,'Eunice',-6,18),(5373,204,'Franklin',-6,18),(5374,204,'Gonzales',-6,18),(5375,204,'Gray',-6,18),(5376,204,'Gretna',-6,18),(5377,204,'Hammond',-6,18),(5378,204,'Harahan',-6,18),(5379,204,'Harvey',-6,18),(5380,204,'Houma',-6,18),(5381,204,'Iowa',-6,18),(5382,204,'Jennings',-6,18),(5383,204,'Lafayette',-6,18),(5384,204,'Leesville',-6,18),(5385,204,'Livonia',-6,18),(5386,204,'Luling',-6,18),(5387,204,'Metairie',-6,18),(5388,204,'Minden',-6,18),(5389,204,'Monroe',-6,18),(5390,204,'Morgan City',-6,18),(5391,204,'Natchitoches',-6,18),(5392,204,'New Iberia',-6,18),(5393,204,'New Orleans',-6,18),(5394,204,'Opelousas',-6,18),(5395,204,'Pineville',-6,18),(5396,204,'Port Allen',-6,18),(5397,204,'Rayne',-6,18),(5398,204,'Rayville',-6,18),(5399,204,'Ruston',-6,18),(5400,204,'Scott',-6,18),(5401,204,'Shreveport',-6,18),(5402,204,'Slidell',-6,18),(5403,204,'St. Francisville',-6,18),(5404,204,'Sulphur',-6,18),(5405,204,'Tallulah',-6,18),(5406,204,'Thibodaux',-6,18),(5407,204,'Ville Platte',-6,18),(5408,204,'West Monroe',-6,18),(5409,204,'Winnfield',-6,18),(5410,204,'Winnsboro',-6,18),(5411,204,'Augusta*',-5,19),(5412,204,'Bangor',-5,19),(5413,204,'Bar Harbor',-5,19),(5414,204,'Bath',-5,19),(5415,204,'Belfast',-5,19),(5416,204,'Bethel',-5,19),(5417,204,'Brunswick',-5,19),(5418,204,'Bucksport',-5,19),(5419,204,'Camden',-5,19),(5420,204,'Ellsworth',-5,19),(5421,204,'Freeport',-5,19),(5422,204,'Houlton',-5,19),(5423,204,'Kingfield',-5,19),(5424,204,'Kittery',-5,19),(5425,204,'Lewiston',-5,19),(5426,204,'Millinocket',-5,19),(5427,204,'Newry',-5,19),(5428,204,'Old Orchard Beach',-5,19),(5429,204,'Orono',-5,19),(5430,204,'Portland',-5,19),(5431,204,'Rockport',-5,19),(5432,204,'Saco',-5,19),(5433,204,'Sanford',-5,19),(5434,204,'Scarborough',-5,19),(5435,204,'South Portland',-5,19),(5436,204,'Waterville',-5,19),(5437,204,'Aberdeen',-5,20),(5438,204,'Aberdeen Proving Ground',-5,20),(5439,204,'Adelphi',-5,20),(5440,204,'Andrews',-5,20),(5441,204,'Annapolis*',-5,20),(5442,204,'Annapolis Junction',-5,20),(5443,204,'Baltimore',-5,20),(5444,204,'Belcamp',-5,20),(5445,204,'Beltsville',-5,20),(5446,204,'Bethesda',-5,20),(5447,204,'Bowie',-5,20),(5448,204,'Brooklyn',-5,20),(5449,204,'California',-5,20),(5450,204,'Cambridge',-5,20),(5451,204,'Camp Springs',-5,20),(5452,204,'Capitol Heights',-5,20),(5453,204,'Catonsville',-5,20),(5454,204,'Chestertown',-5,20),(5455,204,'Cheverly',-5,20),(5456,204,'Chevy Chase',-5,20),(5457,204,'Clinton',-5,20),(5458,204,'Cockeysville',-5,20),(5459,204,'College Park',-5,20),(5460,204,'Columbia',-5,20),(5461,204,'Crisfield',-5,20),(5462,204,'Cumberland',-5,20),(5463,204,'Easton',-5,20),(5464,204,'Edgartown',-5,20),(5465,204,'Edgewood',-5,20),(5466,204,'Elkridge',-5,20),(5467,204,'Elkton',-5,20),(5468,204,'Ellicott City',-5,20),(5469,204,'Emmitsburg',-5,20),(5470,204,'Fort Detrick-Frederick',-5,20),(5471,204,'Frederick',-5,20),(5472,204,'Frostburg',-5,20),(5473,204,'Gaithersburg',-5,20),(5474,204,'Germantown',-5,20),(5475,204,'Glen Burnie',-5,20),(5476,204,'Grantsville',-5,20),(5477,204,'Grasonville',-5,20),(5478,204,'Greenbelt',-5,20),(5479,204,'Hagerstown',-5,20),(5480,204,'Hancock',-5,20),(5481,204,'Hanover',-5,20),(5482,204,'Havre de Grace',-5,20),(5483,204,'Hunt Valley',-5,20),(5484,204,'Jessup',-5,20),(5485,204,'La Plata',-5,20),(5486,204,'Landover',-5,20),(5487,204,'Landover Hills',-5,20),(5488,204,'Langley Park',-5,20),(5489,204,'Lanham',-5,20),(5490,204,'Largo',-5,20),(5491,204,'Laurel',-5,20),(5492,204,'LaVale',-5,20),(5493,204,'Lexington Park',-5,20),(5494,204,'Linthicum',-5,20),(5495,204,'McHenry',-5,20),(5496,204,'New Carrollton',-5,20),(5497,204,'North East',-5,20),(5498,204,'Ocean City',-5,20),(5499,204,'Owings Mills',-5,20),(5500,204,'Oxon Hill',-5,20),(5501,204,'Perryville',-5,20),(5502,204,'Pikesville',-5,20),(5503,204,'Pocomoke City',-5,20),(5504,204,'Prince Frederick',-5,20),(5505,204,'Princess Anne',-5,20),(5506,204,'Rockville',-5,20),(5507,204,'Salisbury',-5,20),(5508,204,'Silver Spring',-5,20),(5509,204,'Solomons',-5,20),(5510,204,'St. Michaels',-5,20),(5511,204,'Stevensville',-5,20),(5512,204,'Thurmont',-5,20),(5513,204,'Timonium',-5,20),(5514,204,'Towson',-5,20),(5515,204,'Waldorf',-5,20),(5516,204,'Westminster',-5,20),(5517,204,'Williamsport',-5,20),(5518,204,'Amesbury',-5,21),(5519,204,'Andover',-5,21),(5520,204,'Arlington',-5,21),(5521,204,'Attleboro',-5,21),(5522,204,'Auburn',-5,21),(5523,204,'Bass River',-5,21),(5524,204,'Bedford',-5,21),(5525,204,'Billerica',-5,21),(5526,204,'Boston*',-5,21),(5527,204,'Bourne',-5,21),(5528,204,'Boxborough',-5,21),(5529,204,'Braintree',-5,21),(5530,204,'Brewster',-5,21),(5531,204,'Brockton',-5,21),(5532,204,'Brookline',-5,21),(5533,204,'Burlington',-5,21),(5534,204,'Cambridge',-5,21),(5535,204,'Cape Cod Area',-5,21),(5536,204,'Chatham',-5,21),(5537,204,'Chelmsford',-5,21),(5538,204,'Chelsea',-5,21),(5539,204,'Chicopee',-5,21),(5540,204,'Cohasset',-5,21),(5541,204,'Concord',-5,21),(5542,204,'Danvers',-5,21),(5543,204,'Dedham',-5,21),(5544,204,'Dennisport',-5,21),(5545,204,'Eastham',-5,21),(5546,204,'Edgartown',-5,21),(5547,204,'Fairhaven',-5,21),(5548,204,'Fall River',-5,21),(5549,204,'Falmouth',-5,21),(5550,204,'Fitchburg',-5,21),(5551,204,'Foxborough',-5,21),(5552,204,'Framingham',-5,21),(5553,204,'Franklin',-5,21),(5554,204,'Gardner',-5,21),(5555,204,'Gloucester',-5,21),(5556,204,'Great Barrington',-5,21),(5557,204,'Greenfield',-5,21),(5558,204,'Hadley',-5,21),(5559,204,'Hatfield',-5,21),(5560,204,'Haverhill',-5,21),(5561,204,'Hingham',-5,21),(5562,204,'Holyoke',-5,21),(5563,204,'Hull',-5,21),(5564,204,'Hyannis',-5,21),(5565,204,'Lawrence',-5,21),(5566,204,'Lee',-5,21),(5567,204,'Lenox',-5,21),(5568,204,'Leominster',-5,21),(5569,204,'Lexington',-5,21),(5570,204,'Lowell',-5,21),(5571,204,'Malden',-5,21),(5572,204,'Mansfield',-5,21),(5573,204,'Marblehead',-5,21),(5574,204,'Marlborough',-5,21),(5575,204,'Martha\'s Vineyard',-5,21),(5576,204,'Medford',-5,21),(5577,204,'Methuen',-5,21),(5578,204,'Middleborough',-5,21),(5579,204,'Milford',-5,21),(5580,204,'Nantucket',-5,21),(5581,204,'Natick',-5,21),(5582,204,'Needham',-5,21),(5583,204,'New Ashford',-5,21),(5584,204,'New Bedford',-5,21),(5585,204,'Newton',-5,21),(5586,204,'North Adams',-5,21),(5587,204,'North Attleboro',-5,21),(5588,204,'North Chelmsford',-5,21),(5589,204,'North Dartmouth',-5,21),(5590,204,'North Falmouth',-5,21),(5591,204,'Northampton',-5,21),(5592,204,'Northborough',-5,21),(5593,204,'Norwood',-5,21),(5594,204,'Peabody',-5,21),(5595,204,'Pittsfield',-5,21),(5596,204,'Plymouth',-5,21),(5597,204,'Provincetown',-5,21),(5598,204,'Quincy',-5,21),(5599,204,'Randolph',-5,21),(5600,204,'Raynham',-5,21),(5601,204,'Revere',-5,21),(5602,204,'Richmond',-5,21),(5603,204,'Rockland',-5,21),(5604,204,'Salem',-5,21),(5605,204,'Sandwich',-5,21),(5606,204,'Saugus',-5,21),(5607,204,'Seekonk',-5,21),(5608,204,'Sharon',-5,21),(5609,204,'Shrewsbury',-5,21),(5610,204,'Somerset',-5,21),(5611,204,'Somerville',-5,21),(5612,204,'South Deerfield',-5,21),(5613,204,'South Yarmouth',-5,21),(5614,204,'Southborough',-5,21),(5615,204,'Southbridge',-5,21),(5616,204,'Springfield',-5,21),(5617,204,'Stockbridge',-5,21),(5618,204,'Stoughton',-5,21),(5619,204,'Sturbridge',-5,21),(5620,204,'Sudbury',-5,21),(5621,204,'Sutton',-5,21),(5622,204,'Taunton',-5,21),(5623,204,'Tewksbury',-5,21),(5624,204,'Tyngsboro',-5,21),(5625,204,'Wakefield',-5,21),(5626,204,'Waltham',-5,21),(5627,204,'Watertown',-5,21),(5628,204,'Wellesley',-5,21),(5629,204,'West Dennis',-5,21),(5630,204,'West Springfield',-5,21),(5631,204,'West Yarmouth',-5,21),(5632,204,'Westborough',-5,21),(5633,204,'Westford',-5,21),(5634,204,'Westport',-5,21),(5635,204,'Weymouth',-5,21),(5636,204,'Williamstown',-5,21),(5637,204,'Woburn',-5,21),(5638,204,'Worcester',-5,21),(5639,204,'Acme',-5,22),(5640,204,'Adrian',-5,22),(5641,204,'Albion',-5,22),(5642,204,'Allen Park',-5,22),(5643,204,'Alma',-5,22),(5644,204,'Alpena',-5,22),(5645,204,'Ann Arbor',-5,22),(5646,204,'Au Gres',-5,22),(5647,204,'Auburn',-5,22),(5648,204,'Auburn Hills',-5,22),(5649,204,'Augusta',-5,22),(5650,204,'Bad Axe',-5,22),(5651,204,'Baraga',-5,22),(5652,204,'Battle Creek',-5,22),(5653,204,'Bay City',-5,22),(5654,204,'Bay Harbor',-5,22),(5655,204,'Belleville',-5,22),(5656,204,'Benton Harbor',-5,22),(5657,204,'Big Rapids',-5,22),(5658,204,'Birch Run',-5,22),(5659,204,'Birmingham',-5,22),(5660,204,'Bloomfield Hills',-5,22),(5661,204,'Boyne Falls',-5,22),(5662,204,'Brighton',-5,22),(5663,204,'Brooklyn',-5,22),(5664,204,'Burton',-5,22),(5665,204,'Cadillac',-5,22),(5666,204,'Calumet',-5,22),(5667,204,'Canton',-5,22),(5668,204,'Cascade',-5,22),(5669,204,'Charlevoix',-5,22),(5670,204,'Charlotte',-5,22),(5671,204,'Cheboygan',-5,22),(5672,204,'Chelsea',-5,22),(5673,204,'Clawson',-5,22),(5674,204,'Coldwater',-5,22),(5675,204,'Coopersville',-5,22),(5676,204,'Davison',-5,22),(5677,204,'Dearborn',-5,22),(5678,204,'Detroit',-5,22),(5679,204,'Dewitt',-5,22),(5680,204,'Douglas',-5,22),(5681,204,'Dowagiac',-5,22),(5682,204,'Dundee',-5,22),(5683,204,'East Lansing',-5,22),(5684,204,'East Tawas',-5,22),(5685,204,'Escanaba',-5,22),(5686,204,'Evart',-5,22),(5687,204,'Farmington Hills',-5,22),(5688,204,'Fenton',-5,22),(5689,204,'Flat Rock',-5,22),(5690,204,'Flint',-5,22),(5691,204,'Fowlerville',-5,22),(5692,204,'Frankenmuth',-5,22),(5693,204,'Gaylord',-5,22),(5694,204,'Grand Blanc',-5,22),(5695,204,'Grand Haven',-5,22),(5696,204,'Grand Rapids',-5,22),(5697,204,'Grandville',-5,22),(5698,204,'Grayling',-5,22),(5699,204,'Hancock',-5,22),(5700,204,'Harbor Springs',-5,22),(5701,204,'Hart',-5,22),(5702,204,'Hartland',-5,22),(5703,204,'Hillsdale',-5,22),(5704,204,'Holland',-5,22),(5705,204,'Houghton',-5,22),(5706,204,'Houghton Lake',-5,22),(5707,204,'Howell',-5,22),(5708,204,'Hudsonville',-5,22),(5709,204,'Imlay City',-5,22),(5710,204,'Indian River',-5,22),(5711,204,'Ionia',-5,22),(5712,204,'Iron Mountain',-5,22),(5713,204,'Iron River',-5,22),(5714,204,'Ironwood',-5,22),(5715,204,'Ishpeming',-5,22),(5716,204,'Jackson',-5,22),(5717,204,'Jonesville',-5,22),(5718,204,'Kalamazoo',-5,22),(5719,204,'Kalkaska',-5,22),(5720,204,'Kentwood',-5,22),(5721,204,'Lake Orion',-5,22),(5722,204,'Lansing*',-5,22),(5723,204,'Lapeer',-5,22),(5724,204,'Livonia',-5,22),(5725,204,'Ludington',-5,22),(5726,204,'Mackinaw City',-5,22),(5727,204,'Madison Heights',-5,22),(5728,204,'Manistique',-5,22),(5729,204,'Marquette',-5,22),(5730,204,'Marshall',-5,22),(5731,204,'Marysville',-5,22),(5732,204,'Menominee',-5,22),(5733,204,'Midland',-5,22),(5734,204,'Milan',-5,22),(5735,204,'Monroe',-5,22),(5736,204,'Mount Clemens',-5,22),(5737,204,'Mount Pleasant',-5,22),(5738,204,'Munising',-5,22),(5739,204,'Muskegon',-5,22),(5740,204,'New Buffalo',-5,22),(5741,204,'Newberry',-5,22),(5742,204,'Niles',-5,22),(5743,204,'Northville',-5,22),(5744,204,'Norway',-5,22),(5745,204,'Novi',-5,22),(5746,204,'Okemos',-5,22),(5747,204,'Oscoda',-5,22),(5748,204,'Paradise',-5,22),(5749,204,'Paw Paw',-5,22),(5750,204,'Pellston',-5,22),(5751,204,'Petoskey',-5,22),(5752,204,'Plainwell',-5,22),(5753,204,'Plymouth',-5,22),(5754,204,'Pontiac',-5,22),(5755,204,'Port Huron',-5,22),(5756,204,'Portage',-5,22),(5757,204,'Portland',-5,22),(5758,204,'Rochester Hills',-5,22),(5759,204,'Romeo',-5,22),(5760,204,'Romulus',-5,22),(5761,204,'Roseville',-5,22),(5762,204,'Royal Oak',-5,22),(5763,204,'Saginaw',-5,22),(5764,204,'Saugatuck',-5,22),(5765,204,'Sault Ste. Marie',-5,22),(5766,204,'South Haven',-5,22),(5767,204,'Southfield',-5,22),(5768,204,'Southgate',-5,22),(5769,204,'St. Ignace',-5,22),(5770,204,'St. Joseph',-5,22),(5771,204,'St. Robert',-5,22),(5772,204,'Sterling Heights',-5,22),(5773,204,'Stevensville',-5,22),(5774,204,'Sturgis',-5,22),(5775,204,'Tawas City',-5,22),(5776,204,'Taylor',-5,22),(5777,204,'Thompsonville',-5,22),(5778,204,'Three Rivers',-5,22),(5779,204,'Traverse City',-5,22),(5780,204,'Troy',-5,22),(5781,204,'Utica',-5,22),(5782,204,'Walker',-5,22),(5783,204,'Warren',-5,22),(5784,204,'Waterford',-5,22),(5785,204,'West Branch',-5,22),(5786,204,'Wetmore',-5,22),(5787,204,'Whitehall',-5,22),(5788,204,'Whitmore Lake',-5,22),(5789,204,'Williamsburg',-5,22),(5790,204,'Wixom',-5,22),(5791,204,'Woodhaven',-5,22),(5792,204,'Wyoming',-5,22),(5793,204,'Ypsilanti',-5,22),(5794,204,'Albany',-6,23),(5795,204,'Albert Lea',-6,23),(5796,204,'Alexandria',-6,23),(5797,204,'Apple Valley',-6,23),(5798,204,'Arden Hills',-6,23),(5799,204,'Austin',-6,23),(5800,204,'Baudette',-6,23),(5801,204,'Baxter',-6,23),(5802,204,'Becker',-6,23),(5803,204,'Belle Plaine',-6,23),(5804,204,'Bemidji',-6,23),(5805,204,'Benson',-6,23),(5806,204,'Blaine',-6,23),(5807,204,'Bloomington',-6,23),(5808,204,'Blue Earth',-6,23),(5809,204,'Brainerd',-6,23),(5810,204,'Breckenridge',-6,23),(5811,204,'Brooklyn Center',-6,23),(5812,204,'Brooklyn Park',-6,23),(5813,204,'Buffalo',-6,23),(5814,204,'Burnsville',-6,23),(5815,204,'Caledonia',-6,23),(5816,204,'Cambridge',-6,23),(5817,204,'Cannon Falls',-6,23),(5818,204,'Carlton',-6,23),(5819,204,'Chanhassen',-6,23),(5820,204,'Chaska',-6,23),(5821,204,'Cloquet',-6,23),(5822,204,'Coon Rapids',-6,23),(5823,204,'Crookston',-6,23),(5824,204,'Deerwood',-6,23),(5825,204,'Detroit Lakes',-6,23),(5826,204,'Duluth',-6,23),(5827,204,'Eagan',-6,23),(5828,204,'Eden Prairie',-6,23),(5829,204,'Edina',-6,23),(5830,204,'Elk River',-6,23),(5831,204,'Eveleth',-6,23),(5832,204,'Fairmont',-6,23),(5833,204,'Faribault',-6,23),(5834,204,'Fergus Falls',-6,23),(5835,204,'Forest Lake',-6,23),(5836,204,'Fosston',-6,23),(5837,204,'Fridley',-6,23),(5838,204,'Glencoe',-6,23),(5839,204,'Grand Marais',-6,23),(5840,204,'Grand Rapids',-6,23),(5841,204,'Hallock',-6,23),(5842,204,'Ham Lake',-6,23),(5843,204,'Hastings',-6,23),(5844,204,'Hibbing',-6,23),(5845,204,'Hinckley',-6,23),(5846,204,'Hoyt Lakes',-6,23),(5847,204,'Hutchinson',-6,23),(5848,204,'International Falls',-6,23),(5849,204,'Inver Grove Heights',-6,23),(5850,204,'Jackson',-6,23),(5851,204,'Lakeville',-6,23),(5852,204,'Litchfield',-6,23),(5853,204,'Little Falls',-6,23),(5854,204,'Long Lake',-6,23),(5855,204,'Lutsen',-6,23),(5856,204,'Luverne',-6,23),(5857,204,'Mankato',-6,23),(5858,204,'Maple Grove',-6,23),(5859,204,'Maplewood',-6,23),(5860,204,'Marshall',-6,23),(5861,204,'Mendota Heights',-6,23),(5862,204,'Milaca',-6,23),(5863,204,'Minneapolis',-6,23),(5864,204,'Minnetonka',-6,23),(5865,204,'Montevideo',-6,23),(5866,204,'Monticello',-6,23),(5867,204,'Moorhead',-6,23),(5868,204,'Moose Lake',-6,23),(5869,204,'Mora',-6,23),(5870,204,'Morris',-6,23),(5871,204,'Mounds View',-6,23),(5872,204,'New Prague',-6,23),(5873,204,'New Ulm',-6,23),(5874,204,'Nisswa',-6,23),(5875,204,'North Branch',-6,23),(5876,204,'Northfield',-6,23),(5877,204,'Oak Park Heights',-6,23),(5878,204,'Oakdale',-6,23),(5879,204,'Onamia',-6,23),(5880,204,'Orr',-6,23),(5881,204,'Ortonville',-6,23),(5882,204,'Owatonna',-6,23),(5883,204,'Park Rapids',-6,23),(5884,204,'Paynesville',-6,23),(5885,204,'Perham',-6,23),(5886,204,'Pine River',-6,23),(5887,204,'Pipestone',-6,23),(5888,204,'Plymouth',-6,23),(5889,204,'Preston',-6,23),(5890,204,'Princeton',-6,23),(5891,204,'Prior Lake',-6,23),(5892,204,'Proctor',-6,23),(5893,204,'Ramsey',-6,23),(5894,204,'Red Wing',-6,23),(5895,204,'Redwood Falls',-6,23),(5896,204,'Richfield',-6,23),(5897,204,'Rochester',-6,23),(5898,204,'Rogers',-6,23),(5899,204,'Roseau',-6,23),(5900,204,'Roseville',-6,23),(5901,204,'Sauk Centre',-6,23),(5902,204,'Sauk Rapids',-6,23),(5903,204,'Savage',-6,23),(5904,204,'Shakopee',-6,23),(5905,204,'Shoreview',-6,23),(5906,204,'Sleepy Eye',-6,23),(5907,204,'South St. Paul',-6,23),(5908,204,'Spring Valley',-6,23),(5909,204,'St. Cloud',-6,23),(5910,204,'St. James',-6,23),(5911,204,'St. Louis Park',-6,23),(5912,204,'St. Paul*',-6,23),(5913,204,'St. Peter',-6,23),(5914,204,'Staples',-6,23),(5915,204,'Stewartville',-6,23),(5916,204,'Stillwater',-6,23),(5917,204,'Thief River Falls',-6,23),(5918,204,'Tofte',-6,23),(5919,204,'Two Harbors',-6,23),(5920,204,'Virginia',-6,23),(5921,204,'Wabasha',-6,23),(5922,204,'Wadena',-6,23),(5923,204,'Walker',-6,23),(5924,204,'Warroad',-6,23),(5925,204,'Waseca',-6,23),(5926,204,'White Bear Lake',-6,23),(5927,204,'Willmar',-6,23),(5928,204,'Windom',-6,23),(5929,204,'Winona',-6,23),(5930,204,'Woodbury',-6,23),(5931,204,'Worthington',-6,23),(5932,204,'Zumbrota',-6,23),(5933,204,'Aberdeen',-6,24),(5934,204,'Batesville',-6,24),(5935,204,'Biloxi',-6,24),(5936,204,'Booneville',-6,24),(5937,204,'Brandon',-6,24),(5938,204,'Brookhaven',-6,24),(5939,204,'Bryam',-6,24),(5940,204,'Canton',-6,24),(5941,204,'Carthage',-6,24),(5942,204,'Clarksdale',-6,24),(5943,204,'Cleveland',-6,24),(5944,204,'Clinton',-6,24),(5945,204,'Collins',-6,24),(5946,204,'Columbia',-6,24),(5947,204,'Columbus',-6,24),(5948,204,'Corinth',-6,24),(5949,204,'D\'Iberville',-6,24),(5950,204,'Diamondhead',-6,24),(5951,204,'Ellisville',-6,24),(5952,204,'Forest',-6,24),(5953,204,'Fulton',-6,24),(5954,204,'Gautier',-6,24),(5955,204,'Greenwood',-6,24),(5956,204,'Grenada',-6,24),(5957,204,'Hattiesburg',-6,24),(5958,204,'Hazelhurst',-6,24),(5959,204,'Hernando',-6,24),(5960,204,'Holly Springs',-6,24),(5961,204,'Horn Lake',-6,24),(5962,204,'Indianola',-6,24),(5963,204,'Jackson*',-6,24),(5964,204,'Kosciusko',-6,24),(5965,204,'Laurel',-6,24),(5966,204,'Long Beach',-6,24),(5967,204,'Louisville',-6,24),(5968,204,'Madison',-6,24),(5969,204,'Magee',-6,24),(5970,204,'McComb',-6,24),(5971,204,'Meridian',-6,24),(5972,204,'Moss Point',-6,24),(5973,204,'New Albany',-6,24),(5974,204,'Newton',-6,24),(5975,204,'Ocean Springs',-6,24),(5976,204,'Olive Branch',-6,24),(5977,204,'Oxford',-6,24),(5978,204,'Pascagoula',-6,24),(5979,204,'Pearl',-6,24),(5980,204,'Philadelphia',-6,24),(5981,204,'Picayune',-6,24),(5982,204,'Pontotoc',-6,24),(5983,204,'Richland',-6,24),(5984,204,'Ridgeland',-6,24),(5985,204,'Robinsonville',-6,24),(5986,204,'Sardis',-6,24),(5987,204,'Senatobia',-6,24),(5988,204,'Southaven',-6,24),(5989,204,'Starkville',-6,24),(5990,204,'Tunica County',-6,24),(5991,204,'Tupelo',-6,24),(5992,204,'Vicksburg',-6,24),(5993,204,'Waveland',-6,24),(5994,204,'West Point',-6,24),(5995,204,'Wiggins',-6,24),(5996,204,'Yazoo City',-6,24),(5997,204,'Arnold',-6,25),(5998,204,'Belton',-6,25),(5999,204,'Bethany',-6,25),(6000,204,'Blue Springs',-6,25),(6001,204,'Bolivar',-6,25),(6002,204,'Bonne Terre',-6,25),(6003,204,'Boonville',-6,25),(6004,204,'Branson',-6,25),(6005,204,'Branson West',-6,25),(6006,204,'Bridgeton',-6,25),(6007,204,'Brookfield',-6,25),(6008,204,'Buffalo',-6,25),(6009,204,'Butler',-6,25),(6010,204,'Camdenton',-6,25),(6011,204,'Cameron',-6,25),(6012,204,'Cape Girardeau',-6,25),(6013,204,'Carthage',-6,25),(6014,204,'Caruthersville',-6,25),(6015,204,'Charleston',-6,25),(6016,204,'Chesterfield',-6,25),(6017,204,'Chillicothe',-6,25),(6018,204,'Clayton',-6,25),(6019,204,'Clinton',-6,25),(6020,204,'Columbia',-6,25),(6021,204,'Concordia',-6,25),(6022,204,'Creve Coeur',-6,25),(6023,204,'Cuba',-6,25),(6024,204,'Dexter',-6,25),(6025,204,'Doniphan',-6,25),(6026,204,'Earth City',-6,25),(6027,204,'Eureka',-6,25),(6028,204,'Excelsior Springs',-6,25),(6029,204,'Farmington',-6,25),(6030,204,'Fenton',-6,25),(6031,204,'Festus',-6,25),(6032,204,'Florissant',-6,25),(6033,204,'Foristell',-6,25),(6034,204,'Fulton',-6,25),(6035,204,'Grain Valley',-6,25),(6036,204,'Grandview',-6,25),(6037,204,'Hannibal',-6,25),(6038,204,'Harrisonville',-6,25),(6039,204,'Hayti',-6,25),(6040,204,'Hazelwood',-6,25),(6041,204,'Helena',-6,25),(6042,204,'Higginsville',-6,25),(6043,204,'Holts Summit',-6,25),(6044,204,'Independence',-6,25),(6045,204,'Jackson',-6,25),(6046,204,'Jefferson City*',-6,25),(6047,204,'Joplin',-6,25),(6048,204,'Kansas City',-6,25),(6049,204,'Kearney',-6,25),(6050,204,'Kennett',-6,25),(6051,204,'Kingdom City',-6,25),(6052,204,'Kirksville',-6,25),(6053,204,'Lake Ozark',-6,25),(6054,204,'Lake St. Louis',-6,25),(6055,204,'Lamar',-6,25),(6056,204,'Lebanon',-6,25),(6057,204,'Lee\'s Summit',-6,25),(6058,204,'Liberty',-6,25),(6059,204,'Macon',-6,25),(6060,204,'Marshall',-6,25),(6061,204,'Marshfield',-6,25),(6062,204,'Maryland Heights',-6,25),(6063,204,'Maryville',-6,25),(6064,204,'Mexico',-6,25),(6065,204,'Moberly',-6,25),(6066,204,'Monett',-6,25),(6067,204,'Mount Vernon',-6,25),(6068,204,'Mountain Grove',-6,25),(6069,204,'Neosho',-6,25),(6070,204,'New Florence',-6,25),(6071,204,'Oak Grove',-6,25),(6072,204,'Osage Beach',-6,25),(6073,204,'Ozark',-6,25),(6074,204,'Pacific',-6,25),(6075,204,'Peculiar',-6,25),(6076,204,'Perryville',-6,25),(6077,204,'Pevely',-6,25),(6078,204,'Platte City',-6,25),(6079,204,'Poplar Bluff',-6,25),(6080,204,'Riverside',-6,25),(6081,204,'Rock Port',-6,25),(6082,204,'Rolla',-6,25),(6083,204,'Sedalia',-6,25),(6084,204,'Sikeston',-6,25),(6085,204,'Smithville',-6,25),(6086,204,'Springfield',-6,25),(6087,204,'St. Charles',-6,25),(6088,204,'St. Joseph',-6,25),(6089,204,'St. Louis',-6,25),(6090,204,'St. Peters',-6,25),(6091,204,'St. Robert',-6,25),(6092,204,'Ste. Genevieve',-6,25),(6093,204,'Strafford',-6,25),(6094,204,'Sullivan',-6,25),(6095,204,'Sweet Springs',-6,25),(6096,204,'Troy',-6,25),(6097,204,'Villa Ridge',-6,25),(6098,204,'Warrensburg',-6,25),(6099,204,'Warrenton',-6,25),(6100,204,'Warsaw',-6,25),(6101,204,'Washington',-6,25),(6102,204,'Waynesville',-6,25),(6103,204,'Wentzville',-6,25),(6104,204,'West Plains',-6,25),(6105,204,'Belgrade',-7,26),(6106,204,'Big Sky',-7,26),(6107,204,'Billings',-7,26),(6108,204,'Bozeman',-7,26),(6109,204,'Butte',-7,26),(6110,204,'Colstrip',-7,26),(6111,204,'Columbia Falls',-7,26),(6112,204,'Cut Bank',-7,26),(6113,204,'Dillon',-7,26),(6114,204,'Essex',-7,26),(6115,204,'Forsyth',-7,26),(6116,204,'Gardiner',-7,26),(6117,204,'Glendive',-7,26),(6118,204,'Great Falls',-7,26),(6119,204,'Hamilton',-7,26),(6120,204,'Havre',-7,26),(6121,204,'Helena*',-7,26),(6122,204,'Kalispell',-7,26),(6123,204,'Laurel',-7,26),(6124,204,'Lewistown',-7,26),(6125,204,'Libby',-7,26),(6126,204,'Livingston',-7,26),(6127,204,'Lolo',-7,26),(6128,204,'Miles City',-7,26),(6129,204,'Missoula',-7,26),(6130,204,'Montana City',-7,26),(6131,204,'Polson',-7,26),(6132,204,'Red Lodge',-7,26),(6133,204,'Roundup',-7,26),(6134,204,'Shelby',-7,26),(6135,204,'West Yellowstone',-7,26),(6136,204,'Whitefish',-7,26),(6137,204,'Ainsworth',-6,27),(6138,204,'Alliance',-6,27),(6139,204,'Beatrice',-6,27),(6140,204,'Bellevue',-6,27),(6141,204,'Blair',-6,27),(6142,204,'Broken Bow',-6,27),(6143,204,'Central City',-6,27),(6144,204,'Chadron',-6,27),(6145,204,'Columbus',-6,27),(6146,204,'Cozad',-6,27),(6147,204,'Crete',-6,27),(6148,204,'Fremont',-6,27),(6149,204,'Grand Island',-6,27),(6150,204,'Gretna',-6,27),(6151,204,'Hastings',-6,27),(6152,204,'Holdrege',-6,27),(6153,204,'Imperial',-6,27),(6154,204,'Kearney',-6,27),(6155,204,'Kimball',-6,27),(6156,204,'Lexington',-6,27),(6157,204,'Lincoln*',-6,27),(6158,204,'McCook',-6,27),(6159,204,'Missouri Valley',-6,27),(6160,204,'Morrill',-6,27),(6161,204,'Nebraska City',-6,27),(6162,204,'Norfolk',-6,27),(6163,204,'North Platte',-6,27),(6164,204,'Ogallala',-6,27),(6165,204,'Omaha',-6,27),(6166,204,'O\'Neill',-6,27),(6167,204,'Paxton',-6,27),(6168,204,'Scottsbluff',-6,27),(6169,204,'Seward',-6,27),(6170,204,'Sidney',-6,27),(6171,204,'South Sioux City',-6,27),(6172,204,'St. Paul',-6,27),(6173,204,'Syracuse',-6,27),(6174,204,'Tecumseh',-6,27),(6175,204,'Thedford',-6,27),(6176,204,'Valentine',-6,27),(6177,204,'Wahoo',-6,27),(6178,204,'Wayne',-6,27),(6179,204,'York',-6,27),(6180,204,'Battle Mountain',-8,28),(6181,204,'Boulder City',-8,28),(6182,204,'Carlin',-8,28),(6183,204,'Carson City*',-8,28),(6184,204,'Crystal Bay',-8,28),(6185,204,'Elko',-8,28),(6186,204,'Ely',-8,28),(6187,204,'Eureka',-8,28),(6188,204,'Fallon',-8,28),(6189,204,'Fernley',-8,28),(6190,204,'Hawthorne',-8,28),(6191,204,'Henderson',-8,28),(6192,204,'Incline Village',-8,28),(6193,204,'Jean',-8,28),(6194,204,'Las Vegas',-8,28),(6195,204,'Laughlin',-8,28),(6196,204,'Lovelock',-8,28),(6197,204,'Minden',-8,28),(6198,204,'Overton',-8,28),(6199,204,'Pahrump',-8,28),(6200,204,'Primm',-8,28),(6201,204,'Reno',-8,28),(6202,204,'Sparks',-8,28),(6203,204,'Stateline',-8,28),(6204,204,'Tonopah',-8,28),(6205,204,'Wells',-8,28),(6206,204,'Wendover',-8,28),(6207,204,'Winnemucca',-8,28),(6208,204,'Ashland',-5,29),(6209,204,'Bedford',-5,29),(6210,204,'Bethlehem',-5,29),(6211,204,'Bow',-5,29),(6212,204,'Campton',-5,29),(6213,204,'Concord*',-5,29),(6214,204,'Dover',-5,29),(6215,204,'Durham',-5,29),(6216,204,'Exeter',-5,29),(6217,204,'Gorham',-5,29),(6218,204,'Hampton',-5,29),(6219,204,'Hudson',-5,29),(6220,204,'Jackson',-5,29),(6221,204,'Keene',-5,29),(6222,204,'Lebanon',-5,29),(6223,204,'Lincoln',-5,29),(6224,204,'Londonderry',-5,29),(6225,204,'Manchester',-5,29),(6226,204,'Merrimack',-5,29),(6227,204,'Mount Sunapee',-5,29),(6228,204,'Nashua',-5,29),(6229,204,'North Conway',-5,29),(6230,204,'Plymouth',-5,29),(6231,204,'Portsmouth',-5,29),(6232,204,'Salem',-5,29),(6233,204,'Seabrook',-5,29),(6234,204,'Tilton',-5,29),(6235,204,'Waterville Valley',-5,29),(6236,204,'Absecon',-5,30),(6237,204,'Asbury Park',-5,30),(6238,204,'Atlantic City',-5,30),(6239,204,'Avenel',-5,30),(6240,204,'Basking Ridge',-5,30),(6241,204,'Bellmawr',-5,30),(6242,204,'Berlin',-5,30),(6243,204,'Blackwood',-5,30),(6244,204,'Bordentown',-5,30),(6245,204,'Bridgeton',-5,30),(6246,204,'Bridgewater',-5,30),(6247,204,'Brigantine',-5,30),(6248,204,'Brooklawn',-5,30),(6249,204,'Budd Lake',-5,30),(6250,204,'Buena',-5,30),(6251,204,'Cape May',-5,30),(6252,204,'Cardiff',-5,30),(6253,204,'Carlstadt',-5,30),(6254,204,'Carneys Point',-5,30),(6255,204,'Carteret',-5,30),(6256,204,'Cherry Hill',-5,30),(6257,204,'Cinnaminson',-5,30),(6258,204,'Clark',-5,30),(6259,204,'Clifton',-5,30),(6260,204,'Clinton',-5,30),(6261,204,'Columbia',-5,30),(6262,204,'Cookstown',-5,30),(6263,204,'Cranbury',-5,30),(6264,204,'Cranford',-5,30),(6265,204,'Denville',-5,30),(6266,204,'Deptford',-5,30),(6267,204,'East Brunswick',-5,30),(6268,204,'East Hanover',-5,30),(6269,204,'East Rutherford',-5,30),(6270,204,'East Windsor',-5,30),(6271,204,'Eatontown',-5,30),(6272,204,'Edgewater',-5,30),(6273,204,'Edison',-5,30),(6274,204,'Egg Harbor Township',-5,30),(6275,204,'Elizabeth',-5,30),(6276,204,'Englewood',-5,30),(6277,204,'Fair Lawn',-5,30),(6278,204,'Fairfield',-5,30),(6279,204,'Farmingdale',-5,30),(6280,204,'Flemington',-5,30),(6281,204,'Florham Park',-5,30),(6282,204,'Fort Lee',-5,30),(6283,204,'Franklin',-5,30),(6284,204,'Freehold',-5,30),(6285,204,'Gibbstown',-5,30),(6286,204,'Gloucester City',-5,30),(6287,204,'Hackensack',-5,30),(6288,204,'Hammonton',-5,30),(6289,204,'Hasbrouck Heights',-5,30),(6290,204,'Hazlet',-5,30),(6291,204,'Hillsborough',-5,30),(6292,204,'Hoboken',-5,30),(6293,204,'Iselin',-5,30),(6294,204,'Jamesburg',-5,30),(6295,204,'Jersey City',-5,30),(6296,204,'Lakewood',-5,30),(6297,204,'Lawrenceville',-5,30),(6298,204,'Ledgewood',-5,30),(6299,204,'Livingston',-5,30),(6300,204,'Long Branch',-5,30),(6301,204,'Lyndhurst',-5,30),(6302,204,'Mahwah',-5,30),(6303,204,'Maple Shade',-5,30),(6304,204,'Marmora',-5,30),(6305,204,'McAfee',-5,30),(6306,204,'McGuire AFB',-5,30),(6307,204,'Middletown',-5,30),(6308,204,'Millville',-5,30),(6309,204,'Monmouth Junction',-5,30),(6310,204,'Montvale',-5,30),(6311,204,'Morris Plains',-5,30),(6312,204,'Morristown',-5,30),(6313,204,'Mount Arlington',-5,30),(6314,204,'Mount Holly',-5,30),(6315,204,'Mount Laurel',-5,30),(6316,204,'Mount Olive',-5,30),(6317,204,'Neptune',-5,30),(6318,204,'New Brunswick',-5,30),(6319,204,'New Providence',-5,30),(6320,204,'Newark',-5,30),(6321,204,'North Bergen',-5,30),(6322,204,'North Brunswick',-5,30),(6323,204,'North Plainfield',-5,30),(6324,204,'Ocean City',-5,30),(6325,204,'Paramus',-5,30),(6326,204,'Park Ridge',-5,30),(6327,204,'Parsippany',-5,30),(6328,204,'Pennsgrove',-5,30),(6329,204,'Pennsville',-5,30),(6330,204,'Phillipsburg',-5,30),(6331,204,'Piscataway',-5,30),(6332,204,'Plainsboro',-5,30),(6333,204,'Pleasantville',-5,30),(6334,204,'Princeton',-5,30),(6335,204,'Ramsey',-5,30),(6336,204,'Raritan',-5,30),(6337,204,'Red Bank',-5,30),(6338,204,'Ridgefield Park',-5,30),(6339,204,'Rochelle Park',-5,30),(6340,204,'Rockaway',-5,30),(6341,204,'Runnemede',-5,30),(6342,204,'Rutherford',-5,30),(6343,204,'Saddle Brook',-5,30),(6344,204,'Secaucus',-5,30),(6345,204,'Short Hills',-5,30),(6346,204,'Somers Point',-5,30),(6347,204,'Somerset',-5,30),(6348,204,'South Brunswick',-5,30),(6349,204,'South Plainfield',-5,30),(6350,204,'Springfield',-5,30),(6351,204,'Summit',-5,30),(6352,204,'Swedesboro',-5,30),(6353,204,'Teaneck',-5,30),(6354,204,'Tenafly',-5,30),(6355,204,'Thorofare',-5,30),(6356,204,'Tinton Falls',-5,30),(6357,204,'Toms River',-5,30),(6358,204,'Totowa',-5,30),(6359,204,'Trenton*',-5,30),(6360,204,'Union',-5,30),(6361,204,'Union City',-5,30),(6362,204,'Vineland',-5,30),(6363,204,'Voorhees',-5,30),(6364,204,'Wall',-5,30),(6365,204,'Warren',-5,30),(6366,204,'Wayne',-5,30),(6367,204,'Weehawken',-5,30),(6368,204,'West Atlantic City',-5,30),(6369,204,'West Orange',-5,30),(6370,204,'Westampton',-5,30),(6371,204,'Westfield',-5,30),(6372,204,'Whippany',-5,30),(6373,204,'Wildwood',-5,30),(6374,204,'Wildwood Crest',-5,30),(6375,204,'Woodbridge',-5,30),(6376,204,'Woodcliff Lake',-5,30),(6377,204,'Wrightstown',-5,30),(6378,204,'Alamogordo',-7,31),(6379,204,'Albuquerque',-7,31),(6380,204,'Algadones',-7,31),(6381,204,'Angel Fire',-7,31),(6382,204,'Artesia',-7,31),(6383,204,'Belen',-7,31),(6384,204,'Bernalillo',-7,31),(6385,204,'Carlsbad',-7,31),(6386,204,'Chimayo',-7,31),(6387,204,'Clayton',-7,31),(6388,204,'Cloudcroft',-7,31),(6389,204,'Clovis',-7,31),(6390,204,'Corrales',-7,31),(6391,204,'Deming',-7,31),(6392,204,'Dulce',-7,31),(6393,204,'Elephant Butte',-7,31),(6394,204,'Espanola',-7,31),(6395,204,'Farmington',-7,31),(6396,204,'Gallup',-7,31),(6397,204,'Grants',-7,31),(6398,204,'Hobbs',-7,31),(6399,204,'Las Cruces',-7,31),(6400,204,'Las Vegas',-7,31),(6401,204,'Lordsburg',-7,31),(6402,204,'Los Alamos',-7,31),(6403,204,'Los Lunas',-7,31),(6404,204,'Moriarty',-7,31),(6405,204,'Portales',-7,31),(6406,204,'Raton',-7,31),(6407,204,'Red River',-7,31),(6408,204,'Rio Rancho',-7,31),(6409,204,'Roswell',-7,31),(6410,204,'Ruidoso',-7,31),(6411,204,'Ruidoso Downs',-7,31),(6412,204,'San Juan Pueblo',-7,31),(6413,204,'Santa Fe*',-7,31),(6414,204,'Santa Rosa',-7,31),(6415,204,'Silver City',-7,31),(6416,204,'Socorro',-7,31),(6417,204,'Taos',-7,31),(6418,204,'Thoreau',-7,31),(6419,204,'Truth or Consequences',-7,31),(6420,204,'Tucumcari',-7,31),(6421,204,'Vaughn',-7,31),(6422,204,'Whites City',-7,31),(6423,204,'Albany*',-6,32),(6424,204,'Alexandria Bay',-6,32),(6425,204,'Amherst',-6,32),(6426,204,'Amsterdam',-6,32),(6427,204,'Armonk',-6,32),(6428,204,'Auburn',-6,32),(6429,204,'Averill Park',-6,32),(6430,204,'Baldwinsville',-6,32),(6431,204,'Batavia',-6,32),(6432,204,'Bath',-6,32),(6433,204,'Bayside',-6,32),(6434,204,'Binghamton',-6,32),(6435,204,'Bowmansville',-6,32),(6436,204,'Brewerton',-6,32),(6437,204,'Briarcliff Manor',-6,32),(6438,204,'Brockport',-6,32),(6439,204,'Bronx',-6,32),(6440,204,'Brooklyn',-6,32),(6441,204,'Buffalo',-6,32),(6442,204,'Calcium',-6,32),(6443,204,'Canandaigua',-6,32),(6444,204,'Canastota',-6,32),(6445,204,'Canton',-6,32),(6446,204,'Carle Place',-6,32),(6447,204,'Castleton-on-Hudson',-6,32),(6448,204,'Catskill',-6,32),(6449,204,'Centereach',-6,32),(6450,204,'Cheektowaga',-6,32),(6451,204,'Clifton Park',-6,32),(6452,204,'Cobleskill',-6,32),(6453,204,'Cohoes',-6,32),(6454,204,'Commack',-6,32),(6455,204,'Cooperstown',-6,32),(6456,204,'Corning',-6,32),(6457,204,'Corona',-6,32),(6458,204,'Cortland',-6,32),(6459,204,'Dansville',-6,32),(6460,204,'Dunkirk',-6,32),(6461,204,'East Elmhurst',-6,32),(6462,204,'East Greenbush',-6,32),(6463,204,'East Norwich',-6,32),(6464,204,'East Syracuse',-6,32),(6465,204,'Elmira',-6,32),(6466,204,'Elmsford',-6,32),(6467,204,'Endicott',-6,32),(6468,204,'Endwell',-6,32),(6469,204,'Falconer',-6,32),(6470,204,'Farmington',-6,32),(6471,204,'Farmingville',-6,32),(6472,204,'Fayetteville',-6,32),(6473,204,'Findley Lake',-6,32),(6474,204,'Fishkill',-6,32),(6475,204,'Floral Park',-6,32),(6476,204,'Flushing',-6,32),(6477,204,'Fort Lee',-6,32),(6478,204,'Fort Montgomery',-6,32),(6479,204,'Fredonia',-6,32),(6480,204,'Fultonville',-6,32),(6481,204,'Garden City',-6,32),(6482,204,'Geneseo',-6,32),(6483,204,'Geneva',-6,32),(6484,204,'Glen Cove',-6,32),(6485,204,'Glenmont',-6,32),(6486,204,'Glens Falls',-6,32),(6487,204,'Grand Island',-6,32),(6488,204,'Great Neck',-6,32),(6489,204,'Hamburg',-6,32),(6490,204,'Hauppauge',-6,32),(6491,204,'Hawthorne',-6,32),(6492,204,'Hempstead',-6,32),(6493,204,'Henrietta',-6,32),(6494,204,'Hicksville',-6,32),(6495,204,'Holbrook',-6,32),(6496,204,'Holtsville',-6,32),(6497,204,'Hopewell Junction',-6,32),(6498,204,'Hornell',-6,32),(6499,204,'Horseheads',-6,32),(6500,204,'Huntington Station',-6,32),(6501,204,'Islandia',-6,32),(6502,204,'Ithaca',-6,32),(6503,204,'Jamaica',-6,32),(6504,204,'Jamestown',-6,32),(6505,204,'Johnson City',-6,32),(6506,204,'Johnstown',-6,32),(6507,204,'Kerhonkson',-6,32),(6508,204,'Kingston',-6,32),(6509,204,'Lake George',-6,32),(6510,204,'Lake Placid',-6,32),(6511,204,'Latham',-6,32),(6512,204,'Liberty',-6,32),(6513,204,'Little Falls',-6,32),(6514,204,'Liverpool',-6,32),(6515,204,'Lockport',-6,32),(6516,204,'Long Island',-6,32),(6517,204,'Long Island City',-6,32),(6518,204,'Queens, NYC',-6,32),(6519,204,'Malone',-6,32),(6520,204,'Manhattan',-6,32),(6521,204,'Massapequa Park',-6,32),(6522,204,'Massena',-6,32),(6523,204,'McGraw',-6,32),(6524,204,'Medford',-6,32),(6525,204,'Melville',-6,32),(6526,204,'Middletown',-6,32),(6527,204,'Montauk',-6,32),(6528,204,'Monticello',-6,32),(6529,204,'Mount Kisco',-6,32),(6530,204,'Mount Morris',-6,32),(6531,204,'Mount Tremper',-6,32),(6532,204,'Nanuet',-6,32),(6533,204,'New Hampton',-6,32),(6534,204,'New Hartford',-6,32),(6535,204,'New Paltz',-6,32),(6536,204,'New Rochelle',-6,32),(6537,204,'New Windsor',-6,32),(6538,204,'New York City',-6,32),(6539,204,'Newark',-6,32),(6540,204,'Newburgh',-6,32),(6541,204,'Niagara Falls',-6,32),(6542,204,'North Syracuse',-6,32),(6543,204,'Norwich',-6,32),(6544,204,'Nyack',-6,32),(6545,204,'Ogdensburg',-6,32),(6546,204,'Old Forge',-6,32),(6547,204,'Olean',-6,32),(6548,204,'Oneida',-6,32),(6549,204,'Oneonta',-6,32),(6550,204,'Orangeburg',-6,32),(6551,204,'Oriskany',-6,32),(6552,204,'Oswego',-6,32),(6553,204,'Owego',-6,32),(6554,204,'Ozone Park',-6,32),(6555,204,'Queens',-6,32),(6556,204,'Painted Post',-6,32),(6557,204,'Palatine Bridge',-6,32),(6558,204,'Palisades',-6,32),(6559,204,'Parksville',-6,32),(6560,204,'Pearl River',-6,32),(6561,204,'Pembroke',-6,32),(6562,204,'Pittsford',-6,32),(6563,204,'Plainview',-6,32),(6564,204,'Plattsburgh',-6,32),(6565,204,'Port Jefferson',-6,32),(6566,204,'Port Jervis',-6,32),(6567,204,'Poughkeepsie',-6,32),(6568,204,'Pulaski',-6,32),(6569,204,'Queens',-6,32),(6570,204,'Queensbury',-6,32),(6571,204,'Rensselaer',-6,32),(6572,204,'Richmondville',-6,32),(6573,204,'Riverhead',-6,32),(6574,204,'Rochester',-6,32),(6575,204,'Rock Hill',-6,32),(6576,204,'Rockville Centre',-6,32),(6577,204,'Rome',-6,32),(6578,204,'Ronkonkoma',-6,32),(6579,204,'Roslyn',-6,32),(6580,204,'Rye',-6,32),(6581,204,'Rye Brook',-6,32),(6582,204,'Sackets Harbour',-6,32),(6583,204,'Saranac Lake',-6,32),(6584,204,'Saratoga Springs',-6,32),(6585,204,'Saugerties',-6,32),(6586,204,'Schenectady',-6,32),(6587,204,'Schoharie',-6,32),(6588,204,'Seneca Falls',-6,32),(6589,204,'Smithtown',-6,32),(6590,204,'Southampton',-6,32),(6591,204,'Spring Valley',-6,32),(6592,204,'Springville',-6,32),(6593,204,'Stamford',-6,32),(6594,204,'Staten Island',-6,32),(6595,204,'Suffern',-6,32),(6596,204,'Syosset',-6,32),(6597,204,'Syracuse',-6,32),(6598,204,'Tarrytown',-6,32),(6599,204,'Ticonderoga',-6,32),(6600,204,'Tonawanda',-6,32),(6601,204,'Troy',-6,32),(6602,204,'Tully',-6,32),(6603,204,'Uniondale',-6,32),(6604,204,'Utica',-6,32),(6605,204,'Vernon',-6,32),(6606,204,'Vestal',-6,32),(6607,204,'Victor',-6,32),(6608,204,'Waterloo',-6,32),(6609,204,'Watertown',-6,32),(6610,204,'Webster',-6,32),(6611,204,'Weedsport',-6,32),(6612,204,'Wellsville',-6,32),(6613,204,'West Coxsackie',-6,32),(6614,204,'West Point',-6,32),(6615,204,'West Seneca',-6,32),(6616,204,'Westbury',-6,32),(6617,204,'White Plains',-6,32),(6618,204,'Whitestone',-6,32),(6619,204,'Williamsville',-6,32),(6620,204,'Woodbury',-6,32),(6621,204,'Wurtsboro',-6,32),(6622,204,'Yonkers',-6,32),(6623,204,'Aberdeen',-5,33),(6624,204,'Albemarle',-5,33),(6625,204,'Apex',-5,33),(6626,204,'Archdale',-5,33),(6627,204,'Arden',-5,33),(6628,204,'Asheboro',-5,33),(6629,204,'Asheville',-5,33),(6630,204,'Atlantic Beach',-5,33),(6631,204,'Bald Head Island',-5,33),(6632,204,'Banner Elk',-5,33),(6633,204,'Battleboro',-5,33),(6634,204,'Beaufort',-5,33),(6635,204,'Benson',-5,33),(6636,204,'Biscoe',-5,33),(6637,204,'Black Mountain',-5,33),(6638,204,'Blowing Rock',-5,33),(6639,204,'Boone',-5,33),(6640,204,'Brevard',-5,33),(6641,204,'Bryson City',-5,33),(6642,204,'Burlington',-5,33),(6643,204,'Buxton',-5,33),(6644,204,'Candler',-5,33),(6645,204,'Canton',-5,33),(6646,204,'Chapel Hill',-5,33),(6647,204,'Charlotte',-5,33),(6648,204,'Cherokee',-5,33),(6649,204,'Clemmons',-5,33),(6650,204,'Clinton',-5,33),(6651,204,'Columbus',-5,33),(6652,204,'Concord',-5,33),(6653,204,'Conover',-5,33),(6654,204,'Cornelius',-5,33),(6655,204,'Corolla',-5,33),(6656,204,'Creedmoor',-5,33),(6657,204,'Dunn',-5,33),(6658,204,'Durham',-5,33),(6659,204,'Eden',-5,33),(6660,204,'Edenton',-5,33),(6661,204,'Elizabeth City',-5,33),(6662,204,'Elizabethtown',-5,33),(6663,204,'Fayetteville',-5,33),(6664,204,'Flat Rock',-5,33),(6665,204,'Fletcher',-5,33),(6666,204,'Forest City',-5,33),(6667,204,'Fort Bragg',-5,33),(6668,204,'Franklin',-5,33),(6669,204,'Fuquay-Varina',-5,33),(6670,204,'Garner',-5,33),(6671,204,'Gastonia',-5,33),(6672,204,'Goldrock',-5,33),(6673,204,'Goldsboro',-5,33),(6674,204,'Graham',-5,33),(6675,204,'Greensboro',-5,33),(6676,204,'Greenville',-5,33),(6677,204,'Hatteras Island',-5,33),(6678,204,'Havelock',-5,33),(6679,204,'Haw River',-5,33),(6680,204,'Henderson',-5,33),(6681,204,'Hendersonville',-5,33),(6682,204,'Hickory',-5,33),(6683,204,'High Point',-5,33),(6684,204,'Highlands',-5,33),(6685,204,'Hillsborough',-5,33),(6686,204,'Huntersville',-5,33),(6687,204,'Jacksonville',-5,33),(6688,204,'Jefferson',-5,33),(6689,204,'Jonesville',-5,33),(6690,204,'Kannapolis',-5,33),(6691,204,'Kenly',-5,33),(6692,204,'Kernersville',-5,33),(6693,204,'Kill Devil Hills',-5,33),(6694,204,'King',-5,33),(6695,204,'Kings Mountain',-5,33),(6696,204,'Kinston',-5,33),(6697,204,'Kitty Hawk',-5,33),(6698,204,'Knightdale',-5,33),(6699,204,'Lake Lure',-5,33),(6700,204,'Laurinburg',-5,33),(6701,204,'Lenoir',-5,33),(6702,204,'Lexington',-5,33),(6703,204,'Lincolnton',-5,33),(6704,204,'Louisburg',-5,33),(6705,204,'Lumberton',-5,33),(6706,204,'Maggie Valley',-5,33),(6707,204,'Marion',-5,33),(6708,204,'Mars Hill',-5,33),(6709,204,'Matthews',-5,33),(6710,204,'McLeansville',-5,33),(6711,204,'Mebane',-5,33),(6712,204,'Mocksville',-5,33),(6713,204,'Monroe',-5,33),(6714,204,'Mooresville',-5,33),(6715,204,'Morehead City',-5,33),(6716,204,'Morganton',-5,33),(6717,204,'Morrisville',-5,33),(6718,204,'Mount Airy',-5,33),(6719,204,'Mount Holly',-5,33),(6720,204,'Mount Olive',-5,33),(6721,204,'Murphy',-5,33),(6722,204,'Nags Head',-5,33),(6723,204,'New Bern',-5,33),(6724,204,'North Sanford',-5,33),(6725,204,'Ocean Isle Beach',-5,33),(6726,204,'Oxford',-5,33),(6727,204,'Pinehurst',-5,33),(6728,204,'Pineville',-5,33),(6729,204,'Pittsboro',-5,33),(6730,204,'Plymouth',-5,33),(6731,204,'Raeford',-5,33),(6732,204,'Raleigh*',-5,33),(6733,204,'Reidsville',-5,33),(6734,204,'Research Triangle Park',-5,33),(6735,204,'Roanoke Rapids',-5,33),(6736,204,'Robbinsville',-5,33),(6737,204,'Rockingham',-5,33),(6738,204,'Rocky Mount',-5,33),(6739,204,'Rodanthe',-5,33),(6740,204,'Rowland',-5,33),(6741,204,'Roxboro',-5,33),(6742,204,'Salisbury',-5,33),(6743,204,'Sanford',-5,33),(6744,204,'Selma',-5,33),(6745,204,'Shallotte',-5,33),(6746,204,'Shelby',-5,33),(6747,204,'Siler City',-5,33),(6748,204,'Smithfield',-5,33),(6749,204,'Sneads Ferry',-5,33),(6750,204,'Southern Pines',-5,33),(6751,204,'Southport',-5,33),(6752,204,'Spring Lake',-5,33),(6753,204,'St. Pauls',-5,33),(6754,204,'Statesville',-5,33),(6755,204,'Sunset Beach',-5,33),(6756,204,'Sylva',-5,33),(6757,204,'Tarboro',-5,33),(6758,204,'Thomasville',-5,33),(6759,204,'Wade',-5,33),(6760,204,'Wadesboro',-5,33),(6761,204,'Wake Forest',-5,33),(6762,204,'Wallace',-5,33),(6763,204,'Warrenton',-5,33),(6764,204,'Warsaw',-5,33),(6765,204,'Washington',-5,33),(6766,204,'Waynesville',-5,33),(6767,204,'Weldon',-5,33),(6768,204,'Whiteville',-5,33),(6769,204,'Whitsett',-5,33),(6770,204,'Wilkesboro',-5,33),(6771,204,'Williamston',-5,33),(6772,204,'Wilmington',-5,33),(6773,204,'Wilson',-5,33),(6774,204,'Winston-Salem',-5,33),(6775,204,'Wrightsville Beach',-5,33),(6776,204,'Yanceyville',-5,33),(6777,204,'Beulah',-6,34),(6778,204,'Bismarck*',-6,34),(6779,204,'Bottineau',-6,34),(6780,204,'Devils Lake',-6,34),(6781,204,'Dickinson',-6,34),(6782,204,'Fargo',-6,34),(6783,204,'Grafton',-6,34),(6784,204,'Grand Forks',-6,34),(6785,204,'Jamestown',-6,34),(6786,204,'Lisbon',-6,34),(6787,204,'Mandan',-6,34),(6788,204,'Medora',-6,34),(6789,204,'Minot',-6,34),(6790,204,'Rugby',-6,34),(6791,204,'Valley City',-6,34),(6792,204,'Wahpeton',-6,34),(6793,204,'West Fargo',-6,34),(6794,204,'Akron',-5,35),(6795,204,'Alliance',-5,35),(6796,204,'Alpha',-5,35),(6797,204,'Amherst',-5,35),(6798,204,'Ashland',-5,35),(6799,204,'Ashtabula',-5,35),(6800,204,'Athens',-5,35),(6801,204,'Aurora',-5,35),(6802,204,'Austinburg',-5,35),(6803,204,'Austintown',-5,35),(6804,204,'Beachwood',-5,35),(6805,204,'Beavercreek',-5,35),(6806,204,'Bedford Heights',-5,35),(6807,204,'Bellefontaine',-5,35),(6808,204,'Bellville',-5,35),(6809,204,'Blue Ash',-5,35),(6810,204,'Bluffton',-5,35),(6811,204,'Boardman',-5,35),(6812,204,'Bolivar',-5,35),(6813,204,'Boston Heights',-5,35),(6814,204,'Bowling Green',-5,35),(6815,204,'Brimfield',-5,35),(6816,204,'Brook Park',-5,35),(6817,204,'Brooklyn',-5,35),(6818,204,'Brookville',-5,35),(6819,204,'Brunswick',-5,35),(6820,204,'Bucyrus',-5,35),(6821,204,'Caldwell',-5,35),(6822,204,'Cambridge',-5,35),(6823,204,'Canal Winchester',-5,35),(6824,204,'Canton',-5,35),(6825,204,'Carrollton',-5,35),(6826,204,'Celina',-5,35),(6827,204,'Chillicothe',-5,35),(6828,204,'Cincinnati',-5,35),(6829,204,'Circleville',-5,35),(6830,204,'Cleveland',-5,35),(6831,204,'Clyde',-5,35),(6832,204,'Columbus*',-5,35),(6833,204,'Concord',-5,35),(6834,204,'Conneaut',-5,35),(6835,204,'Copley',-5,35),(6836,204,'Coshocton',-5,35),(6837,204,'Cuyahoga Falls',-5,35),(6838,204,'Dayton',-5,35),(6839,204,'Defiance',-5,35),(6840,204,'Delaware',-5,35),(6841,204,'Dover',-5,35),(6842,204,'Dublin',-5,35),(6843,204,'East Liverpool',-5,35),(6844,204,'Eastlake',-5,35),(6845,204,'Eaton',-5,35),(6846,204,'Elyria',-5,35),(6847,204,'Englewood',-5,35),(6848,204,'Fairborn',-5,35),(6849,204,'Fairfield',-5,35),(6850,204,'Fairlawn',-5,35),(6851,204,'Fairview Park',-5,35),(6852,204,'Findlay',-5,35),(6853,204,'Forest Park',-5,35),(6854,204,'Fostoria',-5,35),(6855,204,'Franklin',-5,35),(6856,204,'Fremont',-5,35),(6857,204,'Gahanna',-5,35),(6858,204,'Gallipolis',-5,35),(6859,204,'Geneva',-5,35),(6860,204,'Girard',-5,35),(6861,204,'Greenville',-5,35),(6862,204,'Grove City',-5,35),(6863,204,'Hamilton',-5,35),(6864,204,'Harrison',-5,35),(6865,204,'Heath',-5,35),(6866,204,'Hebron',-5,35),(6867,204,'Hilliard',-5,35),(6868,204,'Hillsboro',-5,35),(6869,204,'Holland',-5,35),(6870,204,'Huber Heights',-5,35),(6871,204,'Hudson',-5,35),(6872,204,'Huron',-5,35),(6873,204,'Independence',-5,35),(6874,204,'Jackson',-5,35),(6875,204,'Jeffersonville',-5,35),(6876,204,'Kent',-5,35),(6877,204,'Kenton',-5,35),(6878,204,'Kings Island',-5,35),(6879,204,'Lakewood',-5,35),(6880,204,'Lancaster',-5,35),(6881,204,'Lebanon',-5,35),(6882,204,'Lima',-5,35),(6883,204,'Lisbon',-5,35),(6884,204,'Logan',-5,35),(6885,204,'London',-5,35),(6886,204,'Lorain',-5,35),(6887,204,'Loveland',-5,35),(6888,204,'Macedonia',-5,35),(6889,204,'Mansfield',-5,35),(6890,204,'Marietta',-5,35),(6891,204,'Marion',-5,35),(6892,204,'Marysville',-5,35),(6893,204,'Mason',-5,35),(6894,204,'Massillon',-5,35),(6895,204,'Maumee',-5,35),(6896,204,'Mayfield Heights',-5,35),(6897,204,'Medina',-5,35),(6898,204,'Mentor',-5,35),(6899,204,'Miamisburg',-5,35),(6900,204,'Middleburg Heights',-5,35),(6901,204,'Middletown',-5,35),(6902,204,'Milan',-5,35),(6903,204,'Milford',-5,35),(6904,204,'Millersburg',-5,35),(6905,204,'Monroe',-5,35),(6906,204,'Montpelier',-5,35),(6907,204,'Moraine',-5,35),(6908,204,'Mount Gilead',-5,35),(6909,204,'Mount Vernon',-5,35),(6910,204,'Napoleon',-5,35),(6911,204,'Nelsonville',-5,35),(6912,204,'New Paris',-5,35),(6913,204,'New Philadelphia',-5,35),(6914,204,'Newark',-5,35),(6915,204,'Newcomerstown',-5,35),(6916,204,'Newton Falls',-5,35),(6917,204,'Niles',-5,35),(6918,204,'North Canton',-5,35),(6919,204,'North Lima',-5,35),(6920,204,'North Olmsted',-5,35),(6921,204,'North Ridgeville',-5,35),(6922,204,'Northwood',-5,35),(6923,204,'Norwalk',-5,35),(6924,204,'Oakwood Village',-5,35),(6925,204,'Oberlin',-5,35),(6926,204,'Obetz',-5,35),(6927,204,'Orange',-5,35),(6928,204,'Oregon',-5,35),(6929,204,'Oxford',-5,35),(6930,204,'Perrysburg',-5,35),(6931,204,'Pickerington',-5,35),(6932,204,'Piketon',-5,35),(6933,204,'Piqua',-5,35),(6934,204,'Poland',-5,35),(6935,204,'Port Clinton',-5,35),(6936,204,'Portsmouth',-5,35),(6937,204,'Reynoldsburg',-5,35),(6938,204,'Richfield',-5,35),(6939,204,'Riverside',-5,35),(6940,204,'Rossford',-5,35),(6941,204,'Sandusky',-5,35),(6942,204,'Seaman',-5,35),(6943,204,'Seville',-5,35),(6944,204,'Sharonville',-5,35),(6945,204,'Sidney',-5,35),(6946,204,'Solon',-5,35),(6947,204,'South Point',-5,35),(6948,204,'Springboro',-5,35),(6949,204,'Springdale',-5,35),(6950,204,'Springfield',-5,35),(6951,204,'St. Clairsville',-5,35),(6952,204,'St. Marys',-5,35),(6953,204,'Steubenville',-5,35),(6954,204,'Stow',-5,35),(6955,204,'Strasburg',-5,35),(6956,204,'Streetsboro',-5,35),(6957,204,'Strongsville',-5,35),(6958,204,'Sunbury',-5,35),(6959,204,'Swanton',-5,35),(6960,204,'Tiffin',-5,35),(6961,204,'Tipp City',-5,35),(6962,204,'Toledo',-5,35),(6963,204,'Troy',-5,35),(6964,204,'Twinsburg',-5,35),(6965,204,'Uhrichsville',-5,35),(6966,204,'Uniontown',-5,35),(6967,204,'Upper Sandusky',-5,35),(6968,204,'Urbana',-5,35),(6969,204,'Van Wert',-5,35),(6970,204,'Vandalia',-5,35),(6971,204,'Vermilion',-5,35),(6972,204,'Wadsworth',-5,35),(6973,204,'Wapakoneta',-5,35),(6974,204,'Warren',-5,35),(6975,204,'Warrensville Heights',-5,35),(6976,204,'Washington Court House',-5,35),(6977,204,'Wauseon',-5,35),(6978,204,'West Chester',-5,35),(6979,204,'Westerville',-5,35),(6980,204,'Westlake',-5,35),(6981,204,'Wheelersburg',-5,35),(6982,204,'Wickliffe',-5,35),(6983,204,'Willard',-5,35),(6984,204,'Willoughby',-5,35),(6985,204,'Wilmington',-5,35),(6986,204,'Wooster',-5,35),(6987,204,'Worthington',-5,35),(6988,204,'Xenia',-5,35),(6989,204,'Youngstown',-5,35),(6990,204,'Zanesville',-5,35),(6991,204,'Ada',-6,36),(6992,204,'Afton',-6,36),(6993,204,'Altus',-6,36),(6994,204,'Alva',-6,36),(6995,204,'Ardmore',-6,36),(6996,204,'Atoka',-6,36),(6997,204,'Bartlesville',-6,36),(6998,204,'Blackwell',-6,36),(6999,204,'Broken Arrow',-6,36),(7000,204,'Broken Bow',-6,36),(7001,204,'Catoosa',-6,36),(7002,204,'Chandler',-6,36),(7003,204,'Checotah',-6,36),(7004,204,'Chickasha',-6,36),(7005,204,'Claremore',-6,36),(7006,204,'Clinton',-6,36),(7007,204,'Del City',-6,36),(7008,204,'Duncan',-6,36),(7009,204,'Durant',-6,36),(7010,204,'Edmond',-6,36),(7011,204,'El Reno',-6,36),(7012,204,'Elk City',-6,36),(7013,204,'Enid',-6,36),(7014,204,'Erick',-6,36),(7015,204,'Frederick',-6,36),(7016,204,'Glenpool',-6,36),(7017,204,'Grove',-6,36),(7018,204,'Guthrie',-6,36),(7019,204,'Guymon',-6,36),(7020,204,'Hinton',-6,36),(7021,204,'Idabel',-6,36),(7022,204,'Lawton',-6,36),(7023,204,'Locust Grove',-6,36),(7024,204,'Lone Wolf',-6,36),(7025,204,'McAlester',-6,36),(7026,204,'Miami',-6,36),(7027,204,'Midwest City',-6,36),(7028,204,'Moore',-6,36),(7029,204,'Muskogee',-6,36),(7030,204,'Norman',-6,36),(7031,204,'Oklahoma City*',-6,36),(7032,204,'Okmulgee',-6,36),(7033,204,'Owasso',-6,36),(7034,204,'Pauls Valley',-6,36),(7035,204,'Perry',-6,36),(7036,204,'Ponca City',-6,36),(7037,204,'Poteau',-6,36),(7038,204,'Pryor',-6,36),(7039,204,'Purcell',-6,36),(7040,204,'Roland',-6,36),(7041,204,'Sallisaw',-6,36),(7042,204,'Sand Springs',-6,36),(7043,204,'Savanna',-6,36),(7044,204,'Shawnee',-6,36),(7045,204,'Stillwater',-6,36),(7046,204,'Stilwell',-6,36),(7047,204,'Stroud',-6,36),(7048,204,'Sulphur',-6,36),(7049,204,'Tahlequah',-6,36),(7050,204,'Tulsa',-6,36),(7051,204,'Vinita',-6,36),(7052,204,'Wagoner',-6,36),(7053,204,'Weatherford',-6,36),(7054,204,'Woodward',-6,36),(7055,204,'Yukon',-6,36),(7056,204,'Albany',-8,37),(7057,204,'Aloha',-8,37),(7058,204,'Ashland',-8,37),(7059,204,'Astoria',-8,37),(7060,204,'Baker City',-8,37),(7061,204,'Bandon',-8,37),(7062,204,'Beaverton',-8,37),(7063,204,'Bend',-8,37),(7064,204,'Biggs Junction',-8,37),(7065,204,'Boardman',-8,37),(7066,204,'Brookings',-8,37),(7067,204,'Burns',-8,37),(7068,204,'Canby',-8,37),(7069,204,'Cannon Beach',-8,37),(7070,204,'Canyonville',-8,37),(7071,204,'Cascade Locks',-8,37),(7072,204,'Central Point',-8,37),(7073,204,'Clackamas',-8,37),(7074,204,'Coos Bay',-8,37),(7075,204,'Corvallis',-8,37),(7076,204,'Cottage Grove',-8,37),(7077,204,'Dallas',-8,37),(7078,204,'Dalles',-8,37),(7079,204,'Enterprise',-8,37),(7080,204,'Eugene',-8,37),(7081,204,'Florence',-8,37),(7082,204,'Forest Grove',-8,37),(7083,204,'Gearhart',-8,37),(7084,204,'Gladstone',-8,37),(7085,204,'Gleneden Beach',-8,37),(7086,204,'Gold Beach',-8,37),(7087,204,'Government Camp',-8,37),(7088,204,'Grants Pass',-8,37),(7089,204,'Gresham',-8,37),(7090,204,'Halsey',-8,37),(7091,204,'Hermiston',-8,37),(7092,204,'Hillsboro',-8,37),(7093,204,'Hines',-8,37),(7094,204,'Hood River',-8,37),(7095,204,'John Day',-8,37),(7096,204,'King City',-8,37),(7097,204,'Klamath Falls',-8,37),(7098,204,'La Grande',-8,37),(7099,204,'Lake Oswego',-8,37),(7100,204,'Lakeview',-8,37),(7101,204,'LaPine',-8,37),(7102,204,'Lincoln City',-8,37),(7103,204,'Madras',-8,37),(7104,204,'McMinnville',-8,37),(7105,204,'Medford',-8,37),(7106,204,'Milwaukie',-8,37),(7107,204,'Newberg',-8,37),(7108,204,'Newport',-8,37),(7109,204,'North Bend',-8,37),(7110,204,'Oakridge',-8,37),(7111,204,'Ontario',-8,37),(7112,204,'Pendleton',-8,37),(7113,204,'Portland',-8,37),(7114,204,'Prineville',-8,37),(7115,204,'Redmond',-8,37),(7116,204,'Reedsport',-8,37),(7117,204,'Rice Hill',-8,37),(7118,204,'Roseburg',-8,37),(7119,204,'Salem*',-8,37),(7120,204,'Sandy',-8,37),(7121,204,'Seaside',-8,37),(7122,204,'Sisters',-8,37),(7123,204,'Springfield',-8,37),(7124,204,'St. Helens',-8,37),(7125,204,'Sublimity',-8,37),(7126,204,'Sunriver',-8,37),(7127,204,'The Dalles',-8,37),(7128,204,'Tigard',-8,37),(7129,204,'Tillamook',-8,37),(7130,204,'Troutdale',-8,37),(7131,204,'Tualatin',-8,37),(7132,204,'Umatilla',-8,37),(7133,204,'Welches',-8,37),(7134,204,'Wilsonville',-8,37),(7135,204,'Wood Village',-8,37),(7136,204,'Woodburn',-8,37),(7137,204,'Adamstown',-5,38),(7138,204,'Allentown',-5,38),(7139,204,'Altoona',-5,38),(7140,204,'Barkeyville',-5,38),(7141,204,'Bartonsville',-5,38),(7142,204,'Beaver Falls',-5,38),(7143,204,'Bedford',-5,38),(7144,204,'Belle Vernon',-5,38),(7145,204,'Bensalem',-5,38),(7146,204,'Bentleyville',-5,38),(7147,204,'Berwyn',-5,38),(7148,204,'Bethel',-5,38),(7149,204,'Bethlehem',-5,38),(7150,204,'Bird in Hand',-5,38),(7151,204,'Blairsville',-5,38),(7152,204,'Blakeslee',-5,38),(7153,204,'Bloomsburg',-5,38),(7154,204,'Bradford',-5,38),(7155,204,'Breezewood',-5,38),(7156,204,'Breinigsville',-5,38),(7157,204,'Bridgeville',-5,38),(7158,204,'Bristol',-5,38),(7159,204,'Brookville',-5,38),(7160,204,'Burnham',-5,38),(7161,204,'Butler',-5,38),(7162,204,'Camp Hill',-5,38),(7163,204,'Canonsburg',-5,38),(7164,204,'Carlisle',-5,38),(7165,204,'Carnegie',-5,38),(7166,204,'Chambersburg',-5,38),(7167,204,'Chester',-5,38),(7168,204,'Clarion',-5,38),(7169,204,'Clarks Summit',-5,38),(7170,204,'Clearfield',-5,38),(7171,204,'Concordville',-5,38),(7172,204,'Conshohocken',-5,38),(7173,204,'Coopersburg',-5,38),(7174,204,'Coraopolis',-5,38),(7175,204,'Cranberry Township',-5,38),(7176,204,'Danville',-5,38),(7177,204,'Delaware Water Gap',-5,38),(7178,204,'Delmont',-5,38),(7179,204,'Denver',-5,38),(7180,204,'Dickson City',-5,38),(7181,204,'Dillsburg',-5,38),(7182,204,'Donegal',-5,38),(7183,204,'Douglassville',-5,38),(7184,204,'Drums',-5,38),(7185,204,'DuBois',-5,38),(7186,204,'Duncansville',-5,38),(7187,204,'Dunmore',-5,38),(7188,204,'East Norriton',-5,38),(7189,204,'Easton',-5,38),(7190,204,'Ebensburg',-5,38),(7191,204,'Elizabethtown',-5,38),(7192,204,'Enola',-5,38),(7193,204,'Erie',-5,38),(7194,204,'Essington',-5,38),(7195,204,'Etters',-5,38),(7196,204,'Exton',-5,38),(7197,204,'Fairview',-5,38),(7198,204,'Farmington',-5,38),(7199,204,'Fort Washington',-5,38),(7200,204,'Frackville',-5,38),(7201,204,'Franklin',-5,38),(7202,204,'Frazer',-5,38),(7203,204,'Gettysburg',-5,38),(7204,204,'Gibsonia',-5,38),(7205,204,'Glen Mills',-5,38),(7206,204,'Grantville',-5,38),(7207,204,'Greencastle',-5,38),(7208,204,'Greensburg',-5,38),(7209,204,'Grove City',-5,38),(7210,204,'Hamlin',-5,38),(7211,204,'Hanover',-5,38),(7212,204,'Harmarville',-5,38),(7213,204,'Harrisburg*',-5,38),(7214,204,'Hawley',-5,38),(7215,204,'Hazleton',-5,38),(7216,204,'Hershey',-5,38),(7217,204,'Horsham',-5,38),(7218,204,'Hummelstown',-5,38),(7219,204,'Huntingdon',-5,38),(7220,204,'Indiana',-5,38),(7221,204,'Intercourse',-5,38),(7222,204,'Irwin',-5,38),(7223,204,'Jim Thorpe',-5,38),(7224,204,'Johnstown',-5,38),(7225,204,'Jonestown',-5,38),(7226,204,'Kennett Square',-5,38),(7227,204,'King of Prussia',-5,38),(7228,204,'Kittanning',-5,38),(7229,204,'Kulpsville',-5,38),(7230,204,'Lake Harmony',-5,38),(7231,204,'Lakeville',-5,38),(7232,204,'Lamar',-5,38),(7233,204,'Lancaster',-5,38),(7234,204,'Langhorne',-5,38),(7235,204,'Lansdale',-5,38),(7236,204,'Latrobe',-5,38),(7237,204,'Lebanon',-5,38),(7238,204,'Lester',-5,38),(7239,204,'Levittown',-5,38),(7240,204,'Lewisburg',-5,38),(7241,204,'Ligonier',-5,38),(7242,204,'Lock Haven',-5,38),(7243,204,'Malvern',-5,38),(7244,204,'Manheim',-5,38),(7245,204,'Mansfield',-5,38),(7246,204,'Mars',-5,38),(7247,204,'Marshalls Creek',-5,38),(7248,204,'Matamoras',-5,38),(7249,204,'Meadville',-5,38),(7250,204,'Mechanicsburg',-5,38),(7251,204,'Media',-5,38),(7252,204,'Mendenhall',-5,38),(7253,204,'Mercer',-5,38),(7254,204,'Middletown',-5,38),(7255,204,'Mifflintown',-5,38),(7256,204,'Milesburg',-5,38),(7257,204,'Milford',-5,38),(7258,204,'Millersville',-5,38),(7259,204,'Monroeville',-5,38),(7260,204,'Montgomeryville',-5,38),(7261,204,'Moosic',-5,38),(7262,204,'Morgantown',-5,38),(7263,204,'Morrisville',-5,38),(7264,204,'Mount Joy',-5,38),(7265,204,'Mount Pocono',-5,38),(7266,204,'Mountville',-5,38),(7267,204,'New Castle',-5,38),(7268,204,'New Columbia',-5,38),(7269,204,'New Cumberland',-5,38),(7270,204,'New Holland',-5,38),(7271,204,'New Hope',-5,38),(7272,204,'New Kensington',-5,38),(7273,204,'New Stanton',-5,38),(7274,204,'North East',-5,38),(7275,204,'North Huntington',-5,38),(7276,204,'Oakdale',-5,38),(7277,204,'Oaks',-5,38),(7278,204,'Paradise',-5,38),(7279,204,'Philadelphia',-5,38),(7280,204,'Pine Grove',-5,38),(7281,204,'Pittsburgh',-5,38),(7282,204,'Pittston',-5,38),(7283,204,'Plymouth Meeting',-5,38),(7284,204,'Pottstown',-5,38),(7285,204,'Pottsville',-5,38),(7286,204,'Quakertown',-5,38),(7287,204,'Radnor',-5,38),(7288,204,'Reading',-5,38),(7289,204,'Sayre',-5,38),(7290,204,'Scotland',-5,38),(7291,204,'Scotrun',-5,38),(7292,204,'Scranton',-5,38),(7293,204,'Selinsgrove',-5,38),(7294,204,'Sewickley',-5,38),(7295,204,'Shamokin Dam',-5,38),(7296,204,'Sharon',-5,38),(7297,204,'Shippensburg',-5,38),(7298,204,'Somerset',-5,38),(7299,204,'St. Davids',-5,38),(7300,204,'St. Marys',-5,38),(7301,204,'State College',-5,38),(7302,204,'Strasburg',-5,38),(7303,204,'Stroudsburg',-5,38),(7304,204,'Tannersville',-5,38),(7305,204,'Towanda',-5,38),(7306,204,'Trevose',-5,38),(7307,204,'Tunkhannock',-5,38),(7308,204,'Uniontown',-5,38),(7309,204,'Warren',-5,38),(7310,204,'Warrington',-5,38),(7311,204,'Washington',-5,38),(7312,204,'Wayne',-5,38),(7313,204,'Waynesboro',-5,38),(7314,204,'Waynesburg',-5,38),(7315,204,'West Chester',-5,38),(7316,204,'West Conshohocken',-5,38),(7317,204,'West Hazleton',-5,38),(7318,204,'West Middlesex',-5,38),(7319,204,'West Mifflin',-5,38),(7320,204,'White Haven',-5,38),(7321,204,'Wilkes-Barre',-5,38),(7322,204,'Williamsport',-5,38),(7323,204,'Willow Grove',-5,38),(7324,204,'Wormleysburg',-5,38),(7325,204,'Wyomissing',-5,38),(7326,204,'Yardley',-5,38),(7327,204,'York',-5,38),(7328,204,'Zelienople',-5,38),(7329,204,'Cranston',-5,39),(7330,204,'Kingston',-5,39),(7331,204,'Middletown',-5,39),(7332,204,'Newport',-5,39),(7333,204,'North Scituate',-5,39),(7334,204,'Pawtucket',-5,39),(7335,204,'Providence*',-5,39),(7336,204,'Saunderstown',-5,39),(7337,204,'Smithfield',-5,39),(7338,204,'Warwick',-5,39),(7339,204,'West Greenwich',-5,39),(7340,204,'West Warwick',-5,39),(7341,204,'Woonsocket',-5,39),(7342,204,'Aiken',-5,40),(7343,204,'Anderson',-5,40),(7344,204,'Barnwell',-5,40),(7345,204,'Beaufort',-5,40),(7346,204,'Bennettsville',-5,40),(7347,204,'Bishopville',-5,40),(7348,204,'Bluffton',-5,40),(7349,204,'Blythewood',-5,40),(7350,204,'Camden',-5,40),(7351,204,'Cayce',-5,40),(7352,204,'Charleston',-5,40),(7353,204,'Cheraw',-5,40),(7354,204,'Clemson',-5,40),(7355,204,'Clinton',-5,40),(7356,204,'Columbia*',-5,40),(7357,204,'Conway',-5,40),(7358,204,'Daniel Island',-5,40),(7359,204,'Darlington',-5,40),(7360,204,'Daufuskie Island',-5,40),(7361,204,'Dillon',-5,40),(7362,204,'Duncan',-5,40),(7363,204,'Easley',-5,40),(7364,204,'Florence',-5,40),(7365,204,'Folly Beach',-5,40),(7366,204,'Fort Jackson',-5,40),(7367,204,'Fort Mill',-5,40),(7368,204,'Fripp Island',-5,40),(7369,204,'Gaffney',-5,40),(7370,204,'Garden City Beach',-5,40),(7371,204,'Georgetown',-5,40),(7372,204,'Goose Creek',-5,40),(7373,204,'Greenville',-5,40),(7374,204,'Greenwood',-5,40),(7375,204,'Greer',-5,40),(7376,204,'Hampton',-5,40),(7377,204,'Hardeeville',-5,40),(7378,204,'Hartsville',-5,40),(7379,204,'Hilton Head Island',-5,40),(7380,204,'Irmo',-5,40),(7381,204,'Isle of Palms',-5,40),(7382,204,'James Island',-5,40),(7383,204,'Johns Island',-5,40),(7384,204,'Kiawah Island',-5,40),(7385,204,'Kingstree',-5,40),(7386,204,'Ladson',-5,40),(7387,204,'Lake City',-5,40),(7388,204,'Lancaster',-5,40),(7389,204,'Lexington',-5,40),(7390,204,'Litchfield Beach',-5,40),(7391,204,'Little River',-5,40),(7392,204,'Lugoff',-5,40),(7393,204,'Manning',-5,40),(7394,204,'Marion',-5,40),(7395,204,'Mauldin',-5,40),(7396,204,'Moncks Corner',-5,40),(7397,204,'Mount Pleasant',-5,40),(7398,204,'Murrells Inlet',-5,40),(7399,204,'Myrtle Beach',-5,40),(7400,204,'Myrtle Beach Area',-5,40),(7401,204,'North Augusta',-5,40),(7402,204,'North Charleston',-5,40),(7403,204,'North Myrtle Beach',-5,40),(7404,204,'Orangeburg',-5,40),(7405,204,'Pageland',-5,40),(7406,204,'Parris Island',-5,40),(7407,204,'Pawleys Island',-5,40),(7408,204,'Piedmont',-5,40),(7409,204,'Point South',-5,40),(7410,204,'Port Royal',-5,40),(7411,204,'Richburg',-5,40),(7412,204,'Ridgeland',-5,40),(7413,204,'Ridgeway',-5,40),(7414,204,'Rock Hill',-5,40),(7415,204,'Santee',-5,40),(7416,204,'Seneca',-5,40),(7417,204,'Simpsonville',-5,40),(7418,204,'Spartanburg',-5,40),(7419,204,'Springdale',-5,40),(7420,204,'St. George',-5,40),(7421,204,'St. Stephen',-5,40),(7422,204,'Sullivan\'s Island',-5,40),(7423,204,'Summerton',-5,40),(7424,204,'Summerville',-5,40),(7425,204,'Sumter',-5,40),(7426,204,'Sun City',-5,40),(7427,204,'Surfside Beach',-5,40),(7428,204,'Travelers Rest',-5,40),(7429,204,'Turbeville',-5,40),(7430,204,'Union',-5,40),(7431,204,'Walterboro',-5,40),(7432,204,'West Columbia',-5,40),(7433,204,'Wild Dunes',-5,40),(7434,204,'Winnsboro',-5,40),(7435,204,'York',-5,40),(7436,204,'Aberdeen',-6,41),(7437,204,'Arlington',-6,41),(7438,204,'Black Hawk',-6,41),(7439,204,'Brandon',-6,41),(7440,204,'Brookings',-6,41),(7441,204,'Canistota',-6,41),(7442,204,'Chamberlain',-6,41),(7443,204,'Custer',-6,41),(7444,204,'Dakota Dunes',-6,41),(7445,204,'Deadwood',-6,41),(7446,204,'Dell Rapids',-6,41),(7447,204,'Eagle Butte',-6,41),(7448,204,'Faith',-6,41),(7449,204,'Fort Pierre',-6,41),(7450,204,'Freeman',-6,41),(7451,204,'Gettysburg',-6,41),(7452,204,'Hill City',-6,41),(7453,204,'Hot Springs',-6,41),(7454,204,'Huron',-6,41),(7455,204,'Interior',-6,41),(7456,204,'Kadoka',-6,41),(7457,204,'Keystone',-6,41),(7458,204,'Lead',-6,41),(7459,204,'Martin',-6,41),(7460,204,'Mission',-6,41),(7461,204,'Mitchell',-6,41),(7462,204,'Mobridge',-6,41),(7463,204,'Murdo',-6,41),(7464,204,'North Sioux City',-6,41),(7465,204,'Oacoma',-6,41),(7466,204,'Pierre*',-6,41),(7467,204,'Plankinton',-6,41),(7468,204,'Rapid City',-6,41),(7469,204,'Redfield',-6,41),(7470,204,'Sioux Falls',-6,41),(7471,204,'Spearfish',-6,41),(7472,204,'Sturgis',-6,41),(7473,204,'Vermillion',-6,41),(7474,204,'Wagner',-6,41),(7475,204,'Wall',-6,41),(7476,204,'Watertown',-6,41),(7477,204,'Yankton',-6,41),(7478,204,'Alcoa',-5,42),(7479,204,'Antioch',-5,42),(7480,204,'Athens',-5,42),(7481,204,'Bartlett',-5,42),(7482,204,'Bolivar',-5,42),(7483,204,'Brentwood',-5,42),(7484,204,'Bristol',-5,42),(7485,204,'Brownsville',-5,42),(7486,204,'Bulls Gap',-5,42),(7487,204,'Camden',-5,42),(7488,204,'Caryville',-5,42),(7489,204,'Centerville',-5,42),(7490,204,'Chattanooga',-5,42),(7491,204,'Clarksville',-5,42),(7492,204,'Cleveland',-5,42),(7493,204,'Clinton',-5,42),(7494,204,'Collierville',-5,42),(7495,204,'Columbia',-5,42),(7496,204,'Cookeville',-5,42),(7497,204,'Cordova',-5,42),(7498,204,'Cornersville',-5,42),(7499,204,'Covington',-5,42),(7500,204,'Crossville',-5,42),(7501,204,'Cumberland Gap',-5,42),(7502,204,'Dandridge',-5,42),(7503,204,'Dayton',-5,42),(7504,204,'Decherd',-5,42),(7505,204,'Denmark',-5,42),(7506,204,'Dickson',-5,42),(7507,204,'Dollywood',-5,42),(7508,204,'Dyersburg',-5,42),(7509,204,'East Ridge',-5,42),(7510,204,'Elizabethton',-5,42),(7511,204,'Erwin',-5,42),(7512,204,'Fayetteville',-5,42),(7513,204,'Franklin',-5,42),(7514,204,'Gallatin',-5,42),(7515,204,'Gatlinburg',-5,42),(7516,204,'Germantown',-5,42),(7517,204,'Goodlettsville',-5,42),(7518,204,'Gordonsville',-5,42),(7519,204,'Greeneville',-5,42),(7520,204,'Harriman',-5,42),(7521,204,'Hendersonville',-5,42),(7522,204,'Hermitage',-5,42),(7523,204,'Hixson',-5,42),(7524,204,'Holladay',-5,42),(7525,204,'Huntsville',-5,42),(7526,204,'Hurricane Mills',-5,42),(7527,204,'Jackson',-5,42),(7528,204,'Jellico',-5,42),(7529,204,'Joelton',-5,42),(7530,204,'Johnson City',-5,42),(7531,204,'Kimball',-5,42),(7532,204,'Kingsport',-5,42),(7533,204,'Kingston',-5,42),(7534,204,'Kingston Springs',-5,42),(7535,204,'Knoxville',-5,42),(7536,204,'Kodak',-5,42),(7537,204,'La Vergne',-5,42),(7538,204,'Lake City',-5,42),(7539,204,'Lakeland',-5,42),(7540,204,'Lawrenceburg',-5,42),(7541,204,'Lebanon',-5,42),(7542,204,'Lenoir City',-5,42),(7543,204,'Lexington',-5,42),(7544,204,'Loudon',-5,42),(7545,204,'Madison',-5,42),(7546,204,'Manchester',-5,42),(7547,204,'Martin',-5,42),(7548,204,'McMinnville',-5,42),(7549,204,'Memphis',-5,42),(7550,204,'Millington',-5,42),(7551,204,'Monteagle',-5,42),(7552,204,'Morristown',-5,42),(7553,204,'Mount Juliet',-5,42),(7554,204,'Murfreesboro',-5,42),(7555,204,'Nashville*',-5,42),(7556,204,'New Johnsonville',-5,42),(7557,204,'Newport',-5,42),(7558,204,'Oak Ridge',-5,42),(7559,204,'Oakland',-5,42),(7560,204,'Paris',-5,42),(7561,204,'Pickwick Dam',-5,42),(7562,204,'Pigeon Forge',-5,42),(7563,204,'Pioneer',-5,42),(7564,204,'Powell',-5,42),(7565,204,'Pulaski',-5,42),(7566,204,'Ripley',-5,42),(7567,204,'Rogersville',-5,42),(7568,204,'Savannah',-5,42),(7569,204,'Selmer',-5,42),(7570,204,'Sevierville',-5,42),(7571,204,'Shelbyville',-5,42),(7572,204,'Smyrna',-5,42),(7573,204,'Spring Hill',-5,42),(7574,204,'Springfield',-5,42),(7575,204,'Sweetwater',-5,42),(7576,204,'Tiftonia',-5,42),(7577,204,'Townsend',-5,42),(7578,204,'Tullahoma',-5,42),(7579,204,'Union City',-5,42),(7580,204,'White House',-5,42),(7581,204,'White Pine',-5,42),(7582,204,'Whiteville',-5,42),(7583,204,'Wildersville',-5,42),(7584,204,'Winchester',-5,42),(7585,204,'Abilene',-6,43),(7586,204,'Addison',-6,43),(7587,204,'Alamo',-6,43),(7588,204,'Alice',-6,43),(7589,204,'Allen',-6,43),(7590,204,'Alpine',-6,43),(7591,204,'Alvin',-6,43),(7592,204,'Amarillo',-6,43),(7593,204,'Angleton',-6,43),(7594,204,'Anthony',-6,43),(7595,204,'Aransas Pass',-6,43),(7596,204,'Arlington',-6,43),(7597,204,'Athens',-6,43),(7598,204,'Austin*',-6,43),(7599,204,'Bacliff',-6,43),(7600,204,'Balch Springs',-6,43),(7601,204,'Bastrop',-6,43),(7602,204,'Bay City',-6,43),(7603,204,'Baytown',-6,43),(7604,204,'Beaumont',-6,43),(7605,204,'Bedford',-6,43),(7606,204,'Beeville',-6,43),(7607,204,'Belton',-6,43),(7608,204,'Big Spring',-6,43),(7609,204,'Bishop',-6,43),(7610,204,'Boerne',-6,43),(7611,204,'Bonham',-6,43),(7612,204,'Borger',-6,43),(7613,204,'Bowie',-6,43),(7614,204,'Brady',-6,43),(7615,204,'Brenham',-6,43),(7616,204,'Brownfield',-6,43),(7617,204,'Brownsville',-6,43),(7618,204,'Brownwood',-6,43),(7619,204,'Bryan',-6,43),(7620,204,'Buda',-6,43),(7621,204,'Buffalo',-6,43),(7622,204,'Burleson',-6,43),(7623,204,'Burnet',-6,43),(7624,204,'Canton',-6,43),(7625,204,'Canyon',-6,43),(7626,204,'Carrollton',-6,43),(7627,204,'Carthage',-6,43),(7628,204,'Cedar Hill',-6,43),(7629,204,'Cedar Park',-6,43),(7630,204,'Center',-6,43),(7631,204,'Centerville',-6,43),(7632,204,'Channelview',-6,43),(7633,204,'Childress',-6,43),(7634,204,'Cisco',-6,43),(7635,204,'Clear Lake Area',-6,43),(7636,204,'Cleburne',-6,43),(7637,204,'Clute',-6,43),(7638,204,'Coleman',-6,43),(7639,204,'College Station',-6,43),(7640,204,'Colony - The',-6,43),(7641,204,'Colorado City',-6,43),(7642,204,'Columbus',-6,43),(7643,204,'Conroe',-6,43),(7644,204,'Copperas Cove',-6,43),(7645,204,'Corpus Christi',-6,43),(7646,204,'Corsicana',-6,43),(7647,204,'Dalhart',-6,43),(7648,204,'Dallas',-6,43),(7649,204,'DFW Airport',-6,43),(7650,204,'Decatur',-6,43),(7651,204,'Deer Park',-6,43),(7652,204,'Del Rio',-6,43),(7653,204,'Del Valle',-6,43),(7654,204,'Denison',-6,43),(7655,204,'Denton',-6,43),(7656,204,'DeSoto',-6,43),(7657,204,'Diboll',-6,43),(7658,204,'Donna',-6,43),(7659,204,'Dumas',-6,43),(7660,204,'Duncanville',-6,43),(7661,204,'Eagle Pass',-6,43),(7662,204,'Eastland',-6,43),(7663,204,'Edinburg',-6,43),(7664,204,'El Campo',-6,43),(7665,204,'El Paso',-6,43),(7666,204,'Ennis',-6,43),(7667,204,'Euless',-6,43),(7668,204,'Fairfield',-6,43),(7669,204,'Falfurrias',-6,43),(7670,204,'Farmers Branch',-6,43),(7671,204,'Floresville',-6,43),(7672,204,'Forest Hill',-6,43),(7673,204,'Fort Bliss - El Paso',-6,43),(7674,204,'Fort Stockton',-6,43),(7675,204,'Fort Worth',-6,43),(7676,204,'Fredericksburg',-6,43),(7677,204,'Freeport',-6,43),(7678,204,'Frisco',-6,43),(7679,204,'Fulton',-6,43),(7680,204,'Gainesville',-6,43),(7681,204,'Galveston',-6,43),(7682,204,'Garland',-6,43),(7683,204,'Gatesville',-6,43),(7684,204,'George West',-6,43),(7685,204,'Georgetown',-6,43),(7686,204,'Giddings',-6,43),(7687,204,'Glen Rose',-6,43),(7688,204,'Graham',-6,43),(7689,204,'Granbury',-6,43),(7690,204,'Grand Prairie',-6,43),(7691,204,'Grapevine',-6,43),(7692,204,'Greenville',-6,43),(7693,204,'Gun Barrel City',-6,43),(7694,204,'Harlingen',-6,43),(7695,204,'Hearne',-6,43),(7696,204,'Hemphill',-6,43),(7697,204,'Hempstead',-6,43),(7698,204,'Henderson',-6,43),(7699,204,'Hillsboro',-6,43),(7700,204,'Houston',-6,43),(7701,204,'Humble',-6,43),(7702,204,'Huntsville',-6,43),(7703,204,'Hurst',-6,43),(7704,204,'Ingleside',-6,43),(7705,204,'Irving',-6,43),(7706,204,'Jacksonville',-6,43),(7707,204,'Jasper',-6,43),(7708,204,'Jefferson',-6,43),(7709,204,'Junction',-6,43),(7710,204,'Katy',-6,43),(7711,204,'Kaufman',-6,43),(7712,204,'Kemah',-6,43),(7713,204,'Kenedy',-6,43),(7714,204,'Kerrville',-6,43),(7715,204,'Kileen',-6,43),(7716,204,'Kilgore',-6,43),(7717,204,'Killeen',-6,43),(7718,204,'Kingsville',-6,43),(7719,204,'Kingwood',-6,43),(7720,204,'La Grange',-6,43),(7721,204,'La Marque',-6,43),(7722,204,'La Porte',-6,43),(7723,204,'Lacy Lakeview',-6,43),(7724,204,'Lago Vista',-6,43),(7725,204,'Lake Jackson',-6,43),(7726,204,'Lake Worth',-6,43),(7727,204,'Lancaster',-6,43),(7728,204,'Laredo',-6,43),(7729,204,'Lewisville',-6,43),(7730,204,'Lindale',-6,43),(7731,204,'Livingston',-6,43),(7732,204,'Llano',-6,43),(7733,204,'Lockhart',-6,43),(7734,204,'Longview',-6,43),(7735,204,'Lubbock',-6,43),(7736,204,'Lufkin',-6,43),(7737,204,'Lytle',-6,43),(7738,204,'Mansfield',-6,43),(7739,204,'Marble Falls',-6,43),(7740,204,'Marshall',-6,43),(7741,204,'McAllen',-6,43),(7742,204,'McKinney',-6,43),(7743,204,'Merkel',-6,43),(7744,204,'Mesquite',-6,43),(7745,204,'Midland',-6,43),(7746,204,'Midlothian',-6,43),(7747,204,'Mineral Wells',-6,43),(7748,204,'Mission',-6,43),(7749,204,'Monahans',-6,43),(7750,204,'Montgomery',-6,43),(7751,204,'Mount Pleasant',-6,43),(7752,204,'Mount Vernon',-6,43),(7753,204,'Nacogdoches',-6,43),(7754,204,'Navasota',-6,43),(7755,204,'Nederland',-6,43),(7756,204,'New Boston',-6,43),(7757,204,'New Braunfels',-6,43),(7758,204,'North Richland Hills',-6,43),(7759,204,'Odem',-6,43),(7760,204,'Odessa',-6,43),(7761,204,'Orange',-6,43),(7762,204,'Ozona',-6,43),(7763,204,'Palestine',-6,43),(7764,204,'Pampa',-6,43),(7765,204,'Paris',-6,43),(7766,204,'Pasadena',-6,43),(7767,204,'Pearland',-6,43),(7768,204,'Pecos',-6,43),(7769,204,'Pharr',-6,43),(7770,204,'Plainview',-6,43),(7771,204,'Plano',-6,43),(7772,204,'Pleasanton',-6,43),(7773,204,'Port Aransas',-6,43),(7774,204,'Port Arthur',-6,43),(7775,204,'Port Lavaca',-6,43),(7776,204,'Portland',-6,43),(7777,204,'Rancho Viejo',-6,43),(7778,204,'Ranger',-6,43),(7779,204,'Raymondville',-6,43),(7780,204,'Red Oak',-6,43),(7781,204,'Richardson',-6,43),(7782,204,'Rio Grande City',-6,43),(7783,204,'Roanoke',-6,43),(7784,204,'Robstown',-6,43),(7785,204,'Rockdale',-6,43),(7786,204,'Rockport',-6,43),(7787,204,'Rockwall',-6,43),(7788,204,'Rosenberg',-6,43),(7789,204,'Round Rock',-6,43),(7790,204,'Rowlett',-6,43),(7791,204,'Salado',-6,43),(7792,204,'San Angelo',-6,43),(7793,204,'San Antonio',-6,43),(7794,204,'San Benito',-6,43),(7795,204,'San Juan',-6,43),(7796,204,'San Marcos',-6,43),(7797,204,'Seabrook',-6,43),(7798,204,'Seagoville',-6,43),(7799,204,'Sealy',-6,43),(7800,204,'Seguin',-6,43),(7801,204,'Shamrock',-6,43),(7802,204,'Shenandoah',-6,43),(7803,204,'Sherman',-6,43),(7804,204,'Sinton',-6,43),(7805,204,'Snyder',-6,43),(7806,204,'Somerville',-6,43),(7807,204,'Sonora',-6,43),(7808,204,'South Padre Island',-6,43),(7809,204,'Spring',-6,43),(7810,204,'Stafford',-6,43),(7811,204,'Stephenville',-6,43),(7812,204,'Sugar Land',-6,43),(7813,204,'Sulphur Springs',-6,43),(7814,204,'Sweetwater',-6,43),(7815,204,'Temple',-6,43),(7816,204,'Terrell',-6,43),(7817,204,'Texarkana',-6,43),(7818,204,'Texas City',-6,43),(7819,204,'The Colony',-6,43),(7820,204,'The Woodlands',-6,43),(7821,204,'Three Rivers',-6,43),(7822,204,'Tomball',-6,43),(7823,204,'Tyler',-6,43),(7824,204,'Universal City',-6,43),(7825,204,'Uvalde',-6,43),(7826,204,'Van Horn',-6,43),(7827,204,'Vega',-6,43),(7828,204,'Vernon',-6,43),(7829,204,'Victoria',-6,43),(7830,204,'Waco',-6,43),(7831,204,'Waxahachie',-6,43),(7832,204,'Weatherford',-6,43),(7833,204,'Webster',-6,43),(7834,204,'Weimar',-6,43),(7835,204,'Weslaco',-6,43),(7836,204,'West Columbia',-6,43),(7837,204,'Westlake',-6,43),(7838,204,'Wharton',-6,43),(7839,204,'White Settlement',-6,43),(7840,204,'Wichita Falls',-6,43),(7841,204,'Willis',-6,43),(7842,204,'Willow Park',-6,43),(7843,204,'Willowbrook',-6,43),(7844,204,'Wimberley',-6,43),(7845,204,'Winnie',-6,43),(7846,204,'Winnsboro',-6,43),(7847,204,'Woodlands',-6,43),(7848,204,'Woodway',-6,43),(7849,204,'Zapata',-6,43),(7850,204,'American Fork',-7,44),(7851,204,'Beaver',-7,44),(7852,204,'Blanding',-7,44),(7853,204,'Brian Head',-7,44),(7854,204,'Brigham City',-7,44),(7855,204,'Bryce Canyon',-7,44),(7856,204,'Bullfrog',-7,44),(7857,204,'Cedar City',-7,44),(7858,204,'Clearfield',-7,44),(7859,204,'Coalville',-7,44),(7860,204,'Delta',-7,44),(7861,204,'Draper',-7,44),(7862,204,'Fillmore',-7,44),(7863,204,'Glendale',-7,44),(7864,204,'Green River',-7,44),(7865,204,'Heber City',-7,44),(7866,204,'Hurricane',-7,44),(7867,204,'Ivins',-7,44),(7868,204,'Kanab',-7,44),(7869,204,'Layton',-7,44),(7870,204,'Lehi',-7,44),(7871,204,'Logan',-7,44),(7872,204,'Midvale',-7,44),(7873,204,'Moab',-7,44),(7874,204,'Monticello',-7,44),(7875,204,'Mount Carmel Junction',-7,44),(7876,204,'Murray',-7,44),(7877,204,'Nephi',-7,44),(7878,204,'North Salt Lake',-7,44),(7879,204,'Ogden',-7,44),(7880,204,'Orem',-7,44),(7881,204,'Panguitch',-7,44),(7882,204,'Park City',-7,44),(7883,204,'Parowan',-7,44),(7884,204,'Payson',-7,44),(7885,204,'Price',-7,44),(7886,204,'Provo',-7,44),(7887,204,'Richfield',-7,44),(7888,204,'Roosevelt',-7,44),(7889,204,'Salina',-7,44),(7890,204,'Salt Lake City*',-7,44),(7891,204,'Sandy',-7,44),(7892,204,'Sardine Canyon',-7,44),(7893,204,'Scipio',-7,44),(7894,204,'South Jordan',-7,44),(7895,204,'Springdale',-7,44),(7896,204,'Springville',-7,44),(7897,204,'St. George',-7,44),(7898,204,'Tooele',-7,44),(7899,204,'Torrey',-7,44),(7900,204,'Vernal',-7,44),(7901,204,'Wendover',-7,44),(7902,204,'West Valley City',-7,44),(7903,204,'Woods Cross',-7,44),(7904,204,'Barre',-5,45),(7905,204,'Bennington',-5,45),(7906,204,'Brandon',-5,45),(7907,204,'Brattleboro',-5,45),(7908,204,'Brownsville',-5,45),(7909,204,'Burlington',-5,45),(7910,204,'Colchester',-5,45),(7911,204,'Essex Junction',-5,45),(7912,204,'Killington',-5,45),(7913,204,'Ludlow',-5,45),(7914,204,'Manchester Village',-5,45),(7915,204,'Mendon',-5,45),(7916,204,'Middlebury',-5,45),(7917,204,'Montpelier*',-5,45),(7918,204,'Quechee',-5,45),(7919,204,'Rutland',-5,45),(7920,204,'Shelburne',-5,45),(7921,204,'South Burlington',-5,45),(7922,204,'Springfield',-5,45),(7923,204,'St. Albans',-5,45),(7924,204,'St. Johnsbury',-5,45),(7925,204,'Stowe',-5,45),(7926,204,'Stratton Mountain',-5,45),(7927,204,'Waitsfield',-5,45),(7928,204,'Waterbury',-5,45),(7929,204,'West Dover',-5,45),(7930,204,'White River Junction',-5,45),(7931,204,'Williston',-5,45),(7932,204,'Woodstock',-5,45),(7933,204,'Abingdon',-5,46),(7934,204,'Alexandria',-5,46),(7935,204,'Altavista',-5,46),(7936,204,'Appomattox',-5,46),(7937,204,'Arlington',-5,46),(7938,204,'Ashland',-5,46),(7939,204,'Atkins',-5,46),(7940,204,'Bailey\'s Crossroads',-5,46),(7941,204,'Bedford',-5,46),(7942,204,'Berryville',-5,46),(7943,204,'Big Stone Gap',-5,46),(7944,204,'Blacksburg',-5,46),(7945,204,'Bluefield',-5,46),(7946,204,'Bracey',-5,46),(7947,204,'Bristol',-5,46),(7948,204,'Burkeville',-5,46),(7949,204,'Cape Charles',-5,46),(7950,204,'Carrollton',-5,46),(7951,204,'Centreville',-5,46),(7952,204,'Chantilly',-5,46),(7953,204,'Charlottesville',-5,46),(7954,204,'Chesapeake',-5,46),(7955,204,'Chester',-5,46),(7956,204,'Chilhowie',-5,46),(7957,204,'Chincoteague Island',-5,46),(7958,204,'Christiansburg',-5,46),(7959,204,'Clarksville',-5,46),(7960,204,'Claypool Hill',-5,46),(7961,204,'Collinsville',-5,46),(7962,204,'Colonial Beach',-5,46),(7963,204,'Colonial Heights',-5,46),(7964,204,'Colonial Williamsburg',-5,46),(7965,204,'Covington',-5,46),(7966,204,'Culpeper',-5,46),(7967,204,'Dahlgren',-5,46),(7968,204,'Daleville',-5,46),(7969,204,'Danville',-5,46),(7970,204,'Doswell',-5,46),(7971,204,'Dublin',-5,46),(7972,204,'Dumfries',-5,46),(7973,204,'Emporia',-5,46),(7974,204,'Exmore',-5,46),(7975,204,'Fairfax',-5,46),(7976,204,'Falls Church',-5,46),(7977,204,'Fancy Gap',-5,46),(7978,204,'Farmville',-5,46),(7979,204,'Fishersville',-5,46),(7980,204,'Fort A.P. Hill',-5,46),(7981,204,'Fort Belvoir',-5,46),(7982,204,'Fort Chiswell',-5,46),(7983,204,'Fort Lee',-5,46),(7984,204,'Franklin',-5,46),(7985,204,'Fredericksburg',-5,46),(7986,204,'Front Royal',-5,46),(7987,204,'Galax',-5,46),(7988,204,'Glade Spring',-5,46),(7989,204,'Glen Allen',-5,46),(7990,204,'Gloucester',-5,46),(7991,204,'Grundy',-5,46),(7992,204,'Hampton',-5,46),(7993,204,'Harrisonburg',-5,46),(7994,204,'Herndon',-5,46),(7995,204,'Hillsville',-5,46),(7996,204,'Hopewell',-5,46),(7997,204,'Hot Springs',-5,46),(7998,204,'Keswick',-5,46),(7999,204,'Kilmarnock',-5,46),(8000,204,'King George',-5,46),(8001,204,'La Crosse',-5,46),(8002,204,'Lebanon',-5,46),(8003,204,'Leesburg',-5,46),(8004,204,'Lexington',-5,46),(8005,204,'Lorton',-5,46),(8006,204,'Luray',-5,46),(8007,204,'Lynchburg',-5,46),(8008,204,'Madison Heights',-5,46),(8009,204,'Manassas',-5,46),(8010,204,'Marion',-5,46),(8011,204,'Martinsville',-5,46),(8012,204,'Max Meadows',-5,46),(8013,204,'McLean',-5,46),(8014,204,'Mechanicsville',-5,46),(8015,204,'Middletown',-5,46),(8016,204,'Midlothian',-5,46),(8017,204,'Mount Jackson',-5,46),(8018,204,'Nassawadox',-5,46),(8019,204,'New Market',-5,46),(8020,204,'Newport News',-5,46),(8021,204,'Norfolk',-5,46),(8022,204,'Norton',-5,46),(8023,204,'Onley',-5,46),(8024,204,'Orange',-5,46),(8025,204,'Petersburg',-5,46),(8026,204,'Portsmouth',-5,46),(8027,204,'Prince George',-5,46),(8028,204,'Pulaski',-5,46),(8029,204,'Radford',-5,46),(8030,204,'Raphine',-5,46),(8031,204,'Reston',-5,46),(8032,204,'Richmond*',-5,46),(8033,204,'Ridgeway',-5,46),(8034,204,'Roanoke',-5,46),(8035,204,'Rocky Mount',-5,46),(8036,204,'Rosslyn',-5,46),(8037,204,'Ruther Glen',-5,46),(8038,204,'Salem',-5,46),(8039,204,'Sandston',-5,46),(8040,204,'Skippers',-5,46),(8041,204,'South Boston',-5,46),(8042,204,'South Hill',-5,46),(8043,204,'Springfield',-5,46),(8044,204,'Stafford',-5,46),(8045,204,'Staunton',-5,46),(8046,204,'Stephens City',-5,46),(8047,204,'Sterling',-5,46),(8048,204,'Stony Creek',-5,46),(8049,204,'Suffolk',-5,46),(8050,204,'Tappahannock',-5,46),(8051,204,'Thornburg',-5,46),(8052,204,'Triangle',-5,46),(8053,204,'Troutville',-5,46),(8054,204,'Verona',-5,46),(8055,204,'Vienna',-5,46),(8056,204,'Virginia Beach',-5,46),(8057,204,'Warrenton',-5,46),(8058,204,'Warsaw',-5,46),(8059,204,'Waynesboro',-5,46),(8060,204,'Williamsburg',-5,46),(8061,204,'Winchester',-5,46),(8062,204,'Wise',-5,46),(8063,204,'Woodbridge',-5,46),(8064,204,'Woodstock',-5,46),(8065,204,'Wytheville',-5,46),(8066,204,'Yorktown',-5,46),(8067,204,'Aberdeen',-8,47),(8068,204,'Anacortes',-8,47),(8069,204,'Arlington',-8,47),(8070,204,'Auburn',-8,47),(8071,204,'Bellevue',-8,47),(8072,204,'Bellingham',-8,47),(8073,204,'Blaine',-8,47),(8074,204,'Bothell',-8,47),(8075,204,'Bremerton',-8,47),(8076,204,'Burlington',-8,47),(8077,204,'Centralia',-8,47),(8078,204,'Chehalis',-8,47),(8079,204,'Chelan',-8,47),(8080,204,'Clarkston',-8,47),(8081,204,'Colville',-8,47),(8082,204,'Coupeville',-8,47),(8083,204,'Deer Harbor',-8,47),(8084,204,'Des Moines',-8,47),(8085,204,'Dupont',-8,47),(8086,204,'Eastsound',-8,47),(8087,204,'Edmonds',-8,47),(8088,204,'Ellensburg',-8,47),(8089,204,'Enumclaw',-8,47),(8090,204,'Ephrata',-8,47),(8091,204,'Everett',-8,47),(8092,204,'Federal Way',-8,47),(8093,204,'Ferndale',-8,47),(8094,204,'Fife',-8,47),(8095,204,'Friday Harbor',-8,47),(8096,204,'Gig Harbor',-8,47),(8097,204,'Issaquah',-8,47),(8098,204,'Kalama',-8,47),(8099,204,'Kelso',-8,47),(8100,204,'Kennewick',-8,47),(8101,204,'Kent',-8,47),(8102,204,'Kettle Falls',-8,47),(8103,204,'Kirkland',-8,47),(8104,204,'Lacey',-8,47),(8105,204,'Lakewood',-8,47),(8106,204,'Leavenworth',-8,47),(8107,204,'Liberty Lake',-8,47),(8108,204,'Longview',-8,47),(8109,204,'Lynnwood',-8,47),(8110,204,'Marysville',-8,47),(8111,204,'Mercer Island',-8,47),(8112,204,'Monroe',-8,47),(8113,204,'Moses Lake',-8,47),(8114,204,'Mount Vernon',-8,47),(8115,204,'Mountlake Terrace',-8,47),(8116,204,'Mukilteo',-8,47),(8117,204,'Oak Harbor',-8,47),(8118,204,'Ocean Shores',-8,47),(8119,204,'Olympia*',-8,47),(8120,204,'Omak',-8,47),(8121,204,'Othello',-8,47),(8122,204,'Pasco',-8,47),(8123,204,'Port Angeles',-8,47),(8124,204,'Port Ludlow',-8,47),(8125,204,'Port Orchard',-8,47),(8126,204,'Poulsbo',-8,47),(8127,204,'Prosser',-8,47),(8128,204,'Pullman',-8,47),(8129,204,'Puyallup',-8,47),(8130,204,'Redmond',-8,47),(8131,204,'Renton',-8,47),(8132,204,'Richland',-8,47),(8133,204,'Ritzville',-8,47),(8134,204,'SeaTac',-8,47),(8135,204,'Seattle',-8,47),(8136,204,'Sequim',-8,47),(8137,204,'Silverdale',-8,47),(8138,204,'Snoqualmie',-8,47),(8139,204,'Snoqualmie Pass',-8,47),(8140,204,'Spokane',-8,47),(8141,204,'Stevenson',-8,47),(8142,204,'Sunnyside',-8,47),(8143,204,'Tacoma',-8,47),(8144,204,'Toppenish',-8,47),(8145,204,'Tukwila',-8,47),(8146,204,'Tumwater',-8,47),(8147,204,'Vancouver',-8,47),(8148,204,'Veradale',-8,47),(8149,204,'Walla Walla',-8,47),(8150,204,'Wenatchee',-8,47),(8151,204,'Winthrop',-8,47),(8152,204,'Woodland',-8,47),(8153,204,'Yakima',-8,47),(8154,204,'Zillah',-8,47),(8155,204,'Barboursville',-5,48),(8156,204,'Beaver',-5,48),(8157,204,'Beckley',-5,48),(8158,204,'Bluefield',-5,48),(8159,204,'Bridgeport',-5,48),(8160,204,'Buckhannon',-5,48),(8161,204,'Chapmanville',-5,48),(8162,204,'Charleston*',-5,48),(8163,204,'Clarksburg',-5,48),(8164,204,'Cross Lanes',-5,48),(8165,204,'Daniels',-5,48),(8166,204,'Dunbar',-5,48),(8167,204,'Elkins',-5,48),(8168,204,'Fairmont',-5,48),(8169,204,'Falling Waters',-5,48),(8170,204,'Fayetteville',-5,48),(8171,204,'Ghent',-5,48),(8172,204,'Harpers Ferry',-5,48),(8173,204,'Huntington',-5,48),(8174,204,'Hurricane',-5,48),(8175,204,'Keyser',-5,48),(8176,204,'Lewisburg',-5,48),(8177,204,'Martinsburg',-5,48),(8178,204,'Mineral Wells',-5,48),(8179,204,'Morgantown',-5,48),(8180,204,'Mount Hope',-5,48),(8181,204,'New Martinsville',-5,48),(8182,204,'Oak Hill',-5,48),(8183,204,'Parkersburg',-5,48),(8184,204,'Princeton',-5,48),(8185,204,'Ripley',-5,48),(8186,204,'Shepherdstown',-5,48),(8187,204,'Snowshoe',-5,48),(8188,204,'South Charleston',-5,48),(8189,204,'St. Albans',-5,48),(8190,204,'Star City',-5,48),(8191,204,'Summersville',-5,48),(8192,204,'Sutton',-5,48),(8193,204,'Teays',-5,48),(8194,204,'Triadelphia',-5,48),(8195,204,'Weirton',-5,48),(8196,204,'Weston',-5,48),(8197,204,'Wheeling',-5,48),(8198,204,'White Sulphur Springs',-5,48),(8199,204,'Williamstown',-5,48),(8200,204,'Abbotsford',-6,49),(8201,204,'Antigo',-6,49),(8202,204,'Appleton',-6,49),(8203,204,'Ashland',-6,49),(8204,204,'Baldwin',-6,49),(8205,204,'Baraboo',-6,49),(8206,204,'Beaver Dam',-6,49),(8207,204,'Beloit',-6,49),(8208,204,'Berlin',-6,49),(8209,204,'Black River Falls',-6,49),(8210,204,'Boscobel',-6,49),(8211,204,'Brookfield',-6,49),(8212,204,'Brown Deer',-6,49),(8213,204,'Burlington',-6,49),(8214,204,'Cameron',-6,49),(8215,204,'Chetek',-6,49),(8216,204,'Chippewa Falls',-6,49),(8217,204,'Columbus',-6,49),(8218,204,'De Forest',-6,49),(8219,204,'De Pere',-6,49),(8220,204,'Delafield',-6,49),(8221,204,'Delavan',-6,49),(8222,204,'Dodgeville',-6,49),(8223,204,'Eagle River',-6,49),(8224,204,'East Troy',-6,49),(8225,204,'Eau Claire',-6,49),(8226,204,'Edgerton',-6,49),(8227,204,'Egg Harbor',-6,49),(8228,204,'Elm Grove',-6,49),(8229,204,'Fond du Lac',-6,49),(8230,204,'Fort Atkinson',-6,49),(8231,204,'Germantown',-6,49),(8232,204,'Glendale',-6,49),(8233,204,'Green Bay',-6,49),(8234,204,'Green Lake',-6,49),(8235,204,'Hayward',-6,49),(8236,204,'Hudson',-6,49),(8237,204,'Hurley',-6,49),(8238,204,'Jackson',-6,49),(8239,204,'Janesville',-6,49),(8240,204,'Jefferson',-6,49),(8241,204,'Johnson Creek',-6,49),(8242,204,'Kaukauna',-6,49),(8243,204,'Kenosha',-6,49),(8244,204,'Kewaunee',-6,49),(8245,204,'Kimberly',-6,49),(8246,204,'Kohler',-6,49),(8247,204,'La Crosse',-6,49),(8248,204,'Ladysmith',-6,49),(8249,204,'Lake Delton',-6,49),(8250,204,'Lake Geneva',-6,49),(8251,204,'Lancaster',-6,49),(8252,204,'Lomira',-6,49),(8253,204,'Madison*',-6,49),(8254,204,'Manitowoc',-6,49),(8255,204,'Marinette',-6,49),(8256,204,'Marshfield',-6,49),(8257,204,'Mauston',-6,49),(8258,204,'Menomonie',-6,49),(8259,204,'Mequon',-6,49),(8260,204,'Merrill',-6,49),(8261,204,'Middleton',-6,49),(8262,204,'Milwaukee',-6,49),(8263,204,'Mineral Point',-6,49),(8264,204,'Minocqua',-6,49),(8265,204,'Monona',-6,49),(8266,204,'Monroe',-6,49),(8267,204,'Mosinee',-6,49),(8268,204,'Mukwonago',-6,49),(8269,204,'Neenah',-6,49),(8270,204,'New Berlin',-6,49),(8271,204,'New Lisbon',-6,49),(8272,204,'New Richmond',-6,49),(8273,204,'Oak Creek',-6,49),(8274,204,'Oconomowoc',-6,49),(8275,204,'Oconto',-6,49),(8276,204,'Onalaska',-6,49),(8277,204,'Oshkosh',-6,49),(8278,204,'Osseo',-6,49),(8279,204,'Pewaukee',-6,49),(8280,204,'Phillips',-6,49),(8281,204,'Platteville',-6,49),(8282,204,'Pleasant Prairie',-6,49),(8283,204,'Plover',-6,49),(8284,204,'Plymouth',-6,49),(8285,204,'Port Washington',-6,49),(8286,204,'Portage',-6,49),(8287,204,'Prairie du Chien',-6,49),(8288,204,'Racine',-6,49),(8289,204,'Reedsburg',-6,49),(8290,204,'Rhinelander',-6,49),(8291,204,'Rice Lake',-6,49),(8292,204,'Richland Center',-6,49),(8293,204,'Ripon',-6,49),(8294,204,'River Falls',-6,49),(8295,204,'Schofield',-6,49),(8296,204,'Shawano',-6,49),(8297,204,'Sheboygan',-6,49),(8298,204,'Siren',-6,49),(8299,204,'Sparta',-6,49),(8300,204,'Spooner',-6,49),(8301,204,'St. Croix Falls',-6,49),(8302,204,'Stanley',-6,49),(8303,204,'Stevens Point',-6,49),(8304,204,'Stoughton',-6,49),(8305,204,'Sturgeon Bay',-6,49),(8306,204,'Sturtevant',-6,49),(8307,204,'Sun Prairie',-6,49),(8308,204,'Superior',-6,49),(8309,204,'Tomah',-6,49),(8310,204,'Tomahawk',-6,49),(8311,204,'Turtle Lake',-6,49),(8312,204,'Verona',-6,49),(8313,204,'Washburn',-6,49),(8314,204,'Watertown',-6,49),(8315,204,'Waukesha',-6,49),(8316,204,'Waunakee',-6,49),(8317,204,'Waupaca',-6,49),(8318,204,'Waupun',-6,49),(8319,204,'Wausau',-6,49),(8320,204,'Wautoma',-6,49),(8321,204,'Wauwatosa',-6,49),(8322,204,'West Allis',-6,49),(8323,204,'West Bend',-6,49),(8324,204,'West Salem',-6,49),(8325,204,'Whitewater',-6,49),(8326,204,'Windsor',-6,49),(8327,204,'Wisconsin Dells',-6,49),(8328,204,'Wisconsin Rapids',-6,49),(8329,204,'Alpine',-7,50),(8330,204,'Buffalo',-7,50),(8331,204,'Casper',-7,50),(8332,204,'Cheyenne*',-7,50),(8333,204,'Cody',-7,50),(8334,204,'Douglas',-7,50),(8335,204,'Evanston',-7,50),(8336,204,'Evansville',-7,50),(8337,204,'Gillette',-7,50),(8338,204,'Green River',-7,50),(8339,204,'Jackson',-7,50),(8340,204,'Jackson Hole',-7,50),(8341,204,'Lander',-7,50),(8342,204,'Laramie',-7,50),(8343,204,'Little America',-7,50),(8344,204,'Lusk',-7,50),(8345,204,'Pinedale',-7,50),(8346,204,'Rawlins',-7,50),(8347,204,'Riverton',-7,50),(8348,204,'Rock Springs',-7,50),(8349,204,'Sheridan',-7,50),(8350,204,'Sundance',-7,50),(8351,204,'Teton Village',-7,50),(8352,204,'Thermopolis',-7,50),(8353,204,'Torrington',-7,50),(8354,204,'Wheatland',-7,50),(8355,204,'Worland',-7,50),(8357,13,'Kingston',10,69),(8358,13,'Barton Canberra',10,69),(8359,13,'Braddon Act',10,69),(8360,13,'Canberra North Act',10,69),(8361,13,'Dickson',10,69),(8362,13,'Red Hill',10,69),(8364,13,'Albury',9,70),(8371,13,'Taree',9,70),(8375,13,'Batemans Bay',9,70),(8376,13,'Goulburn',9,70),(8377,13,'Grafton',9,70),(8378,13,'Moree',9,70),(8379,13,'North Ryde',9,70),(8381,13,'Parkes',9,70),(8382,13,'Ballina',9,70),(8383,13,'Blackheath',9,70),(8384,13,'Chatswood',9,70),(8385,13,'Coogee',9,70),(8386,13,'Corowa',9,70),(8387,13,'Darlinghurst',9,70),(8388,13,'Double Bay',9,70),(8389,13,'Forster',9,70),(8390,13,'Glen Innes',9,70),(8391,13,'Hunter Valley',9,70),(8392,13,'Katoomba',9,70),(8393,13,'Maitland',9,70),(8394,13,'Moama',9,70),(8395,13,'Paddington Sydney',9,70),(8396,13,'Parramatta',9,70),(8397,13,'Pokolbin',9,70),(8398,13,'Potts Point Nsw',9,70),(8399,13,'Pyrmont',9,70),(8400,13,'Randwick',9,70),(8401,13,'Rosehill',9,70),(8402,13,'Scone',9,70),(8403,13,'South West Rocks',9,70),(8404,13,'Windsor',9,70),(8405,13,'Woolloomooloo',9,70),(8406,13,'Bankstown',9,70),(8407,13,'Bass Hill',9,70),(8408,13,'Bathurst',9,70),(8409,13,'Bega',9,70),(8410,13,'Berry',9,70),(8411,13,'Blacktown Nsw',9,70),(8412,13,'Bomaderry',9,70),(8413,13,'Adelaide River*',9,71),(8414,13,'Alawa',9,71),(8416,13,'Batchelor',9,71),(8417,13,'Bees Creek',9,71),(8418,13,'Casuarina',9,71),(8419,13,'Coolalinga',9,71),(8421,13,'Gove',9,71),(8422,13,'Howard Springs',9,71),(8423,13,'Humpty Doo',9,71),(8424,13,'Jabiru',9,71),(8426,13,'Nhulunbuy',9,71),(8427,13,'Nightcliff',9,71),(8428,13,'Palmerston',9,71),(8430,13,'Winnellie',9,71),(8433,13,'Surfers Paradise',10,72),(8434,13,'Port Douglas',10,72),(8441,13,'Hamilton Brisbane',10,72),(8442,13,'Airlie Beach',10,72),(8443,13,'Coolangatta',10,72),(8444,13,'Gladstone',10,72),(8445,13,'Queensland',10,72),(8446,13,'Caloundra',10,72),(8447,13,'Coolum Beach',10,72),(8448,13,'Goondiwindi',10,72),(8449,13,'Mission Beach',10,72),(8450,13,'Palm Cove',10,72),(8451,13,'Trinity Beach',10,72),(8452,13,'Urangan',10,72),(8453,13,'Warwick',10,72),(8454,13,'Annerley',10,72),(8455,13,'Ascot Brisbane',10,72),(8456,13,'Ashmore',10,72),(8458,13,'Bass Hill',10,72),(8459,13,'Boondall',10,72),(8460,13,'Broadbeach',10,72),(8461,13,'Broadbeach Qld',10,72),(8462,13,'Coolangatta Qld',10,72),(8463,13,'Gin Gin',10,72),(8464,13,'Grandchester',10,72),(8465,13,'Great Barrier R',10,72),(8466,13,'Gympie',10,72),(8467,13,'Hamilton Island',10,72),(8468,13,'Hervey',10,72),(8469,13,'Hervey Bay',10,72),(8470,13,'Ipswich',10,72),(8471,13,'Kangaroo Point',10,72),(8472,13,'Kuranda',10,72),(8473,13,'Main Beach',10,72),(8474,13,'Maleny',10,72),(8475,13,'Maroochydore',10,72),(8477,13,'Mermaid Waters',10,72),(8478,13,'Mooloolaba',10,72),(8480,13,'Mt Isa',10,72),(8482,13,'Mt Gambier',9,73),(8483,13,'Enfield',9,73),(8484,13,'Kingscote',9,73),(8485,13,'Naracoorte',9,73),(8486,13,'North Adelaide',9,73),(8487,13,'Apollo Bay',9,73),(8488,13,'Barmera',9,73),(8489,13,'Blair Athol',9,73),(8491,13,'Clare',9,73),(8493,13,'Glenelg',9,73),(8494,13,'Goolwa',9,73),(8495,13,'Keith',9,73),(8496,13,'Kingston',9,73),(8498,13,'Parkside',9,73),(8499,13,'Plympton',9,73),(8501,13,'Port Elliot',9,73),(8503,13,'Renmark',9,73),(8504,13,'Robe',9,73),(8505,13,'Rowland Flat South',9,73),(8506,13,'Tanunda',9,73),(8507,13,'Victor Harbor',9,73),(8511,13,'Bicheno',10,74),(8512,13,'George Town',10,74),(8513,13,'Glenorchy',10,74),(8514,13,'Queenstown',10,74),(8515,13,'Sandy Bay Hobart',10,74),(8516,13,'Strahan',10,74),(8517,13,'Berriedale',10,74),(8518,13,'Burnie',10,74),(8519,13,'Deloraine',10,74),(8520,13,'Four Mile Creek',10,74),(8521,13,'Poatina',10,74),(8522,13,'Port Arthur',10,74),(8523,13,'Prospect Vale',10,74),(8524,13,'Prostpect Val',10,74),(8525,13,'Richmond',10,74),(8526,13,'Scamander',10,74),(8527,13,'Seven Mile Beach',10,74),(8528,13,'Swansea',10,74),(8529,13,'Ulverstone',10,74),(8530,13,'Youngstown',10,74),(8534,13,'Shepparton',10,75),(8538,13,'Echuca',10,75),(8539,13,'Horsham',10,75),(8540,13,'Lakes Entrance',10,75),(8541,13,'Sale',10,75),(8542,13,'St Kilda',10,75),(8545,13,'East Melbourne',10,75),(8546,13,'Port Fairy',10,75),(8547,13,'South Yarra',10,75),(8548,13,'Traralgon',10,75),(8549,13,'Wangaratta',10,75),(8550,13,'Benalla',10,75),(8551,13,'Cowes',10,75),(8552,13,'Dandenong',10,75),(8553,13,'Hamilton Brisbane',10,75),(8554,13,'Lorne',10,75),(8555,13,'Port Campbell',10,75),(8556,13,'Prahran',10,75),(8557,13,'Ringwood',10,75),(8558,13,'Southbank',10,75),(8559,13,'St Kilda Melbourne',10,75),(8560,13,'Stawell',10,75),(8561,13,'Wantirna',10,75),(8562,13,'Wodonga',10,75),(8563,13,'Apollo Bay',10,75),(8564,13,'Ararat',10,75),(8565,13,'Attwood',10,75),(8566,13,'Beechworth',10,75),(8567,13,'Bendico',10,75),(8568,13,'Box Hill Melbourne',10,75),(8569,13,'Burwood',10,75),(8570,13,'Carlton',10,75),(8571,13,'Chirnside Park',10,75),(8572,13,'Colac',10,75),(8573,13,'Cranbourne',10,75),(8574,13,'Doncaster',10,75),(8575,13,'East St Kilda',10,75),(8576,13,'Essendon North',10,75),(8577,13,'Fairfield',10,75),(8578,13,'Falls Creek',10,75),(8579,13,'Fitzroy',10,75),(8580,13,'Flemington',10,75),(8581,13,'Perth*',8,76),(8586,13,'Margaret River',8,76),(8587,13,'Northbridge',8,76),(8589,13,'Busselton',8,76),(8590,13,'Como',8,76),(8594,13,'Pemberton',8,76),(8596,13,'South Perth',8,76),(8597,13,'Ascot',8,76),(8598,13,'Beckenham',8,76),(8600,13,'Cervantes',8,76),(8601,13,'Denham',8,76),(8602,13,'Denmark',8,76),(8603,13,'Dunsborough',8,76),(8604,13,'East Fremantle',8,76),(8605,13,'Ellenbrook',8,76),(8607,13,'Exmouth',8,76),(8608,13,'Hillary',8,76),(8609,13,'Kalbarri',8,76),(8611,13,'North Beach',8,76),(8612,13,'Perty',8,76),(8613,13,'Rockingham',8,76),(8614,13,'Subiaco',8,76),(8615,13,'Vellingup',8,76),(8616,37,'Airdrie',-7,52),(8617,37,'Athabasca',-7,52),(8618,37,'Banff',-7,52),(8619,37,'Brooks',-7,52),(8620,37,'Calgary',-7,52),(8621,37,'Canmore',-7,52),(8622,37,'Cochrane',-7,52),(8623,37,'Didsbury',-7,52),(8624,37,'Drayton Valley',-7,52),(8625,37,'Drumheller',-7,52),(8627,37,'Edson',-7,52),(8628,37,'Fort McMurray',-7,52),(8629,37,'Fort Saskatchewan',-7,52),(8630,37,'Grande Prairie',-7,52),(8631,37,'Hanna',-7,52),(8632,37,'High Level',-7,52),(8633,37,'High River',-7,52),(8634,37,'Hinton',-7,52),(8635,37,'Jasper',-7,52),(8636,37,'Kananaskis Village',-7,52),(8637,37,'Lake Louise',-7,52),(8638,37,'Leduc',-7,52),(8639,37,'Lethbridge',-7,52),(8640,37,'Lloydminster',-7,52),(8641,37,'Medicine Hat',-7,52),(8642,37,'Nisku',-7,52),(8643,37,'Okotoks',-7,52),(8644,37,'Olds',-7,52),(8645,37,'Pincher Creek',-7,52),(8646,37,'Red Deer',-7,52),(8647,37,'Rocky Mountain House',-7,52),(8648,37,'Sherwood Park',-7,52),(8649,37,'Slave Lake',-7,52),(8650,37,'Stettler',-7,52),(8651,37,'Stony Plain',-7,52),(8652,37,'Strathmore',-7,52),(8653,37,'Taber',-7,52),(8654,37,'Three Hills',-7,52),(8655,37,'Vermilion',-7,52),(8656,37,'Waterton Park',-7,52),(8657,37,'Wetaskiwin',-7,52),(8658,37,'Whitecourt',-7,52),(8659,37,'Abbotsford',-9,53),(8660,37,'Aldergrove',-9,53),(8661,37,'Blue River',-9,53),(8662,37,'Burnaby',-9,53),(8663,37,'Cache Creek',-9,53),(8664,37,'Campbell River',-9,53),(8665,37,'Castlegar',-9,53),(8666,37,'Chilliwack',-9,53),(8667,37,'Clearbrook',-9,53),(8668,37,'Clearwater',-9,53),(8669,37,'Comox',-9,53),(8670,37,'Coquitlam',-9,53),(8671,37,'Corner Brook',-9,53),(8672,37,'Courtenay',-9,53),(8673,37,'Cowichan Bay',-9,53),(8674,37,'Cranbrook',-9,53),(8675,37,'Dawson Creek',-9,53),(8676,37,'Delta',-9,53),(8677,37,'Duncan',-9,53),(8678,37,'Enderby',-9,53),(8679,37,'Fairmont Hot Springs',-9,53),(8680,37,'Fernie',-9,53),(8681,37,'Field',-9,53),(8682,37,'Fort Nelson',-9,53),(8683,37,'Fort Saint John',-9,53),(8684,37,'Golden',-9,53),(8685,37,'Grand Forks',-9,53),(8686,37,'Harrison Hot Springs',-9,53),(8687,37,'Hope',-9,53),(8688,37,'Invermere',-9,53),(8689,37,'Kamloops',-9,53),(8690,37,'Kelowna',-9,53),(8691,37,'Kimberley',-9,53),(8692,37,'Langley',-9,53),(8693,37,'Malahat',-9,53),(8694,37,'Maple Ridge',-9,53),(8695,37,'Mcbride',-9,53),(8696,37,'Merritt',-9,53),(8697,37,'Mission',-9,53),(8698,37,'Nanaimo',-9,53),(8699,37,'Nelson',-9,53),(8700,37,'New Westminster',-9,53),(8701,37,'North Vancouver',-9,53),(8702,37,'Osoyoos',-9,53),(8703,37,'Panorama',-9,53),(8704,37,'Parksville',-9,53),(8705,37,'Penticton',-9,53),(8706,37,'Pitt Meadows',-9,53),(8707,37,'Port Alberni',-9,53),(8708,37,'Port Coquitlam',-9,53),(8709,37,'Prince George',-9,53),(8710,37,'Prince Rupert',-9,53),(8711,37,'Princeton',-9,53),(8712,37,'Quesnel',-9,53),(8713,37,'Radium Hot Springs',-9,53),(8714,37,'Revelstoke',-9,53),(8715,37,'Richmond',-9,53),(8716,37,'Rogers Pass',-9,53),(8717,37,'Rossland',-9,53),(8718,37,'Saanichton',-9,53),(8719,37,'Salmon Arm',-9,53),(8720,37,'Salt Springs Island',-9,53),(8721,37,'Sicamous',-9,53),(8722,37,'Sidney',-9,53),(8723,37,'Simous',-9,53),(8724,37,'Smithers',-9,53),(8725,37,'Squamish',-9,53),(8726,37,'Sun Peaks',-9,53),(8727,37,'Surrey',-9,53),(8728,37,'Terrace',-9,53),(8729,37,'Tofino',-9,53),(8730,37,'Trail',-9,53),(8731,37,'Ucluelet',-9,53),(8732,37,'Valemount',-9,53),(8733,37,'Vancouver',-9,53),(8734,37,'Vernon',-9,53),(8736,37,'Westbank',-9,53),(8737,37,'Whistler',-9,53),(8738,37,'White Rock',-9,53),(8739,37,'Williams Lake',-9,53),(8740,37,'Brandon',-6,54),(8741,37,'Dauphin',-6,54),(8742,37,'Gimli',-6,54),(8743,37,'Morden',-6,54),(8744,37,'Portage la Prairie',-6,54),(8745,37,'Steinbach',-6,54),(8746,37,'Swan River',-6,54),(8747,37,'The Pas',-6,54),(8748,37,'Thompson',-6,54),(8749,37,'Winkler',-6,54),(8751,37,'Bathurst',-4,55),(8752,37,'Beresford',-4,55),(8753,37,'Campbellton',-4,55),(8754,37,'Dalhousie',-4,55),(8755,37,'Dieppe',-4,55),(8756,37,'Edmundston',-4,55),(8758,37,'French Village',-4,55),(8759,37,'Miramichi',-4,55),(8760,37,'Moncton',-4,55),(8761,37,'Sackville',-4,55),(8762,37,'St Andrews',-4,55),(8763,37,'St Andrews by the Sea',-4,55),(8764,37,'St John',-4,55),(8765,37,'Sussex',-4,55),(8766,37,'Woodstock',-4,55),(8767,37,'Corner Brook',-3,56),(8768,37,'Gander',-3,56),(8769,37,'Marystown',-3,56),(8771,37,'Stephenville',-3,56),(8772,37,'Fort Simpson',-7,57),(8773,37,'Fort Smith',-7,57),(8774,37,'Hay River',-7,57),(8775,37,'Inuvik',-7,57),(8776,37,'Norman Wells',-7,57),(8777,37,'Rae-Edzo',-7,57),(8779,37,'Amherst',-4,58),(8780,37,'Annapolis Royal',-4,58),(8781,37,'Bridgewater',-4,58),(8782,37,'Coldbrook',-4,58),(8783,37,'Dartmouth',-4,58),(8784,37,'Digby',-4,58),(8785,37,'Enfield',-4,58),(8786,37,'Greenwich',-4,58),(8788,37,'Ingonish Beach',-4,58),(8789,37,'Kingston',-4,58),(8790,37,'Liscombe Mills',-4,58),(8791,37,'Lunenburg',-4,58),(8792,37,'New Glasgow',-4,58),(8793,37,'New Minas',-4,58),(8794,37,'North Sydney',-4,58),(8795,37,'Port Hastings',-4,58),(8796,37,'Sydney',-4,58),(8797,37,'Truro',-4,58),(8798,37,'Waverley',-4,58),(8799,37,'White Point',-4,58),(8800,37,'Wolfville',-4,58),(8801,37,'Yarmouth',-4,58),(8802,37,'Baker Lake',-5,59),(8803,37,'Cambridge Bay',-5,59),(8804,37,'Cape Dorset',-5,59),(8805,37,'Coral Harbour',-5,59),(8806,37,'Gjoa Haven',-5,59),(8807,37,'Igloolik',-5,59),(8809,37,'Kimmirut',-5,59),(8810,37,'Pangnirtung',-5,59),(8811,37,'Pond Inlet',-5,59),(8812,37,'Rankin Inlet',-5,59),(8813,37,'Resolute Bay',-5,59),(8814,37,'Sanikiluaq',-5,59),(8815,37,'Taloyoak',-5,59),(8816,37,'Ajax',-5,60),(8817,37,'Algonquin',-5,60),(8818,37,'Arnprior',-5,60),(8819,37,'Aurora',-5,60),(8820,37,'Bancroft',-5,60),(8821,37,'Barrie',-5,60),(8822,37,'Belleville',-5,60),(8823,37,'Bowmanville',-5,60),(8824,37,'Bracebridge',-5,60),(8825,37,'Brampton',-5,60),(8826,37,'Brantford',-5,60),(8827,37,'Brockville',-5,60),(8828,37,'Burlington',-5,60),(8829,37,'Cambridge',-5,60),(8830,37,'Chatham',-5,60),(8831,37,'Cobourg',-5,60),(8832,37,'Cochrane',-5,60),(8833,37,'Collingwood',-5,60),(8834,37,'Cornwall',-5,60),(8835,37,'Downsview',-5,60),(8836,37,'Dryden',-5,60),(8837,37,'Etobicoke',-5,60),(8838,37,'Fort Erie',-5,60),(8839,37,'Fort Frances',-5,60),(8840,37,'Gananoque',-5,60),(8841,37,'Georgetown',-5,60),(8842,37,'Gloucester',-5,60),(8843,37,'Gravenhurst',-5,60),(8844,37,'Grimsby',-5,60),(8845,37,'Guelph',-5,60),(8846,37,'Haliburton',-5,60),(8847,37,'Hamilton',-5,60),(8848,37,'Hawkesbury',-5,60),(8849,37,'Huntsville',-5,60),(8850,37,'Ingersoll',-5,60),(8851,37,'Jordan',-5,60),(8852,37,'Kanata',-5,60),(8853,37,'Kapuskasing',-5,60),(8854,37,'Kemptville',-5,60),(8855,37,'Kenora',-5,60),(8856,37,'Kincardine',-5,60),(8857,37,'King City',-5,60),(8858,37,'Kingston',-5,60),(8859,37,'Kirkland Lake',-5,60),(8860,37,'Kitchener',-5,60),(8861,37,'Leamington',-5,60),(8862,37,'London',-5,60),(8863,37,'Marathon',-5,60),(8864,37,'Markham',-5,60),(8865,37,'Midland',-5,60),(8866,37,'Milton',-5,60),(8867,37,'Mississauga',-5,60),(8868,37,'Mount Hope',-5,60),(8869,37,'Muskoka',-5,60),(8870,37,'New Liskeard',-5,60),(8871,37,'Newmarket',-5,60),(8872,37,'Niagara Falls',-5,60),(8873,37,'Niagara on the Lake',-5,60),(8874,37,'North Bay',-5,60),(8875,37,'North York',-5,60),(8876,37,'Oakville',-5,60),(8877,37,'Orillia',-5,60),(8878,37,'Oshawa',-5,60),(8879,37,'Ottawa*',-5,60),(8880,37,'Owen Sound',-5,60),(8881,37,'Parry Sound',-5,60),(8882,37,'Pembroke',-5,60),(8883,37,'Petawawa',-5,60),(8884,37,'Peterborough',-5,60),(8885,37,'Pickering',-5,60),(8886,37,'Picton',-5,60),(8887,37,'Port Carling',-5,60),(8888,37,'Port Elgin',-5,60),(8889,37,'Port Hope',-5,60),(8890,37,'Renfrew',-5,60),(8891,37,'Richmond Hill',-5,60),(8892,37,'Ridgetown',-5,60),(8893,37,'Saint Catharines',-5,60),(8894,37,'Saint Thomas',-5,60),(8895,37,'Sarnia',-5,60),(8896,37,'Sault Sainte Marie',-5,60),(8897,37,'Scarborough',-5,60),(8898,37,'Simcoe',-5,60),(8899,37,'Smiths Falls',-5,60),(8900,37,'Stratford',-5,60),(8901,37,'Sudbury',-5,60),(8902,37,'Thunder Bay',-5,60),(8903,37,'Timmins',-5,60),(8905,37,'Trenton',-5,60),(8906,37,'Vaughan',-5,60),(8907,37,'Wallaceburg',-5,60),(8908,37,'Waterloo',-5,60),(8909,37,'Welland',-5,60),(8910,37,'Whitby',-5,60),(8911,37,'Windsor',-5,60),(8912,37,'Woodstock',-5,60),(8913,37,'Cardigan',-4,61),(8915,37,'Cornwall',-4,61),(8916,37,'Lakeside',-4,61),(8917,37,'Mayfield',-4,61),(8918,37,'Montague',-4,61),(8919,37,'O\'Leary',-4,61),(8920,37,'Summerside',-4,61),(8921,37,'Alma',-5,62),(8922,37,'Ancienne Lorette',-5,62),(8923,37,'Anjou',-5,62),(8924,37,'Baie-Comeau',-5,62),(8925,37,'Beauport',-5,62),(8926,37,'Beaupre',-5,62),(8927,37,'Berthierville',-5,62),(8928,37,'Blainville',-5,62),(8929,37,'Bonaventure',-5,62),(8930,37,'Boucherville',-5,62),(8931,37,'Brossard',-5,62),(8932,37,'Chicoutimi',-5,62),(8933,37,'Cowansville',-5,62),(8934,37,'Dorval',-5,62),(8935,37,'Drummondville',-5,62),(8936,37,'Gatineau',-5,62),(8937,37,'Hull',-5,62),(8938,37,'Jonquiere',-5,62),(8939,37,'La Malbaie Pointe-au-Pic',-5,62),(8940,37,'Laval',-5,62),(8941,37,'Levis',-5,62),(8942,37,'Longueuil',-5,62),(8943,37,'Magog',-5,62),(8944,37,'Matane',-5,62),(8945,37,'Mont-Laurier',-5,62),(8946,37,'Mont Tremblant',-5,62),(8947,37,'Montebello',-5,62),(8948,37,'Montreal',-5,62),(8949,37,'Nominingue',-5,62),(8950,37,'Pointe Claire',-5,62),(8952,37,'Rimouski',-5,62),(8953,37,'Riviere du Loup',-5,62),(8954,37,'Roberval',-5,62),(8955,37,'Rock Forest',-5,62),(8956,37,'Rouyn Noranda',-5,62),(8957,37,'St Antoine de Tilly',-5,62),(8958,37,'St Georges de Beauce',-5,62),(8959,37,'St Hyacinthe',-5,62),(8960,37,'St Jean sur Richelieu',-5,62),(8961,37,'St Jerome',-5,62),(8962,37,'St Laurent',-5,62),(8963,37,'St Leonard',-5,62),(8964,37,'St Liboire',-5,62),(8965,37,'St Marc sur Richelieu',-5,62),(8966,37,'Ste Adele',-5,62),(8967,37,'Ste Anne de Beaupre',-5,62),(8968,37,'Ste Anne des Monts',-5,62),(8969,37,'Ste Foy',-5,62),(8970,37,'Ste Helene de Bagot',-5,62),(8971,37,'Sept-Iles',-5,62),(8972,37,'Shawinigan',-5,62),(8973,37,'Sherbrooke',-5,62),(8974,37,'Sutton',-5,62),(8975,37,'Tadoussac',-5,62),(8976,37,'Thetford Mines',-5,62),(8977,37,'Trois-Rivieres',-5,62),(8978,37,'Val-d\'Or',-5,62),(8979,37,'Vaudreuil-Dorion',-5,62),(8980,37,'Estevan',-6,63),(8981,37,'Kindersley',-6,63),(8982,37,'Meadow Lake',-6,63),(8983,37,'Melfort',-6,63),(8984,37,'Moose Jaw',-6,63),(8985,37,'North Battleford',-6,63),(8986,37,'Prince Albert',-6,63),(8988,37,'Saskatoon',-6,63),(8989,37,'Swift Current',-6,63),(8990,37,'Weyburn',-6,63),(8991,37,'Yorkton',-6,63),(8992,37,'Carcross',-8,64),(8993,37,'Carmacks',-8,64),(8994,37,'Beaver Creek',-8,64),(8995,37,'Dawson City',-8,64),(8996,37,'Faro',-8,64),(8997,37,'Haines Junction',-8,64),(8998,37,'Marsh Lake',-8,64),(8999,37,'Old Crow',-8,64),(9000,37,'Pelly Crossing',-8,64),(9001,37,'Teslin',-8,64),(9002,37,'Watson Lake',-8,64),(9004,71,'Ammerschwihr',1,102),(9005,71,'Aubure',1,102),(9006,71,'Barr',1,102),(9007,71,'Bergheim',1,102),(9008,71,'Colmar',1,102),(9009,71,'Erstein',1,102),(9010,71,'Geispolsheim',1,102),(9011,71,'Gundershoffen',1,102),(9012,71,'Haguenau',1,102),(9013,71,'Hochfelden',1,102),(9014,71,'Hoerdt',1,102),(9015,71,'Illhaeusern',1,102),(9016,71,'Illzach',1,102),(9017,71,'Lapoutroie',1,102),(9018,71,'Marlenheim',1,102),(9019,71,'Molsheim',1,102),(9020,71,'Mulhouse',1,102),(9021,71,'Munster',1,102),(9022,71,'Neuf-Brisach',1,102),(9023,71,'Niederbronn-Les-Bains',1,102),(9024,71,'Obernai',1,102),(9025,71,'Ostwald',1,102),(9026,71,'Petite-Pierre',1,102),(9027,71,'Ribeauville',1,102),(9028,71,'Rouffach',1,102),(9029,71,'Saint-Jean-Saverne',1,102),(9030,71,'Saverne',1,102),(9031,71,'Sierentz',1,102),(9032,71,'Soufflenheim',1,102),(9034,71,'Selestat',1,102),(9035,71,'Thann',1,102),(9036,71,'Turckheim',1,102),(9037,71,'Vendenheim',1,102),(9038,71,'Ville',1,102),(9039,71,'Agen',1,103),(9040,71,'Auriac du Perigord',1,103),(9041,71,'Avensan',1,103),(9042,71,'Badefols-d\'Ans',1,103),(9043,71,'Bayonne',1,103),(9044,71,'Bergerac',1,103),(9045,71,'Beynac',1,103),(9046,71,'Biarritz',1,103),(9047,71,'Bidart',1,103),(9048,71,'Biron',1,103),(9049,71,'Biscarrosse',1,103),(9051,71,'Brantome',1,103),(9052,71,'Bugue',1,103),(9053,71,'Buzet-sur-Baise',1,103),(9054,71,'Cantenac',1,103),(9055,71,'Castillon-la-Bataille',1,103),(9056,71,'Cestas',1,103),(9057,71,'Creon',1,103),(9058,71,'Cudos',1,103),(9059,71,'Daglan',1,103),(9060,71,'Duras',1,103),(9061,71,'Eugenie-les-Bains',1,103),(9062,71,'Frayssinet',1,103),(9063,71,'Hossegor',1,103),(9064,71,'Hourtin',1,103),(9065,71,'Lacanau',1,103),(9066,71,'Langon',1,103),(9067,71,'Ludon-Medoc',1,103),(9068,71,'Lege-Cap-Ferret',1,103),(9069,71,'Margaux',1,103),(9070,71,'Maylis',1,103),(9071,71,'Meilhan-sur-Garonne',1,103),(9072,71,'Moncaret',1,103),(9073,71,'Montignac-Lascaux',1,103),(9074,71,'Merignac',1,103),(9075,71,'Pau',1,103),(9076,71,'Pauillac',1,103),(9077,71,'Pessac',1,103),(9078,71,'Peyzac-le-Moustier',1,103),(9079,71,'Plazac',1,103),(9080,71,'Preignac',1,103),(9081,71,'Riberac',1,103),(9082,71,'Sadirac',1,103),(9083,71,'Saint-Amand-de-Coly',1,103),(9084,71,'Saint-Emilion',1,103),(9085,71,'Saint-Germain-de-Belves',1,103),(9086,71,'Saint-Magne-de-Castillon',1,103),(9087,71,'Saint-Medard-en-Jalles',1,103),(9088,71,'Sainte Alvere',1,103),(9089,71,'Sainte-Croix-du-Mont',1,103),(9090,71,'Sainte-Foy-la-Grande',1,103),(9091,71,'Salignac-Eyvignes',1,103),(9092,71,'Sarlat-la-Caneda',1,103),(9093,71,'Savignac-les-Eglises',1,103),(9094,71,'Sos',1,103),(9095,71,'Soulac-sur-Mer',1,103),(9096,71,'Soustons',1,103),(9097,71,'St. Leon sur Vezere',1,103),(9098,71,'Talence',1,103),(9099,71,'Tonneins',1,103),(9100,71,'Uztaritz',1,103),(9101,71,'Verteillac',1,103),(9102,71,'Villeneuve',1,103),(9103,71,'Ambert',1,104),(9104,71,'Arlanc',1,104),(9105,71,'Aubiere',1,104),(9106,71,'Aurillac',1,104),(9107,71,'Brioude',1,104),(9108,71,'Chamalieres',1,104),(9109,71,'Chambon-sur-Lignon',1,104),(9110,71,'Clermont-Ferrand',1,104),(9111,71,'Cebazat',1,104),(9112,71,'Issoire',1,104),(9113,71,'Montaigut-le-Blanc',1,104),(9114,71,'Montlucon',1,104),(9115,71,'Pontaumur',1,104),(9116,71,'Royat',1,104),(9117,71,'Saint-Flour',1,104),(9118,71,'Saint-Gervais-d\'Auvergne',1,104),(9119,71,'Saint-Martin-Valmeroux',1,104),(9120,71,'Saugues',1,104),(9121,71,'Thiers',1,104),(9122,71,'Vensat',1,104),(9123,71,'Vichy',1,104),(9124,71,'Baud',1,105),(9125,71,'Belle-Ile-en-Mer',1,105),(9127,71,'Cancale',1,105),(9128,71,'Carnac',1,105),(9129,71,'Cesson-Sevigne',1,105),(9130,71,'Dinan',1,105),(9131,71,'Foret Fouesnant',1,105),(9132,71,'Guegon',1,105),(9133,71,'Ile de Brehat',1,105),(9134,71,'Lamballe',1,105),(9135,71,'Lanhelin',1,105),(9136,71,'Locmariaquer',1,105),(9137,71,'Morlaix',1,105),(9138,71,'Paimpol',1,105),(9139,71,'Pleine-Fougeres',1,105),(9140,71,'Plumaudan',1,105),(9141,71,'Pleneuf-Val-Andre',1,105),(9142,71,'Pontivy',1,105),(9143,71,'Quiberon',1,105),(9144,71,'Quimper',1,105),(9145,71,'Relecq-Kerhuon',1,105),(9146,71,'Rennes',1,105),(9147,71,'Roche-Bernard',1,105),(9148,71,'Rochefort-en-Terre',1,105),(9149,71,'Roscoff',1,105),(9150,71,'Saint-Briac-sur-Mer',1,105),(9151,71,'Saint-Brieuc',1,105),(9152,71,'Saint-Malo',1,105),(9153,71,'St.-Pierre-Quiberon',1,105),(9154,71,'Trinite-sur-Mer',1,105),(9155,71,'Vannes',1,105),(9156,71,'Beaune',1,106),(9157,71,'Bezouotte',1,106),(9158,71,'Chablis',1,106),(9159,71,'Chalon-sur-Saone',1,106),(9160,71,'Charolles',1,106),(9161,71,'Chateau-Chinon',1,106),(9162,71,'Chenoves',1,106),(9163,71,'Cluny',1,106),(9165,71,'Gevrey-Chambertin',1,106),(9166,71,'Ige',1,106),(9167,71,'Joigny',1,106),(9168,71,'La Rochepot',1,106),(9169,71,'Macon',1,106),(9170,71,'Mercurey',1,106),(9171,71,'Montceau-les-Mines',1,106),(9172,71,'Nolay',1,106),(9173,71,'Nuits Saint Georges',1,106),(9174,71,'Pouilly-en-Auxois',1,106),(9175,71,'Premeaux-Prissey',1,106),(9176,71,'Puligny-Montrachet',1,106),(9177,71,'Romaneche-Thorins',1,106),(9178,71,'Saint-Fargeau',1,106),(9179,71,'Saint-Jean-de-Losne',1,106),(9180,71,'Saint-Romain',1,106),(9181,71,'Santenay',1,106),(9182,71,'Saulieu',1,106),(9183,71,'Seignelay',1,106),(9184,71,'Sens',1,106),(9185,71,'Sigy-le-Chatel',1,106),(9186,71,'Taize',1,106),(9187,71,'Vallery',1,106),(9188,71,'Vergisson',1,106),(9189,71,'Vinzelles',1,106),(9190,71,'Vosne-Romanee',1,106),(9191,71,'Vougeot',1,106),(9192,71,'Allogny',1,107),(9193,71,'Amboise',1,107),(9194,71,'Artannes-sur-Indre',1,107),(9195,71,'Blois',1,107),(9196,71,'Blere',1,107),(9197,71,'Bourges',1,107),(9198,71,'Bourgueil',1,107),(9199,71,'Brehemont',1,107),(9200,71,'Chartres',1,107),(9201,71,'Chinon',1,107),(9202,71,'Chateaudun',1,107),(9203,71,'Courcelles de Touraine',1,107),(9204,71,'Ecrosnes',1,107),(9205,71,'Fondettes',1,107),(9206,71,'Grand Pressigny',1,107),(9207,71,'Jonvilliers',1,107),(9208,71,'Joue les Tours',1,107),(9209,71,'La Ferte-Saint-Aubin',1,107),(9210,71,'Lamotte-Beuvron',1,107),(9211,71,'Langeais',1,107),(9212,71,'Ligre',1,107),(9213,71,'Loches',1,107),(9214,71,'Lorcy',1,107),(9215,71,'Lurais',1,107),(9216,71,'Luynes',1,107),(9217,71,'Montlouis-sur-Loire',1,107),(9218,71,'Olivet',1,107),(9220,71,'Pontgouin',1,107),(9221,71,'Saint-Hilaire-en-Lignieres',1,107),(9222,71,'Sainte-Maure-de-Touraine',1,107),(9223,71,'Sancerre',1,107),(9224,71,'Suevres',1,107),(9225,71,'Tours',1,107),(9226,71,'Voves',1,107),(9227,71,'Ambonnay',1,108),(9228,71,'Bar-Sur-Aube',1,108),(9229,71,'Bayel',1,108),(9230,71,'Breuil',1,108),(9231,71,'Chaumont',1,108),(9232,71,'Chigny-les-Roses',1,108),(9233,71,'Chalons-en-Champagne',1,108),(9234,71,'Cramant',1,108),(9235,71,'Damery',1,108),(9236,71,'Dizy',1,108),(9237,71,'Ecueil',1,108),(9238,71,'Epernay',1,108),(9239,71,'Haybes',1,108),(9240,71,'La Neuville-Aux-Larris',1,108),(9241,71,'Matton-et-Clemency',1,108),(9242,71,'Reims',1,108),(9243,71,'Sezanne',1,108),(9244,71,'Troyes',1,108),(9245,71,'Vertus',1,108),(9246,71,'Vouziers',1,108),(9247,71,'Ajaccio',1,109),(9248,71,'Algajola',1,109),(9249,71,'Bonifacio',1,109),(9250,71,'Corte',1,109),(9251,71,'Erbalunga',1,109),(9252,71,'Furiani',1,109),(9253,71,'Ghisonaccia',1,109),(9254,71,'L\'Ile-Rousse',1,109),(9255,71,'Porto',1,109),(9256,71,'Porto-Vecchio',1,109),(9257,71,'Propriano',1,109),(9258,71,'Saint-Florent',1,109),(9259,71,'Solenzara',1,109),(9260,71,'Arbois',1,110),(9261,71,'Belfort',1,110),(9262,71,'Besancon',1,110),(9263,71,'Clairvaux-les-Lacs',1,110),(9264,71,'Fourgs',1,110),(9265,71,'Ronchamp',1,110),(9266,71,'Saint-Claude',1,110),(9267,71,'Villers-le-Lac',1,110),(9268,71,'Antony',1,111),(9269,71,'Argenteuil',1,111),(9270,71,'Asnieres',1,111),(9271,71,'Aubervilliers',1,111),(9272,71,'Bagneux',1,111),(9273,71,'Barbizon',1,111),(9274,71,'Bondy',1,111),(9275,71,'Boulogne-Billancourt',1,111),(9276,71,'Bourg-la-Reine',1,111),(9277,71,'Cergy',1,111),(9278,71,'Champagne-Sur-Oise',1,111),(9279,71,'Champigny-sur-Marne',1,111),(9280,71,'Champs-sur-Marne',1,111),(9281,71,'Chatou',1,111),(9282,71,'Chennevieres-sur-Marne',1,111),(9283,71,'Coulommiers',1,111),(9284,71,'Courbevoie',1,111),(9285,71,'Courneuve',1,111),(9286,71,'Creteil',1,111),(9287,71,'Draveil',1,111),(9288,71,'Defense',1,111),(9289,71,'Evry',1,111),(9290,71,'Fontainebleau',1,111),(9291,71,'Fontenay-sous-Bois',1,111),(9292,71,'Garenne-Colombes',1,111),(9293,71,'Genevraye',1,111),(9294,71,'Gennevilliers',1,111),(9295,71,'Gif-sur-Yvette',1,111),(9296,71,'Houilles',1,111),(9297,71,'Issy-les-Moulineaux',1,111),(9298,71,'Levallois-Perret',1,111),(9299,71,'Limeil-Brevannes',1,111),(9300,71,'Malakoff',1,111),(9301,71,'Marne-la-Vallee',1,111),(9302,71,'Massy',1,111),(9303,71,'Maurepas',1,111),(9304,71,'Montlhery',1,111),(9305,71,'Montreuil',1,111),(9306,71,'Nanterre',1,111),(9307,71,'Nemours',1,111),(9308,71,'Neuilly-sur-Seine',1,111),(9309,71,'Nogent-sur-Marne',1,111),(9310,71,'Orly',1,111),(9311,71,'Orsay',1,111),(9312,71,'Osny',1,111),(9313,71,'Palaiseau',1,111),(9314,71,'Pantin',1,111),(9316,71,'Pontoise',1,111),(9317,71,'Puteaux',1,111),(9318,71,'Rambouillet',1,111),(9319,71,'Roissy-en-France',1,111),(9320,71,'Rueil-Malmaison',1,111),(9321,71,'Rungis',1,111),(9322,71,'Saint Quentin en Yvelines',1,111),(9323,71,'Saint-Cloud',1,111),(9324,71,'Saint-Denis',1,111),(9325,71,'Saint-Germain-en-Laye',1,111),(9326,71,'Saint-Leu-la-Foret',1,111),(9327,71,'Saint-Mande',1,111),(9328,71,'Saint-Soupplets',1,111),(9329,71,'Sartrouville',1,111),(9330,71,'Suresnes',1,111),(9331,71,'Sevres',1,111),(9332,71,'Thieux',1,111),(9333,71,'Touquin',1,111),(9334,71,'Ulis',1,111),(9335,71,'Vanves',1,111),(9336,71,'Varenne-Saint-Hilaire',1,111),(9337,71,'Vaucresson',1,111),(9338,71,'Versailles',1,111),(9339,71,'Villejuif',1,111),(9340,71,'Villemarechal',1,111),(9341,71,'Vincennes',1,111),(9342,71,'Vitry-sur-Seine',1,111),(9343,71,'Velizy-Villacoublay',1,111),(9344,71,'Argeles-sur-Mer',1,112),(9345,71,'Arpaillargues',1,112),(9346,71,'Aumont-Aubrac',1,112),(9347,71,'Balaruc-les-Bains',1,112),(9348,71,'Barcares',1,112),(9349,71,'Barjac',1,112),(9350,71,'Bellegarde-du-Razes',1,112),(9351,71,'Beziers',1,112),(9352,71,'Cap-d\'Agde',1,112),(9353,71,'Carcassonne',1,112),(9354,71,'Clermont-l\'Herault',1,112),(9355,71,'Collioure',1,112),(9356,71,'Corconne',1,112),(9357,71,'Ceret',1,112),(9358,71,'Esperaza',1,112),(9359,71,'Feilluns',1,112),(9360,71,'Ferrals-les-Montagnes',1,112),(9361,71,'La Bastide-Puylaurent',1,112),(9362,71,'Lamalou-les-Bains',1,112),(9363,71,'Laudun-l\'Ardoise',1,112),(9364,71,'Lauret',1,112),(9365,71,'Lunel',1,112),(9366,71,'Mende',1,112),(9367,71,'Montfrin',1,112),(9368,71,'Montpellier',1,112),(9369,71,'Moux',1,112),(9370,71,'Narbonne',1,112),(9371,71,'Nimes',1,112),(9372,71,'Nissan-lez-Enserune',1,112),(9374,71,'Peyrolles',1,112),(9375,71,'Pont-de-Montvert',1,112),(9376,71,'Prades',1,112),(9377,71,'Pezenas',1,112),(9378,71,'Quillan',1,112),(9379,71,'Redorte',1,112),(9380,71,'Rennes-le-Chateau',1,112),(9381,71,'Roujan',1,112),(9382,71,'Saint-Genis-de-Fontaines',1,112),(9383,71,'Saint-Gilles',1,112),(9384,71,'Saint-Laurent-de-Cerdans',1,112),(9385,71,'Saint-Pons-de-Thomieres',1,112),(9386,71,'Saint-Victor-la-Coste',1,112),(9387,71,'Soulatge',1,112),(9388,71,'St. Andre de Roquelongue',1,112),(9389,71,'Sete',1,112),(9390,71,'Tautavel',1,112),(9391,71,'Uzes',1,112),(9392,71,'Valflaunes',1,112),(9393,71,'Vauvert',1,112),(9394,71,'Argentat',1,113),(9395,71,'Beaulieu-sur-Dordogne',1,113),(9396,71,'Brive',1,113),(9397,71,'Chalus',1,113),(9398,71,'Felletin',1,113),(9399,71,'Forges',1,113),(9401,71,'Neuvic',1,113),(9402,71,'Ars-Laquenexy',1,114),(9403,71,'Bresse',1,114),(9404,71,'Contrexville',1,114),(9405,71,'Creutzwald',1,114),(9406,71,'Domevre-sur-Aviere',1,114),(9407,71,'Epinal',1,114),(9408,71,'Gerardmer',1,114),(9409,71,'Heillecourt',1,114),(9410,71,'Longwy',1,114),(9411,71,'Metz',1,114),(9413,71,'Neufchateau',1,114),(9414,71,'Toul',1,114),(9415,71,'Ventron',1,114),(9416,71,'Vittel',1,114),(9417,71,'Wisembach',1,114),(9418,71,'Avranches',1,115),(9419,71,'Bayeux',1,115),(9420,71,'Caen',1,115),(9421,71,'Cagny',1,115),(9422,71,'Cambremer',1,115),(9423,71,'Camembert',1,115),(9425,71,'Courseulles-sur-Mer',1,115),(9426,71,'Cerences',1,115),(9427,71,'Deauville',1,115),(9428,71,'Ducey',1,115),(9429,71,'Honfleur',1,115),(9430,71,'L\'Aigle',1,115),(9431,71,'Longueville',1,115),(9432,71,'Pontorson',1,115),(9433,71,'Port-Bail',1,115),(9434,71,'Trouville',1,115),(9435,71,'Vergoncey',1,115),(9436,71,'Albi',1,116),(9437,71,'Aubin',1,116),(9438,71,'Auvillar',1,116),(9439,71,'Ax-les-Thermes',1,116),(9440,71,'Baziege',1,116),(9441,71,'Blagnac',1,116),(9442,71,'Brassac',1,116),(9443,71,'Cabanac',1,116),(9444,71,'Cahors',1,116),(9445,71,'Castelnau-de-Montmiral',1,116),(9446,71,'Castelsarrasin',1,116),(9447,71,'Caylus',1,116),(9448,71,'Condom',1,116),(9449,71,'Cordes-sur-Ciel',1,116),(9450,71,'Foix',1,116),(9451,71,'Fources',1,116),(9452,71,'Fousseret',1,116),(9453,71,'Gaillac',1,116),(9454,71,'Galoubet',1,116),(9455,71,'Gramat',1,116),(9456,71,'Graulhet',1,116),(9457,71,'Labruguiere',1,116),(9458,71,'Labege',1,116),(9459,71,'Lagrave',1,116),(9460,71,'Lisle-sur-Tarn',1,116),(9461,71,'Lourdes',1,116),(9462,71,'Martel',1,116),(9463,71,'Maubourguet',1,116),(9464,71,'Mauroux',1,116),(9465,71,'Miglos',1,116),(9466,71,'Monguilhem',1,116),(9467,71,'Montamel',1,116),(9468,71,'Mur-de-Barrez',1,116),(9469,71,'Najac',1,116),(9470,71,'Pamiers',1,116),(9471,71,'Parnac',1,116),(9472,71,'Pierrefitte-Nestalas',1,116),(9473,71,'Revel',1,116),(9474,71,'Rocamadour',1,116),(9475,71,'Saint Leons',1,116),(9476,71,'Saint-Amans-Soult',1,116),(9477,71,'Saint-Bauzeil',1,116),(9478,71,'Saint-Bertrand-de-Comminges',1,116),(9479,71,'Saint-Gaudens',1,116),(9480,71,'Saint-Lary-Soulan',1,116),(9481,71,'Saint-Matre',1,116),(9482,71,'Salles-Curan',1,116),(9483,71,'Salvagnac',1,116),(9484,71,'Soreze',1,116),(9485,71,'Souillac',1,116),(9486,71,'Terraube',1,116),(9488,71,'Villefranche-de-Lauragais',1,116),(9489,71,'Arras',1,117),(9490,71,'Boeschepe',1,117),(9491,71,'Boulogne',1,117),(9492,71,'Calais',1,117),(9493,71,'Cambrai',1,117),(9494,71,'Douai',1,117),(9496,71,'Hardelot',1,117),(9497,71,'Jenlain',1,117),(9498,71,'Lens',1,117),(9500,71,'Marcq en Baroeul',1,117),(9501,71,'Mons-en-Baroeul',1,117),(9502,71,'Montreuil',1,117),(9503,71,'Neuville-en-Ferrain',1,117),(9504,71,'Roubaix',1,117),(9505,71,'Touquet',1,117),(9506,71,'Villeneuve d\'Ascq',1,117),(9507,71,'Ancenis',1,118),(9508,71,'Angers',1,118),(9509,71,'Barre-de-Monts',1,118),(9510,71,'Bazoges-en-Pareds',1,118),(9511,71,'Beauvoir-sur-Mer',1,118),(9512,71,'Carquefou',1,118),(9513,71,'Chateaubriant',1,118),(9514,71,'Clisson',1,118),(9515,71,'Coulaines',1,118),(9516,71,'Doue-la-Fontaine',1,118),(9517,71,'Durtal',1,118),(9518,71,'Ferte-Bernard',1,118),(9519,71,'Geste',1,118),(9520,71,'Herbiers',1,118),(9521,71,'Jard-sur-Mer',1,118),(9522,71,'Laval',1,118),(9523,71,'Lege',1,118),(9524,71,'Mans',1,118),(9525,71,'Mouzillon',1,118),(9527,71,'Orvault',1,118),(9528,71,'Pont Chateau',1,118),(9529,71,'Sables-d\'Olonne',1,118),(9530,71,'Saint-Barthelemy d\'Anjou',1,118),(9531,71,'Saint-Cyr-en-Talmondais',1,118),(9532,71,'Saint-Hilaire-de-Riez',1,118),(9533,71,'Saumur',1,118),(9534,71,'Vallet',1,118),(9535,71,'Amiens',1,119),(9536,71,'Chantilly',1,119),(9537,71,'Remaisnil',1,119),(9538,71,'Saint-Quentin',1,119),(9539,71,'Senlis',1,119),(9540,71,'Angouleme',1,120),(9541,71,'Archiac',1,120),(9542,71,'Chaniers',1,120),(9543,71,'Chasseneuil',1,120),(9544,71,'Chatellerault',1,120),(9545,71,'Civray',1,120),(9546,71,'Cognac',1,120),(9547,71,'Curzay-sur-Vonne',1,120),(9548,71,'La Rochelle',1,120),(9549,71,'Loudun',1,120),(9550,71,'Mainxe',1,120),(9551,71,'Montmorillon',1,120),(9552,71,'Niort',1,120),(9553,71,'Poitiers',1,120),(9554,71,'Ranton',1,120),(9555,71,'Rochefort-sur-Mer',1,120),(9556,71,'Ruffec',1,120),(9557,71,'Saint-Porchaire',1,120),(9558,71,'Saintes',1,120),(9559,71,'Sauvagnac',1,120),(9560,71,'Semussac',1,120),(9561,71,'Agay',1,121),(9562,71,'Aix-en-Provence',1,121),(9563,71,'Antibes',1,121),(9564,71,'Apt',1,121),(9565,71,'Arles',1,121),(9566,71,'Aubagne',1,121),(9567,71,'Auribeau-sur-Siagne',1,121),(9568,71,'Avignon',1,121),(9569,71,'Bandol',1,121),(9570,71,'Beaumes-de-Venise',1,121),(9571,71,'Biot',1,121),(9572,71,'Bollene',1,121),(9573,71,'Bormes-les-Mimosas',1,121),(9574,71,'Bras',1,121),(9575,71,'Brignoles',1,121),(9576,71,'Cabrieres-d\'Avignon',1,121),(9577,71,'Cagnes-sur-Mer',1,121),(9578,71,'Cannes',1,121),(9579,71,'Cap d\'Antibes',1,121),(9580,71,'Cap-d\'Ail',1,121),(9581,71,'Carnoux-en-Provence',1,121),(9582,71,'Carpentras',1,121),(9583,71,'Carros',1,121),(9584,71,'Cassis',1,121),(9585,71,'Castellane',1,121),(9586,71,'Cavaillon',1,121),(9587,71,'Cavalaire-sur-Mer',1,121),(9588,71,'Chateauneuf-de-Gadagne',1,121),(9589,71,'Chateauneuf-du-Pape',1,121),(9590,71,'Chateaurenard',1,121),(9591,71,'Colle-sur-Loup',1,121),(9592,71,'Cotignac',1,121),(9593,71,'Crillon le Brave',1,121),(9594,71,'Digne-les-Bains',1,121),(9595,71,'Eze',1,121),(9596,71,'Forcalquier',1,121),(9597,71,'Frejus',1,121),(9598,71,'Gap',1,121),(9599,71,'Gardanne',1,121),(9600,71,'Garde',1,121),(9601,71,'Gassin',1,121),(9602,71,'Golfe-Juan',1,121),(9603,71,'Gordes',1,121),(9604,71,'Grasse',1,121),(9605,71,'Hyeres',1,121),(9606,71,'Isle-sur-la-Sorgue',1,121),(9607,71,'Issambress',1,121),(9608,71,'Istres',1,121),(9609,71,'Jouques',1,121),(9610,71,'Juan les Pins',1,121),(9611,71,'La Cadiere d\'Azur',1,121),(9612,71,'La Ciotat',1,121),(9613,71,'La Grave',1,121),(9614,71,'La Madone',1,121),(9615,71,'Lambesc',1,121),(9616,71,'Lorgues',1,121),(9617,71,'Luberon',1,121),(9618,71,'Mandelieu la Napoule',1,121),(9619,71,'Manosque',1,121),(9620,71,'Marignane',1,121),(9622,71,'Maussane les Alpilles',1,121),(9623,71,'Menerbes',1,121),(9624,71,'Menton',1,121),(9625,71,'Montauroux',1,121),(9626,71,'Morieres les Avignon',1,121),(9627,71,'Mougins',1,121),(9628,71,'Moustiers-Sainte-Marie',1,121),(9630,71,'Oppede',1,121),(9631,71,'Orange',1,121),(9632,71,'Peymeinade',1,121),(9633,71,'Peyruis',1,121),(9634,71,'Pierrefeu-du-Var',1,121),(9635,71,'Port-de-Bouc',1,121),(9636,71,'Port-Grimaud',1,121),(9637,71,'Rocbaron',1,121),(9638,71,'Rognes',1,121),(9639,71,'Roquebrune-Cap-Martin',1,121),(9640,71,'Roquebrune-sur-Argens',1,121),(9641,71,'Roussillon',1,121),(9642,71,'Saint-Aygulf',1,121),(9643,71,'Saint-Bonnet-du-Gard',1,121),(9644,71,'Saint-Disdier-en-Devoluy',1,121),(9645,71,'Saint-Jean-Cap-Ferrat',1,121),(9646,71,'Saint-Jeannet',1,121),(9647,71,'Saint-Laurent-du-Var',1,121),(9648,71,'Saint-Paul',1,121),(9649,71,'Saint-Paul-de-Vence',1,121),(9650,71,'Saint-Raphael',1,121),(9651,71,'Saint-Remy-de-Provence',1,121),(9652,71,'Saint-Saturnin-les-Apt',1,121),(9653,71,'Sainte-Maxime',1,121),(9654,71,'Salon de Provence',1,121),(9655,71,'Sanary-sur-Mer',1,121),(9656,71,'Sarrians',1,121),(9657,71,'Sausset-Les-Pins',1,121),(9658,71,'Seillans',1,121),(9659,71,'Serre-Chevalier',1,121),(9660,71,'Seyne-sur-Mer',1,121),(9661,71,'Sophia Antipolis',1,121),(9662,71,'St. Martin de Castillon',1,121),(9663,71,'St. Tropez',1,121),(9664,71,'Tarascon',1,121),(9665,71,'Thor',1,121),(9666,71,'Theoule-sur-Mer',1,121),(9668,71,'Tourtour',1,121),(9669,71,'Valbonne',1,121),(9670,71,'Vallauris',1,121),(9671,71,'Varages',1,121),(9672,71,'Vars',1,121),(9673,71,'Vence',1,121),(9674,71,'Ventabren',1,121),(9675,71,'Villefranche',1,121),(9676,71,'Visan',1,121),(9677,71,'Aix-les-Bains',1,122),(9678,71,'Albertville',1,122),(9679,71,'Allevard',1,122),(9680,71,'Allinges',1,122),(9681,71,'Annecy',1,122),(9682,71,'Annecy le Vieux',1,122),(9683,71,'Annemasse',1,122),(9684,71,'Archamps',1,122),(9685,71,'Aussois',1,122),(9686,71,'Avoriaz',1,122),(9687,71,'Beaujeu',1,122),(9688,71,'Bellegarde sur Valserine',1,122),(9689,71,'Bellevaux',1,122),(9690,71,'Beynost',1,122),(9691,71,'Bons-en-Chablais',1,122),(9692,71,'Chambery',1,122),(9693,71,'Chamonix',1,122),(9694,71,'Champagny-en-Vanoise',1,122),(9695,71,'Chatel',1,122),(9696,71,'Cheylas',1,122),(9697,71,'Chenas',1,122),(9698,71,'Claix',1,122),(9699,71,'Cluses',1,122),(9700,71,'Combloux',1,122),(9701,71,'Contamines-Montjoie',1,122),(9702,71,'Courchevel',1,122),(9703,71,'Cours-la-Ville',1,122),(9704,71,'Cremieu',1,122),(9705,71,'Crolles',1,122),(9706,71,'Cruet',1,122),(9707,71,'Dieulefit',1,122),(9708,71,'Divonne-les-Bains',1,122),(9709,71,'Ecully',1,122),(9710,71,'Evian',1,122),(9711,71,'Faverges',1,122),(9712,71,'Fontcouverte-la-Toussuire',1,122),(9713,71,'Getss',1,122),(9715,71,'Grane',1,122),(9716,71,'Joyeuse',1,122),(9717,71,'La Clusaz',1,122),(9718,71,'Laurac-en-Vivarais',1,122),(9719,71,'Les Houches',1,122),(9720,71,'Lozanne',1,122),(9722,71,'Marnaz',1,122),(9723,71,'Megeve',1,122),(9724,71,'Meribel',1,122),(9725,71,'Messery',1,122),(9726,71,'Meylan',1,122),(9727,71,'Mieussy',1,122),(9728,71,'Mijoux',1,122),(9729,71,'Mirabel-aux-Baronnies',1,122),(9730,71,'Montbrun-les-Bains',1,122),(9731,71,'Montelimar',1,122),(9732,71,'Morzine',1,122),(9733,71,'Menuiress',1,122),(9734,71,'Nyons',1,122),(9735,71,'Oullins',1,122),(9736,71,'Oyonnax',1,122),(9737,71,'Passy',1,122),(9738,71,'Peisey-Nancroix',1,122),(9739,71,'Plagne',1,122),(9740,71,'Portes-les-Valence',1,122),(9741,71,'Roanne',1,122),(9742,71,'Rumilly',1,122),(9743,71,'Ruoms',1,122),(9744,71,'Saint-Agreve',1,122),(9745,71,'Saint-Etienne',1,122),(9746,71,'Saint-Galmier',1,122),(9747,71,'Saint-Germain-sur-l\'Arbresle',1,122),(9748,71,'Saint-Gervais',1,122),(9749,71,'Saint-Jean-de-Maurienne',1,122),(9750,71,'Saint-Jean-de-Sixt',1,122),(9751,71,'Saint-Jean-en-Royans',1,122),(9752,71,'Saint-Julien-en-Genevois',1,122),(9753,71,'Saint-Martin-d\'Ardeche',1,122),(9754,71,'Saint-Martin-de-Belleville',1,122),(9755,71,'Saint-Paul-les-Trois-Chateaux',1,122),(9756,71,'Sainte-Foy-Tarentaise',1,122),(9757,71,'Saisiess',1,122),(9758,71,'Sallanches',1,122),(9759,71,'Samoens',1,122),(9760,71,'Scionzier',1,122),(9761,71,'Seyssuel',1,122),(9762,71,'Tain-l\'Hermitage',1,122),(9763,71,'Talloires',1,122),(9764,71,'Thorens-Glieres',1,122),(9765,71,'Tignes',1,122),(9766,71,'Uriage-les-bains',1,122),(9767,71,'Val-d\'Isere',1,122),(9768,71,'Val-Thorens',1,122),(9770,71,'Vallon-Pont-d\'Arc',1,122),(9771,71,'Vals-les-Bains',1,122),(9772,71,'Vaulx-en-Velin',1,122),(9773,71,'Villard-de-Lans',1,122),(9774,71,'Villard-Reculas',1,122),(9775,71,'Villeurbanne',1,122),(9776,71,'Villie-Morgon',1,122),(9777,71,'Voiron',1,122),(9778,71,'Venosc',1,122),(9779,71,'Dieppe',1,123),(9780,71,'Evreux',1,123),(9781,71,'Giverny',1,123),(9782,71,'Havre',1,123),(9783,71,'Neufchatel-en-Bray',1,123),(9785,71,'St.-Saens',1,123),(9786,71,'Treport',1,123),(9787,71,'Vernon',1,123),(9788,76,'Aalen',1,124),(9789,76,'Aichtal',1,124),(9790,76,'Allensbach',1,124),(9791,76,'Alpirsbach',1,124),(9792,76,'Altensteig',1,124),(9793,76,'Backnang',1,124),(9794,76,'Bad Wildbad',1,124),(9795,76,'Baden-Baden',1,124),(9796,76,'Balingen',1,124),(9797,76,'Beilstein',1,124),(9798,76,'Biberach',1,124),(9799,76,'Blaubeuren',1,124),(9800,76,'Breisach',1,124),(9801,76,'Breitnau',1,124),(9802,76,'Bretten',1,124),(9803,76,'Buhl',1,124),(9804,76,'Dornstadt',1,124),(9805,76,'Dornstetten',1,124),(9806,76,'Eberdingen-Hochdorf',1,124),(9807,76,'Esslingen',1,124),(9808,76,'Ettlingen',1,124),(9809,76,'Filderstadt',1,124),(9810,76,'Freiburg',1,124),(9811,76,'Friedrichshafen',1,124),(9812,76,'Furtwangen',1,124),(9813,76,'Gottmadingen',1,124),(9814,76,'Hechingen',1,124),(9815,76,'Heidelberg',1,124),(9816,76,'Heidenheim',1,124),(9817,76,'Heilbronn',1,124),(9818,76,'Heiligkreuzsteinach',1,124),(9819,76,'Herrenberg',1,124),(9820,76,'Ingelfingen-Criesbach',1,124),(9821,76,'Ispringen',1,124),(9822,76,'Kandern',1,124),(9823,76,'Karlsruhe',1,124),(9824,76,'Kirchheim',1,124),(9825,76,'Konstanz',1,124),(9826,76,'Lahr',1,124),(9827,76,'Laudenbach',1,124),(9828,76,'Leinfelden-Echterdingen',1,124),(9829,76,'Lorch',1,124),(9830,76,'Malterdingen',1,124),(9832,76,'Meckenbeuren',1,124),(9833,76,'Metzingen',1,124),(9834,76,'Nagold',1,124),(9835,76,'Pforzheim',1,124),(9836,76,'Pleidelsheim',1,124),(9837,76,'Rastatt',1,124),(9838,76,'Ravensburg',1,124),(9839,76,'Remseck',1,124),(9840,76,'Reutlingen',1,124),(9841,76,'Schwaebisch Gmuend',1,124),(9842,76,'Schwenningen',1,124),(9843,76,'Schwetzingen',1,124),(9844,76,'Schwabisch Hall',1,124),(9845,76,'Sindelfingen',1,124),(9846,76,'Singen',1,124),(9848,76,'Titisee-Neustadt',1,124),(9849,76,'Tubingen',1,124),(9850,76,'Ulm',1,124),(9851,76,'Waiblingen',1,124),(9852,76,'Waldbronn',1,124),(9853,76,'Wallduern',1,124),(9854,76,'Weinstadt-Beutelsbach',1,124),(9855,76,'Wertheim',1,124),(9856,76,'Winnenden',1,124),(9857,76,'Ansbach',1,125),(9858,76,'Aschaffenburg',1,125),(9859,76,'Augsburg',1,125),(9860,76,'Bad Neustadt',1,125),(9861,76,'Bamberg',1,125),(9862,76,'Bayreuth',1,125),(9863,76,'Berchtesgaden',1,125),(9864,76,'Bernried',1,125),(9865,76,'Bischofsheim an der Rhon',1,125),(9866,76,'Buchdorf',1,125),(9867,76,'Burgebrach',1,125),(9868,76,'Burghausen',1,125),(9869,76,'Coburg',1,125),(9870,76,'Dachau',1,125),(9871,76,'Ebersberg',1,125),(9872,76,'Eching',1,125),(9873,76,'Erding',1,125),(9874,76,'Erlangen',1,125),(9875,76,'Feldkirchen-Westerham',1,125),(9876,76,'Flintsbach',1,125),(9877,76,'Forchheim',1,125),(9878,76,'Frasdorf',1,125),(9879,76,'Freising',1,125),(9880,76,'Furth',1,125),(9881,76,'Fussen',1,125),(9882,76,'Garching',1,125),(9883,76,'Garmisch-Partenkirchen',1,125),(9884,76,'Grafenwohr',1,125),(9885,76,'Grasbrunn',1,125),(9886,76,'Grafelfing',1,125),(9887,76,'Grobenzell',1,125),(9888,76,'Gunzburg',1,125),(9889,76,'Hallbergmoos',1,125),(9890,76,'Hausham',1,125),(9891,76,'Hof',1,125),(9892,76,'Hosbach',1,125),(9893,76,'Ingolstadt',1,125),(9894,76,'Ismaning',1,125),(9895,76,'Landshut',1,125),(9896,76,'Lindau',1,125),(9897,76,'Marktheidenfeld',1,125),(9898,76,'Massing',1,125),(9899,76,'Mellrichstadt',1,125),(9900,76,'Memmingen',1,125),(9902,76,'Murnau',1,125),(9903,76,'Nabburg',1,125),(9904,76,'Neumarkt',1,125),(9905,76,'Niedernberg',1,125),(9906,76,'Nuremberg',1,125),(9907,76,'Oberammergau',1,125),(9908,76,'Oberaudorf',1,125),(9909,76,'Obernburg',1,125),(9910,76,'Passau',1,125),(9911,76,'Peiting',1,125),(9912,76,'Pfaffenhofen',1,125),(9913,76,'Prien am Chiemsee',1,125),(9914,76,'Regensburg',1,125),(9915,76,'Rosenheim',1,125),(9916,76,'Rothenburg ob der Tauber',1,125),(9917,76,'Ruhpolding',1,125),(9918,76,'Schrobenhausen',1,125),(9919,76,'Schwangau',1,125),(9920,76,'Schweinfurt',1,125),(9921,76,'Seebruck',1,125),(9922,76,'Starnberg',1,125),(9923,76,'Sulzfeld',1,125),(9924,76,'Warmensteinach',1,125),(9925,76,'Warzfelden',1,125),(9926,76,'Wurzburg',1,125),(9927,76,'Zirndorf',1,125),(9928,76,'Zwiesel',1,125),(9930,76,'Bad Wilsnack',1,127),(9931,76,'Cottbus',1,127),(9932,76,'Oranienburg',1,127),(9933,76,'Potsdam',1,127),(9934,76,'Teltow',1,127),(9935,76,'Wittstock',1,127),(9938,76,'Bad Homburg',1,130),(9939,76,'Bad Nauheim',1,130),(9940,76,'Bad Soden',1,130),(9941,76,'Butzbach',1,130),(9942,76,'Budingen',1,130),(9943,76,'Darmstadt',1,130),(9944,76,'Dieburg',1,130),(9945,76,'Erbach',1,130),(9946,76,'Eschborn',1,130),(9947,76,'Frankenberg',1,130),(9949,76,'Friedberg',1,130),(9950,76,'Geisenheim',1,130),(9951,76,'Giessen',1,130),(9952,76,'Gorsroth',1,130),(9953,76,'Hanau',1,130),(9954,76,'Heusenstamm',1,130),(9955,76,'Hofheim',1,130),(9957,76,'Kelsterbach',1,130),(9958,76,'Kiedrich',1,130),(9959,76,'Langen',1,130),(9960,76,'Limburg',1,130),(9961,76,'Marburg',1,130),(9962,76,'Moerfelden-Walldorf',1,130),(9963,76,'Reichelsheim',1,130),(9964,76,'Russelsheim',1,130),(9965,76,'Taunusstein',1,130),(9966,76,'Usingen',1,130),(9968,76,'Zeppelinheim',1,130),(9969,76,'Greifswald',1,131),(9970,76,'Kemnitz',1,131),(9972,76,'Schwerin',1,131),(9973,76,'Trollenhagen',1,131),(9974,76,'Bad Bentheim',1,132),(9975,76,'Braunschweig',1,132),(9976,76,'Burgdorf',1,132),(9977,76,'Buxtehude',1,132),(9978,76,'Celle',1,132),(9979,76,'Clausthal-Zellerfeld',1,132),(9980,76,'Cremlingen',1,132),(9981,76,'Cuxhaven',1,132),(9982,76,'Drochtersen',1,132),(9983,76,'Dorpen',1,132),(9985,76,'Fischerhude',1,132),(9986,76,'Garbsen',1,132),(9987,76,'Gottingen',1,132),(9988,76,'Hameln',1,132),(9990,76,'Hildesheim',1,132),(9991,76,'Hodenhagen',1,132),(9992,76,'Hohne',1,132),(9993,76,'Isenbuttel',1,132),(9994,76,'Isernhagen',1,132),(9995,76,'Konigslutter',1,132),(9996,76,'Lehrte',1,132),(9997,76,'Luneburg',1,132),(9998,76,'Meppen',1,132),(9999,76,'Munster',1,132),(10000,76,'Oldenburg',1,132),(10001,76,'Osnabruck',1,132),(10002,76,'Osterholz-Scharmbeck',1,132),(10003,76,'Pattensen',1,132),(10004,76,'Peine',1,132),(10005,76,'Rastede',1,132),(10006,76,'Salzhemmendorf',1,132),(10007,76,'Sarstedt',1,132),(10008,76,'Springe',1,132),(10009,76,'Vechta',1,132),(10010,76,'Verden',1,132),(10011,76,'Wolfenbuttel',1,132),(10012,76,'Wolfsburg',1,132),(10013,76,'Aachen',1,133),(10014,76,'Augustdorf',1,133),(10015,76,'Bad Salzuflen',1,133),(10016,76,'Bergheim',1,133),(10017,76,'Bergisch-Gladbach',1,133),(10018,76,'Bielefeld',1,133),(10019,76,'Bochum',1,133),(10021,76,'Borgholzhausen',1,133),(10022,76,'Bottrop',1,133),(10023,76,'Burscheid',1,133),(10024,76,'Castrop-Rauxel',1,133),(10026,76,'Dortmund',1,133),(10027,76,'Dueren',1,133),(10030,76,'Erkrath',1,133),(10032,76,'Geseke',1,133),(10033,76,'Gladbeck',1,133),(10034,76,'Grevenbroich',1,133),(10035,76,'Guetersloh',1,133),(10036,76,'Haan',1,133),(10037,76,'Hagen',1,133),(10038,76,'Hemer',1,133),(10039,76,'Hennef',1,133),(10040,76,'Herne',1,133),(10041,76,'Huerth',1,133),(10042,76,'Hoxter',1,133),(10043,76,'Hullhorst',1,133),(10044,76,'Iserlohn',1,133),(10045,76,'Issum',1,133),(10046,76,'Kaarst',1,133),(10047,76,'Krefeld',1,133),(10048,76,'Leverkusen',1,133),(10049,76,'Luenen',1,133),(10050,76,'Ludenscheid',1,133),(10051,76,'Marl',1,133),(10052,76,'Mechernich',1,133),(10053,76,'Mettmann',1,133),(10054,76,'Minden',1,133),(10055,76,'Monschau',1,133),(10056,76,'Monchengladbach',1,133),(10057,76,'Mulheim',1,133),(10058,76,'Munster',1,133),(10059,76,'Nettetal',1,133),(10060,76,'Neuss',1,133),(10061,76,'Paderborn',1,133),(10062,76,'Ratingen',1,133),(10063,76,'Reken',1,133),(10064,76,'Solingen',1,133),(10065,76,'St. Augustin',1,133),(10066,76,'Stolberg',1,133),(10067,76,'Velbert',1,133),(10068,76,'Warstein',1,133),(10069,76,'Wesel',1,133),(10070,76,'Wipperfuerth',1,133),(10071,76,'Wuppertal',1,133),(10072,76,'Zulpich',1,133),(10073,76,'Alzey',1,134),(10074,76,'Andernach',1,134),(10075,76,'Bacharach',1,134),(10076,76,'Bad Honningen',1,134),(10077,76,'Bad Kreuznach',1,134),(10078,76,'Bad Neuenahr-Ahrweiler',1,134),(10079,76,'Bad Sobernheim',1,134),(10080,76,'Bingen',1,134),(10081,76,'Bitburg',1,134),(10082,76,'Briedel',1,134),(10083,76,'Cochem',1,134),(10084,76,'Deidesheim',1,134),(10085,76,'Eisenberg',1,134),(10086,76,'Frankenthal',1,134),(10087,76,'Idar-Oberstein',1,134),(10088,76,'Ingelheim',1,134),(10089,76,'Kaiserslautern',1,134),(10090,76,'Koblenz',1,134),(10091,76,'Ludwigshafen',1,134),(10092,76,'Mainz',1,134),(10093,76,'Montabaur',1,134),(10094,76,'Munstermaifeld',1,134),(10095,76,'Nurburg',1,134),(10096,76,'Osthofen',1,134),(10097,76,'Puderbach',1,134),(10098,76,'Ramstein Miesenbach',1,134),(10099,76,'Ransbach-Baumbach',1,134),(10100,76,'Trier',1,134),(10101,76,'Windhagen',1,134),(10102,76,'Merzig',1,135),(10103,76,'Neunkirchen',1,135),(10104,76,'Puttlingen',1,135),(10105,76,'Saarbrucken',1,135),(10106,76,'St. Ingbert',1,135),(10107,76,'Wadgassen',1,135),(10108,76,'Aue',1,136),(10109,76,'Bautzen',1,136),(10110,76,'Chemnitz',1,136),(10111,76,'Colditz',1,136),(10113,76,'Freiberg',1,136),(10115,76,'Meissen',1,136),(10116,76,'Zwickau',1,136),(10117,76,'Barleben',1,137),(10118,76,'Halle',1,137),(10120,76,'Naumburg',1,137),(10121,76,'Quedlinburg',1,137),(10122,76,'Stedten',1,137),(10123,76,'Wittenberg',1,137),(10124,76,'Ahrensburg',1,138),(10125,76,'Barmstedt',1,138),(10126,76,'Flensburg',1,138),(10127,76,'Hartenholm',1,138),(10128,76,'Itzehoe',1,138),(10131,76,'Neumunster',1,138),(10132,76,'Rendsburg',1,138),(10133,76,'Schuby',1,138),(10134,76,'Seebull',1,138),(10135,76,'Tornesch',1,138),(10136,76,'Erfurt',1,139),(10137,76,'Gotha',1,139),(10138,76,'Ilmenau',1,139),(10139,76,'Jena',1,139),(10140,76,'Nordhausen',1,139),(10141,76,'Suhl',1,139),(10142,76,'Weimar',1,139),(10143,145,'Albany',12,77),(10145,145,'Avondale',12,77),(10146,145,'Devonport',12,77),(10147,145,'East Tamaki',12,77),(10148,145,'Ellerslie',12,77),(10149,145,'Epsom',12,77),(10150,145,'Glen Eden',12,77),(10151,145,'Glen Innes',12,77),(10152,145,'Glendowie',12,77),(10153,145,'Glenfield',12,77),(10154,145,'Great Barrier Island',12,77),(10155,145,'Greenlane',12,77),(10156,145,'Hahei',12,77),(10157,145,'Helensville',12,77),(10158,145,'Henderson',12,77),(10159,145,'Hobsonville',12,77),(10160,145,'Howick',12,77),(10161,145,'Kaikohe',12,77),(10162,145,'Maketu',12,77),(10163,145,'Mangawhai',12,77),(10164,145,'Manukau',12,77),(10165,145,'Manurewa',12,77),(10166,145,'Maraetai',12,77),(10167,145,'Massey',12,77),(10168,145,'Milford',12,77),(10169,145,'Mount Albert',12,77),(10170,145,'Mount Eden',12,77),(10171,145,'Mount Wellington',12,77),(10172,145,'New Lynn',12,77),(10173,145,'Newmarket',12,77),(10174,145,'Newton',12,77),(10175,145,'North Shore',12,77),(10176,145,'Northcote',12,77),(10177,145,'Onehunga',12,77),(10178,145,'Orakei',12,77),(10179,145,'Orewa',12,77),(10180,145,'Otahuhu',12,77),(10181,145,'Pakuranga',12,77),(10182,145,'Panmure',12,77),(10183,145,'Papakura',12,77),(10184,145,'Papatoetoe',12,77),(10185,145,'Parnell',12,77),(10186,145,'Penrose',12,77),(10187,145,'Ponsonby',12,77),(10188,145,'Pukekohe',12,77),(10189,145,'Remuera',12,77),(10190,145,'Royal Oak',12,77),(10191,145,'Silverdale',12,77),(10192,145,'Takapuna',12,77),(10193,145,'Taumarunui',12,77),(10194,145,'Te Aroha',12,77),(10195,145,'Te Kuiti',12,77),(10196,145,'Te Rapa',12,77),(10197,145,'Tihoi',12,77),(10198,145,'Titirangi',12,77),(10199,145,'Waiheke Island',12,77),(10200,145,'Waitakere',12,77),(10201,145,'Waiuku',12,77),(10202,145,'Waiwera',12,77),(10203,145,'Warkworth',12,77),(10204,145,'Wellsford',12,77),(10205,145,'Whangaparaoa',12,77),(10206,145,'Edgecumbe',12,78),(10207,145,'Kawerau',12,78),(10208,145,'Mount Maunganui',12,78),(10209,145,'Opotiki',12,78),(10210,145,'Paengaroa',12,78),(10211,145,'Papamoa',12,78),(10212,145,'Rotorua',12,78),(10214,145,'Te Puke',12,78),(10215,145,'Whakatane',12,78),(10216,145,'Akaroa',12,79),(10217,145,'Amberley',12,79),(10218,145,'Ashburton',12,79),(10220,145,'Coalgate',12,79),(10221,145,'Darfield',12,79),(10222,145,'Geraldine',12,79),(10223,145,'Hanmer Springs',12,79),(10224,145,'Hawarden',12,79),(10225,145,'Kaiapoi',12,79),(10226,145,'Kaikoura',12,79),(10227,145,'Lake Tekapo',12,79),(10228,145,'Leeston',12,79),(10229,145,'Lincoln',12,79),(10230,145,'Loburn',12,79),(10231,145,'Lyttelton',12,79),(10232,145,'Methven',12,79),(10233,145,'Mount Cook',12,79),(10234,145,'Oxford',12,79),(10235,145,'Pleasant Point',12,79),(10236,145,'Rangiora',12,79),(10237,145,'Riccarton',12,79),(10238,145,'Springfield',12,79),(10239,145,'Timaru',12,79),(10240,145,'Twizel',12,79),(10241,145,'Waimate',12,79),(10242,145,'Waipara',12,79),(10244,145,'Tokomaru Bay',12,80),(10245,145,'Akitio',12,81),(10246,145,'Hastings',12,81),(10247,145,'Havelock North',12,81),(10249,145,'Otane',12,81),(10250,145,'Porangahau',12,81),(10251,145,'Takapau',12,81),(10252,145,'Taradale',12,81),(10253,145,'Waipawa',12,81),(10254,145,'Waipukurau',12,81),(10255,145,'Woodville',12,81),(10256,145,'Dannevirke',12,82),(10257,145,'Feilding',12,82),(10258,145,'Foxton Beach',12,82),(10259,145,'Levin',12,82),(10260,145,'Mangaweka',12,82),(10261,145,'Marton',12,82),(10262,145,'Ohakune',12,82),(10264,145,'Raetihi',12,82),(10265,145,'Wanganui',12,82),(10266,145,'Whakapapa',12,82),(10267,145,'Antares',12,83),(10268,145,'Blenheim',12,83),(10269,145,'Endeavour Inlet',12,83),(10270,145,'Picton',12,83),(10271,145,'Renwick',12,83),(10272,145,'Wakefield',12,83),(10273,145,'Ward',12,83),(10274,145,'Collingwood',12,84),(10276,145,'Richmond',12,84),(10277,145,'Stoke',12,84),(10278,145,'Wakefield',12,84),(10279,145,'Dargaville',12,85),(10280,145,'Kaitaia',12,85),(10281,145,'Kaiwaka',12,85),(10282,145,'Kerikeri',12,85),(10283,145,'Mangonui',12,85),(10284,145,'Matakohe',12,85),(10285,145,'Matauri Bay',12,85),(10286,145,'Opua',12,85),(10287,145,'Paihia',12,85),(10288,145,'Russell',12,85),(10289,145,'Tutukaka',12,85),(10290,145,'Waipu',12,85),(10291,145,'Whangarei',12,85),(10292,145,'Alexandra',12,86),(10293,145,'Arrowtown',12,86),(10294,145,'Balclutha',12,86),(10295,145,'Clyde',12,86),(10296,145,'Cromwell',12,86),(10298,145,'Fairlie',12,86),(10299,145,'Glenorchy',12,86),(10300,145,'Oamaru',12,86),(10301,145,'Owaka',12,86),(10302,145,'Port Chalmers',12,86),(10303,145,'Queenstown',12,86),(10304,145,'Tapanui',12,86),(10305,145,'Wanaka',12,86),(10306,145,'Bluff',12,87),(10307,145,'Gore',12,87),(10309,145,'Lumsden',12,87),(10310,145,'Mossburn',12,87),(10311,145,'Riverton',12,87),(10312,145,'Te Anau',12,87),(10313,145,'Tuatapere',12,87),(10314,145,'Eltham',12,88),(10315,145,'Hawera',12,88),(10316,145,'Inglewood',12,88),(10318,145,'Normanby',12,88),(10319,145,'Oakura',12,88),(10320,145,'Piopio',12,88),(10321,145,'Stratford',12,88),(10322,145,'Motueka',12,89),(10323,145,'St. Arnaud',12,89),(10324,145,'Cambridge',12,90),(10325,145,'Coromandel',12,90),(10327,145,'Matamata',12,90),(10328,145,'Morrinsville',12,90),(10329,145,'Ohaupo',12,90),(10330,145,'Otorohanga',12,90),(10331,145,'Pauanui',12,90),(10332,145,'Raglan',12,90),(10333,145,'Tairua',12,90),(10334,145,'Taupo',12,90),(10335,145,'Te Awamutu',12,90),(10336,145,'Thames',12,90),(10337,145,'Tokoroa',12,90),(10338,145,'Tuakau',12,90),(10339,145,'Turangi',12,90),(10340,145,'Waihi',12,90),(10341,145,'Waitomo Caves',12,90),(10342,145,'Whangamata',12,90),(10343,145,'Whitianga',12,90),(10344,145,'Aro Valley',12,91),(10345,145,'Carterton',12,91),(10346,145,'Eastbourne',12,91),(10347,145,'Featherston',12,91),(10348,145,'Greytown',12,91),(10349,145,'Hutt Valley',12,91),(10350,145,'Island Bay',12,91),(10351,145,'Johnsonville',12,91),(10352,145,'Khandallah',12,91),(10353,145,'Kilbirnie',12,91),(10354,145,'Lower Hutt',12,91),(10355,145,'Martinborough',12,91),(10356,145,'Masterton',12,91),(10357,145,'Otaki',12,91),(10358,145,'Paekakariki',12,91),(10359,145,'Pahiatua',12,91),(10360,145,'Paraparaumu',12,91),(10361,145,'Pauatahanui',12,91),(10362,145,'Petone',12,91),(10363,145,'Plimmerton',12,91),(10364,145,'Porirua',12,91),(10365,145,'Raumati Beach',12,91),(10366,145,'Stokes Valley',12,91),(10367,145,'Tawa',12,91),(10368,145,'Te Aro',12,91),(10369,145,'Upper Hutt',12,91),(10370,145,'Waikanae',12,91),(10371,145,'Wainuiomata',12,91),(10373,145,'Franz Josef',12,92),(10375,145,'Hokitika',12,92),(10376,145,'Westport',12,92),(10378,165,'Aleysk',7,140),(10379,165,'Altayskiy',7,140),(10380,165,'Baevo',7,140),(10382,165,'Belokurika',7,140),(10383,165,'Belokurikha',7,140),(10385,165,'Blagoveshchenka',7,140),(10386,165,'Burla',7,140),(10387,165,'Bystryy Istok',7,140),(10388,165,'Charyskoye',7,140),(10389,165,'El\'tsovka',7,140),(10390,165,'Gornyak',7,140),(10391,165,'Kalmanka',7,140),(10392,165,'Kamen\'-na-Obi',7,140),(10393,165,'Khabary',7,140),(10394,165,'Klyuchi',7,140),(10395,165,'Kosikha',7,140),(10396,165,'Krasnogorskoye',7,140),(10397,165,'Krasnoshchekovo',7,140),(10398,165,'Krutikha',7,140),(10399,165,'Kulurda',7,140),(10400,165,'Kur\'ya',7,140),(10401,165,'Kytmanovo',7,140),(10402,165,'Mamontovo',7,140),(10403,165,'Mikhaylovskiy',7,140),(10404,165,'Novichikha',7,140),(10405,165,'Novoaltaysk',7,140),(10406,165,'Novoegor\'evskoye',7,140),(10407,165,'Pankrushikha',7,140),(10408,165,'Pavlovsk',7,140),(10409,165,'Petropavlovskoye',7,140),(10410,165,'Pospelikha',7,140),(10411,165,'Rebrikha',7,140),(10412,165,'Rodino',7,140),(10413,165,'Romanovo',7,140),(10416,165,'Shelaboika',7,140),(10417,165,'Shipunovo',7,140),(10418,165,'Sibirskiy',7,140),(10419,165,'Slavgorod',7,140),(10420,165,'Soloneshskoye',7,140),(10421,165,'Solton',7,140),(10422,165,'Sovetskoye',7,140),(10423,165,'Staroaleyskoye',7,140),(10424,165,'Tabuny',7,140),(10425,165,'Tal\'menka',7,140),(10426,165,'Togul\'',7,140),(10427,165,'Topchikha',7,140),(10428,165,'Troitskoye',7,140),(10429,165,'Tselinnoye',7,140),(10430,165,'Tyumentsevo',7,140),(10431,165,'Uglovskoye',7,140),(10432,165,'Ust\'-Charyshskaya',7,140),(10433,165,'Ust\'-Kalmanka',7,140),(10434,165,'Verkh Suetka',7,140),(10435,165,'Volchikha',7,140),(10436,165,'Yarovoe',7,140),(10437,165,'Zalesovo',7,140),(10438,165,'Zarinsk',7,140),(10439,165,'Zav\'yalovo',7,140),(10440,165,'Zmeinogorsk',7,140),(10441,165,'Zonal\'noye',7,140),(10442,165,'Arkhara',9,141),(10443,165,'Belogorsk',9,141),(10445,165,'Ivanovka',9,141),(10446,165,'Konstantinovka',9,141),(10447,165,'Magdagachi',9,141),(10448,165,'Novobureyskyy',9,141),(10449,165,'Novokiyevskiy Uval',9,141),(10450,165,'Poyarkovo',9,141),(10451,165,'Raychikhinsk',9,141),(10452,165,'Romny',9,141),(10453,165,'Seryeshevo',9,141),(10454,165,'Shimanovsk',9,141),(10455,165,'Skovorodino',9,141),(10456,165,'Svobodnyy',9,141),(10457,165,'Tambovka',9,141),(10458,165,'Tynda',9,141),(10459,165,'Uglegorsk',9,141),(10460,165,'Yekaterinoslavka',9,141),(10461,165,'Yekimchan',9,141),(10462,165,'Zavitinsk',9,141),(10463,165,'Zeya',9,141),(10465,165,'Bereznik',3,142),(10466,165,'Il\'insko-Podomskoye',3,142),(10467,165,'Kargopol\'',3,142),(10468,165,'Karpogory',3,142),(10469,165,'Kholmogory',3,142),(10470,165,'Konosha',3,142),(10471,165,'Koryazhma',3,142),(10472,165,'Kotlas',3,142),(10473,165,'Krasnoborsk',3,142),(10474,165,'Leshukonskoye',3,142),(10475,165,'Mezen\'',3,142),(10476,165,'Mirnyy',3,142),(10477,165,'Novodvinsk',3,142),(10478,165,'Nyandoma',3,142),(10479,165,'Oktyabr\'skyy',3,142),(10480,165,'Onega',3,142),(10481,165,'Plesetsk',3,142),(10483,165,'Shenkursk',3,142),(10484,165,'Solovetskiy',3,142),(10485,165,'Vel\'sk',3,142),(10486,165,'Verkhnyaya Toyma',3,142),(10487,165,'Yarensk',3,142),(10488,165,'Nar\'yan-Mar',3,142),(10489,165,'Akhtubinsk',4,143),(10491,165,'Cherny Yar',4,143),(10492,165,'Ikryanoe',4,143),(10493,165,'Kamyzyak',4,143),(10494,165,'Kharabali',4,143),(10495,165,'Krasnyi Yar',4,143),(10496,165,'Liman',4,143),(10497,165,'Nachalovo',4,143),(10498,165,'Narimanov',4,143),(10499,165,'Volodarsky',4,143),(10500,165,'Yenotaevka',4,143),(10501,165,'Znamensk',4,143),(10502,165,'Alekseevka',3,144),(10504,165,'Borisovka',3,144),(10505,165,'Chernyanka',3,144),(10506,165,'Grayvoron',3,144),(10507,165,'Gubkin',3,144),(10508,165,'Korocha',3,144),(10509,165,'Krasnaya Yaruga',3,144),(10510,165,'Krasnogvardeyskoye',3,144),(10511,165,'Krasnoye',3,144),(10512,165,'Noviy Oskol',3,144),(10513,165,'Novo Ivanyovka',3,144),(10514,165,'Prokhorovka',3,144),(10515,165,'Rakitnoye',3,144),(10516,165,'Roven\'ki',3,144),(10517,165,'Shebekino',3,144),(10519,165,'Stroytel\'',3,144),(10520,165,'Valuyki',3,144),(10521,165,'Veydelevka',3,144),(10522,165,'Volokonovka',3,144),(10524,165,'Dubrovka',3,145),(10525,165,'Dyat\'kovo',3,145),(10526,165,'Gordyevka',3,145),(10527,165,'Karachev',3,145),(10528,165,'Kletnya',3,145),(10529,165,'Klimovo',3,145),(10530,165,'Klintsy',3,145),(10531,165,'Komarichi',3,145),(10532,165,'Krasnaya Gora',3,145),(10533,165,'Lokot',3,145),(10534,165,'Mglin',3,145),(10535,165,'Navlya',3,145),(10536,165,'Novozybkov',3,145),(10537,165,'Pochep',3,145),(10538,165,'Pogar',3,145),(10539,165,'Rognedino',3,145),(10540,165,'Sel\'tso',3,145),(10541,165,'Sevsk',3,145),(10542,165,'Starodub',3,145),(10543,165,'Surazh',3,145),(10544,165,'Suzemka',3,145),(10545,165,'Trubchevsk',3,145),(10546,165,'Unecha',3,145),(10547,165,'Vygonichi',3,145),(10548,165,'Zhiryatino',3,145),(10549,165,'Zhukovka',3,145),(10550,165,'Zlynka',3,145),(10551,165,'Achkhoy-Martan',3,146),(10552,165,'Argun',3,146),(10553,165,'Cheberloev',3,146),(10554,165,'Groznyy',3,146),(10555,165,'Gudermes',3,146),(10556,165,'Itum-Kali',3,146),(10557,165,'Naurskaya',3,146),(10558,165,'Nozhay-Yurt',3,146),(10559,165,'Shali',3,146),(10560,165,'Sharoy',3,146),(10561,165,'Shatoy',3,146),(10562,165,'Shelkovskaya',3,146),(10563,165,'Urus-Martan',3,146),(10564,165,'Vedeno',3,146),(10565,165,'Ziamenskoye',3,146),(10566,165,'Agapovka',5,147),(10567,165,'Argayash',5,147),(10568,165,'Asha',5,147),(10569,165,'Bredy',5,147),(10570,165,'Chebarkul\'',5,147),(10572,165,'Chesma',5,147),(10573,165,'Dolgoderevenskoye',5,147),(10574,165,'Emanzhelinsk',5,147),(10575,165,'Etkul\'',5,147),(10576,165,'Fershampenyats',5,147),(10577,165,'Karabash',5,147),(10578,165,'Kartaly',5,147),(10579,165,'Kasli',5,147),(10580,165,'Katav-Ivanovsk',5,147),(10581,165,'Kizilskoye',5,147),(10582,165,'Kopeysk',5,147),(10583,165,'Korkino',5,147),(10584,165,'Kunashak',5,147),(10585,165,'Kusa',5,147),(10586,165,'Kyshtym',5,147),(10587,165,'Lokomotivnyy',5,147),(10590,165,'Miasskoye',5,147),(10591,165,'Nyazepetrovsk',5,147),(10592,165,'Oktyabr\'skoye',5,147),(10593,165,'Ozersk',5,147),(10594,165,'Plast',5,147),(10595,165,'Satka',5,147),(10597,165,'Trekhgornyy',5,147),(10599,165,'Ust\'-Katav',5,147),(10600,165,'Uvel\'skiy',5,147),(10601,165,'Uyskoye',5,147),(10602,165,'Varna',5,147),(10603,165,'Verkhneural\'sk',5,147),(10604,165,'Verkhniy Ufaley',5,147),(10605,165,'Yuzhnoural\'sk',5,147),(10607,165,'Aksha',9,148),(10608,165,'Aleksandrovskiy-Zavod',9,148),(10609,165,'Baley',9,148),(10610,165,'Borzya',9,148),(10611,165,'Chara',9,148),(10612,165,'Chernyshevsk',9,148),(10614,165,'Gazimursky-Zavod',9,148),(10615,165,'Gornyy',9,148),(10616,165,'Inshiniy Tsasuchey',9,148),(10617,165,'Kalga',9,148),(10618,165,'Karymskoye',9,148),(10619,165,'Khilok',9,148),(10620,165,'Krasnokamensk',9,148),(10621,165,'Krasnyy Chikoy',9,148),(10622,165,'Kyra',9,148),(10623,165,'Mogocha',9,148),(10624,165,'Nerchinsk',9,148),(10625,165,'Nerchinskiy-Zavod',9,148),(10626,165,'Olovyanraya',9,148),(10627,165,'Petrovsk-Zabaykal\'skiy',9,148),(10628,165,'Priargunsk',9,148),(10629,165,'Shelopugino',9,148),(10630,165,'Shilka',9,148),(10631,165,'Sretensk',9,148),(10632,165,'Tupik',9,148),(10633,165,'Ulety',9,148),(10634,165,'Verch Usugly',9,148),(10635,165,'Zabaykal\'sk',9,148),(10636,165,'Anadyr\'',12,149),(10637,165,'Bilibino',12,149),(10638,165,'Egvekinot',12,149),(10639,165,'Lavrentiya',12,149),(10640,165,'Mys Shmidta',12,149),(10641,165,'Nagorniy',12,149),(10642,165,'Pevek',12,149),(10643,165,'Provideniya',12,149),(10644,165,'Ugol\'nye Kopi',12,149),(10645,165,'Alatyr\'',3,150),(10646,165,'Alikovo',3,150),(10647,165,'Batyrevo',3,150),(10649,165,'Ibresi',3,150),(10650,165,'Kanash',3,150),(10651,165,'Komsomol\'sk',3,150),(10652,165,'Kozlovka',3,150),(10653,165,'Kugesy',3,150),(10654,165,'Mariinsky-Posad',3,150),(10655,165,'Morgaushy',3,150),(10656,165,'Novocheboksarsk',3,150),(10657,165,'Poretskoye',3,150),(10658,165,'Shemursha',3,150),(10659,165,'Shorkistry',3,150),(10660,165,'Shumerlya',3,150),(10661,165,'Tikhonkino',3,150),(10662,165,'Tsivil\'sk',3,150),(10663,165,'Vurnary',3,150),(10664,165,'Yadrin',3,150),(10665,165,'Yal\'chiki',3,150),(10666,165,'Yantikovo',3,150),(10667,165,'Bajkit',6,151),(10668,165,'Tura',6,151),(10669,165,'Vanavara',6,151),(10670,165,'Angarsk',8,152),(10671,165,'Balagansk',8,152),(10672,165,'Bodaybo',8,152),(10674,165,'Cheremkhovo',8,152),(10675,165,'Chunskiy',8,152),(10676,165,'Elantsy',8,152),(10677,165,'Erbogachen',8,152),(10679,165,'Kachug',8,152),(10680,165,'Kazachinskoye',8,152),(10681,165,'Kirensk',8,152),(10682,165,'Kuytun',8,152),(10683,165,'Mama',8,152),(10684,165,'Nizhneudinsk',8,152),(10685,165,'Sayansk',8,152),(10686,165,'Shelekhov',8,152),(10687,165,'Shelemkhovo',8,152),(10688,165,'Shelezhnogorsk Ilimskiy',8,152),(10689,165,'Slyudyanka',8,152),(10690,165,'Tayshet',8,152),(10691,165,'Tulun',8,152),(10692,165,'Usol\'e-Sibirskoe',8,152),(10693,165,'Ust\'-Ilimsk',8,152),(10694,165,'Ust\'-Kut',8,152),(10695,165,'Ust\'-Uda',8,152),(10696,165,'Zalari',8,152),(10697,165,'Zhigalovo',8,152),(10698,165,'Zima',8,152),(10699,165,'Furmanov',3,153),(10700,165,'Gavrolov Posad',3,153),(10701,165,'Il\'insko-Khovanskoye',3,153),(10703,165,'Kineshema',3,153),(10704,165,'Komsomol\'sk',3,153),(10705,165,'Lezhnevo',3,153),(10706,165,'Lukh',3,153),(10707,165,'Palekh',3,153),(10708,165,'Pestyaki',3,153),(10709,165,'Privolzhsk',3,153),(10710,165,'Puchezh',3,153),(10711,165,'Rodniki',3,153),(10712,165,'Savino',3,153),(10713,165,'Shuya',3,153),(10714,165,'Teykovo',3,153),(10715,165,'Verkhniy Landekh',3,153),(10716,165,'Vichuga',3,153),(10717,165,'Yur\'evets',3,153),(10718,165,'Yuzha',3,153),(10719,165,'Zavolzhk',3,153),(10720,165,'Amurzet',7,154),(10721,165,'Birobidzhan',7,154),(10722,165,'Leninskoye',7,154),(10723,165,'Obluchye',7,154),(10724,165,'Smidovich',7,154),(10725,165,'Baksan',3,155),(10726,165,'Chegem Pervyy',3,155),(10727,165,'Kashhatay',3,155),(10728,165,'Mayskiy',3,155),(10730,165,'Nartkala',3,155),(10731,165,'Prokhladniy',3,155),(10732,165,'Terek',3,155),(10733,165,'Tyrnyauz',3,155),(10734,165,'Zalykokoashe',3,155),(10735,165,'Bagrationovsk',2,156),(10736,165,'Baltiysk',2,156),(10737,165,'Chernyakhovsk',2,156),(10738,165,'Gur\'evsk',2,156),(10739,165,'Gusev',2,156),(10740,165,'Gvardeysk',2,156),(10742,165,'Krasnoznamensk',2,156),(10743,165,'Neman',2,156),(10744,165,'Nesterov',2,156),(10745,165,'Ozersk',2,156),(10746,165,'Pionerskiy',2,156),(10747,165,'Polessk',2,156),(10748,165,'Pravdinsk',2,156),(10749,165,'Slavsk',2,156),(10750,165,'Sovetsk',2,156),(10751,165,'Svetlogorsk',2,156),(10752,165,'Svetlyy',2,156),(10754,165,'Babynino',3,157),(10755,165,'Betlicha',3,157),(10756,165,'Borovsk',3,157),(10757,165,'Duminichi',3,157),(10758,165,'Ferzikovo',3,157),(10759,165,'Iznosky',3,157),(10761,165,'Khvastovichi',3,157),(10763,165,'Kondrovo',3,157),(10764,165,'Kozel\'sk',3,157),(10765,165,'Lyudinov',3,157),(10767,165,'Medyn\'',3,157),(10768,165,'Meshchovsk',3,157),(10769,165,'Mosal\'sk',3,157),(10771,165,'Peremyshl',3,157),(10772,165,'Spas-Demensk',3,157),(10773,165,'Sukhinichi',3,157),(10774,165,'Tarusa',3,157),(10775,165,'Ul\'yanovo',3,157),(10776,165,'Yukhnov',3,157),(10777,165,'Zhizdra',3,157),(10778,165,'Zhukov',3,157),(10780,165,'Esso',12,158),(10781,165,'Mil\'kovo',12,158),(10782,165,'Nikol\'skoye',12,158),(10784,165,'Sobolevo',12,158),(10785,165,'Ust\'-Bolsheretsk',12,158),(10786,165,'Ust\'-Kamchatsk',12,158),(10787,165,'Vilyuchinsk',12,158),(10788,165,'Vulkannyy',12,158),(10789,165,'Adyge-Khably',3,159),(10791,165,'Karachayevsk',3,159),(10792,165,'Kavkaskyy',3,159),(10793,165,'Khabez',3,159),(10794,165,'Pregradnaya',3,159),(10795,165,'Ust-Dzheguta',3,159),(10796,165,'Yushkeken',3,159),(10797,165,'Zelenchukskaya',3,159),(10798,165,'Anzhero-Sudzhensk',7,160),(10799,165,'Belovo',7,160),(10800,165,'Berezovskiy',7,160),(10801,165,'Gur\'evsk',7,160),(10802,165,'Izhmorskiy',7,160),(10803,165,'Kaltan',7,160),(10805,165,'Kiselevsk',7,160),(10806,165,'Krapivinskiy',7,160),(10807,165,'Leninsk-Kuznetskiy',7,160),(10808,165,'Mariynsk',7,160),(10809,165,'Mezhdurechensk',7,160),(10810,165,'Myski',7,160),(10812,165,'Osinniki',7,160),(10813,165,'Prokop\'evsk',7,160),(10814,165,'Promyshlennaya',7,160),(10815,165,'Tashtagol',7,160),(10816,165,'Tayga',7,160),(10817,165,'Tisul',7,160),(10818,165,'Topki',7,160),(10819,165,'Tyazhinskiy',7,160),(10820,165,'Verkh-Chebula',7,160),(10821,165,'Yashkino',7,160),(10822,165,'Yaya',7,160),(10825,165,'Ayan',10,161),(10826,165,'Bikin',10,161),(10827,165,'Bogorodskoye',10,161),(10828,165,'Chumikan',10,161),(10832,165,'Okhotsk',10,161),(10833,165,'Pereyaslavka',10,161),(10834,165,'Poliny Osipenko',10,161),(10835,165,'Solnechny',10,161),(10836,165,'Sovetskaya Gavan\'',10,161),(10837,165,'Troitskoye',10,161),(10838,165,'Vanino',10,161),(10839,165,'Vyazemskiy',10,161),(10840,165,'Zerdomyn',10,161),(10841,165,'Beloyarsk',5,162),(10842,165,'Berezovo',5,162),(10844,165,'Kogalym',5,162),(10845,165,'Langepas',5,162),(10846,165,'Megion',5,162),(10847,165,'Meshdurechenskiy',5,162),(10848,165,'Nefteyugansk',5,162),(10850,165,'Nyagan\'',5,162),(10851,165,'Oktyabr\'skoye',5,162),(10852,165,'Pokachi',5,162),(10853,165,'Pyt\'-Yakh',5,162),(10854,165,'Raduga',5,162),(10855,165,'Sovetskiy',5,162),(10857,165,'Uraysk',5,162),(10858,165,'Yugorsk',5,162),(10859,165,'Afanas\'evo',4,163),(10860,165,'Arbazh',4,163),(10861,165,'Belaya Kholunitsa',4,163),(10862,165,'Bogorodskoye',4,163),(10863,165,'Darovskoy',4,163),(10864,165,'Falenki',4,163),(10865,165,'Kiknur',4,163),(10866,165,'Kilmez',4,163),(10868,165,'Kirovo-Chepetsk',4,163),(10869,165,'Kirs',4,163),(10870,165,'Kotel\'nich',4,163),(10871,165,'Kumeny',4,163),(10872,165,'Lebyazhie',4,163),(10873,165,'Leninskoye',4,163),(10874,165,'Luza',4,163),(10875,165,'Malmyzh',4,163),(10876,165,'Murashi',4,163),(10877,165,'Nagorsk',4,163),(10878,165,'Nema',4,163),(10879,165,'Nolinsk',4,163),(10880,165,'Omutninsk',4,163),(10881,165,'Oparino',4,163),(10882,165,'Orichi',4,163),(10883,165,'Orlov',4,163),(10884,165,'Pervomayskiy',4,163),(10885,165,'Pizhanka',4,163),(10886,165,'Podosinovets',4,163),(10887,165,'Sanchursk',4,163),(10888,165,'Slobodskoy',4,163),(10889,165,'Sovetsk',4,163),(10890,165,'Suna',4,163),(10891,165,'Svecha',4,163),(10892,165,'Tuzha',4,163),(10893,165,'Uni',4,163),(10894,165,'Urzhum',4,163),(10895,165,'Verkhoshizhemye',4,163),(10896,165,'Vyatskie Polyany',4,163),(10897,165,'Yaransk',4,163),(10898,165,'Yur\'ya',4,163),(10899,165,'Zuevka',4,163),(10900,165,'Antropovo',3,164),(10901,165,'Bogovarovo',3,164),(10902,165,'Buy',3,164),(10903,165,'Chukhloma',3,164),(10904,165,'Galich',3,164),(10905,165,'Georgievskoye',3,164),(10906,165,'Kadyy',3,164),(10907,165,'Kologriv',3,164),(10909,165,'Krasnoe-na-Volge',3,164),(10910,165,'Makar\'ev',3,164),(10911,165,'Manturovo',3,164),(10912,165,'Nerekhta',3,164),(10913,165,'Neya',3,164),(10914,165,'Ostrovskoe',3,164),(10915,165,'Parfen\'yevo',3,164),(10916,165,'Pavino',3,164),(10917,165,'Ponazyrevo',3,164),(10918,165,'Pyshug',3,164),(10919,165,'Shar\'ya',3,164),(10920,165,'Soligalich',3,164),(10921,165,'Sudislavl\'',3,164),(10922,165,'Susanino',3,164),(10923,165,'Vokhma',3,164),(10924,165,'Volgorechensk',3,164),(10925,165,'Abinsk',3,165),(10926,165,'Anapa',3,165),(10927,165,'Apsheronsk',3,165),(10928,165,'Armavir',3,165),(10929,165,'Belaya Glina',3,165),(10930,165,'Belorechensk',3,165),(10931,165,'Eysk',3,165),(10933,165,'Goryachiy Klyuch',3,165),(10934,165,'Gul\'kevichi',3,165),(10935,165,'Korenovsk',3,165),(10937,165,'Kropotkin',3,165),(10938,165,'Krylovskaya',3,165),(10939,165,'Krymsk',3,165),(10940,165,'Kurganinsk',3,165),(10941,165,'Labinsk',3,165),(10942,165,'Mostovskoy',3,165),(10943,165,'Novokubansk',3,165),(10945,165,'Primorsko-Akhtarsk',3,165),(10946,165,'Slavyansk-na-Kubani',3,165),(10948,165,'Stanitsa Bryukhovetskaya',3,165),(10949,165,'Stanitsa Dinskaya',3,165),(10950,165,'Stanitsa Kaliniskaya',3,165),(10951,165,'Stanitsa Kanevskaya',3,165),(10952,165,'Stanitsa Kavkazskaya',3,165),(10953,165,'Stanitsa Kushchevskaya',3,165),(10954,165,'Stanitsa Leningradskaya',3,165),(10955,165,'Stanitsa Novopokrovskaya',3,165),(10956,165,'Stanitsa Otradnaya',3,165),(10957,165,'Stanitsa Pavlovskaya',3,165),(10958,165,'Stanitsa Poltavskaya',3,165),(10959,165,'Stanitsa Severskaya',3,165),(10960,165,'Stanitsa Starominskaya',3,165),(10961,165,'Stanitsa Staroshcherbinovskaya',3,165),(10962,165,'Stanitsa Tbilisskaya',3,165),(10963,165,'Stanitsa Vyselky',3,165),(10964,165,'Temryuk',3,165),(10966,165,'Timashevsk',3,165),(10968,165,'Uspenskoe',3,165),(10969,165,'Ust\'-Labinsk',3,165),(10970,165,'Aban',7,166),(10971,165,'Achinsk',7,166),(10972,165,'Aginskoe',7,166),(10973,165,'Balakhta',7,166),(10974,165,'Berezovka',7,166),(10975,165,'Bogotol',7,166),(10976,165,'Boguchany',7,166),(10977,165,'Bolshaya Murta',7,166),(10978,165,'Bolshoy Ului',7,166),(10979,165,'Borodino',7,166),(10980,165,'Divnogorsk',7,166),(10981,165,'Dzerzhinskoye',7,166),(10982,165,'Emelyanovo',7,166),(10983,165,'Eniseysk',7,166),(10984,165,'Ermakovskoye',7,166),(10985,165,'Idrinskoe',7,166),(10986,165,'Igarka',7,166),(10987,165,'Ilanskiy',7,166),(10988,165,'Irbeyskoye',7,166),(10989,165,'Kansk',7,166),(10990,165,'Karatuzskoye',7,166),(10991,165,'Kazachinskoye',7,166),(10992,165,'Kedrovyy',7,166),(10993,165,'Kezhma',7,166),(10994,165,'Kozulka',7,166),(10995,165,'Krasnoturansk',7,166),(10997,165,'Kuragino',7,166),(10998,165,'Lesosibirsk',7,166),(10999,165,'Minusinsk',7,166),(11000,165,'Motygino',7,166),(11001,165,'Nazarovo',7,166),(11002,165,'Nizhny Ingash',7,166),(11004,165,'Novobirilyussy',7,166),(11005,165,'Novoselovo',7,166),(11006,165,'Pertizanskoye',7,166),(11007,165,'Pirovskoye',7,166),(11008,165,'Podgornyy',7,166),(11009,165,'Severo-Eniseyskiy',7,166),(11010,165,'Shalinskoe',7,166),(11011,165,'Sharypovo',7,166),(11012,165,'Shushenskoye',7,166),(11013,165,'Solnechnyy',7,166),(11014,165,'Sosnovoborsk',7,166),(11015,165,'Sukhobuzimskoe',7,166),(11016,165,'Taseevo',7,166),(11017,165,'Turukhansk',7,166),(11018,165,'Tyukhtet',7,166),(11019,165,'Uyar',7,166),(11020,165,'Uzhur',7,166),(11021,165,'Zaozerniy',7,166),(11023,165,'Zheleznogorsk',7,166),(11024,165,'Al\'menevo',5,167),(11025,165,'Belozerskoye',5,167),(11026,165,'Chastoozer\'ye',5,167),(11027,165,'Dalmatovo',5,167),(11028,165,'Glyadyanskoye',5,167),(11029,165,'Kargapol\'ye',5,167),(11030,165,'Kataysk',5,167),(11031,165,'Ketovo',5,167),(11033,165,'Kurtamysh',5,167),(11034,165,'Lebazh\'ye',5,167),(11035,165,'Makushino',5,167),(11036,165,'Mishkino',5,167),(11037,165,'Mokroysovo',5,167),(11038,165,'Petukhovo',5,167),(11039,165,'Polovinnoye',5,167),(11040,165,'Safakulevo',5,167),(11041,165,'Shadrinsk',5,167),(11042,165,'Shatrovo',5,167),(11043,165,'Shchuche',5,167),(11044,165,'Shumiha',5,167),(11045,165,'Tselinnoe',5,167),(11046,165,'Vargashi',5,167),(11047,165,'Yurgamysh',5,167),(11048,165,'Zverinogolovskoye',5,167),(11049,165,'Belaya',3,168),(11050,165,'Bolshoe Soldatskoe',3,168),(11051,165,'Cheremisinovo',3,168),(11052,165,'Dmitriev-L\'govskiy',3,168),(11053,165,'Fatezh',3,168),(11054,165,'Glushkovo',3,168),(11055,165,'Gorshechnoe',3,168),(11056,165,'Kastornoye',3,168),(11057,165,'Khomutovka',3,168),(11058,165,'Konyshevka',3,168),(11059,165,'Korenevo',3,168),(11060,165,'Kshenskiy',3,168),(11061,165,'Kurchatov',3,168),(11063,165,'L\'gov',3,168),(11064,165,'Manturovo',3,168),(11065,165,'Medvenka',3,168),(11066,165,'Oboyan\'',3,168),(11067,165,'Ponyri',3,168),(11068,165,'Pristen\'',3,168),(11069,165,'Pryamichyno',3,168),(11070,165,'Ryl\'sk',3,168),(11071,165,'Shchigri',3,168),(11072,165,'Solntsevo',3,168),(11073,165,'Sudzha',3,168),(11074,165,'Tim',3,168),(11075,165,'Zheleznogorsk',3,168),(11076,165,'Zolotukhino',3,168),(11077,165,'Boksitogorsk',3,169),(11078,165,'Gatchina',3,169),(11079,165,'Ivangorod',3,169),(11080,165,'Kingisepp',3,169),(11081,165,'Kirishi',3,169),(11082,165,'Kirovsk',3,169),(11083,165,'Lodeynopoe Pole',3,169),(11084,165,'Lomonosov',3,169),(11085,165,'Luga',3,169),(11086,165,'Pikalevo',3,169),(11087,165,'Podporozh\'e',3,169),(11088,165,'Priozersk',3,169),(11089,165,'Shlissel\'burg',3,169),(11090,165,'Slantsy',3,169),(11092,165,'Tikhvin',3,169),(11093,165,'Tosno',3,169),(11094,165,'Volkhov',3,169),(11095,165,'Volosovo',3,169),(11096,165,'Vsevolzhsk',3,169),(11098,165,'Chaplygin',3,170),(11099,165,'Dankov',3,170),(11100,165,'Dobrinka',3,170),(11101,165,'Dobroye',3,170),(11102,165,'Dolkorukovo',3,170),(11103,165,'Elets',3,170),(11104,165,'Gryazi',3,170),(11105,165,'Izmalkovo',3,170),(11106,165,'Khlevnoye',3,170),(11107,165,'Krasnoye',3,170),(11108,165,'Lebedyan',3,170),(11109,165,'Lev Tolstoy',3,170),(11111,165,'Stanovoye',3,170),(11112,165,'Terbuny',3,170),(11113,165,'Usman\'',3,170),(11114,165,'Volovo',3,170),(11115,165,'Zadonsk',3,170),(11116,165,'Evensk',11,171),(11118,165,'Ola',11,171),(11119,165,'Omsukchan',11,171),(11120,165,'Palatka',11,171),(11121,165,'Seymchan',11,171),(11122,165,'Susuman',11,171),(11123,165,'Ust\'-Omchug',11,171),(11124,165,'Yagodnoye',11,171),(11125,165,'Balashikha',3,172),(11126,165,'Bronnitsy',3,172),(11127,165,'Chekhov',3,172),(11128,165,'Chekhovskiy',3,172),(11129,165,'Dmitrov',3,172),(11131,165,'Domodedovo',3,172),(11133,165,'Dzerzhinskyy',3,172),(11134,165,'Egor\'evsk',3,172),(11135,165,'Elektrostal\'',3,172),(11137,165,'Istra',3,172),(11138,165,'Ivanteevka',3,172),(11139,165,'Kashira',3,172),(11140,165,'Khimki',3,172),(11141,165,'Khimkinskiy',3,172),(11142,165,'Klimovsk',3,172),(11143,165,'Klin',3,172),(11144,165,'Klin',3,172),(11147,165,'Krasnoarmeysk',3,172),(11148,165,'Krasnogorsk',3,172),(11149,165,'Krasnoznamensk',3,172),(11150,165,'Lobnya',3,172),(11151,165,'Lotoshino',3,172),(11152,165,'Lukhovitsy',3,172),(11153,165,'Lytkarino',3,172),(11154,165,'Lyuberetsy',3,172),(11155,165,'Molodezhnyy',3,172),(11157,165,'Mozhaysk',3,172),(11159,165,'Naro-Fominsk',3,172),(11160,165,'Noginsk',3,172),(11161,165,'Odintsovo',3,172),(11162,165,'Orekhovo-Zuevo',3,172),(11163,165,'Ozery',3,172),(11164,165,'Pavlovskiy Posad',3,172),(11166,165,'Prioksk',3,172),(11168,165,'Pushchino',3,172),(11170,165,'Ramenskoe',3,172),(11171,165,'Reutov',3,172),(11172,165,'Roshal\'',3,172),(11173,165,'Ruza',3,172),(11175,165,'Serebranniye-Prudy',3,172),(11178,165,'Shakhovskaya',3,172),(11179,165,'Shatura',3,172),(11180,165,'Shchelkovo',3,172),(11181,165,'Shcherbinka',3,172),(11182,165,'Solnechnogorsk',3,172),(11183,165,'Stupino',3,172),(11184,165,'Taldom',3,172),(11186,165,'Vidnoe',3,172),(11187,165,'Vidnoye',3,172),(11188,165,'Volokolamsk',3,172),(11189,165,'Voskhod',3,172),(11191,165,'Yubileynyy',3,172),(11192,165,'Zaraysk',3,172),(11193,165,'Zheleznodorozhnyy',3,172),(11195,165,'Zvenigorod',3,172),(11198,165,'Kirovsk',3,173),(11199,165,'Kola',3,173),(11200,165,'Kovdor',3,173),(11201,165,'Levozero',3,173),(11202,165,'Monchegorsk',3,173),(11204,165,'Nikel\'',3,173),(11205,165,'Olenegorsk',3,173),(11206,165,'Ostrovnoy',3,173),(11207,165,'Polyarnye Zori',3,173),(11208,165,'Severomorsk',3,173),(11209,165,'Skalistiy',3,173),(11210,165,'Snezhnogorsk',3,173),(11211,165,'Umba',3,173),(11212,165,'Zaozersk',3,173),(11213,165,'Ardatov',3,174),(11214,165,'Arzamas',3,174),(11215,165,'Balakhna',3,174),(11216,165,'Bogorodsk',3,174),(11217,165,'Bol\'shoye Bodino',3,174),(11218,165,'Bol\'shoye Murashkino',3,174),(11219,165,'Bor',3,174),(11220,165,'Buturlino',3,174),(11221,165,'Chkalovsk',3,174),(11222,165,'Dalnee Konstantinovo',3,174),(11223,165,'Diveevo',3,174),(11224,165,'Dzerzhinsk',3,174),(11225,165,'Gagino',3,174),(11226,165,'Gorodets',3,174),(11227,165,'Knyaginino',3,174),(11228,165,'Kovernino',3,174),(11229,165,'Krasniye Baky',3,174),(11230,165,'Kstovo',3,174),(11231,165,'Kulebaki',3,174),(11232,165,'Lukoyanov',3,174),(11233,165,'Lyskovo',3,174),(11234,165,'Navashino',3,174),(11236,165,'Pavlovo',3,174),(11237,165,'Perevoz',3,174),(11238,165,'Pervomaysk',3,174),(11239,165,'Pil\'na',3,174),(11240,165,'Pochinkiy',3,174),(11242,165,'Sechenovo',3,174),(11243,165,'Semenov',3,174),(11244,165,'Sergach',3,174),(11245,165,'Shakhun\'ya',3,174),(11246,165,'Sharanga',3,174),(11247,165,'Shatki',3,174),(11248,165,'Sokol\'skoye',3,174),(11249,165,'Sosnovskoe',3,174),(11250,165,'Spasskoe',3,174),(11251,165,'Tonkino',3,174),(11252,165,'Tonshayevo',3,174),(11253,165,'Urazovka',3,174),(11254,165,'Uren',3,174),(11255,165,'Vacha',3,174),(11256,165,'Vad',3,174),(11257,165,'Varnavino',3,174),(11258,165,'Vetluga',3,174),(11259,165,'Volodarsk',3,174),(11260,165,'Vorotynets',3,174),(11261,165,'Voskresenskoye',3,174),(11262,165,'Voznesenskoye',3,174),(11263,165,'Vyksa',3,174),(11264,165,'Batetskiy',3,175),(11266,165,'Borovichi',3,175),(11267,165,'Chudovo',3,175),(11268,165,'Demyansk',3,175),(11269,165,'Kholm',3,175),(11270,165,'Khvoynaya',3,175),(11271,165,'Kresttsy',3,175),(11272,165,'Lyubitino',3,175),(11273,165,'Malaya Vishera',3,175),(11274,165,'Marevo',3,175),(11275,165,'Moshenskoye',3,175),(11276,165,'Okulovka',3,175),(11277,165,'Parfino',3,175),(11278,165,'Pestovo',3,175),(11279,165,'Poddor\'ye',3,175),(11280,165,'Shimsk',3,175),(11281,165,'Sol\'tsy',3,175),(11282,165,'Staraya Russa',3,175),(11283,165,'Valday',3,175),(11284,165,'Volot',3,175),(11285,165,'Bagan',6,176),(11286,165,'Barabinsk',6,176),(11287,165,'Berdsk',6,176),(11288,165,'Bolotnoye',6,176),(11289,165,'Chany',6,176),(11290,165,'Cherepanovo',6,176),(11291,165,'Chistooezernoye',6,176),(11292,165,'Chulym',6,176),(11293,165,'Dovolnoe',6,176),(11294,165,'Iskitim',6,176),(11295,165,'Karasuk',6,176),(11296,165,'Kargat',6,176),(11297,165,'Kochenevo',6,176),(11298,165,'Kochki',6,176),(11299,165,'Kolyvan',6,176),(11300,165,'Krasnozerskoye',6,176),(11301,165,'Kupino',6,176),(11302,165,'Kuybyshev',6,176),(11303,165,'Kyshtovka',6,176),(11304,165,'Maslyanino',6,176),(11305,165,'Moshkovo',6,176),(11307,165,'Ob\'',6,176),(11308,165,'Ordynskoye',6,176),(11309,165,'Severnoye',6,176),(11310,165,'Suzun',6,176),(11311,165,'Tatarsk',6,176),(11312,165,'Toguchin',6,176),(11313,165,'Ubinskoye',6,176),(11314,165,'Ust\'-Tarka',6,176),(11315,165,'Vengerovo',6,176),(11316,165,'Zdvinsk',6,176),(11317,165,'Bol\'sherechye',6,177),(11318,165,'Bol\'shiye Uki',6,177),(11319,165,'Cherlak',6,177),(11320,165,'Gor\'kovskoye',6,177),(11321,165,'Isil\'kul\'',6,177),(11322,165,'Kalachinsk',6,177),(11323,165,'Kolosovka',6,177),(11324,165,'Kormilovka',6,177),(11325,165,'Lyubinskyy',6,177),(11326,165,'Mar\'yanovka',6,177),(11327,165,'Moskalenky',6,177),(11328,165,'Motorovo',6,177),(11329,165,'Muromtsevo',6,177),(11330,165,'Nazyvaevsk',6,177),(11331,165,'Nizhnaya Omka',6,177),(11332,165,'Novovarshavka',6,177),(11333,165,'Odesskoye',6,177),(11334,165,'Okoneshnikovo',6,177),(11336,165,'Pavlogradka',6,177),(11337,165,'Poltavka',6,177),(11338,165,'Russkaya Polyana',6,177),(11339,165,'Sargatskoye',6,177),(11340,165,'Sedel\'nikovo',6,177),(11341,165,'Sherbakul\'',6,177),(11342,165,'Tara',6,177),(11343,165,'Tavricheskoye',6,177),(11344,165,'Tevriz',6,177),(11345,165,'Tyukalinsk',6,177),(11346,165,'Ust\'-Ishim',6,177),(11347,165,'Znamenskoe',6,177),(11348,165,'Abdulino',5,178),(11349,165,'Adamovka',5,178),(11350,165,'Akbulak',5,178),(11351,165,'Aleksandrovka',5,178),(11352,165,'Asekeevo',5,178),(11353,165,'Belyayevka',5,178),(11354,165,'Buguruslan',5,178),(11355,165,'Buzuluk',5,178),(11356,165,'Dombarovka',5,178),(11357,165,'Gay',5,178),(11358,165,'Grachevka',5,178),(11359,165,'Ilek',5,178),(11360,165,'Komarovskiy',5,178),(11361,165,'Kurmanaevka',5,178),(11362,165,'Kuvandyk',5,178),(11363,165,'Kvarken',5,178),(11364,165,'Matveevka',5,178),(11365,165,'Mednogorsk',5,178),(11366,165,'Novoorsk',5,178),(11367,165,'Novosergievka',5,178),(11368,165,'Novotroitsk',5,178),(11369,165,'Oktyabr\'skoye',5,178),(11371,165,'Orsk',5,178),(11372,165,'Perevolotskyy',5,178),(11373,165,'Pervomaysky',5,178),(11374,165,'Pleshanovo',5,178),(11375,165,'Ponomarevka',5,178),(11376,165,'Sakmara',5,178),(11377,165,'Saraktash',5,178),(11378,165,'Severnoye',5,178),(11379,165,'Sharlyk',5,178),(11380,165,'Sol\'-Iletsk',5,178),(11381,165,'Sorochinsk',5,178),(11382,165,'Svetlyy',5,178),(11383,165,'Tashla',5,178),(11384,165,'Totskoye',5,178),(11385,165,'Tyulgan',5,178),(11386,165,'Yasnyy',5,178),(11387,165,'Bolkhov',3,179),(11388,165,'Chomytovo',3,179),(11389,165,'Dmitrov-Orlovsky',3,179),(11390,165,'Dolgoye',3,179),(11391,165,'Glazunovka',3,179),(11392,165,'Khotynets',3,179),(11393,165,'Kolpny',3,179),(11394,165,'Korsakovo',3,179),(11395,165,'Krasnaya Zarya',3,179),(11396,165,'Kromy',3,179),(11397,165,'Livny',3,179),(11398,165,'Maloarkhangel\'sk',3,179),(11399,165,'Mtsensk',3,179),(11400,165,'Naryshkino',3,179),(11401,165,'Novosil\'',3,179),(11403,165,'Pokrovskoye',3,179),(11404,165,'Shablykino',3,179),(11405,165,'Sosokovo',3,179),(11406,165,'Trosna',3,179),(11407,165,'Verkhov\'ye',3,179),(11408,165,'Zalegosh\'',3,179),(11409,165,'Zmiyevka',3,179),(11410,165,'Znamenka',3,179),(11411,165,'Bashmakovo',3,180),(11412,165,'Bednodem\'yanovsk',3,180),(11413,165,'Bekovo',3,180),(11414,165,'Belinskiy',3,180),(11415,165,'Bessonovka',3,180),(11416,165,'Gorodishche',3,180),(11417,165,'Issa',3,180),(11418,165,'Kamenka',3,180),(11419,165,'Kolyshley',3,180),(11420,165,'Kondol\'',3,180),(11421,165,'Kuznetsk',3,180),(11422,165,'Lopatino',3,180),(11423,165,'Lunino',3,180),(11424,165,'Malaya Serdova',3,180),(11425,165,'Mokshan',3,180),(11426,165,'Narovchat',3,180),(11427,165,'Neverkino',3,180),(11428,165,'Nikol\'sk',3,180),(11429,165,'Nizhniy Lomov',3,180),(11430,165,'Pachelma',3,180),(11432,165,'Russkiy Kameshkir',3,180),(11433,165,'Serdobsk',3,180),(11434,165,'Shemysheyka',3,180),(11435,165,'Sosnonoborsk',3,180),(11436,165,'Tamapa',3,180),(11437,165,'Vad\'nsk',3,180),(11438,165,'Zarechnyy',3,180),(11439,165,'Zemetchino',3,180),(11440,165,'Aleksandrovsk',5,181),(11441,165,'Barda',5,181),(11442,165,'Berezniki',5,181),(11443,165,'Bolshaya Sosnova',5,181),(11444,165,'Chastyye',5,181),(11445,165,'Chaykovskiy',5,181),(11446,165,'Cherdyn\'',5,181),(11447,165,'Chernushka',5,181),(11448,165,'Chusovoy',5,181),(11449,165,'Dobryanka',5,181),(11450,165,'Elovo',5,181),(11451,165,'Gornozavodsk',5,181),(11452,165,'Gremyachinsk',5,181),(11453,165,'Gubakha',5,181),(11454,165,'Ilinsky',5,181),(11455,165,'Karagay',5,181),(11456,165,'Kizel',5,181),(11457,165,'Krasnokamsk',5,181),(11458,165,'Krasnovishersk',5,181),(11459,165,'Kueda',5,181),(11460,165,'Kungur',5,181),(11461,165,'Lys\'va',5,181),(11462,165,'Nytva',5,181),(11463,165,'Ocher',5,181),(11464,165,'Okhansk',5,181),(11465,165,'Oktyabrsky',5,181),(11466,165,'Orda',5,181),(11467,165,'Osa',5,181),(11469,165,'Siva',5,181),(11470,165,'Solikamsk',5,181),(11471,165,'Suksun',5,181),(11472,165,'Uinskoye',5,181),(11473,165,'Usol\'e',5,181),(11474,165,'Ust\'-Kishert\'',5,181),(11475,165,'Vereshchagino',5,181),(11476,165,'Zvezdnyy',5,181),(11477,165,'Anuchino',10,182),(11478,165,'Arsen\'ev',10,182),(11479,165,'Artem',10,182),(11480,165,'Bol\'shoy Kamen\'',10,182),(11481,165,'Chernigovka',10,182),(11482,165,'Chuguevka',10,182),(11483,165,'Dal\'negorsk',10,182),(11484,165,'Dal\'nerechensk',10,182),(11485,165,'Fokino',10,182),(11486,165,'Kamen\'-Rybolov',10,182),(11487,165,'Kavalerovo',10,182),(11488,165,'Khorol',10,182),(11489,165,'Kirovsky',10,182),(11490,165,'Lazo',10,182),(11491,165,'Lesozavodsk',10,182),(11492,165,'Luchegorsk',10,182),(11493,165,'Mikhaylovka',10,182),(11495,165,'Novopokrovka',10,182),(11496,165,'Ol\'ga',10,182),(11497,165,'Partizansk',10,182),(11498,165,'Pogranichny',10,182),(11499,165,'Pokrovka',10,182),(11500,165,'Slavyanka',10,182),(11501,165,'Spassk-Dal\'nyy',10,182),(11502,165,'Terney',10,182),(11504,165,'Vladimiro-Alexandrovskoye',10,182),(11506,165,'Volno-Nadezhdenskoye',10,182),(11507,165,'Yakovlevka',10,182),(11508,165,'Bezhanitsy',3,183),(11509,165,'Dedovichi',3,183),(11510,165,'Dno',3,183),(11511,165,'Gdov',3,183),(11512,165,'Krasnogorodskoye',3,183),(11513,165,'Kun\'ya',3,183),(11514,165,'Loknya',3,183),(11515,165,'Nevel\'',3,183),(11516,165,'Novorzhev',3,183),(11517,165,'Novosokol\'nichi',3,183),(11518,165,'Opochka',3,183),(11519,165,'Ostrov',3,183),(11520,165,'Palkino',3,183),(11521,165,'Pechory',3,183),(11522,165,'Plyussa',3,183),(11523,165,'Porkhov',3,183),(11525,165,'Pushkinskiye Gory',3,183),(11526,165,'Pustoshka',3,183),(11527,165,'Pytalovo',3,183),(11528,165,'Sebezh',3,183),(11529,165,'Strugi-Krasnyye',3,183),(11530,165,'Usvyaty',3,183),(11531,165,'Velikie Luki',3,183),(11532,165,'Adygeysk',3,184),(11533,165,'Giaginskaya',3,184),(11534,165,'Koshekhabli',3,184),(11535,165,'Krasnogvardeyskoye',3,184),(11536,165,'Maykop',3,184),(11537,165,'Shovgenovskiy',3,184),(11538,165,'Takhtamukay',3,184),(11539,165,'Tul\'skyy',3,184),(11540,165,'Chemak',7,185),(11541,165,'Choya',7,185),(11542,165,'Gorno-Altaysk',7,185),(11543,165,'Kosh-Agach',7,185),(11544,165,'Mayma',7,185),(11545,165,'Onguday',7,185),(11546,165,'Shebalino',7,185),(11547,165,'Turochak',7,185),(11548,165,'Ulagan',7,185),(11549,165,'Ust\'-Kann',7,185),(11550,165,'Ust\'-Koksa',7,185),(11551,165,'Agidel\'',5,186),(11553,165,'Askarovo',5,186),(11554,165,'Askino',5,186),(11555,165,'Bakaly',5,186),(11556,165,'Baltachev',5,186),(11557,165,'Baymak',5,186),(11558,165,'Belebey',5,186),(11559,165,'Belorets',5,186),(11560,165,'Birsk',5,186),(11561,165,'Blagovar',5,186),(11563,165,'Bol\'sheystinkinskoye',5,186),(11564,165,'Bozhbulyak',5,186),(11565,165,'Burayevo',5,186),(11566,165,'Buribay',5,186),(11567,165,'Burzyan',5,186),(11568,165,'Buzdyak',5,186),(11569,165,'Chekmagush',5,186),(11570,165,'Chishmy',5,186),(11571,165,'Davlekanovo',5,186),(11572,165,'Duvan',5,186),(11573,165,'Dyurtyuli',5,186),(11574,165,'Fedorovka',5,186),(11575,165,'Iglino',5,186),(11576,165,'Inkogo-Verezhovka',5,186),(11577,165,'Ishimbay',5,186),(11578,165,'Isyangulovo',5,186),(11579,165,'Kaltasy',5,186),(11580,165,'Karaidel\'skiy',5,186),(11581,165,'Karmaskaly',5,186),(11582,165,'Kirgiz-Miyaki',5,186),(11583,165,'Krasnousolskiy',5,186),(11584,165,'Kraznaya Gorka',5,186),(11585,165,'Kumertau',5,186),(11586,165,'Kushnarenkovo',5,186),(11587,165,'Meleuz',5,186),(11588,165,'Mezhgor\'e',5,186),(11589,165,'Mishkino',5,186),(11590,165,'Mrakovo',5,186),(11591,165,'Neftekamsk',5,186),(11592,165,'Novobelokatay',5,186),(11593,165,'Oktyabr\'sk',5,186),(11594,165,'Rayevsky',5,186),(11595,165,'Salavat',5,186),(11596,165,'Sharam',5,186),(11597,165,'Sibay',5,186),(11598,165,'Sterlibashevo',5,186),(11599,165,'Sterlitamak',5,186),(11600,165,'Tolbaz\'',5,186),(11601,165,'Tuymazy',5,186),(11602,165,'Uchali',5,186),(11604,165,'Verkhneyarkeevo',5,186),(11605,165,'Verkhniye Kigi',5,186),(11606,165,'Verkhniye Tatyshly',5,186),(11607,165,'Yanaul',5,186),(11608,165,'Yermekeevo',5,186),(11609,165,'Zilair',5,186),(11610,165,'Bagdarin',8,187),(11611,165,'Barguzin',8,187),(11612,165,'Bichura',8,187),(11613,165,'Dzhida',8,187),(11614,165,'Gusinoozersk',8,187),(11615,165,'Ivolginsk',8,187),(11616,165,'Kabansk',8,187),(11617,165,'Khorinsk',8,187),(11618,165,'Kiren',8,187),(11619,165,'Kizhinga',8,187),(11620,165,'Kurumkan',8,187),(11621,165,'Kyachta',8,187),(11622,165,'Mukhorshibir',8,187),(11623,165,'Orlik',8,187),(11624,165,'Severobaykal\'sk',8,187),(11625,165,'Sosnovo-Ozerskoya',8,187),(11626,165,'Taksimo',8,187),(11627,165,'Tarbagatay',8,187),(11628,165,'Turuntaevo',8,187),(11629,165,'Ulan-Ude',8,187),(11630,165,'Zaigraevo',8,187),(11631,165,'Zakamensk',8,187),(11632,165,'Agbaly',3,188),(11633,165,'Akhty',3,188),(11634,165,'Akusha',3,188),(11635,165,'Babayurt',3,188),(11636,165,'Beshta',3,188),(11637,165,'Botlikh',3,188),(11638,165,'Buynaksk',3,188),(11639,165,'Chebla',3,188),(11640,165,'Dagestanskie Ogni',3,188),(11641,165,'Derbent',3,188),(11642,165,'Dilim',3,188),(11643,165,'Gergebil\'',3,188),(11644,165,'Gunib',3,188),(11645,165,'Izberbash',3,188),(11646,165,'Karabudokhkent',3,188),(11647,165,'Karata',3,188),(11648,165,'Kaspiysk',3,188),(11649,165,'Kasumkent',3,188),(11650,165,'Khasavyurt',3,188),(11651,165,'Khiv',3,188),(11652,165,'Khuchny',3,188),(11653,165,'Khunzakh',3,188),(11654,165,'Kizilyurt',3,188),(11655,165,'Kizlyar',3,188),(11656,165,'Korkmaskala',3,188),(11657,165,'Kumukh',3,188),(11658,165,'Kurakh',3,188),(11659,165,'Levashy',3,188),(11660,165,'Madshalis',3,188),(11661,165,'Magaramkent',3,188),(11663,165,'Mehalita',3,188),(11664,165,'Novokayakent',3,188),(11665,165,'Novolakskoe',3,188),(11666,165,'Purib',3,188),(11667,165,'Rutul',3,188),(11668,165,'Sergokala',3,188),(11669,165,'Tarumovka',3,188),(11670,165,'Terekli-Mekteb',3,188),(11671,165,'Tlyarata',3,188),(11672,165,'Tpig',3,188),(11673,165,'Untsukul\'',3,188),(11674,165,'Urkarakh',3,188),(11675,165,'Uzuhkhay',3,188),(11676,165,'Vachy',3,188),(11677,165,'Yuzhno-Sukhokumsk',3,188),(11678,165,'Dzhayrakh',3,189),(11679,165,'Karabulak',3,189),(11680,165,'Malgobek',3,189),(11681,165,'Nazran\'',3,189),(11682,165,'Ordshonikidsevskaya',3,189),(11683,165,'Bol\'shoy-Tsaryy',3,190),(11685,165,'Gorodovikovsk',3,190),(11686,165,'Iki-Burul\'',3,190),(11687,165,'Ketchenery',3,190),(11688,165,'Komsomol\'skyy',3,190),(11689,165,'Lagan\'',3,190),(11690,165,'Malya-Derban',3,190),(11691,165,'Priyutnoye',3,190),(11692,165,'Sadovoye',3,190),(11693,165,'Troytskoye',3,190),(11694,165,'Tsaray-Aman',3,190),(11695,165,'Yashalta',3,190),(11696,165,'Yashkul\'',3,190),(11697,165,'Belomorsk',3,191),(11698,165,'Kem\'',3,191),(11699,165,'Kem',3,191),(11700,165,'Kondopoga',3,191),(11702,165,'Lahdenpohya',3,191),(11703,165,'Louhi',3,191),(11704,165,'Medvezhegorsk',3,191),(11705,165,'Muezersky',3,191),(11706,165,'Olonets',3,191),(11708,165,'Pitkyaranta',3,191),(11709,165,'Pryazha',3,191),(11710,165,'Pudozh',3,191),(11712,165,'Sortaval\'',3,191),(11713,165,'Suoyar\'i',3,191),(11714,165,'Abakan',7,192),(11715,165,'Askis',7,192),(11716,165,'Belyy-Yur',7,192),(11717,165,'Beya',7,192),(11718,165,'Bograd',7,192),(11719,165,'Chernogorsk',7,192),(11720,165,'Kopyevo',7,192),(11721,165,'Sayanogorsk',7,192),(11722,165,'Shira',7,192),(11723,165,'Tashtyp',7,192),(11724,165,'Ust\'-Abakan',7,192),(11725,165,'Ayikino',5,193),(11726,165,'Bilgort',5,193),(11727,165,'Bitsinga',5,193),(11728,165,'Emva',5,193),(11729,165,'Inta',5,193),(11730,165,'Izhma',5,193),(11731,165,'Kortkeros',5,193),(11732,165,'Koslan',5,193),(11733,165,'Koygorod',5,193),(11734,165,'Ob\'yatsevo',5,193),(11735,165,'Pechora',5,193),(11736,165,'Sosnogorsk',5,193),(11738,165,'Troitsko-Pechorsk',5,193),(11740,165,'Usinsk',5,193),(11741,165,'Ust\'-Kulom',5,193),(11742,165,'Ust\'-Tsilma',5,193),(11743,165,'Vorkuta',5,193),(11744,165,'Vuktyl',5,193),(11746,165,'Kilemari',3,194),(11747,165,'Koz\'modem\'yansk',3,194),(11748,165,'Kuzhener',3,194),(11749,165,'Mari-Turek',3,194),(11750,165,'Medvedevo',3,194),(11751,165,'Morki',3,194),(11752,165,'Novyy Tor\'yal\'',3,194),(11753,165,'Orshanka',3,194),(11754,165,'Paran\'ga',3,194),(11755,165,'Sernur',3,194),(11756,165,'Sovetskiy',3,194),(11757,165,'Volzhsk',3,194),(11758,165,'Yurnio',3,194),(11759,165,'Zvenigovo',3,194),(11760,165,'Ardatov',3,195),(11761,165,'Atyashevo',3,195),(11762,165,'Atyu\'yevo',3,195),(11763,165,'Bol\'shiye Berezniki',3,195),(11764,165,'Bol\'shiye Ignatovo',3,195),(11765,165,'Chamzinka',3,195),(11766,165,'Dubenki',3,195),(11767,165,'Insar',3,195),(11768,165,'Kadoshkino',3,195),(11769,165,'Kemlya',3,195),(11770,165,'Kovylkino',3,195),(11771,165,'Krasnoslobodsk',3,195),(11772,165,'Lyamdyay',3,195),(11773,165,'Romodanovo',3,195),(11774,165,'Ruzaevka',3,195),(11776,165,'Staroye Shaigovo',3,195),(11777,165,'Temnikov',3,195),(11778,165,'Ten\'gushevo',3,195),(11779,165,'Torbeyevo',3,195),(11780,165,'Yel\'niki',3,195),(11781,165,'Zubovo-Polyana',3,195),(11782,165,'Alagir',3,196),(11783,165,'Ardon',3,196),(11784,165,'Beslan',3,196),(11785,165,'Digora',3,196),(11786,165,'Mozdok',3,196),(11787,165,'Oktyabr\'skoye',3,196),(11788,165,'Vladikavkaz',3,196),(11789,165,'Yelchotovo',3,196),(11790,165,'Zikola',3,196),(11791,165,'Aldan',9,197),(11792,165,'Amga',9,197),(11793,165,'Batagay',9,197),(11794,165,'Belaya Gora',9,197),(11795,165,'Berdigestyakh',9,197),(11796,165,'Borogontsy',9,197),(11797,165,'Chandyiga',9,197),(11798,165,'Chokurdakh',9,197),(11799,165,'Churapcha',9,197),(11800,165,'Deputatsky',9,197),(11801,165,'Lensk',9,197),(11802,165,'Mayya',9,197),(11803,165,'Mirnyy',9,197),(11804,165,'Namtsy',9,197),(11805,165,'Neryungri',9,197),(11806,165,'Nyurba',9,197),(11807,165,'Olekminsk',9,197),(11808,165,'Pokrovsk',9,197),(11809,165,'Sangar',9,197),(11810,165,'Srednekolymsk',9,197),(11811,165,'Suntar',9,197),(11812,165,'Tyksy',9,197),(11813,165,'Ust\'-Maya',9,197),(11814,165,'Ust\'-Nera',9,197),(11815,165,'Verchneviluysk',9,197),(11816,165,'Vilyuysk',9,197),(11818,165,'Yutik-Kyel',9,197),(11819,165,'Zerskyy',9,197),(11820,165,'Zhigansk',9,197),(11821,165,'Ziryanka',9,197),(11822,165,'Ak-Dovurak',7,198),(11823,165,'Bay-Chaak',7,198),(11824,165,'Chaa-Khol\'',7,198),(11825,165,'Chadan',7,198),(11826,165,'Chandagaty',7,198),(11827,165,'Choby-Aksy',7,198),(11828,165,'Erzin',7,198),(11830,165,'Kyzyl-Mashalyk',7,198),(11831,165,'Mugur-Aksy',7,198),(11832,165,'Samagaltay',7,198),(11833,165,'Shagonar',7,198),(11834,165,'Sut-Aksy',7,198),(11835,165,'Teyyeli',7,198),(11836,165,'Toora-Chem',7,198),(11837,165,'Turan',7,198),(11838,165,'Zaryig-Sep',7,198),(11839,165,'Agryz',3,199),(11840,165,'Aksubaevo',3,199),(11841,165,'Aktanysh',3,199),(11842,165,'Alekseevskoe',3,199),(11843,165,'Al\'met\'evsk',3,199),(11844,165,'Apastovo',3,199),(11845,165,'Arsk',3,199),(11846,165,'Aznakaevo',3,199),(11847,165,'Baltasi',3,199),(11848,165,'Batsariye-Mataki',3,199),(11849,165,'Bavli',3,199),(11850,165,'Bavly',3,199),(11851,165,'Bogatye Sabyi',3,199),(11852,165,'Bolgar',3,199),(11853,165,'Bol\'shaya Atnya',3,199),(11854,165,'Bol\'shiye Kaybiziy',3,199),(11855,165,'Bugul\'ma',3,199),(11856,165,'Buinsk',3,199),(11857,165,'Cheremshan',3,199),(11858,165,'Chistopol\'',3,199),(11859,165,'Kamskoe Ustie',3,199),(11861,165,'Kukmor',3,199),(11862,165,'Laishevo',3,199),(11863,165,'Leninogorsk',3,199),(11864,165,'Mamadysh',3,199),(11865,165,'Mendeleyevsk',3,199),(11866,165,'Menzelinsk',3,199),(11867,165,'Muslyumovo',3,199),(11869,165,'Nizhnekamsk',3,199),(11870,165,'Novosheshminsk',3,199),(11871,165,'Nurlat',3,199),(11872,165,'Pestretsy',3,199),(11873,165,'Rybnaya Sloboda',3,199),(11874,165,'Sarmanovo',3,199),(11875,165,'Staroe Drozhzhanoye',3,199),(11876,165,'Tetyushi',3,199),(11877,165,'Tyulyach',3,199),(11878,165,'Urussu',3,199),(11879,165,'Verkhnyi Uslon',3,199),(11880,165,'Vysokaya Gora',3,199),(11881,165,'Yelabuga',3,199),(11882,165,'Zainsk',3,199),(11883,165,'Zelenodol\'sk',3,199),(11884,165,'Aksay',3,200),(11886,165,'Bagaevsky',3,200),(11887,165,'Bataysk',3,200),(11888,165,'Belaya Kalitva',3,200),(11889,165,'Bokovskaya',3,200),(11890,165,'Bol\'shaya Martynovka',3,200),(11891,165,'Chaltyr\'',3,200),(11892,165,'Chertovo',3,200),(11893,165,'Donetsk',3,200),(11894,165,'Dubovskoye',3,200),(11895,165,'Egorlykskaya',3,200),(11896,165,'Glubokyy',3,200),(11897,165,'Gukovo',3,200),(11898,165,'Kagalnitskaya',3,200),(11899,165,'Kamenolomny',3,200),(11900,165,'Kamensk-Shakhtinskiy',3,200),(11901,165,'Kashary',3,200),(11902,165,'Kazanskaya',3,200),(11903,165,'Konstantinovsk',3,200),(11904,165,'Krasnyy Sulin',3,200),(11905,165,'Kuibyshevo',3,200),(11906,165,'Matveev Kurgan',3,200),(11907,165,'Millerovo',3,200),(11908,165,'Milutinskaya',3,200),(11909,165,'Morozovsk',3,200),(11911,165,'Novoshakhtinsk',3,200),(11912,165,'Oblivskaya',3,200),(11913,165,'Orlovskiy',3,200),(11914,165,'Peschanokopskoye',3,200),(11915,165,'Pokrovskoye',3,200),(11916,165,'Proletarsk',3,200),(11917,165,'Remontnoye',3,200),(11918,165,'Rodionovo-Nesvetayskaya',3,200),(11919,165,'Romanovskaya',3,200),(11921,165,'Sal\'sk',3,200),(11922,165,'Semikarakorsk',3,200),(11923,165,'Shakhty',3,200),(11924,165,'Sovetskaya',3,200),(11926,165,'Tarasovskiy',3,200),(11927,165,'Tatsinskaya',3,200),(11928,165,'Tselina',3,200),(11929,165,'Tsimlyansk',3,200),(11930,165,'Ust-Donetsky',3,200),(11931,165,'Vesely',3,200),(11932,165,'Veshenskaya',3,200),(11934,165,'Zavetnoye',3,200),(11935,165,'Zernograd',3,200),(11936,165,'Zimovniki',3,200),(11937,165,'Zverevo',3,200),(11938,165,'Aleksandro-Nevskiy',3,201),(11939,165,'Chuchkovo',3,201),(11940,165,'Ermish',3,201),(11941,165,'Kadom',3,201),(11942,165,'Kasimov',3,201),(11943,165,'Korablino',3,201),(11944,165,'Mikhaylov',3,201),(11945,165,'Miloslavskoye',3,201),(11946,165,'Pitelino',3,201),(11947,165,'Pronsk',3,201),(11948,165,'Putyatino',3,201),(11950,165,'Ryazhsk',3,201),(11951,165,'Rybnoye',3,201),(11952,165,'Sapozhok',3,201),(11953,165,'Sarai',3,201),(11954,165,'Sasovo',3,201),(11955,165,'Shatsk',3,201),(11956,165,'Shilovo',3,201),(11957,165,'Skopin',3,201),(11958,165,'Spas-Klepiki',3,201),(11959,165,'Spassk-Ryazanskiy',3,201),(11960,165,'Starozhilovo',3,201),(11961,165,'Ukholovo',3,201),(11962,165,'Zakharovo',3,201),(11963,165,'Aleksandrovsk-Sakhalinskiy',10,202),(11964,165,'Aniva',10,202),(11965,165,'Dolinsk',10,202),(11966,165,'Kholmsk',10,202),(11967,165,'Korsakov',10,202),(11968,165,'Kuril\'sk',10,202),(11969,165,'Makarov',10,202),(11970,165,'Nevel\'sk',10,202),(11971,165,'Nogliki',10,202),(11972,165,'Okha',10,202),(11973,165,'Poronaysk',10,202),(11974,165,'Severo-Kurilsk',10,202),(11975,165,'Smirnykh',10,202),(11976,165,'Tomari',10,202),(11977,165,'Tymovskoe',10,202),(11978,165,'Uglegorsk',10,202),(11979,165,'Yuzhno-Kuril\'sk',10,202),(11981,165,'Alekseyevka',4,203),(11982,165,'Bezenchuk',4,203),(11983,165,'Bogatoye',4,203),(11984,165,'Bol\'shaya Chernigovka',4,203),(11985,165,'Bol\'shuya Glushitsa',4,203),(11986,165,'Borskoye',4,203),(11987,165,'Chapaevsk',4,203),(11988,165,'Chelno-Vershiny',4,203),(11989,165,'Elkhovka',4,203),(11990,165,'Isakly',4,203),(11991,165,'Kamyshla',4,203),(11992,165,'Khvorostyanka',4,203),(11993,165,'Kinel\'',4,203),(11994,165,'Kinel\'-Cherkasy',4,203),(11995,165,'Klyavlino',4,203),(11996,165,'Koshki',4,203),(11997,165,'Krasnoarmeyskoye',4,203),(11998,165,'Krasny Yar',4,203),(11999,165,'Neftegorsk',4,203),(12000,165,'Novokuybyshevsk',4,203),(12001,165,'Oktyabr\'sk',4,203),(12002,165,'Otradnyy',4,203),(12003,165,'Pestravka',4,203),(12004,165,'Pokhvistnevo',4,203),(12005,165,'Privolsh\'e',4,203),(12007,165,'Sergiyevsk',4,203),(12008,165,'Shentala',4,203),(12009,165,'Shigony',4,203),(12012,165,'Zhigulevsk',4,203),(12013,165,'Aleksandrovo-Gay',5,204),(12014,165,'Arkadak',5,204),(12015,165,'Atkarsk',5,204),(12016,165,'Balakovo',5,204),(12017,165,'Balashov',5,204),(12018,165,'Baltay',5,204),(12019,165,'Bazarnyy-Karabulak',5,204),(12020,165,'Dergachi',5,204),(12021,165,'Dukhovnitskoye',5,204),(12022,165,'Ekaterinovka',5,204),(12024,165,'Ershov',5,204),(12025,165,'Gornyy',5,204),(12026,165,'Iventeyevka',5,204),(12027,165,'Kalininsk',5,204),(12028,165,'Khvalynsk',5,204),(12029,165,'Krasnoarmeysk',5,204),(12030,165,'Krasnyy Kut',5,204),(12031,165,'Lysye Gory',5,204),(12032,165,'Marks',5,204),(12033,165,'Mokrous',5,204),(12034,165,'Novouzensk',5,204),(12035,165,'Novye Burasy',5,204),(12036,165,'Ozinki',5,204),(12037,165,'Perelub',5,204),(12038,165,'Petrovsk',5,204),(12039,165,'Piterka',5,204),(12040,165,'Pugachev',5,204),(12041,165,'Romanovka',5,204),(12042,165,'Rovnoye',5,204),(12043,165,'Rtishchevo',5,204),(12044,165,'Samoylovka',5,204),(12046,165,'Shikhany',5,204),(12047,165,'Stepnoye',5,204),(12048,165,'Svetlyy',5,204),(12049,165,'Tatishevo',5,204),(12050,165,'Turki',5,204),(12051,165,'Vol\'sk',5,204),(12052,165,'Voskresenskoye',5,204),(12053,165,'Demidov',3,205),(12054,165,'Desnogorsk',3,205),(12055,165,'Dorogobuzh',3,205),(12056,165,'Dukhovshchina',3,205),(12057,165,'El\'nya',3,205),(12058,165,'Ershichi',3,205),(12059,165,'Gagarin',3,205),(12060,165,'Glinka',3,205),(12061,165,'Kardymovo',3,205),(12062,165,'Khislavichi',3,205),(12063,165,'Kholm-Zhirkovsky',3,205),(12064,165,'Krasnyy',3,205),(12065,165,'Monastyrshchina',3,205),(12066,165,'Novodugino',3,205),(12067,165,'Pochinok',3,205),(12068,165,'Roslavl\'',3,205),(12069,165,'Rudnya',3,205),(12070,165,'Safonovo',3,205),(12071,165,'Shumyachi',3,205),(12073,165,'Sychevka',3,205),(12074,165,'Temkino',3,205),(12075,165,'Ugra',3,205),(12076,165,'Velizh',3,205),(12077,165,'Vyaz\'ma',3,205),(12078,165,'Yartsevo',3,205),(12079,165,'Alexandrovskoye',3,206),(12080,165,'Arzgir',3,206),(12081,165,'Blagodarny',3,206),(12082,165,'Budennovsk',3,206),(12083,165,'Divnoye',3,206),(12084,165,'Donskoye',3,206),(12086,165,'Georgievsk',3,206),(12087,165,'Grachevka',3,206),(12088,165,'Ipatovo',3,206),(12089,165,'Izobilny',3,206),(12091,165,'Kochubeyevskoye',3,206),(12092,165,'Krasnogvardeyskoye',3,206),(12093,165,'Kursavka',3,206),(12094,165,'Kyrskaya',3,206),(12095,165,'Lermontov',3,206),(12096,165,'Letnyaya Stavka',3,206),(12097,165,'Levokumskoye',3,206),(12098,165,'Mineral\'nye Vody',3,206),(12099,165,'Neftekumsk',3,206),(12100,165,'Nevinnomyssk',3,206),(12101,165,'Novoaleksandrovsk',3,206),(12102,165,'Novopavlovsk',3,206),(12103,165,'Novoselitskoye',3,206),(12105,165,'Shpakovskoye',3,206),(12106,165,'Stavropol\'',3,206),(12107,165,'Stepnoye',3,206),(12108,165,'Svetlograd',3,206),(12109,165,'Zelenokumsk',3,206),(12110,165,'Zheleznovodsk',3,206),(12111,165,'Achit',5,207),(12112,165,'Alapaevsk',5,207),(12113,165,'Artemovsk',5,207),(12114,165,'Arti',5,207),(12116,165,'Baykalovo',5,207),(12117,165,'Beloyarsky',5,207),(12118,165,'Berezovskiy',5,207),(12119,165,'Bogdanovich',5,207),(12121,165,'Gari',5,207),(12122,165,'Irbit',5,207),(12123,165,'Ivdel\'',5,207),(12124,165,'Kachkanar',5,207),(12126,165,'Kamyshlov',5,207),(12127,165,'Karpinsk',5,207),(12128,165,'Kirovgrad',5,207),(12129,165,'Krasnotur\'insk',5,207),(12130,165,'Krasnoufimsk',5,207),(12131,165,'Krasnoural\'sk',5,207),(12132,165,'Kushva',5,207),(12133,165,'Lesnoy',5,207),(12134,165,'Nev\'yansk',5,207),(12136,165,'Nizhniye Sergi',5,207),(12137,165,'Nizhnyaya Salda',5,207),(12138,165,'Nizhnyaya Tura',5,207),(12139,165,'Novaya Lyalya',5,207),(12140,165,'Novoural\'sk',5,207),(12143,165,'Pyshma',5,207),(12145,165,'Rezh',5,207),(12147,165,'Severoural\'sk',5,207),(12148,165,'Shalya',5,207),(12149,165,'Sukhoy Log',5,207),(12150,165,'Svobodnyy',5,207),(12151,165,'Sysert\'',5,207),(12152,165,'Tabory',5,207),(12153,165,'Talitsa',5,207),(12154,165,'Tavda',5,207),(12155,165,'Tugulym',5,207),(12156,165,'Turin\'sk',5,207),(12157,165,'Turinskaya-Sloboda',5,207),(12158,165,'Ural\'skiy',5,207),(12159,165,'Verkhnyaya Pyshma',5,207),(12160,165,'Verkhnyaya Salda',5,207),(12161,165,'Verkhotur\'e',5,207),(12162,165,'Zarechnyy',5,207),(12163,165,'Bondari',3,208),(12164,165,'Dmitrievka',3,208),(12165,165,'Gavrilovka',3,208),(12166,165,'Inshavino',3,208),(12167,165,'Kirsanov',3,208),(12168,165,'Kotovsk',3,208),(12169,165,'Michurinsk',3,208),(12170,165,'Mordovo',3,208),(12171,165,'Morshansk',3,208),(12172,165,'Muchkanskiy',3,208),(12173,165,'Pervomayskiy',3,208),(12174,165,'Petrovskoe',3,208),(12175,165,'Pichaevo',3,208),(12176,165,'Rasskazovo',3,208),(12177,165,'Rzhaksa',3,208),(12178,165,'Satinka',3,208),(12179,165,'Sosnovka',3,208),(12180,165,'Starayur\'yevo',3,208),(12182,165,'Tokarevka',3,208),(12183,165,'Umet',3,208),(12184,165,'Uvarovo',3,208),(12185,165,'Zherdevka',3,208),(12186,165,'Znamenka',3,208),(12187,165,'Dikson',7,209),(12188,165,'Dudinka',7,209),(12189,165,'Karayl',7,209),(12190,165,'Khatanga',7,209),(12191,165,'Aleksandrovskoye',6,210),(12192,165,'Asino',6,210),(12193,165,'Bakchar',6,210),(12194,165,'Bely Yar',6,210),(12195,165,'Kargasok',6,210),(12196,165,'Kedrovyy',6,210),(12197,165,'Kolpashevo',6,210),(12198,165,'Kozhevnikovo',6,210),(12199,165,'Krivosheino',6,210),(12200,165,'Mel\'nikovo',6,210),(12201,165,'Molchanovo',6,210),(12202,165,'Parabel\'',6,210),(12203,165,'Pervomayskoye',6,210),(12204,165,'Podgornoe',6,210),(12207,165,'Tegul\'det',6,210),(12209,165,'Zyryanskoe',6,210),(12210,165,'Aleksin',3,211),(12211,165,'Arkhangel\'skoye',3,211),(12212,165,'Arsen\'yevo',3,211),(12213,165,'Belev',3,211),(12214,165,'Bogoroditsk',3,211),(12215,165,'Chern\'',3,211),(12216,165,'Donskoy',3,211),(12218,165,'Efremov',3,211),(12219,165,'Kimovsk',3,211),(12220,165,'Kireevsk',3,211),(12221,165,'Kurkino',3,211),(12222,165,'Leninsky',3,211),(12224,165,'Odoyev',3,211),(12225,165,'Plavsk',3,211),(12226,165,'Shchekino',3,211),(12227,165,'Suvarov',3,211),(12228,165,'Teploe',3,211),(12230,165,'Uzlovaya',3,211),(12231,165,'Venev',3,211),(12232,165,'Volovo',3,211),(12233,165,'Yasnogorsk',3,211),(12234,165,'Zaokskiy',3,211),(12235,165,'Andreapol\'',3,212),(12236,165,'Belyy',3,212),(12237,165,'Bezhetsk',3,212),(12238,165,'Bologoe',3,212),(12239,165,'Firovo',3,212),(12240,165,'Kalyazin',3,212),(12241,165,'Kashin',3,212),(12242,165,'Kesova Gora',3,212),(12243,165,'Kimry',3,212),(12244,165,'Konakovo',3,212),(12245,165,'Krasny Kholm',3,212),(12246,165,'Kuvshinovo',3,212),(12247,165,'Lesnoye',3,212),(12248,165,'Likhoslavl\'',3,212),(12249,165,'Makhsatika',3,212),(12250,165,'Molokovo',3,212),(12251,165,'Nelidovo',3,212),(12252,165,'Olenino',3,212),(12253,165,'Ostashkov',3,212),(12254,165,'Ozernyy',3,212),(12255,165,'Peno',3,212),(12256,165,'Rameshki',3,212),(12257,165,'Rzhev',3,212),(12258,165,'Sandovo',3,212),(12259,165,'Selizharovo',3,212),(12260,165,'Solnechnyy',3,212),(12261,165,'Sonkovo',3,212),(12262,165,'Spirovo',3,212),(12263,165,'Staritsa',3,212),(12264,165,'Toropets',3,212),(12265,165,'Torzhok',3,212),(12267,165,'Udomlya',3,212),(12268,165,'Ves\'egonsk',3,212),(12269,165,'Vyshniy Volochek',3,212),(12270,165,'Zapadnaya Dvina',3,212),(12271,165,'Zharkovskiy',3,212),(12272,165,'Zubtsov',3,212),(12273,165,'Abatskiy',5,213),(12274,165,'Amizonskoye',5,213),(12275,165,'Aromashevo',5,213),(12276,165,'Berdyuzh\'ye',5,213),(12277,165,'Bol\'shoye Sorokino',5,213),(12278,165,'Golyshmanovo',5,213),(12279,165,'Isetskoye',5,213),(12281,165,'Kazanskoye',5,213),(12282,165,'Lesnoy',5,213),(12283,165,'Nizhnaya Tavda',5,213),(12284,165,'Omutinskiy',5,213),(12285,165,'Sladkovo',5,213),(12286,165,'Tobol\'sk',5,213),(12288,165,'Uporovo',5,213),(12289,165,'Uvat',5,213),(12290,165,'Vagay',5,213),(12291,165,'Vikulovo',5,213),(12292,165,'Yalutarovsk',5,213),(12293,165,'Yarkovo',5,213),(12294,165,'Zavodoukovsk',5,213),(12295,165,'Alnashy',4,214),(12296,165,'Baleznio',4,214),(12297,165,'Debessiy',4,214),(12298,165,'Glazov',4,214),(12299,165,'Grakhovo',4,214),(12300,165,'Igra',4,214),(12302,165,'Kambarka',4,214),(12303,165,'Karakulino',4,214),(12304,165,'Kez',4,214),(12305,165,'Kiyazovo',4,214),(12306,165,'Kizner',4,214),(12307,165,'Krasnogorskoye',4,214),(12308,165,'Malaya Purga',4,214),(12309,165,'Mozhga',4,214),(12310,165,'Sarapul',4,214),(12311,165,'Seltiy',4,214),(12312,165,'Sharkan',4,214),(12313,165,'Sigayevo',4,214),(12314,165,'Syumsi',4,214),(12315,165,'Uva',4,214),(12316,165,'Vavozh\'',4,214),(12318,165,'Yakshur-Bodiya',4,214),(12319,165,'Yar',4,214),(12320,165,'Yukamenskoye',4,214),(12321,165,'Zav\'yalovo',4,214),(12322,165,'Barysh',5,215),(12323,165,'Bazarniy Syzgan',5,215),(12324,165,'Bol\'shoye Nagatkino',5,215),(12325,165,'Cherdakli',5,215),(12327,165,'Inza',5,215),(12328,165,'Isheevka',5,215),(12329,165,'Karsun',5,215),(12330,165,'Kuzovatovo',5,215),(12331,165,'Mayna',5,215),(12332,165,'Nikolaevka',5,215),(12333,165,'Novaya Malykla',5,215),(12334,165,'Novospasskoe',5,215),(12335,165,'Pavlovka',5,215),(12336,165,'Radishevo',5,215),(12337,165,'Sengiley',5,215),(12338,165,'Staraya Mayna',5,215),(12339,165,'Surskoye',5,215),(12340,165,'Teren\'ga',5,215),(12342,165,'Veshkayma',5,215),(12343,165,'Aleksandrov',3,216),(12344,165,'Gorokhovets',3,216),(12345,165,'Gus\'-Khrustal\'nyy',3,216),(12346,165,'Kameshkovo',3,216),(12347,165,'Kirzhach',3,216),(12348,165,'Kol\'chugino',3,216),(12349,165,'Kovrov',3,216),(12350,165,'Krasnaya Gorbatka',3,216),(12351,165,'Melenki',3,216),(12352,165,'Murom',3,216),(12353,165,'Petushki',3,216),(12354,165,'Raduzhnyy',3,216),(12355,165,'Sobinka',3,216),(12356,165,'Sudogda',3,216),(12357,165,'Suzdal\'',3,216),(12359,165,'Vyazniki',3,216),(12360,165,'Yur\'ev-Pol\'skiy',3,216),(12361,165,'Alekseevska',3,217),(12362,165,'Bykovo',3,217),(12363,165,'Chernyshkovsky',3,217),(12364,165,'Danilovka',3,217),(12365,165,'Dubovka',3,217),(12366,165,'Elan',3,217),(12367,165,'Frolovo',3,217),(12368,165,'Frolovo',3,217),(12369,165,'Gorodishe',3,217),(12370,165,'Ilovl\'ya',3,217),(12371,165,'Kalach-na-Donu',3,217),(12372,165,'Kamyshin',3,217),(12373,165,'Kikvidze',3,217),(12374,165,'Kletskiy',3,217),(12375,165,'Kotel\'nikovo',3,217),(12376,165,'Kotovo',3,217),(12377,165,'Kumylzhenskaya',3,217),(12378,165,'Leninsk',3,217),(12379,165,'Mikhaylovka',3,217),(12380,165,'Nekhaevsky',3,217),(12381,165,'Nikolaevsk',3,217),(12382,165,'Novoanninskiy',3,217),(12383,165,'Novonikolaevsky',3,217),(12384,165,'Oktyabrsky',3,217),(12385,165,'Olkhovka',3,217),(12386,165,'Pallasovka',3,217),(12387,165,'Rudnya',3,217),(12388,165,'Serafimovich',3,217),(12389,165,'Srednya Akhtuba',3,217),(12390,165,'Staraya Poltavka',3,217),(12391,165,'Surovikniko',3,217),(12392,165,'Svetly Yar',3,217),(12393,165,'Uryupinsk',3,217),(12395,165,'Volzhskiy',3,217),(12396,165,'Zhirnovsk',3,217),(12397,165,'Babaevo',3,218),(12398,165,'Belozersk',3,218),(12399,165,'Chagoda',3,218),(12401,165,'Gryazovets',3,218),(12402,165,'Imena Babushkina',3,218),(12403,165,'Kaduy',3,218),(12404,165,'Kharovsk',3,218),(12405,165,'Kichgorodok',3,218),(12406,165,'Kirillov',3,218),(12407,165,'Kubenskoe',3,218),(12408,165,'Lipin Bor',3,218),(12409,165,'Nikol\'sk',3,218),(12410,165,'Nyuksenitska',3,218),(12411,165,'Sheksna',3,218),(12412,165,'Shuiskoe',3,218),(12413,165,'Sokol',3,218),(12414,165,'Syamzha',3,218),(12415,165,'Tarnogskiy Gorodok',3,218),(12416,165,'Tot\'ma',3,218),(12417,165,'Ustye',3,218),(12418,165,'Ustyuzhna',3,218),(12419,165,'Velikiy Ustyug',3,218),(12420,165,'Verkhovazh\'ye',3,218),(12422,165,'Vozhega',3,218),(12423,165,'Vytegra',3,218),(12424,165,'Anna',3,219),(12425,165,'Bobrov',3,219),(12426,165,'Boguchar',3,219),(12427,165,'Borisoglebsk',3,219),(12428,165,'Buturlinovka',3,219),(12429,165,'Ertil\'',3,219),(12430,165,'Gribanovskiy',3,219),(12431,165,'Kalach',3,219),(12432,165,'Kamenka',3,219),(12433,165,'Kantemirovka',3,219),(12434,165,'Kashirskoye',3,219),(12435,165,'Khokhol\'skiy',3,219),(12436,165,'Liski',3,219),(12437,165,'Nizhnedevitsk',3,219),(12438,165,'Novaya Usman\'',3,219),(12439,165,'Novokhopersk',3,219),(12440,165,'Novovoronezh',3,219),(12441,165,'Ol\'khovatka',3,219),(12442,165,'Ostrogozhsk',3,219),(12443,165,'Panino',3,219),(12444,165,'Pavlovsk',3,219),(12445,165,'Petropavlovka',3,219),(12446,165,'Podgorenskiy',3,219),(12447,165,'Povorino',3,219),(12448,165,'Ramon',3,219),(12449,165,'Rep\'yevka',3,219),(12450,165,'Rossosh\'',3,219),(12451,165,'Semiluki',3,219),(12452,165,'Talovaya',3,219),(12453,165,'Ternovka',3,219),(12454,165,'Verkhniy Momon',3,219),(12455,165,'Verkhnya Khyava',3,219),(12456,165,'Vorob\'yevka',3,219),(12458,165,'Aksarka',5,220),(12459,165,'Gubkinskyy',5,220),(12460,165,'Krasnosel\'kup',5,220),(12461,165,'Labytnangi',5,220),(12462,165,'Muravlenko',5,220),(12463,165,'Muzhi',5,220),(12466,165,'Noyabr\'sk',5,220),(12467,165,'Salekhard',5,220),(12468,165,'Tarko-Sale',5,220),(12469,165,'Tazovskiy',5,220),(12470,165,'Yar-Sale',5,220),(12471,165,'Bol\'shoye Selo',7,221),(12472,165,'Borisoglebsky',7,221),(12473,165,'Breytovo',7,221),(12474,165,'Danilov',7,221),(12475,165,'Gavrilov-Yam',7,221),(12476,165,'Lyubim',7,221),(12477,165,'Myshkin',7,221),(12478,165,'Nekrasovskoye',7,221),(12479,165,'Novy Nekouz',7,221),(12481,165,'Poshekhone',7,221),(12482,165,'Prechistoye',7,221),(12484,165,'Rybinsk',7,221),(12485,165,'Tutaev',7,221),(12486,165,'Uglich',7,221),(12488,178,'Addo',2,93),(12489,178,'Alice',2,93),(12490,178,'Bisho',2,93),(12491,178,'Cathcart',2,93),(12492,178,'Coffee Bay',2,93),(12493,178,'Cookhouse',2,93),(12495,178,'Gonubie',2,93),(12496,178,'Graaff-Reinet',2,93),(12497,178,'Grahamstown',2,93),(12498,178,'Jeffrey\'s Bay',2,93),(12499,178,'Kenton-on-Sea',2,93),(12500,178,'Nieu Bethesda',2,93),(12501,178,'Port Alfred',2,93),(12503,178,'Saint Francis Bay',2,93),(12504,178,'Uitenhage',2,93),(12506,178,'Deneysville',2,94),(12507,178,'Faunasig',2,94),(12508,178,'Kroonstad',2,94),(12509,178,'Sasolburg',2,94),(12510,178,'Alberton',2,95),(12511,178,'Bedfordview',2,95),(12512,178,'Benoni',2,95),(12513,178,'Boksburg',2,95),(12514,178,'Braamfontein',2,95),(12515,178,'Brakpan',2,95),(12516,178,'Brits',2,95),(12517,178,'Centurion',2,95),(12518,178,'Craighall',2,95),(12519,178,'East Rand',2,95),(12520,178,'Edenvale',2,95),(12521,178,'Florida',2,95),(12522,178,'Germiston',2,95),(12523,178,'Halway House',2,95),(12524,178,'Hartbeespoortdam',2,95),(12525,178,'Hatfield',2,95),(12526,178,'Helderkruin',2,95),(12527,178,'Henley on Klip',2,95),(12528,178,'Isando',2,95),(12530,178,'Kempton Park',2,95),(12531,178,'Lanseria',2,95),(12532,178,'Meyerton',2,95),(12533,178,'Midrand',2,95),(12534,178,'Modderfontein',2,95),(12536,178,'Randburg',2,95),(12537,178,'Randfontein',2,95),(12538,178,'Rivonia',2,95),(12539,178,'Roodepoort',2,95),(12540,178,'Rosebank',2,95),(12541,178,'Sandton',2,95),(12542,178,'Saxonwold',2,95),(12543,178,'Silverton',2,95),(12544,178,'Vanderbijlpark',2,95),(12545,178,'Vereeniging',2,95),(12546,178,'Wadeville',2,95),(12547,178,'Ballito',2,96),(12548,178,'Bethlehem',2,96),(12549,178,'Darnall',2,96),(12551,178,'Empangeni',2,96),(12552,178,'Estcourt',2,96),(12553,178,'Gillitts',2,96),(12554,178,'Hillcrest',2,96),(12555,178,'Himeville',2,96),(12556,178,'Hluhluwe',2,96),(12557,178,'Howick',2,96),(12558,178,'Jacobs',2,96),(12559,178,'Lidgetton',2,96),(12560,178,'Mandeni',2,96),(12561,178,'Margate',2,96),(12562,178,'Mooi River',2,96),(12563,178,'Mount Edgecombe',2,96),(12564,178,'Mtubatuba',2,96),(12565,178,'New Castle',2,96),(12566,178,'Pietermaritzburg',2,96),(12567,178,'Pinetown',2,96),(12568,178,'Pongola',2,96),(12569,178,'Port Shepstone',2,96),(12571,178,'Umdloti',2,96),(12572,178,'Umhlanga Rocks',2,96),(12573,178,'Umkomaas',2,96),(12574,178,'Underberg',2,96),(12575,178,'Verulam',2,96),(12576,178,'Vryheid',2,96),(12577,178,'Winterton',2,96),(12578,178,'Ellisras',2,97),(12579,178,'Gravelotte',2,97),(12580,178,'Hoedspruit',2,97),(12581,178,'Louis Trichardt',2,97),(12582,178,'Barberton',2,98),(12583,178,'Belfast',2,98),(12584,178,'Delmas',2,98),(12585,178,'Dullstroom',2,98),(12586,178,'Graskop',2,98),(12587,178,'Komatipoort',2,98),(12588,178,'Lydenburg',2,98),(12589,178,'Middelburg',2,98),(12590,178,'Nelspruit',2,98),(12591,178,'Sabie',2,98),(12592,178,'Standerton',2,98),(12593,178,'Carletonville',2,99),(12594,178,'Hekpoort',2,99),(12595,178,'Klerksdorp',2,99),(12596,178,'Potchefstroom',2,99),(12597,178,'Rustenburg',2,99),(12598,178,'Belmont',2,100),(12599,178,'Kakamas',2,100),(12601,178,'Springbok',2,100),(12603,178,'Arniston',2,101),(12604,178,'Bellville',2,101),(12605,178,'Bredasdorp',2,101),(12607,178,'Citrusdal',2,101),(12608,178,'Durbanville',2,101),(12609,178,'Elandsfontein',2,101),(12610,178,'Franschhoek',2,101),(12611,178,'Gansbaai',2,101),(12612,178,'George',2,101),(12613,178,'Gordon\'s Bay',2,101),(12614,178,'Grabouw',2,101),(12615,178,'Hermanus',2,101),(12616,178,'Hout Bay',2,101),(12617,178,'Knysna',2,101),(12618,178,'Langebaan',2,101),(12619,178,'Malgas',2,101),(12620,178,'Matjiesfontein',2,101),(12621,178,'McGregor',2,101),(12622,178,'Milnerton',2,101),(12623,178,'Montagu',2,101),(12625,178,'Oudtshoorn',2,101),(12626,178,'Paarl',2,101),(12627,178,'Paternoster',2,101),(12628,178,'Plettenberg Bay',2,101),(12630,178,'Sedgefield',2,101),(12631,178,'Simonstown',2,101),(12632,178,'Somerset West',2,101),(12633,178,'Steenberg',2,101),(12634,178,'Stellenbosch',2,101),(12635,178,'Strand',2,101),(12636,178,'Swellendam',2,101),(12637,178,'Tokai',2,101),(12638,178,'Vredenburg',2,101),(12639,178,'Wilderness',2,101),(12640,178,'Worcester',2,101),(12641,178,'Wynberg',2,101),(12642,178,'Yzerfontein',2,101),(12843,203,'Abbotsbury',0,65),(12844,203,'Abbotskerswell',0,65),(12845,203,'Abington',0,65),(12846,203,'Alderley Edge',0,65),(12847,203,'Aldermaston',0,65),(12848,203,'Aldershot',0,65),(12849,203,'Alfreton',0,65),(12850,203,'Alsager',0,65),(12851,203,'Alston',0,65),(12852,203,'Alton',0,65),(12853,203,'Amberley',0,65),(12855,203,'Amersham',0,65),(12856,203,'Ampthill',0,65),(12857,203,'Andover',0,65),(12858,203,'Andover Down',0,65),(12859,203,'Appledore',0,65),(12860,203,'Ascot',0,65),(12861,203,'Ashbourne',0,65),(12862,203,'Ashwell',0,65),(12863,203,'Aston Clinton',0,65),(12864,203,'Axminster',0,65),(12865,203,'Aylesbury',0,65),(12866,203,'Babbacombe',0,65),(12867,203,'Badminton',0,65),(12868,203,'Bakewell',0,65),(12869,203,'Bampton',0,65),(12870,203,'Barnard Castle',0,65),(12871,203,'Barnet',0,65),(12873,203,'Barrow upon Humber',0,65),(12874,203,'Barrow-in-Furness',0,65),(12875,203,'Barton-le-Clay',0,65),(12876,203,'Barton-upon-Humber',0,65),(12877,203,'Basildon',0,65),(12880,203,'Beaconsfield',0,65),(12881,203,'Beaulieu',0,65),(12882,203,'Bedford',0,65),(12883,203,'Belper',0,65),(12884,203,'Benfleet',0,65),(12885,203,'Berkhamsted',0,65),(12886,203,'Beverley',0,65),(12887,203,'Bideford',0,65),(12888,203,'Bierton',0,65),(12889,203,'Biggleswade',0,65),(12890,203,'Billericay',0,65),(12891,203,'Billingham',0,65),(12892,203,'Binfield',0,65),(12893,203,'Bishop Auckland',0,65),(12894,203,'Bishop Burton',0,65),(12895,203,'Bishop\'s Stortford',0,65),(12896,203,'Blackwater',0,65),(12897,203,'Blandford Forum',0,65),(12898,203,'Blandford St. Mary',0,65),(12899,203,'Bletchley',0,65),(12900,203,'Bodmin',0,65),(12901,203,'Bollington',0,65),(12902,203,'Bolsover',0,65),(12903,203,'Bordon',0,65),(12904,203,'Borehamwood',0,65),(12905,203,'Borley',0,65),(12906,203,'Boscastle',0,65),(12907,203,'Bottisham',0,65),(12908,203,'Bourn',0,65),(12909,203,'Bourne End',0,65),(12911,203,'Bourton-on-the-Water',0,65),(12912,203,'Bovey Tracey',0,65),(12913,203,'Bowness-on-Windermere',0,65),(12915,203,'Bradley Stoke',0,65),(12916,203,'Bradwell-on-Sea',0,65),(12917,203,'Bradworthy',0,65),(12918,203,'Braintree',0,65),(12919,203,'Braishfield',0,65),(12920,203,'Bramdean',0,65),(12921,203,'Braunton',0,65),(12922,203,'Bray',0,65),(12923,203,'Bream',0,65),(12924,203,'Brentwood',0,65),(12925,203,'Bridlington',0,65),(12926,203,'Bridport',0,65),(12927,203,'Brigg',0,65),(12928,203,'Brightlingsea',0,65),(12929,203,'Brislington',0,65),(12931,203,'Brixham',0,65),(12932,203,'Brockenhurst',0,65),(12933,203,'Bromyard',0,65),(12934,203,'Broughton-in-Furness',0,65),(12935,203,'Broxbourne',0,65),(12936,203,'Buckden',0,65),(12937,203,'Buckfastleigh',0,65),(12938,203,'Buckhurst Hill',0,65),(12939,203,'Buckingham',0,65),(12940,203,'Bude',0,65),(12941,203,'Budleigh Salterton',0,65),(12942,203,'Buntingford',0,65),(12943,203,'Burchett\'s Green',0,65),(12944,203,'Burley',0,65),(12945,203,'Burnham-on-Crouch',0,65),(12946,203,'Burrington',0,65),(12947,203,'Burwell',0,65),(12948,203,'Bushey',0,65),(12949,203,'Buxton',0,65),(12950,203,'Caddington',0,65),(12951,203,'Callington',0,65),(12952,203,'Camborne',0,65),(12956,203,'Cartmel',0,65),(12957,203,'Caversham',0,65),(12958,203,'Chalfont St. Giles',0,65),(12959,203,'Chalfont St. Peter',0,65),(12960,203,'Chalford',0,65),(12961,203,'Chandler\'s Ford',0,65),(12962,203,'Chapel Amble',0,65),(12963,203,'Chapel-en-le-Frith',0,65),(12964,203,'Chatteris',0,65),(12967,203,'Chelwood',0,65),(12968,203,'Chesham',0,65),(12969,203,'Cheshunt',0,65),(12971,203,'Chesterfield',0,65),(12972,203,'Chester-le-Street',0,65),(12973,203,'Chetnole',0,65),(12974,203,'Chew Magna',0,65),(12975,203,'Chieveley',0,65),(12976,203,'Chipperfield',0,65),(12977,203,'Chipping Campden',0,65),(12978,203,'Chorleywood',0,65),(12979,203,'Christchurch',0,65),(12980,203,'Cinderford',0,65),(12981,203,'Cirencester',0,65),(12982,203,'Clacton-on-Sea',0,65),(12983,203,'Clanfield',0,65),(12984,203,'Cleethorpes',0,65),(12985,203,'Clevedon',0,65),(12986,203,'Clifton',0,65),(12987,203,'Clutton',0,65),(12988,203,'Cockermouth',0,65),(12989,203,'Coggeshall',0,65),(12990,203,'Colchester',0,65),(12991,203,'Colnbrook',0,65),(12992,203,'Colyford',0,65),(12993,203,'Compton',0,65),(12994,203,'Congleton',0,65),(12995,203,'Congresbury',0,65),(12996,203,'Consett',0,65),(12997,203,'Cookham',0,65),(12998,203,'Cople',0,65),(12999,203,'Cotham',0,65),(13000,203,'Cottenham',0,65),(13001,203,'Coverack',0,65),(13002,203,'Cranage',0,65),(13003,203,'Cranborne',0,65),(13004,203,'Cranfield',0,65),(13005,203,'Crays Hill',0,65),(13006,203,'Crediton',0,65),(13007,203,'Crewe',0,65),(13008,203,'Crich',0,65),(13009,203,'Crowthorne',0,65),(13010,203,'Croyde',0,65),(13011,203,'Culcheth',0,65),(13012,203,'Cullompton',0,65),(13013,203,'Dalton-in-Furness',0,65),(13014,203,'Daresbury',0,65),(13015,203,'Darlington',0,65),(13016,203,'Dartmouth',0,65),(13017,203,'Datchet',0,65),(13018,203,'Davidstow',0,65),(13019,203,'Dawlish',0,65),(13021,203,'Docklow',0,65),(13022,203,'Dorchester',0,65),(13023,203,'Draycott',0,65),(13024,203,'Driffield',0,65),(13025,203,'Dronfield',0,65),(13026,203,'Duffield',0,65),(13027,203,'Dunstable',0,65),(13029,203,'Dursley',0,65),(13030,203,'Duxford',0,65),(13031,203,'Eaglescliffe',0,65),(13032,203,'Eamont Bridge',0,65),(13033,203,'Easington',0,65),(13034,203,'East Ilsley',0,65),(13035,203,'Eastleigh',0,65),(13036,203,'Eaton Bray',0,65),(13037,203,'Ebchester',0,65),(13038,203,'Egremont',0,65),(13039,203,'Ellesmere Port',0,65),(13040,203,'Elstree',0,65),(13042,203,'Emsworth',0,65),(13043,203,'Epping',0,65),(13045,203,'Exmouth',0,65),(13046,203,'Faddiley',0,65),(13047,203,'Fair Oak',0,65),(13048,203,'Falmouth',0,65),(13049,203,'Fareham',0,65),(13050,203,'Farmborough',0,65),(13052,203,'Farnham Royal',0,65),(13053,203,'Farrington Gurney',0,65),(13054,203,'Felsted',0,65),(13055,203,'Ferndown',0,65),(13056,203,'Finchampstead',0,65),(13057,203,'Fishponds',0,65),(13058,203,'Fleet',0,65),(13059,203,'Flitwick',0,65),(13060,203,'Fordingbridge',0,65),(13061,203,'Forthampton',0,65),(13062,203,'Fowey',0,65),(13063,203,'Frodsham',0,65),(13064,203,'Gerrards Cross',0,65),(13065,203,'Gillingham',0,65),(13066,203,'Glossop',0,65),(13068,203,'Godmanchester',0,65),(13069,203,'Goffs Oak',0,65),(13070,203,'Goole',0,65),(13071,203,'Goonhavern',0,65),(13072,203,'Gosforth',0,65),(13073,203,'Gosport',0,65),(13074,203,'Grange-over-Sands',0,65),(13075,203,'Grappenhall',0,65),(13076,203,'Grasmere',0,65),(13077,203,'Great Dunmow',0,65),(13078,203,'Great Gransden',0,65),(13079,203,'Great Missenden',0,65),(13080,203,'Great Torrington',0,65),(13081,203,'Greystoke',0,65),(13083,203,'Gunnislake',0,65),(13084,203,'Haddenham',0,65),(13085,203,'Hale',0,65),(13086,203,'Halsetown',0,65),(13087,203,'Halstead',0,65),(13088,203,'Hamble',0,65),(13089,203,'Hambledon',0,65),(13090,203,'Handforth',0,65),(13091,203,'Harbertonford',0,65),(13092,203,'Hardwick',0,65),(13093,203,'Harlington',0,65),(13094,203,'Harlow',0,65),(13095,203,'Harpenden',0,65),(13096,203,'Harrold',0,65),(13097,203,'Hartlepool',0,65),(13098,203,'Hartley Wintney',0,65),(13099,203,'Harwich',0,65),(13100,203,'Haslingfield',0,65),(13101,203,'Haslington',0,65),(13102,203,'Hatfield',0,65),(13103,203,'Hatton',0,65),(13104,203,'Havant',0,65),(13105,203,'Haverton Hill',0,65),(13106,203,'Hawkesbury Upton',0,65),(13107,203,'Hawkshead',0,65),(13108,203,'Hayle',0,65),(13109,203,'Heanor',0,65),(13110,203,'Helston',0,65),(13111,203,'Hemel Hempstead',0,65),(13112,203,'Hemyock',0,65),(13113,203,'Hereford',0,65),(13114,203,'Herodsfoot',0,65),(13115,203,'Hertford',0,65),(13116,203,'Hertingfordbury',0,65),(13117,203,'Hessle',0,65),(13118,203,'High Wycombe',0,65),(13119,203,'Hilcote',0,65),(13120,203,'Hitchin',0,65),(13121,203,'Hockley',0,65),(13122,203,'Holbeton',0,65),(13123,203,'Holmes Chapel',0,65),(13124,203,'Honiton',0,65),(13125,203,'Hook',0,65),(13126,203,'Hope',0,65),(13127,203,'Hornchurch',0,65),(13128,203,'Houghton Regis',0,65),(13129,203,'Howden',0,65),(13130,203,'Hungerford',0,65),(13131,203,'Huntingdon',0,65),(13132,203,'Hurley',0,65),(13133,203,'Husborne Crawley',0,65),(13134,203,'Ickleford',0,65),(13135,203,'Ilford',0,65),(13136,203,'Ilfracombe',0,65),(13137,203,'Ilkeston',0,65),(13138,203,'Immingham',0,65),(13139,203,'Iver',0,65),(13140,203,'Ivybridge',0,65),(13141,203,'Kemble',0,65),(13142,203,'Kempston',0,65),(13144,203,'Kentmere',0,65),(13145,203,'Keswick',0,65),(13146,203,'Keynsham',0,65),(13147,203,'Kimbolton',0,65),(13148,203,'Kimpton',0,65),(13149,203,'King\'s Langley',0,65),(13150,203,'Kingsland',0,65),(13151,203,'Kingsley',0,65),(13152,203,'Kingsteignton',0,65),(13153,203,'Kingston-upon-Hull',0,65),(13154,203,'Kington',0,65),(13155,203,'Kinnersley',0,65),(13156,203,'Kirk Langley',0,65),(13157,203,'Kirkby Lonsdale',0,65),(13158,203,'Kirkby Stephen',0,65),(13159,203,'Knutsford',0,65),(13160,203,'Lamarsh',0,65),(13161,203,'Lambourn',0,65),(13162,203,'Langham',0,65),(13163,203,'Langley',0,65),(13164,203,'Langton Matravers',0,65),(13165,203,'Launceston',0,65),(13166,203,'Ledbury',0,65),(13167,203,'Leigh-on-Sea',0,65),(13168,203,'Leighton Buzzard',0,65),(13169,203,'Leominster',0,65),(13170,203,'Letchworth',0,65),(13171,203,'Lidlington',0,65),(13172,203,'Linslade',0,65),(13173,203,'Linton',0,65),(13174,203,'Liphook',0,65),(13175,203,'Liskeard',0,65),(13176,203,'Little Torrington',0,65),(13177,203,'Lizard',0,65),(13178,203,'Long Ashton',0,65),(13180,203,'Looe',0,65),(13181,203,'Lostwithiel',0,65),(13182,203,'Loughton',0,65),(13183,203,'Lower Whitley',0,65),(13184,203,'Luton',0,65),(13185,203,'Lydney',0,65),(13186,203,'Lyme Regis',0,65),(13187,203,'Lymington',0,65),(13188,203,'Lymm',0,65),(13189,203,'Lympstone',0,65),(13190,203,'Lyndhurst',0,65),(13191,203,'Lynton',0,65),(13192,203,'Macclesfield',0,65),(13193,203,'Madingley',0,65),(13194,203,'Maidenhead',0,65),(13195,203,'Maldon',0,65),(13196,203,'Malpas',0,65),(13197,203,'Manaccan',0,65),(13198,203,'Manea',0,65),(13199,203,'Manningtree',0,65),(13200,203,'Mapperley',0,65),(13201,203,'Marazion',0,65),(13202,203,'March',0,65),(13203,203,'Marks Tey',0,65),(13204,203,'Markyate',0,65),(13205,203,'Marlow',0,65),(13206,203,'Marske-by-Sea',0,65),(13207,203,'Maryport',0,65),(13208,203,'Matlock',0,65),(13209,203,'Mawnan Smith',0,65),(13210,203,'Medstead',0,65),(13211,203,'Melbourn',0,65),(13212,203,'Mentmore',0,65),(13213,203,'Mevagissey',0,65),(13215,203,'Middlewich',0,65),(13216,203,'Milford on Sea',0,65),(13217,203,'Millom',0,65),(13218,203,'Milnthorpe',0,65),(13219,203,'Milton',0,65),(13221,203,'Moretonhampstead',0,65),(13222,203,'Moreton-in-Marsh',0,65),(13223,203,'Mousehole',0,65),(13224,203,'Mullion',0,65),(13225,203,'Nailsea',0,65),(13226,203,'Nailsworth',0,65),(13227,203,'Nantwich',0,65),(13228,203,'Naphill',0,65),(13229,203,'Neston',0,65),(13230,203,'Netley',0,65),(13231,203,'New Alresford',0,65),(13232,203,'New Barnet',0,65),(13233,203,'New Milton',0,65),(13234,203,'New Wimpole',0,65),(13235,203,'Newbury',0,65),(13236,203,'Newby Bridge',0,65),(13237,203,'Newnham',0,65),(13238,203,'Newport Pagnell',0,65),(13239,203,'Newquay',0,65),(13240,203,'Newton Abbot',0,65),(13241,203,'Newton Aycliffe',0,65),(13242,203,'North Baddesley',0,65),(13243,203,'Northleach',0,65),(13244,203,'Northwich',0,65),(13245,203,'Nunthorpe',0,65),(13246,203,'Oakley',0,65),(13247,203,'Oakley',0,65),(13248,203,'Oakley Green',0,65),(13249,203,'Odiham',0,65),(13250,203,'Okehampton',0,65),(13251,203,'Olney',0,65),(13252,203,'Ottery St. Mary',0,65),(13253,203,'Over',0,65),(13254,203,'Padstow',0,65),(13255,203,'Paignton',0,65),(13256,203,'Painswick',0,65),(13257,203,'Pangbourne',0,65),(13258,203,'Par',0,65),(13259,203,'Parracombe',0,65),(13260,203,'Peasedown St. John',0,65),(13261,203,'Penketh',0,65),(13262,203,'Penn',0,65),(13263,203,'Penrith',0,65),(13264,203,'Penryn',0,65),(13265,203,'Penzance',0,65),(13266,203,'Perranporth',0,65),(13268,203,'Peterlee',0,65),(13269,203,'Petersfield',0,65),(13271,203,'Plympton',0,65),(13272,203,'Pocklington',0,65),(13273,203,'Polperro',0,65),(13274,203,'Polzeath',0,65),(13276,203,'Port Isaac',0,65),(13278,203,'Potters Bar',0,65),(13279,203,'Potton',0,65),(13280,203,'Poynton',0,65),(13281,203,'Prestbury',0,65),(13282,203,'Prickwillow',0,65),(13283,203,'Princes Risborough',0,65),(13284,203,'Pulloxhill',0,65),(13285,203,'Purfleet',0,65),(13286,203,'Quenington',0,65),(13288,203,'Radstock',0,65),(13289,203,'Ramsey',0,65),(13290,203,'Rattery',0,65),(13291,203,'Rayleigh',0,65),(13293,203,'Redcar',0,65),(13294,203,'Redruth',0,65),(13295,203,'Richings Park',0,65),(13296,203,'Rickmansworth',0,65),(13297,203,'Ringwood',0,65),(13298,203,'Ripley',0,65),(13299,203,'Riverside Park',0,65),(13300,203,'Rochford',0,65),(13301,203,'Romford',0,65),(13302,203,'Romsey',0,65),(13303,203,'Ross-on-Wye',0,65),(13304,203,'Royston',0,65),(13305,203,'Runcorn',0,65),(13306,203,'Saffron Walden',0,65),(13307,203,'Sale',0,65),(13308,203,'Saltash',0,65),(13309,203,'Saltburn',0,65),(13310,203,'Sandbach',0,65),(13311,203,'Sandhurst',0,65),(13312,203,'Sandy',0,65),(13313,203,'Sawbridgeworth',0,65),(13314,203,'Sawston',0,65),(13315,203,'Sawtry',0,65),(13317,203,'Seaham',0,65),(13318,203,'Seaton',0,65),(13319,203,'Sedbergh',0,65),(13320,203,'Sedgefield',0,65),(13321,203,'Severn Beach',0,65),(13322,203,'Shaftesbury',0,65),(13323,203,'Shebbear',0,65),(13324,203,'Shefford',0,65),(13325,203,'Shepreth',0,65),(13326,203,'Sherborne',0,65),(13327,203,'Shildon',0,65),(13328,203,'Shirwell',0,65),(13329,203,'Sidmouth',0,65),(13330,203,'Sindlesham',0,65),(13332,203,'Snaith',0,65),(13334,203,'Somercotes',0,65),(13335,203,'Soulbury',0,65),(13336,203,'South Brent',0,65),(13337,203,'South Woodham Ferrers',0,65),(13339,203,'Southbourne-on-Sea',0,65),(13340,203,'Southend-on-Sea',0,65),(13341,203,'Southsea',0,65),(13342,203,'Southwell',0,65),(13343,203,'Sowton',0,65),(13344,203,'Speen',0,65),(13345,203,'Spencers Wood',0,65),(13346,203,'St. Agnes',0,65),(13348,203,'St. Austell',0,65),(13349,203,'St. Bees',0,65),(13350,203,'St. Blazey',0,65),(13351,203,'St. Columb Major',0,65),(13352,203,'St. Germans',0,65),(13353,203,'St. Ives',0,65),(13354,203,'St. Ives',0,65),(13355,203,'St. Ives',0,65),(13356,203,'St. Just',0,65),(13357,203,'St. Martin\'s Island',0,65),(13358,203,'St. Minver',0,65),(13359,203,'St. Neots',0,65),(13360,203,'St. Weonards',0,65),(13361,203,'Stanford Le Hope',0,65),(13362,203,'Stanley',0,65),(13363,203,'Stansted',0,65),(13364,203,'Staunton',0,65),(13365,203,'Staveley',0,65),(13366,203,'Steppingley',0,65),(13368,203,'Stockton Heath',0,65),(13369,203,'Stockton-on-Tees',0,65),(13370,203,'Stoke Mandeville',0,65),(13371,203,'Stoke Poges',0,65),(13372,203,'Stokenchurch',0,65),(13373,203,'Stonehouse',0,65),(13374,203,'Stotfold',0,65),(13375,203,'Stow-on-the-Wold',0,65),(13376,203,'Stroud',0,65),(13377,203,'Sturminster Newton',0,65),(13378,203,'Sulhamstead',0,65),(13379,203,'Sunningdale',0,65),(13380,203,'Sunninghill',0,65),(13381,203,'Sutton-on-Hull',0,65),(13382,203,'Swadlincote',0,65),(13383,203,'Swaffham Bulbeck',0,65),(13384,203,'Swallowfield',0,65),(13385,203,'Swanage',0,65),(13386,203,'Swavesey',0,65),(13387,203,'Swaythling',0,65),(13388,203,'Tadley',0,65),(13389,203,'Tarporley',0,65),(13390,203,'Tavistock',0,65),(13391,203,'Teesside',0,65),(13392,203,'Teignmouth',0,65),(13394,203,'Tewkesbury',0,65),(13395,203,'Thatcham',0,65),(13396,203,'Thaxted',0,65),(13397,203,'Theale',0,65),(13398,203,'Thornaby-on-Tees',0,65),(13399,203,'Thornbury',0,65),(13400,203,'Thorney',0,65),(13401,203,'Thruxton',0,65),(13402,203,'Thundersley',0,65),(13403,203,'Tilbury',0,65),(13404,203,'Timsbury',0,65),(13405,203,'Tingewick',0,65),(13406,203,'Tintagel',0,65),(13407,203,'Tiptree',0,65),(13408,203,'Tiverton',0,65),(13409,203,'Toddington',0,65),(13410,203,'Tollesbury',0,65),(13411,203,'Topsham',0,65),(13412,203,'Torpoint',0,65),(13413,203,'Torquay',0,65),(13414,203,'Totnes',0,65),(13415,203,'Totton',0,65),(13416,203,'Tresco',0,65),(13417,203,'Tring',0,65),(13418,203,'Trumpington',0,65),(13420,203,'Turvey',0,65),(13421,203,'Twyford',0,65),(13422,203,'Uffculme',0,65),(13423,203,'Ulverston',0,65),(13424,203,'Upper Bucklebury',0,65),(13425,203,'Upton',0,65),(13426,203,'Wadebridge',0,65),(13427,203,'Walkhampton',0,65),(13428,203,'Waltham Abbey',0,65),(13429,203,'Walton-on-the-Naze',0,65),(13430,203,'Ware',0,65),(13431,203,'Wareham',0,65),(13432,203,'Wargrave',0,65),(13433,203,'Warrington',0,65),(13434,203,'Waterbeach',0,65),(13435,203,'Waterlooville',0,65),(13437,203,'Welwyn',0,65),(13438,203,'Welwyn Garden City',0,65),(13439,203,'Wendover',0,65),(13440,203,'West Mersea',0,65),(13441,203,'West Town',0,65),(13442,203,'Westcliff',0,65),(13443,203,'Weston Turville',0,65),(13444,203,'Weston-super-Mare',0,65),(13445,203,'Westward Ho',0,65),(13447,203,'Whaley Bridge',0,65),(13448,203,'Whitchurch',0,65),(13449,203,'Whitehaven',0,65),(13450,203,'Whitstone',0,65),(13451,203,'Whittlesey',0,65),(13452,203,'Whitwell',0,65),(13453,203,'Wickford',0,65),(13454,203,'Wickham',0,65),(13455,203,'Widdington',0,65),(13456,203,'Widnes',0,65),(13457,203,'Willingham',0,65),(13458,203,'Willington',0,65),(13459,203,'Wilmslow',0,65),(13460,203,'Wimborne',0,65),(13461,203,'Wincham',0,65),(13463,203,'Windermere',0,65),(13465,203,'Winnersh',0,65),(13466,203,'Winsford',0,65),(13467,203,'Winslow',0,65),(13468,203,'Wirksworth',0,65),(13469,203,'Wisbech',0,65),(13470,203,'Wistaston',0,65),(13471,203,'Witham',0,65),(13472,203,'Woburn',0,65),(13473,203,'Wokingham',0,65),(13474,203,'Wooburn Green',0,65),(13475,203,'Woodchester',0,65),(13476,203,'Woodley',0,65),(13477,203,'Woolacombe',0,65),(13478,203,'Wootton',0,65),(13479,203,'Workington',0,65),(13480,203,'Worth Matravers',0,65),(13481,203,'Wotton-under-Edge',0,65),(13482,203,'Writtle',0,65),(13483,203,'Yarm',0,65),(13484,203,'Yate',0,65),(13485,203,'Yateley',0,65),(13486,203,'Yaxley',0,65),(13487,203,'Antrim',0,66),(13488,203,'Armagh',0,66),(13489,203,'Ballycastle',0,66),(13490,203,'Ballyclare',0,66),(13491,203,'Ballymena',0,66),(13492,203,'Ballymoney',0,66),(13493,203,'Ballynahinch',0,66),(13494,203,'Banbridge',0,66),(13496,203,'Belfast City',0,66),(13497,203,'Belleek',0,66),(13498,203,'Bushmills',0,66),(13499,203,'Carnlough',0,66),(13500,203,'Carrickfergus',0,66),(13501,203,'Castlederg',0,66),(13502,203,'Castlewellan',0,66),(13503,203,'Clogher',0,66),(13504,203,'Coleraine',0,66),(13505,203,'Cookstown',0,66),(13506,203,'Craigavon',0,66),(13507,203,'Crumlin',0,66),(13508,203,'Cullybackey',0,66),(13509,203,'Cushendun',0,66),(13510,203,'Donaghadee',0,66),(13511,203,'Donaghcloney',0,66),(13512,203,'Donaghmore',0,66),(13513,203,'Downpatrick',0,66),(13514,203,'Drumahoe',0,66),(13515,203,'Dungannon',0,66),(13516,203,'Dunmurry',0,66),(13517,203,'Eglinton',0,66),(13518,203,'Enniskillen',0,66),(13519,203,'Florence Court',0,66),(13520,203,'Glengormley',0,66),(13521,203,'Hillsborough',0,66),(13522,203,'Holywood',0,66),(13523,203,'Kesh',0,66),(13524,203,'Kilkeel',0,66),(13525,203,'Larne',0,66),(13526,203,'Limavady',0,66),(13527,203,'Lisburn',0,66),(13528,203,'Lisnaskea',0,66),(13529,203,'Londonderry',0,66),(13530,203,'Lurgan',0,66),(13531,203,'Maghera',0,66),(13532,203,'Magherafelt',0,66),(13533,203,'Markethill',0,66),(13534,203,'Monkstown',0,66),(13535,203,'Newcastle',0,66),(13536,203,'Newry',0,66),(13537,203,'Newtownabbey',0,66),(13538,203,'Newtownards',0,66),(13539,203,'Omagh',0,66),(13540,203,'Portadown',0,66),(13541,203,'Portglenone',0,66),(13542,203,'Portrush',0,66),(13543,203,'Portstewart',0,66),(13544,203,'Randalstown',0,66),(13545,203,'Strabane',0,66),(13546,203,'Toomebridge',0,66),(13547,203,'Whitehead',0,66),(13549,203,'Aboyne',0,67),(13550,203,'Aikwood',0,67),(13551,203,'Airdrie',0,67),(13552,203,'Alexandria',0,67),(13553,203,'Alford',0,67),(13554,203,'Alloa',0,67),(13555,203,'Altass',0,67),(13556,203,'Altnaharra',0,67),(13557,203,'Alva',0,67),(13558,203,'Annan',0,67),(13559,203,'Anstruther',0,67),(13560,203,'Appin',0,67),(13561,203,'Applecross',0,67),(13562,203,'Arrochar',0,67),(13563,203,'Aviemore',0,67),(13564,203,'Ayr',0,67),(13565,203,'Balallan',0,67),(13566,203,'Ballantrae',0,67),(13567,203,'Ballater',0,67),(13568,203,'Balmaha',0,67),(13569,203,'Baltasound',0,67),(13570,203,'Banchory',0,67),(13571,203,'Banff',0,67),(13572,203,'Barrhead',0,67),(13573,203,'Bathgate',0,67),(13574,203,'Bearsden',0,67),(13575,203,'Beauly',0,67),(13576,203,'Beeswing',0,67),(13577,203,'Beith',0,67),(13578,203,'Bellshill',0,67),(13579,203,'Biggar',0,67),(13580,203,'Blackburn',0,67),(13581,203,'Blantyre',0,67),(13582,203,'Bonar Bridge',0,67),(13583,203,'Borgue',0,67),(13584,203,'Bothwell',0,67),(13585,203,'Braemar',0,67),(13586,203,'Bridge of Allan',0,67),(13587,203,'Bridge of Weir',0,67),(13588,203,'Brodick',0,67),(13589,203,'Brora',0,67),(13590,203,'Broxburn',0,67),(13591,203,'Buckie',0,67),(13592,203,'Bucksburn',0,67),(13593,203,'Burntisland',0,67),(13594,203,'Cairnbulg',0,67),(13595,203,'Callander',0,67),(13596,203,'Cambuslang',0,67),(13597,203,'Campbeltown',0,67),(13598,203,'Cardenden',0,67),(13599,203,'Cardross',0,67),(13600,203,'Carluke',0,67),(13601,203,'Carrbridge',0,67),(13602,203,'Castle Douglas',0,67),(13603,203,'Ceres',0,67),(13604,203,'Charlestown of Aberlour',0,67),(13605,203,'Clydebank',0,67),(13606,203,'Coatbridge',0,67),(13607,203,'Coldstream',0,67),(13608,203,'Connel',0,67),(13609,203,'Contin',0,67),(13610,203,'Cornhill',0,67),(13611,203,'Cowdenbeath',0,67),(13612,203,'Craigellachie',0,67),(13613,203,'Crianlarich',0,67),(13614,203,'Crinan',0,67),(13615,203,'Cromarty',0,67),(13616,203,'Cullen',0,67),(13618,203,'Cupar',0,67),(13619,203,'Dalbeattie',0,67),(13620,203,'Dalgety Bay',0,67),(13621,203,'Dalkeith',0,67),(13622,203,'Dingwall',0,67),(13623,203,'Dornoch',0,67),(13624,203,'Dufftown',0,67),(13625,203,'Dumbarton',0,67),(13627,203,'Dunbar',0,67),(13628,203,'Dunbeath',0,67),(13629,203,'Dunblane',0,67),(13630,203,'Dundonald',0,67),(13632,203,'Dunoon',0,67),(13633,203,'Duns',0,67),(13634,203,'Earlston',0,67),(13635,203,'East Kilbride',0,67),(13636,203,'Eastriggs',0,67),(13638,203,'Elderslie',0,67),(13640,203,'Ellon',0,67),(13641,203,'Evanton',0,67),(13642,203,'Eyemouth',0,67),(13643,203,'Falkirk',0,67),(13644,203,'Falkland',0,67),(13645,203,'Fetlar',0,67),(13646,203,'Findhorn',0,67),(13647,203,'Flashader',0,67),(13648,203,'Fochabers',0,67),(13650,203,'Fort Augustus',0,67),(13651,203,'Fort William',0,67),(13652,203,'Fraserburgh',0,67),(13653,203,'Gairloch',0,67),(13654,203,'Galashiels',0,67),(13655,203,'Gartocharn',0,67),(13656,203,'Gauldry',0,67),(13658,203,'Glencaple',0,67),(13659,203,'Glenfinnan',0,67),(13660,203,'Glenluce',0,67),(13661,203,'Glenrothes',0,67),(13662,203,'Gorebridge',0,67),(13663,203,'Gourock',0,67),(13664,203,'Grangemouth',0,67),(13665,203,'Grantown-on-Spey',0,67),(13666,203,'Greenock',0,67),(13667,203,'Gretna',0,67),(13668,203,'Gullane',0,67),(13669,203,'Haddington',0,67),(13670,203,'Hamilton',0,67),(13671,203,'Hawick',0,67),(13672,203,'Helensburgh',0,67),(13673,203,'Huntly',0,67),(13674,203,'Inchinnan Estate',0,67),(13675,203,'Innerleithen',0,67),(13676,203,'Insch',0,67),(13677,203,'Inveraray',0,67),(13678,203,'Invergarry',0,67),(13679,203,'Inverkeithing',0,67),(13681,203,'Inveruglas',0,67),(13683,203,'Irvine',0,67),(13684,203,'Jedburgh',0,67),(13685,203,'John o\' Groats',0,67),(13686,203,'Johnstone',0,67),(13687,203,'Keith',0,67),(13688,203,'Kelso',0,67),(13689,203,'Kentallen',0,67),(13690,203,'Kilbarchan',0,67),(13691,203,'Kilchoan',0,67),(13692,203,'Killearn',0,67),(13693,203,'Killin',0,67),(13694,203,'Kilmacolm',0,67),(13695,203,'Kilmarnock',0,67),(13696,203,'Kilmun',0,67),(13697,203,'Kilwinning',0,67),(13698,203,'Kincraig',0,67),(13699,203,'Kinghorn',0,67),(13700,203,'Kinglassie',0,67),(13701,203,'Kingussie',0,67),(13702,203,'Kinlochewe',0,67),(13703,203,'Kinloss',0,67),(13704,203,'Kintore',0,67),(13705,203,'Kirkcaldy',0,67),(13706,203,'Kirkcudbright',0,67),(13707,203,'Kirkhill',0,67),(13708,203,'Kirknewton',0,67),(13709,203,'Kirkpatrick Durham',0,67),(13710,203,'Kirkwall',0,67),(13711,203,'Knightswood',0,67),(13712,203,'Kyle of Lochalsh',0,67),(13713,203,'Ladybank',0,67),(13714,203,'Lairg',0,67),(13715,203,'Lamlash',0,67),(13716,203,'Lanark',0,67),(13717,203,'Langholm',0,67),(13718,203,'Larbert',0,67),(13719,203,'Largs',0,67),(13720,203,'Lasswade',0,67),(13721,203,'Laurencekirk',0,67),(13722,203,'Lerwick',0,67),(13723,203,'Lesmahagow',0,67),(13724,203,'Leuchars',0,67),(13725,203,'Leven',0,67),(13726,203,'Limekilns',0,67),(13727,203,'Linlithgow',0,67),(13728,203,'Livingston',0,67),(13729,203,'Loanhead',0,67),(13730,203,'Lochailort',0,67),(13731,203,'Lochcarron',0,67),(13732,203,'Lochearnhead',0,67),(13733,203,'Lochgilphead',0,67),(13734,203,'Lochranza',0,67),(13735,203,'Lockerbie',0,67),(13736,203,'Lossiemouth',0,67),(13737,203,'Lower Largo',0,67),(13738,203,'Lugton',0,67),(13739,203,'Markinch',0,67),(13740,203,'Maybole',0,67),(13741,203,'Melrose',0,67),(13742,203,'Milngavie',0,67),(13743,203,'Milton of Campsie',0,67),(13744,203,'Moffat',0,67),(13745,203,'Motherwell',0,67),(13746,203,'Muir of Ord',0,67),(13747,203,'Musselburgh',0,67),(13748,203,'Nairn',0,67),(13749,203,'Newmachar',0,67),(13750,203,'Newmains',0,67),(13751,203,'Newport-on-Tay',0,67),(13752,203,'Newton Stewart',0,67),(13753,203,'Newtonmore',0,67),(13754,203,'North Berwick',0,67),(13755,203,'North Queensferry',0,67),(13756,203,'Oban',0,67),(13757,203,'Oldmeldrum',0,67),(13758,203,'Onich',0,67),(13759,203,'Paisley',0,67),(13760,203,'Peebles',0,67),(13761,203,'Penicuik',0,67),(13762,203,'Peterhead',0,67),(13763,203,'Pittenweem',0,67),(13764,203,'Plockton',0,67),(13765,203,'Port Bannatyne',0,67),(13766,203,'Portlethen',0,67),(13767,203,'Portpatrick',0,67),(13769,203,'Reston',0,67),(13770,203,'Rosehall',0,67),(13771,203,'Rosewell',0,67),(13772,203,'Roslin',0,67),(13773,203,'Ross',0,67),(13774,203,'Rothesay',0,67),(13775,203,'Roybridge',0,67),(13776,203,'Rutherglen',0,67),(13777,203,'Saltcoats',0,67),(13778,203,'Sandbank',0,67),(13779,203,'Selkirk',0,67),(13780,203,'Shotts',0,67),(13781,203,'Skelmorlie',0,67),(13782,203,'South Queensferry',0,67),(13783,203,'Spean Bridge',0,67),(13785,203,'Stenton',0,67),(13787,203,'Stonehaven',0,67),(13788,203,'Stornoway',0,67),(13789,203,'Stranraer',0,67),(13790,203,'Strathaven',0,67),(13791,203,'Strathdon',0,67),(13792,203,'Strathmiglo',0,67),(13793,203,'Strathpeffer',0,67),(13794,203,'Tain',0,67),(13795,203,'Tarbert',0,67),(13796,203,'Taynuilt',0,67),(13797,203,'Thornhill',0,67),(13798,203,'Thornton',0,67),(13800,203,'Tillicoultry',0,67),(13801,203,'Tobermory',0,67),(13802,203,'Tomintoul',0,67),(13803,203,'Troon',0,67),(13804,203,'Turnberry',0,67),(13805,203,'Tynehead',0,67),(13806,203,'Ullapool',0,67),(13807,203,'Walkerburn',0,67),(13808,203,'Wartle',0,67),(13809,203,'Wemyss Bay',0,67),(13810,203,'West Linton',0,67),(13811,203,'Whiting Bay',0,67),(13812,203,'Wick',0,67),(13813,203,'Wigtown',0,67),(13816,203,'Aberdyfi',0,68),(13819,203,'Abersoch',0,68),(13831,203,'Beddgelert',0,68),(13836,203,'Bridgend',0,68),(13837,203,'Brynmawr',0,68),(13839,203,'Builth Wells',0,68),(13843,203,'Caerwys',0,68),(13845,203,'Capel Curig',0,68),(13849,203,'Carno',0,68),(13851,203,'Clyro',0,68),(13853,203,'Connah\'s Quay',0,68),(13854,203,'Conwy',0,68),(13855,203,'Corris',0,68),(13856,203,'Cowbridge',0,68),(13859,203,'Crynant',0,68),(13866,203,'Fishguard',0,68),(13868,203,'Ganllwyd',0,68),(13869,203,'Gellilydan',0,68),(13870,203,'Gorseinon',0,68),(13871,203,'Gwalchmai',0,68),(13873,203,'Hawarden',0,68),(13874,203,'Hay-on-Wye',0,68),(13877,203,'Keeston',0,68),(13880,203,'Laugharne',0,68),(13881,203,'Llanbedr',0,68),(13882,203,'Llanberis',0,68),(13883,203,'Llanbister',0,68),(13884,203,'Llancarfan',0,68),(13885,203,'Llandarcy',0,68),(13886,203,'Llandegla',0,68),(13888,203,'Llandogo',0,68),(13890,203,'Llandow',0,68),(13891,203,'Llandrillo',0,68),(13894,203,'Llandybie',0,68),(13902,203,'Llanrhaeadr-ym-Mochnant',0,68),(13903,203,'Llanrhidian',0,68),(13904,203,'Llanrug',0,68),(13906,203,'Llansteffan',0,68),(13907,203,'Llantrisant',0,68),(13909,203,'Llanwrtyd Wells',0,68),(13915,203,'Monmouth',0,68),(13917,203,'Morfa Nefyn',0,68),(13918,203,'Mumbles, The',0,68),(13919,203,'Mynachlog-ddu',0,68),(13920,203,'Narberth',0,68),(13922,203,'Newbridge on Wye',0,68),(13924,203,'Newport',0,68),(13926,203,'Nolton',0,68),(13927,203,'Ogmore by Sea',0,68),(13928,203,'Pandy',0,68),(13935,203,'Pen-y-ffordd',0,68),(13936,203,'Pont-rhyd-y-groes',0,68),(13937,203,'Pontyberem',0,68),(13943,203,'Porthkerry',0,68),(13945,203,'Portmeirion',0,68),(13949,203,'Raglan',0,68),(13950,203,'Reynoldston',0,68),(13951,203,'Rhayader',0,68),(13953,203,'Rhuddlan',0,68),(13955,203,'Rhymni',0,68),(13956,203,'Ruthin',0,68),(13958,203,'St. Brides Wentlooge',0,68),(13959,203,'St. Clears',0,68),(13960,203,'St. Davids',0,68),(13961,203,'Sully',0,68),(13963,203,'Taffs Well',0,68),(13964,203,'Taibach',0,68),(13965,203,'Talbot Green',0,68),(13966,203,'Talgarth',0,68),(13967,203,'Tal-y-bont',0,68),(13972,203,'Waunarlwydd',0,68),(14029,179,'Ayamonte',1,287),(14031,179,'Isla Cristina',1,287),(14033,179,'Montilla',1,287),(14034,179,'Puente Genil',1,287),(14036,179,'Alhaurin el Grande',1,287),(14037,179,'Archidona',1,287),(14038,179,'Benalmadena',1,287),(14039,179,'Campillos',1,287),(14040,179,'Competa',1,287),(14041,179,'Estepona',1,287),(14042,179,'Frigiliana',1,287),(14043,179,'Fuengirola',1,287),(14044,179,'Gaucin',1,287),(14045,179,'Marbella',1,287),(14046,179,'Mijas',1,287),(14047,179,'Montefrio',1,287),(14049,179,'Nerja',1,287),(14050,179,'Periana',1,287),(14051,179,'Ronda',1,287),(14052,179,'San Roque',1,287),(14053,179,'Sedella',1,287),(14054,179,'Torre del Mar',1,287),(14055,179,'Torremolinos',1,287),(14056,179,'Torrox',1,287),(14057,179,'Durcal',1,287),(14058,179,'Granada',1,287),(14059,179,'La Herradura',1,287),(14060,179,'Albox',1,287),(14061,179,'Almeria',1,287),(14062,179,'Arboleas',1,287),(14063,179,'Cantoria',1,287),(14064,179,'Mojacar',1,287),(14065,179,'Vera',1,287),(14066,179,'Algeciras',1,287),(14067,179,'Benalup',1,287),(14068,179,'Chipiona',1,287),(14070,179,'El Puerto de Santa Maria',1,287),(14071,179,'Grazalema',1,287),(14072,179,'Jerez de la Frontera',1,287),(14073,179,'Rota',1,287),(14074,179,'Sanlucar de Barrameda',1,287),(14075,179,'Tarifa',1,287),(14076,179,'Vejer de la Frontera',1,287),(14077,179,'Huesca',1,288),(14078,179,'Jaca',1,288),(14080,179,'Teruel',1,288),(14081,179,'Oivedo',1,289),(14083,179,'Alcudia',1,290),(14084,179,'Andratx',1,290),(14085,179,'Banyalbufar',1,290),(14086,179,'Bunyola',1,290),(14087,179,'Cala Sant Vicenc',1,290),(14088,179,'Calan Porter',1,290),(14089,179,'Calvia',1,290),(14090,179,'Ciutadella de Menorca',1,290),(14091,179,'Elvissa',1,290),(14092,179,'Es Cana',1,290),(14093,179,'Ibiza',1,290),(14094,179,'Magalluf',1,290),(14095,179,'Mahon',1,290),(14096,179,'Manacor',1,290),(14097,179,'Palma de Mallorca',1,290),(14098,179,'Porto Cristo',1,290),(14099,179,'San Antonio Abad',1,290),(14100,179,'Santa Eulalia del Rio',1,290),(14101,179,'Santa Ponsa',1,290),(14102,179,'Soller',1,290),(14103,179,'Valldemossa',1,290),(14105,179,'Galdakao',1,291),(14106,179,'Getxo',1,291),(14107,179,'Somorrostro',1,291),(14108,179,'Zamudio',1,291),(14109,179,'Astigarraga',1,291),(14110,179,'Bergara',1,291),(14111,179,'Eibar',1,291),(14112,179,'Elgoibar',1,291),(14113,179,'Getaria',1,291),(14114,179,'Irun',1,291),(14115,179,'Mondragon',1,291),(14117,179,'San Sebastian (Donostia)',1,291),(14118,179,'Vitoria',1,291),(14119,179,'Adeje',1,292),(14120,179,'Arona',1,292),(14121,179,'Brena Alta',1,292),(14122,179,'La Laguna',1,292),(14123,179,'Los Cristianos',1,292),(14124,179,'Puerto de la Cruz',1,292),(14125,179,'Puerto del Carmen',1,292),(14126,179,'Santa Cruz',1,292),(14127,179,'Tacoronte',1,292),(14128,179,'El Hierro',1,292),(14129,179,'La Gomera',1,292),(14131,179,'Tenerife',1,292),(14132,179,'Guadalajara',1,293),(14133,179,'Hita',1,293),(14134,179,'Toledo',1,293),(14135,179,'Cuenca',1,293),(14136,179,'Albacete',1,293),(14138,179,'Burgos',1,294),(14139,179,'Medina de Rioseco',1,294),(14140,179,'Quintanilla de Onesimo',1,294),(14142,179,'Segovia',1,294),(14144,179,'Avila',1,294),(14145,179,'Bossost',1,295),(14146,179,'Lerida',1,295),(14147,179,'Llavorsi',1,295),(14148,179,'Tarrega',1,295),(14149,179,'Aiguaviva',1,295),(14150,179,'Castello d\'Empuries',1,295),(14151,179,'Empuriabrava',1,295),(14152,179,'Figueres',1,295),(14153,179,'Girona',1,295),(14154,179,'L\'Estartit',1,295),(14155,179,'La Escala',1,295),(14156,179,'Llanca',1,295),(14157,179,'Lloret de Mar',1,295),(14158,179,'Palamos',1,295),(14159,179,'Perelada',1,295),(14160,179,'Platja d\'Aro',1,295),(14161,179,'Riudellots de La Selva',1,295),(14162,179,'S\'Agaro',1,295),(14163,179,'Arenys de Mar',1,295),(14164,179,'Arenys de Munt',1,295),(14165,179,'Argentona',1,295),(14166,179,'Badalona',1,295),(14167,179,'Barbera del Valles',1,295),(14169,179,'Berga',1,295),(14170,179,'Cardedeu',1,295),(14171,179,'Castelldefels',1,295),(14172,179,'Cerdanyola',1,295),(14173,179,'Esplugas del Llobregat',1,295),(14174,179,'Granollers',1,295),(14175,179,'Igualada',1,295),(14176,179,'Llissa de Vall',1,295),(14177,179,'Manresa',1,295),(14178,179,'Mataro',1,295),(14179,179,'Parets del Valles',1,295),(14180,179,'Puig-reig',1,295),(14181,179,'Sabadell',1,295),(14182,179,'Sant Boi de Llobregat',1,295),(14183,179,'Sant Cugat del Valles',1,295),(14184,179,'Sant Fruitos de Bages',1,295),(14185,179,'Seva',1,295),(14186,179,'Sitges',1,295),(14187,179,'Terrassa',1,295),(14188,179,'Tordera',1,295),(14189,179,'Vic',1,295),(14190,179,'Vilafranca del Penedes',1,295),(14191,179,'Reus',1,295),(14192,179,'Roda de Bara',1,295),(14193,179,'Salou',1,295),(14195,179,'Coria',1,296),(14196,179,'Trujillo',1,296),(14197,179,'Badajoz',1,296),(14198,179,'Guarena',1,296),(14199,179,'Ferrol',1,297),(14201,179,'Riveira',1,297),(14202,179,'Santiago de Compostela',1,297),(14203,179,'Lugo',1,297),(14204,179,'Cangas',1,297),(14205,179,'Pontevedra',1,297),(14206,179,'Porrino',1,297),(14208,179,'Ourense',1,297),(14211,179,'Onda',1,299),(14212,179,'Gandia',1,299),(14213,179,'La Eliana',1,299),(14214,179,'Morella',1,299),(14215,179,'Onteniente',1,299),(14216,179,'Paterna',1,299),(14217,179,'Requena',1,299),(14218,179,'Torrent',1,299),(14220,179,'Alcoy',1,299),(14222,179,'Benidorm',1,299),(14223,179,'Calpe',1,299),(14224,179,'Denia',1,299),(14225,179,'Elche',1,299),(14226,179,'Javea',1,299),(14227,179,'Orihuela',1,299),(14228,179,'Torrevieja',1,299),(14229,179,'Aguilas',1,300),(14230,179,'Archena',1,300),(14232,179,'Lorca',1,300),(14233,179,'Mazarr',1,300),(14234,179,'Murcia',1,300),(14235,179,'Yecla',1,300),(14236,179,'Cintruenigo',1,301),(14237,179,'Pamplona',1,301),(14238,179,'Tudela',1,301),(14243,179,'Santillana del Mar',1,302),(14244,214,'Montevideo',-4,0),(14245,214,'Punta del Este',-4,0);
/*!40000 ALTER TABLE `geo_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo_country`
--

DROP TABLE IF EXISTS `geo_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_country` (
  `gcn_countryid` int(11) NOT NULL AUTO_INCREMENT,
  `gcn_regionid` int(11) NOT NULL DEFAULT '0',
  `gcn_name` char(60) DEFAULT NULL,
  `gcn_status` tinyint(4) NOT NULL DEFAULT '1',
  `gcn_order` int(12) NOT NULL DEFAULT '1000',
  `gcn_code` char(2) NOT NULL,
  PRIMARY KEY (`gcn_countryid`)
) ENGINE=MyISAM AUTO_INCREMENT=10002 DEFAULT CHARSET=latin1 PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo_country`
--

LOCK TABLES `geo_country` WRITE;
/*!40000 ALTER TABLE `geo_country` DISABLE KEYS */;
INSERT INTO `geo_country` (`gcn_countryid`, `gcn_regionid`, `gcn_name`, `gcn_status`, `gcn_order`, `gcn_code`) VALUES (0,0,'Unspecified',1,1000,''),(1,4,'Afghanistan',1,1000,'AF'),(2,7,'Albania',1,1000,'AL'),(3,1,'Algeria',1,1000,'DZ'),(4,13,'American Samoa',1,1000,'AS'),(5,1,'Angola',1,1000,'AO'),(6,1,'Anguilla',1,1000,'AI'),(7,2,'Antartica',1,1000,'AQ'),(8,5,'Antigua',1,1000,'AG'),(9,14,'Argentina',1,1000,'AR'),(10,7,'Armenia',1,1000,'AM'),(11,12,'Aruba',1,1000,'AW'),(12,5,'Ascension Island',1,1000,'SH'),(13,13,'Australia',1,1000,'AU'),(14,7,'Austria',1,1000,'AT'),(15,10,'Azerbaijan',1,1000,'AZ'),(16,5,'Bahamas',1,1000,'BS'),(17,10,'Bahrain',1,1000,'BH'),(18,4,'Bangladesh',1,1000,'BD'),(19,5,'Barbados',1,1000,'BB'),(20,7,'Belarus',1,1000,'BO'),(21,7,'Belgium',1,1000,'BE'),(22,1,'Belize',1,1000,'BZ'),(23,1,'Benin',1,1000,'BJ'),(24,6,'Bermuda',1,1000,'BM'),(25,4,'Bhutan',1,1000,'BT'),(26,1,'Bolivia',1,1000,'BO'),(27,7,'Bosnia-Herzegovina',1,1000,'BA'),(28,1,'Botswana',1,1000,'BW'),(29,14,'Brazil',1,1000,'BR'),(30,13,'British Virgin Islands',1,1000,'VG'),(31,4,'Brunei',1,1000,'BN'),(32,7,'Bulgaria',1,1000,'BG'),(34,7,'Burundi',1,1000,'BI'),(36,4,'Cambodia',1,1000,'KH'),(35,1,'Cameroon',1,1000,'CM'),(37,11,'Canada',1,1000,'CA'),(38,13,'Cape Verde Islands',1,1000,'CV'),(39,5,'Cayman Islands',1,1000,'KY'),(40,1,'Central African Rep',1,1000,'CF'),(41,1,'Chad Republic',1,1000,'TD'),(42,14,'Chile',1,1000,'CL'),(43,4,'China',1,1000,'CN'),(44,14,'Colombia',1,1000,'CO'),(45,1,'Comoros',1,1000,'KM'),(46,1,'Congo',1,1000,'CF'),(47,12,'Cook Islands',1,1000,'CK'),(48,6,'Costa Rica',1,1000,'CR'),(49,7,'Croatia',1,1000,'HR'),(50,5,'Cuba',1,1000,'CU'),(51,9,'Cyprus',1,1000,'CY'),(52,7,'Czech Republic',1,1000,'CZ'),(53,7,'Denmark',1,1000,'DK'),(55,1,'Djibout',1,1000,'DJ'),(56,5,'Dominica',1,1000,'DM'),(57,5,'Dominican Republic',1,1000,'DO'),(58,1,'Ecuador',1,1000,'EC'),(59,1,'Egypt',1,1000,'EG'),(60,1,'El Salvador',1,1000,'SV'),(61,12,'Equatorial Guinea',1,1000,'GQ'),(62,1,'Eritrea',1,1000,'ER'),(63,7,'Estonia',1,1000,'EE'),(64,1,'Ethiopia',1,1000,'ET'),(65,5,'Faeroe Islands',1,1000,'FO'),(66,14,'Falkland Islands',1,1000,'FK'),(67,13,'Fiji Islands',1,1000,'FJ'),(68,7,'Finland',1,1000,'FI'),(69,12,'French Guiana',1,1000,'FR'),(70,12,'French Polynesia',1,1000,'PF'),(71,7,'France',1,1000,'FR'),(74,1,'Gambia',1,1000,'GM'),(75,7,'Georgia',1,1000,'GE'),(76,7,'Germany',1,1000,'DE'),(77,1,'Ghana',1,1000,'GH'),(78,7,'Gibraltar',1,1000,'GI'),(79,7,'Greece',1,1000,'GR'),(80,3,'Greenland',1,1000,'GL'),(81,5,'Grenada',1,1000,'GD'),(82,6,'Guadeloupe',1,1000,'GP'),(83,12,'Guam',1,1000,'GU'),(85,6,'Guatemala',1,1000,'GT'),(86,1,'Guinea',1,1000,'GN'),(87,1,'Guinea Bissau',1,1000,'GW'),(88,1,'Guyana',1,1000,'GY'),(89,6,'Haiti',1,1000,'HT'),(90,6,'Honduras',1,1000,'HN'),(91,4,'Hong Kong',1,1000,'HK'),(92,7,'Hungary',1,1000,'HU'),(93,7,'Iceland',1,1000,'IS'),(94,4,'India',1,1000,'IN'),(95,12,'Indonesia',1,1000,'ID'),(96,10,'Iran',1,1000,'IR'),(97,10,'Iraq',1,1000,'IQ'),(98,7,'Ireland',1,1000,'IE'),(99,10,'Israel',1,1000,'IL'),(100,7,'Italy',1,1000,'IT'),(101,1,'Ivory Coast',1,1000,'CI'),(102,5,'Jamaica',1,1000,'JM'),(103,4,'Japan',1,1000,'JP'),(104,10,'Jordan',1,1000,'JO'),(105,4,'Kazakhstan',1,1000,'KZ'),(106,1,'Kenya',1,1000,'KE'),(107,13,'Kiribati',1,1000,'KI'),(108,4,'Korea (South)',1,1000,'KR'),(109,4,'Korea (North)',1,1000,'KP'),(110,4,'Kuwait',1,1000,'KW'),(111,4,'Kyrgyzstan',1,1000,'KG'),(112,4,'Laos',1,1000,'LA'),(113,7,'Latvia',1,1000,'LV'),(114,10,'Lebanon',1,1000,'LB'),(115,1,'Lesotho',1,1000,'LS'),(116,1,'Liberia',1,1000,'LR'),(117,10,'Libya',1,1000,'LY'),(118,7,'Lithuania',1,1000,'LT'),(119,7,'Luxembourg',1,1000,'LU'),(120,4,'Macau',1,1000,'MO'),(121,7,'Macedonia',1,1000,'MK'),(122,1,'Madagascar',1,1000,'MG'),(123,1,'Malawi',1,1000,'MW'),(124,4,'Malaysia',1,1000,'MY'),(125,4,'Maldives',1,1000,'MV'),(126,1,'Mali Republic',1,1000,'ML'),(127,7,'Malta',1,1000,'MT'),(128,12,'Marshall Islands',1,1000,'MH'),(129,1,'Mauritania',1,1000,'MR'),(130,1,'Mauritius',1,1000,'MU'),(131,11,'Mexico',1,1000,'MX'),(132,12,'Micronesia',1,1000,'FM'),(133,7,'Moldova',1,1000,'MD'),(134,4,'Mongolia',1,1000,'MN'),(135,5,'Montserrat',1,1000,'MS'),(136,1,'Morocco',1,1000,'MA'),(137,1,'Mozambique',1,1000,'MZ'),(138,1,'Namibia',1,1000,'NA'),(139,12,'Nauru',1,1000,'NR'),(140,0,'Nepal',1,1000,'NP'),(141,13,'Netherland Antilles',1,1000,'AN'),(142,7,'Netherlands',1,1000,'NL'),(143,6,'Nevis',1,1000,'KN'),(144,12,'New Calidonia',1,1000,'NC'),(145,12,'New Zealand',1,1000,'NZ'),(146,1,'Nicaragua',1,1000,'NI'),(147,1,'Niger',1,1000,'NE'),(148,1,'Nigeria',1,1000,'NG'),(149,13,'Niue Island',1,1000,'NU'),(150,12,'Norfolk Island',1,1000,'NF'),(151,7,'Norway',1,1000,'NO'),(152,10,'Oman',1,1000,'OM'),(153,10,'Pakistan',1,1000,'PK'),(154,13,'Palau',1,1000,'PW'),(155,6,'Panama',1,1000,'PA'),(156,12,'Papua New Guinea',1,1000,'PG'),(157,14,'Paraguay',1,1000,'PY'),(158,14,'Peru',1,1000,'PE'),(159,12,'Philippines',1,1000,'PH'),(160,7,'Poland',1,1000,'PL'),(161,7,'Portugal',1,1000,'PT'),(162,10,'Qatar',1,1000,'QA'),(163,12,'Reunion Island',1,1000,'RE'),(164,7,'Romania',1,1000,'RO'),(165,7,'Russia',1,1000,'RU'),(166,1,'Rwanda',1,1000,'RW'),(167,13,'Saipan',1,1000,'MP'),(168,13,'Sao Tome',1,1000,'ST'),(169,10,'Saudi Arabia',1,1000,'SA'),(170,7,'Serbia',1,1000,'RS'),(171,12,'Seychelles Island',1,1000,'SC'),(172,1,'Sierra Leone',1,1000,'SL'),(173,12,'Singapore',1,1000,'SG'),(174,7,'Slovakia',1,1000,'SK'),(175,7,'Slovenia',1,1000,'SI'),(176,13,'Soloman Island',1,1000,'SB'),(177,1,'Somalia',1,1000,'SO'),(178,1,'South Africa',1,1000,'ZA'),(179,7,'Spain',1,1000,'ES'),(180,4,'Sri Lanka',1,1000,'LK'),(181,12,'St Vincent',1,1000,'VC'),(182,1,'Sudan',1,1000,'SD'),(183,1,'Suriname',1,1000,'SR'),(185,7,'Sweden',1,1000,'SE'),(186,7,'Switzerland',1,1000,'CH'),(187,10,'Syria',1,1000,'SY'),(188,4,'Taiwan',1,1000,'TW'),(189,4,'Tajikistan',1,1000,'TJ'),(190,12,'Tanzania',1,1000,'TZ'),(191,4,'Thailand',1,1000,'TH'),(192,1,'Togo',1,1000,'TG'),(193,1,'Tonga',1,1000,'TO'),(194,1,'Trinidad & Tobago',1,1000,'TT'),(195,1,'Tunisia',1,1000,'TN'),(196,10,'Turkey',1,1000,'TR'),(197,4,'Turkmenistan',1,1000,'TM'),(198,5,'Turks/Caicos',1,1000,'TC'),(199,12,'Tuvalu',1,1000,'TV'),(200,1,'Uganda',1,1000,'UG'),(201,7,'Ukraine',1,1000,'UA'),(202,10,'United Arab Emirates',1,1000,'AE'),(203,7,'United Kingdom',1,1000,'GB'),(204,0,'United States of America',1,1,'US'),(205,4,'Uzbekistan',1,1000,'UZ'),(206,14,'Venezuela',1,1000,'VE'),(207,4,'Vietnam',1,1000,'VN'),(209,10,'Yemen Republic',1,1000,'YE'),(211,1,'Zambia',1,1000,'ZM'),(212,1,'Zimbabwe',1,1000,'ZW'),(213,6,'Puerto Rico',1,1000,'PR'),(214,14,'Uruguay',1,1000,'UY');
/*!40000 ALTER TABLE `geo_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo_region`
--

DROP TABLE IF EXISTS `geo_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_region` (
  `grg_regionid` int(11) NOT NULL AUTO_INCREMENT,
  `grg_name` char(60) DEFAULT NULL,
  `grg_order` int(11) NOT NULL DEFAULT '1000',
  PRIMARY KEY (`grg_regionid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo_region`
--

LOCK TABLES `geo_region` WRITE;
/*!40000 ALTER TABLE `geo_region` DISABLE KEYS */;
INSERT INTO `geo_region` (`grg_regionid`, `grg_name`, `grg_order`) VALUES (1,'Africa',11),(2,'Antarctica',12),(3,'Arctic',3),(4,'Asia',4),(5,'Caribbean',5),(6,'Central America',6),(7,'Europe',2),(9,'Mediterranean',9),(10,'Middle East',10),(11,'North America',1),(12,'Oceania',12),(13,'Pacific Rim',13),(14,'South America',14);
/*!40000 ALTER TABLE `geo_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo_state`
--

DROP TABLE IF EXISTS `geo_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_state` (
  `gst_stateid` int(11) NOT NULL AUTO_INCREMENT,
  `gst_countryid` int(11) NOT NULL DEFAULT '0',
  `gst_name` char(32) DEFAULT NULL,
  PRIMARY KEY (`gst_stateid`,`gst_countryid`)
) ENGINE=MyISAM AUTO_INCREMENT=304 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo_state`
--

LOCK TABLES `geo_state` WRITE;
/*!40000 ALTER TABLE `geo_state` DISABLE KEYS */;
INSERT INTO `geo_state` (`gst_stateid`, `gst_countryid`, `gst_name`) VALUES (1,204,'Alabama'),(2,204,'Alaska'),(3,204,'Arizona'),(4,204,'Arkansas'),(5,204,'California'),(6,204,'Colorado'),(7,204,'Connecticut'),(8,204,'Delaware'),(9,204,'Florida'),(10,204,'Georgia'),(11,204,'Hawaii'),(12,204,'Idaho'),(13,204,'Illinois'),(14,204,'Indiana'),(15,204,'Iowa'),(16,204,'Kansas'),(17,204,'Kentucky'),(18,204,'Louisiana'),(19,204,'Maine'),(20,204,'Maryland'),(21,204,'Massachusetts'),(22,204,'Michigan'),(23,204,'Minnesota'),(24,204,'Mississippi'),(25,204,'Missouri'),(26,204,'Montana'),(27,204,'Nebraska'),(28,204,'Nevada'),(29,204,'New Hampshire'),(30,204,'New Jersey'),(31,204,'New Mexico'),(32,204,'New York'),(33,204,'North Carolina'),(34,204,'North Dakota'),(35,204,'Ohio'),(36,204,'Oklahoma'),(37,204,'Oregon'),(38,204,'Pennsylvania'),(39,204,'Rhode Island'),(40,204,'South Carolina'),(41,204,'South Dakota'),(42,204,'Tennessee'),(43,204,'Texas'),(44,204,'Utah'),(45,204,'Vermont'),(46,204,'Virginia'),(47,204,'Washington'),(48,204,'West Virginia'),(49,204,'Wisconsin'),(50,204,'Wyoming'),(51,204,'District of Columbia'),(52,37,'Alberta'),(53,37,'British Colombia'),(54,37,'Manitoba'),(55,37,'New Brunswick'),(56,37,'Newfoundland'),(57,37,'Northwest Territories'),(58,37,'Nova Scotia'),(59,37,'Nunavut'),(60,37,'Ontario'),(61,37,'Prince Edward Island'),(62,37,'Quebec'),(63,37,'Saskatchewan'),(64,37,'Yukon'),(65,203,'England'),(66,203,'Northern Ireland'),(67,203,'Scotland'),(68,203,'Wales'),(69,13,'Australian Capital'),(70,13,'New South Wales'),(71,13,'Northern Territory'),(72,13,'Queensland'),(73,13,'South Australia'),(74,13,'Tasmania'),(75,13,'Victoria'),(76,13,'Western Australia'),(77,145,'Auckland'),(78,145,'Bay of Plenty'),(79,145,'Canterbury'),(80,145,'Gisborne'),(81,145,'Hawkes Bay'),(82,145,'Manawatu-Wanganui'),(83,145,'Marlborough'),(84,145,'Nelson'),(85,145,'Northland'),(86,145,'Otago'),(87,145,'Southland'),(88,145,'Taranaki'),(89,145,'Tasman'),(90,145,'Waikato'),(91,145,'Wellington'),(92,145,'West Coast'),(93,178,'Eastern Cape'),(94,178,'Free State'),(95,178,'Gauteng'),(96,178,'KwaZulu Natal'),(97,178,'Limpopo'),(98,178,'Mpumalanga'),(99,178,'North West'),(100,178,'Northern Cape'),(101,178,'Western Cape'),(102,71,'Alsace'),(103,71,'Aquitaine'),(104,71,'Auvergne'),(105,71,'Brittany'),(106,71,'Burgundy'),(107,71,'Centre'),(108,71,'Champagne-Ardenne'),(109,71,'Corsica'),(110,71,'Franche-Comte'),(111,71,'Ile-de-France'),(112,71,'Languedoc-Roussillon'),(113,71,'Limousin'),(114,71,'Lorraine'),(115,71,'Lower Normandy'),(116,71,'Midi-Pyrenees'),(117,71,'Nord Pas-de-Calais'),(118,71,'Pays de la Loire'),(119,71,'Picardie'),(120,71,'Poitou-Charentes'),(121,71,'Provence-Alpes-Cote d\'Azur'),(122,71,'Rhone-Alpes'),(123,71,'Upper Normandy'),(124,76,'Baden-Wuerttemberg'),(125,76,'Bavaria'),(126,76,'Berlin'),(127,76,'Brandenburg'),(128,76,'Bremen'),(129,76,'Hamburg'),(130,76,'Hessen'),(131,76,'Mecklenburg-Vorpommern'),(132,76,'Niedersachsen'),(133,76,'Nordrhein-Westfalen'),(134,76,'Rheinland-Pfalz'),(135,76,'Saarland'),(136,76,'Sachsen'),(137,76,'Sachsen-Anhalt'),(138,76,'Schleswig-Holstein'),(139,76,'Thuringen'),(140,165,'Altaiskiy kray'),(141,165,'Amurskaya obl.'),(142,165,'Arkhangelskaya obl.'),(143,165,'Astrakhanskaya obl.'),(144,165,'Belgorodskaya obl.'),(145,165,'Bryanskaya obl.'),(146,165,'Chechnya'),(147,165,'Chelyabinskaya obl.'),(148,165,'Chitinskaya obl.'),(149,165,'Chukotka Auth. Dist.'),(150,165,'Chuvash Rep.'),(151,165,'Evenkia Auth. Dist.'),(152,165,'Irkutskaya obl.'),(153,165,'Ivanovskaya obl.'),(154,165,'Jewish Aut. Region'),(155,165,'Kabardino-Balkaryan rep.'),(156,165,'Kaliningradskaya obl.'),(157,165,'Kaluzhskaya obl.'),(158,165,'Kamchatskaya obl.'),(159,165,'Karachay-Cherkess rep.'),(160,165,'Kemerovskaya obl.'),(161,165,'Khabarovskiy kray'),(162,165,'Khanty-Mansiysk Auth. Dist.'),(163,165,'Kirovskaya obl.'),(164,165,'Kostromskaya obl.'),(165,165,'Krasnodarskiy kray'),(166,165,'Krasnoyarskiy kray'),(167,165,'Kurganskaya obl.'),(168,165,'Kurskaya obl.'),(169,165,'Leningradskaya obl.'),(170,165,'Lipetskaya obl.'),(171,165,'Magadanskaya obl.'),(172,165,'Moskovskaya obl.'),(173,165,'Murmanskaya obl.'),(174,165,'Nizhegorodskaya obl.'),(175,165,'Novgorodskaya obl.'),(176,165,'Novosibirskaya obl.'),(177,165,'Omskaya obl.'),(178,165,'Orenburgskaya obl.'),(179,165,'Orlovskaya obl.'),(180,165,'Penzenskaya obl.'),(181,165,'Permskaya obl.'),(182,165,'Primorskiy kray'),(183,165,'Pskovskaya obl.'),(184,165,'Rep. of Adyghe'),(185,165,'Rep. of Altai'),(186,165,'Rep. of Bashkortostan'),(187,165,'Rep. of Buryatia'),(188,165,'Rep. of Daghestan'),(189,165,'Rep. of Ingushetia'),(190,165,'Rep. of Kalmykia'),(191,165,'Rep. of Karelia'),(192,165,'Rep. of Khakassia'),(193,165,'Rep. of Komi'),(194,165,'Rep. of Mari El'),(195,165,'Rep. of Mordovia'),(196,165,'Rep. of North Ossetia'),(197,165,'Rep. of Sakha'),(198,165,'Rep. of Tyva'),(199,165,'Rep. of Tatarstan'),(200,165,'Rostovskaya obl.'),(201,165,'Ryazanskaya obl.'),(202,165,'Sakhalinskaya obl.'),(203,165,'Samarskaya obl.'),(204,165,'Saratovskaya obl.'),(205,165,'Smolenskaya obl.'),(206,165,'Stavropolskiy kray'),(207,165,'Sverdlovskaya obl.'),(208,165,'Tambovskaya obl.'),(209,165,'Taymyr'),(210,165,'Tomskaya obl.'),(211,165,'Tul\'skaya obl.'),(212,165,'Tverskaya obl.'),(213,165,'Tyumenskaya obl.'),(214,165,'Udmurt Rep.'),(215,165,'Ul\'yanovskaya obl.'),(216,165,'Vladimirskaya obl.'),(217,165,'Volgogradskaya obl.'),(218,165,'Vologodskaya obl.'),(219,165,'Voronezhskaya obl.'),(220,165,'Yamalo-Nenetskiy Auth. Dist.'),(221,165,'Yaroslavskaya obl.'),(262,201,'Crimea'),(263,201,'Cherkasy obl.'),(264,201,'Chernihiv obl.'),(265,201,'Chernivtsi obl.'),(266,201,'Dnipropetrovsk obl.'),(267,201,'Donetsk obl.'),(268,201,'Ivano-Frankivsk obl.'),(269,201,'Kharkiv obl.'),(270,201,'Kherson obl.'),(271,201,'Khmelnytskyi obl.'),(272,201,'Kirovohrad obl.'),(273,201,'Kyiv obl.'),(274,201,'Luhansk obl.'),(275,201,'Lviv obl.'),(276,201,'Mykolaiv obl.'),(277,201,'Odesa obl.'),(278,201,'Poltava obl.'),(279,201,'Rivne obl.'),(280,201,'Sumy obl.'),(281,201,'Ternopil obl.'),(282,201,'Vinnytsia obl.'),(283,201,'Volyn obl.'),(284,201,'Zakarpattia obl.'),(285,201,'Zaporizhia obl.'),(286,201,'Zhytomyr obl.'),(287,179,'Andalucia'),(288,179,'Aragon'),(289,179,'Asturias'),(290,179,'Balearic Islands'),(291,179,'Basque Country'),(292,179,'Canary Islands'),(293,179,'Castile-La-Mancha'),(294,179,'Castile and Leon'),(295,179,'Catalonia'),(296,179,'Extremadura'),(297,179,'Galicia'),(298,179,'Madrid'),(299,179,'Valencian Community'),(300,179,'Murcia'),(301,179,'Navarre'),(302,179,'Cantabria');
/*!40000 ALTER TABLE `geo_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_categories`
--

DROP TABLE IF EXISTS `group_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_categories`
--

LOCK TABLES `group_categories` WRITE;
/*!40000 ALTER TABLE `group_categories` DISABLE KEYS */;
INSERT INTO `group_categories` (`id`, `name`, `parent`, `visible`) VALUES (1,'Dating',0,1);
/*!40000 ALTER TABLE `group_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_posts`
--

DROP TABLE IF EXISTS `group_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `topic` int(10) unsigned NOT NULL DEFAULT '0',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `topic` (`topic`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_posts`
--

LOCK TABLES `group_posts` WRITE;
/*!40000 ALTER TABLE `group_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `category` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `description_short` varchar(100) NOT NULL DEFAULT '',
  `url_name` varchar(50) NOT NULL DEFAULT '',
  `country` int(10) unsigned NOT NULL DEFAULT '0',
  `state` int(10) unsigned NOT NULL DEFAULT '0',
  `city` varchar(50) NOT NULL DEFAULT '0',
  `is_open` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_public` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `images_allowed` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `topics_autoapprove` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `category` (`category`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` (`id`, `owner`, `category`, `name`, `description`, `description_short`, `url_name`, `country`, `state`, `city`, `is_open`, `is_public`, `images_allowed`, `topics_autoapprove`, `status`) VALUES (2,14651,1,'Dating Do\'s and Don\'ts','Just a sample group. Hope you like it.','What not to do and what to do.','doesanddonts',204,4,'3692',1,1,1,1,1),(3,14859,1,'trttyrtyrt','fghfgh fgh fgh fgh fgh fghfghfgh  fgh fghfg fghf ghfgh fgh fghfgh fghfghf','nhfg ghfg fgh fgh fgh g','ababab',204,2,'3586',1,1,1,0,1),(4,14651,1,'User Created Group','Long user created group description.','Short user created group description','usercreated',204,10,'4580',1,1,1,0,1);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotlist`
--

DROP TABLE IF EXISTS `hotlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotlist` (
  `hot_id` int(11) NOT NULL AUTO_INCREMENT,
  `hot_userid` int(11) NOT NULL DEFAULT '0',
  `hot_advid` int(11) NOT NULL DEFAULT '0',
  `hot_screenname` varchar(30) DEFAULT NULL,
  `hot_dateadded` date DEFAULT NULL,
  `hot_title` varchar(30) DEFAULT NULL,
  `hot_private` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`hot_id`),
  KEY `hot_userid` (`hot_userid`,`hot_advid`)
) ENGINE=MyISAM AUTO_INCREMENT=2267 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotlist`
--

LOCK TABLES `hotlist` WRITE;
/*!40000 ALTER TABLE `hotlist` DISABLE KEYS */;
INSERT INTO `hotlist` (`hot_id`, `hot_userid`, `hot_advid`, `hot_screenname`, `hot_dateadded`, `hot_title`, `hot_private`) VALUES (2257,14651,14859,'testme','2019-03-20','testme','N'),(2256,14651,14651,'manager','2019-03-07','Girl - Looking for fun','N'),(2260,14651,14865,'MissyE','2019-04-03','Welcome to my profile','N'),(2261,14870,14651,'manager','2019-04-03','Girl - Looking for fun','N'),(2262,14651,14868,'stacyque','2019-04-05','Really? ','N'),(2263,14872,14651,'manager','2019-04-12','Girl - Looking for fun','N'),(2264,14877,14876,'crazybetty','2019-04-16','Welcome to CrazyBetty Life','N'),(2265,14651,14872,'Jennifer','2019-12-14','Just checking out the goods.','N'),(2266,14651,14871,'carrold','2020-01-14','Welcome to my world.','N');
/*!40000 ALTER TABLE `hotlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `im`
--

DROP TABLE IF EXISTS `im`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `im` (
  `dataid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `from_uid` mediumint(9) DEFAULT '0',
  `to_uid` mediumint(9) DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `message` mediumtext,
  `read` enum('yes','no') DEFAULT 'no',
  `status` enum('disconnected','connected') NOT NULL DEFAULT 'connected',
  PRIMARY KEY (`dataid`),
  KEY `from_uid` (`from_uid`),
  KEY `to_uid` (`to_uid`),
  KEY `read` (`read`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `im`
--

LOCK TABLES `im` WRITE;
/*!40000 ALTER TABLE `im` DISABLE KEYS */;
/*!40000 ALTER TABLE `im` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iwannatalk`
--

DROP TABLE IF EXISTS `iwannatalk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iwannatalk` (
  `uid` varchar(25) NOT NULL DEFAULT '',
  `cid` varchar(25) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'F',
  `tstamp` varchar(15) NOT NULL DEFAULT '0000000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iwannatalk`
--

LOCK TABLES `iwannatalk` WRITE;
/*!40000 ALTER TABLE `iwannatalk` DISABLE KEYS */;
/*!40000 ALTER TABLE `iwannatalk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lang_flirt`
--

DROP TABLE IF EXISTS `lang_flirt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lang_flirt` (
  `Flirt_ID` int(11) NOT NULL DEFAULT '0',
  `Text` varchar(60) NOT NULL DEFAULT '',
  `lang_id` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`Flirt_ID`,`lang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lang_flirt`
--

LOCK TABLES `lang_flirt` WRITE;
/*!40000 ALTER TABLE `lang_flirt` DISABLE KEYS */;
INSERT INTO `lang_flirt` (`Flirt_ID`, `Text`, `lang_id`) VALUES (15,'A virtual rose just for you','EN'),(14,'You caught my eye','EN'),(13,'You stole my heart','EN'),(16,'You are cute, can we chat sometime?','EN'),(17,'You had me at hello...','EN'),(18,'What a great profile! How about mine?','EN'),(28,'You were made for me!','EN'),(20,'Hey don\'t hide, upload your photo!','EN');
/*!40000 ALTER TABLE `lang_flirt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lang_mailtemplate`
--

DROP TABLE IF EXISTS `lang_mailtemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lang_mailtemplate` (
  `lang_id` char(3) NOT NULL DEFAULT '',
  `MailTemplate_ID` int(11) NOT NULL DEFAULT '0',
  `Body` mediumtext NOT NULL,
  PRIMARY KEY (`lang_id`,`MailTemplate_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lang_mailtemplate`
--

LOCK TABLES `lang_mailtemplate` WRITE;
/*!40000 ALTER TABLE `lang_mailtemplate` DISABLE KEYS */;
INSERT INTO `lang_mailtemplate` (`lang_id`, `MailTemplate_ID`, `Body`) VALUES ('EN',1,'<table cellspacing=\"0\" cellpadding=\"0\" width=\"450\" border=\"0\">\r\n    <tbody>\r\n        <tr>\r\n            <td align=\"center\">\r\n            <p><img align=\"left\" border=\"0\" alt=\"\" src=\"{ImagePath}/flirt4free.gif\" /></p>\r\n            <p align=\"left\"><font face=\"Verdana\" size=\"2\">Dear {ReceiverName} <br />\r\n            <br />\r\n            After seeing your profile at {CompanyName}, <b>{SenderName}</b> has expressed an interest in getting to know you a little better and send you flirt <b>{FlirtMessage}</b>, but before purchasing a membership, they would like to know whether you are interested in them.</font></p>\r\n            <p align=\"left\"><font face=\"Verdana\" size=\"2\"><i>Flirts are a service for members to express an interest in one another before making a more in-depth response.</i> </font></p>\r\n            <p align=\"left\"><font face=\"Verdana\" size=\"2\">Responding could not be simpler! <a href=\"{ProfileLink}\"><b>Click here</b></a><a> to view <b>{SenderName}\'s</b> profile and if interested, send a flirt back by clicking the flirt link at the top of the profile page.</a> </font></p>\r\n            <img align=\"left\" border=\"0\" alt=\"\" src=\"{ImagePath}/flirt4free.gif\" /></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<div>&nbsp;</div>'),('EN',27,'Dear {ReceiverName},\r\n\r\nYou have received a message from {SenderName} in your {CompanyName} mailbox. To read your e-mail, log onto {Url} and click the \'My E-mail\' button on the menu.\r\n\r\nIf you have any questions or comments please send them to {SupportEmail}\r\n\r\nAdministrator'),('EN',2,' Dear {ReceiverName}<br>\r\n        After seeing your profile <b>{SenderName}</b> has expressed an interest in\r\n        getting to know you a little better and send you flirt <b>{FlirtMessage}</b>, but before purchasing a membership, they would like to know whether you are interested in them.\\n\r\n        Flirts are a service for  members to express an interest in one another before making a more in-depth response.\\n\r\n        Responding could not be simpler! View <b>{SenderName}\'s</b> profile and if interested, send a flirt back by clicking the flirt link at the top of the profile page.'),('EN',28,'<div align=\'left\'>\r\n<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'80%\'>\r\n<tr >\r\n<td colspan=\'2\' width=\'80%\'>\r\n<font size=\'2\' face=\'Verdana\'>Dear {UserName},</font>\r\n     <p><font size=\'2\' face=\'Verdana\'>Thank you for registering with <a href=\'{Url}\'>{CompanyName}</a>.\r\n        Your email address is strictly for our own internal use and is not sold,\r\n        distributed or accessible to any other organization. Your privacy is\r\n        important to us and all information is supplied in strictest confidence.\r\n        Your login details are as follows:</font></td></tr><tr><td colspan=\'2\' width=\'80%\' height=\'20\'></td>\r\n      </tr>\r\n<tr><td width=\'20%\'><font size=\'2\' face=\'Verdana\'>Username:</font></td>\r\n<td width=\'80%\'><b>\r\n<font size=\'2\' face=\'Verdana\'>{UserName}</font></b></td>\r\n</tr>\r\n<tr><td width=\'20%\'><font size=\'2\' face=\'Verdana\'>Password:</font></td>\r\n<td width=\'80%\'>\r\n<b><font size=\'2\' face=\'Verdana\'>{Password}</font></b></td>\r\n</tr>\r\n\r\n<tr><td colspan=\'2\' width=\'80%\' height=\'20\'></td></tr>\r\n<tr><td colspan=\'2\' width=\'80%\'><font face=\'Verdana\' size=\'2\'>Please click the link below to validate your email address. You MUST do this before you are able to login to the site.</font>\r\n<p><font face=\'Verdana\' size=\'2\'>\r\n<a href=\'{ConfirmUrl}\'>{ConfirmUrl}</a></font></p>\r\n\r\n<tr><td colspan=\'2\' width=\'80%\' height=\'20\'></td></tr>\r\n<tr><td colspan=\'2\' width=\'80%\'><font face=\'Verdana\' size=\'2\'>Please enjoy the site and use it responsibly. At the moment you do not have a personal profile, to make the most of your membership we recommend that you place your profile as soon as possible.   For maximum exposure then don\'t forget to add your photo!</font>\r\n<p><font face=\'Verdana\' size=\'2\'>If you have any questions or comments please send them to\r\n<a href=\'mailto:{SupportEmail}\'>{SupportEmail}</a></font></p>\r\n</td></tr>\r\n<tr><td colspan=\'2\' width=\'80%\' height=\'60\' valign=\'middle\' align=\'left\'>\r\n<font face=\'Verdana\' size=\'2\'><i>The {CompanyName} Team</i></font>\r\n</td>\r\n</tr>\r\n<tr><td colspan=\'2\' width=\'80%\'><font face=\'Verdana\' size=\'1\'>Please note: We\r\n        operate an anti-Spam service and our messaging service is protected by\r\n        software to prevent the dissemination of Spam. Please do not use our\r\n        service to distribute chain-letters or any other information unrelated\r\n        to the purpose of this service. </font></td>\r\n     </tr></table></div>'),('EN',29,'<div align=\'left\'>\r\n<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'80%\'>\r\n<tr >\r\n<td colspan=\'2\' width=\'80%\'>\r\n<font size=\'2\' face=\'Verdana\'>Dear {UserName},</font>\r\n       <p><font size=\'2\' face=\'Verdana\'>Thank you for registering with <a href=\'{Url}\'>{CompanyName}</a>.\r\n       Your email address is strictly for our own internal use and is not sold,\r\n       distributed or accessible to any other organization. Your privacy is\r\n       important to us and all information is supplied in strictest confidence.\r\n       Your login details are as follows:</font></td></tr><tr><td colspan=\'2\' width=\'80%\' height=\'20\'></td>\r\n       </tr>\r\n<tr><td width=\'20%\'><font size=\'2\' face=\'Verdana\'>Username:</font></td>\r\n<td width=\'80%\'><b>\r\n<font size=\'2\' face=\'Verdana\'>{UserName}</font></b></td>\r\n</tr>\r\n<tr><td width=\'20%\'><font size=\'2\' face=\'Verdana\'>Password:</font></td>\r\n<td width=\'80%\'>\r\n<b><font size=\'2\' face=\'Verdana\'>{Password}</font></b></td>\r\n</tr>\r\n\r\n<tr><td colspan=\'2\' width=\'80%\' height=\'20\'></td></tr>\r\n<tr><td colspan=\'2\' width=\'80%\'><font face=\'Verdana\' size=\'2\'>Please enjoy the site and use it responsibly. At the moment you do not have a personal profile, to make the most of your membership we recommend that you place your profile as soon as possible.   For maximum exposure then don\'t forget to add your photo!</font>\r\n<p><font face=\'Verdana\' size=\'2\'>If you have any questions or comments please send them to\r\n<a href=\'mailto:{SupportEmail}\'>{SupportEmail}</a></font></p>\r\n</td></tr>\r\n<tr><td colspan=\'2\' width=\'80%\' height=\'60\' valign=\'middle\' align=\'left\'>\r\n<font face=\'Verdana\' size=\'2\'><i>The {CompanyName} Team</i></font>\r\n</td>\r\n</tr>\r\n<tr><td colspan=\'2\' width=\'80%\'><font face=\'Verdana\' size=\'1\'>Please note: We\r\n       operate an anti-Spam service and our messaging service is protected by\r\n       software to prevent the dissemination of Spam. Please do not use our\r\n       service to distribute chain-letters or any other information unrelated\r\n       to the purpose of this service. </font></td>\r\n       </tr></table></div> '),('EN',30,'Dear {ReceiverName},\r\nYour profile at {CompanyName} ({Url}) has been approved and is now active.\r\nRemember: to get the best response from your profile include a photograph. Profiles with photographs attract 5 - 10 times as many views as those that do not.\r\nIf you have any questions or comments please send them to {SupportEmail}\r\n\r\nAdministrator'),('EN',31,'Dear {ReceiverName},\r\nUnfortunately we are unable to approve your profile at {CompanyName} ({Url}) due to the following reason(s):\r\n{Reason}\r\n\r\nPlease update the profile to correct the above we will be happy to review it again. If you have any questions or comments please send them to {SupportEmail}\r\n\r\nAdministrator'),('EN',32,'Dear {UserName},\r\nYour booking of an event at {CompanyName} ({Url}) is accepted.\r\nThe event \"{EventName}\" will take place {EventDate} at {EventTime} in the address: \r\n{EventAddress}\r\nIf you have any questions or comments please send them to {SupportEmail}\r\nAdministrator'),('EN',33,'Dear {ReceiverName},<br>\r\nyou ticket # {TicketNumber} to event\r\n\"{EventName}\" was canceled by {SenderName}'),('EN',3,'Hi, your friend says:<br><br>\r\n\r\n{Message}<br>\r\nSee at this link: {ProfileUrl}<br><br>\r\n\r\nYou have received this e-mail because your friend thinks that you may be interested in checking out one of our members. Go to {SiteUrl} and register. It\'s completely FREE (a limited time offer). <br><br>\r\n\r\nRegards,<br>\r\n{CompanyName} Team'),('EN',4,'Hi, your friend says:<br><br>\r\n\r\n{Message}<br><br>\r\n\r\nYou have received this e-mail because your friend thinks that you may be interested in checking out one of our members. Go to {SiteUrl} and register. It\'s completely FREE (a limited time offer). <br><br>\r\n\r\nRegards,<br>\r\n{CompanyName} Team'),('EN',5,'Hi, your friend says:<br><br>\r\n\r\n{Message}<br><br>\r\n\r\nYou have received this e-mail because your friend thinks that you may be interested in checking out one of our members. Go to {SiteUrl} and register. It\'s completely FREE (a limited time offer). <br><br>\r\n\r\nRegards,<br>\r\n{CompanyName} Team'),('EN',34,'Dear {ReceiverName},\r\n\r\nYour blog at {CompanyName} ({Url}) has been approved and is now active.\r\n\r\nIf you have any questions or comments please send them to {SupportEmail}\r\n\r\nAdministrator'),('EN',35,'Dear {ReceiverName},\r\n\r\nUnfortunately we are unable to approve your blog at {CompanyName} ({Url}) due to the following reason(s):\r\n{Reason}\r\n\r\nPlease update the blog to correct the above we will be happy to review it again. If you have any questions or comments please send them to {SupportEmail}\r\n\r\nAdministrator'),('EN',36,'Dear {ReceiverName},\r\n\r\nYour post at {CompanyName} ({Url}) has been approved and is now active.\r\n\r\nIf you have any questions or comments please send them to {SupportEmail}\r\n\r\nAdministrator'),('EN',37,'Dear {ReceiverName},\r\n\r\nUnfortunately we are unable to approve your post at {CompanyName} ({Url}) due to the following reason(s):\r\n{Reason}\r\n\r\nPlease update the post to correct the above we will be happy to review it again. If you have any questions or comments please send them to {SupportEmail}\r\n\r\nAdministrator'),('EN',38,'Dear {ReceiverName},\r\n{SenderName} want to be you friend \r\nGo to site {ApproveLink} to approve or reject his request'),('EN',43,'Hello, {MemberName}\r\n\r\nYour membership in \"{GroupName}\" group was approved.\r\n\r\nHave fun!'),('EN',44,'Hello, {MemberName}\r\n\r\nYour membership in \"{GroupName}\" group was rejected.\r\n\r\nHave fun!'),('EN',42,'Hello, {AuthorName}\r\n\r\nYour topic \"{Topic}\" in group \"{GroupName}\" was rejected by group owner.\r\nReason: {Reason}'),('EN',41,'Hi {AuthorName},\r\nyour {Topic} for  {GroupName} was approved\r\n'),('EN',40,'Hello, {OwnerName}\r\n\r\nYour newly created group \"{GroupName}\" was rejected by admin.\r\nReason: {Reason}'),('EN',39,'Hello, {OwnerName}\r\n\r\nYour newly created group \"{GroupName}\" was approved by admin.\r\n\r\nHave fun!'),('EN',50,'Dear Member,<br>\r\nAs requested, here are your {Url} login details.<br><br>\r\nYour Username is: {Login}<br>\r\nYour Password is: {Password}<br><br>\r\nIf you have any questions or comments please send them to {SupportEmail}<br><br>\r\nAdministrator'),('EN',51,'Dear Member,<br><br>\r\nAs requested, here are your {Url}  login details.<br><br>\r\nYour Username is: {Login}<br>\r\nYour Password is: {Password}<br><br>\r\nPlease click the link below to validate your email address. You MUST do this before you are able to login to the site.<br><br>\r\n<a href=\"{ConfirmLink}\">{ConfirmLink}</a><br><br>\r\nIf you have any questions or comments please send them to {SupportEmail}<br><br>\r\nAdministrator'),('EN',59,'<p>{ReceiverName}, </p>\r\n<p>{CompanyName}, </p>\r\n<p>{Url}, </p>\r\n<p>{SupportEmail}</p>');
/*!40000 ALTER TABLE `lang_mailtemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lang_pagetemplate`
--

DROP TABLE IF EXISTS `lang_pagetemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lang_pagetemplate` (
  `lang_id` char(3) NOT NULL DEFAULT '',
  `PageTemplate_ID` int(11) NOT NULL DEFAULT '0',
  `Body` mediumtext NOT NULL,
  PRIMARY KEY (`lang_id`,`PageTemplate_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lang_pagetemplate`
--

LOCK TABLES `lang_pagetemplate` WRITE;
/*!40000 ALTER TABLE `lang_pagetemplate` DISABLE KEYS */;
INSERT INTO `lang_pagetemplate` (`lang_id`, `PageTemplate_ID`, `Body`) VALUES ('EN',1,'<p><strong>$CONST_COMPANY MEMBER TERMS AND CONDITIONS</strong></p>\r\n\r\n<p>(YOU MUST BE AT LEAST 18 YEARS OLD TO REGISTER ON OR USE THE $CONST_COMPANY WEBSITE. ACCESS OR USE OF THIS SITE OR ITS CONTENTS BY ANY PERSON UNDER THE AGE OF 18 IS STRICTLY PROHIBITED.)<br />\r\n<br />\r\nPlease read this Member Terms and Conditions Agreement (the &quot;Agreement&quot;) carefully. The Agreement sets out the terms under which $CONST_COMPANY services (the &quot;Services&quot;) are provided to you by us ($CONST_COMPANY, whose registered office is at $CONST_ADDR1, $CONST_ADDR2, $CONST_ADDR3. $CONST_ADDR4) through the $CONST_URL website (the &quot;Site&quot;). By registering with $CONST_COMPANY, you become a member of the Service (a &quot;Member&quot;), and you agree to be bound by the terms and conditions of this Agreement (the &quot;Terms&quot;) for as long as you continue to be a Member. If you do not agree to the Terms, please do not register for the $CONST_COMPANY Service or otherwise access or use this Site.<br />\r\n<br />\r\nWe reserve the right at any time to:<br />\r\n<br />\r\n? Change the terms and conditions of this Agreement;<br />\r\n<br />\r\n? Change the Site, including eliminating or discontinuing any content on or feature of the Site; or<br />\r\n<br />\r\n? Change any fees or charges for using the Site.<br />\r\n<br />\r\nAny changes we make will be effective immediately upon notice, which we may provide by means including, without limitation, posting on the Site or email. Your use of the Site after such notice will be deemed acceptance of the changes. Be sure to review this Agreement periodically to ensure familiarity with the most current version. Upon our request, you agree to sign a non-electronic version of this Agreement.<br />\r\n<br />\r\nREGISTRATION. To become a Member you must register with us. When and if you register to become a Member, you agree to provide accurate, current and complete information about yourself as prompted by our registration form (&quot;Registration Data&quot;), and to maintain and update your information to keep it accurate, current and complete. You agree that we may rely on your Registration Data as accurate, current and complete. You acknowledge that if your Registration Data is untrue, inaccurate, not current or incomplete in any respect, we reserve the right to terminate this Agreement and your use of the Site.<br />\r\n<br />\r\nBy becoming a Member, you represent and warrant that you are at least 18 years old, which is the minimum required age to become a Member. However, we cannot guarantee that each Member is at least the required minimum age, neither do we accept responsibility or liability for any content, communication or other use or access of the Site by persons under the age of 18 in violation of these Terms.<br />\r\n<br />\r\nEither you or $CONST_COMPANY may terminate your membership at any time, for any reason, effective upon sending written notice to the other party. All membership fees paid are non-refundable. We reserve the right to immediately suspend or terminate your access to the Service, without notice, upon any breach of this Agreement by you that is brought to our attention.<br />\r\n<br />\r\nYour membership in the Service is for your sole, personal use. You may not authorise others to use your membership, and you may not assign or otherwise transfer your account to any other person or entity.<br />\r\n<br />\r\nUSERNAME AND PASSWORD. As part of the registration process, you will be asked to select a username. We may refuse to grant any username that impersonates someone else, is or may be illegal, is or may be protected by trademark or other proprietary rights law, is vulgar or otherwise offensive, or may cause confusion, as we determine in our sole discretion. You are responsible for the confidentiality and use of your username and password and agree not to transfer or resell your use of or access to the Site to any third party. YOU ARE SOLELY RESPONSIBLE FOR MAINTAINING THE CONFIDENTIALITY OF YOUR USERNAME AND PASSWORD AND FOR ANY AND ALL ACTIVITIES THAT ARE CONDUCTED THROUGH YOUR ACCOUNT.<br />\r\n<br />\r\nONLINE CONDUCT. As a Member, you agree that:<br />\r\n<br />\r\nYou are solely responsible for the content or information you publish or display (hereinafter, &quot;post&quot;) on the Service, or transmit to other Members.<br />\r\n<br />\r\nYou will not post on the Service, or transmit to other Members or employees, any defamatory, inaccurate, abusive, obscene, profane, offensive sexually oriented, threatening, harassing, racially offensive, or illegal material, or any material that infringes or violates another party&#39;s rights (including, but not limited to, intellectual property rights, and rights of privacy and publicity). Please notify us by writing to $CONST_COMPANY, $CONST_ADDR1, $CONST_ADDR2, $CONST_ADDR3. $CONST_ADDR4 or sending an email to $CONST_MAIL of any material contained in the Service that you believe infringes these rules.<br />\r\n<br />\r\nYou will use the Service in a manner consistent with any and all applicable laws and regulations. You will not include in your profile any telephone numbers, street addresses, last names, URLs, e-mail addresses, offensive anatomical or sexual references, or offensive sexually suggestive or connotative language, or any confidential information of any third person, and you will not post any photographs or other images containing nudity or such personal information. $CONST_COMPANY reserves the right, but has no obligation, to reject any profile or photograph or image that does not comply with these prohibitions.<br />\r\n<br />\r\nYou will not impersonate any person or entity.<br />\r\n<br />\r\nYou will not &quot;stalk&quot; or otherwise harass any person.<br />\r\n<br />\r\nYou will not engage in advertising to, or solicitation of, other Members to buy or sell any products or services through the Service. You will not transmit any chain letters, spam or junk email to other Members.<br />\r\n<br />\r\nYou will not express or imply that any statements you make are endorsed by us, without our specific prior written consent.<br />\r\n<br />\r\nYou will not harvest or collect personal information about other Members whether or not for commercial purposes, without their express consent.<br />\r\n<br />\r\nYou will not use any robot, spider, site search/retrieval application, or other manual or automatic device or process to retrieve, index, &quot;data mine&quot;, or in any way reproduce or circumvent the navigational structure or presentation of the Site or its contents.<br />\r\n<br />\r\nYou will not post, distribute or reproduce in any way any copyrighted material, trademarks, or other proprietary information without obtaining the prior consent of the owner of such proprietary rights.<br />\r\n<br />\r\nYou will not remove any copyright, trademark or other proprietary rights notices contained in the Site.<br />\r\n<br />\r\nYou will not interfere with or disrupt the Services or the Site or the servers or networks connected to the Services or the Site.<br />\r\n<br />\r\nYou will not post, e-mail or otherwise transmit any material that contains software viruses or any other computer code, files or programs designed to interrupt, destroy or limit the functionality of any computer software or hardware or telecommunications equipment. Please notify us by writing to $CONST_COMPANY, $CONST_ADDR1, $CONST_ADDR2, $CONST_ADDR3. $CONST_ADDR4 or sending an e-mail to $CONST_MAIL of any material contained in the Service that you believe infringes these rules.<br />\r\n<br />\r\nYou will not forge headers or otherwise manipulate identifiers in order to disguise the origin of any information transmitted through the Service.<br />\r\n<br />\r\nYou will not &quot;frame&quot; or &quot;mirror&quot; any part of the Site, without our prior written authorisation. You also shall not use metatags or code or other devices containing any reference to $CONST_URL or the Service or the Site in order to direct any person to any other website for any purpose.<br />\r\n<br />\r\nYou will not modify, adapt, sub-license, translate, sell, reverse engineer, decipher, de-compile or otherwise disassemble any portion of the Site or any software used on or for the Site or cause others to do so.<br />\r\n<br />\r\nYou are solely responsible for your interactions with other Members. $CONST_COMPANY reserves the right, but has no obligation, to monitor disputes between you and other Members.<br />\r\n<br />\r\nINDEMNITY BY MEMBER. You agree to indemnify, defend and hold us, our officers, directors, employees, agents and representatives harmless from and against any and all claims, damages, losses, liabilities, costs (including reasonable attorneys&#39; fees) or other expenses that arise directly or indirectly out of or from (i) your breach of this Agreement; (ii) any allegation that any materials that you submit to us or transmit to the Site infringe or otherwise violate the copyright, trademark, trade secret or other intellectual property or other rights of any third party; and/or (iii) your activities in connection with the Site. This indemnity shall be applicable without regard to the negligence of any party, including any indemnified person.<br />\r\n<br />\r\nONLINE CONTENT. Opinions, advice, statements, offers or other information or content made available through the Service are those of their respective Member-author and not of $CONST_COMPANY, and should not necessarily be relied upon. Such Members are solely responsible for such content. $CONST_COMPANY does not guarantee the accuracy, completeness or usefulness of any information on the Service and neither adopts nor endorses nor is responsible for the accuracy or reliability of any opinion, advice or statement made. Under no circumstances will $CONST_COMPANY be responsible for any loss or damage resulting from anyone&#39;s reliance on information or other content posted on the Service or transmitted to Members.<br />\r\n<br />\r\nThe Site may contain links to other Internet websites or resources. We neither control nor endorse such other websites, nor have we reviewed any content that appears on such other websites. You acknowledge and agree that we shall not be held responsible for the legality, accuracy or inappropriate nature of any content, advertising, products, services or information located on or through any other websites or for the operation or policies of any such websites, nor for any loss or damages caused or alleged to have been caused by the use of or reliance on any such websites or such content or other information.<br />\r\n<br />\r\nWARNING - PLEASE READ: It is possible that other Members or users (including unauthorised users, or &quot;hackers&quot;) may post or transmit offensive or obscene materials on the Service and that you may be involuntarily exposed to such offensive and obscene materials. It also is possible for others to obtain personal information about you due to your use of the Service, and that the recipient may use such information to harass or injure you. $CONST_COMPANY is not responsible for the use of any personal information that you may choose to disclose on the Service. Please carefully select the type of information that you post on the Service or release to others.<br />\r\n<br />\r\n$CONST_COMPANY reserves the right, but has no obligation, to monitor the materials posted in any area of the Service. $CONST_COMPANY shall have the right but not the obligation to remove any such material that violates, or is alleged to violate, the law or this Agreement. Notwithstanding this right of $CONST_COMPANY, you remain solely responsible for the content of the materials you post in any area of the Service and your private email messages. E-mails sent between you and other Members that are not readily accessible to the general public will be treated as private by $CONST_COMPANY to the extent required by applicable law and pursuant to the commercially reasonable efforts of $CONST_COMPANY.<br />\r\n<br />\r\nWe do not exclude any liability for death or personal injury due to our negligence.<br />\r\n<br />\r\nPROPRIETARY RIGHTS. $CONST_COMPANY owns and retains other proprietary rights in the Services and the Site. The Services and the Site contain the copyrighted material, trademarks and other proprietary information and software of $CONST_COMPANY and its licensers. In addition, other Members may post copyrighted information, which has copyright protection whether or not it is identified as copyrighted. Except for that information which is in the public domain or for which you have been given permission, you will not copy, modify, publish, transmit, distribute, perform, display or sell any such proprietary information. By posting information or content to any area of $CONST_URL, you automatically grant, and you represent and warrant that you have the right to grant, to $CONST_COMPANY and other Members an irrevocable, perpetual, non-exclusive, fully-paid, worldwide license to use, copy, perform, display and distribute such information and content and to prepare derivative works of, or incorporate into other works, such information and content, and to grant and authorise sub-licenses of the foregoing.<br />\r\n<br />\r\nINFORMATION SUPPLIED BY MEMBER. We will respect your personal information and undertake to comply with all applicable data protection legislation in the UK and other jurisdictions in which we offer the Service, subject to the Privacy Policy of $CONST_COMPANY.<br />\r\n<br />\r\nThe personal information (including sensitive personal information) you provide to us will be stored on computer. You consent to us using this information to build up a profile of interests, preferences and browsing patterns and to allow you to participate in the $CONST_URL Service. All Members also agree to uphold and maintain our Privacy Policy and to the terms and conditions thereof. You may read a full description of our Privacy Policy at $CONST_URL/privacy.php.<br />\r\n<br />\r\nDISCLAIMER OF WARRANTY. $CONST_COMPANY PROVIDES THE SERVICE AND THE SITE ON AN &quot;AS IS&quot; BASIS AND GRANTS NO WARRANTIES OF ANY KIND, EXPRESS, IMPLIED OR STATUTORY, IN ANY COMMUNICATION WITH $CONST_COMPANY OR ITS REPRESENTATIVES, OR OTHERWISE WITH RESPECT TO THE SERVICE OR THE SITE. $CONST_COMPANY SPECIFICALLY DISCLAIMS ANY IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR NONINFRINGEMENT. $CONST_COMPANY DOES NOT WARRANT THAT YOUR USE OF THE SERVICE OR THE SITE WILL BE SECURE, UNINTERRUPTED, ALWAYS AVAILABLE OR ERROR-FREE, OR WILL MEET YOUR REQUIREMENTS, OR THAT ANY DEFECTS IN THE SERVICE OR THE SITE WILL BE CORRECTED. $CONST_COMPANY DISCLAIMS LIABILITY FOR, AND NO WARRANTY IS MADE WITH RESPECT TO, TELEPHONE OR OTHER SERVICE, INCLUDING COVERAGE, RANGE, OR ANY INTERRUPTION IN TELEPHONE OR OTHER SERVICE.<br />\r\n<br />\r\nLIMITATION OF LIABILITY. IN NO EVENT WILL $CONST_COMPANY BE LIABLE (i) TO YOU FOR ANY INCIDENTAL, CONSEQUENTIAL, OR INDIRECT DAMAGES (INCLUDING, BUT NOT LIMITED TO, DAMAGES FOR LOSS OF DATA, LOSS OF PROGRAMS, COST OF PROCUREMENT OF SUBSTITUTE SERVICES OR SERVICE INTERRUPTIONS) ARISING OUT OF THE USE OF OR INABILITY TO USE THE SERVICE OR THE SITE, EVEN IF $CONST_COMPANY OR ITS AGENTS OR REPRESENTATIVES KNOW OR HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES, OR (ii) TO ANY PERSON OTHER THAN YOU. NOTWITHSTANDING ANY CONTRARY PROVISION HEREIN BUT SUBJECT TO THE FOREGOING LIMITATION ON LIABILITY, IN ALL EVENTS OUR LIABILITY TO YOU FOR ANY CAUSE WHATSOEVER, AND REGARDLESS OF THE FORM OF THE ACTION, WILL AT ALL TIMES BE LIMITED TO THE AMOUNT PAID, IF ANY, BY YOU TO $CONST_COMPANY FOR THE SERVICE DURING THE TERM OF MEMBERSHIP.<br />\r\n<br />\r\nIn addition, $CONST_COMPANY disclaims all liability, regardless of the form of action, for the acts or omissions of other Members or users (including unauthorised users, or &quot;hackers&quot;) of the Service.<br />\r\n<br />\r\nCertain jurisdictions limit the applicability of warranty disclaimers and limitations of liability so the above disclaimers of warranty and limitations of liability may not apply to you.<br />\r\n<br />\r\nWe do not exclude any liability for death or personal injury due to our negligence.<br />\r\n<br />\r\nCOPYRIGHT POLICY. We respect the intellectual property of others, and we ask our Members to do the same. If you believe that a copy of your work is available on the Service without your consent or that a copyright infringement has otherwise occurred, please supply us with the following information:<br />\r\n<br />\r\n? A description of the copyrighted work that you claim has been infringed;<br />\r\n<br />\r\n? Details of where the infringing material is located on the Site;<br />\r\n<br />\r\n? Your address, telephone number and e-mail address;<br />\r\n<br />\r\n? A statement by you that you believe in good faith that the use of the work on the Site is not authorised by the copyright owner or any person entitled to act on their behalf or by law; and<br />\r\n<br />\r\n? An affidavit executed by you that the information you provide concerning the copyright infringed is accurate and that you are the copyright owner authorised to act on their behalf.<br />\r\n<br />\r\nPlease deliver this information to: $CONST_COMPANY. $CONST_ADDR1, $CONST_ADDR2, $CONST_ADDR3. $CONST_ADDR4.<br />\r\n<br />\r\nCOMPLAINTS. To resolve a complaint regarding the Service or the Site, you should contact $CONST_COMPANY Customer Support at $CONST_SUPPMAIL<br />\r\n<br />\r\nGENERAL PROVISIONS. This Agreement with you, set out in these Member Terms and Conditions, is governed by English law and you and we submit to the non-exclusive jurisdiction of the English Courts in the event of any dispute regarding these Terms or the Service or the Site or any matter related thereto. This Agreement shall not be governed by the United Nations Convention on Contracts for the International Sale of Goods, the application of which is hereby expressly excluded.<br />\r\n<br />\r\nThis Agreement, accepted by you upon registering for the Service, contains the entire agreement between you and $CONST_COMPANY regarding the Service and the Site, including the $CONST_COMPANY Privacy Policy. In the event of any conflict between the Privacy Policy and this Agreement, this Agreement shall control. Unless otherwise explicitly stated, the Terms will survive termination of your membership to the Service. This agreement shall terminate immediately and without notice if you breach any of the Terms, subject to the survival of all rights and reservations of $CONST_COMPANY. If any provision of this Agreement is held invalid, the remainder of this Agreement shall continue in full force and effect.<br />\r\n<br />\r\nThe Member certifies that the Member has read and agrees to be bound by these Member Terms and Conditions.<br />\r\n<br />\r\nRefunds for paid membership are given at the discretion of $CONST_COMPANY. Should you have any questions regarding your payment, please direct them in the first instance to the site administrator (details on the contact page).</p>\r\n'),('EN',8,'<p>$CONST_COMPANY was formed in 1999 in response to the increasing demand for Internet based personals. The Internet as a medium lends itself well to this service due to it&#39;s wide availability and the degree of anonymity for it&#39;s users.</p>\r\n\r\n<p>$CONST_COMPANY aims to meet the need for a site that has higher standards in terms of the content. It is our aim to avoid the purely sexual profiles by both professional and personal advertisers without being judgmental about a persons lifestyle. We hope that this will increase the chances of you contacting genuine advertisers rather than chasing advertisers who are only chasing your money!</p>\r\n\r\n<p>We believe that this site provides a fresh and engaging forum for our users and we are committed to offering the best value for money for the service. The original site was a free site financed through banner advertising, but the collapse in the value of this market and the fact that we could not develop the site to target a larger audience (due to the increasing cost of advertising) means that we have have been forced to switch to a fee based service.</p>\r\n\r\n<p>We hope that you will enjoy this site. Should you have any questions or comments then please feel free to contact us at $CONST_MAIL</p>\r\n'),('EN',3,'$CONST_COMPANY has created this privacy statement in order to\r\n            demonstrate our firm commitment to your privacy. The following discloses\r\n            the information gathering and dissemination practices for this Web\r\n            site: $CONST_URL<br>\r\n            <br>\r\n            <b>\r\n            Information Automatically Logged</b><br>\r\n            <br>\r\n            We use your IP address to gather broad demographic information. IP\r\n            address are generally dynamically allocated (different every time\r\n            you log on). We use this information to get a general feeling of how\r\n            many people visit the site and from where they are referred.&nbsp;This\r\n            is done by our web host using standard logging technology.<br>\r\n            <br>\r\n            <b>\r\n            Cookies<br>\r\n            </b>\r\n            <br>\r\n            Our Site uses cookies to save your password so you don\'t have to\r\n            re-enter it each time you visit a page on the site. The cookie is\r\n            session based (sits in the header information sent to the browser) and is destroyed after you close your browser. The\r\n            cookie neither reads nor writes anything to or from your computer\r\n            but cookies must be enabled to use the site as a member.&nbsp;<br>\r\n            <br>\r\n            <b>\r\n            Registration Forms</b><br>\r\n            <br>\r\n            Our site\'s registration form requires members to give us contact\r\n            information (like their name and email address).</p>\r\n            <p>\r\n            Contact information from the registration forms is used to create a\r\n            unique record to identify the user to the system and for sending\r\n            information to the member but cannot and is not used for any other\r\n            purpose.<br>\r\n            <br>\r\n            Members may opt-out of receiving future mailings; see the\r\n            choice/opt-out section below.<br>\r\n            <br>\r\n            Demographic and profile data is also collected at our site. This is\r\n            used for your profiles and is made available to other members for the\r\n            purpose of their contacting you in the event that your profile\r\n            attracts their favorable attention.<br>\r\n            <br>\r\n            <b>\r\n            External Links<br>\r\n            </b>\r\n            <br>\r\n            This site contains links to other sites. $CONST_COMPANY is not\r\n            responsible for the privacy practices or the content of such Web\r\n            sites.<br>\r\n            <br>\r\n            <b>\r\n            Choice/Opt-Out</b><br>\r\n            <br>\r\n            Our site provides members the opportunity to opt-out of receiving\r\n            promotional/marketing information from us.<br>\r\n            <br>\r\n            Click the My Information button after logging in and amend/delete your registration.\r\n            Note: You may still receive important information regarding the\r\n            operation of the site from time to time even if you opt out of the\r\n            newsletter. This is a condition of being a member.<br>\r\n            <br>\r\n            <b>\r\n            Data Quality/Access<br>\r\n            </b>\r\n            <br>\r\n            This site gives members the following options for changing and\r\n            modifying information previously provided: click the\r\n            profile button after logging in and amend/delete your profile.<br>\r\n            <br>\r\n            <b>\r\n            Contacting the Web Site</b><br>\r\n            <br>\r\n            If you have any questions about this privacy statement, the\r\n            practices of\r\n            this site, or your dealings with this Web site, you can contact: \r\n        $CONST_AFFMAIL'),('EN',4,'<b>HELP!\r\n        What should I write in my profile?</b>\r\n        <p>So you\'ve decided to try online personals. Well\r\n        you\'ve come to the right place. Here are tips for writing attention\r\n        getting profiles.</p>\r\n        <p>Most online dating services ask standard\r\n        questions about yourself. It\'s great to get the particulars of yourself\r\n        out of the way, but the key to a good personal ad is what you write in\r\n        the description &amp; headline fields. Think of your personal ad as an\r\n        advertisement for yourself. The goal is to draw people in with your\r\n        headline and keep the reader\'s attention by writing an interesting\r\n        description of yourself.</p>\r\n        <p><b>Your Headline</b></p>\r\n        <p>The headline for your profile needs to be catchy\r\n        enough to get someone\'s attention in just a few words. You can easily do\r\n        this by using keywords that best sum up your personality. If you\'re\r\n        funny it should show in your headline. There\'s no need to include\r\n        details about yourself such as your age since that information is listed\r\n        along with your headline. It\'s also important <b>not</b> to say anything\r\n        that makes you sound desperate like in these examples:</p>\r\n        <p>Lonely Guy/Girl<br>\r\n        Sick of being single<br>\r\n        Desperate for love<br>\r\n        Tired of Looking</p>\r\n        <p>Remember, you\'re essentially trying to sell\r\n        yourself and your positive qualities. So avoid negative statements in\r\n        your headline and have fun with it! It\'s also a good idea to include\r\n        phrases like &quot;click here&quot; or ask a question like &quot;Are you\r\n        a movie fanatic?&quot; When you ask someone to do something or to answer\r\n        a question you\'re more likely to get results.</p>\r\n        <p><b>Your Description</b></p>\r\n        <p>Now let\'s talk about the Description for your\r\n        ad. This is your chance to say in your own words what you\'re about. It\'s\r\n        not enough to answer a bunch of generic questions. So GO FOR IT. Let\r\n        your personality show and don\'t hold back. Keep in mind there are\r\n        hundreds of profiles just like yours that say the same things. So say\r\n        something to stand out from the crowd and make the reader curious to\r\n        find out more about you. Talk about things that are interesting to you\r\n        and stay away from clich&#1081;s. And please, please avoid making up things\r\n        about yourself. You\'re only wasting your time and someone else\'s by\r\n        being dishonest. I suggest writing enough to convey what you\'re about\r\n        but not revealing everything about yourself initially. A good rule of\r\n        thumb is to keep your description within 200-300 words.</p>\r\n\r\n        <p>Good luck!!'),('EN',5,'Affiliates Terms and Conditions\r\nThis agreement describes the entire terms and conditions for participation in the $CONST_COMPANY Affiliate Program.\r\nIn this agreement, the term \"Participant\" refers to you (the applicant), and \"sponsoring Web site\" refers to the Web site from which you will link the $CONST_COMPANY site. Wherever the agreement refers to \"you\" or \"your\", it means \"the Participant\"; \"we\" or \"our\" refers to the Net-Singes site. A \"Registered User\" is defined as a consumer who clicks the Logo Box (banner or text link) on your Web page, is connected to the $CONST_COMPANY site, completes the registration questionnaire. A \"Subscribed User\" is defined as a consumer who subscribes as a paying member, and is a premium member of our singles user database.\r\nPrivacy of the Associate Account: In order to join the Affiliate Program, you will need to provide certain information. All information will be held in strict confidence and will not be provided to any third parties except as required by law.\r\n$CONST_COMPANY Sites Referral Fee Percentage: You will earn 50% of gross revenue as a referral fee from new Premium Member subscriptions from members that have been referred via your affiliate link(s). Gross revenue only includes cash collected via valid credit card, cheque or money order or other means and does not include sales tax charges. In the event of the subscriber renewing his/her premium membership you will earn a further 25% for each renewal of the gross revenue of this transaction whilst your affiliate account is active.\r\nReferral Fee Payment: $CONST_COMPANY will send a referral fee cheque for the applicable referral fee (less any taxes required to be withheld under applicable law) to the Participant within approximately 15 days after the end of each calendar month if the total amount of the referral fees is equal to or greater than $30.00. If the amount owed you is less than $30.00 then your balance will be carried forward to the next month or until the total sum of your referrals is equal to or greater than $30.00 or upon the termination, by you or $CONST_COMPANY, in the program. Payments will be in GBP (&#1032;UK), payable at the rate of exchange applicable at the date of each transaction.\r\nRefunds and Charge-backs: All payments are subject to an 8 week lead time to insure against refunds and charge-backs. This is a stipulation of our payment processing company.\r\nSubscription Payment Processing: $CONST_COMPANY will be solely responsible for processing every subscription order placed by a customer. Subscription orders will be accepted via the $CONST_COMPANY online ordering process which utilises WorldPay payment servers. Payment processing, renewal payment processing, cancellations and refund processing, and related customer service are all the responsibility of $CONST_COMPANY.\r\nAll of the rules, operating procedures and policies of $CONST_COMPANY  regarding customer subscriptions will apply to all subscription orders we via our affiliates. $CONST_COMPANY  reserves the right to reject any subscription order that does not comply with our rules, operating procedures and policies.\r\nTracking of Subscription Sales: $CONST_COMPANY will be solely responsible for tracking subscription sales. Statements of subscription sales activity are provided to the Participant through the affiliate centre pages. To protect $CONST_COMPANY  customer privacy, the names or other personal information about specific customers will not be provided to the Participant.\r\nTime Limitations For Depositing Associate Cheques: Participants are required to cash or deposit any cheque from $CONST_COMPANY within ninety (90) days of the date the cheque was issued. $CONST_COMPANY is not required to re-issue payment for associate cheques older than ninety (90) days.\r\nLost, Stolen, Or Destroyed Cheques: It is the responsibility of the associate to request in writing a reissue of lost, stolen or destroyed cheques within the ninety (90) day period outlined above. The request must include as much information about the dates and earnings in question as possible, including the Affiliate ID of the account and to whom the cheque was issued. Email requests are sufficient. Reissued cheques are held to the same ninety (90) day expiration rules. $CONST_COMPANY may receive returned cheques because the mailing address provided by the associate is incorrect or insufficient. In these cases, we will contact the associate upon receipt of the returned cheque. It is the responsibility of the associate to respond and correct the information as necessary. After thirty (30) days without a reply from the associate regarding the issue, the cheque will become void and $CONST_COMPANY will not be required to re-issue payment and all payments will become null and void, and the associate account will be terminated.\r\nCopyrighted material: As the Participant, you are solely responsible for ensuring that your logo and preamble text obey all applicable copyright and other laws. You must have express permission to use another party\'s copyrighted material. $CONST_COMPANY will not be responsible if you use another party\'s copyrighted material in violation of the law.\r\n$CONST_COMPANY policy applies to all orders: Every customer who buys a subscription through this program is deemed to be a customer of $CONST_COMPANY. The Participant does not have the authority to make or accept any offer on behalf of $CONST_COMPANY. All $CONST_COMPANY policies regarding customer orders, including pricing and problem resolution, will apply to these customers. $CONST_COMPANY is not responsible for any representations made by the Participant which contradict our policies.\r\nPrices and availability: The price charged for subscriptions sold under this program will be determined by $CONST_COMPANY according to our own pricing policies. Prices may vary from time to time. $CONST_COMPANY  policies will always determine the price paid by the customer.\r\nSites that Do Not Qualify for the $CONST_COMPANY Affiliates Program include:\r\n? Sites that promote sexually explicit material with minors (under 18 years of age)\r\n? Sites that promote violence\r\n? Sites that promote discrimination based on race, sex, religion, national origin, physical disability, sexual orientation or age\r\n? Sites that promote illegal activities\r\nSpamming Policy: $CONST_COMPANY in no way participates in mass unsolicited emailing (i.e. spamming), and all Participants are expected to adhere to this policy as well. Violation of this policy will result in the termination of this contract and immediate dismissal from the $CONST_COMPANY Affiliate Program.\r\nWeb Site service interruption: $CONST_COMPANY  will make every effort to keep its Web site operational. However, certain technical difficulties may, from time to time, result in temporary service interruptions. The Participant agrees not to \r\n$CONST_COMPANY liable for any of the consequences of such interruptions.\r\nTerm of the Agreement: The Participant may receive referral fee payments on orders that are placed during the term of this agreement. This term will begin on the date that your application is approved by $CONST_COMPANY, and shall end when cancelled by either party as provided below. Referral Fees earned through the date of expiration or cancellation of this agreement will remain payable only if the subscriptions are not refunded. Payment of the final referral fee payment to the Participant may be withheld for a reasonable time in order to ensure that the correct amount is paid.\r\nThe agreement may be modified: $CONST_COMPANY reserves the right to change any of the terms and conditions in this agreement, at any time and at its sole discretion, by posting a new agreement on our Web site.\r\nWithout limiting the generality of the foregoing, referral fee schedules, and all other provisions of this agreement are subject to change without notice other than posting such information on our Web site.\r\nCancellation of this agreement: Either $CONST_COMPANY or the Participant, acting in their sole discretion, may choose to cancel this agreement at any time by written notice of cancellation to the other.\r\nWarranty Disclaimer: $CONST_COMPANY makes no warranties, representations or conditions with regard to the program or, except as expressly set forth $CONST_COMPANY then current sales policies, any subscriptions sold thereunder, whether express or implied, arising by law or otherwise, including without limitation any implied warranty of merchantability or fitness for a particular purpose or non-infringement or any implied warranty arising out of course of performance, course of dealing or usage of trade.\r\nLimitation of Damages: $CONST_COMPANY shall have no liability for any indirect, incidental, special or consequential damages or any loss of revenue or profits arising under or with respect to this agreement or the program, even if $CONST_COMPANY has been advised of the possibility of such damages. Further, $CONST_COMPANY aggregates liability arising under or with respect to this agreement or the program shall in no event exceed the total referral fees paid or payable by $CONST_COMPANY to Participant under this agreement.\r\nMiscellaneous: Participant and $CONST_COMPANY are independent contractors and nothing in this agreement is intended to or will create any form of partnership, joint venture, agency, franchise, sales representative or employment relationship between the parties. Participant shall not assign this Agreement, by operation of law or otherwise, without the prior written consent of $CONST_COMPANY\r\n. Subject to the foregoing restriction, this agreement is binding upon, insures to the benefit of and is enforceable by the parties and their respective successors and assigns.\r\nGoverning Law: This agreement shall be governed by the laws of the United Kingdom of Great Britain and Northern Ireland without reference to its choice of law principles.\r\n'),('EN',6,'Welcome to $CONST_COMPANY, we\r\n            hope that you enjoy using the site and that you check back regularly\r\n            for updates. Below is a guide to help you use the system more\r\n            effectively.\r\n            <p><strong>Searching - </strong>There\r\n            are several criteria upon which you can search. These include the\r\n            advertisers age, country of residence, body type, sex and whether\r\n            the profile includes a photo. If you are a male seeking a female then\r\n            search for \'Women seeking Men\'. If you wish to see only profiles with\r\n            photos the tick the \'Photo Ads Only\' box. You can quickly move through the regions\r\n            box by pressing the \'-\' (dash) on your keyboard.</p>\r\n            <p>If you wish to find an individual\r\n            member, you may type their username directly into the \'Username\' text\r\n            box and click search.</p>\r\n            <p><strong>Register - </strong>Basic registration\r\n            is FREE. You need to register in order to place a profile as your registered name is what identifies you in the\r\n            system and allows us to find your profile for you to edit through the\r\n            \'My Information\' option. <strong>Tip:</strong> Enter your e-mail address\r\n            carefully as your password is automatically sent to this address. If\r\n            you make a mistake, you will not receive your password.</p>\r\n            <p><strong>Login - </strong>As a\r\n            member, you may login either at the entry screen. <strong>Tip: </strong>If you forget your&nbsp;\r\n            username or password then you can have it resent by clicking on the \'resend\r\n            password\' link under the login box. Enter the e-mail address you registered\r\n            with and we will send you the details you require.</p>\r\n            <p><strong>Add Profile - </strong>Profiles\r\n            are FREE to place and are much more fun than simply registering. Our\r\n            studies found that if you place a profile you will be 5 more times likely to\r\n            receive a response than if you respond to someone else\'s\r\n            profile. You\r\n            can change or delete your profile at any time through the \'My\r\n            Information\'\r\n            option. <strong>Tip: </strong>Try to keep the size of your photo\r\n            smaller than 20k or you may have trouble uploading it (depending on your internet connection).\r\n            Use an image editor such as Paint Shop Pro to reduce the size of your image by\r\n            cutting out unnecessary \'white space\' and compressing the image.</p>\r\n            \r\n        <p><strong>My Information - </strong>This section lets you delete or edit \r\n          your profile or change your registration details (if for example you \r\n          change your main e-mail address). You can also de-register from here \r\n          and you will no longer receive e-mails from us telling you of updates.&nbsp;</p>\r\n        <p><strong>Chat - </strong>The chatroom is for non-trial members to communicate \r\n          on either a personal or community level Click the chat room button on \r\n          the left-hand menu and the chat room you will automatically be logged \r\n          into the chat room using your username. Simply enter your message in \r\n          the blue box and press send to display your message to other users. \r\n          If you prefer to communicate on a one-to-one basis, double-click the \r\n          username in the list on the right to display a private chat window that \r\n          can only be seen by you and the person you are communicating with.</p>\r\n        <p><strong>Instant Messenger - </strong>The Instant messenger gives you \r\n          a private chat facility for other members that are logged in to the \r\n          Instant Messenger. When launched, it will display a list of members \r\n          online. Select the member you wish to message by clicking their username. \r\n          This action will display a message box for you to enter a message. Click \r\n          an emoticon to enter it at any point in your message and press send \r\n          to message the user. Although you can communicate with several people \r\n          simultaneously, only the member you are messaging will see your message.</p>\r\n            <p><strong>If you feel that something\r\n            needs to be added to this help page let us know.</strong>\r\n'),('EN',7,'<p><strong><a href=\"CONST_LINK_ROOT/affiliates/\">Affiliate Login &gt;&gt;</a></strong></p>\r\n\r\n<p><img alt=\"\" src=\"CONST_IMAGE_ROOT/CONST_IMAGE_LANG/money.jpg\" style=\"float:right; height:309px; width:209px\" />Thank you for showing interest in our affiliate program. Below is information about our affiliate program and how it works. If you have any further questions, please mail us at $CONST_AFFMAIL</p>\r\n\r\n<p><strong>How does the program work?</strong></p>\r\n\r\n<p>Once your application is accepted, you will be sent a confirmation e-mail. This mail will include the URL to the affiliate center plus your unique tracking number and login/password. You can retrieve the code for banners or text links from the affiliate center. Placing this code into a web page on your own site will display a banner on the page. This banner includes a unique tracking number (your affiliate number) that is sent to our site if a user clicks on the banner.</p>\r\n\r\n<p>If a user free registers on our site, your affiliate number is associated with the registration in our database. Therefore there is a permanent record of who referred the user.</p>\r\n\r\n<p><strong>How do I make money?</strong></p>\r\n\r\n<p>Every free member you send to our site and that subsequently goes on to become a paid subscriber will earn you cash. Unlike many affiliate programs there is no time limit in which the user can subscribe and still earn you cash!! And not only that but every time that user renews you will continue to earn MORE!</p>\r\n\r\n<p><strong>How much money can I make?</strong></p>\r\n\r\n<p>Well that is really up to you. Where you place the banner or the link will affect the number of users sent to our site and of course the more users you send the more subscribers there are likely to be. Our rates are as follows:</p>\r\n\r\n<p>Initial Referral (i.e. the first time the user subscribes to paid membership):</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" style=\"width:491px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Subscription</strong></td>\r\n			<td><strong>Price</strong></td>\r\n			<td><strong>Commission</strong></td>\r\n			<td><strong>You earn</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>One Month</td>\r\n			<td>$CONST_SYMBOL %s</td>\r\n			<td>%s%%</td>\r\n			<td>$CONST_SYMBOL %s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Three Months</td>\r\n			<td>$CONST_SYMBOL %s</td>\r\n			<td>%s%%</td>\r\n			<td>$CONST_SYMBOL %s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Six Months</td>\r\n			<td>$CONST_SYMBOL %s</td>\r\n			<td>%s%%</td>\r\n			<td>$CONST_SYMBOL %s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Twelve Months</td>\r\n			<td>$CONST_SYMBOL %s</td>\r\n			<td>%s%%</td>\r\n			<td>$CONST_SYMBOL %s</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Subsequent Referral (i.e. every subscription paid by the same user after the first):</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" style=\"width:491px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Subscription</strong></td>\r\n			<td><strong>Price</strong></td>\r\n			<td><strong>Commission</strong></td>\r\n			<td><strong>You earn</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>One Month</td>\r\n			<td>$CONST_SYMBOL %s</td>\r\n			<td>%s%%</td>\r\n			<td>$CONST_SYMBOL %s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Three Months</td>\r\n			<td>$CONST_SYMBOL %s</td>\r\n			<td>%s%%</td>\r\n			<td>$CONST_SYMBOL %s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Six Months</td>\r\n			<td>$CONST_SYMBOL %s</td>\r\n			<td>%s%%</td>\r\n			<td>$CONST_SYMBOL %s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Twelve Months</td>\r\n			<td>$CONST_SYMBOL %s</td>\r\n			<td>%s%%</td>\r\n			<td>$CONST_SYMBOL %s</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Note: Commissions are subject to price variations on the site due to special promotions etc. Therefore if the price is reduced or increased for any reason, then the commission will also reflect that change.</p>\r\n\r\n<p><strong>How and when do I receive the commission?</strong></p>\r\n\r\n<p>Commissions will be paid monthly and you will receive all commission on payments that have been cleared at least 8 weeks. We only pay after at least 8 weeks due to the risk of charge-backs should the customer&#39;s card have been stolen or misused in some way.</p>\r\n\r\n<p>You will receive your commission through the post by cheque in &#1032;&#39;s (GBP) payable at the rate of exchange applicable at the time of the transaction. Affiliates are responsible for charges relating to currency conversion that their bank may charge. Affiliates that show a high referral rate and earn more than 500 USD per quarter may negotiate to be paid by bank transfer in US Dollars.</p>\r\n\r\n<p>Note: There is a 30 USD minimum required to be accrued before payment can be made. If the account does not accrue this minimum during the month, the payment will be held over until the following month and so on until the condition is satisfied.</p>\r\n\r\n<p><a href=\"CONST_LINK_ROOT/affiliates.php\">Apply Now</a> | <a href=\"CONST_LINK_ROOT/index.php\">No Thanks</a></p>\r\n'),('RU',8,'test ru ');
/*!40000 ALTER TABLE `lang_pagetemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `langfile`
--

DROP TABLE IF EXISTS `langfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `langfile` (
  `lang_id` char(3) NOT NULL DEFAULT '',
  `lang_name` varchar(40) DEFAULT NULL,
  `lang_filename` varchar(50) DEFAULT NULL,
  `lang_imagename` varchar(50) NOT NULL DEFAULT '',
  `lang_active` char(1) NOT NULL DEFAULT '0',
  `lang_charset` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`lang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `langfile`
--

LOCK TABLES `langfile` WRITE;
/*!40000 ALTER TABLE `langfile` DISABLE KEYS */;
INSERT INTO `langfile` (`lang_id`, `lang_name`, `lang_filename`, `lang_imagename`, `lang_active`, `lang_charset`) VALUES ('EN','English','english','gb.png','1','windows-1252');
/*!40000 ALTER TABLE `langfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_queue`
--

DROP TABLE IF EXISTS `mail_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_queue` (
  `MailQueue_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(255) NOT NULL DEFAULT '',
  `From` varchar(255) NOT NULL DEFAULT '',
  `Subject` varchar(255) NOT NULL DEFAULT '',
  `Body` mediumtext NOT NULL,
  `Type` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`MailQueue_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_queue`
--

LOCK TABLES `mail_queue` WRITE;
/*!40000 ALTER TABLE `mail_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_queue_stat`
--

DROP TABLE IF EXISTS `mail_queue_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_queue_stat` (
  `MailQueueStat_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Size` int(11) NOT NULL DEFAULT '0',
  `startTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Errors` mediumtext NOT NULL,
  PRIMARY KEY (`MailQueueStat_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=416 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_queue_stat`
--

LOCK TABLES `mail_queue_stat` WRITE;
/*!40000 ALTER TABLE `mail_queue_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_queue_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailtemplate`
--

DROP TABLE IF EXISTS `mailtemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailtemplate` (
  `MailTemplate_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL DEFAULT '',
  `Description` varchar(255) NOT NULL DEFAULT '',
  `Params` mediumtext NOT NULL,
  `Type` enum('text/html','text/plain') NOT NULL DEFAULT 'text/html',
  PRIMARY KEY (`MailTemplate_ID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailtemplate`
--

LOCK TABLES `mailtemplate` WRITE;
/*!40000 ALTER TABLE `mailtemplate` DISABLE KEYS */;
INSERT INTO `mailtemplate` (`MailTemplate_ID`, `Name`, `Description`, `Params`, `Type`) VALUES (1,'Flirt_Mail','DB_MTEMPLATE_FLIRT_MAIL','ReceiverName;CompanyName;SenderName;FlirtMessage;ProfileLink;ImagePath;','text/html'),(27,'You_Have_Got_A_Mail','DB_MTEMPLATE_YOU_HAVE_GOT_A_MAIL','ReceiverName;SenderName;CompanyName;Url;SupportEmail;','text/plain'),(2,'Flirt_Message','DB_MTEMPLATE_FLIRT_MESSAGE','ReceiverName;CompanyName;SenderName;FlirtMessage;ProfileLink;ImagePath;','text/html'),(28,'Welcome_Mail_Activate','DB_MTEMPLATE_WELCOME_MAIL_ACTIVATE','UserName;Url;CompanyName;ConfirmUrl;SupportEmail;Password;','text/html'),(29,'Welcome_Mail','DB_MTEMPLATE_WELCOME_MAIL','UserName;Url;CompanyName;ConfirmUrl;SupportEmail;Password;','text/html'),(30,'Approve_Mail','DB_MTEMPLATE_APPROVE_MAIL','ReceiverName;CompanyName;Url;SupportEmail;','text/plain'),(31,'Reject_Mail','DB_MTEMPLATE_REJECT_MAIL','ReceiverName;CompanyName;Url;SupportEmail;Reason; ','text/plain'),(32,'Event_Booked_Email','DB_MTEMPLATE_EVENT_BOOKED_EMAIL','UserName;CompanyName;SupportEmail;EventName;EventPrice;EventDate;EventTime;EventAddress;Url;','text/plain'),(33,'SD_Cancel_Ticket','DB_MTEMPLATE_SD_CANCEL_TICKET','ReceiverName;TicketNumber;EventName;SenderName;','text/html'),(3,'Tip_A_Friend','DB_MTEMPLATE_TIP_A_FRIEND','ProfileUrl;CompanyName;SiteUrl;Message;','text/html'),(4,'Tell_A_Friend_Member','DB_MTEMPLATE_TELL_A_FRIEND_MEMBER','CompanyName;SiteUrl;Message;','text/html'),(5,'Tell_A_Friend_Guest','DB_MTEMPLATE_TELL_A_FRIEND_GUEST','CompanyName;SiteUrl;Message;','text/html'),(34,'Approve_Blog','DB_MTEMPLATE_APPROVE_BLOG','ReceiverName;CompanyName;Url;SupportEmail;','text/plain'),(35,'Reject_Blog','DB_MTEMPLATE_REJECT_BLOG','ReceiverName;CompanyName;Url;SupportEmail;Reason; ','text/plain'),(36,'Approve_Forum','DB_MTEMPLATE_APPROVE_FORUM','ReceiverName;CompanyName;Url;SupportEmail;','text/plain'),(37,'Reject_Forum','DB_MTEMPLATE_REJECT_FORUM','ReceiverName;CompanyName;Url;SupportEmail;Reason; ','text/plain'),(38,'Friendship_Request','DB_MTEMPLATE_FRIENDSHIP_REQUEST','ReceiverName;SenderName;ApproveLink;RejectLink','text/html'),(39,'Approve_Group','DB_MTEMPLATE_APPROVE_GROUP','OwnerName;GroupName','text/html'),(40,'Reject_Group','DB_MTEMPLATE_REJECT_GROUP','OwnerName;GroupName;Reason','text/html'),(41,'Approve_Group_Topic','DB_MTEMPLATE_APPROVE_GROUP_TOPIC','AuthorName;GroupName;Topic','text/html'),(42,'Reject_Group_Topic','DB_MTEMPLATE_REJECT_GROUP_TOPIC','AuthorName;GroupName;Topic;Reason','text/html'),(43,'Approve_Group_Membership','DB_MTEMPLATE_APPROVE_GROUP_MEMBERSHIP','MemberName;GroupName','text/html'),(44,'Reject_Group_Membership','DB_MTEMPLATE_REJECT_GROUP_MEMBERSHIP','MemberName;GroupName','text/html'),(50,'Login_Resend','DB_MTEMPLATE_RESEND','Login;Password;Url;SupportEmail;','text/html'),(51,'Confirm_Resend','DB_MTEMPLATE_CONFIRM_RESEND','Login;Password;Url;SupportEmail;ConfirmLink;','text/html'),(59,'Approve_Video','DB_MTEMPLATE_APPROVE_VIDEO','ReceiverName;CompanyName;Url;SupportEmail;','text/html'),(60,'Reject_Video','DB_MTEMPLATE_REJECT_VIDEO','ReceiverName;CompanyName;Url;SupportEmail;','text/plain');
/*!40000 ALTER TABLE `mailtemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member2group`
--

DROP TABLE IF EXISTS `member2group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member2group` (
  `memberid` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`memberid`,`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member2group`
--

LOCK TABLES `member2group` WRITE;
/*!40000 ALTER TABLE `member2group` DISABLE KEYS */;
INSERT INTO `member2group` (`memberid`, `groupid`, `status`) VALUES (14866,2,1);
/*!40000 ALTER TABLE `member2group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `mem_userid` int(11) NOT NULL AUTO_INCREMENT,
  `mem_username` varchar(25) NOT NULL DEFAULT '',
  `mem_password` varchar(191) NOT NULL DEFAULT '',
  `mem_surname` varchar(25) DEFAULT NULL,
  `mem_forename` varchar(25) DEFAULT NULL,
  `mem_email` varchar(75) DEFAULT NULL,
  `mem_newsletter` smallint(6) DEFAULT '1',
  `mem_joindate` date DEFAULT NULL,
  `mem_dob` date DEFAULT NULL,
  `mem_expiredate` date DEFAULT NULL,
  `mem_lastvisit` date DEFAULT NULL,
  `mem_sex` char(1) DEFAULT NULL,
  `mem_type` char(1) DEFAULT NULL,
  `mem_emailtype` char(1) DEFAULT NULL,
  `mem_update` smallint(6) DEFAULT '1',
  `mem_referrer` int(11) DEFAULT NULL,
  `mem_country` varchar(50) DEFAULT NULL,
  `mem_online` enum('Y','N') NOT NULL DEFAULT 'N',
  `mem_timeout` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lang_id` char(3) NOT NULL DEFAULT '',
  `mem_confirm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mem_ip` varchar(255) NOT NULL DEFAULT '',
  `mem_suspend` enum('Y','N') NOT NULL DEFAULT 'N',
  `mem_skype` varchar(255) DEFAULT NULL,
  `mem_skypeset` varchar(10) DEFAULT NULL,
  `mem_block_mail` int(1) DEFAULT NULL,
  `mem_sms` tinyint(4) NOT NULL DEFAULT '0',
  `mem_mobile` varchar(15) NOT NULL DEFAULT '',
  `mem_carrier` int(11) NOT NULL DEFAULT '0',
  `mem_featured` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mem_userid`),
  KEY `mem_username` (`mem_username`,`mem_password`),
  KEY `mem_email` (`mem_email`)
) ENGINE=MyISAM AUTO_INCREMENT=14882 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` (`mem_userid`, `mem_username`, `mem_password`, `mem_surname`, `mem_forename`, `mem_email`, `mem_newsletter`, `mem_joindate`, `mem_dob`, `mem_expiredate`, `mem_lastvisit`, `mem_sex`, `mem_type`, `mem_emailtype`, `mem_update`, `mem_referrer`, `mem_country`, `mem_online`, `mem_timeout`, `lang_id`, `mem_confirm`, `mem_ip`, `mem_suspend`, `mem_skype`, `mem_skypeset`, `mem_block_mail`, `mem_sms`, `mem_mobile`, `mem_carrier`, `mem_featured`) VALUES (14651,'manager','9917148f855d6c6fa06749f366b2a66c','LastName','FirstName','info@idatemedia.com',1,'2006-07-15','1966-01-29','2017-08-31','2020-02-14','M','A','H',0,0,NULL,'N','2020-02-14 18:23:03','EN',1,'73.96.72.40 ','N','','',0,0,'',0,1);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_opentok_chat`
--

DROP TABLE IF EXISTS `members_opentok_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members_opentok_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `to_uid` int(10) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `token_id` text NOT NULL,
  `read_st` varchar(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_opentok_chat`
--

LOCK TABLES `members_opentok_chat` WRITE;
/*!40000 ALTER TABLE `members_opentok_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_opentok_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_service_transactions`
--

DROP TABLE IF EXISTS `members_service_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members_service_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(10) NOT NULL,
  `reciever_id` varchar(10) NOT NULL,
  `service_id` varchar(10) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `token_value` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_service_transactions`
--

LOCK TABLES `members_service_transactions` WRITE;
/*!40000 ALTER TABLE `members_service_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_service_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_videochat`
--

DROP TABLE IF EXISTS `members_videochat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members_videochat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(10) NOT NULL,
  `to_uid` varchar(10) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `read` varchar(10) NOT NULL,
  `session_id` varchar(200) NOT NULL,
  `token_id` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=442 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_videochat`
--

LOCK TABLES `members_videochat` WRITE;
/*!40000 ALTER TABLE `members_videochat` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_videochat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_senderid` int(11) NOT NULL DEFAULT '0',
  `msg_receiverid` int(11) NOT NULL DEFAULT '0',
  `msg_senderhandle` varchar(30) NOT NULL DEFAULT '',
  `msg_title` varchar(60) DEFAULT NULL,
  `msg_text` text,
  `msg_dateadded` datetime DEFAULT NULL,
  `msg_read` char(1) DEFAULT NULL,
  `msg_senderdel` enum('Y','N') NOT NULL DEFAULT 'N',
  `msg_receiverdel` enum('Y','N') NOT NULL DEFAULT 'N',
  `msg_delhiderec` enum('Y','N') NOT NULL DEFAULT 'N',
  `msg_delhidesen` enum('Y','N') NOT NULL DEFAULT 'N',
  `msg_replied` enum('Y','N') NOT NULL DEFAULT 'N',
  `msg_flirt` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`msg_id`),
  KEY `msg_receiverid` (`msg_receiverid`,`msg_receiverdel`,`msg_read`),
  KEY `msg_senderid` (`msg_senderid`,`msg_receiverid`)
) ENGINE=MyISAM AUTO_INCREMENT=1874 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` (`msg_id`, `msg_senderid`, `msg_receiverid`, `msg_senderhandle`, `msg_title`, `msg_text`, `msg_dateadded`, `msg_read`, `msg_senderdel`, `msg_receiverdel`, `msg_delhiderec`, `msg_delhidesen`, `msg_replied`, `msg_flirt`) VALUES (1842,14859,14840,'testme','Someone is flirting with you.',' Dear testuser<br>\r\n        After seeing your profile <b>testme</b> has expressed an interest in\r\n        getting to know you a little better and send you flirt <b>You caught my eye</b>, but before purchasing a membership, they would like to know whether you are interested in them.\\n\r\n        Flirts are a service for  members to express an interest in one another before making a more in-depth response.\\n\r\n        Responding could not be simpler! View <b>testme\'s</b> profile and if interested, send a flirt back by clicking the flirt link at the top of the profile page.','2019-03-07 00:00:00','R','Y','N','N','Y','N','Y'),(1843,14859,14840,'testme','dssdd','sdfsdf sdjbsd sdvbsdiv sdivsdv sdvidbsuvs dvsdivusdv sdivsduv sdvsd vhsdv sdhv sdhvsdhvdjsvsdjvh dvhd vsdv','2019-03-07 07:44:05','R','N','N','N','N','N','N'),(1844,14859,14840,'testme','dssdd','dfgdfgfdg fdgfd dfgfd dgffd dfgfd dfg dfg dfg fhggd gdhf gfh','2019-03-07 08:28:55','R','N','N','N','N','Y','N'),(1845,14651,14651,'manager','asdf','asdfasdfasdfasd fasd fasdf asdfas dfasd fasd fasd f','2019-03-07 16:02:28','R','N','N','N','N','Y','N'),(1846,14651,14651,'manager','Re: asdf','Hi\r\n\r\n>>Previous:\r\nasdfasdfasdfasd fasd fasdf asdfas dfasd fasd fasd f','2019-03-27 08:12:03','R','N','N','N','N','N','N'),(1847,14651,14651,'manager','Re: asdf','Hiii\r\n\r\n>>Previous:\r\nasdfasdfasdfasd fasd fasdf asdfas dfasd fasd fasd f','2019-03-27 08:13:01','R','N','Y','N','N','N','N'),(1848,14870,14651,'kristine','Yo','Nice profile. Bet you can\'t say something back? Or can you?','2019-04-03 22:37:40','U','N','Y','N','N','N','N'),(1849,14875,14651,'testmenew','Hi','Testss and I will be there at the same time','2019-04-08 08:19:42','R','N','N','N','N','Y','N'),(1850,14872,14651,'Jennifer','Someone is flirting with you.','','2019-04-09 00:00:00','R','N','N','N','N','N','Y'),(1851,14651,14872,'manager','Hi','FdgfGhd ghfdgg fh gdg frdg fhgfdgrfgf dgfdd hdsg','2019-04-10 13:42:11','U','N','N','N','N','N','N'),(1852,14651,14651,'manager','Re: asdf','ok\r\n\r\n>>Previous:\r\nasdfasdfasdfasd fasd fasdf asdfas dfasd fasd fasd f','2019-04-10 20:40:55','R','N','N','N','N','N','N'),(1853,14876,14877,'crazybetty','test','test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test v','2019-04-16 03:31:10','R','N','N','N','N','Y','N'),(1854,14876,14877,'crazybetty','Someone is flirting with you.',' Dear testnew13<br>\r\n        After seeing your profile <b>crazybetty</b> has expressed an interest in\r\n        getting to know you a little better and send you flirt <b>You stole my heart</b>, but before purchasing a membership, they would like to know whether you are interested in them.\\n\r\n        Flirts are a service for  members to express an interest in one another before making a more in-depth response.\\n\r\n        Responding could not be simpler! View <b>crazybetty\'s</b> profile and if interested, send a flirt back by clicking the flirt link at the top of the profile page.','2019-04-16 00:00:00','R','N','N','N','N','N','Y'),(1855,14877,14876,'testnew13','Re: test','>>Previous:\r\ntest test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test v','2019-04-16 22:34:10','R','N','N','N','N','N','N'),(1856,14876,14651,'crazybetty','Someone is flirting with you.',' Dear manager<br>\r\n        After seeing your profile <b>crazybetty</b> has expressed an interest in\r\n        getting to know you a little better and send you flirt <b>Hey don\'t hide, upload your photo!</b>, but before purchasing a membership, they would like to know whether you are interested in them.\\n\r\n        Flirts are a service for  members to express an interest in one another before making a more in-depth response.\\n\r\n        Responding could not be simpler! View <b>crazybetty\'s</b> profile and if interested, send a flirt back by clicking the flirt link at the top of the profile page.','2019-04-30 00:00:00','R','N','N','N','N','N','Y'),(1857,14872,14651,'Jennifer','test','hlo test hlo test hlo','2019-04-29 23:19:14','R','N','N','N','N','N','N'),(1858,14864,14651,'julietoday','Hi','Hi backHi backHi backHi backHi backHi backHi backHi backHi backHi back','2019-11-18 18:16:24','R','N','N','N','N','N','N'),(1859,14840,14859,'testuser','Re: dssdd dss','Thanks\r\n\r\n>>Previous:\r\ndfgdfgfdg fdgfd dfgfd dgffd dfgfd dfg dfg dfg fhggd gdhf gfh','2019-11-25 22:05:13','U','N','N','N','N','N','N'),(1860,14840,14859,'testuser','check it please','hi this is regarding  testing','2019-11-25 22:08:06','U','N','N','N','N','N','N'),(1861,14840,14840,'testuser','Someone is flirting with you.',' Dear testuser<br>\r\n        After seeing your profile <b>testuser</b> has expressed an interest in\r\n        getting to know you a little better and send you flirt <b>A virtual rose just for you</b>, but before purchasing a membership, they would like to know whether you are interested in them.\\n\r\n        Flirts are a service for  members to express an interest in one another before making a more in-depth response.\\n\r\n        Responding could not be simpler! View <b>testuser\'s</b> profile and if interested, send a flirt back by clicking the flirt link at the top of the profile page.','2019-11-25 00:00:00','U','N','N','N','N','N','Y'),(1862,14651,14876,'manager','Someone is flirting with you.',' Dear crazybetty<br>\r\n        After seeing your profile <b>manager</b> has expressed an interest in\r\n        getting to know you a little better and send you flirt <b>A virtual rose just for you</b>, but before purchasing a membership, they would like to know whether you are interested in them.\\n\r\n        Flirts are a service for  members to express an interest in one another before making a more in-depth response.\\n\r\n        Responding could not be simpler! View <b>manager\'s</b> profile and if interested, send a flirt back by clicking the flirt link at the top of the profile page.','2019-12-04 00:00:00','U','N','N','N','N','N','Y'),(1863,14651,14872,'manager','Someone is flirting with you.',' Dear Jennifer<br>\r\n        After seeing your profile <b>manager</b> has expressed an interest in\r\n        getting to know you a little better and send you flirt <b>You are cute, can we chat sometime?</b>, but before purchasing a membership, they would like to know whether you are interested in them.\\n\r\n        Flirts are a service for  members to express an interest in one another before making a more in-depth response.\\n\r\n        Responding could not be simpler! View <b>manager\'s</b> profile and if interested, send a flirt back by clicking the flirt link at the top of the profile page.','2019-12-06 00:00:00','U','N','N','N','N','N','Y'),(1864,14651,14872,'manager','Hello','Hello good people. I have just moved to this area and I am looking for good friends to hang out with on our free time, so I can get familiar with the city.','2019-12-06 10:15:46','U','N','N','N','N','N','N'),(1865,14651,14875,'manager','Re: Hi','>>Previous:\r\nTestss and I will be there at the same time','2019-12-06 10:21:56','U','N','N','N','N','N','N'),(1866,14651,14872,'manager','testjng','Hu How are you  Hu How are you\r\nHu How. How are you are you','2019-12-14 21:41:00','U','N','N','N','N','N','N'),(1867,14651,14651,'manager','Someone is flirting with you.',' Dear manager<br>\r\n        After seeing your profile <b>manager</b> has expressed an interest in\r\n        getting to know you a little better and send you flirt <b>You stole my heart</b>, but before purchasing a membership, they would like to know whether you are interested in them.\\n\r\n        Flirts are a service for  members to express an interest in one another before making a more in-depth response.\\n\r\n        Responding could not be simpler! View <b>manager\'s</b> profile and if interested, send a flirt back by clicking the flirt link at the top of the profile page.','2019-12-16 00:00:00','R','N','N','N','N','N','Y'),(1868,14651,14872,'manager','hi','hi how are you i would like to meet you','2019-12-29 17:45:12','U','N','N','N','N','N','N'),(1869,14651,14864,'manager','Someone is flirting with you.',' Dear julietoday<br>\r\n        After seeing your profile <b>manager</b> has expressed an interest in\r\n        getting to know you a little better and send you flirt <b>You are cute, can we chat sometime?</b>, but before purchasing a membership, they would like to know whether you are interested in them.\\n\r\n        Flirts are a service for  members to express an interest in one another before making a more in-depth response.\\n\r\n        Responding could not be simpler! View <b>manager\'s</b> profile and if interested, send a flirt back by clicking the flirt link at the top of the profile page.','2020-01-07 00:00:00','U','N','N','N','N','N','Y'),(1870,14651,14869,'manager','Someone is flirting with you.',' Dear Karlastuns<br>\r\n        After seeing your profile <b>manager</b> has expressed an interest in\r\n        getting to know you a little better and send you flirt <b>You caught my eye</b>, but before purchasing a membership, they would like to know whether you are interested in them.\\n\r\n        Flirts are a service for  members to express an interest in one another before making a more in-depth response.\\n\r\n        Responding could not be simpler! View <b>manager\'s</b> profile and if interested, send a flirt back by clicking the flirt link at the top of the profile page.','2020-01-14 00:00:00','U','N','N','N','N','N','Y'),(1871,14651,14871,'manager','dsfsgfsdgfdgdrf','sddrgrjj,hjiuliuluiluiliul ghhrthgtrh','2020-02-01 09:28:31','U','N','N','N','N','N','N'),(1872,14651,14871,'manager','dcffgn','bfcgbfcgbfggfb grfdeerv ergergergerger','2020-02-03 09:06:29','U','N','N','N','N','N','N'),(1873,14651,14651,'manager','fdg','fggggggggggggggggggggggggggggggggg','2020-02-03 09:21:46','U','N','N','N','N','N','N');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_friends`
--

DROP TABLE IF EXISTS `my_friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_friends` (
  `uid` varchar(25) NOT NULL DEFAULT '',
  `friend_uid` varchar(25) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'A',
  `is_deleted` char(1) NOT NULL DEFAULT 'F'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_friends`
--

LOCK TABLES `my_friends` WRITE;
/*!40000 ALTER TABLE `my_friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mymatch`
--

DROP TABLE IF EXISTS `mymatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mymatch` (
  `mym_userid` int(11) NOT NULL DEFAULT '0',
  `mym_gender` varchar(255) NOT NULL DEFAULT '',
  `mym_smoker` varchar(15) DEFAULT NULL,
  `mym_comment` text,
  `mym_minheight` varchar(15) DEFAULT NULL,
  `mym_maxheight` varchar(15) DEFAULT NULL,
  `mym_bodytype` varchar(15) DEFAULT NULL,
  `mym_agemin` tinyint(4) DEFAULT NULL,
  `mym_agemax` tinyint(4) DEFAULT NULL,
  `mym_relationship` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`mym_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mymatch`
--

LOCK TABLES `mymatch` WRITE;
/*!40000 ALTER TABLE `mymatch` DISABLE KEYS */;
INSERT INTO `mymatch` (`mym_userid`, `mym_gender`, `mym_smoker`, `mym_comment`, `mym_minheight`, `mym_maxheight`, `mym_bodytype`, `mym_agemin`, `mym_agemax`, `mym_relationship`) VALUES (14840,'M','No','asdsada    ','122','230','Not stated',18,99,'Friendship'),(14859,'F','Not stated','this is testing me ','122','230','Slim',18,99,'E-mail chat'),(14860,'M','- Any -',' ','122','230','- Any -',18,99,'- Any -'),(14651,'F','Social','This is just my ideal match testing details. This is where it all happens my friend.  ','122','187','Petite',18,33,'Activity Pals'),(14878,'F','No',' Test ideal match.','122','230','Slim',18,41,'Marriage'),(14863,'- Choose -','- Any -',' ','122','230','- Any -',18,99,'- Any -'),(14864,'M','No','Someone nice and free. ','122','230','- Any -',18,99,'- Any -'),(14861,'F','- Any -','asdf asd fasd fasf asd asdf asd fasd fasf asd asdf asd fasd fasf asd asdf asd fasd fasf asd  ','122','230','- Any -',18,99,'- Any -'),(14865,'M','- Any -','Hot, handsome and ready to fly. ','122','230','- Any -',18,99,'- Any -'),(14867,'F','- Any -','This is a sample profile for men. Just a sample profile. This is a sample profile for men. Just a sample profile.  ','122','230','- Any -',18,99,'- Any -'),(14869,'M','- Any -','Just a sample of what you will get here. This is just a sample. Just a sample of what you will get here. This is just a sample. Just a sample of what you will get here. This is just a sample.  ','122','230','- Any -',18,99,'- Any -'),(14870,'F','- Any -','Your black beauty is here. I hope you like the test profile that I created. Your black beauty is here. I hope you like the test profile that I created.  ','122','230','- Any -',18,99,'- Any -'),(14871,'M','- Any -','Crazy, fun, cut, cuddly and so on. ','122','230','- Any -',18,99,'- Any -'),(14872,'M','- Any -','Yep, just looking for some boos. ','122','230','- Any -',18,99,'- Any -'),(14873,'F','- Any -','Just looking for good girls to hang with. This is a sample profile.  ','122','230','- Any -',18,99,'- Any -'),(14874,'F','- Any -','Looking for nice girl. This is a sample profile. Looking for nice girl. This is a sample profile.  ','122','230','- Any -',18,99,'- Any -'),(14875,'F','Social','Please do not include any contact details here as they will be removed. Please do not include any contact details here as they will be removed. Please do not include any contact details here as they will be removed.    ','122','187','Petite',18,33,'Activity Pals'),(14876,'M','- Any -','Someone up to the challenge.  ','122','230','- Any -',18,18,'- Any -'),(14877,'F','- Any -',' This is a test ideal match.','152','208','- Any -',18,40,'- Any -'),(14880,'F','- Any -','easy going ','122','230','- Any -',18,99,'Long-term'),(14881,'- Choose -','- Any -',' ','122','230','- Any -',18,99,'- Any -');
/*!40000 ALTER TABLE `mymatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networkinvite`
--

DROP TABLE IF EXISTS `networkinvite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `networkinvite` (
  `User_id` int(11) NOT NULL DEFAULT '0',
  `Email` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`User_id`,`Email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networkinvite`
--

LOCK TABLES `networkinvite` WRITE;
/*!40000 ALTER TABLE `networkinvite` DISABLE KEYS */;
INSERT INTO `networkinvite` (`User_id`, `Email`) VALUES (14651,'rebusifyspam@gmail.com'),(14863,'abadat.khan@corewebconnections.com'),(14863,'narayan.singh@corewebconnections.com');
/*!40000 ALTER TABLE `networkinvite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `body` mediumtext,
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` (`news_id`, `title`, `body`) VALUES (24,'Sample News','<p>This is a sample news post. This is only a sample news post. We hope you like this news post. It&#39;s just a sample.&nbsp;This is a sample news post. This is only a sample news post. We hope you like this news post. It&#39;s just a sample.&nbsp;This is a sample news post. This is only a sample news post. We hope you like this news post. It&#39;s just a sample.&nbsp;</p>\r\n\r\n<p>This is a sample news post. This is only a sample news post. We hope you like this news post. It&#39;s just a sample.&nbsp;This is a sample news post. This is only a sample news post. We hope you like this news post. It&#39;s just a sample.&nbsp;</p>\r\n\r\n<p>This is a sample news post. This is only a sample news post. We hope you like this news post. It&#39;s just a sample.&nbsp;This is a sample news post. This is only a sample news post. We hope you like this news post. It&#39;s just a sample.&nbsp;This is a sample news post. This is only a sample news post. We hope you like this news post. It&#39;s just a sample.&nbsp;This is a sample news post. This is only a sample news post. We hope you like this news post. It&#39;s just a sample.&nbsp;This is a sample news post. This is only a sample news post. We hope you like this news post. It&#39;s just a sample.&nbsp;</p>\r\n\r\n<p>This is a sample news post. This is only a sample news post. We hope you like this news post. It&#39;s just a sample.&nbsp;</p>\r\n'),(25,'Two Sample News','<p>This is yet another news sample post. It&#39;s just a sample. The Dow fell today to all time highs. What do you say that mean? This is a sample news post.&nbsp;This is yet another news sample post. It&#39;s just a sample. The Dow fell today to all time highs. What do you say that mean? This is a sample news post.&nbsp;</p>\r\n\r\n<p>This is yet another news sample post. It&#39;s just a sample. The Dow fell today to all time highs. What do you say that mean? This is a sample news post.&nbsp;</p>\r\n\r\n<p>This is yet another news sample post. It&#39;s just a sample. The Dow fell today to all time highs. What do you say that mean? This is a sample news post.&nbsp;This is yet another news sample post. It&#39;s just a sample. The Dow fell today to all time highs. What do you say that mean? This is a sample news post.&nbsp;This is yet another news sample post. It&#39;s just a sample. The Dow fell today to all time highs. What do you say that mean? This is a sample news post.&nbsp;</p>\r\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `ntf_id` int(11) NOT NULL AUTO_INCREMENT,
  `ntf_senderid` int(11) NOT NULL DEFAULT '0',
  `ntf_senderhandle` varchar(30) NOT NULL DEFAULT '',
  `ntf_receiverid` int(11) NOT NULL DEFAULT '0',
  `ntf_receiverhandle` varchar(30) NOT NULL DEFAULT '',
  `ntf_dateadded` date DEFAULT NULL,
  `ntf_response` char(1) DEFAULT NULL,
  PRIMARY KEY (`ntf_id`),
  KEY `ntf_senderid` (`ntf_senderid`,`ntf_receiverid`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` (`ntf_id`, `ntf_senderid`, `ntf_senderhandle`, `ntf_receiverid`, `ntf_receiverhandle`, `ntf_dateadded`, `ntf_response`) VALUES (31,14859,'testme',14840,'testuser','2019-03-07','W'),(32,14872,'Jennifer',14651,'manager','2019-04-09','W'),(33,14876,'crazybetty',14877,'testnew13','2019-04-16','W'),(34,14876,'crazybetty',14651,'manager','2019-04-30','W'),(35,14840,'testuser',14840,'testuser','2019-11-25','W'),(36,14651,'manager',14876,'crazybetty','2019-12-04','W'),(37,14651,'manager',14872,'Jennifer','2019-12-06','W'),(38,14651,'manager',14651,'manager','2019-12-16','W'),(39,14651,'manager',14864,'julietoday','2020-01-07','W'),(40,14651,'manager',14869,'Karlastuns','2020-01-14','W');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notify_events`
--

DROP TABLE IF EXISTS `notify_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notify_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `text` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notify_events`
--

LOCK TABLES `notify_events` WRITE;
/*!40000 ALTER TABLE `notify_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `notify_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online`
--

DROP TABLE IF EXISTS `online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `online` (
  `uid` varchar(25) NOT NULL DEFAULT '',
  `tstamp` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='This table shows who is on line for Flash IM';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online`
--

LOCK TABLES `online` WRITE;
/*!40000 ALTER TABLE `online` DISABLE KEYS */;
/*!40000 ALTER TABLE `online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `options` (
  `Option_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL DEFAULT '',
  `Value` varchar(255) NOT NULL DEFAULT '',
  `Label` varchar(255) NOT NULL DEFAULT '',
  `Config` mediumtext NOT NULL,
  `OptionsGroup_ID` int(11) NOT NULL DEFAULT '0',
  `Type` enum('string','numeric','list','email','url','dateformat','timeformat','skin','language') NOT NULL DEFAULT 'string',
  `Comments` varchar(255) NOT NULL DEFAULT '',
  `Order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Option_ID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` (`Option_ID`, `Name`, `Value`, `Label`, `Config`, `OptionsGroup_ID`, `Type`, `Comments`, `Order`) VALUES (1,'1month','11.95','DB_OPTION_1MONTH_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>99999999\r\n);\r\nreturn $t;',1,'numeric','DB_OPTION_1MONTH',0),(2,'3month','29.95','DB_OPTION_3MONTH_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>99999999\r\n);\r\nreturn $t;',1,'numeric','DB_OPTION_3MONTH',0),(3,'6month','49.95','DB_OPTION_6MONTH_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>99999999\r\n);\r\nreturn $t;',1,'numeric','DB_OPTION_6MONTH',0),(4,'12month','99.95','DB_OPTION_12MONTH_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>99999999\r\n);\r\nreturn $t;',1,'numeric','DB_OPTION_12MONTH',0),(5,'maxpicsize','99999999','DB_OPTION_MAXPICSIZE_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>99999999\r\n);\r\nreturn $t;',2,'numeric','DB_OPTION_MAXPICSIZE',0),(6,'maxvidsize','99999999','DB_OPTION_MAXVIDSIZE_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>99999999\r\n);\r\nreturn $t;',2,'numeric','DB_OPTION_MAXVIDSIZE',0),(7,'maxaudsize','99999999','DB_OPTION_MAXAUDSIZE_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>99999999\r\n);\r\nreturn $t;',2,'numeric','DB_OPTION_MAXAUDSIZE',0),(8,'initialreferal','50','DB_OPTION_INITIALREFERAL_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>100\r\n);\r\nreturn $t;',3,'numeric','DB_OPTION_INITIALREFERAL',0),(9,'subsequentreferal','20','DB_OPTION_SUBSEQUENTREFERAL_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>100\r\n);\r\nreturn $t;',3,'numeric','DB_OPTION_SUBSEQUENTREFERAL',0),(10,'freetime','-1','DB_OPTION_FREETIME_LABEL','$t = array(\r\n\"min\"=>-1,\r\n\"max\"=>365\r\n);\r\nreturn $t;',5,'numeric','DB_OPTION_FREETIME',5),(11,'authorisead','0','DB_OPTION_AUTHORISEAD_LABEL','$t = array(\r\n\"0\"=>\"Off\",\r\n\"1\"=>\"On\",\r\n);\r\nreturn $t;',5,'list','DB_OPTION_AUTHORISEAD',1),(25,'company','SugarDaddyLink.com','DB_OPTION_COMPANY_LABEL','',8,'string','DB_OPTION_COMPANY',0),(13,'free','1','DB_OPTION_FREE_LABEL','$t = array(\r\n\"0\"=>\"Off\",\r\n\"1\"=>\"On\",\r\n);\r\nreturn $t;',7,'list','DB_OPTION_FREE',0),(14,'security_registration','1','DB_OPTION_SECURITY_REGISTRATION_LABEL','$t = array(\r\n\"0\"=>\"Off\",\r\n\"1\"=>\"On\",\r\n);\r\nreturn $t;',7,'list','DB_OPTION_SECURITY_REGISTRATION',0),(15,'geography_javascript','1','DB_OPTION_GEOGRAPHY_JAVASCRIPT_LABEL','$t = array(\r\n\"0\"=>\"Off\",\r\n\"1\"=>\"On\",\r\n);\r\nreturn $t;',7,'list','DB_OPTION_GEOGRAPHY_JAVASCRIPT',0),(16,'zipcodes','Y','DB_OPTION_ZIPCODES_LABEL','$t = array(\r\n\"N\"=>\"Off\",\r\n\"Y\"=>\"On\",\r\n);\r\nreturn $t;',7,'list','DB_OPTION_ZIPCODES',0),(17,'thumbs','Y','DB_OPTION_THUMBS_LABEL','$t = array(\r\n\"N\"=>\"Off\",\r\n\"Y\"=>\"On\",\r\n);\r\nreturn $t;',7,'list','DB_OPTION_THUMBS',0),(18,'videos','Y','DB_OPTION_VIDEOS_LABEL','$t = array(\r\n\"N\"=>\"Off\",\r\n\"Y\"=>\"On\",\r\n);\r\nreturn $t;',7,'list','DB_OPTION_VIDEOS',0),(19,'audios','Y','DB_OPTION_AUDIOS_LABEL','$t = array(\r\n\"N\"=>\"Off\",\r\n\"Y\"=>\"On\",\r\n);\r\nreturn $t;',7,'list','DB_OPTION_AUDIOS',0),(20,'flirt','Y','DB_OPTION_FLIRT_LABEL','$t = array(\r\n\"N\"=>\"Off\",\r\n\"Y\"=>\"On\",\r\n);\r\nreturn $t;',7,'list','DB_OPTION_FLIRT',0),(21,'rating','Y','DB_OPTION_RATING_LABEL','$t = array(\r\n\"N\"=>\"Off\",\r\n\"Y\"=>\"On\",\r\n);\r\nreturn $t;',7,'list','DB_OPTION_RATING',0),(22,'spam','Y','DB_OPTION_SPAM_LABEL','$t = array(\r\n\"N\"=>\"Off\",\r\n\"Y\"=>\"On\",\r\n);\r\nreturn $t;',13,'list','DB_OPTION_SPAM',0),(23,'email_confirm','N','DB_OPTION_EMAIL_CONFIRM_LABEL','$t = array(\r\n\"N\"=>\"Off\",\r\n\"Y\"=>\"On\",\r\n);\r\nreturn $t;',7,'list','DB_OPTION_EMAIL_CONFIRM',0),(24,'avatars_gallery','Y','DB_OPTION_AVATARS_GALLERY_LABEL','$t = array(\r\n\"N\"=>\"Off\",\r\n\"Y\"=>\"On\",\r\n);\r\nreturn $t;',7,'list','DB_OPTION_AVATARS_GALLERY',0),(26,'affmail','contact@sugardaddylink.com','DB_OPTION_AFFMAIL_LABEL','',8,'email','DB_OPTION_AFFMAIL',0),(27,'addr1','My Address','DB_OPTION_ADDR1_LABEL','',8,'string','DB_OPTION_ADDR1',0),(28,'addr2','My Address 2','DB_OPTION_ADDR2_LABEL','',8,'string','DB_OPTION_ADDR2',0),(29,'addr3','Houston, Texas','DB_OPTION_ADDR3_LABEL','',8,'string','DB_OPTION_ADDR3',0),(30,'addr4','77585','DB_OPTION_ADDR4_LABEL','',8,'string','DB_OPTION_ADDR4',0),(31,'mail','contact@sugardaddylink.com','DB_OPTION_MAIL_LABEL','',8,'email','DB_OPTION_MAIL',0),(32,'suppmail','contact@sugardaddylink.com','DB_OPTION_SUPPMAIL_LABEL','',8,'email','DB_OPTION_SUPPMAIL',0),(33,'url','https://www.sugardaddylink.com','DB_OPTION_URL_LABEL','',8,'url','DB_OPTION_URL',0),(34,'default_language','EN','DB_OPTION_DEFAULT_LANGUAGE_LABEL','',5,'language','DB_OPTION_DEFAULT_LANGUAGE',10),(35,'currency','USD','DB_OPTION_CURRENCY_LABEL','',5,'string','DB_OPTION_CURRENCY',10),(36,'currency_symbol','$','DB_OPTION_CURRENCY_SYMBOL_LABEL','',5,'string','DB_OPTION_CURRENCY_SYMBOL',10),(37,'spam_tolerange','4','DB_OPTION_SPAM_TOLERANGE_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>100\r\n);\r\nreturn $t;',13,'numeric','DB_OPTION_SPAM_TOLERANGE',0),(38,'flirtmail','contact@sugardaddylink.com','DB_OPTION_FLIRTMAIL_LABEL','',5,'email','DB_OPTION_FLIRTMAIL',10),(39,'image_count','4','DB_OPTION_IMAGE_COUNT_LABEL','$t = array(\n\"min\"=>0,\n\"max\"=>20\n);\nreturn $t;',5,'numeric','DB_OPTION_IMAGE_COUNT',10),(40,'format_date_short','m/d/Y','DB_OPTION_FORMAT_DATE_SHORT_LABEL','',5,'dateformat','DB_OPTION_FORMAT_DATE_SHORT',10),(41,'format_time_short','H:i','DB_OPTION_FORMAT_TIME_SHORT_LABEL','',5,'timeformat','DB_OPTION_FORMAT_TIME_SHORT',10),(42,'userplane_chat','0','DB_OPTION_USERPLANE_CHAT_LABEL','$t = array(\"0\"=>\"Off\",\n\"1\"=>\"On\",\n);\nreturn $t;',9,'list','DB_OPTION_USERPLANE_CHAT',0),(43,'userplane_domain','sugardaddylink.com','DB_OPTION_USERPLANE_DOMAIN_LABEL','',9,'string','DB_OPTION_USERPLANE_DOMAIN',0),(44,'userplane_domain_full','sugardaddylink.com','DB_OPTION_USERPLANE_DOMAIN_FULL_LABEL','',9,'string','DB_OPTION_USERPLANE_DOMAIN_FULL',0),(45,'table_width','100%','DB_OPTION_TABLE_WIDTH_LABEL','',10,'string','DB_OPTION_TABLE_WIDTH',0),(46,'table_cellpadding','0','DB_OPTION_TABLE_CELLPADDING_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>2000\r\n);\r\nreturn $t;',10,'numeric','DB_OPTION_TABLE_CELLPADDING',0),(47,'table_cellspacing','0','DB_OPTION_TABLE_CELLSPACING_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>2000\r\n);\r\nreturn $t;',10,'numeric','DB_OPTION_TABLE_CELLSPACING',0),(48,'memimage_height','18','DB_OPTION_MEMIMAGE_HEIGHT_LABEL','',10,'string','DB_OPTION_MEMIMAGE_HEIGHT',0),(49,'memimage_width','120','DB_OPTION_MEMIMAGE_WIDTH_LABEL','',10,'string','DB_OPTION_MEMIMAGE_WIDTH',0),(50,'subtable_cellspacing','0','DB_OPTION_SUBTABLE_CELLSPACING_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>2000\r\n);\r\nreturn $t;',10,'numeric','DB_OPTION_SUBTABLE_CELLSPACING',0),(51,'subtable_cellpadding','5','DB_OPTION_SUBTABLE_CELLPADDING_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>2000\r\n);\r\nreturn $t;',10,'numeric','DB_OPTION_SUBTABLE_CELLPADDING',0),(52,'table_align','left','DB_OPTION_TABLE_ALIGN_LABEL','',10,'string','DB_OPTION_TABLE_ALIGN',0),(53,'story_image_height','120','DB_OPTION_STORY_IMAGE_HEIGHT_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>2000\r\n);\r\nreturn $t;',10,'numeric','DB_OPTION_STORY_IMAGE_HEIGHT',0),(54,'story_image_width','160','DB_OPTION_STORY_IMAGE_WIDTH_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>2000\r\n);\r\nreturn $t;',10,'numeric','DB_OPTION_STORY_IMAGE_WIDTH',0),(55,'story_image_weight','10','DB_OPTION_STORY_IMAGE_WEIGHT_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>2000\r\n);\r\nreturn $t;',10,'numeric','DB_OPTION_STORY_IMAGE_WEIGHT',0),(56,'comment_width','300','DB_OPTION_COMMENT_WIDTH_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>2000\r\n);\r\nreturn $t;',10,'numeric','DB_OPTION_COMMENT_WIDTH',0),(57,'page_size','20','DB_OPTION_PAGE_SIZE_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>2000\r\n);\r\nreturn $t;',5,'numeric','DB_OPTION_PAGE_SIZE',10),(58,'authorisead_forum','0','DB_OPTION_AUTHORISEAD_FORUM_LABEL','$t = array(\r\n\"0\"=>\"Off\",\r\n\"1\"=>\"On\",\r\n);\r\nreturn $t;',5,'list','DB_OPTION_AUTHORISEAD_FORUM',4),(59,'trial_gender','B','DB_OPTION_TRIAL_GENDER_LABEL','$t = array( \"M\"=>\"Male\", \"F\"=>\"Female\",\"B\"=>\"Both\" ); return $t;',5,'list','DB_OPTION_TRIAL_GENDER',6),(60,'skin','bluestate','DB_OPTION_SKIN_LABEL','',5,'skin','DB_OPTION_SKIN',8),(62,'snetwork','1','DB_OPTION_SNETWORK_LABEL','$t = array(\r\n\"0\"=>\"Off\",\r\n\"1\"=>\"On\",\r\n);\r\nreturn $t;',12,'list','DB_OPTION_SNETWORK',0),(63,'snetwork_depth','6','DB_OPTION_SNETWORK_DEPTH_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>20\r\n);\r\nreturn $t;',12,'numeric','DB_OPTION_SNETWORK_DEPTH',0),(64,'authorisead_blog','0','DB_OPTION_AUTHORISEAD_BLOG_LABEL','$t = array( \"0\"=>\"Off\", \"1\"=>\"On\", ); return $t;',5,'list','DB_OPTION_AUTHORISEAD_BLOG',3),(65,'userplane_im','0','DB_OPTION_USERPLANE_IM_LABEL','$t = array(\n\"0\"=>\"Off\",\n\"1\"=>\"On\",\n);\nreturn $t;',9,'list','DB_OPTION_USERPLANE_IM',1),(67,'spam_limit','4','DB_OPTION_SPAM_LIMIT_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>99999999\r\n);\r\nreturn $t;',13,'string','DB_OPTION_SPAM_LIMIT',1),(68,'groups_autoapprove','0','DB_OPTION_GROUPS_AUTOAPPROVE_LABEL','$t = array( \"0\"=>\"Off\", \"1\"=>\"On\" ); return $t;',14,'list','DB_OPTION_GROUPS_AUTOAPPROVE',1),(69,'groups_image_width','80','DB_OPTION_GROUPS_IMAGE_WIDTH_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>2000\r\n);\r\nreturn $t;',14,'numeric','DB_OPTION_GROUPS_IMAGE_WIDTH',2),(70,'groups_image_height','80','DB_OPTION_GROUPS_IMAGE_HEIGHT_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>2000\r\n);\r\nreturn $t;',14,'numeric','DB_OPTION_GROUPS_IMAGE_HEIGHT',3),(71,'groups_manager','manager','DB_OPTION_GROUPS_MANAGER_LABEL','$t = array(\r\n\"min\"=>0,\r\n\"max\"=>99999999\r\n);\r\nreturn $t;',14,'string','DB_OPTION_GROUPS_MANAGER',4),(76,'skype','0','DB_OPTION_SKYPE_LABEL','$t = array( \"0\"=>\"Off\", \"1\"=>\"On\", ); return $t;',15,'list','DB_OPTION_SKYPE',1),(77,'skype_premium','0','DB_OPTION_SKYPE_PREMIUM_LABEL','$t = array( \"0\"=>\"All Users\", \"1\"=>\"Premium Users Only\", ); return $t;',15,'list','DB_OPTION_SKYPE_PREMIUM',2),(78,'blogs','1','DB_OPTION_BLOGS_LABEL','$t = array( \"0\"=>\"Off\", \"1\"=>\"On\", ); return $t;',7,'list','DB_OPTION_BLOGS',0),(79,'groups','1','DB_OPTION_GROUPS_LABEL','$t = array( \"0\"=>\"Off\", \"1\"=>\"On\", ); return $t;',7,'list','DB_OPTION_GROUPS',0),(80,'forums','1','DB_OPTION_FORUMS_LABEL','$t = array( \"0\"=>\"Off\", \"1\"=>\"On\", ); return $t;',7,'list','DB_OPTION_FORUMS',0),(81,'geography_ajax','1','DB_OPTION_GEOGRAPHY_AJAX_LABEL','$t = array( \"0\"=>\"Off\", \"1\"=>\"On\", ); return $t;',7,'list','DB_OPTION_GEOGRAPHY_AJAX',0),(200,'userplane_im_free','1','DB_OPTION_USERPLANE_IM_LABEL','$t = array(\r\n\"0\"=>\"Off\",\r\n\"1\"=>\"On\",\r\n);\r\nreturn $t;',11,'list','DB_OPTION_USERPLANE_IM',1),(201,'userplane_domain_free','idatemedia','DB_OPTION_USERPLANE_DOMAIN_LABEL','',11,'string','DB_OPTION_USERPLANE_DOMAIN',2),(202,'userplane_domain_full_free','dating.idatemedia.com','DB_OPTION_USERPLANE_DOMAIN_FULL_LABEL','',11,'string','DB_OPTION_USERPLANE_DOMAIN_FULL',3),(203,'userplane_leader_board_id','4078','DB_OPTION_USERPLANE_LEADER_BOARD_ID_LABEL','',11,'string','DB_OPTION_USERPLANE_LEADER_BOARD_ID',3),(204,'userplane_text_zone_id','193','DB_OPTION_USERPLANE_TEXT_ZONE_ID_LABEL','',11,'string','DB_OPTION_USERPLANE_TEXT_ZONE_ID',3),(205,'userplane_chat_free','1','DB_OPTION_USERPLANE_CHAT_LABEL','$t = array(\r\n\"0\"=>\"Off\",\r\n\"1\"=>\"On\",\r\n);\r\nreturn $t;',11,'list','DB_OPTION_USERPLANE_CHAT',1),(206,'userplane_full_banner_id','4079','DB_OPTION_USERPLANE_FULL_BANNER_ID_LABEL','',11,'string','DB_OPTION_USERPLANE_FULL_BANNER_ID',3),(210,'userplane_presence','0','DB_OPTION_USERPLANE_PRESENCE_LABEL','$t = array(\r\n\"0\"=>\"Off\",\r\n\"1\"=>\"On\",\r\n);\r\nreturn $t;',9,'list','DB_OPTION_USERPLANE_PRESENCE',1),(211,'userplane_presence_id','idatemedia.com','DB_OPTION_USERPLANE_PRESENCE_ID_LABEL','',9,'string','DB_OPTION_USERPLANE_PRESENCE_ID',2),(212,'userplane_presence_password','idatemedia.com','DB_OPTION_USERPLANE_PRESENCE_PASSWORD_LABEL','',9,'string','DB_OPTION_USERPLANE_PRESENCE_PASSWORD',3),(213,'js_notify','1','DB_OPTION_JS_NOTIFY_LABEL','$t = array(\r\n\"0\"=>\"Off\",\r\n\"1\"=>\"On\",\r\n);\r\nreturn $t;',7,'list','DB_OPTION_JS_NOTIFY',0),(214,'video_conversion','1','DB_OPTION_VIDEO_CONVERSION_LABEL','$t = array(\r\n\"0\"=>\"Off\",\r\n\"1\"=>\"On\",\r\n);\r\nreturn $t;',7,'list','DB_OPTION_VIDEO_CONVERSION',0),(224,'sms','Y','DB_OPTION_SMS_LABEL','$t = array(\r\n\"N\"=>\"Off\",\r\n\"Y\"=>\"On\",\r\n);\r\nreturn $t;',7,'list','DB_OPTION_SMS',0),(226,'authorisepic','0','DB_OPTION_AUTHORISEPIC_LABEL','$t = array(\r\n\"0\"=>\"Off\",\r\n\"1\"=>\"On\",\r\n);\r\nreturn $t;',5,'list','DB_OPTION_AUTHORISEPIC',2);
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optionsgroup`
--

DROP TABLE IF EXISTS `optionsgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `optionsgroup` (
  `OptionsGroup_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL DEFAULT '',
  `Title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`OptionsGroup_ID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optionsgroup`
--

LOCK TABLES `optionsgroup` WRITE;
/*!40000 ALTER TABLE `optionsgroup` DISABLE KEYS */;
INSERT INTO `optionsgroup` (`OptionsGroup_ID`, `Name`, `Title`) VALUES (1,'payment','DB_OPTGROUP_PAYMENT'),(2,'file','DB_OPTGROUP_FILE'),(3,'affiliates','DB_OPTGROUP_AFFILIATES'),(7,'modules','DB_OPTGROUP_MODULES'),(5,'general','DB_OPTGROUP_GENERAL'),(8,'contact','DB_OPTGROUP_CONTACT'),(9,'userplane','DB_OPTGROUP_USERPLANE'),(10,'layout','DB_OPTGROUP_LAYOUT'),(11,'userplane_free_chat','DB_OPTGROUP_USERPLANE_CHAT'),(12,'social_network','DB_OPTGROUP_SNETWORK'),(13,'spam','DB_OPTGROUP_SPAM'),(14,'groups','DB_OPTGROUP_GROUPS'),(15,'skype','DB_OPTGROUP_SKYPE');
/*!40000 ALTER TABLE `optionsgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetemplate`
--

DROP TABLE IF EXISTS `pagetemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetemplate` (
  `PageTemplate_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL DEFAULT '',
  `Description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`PageTemplate_ID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetemplate`
--

LOCK TABLES `pagetemplate` WRITE;
/*!40000 ALTER TABLE `pagetemplate` DISABLE KEYS */;
INSERT INTO `pagetemplate` (`PageTemplate_ID`, `Name`, `Description`) VALUES (1,'aff_disclaimer_text','DB_PAGETEMPLATE_AFF_DISCLAIMER_TEXT'),(3,'aff_privacy_text','DB_PAGETEMPLATE_AFF_PRIVACY_TEXT'),(4,'help_advert2_text','DB_PAGETEMPLATE_HELP_ADVERT2_TEXT'),(5,'affiliates_text','DB_PAGETEMPLATE_AFFILIATES_TEXT'),(6,'help_text','DB_PAGETEMPLATE_HELP_TEXT'),(7,'scheme_text','DB_PAGETEMPLATE_SCHEME_TEXT'),(8,'about_content','DB_PAGETEMPLATE_ABOUT_CONTENT');
/*!40000 ALTER TABLE `pagetemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `params`
--

DROP TABLE IF EXISTS `params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `params` (
  `par_authorisead` int(11) NOT NULL DEFAULT '0',
  `par_lastcupidrun` datetime DEFAULT NULL,
  `par_1month` decimal(9,2) DEFAULT NULL,
  `par_3month` decimal(9,2) DEFAULT NULL,
  `par_6month` decimal(9,2) DEFAULT NULL,
  `par_12month` decimal(9,2) DEFAULT NULL,
  `par_rootpath` varchar(200) DEFAULT NULL,
  `par_company` varchar(50) DEFAULT NULL,
  `par_maxpicsize` int(11) NOT NULL DEFAULT '50000',
  `par_maxvidsize` int(11) NOT NULL DEFAULT '1000000',
  `par_maxaudsize` int(11) NOT NULL DEFAULT '500000',
  `par_initialreferal` int(11) NOT NULL DEFAULT '0',
  `par_subsequentreferal` int(11) NOT NULL DEFAULT '0',
  `par_freetime` int(2) NOT NULL DEFAULT '-1',
  `par_lastrun` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `params`
--

LOCK TABLES `params` WRITE;
/*!40000 ALTER TABLE `params` DISABLE KEYS */;
INSERT INTO `params` (`par_authorisead`, `par_lastcupidrun`, `par_1month`, `par_3month`, `par_6month`, `par_12month`, `par_rootpath`, `par_company`, `par_maxpicsize`, `par_maxvidsize`, `par_maxaudsize`, `par_initialreferal`, `par_subsequentreferal`, `par_freetime`, `par_lastrun`) VALUES (0,'2008-11-23 17:31:42',10.00,50.00,80.00,120.00,'','',500000,1000000,5000000,30,10,2,10);
/*!40000 ALTER TABLE `params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_params`
--

DROP TABLE IF EXISTS `payment_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_params` (
  `psp_id` int(11) NOT NULL AUTO_INCREMENT,
  `psp_name` varchar(255) DEFAULT NULL,
  `psp_value` varchar(255) DEFAULT NULL,
  `ps_id` int(11) NOT NULL DEFAULT '0',
  `pay_service` enum('premium','sd_ticket') NOT NULL DEFAULT 'premium',
  `psp_type` enum('onetime','recurring','common') NOT NULL DEFAULT 'common',
  `psp_description` mediumtext,
  PRIMARY KEY (`psp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=149 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_params`
--

LOCK TABLES `payment_params` WRITE;
/*!40000 ALTER TABLE `payment_params` DISABLE KEYS */;
INSERT INTO `payment_params` (`psp_id`, `psp_name`, `psp_value`, `ps_id`, `pay_service`, `psp_type`, `psp_description`) VALUES (1,'sid','',2,'premium','common','Vendor Number'),(2,'business','tes2t@test.com',1,'premium','common','PayPal account'),(27,'allowedTypes','',3,'premium','recurring','allowedTypes ; price'),(4,'clientAccnum','',3,'premium','common','CCBill account'),(5,'clientSubacc','',3,'premium','common','CCBill subaccount'),(6,'formName','',3,'premium','common','clolors schema for signup form'),(7,'language','English',3,'premium','common','Lang 12'),(8,'allowedTypes','',3,'premium','onetime','allowedTypes ; price'),(14,'allowedTypes','',3,'premium','onetime','allowedTypes ; price'),(10,'ACCOUNT_1','',4,'premium','onetime','Enter account number and price separated by semicolon'),(11,'ACCOUNT_2','',4,'premium','onetime','Enter account number and price separated by semicolon'),(12,'ACCOUNT_3','',4,'premium','onetime','Enter account number and price separated by semicolon'),(13,'ACCOUNT_4','',4,'premium','onetime','Enter account number and price separated by semicolon'),(15,'sid','',2,'sd_ticket','common','Vendor Number'),(16,'business','',1,'sd_ticket','common','PayPal account'),(26,'allowedTypes','',3,'premium','recurring','allowedTypes ; price'),(18,'allowedTypes','',3,'premium','onetime','allowedTypes ; price'),(19,'allowedTypes','',3,'premium','onetime','allowedTypes ; price'),(20,'storename','',5,'premium','common','Your linkpoint store name'),(21,'storename','',5,'sd_ticket','common','Your linkpoint store name'),(22,'currency_code','USD',1,'premium','common','Currency code'),(23,'currency_code','GBP',1,'sd_ticket','common','Currency code'),(25,'secret','',2,'premium','common','Secret word'),(28,'allowedTypes','',3,'premium','recurring','allowedTypes ; price'),(29,'allowedTypes','',3,'premium','recurring','allowedTypes ; price'),(41,'currency','USD',6,'premium','common','Currency code'),(30,'ACCOUNT_5','',4,'premium','recurring','Enter account number and price separated by semicolon'),(31,'ACCOUNT_6','',4,'premium','recurring','Enter account number and price separated by semicolon'),(32,'ACCOUNT_7','',4,'premium','recurring','Enter account number and price separated by semicolon '),(33,'ACCOUNT_8','',4,'premium','recurring','Enter account number and price separated by semicolon '),(35,'demo','',2,'premium','common','Demo mode'),(40,'instId','',6,'premium','common','Account ID'),(36,'product_id_1','',2,'premium','recurring','product_id and price separated by semicolon'),(37,'product_id_2','',2,'premium','recurring','product_id and price separated by semicolon'),(38,'product_id_3','',2,'premium','recurring','product_id and price separated by semicolon'),(39,'product_id_4','',2,'premium','recurring','product_id and price separated by semicolon'),(42,'testMode','100',6,'premium','common','Test mode code'),(43,'instId','',6,'sd_ticket','onetime','Account ID'),(44,'currency','USD',6,'sd_ticket','onetime','Currency code'),(45,'testMode','100',6,'sd_ticket','onetime','Test mode code'),(46,'configfile','',7,'premium','common','Your linkpoint store name'),(47,'configfile','',7,'sd_ticket','common','Your linkpoint store name'),(48,'keyfile','/path to sertificate/sertificate.pem',7,'premium','common',NULL),(49,'keyfile','/path to sertificate/sertificate.pem',7,'sd_ticket','common',NULL),(50,'result','GOOD',7,'premium','common','GOOD - test mode LIVE - real transaction'),(51,'result','GOOD',7,'sd_ticket','common','GOOD - test mode LIVE - real transaction'),(56,'LOGIN','',8,'premium','common','VeriSign login'),(57,'LOGIN','',8,'sd_ticket','common','Verisign login'),(58,'x_login','login',9,'premium','common','login'),(59,'x_tran_key','0000',9,'premium','common','Transaction Key'),(60,'x_test_request','TRUE',9,'premium','common','Test Request'),(78,'Username','',10,'premium','onetime','PayFlow username'),(79,'Password','',10,'premium','onetime','PayFlow password'),(80,'Partner','VeriSign',10,'premium','onetime','PayFlow Partner name'),(81,'VendorName','',10,'premium','onetime','PayFlow Vendor name'),(82,'Username','',10,'sd_ticket','onetime','PayFlow username'),(83,'Password','',10,'sd_ticket','onetime','PayFlow password'),(84,'Partner','VeriSign',10,'sd_ticket','onetime','PayFlow Partner name'),(85,'VendorName','',10,'sd_ticket','onetime','PayFlow Vendor name'),(86,'pi_code','',11,'premium','common','Enter product id and price separated by semicolon'),(87,'pi_code','',11,'premium','common','Enter product id and price separated by semicolon'),(88,'pi_code','',11,'premium','common','Enter product id and price separated by semicolon'),(89,'pi_code','',11,'premium','common','Enter product id and price separated by semicolon'),(90,'co_code','',11,'premium','common','Company code'),(91,'merchant_id','',12,'premium','common','The merchant id required to identify your account. Your default\r\nmerchant id is the email address you use with your Nochex\r\naccount.'),(92,'test_transaction','0',12,'premium','common','Setting this parameter to 100 sets the Payments page into a\r\ntest mode.'),(93,'key','',13,'premium','common','Source Key generated by the Merchant Console at www.usaepay.com.'),(94,'testmode','1',13,'premium','common','Use testmode. If set to <b>1</b> then the transaction will be simulated but not actually processed. (optional, defaults to <b>0</b>)'),(95,'merchantID','',14,'premium','onetime','Google merchant ID'),(96,'merchantID','',14,'sd_ticket','onetime','Google merchant ID'),(97,'merchant_key','',14,'premium','onetime','Google merchant key'),(98,'merchant_key','',14,'sd_ticket','onetime','Google merchant key'),(99,'sandbox_test','1',14,'premium','onetime','Set to 1 for test mode. Set to 0 for production mode.'),(109,'sandbox_test','1',14,'sd_ticket','onetime','Set to 1 for test mode. Set to 0 for production mode.'),(100,'GatewayID','',15,'premium','common','Your assigned InternetSecure Gateway Gateway ID, provided to you in your \"Welcome\" email'),(101,'GatewayID','',15,'sd_ticket','common','Your assigned InternetSecure Gateway Gateway ID, provided to you in your \"Welcome\" email'),(102,'language','EN',15,'premium','common','English (or EN), French (or FR), Spanish (SP), Portuguese (PT) or Japanese (JP)'),(103,'language','EN',15,'sd_ticket','common','English (or EN), French (or FR), Spanish (SP), Portuguese (PT) or Japanese (JP)'),(104,'merchant','',22,'premium','onetime','Shop identification. The Merchant number appears in the e-mail received from DIBS during registration with DIBS.'),(105,'test','yes',22,'premium','onetime','This field is used when tests are being conducted on the shop (eg. test=yes). When this field is declared the transaction is not dispatched to the card issuer, but is instead handled by the DIBS test module. Should the test system be used at a later date, this will be activated at DIBS (contact support@dibs.dkThis email address is being protected from spam bots, you need Javascript enabled to view it for reactivating the test mode of your shop)'),(106,'currency','208',22,'premium','onetime','Currency specification as indicated in ISO4217 where the Danish crown is no. 208. Also see our list of currencies . Make sure that your acquirer agreement supports all the currencies that you want to use.'),(107,'k1','',22,'premium','onetime',NULL),(108,'k2','',22,'premium','onetime',NULL),(111,'PAYGATE_ID','10011013800',16,'premium','onetime','It is unique to each PayGate client and ensures that all payments\r\nreceived are credited directly to the merchants bank account. To test your system, use the PayGate ID:\r\n10011013800.'),(110,'KEY','secret',16,'premium','onetime','Secret word using for creating security hash \"CHECKSUM\". The\r\nKEY is only known by the merchant and PayGate (via the PayGate BackOffice) and should not be displayed on\r\nthe merchant’s web site.'),(120,'pi','830467',17,'premium','onetime','Merchants Paystation ID that the\r\npayments will be made against'),(121,'tm','T',17,'premium','onetime','Single character ‘t’ or ‘T’<br>\r\nTest Mode [optional] - sets the\r\nPaystation server into Test Mode (for the\r\nsingle transaction only). It uses the\r\nmerchants TEST account on the VPS\r\nserver, and marks the transaction as a\r\nTest in the Paystation server. This allows\r\nthe merchant to run test transactions\r\nwithout incurring any costs or running\r\nlive card transactions.'),(124,'api_username','sdk-seller_api1.sdk.com',18,'premium','common','A PayPal-generated identifying account name and password that you use specifically for making\r\nAPI calls. You include your API username and password with every API call. The API username\r\nand password are different from your PayPal login username (email address) and password.'),(125,'api_password','12345678',18,'premium','common','A PayPal-generated identifying account name and password that you use specifically for making\r\nAPI calls. You include your API username and password with every API call. The API username\r\nand password are different from your PayPal login username (email address) and password.'),(126,'signature',NULL,18,'premium','common','Your API signature, if you use one instead of an API\r\nCertificate.'),(127,'encrypted_api_certificate','sdk-seller_cert_key_pem.txt',18,'premium','common','If you are using API Certificates, The path to the API certificate in PEM format as\r\ndownloaded from PayPal'),(128,'environment','sandbox',18,'premium','common','The PayPal environment for processing API calls: live, sandbox or beta-sandbox.\r\nDepending on the feature you want to develop and\r\ntest(sandbox), you need a Personal, Business, or Premier\r\naccount(live).'),(129,'api_username','sdk-seller_api1.sdk.com',18,'sd_ticket','common','A PayPal-generated identifying account name and password that you use specifically for making\r\nAPI calls. You include your API username and password with every API call. The API username\r\nand password are different from your PayPal login username (email address) and password.'),(130,'api_password','12345678',18,'sd_ticket','common','A PayPal-generated identifying account name and password that you use specifically for making\r\nAPI calls. You include your API username and password with every API call. The API username\r\nand password are different from your PayPal login username (email address) and password.'),(131,'signature',NULL,18,'sd_ticket','common','Your API signature, if you use one instead of an API\r\nCertificate.'),(132,'encrypted_api_certificate','sdk-seller_cert_key_pem.txt',18,'sd_ticket','common','If you are using API Certificates, The path to the API certificate in PEM format as\r\ndownloaded from PayPal'),(133,'environment','sandbox',18,'sd_ticket','common','The PayPal environment for processing API calls: live, sandbox or beta-sandbox.\r\nDepending on the feature you want to develop and\r\ntest(sandbox), you need a Personal, Business, or Premier\r\naccount(live).'),(134,'currency','USD',18,'premium','common',NULL),(135,'currency','USD',18,'sd_ticket','common',NULL),(136,'country','US',18,'premium','common',NULL),(137,'country','US',18,'sd_ticket','common',NULL),(143,'x_login','knoxville32',23,'premium','common','login'),(144,'x_tran_key','',23,'premium','common','Transaction Key'),(145,'x_test_request','TRUE',23,'premium','common','Test Request'),(146,'x_login','',23,'sd_ticket','common','login'),(147,'x_tran_key','A0ioIL6uXPs8q5cE',23,'sd_ticket','common','Transaction Key'),(148,'x_test_request','TRUE',23,'sd_ticket','common','Test Request');
/*!40000 ALTER TABLE `payment_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_service_params`
--

DROP TABLE IF EXISTS `payment_service_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_service_params` (
  `psp_service` enum('premium','sd_ticket') NOT NULL DEFAULT 'premium',
  `psp_title` varchar(250) NOT NULL DEFAULT '',
  `psp_type` enum('onetime','recurring') NOT NULL DEFAULT 'onetime',
  PRIMARY KEY (`psp_service`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_service_params`
--

LOCK TABLES `payment_service_params` WRITE;
/*!40000 ALTER TABLE `payment_service_params` DISABLE KEYS */;
INSERT INTO `payment_service_params` (`psp_service`, `psp_title`, `psp_type`) VALUES ('premium','Dating Premium Membership','onetime'),('sd_ticket','SpeedDating Tickets','onetime');
/*!40000 ALTER TABLE `payment_service_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_services`
--

DROP TABLE IF EXISTS `payment_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_services` (
  `ps_id` int(11) NOT NULL DEFAULT '0',
  `pay_service` enum('premium','sd_ticket') NOT NULL DEFAULT 'premium',
  PRIMARY KEY (`ps_id`,`pay_service`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_services`
--

LOCK TABLES `payment_services` WRITE;
/*!40000 ALTER TABLE `payment_services` DISABLE KEYS */;
INSERT INTO `payment_services` (`ps_id`, `pay_service`) VALUES (1,'premium'),(1,'sd_ticket'),(2,'premium'),(2,'sd_ticket'),(3,'premium'),(4,'premium'),(5,'premium'),(5,'sd_ticket'),(6,'premium'),(6,'sd_ticket'),(7,'premium'),(7,'sd_ticket'),(8,'premium'),(8,'sd_ticket'),(9,'premium'),(10,'premium'),(10,'sd_ticket'),(11,'premium'),(11,'sd_ticket'),(12,'premium'),(12,'sd_ticket'),(13,'premium'),(13,'sd_ticket'),(14,'premium'),(14,'sd_ticket'),(15,'premium'),(15,'sd_ticket'),(16,'premium'),(16,'sd_ticket'),(17,'premium'),(17,'sd_ticket'),(18,'premium'),(18,'sd_ticket'),(19,'premium'),(19,'sd_ticket'),(22,'premium'),(22,'sd_ticket'),(23,'premium'),(23,'sd_ticket');
/*!40000 ALTER TABLE `payment_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_systems`
--

DROP TABLE IF EXISTS `payment_systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_systems` (
  `ps_id` int(11) NOT NULL AUTO_INCREMENT,
  `ps_prefix` varchar(40) NOT NULL DEFAULT '',
  `ps_title` varchar(250) NOT NULL DEFAULT '',
  `ps_max_amount` int(11) NOT NULL DEFAULT '1000000',
  `ps_active` enum('yes','no') NOT NULL DEFAULT 'yes',
  `ps_onetime` enum('yes','no') NOT NULL DEFAULT 'yes',
  `ps_recurring` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`ps_id`),
  UNIQUE KEY `prefix` (`ps_prefix`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_systems`
--

LOCK TABLES `payment_systems` WRITE;
/*!40000 ALTER TABLE `payment_systems` DISABLE KEYS */;
INSERT INTO `payment_systems` (`ps_id`, `ps_prefix`, `ps_title`, `ps_max_amount`, `ps_active`, `ps_onetime`, `ps_recurring`) VALUES (1,'paypal','PayPal',1000,'yes','yes','yes'),(2,'2checkoutV2','Credit Card (2CheckOut)',150,'yes','yes','yes'),(3,'ccbill','CCBill',100,'no','yes','yes'),(4,'ibill','iBill',1000000,'no','yes','no'),(6,'worldpay','Worldpay',1000000,'no','yes','yes'),(9,'authorizenet_aim','Authorize.Net',1000000,'no','yes','yes'),(11,'epoch','Epoch',1000000,'no','yes','yes'),(12,'nochex','Nochex Secure Online Payment',1000000,'no','yes','no'),(13,'usaepay','USA ePay',1000000,'no','yes','no'),(14,'google_checkout','Google Checkout',1000000,'no','yes','no'),(15,'internetsecure','InternetSecure',1000000,'no','yes','yes'),(22,'dibs','DIBS Payment System',1000000,'no','yes','no'),(17,'paygate','PayGate',1000000,'no','yes','yes'),(19,'flex','Verotel',1000000,'no','yes','no'),(18,'paypal_pro','Paypal Pro Payment System',10000,'no','yes','yes'),(23,'authorizenet_sim','Authorize.Net Sim',1000000,'no','yes','yes');
/*!40000 ALTER TABLE `payment_systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `pay_paymentid` int(11) NOT NULL AUTO_INCREMENT,
  `pay_transid` varchar(50) NOT NULL DEFAULT '0',
  `pay_transstatus` varchar(50) NOT NULL DEFAULT '',
  `pay_transtime` varchar(55) DEFAULT '0',
  `pay_message` text,
  `pay_userid` int(11) NOT NULL DEFAULT '0',
  `pay_date` datetime DEFAULT NULL,
  `pay_name` varchar(40) DEFAULT NULL,
  `pay_address` text,
  `pay_postcode` varchar(12) DEFAULT NULL,
  `pay_country` char(2) DEFAULT NULL,
  `pay_telephone` varchar(30) DEFAULT NULL,
  `pay_email` varchar(80) DEFAULT NULL,
  `pay_scountry` varchar(80) DEFAULT NULL,
  `pay_samount` varchar(20) DEFAULT NULL,
  `pay_service` enum('premium','sd_ticket') NOT NULL DEFAULT 'premium',
  `pay_params` mediumtext NOT NULL,
  `pay_system` varchar(255) NOT NULL DEFAULT '',
  `pay_username` varchar(25) DEFAULT NULL,
  `pay_notify_log` mediumtext NOT NULL,
  PRIMARY KEY (`pay_paymentid`)
) ENGINE=MyISAM AUTO_INCREMENT=263 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` (`pay_paymentid`, `pay_transid`, `pay_transstatus`, `pay_transtime`, `pay_message`, `pay_userid`, `pay_date`, `pay_name`, `pay_address`, `pay_postcode`, `pay_country`, `pay_telephone`, `pay_email`, `pay_scountry`, `pay_samount`, `pay_service`, `pay_params`, `pay_system`, `pay_username`, `pay_notify_log`) VALUES (235,'0','','0','1 Month Membership',14859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','testme',''),(236,'0','','0','1 Month Membership',14859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','testme',''),(237,'0','','0','12 Months Membership',14651,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'99.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:12;}','','manager',''),(238,'0','','0','1 Month Membership',14859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','testme',''),(239,'0','','0','1 Month Membership',14859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','testme',''),(240,'0','','0','1 Month Membership',14651,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','manager',''),(241,'0','','0','1 Month Membership',14651,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','manager',''),(242,'0','','0','12 Months Membership',14651,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'99.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:12;}','','manager',''),(243,'0','','0','12 Months Membership',14651,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'99.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:12;}','','manager',''),(244,'0','','0','1 Month Membership',14651,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','manager',''),(245,'0','','0','1 Month Membership',14651,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','manager',''),(246,'0','','0','1 Month Membership',14651,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','manager',''),(247,'0','','0','1 Month Membership',14651,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','manager',''),(248,'0','','0','1 Month Membership',14651,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','manager',''),(249,'0','','0','1 Month Membership',14651,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','manager',''),(250,'0','','0','1 Month Membership',14859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','testme',''),(251,'0','','0','12 Months Membership',14876,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'99.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:12;}','','crazybetty',''),(252,'0','','0','1 Month Membership',14876,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','crazybetty',''),(253,'0','','0','6 Months Membership',14877,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'49.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:6;}','','testnew13',''),(254,'0','','0','3 Months Membership',14876,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'29.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:3;}','','crazybetty',''),(255,'0','','0','3 Months Membership',14876,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'29.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:3;}','','crazybetty',''),(256,'0','','0','1 Month Membership',14651,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','manager',''),(257,'0','','0','12 Months Membership',14864,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'99.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:12;}','','julietoday',''),(258,'0','','0','1 Month Membership',14651,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','manager',''),(259,'0','','0','1 Month Membership',14651,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','manager',''),(260,'0','','0','1 Month Membership',14651,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','manager',''),(261,'0','','0','1 Month Membership',14651,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','manager',''),(262,'0','','0','1 Month Membership',14881,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.95','premium','a:2:{s:6:\"period\";s:5:\"month\";s:6:\"number\";i:1;}','','asdasd','');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pictures` (
  `pic_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_userid` int(11) NOT NULL DEFAULT '0',
  `pic_picture` varchar(75) NOT NULL DEFAULT '',
  `pic_private` enum('Y','N') NOT NULL DEFAULT 'N',
  `pic_default` enum('Y','N') NOT NULL DEFAULT 'N',
  `pic_approved` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pic_id`),
  KEY `pic_userid` (`pic_userid`,`pic_default`),
  KEY `pic_userid_2` (`pic_userid`,`pic_default`)
) ENGINE=MyISAM AUTO_INCREMENT=214 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictures`
--

LOCK TABLES `pictures` WRITE;
/*!40000 ALTER TABLE `pictures` DISABLE KEYS */;
INSERT INTO `pictures` (`pic_id`, `pic_userid`, `pic_picture`, `pic_private`, `pic_default`, `pic_approved`) VALUES (180,14859,'','N','Y',1),(181,14859,'','N','N',1),(185,14860,'','N','Y',1),(184,0,'/members/avatar_32.jpg','N','N',1),(190,14860,'','N','N',1),(187,14860,'','Y','N',1),(189,14860,'','N','N',1),(191,14861,'','N','Y',1),(192,14864,'','N','Y',1),(193,14865,'','N','Y',1),(195,14867,'','N','Y',1),(196,14840,'','N','Y',1),(197,14868,'','N','Y',1),(198,14869,'','N','Y',1),(199,14870,'','N','Y',1),(200,14871,'','N','Y',1),(201,14872,'','N','Y',1),(203,14873,'','N','Y',1),(205,14874,'','N','Y',1),(206,14874,'','N','N',1),(209,14876,'','N','Y',1),(212,14651,'','N','Y',1);
/*!40000 ALTER TABLE `pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premium_func`
--

DROP TABLE IF EXISTS `premium_func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `premium_func` (
  `prf_id` int(11) NOT NULL AUTO_INCREMENT,
  `prf_name` varchar(255) NOT NULL DEFAULT '',
  `prf_uri` varchar(255) NOT NULL DEFAULT '',
  `prf_app` int(11) NOT NULL DEFAULT '0',
  `prf_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`prf_id`),
  KEY `URI` (`prf_uri`(10))
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premium_func`
--

LOCK TABLES `premium_func` WRITE;
/*!40000 ALTER TABLE `premium_func` DISABLE KEYS */;
INSERT INTO `premium_func` (`prf_id`, `prf_name`, `prf_uri`, `prf_app`, `prf_active`) VALUES (3,'Advanced Search','/search.php',0,1),(5,'View Search Results','/prgsearch.php',0,1),(6,'Access Mailbox','/myemail.php',0,0),(7,'View Received Messages','/prgshowmail.php',0,0),(8,'Reply to Messages','/replymail.php',0,1),(9,'Send Messages','/sendmail.php',0,1),(10,'Access Hotlist','/prghotlist.php',0,0),(11,'Live Video Chat IM','/chat/web/index.php',0,0);
/*!40000 ALTER TABLE `premium_func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `pro_recno` int(11) NOT NULL AUTO_INCREMENT,
  `pro_userid` int(11) NOT NULL DEFAULT '0',
  `pro_person1` varchar(50) DEFAULT NULL,
  `pro_person2` varchar(50) DEFAULT NULL,
  `pro_person3` varchar(50) DEFAULT NULL,
  `pro_philos1` varchar(50) DEFAULT NULL,
  `pro_philos2` varchar(50) DEFAULT NULL,
  `pro_philos3` varchar(50) DEFAULT NULL,
  `pro_social1` varchar(50) DEFAULT NULL,
  `pro_social2` varchar(50) DEFAULT NULL,
  `pro_social3` varchar(50) DEFAULT NULL,
  `pro_goal1` varchar(50) DEFAULT NULL,
  `pro_goal2` varchar(50) DEFAULT NULL,
  `pro_goal3` varchar(50) DEFAULT NULL,
  `pro_hobby1` varchar(50) DEFAULT NULL,
  `pro_hobby2` varchar(50) DEFAULT NULL,
  `pro_hobby3` varchar(50) DEFAULT NULL,
  `pro_sport1` varchar(50) DEFAULT NULL,
  `pro_sport2` varchar(50) DEFAULT NULL,
  `pro_sport3` varchar(50) DEFAULT NULL,
  `pro_music1` varchar(50) DEFAULT NULL,
  `pro_music2` varchar(50) DEFAULT NULL,
  `pro_music3` varchar(50) DEFAULT NULL,
  `pro_food1` varchar(50) DEFAULT NULL,
  `pro_food2` varchar(50) DEFAULT NULL,
  `pro_food3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pro_recno`)
) ENGINE=MyISAM AUTO_INCREMENT=3247 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` (`pro_recno`, `pro_userid`, `pro_person1`, `pro_person2`, `pro_person3`, `pro_philos1`, `pro_philos2`, `pro_philos3`, `pro_social1`, `pro_social2`, `pro_social3`, `pro_goal1`, `pro_goal2`, `pro_goal3`, `pro_hobby1`, `pro_hobby2`, `pro_hobby3`, `pro_sport1`, `pro_sport2`, `pro_sport3`, `pro_music1`, `pro_music2`, `pro_music3`, `pro_food1`, `pro_food2`, `pro_food3`) VALUES (3229,14651,'Easygoing','Easygoing','Introvert','Ambitious','Idealistic','Independent','Country folks','Creative people','Creative people','Family','Fun','Career','Animals','Art','Art','Archery','Athletics','Badminton','Classical','Country','Dance/disco','BBQ','Italian','French'),(3230,14651,'Easygoing','Easygoing','Introvert','Ambitious','Idealistic','Independent','Country folks','Creative people','Creative people','Family','Fun','Career','Animals','Art','Art','Archery','Athletics','Badminton','Classical','Country','Dance/disco','BBQ','Italian','French'),(3232,14651,'Easygoing','Easygoing','Introvert','Ambitious','Idealistic','Independent','Country folks','Creative people','Creative people','Family','Fun','Career','Animals','Art','Art','Archery','Athletics','Badminton','Classical','Country','Dance/disco','BBQ','Italian','French');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratedby`
--

DROP TABLE IF EXISTS `ratedby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratedby` (
  `rtb_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `rtb_raterid` int(11) unsigned NOT NULL DEFAULT '0',
  `rtb_vote` decimal(3,1) unsigned NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`rtb_userid`,`rtb_raterid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratedby`
--

LOCK TABLES `ratedby` WRITE;
/*!40000 ALTER TABLE `ratedby` DISABLE KEYS */;
INSERT INTO `ratedby` (`rtb_userid`, `rtb_raterid`, `rtb_vote`) VALUES (14840,14859,3.0),(14859,14651,5.0),(14651,14863,3.0),(14870,14651,5.0),(14651,14872,5.0),(14651,14877,5.0),(14840,14877,2.0),(14872,14651,5.0),(14840,14651,5.0),(14876,14651,5.0),(14865,14651,5.0);
/*!40000 ALTER TABLE `ratedby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_video`
--

DROP TABLE IF EXISTS `rating_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rating_video` (
  `id` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating_video`
--

LOCK TABLES `rating_video` WRITE;
/*!40000 ALTER TABLE `rating_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `rte_userid` int(11) NOT NULL DEFAULT '0',
  `rte_votes` int(11) DEFAULT '0',
  `rte_value` int(11) DEFAULT '0',
  `rte_average` decimal(3,1) unsigned DEFAULT '0.0',
  PRIMARY KEY (`rte_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` (`rte_userid`, `rte_votes`, `rte_value`, `rte_average`) VALUES (14840,3,10,3.3),(14859,1,5,5.0),(14651,3,13,4.3),(14870,1,5,5.0),(14872,1,5,5.0),(14876,1,5,5.0),(14865,1,5,5.0);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receipts` (
  `rec_recno` int(11) NOT NULL AUTO_INCREMENT,
  `rec_memuserid` int(11) NOT NULL DEFAULT '0',
  `rec_affuserid` int(11) NOT NULL DEFAULT '0',
  `rec_buydate` date DEFAULT NULL,
  `rec_paydate` date DEFAULT NULL,
  `rec_earliestpay` date DEFAULT NULL,
  `rec_paid` enum('Y','N') DEFAULT 'N',
  `rec_amount` varchar(20) DEFAULT NULL,
  `rec_currency` varchar(10) DEFAULT NULL,
  `rec_transid` varchar(50) DEFAULT NULL,
  `rec_percentage` smallint(3) DEFAULT NULL,
  `rec_affamount` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`rec_recno`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipts`
--

LOCK TABLES `receipts` WRITE;
/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `review_recid` int(11) NOT NULL AUTO_INCREMENT,
  `review_userid` int(11) NOT NULL DEFAULT '0',
  `review_id` int(11) NOT NULL DEFAULT '0',
  `review_type` varchar(10) NOT NULL DEFAULT '',
  `review_text` text NOT NULL,
  `review_createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `review_approved` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`review_recid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` (`review_recid`, `review_userid`, `review_id`, `review_type`, `review_text`, `review_createdate`, `review_approved`) VALUES (7,14651,15,'event','test','2019-04-01 14:35:05',0),(8,14651,15,'event','Test review\r\n','2019-04-05 23:40:29',0);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sarray`
--

DROP TABLE IF EXISTS `sarray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sarray` (
  `sar_recno` int(11) NOT NULL AUTO_INCREMENT,
  `sar_userid` int(11) NOT NULL DEFAULT '0',
  `sar_type` varchar(50) DEFAULT NULL,
  `sar_value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sar_recno`),
  KEY `sar_userid` (`sar_userid`,`sar_type`)
) ENGINE=MyISAM AUTO_INCREMENT=21871 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sarray`
--

LOCK TABLES `sarray` WRITE;
/*!40000 ALTER TABLE `sarray` DISABLE KEYS */;
INSERT INTO `sarray` (`sar_recno`, `sar_userid`, `sar_type`, `sar_value`) VALUES (21869,14651,'lstReligion','- Any -'),(21868,14651,'lstDrink','- Any -'),(21867,14651,'lstSmoker','- Any -'),(21866,14651,'lstEthnicity','- Any -'),(21865,14651,'lstHaircolor','- Any -'),(21864,14651,'lstEyecolor','- Any -'),(21863,14651,'lstMarital','- Any -'),(21862,14651,'lstBodyType','- Any -'),(21861,14651,'lstSeeking','- Any -'),(21860,14651,'lstCity','- Any -'),(21832,14877,'lstCountry','- Any -'),(21833,14877,'lstState','- Any -'),(21834,14877,'lstCity','- Any -'),(21835,14877,'lstSeeking','- Any -'),(21836,14877,'lstBodyType','- Any -'),(21837,14877,'lstMarital','- Any -'),(21838,14877,'lstEyecolor','- Any -'),(21839,14877,'lstHaircolor','- Any -'),(21840,14877,'lstEthnicity','- Any -'),(21841,14877,'lstSmoker','- Any -'),(21842,14877,'lstDrink','- Any -'),(21843,14877,'lstReligion','- Any -'),(21844,14877,'lstChildren','- Any -'),(21859,14651,'lstState','- Any -'),(21858,14651,'lstCountry','- Any -'),(21870,14651,'lstChildren','- Any -');
/*!40000 ALTER TABLE `sarray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_events`
--

DROP TABLE IF EXISTS `sd_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sd_events` (
  `sde_eventid` int(11) NOT NULL AUTO_INCREMENT,
  `sde_name` varchar(255) NOT NULL DEFAULT '',
  `sde_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sde_gender1` char(1) NOT NULL DEFAULT '',
  `sde_gender2` char(1) NOT NULL DEFAULT '',
  `sde_age_from` smallint(6) NOT NULL DEFAULT '0',
  `sde_age_to` smallint(6) NOT NULL DEFAULT '0',
  `sde_gender1_places` int(11) NOT NULL DEFAULT '0',
  `sde_gender2_places` int(11) NOT NULL DEFAULT '0',
  `sde_booked1` int(11) NOT NULL DEFAULT '0',
  `sde_booked2` int(11) NOT NULL DEFAULT '0',
  `sde_venueid` int(11) NOT NULL DEFAULT '0',
  `sde_description` text NOT NULL,
  `sde_is_special` enum('yes','no') NOT NULL DEFAULT 'no',
  `sde_special` varchar(200) NOT NULL DEFAULT '',
  `sde_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`sde_eventid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_events`
--

LOCK TABLES `sd_events` WRITE;
/*!40000 ALTER TABLE `sd_events` DISABLE KEYS */;
INSERT INTO `sd_events` (`sde_eventid`, `sde_name`, `sde_date`, `sde_gender1`, `sde_gender2`, `sde_age_from`, `sde_age_to`, `sde_gender1_places`, `sde_gender2_places`, `sde_booked1`, `sde_booked2`, `sde_venueid`, `sde_description`, `sde_is_special`, `sde_special`, `sde_price`) VALUES (18,'Test Event','2019-12-22 19:30:00','M','F',20,75,300,300,0,0,20,'Just a test event.','no','Special Description',35.00),(19,'Special Event Test','2019-09-07 07:45:00','M','F',20,75,33,33,0,0,20,'Test description for special event.','no','Special Description',99.00);
/*!40000 ALTER TABLE `sd_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_matches`
--

DROP TABLE IF EXISTS `sd_matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sd_matches` (
  `sdm_eventid` int(11) NOT NULL DEFAULT '0',
  `sdm_userid_1` int(11) NOT NULL DEFAULT '0',
  `sdm_userid_2` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `sdm_eventid` (`sdm_eventid`,`sdm_userid_1`,`sdm_userid_2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_matches`
--

LOCK TABLES `sd_matches` WRITE;
/*!40000 ALTER TABLE `sd_matches` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_settings`
--

DROP TABLE IF EXISTS `sd_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sd_settings` (
  `sd_name` varchar(30) NOT NULL DEFAULT '',
  `sd_value` text NOT NULL,
  `sd_description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`sd_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_settings`
--

LOCK TABLES `sd_settings` WRITE;
/*!40000 ALTER TABLE `sd_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_stories`
--

DROP TABLE IF EXISTS `sd_stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sd_stories` (
  `sd_storyid` int(11) NOT NULL AUTO_INCREMENT,
  `sd_title` varchar(250) DEFAULT NULL,
  `sd_body` mediumtext,
  `sd_who` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`sd_storyid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_stories`
--

LOCK TABLES `sd_stories` WRITE;
/*!40000 ALTER TABLE `sd_stories` DISABLE KEYS */;
INSERT INTO `sd_stories` (`sd_storyid`, `sd_title`, `sd_body`, `sd_who`) VALUES (13,'Just a sample events story','Just a sample events story.','iDateMedia');
/*!40000 ALTER TABLE `sd_stories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_subscribe`
--

DROP TABLE IF EXISTS `sd_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sd_subscribe` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_email` varchar(255) DEFAULT NULL,
  `sub_sex` enum('M','F') DEFAULT NULL,
  PRIMARY KEY (`sub_id`),
  UNIQUE KEY `email` (`sub_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_subscribe`
--

LOCK TABLES `sd_subscribe` WRITE;
/*!40000 ALTER TABLE `sd_subscribe` DISABLE KEYS */;
INSERT INTO `sd_subscribe` (`sub_id`, `sub_email`, `sub_sex`) VALUES (1,'rebusifyspam@gmail.com','M');
/*!40000 ALTER TABLE `sd_subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_tickets`
--

DROP TABLE IF EXISTS `sd_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sd_tickets` (
  `sdt_ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `sdt_ticket_num` int(11) NOT NULL DEFAULT '0',
  `sdt_userid` int(11) NOT NULL DEFAULT '0',
  `sdt_gender` enum('Gender1','Gender2') DEFAULT 'Gender1',
  `sdt_paymentid` int(11) NOT NULL DEFAULT '0',
  `sdt_eventid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sdt_ticket_id`),
  KEY `sdt_userid` (`sdt_userid`,`sdt_eventid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_tickets`
--

LOCK TABLES `sd_tickets` WRITE;
/*!40000 ALTER TABLE `sd_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_venue_pic`
--

DROP TABLE IF EXISTS `sd_venue_pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sd_venue_pic` (
  `vnp_id` int(11) NOT NULL AUTO_INCREMENT,
  `vnp_venueid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vnp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_venue_pic`
--

LOCK TABLES `sd_venue_pic` WRITE;
/*!40000 ALTER TABLE `sd_venue_pic` DISABLE KEYS */;
INSERT INTO `sd_venue_pic` (`vnp_id`, `vnp_venueid`) VALUES (13,20);
/*!40000 ALTER TABLE `sd_venue_pic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_venues`
--

DROP TABLE IF EXISTS `sd_venues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sd_venues` (
  `vnu_venueid` int(11) NOT NULL AUTO_INCREMENT,
  `vnu_name` varchar(255) NOT NULL DEFAULT '',
  `vnu_countryid` int(11) NOT NULL DEFAULT '0',
  `vnu_stateid` int(11) NOT NULL DEFAULT '0',
  `vnu_cityid` int(11) NOT NULL DEFAULT '0',
  `vnu_address` tinytext NOT NULL,
  `vnu_phone` varchar(20) NOT NULL DEFAULT '',
  `vnu_website` varchar(255) NOT NULL DEFAULT '',
  `vnu_description` text NOT NULL,
  `vnu_directions` tinytext NOT NULL,
  `vnu_map` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`vnu_venueid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_venues`
--

LOCK TABLES `sd_venues` WRITE;
/*!40000 ALTER TABLE `sd_venues` DISABLE KEYS */;
INSERT INTO `sd_venues` (`vnu_venueid`, `vnu_name`, `vnu_countryid`, `vnu_stateid`, `vnu_cityid`, `vnu_address`, `vnu_phone`, `vnu_website`, `vnu_description`, `vnu_directions`, `vnu_map`) VALUES (20,'The Bar',204,3,3624,'Just a nice little bar.','713-555-1212','https://www.idatemedia.com','Description Here','Directions here','https://www.google.com/maps/place/Houston,+TX/data=!4m2!3m1!1s0x8640b8b4488d8501:0xca0d02def365053b?sa=X&ved=2ahUKEwiTxsre16LhAhUMs54KHa_PD54Q8gEwHXoECAsQCA');
/*!40000 ALTER TABLE `sd_venues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_waiting`
--

DROP TABLE IF EXISTS `sd_waiting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sd_waiting` (
  `swt_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `swt_eventid` int(10) unsigned NOT NULL DEFAULT '0',
  `swt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`swt_eventid`,`swt_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_waiting`
--

LOCK TABLES `sd_waiting` WRITE;
/*!40000 ALTER TABLE `sd_waiting` DISABLE KEYS */;
INSERT INTO `sd_waiting` (`swt_userid`, `swt_eventid`, `swt_date`) VALUES (0,0,'2019-04-09 07:19:37'),(14875,0,'2019-04-09 07:20:13');
/*!40000 ALTER TABLE `sd_waiting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search`
--

DROP TABLE IF EXISTS `search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search` (
  `sea_userid` int(11) NOT NULL DEFAULT '0',
  `sea_smoker` varchar(15) DEFAULT NULL,
  `sea_children` varchar(15) DEFAULT NULL,
  `sea_minheight` varchar(15) DEFAULT NULL,
  `sea_maxheight` varchar(15) DEFAULT NULL,
  `sea_religion` varchar(75) DEFAULT NULL,
  `sea_seeksex` varchar(25) DEFAULT NULL,
  `sea_agemin` tinyint(4) DEFAULT NULL,
  `sea_agemax` tinyint(4) DEFAULT NULL,
  `sea_agency` varchar(7) DEFAULT NULL,
  `sea_income` varchar(20) DEFAULT NULL,
  `sea_education` varchar(20) DEFAULT NULL,
  `sea_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sea_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search`
--

LOCK TABLES `search` WRITE;
/*!40000 ALTER TABLE `search` DISABLE KEYS */;
/*!40000 ALTER TABLE `search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_carrier`
--

DROP TABLE IF EXISTS `sms_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_carrier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_carrier`
--

LOCK TABLES `sms_carrier` WRITE;
/*!40000 ALTER TABLE `sms_carrier` DISABLE KEYS */;
INSERT INTO `sms_carrier` (`id`, `title`, `email`, `status`) VALUES (1,'T-Mobile','tmomail.net',0),(2,'Virgin Mobile','vmobl.com',0),(3,'Cingular1','cingularme.com',1),(4,'Sprint','messaging.sprintpcs.com',0),(5,'Verizon','vtext.com',0),(6,'Nextel','messaging.nextel.com',0),(8,'ATT','txt.att.net',1);
/*!40000 ALTER TABLE `sms_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_network`
--

DROP TABLE IF EXISTS `social_network`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_network` (
  `User_ID` int(11) NOT NULL DEFAULT '0',
  `Friend_ID` int(11) NOT NULL DEFAULT '0',
  `Status` enum('P','A') NOT NULL DEFAULT 'P',
  PRIMARY KEY (`User_ID`,`Friend_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_network`
--

LOCK TABLES `social_network` WRITE;
/*!40000 ALTER TABLE `social_network` DISABLE KEYS */;
INSERT INTO `social_network` (`User_ID`, `Friend_ID`, `Status`) VALUES (14861,14651,'A'),(14862,14651,'P'),(14651,14861,'A'),(14877,14876,'A'),(14876,14877,'A'),(14864,14651,'A'),(14651,14864,'A'),(14840,14859,'P'),(14651,14876,'P'),(14651,14872,'P'),(14651,14869,'P'),(14651,14865,'P');
/*!40000 ALTER TABLE `social_network` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spamwords`
--

DROP TABLE IF EXISTS `spamwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spamwords` (
  `SpamWord_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SpamWord` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`SpamWord_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spamwords`
--

LOCK TABLES `spamwords` WRITE;
/*!40000 ALTER TABLE `spamwords` DISABLE KEYS */;
INSERT INTO `spamwords` (`SpamWord_ID`, `SpamWord`) VALUES (1,'president'),(2,' late husband'),(3,'assassination'),(4,'transaction'),(5,'security company'),(6,'sealed trunk'),(7,'BANK ACCOUNT'),(8,'MILLION US DOLLARS'),(9,'your commission'),(10,'US$'),(11,'million'),(12,'deposit'),(13,'$10,000'),(14,'West Africa'),(15,'Nigeria'),(16,'Ivory Coast'),(17,'ivory coast'),(18,'shipping cost'),(19,'USD'),(20,'your assitance'),(21,'urgent business'),(22,'Nigerian telecommunication Plc'),(23,'SUCCESSFUL TRANSFER'),(24,'bank'),(25,'assitance'),(26,'transfer'),(27,'money'),(28,'assist'),(29,'deposit'),(30,'SUCCESSFUL TRANSFER'),(31,'nigeria');
/*!40000 ALTER TABLE `spamwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories`
--

DROP TABLE IF EXISTS `stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stories` (
  `story_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `body` mediumtext,
  PRIMARY KEY (`story_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories`
--

LOCK TABLES `stories` WRITE;
/*!40000 ALTER TABLE `stories` DISABLE KEYS */;
INSERT INTO `stories` (`story_id`, `title`, `body`) VALUES (26,'Test','This is a sample story.');
/*!40000 ALTER TABLE `stories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` (`id`, `tag`) VALUES (36,'test'),(37,''),(38,'hello'),(39,'houston'),(40,'dating'),(41,'women'),(42,'bars'),(43,'clubs'),(44,'jobs'),(45,'searching'),(46,'dates'),(47,'video');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_links`
--

DROP TABLE IF EXISTS `tag_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_links` (
  `tag_id` int(11) NOT NULL DEFAULT '0',
  `ent_id` int(11) NOT NULL DEFAULT '0',
  `ent_type` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`tag_id`,`ent_id`,`ent_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_links`
--

LOCK TABLES `tag_links` WRITE;
/*!40000 ALTER TABLE `tag_links` DISABLE KEYS */;
INSERT INTO `tag_links` (`tag_id`, `ent_id`, `ent_type`) VALUES (36,43,'blog'),(38,41,'blog'),(39,41,'blog'),(40,40,'blog'),(40,42,'blog'),(41,40,'blog'),(42,40,'blog'),(43,40,'blog'),(44,42,'blog'),(45,42,'blog'),(46,42,'blog'),(47,1285,'video');
/*!40000 ALTER TABLE `tag_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmp_adverts`
--

DROP TABLE IF EXISTS `tmp_adverts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_adverts` (
  `adv_userid` int(11) NOT NULL DEFAULT '0',
  `adv_username` varchar(30) NOT NULL DEFAULT '',
  `adv_smoker` varchar(250) DEFAULT NULL,
  `adv_children` varchar(250) DEFAULT NULL,
  `adv_comment` text,
  `adv_location` varchar(250) DEFAULT NULL,
  `adv_countryid` int(11) NOT NULL DEFAULT '0',
  `adv_stateid` int(11) NOT NULL DEFAULT '0',
  `adv_cityid` int(11) NOT NULL DEFAULT '0',
  `adv_height` varchar(15) DEFAULT NULL,
  `adv_marital` varchar(250) DEFAULT NULL,
  `adv_bodytype` varchar(250) DEFAULT NULL,
  `adv_ethnicity` varchar(250) DEFAULT NULL,
  `adv_religion` varchar(250) DEFAULT NULL,
  `adv_sex` char(1) DEFAULT NULL,
  `adv_seekmen` char(1) DEFAULT NULL,
  `adv_seekwmn` char(1) DEFAULT NULL,
  `adv_seekcpl` char(1) DEFAULT NULL,
  `adv_seeking` varchar(250) DEFAULT NULL,
  `adv_picture` varchar(75) DEFAULT NULL,
  `adv_dob` date DEFAULT NULL,
  `adv_approved` int(11) DEFAULT NULL,
  `adv_agency` varchar(7) DEFAULT NULL,
  `adv_createdate` datetime DEFAULT NULL,
  `adv_title` varchar(30) DEFAULT NULL,
  `adv_education` varchar(250) DEFAULT NULL,
  `adv_income` varchar(250) DEFAULT NULL,
  `adv_profession` varchar(250) DEFAULT NULL,
  `adv_expiredate` date DEFAULT NULL,
  `adv_views` int(3) DEFAULT '0',
  `adv_zipcode` varchar(5) DEFAULT NULL,
  `adv_paused` enum('Y','N') NOT NULL DEFAULT 'N',
  `adv_rejectreason` varchar(255) NOT NULL DEFAULT '',
  `adv_eyecolor` varchar(250) NOT NULL DEFAULT '',
  `adv_haircolor` varchar(250) NOT NULL DEFAULT '',
  `adv_drink` varchar(250) NOT NULL DEFAULT '',
  `adv_ip` varchar(255) NOT NULL DEFAULT '',
  `block_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`adv_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp_adverts`
--

LOCK TABLES `tmp_adverts` WRITE;
/*!40000 ALTER TABLE `tmp_adverts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmp_adverts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmp_mymatch`
--

DROP TABLE IF EXISTS `tmp_mymatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_mymatch` (
  `mym_userid` int(11) NOT NULL DEFAULT '0',
  `mym_gender` varchar(255) NOT NULL DEFAULT '',
  `mym_smoker` varchar(15) DEFAULT NULL,
  `mym_comment` text,
  `mym_minheight` varchar(15) DEFAULT NULL,
  `mym_maxheight` varchar(15) DEFAULT NULL,
  `mym_bodytype` varchar(15) DEFAULT NULL,
  `mym_agemin` tinyint(4) DEFAULT NULL,
  `mym_agemax` tinyint(4) DEFAULT NULL,
  `mym_relationship` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`mym_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp_mymatch`
--

LOCK TABLES `tmp_mymatch` WRITE;
/*!40000 ALTER TABLE `tmp_mymatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmp_mymatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userplane_banned_chat`
--

DROP TABLE IF EXISTS `userplane_banned_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userplane_banned_chat` (
  `userid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userplane_banned_chat`
--

LOCK TABLES `userplane_banned_chat` WRITE;
/*!40000 ALTER TABLE `userplane_banned_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `userplane_banned_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userplane_blocked`
--

DROP TABLE IF EXISTS `userplane_blocked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userplane_blocked` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `targetuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`,`targetuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userplane_blocked`
--

LOCK TABLES `userplane_blocked` WRITE;
/*!40000 ALTER TABLE `userplane_blocked` DISABLE KEYS */;
/*!40000 ALTER TABLE `userplane_blocked` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userplane_blocked_chat`
--

DROP TABLE IF EXISTS `userplane_blocked_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userplane_blocked_chat` (
  `userid` mediumint(9) NOT NULL DEFAULT '0',
  `targetuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`,`targetuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userplane_blocked_chat`
--

LOCK TABLES `userplane_blocked_chat` WRITE;
/*!40000 ALTER TABLE `userplane_blocked_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `userplane_blocked_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userplane_friends`
--

DROP TABLE IF EXISTS `userplane_friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userplane_friends` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `targetuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`,`targetuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userplane_friends`
--

LOCK TABLES `userplane_friends` WRITE;
/*!40000 ALTER TABLE `userplane_friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `userplane_friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userplane_friends_chat`
--

DROP TABLE IF EXISTS `userplane_friends_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userplane_friends_chat` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `targetuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`,`targetuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userplane_friends_chat`
--

LOCK TABLES `userplane_friends_chat` WRITE;
/*!40000 ALTER TABLE `userplane_friends_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `userplane_friends_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userplane_pending_ic`
--

DROP TABLE IF EXISTS `userplane_pending_ic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userplane_pending_ic` (
  `originatingUserID` int(11) NOT NULL DEFAULT '0',
  `destinationUserID` int(11) NOT NULL DEFAULT '0',
  `openedWindowAt` datetime DEFAULT NULL,
  `insertedAt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userplane_pending_ic`
--

LOCK TABLES `userplane_pending_ic` WRITE;
/*!40000 ALTER TABLE `userplane_pending_ic` DISABLE KEYS */;
/*!40000 ALTER TABLE `userplane_pending_ic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userplane_room_chat`
--

DROP TABLE IF EXISTS `userplane_room_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userplane_room_chat` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userplane_room_chat`
--

LOCK TABLES `userplane_room_chat` WRITE;
/*!40000 ALTER TABLE `userplane_room_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `userplane_room_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userplane_room_chat_member`
--

DROP TABLE IF EXISTS `userplane_room_chat_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userplane_room_chat_member` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userplane_room_chat_member`
--

LOCK TABLES `userplane_room_chat_member` WRITE;
/*!40000 ALTER TABLE `userplane_room_chat_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `userplane_room_chat_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `vid_id` int(11) NOT NULL AUTO_INCREMENT,
  `vid_userid` int(11) NOT NULL DEFAULT '0',
  `vid_video` varchar(75) NOT NULL DEFAULT '',
  `vid_private` enum('Y','N') NOT NULL DEFAULT 'N',
  `vid_title` varchar(60) NOT NULL DEFAULT '',
  `vid_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vid_description` varchar(255) NOT NULL DEFAULT '',
  `vid_status` enum('new','rejected','converted') NOT NULL DEFAULT 'new',
  `vid_rating` float NOT NULL DEFAULT '0',
  `vid_views` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid_id`),
  UNIQUE KEY `vid_id` (`vid_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1286 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` (`vid_id`, `vid_userid`, `vid_video`, `vid_private`, `vid_title`, `vid_date`, `vid_description`, `vid_status`, `vid_rating`, `vid_views`) VALUES (1285,14651,'mp4','N','Sample Video','2019-04-05 20:38:02','Just a sample video file.','new',0,4);
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vlistbox`
--

DROP TABLE IF EXISTS `vlistbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vlistbox` (
  `lst_recid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lst_type` char(3) NOT NULL DEFAULT '',
  `lst_value` varchar(50) NOT NULL DEFAULT '',
  `lst_base` enum('Y','N') NOT NULL DEFAULT 'Y',
  `lst_adult` enum('Y','N') NOT NULL DEFAULT 'Y',
  `lst_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lst_recid`)
) ENGINE=MyISAM AUTO_INCREMENT=282 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vlistbox`
--

LOCK TABLES `vlistbox` WRITE;
/*!40000 ALTER TABLE `vlistbox` DISABLE KEYS */;
INSERT INTO `vlistbox` (`lst_recid`, `lst_type`, `lst_value`, `lst_base`, `lst_adult`, `lst_order`) VALUES (1,'CHL','No','Y','Y',30),(2,'CHL','Yes','Y','Y',20),(3,'CHL','Not stated','Y','Y',10),(4,'RLG','Not stated','Y','Y',10),(5,'RLG','None','Y','Y',20),(6,'RLG','Agnostic','Y','Y',30),(7,'RLG','Atheist','Y','Y',40),(8,'RLG','Baha i','Y','Y',50),(9,'RLG','Baptist','Y','Y',60),(10,'RLG','Buddhist','Y','Y',70),(11,'RLG','Catholic','Y','Y',80),(12,'RLG','Christian','Y','Y',90),(13,'RLG','Hindu','Y','Y',100),(14,'RLG','Jewish','Y','Y',110),(15,'RLG','Lutheran','Y','Y',120),(16,'RLG','Methodist','Y','Y',130),(17,'RLG','Mormon (LDS)','Y','Y',140),(18,'RLG','Muslim','Y','Y',150),(19,'RLG','New Age/Spiritualist','Y','Y',160),(20,'RLG','Pagan/Wiccan','Y','Y',170),(21,'RLG','Protestant/Anglican','Y','Y',180),(22,'RLG','Voodoo','Y','Y',190),(23,'RLG','Other Religion','Y','Y',200),(45,'ETH','Native American','Y','Y',70),(44,'ETH','Middle Eastern','Y','Y',30),(43,'ETH','Indian','Y','Y',40),(42,'ETH','Hispanic','Y','Y',50),(41,'ETH','European','Y','Y',60),(40,'ETH','Caucasian','Y','Y',20),(39,'ETH','Asia/Pacific','Y','Y',80),(38,'ETH','African American','Y','Y',90),(37,'ETH','African','Y','Y',100),(36,'ETH','Not stated','Y','Y',10),(46,'ETH','South Asian','Y','Y',110),(47,'ETH','Mixed Race','Y','Y',120),(48,'ETH','Other Ethnicity','Y','Y',130),(49,'EMP','Not stated','Y','Y',10),(50,'EMP','Unemployed','Y','Y',20),(51,'EMP','Student','Y','Y',30),(52,'EMP','Homemaker','Y','Y',40),(53,'EMP','Part-time','Y','Y',50),(54,'EMP','Full-time','Y','Y',60),(55,'EMP','Self-employed','Y','Y',70),(56,'EMP','Retired','Y','Y',80),(57,'EMP','Other','Y','Y',90),(58,'EDU','Not stated','Y','Y',10),(59,'EDU','Some High School','Y','Y',20),(60,'EDU','High School Grad','Y','Y',30),(61,'EDU','Some College','Y','Y',40),(62,'EDU','College Grad','Y','Y',50),(63,'EDU','Post-Graduate','Y','Y',60),(64,'INC','Not stated','Y','Y',10),(65,'INC','00 - 20k','Y','Y',20),(66,'INC','21 - 40k','Y','Y',30),(67,'INC','41 - 60k','Y','Y',40),(68,'INC','61 - 80k','Y','Y',50),(69,'INC','Above 100k','Y','Y',60),(70,'MRT','Not stated','Y','Y',10),(71,'MRT','Single','Y','Y',20),(72,'MRT','Married','Y','Y',30),(73,'MRT','Seperated','Y','Y',40),(74,'MRT','Divorced','Y','Y',50),(75,'MRT','Widowed','Y','Y',60),(76,'SMK','Not stated','Y','Y',10),(78,'SMK','Social','Y','Y',30),(79,'SMK','Light','Y','Y',40),(80,'SMK','Average','Y','Y',50),(81,'SMK','Heavy','Y','Y',60),(82,'SMK','Cigars','Y','Y',70),(83,'SMK','Pipe','Y','Y',80),(84,'SKG','Friendship','Y','Y',20),(85,'SKG','Occasional','Y','Y',80),(99,'SKG','Marriage','Y','Y',40),(87,'SKG','Intimate','Y','Y',50),(88,'SKG','Short-term','Y','Y',60),(89,'SKG','Long-term','Y','Y',70),(90,'SKG','E-mail chat','Y','Y',10),(91,'BDY','Not stated','Y','Y',10),(92,'BDY','Petite','Y','Y',20),(93,'BDY','Slim','Y','Y',30),(94,'BDY','Athletic','Y','Y',40),(95,'BDY','Average','Y','Y',50),(96,'BDY','Large','Y','Y',60),(97,'BDY','Very large','Y','Y',70),(98,'SMK','No','Y','Y',20),(213,'FDT','Hispanic','Y','Y',40),(212,'FDT','French','Y','Y',30),(211,'FDT','BBQ','Y','Y',20),(210,'FDT','Asian','Y','Y',10),(104,'PST','Adventurous','Y','Y',10),(105,'PST','Easygoing','Y','Y',20),(106,'PST','Humourous','Y','Y',30),(107,'PST','Introvert','Y','Y',40),(108,'PST','Outgoing','Y','Y',50),(109,'PST','Outspoken','Y','Y',60),(110,'PST','Playful','Y','Y',70),(111,'PST','Romantic','Y','Y',80),(112,'PST','Sensitive','Y','Y',90),(113,'PST','Sensual','Y','Y',100),(114,'PST','Shy','Y','Y',110),(115,'PST','Warm hearted','Y','Y',120),(116,'PST','Wild','Y','Y',130),(117,'PHI','Ambitious','Y','Y',10),(118,'PHI','Idealistic','Y','Y',20),(119,'PHI','Independent','Y','Y',30),(120,'PHI','Optimistic','Y','Y',40),(121,'PHI','Pessimistic','Y','Y',50),(122,'PHI','Practical','Y','Y',60),(123,'PHI','Rebellious','Y','Y',70),(124,'PHI','Spiritual','Y','Y',80),(125,'PHI','Traditional','Y','Y',90),(126,'PHI','Unconventional','Y','Y',100),(127,'PHI','Virtuous','Y','Y',110),(128,'SOG','Average','Y','Y',10),(129,'SOG','Country folks','Y','Y',20),(130,'SOG','Creative people','Y','Y',30),(131,'SOG','Classy people','Y','Y',40),(132,'SOG','Technical','Y','Y',50),(133,'SOG','Cultured people','Y','Y',60),(134,'SOG','Entreprenuers','Y','Y',70),(135,'SOG','Intellectuals','Y','Y',80),(136,'SOG','Professionals','Y','Y',90),(137,'SOG','Socialites','Y','Y',100),(138,'GLS','Career','Y','Y',10),(139,'GLS','Family','Y','Y',20),(140,'GLS','Fame','Y','Y',30),(141,'GLS','Fun','Y','Y',40),(142,'GLS','Knowledge','Y','Y',50),(143,'GLS','Serenity','Y','Y',60),(144,'GLS','Wealth','Y','Y',70),(145,'HBS','Animals','Y','Y',10),(146,'HBS','Art','Y','Y',20),(147,'HBS','Automobiles','Y','Y',30),(148,'HBS','Boating','Y','Y',40),(149,'HBS','Boardgames','Y','Y',50),(150,'HBS','Cards','Y','Y',60),(151,'HBS','Computers','Y','Y',70),(152,'HBS','Cooking','Y','Y',80),(153,'HBS','Gardening','Y','Y',90),(154,'HBS','Motorcycles','Y','Y',100),(155,'HBS','Music','Y','Y',110),(156,'HBS','Needlework','Y','Y',120),(157,'HBS','Photography','Y','Y',130),(158,'HBS','Poetry','Y','Y',140),(159,'HBS','Reading','Y','Y',150),(160,'HBS','Outdoors','Y','Y',160),(161,'HBS','Theater','Y','Y',170),(162,'HBS','Travel','Y','Y',180),(163,'HBS','Tv/movies','Y','Y',190),(164,'HBS','Writing','Y','Y',200),(165,'SPT','Aerobics','Y','Y',10),(166,'SPT','Archery','Y','Y',20),(167,'SPT','Athletics','Y','Y',30),(168,'SPT','Badminton','Y','Y',40),(169,'SPT','Bowling','Y','Y',50),(170,'SPT','Bicycling','Y','Y',60),(171,'SPT','Body shaping','Y','Y',70),(172,'SPT','Climbing','Y','Y',80),(173,'SPT','Cricket','Y','Y',90),(174,'SPT','Dancing','Y','Y',100),(175,'SPT','Golf','Y','Y',110),(176,'SPT','Hiking','Y','Y',120),(177,'SPT','Jogging','Y','Y',130),(178,'SPT','Kabadi','Y','Y',140),(179,'SPT','Lacrosse','Y','Y',150),(180,'SPT','Martial arts','Y','Y',160),(181,'SPT','Motor sports','Y','Y',170),(182,'SPT','Riding','Y','Y',180),(183,'SPT','Rugby','Y','Y',190),(184,'SPT','Skating','Y','Y',200),(185,'SPT','Skiing','Y','Y',210),(186,'SPT','Skydiving','Y','Y',220),(187,'SPT','Swimming','Y','Y',230),(188,'SPT','Soccer','Y','Y',240),(189,'SPT','Tennis','Y','Y',250),(190,'SPT','Volleyball','Y','Y',260),(191,'SPT','Walking','Y','Y',270),(192,'SPT','Water sports','Y','Y',280),(193,'MSC','Alternative','Y','Y',10),(194,'MSC','Classical','Y','Y',20),(195,'MSC','Blues','Y','Y',30),(196,'MSC','Country','Y','Y',40),(197,'MSC','Dance/disco','Y','Y',50),(198,'MSC','Easy listening','Y','Y',60),(199,'MSC','Folk','Y','Y',70),(200,'MSC','Gospel','Y','Y',80),(201,'MSC','Jazz','Y','Y',90),(202,'MSC','Metal','Y','Y',100),(203,'MSC','Modern','Y','Y',110),(204,'MSC','New-age','Y','Y',120),(205,'MSC','R & B','Y','Y',130),(206,'MSC','Reggae','Y','Y',140),(207,'MSC','Rap','Y','Y',150),(208,'MSC','Rock','Y','Y',160),(209,'MSC','Soul','Y','Y',170),(214,'FDT','Italian','Y','Y',50),(215,'FDT','Take-away','Y','Y',60),(216,'FDT','Health foods','Y','Y',70),(217,'FDT','Sea food','Y','Y',80),(218,'FDT','Vegan food','Y','Y',90),(219,'FDT','Vegetarian','Y','Y',100),(220,'SKG','Activity Pals','Y','Y',30),(233,'SKG','Casual Encounters','Y','Y',90),(232,'CHL','Maybe','Y','Y',40),(234,'BDY','Muscular','Y','Y',80),(235,'BDY','Bodybuilder','Y','Y',90),(259,'DNK','Yes frequently','Y','Y',20),(260,'DNK','Yes sometimes','Y','Y',30),(261,'DNK','Yes on special occasions','Y','Y',40),(262,'DNK','No','Y','Y',50),(263,'DNK','Not stated','Y','Y',10),(264,'EYE','Gray','Y','Y',20),(265,'EYE','Green','Y','Y',30),(266,'HAR','Brown','Y','Y',20),(267,'HAR','Blonde','Y','Y',30),(269,'EYE','Blue','Y','Y',40),(270,'EYE','Hazel','Y','Y',50),(271,'EYE','Brown','Y','Y',60),(272,'EYE','Black','Y','Y',70),(273,'HAR','Red','Y','Y',40),(274,'HAR','Gray','Y','Y',50),(275,'HAR','Black','Y','Y',60),(276,'EYE','Not stated','Y','Y',10),(277,'HAR','Not stated','Y','Y',10);
/*!40000 ALTER TABLE `vlistbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vlistbox_values`
--

DROP TABLE IF EXISTS `vlistbox_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vlistbox_values` (
  `lst_recid` int(11) NOT NULL DEFAULT '0',
  `lang_id` char(3) NOT NULL DEFAULT '',
  `lst_value` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`lst_recid`,`lang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vlistbox_values`
--

LOCK TABLES `vlistbox_values` WRITE;
/*!40000 ALTER TABLE `vlistbox_values` DISABLE KEYS */;
INSERT INTO `vlistbox_values` (`lst_recid`, `lang_id`, `lst_value`) VALUES (90,'EN','E-mail chat');
/*!40000 ALTER TABLE `vlistbox_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whos_online`
--

DROP TABLE IF EXISTS `whos_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whos_online` (
  `customer_id` int(11) DEFAULT NULL,
  `full_name` varchar(64) NOT NULL DEFAULT '',
  `session_id` varchar(128) NOT NULL DEFAULT '',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `time_entry` varchar(14) NOT NULL DEFAULT '',
  `time_last_click` varchar(14) NOT NULL DEFAULT '',
  `last_page_url` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whos_online`
--

LOCK TABLES `whos_online` WRITE;
/*!40000 ALTER TABLE `whos_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `whos_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zipcodes`
--

DROP TABLE IF EXISTS `zipcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zipcodes` (
  `zip_zipcode` varchar(8) NOT NULL DEFAULT '',
  `zip_codetype` char(1) NOT NULL DEFAULT '',
  `zip_city` varchar(75) NOT NULL DEFAULT '',
  `zip_citytype` char(1) NOT NULL DEFAULT '',
  `zip_state` varchar(75) NOT NULL DEFAULT '',
  `zip_statecode` char(2) NOT NULL DEFAULT '',
  `zip_areacode` varchar(5) NOT NULL DEFAULT '',
  `zip_latitude` double(9,4) NOT NULL DEFAULT '0.0000',
  `zip_longitude` double(9,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`zip_zipcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zipcodes`
--

LOCK TABLES `zipcodes` WRITE;
/*!40000 ALTER TABLE `zipcodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `zipcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'knowled5_maindb'
--

--
-- Dumping routines for database 'knowled5_maindb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-14 11:28:16
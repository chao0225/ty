-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2020-04-29 12:29:52
-- 服务器版本： 10.1.38-MariaDB
-- PHP 版本： 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


SET NAMES UTF8;
DROP DATABASE IF EXISTS illustration;
#创建数据illustration
CREATE DATABASE illustration CHARSET=UTF8;
#进入数据库illustration
USE illustration;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `illustration`
--

-- --------------------------------------------------------

--
-- 表的结构 `active_competition`
--

CREATE TABLE `active_competition` (
  `aid` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `pic` varchar(256) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `result` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `active_competition`
--

INSERT INTO `active_competition` (`aid`, `title`, `pic`, `start`, `end`, `result`) VALUES
(1, '笔绘宫心「宫廷计」手游同人插画漫画征集大...', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/jyx-active/pic_k7mvt9r2s0mj51a421yrb8w3vcti5914.jpg', '2020-09-28 00:00:00', '2020-11-28 00:00:00', 1),
(2, '蒙牛真果粒一夏变美粒', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/jyx-active/pic_wrrfrm5gk1n51apdgxynt11ugktn1ty9.jpg', '2020-02-28 00:00:00', '2020-04-08 00:00:00', 0),
(3, '剑网3九周年同人嘉年华', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/jyx-active/pic_t9jrnopzuxrdr7wgz2v9ikezf8b0of4t.jpg', '2020-09-28 00:00:00', '2020-10-08 00:00:00', 0),
(4, '英雄归来像素风绘画大赛', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/jyx-active/pic_iqcfax7afzwqhrr8lwgvcjfegcsngc6o.jpg', '2020-09-28 00:00:00', '2020-10-08 00:00:00', 0),
(5, '少年三国志创三国计划同人绘画大赛-与...', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/jyx-active/pic_m6ab71zdnfx83j5pwtywlkkfik0mmynp.jpg', '2020-09-28 00:00:00', '2020-10-08 00:00:00', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ch_user`
--

CREATE TABLE `ch_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ch_user`
--

INSERT INTO `ch_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`) VALUES
(1, 'dingding', '123456', 'ding@qq.com', '13511011000', 'img/avatar/default.png', '丁春秋', 0),
(2, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '当当喵', 1),
(3, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', 1);

-- --------------------------------------------------------

--
-- 表的结构 `gracg_carousel`
--

CREATE TABLE `gracg_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gracg_carousel`
--

INSERT INTO `gracg_carousel` (`cid`, `img`, `title`, `href`) VALUES
(1, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/banner/1.jpg', '轮播广告1', 'blog.html'),
(2, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/banner/2.jpg', '轮播广告2', 'blog.html'),
(3, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/banner/3.jpg', '轮播广告3', 'blog.html'),
(4, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/banner/4.jpg', '轮播广告4', 'blog.html'),
(5, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/banner/5.jpg', '轮播广告5', 'blog.html'),
(6, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/banner/6.jpg', '轮播广告6', 'blog.html'),
(7, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/banner/7.jpg', '轮播广告7', 'blog.html');

-- --------------------------------------------------------

--
-- 表的结构 `gracg_news`
--

CREATE TABLE `gracg_news` (
  `nid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gracg_news`
--

INSERT INTO `gracg_news` (`nid`, `img`, `title`, `href`) VALUES
(1, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/1.png', '无题', 'index.html'),
(2, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/2.png', '无题', 'index.html'),
(3, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/3.png', '无题', 'index.html'),
(4, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/4.png', '无题', 'index.html'),
(5, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/5.png', '无题', 'index.html'),
(6, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/6.png', '无题', 'index.html'),
(7, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/7.png', '无题', 'index.html'),
(8, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/8.png', '无题', 'index.html'),
(9, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/9.png', '无题', 'index.html'),
(10, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/10.png', '无题', 'index.html'),
(11, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/11.png', '无题', 'index.html'),
(12, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/12.png', '无题', 'index.html'),
(13, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/13.png', '无题', 'index.html'),
(14, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/14.png', '无题', 'index.html'),
(15, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/15.png', '无题', 'index.html'),
(16, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/16.png', '无题', 'index.html'),
(17, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/17.png', '无题', 'index.html'),
(18, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/18.png', '无题', 'index.html'),
(19, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/19.png', '无题', 'index.html'),
(20, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/20.png', '无题', 'index.html'),
(21, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/21.png', '无题', 'index.html'),
(22, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/22.png', '无题', 'index.html'),
(23, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/23.png', '无题', 'index.html'),
(24, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/24.png', '无题', 'index.html'),
(25, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/25.png', '无题', 'index.html'),
(26, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/26.png', '无题', 'index.html'),
(27, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/27.png', '无题', 'index.html'),
(28, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/28.png', '无题', 'index.html'),
(29, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/29.png', '无题', 'index.html'),
(30, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/30.png', '无题', 'index.html'),
(31, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/31.png', '无题', 'index.html'),
(32, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/32.png', '无题', 'index.html'),
(33, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/33.png', '无题', 'index.html'),
(34, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/34.png', '无题', 'index.html'),
(35, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/35.png', '无题', 'index.html'),
(36, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/36.png', '无题', 'index.html'),
(37, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/37.png', '无题', 'index.html'),
(38, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/38.png', '无题', 'index.html'),
(39, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/39.png', '无题', 'index.html'),
(40, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/40.png', '无题', 'index.html'),
(41, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/41.png', '无题', 'index.html'),
(42, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/42.png', '无题', 'index.html'),
(43, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/43.png', '无题', 'index.html'),
(44, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/44.png', '无题', 'index.html'),
(45, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/45.png', '无题', 'index.html'),
(46, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/46.png', '无题', 'index.html'),
(47, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/47.png', '无题', 'index.html'),
(48, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/48.png', '无题', 'index.html'),
(49, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/49.png', '无题', 'index.html'),
(50, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/50.png', '无题', 'index.html'),
(51, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/51.png', '无题', 'index.html'),
(52, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/52.png', '无题', 'index.html'),
(53, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/53.png', '无题', 'index.html'),
(54, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/54.png', '无题', 'index.html'),
(55, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/55.png', '无题', 'index.html'),
(56, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/56.png', '无题', 'index.html'),
(57, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/57.png', '无题', 'index.html'),
(58, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/58.png', '无题', 'index.html'),
(59, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/59.png', '无题', 'index.html'),
(60, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/60.png', '无题', 'index.html'),
(61, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/61.png', '无题', 'index.html'),
(62, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/62.png', '无题', 'index.html'),
(63, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/newworks/63.png', '无题', 'index.html');

-- --------------------------------------------------------

--
-- 表的结构 `gracg_works`
--

CREATE TABLE `gracg_works` (
  `wid` int(11) NOT NULL,
  `img_hot` varchar(128) DEFAULT NULL,
  `count` varchar(128) DEFAULT NULL,
  `img` varchar(128) DEFAULT NULL,
  `img_href` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `see` varchar(16) DEFAULT NULL,
  `love` varchar(16) DEFAULT NULL,
  `msg` varchar(16) DEFAULT NULL,
  `img_sm` varchar(128) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `name_href` varchar(128) DEFAULT NULL,
  `tags1` varchar(16) DEFAULT NULL,
  `tags1_href` varchar(128) DEFAULT NULL,
  `tags2` varchar(16) DEFAULT NULL,
  `tags2_href` varchar(128) DEFAULT NULL,
  `tags3` varchar(16) DEFAULT NULL,
  `tags3_href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gracg_works`
--

INSERT INTO `gracg_works` (`wid`, `img_hot`, `count`, `img`, `img_href`, `title`, `see`, `love`, `msg`, `img_sm`, `name`, `name_href`, `tags1`, `tags1_href`, `tags2`, `tags2_href`, `tags3`, `tags3_href`) VALUES
(1, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/hot.png', '6', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/1.png', 'index.html', '无题', '1557', '28', '0', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/1.1.png', 'INRAIN', 'index.html', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/hot.png', '1', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/2.png', 'index.html', '两个人物设定', '431', '5', '1', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/2.1.png', '耙齿山泉', 'index.html', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/hot.png', '12', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/3.png', 'index.html', '圣城', '1352', '29', '4', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/3.1.png', '耙齿山泉', 'index.html', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/hot.png', '1', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/4.png', 'index.html', '世界观自设', '361', '6', '0', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/4.1.png', '超冷静', 'index.html', '科幻', 'index.html', '蒸汽朋克', 'index.html', NULL, NULL),
(5, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/hot.png', '6', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/5.png', 'index.html', '暗星', '284', '3', '0', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/5.1.png', '麦田里的草帽人', 'index.html', '魂系', 'index.html', '黑暗之魂', 'index.html', NULL, NULL),
(6, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/hot.png', '6', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/6.png', 'index.html', '水彩练习——2号', '1557', '28', '0', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/6.1.png', '修道的嗷呜', 'index.html', '水彩', 'index.html', '涂鸦', 'index.html', '手绘', 'index.html'),
(7, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/hot.png', '3', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/7.png', 'index.html', '天空岛', '1557', '28', '0', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/7.1.png', '画画的summer', 'index.html', '和纸胶带', 'index.html', NULL, NULL, NULL, NULL),
(8, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/hot.png', '1', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/8.png', 'index.html', '画到不喜欢科幻［系列］', '1557', '28', '0', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/8.1.png', 'Spark Warrgon', 'index.html', '科幻', 'index.html', '赛博朋克', 'index.html', '飞船', 'index.html'),
(9, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/hot.png', '3', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/9.png', 'index.html', '尝试了新的嗑药风格 Synt...', '1557', '28', '0', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/9.1.png', 'Spark Warrgon', 'index.html', '科幻', 'index.html', '复古', 'index.html', '霓虹', 'index.html'),
(10, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/hot.png', '3', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/10.png', 'index.html', '水彩生活图鉴', '1557', '28', '0', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/10.1.png', '木壳人', 'index.html', '水彩教科书', 'index.html', '水彩插画', 'index.html', NULL, NULL),
(11, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/hot.png', '6', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/11.png', 'index.html', '小人国——给小女孩的书4', '1557', '28', '0', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/11.1.png', '罗德罗德罗德西', 'index.html', '水彩', 'index.html', '手绘', 'index.html', '绘本', 'index.html');

-- --------------------------------------------------------

--
-- 表的结构 `gracg_wrap`
--

CREATE TABLE `gracg_wrap` (
  `wid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gracg_wrap`
--

INSERT INTO `gracg_wrap` (`wid`, `img`, `title`, `href`) VALUES
(1, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/wrap/1.jpg', '插画入门看这里', 'blog.html'),
(2, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/wrap/2.jpg', '抽奖活动开始了，笔绘宫心插画漫画征集大赛', 'blog.html'),
(3, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/wrap/3.jpg', '鹿姐手把手教你手绘', 'blog.html'),
(4, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/wrap/4.jpg', '笔绘宫心「宫廷计」手游同人插画漫画征集大赛', 'blog.html'),
(5, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/wrap/5.jpg', '蒙牛真果粒一夏变美粒', 'blog.html'),
(6, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/wrap/6.jpg', '剑网3九周年同人嘉年华', 'blog.html');

-- --------------------------------------------------------

--
-- 表的结构 `renwu`
--

CREATE TABLE `renwu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `subdata` varchar(25) DEFAULT NULL,
  `people` int(11) DEFAULT NULL,
  `usaged` varchar(255) DEFAULT NULL,
  `classd` varchar(100) DEFAULT NULL,
  `styled` varchar(100) DEFAULT NULL,
  `utime` varchar(25) DEFAULT NULL,
  `price` varchar(25) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `request` varchar(50) DEFAULT NULL,
  `need` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `renwu`
--

INSERT INTO `renwu` (`id`, `title`, `uname`, `subdata`, `people`, `usaged`, `classd`, `styled`, `utime`, `price`, `contact`, `request`, `need`) VALUES
(1, '招稳定长期合作色彩小助理', 'isilenar', '2019-8-9', 2, '小说', '插图', '风格不限', '2019-10-28', '100~800', '13245958496', '无', '西安阿卫卫工作室诚招漫画色彩助理。要求对漫画有热情，熟练使用手绘板及绘图软件，对工作有责任心有责任心有责任心！有意者请将个人作品投放至邮箱 421996994@qq.com！风格参考如下！'),
(2, '诚招漫画上色全包助手', 'linda', '2019-7-14', 5, '漫画', '其他', '风格不限', '2019-11-28', '100~500', '15498561282', '无', '要求：\r\n1.少年漫上色全包助手。\r\n2.有志向谦虚学习，合作能力强，认真对待工作。\r\n3.要求一天内至少能够完成3p上色，有效率，不拖稿，不玩突然消失，有责任感。\r\n4.能接受试稿。\r\n5.风格： 少年漫画上色风格，因为是热血漫画，要求上色风格大气有质感。\r\n6.稿酬：100（后期有涨幅空间）\r\n(′▽｀)～有意者可以带三张以上作品加qq：120642833~'),
(3, '插画约稿群欢迎加入', '思奏', '2019-10-9', 2, '其他', '插图', '风格不限', '2019-12-28', '100~2000', '15849512698', '无', '是一个宣传插画约稿的qq群，主要是约插画，群才建起来，人很少，欢迎大家加入群来约稿~~\r\n插画约稿qq群：537251362\r\n进群的童鞋需要改下马甲，画师可以进群建一个自己的相册，可以标出价格方便编辑约稿\r\n进群改马甲：\r\n编辑约稿——xxx\r\n画师——xxx'),
(4, '儿童动物故事绘本', '半日满夏', '2019-10-9', 0, '小说', '画册', '风格不限', '2019-10-29', '150~800', 'QQ:308415812', '无', '是一家集图书选题策划、设计制作、图书销售、版权咨询为一体的综合出版公司。品类分为低幼启蒙、绘本、益智游戏、儿童文学四大方向。已经引进的图书版权涵盖美国、英国、法国 、瑞士、西班牙、日本、韩国、泰国等多个国家。现在单位原创书急寻长期合作插图作者。最近需要画一套动物故事的书，价格详议。请加我工作qq 308472910 备注：涂鸦王国'),
(5, '儿童插画扁平风格', '快捷键', '2019-9-9', 10, '小说', '插图', '风格不限', '2019-11-28', '200~500', 'QQ:318415812', '扁平偏矢量风格', '需要绘制57张插图\r\n由于项目计划和工作量偏大，所以个人接单请勿扰，期待与儿童插画工作室合作。类别是：名著故事 童话故事等\r\n投稿QQ：3106477768，投稿需要看作品，且需要试稿。'),
(6, '游戏角色恶搞条漫', 'PR-qq', '2019-10-16', 2, '漫画', '宣传', '风格不限', '2019-12-25', '1000~8000', '18785958496', '日式', '由我方提供漫画分镜，画师方完成漫画。\r\n1.人物Q版，偏宅系或者萌系，擅长画可爱少女。\r\n2.漫画表达夸张、恶搞。\r\n3.彩色。\r\n请联系微信号微信theabcmurder并发送近期漫画作品。');


-- --------------------------------------------------------

--
-- 表的结构 `testtable`
--

CREATE TABLE `testtable` (
  `one` int(11) NOT NULL,
  `two` varchar(16) DEFAULT NULL,
  `three` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `testtable`
--

INSERT INTO `testtable` (`one`, `two`, `three`) VALUES
(1, 'ONE1', 'ONE1'),
(2, 'ONE2', 'ONE2'),
(3, 'ONE3', 'ONE3');

-- --------------------------------------------------------

--
-- 表的结构 `zjl_big`
--

CREATE TABLE `zjl_big` (
  `id` int(11) NOT NULL,
  `wid` int(11) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zjl_big`
--

INSERT INTO `zjl_big` (`id`, `wid`, `title`, `img`) VALUES
(1, 0, '【陈翔颖树脂画】宋音系列02号件', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/pic_v0hrytuyzpygdxoz3fw0ly17cigxvuh3.jpg!photo.middle2s.jpg'),
(2, 0, '陈翔颖树脂画宋音系列01', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/pic_dz7rgil2cf8sw5x64koasxo0n19bo2vw.jpg!photo.middle2s.jpg'),
(3, 0, '陈翔颖树脂画宋音系列01', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/pic_m6ty1lh2x8jgotai5yixeiq8ex6pqu3l.jpg!photo.middle2s.jpg'),
(4, 0, '之前DIY的名片架今天拿出来', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/pic_m6ty1lh2x8jgotai5yixeiq8ex6pqu3l.jpg!photo.middle2s.jpg'),
(5, 1, '无题', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/pic1.jpg'),
(6, 1, '无题', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/pic2.jpg'),
(7, 1, '无题', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/pic3.jpg'),
(8, 1, '无题', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/pic4.jpg'),
(9, 2, '厚涂', 'https://piccdn.gracg.com/uploadfile/photo/2019/10/pic_ftz0d6udmmfcdxbvwoox72k6cd8r5hkk.jpg!photo.middle2s.jpg'),
(10, 2, '颜彩', 'https://piccdn.gracg.com/uploadfile/photo/2019/8/pic_i3fd8g5r9c6c7o12qdt7o0apruasopr1.jpg!photo.middle2s.jpg'),
(11, 2, '颜彩', 'https://piccdn.gracg.com/uploadfile/photo/2019/8/pic_qdomgny6ozf7pzl6fih8msytvcyhnr33.jpg!photo.middle2s.jpg'),
(12, 2, '颜彩', 'https://piccdn.gracg.com/uploadfile/photo/2019/8/pic_5dwf1akpl75v2yd8un2bmja78kain0ol.jpg!photo.middle1s.jpg'),
(13, 3, '昨日青空海报之二', 'https://piccdn.gracg.com/uploadfile/photo/2019/10/pic_fdmh952l12tqdlgptgatb1nhzzdxrz8y.jpg!photo.middle1s.jpg'),
(14, 3, '昨日青空先行海报', 'https://piccdn.gracg.com/uploadfile/photo/2019/10/201910281719091840884161.jpeg!photo.middle1s.jpg'),
(15, 3, '真相 只有一个！', 'https://piccdn.gracg.com/uploadfile/photo/2019/10/pic_wm2ms55t6fner1mkg3tdqnx7ws3vh8fn.jpg!photo.middle1s.jpg'),
(16, 3, '真相 只有一个！', 'https://piccdn.gracg.com/uploadfile/photo/2019/10/pic_7uq1d7f9s5jr9vddsn00jah4qy0lgivh.jpg!photo.middle1s.jpg'),
(17, 4, '躺在沙滩上的月亮与星星', 'https://piccdn.gracg.com/uploadfile/photo/2019/10/pic_79e0ll5r7rvzjm7g97eel3887b75vysl.jpg!photo.middle1s.jpg'),
(18, 4, '所谓幸福', 'https://piccdn.gracg.com/uploadfile/photo/2019/10/pic_k95ksbj9ygnvo6y6mfdqj3fzrs0h1q1e.jpg!photo.middle2s.jpg'),
(19, 4, '往事随风，烟消云散', 'https://piccdn.gracg.com/uploadfile/photo/2019/10/pic_bo9hjiamfsl21prg3xlbwwfzb304l2r3.jpg!photo.middle1s.jpg'),
(20, 4, '和她的日常', 'https://piccdn.gracg.com/uploadfile/photo/2019/10/pic_svhcfbp2cuf9xwhejd02dkod652mvu1b.jpg!photo.middle2s.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `zjl_bottom`
--

CREATE TABLE `zjl_bottom` (
  `id` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `look` int(11) DEFAULT NULL,
  `love` int(11) DEFAULT NULL,
  `comment` int(11) DEFAULT NULL,
  `commentTime` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zjl_bottom`
--

INSERT INTO `zjl_bottom` (`id`, `img`, `title`, `look`, `love`, `comment`, `commentTime`) VALUES
(1, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/auto.jfif', '校园故事', 1652, 37, 2, '2019/09/25 14:57'),
(2, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/auto1.jfif', '森林', 3244, 60, 3, '2019/09/08  00:00'),
(3, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/auto2.jfif', '孤独的女孩', 423, 3, 1, '2019/08/28 00:02'),
(4, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/auto3.jfif', '冬季城堡', 396, 4, 0, '2019/08/27 23:43'),
(5, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/auto4.jfif', '遗落的梦', 2707, 32, 1, '2019/08/24 12:37'),
(6, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/auto5.jfif', '匆匆少年', 702, 6, 1, '2019/08/07 15:38'),
(7, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/auto6.jfif', '蓝天白云', 582, 3, 0, '2019/07/08 19:02'),
(8, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/auto7.jfif', '孤寂的夜', 1972, 30, 0, '2019/07/15 10:04'),
(9, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/auto8.jfif', '单纯的小美好', 521, 3, 0, '2019/06/28 19:55'),
(10, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/auto9.jfif', '自行车', 4311, 101, 5, '2019/05/16 10:28');

-- --------------------------------------------------------

--
-- 表的结构 `zjl_comment`
--

CREATE TABLE `zjl_comment` (
  `id` int(11) NOT NULL,
  `wid` int(11) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `commenttime` varchar(32) DEFAULT NULL,
  `comment` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zjl_comment`
--

INSERT INTO `zjl_comment` (`id`, `wid`, `user_name`, `address`, `commenttime`, `comment`) VALUES
(1, 0, 'VInci_dodo', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/50x50.jfif', '2019/10/13 9:00', '年年岁岁花相似，岁岁年年人不同。'),
(2, 0, 'chichi猫12', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/50x50 (1).jfif', '2019/10/12 9:00', '太好看'),
(3, 0, '明天见_5131 ·', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/50x50.jfif', '2019/10/13 9:00', '真的很好看'),
(4, 0, '466 ·', 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/50x50 (3).jfif', '2019/10/13 9:00', '好喜欢，看到这些小时候的回忆都在脑海里出来了');

-- --------------------------------------------------------

--
-- 表的结构 `zjl_user`
--

CREATE TABLE `zjl_user` (
  `id` int(11) NOT NULL,
  `wid` int(11) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL,
  `renqi` int(11) DEFAULT NULL,
  `pageview` int(11) DEFAULT NULL,
  `avatar` varchar(256) DEFAULT NULL,
  `signature` varchar(256) DEFAULT NULL,
  `renzheng` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zjl_user`
--

INSERT INTO `zjl_user` (`id`, `wid`, `user_name`, `address`, `renqi`, `pageview`, `avatar`, `signature`, `renzheng`) VALUES
(1, 0, '西愚人', '其他 地区', 5683, 78, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/headerimg.jfif', '欢迎关注我的微博@西愚人', '插画师'),
(2, 1, '旗蓝yonier', NULL, 10635, 78, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/160x160 (5).jfif', '漫画人、多题材树脂画倡导者、策展人。', '树脂画手艺人、插画师'),
(3, 2, '風吹十二', '浙江', 5431, 456, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/160x160 (6).jfif', NULL, NULL),
(4, 3, '麦伢', '山东 青岛', 7534, 16545, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/160x160 (7).jfif', '微博 麦伢maiya\r\n\r\n个人画集《国产青春》现已上市', '插画师'),
(5, 4, 'MORNCOLOUR', '江苏 无锡', 44565, 16545, 'https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/160x160 (8).jfif', '动漫漫画 插画设计\r\n约稿QQ503472794\r\n微博MORNCOLOUR', '插画师');

--
-- 转储表的索引
--

--
-- 表的索引 `active_competition`
--
ALTER TABLE `active_competition`
  ADD PRIMARY KEY (`aid`);

--
-- 表的索引 `ch_user`
--
ALTER TABLE `ch_user`
  ADD PRIMARY KEY (`uid`);

--
-- 表的索引 `gracg_carousel`
--
ALTER TABLE `gracg_carousel`
  ADD PRIMARY KEY (`cid`);

--
-- 表的索引 `gracg_news`
--
ALTER TABLE `gracg_news`
  ADD PRIMARY KEY (`nid`);

--
-- 表的索引 `gracg_works`
--
ALTER TABLE `gracg_works`
  ADD PRIMARY KEY (`wid`);

--
-- 表的索引 `gracg_wrap`
--
ALTER TABLE `gracg_wrap`
  ADD PRIMARY KEY (`wid`);

--
-- 表的索引 `renwu`
--
ALTER TABLE `renwu`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `testtable`
--
ALTER TABLE `testtable`
  ADD PRIMARY KEY (`one`);

--
-- 表的索引 `zjl_big`
--
ALTER TABLE `zjl_big`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `zjl_bottom`
--
ALTER TABLE `zjl_bottom`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `zjl_comment`
--
ALTER TABLE `zjl_comment`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `zjl_user`
--
ALTER TABLE `zjl_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `active_competition`
--
ALTER TABLE `active_competition`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- 使用表AUTO_INCREMENT `ch_user`
--
ALTER TABLE `ch_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `gracg_carousel`
--
ALTER TABLE `gracg_carousel`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `gracg_news`
--
ALTER TABLE `gracg_news`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- 使用表AUTO_INCREMENT `gracg_works`
--
ALTER TABLE `gracg_works`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- 使用表AUTO_INCREMENT `gracg_wrap`
--
ALTER TABLE `gracg_wrap`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `renwu`
--
ALTER TABLE `renwu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用表AUTO_INCREMENT `testtable`
--
ALTER TABLE `testtable`
  MODIFY `one` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `zjl_big`
--
ALTER TABLE `zjl_big`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用表AUTO_INCREMENT `zjl_bottom`
--
ALTER TABLE `zjl_bottom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `zjl_comment`
--
ALTER TABLE `zjl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `zjl_user`
--
ALTER TABLE `zjl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

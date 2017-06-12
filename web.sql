-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016 年 08 月 19 日 10:00
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `a2774206`
--
CREATE DATABASE IF NOT EXISTS `a2774206` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `a2774206`;

-- --------------------------------------------------------

--
-- 表的结构 `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginer` varchar(6) NOT NULL,
  `is` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`is`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`),
  UNIQUE KEY `is` (`is`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `login`
--

INSERT INTO `login` (`id`, `loginer`, `is`) VALUES
(1, 'admin', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tag` text CHARACTER SET utf8 COLLATE utf8_bin,
  `time` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `uid_2` (`uid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=345 ;

--
-- 转存表中的数据 `tag`
--

INSERT INTO `tag` (`uid`, `tag`, `time`) VALUES
(133, 'Javascript', '2016/8/12&nbsp;11:16:5'),
(134, 'Angularjs', '2016/8/12&nbsp;11:22:44'),
(135, 'PHP', '2016/8/12&nbsp;15:53:32'),
(144, 'ECMASCRIPT6', '2016/8/12&nbsp;15:54:53'),
(145, 'HTML5', '2016/8/12&nbsp;17:5:54'),
(146, 'CSS3', '2016/8/12&nbsp;17:6:52'),
(283, 'MySQL', '2016/8/16&nbsp;11:10:46'),
(284, 'bootstarp', '2016/8/16&nbsp;11:33:17'),
(344, '', '2016/8/19&nbsp;17:21:54');

-- --------------------------------------------------------

--
-- 表的结构 `xq`
--

CREATE TABLE IF NOT EXISTS `xq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attr` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `beizhu` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=207 ;

--
-- 转存表中的数据 `xq`
--

INSERT INTO `xq` (`id`, `attr`, `beizhu`, `uid`) VALUES
(98, '', '', 146),
(99, '322', '333', 317),
(110, '555', 'hhhh', 135),
(113, '', '222', 135),
(126, '528d', '&lt;pre>dfsafdffdsf&lt;/pre>&lt;div>58454&lt;/div>&lt;div>58454&lt;/div>&lt;div>58454&lt;/div>&lt;div>58454&lt;/div>&lt;div>58454&lt;/div>&lt;div>58454&lt;/div>&lt;div>58454&lt;/div>&lt;div>58454&lt;/div>&lt;div>58454&lt;/div>&lt;div>58454&lt;/div>&lt;div>58454&lt;/div>&lt;div>58454&lt;/div>&lt;div>58454&lt;/div>&lt;div>58454&lt;/div>&lt;div>58454&lt;/div>&lt;span style="font-size: 15px; line-height: 21.4286px;">&lt;div>58454&lt;/div>&lt;/span>&lt;span style="font-size: 15px; line-height: 21.4286px;">&lt;div>58454&lt;/div>&lt;/span>&lt;span style="font-size: 15px; line-height: 21.4286px;">&lt;div>58454&lt;/div>&lt;/span>&lt;span style="font-size: 15px; line-height: 21.4286px;">&lt;div>58454&lt;/div>&lt;/span>&lt;span style="font-size: 15px; line-height: 21.4286px;">&lt;div>58454&lt;/div>&lt;/span>&lt;span style="font-size: 15px; line-height: 21.4286px;">&lt;div>58454&lt;/div>&lt;/span>&lt;span style="font-size: 15px; line-height: 21.4286px;">&lt;div>58454&lt;/div>&lt;/span>&lt;span style="font-size: 15px; line-height: 21.4286px;">&lt;div>58454&lt;/div>&lt;/span>&lt;span style="font-size: 15px; line-height: 21.4286px;">&lt;div>58454&lt;/div>&lt;/span>&lt;span style="font-size: 15px; line-height: 21.4286px;">&lt;div>58454&lt;/div>&lt;/span>&lt;span style="font-size: 15px; line-height: 21.4286px;">&lt;div>5fdsfdsfdsfdfdsfd4&lt;/div>&lt;/span>', 133),
(127, '', '&lt;pre&gt; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;我是一个&lt;/div&gt;&lt;div&gt;大&lt;br&gt;&lt;div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/pre&gt;', 133),
(134, '', 'fds', 133),
(135, '', 'dsf', 133),
(136, 'fdsf', '', 133),
(137, '', 'fdsf', 133),
(141, 'div', '+', 144),
(142, 'span', '', 144),
(147, '', '', 144),
(148, '', '', 144),
(150, '', '', 144),
(151, '', '', 144),
(152, '', '5yujytj', 144),
(157, 'fdsa', '', 284),
(158, '', '', 284),
(159, '', '', 284),
(160, '', '', 284),
(161, '', '', 284),
(162, '', '', 284),
(163, '', '', 284),
(164, '', '', 284),
(165, '', '', 284),
(194, 'hhhhh', 'hhhh', 135),
(196, 'dfsaf', 'dfsa', 323),
(197, 'fdsa', '', 283),
(198, '', 'fds', 145),
(199, 'f', 'fdsafdsf', 134),
(200, '', '', 188),
(206, '', '', 133);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

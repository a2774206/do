-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 06 月 12 日 03:20
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `web`
--
CREATE DATABASE IF NOT EXISTS `web` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `web`;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=351 ;

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
(345, 'Jquery', '2016/8/22&nbsp;16:12:12'),
(348, 'less', '2016/8/26&nbsp;14:8:56'),
(349, 'Nodejs', '2016/12/14&nbsp;10:37:14'),
(350, 'vue.js', '2016/12/19&nbsp;9:19:15');

-- --------------------------------------------------------

--
-- 表的结构 `xq`
--

CREATE TABLE IF NOT EXISTS `xq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attr` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `beizhu` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=329 ;

--
-- 转存表中的数据 `xq`
--

INSERT INTO `xq` (`id`, `attr`, `beizhu`, `uid`) VALUES
(98, 'ime-mode', '&lt;h4>ime-mode禁止输入法功能&lt;/h4>&lt;br>&lt;div>&lt;code> style= ime-mode:disabled&lt;/code>&lt;/div>效果：&lt;br>&lt;input style="ime-mode:disabled">部分浏览器不支持', 146),
(99, '322', '333', 317),
(196, 'dfsaf', 'dfsa', 323),
(200, '', '', 188),
(211, 'oncontextmenu', '&lt;h4>右键菜单事件&lt;/h4> 屏蔽右键：&lt;br>&lt;code>tag.oncontextmenu=return false;&lt;/code>&lt;div>演示：&lt;br>&lt;code oncontextmenu="return false" style="border:1px solid ">右键我吧&lt;/code>&lt;/div>', 133),
(212, 'onselectstart', '&lt;h4&gt;不能选取文字防止复制（ctrl+c）&lt;/h4&gt;&lt;p&gt;鼠标选取刚开始触发事件：进行选取文字但为进行选取，只是开始动作，可以实现用户复制操作，鼠标右键和快捷键 ；缺点：可以从父元素双击选取&lt;/p&gt;&lt;code&gt; onselectstart="return false"&lt;/code&gt;', 133),
(213, 'onpaste', '&lt;h4&gt;onpaste 粘贴事件&lt;/h4&gt;&lt;br&gt;禁止粘贴&lt;br&gt; &lt;code&gt;onpaste="return false"&lt;/code&gt;&lt;br&gt; 演示：&lt;br&gt;&lt;green&gt;复制这里&lt;/green&gt;&lt;br&gt;&lt;input type="text" onpaste="return false" placeholder="粘贴到这里"&gt;', 133),
(214, 'oncopy', '&amp;amp;amp;lt;h4&amp;amp;amp;gt;oncopy复制事件&amp;amp;amp;lt;/h4&amp;amp;amp;gt;&amp;amp;amp;lt;br&amp;amp;amp;gt;禁止复制&amp;amp;amp;lt;br&amp;amp;amp;gt;&amp;amp;amp;lt;code&amp;amp;amp;gt;oncopy="return false"&amp;amp;amp;lt;/code&amp;amp;amp;gt;&amp;amp;amp;lt;br&amp;amp;amp;gt;&amp;amp;amp;lt;div&amp;amp;amp;gt;演示：&amp;amp;amp;lt;br&amp;amp;amp;gt;&amp;amp;amp;lt;div oncopy="return false"&amp;amp;amp;gt;→→复制我←←&amp;amp;amp;lt;/div&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;input type="text" placeholder="粘贴看看复制到没"&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;amp;lt;/div&amp;amp;amp;gt;&amp;amp;amp;lt;span style="font-size: 15px; line-height: 21.4286px;"&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;配合oncut可以完全禁止复制功能&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;amp;lt;/span&amp;amp;amp;gt;', 133),
(215, 'oncut', '&lt;h4&gt;oncopy剪切事件&lt;/h4&gt;&lt;br&gt;禁止剪切&lt;br&gt;&lt;code&gt;oncopy="return false"&lt;/code&gt;&lt;br&gt;&lt;div&gt;演示：&lt;br&gt;&lt;input type="text" oncut="return false" &amp;gt;&lt;="" div=""&gt;&lt;/div&gt;&lt;p&gt;配合oncopy可以完全禁止复制功能&lt;/p&gt;', 133),
(217, 'top', 'window.top===top top 属性返回最顶层的先辈窗口&lt;br>&lt;blockquote>&lt;/span>该属性返回对一个顶级窗口的只读引用。如果窗口本身就是一个顶级窗口，top 属性存放对窗口自身的引用。如果窗口是一个框架，那么 top 属性引用包含框架的顶层窗口。&lt;/blockquote>', 133),
(218, 'referrer', '&lt;h4&gt;判断上一页的来源&lt;/h4&gt;&lt;br&gt;&lt;code&gt;document.referrer&lt;/code&gt;弹框演示&lt;script&gt;alert(document.referrer)&lt;/script&gt;', 133),
(219, ' ENTER 键可以让光标移到下个输入框', '&lt;code>input onkeydown="if(event.keyCode==13){event.keyCode=9}&lt;/code>', 133),
(221, '字符串快速转number类型', '&lt;h4>用“+”号字符串快速转numbe&lt;/h4>&lt;code>var i="123";i=+i;console.log(typeof i)&lt;/code>&lt;br>如果变量为非数字的字符串，则返回NaN', 133),
(222, '&&条件符的小技巧', '&lt;pre&gt;&lt;div&gt;if(s){&lt;/div&gt;&lt;div&gt;inint();&lt;/div&gt;&lt;div&gt;}&lt;/div&gt;&lt;div&gt;可以简写成：&lt;/div&gt;&lt;div&gt;s&amp;amp;&amp;amp;inint();&lt;br&gt;&lt;div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/pre&gt;', 133),
(224, '图片转bese64-ajax上传', 'js代码：&lt;br>&lt;div>&lt;pre>&lt;div>&lt;div>var wenjian=document.getElementById("wenjian");//上传文件id&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">			&lt;/span>wenjian.onchange=function(){ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;//有图片被选中打开触发事件&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">				&lt;/span>var readfile=new FileReader(); &nbsp;//创建对象流&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">				&lt;/span>readfile.onload=function(e){ &nbsp; &nbsp;// 图片被加载&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">					&lt;/span>var s=e.target.result; &nbsp; &nbsp; &nbsp; &nbsp;//s =bese64字符串&lt;/div>&lt;div> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;img.src=s; &nbsp; &nbsp; //显示图片&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">				&lt;/span>}&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">					&lt;/span>readfile.readAsDataURL(this.files[0]); &nbsp; &nbsp; &nbsp; &nbsp; //files是个对象合集 &nbsp;&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">					&lt;/span>&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">					&lt;/span>&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">			&lt;/span>}&lt;/div>&lt;/div>&lt;div>&lt;span style="line-height: 1.42857;">&lt;/span>&lt;/div>&lt;/pre>&lt;/div>&lt;br>', 133),
(225, 'multiple', '&lt;h4&gt;h5 multiple属性实现多图片上传&lt;/h4&gt;&lt;div&gt;代码：&lt;br&gt;&lt;code&gt;input type="file" multiple="multiple" &lt;/code&gt;&lt;br&gt;代码简写：&lt;br&gt;&lt;code&gt;input type="file" multiple&lt;/code&gt;&lt;/div&gt;', 145),
(226, 'contenteditable', '&lt;h4&gt;contenteditable块级元素可以编辑&lt;/h4&gt;&lt;div&gt;&lt;span style="line-height: 21.4286px;"&gt;在div中添加属性contenteditable=true&lt;/span&gt;&lt;/div&gt;&lt;div>&lt;br>&lt;/div>', 145),
(228, 'ajax参数beforeSend', '&lt;h4&gt;ajax加载未完成时加载动画&lt;/h4&gt;&lt;div&gt;&lt;div&gt;&lt;pre&gt;&lt;/div&gt;&lt;div&gt;$.ajax( {&amp;nbsp;&lt;/div&gt;&lt;div&gt;type:"GET",//通常会用到两种：GET,POST。默认是：GET&lt;/div&gt;&lt;div&gt;url:"a.php",//(默认: 当前页地址) 发送请求的地址&lt;/div&gt;&lt;div&gt;dataType:"html",//预期服务器返回的数据类型。&amp;nbsp;&lt;/div&gt;&lt;div&gt;beforeSend:beforeSend, //发送请求&amp;nbsp;&lt;/div&gt;&lt;div&gt;success:callback, //请求成功&amp;nbsp;&lt;/div&gt;&lt;div&gt;error:error,//请求出错&amp;nbsp;&lt;/div&gt;&lt;div&gt;complete:complete//请求完成&amp;nbsp;&lt;/div&gt;&lt;div&gt;}); }&lt;span style="font-size: 15px; line-height: 21.4286px;">&lt;/pre&gt;&lt;/span>&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;div&gt;&lt;span&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;beforeSend:加载数据时移入动画&lt;/span&gt;&lt;span style="line-height: 1.42857;"&gt;&lt;/span&gt;&lt;br&gt;&lt;span&gt;&lt;/span&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;complete:请求结束移除动画&lt;/span&gt;&lt;span style="line-height: 1.42857;"&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', 345),
(229, 'CSS3属性选择器', '&lt;h4&gt;css3属性选择器&lt;/h4&gt;&lt;p&gt;[attribute^=value]&lt;br&gt;&lt;red&gt;[name^=a]&lt;/red&gt;选择name以a开头的所有匹配元素&lt;/p&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;&lt;p&gt;[attribute$=value]&lt;br&gt;&lt;red&gt;[name$=a]&lt;/red&gt;选择name以a结尾的所有匹配元素&lt;/p&gt;&lt;/span&gt;&lt;div>&lt;span style="font-size: 15px; line-height: 21.4286px;">&lt;p&gt;[attribute=value]&lt;br&gt;&lt;red&gt;[name=a]&lt;/red&gt;选择name等于a的所有匹配元素&lt;/p&gt;&lt;/span>&lt;br>&lt;/div>', 146),
(230, 'nth-child和nth-of-type', '&lt;h4&gt;nth-child与nth-of-type的区别&lt;/h4&gt;&lt;div&gt;&lt;code&gt;p:nth-child(1)&lt;/code&gt;&lt;span&gt;：p元素的父元素的第一个元素&lt;/span&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;code&gt;p:nth-of-type(1)&lt;/code&gt;&lt;span&gt;同jq的eq&lt;/span&gt;', 146),
(231, 'user-modify', '&lt;br&gt;&lt;code&gt;user-modify:read-write;&lt;/code&gt;//只读元素css设置&lt;div&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;&lt;br&gt;&lt;/span&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;&lt;code&gt;user-modify:write;&lt;/code&gt;&lt;/span&gt;&lt;code&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;&lt;/span&gt;&lt;/code&gt;//可以粘贴富文本&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;&lt;br&gt;&lt;/span&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;&lt;code&gt;user-modify:read-write-plaintext-only&lt;/code&gt;&lt;/span&gt;&lt;code&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;&lt;/span&gt;&lt;/code&gt;//可以粘贴富文本&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div>&lt;red&gt;基于h5的contenteditable=true可编辑元素&lt;/red&gt;&lt;/div>', 146),
(232, 'user-select', '&lt;h4>禁止选择防止复制css&lt;/h4> &lt;code>body{user-select:none;}&lt;/br>body{webkit-user-select:none;}&lt;/code>', 146),
(233, '查询表', 'SELECT * from Tablename&lt;br>select 列名称 from 表名称&lt;br>', 283),
(234, '过滤重复查询', 'SELECT distinct name from Tablename&lt;br>去重复关键词 distinct', 283),
(235, '过滤查询', 'SELECT 列名称 FROM 表名称 WHERE 列 运算符 值&lt;br>select * from tablename where name=lipp ', 283),
(236, 'AND和OR运算符', '&lt;h4>and和or相似于&amp;&amp;和||&lt;/h4>&lt;div>&lt;p>例：在tablename表中找出姓李并且名明的人。&lt;br>&lt;code>select * from Tablename where xing="李" and name="明"&lt;/code>&lt;/p>&lt;/div>&lt;div>&lt;p>例：在tablename表中找出姓李或者名明的人。&lt;br>&lt;code>select * from Tablename where xing="李" or name="明"&lt;/code>&lt;/p>&lt;/div> &lt;red>*注&lt;/red>:此处“”都为''', 283),
(238, '模糊查询', '&lt;h4&gt;模糊查询like&lt;/h4&gt;&lt;div&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;&lt;code&gt;select * from tablename where name like %关键字%;&lt;/code&gt;//包含关键字&lt;/span&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;&lt;code&gt;select * from tablename where name like B%;&lt;/code&gt;//b开头的&lt;br&gt;&lt;/span&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;&lt;code&gt;select * from tablename where name like %&lt;/code&gt;&lt;/span&gt;&lt;code&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;B&lt;/span&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;;&lt;/span&gt;&lt;/code&gt;//b结尾的&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;&lt;br&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;">&lt;br&gt;&lt;/span>&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;&lt;code&gt;select * from tablename where name &amp;nbsp;not like %&lt;/code&gt;&lt;/span&gt;&lt;code&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;B&lt;/span&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;;&lt;/span&gt;&lt;/code&gt;//不是b结尾的&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;', 283),
(239, '插入', '&lt;h4>insert into&lt;/h4>&lt;code>insert into 表名 values（值1,值2……）&lt;/code>', 283),
(240, '修改', '&lt;h4>update&lt;/h4>&lt;code>UPDATE 表名称 SET 列名称 = 新值 WHERE 列名称 = 某值&lt;/code>', 283),
(241, '删除', '&lt;h4>delete&lt;h4/>&lt;code>update from table where uid =1&lt;/code>', 283),
(242, '通配符', '&lt;ul&gt;&lt;li&gt;%:代表一个或者多个字符&lt;/li&gt;&lt;li&gt;_：代表一个字符&lt;/li&gt;&lt;li&gt;[....]：字符列中的任何单一字符&lt;/li&gt;&lt;/ul&gt;&lt;div>&lt;ol&gt;&lt;li&gt;&lt;code&gt;select * from table where uid=1 and name like %明%&lt;/code&gt;&lt;/li&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;">&lt;li&gt;&lt;code&gt;&lt;/span>&lt;span style="font-size: 15px; line-height: 21.4286px;">select * from table where uid=1 and name like _明&lt;/span>&lt;span style="font-size: 15px; line-height: 21.4286px;">&lt;/code&gt;&lt;/li&gt;&lt;/span>&lt;span style="font-size: 15px; line-height: 21.4286px;">&lt;li&gt;&lt;code&gt;&lt;/span>&lt;span style="font-size: 15px; line-height: 21.4286px;">select * from table where uid=1 and name like [abc]%&lt;/span>&lt;span style="font-size: 15px; line-height: 21.4286px;">&lt;/code&gt;//以a，b，c开头的&lt;/li&gt;&lt;/span>&lt;span style="line-height: 1.42857;">&lt;/ol&gt;&lt;/span>&lt;/div>', 283),
(243, 'IN操作符', '&lt;h4>IN操作符允许在where中规定多个值&lt;/h4>&lt;code>select name from table where sex in (男，女)&lt;/code>', 283),
(244, 'between操作符', '', 283),
(245, 'keywords/Description', '&lt;p style="margin-bottom: 15px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; font-size: 14px;">&lt;pre&gt;&lt;span style="font-family: tahoma, arial, 宋体; font-size: 14px; text-indent: 2em;">title：即网站标题，也就是在浏览器上面显示的那些内容，这些内容不仅用户能看到，而对于搜索引擎来说也是能够检索到的，而且要特别注意它还是判定你网页的主要依据之一。&lt;/span>&lt;/p>&lt;p style="margin-bottom: 15px; font-family: tahoma, arial, 宋体; font-size: 14px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em;">Keywords：这也就是我们常说的关键词了。Kewords用户是不能直接在网页前台看得到的。只有查看网页源代码才行。Keywords的主要作用是把当前网页的内容用几个简明扼要的词语来概述一下。这里还牵扯到一个关键词密度问题，以后再细谈这个keywors密度。&lt;/p>&lt;p style="margin-bottom: 15px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; font-size: 14px;">&lt;span style="font-family: tahoma, arial, 宋体; font-size: 14px; text-indent: 2em;">Description：这个和上面的keywords一样，同样是用户直接在当前网页上看不到的内容，而且也是对于一个网页的简要内容概况。但是又和keywords不同，keywords是几个词语的组成的，而description则是完整的一句话。&lt;/span>&lt;/pre&gt;&lt;/p>&lt;p style="margin-bottom: 15px; color: rgb(37, 37, 37); line-height: 28px; text-indent: 2em; font-family: tahoma, arial, 宋体; font-size: 14px;">&lt;div&gt;&lt;code&gt;meta name="keywords" content="关键词"&lt;/code&gt;&lt;br&gt;&lt;span style="font-family: tahoma, arial, 宋体; font-size: 14px;">&lt;code&gt;meta name="description" content="一句简介"&lt;/code&gt;&lt;/span>&lt;span style="font-family: tahoma, arial, 宋体; font-size: 14px; text-indent: 2em;">&lt;/div&gt;&lt;/span>&lt;/p>', 145),
(246, 'border-radius', '&lt;code&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;border-top-right-radius: 20px&lt;/span&gt;&lt;/code&gt;&lt;div id="div" style="width: 200px;height:60px;background: #D0E9C6;border-top-right-radius: 20px;"&gt;&lt;/div&gt;&lt;code&gt;border-top-right-radius: 20px;border-bottom-left-radius: 20px&lt;/code&gt;&lt;div id="div2" style="width: 200px;height:60px;background: #D0E9C6;border-top-right-radius: 20px;border-bottom-left-radius: 20px;"&gt;&lt;/div&gt;', 146),
(247, '@keyframes自定义动画', '&amp;lt;pre&amp;gt;自定义动画&amp;amp;nbsp;	&lt;div>&nbsp;@keyframes name{	&lt;/div>&lt;div>&nbsp;from{开始样式}&lt;/div>&lt;div>&nbsp;to{结束样式}&lt;/div>&lt;div>&nbsp;}	&lt;/div>&lt;div>&nbsp;#div{animation:name 3s infinite}	&lt;/div>&lt;div>&nbsp;#div::before{content:"infinite是无限循环"}&amp;lt;/pre&amp;gt;&lt;/div>', 146),
(248, 'transform', '&lt;h4&gt;旋转&lt;/h4&gt;&lt;p&gt;&lt;code&gt;transform:rotate(30deg)&lt;/code&gt;&lt;/p&gt;&lt;div style="transform:rotate(30deg);width:80px;height:80px;background:red;"&gt;&lt;/div&gt;', 146),
(249, '::selection', '&lt;h4>::selection&lt;h4>&lt;p>选择背景色和字体颜色&lt;/p>&lt;code>::selection{background:red;color:yellow}&lt;/code>&lt;br>初始图：&lt;img src="img/bg2.png"> &lt;br>设置后：&lt;img src="img/bg1.png">', 146),
(250, 'media query', '&lt;h4>media query 响应式&lt;/h4>&lt;p>两种写法&lt;/p>&lt;p>1.外部引入判断屏幕：&lt;code>link rel="stylesheet" type="text/css" href="xxx.css" media="screen and (min-width: 400px)"&lt;/code>&lt;/p>&lt;p>2.直接写样式里：&lt;code>@media screen and (max-width: 600px){}&lt;/code>&lt;/p>&lt;p>&lt;red>max-width:600px-小于600px&lt;/red>&lt;/p>', 146),
(251, 'ie和其他浏览器兼容处理', '&lt;div&gt;&lt;span class="Apple-tab-span" style="white-space:pre"&gt;	&lt;/span&gt;&lt;p&gt;&lt;code&gt;&amp;lt; !- -[if !IE]&amp;gt;&amp;lt; !--&amp;gt; 非ie当注释识别（除了ie都执行） &amp;lt; ! - -&amp;lt; ! [endif] - -&amp;gt;&lt;/code&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;span class="Apple-tab-span" style="white-space:pre"&gt;		&lt;/span&gt;&lt;p&gt;&lt;code&gt;&amp;lt; ! - -[if IE]&amp;gt;ie浏览器执行&amp;lt; ! [endif] - - &amp;gt;&lt;/code&gt;&lt;/p&gt;&lt;/div&gt;', 133),
(252, '变量换行', '使用“·”让字符串变量换行&lt;br&gt;&lt;p&gt;&lt;code&gt;var a="·字符串变量……·；&lt;/code&gt;键位置：esc下&lt;/p&gt;&lt;p&gt;&lt;red&gt;*部分手机端不支持&lt;/red&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;', 144),
(253, 'scale()方法', '&lt;h4>scale()方法-拉伸&lt;/h4>&lt;code>-webkit-transform:scale(1,2)&lt;/code>//括弧内是xy的比例', 146),
(254, 'rotate()方法', '&lt;h4&gt;rotate()方法-旋转&lt;/h4&gt;&lt;code&gt;-webkit-transform:rotate(30deg)&lt;/code&gt;//deg是度', 146),
(255, 'skew()方法', '&lt;h4>skew()方法-翻转&lt;/h4>&lt;code>-webkit-transform:skew(30deg,20deg)//x,y轴翻转度数&lt;/code>&lt;p>&lt;iframe src="http://www.w3school.com.cn/tiy/loadtext.asp?f=css3_transform_skew">&lt;/iframe>&lt;/p>', 146),
(256, 'transform同时执行两个动画', '&lt;h4&gt;transform同时执行两个动画&lt;/h4&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;&lt;div&gt;&lt;code&gt;#div{transition:transform 1s;}&lt;/code&gt;&lt;span style="font-size: 15px; line-height: 21.4286px;"&gt;&lt;/span&gt;&lt;/div&gt;&lt;/span&gt;&lt;div&gt;&lt;code&gt;&lt;div&gt;#div:hover{transform:rotate(360deg)scale(1.1,1.1) }&lt;/div&gt;&lt;/code&gt;&lt;div&gt;&lt;code&gt;&lt;/code&gt;&lt;/div&gt;&lt;/div&gt;&lt;div&gt;预览地址：bbs.3147106.vip/src/transform.html&lt;/div&gt;', 146),
(257, 'Jquery选择器优化', '&lt;h4>将jq对象缓存起来&lt;/h4>&lt;code>var $element=$("#element");&lt;br>$element.empty();&lt;/code>//性能优化', 345),
(288, '类型转换', '&lt;h4&gt;$ceshi=0;$ceshi1=(float)$ceshi;&lt;/h4&gt;&lt;code&gt;$ceshi=0;$ceshi1=(float)$ceshi;&lt;/code&gt;', 135),
(289, 'php解读开始和结束标记', '方式1：&lt;code&gt;&lt;/code&gt;&lt;div&gt;&lt;code&gt;&amp;lt; ? php……php ? &amp;gt;&lt;br&gt;&lt;/code&gt;&lt;div&gt;&lt;code&gt;&lt;/code&gt;&lt;br&gt;方式2：&lt;code&gt;&amp;lt; scrip t language="php " &amp;gt;……&lt; / script&gt;&lt;span style="font-size: 15px;"&gt;&lt;/span&gt;&lt;/code&gt;&lt;/div&gt;&lt;/div&gt;', 135),
(290, '三种注释', '&lt;h4&gt;php三种注释&lt;/h4&gt;&lt;div>&lt;p&gt;&lt;span style="font-size: 15px;">&lt;red&gt;//&lt;/red&gt;&lt;/span>单行注释&lt;/p&gt;&lt;span style="font-size: 15px;">&lt;p&gt;&lt;red&gt;#&lt;/red&gt;单行注释&lt;/p&gt;&lt;/span>&lt;span style="font-size: 15px;">&lt;p&gt;&lt;red&gt;/** **/ &lt;/red&gt;多行注释&lt;/p&gt;&lt;/span>&lt;/div>', 135),
(291, '检测变量是否为空的函数', '&lt;h4>检测变量是否为空的函数&lt;/h4>&lt;code>$a='';if(empty($a){echo "$a是空"})&lt;/code>', 135),
(292, '单引和双引的使用', '&lt;code>""可以解析变量  ‘‘一般用来引字符串&lt;/code>', 135),
(293, 'js获取数组中最大最小值', '&lt;code>Math.max.apply(null, arr)//最大&lt;br>Math.min.apply(null,arr)//最小&lt;/code>', 133),
(294, 'sort中的参数', 'sort中的参数必须是个方法&lt;p&gt;&lt;span style="color: rgb(0, 0, 0); font-family: Verdana, Arial, 宋体; font-size: 12px; line-height: 18px; background-color: rgb(249, 249, 249);"&gt;如果想按照其他标准进行排序，就需要提供比较函数，该函数要比较两个值，然后返回一个用于说明这两个值的相对顺序的数字。比较函数应该具有两个参数 a 和 b，其返回值如下：&lt;/span&gt;&lt;/p&gt;&lt;ul style="margin-top: 10px; margin-left: 35px; border: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, 宋体; font-size: 12px; line-height: normal; background-color: rgb(249, 249, 249);"&gt;&lt;li style="margin-top: 3px; border: 0px;"&gt;若 a 小于 b，在排序后的数组中 a 应该出现在 b 之前，则返回一个小于 0 的值。&lt;/li&gt;&lt;li style="margin-top: 3px; border: 0px;"&gt;若 a 等于 b，则返回 0。&lt;/li&gt;&lt;li style="margin-top: 3px; border: 0px;"&gt;若 a 大于 b，则返回一个大于 0 的值。&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;code&gt;var s=[1,3,9,5,8,2];&lt;br&gt;function x(a,b){return a-b;}&lt;br&gt;s.sort(x)&lt;/code&gt;&lt;/p&gt;', 133),
(295, '循环中事件执行多次解决办法', '&lt;h4&gt;在循环中事件执行多次快速解绑在添加&lt;/h4&gt;代码&lt;br&gt;&lt;p&gt;&lt;/p&gt;&lt;pre&gt;&lt;div>for(var i=0;i&lt;3;i++){&lt;/div>&lt;div>div.onclick=function(){&lt;/div>&lt;div>alert("只点击一次却执行三次");&lt;/div>&lt;div>}&lt;/div>&lt;div>}&lt;/div>&lt;div>用js解决需要声明个全局变量为true，&lt;/div>&lt;div>当变量为true时执行&lt;/div>&lt;div>当方法执行结束时&lt;/div>&lt;div>变量改为false&lt;/div>&lt;div>这样就只会走一次&lt;/div>&lt;div>在jq中可以使用解绑再添加事件方法，&lt;/div>&lt;div>$("xx").unbind().bind("click",function(){&lt;/div>&lt;div>alert("只执行一次")；&lt;/div>&lt;div>})&lt;/div>&lt;div>&lt;/pre&gt;&lt;p&gt;&lt;/p&gt;&lt;/div>', 345),
(296, 'background-size', '&lt;h4&gt;background-size设置背景图片大小&lt;/h4&gt;&lt;div>&lt;pre&gt;&lt;/div>&lt;div>&lt;div>&lt;br>&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">		&lt;/span>//自定义设置大小&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">		&lt;/span>body{background-size: 50px 50px;}&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">		&lt;/span>//等比扩展图片填满元素&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">		&lt;/span>body{background-size: cover;}&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">		&lt;/span>//等比缩放图片来适应元素尺寸&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">		&lt;/span>body{background-size: contain;}&lt;/div>&lt;/div>&lt;div>&lt;/pre&gt;&lt;/div>', 146),
(297, '模拟长按事件', '&lt;pre&gt;&lt;div>&lt;div>//原理：当鼠标按下时，长按事件延迟1秒后执行&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">			&lt;/span>//如果在一秒内松开，则执行取消绑定事件，被识别为点击&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">		&lt;/span> &nbsp; &nbsp;var s;&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">			&lt;/span>var div=document.getElementById("div");&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">			&lt;/span>div.onmousedown=function(){&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">				&lt;/span>s=setTimeout(dj,1000);&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">				&lt;/span>&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">			&lt;/span>}&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">			&lt;/span>div.onmouseup=function()&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">			&lt;/span>{&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">				&lt;/span>clearTimeout(s);&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">				&lt;/span>dj2()&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">			&lt;/span>}&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">			&lt;/span>function dj(){&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">				&lt;/span>alert("长按函数");&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">			&lt;/span>}&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">			&lt;/span>function dj2(){&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">				&lt;/span>alert("点击函数");&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">			&lt;/span>}&lt;/div>&lt;/div>&lt;div>&lt;br>&lt;/div>&lt;div>&lt;/pre&gt;&lt;/div>', 133),
(298, '移除默认事件', '&lt;pre>&lt;div>  div.onclick=function(e){&lt;/div>&lt;div>  e.preventDefault();&lt;/div>&lt;div>  }&lt;/div>&lt;div>&lt;/pre>&lt;/div>', 133),
(299, '同时绑定多个事件两种方法', '&lt;pre&gt;&lt;div>&lt;div>//jq两种方法绑定多个事件&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">			&lt;/span>$("#div").bind({&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">				&lt;/span>click:function(){&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">					&lt;/span>console.log(1);&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">				&lt;/span>},&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">				&lt;/span>mousemove:function(){&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">					&lt;/span>console.log(2)&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">				&lt;/span>}&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">			&lt;/span>})&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">		&lt;/span>//第二种方法&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">			&lt;/span>$("#div").bind("click mouseout",function(e){&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">				&lt;/span>if(e.type=="click"){&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">					&lt;/span>alert(1)&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">				&lt;/span>}&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">				&lt;/span>else if(e.type=="mouseout"){&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">					&lt;/span>alert(2)&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">				&lt;/span>}&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">			&lt;/span>})&lt;/div>&lt;/div>&lt;div>&lt;/pre&gt;&lt;/div>', 345),
(300, '自动执行事件', '&lt;pre&gt;&lt;div>&lt;div>&nbsp;var eve=document.getElementById("MainClick");&lt;/div>&lt;div>&lt;span class="Apple-tab-span" style="white-space:pre">	&lt;/span>&lt;/div>&lt;div>&lt;/pre&gt;&lt;/div>&lt;/div>', 133),
(302, 'translate()', '&lt;h4>translate位移&lt;/h4>&lt;code>transform:translate(50px,100px)&lt;/code>', 146),
(303, 'trigger', '&lt;h4>trigger自动触发绑定事件&lt;/h4>&lt;code>$(el).trigger("click");触发已绑定的单击事件&lt;/code>', 345),
(304, '', '', 146),
(306, '$_POST from表单post提交', '', 135),
(307, 'cookies/localstorage/sessionstorage', '&lt;span style="font-size: 15px; text-align: center; background-color: rgba(245, 235, 238, 0.8);">&lt;h4&gt;cookies/localstorage/sessionstorage&lt;/h4&gt;&lt;/span>&lt;div>&lt;span style="font-size: 15px; text-align: center; background-color: rgba(245, 235, 238, 0.8);">&lt;code&gt;cookies:缺点：主域名的污染；域名存储内存少；安全性低；优点：浏览器兼容高&lt;/code&gt;&lt;br&gt;&lt;/span>&lt;/div>&lt;div>&lt;span style="font-size: 15px; text-align: center; background-color: rgba(245, 235, 238, 0.8);">&lt;code&gt;localstorage:Ie8及以上兼容，没有过期限制，除非手动删除；&lt;/code&gt;&lt;br&gt;&lt;/span>&lt;/div>&lt;div>&lt;span style="font-size: 15px; text-align: center; background-color: rgba(245, 235, 238, 0.8);">&lt;code&gt;sessionstorage:页面关闭及过期&lt;/code&gt;&lt;/span>&lt;/div>', 145),
(308, '', '', 349),
(309, '解决自适应终端图片大小设置', '&lt;code&gt;background-size: cover;//背景图片按比例放大缩小&lt;/code&gt;&lt;br&gt;&lt;div>&lt;red&gt;单独设置终端设备放图片父元素的高度即可&lt;/red&gt;&lt;/div>', 145),
(310, 'h5图片自适应(tx写法)', '&lt;a href="https://segmentfault.com/n/1330000007816530"&gt;访问地址&gt;&gt;&lt;/a&gt;', 145),
(311, 'angularjs常用', '&lt;a href="angularjs.html">访问&lt;/a>', 134),
(312, '环境配置', '&lt;a href="http://www.open-open.com/lib/view/open1476240930270.html" target="_blank"&gt;环境配置地址&amp;gt;&amp;gt;&lt;/a&gt;', 350),
(313, '$.inArray()', 'jquery.inArray(查找的,index[下标])&lt;div&gt;&lt;code&gt;$.inArray(i,arr[j])//有则找到该位置的下标并返回，没有返回-1&lt;/code&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;', 345),
(314, '单页面应用程序', 'Angularjs是制作单页面应用程序的前端框架&lt;br&gt;单页面应用是指在浏览器中运行的应用，它们在使用期间不会重新加载页面&lt;div&gt;像所有的应用一样，它旨在帮助用户完成任务，比如“编写文档”或者“管理Web服务器”。可以认为单页应用是一种从Web服务器加载的客户端&lt;/div&gt;', 134),
(315, 'php ajax跨域解决最佳方案', '3、允许所有域名访问 允许所有域名访问则只需在文件头部添加如下代码header(''&lt;span style="font-size: 15px;"&gt;Access-Control-Allow-Origin:*&lt;/span&gt;'');', 135),
(316, '数组的三种创建', '&lt;a href="https://segmentfault.com/n/1330000008436155" target="_blank"&gt;访问&lt;/a&gt;', 135),
(317, '', '', 145),
(318, 'echo 、print 、print_r 的区别', '&lt;a href="https://segmentfault.com/n/1330000008437744" target="_blank">访问&lt;/a>', 135),
(319, 'php循环遍历', '&lt;a href="https://segmentfault.com/n/1330000008438716" target="_blank">访问&lt;/a>', 135),
(320, 'php关联数组', '&lt;a href="https://segmentfault.com/n/1330000008440309" target="_blank">访问&lt;/a>', 135),
(321, 'php内置函数', '&lt;a href="https://segmentfault.com/n/1330000008443269" target="_blank">访问&lt;/a>', 135),
(322, 'php类', '&lt;a href="https://segmentfault.com/n/1330000008444286" target=_blank">访问&lt;/a>', 135),
(323, 'php中方法和函数', '&lt;a href="https://segmentfault.com/n/1330000008455886" target="_blank">访问&lt;/a>', 135),
(324, 'php内置去空格', '&lt;a href="https://segmentfault.com/n/1330000008501240" target="_blank">链接&lt;/a>', 135),
(325, '对象数组遍历对应key和value', '&lt;a href="https://segmentfault.com/n/1330000008512898" target="_blank">链接&lt;/a>', 133),
(326, '', '', 348),
(328, 'let', 'let声明变量 ：&lt;code>let a=1&lt;/code>', 144);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

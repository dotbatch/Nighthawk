# WordPress MySQL database migration
#
# Generated: Monday 28. March 2016 14:27 UTC
# Hostname: localhost
# Database: `stagin18_nighthawktireswp`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_WP_SEO_404_links`
#

DROP TABLE IF EXISTS `wp_WP_SEO_404_links`;


#
# Table structure of table `wp_WP_SEO_404_links`
#

CREATE TABLE `wp_WP_SEO_404_links` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ctime` datetime NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `referrer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `os` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `browser` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `link` (`link`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_WP_SEO_404_links`
#
INSERT INTO `wp_WP_SEO_404_links` ( `ID`, `ctime`, `link`, `referrer`, `ip`, `country`, `os`, `browser`) VALUES
(1, '2016-02-22 00:06:27', '/WP-ADMIN', '', '45.64.213.82', 'India', 'Windows NT 4.0', 'Firefox'),
(2, '2016-02-24 07:15:24', '/)', 'http://nighthawktires.stagingcloud.us/', '45.64.213.82', 'India', 'Windows NT 4.0', 'Firefox'),
(3, '2016-03-16 16:19:55', '/importbuddy/css/style.css?ver=', 'http://nighthawktires.stagingcloud.us/importbuddy.php?ajax=6', '73.55.221.78', 'United States', 'Safari', 'Chrome'),
(4, '2016-03-16 16:19:55', '/importbuddy/js/tooltip.js?ver=', 'http://nighthawktires.stagingcloud.us/importbuddy.php?ajax=6', '73.55.221.78', 'United States', 'Safari', 'Chrome'),
(5, '2016-03-16 16:19:55', '/importbuddy/js/ui.widget.js?ver=', 'http://nighthawktires.stagingcloud.us/importbuddy.php?ajax=6', '73.55.221.78', 'United States', 'Safari', 'Chrome'),
(6, '2016-03-16 16:19:55', '/importbuddy/js/jquery.js?ver=', 'http://nighthawktires.stagingcloud.us/importbuddy.php?ajax=6', '73.55.221.78', 'United States', 'Safari', 'Chrome'),
(7, '2016-03-16 16:19:55', '/importbuddy/js/ui.tabs.js?ver=', 'http://nighthawktires.stagingcloud.us/importbuddy.php?ajax=6', '73.55.221.78', 'United States', 'Safari', 'Chrome'),
(8, '2016-03-16 16:19:55', '/importbuddy/js/ui.core.js?ver=', 'http://nighthawktires.stagingcloud.us/importbuddy.php?ajax=6', '73.55.221.78', 'United States', 'Safari', 'Chrome'),
(9, '2016-03-16 16:19:56', '/importbuddy/css/nprogress.css?ver=', 'http://nighthawktires.stagingcloud.us/importbuddy.php?ajax=6', '73.55.221.78', 'United States', 'Safari', 'Chrome'),
(10, '2016-03-16 16:19:56', '/importbuddy/js/importbuddy.js?ver=', 'http://nighthawktires.stagingcloud.us/importbuddy.php?ajax=6', '73.55.221.78', 'United States', 'Safari', 'Chrome'),
(11, '2016-03-16 16:19:56', '/importbuddy/js/jquery.joyride-2.0.3.js?ver=', 'http://nighthawktires.stagingcloud.us/importbuddy.php?ajax=6', '73.55.221.78', 'United States', 'Safari', 'Chrome'),
(12, '2016-03-16 16:19:56', '/importbuddy/js/modernizr.mq.js?ver=', 'http://nighthawktires.stagingcloud.us/importbuddy.php?ajax=6', '73.55.221.78', 'United States', 'Safari', 'Chrome'),
(13, '2016-03-16 16:19:56', '/importbuddy/js/nprogress.js?ver=', 'http://nighthawktires.stagingcloud.us/importbuddy.php?ajax=6', '73.55.221.78', 'United States', 'Safari', 'Chrome'),
(14, '2016-03-16 16:19:56', '/importbuddy/css/joyride.css?ver=', 'http://nighthawktires.stagingcloud.us/importbuddy.php?ajax=6', '73.55.221.78', 'United States', 'Safari', 'Chrome'),
(15, '2016-03-16 16:19:57', '/importbuddy/views/finished.htm?0.5415385763626546', 'http://nighthawktires.stagingcloud.us/importbuddy.php', '73.55.221.78', 'United States', 'Safari', 'Chrome'),
(16, '2016-03-16 21:58:35', '/contact-2/', 'http://nighthawktires.stagingcloud.us/contact-2/', '73.55.221.78', 'United States', 'Safari', 'Chrome'),
(17, '2016-03-17 03:14:21', '/wp-content/uploads/2016/03/nighthawktires-logo-final-2-300x63.png', 'http://nighthawktires.stagingcloud.us/', '43.254.48.253', 'India', 'Windows NT 4.0', 'Firefox'),
(18, '2016-03-17 06:55:06', 'http://developmentcloud.us/nighthawktires/', 'http://developmentcloud.us/nighthawktires/', '5.9.137.231', 'Germany', 'Windows XP', 'Internet Explorer'),
(19, '2016-03-24 14:16:06', '/dura-flex-solid-skid-steer-tires/', 'http://nighthawktires.stagingcloud.us/', '73.55.221.78', 'United States', 'Safari', 'Chrome'),
(20, '2016-03-24 22:06:44', '/wp-content/plugins/accordion-shortcode-and-widget/img/modal-bg.png', 'http://nighthawktires.stagingcloud.us/wp-content/plugins/accordion-shortcode-and-widget/tooltip/darktooltip.css?ver=4.4.2', '73.55.221.78', 'United States', 'Safari', 'Chrome'),
(21, '2016-03-25 15:09:26', '/tracks/', 'http://nighthawktires.stagingcloud.us/tracks/', '66.202.185.151', 'United States', 'Safari', 'Chrome') ;

#
# End of data contents of table `wp_WP_SEO_404_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_WP_SEO_Cache`
#

DROP TABLE IF EXISTS `wp_WP_SEO_Cache`;


#
# Table structure of table `wp_WP_SEO_Cache`
#

CREATE TABLE `wp_WP_SEO_Cache` (
  `ID` int(11) unsigned NOT NULL,
  `is_redirected` int(1) unsigned NOT NULL,
  `redirect_from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_type` int(3) unsigned NOT NULL DEFAULT '301',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_WP_SEO_Cache`
#
INSERT INTO `wp_WP_SEO_Cache` ( `ID`, `is_redirected`, `redirect_from`, `redirect_to`, `redirect_type`) VALUES
(605, 0, '', '', 0),
(635, 0, '', '', 0),
(641, 0, '', '', 0),
(646, 0, '', '', 0),
(724, 0, '', '', 0),
(726, 0, '', '', 0),
(750, 0, '', '', 0) ;

#
# End of data contents of table `wp_WP_SEO_Cache`
# --------------------------------------------------------



#
# Delete any existing table `wp_WP_SEO_Redirection`
#

DROP TABLE IF EXISTS `wp_WP_SEO_Redirection`;


#
# Table structure of table `wp_WP_SEO_Redirection`
#

CREATE TABLE `wp_WP_SEO_Redirection` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `enabled` int(1) NOT NULL DEFAULT '1',
  `redirect_from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_from_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_from_folder_settings` int(1) NOT NULL,
  `redirect_from_subfolders` int(1) NOT NULL DEFAULT '1',
  `redirect_to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_to_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_to_folder_settings` int(1) NOT NULL DEFAULT '1',
  `regex` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_type` int(2) NOT NULL DEFAULT '1',
  `postID` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `redirect_from` (`redirect_from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_WP_SEO_Redirection`
#

#
# End of data contents of table `wp_WP_SEO_Redirection`
# --------------------------------------------------------



#
# Delete any existing table `wp_WP_SEO_Redirection_LOG`
#

DROP TABLE IF EXISTS `wp_WP_SEO_Redirection_LOG`;


#
# Table structure of table `wp_WP_SEO_Redirection_LOG`
#

CREATE TABLE `wp_WP_SEO_Redirection_LOG` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rID` int(11) unsigned DEFAULT NULL,
  `postID` int(11) unsigned DEFAULT NULL,
  `ctime` datetime NOT NULL,
  `rfrom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rsrc` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `referrer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `os` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `browser` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_WP_SEO_Redirection_LOG`
#

#
# End of data contents of table `wp_WP_SEO_Redirection_LOG`
# --------------------------------------------------------



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-02-22 05:17:22', '2016-02-22 05:17:22', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0),
(3, 498, 'Brian Gardner', 'brian@briangardner.com', 'http://www.briangardner.com/', '76.29.60.137', '2014-11-01 19:13:54', '2014-11-01 19:13:54', 'This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.', 0, '1', '', '', 0, 1),
(4, 498, 'Brian Gardner', 'brian@briangardner.com', 'http://www.briangardner.com/', '76.29.60.137', '2014-11-01 19:14:04', '2014-11-01 19:14:04', 'This is an example of a nested threaded comment which is new in WordPress 2.7. This is where you can reply to a comment that was previously made, and visually makes reading comments to much easier.', 0, '1', '', '', 3, 1),
(5, 498, 'Brian Gardner', 'brian@briangardner.com', 'http://www.briangardner.com/', '76.29.60.137', '2014-11-01 19:14:11', '2014-11-01 19:14:11', 'This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.', 0, '1', '', '', 0, 1),
(6, 498, 'Brian Gardner', 'brian@briangardner.com', 'http://www.briangardner.com/', '76.29.60.137', '2014-11-01 19:14:19', '2014-11-01 19:14:19', 'This is an example of a nested threaded comment which is new in WordPress 2.7. This is where you can reply to a comment that was previously made, and visually makes reading comments to much easier.', 0, '1', '', '', 5, 1),
(7, 498, 'Brian Gardner', 'brian@briangardner.com', 'http://www.briangardner.com/', '76.29.60.137', '2014-11-01 19:14:25', '2014-11-01 19:14:25', 'This is an example of a nested threaded comment which is new in WordPress 2.7. This is where you can reply to a comment that was previously made, and visually makes reading comments to much easier.', 0, '1', '', '', 6, 1),
(8, 498, 'Brian Gardner', 'brian@briangardner.com', '', '76.29.60.137', '2014-11-01 19:14:38', '2014-11-01 19:14:38', 'This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.', 0, '1', '', '', 0, 1) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=3443 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://nighthawktires.stagingcloud.us', 'yes'),
(2, 'home', 'http://nighthawktires.stagingcloud.us', 'yes'),
(3, 'blogname', 'Nighthawk Tires', 'yes'),
(4, 'blogdescription', 'DURA-FLEX® &amp; SOLI-CORE® Solid Skid Steer Tires &amp; DURA-CORE™ Rubber Tracks', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jpeterson@develare.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '5', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/blog/%category%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:25:{i:0;s:29:"gravityforms/gravityforms.php";i:1;s:44:"accordion-shortcode-and-widget/accordion.php";i:2;s:27:"backupbuddy/backupbuddy.php";i:3;s:51:"conductor-custom-fields/conductor-custom-fields.php";i:4;s:49:"conductor-display-pack/conductor-display-pack.php";i:5;s:39:"conductor-genesis/conductor-genesis.php";i:6;s:54:"conductor-woocommerce/conductor-woocommerce-add-on.php";i:7;s:23:"conductor/conductor.php";i:8;s:25:"easy-table/easy-table.php";i:9;s:31:"genesis-simple-hooks/plugin.php";i:10;s:29:"gravityformszapier/zapier.php";i:11;s:29:"image-widget/image-widget.php";i:12;s:13:"note/note.php";i:13;s:27:"p3-profiler/p3-profiler.php";i:14;s:29:"postman-smtp/postman-smtp.php";i:15;s:35:"seo-redirection/seo-redirection.php";i:16;s:26:"shortcode-widget/index.php";i:17;s:21:"usersnap/usersnap.php";i:18;s:27:"woocommerce/woocommerce.php";i:19;s:41:"wordpress-importer/wordpress-importer.php";i:20;s:24:"wordpress-seo/wp-seo.php";i:21;s:63:"wp-migrate-db-pro-media-files/wp-migrate-db-pro-media-files.php";i:22;s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";i:23;s:31:"wp-seo-html-sitemap/sitemap.php";i:24;s:15:"wp101/wp101.php";}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'genesis', 'yes'),
(40, 'stylesheet', 'nighthawktires2016', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '35700', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'page', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:8:{i:1;a:0:{}i:3;a:3:{s:5:"title";s:0:"";s:4:"text";s:199:"<h2><strong>Aftermarket Rubber Tracks</strong> and Solid <strong>Skid Steer Tires</strong><br/>\r\nNever Stop Moving</h2> \r\n<br/>\r\n<a class="button clear white" href="#front-page-6">Request a Quote</a>";s:6:"filter";b:0;}i:4;a:3:{s:5:"title";s:0:"";s:4:"text";s:721:"<h2>The Nighawk Advantage</h2>\r\n<div class="one-third first">\r\n<h3>Best Value</h3>\r\n<div class="content third_img1">\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n</div>\r\n</div>\r\n\r\n<div class="one-third">\r\n<h3>Solid Warranty</h3>\r\n<div class="content third_img2">\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n</div>\r\n</div>\r\n<div class="one-third">\r\n<h3>Superior Performance</h3>\r\n<div class="content third_img3">\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n</div>\r\n</div>";s:6:"filter";b:0;}i:5;a:3:{s:5:"title";s:0:"";s:4:"text";s:858:"<h2>Nighthawk’s Tires and Tracks</h2>\r\n<div class="one-half first">\r\n\r\n<h4>Dure-Flex Solid Tires</h4>\r\n<ul>\r\n<li>Lorem ipsum dolor sit amet, consectetur adiposcing elit.</li>\r\n<li>Lorem ipsum dolor sit amet, consectetur adiposcing elit.</li>\r\n<li>Lorem ipsum dolor sit amet, consectetur adiposcing elit.</li>\r\n<li>Lorem ipsum dolor sit amet, consectetur adiposcing elit.</li>\r\n</ul>\r\n<a class="button clear white" href="#">Learn More</a>\r\n</div>\r\n\r\n<div class="one-half last">\r\n\r\n<h4>Dure-Core Rubber Tracks</h4>\r\n<ul>\r\n<li>Lorem ipsum dolor sit amet, consectetur adiposcing elit.</li>\r\n<li>Lorem ipsum dolor sit amet, consectetur adiposcing elit.</li>\r\n<li>Lorem ipsum dolor sit amet, consectetur adiposcing elit.</li>\r\n<li>Lorem ipsum dolor sit amet, consectetur adiposcing elit.</li>\r\n</ul>\r\n<a class="button clear white" href="#">Learn More</a>\r\n</div>";s:6:"filter";b:0;}i:6;a:3:{s:5:"title";s:0:"";s:4:"text";s:458:"<div class="one-third first">\r\n<img src="/wp-content/uploads/2016/02/logo_bottom.png">\r\n</div>\r\n<div class="two-third">\r\n<div class="vertically_center">\r\n<h2>100% Price Match Guarantee</h2>\r\n"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut nunc imperduet, semper felis et, ultrices lectus. sed nulla ligula, sollicitudin congue malesuada a, placerat ut sem.”"\r\n<span>John Smith, Smith and sons Rental and Equipment</span>\r\n</div>\r\n</div>";s:6:"filter";b:0;}i:7;a:3:{s:5:"title";s:0:"";s:4:"text";s:14:"<h2>Quote</h2>";s:6:"filter";b:0;}i:8;a:3:{s:5:"title";s:0:"";s:4:"text";s:324:"<img src="http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/03/cropped-nighthawktires-logo-final-2-1.png" alt="nighthawktires-logo-final-2" width="300" height="63" class="alignnone size-medium wp-image-684" />\r\n<span>Call Us Today: <span class="fs-phone-route" data-phone-route="237">(855) 429-5669</span></span>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'uninstall_plugins', 'a:1:{s:35:"seo-redirection/seo-redirection.php";s:14:"WPSR_uninstall";}', 'no'),
(81, 'timezone_string', 'America/Chicago', 'yes'),
(83, 'page_on_front', '605', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'initial_db_version', '35700', 'yes'),
(91, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:133:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:19:"manage_postman_smtp";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(92, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'sidebars_widgets', 'a:19:{s:19:"wp_inactive_widgets";a:3:{i:0;s:7:"pages-4";i:1;s:22:"black-studio-tinymce-2";i:2;s:22:"black-studio-tinymce-4";}s:7:"sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:12:"front-page-1";a:1:{i:0;s:6:"text-3";}s:12:"front-page-2";a:1:{i:0;s:6:"text-4";}s:12:"front-page-3";a:1:{i:0;s:6:"text-5";}s:12:"front-page-4";a:1:{i:0;s:6:"text-6";}s:12:"front-page-5";a:0:{}s:12:"front-page-6";a:2:{i:0;s:6:"text-7";i:1;s:14:"gform_widget-3";}s:12:"front-page-7";a:0:{}s:12:"below-header";a:1:{i:0;s:6:"text-8";}s:8:"footer-1";a:0:{}s:11:"after-entry";a:0:{}s:34:"conductor-page-635-content-sidebar";a:8:{i:0;s:17:"widget_sp_image-3";i:1;s:18:"conductor-widget-4";i:2;s:13:"note-widget-5";i:3;s:13:"note-widget-7";i:4;s:18:"shortcode-widget-3";i:5;s:18:"shortcode-widget-5";i:6;s:14:"note-widget-22";i:7;s:14:"note-widget-18";}s:13:"array_version";i:3;s:34:"conductor-page-632-content-sidebar";a:5:{i:0;s:17:"widget_sp_image-7";i:1;s:18:"conductor-widget-7";i:2;s:13:"note-widget-9";i:3;s:14:"note-widget-10";i:4;s:14:"note-widget-24";}s:34:"conductor-page-724-content-sidebar";a:1:{i:0;s:18:"conductor-widget-9";}s:34:"conductor-page-726-content-sidebar";a:7:{i:0;s:17:"widget_sp_image-5";i:1;s:19:"conductor-widget-11";i:2;s:14:"note-widget-12";i:3;s:14:"note-widget-13";i:4;s:14:"note-widget-14";i:5;s:14:"note-widget-15";i:6;s:14:"note-widget-16";}s:34:"conductor-page-750-content-sidebar";a:1:{i:0;s:19:"conductor-widget-19";}s:34:"conductor-page-641-content-sidebar";a:2:{i:0;s:19:"conductor-widget-21";i:1;s:14:"note-widget-26";}}', 'yes'),
(100, 'widget_pages', 'a:3:{s:12:"_multiwidget";i:1;i:3;a:0:{}i:4;a:0:{}}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:11:{i:1459177660;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1459177970;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1459185449;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1459188808;a:1:{s:16:"backupbuddy_cron";a:1:{s:32:"b2d6f4df5dfc2b203ff6fc9b49103fdc";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:2:{i:0;s:12:"housekeeping";i:1;a:0:{}}s:8:"interval";i:86400;}}}i:1459221170;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1459226623;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1459227600;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1459228685;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1459295758;a:1:{s:18:"wpseo_onpage_fetch";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1459814400;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(117, 'can_compress_scripts', '1', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(133, 'recently_activated', 'a:3:{s:70:"squelch-tabs-and-accordions-shortcodes/squelch-tabs-and-accordions.php";i:1458875155;s:44:"data-tables-generator-by-supsystic/index.php";i:1458874129;s:37:"responsive-table/responsive-table.php";i:1458872933;}', 'yes'),
(140, 'postman_state', 'a:4:{s:15:"locking_enabled";b:1;s:12:"install_date";i:1456118689;s:7:"version";s:5:"1.7.2";s:19:"delivery_fail_total";i:4;}', 'yes'),
(143, 'wp-seo-redirection-group', 'a:12:{s:13:"plugin_status";s:1:"1";s:16:"redirection_base";s:37:"http://nighthawktires.stagingcloud.us";s:22:"redirect_control_panel";s:1:"1";s:17:"show_redirect_box";s:1:"1";s:21:"reflect_modifications";s:1:"1";s:14:"history_status";s:1:"1";s:13:"history_limit";s:2:"30";s:21:"p404_discovery_status";s:1:"1";s:16:"p404_redirect_to";s:37:"http://nighthawktires.stagingcloud.us";s:11:"p404_status";s:1:"2";s:9:"keep_data";s:1:"1";s:14:"plugin_version";s:3:"3.5";}', 'yes'),
(148, 'wpseo', 'a:21:{s:14:"blocking_files";a:0:{}s:26:"ignore_blog_public_warning";b:0;s:31:"ignore_meta_description_warning";b:0;s:20:"ignore_page_comments";b:0;s:16:"ignore_permalink";b:0;s:15:"ms_defaults_set";b:0;s:23:"theme_description_found";s:0:"";s:21:"theme_has_description";b:0;s:7:"version";s:5:"3.0.7";s:11:"alexaverify";s:0:"";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:20:"disableadvanced_meta";b:1;s:19:"onpage_indexability";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:11:"person_name";s:0:"";s:12:"website_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"yandexverify";s:0:"";}', 'yes'),
(149, 'wpseo_permalinks', 'a:13:{s:15:"cleanpermalinks";b:0;s:24:"cleanpermalink-extravars";s:0:"";s:29:"cleanpermalink-googlecampaign";b:0;s:31:"cleanpermalink-googlesitesearch";b:0;s:15:"cleanreplytocom";b:0;s:10:"cleanslugs";b:1;s:14:"hide-feedlinks";b:0;s:12:"hide-rsdlink";b:0;s:14:"hide-shortlink";b:0;s:16:"hide-wlwmanifest";b:0;s:18:"redirectattachment";b:0;s:17:"stripcategorybase";b:0;s:13:"trailingslash";b:0;}', 'yes'),
(150, 'wpseo_titles', 'a:54:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:5:"noodp";b:0;s:6:"noydir";b:0;s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;}', 'yes'),
(151, 'wpseo_social', 'a:21:{s:9:"fb_admins";a:0:{}s:12:"fbconnectkey";s:32:"1ead5c4d728303ea286b9446798aeb4d";s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:10:"googleplus";b:0;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:7:"summary";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(152, 'wpseo_rss', 'a:2:{s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}', 'yes'),
(153, 'wpseo_internallinks', 'a:10:{s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:23:"post_types-post-maintax";i:0;}', 'yes'),
(154, 'wpseo_xml', 'a:16:{s:22:"disable_author_sitemap";b:1;s:22:"disable_author_noposts";b:1;s:16:"enablexmlsitemap";b:1;s:16:"entries-per-page";i:1000;s:14:"excluded-posts";s:0:"";s:38:"user_role-administrator-not_in_sitemap";b:0;s:31:"user_role-editor-not_in_sitemap";b:0;s:31:"user_role-author-not_in_sitemap";b:0;s:36:"user_role-contributor-not_in_sitemap";b:0;s:35:"user_role-subscriber-not_in_sitemap";b:0;s:30:"post_types-post-not_in_sitemap";b:0;s:30:"post_types-page-not_in_sitemap";b:0;s:36:"post_types-attachment-not_in_sitemap";b:1;s:34:"taxonomies-category-not_in_sitemap";b:0;s:34:"taxonomies-post_tag-not_in_sitemap";b:0;s:37:"taxonomies-post_format-not_in_sitemap";b:0;}', 'yes'),
(159, 'wp101_db_version', '2', 'yes'),
(168, 'widget_gform_widget', 'a:2:{i:3;a:7:{s:5:"title";s:0:"";s:7:"form_id";s:1:"1";s:9:"showtitle";s:0:"";s:4:"ajax";s:0:"";s:15:"disable_scripts";s:0:"";s:15:"showdescription";s:0:"";s:8:"tabindex";s:1:"1";}s:12:"_multiwidget";i:1;}', 'yes'),
(169, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(171, 'gform_enable_background_updates', '', 'yes'),
(172, 'gform_longtext_ready', '1', 'yes'),
(173, 'rg_form_version', '1.9.16.7', 'yes'),
(181, 'rg_gforms_key', '08bfecb17d767274d6283377a3f999e2', 'yes'),
(182, 'gform_enable_noconflict', '0', 'yes'),
(183, 'rg_gforms_enable_akismet', '', 'yes'),
(184, 'rg_gforms_currency', 'USD', 'yes'),
(191, 'gf_zapier_version', '1.8', 'yes'),
(215, 'WPLANG', '', 'yes'),
(244, 'current_theme', 'Nighthawk Tires 2016', 'yes'),
(245, 'theme_mods_genesis', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1456121453;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:12:"header-right";a:0:{}s:7:"sidebar";N;s:11:"sidebar-alt";N;}}}', 'yes'),
(246, 'theme_switched', '', 'yes'),
(249, 'widget_featured-page', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(250, 'widget_featured-post', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(251, 'widget_user-profile', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(253, 'genesis-settings', 'a:40:{s:13:"theme_version";s:5:"2.2.6";s:10:"db_version";i:2209;s:13:"first_version";s:5:"2.2.6";s:6:"update";i:1;s:20:"update_email_address";s:0:"";s:8:"feed_uri";s:0:"";s:17:"comments_feed_uri";s:0:"";s:11:"site_layout";s:18:"full-width-content";s:14:"comments_posts";i:1;s:16:"trackbacks_posts";i:1;s:15:"content_archive";s:4:"full";s:21:"content_archive_limit";i:0;s:10:"image_size";s:5:"large";s:15:"image_alignment";s:9:"alignleft";s:9:"posts_nav";s:7:"numeric";s:8:"blog_cat";i:0;s:16:"blog_cat_exclude";s:0:"";s:12:"blog_cat_num";i:5;s:14:"header_scripts";s:1419:"<link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-57x57.png">\r\n<link rel="apple-touch-icon" sizes="60x60" href="/apple-touch-icon-60x60.png">\r\n<link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-72x72.png">\r\n<link rel="apple-touch-icon" sizes="76x76" href="/apple-touch-icon-76x76.png">\r\n<link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114x114.png">\r\n<link rel="apple-touch-icon" sizes="120x120" href="/apple-touch-icon-120x120.png">\r\n<link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144x144.png">\r\n<link rel="apple-touch-icon" sizes="152x152" href="/apple-touch-icon-152x152.png">\r\n<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon-180x180.png">\r\n<link rel="icon" type="image/png" href="/favicon-32x32.png" sizes="32x32">\r\n<link rel="icon" type="image/png" href="/favicon-194x194.png" sizes="194x194">\r\n<link rel="icon" type="image/png" href="/favicon-96x96.png" sizes="96x96">\r\n<link rel="icon" type="image/png" href="/android-chrome-192x192.png" sizes="192x192">\r\n<link rel="icon" type="image/png" href="/favicon-16x16.png" sizes="16x16">\r\n<link rel="manifest" href="/manifest.json">\r\n<link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">\r\n<meta name="msapplication-TileColor" content="#da532c">\r\n<meta name="msapplication-TileImage" content="/mstile-144x144.png">\r\n<meta name="theme-color" content="#ffffff">";s:14:"footer_scripts";s:0:"";s:21:"breadcrumb_front_page";i:0;s:15:"breadcrumb_home";i:0;s:17:"breadcrumb_single";i:0;s:15:"breadcrumb_page";i:0;s:21:"breadcrumb_posts_page";i:0;s:18:"breadcrumb_archive";i:0;s:14:"breadcrumb_404";i:0;s:21:"breadcrumb_attachment";i:0;s:14:"comments_pages";i:0;s:25:"content_archive_thumbnail";i:0;s:9:"superfish";i:0;s:13:"redirect_feed";i:0;s:22:"redirect_comments_feed";i:0;s:16:"trackbacks_pages";i:0;s:12:"update_email";i:0;s:10:"blog_title";s:0:"";s:10:"nav_extras";s:0:"";s:21:"nav_extras_twitter_id";s:0:"";s:15:"style_selection";s:0:"";s:23:"nav_extras_twitter_text";s:0:"";}', 'yes'),
(258, 'theme_mods_altitude-pro', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1456123615;s:4:"data";a:11:{s:19:"wp_inactive_widgets";a:6:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:8:"search-2";i:3;s:12:"categories-2";i:4;s:14:"recent-posts-2";i:5;s:17:"recent-comments-2";}s:7:"sidebar";a:0:{}s:12:"front-page-1";N;s:12:"front-page-2";N;s:12:"front-page-3";N;s:12:"front-page-4";N;s:12:"front-page-5";N;s:12:"front-page-6";N;s:12:"front-page-7";N;s:8:"footer-1";N;s:11:"after-entry";N;}}}', 'yes'),
(281, 'category_children', 'a:2:{i:3;a:3:{i:0;i:7;i:1;i:8;i:2;i:9;}i:7;a:3:{i:0;i:10;i:1;i:11;i:2;i:12;}}', 'yes'),
(298, 'theme_mods_Nighthawk Tires 2016', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1456128156;s:4:"data";a:11:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:12:"front-page-1";N;s:12:"front-page-2";N;s:12:"front-page-3";N;s:12:"front-page-4";N;s:12:"front-page-5";N;s:12:"front-page-6";N;s:12:"front-page-7";N;s:8:"footer-1";N;s:11:"after-entry";N;}}}', 'yes'),
(315, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1456128192;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(316, 'theme_mods_nighthawktires2016', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:22;s:6:"footer";i:25;}s:12:"header_image";s:106:"http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/03/cropped-nighthawktires-logo-final-2-1.png";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:722;s:3:"url";s:106:"http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/03/cropped-nighthawktires-logo-final-2-1.png";s:13:"thumbnail_url";s:106:"http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/03/cropped-nighthawktires-logo-final-2-1.png";s:6:"height";i:76;s:5:"width";i:389;}}', 'yes'),
(480, '1-altitude-image', 'http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/03/Banner_1-new.jpg', 'yes'),
(518, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(557, '3-altitude-image', 'http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/03/Banner_2-new.jpg', 'yes'),
(676, 'widget_widget_sp_image', 'a:4:{s:12:"_multiwidget";i:1;i:3;a:14:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:4:"link";s:0:"";s:6:"linkid";s:0:"";s:10:"linktarget";s:5:"_self";s:5:"width";i:740;s:6:"height";i:416;s:4:"size";s:4:"full";s:5:"align";s:4:"none";s:3:"alt";s:22:"Solid Skid Steer Tires";s:3:"rel";s:0:"";s:13:"attachment_id";i:733;s:8:"imageurl";s:99:"http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/03/solid-skid-steer-tires-740x416.jpg";s:12:"aspect_ratio";d:2.95999999999999996447286321199499070644378662109375;}i:5;a:14:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:4:"link";s:0:"";s:6:"linkid";s:0:"";s:10:"linktarget";s:5:"_self";s:5:"width";i:740;s:6:"height";i:416;s:4:"size";s:4:"full";s:5:"align";s:4:"none";s:3:"alt";s:0:"";s:3:"rel";s:0:"";s:13:"attachment_id";i:742;s:8:"imageurl";s:121:"http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/03/solid-aerial-work-platform-telehandler-tires-740x416.jpg";s:12:"aspect_ratio";d:1.778846153846153743671720803831703960895538330078125;}i:7;a:14:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:4:"link";s:0:"";s:6:"linkid";s:0:"";s:10:"linktarget";s:5:"_self";s:5:"width";i:740;s:6:"height";i:416;s:4:"size";s:4:"full";s:5:"align";s:4:"none";s:3:"alt";s:0:"";s:3:"rel";s:0:"";s:13:"attachment_id";i:744;s:8:"imageurl";s:102:"http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/03/aftermarket-rubber-tracks-740x416.jpg";s:12:"aspect_ratio";d:1.778846153846153743671720803831703960895538330078125;}}', 'yes'),
(677, '_image_widget_version', '4.2.1', 'yes'),
(754, '5-altitude-image', '', 'yes'),
(1003, 'wpseosms', 'a:6:{s:6:"pageID";s:3:"667";s:8:"location";s:5:"after";s:7:"columns";s:1:"1";s:11:"css-disable";s:2:"no";s:8:"xml-link";s:2:"no";s:12:"credits-link";s:2:"no";}', 'yes'),
(1143, 'usersnap_options', 'a:7:{s:7:"api-key";s:36:"49ef7470-a194-4428-9191-edf5798aebf4";s:11:"visible-for";s:5:"roles";s:17:"visible-for-roles";a:1:{i:0;s:13:"administrator";}s:19:"visible-for-backend";s:7:"backend";s:17:"usersnap-api-requ";b:0;s:7:"message";s:0:"";s:5:"error";b:0;}', 'yes'),
(1652, 'p3-profiler_version', '1.5.0', 'yes'),
(1654, 'p3-profiler_debug_log', 'a:0:{}', 'yes'),
(1655, 'p3-profiler_options', 'a:6:{s:17:"profiling_enabled";b:0;s:20:"disable_opcode_cache";b:1;s:14:"use_current_ip";b:1;s:10:"ip_address";s:0:"";s:12:"cache_buster";b:1;s:5:"debug";b:0;}', 'yes'),
(1656, 'p3_notices', 'a:0:{}', 'yes'),
(1676, 'p3_scan_', '{"url":"\\/wp-admin\\/admin-ajax.php","ip":"73.55.221.78","pid":121960,"date":"2016-03-09T21:24:44+00:00","theme_name":"\\/home1\\/yourdev\\/public_html\\/nighthawktires\\/wp-content\\/themes\\/genesis\\/lib\\/init.php","runtime":{"total":1.58781480789,"wordpress":0.188504457474,"theme":0.178235054016,"plugins":0.911091804504,"profile":0.30172419548,"breakdown":{"p3-profiler":0.301657915115,"gravityforms":0.136517524719,"gravityformszapier":0.0046694278717,"html-sitemap":0.00126004219055,"image-widget":0.000645637512207,"postman-smtp":0.161872148514,"seo-redirection":0.0478081703186,"usersnap":0.00379133224487,"wordpress-seo":0.15472650528,"wp-migrate-db-pro-media-files":0.00759625434875,"wp-migrate-db-pro":0.0316381454468,"wp-seo-html-sitemap":0.00215697288513,"wp101":0.0567517280579}},"memory":46923776,"stacksize":6828,"queries":28}\n{"url":"\\/wp-admin\\/admin-ajax.php","ip":"73.55.221.78","pid":3038,"date":"2016-03-16T21:21:12+00:00","theme_name":"\\/home\\/develo06\\/public_html\\/nighthawktires\\/wp-content\\/themes\\/genesis\\/lib\\/init.php","runtime":{"total":0.48400187492371,"wordpress":0.069698810577393,"theme":0.031158208847046,"plugins":0.2198166847229,"profile":0.15235376358032,"breakdown":{"p3-profiler":0.013273954391479,"gravityforms":0.051653385162354,"backupbuddy":0.02312183380127,"conductor-custom-fields":0.0012238025665283,"conductor-display-pack":0.00075912475585938,"conductor-genesis":0.0024023056030273,"conductor":0.015279531478882,"gravityformszapier":0.0021905899047852,"html-sitemap":0.0006706714630127,"image-widget":0.00031161308288574,"note":0.010921955108643,"postman-smtp":0.03739333152771,"seo-redirection":0.0047409534454346,"usersnap":0.0019972324371338,"wordpress-seo":0.02985143661499,"wp-migrate-db-pro-media-files":0.0038108825683594,"wp-migrate-db-pro":0.014847755432129,"wp-seo-html-sitemap":0.0011570453643799,"wp101":0.0042092800140381}},"memory":52428800,"stacksize":7244,"queries":32}\n', 'yes'),
(1806, 'woocommerce_default_country', 'US:TX', 'yes'),
(1807, 'woocommerce_allowed_countries', 'all', 'yes'),
(1808, 'woocommerce_specific_allowed_countries', '', 'yes'),
(1809, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(1810, 'woocommerce_demo_store', 'no', 'yes'),
(1811, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(1812, 'woocommerce_currency', 'USD', 'yes'),
(1813, 'woocommerce_currency_pos', 'left', 'yes'),
(1814, 'woocommerce_price_thousand_sep', ',', 'yes'),
(1815, 'woocommerce_price_decimal_sep', '.', 'yes'),
(1816, 'woocommerce_price_num_decimals', '2', 'yes'),
(1817, 'woocommerce_weight_unit', 'lbs', 'yes'),
(1818, 'woocommerce_dimension_unit', 'in', 'yes'),
(1819, 'woocommerce_enable_review_rating', 'yes', 'no'),
(1820, 'woocommerce_review_rating_required', 'yes', 'no'),
(1821, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(1822, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(1823, 'woocommerce_shop_page_id', '689', 'yes'),
(1824, 'woocommerce_shop_page_display', '', 'yes'),
(1825, 'woocommerce_category_archive_display', '', 'yes'),
(1826, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(1827, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(1828, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(1829, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(1830, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(1831, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(1832, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(1833, 'woocommerce_manage_stock', 'yes', 'yes'),
(1834, 'woocommerce_hold_stock_minutes', '60', 'no'),
(1835, 'woocommerce_notify_low_stock', 'yes', 'no'),
(1836, 'woocommerce_notify_no_stock', 'yes', 'no'),
(1837, 'woocommerce_stock_email_recipient', 'jpeterson@develare.com', 'no'),
(1838, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(1839, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(1840, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(1841, 'woocommerce_stock_format', '', 'yes'),
(1842, 'woocommerce_file_download_method', 'force', 'no'),
(1843, 'woocommerce_downloads_require_login', 'no', 'no'),
(1844, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(1845, 'woocommerce_calc_taxes', 'yes', 'yes'),
(1846, 'woocommerce_prices_include_tax', 'no', 'yes'),
(1847, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(1848, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(1849, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(1850, 'woocommerce_tax_classes', 'Reduced Rate\nZero Rate', 'yes'),
(1851, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(1852, 'woocommerce_tax_display_cart', 'excl', 'no'),
(1853, 'woocommerce_price_display_suffix', '', 'yes'),
(1854, 'woocommerce_tax_total_display', 'itemized', 'no'),
(1855, 'woocommerce_enable_coupons', 'yes', 'no'),
(1856, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(1857, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(1858, 'woocommerce_force_ssl_checkout', 'no', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1859, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(1860, 'woocommerce_cart_page_id', '690', 'yes'),
(1861, 'woocommerce_checkout_page_id', '691', 'yes'),
(1862, 'woocommerce_terms_page_id', '', 'no'),
(1863, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(1864, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(1865, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(1866, 'woocommerce_calc_shipping', 'yes', 'yes'),
(1867, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(1868, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(1869, 'woocommerce_ship_to_destination', 'billing', 'no'),
(1870, 'woocommerce_ship_to_countries', '', 'yes'),
(1871, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(1872, 'woocommerce_myaccount_page_id', '692', 'yes'),
(1873, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(1874, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(1875, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(1876, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(1877, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(1878, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(1879, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(1880, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(1881, 'woocommerce_registration_generate_username', 'yes', 'no'),
(1882, 'woocommerce_registration_generate_password', 'no', 'no'),
(1883, 'woocommerce_email_from_name', 'Nighthawk Tires', 'no'),
(1884, 'woocommerce_email_from_address', 'jpeterson@develare.com', 'no'),
(1885, 'woocommerce_email_header_image', '', 'no'),
(1886, 'woocommerce_email_footer_text', 'Nighthawk Tires - Powered by WooCommerce', 'no'),
(1887, 'woocommerce_email_base_color', '#557da1', 'no'),
(1888, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(1889, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(1890, 'woocommerce_email_text_color', '#505050', 'no'),
(1891, 'woocommerce_api_enabled', 'yes', 'yes'),
(1903, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1904, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1905, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1906, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1907, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1908, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1909, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1910, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1911, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1912, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1913, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1916, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(1936, 'woocommerce_paypal_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(1937, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(1938, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(1939, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(1944, 'woocommerce_allow_tracking', 'yes', 'yes'),
(1945, 'woocommerce_tracker_last_send', '1458734162', 'yes'),
(1954, 'product_cat_children', 'a:0:{}', 'yes'),
(1973, 'product_shipping_class_children', 'a:0:{}', 'yes'),
(2006, 'wpseo_dismiss_recalculate', '1', 'yes'),
(2054, 'widget_conductor-widget', 'a:12:{s:12:"_multiwidget";i:1;i:3;a:0:{}i:4;a:29:{s:5:"title";b:0;s:10:"hide_title";b:1;s:12:"feature_many";b:0;s:9:"post_type";s:4:"page";s:12:"content_type";s:4:"page";s:7:"post_id";i:635;s:3:"cat";s:1:"0";s:7:"orderby";s:4:"date";s:5:"order";s:4:"DESC";s:13:"max_num_posts";s:1:"5";s:14:"posts_per_page";s:0:"";s:6:"offset";s:1:"1";s:11:"widget_size";s:5:"large";s:15:"flexbox_columns";s:1:"1";s:13:"custom_fields";s:0:"";s:6:"output";a:6:{i:10;a:7:{s:2:"id";s:14:"featured_image";s:8:"priority";i:10;s:5:"label";s:14:"Featured Image";s:4:"type";s:8:"built-in";s:7:"visible";b:0;s:8:"callback";s:31:"conductor_widget_featured_image";s:4:"link";b:1;}i:20;a:7:{s:2:"id";s:10:"post_title";s:8:"priority";i:20;s:5:"label";s:5:"Title";s:4:"type";s:10:"post_title";s:7:"visible";b:1;s:8:"callback";s:27:"conductor_widget_post_title";s:4:"link";b:1;}i:30;a:7:{s:2:"id";s:13:"author_byline";s:8:"priority";i:30;s:5:"label";s:13:"Author Byline";s:4:"type";s:8:"built-in";s:7:"visible";b:0;s:8:"callback";s:30:"conductor_widget_author_byline";s:4:"link";b:0;}i:40;a:8:{s:2:"id";s:12:"post_content";s:8:"priority";i:40;s:5:"label";s:7:"Content";s:4:"type";s:7:"content";s:7:"visible";b:1;s:8:"callback";s:29:"conductor_widget_post_content";s:4:"link";b:0;s:5:"value";s:7:"content";}i:50;a:7:{s:2:"id";s:9:"read_more";s:8:"priority";i:50;s:5:"label";s:14:"[Read more...]";s:4:"type";s:9:"read_more";s:7:"visible";b:0;s:8:"callback";s:26:"conductor_widget_read_more";s:4:"link";b:1;}i:60;a:7:{s:2:"id";s:19:"genesis_footer_meta";s:8:"priority";i:60;s:5:"label";s:12:"Genesis Meta";s:4:"type";s:19:"genesis_footer_meta";s:7:"visible";b:1;s:8:"callback";s:36:"conductor_widget_genesis_footer_meta";s:4:"link";b:0;}}s:20:"post_thumbnails_size";b:0;s:14:"excerpt_length";i:55;s:9:"css_class";b:0;s:8:"post__in";s:0:"";s:12:"post__not_in";s:0:"";s:7:"flexbox";a:1:{s:7:"columns";i:1;}s:10:"query_args";a:9:{s:9:"post_type";s:4:"post";s:3:"cat";b:0;s:7:"orderby";s:4:"date";s:5:"order";s:4:"DESC";s:13:"max_num_posts";s:1:"5";s:6:"offset";i:1;s:14:"posts_per_page";s:0:"";s:8:"post__in";b:0;s:12:"post__not_in";b:0;}s:15:"hide_post_title";b:0;s:18:"hide_author_byline";b:0;s:20:"hide_post_thumbnails";b:0;s:14:"hide_read_more";b:0;s:15:"output_elements";a:6:{s:14:"featured_image";i:10;s:10:"post_title";i:20;s:13:"author_byline";i:30;s:12:"post_content";i:40;s:9:"read_more";i:50;s:19:"genesis_footer_meta";i:60;}s:20:"content_display_type";s:7:"content";}i:5;a:0:{}i:7;a:29:{s:5:"title";b:0;s:12:"feature_many";b:0;s:9:"post_type";s:4:"page";s:12:"content_type";s:4:"page";s:7:"post_id";i:632;s:3:"cat";s:1:"0";s:7:"orderby";s:4:"date";s:5:"order";s:4:"DESC";s:13:"max_num_posts";s:1:"5";s:14:"posts_per_page";s:0:"";s:6:"offset";s:1:"1";s:11:"widget_size";s:5:"large";s:15:"flexbox_columns";s:1:"1";s:13:"custom_fields";s:0:"";s:6:"output";a:6:{i:10;a:7:{s:2:"id";s:14:"featured_image";s:8:"priority";i:10;s:5:"label";s:14:"Featured Image";s:4:"type";s:8:"built-in";s:7:"visible";b:0;s:8:"callback";s:31:"conductor_widget_featured_image";s:4:"link";b:1;}i:20;a:7:{s:2:"id";s:10:"post_title";s:8:"priority";i:20;s:5:"label";s:5:"Title";s:4:"type";s:10:"post_title";s:7:"visible";b:1;s:8:"callback";s:27:"conductor_widget_post_title";s:4:"link";b:1;}i:30;a:7:{s:2:"id";s:13:"author_byline";s:8:"priority";i:30;s:5:"label";s:13:"Author Byline";s:4:"type";s:8:"built-in";s:7:"visible";b:0;s:8:"callback";s:30:"conductor_widget_author_byline";s:4:"link";b:0;}i:40;a:8:{s:2:"id";s:12:"post_content";s:8:"priority";i:40;s:5:"label";s:7:"Content";s:4:"type";s:7:"content";s:7:"visible";b:1;s:8:"callback";s:29:"conductor_widget_post_content";s:4:"link";b:0;s:5:"value";s:7:"content";}i:50;a:7:{s:2:"id";s:9:"read_more";s:8:"priority";i:50;s:5:"label";s:14:"[Read more...]";s:4:"type";s:9:"read_more";s:7:"visible";b:0;s:8:"callback";s:26:"conductor_widget_read_more";s:4:"link";b:1;}i:60;a:7:{s:2:"id";s:19:"genesis_footer_meta";s:8:"priority";i:60;s:5:"label";s:12:"Genesis Meta";s:4:"type";s:19:"genesis_footer_meta";s:7:"visible";b:1;s:8:"callback";s:36:"conductor_widget_genesis_footer_meta";s:4:"link";b:0;}}s:20:"post_thumbnails_size";b:0;s:14:"excerpt_length";i:55;s:9:"css_class";b:0;s:8:"post__in";s:0:"";s:12:"post__not_in";s:0:"";s:7:"flexbox";a:1:{s:7:"columns";i:1;}s:10:"query_args";a:9:{s:9:"post_type";s:4:"post";s:3:"cat";b:0;s:7:"orderby";s:4:"date";s:5:"order";s:4:"DESC";s:13:"max_num_posts";s:1:"5";s:6:"offset";i:1;s:14:"posts_per_page";s:0:"";s:8:"post__in";b:0;s:12:"post__not_in";b:0;}s:10:"hide_title";b:0;s:15:"hide_post_title";b:0;s:18:"hide_author_byline";b:0;s:20:"hide_post_thumbnails";b:0;s:14:"hide_read_more";b:0;s:15:"output_elements";a:6:{s:14:"featured_image";i:10;s:10:"post_title";i:20;s:13:"author_byline";i:30;s:12:"post_content";i:40;s:9:"read_more";i:50;s:19:"genesis_footer_meta";i:60;}s:20:"content_display_type";s:7:"content";}i:9;a:29:{s:5:"title";b:0;s:12:"feature_many";b:1;s:9:"post_type";s:4:"page";s:12:"content_type";s:4:"page";s:7:"post_id";b:0;s:3:"cat";s:1:"0";s:7:"orderby";s:5:"title";s:5:"order";s:4:"DESC";s:13:"max_num_posts";s:1:"5";s:14:"posts_per_page";s:0:"";s:6:"offset";s:1:"1";s:11:"widget_size";s:6:"medium";s:15:"flexbox_columns";s:1:"1";s:13:"custom_fields";s:0:"";s:6:"output";a:6:{i:10;a:7:{s:2:"id";s:14:"featured_image";s:8:"priority";i:10;s:5:"label";s:14:"Featured Image";s:4:"type";s:8:"built-in";s:7:"visible";b:1;s:8:"callback";s:31:"conductor_widget_featured_image";s:4:"link";b:1;}i:20;a:7:{s:2:"id";s:10:"post_title";s:8:"priority";i:20;s:5:"label";s:5:"Title";s:4:"type";s:10:"post_title";s:7:"visible";b:1;s:8:"callback";s:27:"conductor_widget_post_title";s:4:"link";b:1;}i:30;a:7:{s:2:"id";s:13:"author_byline";s:8:"priority";i:30;s:5:"label";s:13:"Author Byline";s:4:"type";s:8:"built-in";s:7:"visible";b:0;s:8:"callback";s:30:"conductor_widget_author_byline";s:4:"link";b:0;}i:40;a:8:{s:2:"id";s:12:"post_content";s:8:"priority";i:40;s:5:"label";s:7:"Content";s:4:"type";s:7:"content";s:7:"visible";b:0;s:8:"callback";s:29:"conductor_widget_post_content";s:4:"link";b:0;s:5:"value";s:7:"content";}i:50;a:7:{s:2:"id";s:9:"read_more";s:8:"priority";i:50;s:5:"label";s:14:"[Read more...]";s:4:"type";s:9:"read_more";s:7:"visible";b:0;s:8:"callback";s:26:"conductor_widget_read_more";s:4:"link";b:1;}i:60;a:7:{s:2:"id";s:19:"genesis_footer_meta";s:8:"priority";i:60;s:5:"label";s:12:"Genesis Meta";s:4:"type";s:19:"genesis_footer_meta";s:7:"visible";b:1;s:8:"callback";s:36:"conductor_widget_genesis_footer_meta";s:4:"link";b:0;}}s:20:"post_thumbnails_size";b:0;s:14:"excerpt_length";i:55;s:9:"css_class";b:0;s:8:"post__in";s:7:"635,726";s:12:"post__not_in";s:0:"";s:7:"flexbox";a:1:{s:7:"columns";i:1;}s:10:"query_args";a:9:{s:9:"post_type";s:4:"page";s:3:"cat";b:0;s:7:"orderby";s:5:"title";s:5:"order";s:4:"DESC";s:13:"max_num_posts";i:5;s:6:"offset";i:1;s:14:"posts_per_page";s:0:"";s:8:"post__in";s:7:"635,726";s:12:"post__not_in";b:0;}s:10:"hide_title";b:0;s:15:"hide_post_title";b:0;s:18:"hide_author_byline";b:0;s:20:"hide_post_thumbnails";b:0;s:14:"hide_read_more";b:0;s:15:"output_elements";a:6:{s:14:"featured_image";i:10;s:10:"post_title";i:20;s:13:"author_byline";i:30;s:12:"post_content";i:40;s:9:"read_more";i:50;s:19:"genesis_footer_meta";i:60;}s:20:"content_display_type";s:7:"content";}i:11;a:29:{s:5:"title";b:0;s:12:"feature_many";b:0;s:9:"post_type";s:4:"page";s:12:"content_type";s:4:"page";s:7:"post_id";i:726;s:3:"cat";s:1:"0";s:7:"orderby";s:4:"date";s:5:"order";s:4:"DESC";s:13:"max_num_posts";s:1:"5";s:14:"posts_per_page";s:0:"";s:6:"offset";s:1:"1";s:11:"widget_size";s:5:"large";s:15:"flexbox_columns";s:1:"1";s:13:"custom_fields";s:0:"";s:6:"output";a:6:{i:10;a:7:{s:2:"id";s:14:"featured_image";s:8:"priority";i:10;s:5:"label";s:14:"Featured Image";s:4:"type";s:8:"built-in";s:7:"visible";b:0;s:8:"callback";s:31:"conductor_widget_featured_image";s:4:"link";b:1;}i:20;a:7:{s:2:"id";s:10:"post_title";s:8:"priority";i:20;s:5:"label";s:5:"Title";s:4:"type";s:10:"post_title";s:7:"visible";b:1;s:8:"callback";s:27:"conductor_widget_post_title";s:4:"link";b:1;}i:30;a:7:{s:2:"id";s:13:"author_byline";s:8:"priority";i:30;s:5:"label";s:13:"Author Byline";s:4:"type";s:8:"built-in";s:7:"visible";b:0;s:8:"callback";s:30:"conductor_widget_author_byline";s:4:"link";b:0;}i:40;a:8:{s:2:"id";s:12:"post_content";s:8:"priority";i:40;s:5:"label";s:7:"Content";s:4:"type";s:7:"content";s:7:"visible";b:1;s:8:"callback";s:29:"conductor_widget_post_content";s:4:"link";b:0;s:5:"value";s:7:"content";}i:50;a:7:{s:2:"id";s:9:"read_more";s:8:"priority";i:50;s:5:"label";s:14:"[Read more...]";s:4:"type";s:9:"read_more";s:7:"visible";b:0;s:8:"callback";s:26:"conductor_widget_read_more";s:4:"link";b:1;}i:60;a:7:{s:2:"id";s:19:"genesis_footer_meta";s:8:"priority";i:60;s:5:"label";s:12:"Genesis Meta";s:4:"type";s:19:"genesis_footer_meta";s:7:"visible";b:1;s:8:"callback";s:36:"conductor_widget_genesis_footer_meta";s:4:"link";b:0;}}s:20:"post_thumbnails_size";b:0;s:14:"excerpt_length";i:55;s:9:"css_class";b:0;s:8:"post__in";s:0:"";s:12:"post__not_in";s:0:"";s:7:"flexbox";a:1:{s:7:"columns";i:1;}s:10:"query_args";a:9:{s:9:"post_type";s:4:"post";s:3:"cat";b:0;s:7:"orderby";s:4:"date";s:5:"order";s:4:"DESC";s:13:"max_num_posts";s:1:"5";s:6:"offset";i:1;s:14:"posts_per_page";s:0:"";s:8:"post__in";b:0;s:12:"post__not_in";b:0;}s:10:"hide_title";b:0;s:15:"hide_post_title";b:0;s:18:"hide_author_byline";b:0;s:20:"hide_post_thumbnails";b:0;s:14:"hide_read_more";b:0;s:15:"output_elements";a:6:{s:14:"featured_image";i:10;s:10:"post_title";i:20;s:13:"author_byline";i:30;s:12:"post_content";i:40;s:9:"read_more";i:50;s:19:"genesis_footer_meta";i:60;}s:20:"content_display_type";s:7:"content";}i:13;a:0:{}i:15;a:0:{}i:17;a:0:{}i:19;a:29:{s:5:"title";b:0;s:12:"feature_many";b:1;s:9:"post_type";s:4:"page";s:12:"content_type";s:4:"page";s:7:"post_id";b:0;s:3:"cat";s:1:"0";s:7:"orderby";s:5:"title";s:5:"order";s:4:"DESC";s:13:"max_num_posts";s:1:"5";s:14:"posts_per_page";s:0:"";s:6:"offset";s:1:"1";s:11:"widget_size";s:6:"medium";s:15:"flexbox_columns";s:1:"1";s:13:"custom_fields";s:0:"";s:6:"output";a:6:{i:10;a:7:{s:2:"id";s:14:"featured_image";s:8:"priority";i:10;s:5:"label";s:14:"Featured Image";s:4:"type";s:8:"built-in";s:7:"visible";b:1;s:8:"callback";s:31:"conductor_widget_featured_image";s:4:"link";b:1;}i:20;a:7:{s:2:"id";s:10:"post_title";s:8:"priority";i:20;s:5:"label";s:5:"Title";s:4:"type";s:10:"post_title";s:7:"visible";b:1;s:8:"callback";s:27:"conductor_widget_post_title";s:4:"link";b:1;}i:30;a:7:{s:2:"id";s:13:"author_byline";s:8:"priority";i:30;s:5:"label";s:13:"Author Byline";s:4:"type";s:8:"built-in";s:7:"visible";b:0;s:8:"callback";s:30:"conductor_widget_author_byline";s:4:"link";b:0;}i:40;a:8:{s:2:"id";s:12:"post_content";s:8:"priority";i:40;s:5:"label";s:7:"Content";s:4:"type";s:7:"content";s:7:"visible";b:0;s:8:"callback";s:29:"conductor_widget_post_content";s:4:"link";b:0;s:5:"value";s:7:"content";}i:50;a:7:{s:2:"id";s:9:"read_more";s:8:"priority";i:50;s:5:"label";s:14:"[Read more...]";s:4:"type";s:9:"read_more";s:7:"visible";b:0;s:8:"callback";s:26:"conductor_widget_read_more";s:4:"link";b:1;}i:60;a:7:{s:2:"id";s:19:"genesis_footer_meta";s:8:"priority";i:60;s:5:"label";s:12:"Genesis Meta";s:4:"type";s:19:"genesis_footer_meta";s:7:"visible";b:1;s:8:"callback";s:36:"conductor_widget_genesis_footer_meta";s:4:"link";b:0;}}s:20:"post_thumbnails_size";b:0;s:14:"excerpt_length";i:55;s:9:"css_class";b:0;s:8:"post__in";s:3:"632";s:12:"post__not_in";s:0:"";s:7:"flexbox";a:1:{s:7:"columns";i:1;}s:10:"query_args";a:9:{s:9:"post_type";s:4:"page";s:3:"cat";b:0;s:7:"orderby";s:5:"title";s:5:"order";s:4:"DESC";s:13:"max_num_posts";i:5;s:6:"offset";i:1;s:14:"posts_per_page";s:0:"";s:8:"post__in";s:3:"632";s:12:"post__not_in";b:0;}s:10:"hide_title";b:0;s:15:"hide_post_title";b:0;s:18:"hide_author_byline";b:0;s:20:"hide_post_thumbnails";b:0;s:14:"hide_read_more";b:0;s:15:"output_elements";a:6:{s:14:"featured_image";i:10;s:10:"post_title";i:20;s:13:"author_byline";i:30;s:12:"post_content";i:40;s:9:"read_more";i:50;s:19:"genesis_footer_meta";i:60;}s:20:"content_display_type";s:7:"content";}i:21;a:29:{s:5:"title";b:0;s:12:"feature_many";b:0;s:9:"post_type";s:4:"page";s:12:"content_type";s:4:"page";s:7:"post_id";i:641;s:3:"cat";s:1:"0";s:7:"orderby";s:4:"date";s:5:"order";s:4:"DESC";s:13:"max_num_posts";s:1:"5";s:14:"posts_per_page";s:0:"";s:6:"offset";s:1:"1";s:11:"widget_size";s:5:"large";s:15:"flexbox_columns";s:1:"1";s:13:"custom_fields";s:0:"";s:6:"output";a:6:{i:10;a:7:{s:2:"id";s:14:"featured_image";s:8:"priority";i:10;s:5:"label";s:14:"Featured Image";s:4:"type";s:8:"built-in";s:7:"visible";b:1;s:8:"callback";s:31:"conductor_widget_featured_image";s:4:"link";b:1;}i:20;a:7:{s:2:"id";s:10:"post_title";s:8:"priority";i:20;s:5:"label";s:5:"Title";s:4:"type";s:10:"post_title";s:7:"visible";b:1;s:8:"callback";s:27:"conductor_widget_post_title";s:4:"link";b:1;}i:30;a:7:{s:2:"id";s:13:"author_byline";s:8:"priority";i:30;s:5:"label";s:13:"Author Byline";s:4:"type";s:8:"built-in";s:7:"visible";b:0;s:8:"callback";s:30:"conductor_widget_author_byline";s:4:"link";b:0;}i:40;a:8:{s:2:"id";s:12:"post_content";s:8:"priority";i:40;s:5:"label";s:7:"Content";s:4:"type";s:7:"content";s:7:"visible";b:1;s:8:"callback";s:29:"conductor_widget_post_content";s:4:"link";b:0;s:5:"value";s:7:"content";}i:50;a:7:{s:2:"id";s:9:"read_more";s:8:"priority";i:50;s:5:"label";s:14:"[Read more...]";s:4:"type";s:9:"read_more";s:7:"visible";b:0;s:8:"callback";s:26:"conductor_widget_read_more";s:4:"link";b:1;}i:60;a:7:{s:2:"id";s:19:"genesis_footer_meta";s:8:"priority";i:60;s:5:"label";s:12:"Genesis Meta";s:4:"type";s:19:"genesis_footer_meta";s:7:"visible";b:1;s:8:"callback";s:36:"conductor_widget_genesis_footer_meta";s:4:"link";b:0;}}s:20:"post_thumbnails_size";b:0;s:14:"excerpt_length";i:55;s:9:"css_class";b:0;s:8:"post__in";s:0:"";s:12:"post__not_in";s:0:"";s:7:"flexbox";a:1:{s:7:"columns";i:1;}s:10:"query_args";a:9:{s:9:"post_type";s:4:"post";s:3:"cat";b:0;s:7:"orderby";s:4:"date";s:5:"order";s:4:"DESC";s:13:"max_num_posts";s:1:"5";s:6:"offset";i:1;s:14:"posts_per_page";s:0:"";s:8:"post__in";b:0;s:12:"post__not_in";b:0;}s:10:"hide_title";b:0;s:15:"hide_post_title";b:0;s:18:"hide_author_byline";b:0;s:20:"hide_post_thumbnails";b:0;s:14:"hide_read_more";b:0;s:15:"output_elements";a:6:{s:14:"featured_image";i:10;s:10:"post_title";i:20;s:13:"author_byline";i:30;s:12:"post_content";i:40;s:9:"read_more";i:50;s:19:"genesis_footer_meta";i:60;}s:20:"content_display_type";s:7:"content";}}', 'yes'),
(2055, 'conductor', 'a:3:{s:7:"enabled";b:1;s:15:"content_layouts";a:6:{i:0;a:5:{s:11:"field_label";s:51:"Page - DURA-FLEX Solid Tires for Skid Steer Loaders";s:19:"sidebar_name_prefix";s:51:"DURA-FLEX Solid Tires for Skid Steer Loaders - Page";s:10:"field_type";s:4:"page";s:8:"field_id";i:635;s:5:"value";s:6:"cols-1";}i:1;a:5:{s:11:"field_label";s:61:"Page - Dura-Core®™ Rubber Tracks for Compact Track Loaders";s:19:"sidebar_name_prefix";s:61:"Dura-Core®™ Rubber Tracks for Compact Track Loaders - Page";s:10:"field_type";s:4:"page";s:8:"field_id";i:632;s:5:"value";s:6:"cols-1";}i:2;a:5:{s:11:"field_label";s:29:"Page - Solid Skid Steer Tires";s:19:"sidebar_name_prefix";s:29:"Solid Skid Steer Tires - Page";s:10:"field_type";s:4:"page";s:8:"field_id";i:724;s:5:"value";s:6:"cols-1";}i:3;a:5:{s:11:"field_label";s:66:"Page - DURA-FLEX Solid Tires for Arial Work Platform / Telehandler";s:19:"sidebar_name_prefix";s:66:"DURA-FLEX Solid Tires for Arial Work Platform / Telehandler - Page";s:10:"field_type";s:4:"page";s:8:"field_id";i:726;s:5:"value";s:6:"cols-1";}i:4;a:5:{s:11:"field_label";s:13:"Page - Tracks";s:19:"sidebar_name_prefix";s:13:"Tracks - Page";s:10:"field_type";s:4:"page";s:8:"field_id";i:750;s:5:"value";s:6:"cols-1";}i:5;a:5:{s:11:"field_label";s:12:"Page - About";s:19:"sidebar_name_prefix";s:12:"About - Page";s:10:"field_type";s:4:"page";s:8:"field_id";i:641;s:5:"value";s:6:"cols-1";}}s:9:"uninstall";a:1:{s:4:"data";b:1;}}', 'yes'),
(2084, 'widget_note-widget', 'a:16:{s:12:"_multiwidget";i:1;i:3;a:9:{s:5:"title";b:0;s:10:"hide_title";b:1;s:8:"template";s:5:"2-col";s:7:"columns";i:1;s:4:"rows";i:1;s:7:"content";b:0;s:9:"css_class";b:0;s:6:"extras";a:1:{s:30:"background_image_attachment_id";b:0;}s:13:"content_areas";a:60:{i:1;s:379:"<h2 class="note-placeholder">Product Features</h2>\r\n<ul>\r\n<li>Specially designed for telehandlers and aerial work platforms</li>\r\n<li>Manufactured in state-of-the-art facilities</li>\r\n<li>Constructed from our proprietary rubber compound</li>\r\n<li>Superior stability and durability as compared to foam-filled tires</li>\r\n<li>Available in a wide range of configurations</li>\r\n</ul>";i:2;s:262:"<h2 class="">Product Benefits</h2>\r\n<p>* Guaranteed 100% flat proof<br />* Enhanced reliability and value <br />* Less downtime and lower cost-per-hour<br />* Resistance to abrasion, cutting, and chunking<br />* Maximum performance in the toughest conditions</p>";i:3;b:0;i:4;b:0;i:5;b:0;i:6;b:0;i:7;b:0;i:8;b:0;i:9;b:0;i:10;b:0;i:11;b:0;i:12;b:0;i:13;b:0;i:14;b:0;i:15;b:0;i:16;b:0;i:17;b:0;i:18;b:0;i:19;b:0;i:20;b:0;i:21;b:0;i:22;b:0;i:23;b:0;i:24;b:0;i:25;b:0;i:26;b:0;i:27;b:0;i:28;b:0;i:29;b:0;i:30;b:0;i:31;b:0;i:32;b:0;i:33;b:0;i:34;b:0;i:35;b:0;i:36;b:0;i:37;b:0;i:38;b:0;i:39;b:0;i:40;b:0;i:41;b:0;i:42;b:0;i:43;b:0;i:44;b:0;i:45;b:0;i:46;b:0;i:47;b:0;i:48;b:0;i:49;b:0;i:50;b:0;i:51;b:0;i:52;b:0;i:53;b:0;i:54;b:0;i:55;b:0;i:56;b:0;i:57;b:0;i:58;b:0;i:59;b:0;i:60;b:0;}}i:5;a:9:{s:5:"title";b:0;s:10:"hide_title";b:1;s:8:"template";s:5:"2-col";s:7:"columns";i:1;s:4:"rows";i:1;s:7:"content";s:23:"<p>Product Features</p>";s:9:"css_class";b:0;s:6:"extras";a:1:{s:30:"background_image_attachment_id";b:0;}s:13:"content_areas";a:60:{i:1;s:344:"<h2 class="">Product Benefits</h2>\r\n<ul>\r\n<li>Specially designed for skid steer loaders.</li>\r\n<li>Manufactured in state-of-the-art facilities</li>\r\n<li>Constructed from our proprietary rubber compound</li>\r\n<li>Superior stability and durability as compared to foam-filled tires</li>\r\n<li>Available in a wide range of configurations</li>\r\n</ul>";i:2;s:286:"<h2 class="">Product Features</h2>\r\n<ul>\r\n<li>Guaranteed 100% flat proof</li>\r\n<li>Enhanced reliability and value</li>\r\n<li>Less downtime and lower cost-per-hour</li>\r\n<li>Resistance to abrasion, cutting, and chunking</li>\r\n<li>Maximum performance in the toughest conditions</li>\r\n</ul>";i:3;b:0;i:4;b:0;i:5;b:0;i:6;b:0;i:7;b:0;i:8;b:0;i:9;b:0;i:10;b:0;i:11;b:0;i:12;b:0;i:13;b:0;i:14;b:0;i:15;b:0;i:16;b:0;i:17;b:0;i:18;b:0;i:19;b:0;i:20;b:0;i:21;b:0;i:22;b:0;i:23;b:0;i:24;b:0;i:25;b:0;i:26;b:0;i:27;b:0;i:28;b:0;i:29;b:0;i:30;b:0;i:31;b:0;i:32;b:0;i:33;b:0;i:34;b:0;i:35;b:0;i:36;b:0;i:37;b:0;i:38;b:0;i:39;b:0;i:40;b:0;i:41;b:0;i:42;b:0;i:43;b:0;i:44;b:0;i:45;b:0;i:46;b:0;i:47;b:0;i:48;b:0;i:49;b:0;i:50;b:0;i:51;b:0;i:52;b:0;i:53;b:0;i:54;b:0;i:55;b:0;i:56;b:0;i:57;b:0;i:58;b:0;i:59;b:0;i:60;b:0;}}i:7;a:9:{s:5:"title";b:0;s:10:"hide_title";b:1;s:8:"template";s:7:"default";s:7:"columns";i:1;s:4:"rows";i:1;s:7:"content";s:195:"<p class="p1"><span class="s1">Nighhawk Dura-Flex&reg;&trade; solid tires are available in a wide range of configurations to fit the most common makes and models of skid steer loaders.</span></p>";s:12:"content_area";a:60:{i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";i:10;s:0:"";i:11;s:0:"";i:12;s:0:"";i:13;s:0:"";i:14;s:0:"";i:15;s:0:"";i:16;s:0:"";i:17;s:0:"";i:18;s:0:"";i:19;s:0:"";i:20;s:0:"";i:21;s:0:"";i:22;s:0:"";i:23;s:0:"";i:24;s:0:"";i:25;s:0:"";i:26;s:0:"";i:27;s:0:"";i:28;s:0:"";i:29;s:0:"";i:30;s:0:"";i:31;s:0:"";i:32;s:0:"";i:33;s:0:"";i:34;s:0:"";i:35;s:0:"";i:36;s:0:"";i:37;s:0:"";i:38;s:0:"";i:39;s:0:"";i:40;s:0:"";i:41;s:0:"";i:42;s:0:"";i:43;s:0:"";i:44;s:0:"";i:45;s:0:"";i:46;s:0:"";i:47;s:0:"";i:48;s:0:"";i:49;s:0:"";i:50;s:0:"";i:51;s:0:"";i:52;s:0:"";i:53;s:0:"";i:54;s:0:"";i:55;s:0:"";i:56;s:0:"";i:57;s:0:"";i:58;s:0:"";i:59;s:0:"";i:60;s:0:"";}s:9:"css_class";b:0;s:6:"extras";a:1:{s:30:"background_image_attachment_id";b:0;}}i:9;a:9:{s:5:"title";b:0;s:10:"hide_title";b:1;s:8:"template";s:5:"2-col";s:7:"columns";i:1;s:4:"rows";i:1;s:7:"content";b:0;s:9:"css_class";b:0;s:6:"extras";a:1:{s:30:"background_image_attachment_id";b:0;}s:13:"content_areas";a:60:{i:1;s:341:"<h2 class="">Product Features</h2>\r\n<ul>\r\n<li>Specially designed for compact track loaders</li>\r\n<li>Manufactured in state-of-the-art facilities</li>\r\n<li>High-tensile strength steel wires and heat-treated steel bars</li>\r\n<li>Constructed from our proprietary rubber compound</li>\r\n<li>Available in a wide range of configurations</li>\r\n</ul>";i:2;s:249:"<h2 class="">Product Benefits</h2>\r\n<ul>\r\n<li>Enhanced reliability and value</li>\r\n<li>Less downtime and lower cost-per-hour</li>\r\n<li>Resistance to abrasion, cutting, and chunking</li>\r\n<li>Maximum performance in the toughest conditions</li>\r\n</ul>";i:3;b:0;i:4;b:0;i:5;b:0;i:6;b:0;i:7;b:0;i:8;b:0;i:9;b:0;i:10;b:0;i:11;b:0;i:12;b:0;i:13;b:0;i:14;b:0;i:15;b:0;i:16;b:0;i:17;b:0;i:18;b:0;i:19;b:0;i:20;b:0;i:21;b:0;i:22;b:0;i:23;b:0;i:24;b:0;i:25;b:0;i:26;b:0;i:27;b:0;i:28;b:0;i:29;b:0;i:30;b:0;i:31;b:0;i:32;b:0;i:33;b:0;i:34;b:0;i:35;b:0;i:36;b:0;i:37;b:0;i:38;b:0;i:39;b:0;i:40;b:0;i:41;b:0;i:42;b:0;i:43;b:0;i:44;b:0;i:45;b:0;i:46;b:0;i:47;b:0;i:48;b:0;i:49;b:0;i:50;b:0;i:51;b:0;i:52;b:0;i:53;b:0;i:54;b:0;i:55;b:0;i:56;b:0;i:57;b:0;i:58;b:0;i:59;b:0;i:60;b:0;}}i:10;a:9:{s:5:"title";b:0;s:10:"hide_title";b:1;s:8:"template";s:7:"default";s:7:"columns";i:1;s:4:"rows";i:1;s:7:"content";s:410:"<p class="p1"><span class="s1">Our rubber tracks are available in a wide range of dimensions and pitch configurations to fit the most common makes and models of compact track loaders.</span></p>\r\n<p class="p1"><span class="s1">Our team is available by phone at<b><i> </i>1-855-429-5669</b> to answer your questions or you can <a href="http://nighthawktires.stagingcloud.us/contact/">contact us</a>. </span></p>";s:12:"content_area";a:60:{i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";i:10;s:0:"";i:11;s:0:"";i:12;s:0:"";i:13;s:0:"";i:14;s:0:"";i:15;s:0:"";i:16;s:0:"";i:17;s:0:"";i:18;s:0:"";i:19;s:0:"";i:20;s:0:"";i:21;s:0:"";i:22;s:0:"";i:23;s:0:"";i:24;s:0:"";i:25;s:0:"";i:26;s:0:"";i:27;s:0:"";i:28;s:0:"";i:29;s:0:"";i:30;s:0:"";i:31;s:0:"";i:32;s:0:"";i:33;s:0:"";i:34;s:0:"";i:35;s:0:"";i:36;s:0:"";i:37;s:0:"";i:38;s:0:"";i:39;s:0:"";i:40;s:0:"";i:41;s:0:"";i:42;s:0:"";i:43;s:0:"";i:44;s:0:"";i:45;s:0:"";i:46;s:0:"";i:47;s:0:"";i:48;s:0:"";i:49;s:0:"";i:50;s:0:"";i:51;s:0:"";i:52;s:0:"";i:53;s:0:"";i:54;s:0:"";i:55;s:0:"";i:56;s:0:"";i:57;s:0:"";i:58;s:0:"";i:59;s:0:"";i:60;s:0:"";}s:9:"css_class";b:0;s:6:"extras";a:1:{s:30:"background_image_attachment_id";b:0;}}i:12;a:9:{s:5:"title";b:0;s:10:"hide_title";b:1;s:8:"template";s:5:"2-col";s:7:"columns";i:1;s:4:"rows";i:1;s:7:"content";b:0;s:9:"css_class";b:0;s:6:"extras";a:1:{s:30:"background_image_attachment_id";b:0;}s:13:"content_areas";a:60:{i:1;s:363:"<h2 class="">Product Features</h2>\r\n<ul>\r\n<li>Specially designed for telehandlers and aerial work platforms</li>\r\n<li>Manufactured in state-of-the-art facilities</li>\r\n<li>Constructed from our proprietary rubber compound</li>\r\n<li>Superior stability and durability as compared to foam-filled tires</li>\r\n<li>Available in a wide range of configurations</li>\r\n</ul>";i:2;s:286:"<h2 class="">Product Benefits</h2>\r\n<ul>\r\n<li>Guaranteed 100% flat proof</li>\r\n<li>Enhanced reliability and value</li>\r\n<li>Less downtime and lower cost-per-hour</li>\r\n<li>Resistance to abrasion, cutting, and chunking</li>\r\n<li>Maximum performance in the toughest conditions</li>\r\n</ul>";i:3;b:0;i:4;b:0;i:5;b:0;i:6;b:0;i:7;b:0;i:8;b:0;i:9;b:0;i:10;b:0;i:11;b:0;i:12;b:0;i:13;b:0;i:14;b:0;i:15;b:0;i:16;b:0;i:17;b:0;i:18;b:0;i:19;b:0;i:20;b:0;i:21;b:0;i:22;b:0;i:23;b:0;i:24;b:0;i:25;b:0;i:26;b:0;i:27;b:0;i:28;b:0;i:29;b:0;i:30;b:0;i:31;b:0;i:32;b:0;i:33;b:0;i:34;b:0;i:35;b:0;i:36;b:0;i:37;b:0;i:38;b:0;i:39;b:0;i:40;b:0;i:41;b:0;i:42;b:0;i:43;b:0;i:44;b:0;i:45;b:0;i:46;b:0;i:47;b:0;i:48;b:0;i:49;b:0;i:50;b:0;i:51;b:0;i:52;b:0;i:53;b:0;i:54;b:0;i:55;b:0;i:56;b:0;i:57;b:0;i:58;b:0;i:59;b:0;i:60;b:0;}}i:13;a:9:{s:5:"title";b:0;s:10:"hide_title";b:1;s:8:"template";s:7:"default";s:7:"columns";i:1;s:4:"rows";i:1;s:7:"content";s:392:"<p class="p1"><span class="s1"><b>Nighthawk Dura-Flex&reg;&trade;</b> solid tires are available in a wide range of configurations and fit the most common makes and models of telehandlers, aerial work platforms, rough-terrain forklifts, and boomlifts.<span class="Apple-converted-space">&nbsp; </span>Nighthawk manufactures solid tire replacements for the following pneumatic sizes.</span></p>";s:12:"content_area";a:60:{i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";i:10;s:0:"";i:11;s:0:"";i:12;s:0:"";i:13;s:0:"";i:14;s:0:"";i:15;s:0:"";i:16;s:0:"";i:17;s:0:"";i:18;s:0:"";i:19;s:0:"";i:20;s:0:"";i:21;s:0:"";i:22;s:0:"";i:23;s:0:"";i:24;s:0:"";i:25;s:0:"";i:26;s:0:"";i:27;s:0:"";i:28;s:0:"";i:29;s:0:"";i:30;s:0:"";i:31;s:0:"";i:32;s:0:"";i:33;s:0:"";i:34;s:0:"";i:35;s:0:"";i:36;s:0:"";i:37;s:0:"";i:38;s:0:"";i:39;s:0:"";i:40;s:0:"";i:41;s:0:"";i:42;s:0:"";i:43;s:0:"";i:44;s:0:"";i:45;s:0:"";i:46;s:0:"";i:47;s:0:"";i:48;s:0:"";i:49;s:0:"";i:50;s:0:"";i:51;s:0:"";i:52;s:0:"";i:53;s:0:"";i:54;s:0:"";i:55;s:0:"";i:56;s:0:"";i:57;s:0:"";i:58;s:0:"";i:59;s:0:"";i:60;s:0:"";}s:9:"css_class";b:0;s:6:"extras";a:1:{s:30:"background_image_attachment_id";b:0;}}i:14;a:9:{s:5:"title";b:0;s:10:"hide_title";b:1;s:8:"template";s:5:"2-col";s:7:"columns";i:1;s:4:"rows";i:1;s:7:"content";b:0;s:9:"css_class";b:0;s:6:"extras";a:1:{s:30:"background_image_attachment_id";b:0;}s:13:"content_areas";a:60:{i:1;s:341:"<h2 class="">Aerial Work Platform</h2>\r\n<ul>\r\n<li>240/55D 17.5</li>\r\n<li>10-16.5</li>\r\n<li>12-21.5 LSW</li>\r\n<li>12-16.5</li>\r\n<li>14-17.5</li>\r\n<li>355/55D 625</li>\r\n<li>385/65D 19.5 (15-19.5)</li>\r\n<li>445/55D 19.5</li>\r\n<li>15-625</li>\r\n<li>18-625</li>\r\n<li>355/55D 24.5</li>\r\n<li>385/65D 22.5 (15-22.5)</li>\r\n<li>445/65D 22.5</li>\r\n</ul>";i:2;s:220:"<h2 class="">Telehandler</h2>\r\n<ul>\r\n<li style="text-align: left;">13.00-24</li>\r\n<li style="text-align: left;">14.00-24</li>\r\n<li style="text-align: left;">15.5-25</li>\r\n<li style="text-align: left;">17.5-25</li>\r\n</ul>";i:3;b:0;i:4;b:0;i:5;b:0;i:6;b:0;i:7;b:0;i:8;b:0;i:9;b:0;i:10;b:0;i:11;b:0;i:12;b:0;i:13;b:0;i:14;b:0;i:15;b:0;i:16;b:0;i:17;b:0;i:18;b:0;i:19;b:0;i:20;b:0;i:21;b:0;i:22;b:0;i:23;b:0;i:24;b:0;i:25;b:0;i:26;b:0;i:27;b:0;i:28;b:0;i:29;b:0;i:30;b:0;i:31;b:0;i:32;b:0;i:33;b:0;i:34;b:0;i:35;b:0;i:36;b:0;i:37;b:0;i:38;b:0;i:39;b:0;i:40;b:0;i:41;b:0;i:42;b:0;i:43;b:0;i:44;b:0;i:45;b:0;i:46;b:0;i:47;b:0;i:48;b:0;i:49;b:0;i:50;b:0;i:51;b:0;i:52;b:0;i:53;b:0;i:54;b:0;i:55;b:0;i:56;b:0;i:57;b:0;i:58;b:0;i:59;b:0;i:60;b:0;}}i:15;a:9:{s:5:"title";b:0;s:10:"hide_title";b:1;s:8:"template";s:7:"default";s:7:"columns";i:1;s:4:"rows";i:1;s:7:"content";s:213:"<p class="p1"><span class="s1">Our team is available by phone at<b><i> </i>1-855-429-5669</b> to answer your questions or you can <a href="http://nighthawktires.stagingcloud.us/contact/">contact us</a>.</span></p>";s:12:"content_area";a:60:{i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";i:10;s:0:"";i:11;s:0:"";i:12;s:0:"";i:13;s:0:"";i:14;s:0:"";i:15;s:0:"";i:16;s:0:"";i:17;s:0:"";i:18;s:0:"";i:19;s:0:"";i:20;s:0:"";i:21;s:0:"";i:22;s:0:"";i:23;s:0:"";i:24;s:0:"";i:25;s:0:"";i:26;s:0:"";i:27;s:0:"";i:28;s:0:"";i:29;s:0:"";i:30;s:0:"";i:31;s:0:"";i:32;s:0:"";i:33;s:0:"";i:34;s:0:"";i:35;s:0:"";i:36;s:0:"";i:37;s:0:"";i:38;s:0:"";i:39;s:0:"";i:40;s:0:"";i:41;s:0:"";i:42;s:0:"";i:43;s:0:"";i:44;s:0:"";i:45;s:0:"";i:46;s:0:"";i:47;s:0:"";i:48;s:0:"";i:49;s:0:"";i:50;s:0:"";i:51;s:0:"";i:52;s:0:"";i:53;s:0:"";i:54;s:0:"";i:55;s:0:"";i:56;s:0:"";i:57;s:0:"";i:58;s:0:"";i:59;s:0:"";i:60;s:0:"";}s:9:"css_class";b:0;s:6:"extras";a:1:{s:30:"background_image_attachment_id";b:0;}}i:16;a:9:{s:5:"title";s:4:"test";s:10:"hide_title";b:1;s:8:"template";s:19:"2-col-media-content";s:7:"columns";i:1;s:4:"rows";i:1;s:7:"content";b:0;s:9:"css_class";b:0;s:6:"extras";a:1:{s:30:"background_image_attachment_id";b:0;}s:13:"content_areas";a:60:{i:1;s:195:"<p><img class="alignnone size-medium wp-image-623" src="http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/02/logo_bottom-300x292.png" alt="logo_bottom" width="300" height="292" /></p>";i:2;s:451:"<h2 class="">Nighthawk&rsquo;s Price Match Guarantee</h2>\r\n<p class="p1"><span class="s1">Our customers deserve the best, so we won&rsquo;t be beaten on price. We will beat any written quote for comparable products.</span></p>\r\n<p class="p1"><span class="s1">We combine high-quality products with the industry&rsquo;s leading warranty which means <b>Nighthawk</b> <b>Dura-Flex&reg;&trade; solid tires will always deliver the best value.</b></span></p>";i:3;b:0;i:4;b:0;i:5;b:0;i:6;b:0;i:7;b:0;i:8;b:0;i:9;b:0;i:10;b:0;i:11;b:0;i:12;b:0;i:13;b:0;i:14;b:0;i:15;b:0;i:16;b:0;i:17;b:0;i:18;b:0;i:19;b:0;i:20;b:0;i:21;b:0;i:22;b:0;i:23;b:0;i:24;b:0;i:25;b:0;i:26;b:0;i:27;b:0;i:28;b:0;i:29;b:0;i:30;b:0;i:31;b:0;i:32;b:0;i:33;b:0;i:34;b:0;i:35;b:0;i:36;b:0;i:37;b:0;i:38;b:0;i:39;b:0;i:40;b:0;i:41;b:0;i:42;b:0;i:43;b:0;i:44;b:0;i:45;b:0;i:46;b:0;i:47;b:0;i:48;b:0;i:49;b:0;i:50;b:0;i:51;b:0;i:52;b:0;i:53;b:0;i:54;b:0;i:55;b:0;i:56;b:0;i:57;b:0;i:58;b:0;i:59;b:0;i:60;b:0;}}i:18;a:9:{s:5:"title";b:0;s:10:"hide_title";b:1;s:8:"template";s:19:"2-col-media-content";s:7:"columns";i:1;s:4:"rows";i:1;s:7:"content";b:0;s:9:"css_class";b:0;s:6:"extras";a:1:{s:30:"background_image_attachment_id";b:0;}s:13:"content_areas";a:60:{i:1;s:195:"<p><img class="alignnone size-medium wp-image-623" src="http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/02/logo_bottom-300x292.png" alt="logo_bottom" width="300" height="292" /></p>";i:2;s:460:"<h2 class="">Nighthawk&rsquo;s Price Match Guarantee</h2>\r\n<p class="p1"><span class="s1">Our customers deserve the best, so we won&rsquo;t be beaten on price. We will beat any written quote for comparable products.&nbsp;</span></p>\r\n<p class="p1"><span class="s1">We combine high-quality products with the industry&rsquo;s leading warranty which means <b>Nighthawk Dura-Flex&trade; solid tires will always deliver the best value.</b></span></p>\r\n<p>&nbsp;</p>";i:3;b:0;i:4;b:0;i:5;b:0;i:6;b:0;i:7;b:0;i:8;b:0;i:9;b:0;i:10;b:0;i:11;b:0;i:12;b:0;i:13;b:0;i:14;b:0;i:15;b:0;i:16;b:0;i:17;b:0;i:18;b:0;i:19;b:0;i:20;b:0;i:21;b:0;i:22;b:0;i:23;b:0;i:24;b:0;i:25;b:0;i:26;b:0;i:27;b:0;i:28;b:0;i:29;b:0;i:30;b:0;i:31;b:0;i:32;b:0;i:33;b:0;i:34;b:0;i:35;b:0;i:36;b:0;i:37;b:0;i:38;b:0;i:39;b:0;i:40;b:0;i:41;b:0;i:42;b:0;i:43;b:0;i:44;b:0;i:45;b:0;i:46;b:0;i:47;b:0;i:48;b:0;i:49;b:0;i:50;b:0;i:51;b:0;i:52;b:0;i:53;b:0;i:54;b:0;i:55;b:0;i:56;b:0;i:57;b:0;i:58;b:0;i:59;b:0;i:60;b:0;}}i:20;a:9:{s:5:"title";b:0;s:10:"hide_title";b:1;s:8:"template";s:5:"4-col";s:7:"columns";i:1;s:4:"rows";i:1;s:7:"content";b:0;s:9:"css_class";b:0;s:6:"extras";a:1:{s:30:"background_image_attachment_id";b:0;}s:13:"content_areas";a:60:{i:1;s:237:"<h2 class="">Replaces</h2>\r\n<p class="note-placeholder">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eros tortor, molestie eget tortor sit amet, feugiat semper ante. Aliquam a pellentesque purus, quis vulputate lacus.</p>";i:2;b:0;i:3;b:0;i:4;b:0;i:5;b:0;i:6;b:0;i:7;b:0;i:8;b:0;i:9;b:0;i:10;b:0;i:11;b:0;i:12;b:0;i:13;b:0;i:14;b:0;i:15;b:0;i:16;b:0;i:17;b:0;i:18;b:0;i:19;b:0;i:20;b:0;i:21;b:0;i:22;b:0;i:23;b:0;i:24;b:0;i:25;b:0;i:26;b:0;i:27;b:0;i:28;b:0;i:29;b:0;i:30;b:0;i:31;b:0;i:32;b:0;i:33;b:0;i:34;b:0;i:35;b:0;i:36;b:0;i:37;b:0;i:38;b:0;i:39;b:0;i:40;b:0;i:41;b:0;i:42;b:0;i:43;b:0;i:44;b:0;i:45;b:0;i:46;b:0;i:47;b:0;i:48;b:0;i:49;b:0;i:50;b:0;i:51;b:0;i:52;b:0;i:53;b:0;i:54;b:0;i:55;b:0;i:56;b:0;i:57;b:0;i:58;b:0;i:59;b:0;i:60;b:0;}}i:22;a:9:{s:5:"title";b:0;s:10:"hide_title";b:1;s:8:"template";s:7:"default";s:7:"columns";i:1;s:4:"rows";i:1;s:7:"content";s:214:"<p class="p1"><span class="s1">Our team is available by phone at<b><i> </i>1-855-429-5669</b> to answer your questions or you can <a href="http://nighthawktires.stagingcloud.us/contact/">contact us</a>. </span></p>";s:12:"content_area";a:60:{i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";i:10;s:0:"";i:11;s:0:"";i:12;s:0:"";i:13;s:0:"";i:14;s:0:"";i:15;s:0:"";i:16;s:0:"";i:17;s:0:"";i:18;s:0:"";i:19;s:0:"";i:20;s:0:"";i:21;s:0:"";i:22;s:0:"";i:23;s:0:"";i:24;s:0:"";i:25;s:0:"";i:26;s:0:"";i:27;s:0:"";i:28;s:0:"";i:29;s:0:"";i:30;s:0:"";i:31;s:0:"";i:32;s:0:"";i:33;s:0:"";i:34;s:0:"";i:35;s:0:"";i:36;s:0:"";i:37;s:0:"";i:38;s:0:"";i:39;s:0:"";i:40;s:0:"";i:41;s:0:"";i:42;s:0:"";i:43;s:0:"";i:44;s:0:"";i:45;s:0:"";i:46;s:0:"";i:47;s:0:"";i:48;s:0:"";i:49;s:0:"";i:50;s:0:"";i:51;s:0:"";i:52;s:0:"";i:53;s:0:"";i:54;s:0:"";i:55;s:0:"";i:56;s:0:"";i:57;s:0:"";i:58;s:0:"";i:59;s:0:"";i:60;s:0:"";}s:9:"css_class";b:0;s:6:"extras";a:1:{s:30:"background_image_attachment_id";b:0;}}i:24;a:9:{s:5:"title";b:0;s:10:"hide_title";b:1;s:8:"template";s:19:"2-col-media-content";s:7:"columns";i:1;s:4:"rows";i:1;s:7:"content";b:0;s:9:"css_class";b:0;s:6:"extras";a:1:{s:30:"background_image_attachment_id";b:0;}s:13:"content_areas";a:60:{i:1;s:195:"<p><img class="alignnone size-medium wp-image-623" src="http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/02/logo_bottom-300x292.png" alt="logo_bottom" width="300" height="292" /></p>";i:2;s:479:"<h2 class="note-placeholder">Nighthawk&rsquo;s Price Match Guarantee</h2>\r\n<p class="p1"><span class="s1">Our customers deserve the best, so we won&rsquo;t be beaten on price. We will beat any written quote for comparable products.</span></p>\r\n<p class="p1"><span class="s1">We combine high-quality products with the industry&rsquo;s leading warranty which means <b>Nighthawk</b> <b>Dura-Core&trade; rubber tracks will always deliver the best value.</b></span></p>\r\n<p>&nbsp;</p>";i:3;b:0;i:4;b:0;i:5;b:0;i:6;b:0;i:7;b:0;i:8;b:0;i:9;b:0;i:10;b:0;i:11;b:0;i:12;b:0;i:13;b:0;i:14;b:0;i:15;b:0;i:16;b:0;i:17;b:0;i:18;b:0;i:19;b:0;i:20;b:0;i:21;b:0;i:22;b:0;i:23;b:0;i:24;b:0;i:25;b:0;i:26;b:0;i:27;b:0;i:28;b:0;i:29;b:0;i:30;b:0;i:31;b:0;i:32;b:0;i:33;b:0;i:34;b:0;i:35;b:0;i:36;b:0;i:37;b:0;i:38;b:0;i:39;b:0;i:40;b:0;i:41;b:0;i:42;b:0;i:43;b:0;i:44;b:0;i:45;b:0;i:46;b:0;i:47;b:0;i:48;b:0;i:49;b:0;i:50;b:0;i:51;b:0;i:52;b:0;i:53;b:0;i:54;b:0;i:55;b:0;i:56;b:0;i:57;b:0;i:58;b:0;i:59;b:0;i:60;b:0;}}i:26;a:9:{s:5:"title";b:0;s:10:"hide_title";b:1;s:8:"template";s:19:"2-col-media-content";s:7:"columns";i:1;s:4:"rows";i:1;s:7:"content";b:0;s:9:"css_class";b:0;s:6:"extras";a:1:{s:30:"background_image_attachment_id";b:0;}s:13:"content_areas";a:60:{i:1;s:195:"<p><img class="alignnone size-medium wp-image-623" src="http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/02/logo_bottom-300x292.png" alt="logo_bottom" width="300" height="292" /></p>";i:2;s:439:"<h2 class="note-placeholder">Nighthawk’s Price Match Guarantee</h2>\r\n<p class="p1"><span class="s1">Our customers deserve the best, so we won’t be beaten on price. We will beat any written quote for comparable products.</span></p>\r\n<p class="p1"><span class="s1">We combine high-quality products with the industry’s leading warranty which means <b><i>Nighthawk</i></b> <b>will always provide you with the best value. </b></span></p>";i:3;b:0;i:4;b:0;i:5;b:0;i:6;b:0;i:7;b:0;i:8;b:0;i:9;b:0;i:10;b:0;i:11;b:0;i:12;b:0;i:13;b:0;i:14;b:0;i:15;b:0;i:16;b:0;i:17;b:0;i:18;b:0;i:19;b:0;i:20;b:0;i:21;b:0;i:22;b:0;i:23;b:0;i:24;b:0;i:25;b:0;i:26;b:0;i:27;b:0;i:28;b:0;i:29;b:0;i:30;b:0;i:31;b:0;i:32;b:0;i:33;b:0;i:34;b:0;i:35;b:0;i:36;b:0;i:37;b:0;i:38;b:0;i:39;b:0;i:40;b:0;i:41;b:0;i:42;b:0;i:43;b:0;i:44;b:0;i:45;b:0;i:46;b:0;i:47;b:0;i:48;b:0;i:49;b:0;i:50;b:0;i:51;b:0;i:52;b:0;i:53;b:0;i:54;b:0;i:55;b:0;i:56;b:0;i:57;b:0;i:58;b:0;i:59;b:0;i:60;b:0;}}}', 'yes'),
(2085, 'note', 'a:2:{s:8:"sidebars";a:0:{}s:9:"uninstall";a:1:{s:4:"data";b:1;}}', 'yes'),
(2109, 'widget_black-studio-tinymce', 'a:3:{i:2;a:4:{s:5:"title";s:16:"Product Features";s:4:"text";s:332:"<ul>\r\n	<li>Specially designed for telehandlers and aerial work platforms</li>\r\n	<li>Manufactured in state-of-the-art facilities</li>\r\n	<li>Constructed from our proprietary rubber compound</li>\r\n	<li>Superior stability and durability as compared to foam-filled tires</li>\r\n	<li>Available in a wide range of configurations</li>\r\n</ul>";s:4:"type";s:6:"visual";s:6:"filter";s:1:"1";}s:12:"_multiwidget";i:1;i:4;a:4:{s:5:"title";s:17:"Product Benefits ";s:4:"text";s:255:"<ul>\r\n	<li>Guaranteed 100% flat proof</li>\r\n	<li>Enhanced reliability and value</li>\r\n	<li>Less downtime and lower cost-per-hour</li>\r\n	<li>Resistance to abrasion, cutting, and chunking</li>\r\n	<li>Maximum performance in the toughest conditions</li>\r\n</ul>";s:4:"type";s:6:"visual";s:6:"filter";s:1:"1";}}', 'yes'),
(2154, 'genesis-seo-settings', 'a:30:{s:17:"semantic_headings";i:0;s:17:"append_site_title";i:0;s:12:"doctitle_sep";s:3:"–";s:20:"doctitle_seplocation";s:5:"right";s:23:"append_description_home";i:1;s:10:"home_h1_on";s:5:"title";s:13:"home_doctitle";s:0:"";s:16:"home_description";s:0:"";s:13:"home_keywords";s:0:"";s:12:"home_noindex";i:0;s:13:"home_nofollow";i:0;s:14:"home_noarchive";i:0;s:18:"canonical_archives";i:1;s:28:"head_adjacent_posts_rel_link";i:0;s:21:"head_wlwmanifest_link";i:0;s:14:"head_shortlink";i:0;s:19:"noindex_cat_archive";i:1;s:19:"noindex_tag_archive";i:1;s:22:"noindex_author_archive";i:1;s:20:"noindex_date_archive";i:1;s:22:"noindex_search_archive";i:1;s:21:"noarchive_cat_archive";i:0;s:21:"noarchive_tag_archive";i:0;s:24:"noarchive_author_archive";i:0;s:22:"noarchive_date_archive";i:0;s:24:"noarchive_search_archive";i:0;s:9:"noarchive";i:0;s:5:"noodp";i:1;s:6:"noydir";i:1;s:11:"home_author";i:0;}', 'yes'),
(2159, 'wpseo_onpage', 'a:2:{s:6:"status";i:1;s:10:"last_fetch";i:1458734162;}', 'yes'),
(2183, 'gf_dismissed_upgrades', 'a:1:{i:0;s:8:"1.9.17.5";}', 'yes'),
(2205, 'pb_backupbuddy', 'a:97:{s:12:"data_version";s:2:"14";s:21:"importbuddy_pass_hash";s:32:"9be5faf7b1188b66b38071df644bccb3";s:23:"importbuddy_pass_length";i:16;s:16:"backup_reminders";i:1;s:16:"edits_since_last";i:100;s:17:"last_backup_start";d:1458145321.990703105926513671875;s:18:"last_backup_finish";i:0;s:18:"last_backup_serial";s:10:"rfascok75y";s:17:"last_backup_stats";a:0:{}s:21:"last_error_email_time";i:0;s:19:"force_compatibility";i:0;s:29:"force_mysqldump_compatibility";i:0;s:9:"schedules";a:0:{}s:9:"log_level";s:1:"1";s:13:"high_security";i:0;s:19:"next_schedule_index";i:100;s:13:"archive_limit";i:0;s:18:"archive_limit_full";i:0;s:16:"archive_limit_db";i:0;s:19:"archive_limit_files";i:0;s:18:"archive_limit_size";i:0;s:22:"archive_limit_size_big";i:50000;s:17:"archive_limit_age";i:0;s:26:"delete_archives_pre_backup";i:0;s:23:"lock_archives_directory";i:0;s:25:"set_greedy_execution_time";i:0;s:28:"email_notify_scheduled_start";s:0:"";s:36:"email_notify_scheduled_start_subject";s:49:"BackupBuddy Scheduled Backup Started - {home_url}";s:33:"email_notify_scheduled_start_body";s:140:"A scheduled backup has started with BackupBuddy v{backupbuddy_version} on {current_datetime} for the site {home_url}.\n\nDetails:\r\n\r\n{message}";s:31:"email_notify_scheduled_complete";s:0:"";s:39:"email_notify_scheduled_complete_subject";s:50:"BackupBuddy Scheduled Backup Complete - {home_url}";s:36:"email_notify_scheduled_complete_body";s:142:"A scheduled backup has completed with BackupBuddy v{backupbuddy_version} on {current_datetime} for the site {home_url}.\n\nDetails:\r\n\r\n{message}";s:24:"email_notify_send_finish";s:0:"";s:32:"email_notify_send_finish_subject";s:43:"BackupBuddy File Send Finished - {home_url}";s:29:"email_notify_send_finish_body";s:168:"A destination file send of file {backup_file} has finished with BackupBuddy v{backupbuddy_version} on {current_datetime} for the site {home_url}.\n\nDetails:\r\n\r\n{message}";s:18:"email_notify_error";s:22:"jpeterson@develare.com";s:26:"email_notify_error_subject";s:30:"BackupBuddy Error - {home_url}";s:23:"email_notify_error_body";s:132:"An error occurred with BackupBuddy v{backupbuddy_version} on {current_datetime} for the site {home_url}. Error details:\r\n\r\n{message}";s:12:"email_return";s:0:"";s:19:"remote_destinations";a:1:{i:0;a:13:{s:4:"type";s:6:"stash2";s:5:"title";s:14:"Develare Stash";s:18:"full_archive_limit";s:1:"1";s:16:"db_archive_limit";s:1:"1";s:9:"max_burst";s:2:"10";s:8:"max_time";s:0:"";s:3:"ssl";s:1:"1";s:17:"use_packaged_cert";s:1:"0";s:23:"disable_file_management";s:1:"0";s:8:"disabled";s:1:"0";s:15:"itxapi_username";s:8:"develare";s:12:"itxapi_token";s:64:"tdVGF1udFaOzk-qX47utKAAdTPWrONESVD5Y8xp-hWNq-D8pH5MkOtAox1wmXjwa";s:5:"token";s:0:"";}}s:27:"remote_send_timeout_retries";s:1:"1";s:11:"role_access";s:16:"activate_plugins";s:16:"dropboxtemptoken";s:0:"";s:11:"backup_mode";s:1:"2";s:16:"multisite_export";s:1:"0";s:16:"backup_directory";s:0:"";s:14:"temp_directory";s:0:"";s:13:"log_directory";s:0:"";s:10:"log_serial";s:15:"abwz89on1qzyi5d";s:13:"notifications";a:0:{}s:19:"zip_method_strategy";s:1:"1";s:24:"database_method_strategy";s:3:"php";s:17:"alternative_zip_2";s:1:"0";s:19:"ignore_zip_warnings";s:1:"0";s:19:"ignore_zip_symlinks";s:1:"1";s:18:"zip_build_strategy";s:1:"3";s:15:"zip_step_period";s:2:"30";s:13:"zip_burst_gap";s:1:"2";s:21:"zip_min_burst_content";s:2:"10";s:21:"zip_max_burst_content";s:3:"100";s:25:"disable_zipmethod_caching";s:1:"0";s:19:"archive_name_format";s:8:"datetime";s:20:"archive_name_profile";s:1:"0";s:30:"disable_https_local_ssl_verify";s:1:"0";s:17:"save_comment_meta";s:1:"1";s:27:"ignore_command_length_check";s:1:"0";s:18:"default_backup_tab";s:1:"0";s:18:"deployment_allowed";s:1:"0";s:9:"hide_live";s:1:"0";s:10:"remote_api";a:2:{s:4:"keys";a:0:{}s:3:"ips";a:0:{}}s:20:"skip_spawn_cron_call";s:1:"0";s:5:"stats";a:6:{s:9:"site_size";i:0;s:18:"site_size_excluded";i:0;s:17:"site_size_updated";i:0;s:7:"db_size";i:0;s:16:"db_size_excluded";i:0;s:15:"db_size_updated";i:0;}s:9:"disalerts";a:1:{s:25:"backupbuddy_version_seven";i:1458193416;}s:15:"breakout_tables";s:1:"1";s:19:"include_importbuddy";s:1:"1";s:17:"max_site_log_size";s:1:"3";s:11:"compression";s:1:"1";s:25:"no_new_backups_error_days";s:2:"45";s:15:"skip_quicksetup";s:1:"0";s:13:"prevent_flush";s:1:"0";s:17:"rollback_cleanups";a:0:{}s:20:"phpmysqldump_maxrows";s:0:"";s:20:"disable_localization";s:1:"0";s:18:"max_execution_time";s:0:"";s:24:"backup_cron_rescheduling";s:1:"0";s:29:"backup_cron_passed_force_time";s:0:"";s:20:"force_single_db_file";s:1:"0";s:11:"deployments";a:0:{}s:19:"max_send_stats_days";s:1:"7";s:20:"max_send_stats_count";s:1:"6";s:26:"max_notifications_age_days";s:2:"21";s:19:"save_backup_sum_log";s:1:"1";s:26:"limit_single_cron_per_pass";s:1:"1";s:18:"tested_php_runtime";d:59;s:23:"last_tested_php_runtime";i:1458193270;s:17:"use_internal_cron";s:1:"0";s:8:"profiles";a:3:{i:0;a:8:{s:4:"type";s:8:"defaults";s:5:"title";s:15:"Global Defaults";s:18:"skip_database_dump";s:1:"0";s:19:"backup_nonwp_tables";s:1:"0";s:15:"integrity_check";s:1:"1";s:29:"mysqldump_additional_includes";s:0:"";s:29:"mysqldump_additional_excludes";s:0:"";s:8:"excludes";s:0:"";}i:1;a:3:{s:4:"type";s:2:"db";s:5:"title";s:13:"Database Only";s:3:"tip";s:49:"Just your database. I like your minimalist style.";}i:2;a:2:{s:4:"type";s:4:"full";s:5:"title";s:15:"Complete Backup";}}}', 'yes'),
(2207, 'ithemes-updater-cache', 'a:9:{s:18:"timeout-multiplier";i:1;s:10:"expiration";i:0;s:9:"timestamp";i:0;s:8:"packages";a:1:{i:0;s:11:"backupbuddy";}s:14:"update_plugins";a:0:{}s:13:"update_themes";a:0:{}s:12:"use_ca_patch";b:0;s:7:"use_ssl";b:1;s:14:"quick_releases";b:0;}', 'yes'),
(2210, 'pb_backupbuddy_notifications', 'a:2:{i:0;a:7:{s:4:"time";i:1458145227;s:4:"slug";s:19:"remote_send_success";s:5:"title";s:30:"Remote file transfer completed";s:7:"message";s:63:"A file has successfully completed sending to a remote location.";s:4:"data";a:4:{s:6:"serial";s:4:"test";s:4:"file";s:106:"/home/stagin18/public_html/nighthawktires/wp-content/plugins/backupbuddy/destinations/remote-send-test.php";s:4:"size";i:118;s:11:"pretty_size";s:9:"118 Bytes";}s:6:"urgent";b:0;s:8:"syncSent";b:0;}i:1;a:7:{s:4:"time";i:1458145236;s:4:"slug";s:19:"destination_created";s:5:"title";s:26:"Remote destination created";s:7:"message";s:59:"A new remote destination "Develare Stash" has been created.";s:4:"data";a:2:{s:5:"title";s:14:"Develare Stash";s:4:"type";s:6:"stash2";}s:6:"urgent";b:0;s:8:"syncSent";b:0;}}', 'yes'),
(2333, 'woocommerce_db_version', '2.5.5', 'yes'),
(2334, 'woocommerce_version', '2.5.5', 'yes'),
(2336, 'woocommerce_admin_notices', 'a:1:{i:0;s:13:"theme_support";}', 'yes'),
(2757, '_supsystic_tables_rev', '60', 'yes'),
(2758, 'supsystic_tbl_reviewNotice', 'a:2:{s:4:"time";i:1459474765;s:5:"shown";b:0;}', 'yes'),
(2771, 'widget_shortcode-widget', 'a:3:{s:12:"_multiwidget";i:1;i:3;a:3:{s:5:"title";s:0:"";s:4:"text";s:19:"[WPSM_AC_SH id=730]";s:6:"filter";b:0;}i:5;a:3:{s:5:"title";s:0:"";s:4:"text";s:19:"[WPSM_AC_SH id=731]";s:6:"filter";b:0;}}', 'yes'),
(2784, 'rt_table_row', '5', 'yes'),
(2785, 'rt_table_col', '7', 'yes'),
(2806, 'squelch_taas_jquery_ui_theme', 'smoothness', 'yes'),
(2807, 'squelch_taas_v', '0.3.5', 'yes'),
(2814, 'widget_wpsm_acsh_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3374, 'simplehooks-settings', 'a:51:{s:7:"wp_head";a:1:{s:7:"content";s:0:"";}s:9:"wp_footer";a:1:{s:7:"content";s:0:"";}s:13:"genesis_title";a:1:{s:7:"content";s:0:"";}s:12:"genesis_meta";a:1:{s:7:"content";s:262:"<script type="text/javascript" src="//crm.funnelscience.com/global/FsPhoneTracking.js"></script>\r\n<script type="text/javascript">\r\njQuery(document).ready(function() {\r\nFsPhoneTracking.ProcessVisitor(124, { "fallback_phone" : "(855) 429-5669" } );\r\n});\r\n</script>";}s:14:"genesis_before";a:1:{s:7:"content";s:569:"<!-- Google Tag Manager --><noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-K8848K"\r\nheight="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'//www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-K8848K\');</script><!-- End Google Tag Manager -->";}s:13:"genesis_after";a:1:{s:7:"content";s:0:"";}s:21:"genesis_before_header";a:1:{s:7:"content";s:0:"";}s:14:"genesis_header";a:1:{s:7:"content";s:0:"";}s:20:"genesis_after_header";a:1:{s:7:"content";s:0:"";}s:18:"genesis_site_title";a:1:{s:7:"content";s:0:"";}s:24:"genesis_site_description";a:1:{s:7:"content";s:0:"";}s:35:"genesis_before_content_sidebar_wrap";a:1:{s:7:"content";s:0:"";}s:34:"genesis_after_content_sidebar_wrap";a:1:{s:7:"content";s:0:"";}s:22:"genesis_before_content";a:1:{s:7:"content";s:0:"";}s:21:"genesis_after_content";a:1:{s:7:"content";s:0:"";}s:19:"genesis_before_loop";a:1:{s:7:"content";s:0:"";}s:12:"genesis_loop";a:1:{s:7:"content";s:0:"";}s:18:"genesis_after_loop";a:1:{s:7:"content";s:0:"";}s:22:"genesis_after_endwhile";a:1:{s:7:"content";s:0:"";}s:17:"genesis_loop_else";a:1:{s:7:"content";s:0:"";}s:20:"genesis_before_entry";a:1:{s:7:"content";s:0:"";}s:20:"genesis_entry_header";a:1:{s:7:"content";s:0:"";}s:21:"genesis_entry_content";a:1:{s:7:"content";s:0:"";}s:20:"genesis_entry_footer";a:1:{s:7:"content";s:0:"";}s:19:"genesis_after_entry";a:1:{s:7:"content";s:0:"";}s:23:"genesis_before_comments";a:1:{s:7:"content";s:0:"";}s:16:"genesis_comments";a:1:{s:7:"content";s:0:"";}s:21:"genesis_list_comments";a:1:{s:7:"content";s:0:"";}s:22:"genesis_after_comments";a:1:{s:7:"content";s:0:"";}s:20:"genesis_before_pings";a:1:{s:7:"content";s:0:"";}s:13:"genesis_pings";a:1:{s:7:"content";s:0:"";}s:18:"genesis_list_pings";a:1:{s:7:"content";s:0:"";}s:19:"genesis_after_pings";a:1:{s:7:"content";s:0:"";}s:22:"genesis_before_comment";a:1:{s:7:"content";s:0:"";}s:21:"genesis_after_comment";a:1:{s:7:"content";s:0:"";}s:27:"genesis_before_comment_form";a:1:{s:7:"content";s:0:"";}s:20:"genesis_comment_form";a:1:{s:7:"content";s:0:"";}s:26:"genesis_after_comment_form";a:1:{s:7:"content";s:0:"";}s:22:"genesis_before_sidebar";a:1:{s:7:"content";s:0:"";}s:15:"genesis_sidebar";a:1:{s:7:"content";s:0:"";}s:21:"genesis_after_sidebar";a:1:{s:7:"content";s:0:"";}s:34:"genesis_before_sidebar_widget_area";a:1:{s:7:"content";s:0:"";}s:33:"genesis_after_sidebar_widget_area";a:1:{s:7:"content";s:0:"";}s:26:"genesis_before_sidebar_alt";a:1:{s:7:"content";s:0:"";}s:19:"genesis_sidebar_alt";a:1:{s:7:"content";s:0:"";}s:25:"genesis_after_sidebar_alt";a:1:{s:7:"content";s:0:"";}s:38:"genesis_before_sidebar_alt_widget_area";a:1:{s:7:"content";s:0:"";}s:37:"genesis_after_sidebar_alt_widget_area";a:1:{s:7:"content";s:0:"";}s:21:"genesis_before_footer";a:1:{s:7:"content";s:0:"";}s:14:"genesis_footer";a:1:{s:7:"content";s:0:"";}s:20:"genesis_after_footer";a:1:{s:7:"content";s:0:"";}}', 'yes'),
(3392, 'upload_path', '', 'yes'),
(3393, 'upload_url_path', '', 'yes'),
(3394, 'wpmdb_error_log', '********************************************\n******  Log date: 2016/03/10 12:28:50 ******\n********************************************\n\nWPMDB Error: Failed attempting to process pull request (#112mf)\n\nArray\n(\n    [0] => Error attempting to move downloaded file. Temp path: /tmp/nighthawktires-logo-final-2-oE2zbT.tmp - New Path: /home/stagin18/public_html/nighthawktires/wp-content/uploads/2016/03/nighthawktires-logo-final-2.png (#105mf)\n    [1] => Error attempting to move downloaded file. Temp path: /tmp/nighthawktires-logo-final-2-150x76-RzBzBI.tmp - New Path: /home/stagin18/public_html/nighthawktires/wp-content/uploads/2016/03/nighthawktires-logo-final-2-150x76.png (#105mf)\n    [2] => Error attempting to move downloaded file. Temp path: /tmp/nighthawktires-logo-final-2-300x63-uLbfI1.tmp - New Path: /home/stagin18/public_html/nighthawktires/wp-content/uploads/2016/03/nighthawktires-logo-final-2-300x63.png (#105mf)\n)\n\n\n********************************************\n******  Log date: 2016/03/28 14:10:01 ******\n********************************************\n\nWPMDB Error: Failed attempting to process pull request (#112mf)\n\nArray\n(\n    [0] => Error attempting to move downloaded file. Temp path: /tmp/logo_bottom-HJvtwm.tmp - New Path: /home/stagin18/public_html/nighthawktires/wp-content/uploads/2016/02/logo_bottom.png (#105mf)\n    [1] => Error attempting to move downloaded file. Temp path: /tmp/logo_bottom-150x150-Q7USP2.tmp - New Path: /home/stagin18/public_html/nighthawktires/wp-content/uploads/2016/02/logo_bottom-150x150.png (#105mf)\n    [2] => Error attempting to move downloaded file. Temp path: /tmp/logo_bottom-300x292-2ZIV5a.tmp - New Path: /home/stagin18/public_html/nighthawktires/wp-content/uploads/2016/02/logo_bottom-300x292.png (#105mf)\n    [3] => Error attempting to move downloaded file. Temp path: /tmp/Best-Value_-EC0p4V.tmp - New Path: /home/stagin18/public_html/nighthawktires/wp-content/uploads/2016/02/Best-Value_.jpg (#105mf)\n    [4] => Error attempting to move downloaded file. Temp path: /tmp/Best-Value_-150x150-i2ZS0p.tmp - New Path: /home/stagin18/public_html/nighthawktires/wp-content/uploads/2016/02/Best-Value_-150x150.jpg (#105mf)\n    [5] => Error attempting to move downloaded file. Temp path: /tmp/Best-Value_-241x300-POVLRt.tmp - New Path: /home/stagin18/public_html/nighthawktires/wp-content/uploads/2016/02/Best-Value_-241x300.jpg (#105mf)\n    [6] => Error attempting to move downloaded file. Temp path: /tmp/Best-Value_-359x400-tZJMxd.tmp - New Path: /home/stagin18/public_html/nighthawktires/wp-content/uploads/2016/02/Best-Value_-359x400.jpg (#105mf)\n)\n\n\n', 'yes'),
(3395, 'wpmdb_schema_version', '1', 'yes'),
(3396, 'wpmdb_settings', 'a:9:{s:3:"key";s:40:"5u3NZjvyh/2vGxUUC73E0zJNusRk+YEYSfKEjaU2";s:10:"allow_pull";b:0;s:10:"allow_push";b:1;s:8:"profiles";a:0:{}s:7:"licence";s:36:"0bde294f-42af-4583-81fb-902ee06c141d";s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}s:11:"max_request";i:1048576;s:22:"delay_between_requests";i:0;}', 'yes'),
(3399, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:5:"p=690";i:1;s:6:"/cart/";i:2;s:5:"p=691";i:3;s:10:"/checkout/";i:4;s:5:"p=692";i:5;s:12:"/my-account/";}', 'yes'),
(3400, '_transient_timeout_geoip_43.254.48.253', '1459779137', 'no'),
(3401, '_transient_geoip_43.254.48.253', '', 'no'),
(3402, '_transient_timeout_external_ip_address_43.254.48.253', '1459779137', 'no'),
(3403, '_transient_external_ip_address_43.254.48.253', '37.60.253.205', 'no'),
(3404, '_transient_timeout_geoip_37.60.253.205', '1459779139', 'no'),
(3405, '_transient_geoip_37.60.253.205', '', 'no'),
(3406, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(3407, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(3408, '_site_transient_timeout_theme_roots', '1459176139', 'yes'),
(3409, '_site_transient_theme_roots', 'a:5:{s:7:"genesis";s:7:"/themes";s:18:"nighthawktires2016";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes'),
(3410, 'rewrite_rules', 'a:169:{s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:25:"index.php?xsl=$matches[1]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:52:"blog/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:47:"blog/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:40:"blog/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:22:"blog/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:49:"blog/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:44:"blog/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:37:"blog/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:19:"blog/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:50:"blog/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:45:"blog/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:38:"blog/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:20:"blog/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:50:"blog/product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:60:"blog/product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:80:"blog/product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:75:"blog/product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:75:"blog/product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:56:"blog/product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"blog/product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:43:"blog/product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:51:"blog/product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:58:"blog/product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:47:"blog/product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:39:"blog/product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"blog/product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"blog/product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"blog/product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"blog/product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"blog/product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:50:"blog/shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:60:"blog/shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:80:"blog/shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:75:"blog/shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:75:"blog/shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:56:"blog/shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"blog/shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:43:"blog/shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:51:"blog/shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:58:"blog/shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:47:"blog/shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:39:"blog/shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"blog/shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"blog/shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"blog/shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"blog/shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"blog/shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:50:"blog/postman_sent_mail/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:60:"blog/postman_sent_mail/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:80:"blog/postman_sent_mail/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:75:"blog/postman_sent_mail/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:75:"blog/postman_sent_mail/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:56:"blog/postman_sent_mail/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"blog/postman_sent_mail/([^/]+)/embed/?$";s:50:"index.php?postman_sent_mail=$matches[1]&embed=true";s:43:"blog/postman_sent_mail/([^/]+)/trackback/?$";s:44:"index.php?postman_sent_mail=$matches[1]&tb=1";s:51:"blog/postman_sent_mail/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?postman_sent_mail=$matches[1]&paged=$matches[2]";s:58:"blog/postman_sent_mail/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?postman_sent_mail=$matches[1]&cpage=$matches[2]";s:47:"blog/postman_sent_mail/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?postman_sent_mail=$matches[1]&page=$matches[2]";s:39:"blog/postman_sent_mail/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"blog/postman_sent_mail/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"blog/postman_sent_mail/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"blog/postman_sent_mail/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"blog/postman_sent_mail/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"blog/postman_sent_mail/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:40:"index.php?&page_id=605&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:52:"blog/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:47:"blog/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:40:"blog/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:22:"blog/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:74:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:69:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:62:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:44:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:61:"blog/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:56:"blog/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:49:"blog/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:31:"blog/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:48:"blog/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:43:"blog/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:36:"blog/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:18:"blog/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:36:"blog/.+?/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"blog/.+?/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"blog/.+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"blog/.+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"blog/.+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"blog/.+?/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"blog/(.+?)/([^/]+)/embed/?$";s:63:"index.php?category_name=$matches[1]&name=$matches[2]&embed=true";s:31:"blog/(.+?)/([^/]+)/trackback/?$";s:57:"index.php?category_name=$matches[1]&name=$matches[2]&tb=1";s:51:"blog/(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:46:"blog/(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:39:"blog/(.+?)/([^/]+)/page/?([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]";s:46:"blog/(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]";s:35:"blog/(.+?)/([^/]+)(?:/([0-9]+))?/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]";s:25:"blog/.+?/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"blog/.+?/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"blog/.+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"blog/.+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"blog/.+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"blog/.+?/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:43:"blog/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:38:"blog/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:31:"blog/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:38:"blog/(.+?)/comment-page-([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&cpage=$matches[2]";s:13:"blog/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";}', 'yes'),
(3411, '_site_transient_timeout_wpmdb_upgrade_data', '1459217551', 'yes'),
(3412, '_site_transient_wpmdb_upgrade_data', 'a:4:{s:17:"wp-migrate-db-pro";a:2:{s:7:"version";s:5:"1.5.5";s:6:"tested";s:5:"4.4.2";}s:29:"wp-migrate-db-pro-media-files";a:2:{s:7:"version";s:5:"1.4.3";s:6:"tested";s:5:"4.4.2";}s:21:"wp-migrate-db-pro-cli";a:2:{s:7:"version";s:5:"1.2.3";s:6:"tested";s:5:"4.4.2";}s:33:"wp-migrate-db-pro-multisite-tools";a:2:{s:7:"version";s:5:"1.1.1";s:6:"tested";s:5:"4.4.2";}}', 'yes'),
(3413, '_site_transient_timeout_gforms_zapier_version', '1459218441', 'yes'),
(3414, '_site_transient_gforms_zapier_version', 'a:3:{s:12:"is_valid_key";s:1:"1";s:7:"version";s:3:"1.8";s:3:"url";s:175:"http://s3.amazonaws.com/gravityforms/addons/zapier/gravityformszapier_1.8.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459348076&Signature=ypz%2FRLzLXiFZ1xdpSqBg5EJJE8I%3D";}', 'yes'),
(3415, '_transient_timeout_genesis-update', '1459260751', 'no'),
(3416, '_transient_genesis-update', 'a:4:{s:11:"new_version";s:5:"2.2.7";s:3:"url";s:40:"http://my.studiopress.com/themes/genesis";s:7:"package";s:60:"http://www.genesistheme.com/download/?file=genesis.2.2.7.zip";s:13:"changelog_url";s:53:"http://www.genesistheme.com/changelog/?TB_iframe=true";}', 'no') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3417, '_transient_timeout_gform_update_info', '1459260751', 'no'),
(3418, '_transient_gform_update_info', 'a:5:{s:7:"headers";a:8:{s:4:"date";s:29:"Mon, 28 Mar 2016 14:13:05 GMT";s:6:"server";s:12:"Apache/2.4.7";s:12:"x-powered-by";s:21:"PHP/5.5.9-1ubuntu4.14";s:4:"vary";s:15:"Accept-Encoding";s:16:"content-encoding";s:4:"gzip";s:14:"content-length";s:4:"1949";s:10:"connection";s:5:"close";s:12:"content-type";s:9:"text/html";}s:4:"body";s:9969:"{"is_valid_key":"1","version":"1.9.17.5","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/releases\\/gravityforms_1.9.17.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=f2fUwqUzYzMiUzzdM%2B9vIcJLKZ0%3D","expiration_time":1460955600,"offerings":{"gravityforms":{"is_available":true,"version":"1.9.17.5","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/releases\\/gravityforms_1.9.17.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=f2fUwqUzYzMiUzzdM%2B9vIcJLKZ0%3D"},"gravityformsactivecampaign":{"is_available":true,"version":"1.3.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/activecampaign\\/gravityformsactivecampaign_1.3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=HWdaShHtNbe9y%2Firx95eerPVkWA%3D"},"gravityformsagilecrm":{"is_available":true,"version":"1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/agilecrm\\/gravityformsagilecrm_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=xlQZvryFwEvQJlDXS9CsRhIIiA0%3D"},"gravityformsauthorizenet":{"is_available":true,"version":"2.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/authorizenet\\/gravityformsauthorizenet_2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=XczyDdO8ulLZXjQHZR7Fe2zK2NM%3D"},"gravityformsaweber":{"is_available":true,"version":"2.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/aweber\\/gravityformsaweber_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=MDG5TDpmb%2BvDEhOOvzgB0IVTPcc%3D"},"gravityformsbatchbook":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/batchbook\\/gravityformsbatchbook_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=4D1f2b17tIuU2nxqEk0KqQDXdTQ%3D"},"gravityformscampaignmonitor":{"is_available":true,"version":"3.4.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/campaignmonitor\\/gravityformscampaignmonitor_3.4.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=A5Vjq9%2B2nGSfrQ2OAOoRpOpb1T8%3D"},"gravityformscampfire":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/campfire\\/gravityformscampfire_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=ANxzVj1suQ3NiDdQmKuiaItvqYg%3D"},"gravityformscapsulecrm":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/capsulecrm\\/gravityformscapsulecrm_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=%2B3mUE9FXdaCA6GyHFJhhSWpMYVg%3D"},"gravityformscleverreach":{"is_available":true,"version":"1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/cleverreach\\/gravityformscleverreach_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=X6cktnZAylni52jw7SAHSkT9ZwM%3D"},"gravityformscoupons":{"is_available":true,"version":"2.2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/coupons\\/gravityformscoupons_2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=Ud1xxo7HzZOf23jV5JmEHskkpU4%3D"},"gravityformsdebug":{"is_available":true,"version":"","url":""},"gravityformsdropbox":{"is_available":true,"version":"1.1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/dropbox\\/gravityformsdropbox_1.1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=2CMX0rlDPU3MO6uTYQsLHAUEXH0%3D"},"gravityformsemma":{"is_available":true,"version":"1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/emma\\/gravityformsemma_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=lpVA5kf291tBMvcSJhT%2BFw6b2DI%3D"},"gravityformsfreshbooks":{"is_available":true,"version":"2.2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/freshbooks\\/gravityformsfreshbooks_2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=Giaa8VOrdYda2nRC04bDpYqBNG0%3D"},"gravityformsgetresponse":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/getresponse\\/gravityformsgetresponse_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=4Tu41BzCdi%2Fp8ozpgqorBNznsTg%3D"},"gravityformshelpscout":{"is_available":true,"version":"1.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/helpscout\\/gravityformshelpscout_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=dekwwC6ezfoJ5IIN4ycmIqt6sME%3D"},"gravityformshighrise":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/highrise\\/gravityformshighrise_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=hR%2FTCOkaTvnAqQPNEyRisKUz%2B8g%3D"},"gravityformshipchat":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/hipchat\\/gravityformshipchat_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=Soi1MbUs7liS1MJ0gbcMxoOfbi4%3D"},"gravityformsicontact":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/icontact\\/gravityformsicontact_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=%2BK71ldkMpHnKh3H7PckRERVpW%2F8%3D"},"gravityformslogging":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/logging\\/gravityformslogging_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=SGLrfr%2Fh95Ckc9bzm9N1uAe7VbI%3D"},"gravityformsmadmimi":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/madmimi\\/gravityformsmadmimi_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=hwpp38R1XbcjIB%2FmY4uMALylLEY%3D"},"gravityformsmailchimp":{"is_available":true,"version":"3.7.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/mailchimp\\/gravityformsmailchimp_3.7.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=91OaTKr%2BUaHXBvXnGOV0RhyIEbQ%3D"},"gravityformspartialentries":{"is_available":true,"version":"1.0-beta-1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/partialentries\\/gravityformspartialentries_1.0-beta-1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=vD0EI6ihfGF3%2BhZRzN3OhZXp8kk%3D"},"gravityformspaypal":{"is_available":true,"version":"2.6","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypal\\/gravityformspaypal_2.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=ydKUpO5BUFbvX2qpUCUZSEOczbA%3D"},"gravityformspaypalexpresscheckout":{"is_available":false,"version":""},"gravityformspaypalpaymentspro":{"is_available":true,"version":"2.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypalpaymentspro\\/gravityformspaypalpaymentspro_2.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=q5Skn5F2zT%2B%2ByCxlQMLKe6HmAX4%3D"},"gravityformspaypalpro":{"is_available":true,"version":"1.6","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypalpro\\/gravityformspaypalpro_1.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=WgT8iE%2FVcVVKhYx9yAiFICXn3E8%3D"},"gravityformspicatcha":{"is_available":false,"version":"2.0"},"gravityformspolls":{"is_available":true,"version":"2.4","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/polls\\/gravityformspolls_2.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=5Df14qUaGHvYnpqxBCVUpfXUiVw%3D"},"gravityformsquiz":{"is_available":true,"version":"2.4.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/quiz\\/gravityformsquiz_2.4.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=joUrYtjOKuKwcioPXQsF%2B7qLdqo%3D"},"gravityformssignature":{"is_available":true,"version":"2.4","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/signature\\/gravityformssignature_2.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=1Wu6PiDiydiqkn6XY6xs1boBU8U%3D"},"gravityformsslack":{"is_available":true,"version":"1.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/slack\\/gravityformsslack_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=BBwFLqocsOQ74nuLneI7RTnmwdM%3D"},"gravityformsstripe":{"is_available":true,"version":"2.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/stripe\\/gravityformsstripe_2.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=EcGe0BBtVEJXkkH8W0z2PYsim74%3D"},"gravityformssurvey":{"is_available":true,"version":"2.6","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/survey\\/gravityformssurvey_2.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=ZYrOugikJ6ttn3x51stL93bO4bM%3D"},"gravityformstrello":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/trello\\/gravityformstrello_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=B3nNsRL3NTisr6JMcWv9GwE%2F03o%3D"},"gravityformstwilio":{"is_available":true,"version":"2.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/twilio\\/gravityformstwilio_2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=RJGO2lWh11UdS2DKbtZE0WLzH3Q%3D"},"gravityformsuserregistration":{"is_available":true,"version":"3.2.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/userregistration\\/gravityformsuserregistration_3.2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=81Bw0w3ODQxZ6RnBTWgUSRiWGVM%3D"},"gravityformszapier":{"is_available":true,"version":"1.8","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/zapier\\/gravityformszapier_1.8.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=uyDmsdcJPK3Yctv2KyWKdgA9iBs%3D"},"gravityformszohocrm":{"is_available":true,"version":"1.2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/zohocrm\\/gravityformszohocrm_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1459347185&Signature=jLGl7RQxp9v3b7lKIrpcD70qRpk%3D"}},"is_active":"1"}";s:8:"response";a:2:{s:4:"code";i:200;s:7:"message";s:2:"OK";}s:7:"cookies";a:0:{}s:8:"filename";N;}', 'no'),
(3419, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.4.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.4.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.2";s:7:"version";s:5:"4.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1459175231;s:15:"version_checked";s:5:"4.4.2";s:12:"translations";a:0:{}}', 'yes'),
(3421, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1459175232;s:7:"checked";a:5:{s:7:"genesis";s:5:"2.2.6";s:18:"nighthawktires2016";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.4";s:14:"twentyfourteen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(3422, '_site_transient_timeout_wpmdb_licence_response', '1459217552', 'yes'),
(3423, '_site_transient_wpmdb_licence_response', '{"message":"<style type=\\"text\\/css\\" media=\\"screen\\">body .support .support-content{overflow:hidden;width:727px}body .support .support-content .intro{margin-bottom:20px}body .support .support-content .submission-success p,body .support .support-content .submission-error p{padding:2px;margin:0.5em 0;font-size:13px;line-height:1.5}body .support .support-content .dbrains-support-form{width:475px;float:left}body .support .support-content .dbrains-support-form p{width:auto}body .support .support-content .dbrains-support-form .field{margin-bottom:5px}body .support .support-content .dbrains-support-form input[type=text],body .support .support-content .dbrains-support-form textarea{width:100%}body .support .support-content .dbrains-support-form .field.from label{float:left;line-height:28px;display:block;font-weight:bold}body .support .support-content .dbrains-support-form .field.from select{float:right;width:400px}body .support .support-content .dbrains-support-form .field.from .note{clear:both;padding-top:5px}body .support .support-content .dbrains-support-form .field.email-message textarea{height:170px}body .support .support-content .dbrains-support-form .field.remote-diagnostic-content{padding-left:20px}body .support .support-content .dbrains-support-form .field.remote-diagnostic-content ol{margin:0 0 5px 20px}body .support .support-content .dbrains-support-form .field.remote-diagnostic-content li{font-size:12px;color:#666;margin-bottom:0}body .support .support-content .dbrains-support-form .field.remote-diagnostic-content textarea{height:80px}body .support .support-content .dbrains-support-form .note{font-size:12px;color:#666}body .support .support-content .dbrains-support-form .submit-form{overflow:hidden;padding:10px 0}body .support .support-content .dbrains-support-form .button{float:left}body .support .support-content .dbrains-support-form .button:active,body .support .support-content .dbrains-support-form .button:focus{outline:none}body .support .support-content .dbrains-support-form .ajax-spinner{float:left;margin-left:5px;margin-top:3px}body .support .support-content .additional-help{float:right;width:220px}body .support .support-content .additional-help a{text-decoration:none}body .support .support-content .additional-help h1{margin:0 0 12px 0;padding:0;font-size:18px;font-weight:normal;line-height:1}body .support .support-content .additional-help h1 a{color:#333}body .support .support-content .additional-help .docs{background-color:#e6e6e6;padding:15px 15px 10px 15px}body .support .support-content .additional-help .docs ul{margin:0}body .support .support-content .additional-help .docs li{font-size:14px}\\n<\\/style><section class=\\"dbrains-support-form\\">\\n\\n<p class=\\"intro\\">\\n\\tYou have an active <strong>Developer<\\/strong> license. You will get front-of-the-line email support service when submitting the form below.<\\/p>\\n\\n<div class=\\"updated submission-success\\" style=\\"display: none;\\">\\n\\t<p><strong>Success!<\\/strong> &mdash; Thanks for submitting your support request. We\'ll be in touch soon.<\\/p>\\n<\\/div>\\n\\n<div class=\\"error submission-error api-error\\" style=\\"display: none;\\">\\n\\t<p><strong>Error!<\\/strong> &mdash; <\\/p>\\n<\\/div>\\n\\n<div class=\\"error submission-error xhr-error\\" style=\\"display: none;\\">\\n\\t<p><strong>Error!<\\/strong> &mdash; There was a problem submitting your request:<\\/p>\\n<\\/div>\\n\\n<div class=\\"error submission-error email-error\\" style=\\"display: none;\\">\\n\\t<p><strong>Error!<\\/strong> &mdash; Please select your email address.<\\/p>\\n<\\/div>\\n\\n<div class=\\"error submission-error subject-error\\" style=\\"display: none;\\">\\n\\t<p><strong>Error!<\\/strong> &mdash; Please enter a subject.<\\/p>\\n<\\/div>\\n\\n<div class=\\"error submission-error message-error\\" style=\\"display: none;\\">\\n\\t<p><strong>Error!<\\/strong> &mdash; Please enter a message.<\\/p>\\n<\\/div>\\n\\n<div class=\\"error submission-error remote-diagnostic-content-error\\" style=\\"display: none;\\">\\n\\t<p><strong>Error!<\\/strong> &mdash; Please paste in the Diagnostic Info &amp; Error Log from your <strong>remote site<\\/strong>.<\\/p>\\n<\\/div>\\n\\n<form target=\\"_blank\\" method=\\"post\\" action=\\"https:\\/\\/deliciousbrains.com\\/?wc-api=delicious-brains&request=submit_support_request&licence_key=0bde294f-42af-4583-81fb-902ee06c141d&product=wp-migrate-db-pro\\">\\n\\n\\t<div class=\\"field from\\">\\n\\t\\t<label>From:<\\/label>\\n\\t\\t<select name=\\"email\\">\\n\\t\\t<option value=\\"\\">&mdash; Select your email address &mdash;<\\/option>\\n\\t\\t<option value=\\"jpeterson@develare.com\\">jpeterson@develare.com<\\/option>\\t\\t<\\/select>\\n\\n\\t\\t<p class=\\"note\\">\\n\\t\\t\\tReplies will be sent to this email address. Update your name &amp; email in <a href=\\"https:\\/\\/deliciousbrains.com\\/my-account\\/\\">My Account<\\/a>.\\t\\t<\\/p>\\n\\t<\\/div>\\n\\n\\t<div class=\\"field subject\\">\\n\\t\\t<input type=\\"text\\" name=\\"subject\\" placeholder=\\"Subject\\">\\n\\t<\\/div>\\n\\n\\t<div class=\\"field email-message\\">\\n\\t\\t<textarea name=\\"message\\" placeholder=\\"Message\\"><\\/textarea>\\n\\t<\\/div>\\n\\n\\t<div class=\\"field checkbox local-diagnostic\\">\\n\\t\\t<label>\\n\\t\\t\\t<input type=\\"checkbox\\" name=\\"local-diagnostic\\" value=\\"1\\" checked>\\n\\t\\t\\tInclude <strong>this site&#8217;s<\\/strong> Diagnostic Info &amp; Error Log (below)\\t\\t<\\/label>\\n\\t<\\/div>\\n\\t\\t<div class=\\"field checkbox remote-diagnostic\\">\\n\\t\\t<label>\\n\\t\\t\\t<input type=\\"checkbox\\" name=\\"remote-diagnostic\\" value=\\"1\\" checked>\\n\\t\\t\\tInclude the <strong>remote site<\\/strong> Diagnostic Info &amp; Error Log\\t\\t<\\/label>\\n\\t<\\/div>\\n\\n\\t<div class=\\"field remote-diagnostic-content\\">\\n\\t\\t<ol>\\n\\t\\t\\t<li>Go to the Help tab of the remote site<\\/li>\\n\\t\\t\\t<li>Copy the Diagnostic Info &amp; Error Log<\\/li>\\n\\t\\t\\t<li>Paste it below<\\/li>\\n\\t\\t<\\/ol>\\n\\t\\t<textarea name=\\"remote-diagnostic-content\\" placeholder=\\"Remote site&#8217;s Diagnostic Info &amp; Error Log\\"><\\/textarea>\\n\\t<\\/div>\\n\\t\\t<div class=\\"submit-form\\">\\n\\t\\t<button type=\\"submit\\" class=\\"button\\">Send Email<\\/button>\\n\\t<\\/div>\\n\\n\\t<p class=\\"note trouble\\">\\n\\t\\tHaving trouble submitting the form? Email your support request to <a href=\\"mailto:priority-wpmdb@deliciousbrains.com\\">priority-wpmdb@deliciousbrains.com<\\/a> instead.\\t<\\/p>\\n\\n<\\/form>\\n\\n<\\/section>\\n\\n\\t<aside class=\\"additional-help\\">\\n\\t\\t<section class=\\"docs\\">\\n\\t\\t\\t<h1><a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/docs\\/\\">Documentation<\\/a><\\/h1>\\n\\t\\t\\t<ul class=\\"categories\\">\\n\\t\\t\\t\\t<li><a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/docs\\/getting-started\\/\\">Getting Started<\\/a><\\/li><li><a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/docs\\/debugging\\/\\">Debugging<\\/a><\\/li><li><a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/docs\\/cli\\/\\">CLI<\\/a><\\/li><li><a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/docs\\/common-errors\\/\\">Common Errors<\\/a><\\/li><li><a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/docs\\/howto\\/\\">How To<\\/a><\\/li><li><a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/docs\\/addons\\/\\">Addons<\\/a><\\/li><li><a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/docs\\/multisite\\/\\">Multisite<\\/a><\\/li><li><a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/docs\\/changelogs\\/\\">Changelogs<\\/a><\\/li>\\t\\t\\t<\\/ul>\\n\\t\\t<\\/section>\\n\\t<\\/aside>\\n<script>!function(a){var b=a(\\".dbrains-support-form form\\"),c=a(\\".submit-form\\",b);is_submitting=!1;var d=a(\\".remote-diagnostic input\\",b),e=a(\\".remote-diagnostic-content\\",b);d.on(\\"click\\",function(){d.prop(\\"checked\\")?e.show():e.hide()});var f=ajaxurl.replace(\\"\\/admin-ajax.php\\",\\"\\/images\\/wpspin_light\\");window.devicePixelRatio>=2&&(f+=\\"-2x\\"),f+=\\".gif\\",b.submit(function(d){if(d.preventDefault(),!is_submitting){is_submitting=!0,a(\\".button\\",b).blur();var e=a(\\".ajax-spinner\\",c);e[0]?e.show():(e=a(\'<img src=\\"\'+f+\'\\" alt=\\"\\" class=\\"ajax-spinner general-spinner\\" \\/>\'),c.append(e)),a(\\".submission-error\\").hide();var g=[\\"email\\",\\"subject\\",\\"message\\"],h={},i=!1;a.each(b.serializeArray(),function(b,c){h[c.name]=c.value,a.inArray(c.name,g)>-1&&\\"\\"===c.value&&(a(\\".\\"+c.name+\\"-error\\").fadeIn(),i=!0)});var j=a(\\"input[name=remote-diagnostic]\\",b).is(\\":checked\\");if(j&&\\"\\"===h[\\"remote-diagnostic-content\\"]&&(a(\\".remote-diagnostic-content-error\\").fadeIn(),i=!0),i)return e.hide(),void(is_submitting=!1);j||(h[\\"remote-diagnostic-content\\"]=\\"\\"),a(\\"input[name=local-diagnostic]\\",b).is(\\":checked\\")&&(h[\\"local-diagnostic-content\\"]=a(\\".debug-log-textarea\\").val()),a.ajax({url:b.prop(\\"action\\"),type:\\"POST\\",dataType:\\"JSON\\",cache:!1,data:h,error:function(b,c,d){var f=a(\\".xhr-error\\");a(\\"p\\",f).append(\\" \\"+d+\\" (\\"+c+\\")\\"),f.show(),e.hide(),is_submitting=!1},success:function(c){if(\\"undefined\\"!=typeof c.errors){var d=a(\\".api-error\\");return a.each(c.errors,function(b,c){return a(\\"p\\",d).append(c),!1}),d.show(),e.hide(),void(is_submitting=!1)}a(\\".submission-success\\").show(),b.hide(),e.hide(),is_submitting=!1}})}})}(jQuery);<\\/script>","addons_available":"1","addons_available_list":{"wp-migrate-db-pro-media-files":2351,"wp-migrate-db-pro-cli":3948,"wp-migrate-db-pro-multisite-tools":7999},"addon_list":{"wp-migrate-db-pro-media-files":{"name":"Media Files","desc":"Allows you to push and pull your files in the Media Library between two WordPress installs. It can compare both libraries and only migrate those missing or updated, or it can do a complete copy of one site\\u2019s library to another. <a style=\\"color:#fff;text-decoration:underline;\\" href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/doc\\/media-files-addon\\/\\">More Details &rarr;<\\/a>","version":"1.4.3","beta_version":"","tested":"4.4.2"},"wp-migrate-db-pro-cli":{"name":"CLI","desc":"Integrates WP Migrate DB Pro with WP-CLI allowing you to run migrations from the command line: <code>wp migratedb &lt;push|pull&gt; &lt;url&gt; &lt;secret-key&gt;<\\/code> <code>[--find=&lt;strings&gt;] [--replace=&lt;strings&gt;] ...<\\/code> <a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/doc\\/cli-addon\\/\\">More Details &rarr;<\\/a>","version":"1.2.3","beta_version":"","required":"1.4b1","tested":"4.4.2"},"wp-migrate-db-pro-multisite-tools":{"name":"Multisite Tools","desc":"Export a subsite as an SQL file that can then be imported as a single site install. <a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/doc\\/multisite-tools-addon\\/\\">More Details &rarr;<\\/a>","version":"1.1.1","beta_version":"","required":"1.5-dev","tested":"4.4.2"}}}', 'yes'),
(3424, '_transient_product_query-transient-version', '1459174353', 'yes'),
(3425, '_transient_timeout_wc_uf_pid_f7576f6d84f38ec035ad880d6ddf9402', '1461766353', 'no'),
(3426, '_transient_wc_uf_pid_f7576f6d84f38ec035ad880d6ddf9402', 'a:1:{i:0;i:693;}', 'no'),
(3427, '_transient_timeout_GFCache_cf6fd89d422331c4393f9b8c9dce6fbc', '1459174727', 'no'),
(3428, '_transient_GFCache_cf6fd89d422331c4393f9b8c9dce6fbc', 'a:0:{}', 'no'),
(3429, '_transient_timeout_GFCache_531af585b341ad1238ed5556b00ddc67', '1459174727', 'no'),
(3430, '_transient_GFCache_531af585b341ad1238ed5556b00ddc67', 'a:2:{i:0;O:8:"stdClass":2:{s:7:"form_id";s:1:"1";s:10:"view_count";s:3:"182";}i:1;O:8:"stdClass":2:{s:7:"form_id";s:1:"2";s:10:"view_count";s:1:"4";}}', 'no'),
(3431, '_transient_timeout_plugin_slugs', '1459261641', 'no'),
(3432, '_transient_plugin_slugs', 'a:28:{i:0;s:44:"accordion-shortcode-and-widget/accordion.php";i:1;s:19:"akismet/akismet.php";i:2;s:27:"backupbuddy/backupbuddy.php";i:3;s:23:"conductor/conductor.php";i:4;s:51:"conductor-custom-fields/conductor-custom-fields.php";i:5;s:49:"conductor-display-pack/conductor-display-pack.php";i:6;s:39:"conductor-genesis/conductor-genesis.php";i:7;s:54:"conductor-woocommerce/conductor-woocommerce-add-on.php";i:8;s:23:"debug-bar/debug-bar.php";i:9;s:25:"easy-table/easy-table.php";i:10;s:31:"genesis-simple-hooks/plugin.php";i:11;s:29:"gravityforms/gravityforms.php";i:12;s:29:"gravityformszapier/zapier.php";i:13;s:29:"html-sitemap/html-sitemap.php";i:14;s:29:"image-widget/image-widget.php";i:15;s:13:"note/note.php";i:16;s:27:"p3-profiler/p3-profiler.php";i:17;s:29:"postman-smtp/postman-smtp.php";i:18;s:35:"seo-redirection/seo-redirection.php";i:19;s:26:"shortcode-widget/index.php";i:20;s:21:"usersnap/usersnap.php";i:21;s:27:"woocommerce/woocommerce.php";i:22;s:41:"wordpress-importer/wordpress-importer.php";i:23;s:15:"wp101/wp101.php";i:24;s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";i:25;s:63:"wp-migrate-db-pro-media-files/wp-migrate-db-pro-media-files.php";i:26;s:31:"wp-seo-html-sitemap/sitemap.php";i:27;s:24:"wordpress-seo/wp-seo.php";}', 'no'),
(3433, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1459185865', 'yes'),
(3434, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5762";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3580";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3548";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3046";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2757";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2281";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2190";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2045";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1999";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1968";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1959";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1915";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1828";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1641";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1539";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1532";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1509";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1338";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1281";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1276";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1178";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1080";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1055";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"996";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"950";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"922";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"907";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"892";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"889";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"878";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"878";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"822";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"784";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"778";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"759";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"743";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"737";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"736";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"735";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"732";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"727";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"726";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"687";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"681";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"671";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"671";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"670";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"661";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"648";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"630";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"629";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"626";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"609";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"602";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"591";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"585";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"585";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"585";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"584";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"570";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"562";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"558";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"548";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"540";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"537";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"526";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"517";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"507";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"502";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"501";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"491";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"489";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"486";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"484";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"466";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"452";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"438";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"436";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"436";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"435";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"434";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"428";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"422";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"419";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"414";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"404";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"404";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"402";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"402";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"398";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"397";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"394";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"390";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"388";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"386";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"384";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"384";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"384";}s:9:"automatic";a:3:{s:4:"name";s:9:"automatic";s:4:"slug";s:9:"automatic";s:5:"count";s:3:"381";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"381";}}', 'yes'),
(3440, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1459175236;s:7:"checked";a:28:{s:44:"accordion-shortcode-and-widget/accordion.php";s:3:"1.4";s:19:"akismet/akismet.php";s:5:"3.1.7";s:27:"backupbuddy/backupbuddy.php";s:7:"7.0.5.4";s:23:"conductor/conductor.php";s:5:"1.3.1";s:51:"conductor-custom-fields/conductor-custom-fields.php";s:5:"1.0.3";s:49:"conductor-display-pack/conductor-display-pack.php";s:5:"1.0.2";s:39:"conductor-genesis/conductor-genesis.php";s:5:"1.0.1";s:54:"conductor-woocommerce/conductor-woocommerce-add-on.php";s:5:"1.0.0";s:23:"debug-bar/debug-bar.php";s:5:"0.8.2";s:25:"easy-table/easy-table.php";s:3:"1.6";s:31:"genesis-simple-hooks/plugin.php";s:5:"2.1.2";s:29:"gravityforms/gravityforms.php";s:8:"1.9.16.7";s:29:"gravityformszapier/zapier.php";s:3:"1.8";s:29:"html-sitemap/html-sitemap.php";s:3:"1.3";s:29:"image-widget/image-widget.php";s:5:"4.2.1";s:13:"note/note.php";s:5:"1.3.1";s:27:"p3-profiler/p3-profiler.php";s:7:"1.5.3.9";s:29:"postman-smtp/postman-smtp.php";s:5:"1.7.2";s:35:"seo-redirection/seo-redirection.php";s:3:"3.5";s:26:"shortcode-widget/index.php";s:3:"1.2";s:21:"usersnap/usersnap.php";s:3:"4.3";s:27:"woocommerce/woocommerce.php";s:5:"2.5.5";s:41:"wordpress-importer/wordpress-importer.php";s:5:"0.6.1";s:15:"wp101/wp101.php";s:5:"3.2.3";s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";s:5:"1.5.5";s:63:"wp-migrate-db-pro-media-files/wp-migrate-db-pro-media-files.php";s:5:"1.4.3";s:31:"wp-seo-html-sitemap/sitemap.php";s:5:"0.9.6";s:24:"wordpress-seo/wp-seo.php";s:5:"3.0.7";}s:8:"response";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.8.zip";s:6:"tested";s:5:"4.4.2";s:13:"compatibility";b:0;}s:23:"debug-bar/debug-bar.php";O:8:"stdClass":9:{s:2:"id";s:5:"18561";s:4:"slug";s:9:"debug-bar";s:6:"plugin";s:23:"debug-bar/debug-bar.php";s:11:"new_version";s:5:"0.8.4";s:3:"url";s:40:"https://wordpress.org/plugins/debug-bar/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/debug-bar.0.8.4.zip";s:14:"upgrade_notice";s:56:"Updated to avoid incompatibilities with some extensions.";s:6:"tested";s:3:"4.5";s:13:"compatibility";b:0;}s:29:"image-widget/image-widget.php";O:8:"stdClass":8:{s:2:"id";s:4:"4078";s:4:"slug";s:12:"image-widget";s:6:"plugin";s:29:"image-widget/image-widget.php";s:11:"new_version";s:5:"4.2.2";s:3:"url";s:43:"https://wordpress.org/plugins/image-widget/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/image-widget.4.2.2.zip";s:6:"tested";s:5:"4.4.2";s:13:"compatibility";b:0;}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":8:{s:2:"id";s:4:"5899";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:5:"3.1.2";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wordpress-seo.3.1.2.zip";s:6:"tested";s:3:"4.5";s:13:"compatibility";b:0;}}s:12:"translations";a:0:{}s:9:"no_update";a:14:{s:44:"accordion-shortcode-and-widget/accordion.php";O:8:"stdClass":6:{s:2:"id";s:5:"68953";s:4:"slug";s:30:"accordion-shortcode-and-widget";s:6:"plugin";s:44:"accordion-shortcode-and-widget/accordion.php";s:11:"new_version";s:3:"1.4";s:3:"url";s:61:"https://wordpress.org/plugins/accordion-shortcode-and-widget/";s:7:"package";s:77:"https://downloads.wordpress.org/plugin/accordion-shortcode-and-widget.1.4.zip";}s:25:"easy-table/easy-table.php";O:8:"stdClass":6:{s:2:"id";s:5:"31650";s:4:"slug";s:10:"easy-table";s:6:"plugin";s:25:"easy-table/easy-table.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:41:"https://wordpress.org/plugins/easy-table/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/easy-table.1.6.zip";}s:31:"genesis-simple-hooks/plugin.php";O:8:"stdClass":6:{s:2:"id";s:5:"14407";s:4:"slug";s:20:"genesis-simple-hooks";s:6:"plugin";s:31:"genesis-simple-hooks/plugin.php";s:11:"new_version";s:5:"2.1.2";s:3:"url";s:51:"https://wordpress.org/plugins/genesis-simple-hooks/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/genesis-simple-hooks.2.1.2.zip";}s:29:"html-sitemap/html-sitemap.php";O:8:"stdClass":6:{s:2:"id";s:5:"10118";s:4:"slug";s:12:"html-sitemap";s:6:"plugin";s:29:"html-sitemap/html-sitemap.php";s:11:"new_version";s:3:"1.3";s:3:"url";s:43:"https://wordpress.org/plugins/html-sitemap/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/html-sitemap.1.3.zip";}s:13:"note/note.php";O:8:"stdClass":6:{s:2:"id";s:5:"55139";s:4:"slug";s:4:"note";s:6:"plugin";s:13:"note/note.php";s:11:"new_version";s:5:"1.3.1";s:3:"url";s:35:"https://wordpress.org/plugins/note/";s:7:"package";s:53:"https://downloads.wordpress.org/plugin/note.1.3.1.zip";}s:27:"p3-profiler/p3-profiler.php";O:8:"stdClass":7:{s:2:"id";s:5:"27704";s:4:"slug";s:11:"p3-profiler";s:6:"plugin";s:27:"p3-profiler/p3-profiler.php";s:11:"new_version";s:7:"1.5.3.9";s:3:"url";s:42:"https://wordpress.org/plugins/p3-profiler/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/p3-profiler.1.5.3.9.zip";s:14:"upgrade_notice";s:75:"Security update: Escape URLs returned by add_query_arg and remove_query_arg";}s:29:"postman-smtp/postman-smtp.php";O:8:"stdClass":6:{s:2:"id";s:5:"57035";s:4:"slug";s:12:"postman-smtp";s:6:"plugin";s:29:"postman-smtp/postman-smtp.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:43:"https://wordpress.org/plugins/postman-smtp/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/postman-smtp.1.7.2.zip";}s:35:"seo-redirection/seo-redirection.php";O:8:"stdClass":6:{s:2:"id";s:5:"49458";s:4:"slug";s:15:"seo-redirection";s:6:"plugin";s:35:"seo-redirection/seo-redirection.php";s:11:"new_version";s:3:"3.5";s:3:"url";s:46:"https://wordpress.org/plugins/seo-redirection/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/seo-redirection.zip";}s:26:"shortcode-widget/index.php";O:8:"stdClass":6:{s:2:"id";s:5:"38281";s:4:"slug";s:16:"shortcode-widget";s:6:"plugin";s:26:"shortcode-widget/index.php";s:11:"new_version";s:3:"1.2";s:3:"url";s:47:"https://wordpress.org/plugins/shortcode-widget/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/shortcode-widget.1.2.zip";}s:21:"usersnap/usersnap.php";O:8:"stdClass":6:{s:2:"id";s:5:"26910";s:4:"slug";s:8:"usersnap";s:6:"plugin";s:21:"usersnap/usersnap.php";s:11:"new_version";s:3:"4.3";s:3:"url";s:39:"https://wordpress.org/plugins/usersnap/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/usersnap.4.3.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"2.5.5";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.2.5.5.zip";}s:41:"wordpress-importer/wordpress-importer.php";O:8:"stdClass":6:{s:2:"id";s:5:"14975";s:4:"slug";s:18:"wordpress-importer";s:6:"plugin";s:41:"wordpress-importer/wordpress-importer.php";s:11:"new_version";s:5:"0.6.1";s:3:"url";s:49:"https://wordpress.org/plugins/wordpress-importer/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.1.zip";}s:15:"wp101/wp101.php";O:8:"stdClass":6:{s:2:"id";s:5:"25059";s:4:"slug";s:5:"wp101";s:6:"plugin";s:15:"wp101/wp101.php";s:11:"new_version";s:5:"3.2.3";s:3:"url";s:36:"https://wordpress.org/plugins/wp101/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/wp101.3.2.3.zip";}s:31:"wp-seo-html-sitemap/sitemap.php";O:8:"stdClass":6:{s:2:"id";s:5:"59709";s:4:"slug";s:19:"wp-seo-html-sitemap";s:6:"plugin";s:31:"wp-seo-html-sitemap/sitemap.php";s:11:"new_version";s:5:"0.9.6";s:3:"url";s:50:"https://wordpress.org/plugins/wp-seo-html-sitemap/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wp-seo-html-sitemap.zip";}}}', 'yes'),
(3441, 'wpmdb_state_timeout_56f93f641bf00', '1459261675', 'yes'),
(3442, 'wpmdb_state_56f93f641bf00', 'a:25:{s:6:"action";s:19:"wpmdb_migrate_table";s:6:"intent";s:4:"pull";s:3:"url";s:41:"http://nighthawktires.developmentcloud.us";s:3:"key";s:40:"FZQahnS89tJrDp+r2h5J3WM91uSCo8JPUg8W+YMj";s:9:"form_data";s:824:"save_computer=1&gzip_file=1&action=pull&connection_info=http%3A%2F%2Fnighthawktires.developmentcloud.us%0D%0AFZQahnS89tJrDp%2Br2h5J3WM91uSCo8JPUg8W%2BYMj&auth_username=nighthawktiresadmin&auth_password=65No0mOjPiyfwC%23G&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fnighthawktires.developmentcloud.us&replace_new%5B%5D=%2F%2Fnighthawktires.stagingcloud.us&replace_old%5B%5D=%2Fhome%2Fdevelo06%2Fpublic_html%2Fnighthawktires&replace_new%5B%5D=%2Fhome%2Fstagin18%2Fpublic_html%2Fnighthawktires&table_migrate_option=migrate_only_with_prefix&replace_guids=1&exclude_transients=1&compatibility_older_mysql=1&create_backup=1&backup_option=backup_only_with_prefix&media_files=1&media_migration_option=compare&save_migration_profile_option=new&create_new_profile=nighthawktires.developmentcloud.us&remote_json_data=";s:5:"stage";s:6:"backup";s:5:"nonce";s:10:"067029dfa9";s:12:"site_details";a:2:{s:5:"local";a:8:{s:12:"is_multisite";s:5:"false";s:8:"site_url";s:37:"http://nighthawktires.stagingcloud.us";s:6:"prefix";s:3:"wp_";s:15:"uploads_baseurl";s:57:"http://nighthawktires.stagingcloud.us/wp-content/uploads/";s:7:"uploads";a:6:{s:4:"path";s:68:"/home/stagin18/public_html/nighthawktires/wp-content/uploads/2016/03";s:3:"url";s:64:"http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/03";s:6:"subdir";s:8:"/2016/03";s:7:"basedir";s:60:"/home/stagin18/public_html/nighthawktires/wp-content/uploads";s:7:"baseurl";s:56:"http://nighthawktires.stagingcloud.us/wp-content/uploads";s:5:"error";b:0;}s:11:"uploads_dir";s:33:"wp-content/uploads/wp-migrate-db/";s:8:"subsites";a:0:{}s:13:"subsites_info";a:0:{}}s:6:"remote";a:8:{s:12:"is_multisite";s:5:"false";s:8:"site_url";s:41:"http://nighthawktires.developmentcloud.us";s:6:"prefix";s:3:"wp_";s:15:"uploads_baseurl";s:61:"http://nighthawktires.developmentcloud.us/wp-content/uploads/";s:7:"uploads";a:6:{s:4:"path";s:68:"/home/develo06/public_html/nighthawktires/wp-content/uploads/2016/03";s:3:"url";s:68:"http://nighthawktires.developmentcloud.us/wp-content/uploads/2016/03";s:6:"subdir";s:8:"/2016/03";s:7:"basedir";s:60:"/home/develo06/public_html/nighthawktires/wp-content/uploads";s:7:"baseurl";s:60:"http://nighthawktires.developmentcloud.us/wp-content/uploads";s:5:"error";b:0;}s:11:"uploads_dir";s:33:"wp-content/uploads/wp-migrate-db/";s:8:"subsites";a:0:{}s:13:"subsites_info";a:0:{}}}s:11:"temp_prefix";s:5:"_mig_";s:5:"error";i:0;s:15:"remote_state_id";s:13:"56f93f640ee9b";s:13:"dump_filename";s:53:"stagin18_nighthawktireswp-backup-20160328142748-h8egh";s:8:"dump_url";s:128:"http://nighthawktires.stagingcloud.us/wp-content/uploads/wp-migrate-db/stagin18_nighthawktireswp-backup-20160328142748-h8egh.sql";s:10:"db_version";s:6:"5.6.28";s:8:"site_url";s:37:"http://nighthawktires.stagingcloud.us";s:18:"find_replace_pairs";a:2:{s:11:"replace_old";a:2:{i:1;s:36:"//nighthawktires.developmentcloud.us";i:2;s:41:"/home/develo06/public_html/nighthawktires";}s:11:"replace_new";a:2:{i:1;s:32:"//nighthawktires.stagingcloud.us";i:2;s:41:"/home/stagin18/public_html/nighthawktires";}}s:18:"migration_state_id";s:13:"56f93f641bf00";s:5:"table";s:10:"wp_options";s:11:"current_row";s:0:"";s:10:"last_table";s:1:"0";s:12:"primary_keys";s:0:"";s:4:"gzip";i:1;s:10:"bottleneck";d:1048576;s:6:"prefix";s:3:"wp_";s:16:"dumpfile_created";b:1;}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=1016 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(60, 15, '_menu_item_type', 'custom'),
(61, 15, '_menu_item_menu_item_parent', '0'),
(62, 15, '_menu_item_object_id', '15'),
(63, 15, '_menu_item_object', 'custom'),
(64, 15, '_menu_item_target', '_blank'),
(65, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(66, 15, '_menu_item_xfn', ''),
(67, 15, '_menu_item_url', 'http://www.twitter.com/studiopress'),
(68, 16, '_menu_item_type', 'custom'),
(69, 16, '_menu_item_menu_item_parent', '0'),
(70, 16, '_menu_item_object_id', '16'),
(71, 16, '_menu_item_object', 'custom'),
(72, 16, '_menu_item_target', '_blank'),
(73, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 16, '_menu_item_xfn', ''),
(75, 16, '_menu_item_url', 'http://facebook.com/studiopress'),
(76, 17, '_menu_item_type', 'custom'),
(77, 17, '_menu_item_menu_item_parent', '0'),
(78, 17, '_menu_item_object_id', '17'),
(79, 17, '_menu_item_object', 'custom'),
(80, 17, '_menu_item_target', '_blank'),
(81, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(82, 17, '_menu_item_xfn', ''),
(83, 17, '_menu_item_url', 'https://www.linkedin.com/company/studiopress'),
(84, 18, '_menu_item_type', 'custom'),
(85, 18, '_menu_item_menu_item_parent', '0'),
(86, 18, '_menu_item_object_id', '18'),
(87, 18, '_menu_item_object', 'custom'),
(88, 18, '_menu_item_target', '_blank'),
(89, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(90, 18, '_menu_item_xfn', ''),
(91, 18, '_menu_item_url', 'https://plus.google.com/111506874011582533618/about'),
(92, 19, '_menu_item_type', 'custom'),
(93, 19, '_menu_item_menu_item_parent', '0'),
(94, 19, '_menu_item_object_id', '19'),
(95, 19, '_menu_item_object', 'custom'),
(96, 19, '_menu_item_target', '_blank'),
(97, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(98, 19, '_menu_item_xfn', ''),
(99, 19, '_menu_item_url', '/feed'),
(100, 20, '_menu_item_type', 'custom'),
(101, 20, '_menu_item_menu_item_parent', '581'),
(102, 20, '_menu_item_object_id', '20'),
(103, 20, '_menu_item_object', 'custom'),
(104, 20, '_menu_item_target', ''),
(105, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(106, 20, '_menu_item_xfn', ''),
(107, 20, '_menu_item_url', 'http://demo.studiopress.com/whitespace/author/admin/'),
(108, 21, '_menu_item_type', 'taxonomy'),
(109, 21, '_menu_item_menu_item_parent', '581'),
(110, 21, '_menu_item_object_id', '2'),
(111, 21, '_menu_item_object', 'category'),
(112, 21, '_menu_item_target', ''),
(113, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(114, 21, '_menu_item_xfn', ''),
(115, 21, '_menu_item_url', ''),
(116, 22, '_menu_item_type', 'custom'),
(117, 22, '_menu_item_menu_item_parent', '0'),
(118, 22, '_menu_item_object_id', '22'),
(119, 22, '_menu_item_object', 'custom'),
(120, 22, '_menu_item_target', ''),
(121, 22, '_menu_item_classes', 'a:1:{i:0;s:9:"highlight";}'),
(122, 22, '_menu_item_xfn', ''),
(123, 22, '_menu_item_url', 'http://my.studiopress.com/themes/whitespace/'),
(127, 31, '_wp_page_template', 'default'),
(128, 31, '_edit_last', '1'),
(129, 31, 'ninja_forms_form', '0'),
(130, 83, '_edit_last', '1'),
(131, 83, '_wp_page_template', 'default'),
(132, 83, 'ninja_forms_form', '0'),
(133, 181, '_edit_last', '1'),
(134, 181, '_wp_page_template', 'default'),
(135, 181, '_genesis_layout', 'full-width-content'),
(136, 181, 'ninja_forms_form', '0'),
(137, 182, '_edit_last', '1'),
(138, 182, '_wp_old_slug', 'sample-post-with-a-blockquote'),
(139, 182, 'ninja_forms_form', '0'),
(140, 493, '_edit_last', '1'),
(141, 493, '_wp_old_slug', 'sample-post-with-an-ordered-list'),
(142, 493, 'ninja_forms_form', '0'),
(143, 494, '_edit_last', '1'),
(144, 494, '_wp_old_slug', 'sample-post-with-an-unordered-list'),
(145, 494, 'ninja_forms_form', '0'),
(146, 495, '_edit_last', '1'),
(147, 495, '_wp_old_slug', 'sample-post-with-image-centered'),
(148, 495, 'ninja_forms_form', '0'),
(149, 496, '_edit_last', '1'),
(150, 496, '_wp_old_slug', 'sample-post-with-image-aligned-right'),
(151, 496, 'ninja_forms_form', '0'),
(152, 497, '_edit_last', '1'),
(153, 497, '_wp_old_slug', 'sample-post-with-image-aligned-left'),
(154, 497, 'ninja_forms_form', '0'),
(155, 498, '_edit_last', '1'),
(156, 498, '_wp_old_slug', 'sample-post-with-threaded-comments'),
(157, 498, 'ninja_forms_form', '0'),
(158, 498, '_wp_format_url', ''),
(159, 498, '_wp_format_quote', ''),
(160, 498, '_format_audio_embed', ''),
(161, 498, '_wp_format_image', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(162, 498, '_format_video_embed', ''),
(163, 498, '_format_quote_source_name', ''),
(164, 498, '_format_link_url', ''),
(165, 498, '_format_url', ''),
(166, 498, '_format_quote_source_url', ''),
(167, 498, '_format_image', ''),
(168, 539, '_edit_last', '1'),
(169, 539, '_wp_old_slug', 'sample-post-with-headlines'),
(170, 539, 'ninja_forms_form', '0'),
(171, 540, '_edit_last', '1'),
(172, 540, '_wp_page_template', 'default'),
(173, 540, 'ninja_forms_form', '0'),
(174, 546, '_wp_page_template', 'page_landing.php'),
(175, 546, 'ninja_forms_form', '0'),
(183, 576, '_menu_item_type', 'post_type'),
(184, 576, '_menu_item_menu_item_parent', '581'),
(185, 576, '_menu_item_object_id', '181'),
(186, 576, '_menu_item_object', 'page'),
(187, 576, '_menu_item_target', ''),
(188, 576, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(189, 576, '_menu_item_xfn', ''),
(190, 576, '_menu_item_url', ''),
(199, 578, '_menu_item_type', 'post_type'),
(200, 578, '_menu_item_menu_item_parent', '0'),
(201, 578, '_menu_item_object_id', '83'),
(202, 578, '_menu_item_object', 'page'),
(203, 578, '_menu_item_target', ''),
(204, 578, '_menu_item_classes', 'a:1:{i:0;s:4:"last";}'),
(205, 578, '_menu_item_xfn', ''),
(206, 578, '_menu_item_url', ''),
(207, 579, '_menu_item_type', 'post_type'),
(208, 579, '_menu_item_menu_item_parent', '0'),
(209, 579, '_menu_item_object_id', '540'),
(210, 579, '_menu_item_object', 'page'),
(211, 579, '_menu_item_target', ''),
(212, 579, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(213, 579, '_menu_item_xfn', ''),
(214, 579, '_menu_item_url', ''),
(215, 580, '_menu_item_type', 'post_type'),
(216, 580, '_menu_item_menu_item_parent', '581'),
(217, 580, '_menu_item_object_id', '546'),
(218, 580, '_menu_item_object', 'page'),
(219, 580, '_menu_item_target', ''),
(220, 580, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(221, 580, '_menu_item_xfn', ''),
(222, 580, '_menu_item_url', ''),
(223, 581, '_menu_item_type', 'post_type'),
(224, 581, '_menu_item_menu_item_parent', '0'),
(225, 581, '_menu_item_object_id', '31'),
(226, 581, '_menu_item_object', 'page'),
(227, 581, '_menu_item_target', ''),
(228, 581, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(229, 581, '_menu_item_xfn', ''),
(230, 581, '_menu_item_url', ''),
(281, 589, '_menu_item_type', 'custom'),
(282, 589, '_menu_item_menu_item_parent', '0'),
(283, 589, '_menu_item_object_id', '589'),
(284, 589, '_menu_item_object', 'custom'),
(285, 589, '_menu_item_target', '_blank'),
(286, 589, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(287, 589, '_menu_item_xfn', ''),
(288, 589, '_menu_item_url', 'http://www.twitter.com/studiopress'),
(289, 590, '_menu_item_type', 'custom'),
(290, 590, '_menu_item_menu_item_parent', '0'),
(291, 590, '_menu_item_object_id', '590'),
(292, 590, '_menu_item_object', 'custom'),
(293, 590, '_menu_item_target', '_blank'),
(294, 590, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(295, 590, '_menu_item_xfn', ''),
(296, 590, '_menu_item_url', 'http://facebook.com/studiopress'),
(297, 591, '_menu_item_type', 'custom'),
(298, 591, '_menu_item_menu_item_parent', '0'),
(299, 591, '_menu_item_object_id', '591'),
(300, 591, '_menu_item_object', 'custom'),
(301, 591, '_menu_item_target', '_blank'),
(302, 591, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(303, 591, '_menu_item_xfn', ''),
(304, 591, '_menu_item_url', 'https://www.linkedin.com/company/studiopress'),
(305, 592, '_menu_item_type', 'custom'),
(306, 592, '_menu_item_menu_item_parent', '0'),
(307, 592, '_menu_item_object_id', '592'),
(308, 592, '_menu_item_object', 'custom'),
(309, 592, '_menu_item_target', '_blank'),
(310, 592, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(311, 592, '_menu_item_xfn', ''),
(312, 592, '_menu_item_url', 'https://plus.google.com/111506874011582533618/about'),
(313, 593, '_menu_item_type', 'custom'),
(314, 593, '_menu_item_menu_item_parent', '0'),
(315, 593, '_menu_item_object_id', '593'),
(316, 593, '_menu_item_object', 'custom'),
(317, 593, '_menu_item_target', '_blank'),
(318, 593, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(319, 593, '_menu_item_xfn', ''),
(320, 593, '_menu_item_url', '/feed'),
(321, 594, '_menu_item_type', 'custom'),
(322, 594, '_menu_item_menu_item_parent', '602'),
(323, 594, '_menu_item_object_id', '594'),
(324, 594, '_menu_item_object', 'custom'),
(325, 594, '_menu_item_target', ''),
(326, 594, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(327, 594, '_menu_item_xfn', ''),
(328, 594, '_menu_item_url', 'http://demo.studiopress.com/whitespace/author/admin/'),
(329, 595, '_menu_item_type', 'taxonomy'),
(330, 595, '_menu_item_menu_item_parent', '602'),
(331, 595, '_menu_item_object_id', '2'),
(332, 595, '_menu_item_object', 'category'),
(333, 595, '_menu_item_target', ''),
(334, 595, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(335, 595, '_menu_item_xfn', ''),
(336, 595, '_menu_item_url', ''),
(337, 596, '_menu_item_type', 'custom'),
(338, 596, '_menu_item_menu_item_parent', '0'),
(339, 596, '_menu_item_object_id', '596'),
(340, 596, '_menu_item_object', 'custom'),
(341, 596, '_menu_item_target', ''),
(342, 596, '_menu_item_classes', 'a:1:{i:0;s:9:"highlight";}'),
(343, 596, '_menu_item_xfn', ''),
(344, 596, '_menu_item_url', 'http://my.studiopress.com/themes/whitespace/'),
(348, 31, '_wp_page_template', 'default'),
(349, 31, '_edit_last', '2'),
(350, 31, 'ninja_forms_form', '0'),
(351, 83, '_edit_last', '1'),
(352, 83, '_wp_page_template', 'default'),
(353, 83, 'ninja_forms_form', '0'),
(354, 181, '_edit_last', '2'),
(355, 181, '_wp_page_template', 'default'),
(356, 181, '_genesis_layout', 'full-width-content'),
(357, 181, 'ninja_forms_form', '0'),
(358, 182, '_edit_last', '2'),
(359, 182, '_wp_old_slug', 'sample-post-with-a-blockquote'),
(360, 182, 'ninja_forms_form', '0'),
(361, 493, '_edit_last', '2'),
(362, 493, '_wp_old_slug', 'sample-post-with-an-ordered-list'),
(363, 493, 'ninja_forms_form', '0'),
(364, 494, '_edit_last', '2'),
(365, 494, '_wp_old_slug', 'sample-post-with-an-unordered-list'),
(366, 494, 'ninja_forms_form', '0'),
(367, 495, '_edit_last', '2'),
(368, 495, '_wp_old_slug', 'sample-post-with-image-centered'),
(369, 495, 'ninja_forms_form', '0'),
(370, 496, '_edit_last', '2'),
(371, 496, '_wp_old_slug', 'sample-post-with-image-aligned-right'),
(372, 496, 'ninja_forms_form', '0'),
(373, 497, '_edit_last', '2'),
(374, 497, '_wp_old_slug', 'sample-post-with-image-aligned-left'),
(375, 497, 'ninja_forms_form', '0'),
(376, 498, '_edit_last', '3'),
(377, 498, '_wp_old_slug', 'sample-post-with-threaded-comments'),
(378, 498, 'ninja_forms_form', '0'),
(379, 498, '_wp_format_url', ''),
(380, 498, '_wp_format_quote', ''),
(381, 498, '_format_audio_embed', ''),
(382, 498, '_wp_format_image', ''),
(383, 498, '_format_video_embed', ''),
(384, 498, '_format_quote_source_name', ''),
(385, 498, '_format_link_url', ''),
(386, 498, '_format_url', ''),
(387, 498, '_format_quote_source_url', ''),
(388, 498, '_format_image', ''),
(389, 539, '_edit_last', '2'),
(390, 539, '_wp_old_slug', 'sample-post-with-headlines'),
(391, 539, 'ninja_forms_form', '0'),
(392, 540, '_edit_last', '3'),
(393, 540, '_wp_page_template', 'default'),
(394, 540, 'ninja_forms_form', '0'),
(395, 546, '_wp_page_template', 'page_landing.php'),
(396, 546, 'ninja_forms_form', '0'),
(404, 597, '_menu_item_type', 'post_type'),
(405, 597, '_menu_item_menu_item_parent', '602'),
(406, 597, '_menu_item_object_id', '181'),
(407, 597, '_menu_item_object', 'page'),
(408, 597, '_menu_item_target', ''),
(409, 597, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(410, 597, '_menu_item_xfn', ''),
(411, 597, '_menu_item_url', ''),
(420, 599, '_menu_item_type', 'post_type'),
(421, 599, '_menu_item_menu_item_parent', '0'),
(422, 599, '_menu_item_object_id', '83'),
(423, 599, '_menu_item_object', 'page'),
(424, 599, '_menu_item_target', ''),
(425, 599, '_menu_item_classes', 'a:1:{i:0;s:4:"last";}'),
(426, 599, '_menu_item_xfn', ''),
(427, 599, '_menu_item_url', ''),
(428, 600, '_menu_item_type', 'post_type'),
(429, 600, '_menu_item_menu_item_parent', '0'),
(430, 600, '_menu_item_object_id', '540'),
(431, 600, '_menu_item_object', 'page'),
(432, 600, '_menu_item_target', ''),
(433, 600, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(434, 600, '_menu_item_xfn', ''),
(435, 600, '_menu_item_url', ''),
(436, 601, '_menu_item_type', 'post_type'),
(437, 601, '_menu_item_menu_item_parent', '602'),
(438, 601, '_menu_item_object_id', '546'),
(439, 601, '_menu_item_object', 'page'),
(440, 601, '_menu_item_target', ''),
(441, 601, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(442, 601, '_menu_item_xfn', ''),
(443, 601, '_menu_item_url', ''),
(444, 602, '_menu_item_type', 'post_type') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(445, 602, '_menu_item_menu_item_parent', '0'),
(446, 602, '_menu_item_object_id', '31'),
(447, 602, '_menu_item_object', 'page'),
(448, 602, '_menu_item_target', ''),
(449, 602, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(450, 602, '_menu_item_xfn', ''),
(451, 602, '_menu_item_url', ''),
(452, 603, 'success', ''),
(453, 603, 'from_header', 'WordPress <wordpress@nighthawktires.yourdevelopment.ws>'),
(454, 603, 'to_header', 'demo-comments@studiopress.com'),
(455, 603, 'transport_uri', 'smtp:none:none://localhost:25'),
(456, 603, 'original_to', 'demo-comments@studiopress.com'),
(457, 603, 'original_subject', '[Nighthawk Tires] Notice of Password Change'),
(458, 603, 'original_message', 'Hi admin,\n\nThis notice confirms that your password was changed on Nighthawk Tires.\n\nIf you did not change your password, please contact the Site Administrator at\njpeterson@develare.com\n\nThis email has been sent to demo-comments@studiopress.com\n\nRegards,\nAll at Nighthawk Tires\nhttp://nighthawktires.stagingcloud.us'),
(459, 603, 'original_headers', ''),
(460, 603, 'session_transcript', 'smtp:none:none://localhost:25\n\n'),
(461, 604, 'success', ''),
(462, 604, 'from_header', 'WordPress <wordpress@nighthawktires.yourdevelopment.ws>'),
(463, 604, 'to_header', 'support+demo@copyblogger.com'),
(464, 604, 'transport_uri', 'smtp:none:none://localhost:25'),
(465, 604, 'original_to', 'support+demo@copyblogger.com'),
(466, 604, 'original_subject', '[Nighthawk Tires] Notice of Password Change'),
(467, 604, 'original_message', 'Hi lmancke,\n\nThis notice confirms that your password was changed on Nighthawk Tires.\n\nIf you did not change your password, please contact the Site Administrator at\njpeterson@develare.com\n\nThis email has been sent to support+demo@copyblogger.com\n\nRegards,\nAll at Nighthawk Tires\nhttp://nighthawktires.stagingcloud.us'),
(468, 604, 'original_headers', ''),
(469, 604, 'session_transcript', 'smtp:none:none://localhost:25\n\n'),
(470, 605, '_edit_lock', '1459171394:1'),
(471, 606, '_wp_attached_file', '2016/02/Logo.png'),
(472, 606, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:425;s:6:"height";i:93;s:4:"file";s:16:"2016/02/Logo.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"Logo-150x93.png";s:5:"width";i:150;s:6:"height";i:93;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:15:"Logo-300x66.png";s:5:"width";i:300;s:6:"height";i:66;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(473, 607, '_wp_attached_file', '2016/02/Logo-1.png'),
(474, 607, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:425;s:6:"height";i:93;s:4:"file";s:18:"2016/02/Logo-1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"Logo-1-150x93.png";s:5:"width";i:150;s:6:"height";i:93;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:17:"Logo-1-300x66.png";s:5:"width";i:300;s:6:"height";i:66;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(475, 608, '_wp_attached_file', '2016/02/cropped-Logo-1.png'),
(476, 608, '_wp_attachment_context', 'custom-header'),
(477, 608, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:78;s:4:"file";s:26:"2016/02/cropped-Logo-1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"cropped-Logo-1-150x78.png";s:5:"width";i:150;s:6:"height";i:78;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"cropped-Logo-1-300x65.png";s:5:"width";i:300;s:6:"height";i:65;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(480, 605, '_edit_last', '1'),
(481, 605, '_wp_page_template', 'default'),
(482, 610, '_wp_attached_file', '2016/02/Banner_1.jpg'),
(483, 610, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1398;s:6:"height";i:728;s:4:"file";s:20:"2016/02/Banner_1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Banner_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"Banner_1-300x156.jpg";s:5:"width";i:300;s:6:"height";i:156;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"Banner_1-768x400.jpg";s:5:"width";i:768;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"Banner_1-1024x533.jpg";s:5:"width";i:1024;s:6:"height";i:533;s:9:"mime-type";s:10:"image/jpeg";}s:13:"featured-page";a:4:{s:4:"file";s:21:"Banner_1-1140x400.jpg";s:5:"width";i:1140;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(484, 611, '_wp_attached_file', '2016/02/Banner_2.jpg'),
(485, 611, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1403;s:6:"height";i:663;s:4:"file";s:20:"2016/02/Banner_2.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Banner_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"Banner_2-300x142.jpg";s:5:"width";i:300;s:6:"height";i:142;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"Banner_2-768x363.jpg";s:5:"width";i:768;s:6:"height";i:363;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"Banner_2-1024x484.jpg";s:5:"width";i:1024;s:6:"height";i:484;s:9:"mime-type";s:10:"image/jpeg";}s:13:"featured-page";a:4:{s:4:"file";s:21:"Banner_2-1140x400.jpg";s:5:"width";i:1140;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(486, 612, '_menu_item_type', 'post_type'),
(487, 612, '_menu_item_menu_item_parent', '0'),
(488, 612, '_menu_item_object_id', '605'),
(489, 612, '_menu_item_object', 'page'),
(490, 612, '_menu_item_target', ''),
(491, 612, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(492, 612, '_menu_item_xfn', ''),
(493, 612, '_menu_item_url', ''),
(558, 181, '_edit_lock', '1456305084:1'),
(559, 620, '_wp_attached_file', '2016/02/Banner_2-1.jpg'),
(560, 620, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1403;s:6:"height";i:663;s:4:"file";s:22:"2016/02/Banner_2-1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Banner_2-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"Banner_2-1-300x142.jpg";s:5:"width";i:300;s:6:"height";i:142;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"Banner_2-1-768x363.jpg";s:5:"width";i:768;s:6:"height";i:363;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"Banner_2-1-1024x484.jpg";s:5:"width";i:1024;s:6:"height";i:484;s:9:"mime-type";s:10:"image/jpeg";}s:13:"featured-page";a:4:{s:4:"file";s:23:"Banner_2-1-1140x400.jpg";s:5:"width";i:1140;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(561, 621, '_wp_attached_file', '2016/02/Dure-Core-Rubber-Tracks.png'),
(562, 621, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:35:"2016/02/Dure-Core-Rubber-Tracks.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(563, 622, '_wp_attached_file', '2016/02/Dure-Flex-Solid-Tires.png'),
(564, 622, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:33:"2016/02/Dure-Flex-Solid-Tires.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(565, 623, '_wp_attached_file', '2016/02/logo_bottom.png'),
(566, 623, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:309;s:6:"height";i:301;s:4:"file";s:23:"2016/02/logo_bottom.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"logo_bottom-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"logo_bottom-300x292.png";s:5:"width";i:300;s:6:"height";i:292;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(567, 624, '_wp_attached_file', '2016/02/Solid-Warranty.jpg'),
(568, 624, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:359;s:6:"height";i:447;s:4:"file";s:26:"2016/02/Solid-Warranty.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"Solid-Warranty-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"Solid-Warranty-241x300.jpg";s:5:"width";i:241;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:13:"featured-page";a:4:{s:4:"file";s:26:"Solid-Warranty-359x400.jpg";s:5:"width";i:359;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(569, 625, '_wp_attached_file', '2016/02/Best-Value_.jpg'),
(570, 625, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:359;s:6:"height";i:447;s:4:"file";s:23:"2016/02/Best-Value_.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Best-Value_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"Best-Value_-241x300.jpg";s:5:"width";i:241;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:13:"featured-page";a:4:{s:4:"file";s:23:"Best-Value_-359x400.jpg";s:5:"width";i:359;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(571, 626, '_wp_attached_file', '2016/02/Superior-Performance.jpg'),
(572, 626, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:359;s:6:"height";i:447;s:4:"file";s:32:"2016/02/Superior-Performance.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"Superior-Performance-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"Superior-Performance-241x300.jpg";s:5:"width";i:241;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:13:"featured-page";a:4:{s:4:"file";s:32:"Superior-Performance-359x400.jpg";s:5:"width";i:359;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(618, 632, '_edit_last', '1'),
(619, 632, '_wp_page_template', 'default'),
(620, 632, '_edit_lock', '1458937681:1'),
(621, 635, '_edit_lock', '1459175189:1'),
(622, 635, '_edit_last', '1'),
(623, 635, '_wp_page_template', 'default'),
(624, 637, '_edit_lock', '1456401678:1'),
(625, 637, '_edit_last', '1'),
(626, 637, '_wp_page_template', 'default'),
(627, 639, '_edit_lock', '1456401701:1'),
(628, 639, '_edit_last', '1'),
(629, 639, '_wp_page_template', 'default'),
(630, 641, '_edit_lock', '1458938695:1'),
(631, 641, '_edit_last', '1'),
(632, 641, '_wp_page_template', 'default'),
(633, 644, '_edit_lock', '1456401891:1'),
(634, 644, '_edit_last', '1'),
(635, 644, '_wp_page_template', 'default'),
(636, 646, '_edit_last', '1'),
(637, 646, '_wp_page_template', 'page_blog.php'),
(638, 646, '_edit_lock', '1456402840:1'),
(639, 648, '_menu_item_type', 'post_type'),
(640, 648, '_menu_item_menu_item_parent', '0'),
(641, 648, '_menu_item_object_id', '646'),
(642, 648, '_menu_item_object', 'page'),
(643, 648, '_menu_item_target', ''),
(644, 648, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(645, 648, '_menu_item_xfn', ''),
(646, 648, '_menu_item_url', ''),
(657, 650, '_menu_item_type', 'post_type'),
(658, 650, '_menu_item_menu_item_parent', '0'),
(659, 650, '_menu_item_object_id', '641'),
(660, 650, '_menu_item_object', 'page'),
(661, 650, '_menu_item_target', ''),
(662, 650, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(663, 650, '_menu_item_xfn', ''),
(664, 650, '_menu_item_url', ''),
(702, 655, '_edit_lock', '1456402735:1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(703, 655, '_edit_last', '1'),
(704, 655, '_wp_page_template', 'default'),
(705, 657, '_edit_lock', '1456402768:1'),
(706, 657, '_edit_last', '1'),
(707, 657, '_wp_page_template', 'default'),
(708, 659, '_edit_lock', '1456402818:1'),
(709, 659, '_edit_last', '1'),
(710, 659, '_wp_page_template', 'default'),
(711, 661, '_edit_lock', '1456405146:1'),
(712, 661, '_edit_last', '1'),
(713, 661, '_wp_page_template', 'default'),
(714, 663, '_menu_item_type', 'post_type'),
(715, 663, '_menu_item_menu_item_parent', '0'),
(716, 663, '_menu_item_object_id', '661'),
(717, 663, '_menu_item_object', 'page'),
(718, 663, '_menu_item_target', ''),
(719, 663, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(720, 663, '_menu_item_xfn', ''),
(721, 663, '_menu_item_url', ''),
(723, 664, '_menu_item_type', 'post_type'),
(724, 664, '_menu_item_menu_item_parent', '0'),
(725, 664, '_menu_item_object_id', '659'),
(726, 664, '_menu_item_object', 'page'),
(727, 664, '_menu_item_target', ''),
(728, 664, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(729, 664, '_menu_item_xfn', ''),
(730, 664, '_menu_item_url', ''),
(732, 665, '_menu_item_type', 'post_type'),
(733, 665, '_menu_item_menu_item_parent', '0'),
(734, 665, '_menu_item_object_id', '657'),
(735, 665, '_menu_item_object', 'page'),
(736, 665, '_menu_item_target', ''),
(737, 665, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(738, 665, '_menu_item_xfn', ''),
(739, 665, '_menu_item_url', ''),
(741, 666, '_menu_item_type', 'post_type'),
(742, 666, '_menu_item_menu_item_parent', '0'),
(743, 666, '_menu_item_object_id', '655'),
(744, 666, '_menu_item_object', 'page'),
(745, 666, '_menu_item_target', ''),
(746, 666, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(747, 666, '_menu_item_xfn', ''),
(748, 666, '_menu_item_url', ''),
(750, 667, '_edit_lock', '1456750629:1'),
(751, 667, '_edit_last', '1'),
(752, 667, '_wp_page_template', 'default'),
(753, 2, '_wp_trash_meta_status', 'publish'),
(754, 2, '_wp_trash_meta_time', '1456750830'),
(755, 31, '_wp_trash_meta_status', 'publish'),
(756, 31, '_wp_trash_meta_time', '1456750838'),
(757, 671, '_menu_item_type', 'post_type'),
(758, 671, '_menu_item_menu_item_parent', '0'),
(759, 671, '_menu_item_object_id', '667'),
(760, 671, '_menu_item_object', 'page'),
(761, 671, '_menu_item_target', ''),
(762, 671, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(763, 671, '_menu_item_xfn', ''),
(764, 671, '_menu_item_url', ''),
(766, 673, '_wp_attached_file', '2016/03/nighthawktires-logo.png'),
(767, 673, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:76;s:4:"file";s:31:"2016/03/nighthawktires-logo.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"nighthawktires-logo-150x76.png";s:5:"width";i:150;s:6:"height";i:76;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:30:"nighthawktires-logo-300x63.png";s:5:"width";i:300;s:6:"height";i:63;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(770, 674, '_wp_attached_file', '2016/03/nighthawktires-logo-new.png'),
(771, 674, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:76;s:4:"file";s:35:"2016/03/nighthawktires-logo-new.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"nighthawktires-logo-new-150x76.png";s:5:"width";i:150;s:6:"height";i:76;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:34:"nighthawktires-logo-new-300x63.png";s:5:"width";i:300;s:6:"height";i:63;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(797, 680, '_wp_attached_file', '2016/03/nighthawktires-logo-new-1.png'),
(798, 680, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:76;s:4:"file";s:37:"2016/03/nighthawktires-logo-new-1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"nighthawktires-logo-new-1-150x76.png";s:5:"width";i:150;s:6:"height";i:76;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:36:"nighthawktires-logo-new-1-300x63.png";s:5:"width";i:300;s:6:"height";i:63;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(816, 686, '_wp_attached_file', '2016/03/Banner_1-new.jpg'),
(817, 686, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1398;s:6:"height";i:728;s:4:"file";s:24:"2016/03/Banner_1-new.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"Banner_1-new-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"Banner_1-new-300x156.jpg";s:5:"width";i:300;s:6:"height";i:156;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"Banner_1-new-768x400.jpg";s:5:"width";i:768;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"Banner_1-new-1024x533.jpg";s:5:"width";i:1024;s:6:"height";i:533;s:9:"mime-type";s:10:"image/jpeg";}s:13:"featured-page";a:4:{s:4:"file";s:25:"Banner_1-new-1140x400.jpg";s:5:"width";i:1140;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(818, 687, '_wp_attached_file', '2016/03/Banner_2-new.jpg'),
(819, 687, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1403;s:6:"height";i:663;s:4:"file";s:24:"2016/03/Banner_2-new.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"Banner_2-new-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"Banner_2-new-300x142.jpg";s:5:"width";i:300;s:6:"height";i:142;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"Banner_2-new-768x363.jpg";s:5:"width";i:768;s:6:"height";i:363;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"Banner_2-new-1024x484.jpg";s:5:"width";i:1024;s:6:"height";i:484;s:9:"mime-type";s:10:"image/jpeg";}s:13:"featured-page";a:4:{s:4:"file";s:25:"Banner_2-new-1140x400.jpg";s:5:"width";i:1140;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(820, 546, '_edit_lock', '1457608886:1'),
(821, 546, '_edit_last', '1'),
(823, 693, '_edit_lock', '1458059923:1'),
(824, 693, '_edit_last', '1'),
(827, 693, '_visibility', 'visible'),
(828, 693, '_stock_status', 'instock'),
(829, 693, 'total_sales', '0'),
(830, 693, '_downloadable', 'no'),
(831, 693, '_virtual', 'no'),
(832, 693, '_tax_status', 'taxable'),
(833, 693, '_tax_class', ''),
(834, 693, '_purchase_note', ''),
(835, 693, '_featured', 'no'),
(836, 693, '_weight', ''),
(837, 693, '_length', ''),
(838, 693, '_width', ''),
(839, 693, '_height', ''),
(840, 693, '_sku', ''),
(841, 693, '_product_attributes', 'a:0:{}'),
(842, 693, '_regular_price', ''),
(843, 693, '_sale_price', ''),
(844, 693, '_sale_price_dates_from', ''),
(845, 693, '_sale_price_dates_to', ''),
(846, 693, '_price', ''),
(847, 693, '_sold_individually', ''),
(848, 693, '_manage_stock', 'no'),
(849, 693, '_backorders', 'no'),
(850, 693, '_stock', ''),
(851, 693, '_upsell_ids', 'a:0:{}'),
(852, 693, '_crosssell_ids', 'a:0:{}'),
(853, 693, '_product_version', '2.5.5'),
(854, 693, '_product_image_gallery', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(855, 693, '_wc_rating_count', 'a:0:{}'),
(856, 693, '_wc_review_count', '0'),
(857, 693, '_wc_average_rating', '0'),
(869, 702, 'success', ''),
(870, 702, 'from_header', 'WordPress <wordpress@nighthawktires.yourdevelopment.ws>'),
(871, 702, 'to_header', 'jpeterson@develare.com'),
(872, 702, 'transport_uri', 'smtp:none:none://localhost:25'),
(873, 702, 'original_to', 'jpeterson@develare.com'),
(874, 702, 'original_subject', '[Nighthawk Tires] Notice of Password Change'),
(875, 702, 'original_message', 'Hi nighthawktiresadmin,\n\nThis notice confirms that your password was changed on Nighthawk Tires.\n\nIf you did not change your password, please contact the Site Administrator at\njpeterson@develare.com\n\nThis email has been sent to jpeterson@develare.com\n\nRegards,\nAll at Nighthawk Tires\nhttp://nighthawktires.stagingcloud.us'),
(876, 702, 'original_headers', ''),
(877, 702, 'session_transcript', 'smtp:none:none://localhost:25\n\n'),
(878, 703, 'success', ''),
(879, 703, 'from_header', 'WordPress <wordpress@nighthawktires.yourdevelopment.ws>'),
(880, 703, 'to_header', 'jpeterson@develare.com'),
(881, 703, 'transport_uri', 'smtp:none:none://localhost:25'),
(882, 703, 'original_to', 'jpeterson@develare.com'),
(883, 703, 'original_subject', '[Nighthawk Tires] Password Reset'),
(884, 703, 'original_message', 'Someone has requested a password reset for the following account:\r\n\r\nhttp://nighthawktires.stagingcloud.us/\r\n\r\nUsername: nighthawktiresadmin\r\n\r\nIf this was a mistake, just ignore this email and nothing will happen.\r\n\r\nTo reset your password, visit the following address:\r\n\r\n<http://nighthawktires.stagingcloud.us/wp-login.php?action=rp&key=Y9wQ7DrhuufMkbK6yNae&login=nighthawktiresadmin>\r\n'),
(885, 703, 'original_headers', ''),
(886, 703, 'session_transcript', 'smtp:none:none://localhost:25\n\n'),
(899, 708, '_menu_item_type', 'post_type'),
(900, 708, '_menu_item_menu_item_parent', '0'),
(901, 708, '_menu_item_object_id', '644'),
(902, 708, '_menu_item_object', 'page'),
(903, 708, '_menu_item_target', ''),
(904, 708, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(905, 708, '_menu_item_xfn', ''),
(906, 708, '_menu_item_url', ''),
(907, 708, '_menu_item_orphaned', '1458183427'),
(908, 709, '_menu_item_type', 'post_type'),
(909, 709, '_menu_item_menu_item_parent', '0'),
(910, 709, '_menu_item_object_id', '644'),
(911, 709, '_menu_item_object', 'page'),
(912, 709, '_menu_item_target', ''),
(913, 709, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(914, 709, '_menu_item_xfn', ''),
(915, 709, '_menu_item_url', ''),
(916, 709, '_menu_item_orphaned', '1458183449'),
(917, 710, '_menu_item_type', 'post_type'),
(918, 710, '_menu_item_menu_item_parent', '0'),
(919, 710, '_menu_item_object_id', '83'),
(920, 710, '_menu_item_object', 'page'),
(921, 710, '_menu_item_target', ''),
(922, 710, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(923, 710, '_menu_item_xfn', ''),
(924, 710, '_menu_item_url', ''),
(926, 644, '_wp_trash_meta_status', 'publish'),
(927, 644, '_wp_trash_meta_time', '1458183497'),
(928, 83, '_edit_lock', '1458938665:1'),
(929, 639, '_wp_trash_meta_status', 'publish'),
(930, 639, '_wp_trash_meta_time', '1458184491'),
(931, 718, '_edit_last', '1'),
(932, 718, '_wp_page_template', 'default'),
(933, 718, '_edit_lock', '1458199368:1'),
(943, 721, '_wp_attached_file', '2016/03/nighthawktires-logo-final-2-1.png'),
(944, 721, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:389;s:6:"height";i:76;s:4:"file";s:41:"2016/03/nighthawktires-logo-final-2-1.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"nighthawktires-logo-final-2-1-150x76.png";s:5:"width";i:150;s:6:"height";i:76;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:40:"nighthawktires-logo-final-2-1-300x59.png";s:5:"width";i:300;s:6:"height";i:59;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:40:"nighthawktires-logo-final-2-1-180x76.png";s:5:"width";i:180;s:6:"height";i:76;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:40:"nighthawktires-logo-final-2-1-300x76.png";s:5:"width";i:300;s:6:"height";i:76;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(945, 722, '_wp_attached_file', '2016/03/cropped-nighthawktires-logo-final-2-1.png'),
(946, 722, '_wp_attachment_context', 'custom-header'),
(947, 722, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:389;s:6:"height";i:76;s:4:"file";s:49:"2016/03/cropped-nighthawktires-logo-final-2-1.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"cropped-nighthawktires-logo-final-2-1-150x76.png";s:5:"width";i:150;s:6:"height";i:76;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:48:"cropped-nighthawktires-logo-final-2-1-300x59.png";s:5:"width";i:300;s:6:"height";i:59;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:48:"cropped-nighthawktires-logo-final-2-1-180x76.png";s:5:"width";i:180;s:6:"height";i:76;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:48:"cropped-nighthawktires-logo-final-2-1-300x76.png";s:5:"width";i:300;s:6:"height";i:76;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(948, 722, '_wp_attachment_custom_header_last_used_nighthawktires2016', '1458202405'),
(949, 722, '_wp_attachment_is_custom_header', 'nighthawktires2016'),
(950, 724, '_edit_lock', '1458846556:1'),
(951, 724, '_edit_last', '1'),
(952, 724, '_wp_page_template', 'default'),
(953, 726, '_edit_lock', '1458936010:1'),
(954, 726, '_edit_last', '1'),
(955, 726, '_wp_page_template', 'default'),
(956, 728, '_menu_item_type', 'post_type'),
(957, 728, '_menu_item_menu_item_parent', '0'),
(958, 728, '_menu_item_object_id', '724'),
(959, 728, '_menu_item_object', 'page'),
(960, 728, '_menu_item_target', ''),
(961, 728, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(962, 728, '_menu_item_xfn', ''),
(963, 728, '_menu_item_url', ''),
(965, 730, '_edit_lock', '1458972342:1'),
(966, 730, '_edit_last', '1'),
(967, 730, 'wpsm_accordion_shortcode_data', 's:3162:"a:6:{i:0;a:4:{s:15:"accordion_title";s:20:"All-Purpose 33x12-16";s:20:"accordion_title_icon";s:16:"fa-chevron-right";s:18:"enable_single_icon";s:2:"no";s:14:"accordion_desc";s:348:"[table th="0"]\r\nTread Pattern,All-Purpose\r\nSize,33x12-16\r\nTread Depth (inch),2.28\r\nTread Depth at Safety Line (inch),3.00\r\nDiameter (inch),32.3\r\nWidth (inch),11.30\r\nRubber Thickness (inch),8.15\r\nWeight (lbs),275.0\r\nMax Loads Capacity (lbs),8270\r\nWheel Width (inch),8.0\r\nWheel Diameter (inch),16\r\nWheel Backspacing (inch),5.7\r\nBolt Holes,8\r\n[/table]";}i:1;a:4:{s:15:"accordion_title";s:20:"All-Purpose 33x12-20";s:20:"accordion_title_icon";s:16:"fa-chevron-right";s:18:"enable_single_icon";s:2:"no";s:14:"accordion_desc";s:348:"[table th="0"]\r\nTread Pattern,All-Purpose\r\nSize,33x12-20\r\nTread Depth (inch),1.57\r\nTread Depth at Safety Line (inch),2.28\r\nDiameter (inch),32.9\r\nWidth (inch),10.71\r\nRubber Thickness (inch),6.43\r\nWeight (lbs),288.9\r\nMax Loads Capacity (lbs),7700\r\nWheel Width (inch),7.5\r\nWheel Diameter (inch),20\r\nWheel Backspacing (inch),4.6\r\nBolt Holes,8\r\n[/table]";}i:2;a:4:{s:15:"accordion_title";s:19:"All-Purpose 33x9-16";s:20:"accordion_title_icon";s:16:"fa-chevron-right";s:18:"enable_single_icon";s:2:"no";s:14:"accordion_desc";s:346:"[table th="0"]\r\nTread Pattern,All-Purpose\r\nSize,33x9-16\r\nTread Depth (inch),2.38\r\nTread Depth at Safety Line (inch),2.91\r\nDiameter (inch),33.5\r\nWidth (inch),9.21\r\nRubber Thickness (inch),8.73\r\nWeight (lbs),249.0\r\nMax Loads Capacity (lbs),6600\r\nWheel Width (inch),6.0\r\nWheel Diameter (inch),16\r\nWheel Backspacing (inch),3.9\r\nBolt Holes,8\r\n[/table]";}i:3;a:4:{s:15:"accordion_title";s:20:"All-Terrain 33x12-18";s:20:"accordion_title_icon";s:16:"fa-chevron-right";s:18:"enable_single_icon";s:2:"no";s:14:"accordion_desc";s:349:"[table th="0"]\r\nTread Pattern,All-Terrain\r\nSize,33x12-18\r\nTread Depth (inch),1.97\r\nTread Depth at Safety Line (inch),2.95\r\nDiameter (inch),32.7\r\nWidth (inch),11.30\r\nRubber Thickness (inch),7.35\r\nWeight (lbs),294.0\r\nMax Loads Capacity (lbs),10400\r\nWheel Width (inch),7.0\r\nWheel Diameter (inch),18\r\nWheel Backspacing (inch),5.7\r\nBolt Holes,8\r\n[/table]";}i:4;a:4:{s:15:"accordion_title";s:20:"All-Terrain 33x12-20";s:20:"accordion_title_icon";s:16:"fa-chevron-right";s:18:"enable_single_icon";s:2:"no";s:14:"accordion_desc";s:348:"[table th="0"]\r\nTread Pattern,All-Terrain\r\nSize,33x12-20\r\nTread Depth (inch),1.57\r\nTread Depth at Safety Line (inch),2.44\r\nDiameter (inch),33.5\r\nWidth (inch),10.9\r\nRubber Thickness (inch),6.74\r\nWeight (lbs),195.8\r\nMax Loads Capacity (lbs),10400\r\nWheel Width (inch),7.5\r\nWheel Diameter (inch),20\r\nWheel Backspacing (inch),4.6\r\nBolt Holes,8\r\n[/table]";}i:5;a:4:{s:15:"accordion_title";s:18:"All-Smooth 33x9-16";s:20:"accordion_title_icon";s:16:"fa-chevron-right";s:18:"enable_single_icon";s:2:"no";s:14:"accordion_desc";s:346:"[table th="0"]\r\nTread Pattern,All-Terrain\r\nSize,33x9-16\r\nTread Depth (inch),2.38\r\nTread Depth at Safety Line (inch),2.91\r\nDiameter (inch),33.1\r\nWidth (inch),8.35\r\nRubber Thickness (inch),8.55\r\nWeight (lbs),284.9\r\nMax Loads Capacity (lbs),7250\r\nWheel Width (inch),6.0\r\nWheel Diameter (inch),16\r\nWheel Backspacing (inch),3.9\r\nBolt Holes,8\r\n[/table]";}}";'),
(968, 730, 'wpsm_accordion_shortcode_count', '6'),
(969, 730, 'Accordion_Shortcode_Settings', 's:627:"a:19:{s:13:"acc_sec_title";s:3:"yes";s:10:"op_cl_icon";s:3:"yes";s:14:"acc_title_icon";s:3:"yes";s:10:"acc_radius";s:3:"yes";s:10:"acc_margin";s:3:"yes";s:15:"acc_op_cl_align";s:4:"left";s:13:"enable_toggle";s:3:"yes";s:16:"acc_title_bg_clr";s:7:"#e8e8e8";s:18:"acc_title_icon_clr";s:7:"#000000";s:23:"acc_open_cl_icon_bg_clr";s:7:"#dd3333";s:23:"acc_open_cl_icon_ft_clr";s:7:"#ffffff";s:15:"acc_desc_bg_clr";s:7:"#ffffff";s:17:"acc_desc_font_clr";s:7:"#000000";s:10:"title_size";s:2:"18";s:8:"des_size";s:2:"16";s:11:"font_family";s:9:"Open Sans";s:10:"custom_css";s:0:"";s:13:"expand_option";s:1:"3";s:9:"ac_styles";s:1:"1";}";'),
(970, 731, '_edit_lock', '1458971905:1'),
(971, 731, '_edit_last', '1'),
(972, 731, 'wpsm_accordion_shortcode_data', 's:2635:"a:5:{i:0;a:4:{s:15:"accordion_title";s:20:"All-Purpose 30x10-16";s:20:"accordion_title_icon";s:16:"fa-chevron-right";s:18:"enable_single_icon";s:2:"no";s:14:"accordion_desc";s:349:"[table th="0"]\r\nTread Pattern,All-Purpose\r\nSize,30x10-16\r\nTread Depth (inch),2.20\r\nTread Depth at Safety Line (inch),2.50\r\nDiameter (inch),30.2\r\nWidth (inch),9.44\r\nRubber Thickness (inch),7.10\r\nWeight (lbs),195.8\r\nMax Loads Capacity (lbs),4850\r\nWheel Width (inch),6.0\r\nWheel Diameter (inch),16\r\nWheel Backspacing (inch),3.9\r\nBolt Holes,6/8\r\n[/table]";}i:1;a:4:{s:15:"accordion_title";s:19:"All-Purpose 30x9-16";s:20:"accordion_title_icon";s:16:"fa-chevron-right";s:18:"enable_single_icon";s:2:"no";s:14:"accordion_desc";s:346:"[table th="0"]\r\nTread Pattern,All-Purpose\r\nSize,30x9-16\r\nTread Depth (inch),1.97\r\nTread Depth at Safety Line (inch),2.20\r\nDiameter (inch),29.1\r\nWidth (inch),8.07\r\nRubber Thickness (inch),6.56\r\nWeight (lbs),180.4\r\nMax Loads Capacity (lbs),4200\r\nWheel Width (inch),6.0\r\nWheel Diameter (inch),16\r\nWheel Backspacing (inch),3.9\r\nBolt Holes,8\r\n[/table]";}i:2;a:4:{s:15:"accordion_title";s:20:"All-Terrain 30x10-16";s:20:"accordion_title_icon";s:16:"fa-chevron-right";s:18:"enable_single_icon";s:2:"no";s:14:"accordion_desc";s:345:"[table th="0"]\r\nTread Pattern,All-Terrain\r\nSize,30x10-16\r\nTread Depth (inch),1.57\r\nTread Depth at Safety Line (inch),2.58\r\nDiameter (inch),30.2\r\nWidth (inch),9.9\r\nRubber Thickness (inch),7.1\r\nWeight (lbs),205.0\r\nMax Loads Capacity (lbs),5500\r\nWheel Width (inch),6.0\r\nWheel Diameter (inch),16\r\nWheel Backspacing (inch),3.9\r\nBolt Holes,8\r\n[/table]";}i:3;a:4:{s:15:"accordion_title";s:19:"All-Smooth 30x10-16";s:20:"accordion_title_icon";s:16:"fa-chevron-right";s:18:"enable_single_icon";s:2:"no";s:14:"accordion_desc";s:345:"[table th="0"]\r\nTread Pattern,All-Smooth\r\nSize,30x9-16\r\nTread Depth (inch),1.97\r\nTread Depth at Safety Line (inch),2.60\r\nDiameter (inch),29.7\r\nWidth (inch),8.07\r\nRubber Thickness (inch),6.86\r\nWeight (lbs),227.4\r\nMax Loads Capacity (lbs),5100\r\nWheel Width (inch),6.0\r\nWheel Diameter (inch),16\r\nWheel Backspacing (inch),3.9\r\nBolt Holes,8\r\n[/table]";}i:4;a:4:{s:15:"accordion_title";s:22:"All-Smooth A/T 30x8-16";s:20:"accordion_title_icon";s:16:"fa-chevron-right";s:18:"enable_single_icon";s:2:"no";s:14:"accordion_desc";s:349:"[table th="0"]\r\nTread Pattern,All-Smooth A/T\r\nSize,30x8-16\r\nTread Depth (inch),1.57\r\nTread Depth at Safety Line (inch),2.36\r\nDiameter (inch),30.7\r\nWidth (inch),7.68\r\nRubber Thickness (inch),7.35\r\nWeight (lbs),119.7\r\nMax Loads Capacity (lbs),4200\r\nWheel Width (inch),6.0\r\nWheel Diameter (inch),16\r\nWheel Backspacing (inch),3.9\r\nBolt Holes,8\r\n[/table]";}}";'),
(973, 731, 'wpsm_accordion_shortcode_count', '5'),
(974, 731, 'Accordion_Shortcode_Settings', 's:627:"a:19:{s:13:"acc_sec_title";s:3:"yes";s:10:"op_cl_icon";s:3:"yes";s:14:"acc_title_icon";s:3:"yes";s:10:"acc_radius";s:3:"yes";s:10:"acc_margin";s:3:"yes";s:15:"acc_op_cl_align";s:4:"left";s:13:"enable_toggle";s:3:"yes";s:16:"acc_title_bg_clr";s:7:"#e8e8e8";s:18:"acc_title_icon_clr";s:7:"#000000";s:23:"acc_open_cl_icon_bg_clr";s:7:"#dd3333";s:23:"acc_open_cl_icon_ft_clr";s:7:"#ffffff";s:15:"acc_desc_bg_clr";s:7:"#ffffff";s:17:"acc_desc_font_clr";s:7:"#000000";s:10:"title_size";s:2:"18";s:8:"des_size";s:2:"16";s:11:"font_family";s:9:"Open Sans";s:10:"custom_css";s:0:"";s:13:"expand_option";s:1:"3";s:9:"ac_styles";s:1:"1";}";'),
(975, 732, '_wp_attached_file', '2016/03/solid-skid-steer-tires-landscape.jpg'),
(976, 732, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:740;s:6:"height";i:250;s:4:"file";s:44:"2016/03/solid-skid-steer-tires-landscape.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"solid-skid-steer-tires-landscape-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"solid-skid-steer-tires-landscape-300x101.jpg";s:5:"width";i:300;s:6:"height";i:101;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:44:"solid-skid-steer-tires-landscape-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:44:"solid-skid-steer-tires-landscape-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:44:"solid-skid-steer-tires-landscape-600x250.jpg";s:5:"width";i:600;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:50:"Ori Kuper Photography copyrighted www.OriKuper.com";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(977, 733, '_wp_attached_file', '2016/03/solid-skid-steer-tires-740x416.jpg'),
(978, 733, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:740;s:6:"height";i:416;s:4:"file";s:42:"2016/03/solid-skid-steer-tires-740x416.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"solid-skid-steer-tires-740x416-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"solid-skid-steer-tires-740x416-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:13:"featured-page";a:4:{s:4:"file";s:42:"solid-skid-steer-tires-740x416-740x400.jpg";s:5:"width";i:740;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:42:"solid-skid-steer-tires-740x416-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:42:"solid-skid-steer-tires-740x416-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:42:"solid-skid-steer-tires-740x416-600x416.jpg";s:5:"width";i:600;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:50:"Ori Kuper Photography copyrighted www.OriKuper.com";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(982, 735, '_wp_attached_file', '2016/02/solid-skid-steer-tires-300x300.jpg'),
(983, 735, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:42:"2016/02/solid-skid-steer-tires-300x300.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"solid-skid-steer-tires-300x300-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:42:"solid-skid-steer-tires-300x300-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:50:"Ori Kuper Photography copyrighted www.OriKuper.com";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(984, 635, '_thumbnail_id', '735'),
(985, 742, '_wp_attached_file', '2016/03/solid-aerial-work-platform-telehandler-tires-740x416.jpg'),
(986, 742, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:740;s:6:"height";i:416;s:4:"file";s:64:"2016/03/solid-aerial-work-platform-telehandler-tires-740x416.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:64:"solid-aerial-work-platform-telehandler-tires-740x416-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:64:"solid-aerial-work-platform-telehandler-tires-740x416-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:13:"featured-page";a:4:{s:4:"file";s:64:"solid-aerial-work-platform-telehandler-tires-740x416-740x400.jpg";s:5:"width";i:740;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:64:"solid-aerial-work-platform-telehandler-tires-740x416-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:64:"solid-aerial-work-platform-telehandler-tires-740x416-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:64:"solid-aerial-work-platform-telehandler-tires-740x416-600x416.jpg";s:5:"width";i:600;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:50:"Ori Kuper Photography copyrighted www.OriKuper.com";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(987, 743, '_wp_attached_file', '2016/03/solid-aerial-work-platform-telehandler-tires-300x300.jpg'),
(988, 743, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:64:"2016/03/solid-aerial-work-platform-telehandler-tires-300x300.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:64:"solid-aerial-work-platform-telehandler-tires-300x300-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:64:"solid-aerial-work-platform-telehandler-tires-300x300-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:50:"Ori Kuper Photography copyrighted www.OriKuper.com";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(989, 726, '_thumbnail_id', '743'),
(990, 744, '_wp_attached_file', '2016/03/aftermarket-rubber-tracks-740x416.jpg'),
(991, 744, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:740;s:6:"height";i:416;s:4:"file";s:45:"2016/03/aftermarket-rubber-tracks-740x416.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"aftermarket-rubber-tracks-740x416-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:45:"aftermarket-rubber-tracks-740x416-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:13:"featured-page";a:4:{s:4:"file";s:45:"aftermarket-rubber-tracks-740x416-740x400.jpg";s:5:"width";i:740;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"aftermarket-rubber-tracks-740x416-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:45:"aftermarket-rubber-tracks-740x416-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:45:"aftermarket-rubber-tracks-740x416-600x416.jpg";s:5:"width";i:600;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(992, 748, '_wp_attached_file', '2016/02/aftermarket-rubber-tracks-300x300.jpg'),
(993, 748, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:45:"2016/02/aftermarket-rubber-tracks-300x300.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"aftermarket-rubber-tracks-300x300-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"aftermarket-rubber-tracks-300x300-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(994, 632, '_thumbnail_id', '748'),
(995, 750, '_edit_lock', '1458937525:1'),
(996, 750, '_edit_last', '1'),
(997, 750, '_wp_page_template', 'default'),
(998, 752, '_menu_item_type', 'post_type'),
(999, 752, '_menu_item_menu_item_parent', '0'),
(1000, 752, '_menu_item_object_id', '750'),
(1001, 752, '_menu_item_object', 'page'),
(1002, 752, '_menu_item_target', ''),
(1003, 752, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1004, 752, '_menu_item_xfn', ''),
(1005, 752, '_menu_item_url', ''),
(1007, 758, '_menu_item_type', 'custom'),
(1008, 758, '_menu_item_menu_item_parent', '0'),
(1009, 758, '_menu_item_object_id', '758'),
(1010, 758, '_menu_item_object', 'custom'),
(1011, 758, '_menu_item_target', ''),
(1012, 758, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1013, 758, '_menu_item_xfn', ''),
(1014, 758, '_menu_item_url', 'http://nighthawktires.stagingcloud.us/#front-page-6') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=759 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-02-22 05:17:22', '2016-02-22 05:17:22', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-02-22 05:17:22', '2016-02-22 05:17:22', '', 0, 'http://nighthawktires.yourdevelopment.ws/?p=1', 0, 'post', '', 1),
(2, 1, '2016-02-22 05:17:22', '2016-02-22 05:17:22', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://nighthawktires.stagingcloud.us/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page', '', '', '2016-02-29 07:00:30', '2016-02-29 13:00:30', '', 0, 'http://nighthawktires.yourdevelopment.ws/?page_id=2', 0, 'page', '', 0),
(15, 1, '2016-02-22 00:15:08', '2016-02-22 06:15:08', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2016-02-22 00:15:08', '2016-02-22 06:15:08', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/twitter/', 1, 'nav_menu_item', '', 0),
(16, 1, '2016-02-22 00:15:08', '2016-02-22 06:15:08', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2016-02-22 00:15:08', '2016-02-22 06:15:08', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/facebook/', 2, 'nav_menu_item', '', 0),
(17, 1, '2016-02-22 00:15:08', '2016-02-22 06:15:08', '', 'LinkedIn', '', 'publish', 'closed', 'closed', '', 'linkedin', '', '', '2016-02-22 00:15:08', '2016-02-22 06:15:08', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/linkedin/', 3, 'nav_menu_item', '', 0),
(18, 1, '2016-02-22 00:15:08', '2016-02-22 06:15:08', '', 'Google+', '', 'publish', 'closed', 'closed', '', 'google', '', '', '2016-02-22 00:15:08', '2016-02-22 06:15:08', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/google/', 4, 'nav_menu_item', '', 0),
(19, 1, '2016-02-22 00:15:08', '2016-02-22 06:15:08', '', 'RSS', '', 'publish', 'closed', 'closed', '', 'rss-2', '', '', '2016-02-22 00:15:08', '2016-02-22 06:15:08', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/rss-2/', 5, 'nav_menu_item', '', 0),
(20, 1, '2016-02-22 00:15:08', '2016-02-22 06:15:08', '', 'Author Page', '', 'publish', 'closed', 'closed', '', 'author-page', '', '', '2016-02-22 00:15:08', '2016-02-22 06:15:08', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/author-page/', 3, 'nav_menu_item', '', 0),
(21, 1, '2016-02-22 00:15:09', '2016-02-22 06:15:09', 'This is a sample category description, which can be used to boost SEO rankings. Make sure you have enabled this from the Edit Category screen in your dashboard.', 'Category Page', '', 'publish', 'closed', 'closed', '', 'category-page', '', '', '2016-02-22 00:15:09', '2016-02-22 06:15:09', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/category-page/', 4, 'nav_menu_item', '', 0),
(22, 1, '2016-02-22 00:15:09', '2016-02-22 06:15:09', '', 'Buy This Theme', '', 'publish', 'closed', 'closed', '', 'buy-this-theme', '', '', '2016-02-22 00:15:09', '2016-02-22 06:15:09', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/buy-this-theme/', 8, 'nav_menu_item', '', 0),
(31, 1, '2010-08-15 19:03:46', '2010-08-15 19:03:46', 'This is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages as you like and manage all of your content.\n\nThis is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages as you like and manage all of your content. This is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages as you like and manage all of your content inside of WordPress.\n\nThis is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages as you like and manage all of your content.\n\nThis is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages as you like and manage all of your content. This is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages as you like and manage all of your content inside of WordPress.\n\nThis is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages as you like and manage all of your content.', 'Sample Page', '', 'trash', 'open', 'closed', '', 'sample', '', '', '2016-02-29 07:00:38', '2016-02-29 13:00:38', '', 0, 'http://demo.studiopress.com/genesis', 0, 'page', '', 0),
(83, 1, '2010-08-15 19:13:33', '2010-08-15 19:13:33', 'Please fill out the form below and I will reply within 24 hours.\r\n\r\n[gravityform id="2" title="false" description="true"]\r\n\r\n&nbsp;', 'Contact', '', 'publish', 'open', 'closed', '', 'contact', '', '', '2016-03-17 02:24:26', '2016-03-17 07:24:26', '', 0, 'http://demo.studiopress.com/genesis', 11, 'page', '', 0),
(181, 1, '2011-02-03 18:06:59', '2011-02-03 18:06:59', 'Below are examples of column classes that are available.\n\n<h3>Two-Columns</h3>\n\n<div class="one-half first">\n<p>This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what exactly is on your mind.</p>\n</div>\n\n<div class="one-half">\n<p>This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what exactly is on your mind.</p>\n</div>\n\n<hr class="clearfix">\n\n<h3>Three-Columns</h3>\n\n<div class="one-third first">\n<p>This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.</p>\n</div>\n\n<div class="one-third">\n<p>This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.</p>\n</div>\n\n<div class="one-third">\n<p>This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.</p>\n</div>\n\n<hr class="clearfix">\n\n<h3>Four-Columns</h3>\n\n<div class="one-fourth first">\n<p>This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what exactly is on your mind.</p>\n</div>\n\n<div class="one-fourth">\n<p>This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what exactly is on your mind.</p>\n</div>\n\n<div class="one-fourth">\n<p>This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what exactly is on your mind.</p>\n</div>\n\n<div class="one-fourth">\n<p>This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what exactly is on your mind.</p>\n</div>\n\n<hr class="clearfix">\n\n<h3>Six-Columns</h3>\n\n<div class="one-sixth first">\n<p>This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.</p>\n</div>\n\n<div class="one-sixth">\n<p>This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.</p>\n</div>\n\n<div class="one-sixth">\n<p>This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.</p>\n</div>\n\n<div class="one-sixth">\n<p>This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.</p>\n</div>\n\n<div class="one-sixth">\n<p>This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.</p>\n</div>\n\n<div class="one-sixth">\n<p>This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.</p>\n</div>', 'Columns Page', '', 'publish', 'open', 'closed', '', 'columns', '', '', '2011-02-03 18:06:59', '2011-02-03 18:06:59', '', 0, 'http://demo.studiopress.com/genesis/?page_id=181', 0, 'page', '', 0),
(182, 1, '2014-11-01 01:54:12', '2014-11-01 01:54:12', 'This is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.\n\n<blockquote>This is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.</blockquote>\n\nThis is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.\n\nThis is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind. This is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.', 'Post With a Blockquote', '', 'publish', 'open', 'open', '', 'blockquote', '', '', '2014-11-01 01:54:12', '2014-11-01 01:54:12', '', 0, 'http://demo.studiopress.com/genesis/?p=7', 0, 'post', '', 0),
(493, 1, '2014-11-01 01:54:32', '2014-11-01 01:54:32', 'Like the sharing buttons that you see here? <a href="http://briangardner.com/genesis-simple-share/">Get the Simple Share plugin</a>.\n\nThis is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.\n\n<ol>\n<li>Ordered list item #1</li>\n<li>Ordered list item #2</li>\n<li>Ordered list item #3</li>\n<li>Ordered list item #4</li>\n<li>Ordered list item #5</li>\n</ol>\n\nThis is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.\n\nThis is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind. This is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.', 'Post With an Ordered List', '', 'publish', 'open', 'open', '', 'ordered-list', '', '', '2014-11-01 01:54:32', '2014-11-01 01:54:32', '', 0, 'http://demo.studiopress.com/genesis/?p=9', 0, 'post', '', 0),
(494, 1, '2014-11-01 01:54:48', '2014-11-01 01:54:48', 'Like the sharing buttons that you see here? <a href="http://briangardner.com/genesis-simple-share/">Get the Simple Share plugin</a>.\n\nThis is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.\n\n<ul>\n<li>Unordered list item #1</li>\n<li>Unordered list item #2</li>\n<li>Unordered list item #3</li>\n<li>Unordered list item #4</li>\n<li>Unordered list item #5</li>\n</ul>\n\nThis is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.\n\nThis is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind. This is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.', 'Post With an Unordered List', '', 'publish', 'open', 'open', '', 'unordered-list', '', '', '2014-11-01 01:54:48', '2014-11-01 01:54:48', '', 0, 'http://demo.studiopress.com/genesis/?p=11', 0, 'post', '', 0),
(495, 1, '2014-11-01 01:55:21', '2014-11-01 01:55:21', '[caption id="" align="aligncenter" width="140" caption="Here\'s a sample caption with an image centered."]<img alt="Here\'s a sample caption with a sample image centered." src="http://www.studiopress.com/images/wordpress.png" width="140" height="140" />[/caption]\n\nLike the sharing buttons that you see here? <a href="http://briangardner.com/genesis-simple-share/">Get the Simple Share plugin</a>.\n\nThis is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.\n\nThis is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind. This is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.\n\nThis is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.\n\nThis is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind. This is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.', 'Post With Image Centered', '', 'publish', 'open', 'open', '', 'image-centered', '', '', '2014-11-01 01:55:21', '2014-11-01 01:55:21', '', 0, 'http://demo.studiopress.com/genesis/?p=13', 0, 'post', '', 0),
(496, 1, '2014-11-01 01:56:30', '2014-11-01 01:56:30', 'Like the sharing buttons that you see here? <a href="http://briangardner.com/genesis-simple-share/">Get the Simple Share plugin</a>.\n\n[caption id="" align="alignright" width="140" caption="Here\'s a sample caption with an image aligned right."]<img alt="Here\'s a sample caption with a sample image aligned right." src="http://www.studiopress.com/images/wordpress.png" width="140" height="140" />[/caption]\n\nThis is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.\n\nThis is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind. This is an example of a WordPress post, you could edit this to put information about your site so readers know where you are coming from. You can create as many posts as you like.\n\nThis is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.\n\nThis is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind. This is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.', 'Post With Image Aligned Right', '', 'publish', 'open', 'open', '', 'image-aligned-right', '', '', '2014-11-01 01:56:30', '2014-11-01 01:56:30', '', 0, 'http://demo.studiopress.com/genesis/?p=16', 0, 'post', '', 0),
(497, 1, '2014-11-01 01:57:05', '2014-11-01 01:57:05', 'Like the sharing buttons that you see here? <a href="http://briangardner.com/genesis-simple-share/">Get the Simple Share plugin</a>.\n\n[caption id="" align="alignleft" width="140" caption="Here&#039;s a sample caption with an image aligned left."]<img alt="Heres a sample caption, with a sample image aligned left." src="http://www.studiopress.com/images/wordpress.png" width="140" height="140" />[/caption]\n\nThis is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like.\n\nThis is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind. This is an example of a WordPress post, you could edit this to put information about your site so readers know where you are coming from. You can create as many posts as you like.\n\nThis is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.\n\nThis is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind. This is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.', 'Post With Image Aligned Left', '', 'publish', 'open', 'open', '', 'image-aligned-left', '', '', '2014-11-01 01:57:05', '2014-11-01 01:57:05', '', 0, 'http://demo.studiopress.com/genesis/?p=18', 0, 'post', '', 0),
(498, 1, '2014-11-01 01:57:18', '2014-11-01 01:57:18', 'This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share what is on your mind.\n\nThis is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share what is on your mind. This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.\n\n<h4>This is a Sample Heading</h4>\n\nThis is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share what is on your mind.\n\nThis is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share what is on your mind. This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.', 'Post With Threaded Comments', '', 'publish', 'open', 'open', '', 'threaded-comments', '', '', '2014-11-01 01:57:18', '2014-11-01 01:57:18', '', 0, 'http://demo.studiopress.com/genesis/?p=20', 0, 'post', '', 6),
(539, 1, '2014-11-01 01:52:58', '2014-11-01 01:52:58', 'Like the sharing buttons that you see here? <a href="http://briangardner.com/genesis-simple-share/">Get the Simple Share plugin</a>.\n\n<h1>Headline 1</h1>\n<h2>Headline 2</h2>\n<h3>Headline 3</h3>\n<h4>Headline 4</h4>\n<h5>Headline 5</h5>\n<h6>Headline 6</h6>', 'Post With Headlines', '', 'publish', 'open', 'open', '', 'headlines', '', '', '2014-11-01 01:52:58', '2014-11-01 01:52:58', '', 0, 'http://demo.studiopress.com/genesis/?p=5', 0, 'post', '', 0),
(540, 1, '2014-08-21 23:12:17', '2014-08-21 23:12:17', 'Welcome to the formatting page for the Altitude Pro theme. We\'re glad you are interested in using this and want to show you how elements look.\n\n<strong>Want to see what a blockquote looks like?</strong>\n<blockquote>This is an example of a WordPress post, you could edit this to put information about your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind.</blockquote>\n<strong>Perhaps you\'d like to see what an unordered list looks like?</strong>\n<ul>\n	<li>Unordered list item #1</li>\n	<li>Unordered list item #2</li>\n	<li>Unordered list item #3</li>\n</ul>\n<strong>Or you\'d prefer to see what an ordered list looks like?</strong>\n<ol>\n	<li>Ordered list item #1</li>\n	<li>Ordered list item #2</li>\n	<li>Ordered list item #3</li>\n</ol>\n<strong>How about the styling for threaded comments?</strong>\n\nStarting with Version 2.7, WordPress has support for threaded comments. This is where you reply to a comment that was previously made, and makes reading comments easier. Take a look at the <a href="http://demo.studiopress.com/altitude/threaded-comments#comments">comments of this post</a> and you will see.\n\n<strong>Lastly, care to see what the headings look like?</strong>\n<h1>Headline 1</h1>\n<h2>Headline 2</h2>\n<h3>Headline 3</h3>\n<h4>Headline 4</h4>\n<h5>Headline 5</h5>\n<h6>Headline 6</h6>', 'Typography', '', 'publish', 'open', 'open', '', 'typography', '', '', '2014-08-21 23:12:17', '2014-08-21 23:12:17', '', 0, 'http://themedemo.me/boxshadow/?page_id=532', 0, 'page', '', 0),
(546, 1, '2014-08-21 23:14:57', '2014-08-21 23:14:57', 'This is an example of a WordPress page, you could edit this to put information so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your content inside of WordPress.\r\n\r\n<h4>Reason #1 To Buy This Theme</h4>\r\n\r\nThis is an example of a WordPress page, you could edit this to put information so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your content inside of WordPress. This is an example of a WordPress page, you could edit this to put information so readers know where you are coming from. You can create as many pages as you like and manage all of your content inside of WordPress.\r\n\r\n<h4>Reason #2 To Buy This Theme</h4>\r\n\r\nThis is an example of a WordPress page, you could edit this to put information so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your content inside of WordPress. This is an example of a WordPress page, you could edit this to put information so readers know where you are coming from. You can create as many pages as you like and manage all of your content inside of WordPress.\r\n\r\n<h4>Reason #3 To Buy This Theme</h4>\r\n\r\nThis is an example of a WordPress page, you could edit this to put information so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your content inside of WordPress. This is an example of a WordPress page, you could edit this to put information so readers know where you are coming from. You can create as many pages as you like and manage all of your content inside of WordPress.\r\n\r\n<a class="button" href="http://my.studiopress.com/themes/altitude/">Click here to purchase this theme!</a>', 'Landing Page', '', 'publish', 'open', 'open', '', 'landing', '', '', '2016-03-10 04:46:01', '2016-03-10 10:46:01', '', 0, 'http://themedemo.me/boxshadow/?page_id=546', 0, 'page', '', 0),
(576, 1, '2016-02-22 00:15:09', '2016-02-22 06:15:09', 'Below are examples of column classes that are available with the Genesis Framework parent theme: Two-Columns This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what exactly is on your mind. This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what exactly is on your mind. Three-Columns This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind. This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts…', '', '', 'publish', 'closed', 'closed', '', '576', '', '', '2016-02-22 00:15:09', '2016-02-22 06:15:09', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/', 5, 'nav_menu_item', '', 0),
(578, 1, '2016-02-22 00:15:09', '2016-02-22 06:15:09', '[gravityform id=1 name=ContactForm title=false description=false] * This contact form was developed with a third party plugin called Gravity Forms and is not included in the Genesis Framework. It is for display only here on the demo site – though we highly recommend using it.', '', '', 'publish', 'closed', 'closed', '', '578', '', '', '2016-02-22 00:15:09', '2016-02-22 06:15:09', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/578/', 7, 'nav_menu_item', '', 0),
(579, 1, '2016-02-22 00:15:09', '2016-02-22 06:15:09', ' ', '', '', 'publish', 'closed', 'closed', '', '579', '', '', '2016-02-22 00:15:09', '2016-02-22 06:15:09', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/579/', 1, 'nav_menu_item', '', 0),
(580, 1, '2016-02-22 00:15:09', '2016-02-22 06:15:09', ' ', '', '', 'publish', 'closed', 'closed', '', '580', '', '', '2016-02-22 00:15:09', '2016-02-22 06:15:09', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/580/', 6, 'nav_menu_item', '', 0),
(581, 1, '2016-02-22 00:15:09', '2016-02-22 06:15:09', 'This is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your content inside of WordPress. This is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your content inside of WordPress. This is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your content inside of WordPress. This is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your…', '', '', 'publish', 'closed', 'closed', '', '581', '', '', '2016-02-22 00:15:09', '2016-02-22 06:15:09', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/581/', 2, 'nav_menu_item', '', 0),
(589, 1, '2016-02-22 00:21:12', '2016-02-22 06:21:12', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter-2', '', '', '2016-02-22 00:21:12', '2016-02-22 06:21:12', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/twitter-2/', 1, 'nav_menu_item', '', 0),
(590, 1, '2016-02-22 00:21:12', '2016-02-22 06:21:12', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook-2', '', '', '2016-02-22 00:21:12', '2016-02-22 06:21:12', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/facebook-2/', 2, 'nav_menu_item', '', 0),
(591, 1, '2016-02-22 00:21:12', '2016-02-22 06:21:12', '', 'LinkedIn', '', 'publish', 'closed', 'closed', '', 'linkedin-2', '', '', '2016-02-22 00:21:12', '2016-02-22 06:21:12', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/linkedin-2/', 3, 'nav_menu_item', '', 0),
(592, 1, '2016-02-22 00:21:12', '2016-02-22 06:21:12', '', 'Google+', '', 'publish', 'closed', 'closed', '', 'google-2', '', '', '2016-02-22 00:21:12', '2016-02-22 06:21:12', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/google-2/', 4, 'nav_menu_item', '', 0),
(593, 1, '2016-02-22 00:21:12', '2016-02-22 06:21:12', '', 'RSS', '', 'publish', 'closed', 'closed', '', 'rss-3', '', '', '2016-02-22 00:21:12', '2016-02-22 06:21:12', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/rss-3/', 5, 'nav_menu_item', '', 0),
(594, 1, '2016-02-22 00:21:12', '2016-02-22 06:21:12', '', 'Author Page', '', 'publish', 'closed', 'closed', '', 'author-page-2', '', '', '2016-02-22 00:21:12', '2016-02-22 06:21:12', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/author-page-2/', 3, 'nav_menu_item', '', 0),
(595, 1, '2016-02-22 00:21:12', '2016-02-22 06:21:12', 'This is a sample category description, which can be used to boost SEO rankings. Make sure you have enabled this from the Edit Category screen in your dashboard.', 'Category Page', '', 'publish', 'closed', 'closed', '', 'category-page-2', '', '', '2016-02-22 00:21:12', '2016-02-22 06:21:12', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/category-page-2/', 4, 'nav_menu_item', '', 0),
(596, 1, '2016-02-22 00:21:12', '2016-02-22 06:21:12', '', 'Buy This Theme', '', 'publish', 'closed', 'closed', '', 'buy-this-theme-2', '', '', '2016-02-22 00:21:12', '2016-02-22 06:21:12', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/buy-this-theme-2/', 8, 'nav_menu_item', '', 0),
(597, 1, '2016-02-22 00:21:13', '2016-02-22 06:21:13', 'Below are examples of column classes that are available with the Genesis Framework parent theme: Two-Columns This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what exactly is on your mind. This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what exactly is on your mind. Three-Columns This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what is on your mind. This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts…', '', '', 'publish', 'closed', 'closed', '', '597', '', '', '2016-02-22 00:21:13', '2016-02-22 06:21:13', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/', 5, 'nav_menu_item', '', 0),
(599, 1, '2016-02-22 00:21:13', '2016-02-22 06:21:13', '[gravityform id=1 name=ContactForm title=false description=false] * This contact form was developed with a third party plugin called Gravity Forms and is not included in the Genesis Framework. It is for display only here on the demo site – though we highly recommend using it.', '', '', 'publish', 'closed', 'closed', '', '599', '', '', '2016-02-22 00:21:13', '2016-02-22 06:21:13', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/599/', 7, 'nav_menu_item', '', 0),
(600, 1, '2016-02-22 00:21:13', '2016-02-22 06:21:13', ' ', '', '', 'publish', 'closed', 'closed', '', '600', '', '', '2016-02-22 00:21:13', '2016-02-22 06:21:13', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/600/', 1, 'nav_menu_item', '', 0),
(601, 1, '2016-02-22 00:21:13', '2016-02-22 06:21:13', ' ', '', '', 'publish', 'closed', 'closed', '', '601', '', '', '2016-02-22 00:21:13', '2016-02-22 06:21:13', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/601/', 6, 'nav_menu_item', '', 0),
(602, 1, '2016-02-22 00:21:13', '2016-02-22 06:21:13', 'This is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your content inside of WordPress. This is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your content inside of WordPress. This is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your content inside of WordPress. This is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your…', '', '', 'publish', 'closed', 'closed', '', '602', '', '', '2016-02-22 00:21:13', '2016-02-22 06:21:13', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/602/', 2, 'nav_menu_item', '', 0),
(603, 1, '2016-02-22 00:21:57', '2016-02-22 06:21:57', 'Hi admin,\n\nThis notice confirms that your password was changed on Nighthawk Tires.\n\nIf you did not change your password, please contact the Site Administrator at\njpeterson@develare.com\n\nThis email has been sent to demo-comments@studiopress.com\n\nRegards,\nAll at Nighthawk Tires\nhttp://nighthawktires.stagingcloud.us', '[Nighthawk Tires] Notice of Password Change', 'Connection refused', 'private', 'closed', 'closed', '', 'nighthawk-tires-notice-of-password-change', '', '', '2016-02-22 00:21:57', '2016-02-22 06:21:57', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/postman_sent_mail/nighthawk-tires-notice-of-password-change/', 0, 'postman_sent_mail', '', 0),
(604, 1, '2016-02-22 00:22:16', '2016-02-22 06:22:16', 'Hi lmancke,\n\nThis notice confirms that your password was changed on Nighthawk Tires.\n\nIf you did not change your password, please contact the Site Administrator at\njpeterson@develare.com\n\nThis email has been sent to support+demo@copyblogger.com\n\nRegards,\nAll at Nighthawk Tires\nhttp://nighthawktires.stagingcloud.us', '[Nighthawk Tires] Notice of Password Change', 'Connection refused', 'private', 'closed', 'closed', '', 'nighthawk-tires-notice-of-password-change-2', '', '', '2016-02-22 00:22:16', '2016-02-22 06:22:16', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/postman_sent_mail/nighthawk-tires-notice-of-password-change-2/', 0, 'postman_sent_mail', '', 0),
(605, 1, '2016-02-23 22:59:22', '2016-02-24 04:59:22', '', 'Home page', '', 'publish', 'closed', 'closed', '', 'home-page', '', '', '2016-02-23 22:59:22', '2016-02-24 04:59:22', '', 0, 'http://nighthawktires.yourdevelopment.ws/?page_id=605', 0, 'page', '', 0),
(606, 1, '2016-02-23 22:45:53', '2016-02-24 04:45:53', '', 'Logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2016-02-23 22:45:53', '2016-02-24 04:45:53', '', 0, 'http://nighthawktires.yourdevelopment.ws/wp-content/uploads/2016/02/Logo.png', 0, 'attachment', 'image/png', 0),
(607, 1, '2016-02-23 22:46:48', '2016-02-24 04:46:48', '', 'Logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2016-02-23 22:46:48', '2016-02-24 04:46:48', '', 0, 'http://nighthawktires.yourdevelopment.ws/wp-content/uploads/2016/02/Logo-1.png', 0, 'attachment', 'image/png', 0),
(608, 1, '2016-02-23 22:47:07', '2016-02-24 04:47:07', '', 'cropped-Logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-png', '', '', '2016-02-23 22:47:07', '2016-02-24 04:47:07', '', 0, 'http://nighthawktires.yourdevelopment.ws/wp-content/uploads/2016/02/cropped-Logo-1.png', 0, 'attachment', 'image/png', 0),
(609, 1, '2016-02-23 22:59:22', '2016-02-24 04:59:22', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '605-revision-v1', '', '', '2016-02-23 22:59:22', '2016-02-24 04:59:22', '', 605, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/605-revision-v1/', 0, 'revision', '', 0),
(610, 1, '2016-02-23 23:02:37', '2016-02-24 05:02:37', '', 'Banner_1', '', 'inherit', 'open', 'closed', '', 'banner_1', '', '', '2016-02-23 23:02:37', '2016-02-24 05:02:37', '', 0, 'http://nighthawktires.yourdevelopment.ws/wp-content/uploads/2016/02/Banner_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(611, 1, '2016-02-23 23:02:43', '2016-02-24 05:02:43', '', 'Banner_2', '', 'inherit', 'open', 'closed', '', 'banner_2', '', '', '2016-02-23 23:02:43', '2016-02-24 05:02:43', '', 0, 'http://nighthawktires.yourdevelopment.ws/wp-content/uploads/2016/02/Banner_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(612, 1, '2016-02-23 23:17:10', '2016-02-24 05:17:10', '', 'Home', '', 'publish', 'closed', 'closed', '', '612', '', '', '2016-03-26 01:09:29', '2016-03-26 06:09:29', '', 0, 'http://nighthawktires.yourdevelopment.ws/?p=612', 1, 'nav_menu_item', '', 0),
(620, 1, '2016-02-24 00:58:37', '2016-02-24 06:58:37', '', 'Banner_2', '', 'inherit', 'open', 'closed', '', 'banner_2-2', '', '', '2016-02-24 00:58:37', '2016-02-24 06:58:37', '', 0, 'http://nighthawktires.yourdevelopment.ws/wp-content/uploads/2016/02/Banner_2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(621, 1, '2016-02-24 01:36:35', '2016-02-24 07:36:35', '', 'Dure-Core-Rubber-Tracks', '', 'inherit', 'open', 'closed', '', 'dure-core-rubber-tracks', '', '', '2016-02-24 01:36:35', '2016-02-24 07:36:35', '', 0, 'http://nighthawktires.yourdevelopment.ws/wp-content/uploads/2016/02/Dure-Core-Rubber-Tracks.png', 0, 'attachment', 'image/png', 0),
(622, 1, '2016-02-24 01:36:37', '2016-02-24 07:36:37', '', 'Dure-Flex-Solid-Tires', '', 'inherit', 'open', 'closed', '', 'dure-flex-solid-tires', '', '', '2016-02-24 01:36:37', '2016-02-24 07:36:37', '', 0, 'http://nighthawktires.yourdevelopment.ws/wp-content/uploads/2016/02/Dure-Flex-Solid-Tires.png', 0, 'attachment', 'image/png', 0),
(623, 1, '2016-02-24 01:43:11', '2016-02-24 07:43:11', '', 'logo_bottom', '', 'inherit', 'open', 'closed', '', 'logo_bottom', '', '', '2016-03-25 15:39:17', '2016-03-25 20:39:17', '', 641, 'http://nighthawktires.yourdevelopment.ws/wp-content/uploads/2016/02/logo_bottom.png', 0, 'attachment', 'image/png', 0),
(624, 1, '2016-02-24 07:14:38', '2016-02-24 13:14:38', '', 'Solid-Warranty', '', 'inherit', 'open', 'closed', '', 'solid-warranty', '', '', '2016-02-24 07:14:38', '2016-02-24 13:14:38', '', 0, 'http://nighthawktires.yourdevelopment.ws/wp-content/uploads/2016/02/Solid-Warranty.jpg', 0, 'attachment', 'image/jpeg', 0),
(625, 1, '2016-02-24 07:14:41', '2016-02-24 13:14:41', '', 'Best-Value_', '', 'inherit', 'open', 'closed', '', 'best-value_', '', '', '2016-03-25 15:45:04', '2016-03-25 20:45:04', '', 641, 'http://nighthawktires.yourdevelopment.ws/wp-content/uploads/2016/02/Best-Value_.jpg', 0, 'attachment', 'image/jpeg', 0),
(626, 1, '2016-02-24 07:14:46', '2016-02-24 13:14:46', '', 'Superior-Performance', '', 'inherit', 'open', 'closed', '', 'superior-performance', '', '', '2016-02-24 07:14:46', '2016-02-24 13:14:46', '', 0, 'http://nighthawktires.yourdevelopment.ws/wp-content/uploads/2016/02/Superior-Performance.jpg', 0, 'attachment', 'image/jpeg', 0),
(632, 1, '2016-02-25 05:57:48', '2016-02-25 11:57:48', '<p class="p1"><span class="s1">Nighthawk Dura-Core®™ rubber tracks are built strong for maximum performance in all types of terrain and operating conditions.<span class="Apple-converted-space">  </span>We combine superior technology, expert manufacturing, and premium materials to create a product you can trust. </span></p>\r\n<p class="p1"><span class="s1">Our tracks are the ultimate in product performance, reliability, and value; making Nighthawk Dura-Core®™ rubber tracks the ideal choice for compact track and multi-terrain loaders.</span></p>\r\n<p class="p3" style="text-align: center;"><em><strong><span class="s1">Nighthawk keeps you moving when the job depends on it.</span></strong></em></p>\r\n<p class="p1"><span class="s1"><b><i>Call us today </i></b>at<b><i> </i></b>1-855-429-5669 and our team will help you find the best tracks for your application. </span></p>', 'Dura-Core®™ Rubber Tracks for Compact Track Loaders', '', 'publish', 'closed', 'closed', '', 'dura-core-rubber-tracks-for-compact-track-loaders', '', '', '2016-03-25 15:28:03', '2016-03-25 20:28:03', '', 750, 'http://nighthawktires.yourdevelopment.ws/?page_id=632', 0, 'page', '', 0),
(633, 1, '2016-02-25 05:57:48', '2016-02-25 11:57:48', '', 'Tracks', '', 'inherit', 'closed', 'closed', '', '632-revision-v1', '', '', '2016-02-25 05:57:48', '2016-02-25 11:57:48', '', 632, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/632-revision-v1/', 0, 'revision', '', 0),
(634, 1, '2016-02-25 05:58:11', '2016-02-25 11:58:11', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. \r\n\r\n\r\nEtiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. ', 'Tracks', '', 'inherit', 'closed', 'closed', '', '632-revision-v1', '', '', '2016-02-25 05:58:11', '2016-02-25 11:58:11', '', 632, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/632-revision-v1/', 0, 'revision', '', 0),
(635, 1, '2016-02-25 06:02:44', '2016-02-25 12:02:44', '<p class="p1"><span class="s1">Nighthawk Dura-Flex ®™ solid tires are built strong for maximum performance in all types of terrain and operating conditions.</span></p>\r\n<p class="p1"><span class="s1">We combine superior technology, expert manufacturing, and premium materials to create a product you can trust.</span></p>\r\n<p class="p1"><span class="s1">Our aperture design is specifically engineered for heavy loads, providing a smooth, cushioned ride without the bounce associated with pneumatic or form-filled tires.<span class="Apple-converted-space">  </span>This unique design reduces operator fatigue and offers greater stability control.</span></p>\r\n<p class="p1"><span class="s1"><b>Nighthawk Dura-Flex®™ </b>solid tires are the ideal choice for skid steer loaders.</span></p>\r\n<p class="p1"></p>\r\n<p class="p4" style="text-align: center;"><span class="s1"><b><i>Nighthawk keeps you moving when the job depends on it.</i></b></span></p>\r\n<p class="p1"></p>\r\n<p class="p1"><span class="s1"><b><i>Call us today </i></b>at<b><i> </i></b>1-855-429-5669 and our team will help you find the best tires for your application. </span></p>', 'DURA-FLEX Solid Tires for Skid Steer Loaders', '', 'publish', 'closed', 'closed', '', 'dura-flex-solid-tires-for-skid-steer-loaders', '', '', '2016-03-25 14:01:15', '2016-03-25 19:01:15', '', 724, 'http://nighthawktires.yourdevelopment.ws/?page_id=635', 0, 'page', '', 0),
(636, 1, '2016-02-25 06:02:44', '2016-02-25 12:02:44', 'Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. ', 'Tires', '', 'inherit', 'closed', 'closed', '', '635-revision-v1', '', '', '2016-02-25 06:02:44', '2016-02-25 12:02:44', '', 635, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/635-revision-v1/', 0, 'revision', '', 0),
(637, 1, '2016-02-25 06:03:26', '2016-02-25 12:03:26', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. \r\n\r\nAliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet.\r\n\r\nEtiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. \r\n\r\nNam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. ', 'Quote', '', 'publish', 'closed', 'closed', '', 'quote', '', '', '2016-02-25 06:03:26', '2016-02-25 12:03:26', '', 0, 'http://nighthawktires.yourdevelopment.ws/?page_id=637', 0, 'page', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(638, 1, '2016-02-25 06:03:26', '2016-02-25 12:03:26', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. \r\n\r\nAliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet.\r\n\r\nEtiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. \r\n\r\nNam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. ', 'Quote', '', 'inherit', 'closed', 'closed', '', '637-revision-v1', '', '', '2016-02-25 06:03:26', '2016-02-25 12:03:26', '', 637, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/637-revision-v1/', 0, 'revision', '', 0),
(639, 1, '2016-02-25 06:03:54', '2016-02-25 12:03:54', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet.\r\n\r\nEtiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. ', 'Dealer', '', 'trash', 'closed', 'closed', '', 'dealer', '', '', '2016-03-16 22:14:51', '2016-03-17 03:14:51', '', 0, 'http://nighthawktires.yourdevelopment.ws/?page_id=639', 0, 'page', '', 0),
(640, 1, '2016-02-25 06:03:54', '2016-02-25 12:03:54', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet.\r\n\r\nEtiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. ', 'Dealer', '', 'inherit', 'closed', 'closed', '', '639-revision-v1', '', '', '2016-02-25 06:03:54', '2016-02-25 12:03:54', '', 639, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/639-revision-v1/', 0, 'revision', '', 0),
(641, 1, '2016-02-25 06:04:18', '2016-02-25 12:04:18', '<p class="p1"><span class="s1">Nobody knows quality like Nighthawk.<span class="Apple-converted-space">  </span>Since 2010, we’ve been an industry leader in solid tires and tracks.</span></p>\r\n<p class="p1"><span class="s1">We’re committed to providing extraordinary value to our customers, and built our reputation on delivering products of superior quality and reliability.</span></p>\r\n<p class="p1"><span class="s1">We deliver on this commitment with </span><span class="s2"><b><i>The Nighthawk Advantage</i></b> </span><span class="s1">– our promise to you to always provide:</span></p>\r\n\r\n<ul>\r\n	<li class="li1"><span class="s1">exceptional quality, </span></li>\r\n	<li class="li1"><span class="s1">the industry’s leading warranty, and </span></li>\r\n	<li class="li1"><span class="s1">our “best value” guarantee.</span></li>\r\n</ul>\r\n<p class="p1"><span class="s1">Nighthawk understands how tire and track failures can bring work to a complete stop, resulting in higher costs and lower margins.<span class="Apple-converted-space">  </span>Our Dura-Flex®™ Solid Tires and Dura-Core®™Tracks are constructed from our proprietary rubber-compound to withstand all types of terrain and operating conditions.</span></p>\r\n<p class="p3" style="text-align: center;"><span class="s1"><b><i>Our goal is to eliminate your downtime.</i></b></span></p>\r\n<p class="p1"><span class="s1">Our team is available by phone at <b>1-855-429-5669 </b>to answer your questions and help you find the best product.</span></p>\r\n\r\n<h2 class="p1"><img class="size-medium wp-image-625 alignright" src="http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/02/Best-Value_-241x300.jpg" alt="Best-Value_" width="241" height="300" /></h2>\r\n<h2 class="p1">Steer Clear of Service Setbacks</h2>\r\n<p class="p1">We are constantly expanding our local distributor network to ensure our valuable customers have easy access to local service, support, and professional guidance.</p>\r\n<p class="p3"><span class="s1">In areas, where we do not have a local distributor, we are happy to go the extra mile and service our customers directly.</span></p>', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2016-03-25 15:46:13', '2016-03-25 20:46:13', '', 0, 'http://nighthawktires.yourdevelopment.ws/?page_id=641', 0, 'page', '', 0),
(642, 1, '2016-02-25 06:04:18', '2016-02-25 12:04:18', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. \r\n\r\nAliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet.\r\n\r\nEtiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. ', 'About', '', 'inherit', 'closed', 'closed', '', '641-revision-v1', '', '', '2016-02-25 06:04:18', '2016-02-25 12:04:18', '', 641, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/641-revision-v1/', 0, 'revision', '', 0),
(643, 1, '2016-02-25 06:04:38', '2016-02-25 12:04:38', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. \r\n\r\nAliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet.\r\n\r\nEtiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. \r\n\r\nNullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet.Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. ', 'About', '', 'inherit', 'closed', 'closed', '', '641-revision-v1', '', '', '2016-02-25 06:04:38', '2016-02-25 12:04:38', '', 641, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/641-revision-v1/', 0, 'revision', '', 0),
(644, 1, '2016-02-25 06:06:57', '2016-02-25 12:06:57', 'contact us on below mentioned details\r\nAddress : area,country-pincode.\r\nPhone: xx-xxx-xxxx\r\n\r\nNullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet.\r\n\r\n', 'Contact', '', 'trash', 'closed', 'closed', '', 'contact-2', '', '', '2016-03-16 21:58:17', '2016-03-17 02:58:17', '', 0, 'http://nighthawktires.yourdevelopment.ws/?page_id=644', 0, 'page', '', 0),
(645, 1, '2016-02-25 06:06:57', '2016-02-25 12:06:57', 'contact us on below mentioned details\r\nAddress : area,country-pincode.\r\nPhone: xx-xxx-xxxx\r\n\r\nNullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet.\r\n\r\n', 'Contact', '', 'inherit', 'closed', 'closed', '', '644-revision-v1', '', '', '2016-02-25 06:06:57', '2016-02-25 12:06:57', '', 644, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/644-revision-v1/', 0, 'revision', '', 0),
(646, 1, '2016-02-25 06:07:28', '2016-02-25 12:07:28', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-02-25 06:07:28', '2016-02-25 12:07:28', '', 0, 'http://nighthawktires.yourdevelopment.ws/?page_id=646', 0, 'page', '', 0),
(647, 1, '2016-02-25 06:07:28', '2016-02-25 12:07:28', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '646-revision-v1', '', '', '2016-02-25 06:07:28', '2016-02-25 12:07:28', '', 646, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/646-revision-v1/', 0, 'revision', '', 0),
(648, 1, '2016-02-25 06:10:28', '2016-02-25 12:10:28', ' ', '', '', 'publish', 'closed', 'closed', '', '648', '', '', '2016-03-26 01:09:29', '2016-03-26 06:09:29', '', 0, 'http://nighthawktires.yourdevelopment.ws/?p=648', 7, 'nav_menu_item', '', 0),
(650, 1, '2016-02-25 06:10:28', '2016-02-25 12:10:28', ' ', '', '', 'publish', 'closed', 'closed', '', '650', '', '', '2016-03-26 01:09:29', '2016-03-26 06:09:29', '', 0, 'http://nighthawktires.yourdevelopment.ws/?p=650', 5, 'nav_menu_item', '', 0),
(655, 1, '2016-02-25 06:21:10', '2016-02-25 12:21:10', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet.Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. ', 'Warranty', '', 'publish', 'closed', 'closed', '', 'warranty', '', '', '2016-02-25 06:21:10', '2016-02-25 12:21:10', '', 0, 'http://nighthawktires.yourdevelopment.ws/?page_id=655', 0, 'page', '', 0),
(656, 1, '2016-02-25 06:21:10', '2016-02-25 12:21:10', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet.Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. ', 'Warranty', '', 'inherit', 'closed', 'closed', '', '655-revision-v1', '', '', '2016-02-25 06:21:10', '2016-02-25 12:21:10', '', 655, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/655-revision-v1/', 0, 'revision', '', 0),
(657, 1, '2016-02-25 06:21:43', '2016-02-25 12:21:43', 'sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. \r\n\r\nAenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. ', 'Brochure', '', 'publish', 'closed', 'closed', '', 'brochure', '', '', '2016-02-25 06:21:43', '2016-02-25 12:21:43', '', 0, 'http://nighthawktires.yourdevelopment.ws/?page_id=657', 0, 'page', '', 0),
(658, 1, '2016-02-25 06:21:43', '2016-02-25 12:21:43', 'sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. \r\n\r\nAenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. ', 'Brochure', '', 'inherit', 'closed', 'closed', '', '657-revision-v1', '', '', '2016-02-25 06:21:43', '2016-02-25 12:21:43', '', 657, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/657-revision-v1/', 0, 'revision', '', 0),
(659, 1, '2016-02-25 06:22:32', '2016-02-25 12:22:32', 'Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. \r\nNullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. ', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2016-02-25 06:22:32', '2016-02-25 12:22:32', '', 0, 'http://nighthawktires.yourdevelopment.ws/?page_id=659', 0, 'page', '', 0),
(660, 1, '2016-02-25 06:22:32', '2016-02-25 12:22:32', 'Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. \r\nNullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. ', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '659-revision-v1', '', '', '2016-02-25 06:22:32', '2016-02-25 12:22:32', '', 659, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/659-revision-v1/', 0, 'revision', '', 0),
(661, 1, '2016-02-25 06:22:59', '2016-02-25 12:22:59', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. ', 'Terms of Service', '', 'publish', 'closed', 'closed', '', 'terms-of-service', '', '', '2016-02-25 06:22:59', '2016-02-25 12:22:59', '', 0, 'http://nighthawktires.yourdevelopment.ws/?page_id=661', 0, 'page', '', 0),
(662, 1, '2016-02-25 06:22:59', '2016-02-25 12:22:59', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. ', 'Terms of Service', '', 'inherit', 'closed', 'closed', '', '661-revision-v1', '', '', '2016-02-25 06:22:59', '2016-02-25 12:22:59', '', 661, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/661-revision-v1/', 0, 'revision', '', 0),
(663, 1, '2016-02-25 06:25:22', '2016-02-25 12:25:22', ' ', '', '', 'publish', 'closed', 'closed', '', '663', '', '', '2016-02-29 07:02:25', '2016-02-29 13:02:25', '', 0, 'http://nighthawktires.yourdevelopment.ws/?p=663', 4, 'nav_menu_item', '', 0),
(664, 1, '2016-02-25 06:25:22', '2016-02-25 12:25:22', ' ', '', '', 'publish', 'closed', 'closed', '', '664', '', '', '2016-02-29 07:02:24', '2016-02-29 13:02:24', '', 0, 'http://nighthawktires.yourdevelopment.ws/?p=664', 3, 'nav_menu_item', '', 0),
(665, 1, '2016-02-25 06:25:22', '2016-02-25 12:25:22', ' ', '', '', 'publish', 'closed', 'closed', '', '665', '', '', '2016-02-29 07:02:24', '2016-02-29 13:02:24', '', 0, 'http://nighthawktires.yourdevelopment.ws/?p=665', 2, 'nav_menu_item', '', 0),
(666, 1, '2016-02-25 06:25:21', '2016-02-25 12:25:21', ' ', '', '', 'publish', 'closed', 'closed', '', '666', '', '', '2016-02-29 07:02:24', '2016-02-29 13:02:24', '', 0, 'http://nighthawktires.yourdevelopment.ws/?p=666', 1, 'nav_menu_item', '', 0),
(667, 1, '2016-02-29 06:57:01', '2016-02-29 12:57:01', '', 'Sitemap', '', 'publish', 'closed', 'closed', '', 'sitemap', '', '', '2016-02-29 06:57:01', '2016-02-29 12:57:01', '', 0, 'http://nighthawktires.yourdevelopment.ws/?page_id=667', 0, 'page', '', 0),
(668, 1, '2016-02-29 06:57:01', '2016-02-29 12:57:01', '', 'Sitemap', '', 'inherit', 'closed', 'closed', '', '667-revision-v1', '', '', '2016-02-29 06:57:01', '2016-02-29 12:57:01', '', 667, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/667-revision-v1/', 0, 'revision', '', 0),
(669, 1, '2016-02-29 07:00:30', '2016-02-29 13:00:30', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://nighthawktires.stagingcloud.us/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-02-29 07:00:30', '2016-02-29 13:00:30', '', 2, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/2-revision-v1/', 0, 'revision', '', 0),
(670, 1, '2016-02-29 07:00:38', '2016-02-29 13:00:38', 'This is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages as you like and manage all of your content.\n\nThis is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages as you like and manage all of your content. This is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages as you like and manage all of your content inside of WordPress.\n\nThis is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages as you like and manage all of your content.\n\nThis is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages as you like and manage all of your content. This is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages as you like and manage all of your content inside of WordPress.\n\nThis is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages as you like and manage all of your content.', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2016-02-29 07:00:38', '2016-02-29 13:00:38', '', 31, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/31-revision-v1/', 0, 'revision', '', 0),
(671, 1, '2016-02-29 07:02:25', '2016-02-29 13:02:25', ' ', '', '', 'publish', 'closed', 'closed', '', '671', '', '', '2016-02-29 07:02:25', '2016-02-29 13:02:25', '', 0, 'http://nighthawktires.yourdevelopment.ws/?p=671', 5, 'nav_menu_item', '', 0),
(673, 1, '2016-03-07 02:15:18', '2016-03-07 08:15:18', '', 'nighthawktires-logo', '', 'inherit', 'open', 'closed', '', 'nighthawktires-logo', '', '', '2016-03-07 02:15:18', '2016-03-07 08:15:18', '', 0, 'http://nighthawktires.yourdevelopment.ws/wp-content/uploads/2016/03/nighthawktires-logo.png', 0, 'attachment', 'image/png', 0),
(674, 1, '2016-03-07 02:20:49', '2016-03-07 08:20:49', '', 'nighthawktires-logo-new', '', 'inherit', 'open', 'closed', '', 'nighthawktires-logo-new', '', '', '2016-03-07 02:20:49', '2016-03-07 08:20:49', '', 0, 'http://nighthawktires.yourdevelopment.ws/wp-content/uploads/2016/03/nighthawktires-logo-new.png', 0, 'attachment', 'image/png', 0),
(680, 1, '2016-03-08 04:14:21', '2016-03-08 10:14:21', '', 'nighthawktires-logo-new', '', 'inherit', 'open', 'closed', '', 'nighthawktires-logo-new-2', '', '', '2016-03-08 04:14:21', '2016-03-08 10:14:21', '', 0, 'http://nighthawktires.yourdevelopment.ws/wp-content/uploads/2016/03/nighthawktires-logo-new-1.png', 0, 'attachment', 'image/png', 0),
(686, 1, '2016-03-10 04:06:35', '2016-03-10 10:06:35', '', 'Banner_1-new', '', 'inherit', 'open', 'closed', '', 'banner_1-new', '', '', '2016-03-10 04:06:35', '2016-03-10 10:06:35', '', 0, 'http://nighthawktires.yourdevelopment.ws/wp-content/uploads/2016/03/Banner_1-new.jpg', 0, 'attachment', 'image/jpeg', 0),
(687, 1, '2016-03-10 04:07:36', '2016-03-10 10:07:36', '', 'Banner_2-new', '', 'inherit', 'open', 'closed', '', 'banner_2-new', '', '', '2016-03-10 04:07:36', '2016-03-10 10:07:36', '', 0, 'http://nighthawktires.yourdevelopment.ws/wp-content/uploads/2016/03/Banner_2-new.jpg', 0, 'attachment', 'image/jpeg', 0),
(688, 1, '2016-03-10 04:14:52', '2016-03-10 10:14:52', 'This is an example of a WordPress page, you could edit this to put information so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your content inside of WordPress.\r\n\r\n<h4>Reason #1 To Buy This Theme</h4>\r\n\r\nThis is an example of a WordPress page, you could edit this to put information so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your content inside of WordPress. This is an example of a WordPress page, you could edit this to put information so readers know where you are coming from. You can create as many pages as you like and manage all of your content inside of WordPress.\r\n\r\n<h4>Reason #2 To Buy This Theme</h4>\r\n\r\nThis is an example of a WordPress page, you could edit this to put information so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your content inside of WordPress. This is an example of a WordPress page, you could edit this to put information so readers know where you are coming from. You can create as many pages as you like and manage all of your content inside of WordPress.\r\n\r\n<h4>Reason #3 To Buy This Theme</h4>\r\n\r\nThis is an example of a WordPress page, you could edit this to put information so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your content inside of WordPress. This is an example of a WordPress page, you could edit this to put information so readers know where you are coming from. You can create as many pages as you like and manage all of your content inside of WordPress.\r\n\r\n<a class="button" href="http://my.studiopress.com/themes/altitude/">Click here to purchase this theme!</a>', 'Landing Page', '', 'inherit', 'closed', 'closed', '', '546-revision-v1', '', '', '2016-03-10 04:14:52', '2016-03-10 10:14:52', '', 546, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/546-revision-v1/', 0, 'revision', '', 0),
(689, 1, '2016-03-15 10:58:15', '2016-03-15 15:58:15', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2016-03-15 10:58:15', '2016-03-15 15:58:15', '', 0, 'http://nighthawktires.yourdevelopment.ws/shop/', 0, 'page', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(690, 1, '2016-03-15 10:58:16', '2016-03-15 15:58:16', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2016-03-15 10:58:16', '2016-03-15 15:58:16', '', 0, 'http://nighthawktires.yourdevelopment.ws/cart/', 0, 'page', '', 0),
(691, 1, '2016-03-15 10:58:18', '2016-03-15 15:58:18', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2016-03-15 10:58:18', '2016-03-15 15:58:18', '', 0, 'http://nighthawktires.yourdevelopment.ws/checkout/', 0, 'page', '', 0),
(692, 1, '2016-03-15 10:58:19', '2016-03-15 15:58:19', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2016-03-15 10:58:19', '2016-03-15 15:58:19', '', 0, 'http://nighthawktires.yourdevelopment.ws/my-account/', 0, 'page', '', 0),
(693, 1, '2016-03-15 11:21:00', '2016-03-15 16:21:00', 'Replaces Pneumatic Tire: 12x16.5\r\nType: Solid Skid Steer Tire\r\nTread Pattern: All-Purpose\r\nSize: 33x12-16\r\nTread Depth (inch): 2.28\r\nTread Depth at Safety Line (inch): 3.00\r\nDiameter (inch): 32.3\r\nWidth (inch): 11.30\r\nRubber Thickness (inch): 8.15\r\nWeight (lbs): 275.0\r\nMax Load Capacity (lbs): 8270\r\nWheel Width (inch): 8.0\r\nWheel Diameter (inch): 16\r\nWheel Backspacing (inch): 5.7\r\nBolt Holes: 8', '33x12-16 DURA-FLEX® Premium', '', 'publish', 'open', 'closed', '', '33x12-16-dura-flex-premium', '', '', '2016-03-15 11:21:00', '2016-03-15 16:21:00', '', 0, 'http://nighthawktires.yourdevelopment.ws/?post_type=product&#038;p=693', 0, 'product', '', 0),
(695, 1, '2016-03-25 13:55:46', '2016-03-25 18:55:46', '<p class="p1"><span class="s1">Nighthawk Dura-Flex ®™ solid tires are built strong for maximum performance in all types of terrain and operating conditions. </span></p>\n<p class="p1"><span class="s1">We combine superior technology, expert manufacturing, and premium materials to create a product you can trust. </span></p>\n<p class="p1"><span class="s1">Our aperture design is specifically engineered for heavy loads, providing a smooth, cushioned ride without the bounce associated with pneumatic or form-filled tires.<span class="Apple-converted-space">  </span>This unique design reduces operator fatigue and offers greater stability control.</span></p>\n<p class="p1"><span class="s1"><b>Nighthawk Dura-Flex®™ </b>solid tires are the ideal choice for skid steer loaders. </span></p>\n<p class="p4"><span class="s1"><b><i>Nighthawk keeps you moving when the job depends on it.</i></b></span></p>\n<p class="p1"><span class="s1"><b><i>Call us today </i></b>at<b><i> </i></b>1-855-429-5669 and our team will help you find the best tires for your application. </span></p>', 'DURA-FLEX Solid Tires for Skid Steer Loaders', '', 'inherit', 'closed', 'closed', '', '635-autosave-v1', '', '', '2016-03-25 13:55:46', '2016-03-25 18:55:46', '', 635, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/635-autosave-v1/', 0, 'revision', '', 0),
(696, 1, '2016-03-15 11:30:16', '2016-03-15 16:30:16', 'Nighthawk Dura-Flex ®™ solid tires are built strong for maximum performance in all types of terrain and operating conditions. \r\n\r\nWe combine superior technology, expert manufacturing, and premium materials to create a product you can trust. \r\n\r\nOur aperture design is specifically engineered for heavy loads, providing a smooth, cushioned ride without the bounce associated with pneumatic or form-filled tires.  This unique design reduces operator fatigue and offers greater stability control.\r\n\r\nNighthawk Dura-Flex®™ solid tires are the ideal choice for skid steer loaders. \r\n', 'DURA-FLEX Solid Skid Steer Tires', '', 'inherit', 'closed', 'closed', '', '635-revision-v1', '', '', '2016-03-15 11:30:16', '2016-03-15 16:30:16', '', 635, 'http://nighthawktires.yourdevelopment.ws/blog/uncategorized/635-revision-v1/', 0, 'revision', '', 0),
(702, 1, '2016-03-16 05:06:43', '2016-03-16 10:06:43', 'Hi nighthawktiresadmin,\n\nThis notice confirms that your password was changed on Nighthawk Tires.\n\nIf you did not change your password, please contact the Site Administrator at\njpeterson@develare.com\n\nThis email has been sent to jpeterson@develare.com\n\nRegards,\nAll at Nighthawk Tires\nhttp://nighthawktires.stagingcloud.us', '[Nighthawk Tires] Notice of Password Change', 'Connection refused', 'private', 'closed', 'closed', '', 'nighthawk-tires-notice-of-password-change-3', '', '', '2016-03-16 05:06:43', '2016-03-16 10:06:43', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/postman_sent_mail/nighthawk-tires-notice-of-password-change-3/', 0, 'postman_sent_mail', '', 0),
(703, 0, '2016-03-16 10:41:43', '2016-03-16 15:41:43', 'Someone has requested a password reset for the following account:\r\n\r\nhttp://nighthawktires.stagingcloud.us/\r\n\r\nUsername: nighthawktiresadmin\r\n\r\nIf this was a mistake, just ignore this email and nothing will happen.\r\n\r\nTo reset your password, visit the following address:\r\n\r\n\r\n', '[Nighthawk Tires] Password Reset', 'Connection refused', 'private', 'closed', 'closed', '', 'nighthawk-tires-password-reset', '', '', '2016-03-16 10:41:43', '2016-03-16 15:41:43', '', 0, 'http://nighthawktires.yourdevelopment.ws/blog/postman_sent_mail/nighthawk-tires-password-reset/', 0, 'postman_sent_mail', '', 0),
(705, 1, '2016-03-16 16:41:08', '2016-03-16 21:41:08', 'Nighthawk Dura-Flex ®™ solid tires are built strong for maximum performance in all types of terrain and operating conditions.\r\n\r\nWe combine superior technology, expert manufacturing, and premium materials to create a product you can trust.\r\n\r\nOur aperture design is specifically engineered for heavy loads, providing a smooth, cushioned ride without the bounce associated with pneumatic or form-filled tires. This unique design reduces operator fatigue and offers greater stability control.\r\n\r\nNighthawk Dura-Flex®™ solid tires are the ideal choice for skid steer loaders.', 'DURA-FLEX Solid Skid Steer Tires', '', 'inherit', 'closed', 'closed', '', '635-revision-v1', '', '', '2016-03-16 16:41:08', '2016-03-16 21:41:08', '', 635, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/635-revision-v1/', 0, 'revision', '', 0),
(706, 1, '2016-03-16 16:49:34', '2016-03-16 21:49:34', 'Nighthawk Dura-Core®™ rubber tracks are built strong for maximum performance in all types of terrain and operating conditions. We combine superior technology, expert manufacturing, and premium materials to create a product you can trust.\r\n\r\nOur tracks are the ultimate in product performance, reliability, and value; making Nighthawk Dura-Core®™ rubber tracks the ideal choice for compact track and multi-terrain loaders.\r\n\r\nNighthawk keeps you moving when the job depends on it.\r\n\r\nCall us today at 1-855-429-5669 and our team will help you find the best tracks for your application.', 'DURA-CORE Rubber Tracks', '', 'inherit', 'closed', 'closed', '', '632-revision-v1', '', '', '2016-03-16 16:49:34', '2016-03-16 21:49:34', '', 632, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/632-revision-v1/', 0, 'revision', '', 0),
(708, 1, '2016-03-16 21:57:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-03-16 21:57:07', '0000-00-00 00:00:00', '', 0, 'http://nighthawktires.stagingcloud.us/?p=708', 1, 'nav_menu_item', '', 0),
(709, 1, '2016-03-16 21:57:29', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-03-16 21:57:29', '0000-00-00 00:00:00', '', 0, 'http://nighthawktires.stagingcloud.us/?p=709', 1, 'nav_menu_item', '', 0),
(710, 1, '2016-03-16 21:57:59', '2016-03-17 02:57:59', ' ', '', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2016-03-26 01:09:29', '2016-03-26 06:09:29', '', 0, 'http://nighthawktires.stagingcloud.us/?p=710', 6, 'nav_menu_item', '', 0),
(711, 1, '2016-03-16 21:58:31', '2016-03-17 02:58:31', 'Please fill out the form below and I will reply within 24 hours.\r\n\r\n[ninja_forms_display_form id=1]\r\n\r\n* This contact form was built with an open source plugin called <a href="http://ninjaforms.com/">Ninja Forms</a> which is free to use and comes highly recommend by me.', 'Contact', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2016-03-16 21:58:31', '2016-03-17 02:58:31', '', 83, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/83-revision-v1/', 0, 'revision', '', 0),
(713, 1, '2016-03-17 01:59:04', '2016-03-17 06:59:04', 'Please fill out the form below and I will reply within 24 hours.\r\n\r\n[gravityform id="1" title="true" description="true"]\r\n\r\n* This contact form was built with an open source plugin called <a href="http://ninjaforms.com/">Ninja Forms</a> which is free to use and comes highly recommend by me.', 'Contact', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2016-03-17 01:59:04', '2016-03-17 06:59:04', '', 83, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/83-revision-v1/', 0, 'revision', '', 0),
(714, 1, '2016-03-17 02:01:27', '2016-03-17 07:01:27', 'Please fill out the form below and I will reply within 24 hours.\r\n\r\n[gravityform id="2" title="true" description="true"]\r\n\r\n* This contact form was built with an open source plugin called <a href="http://ninjaforms.com/">Ninja Forms</a> which is free to use and comes highly recommend by me.', 'Contact', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2016-03-17 02:01:27', '2016-03-17 07:01:27', '', 83, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/83-revision-v1/', 0, 'revision', '', 0),
(715, 1, '2016-03-17 02:17:12', '2016-03-17 07:17:12', 'Please fill out the form below and I will reply within 24 hours.\r\n\r\n[gravityform id="2" title="false" description="true"]\r\n\r\n* This contact form was built with an open source plugin called <a href="http://ninjaforms.com/">Ninja Forms</a> which is free to use and comes highly recommend by me.', 'Contact', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2016-03-17 02:17:12', '2016-03-17 07:17:12', '', 83, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/83-revision-v1/', 0, 'revision', '', 0),
(716, 1, '2016-03-17 02:24:02', '2016-03-17 07:24:02', 'Please fill out the form below and I will reply within 24 hours.\n\n[gravityform id="2" title="false" description="true"]\n\n* This contact form was built with an open source plugin called gravityform which is free to use and comes highly recommend by me.', 'Contact', '', 'inherit', 'closed', 'closed', '', '83-autosave-v1', '', '', '2016-03-17 02:24:02', '2016-03-17 07:24:02', '', 83, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/83-autosave-v1/', 0, 'revision', '', 0),
(717, 1, '2016-03-17 02:24:26', '2016-03-17 07:24:26', 'Please fill out the form below and I will reply within 24 hours.\r\n\r\n[gravityform id="2" title="false" description="true"]\r\n\r\n&nbsp;', 'Contact', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2016-03-17 02:24:26', '2016-03-17 07:24:26', '', 83, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/83-revision-v1/', 0, 'revision', '', 0),
(718, 1, '2016-03-17 02:24:58', '2016-03-17 07:24:58', 'Please fill out the form below and I will reply within 24 hours.\r\n\r\n[gravityform id="1" title="false" description="true"]', 'Quote', '', 'publish', 'closed', 'closed', '', 'quote-2', '', '', '2016-03-17 02:24:58', '2016-03-17 07:24:58', '', 0, 'http://nighthawktires.stagingcloud.us/?page_id=718', 0, 'page', '', 0),
(719, 1, '2016-03-17 02:24:58', '2016-03-17 07:24:58', 'Please fill out the form below and I will reply within 24 hours.\r\n\r\n[gravityform id="1" title="false" description="true"]', 'Quote', '', 'inherit', 'closed', 'closed', '', '718-revision-v1', '', '', '2016-03-17 02:24:58', '2016-03-17 07:24:58', '', 718, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/718-revision-v1/', 0, 'revision', '', 0),
(721, 1, '2016-03-17 03:11:36', '2016-03-17 08:11:36', '', 'nighthawktires-logo-final-2', '', 'inherit', 'open', 'closed', '', 'nighthawktires-logo-final-2-2', '', '', '2016-03-17 03:11:36', '2016-03-17 08:11:36', '', 0, 'http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/03/nighthawktires-logo-final-2-1.png', 0, 'attachment', 'image/png', 0),
(722, 1, '2016-03-17 03:12:10', '2016-03-17 08:12:10', '', 'cropped-nighthawktires-logo-final-2-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-nighthawktires-logo-final-2-1-png', '', '', '2016-03-17 03:12:10', '2016-03-17 08:12:10', '', 0, 'http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/03/cropped-nighthawktires-logo-final-2-1.png', 0, 'attachment', 'image/png', 0),
(723, 1, '2016-03-24 14:06:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-03-24 14:06:55', '0000-00-00 00:00:00', '', 0, 'http://nighthawktires.stagingcloud.us/?p=723', 0, 'post', '', 0),
(724, 1, '2016-03-24 14:11:34', '2016-03-24 19:11:34', '', 'Solid Skid Steer Tires', '', 'publish', 'closed', 'closed', '', 'solid-skid-steer-tires', '', '', '2016-03-24 14:11:34', '2016-03-24 19:11:34', '', 0, 'http://nighthawktires.stagingcloud.us/?page_id=724', 0, 'page', '', 0),
(725, 1, '2016-03-24 14:11:34', '2016-03-24 19:11:34', '', 'Solid Skid Steer Tires', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2016-03-24 14:11:34', '2016-03-24 19:11:34', '', 724, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/724-revision-v1/', 0, 'revision', '', 0),
(726, 1, '2016-03-24 14:20:17', '2016-03-24 19:20:17', '<p class="p1"><span class="s1"><b>Nighthawk Dura-Flex®™ </b>solid tires are built strong for maximum performance in all types of terrain and operating conditions. </span></p>\r\n<p class="p1"><span class="s1">We combine superior technology, expert manufacturing, and premium materials to create a product you can trust. </span></p>\r\n<p class="p1"><span class="s1">Our aperture design is specifically engineered for heavy loads, providing a smooth, cushioned ride without the bounce associated with foam-filled tires.<span class="Apple-converted-space">  </span>This unique design reduces operator fatigue and offers greater stability control. </span></p>\r\n<p class="p1"><span class="s1"><b>Nighthawk Dura-Flex®™</b> solid tires are the ideal choice for telehandlers, aerial work platforms, rough terrain forklifts, and boom lifts. </span></p>\r\n<p class="p4" style="text-align: center;"><span class="s1"><b><i>Nighthawk keeps you moving when the job depends on it.</i></b></span></p>\r\n<p class="p1"><span class="s1"><b><i>Call us today </i></b>at<b><i> </i></b>1-855-429-5669 and our team will help you find the best tires for your application. </span></p>', 'DURA-FLEX Solid Tires for Arial Work Platform / Telehandler', '', 'publish', 'closed', 'closed', '', 'dura-flex-solid-tires-for-arial-work-platform-telehandler', '', '', '2016-03-25 14:41:53', '2016-03-25 19:41:53', '', 724, 'http://nighthawktires.stagingcloud.us/?page_id=726', 0, 'page', '', 0),
(727, 1, '2016-03-24 14:20:02', '2016-03-24 19:20:02', '<p class="p1"><span class="s1"><b>Nighthawk Dura-Flex®™ </b>solid tires are built strong for maximum performance in all types of terrain and operating conditions.</span></p>\r\n<p class="p1"><span class="s1">We combine superior technology, expert manufacturing, and premium materials to create a product you can trust.</span></p>\r\n<p class="p1"><span class="s1">Our aperture design is specifically engineered for heavy loads, providing a smooth, cushioned ride without the bounce associated with foam-filled tires.<span class="Apple-converted-space">  </span>This unique design reduces operator fatigue and offers greater stability control.</span></p>\r\n<p class="p1"><span class="s1"><b>Nighthawk Dura-Flex®™</b> solid tires are the ideal choice for telehandlers, aerial work platforms, rough terrain forklifts, and boom lifts. </span></p>\r\n<p class="p4"><span class="s1"><b><i>Nighthawk keeps you moving when the job depends on it.</i></b></span></p>\r\n<p class="p1"><span class="s1"><b><i>Call us today </i></b>at<b><i> </i></b>1-855-429-5669 and our team will help you find the best tires for your application. </span></p>', 'DURA-FLEX Solid Tires for Arial Work Platform / Telehandler', '', 'inherit', 'closed', 'closed', '', '726-revision-v1', '', '', '2016-03-24 14:20:02', '2016-03-24 19:20:02', '', 726, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/726-revision-v1/', 0, 'revision', '', 0),
(728, 1, '2016-03-24 15:17:38', '2016-03-24 20:17:38', '', 'Tires', '', 'publish', 'closed', 'closed', '', 'tires', '', '', '2016-03-26 01:09:29', '2016-03-26 06:09:29', '', 0, 'http://nighthawktires.stagingcloud.us/?p=728', 3, 'nav_menu_item', '', 0),
(729, 1, '2016-03-24 15:25:15', '2016-03-24 20:25:15', 'Nighthawk Dura-Flex ®™ solid tires are built strong for maximum performance in all types of terrain and operating conditions.\r\n\r\nWe combine superior technology, expert manufacturing, and premium materials to create a product you can trust.\r\n\r\nOur aperture design is specifically engineered for heavy loads, providing a smooth, cushioned ride without the bounce associated with pneumatic or form-filled tires. This unique design reduces operator fatigue and offers greater stability control.\r\n\r\nNighthawk Dura-Flex®™ solid tires are the ideal choice for skid steer loaders.', 'DURA-FLEX Solid Tires for Skid Steer Loaders', '', 'inherit', 'closed', 'closed', '', '635-revision-v1', '', '', '2016-03-24 15:25:15', '2016-03-24 20:25:15', '', 635, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/635-revision-v1/', 0, 'revision', '', 0),
(730, 1, '2016-03-24 22:12:22', '2016-03-25 03:12:22', '', 'Replace Pneumatic Tire 12x16.5', '', 'publish', 'closed', 'closed', '', 'replace-pneumatic-tire-12x16-5', '', '', '2016-03-26 01:01:35', '2016-03-26 06:01:35', '', 0, 'http://nighthawktires.stagingcloud.us/?post_type=accordion_shortcode&#038;p=730', 0, 'accordion_shortcode', '', 0),
(731, 1, '2016-03-24 22:44:00', '2016-03-25 03:44:00', '', 'Replace Pneumatic Tire 10x16.5', '', 'publish', 'closed', 'closed', '', 'replace-pneumatic-tire-10x16-5', '', '', '2016-03-26 00:59:40', '2016-03-26 05:59:40', '', 0, 'http://nighthawktires.stagingcloud.us/?post_type=accordion_shortcode&#038;p=731', 0, 'accordion_shortcode', '', 0),
(732, 1, '2016-03-25 10:19:08', '2016-03-25 15:19:08', '', 'Solid Skid Steer Tires', '', 'inherit', 'open', 'closed', '', 'solid-skid-steer-tires-landscape', '', '', '2016-03-25 10:19:18', '2016-03-25 15:19:18', '', 0, 'http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/03/solid-skid-steer-tires-landscape.jpg', 0, 'attachment', 'image/jpeg', 0),
(733, 1, '2016-03-25 10:30:39', '2016-03-25 15:30:39', '', 'Solid Skid Steer Tires', '', 'inherit', 'open', 'closed', '', 'solid-skid-steer-tires-740x416', '', '', '2016-03-25 10:30:50', '2016-03-25 15:30:50', '', 0, 'http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/03/solid-skid-steer-tires-740x416.jpg', 0, 'attachment', 'image/jpeg', 0),
(735, 1, '2016-03-25 11:48:45', '2016-03-25 16:48:45', '', 'Solid Skid Steer Tires', '', 'inherit', 'open', 'closed', '', 'solid-skid-steer-tires-300x300', '', '', '2016-03-25 11:48:53', '2016-03-25 16:48:53', '', 635, 'http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/02/solid-skid-steer-tires-300x300.jpg', 0, 'attachment', 'image/jpeg', 0),
(736, 1, '2016-03-25 13:47:22', '2016-03-25 18:47:22', 'Nighthawk Dura-Flex ®™ solid tires are built strong for maximum performance in all types of terrain and operating conditions.\r\n\r\nWe combine superior technology, expert manufacturing, and premium materials to create a product you can trust.\r\n\r\nOur aperture design is specifically engineered for heavy loads, providing a smooth, cushioned ride without the bounce associated with pneumatic or form-filled tires. This unique design reduces operator fatigue and offers greater stability control.\r\n\r\n<span class="s1"><b>Nighthawk Dura-Flex®™ </b>solid tires are the ideal choice for skid steer loaders. </span>\r\n<p class="p3" style="text-align: center;"><span class="s1"><b><i>Nighthawk keeps you moving when the job depends on it.</i></b></span></p>\r\n<p class="p1"><span class="s1"><b><i>Call us today </i></b>at<b><i> </i></b>1-855-429-5669 and our team will help you find the best tires for your application. </span></p>', 'DURA-FLEX Solid Tires for Skid Steer Loaders', '', 'inherit', 'closed', 'closed', '', '635-revision-v1', '', '', '2016-03-25 13:47:22', '2016-03-25 18:47:22', '', 635, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/635-revision-v1/', 0, 'revision', '', 0),
(737, 1, '2016-03-25 13:56:07', '2016-03-25 18:56:07', '<p class="p1"><span class="s1">Nighthawk Dura-Flex ®™ solid tires are built strong for maximum performance in all types of terrain and operating conditions. </span></p>\r\n<p class="p1"><span class="s1">We combine superior technology, expert manufacturing, and premium materials to create a product you can trust. </span></p>\r\n<p class="p1"><span class="s1">Our aperture design is specifically engineered for heavy loads, providing a smooth, cushioned ride without the bounce associated with pneumatic or form-filled tires.<span class="Apple-converted-space">  </span>This unique design reduces operator fatigue and offers greater stability control.</span></p>\r\n<p class="p1"><span class="s1"><b>Nighthawk Dura-Flex®™ </b>solid tires are the ideal choice for skid steer loaders. </span></p>\r\n<p class="p4" style="text-align: center;"><span class="s1"><b><i>Nighthawk keeps you moving when the job depends on it.</i></b></span></p>\r\n<p class="p1"><span class="s1"><b><i>Call us today </i></b>at<b><i> </i></b>1-855-429-5669 and our team will help you find the best tires for your application. </span></p>', 'DURA-FLEX Solid Tires for Skid Steer Loaders', '', 'inherit', 'closed', 'closed', '', '635-revision-v1', '', '', '2016-03-25 13:56:07', '2016-03-25 18:56:07', '', 635, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/635-revision-v1/', 0, 'revision', '', 0),
(738, 1, '2016-03-25 13:56:54', '2016-03-25 18:56:54', '<p class="p1"><span class="s1">Nighthawk Dura-Flex ®™ solid tires are built strong for maximum performance in all types of terrain and operating conditions.</span></p>\r\n<p class="p1"><span class="s1">We combine superior technology, expert manufacturing, and premium materials to create a product you can trust.</span></p>\r\n<p class="p1"><span class="s1">Our aperture design is specifically engineered for heavy loads, providing a smooth, cushioned ride without the bounce associated with pneumatic or form-filled tires.<span class="Apple-converted-space">  </span>This unique design reduces operator fatigue and offers greater stability control.</span></p>\r\n<p class="p1"><span class="s1"><b>Nighthawk Dura-Flex®™ </b>solid tires are the ideal choice for skid steer loaders. </span></p>\r\n<p class="p4" style="text-align: center;"><span class="s1"><b><i>Nighthawk keeps you moving when the job depends on it.</i></b></span></p>\r\n<p class="p1"><span class="s1"><b><i>Call us today </i></b>at<b><i> </i></b>1-855-429-5669 and our team will help you find the best tires for your application. </span></p>', 'DURA-FLEX Solid Tires for Skid Steer Loaders', '', 'inherit', 'closed', 'closed', '', '635-revision-v1', '', '', '2016-03-25 13:56:54', '2016-03-25 18:56:54', '', 635, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/635-revision-v1/', 0, 'revision', '', 0),
(739, 1, '2016-03-25 14:01:15', '2016-03-25 19:01:15', '<p class="p1"><span class="s1">Nighthawk Dura-Flex ®™ solid tires are built strong for maximum performance in all types of terrain and operating conditions.</span></p>\r\n<p class="p1"><span class="s1">We combine superior technology, expert manufacturing, and premium materials to create a product you can trust.</span></p>\r\n<p class="p1"><span class="s1">Our aperture design is specifically engineered for heavy loads, providing a smooth, cushioned ride without the bounce associated with pneumatic or form-filled tires.<span class="Apple-converted-space">  </span>This unique design reduces operator fatigue and offers greater stability control.</span></p>\r\n<p class="p1"><span class="s1"><b>Nighthawk Dura-Flex®™ </b>solid tires are the ideal choice for skid steer loaders.</span></p>\r\n<p class="p1"></p>\r\n<p class="p4" style="text-align: center;"><span class="s1"><b><i>Nighthawk keeps you moving when the job depends on it.</i></b></span></p>\r\n<p class="p1"></p>\r\n<p class="p1"><span class="s1"><b><i>Call us today </i></b>at<b><i> </i></b>1-855-429-5669 and our team will help you find the best tires for your application. </span></p>', 'DURA-FLEX Solid Tires for Skid Steer Loaders', '', 'inherit', 'closed', 'closed', '', '635-revision-v1', '', '', '2016-03-25 14:01:15', '2016-03-25 19:01:15', '', 635, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/635-revision-v1/', 0, 'revision', '', 0),
(740, 1, '2016-03-25 14:06:59', '2016-03-25 19:06:59', '<p class="p1"><span class="s1"><b>Nighthawk Dura-Flex®™ </b>solid tires are built strong for maximum performance in all types of terrain and operating conditions. </span></p>\n<p class="p1"><span class="s1">We combine superior technology, expert manufacturing, and premium materials to create a product you can trust. </span></p>\n<p class="p1"><span class="s1">Our aperture design is specifically engineered for heavy loads, providing a smooth, cushioned ride without the bounce associated with foam-filled tires.<span class="Apple-converted-space">  </span>This unique design reduces operator fatigue and offers greater stability control. </span></p>\n<p class="p1"><span class="s1"><b>Nighthawk Dura-Flex®™</b> solid tires are the ideal choice for telehandlers, aerial work platforms, rough terrain forklifts, and boom lifts. </span></p>\n<p class="p4" style="text-align: center;"><span class="s1"><b><i>Nighthawk keeps you moving when the job depends on it.</i></b></span></p>\n<p class="p1"><span class="s1"><b><i>Call us today </i></b>at<b><i> </i></b>1-855-429-5669 and our team will help you find the best tires for your application. </span></p>', 'DURA-FLEX Solid Tires for Arial Work Platform / Telehandler', '', 'inherit', 'closed', 'closed', '', '726-autosave-v1', '', '', '2016-03-25 14:06:59', '2016-03-25 19:06:59', '', 726, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/726-autosave-v1/', 0, 'revision', '', 0),
(741, 1, '2016-03-25 14:07:04', '2016-03-25 19:07:04', '<p class="p1"><span class="s1"><b>Nighthawk Dura-Flex®™ </b>solid tires are built strong for maximum performance in all types of terrain and operating conditions. </span></p>\r\n<p class="p1"><span class="s1">We combine superior technology, expert manufacturing, and premium materials to create a product you can trust. </span></p>\r\n<p class="p1"><span class="s1">Our aperture design is specifically engineered for heavy loads, providing a smooth, cushioned ride without the bounce associated with foam-filled tires.<span class="Apple-converted-space">  </span>This unique design reduces operator fatigue and offers greater stability control. </span></p>\r\n<p class="p1"><span class="s1"><b>Nighthawk Dura-Flex®™</b> solid tires are the ideal choice for telehandlers, aerial work platforms, rough terrain forklifts, and boom lifts. </span></p>\r\n<p class="p4" style="text-align: center;"><span class="s1"><b><i>Nighthawk keeps you moving when the job depends on it.</i></b></span></p>\r\n<p class="p1"><span class="s1"><b><i>Call us today </i></b>at<b><i> </i></b>1-855-429-5669 and our team will help you find the best tires for your application. </span></p>', 'DURA-FLEX Solid Tires for Arial Work Platform / Telehandler', '', 'inherit', 'closed', 'closed', '', '726-revision-v1', '', '', '2016-03-25 14:07:04', '2016-03-25 19:07:04', '', 726, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/726-revision-v1/', 0, 'revision', '', 0),
(742, 1, '2016-03-25 14:36:30', '2016-03-25 19:36:30', '', 'Solid Aerial Work Platform Telehandler Tires', '', 'inherit', 'open', 'closed', '', 'solid-aerial-work-platform-telehandler-tires-740x416', '', '', '2016-03-25 14:36:57', '2016-03-25 19:36:57', '', 0, 'http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/03/solid-aerial-work-platform-telehandler-tires-740x416.jpg', 0, 'attachment', 'image/jpeg', 0),
(743, 1, '2016-03-25 14:41:28', '2016-03-25 19:41:28', '', 'Solid Aerial Work Platform Telehandler Tires', '', 'inherit', 'open', 'closed', '', 'solid-aerial-work-platform-telehandler-tires-300x300', '', '', '2016-03-25 14:41:51', '2016-03-25 19:41:51', '', 726, 'http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/03/solid-aerial-work-platform-telehandler-tires-300x300.jpg', 0, 'attachment', 'image/jpeg', 0),
(744, 1, '2016-03-25 15:01:51', '2016-03-25 20:01:51', '', 'Aftermarket Rubber Tracks', '', 'inherit', 'open', 'closed', '', 'aftermarket-rubber-tracks-740x416', '', '', '2016-03-25 15:02:04', '2016-03-25 20:02:04', '', 0, 'http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/03/aftermarket-rubber-tracks-740x416.jpg', 0, 'attachment', 'image/jpeg', 0),
(745, 1, '2016-03-25 15:10:49', '2016-03-25 20:10:49', '<p class="p1"><span class="s1">Nighthawk Dura-Core®™ rubber tracks are built strong for maximum performance in all types of terrain and operating conditions.<span class="Apple-converted-space">  </span>We combine superior technology, expert manufacturing, and premium materials to create a product you can trust. </span></p>\r\n<p class="p1"><span class="s1">Our tracks are the ultimate in product performance, reliability, and value; making Nighthawk Dura-Core®™ rubber tracks the ideal choice for compact track and multi-terrain loaders.</span></p>\r\n\r\n<blockquote>\r\n<p class="p3" style="text-align: left;"><span class="s1">Nighthawk keeps you moving when the job depends on it.</span></p>\r\n</blockquote>\r\n<p class="p1"><span class="s1"><b><i>Call us today </i></b>at<b><i> </i></b>1-855-429-5669 and our team will help you find the best tracks for your application. </span></p>', 'DURA-CORE®™ Rubber Tracks for Compact Track Loaders', '', 'inherit', 'closed', 'closed', '', '632-autosave-v1', '', '', '2016-03-25 15:10:49', '2016-03-25 20:10:49', '', 632, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/632-autosave-v1/', 0, 'revision', '', 0),
(746, 1, '2016-03-25 15:05:05', '2016-03-25 20:05:05', '<p class="p1"><span class="s1">Nighthawk Dura-Core®™ rubber tracks are built strong for maximum performance in all types of terrain and operating conditions.<span class="Apple-converted-space">  </span>We combine superior technology, expert manufacturing, and premium materials to create a product you can trust. </span></p>\r\n<p class="p1"><span class="s1">Our tracks are the ultimate in product performance, reliability, and value; making Nighthawk Dura-Core®™ rubber tracks the ideal choice for compact track and multi-terrain loaders.</span></p>\r\n<p class="p3" style="text-align: center;"><span class="s1"><b><i>Nighthawk keeps you moving when the job depends on it.</i></b></span></p>\r\n<p class="p1"><span class="s1"><b><i>Call us today </i></b>at<b><i> </i></b>1-855-429-5669 and our team will help you find the best tracks for your application. </span></p>', 'DURA-CORE®™ Rubber Tracks for Compact Track Loaders', '', 'inherit', 'closed', 'closed', '', '632-revision-v1', '', '', '2016-03-25 15:05:05', '2016-03-25 20:05:05', '', 632, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/632-revision-v1/', 0, 'revision', '', 0),
(747, 1, '2016-03-25 15:11:09', '2016-03-25 20:11:09', '<p class="p1"><span class="s1">Nighthawk Dura-Core®™ rubber tracks are built strong for maximum performance in all types of terrain and operating conditions.<span class="Apple-converted-space">  </span>We combine superior technology, expert manufacturing, and premium materials to create a product you can trust. </span></p>\r\n<p class="p1"><span class="s1">Our tracks are the ultimate in product performance, reliability, and value; making Nighthawk Dura-Core®™ rubber tracks the ideal choice for compact track and multi-terrain loaders.</span></p>\r\n<p class="p3" style="text-align: center;"><em><strong><span class="s1">Nighthawk keeps you moving when the job depends on it.</span></strong></em></p>\r\n<p class="p1"><span class="s1"><b><i>Call us today </i></b>at<b><i> </i></b>1-855-429-5669 and our team will help you find the best tracks for your application. </span></p>', 'DURA-CORE®™ Rubber Tracks for Compact Track Loaders', '', 'inherit', 'closed', 'closed', '', '632-revision-v1', '', '', '2016-03-25 15:11:09', '2016-03-25 20:11:09', '', 632, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/632-revision-v1/', 0, 'revision', '', 0),
(748, 1, '2016-03-25 15:15:50', '2016-03-25 20:15:50', '', 'Aftermarket Rubber Tracks', '', 'inherit', 'open', 'closed', '', 'aftermarket-rubber-tracks-300x300', '', '', '2016-03-25 15:16:34', '2016-03-25 20:16:34', '', 632, 'http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/02/aftermarket-rubber-tracks-300x300.jpg', 0, 'attachment', 'image/jpeg', 0),
(749, 1, '2016-03-25 15:22:29', '2016-03-25 20:22:29', '<p class="p1"><span class="s1">Nighthawk Dura-Core®™ rubber tracks are built strong for maximum performance in all types of terrain and operating conditions.<span class="Apple-converted-space">  </span>We combine superior technology, expert manufacturing, and premium materials to create a product you can trust. </span></p>\r\n<p class="p1"><span class="s1">Our tracks are the ultimate in product performance, reliability, and value; making Nighthawk Dura-Core®™ rubber tracks the ideal choice for compact track and multi-terrain loaders.</span></p>\r\n<p class="p3" style="text-align: center;"><em><strong><span class="s1">Nighthawk keeps you moving when the job depends on it.</span></strong></em></p>\r\n<p class="p1"><span class="s1"><b><i>Call us today </i></b>at<b><i> </i></b>1-855-429-5669 and our team will help you find the best tracks for your application. </span></p>', 'Dura-Core®™ Rubber Tracks for Compact Track Loaders', '', 'inherit', 'closed', 'closed', '', '632-revision-v1', '', '', '2016-03-25 15:22:29', '2016-03-25 20:22:29', '', 632, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/632-revision-v1/', 0, 'revision', '', 0),
(750, 1, '2016-03-25 15:27:33', '2016-03-25 20:27:33', '', 'Tracks', '', 'publish', 'closed', 'closed', '', 'aftermarket-rubber-tracks', '', '', '2016-03-25 15:27:46', '2016-03-25 20:27:46', '', 0, 'http://nighthawktires.stagingcloud.us/?page_id=750', 0, 'page', '', 0),
(751, 1, '2016-03-25 15:27:33', '2016-03-25 20:27:33', '', 'Tracks', '', 'inherit', 'closed', 'closed', '', '750-revision-v1', '', '', '2016-03-25 15:27:33', '2016-03-25 20:27:33', '', 750, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/750-revision-v1/', 0, 'revision', '', 0),
(752, 1, '2016-03-25 15:31:28', '2016-03-25 20:31:28', ' ', '', '', 'publish', 'closed', 'closed', '', '752', '', '', '2016-03-26 01:09:29', '2016-03-26 06:09:29', '', 0, 'http://nighthawktires.stagingcloud.us/?p=752', 2, 'nav_menu_item', '', 0),
(753, 1, '2016-03-25 15:44:38', '2016-03-25 20:44:38', '<p class="p1"><span class="s1">Nobody knows quality like Nighthawk.<span class="Apple-converted-space">  </span>Since 2010, we’ve been an industry leader in solid tires and tracks.</span></p>\n<p class="p1"><span class="s1">We’re committed to providing extraordinary value to our customers, and built our reputation on delivering products of superior quality and reliability.</span></p>\n<p class="p1"><span class="s1">We deliver on this commitment with </span><span class="s2"><b><i>The Nighthawk Advantage</i></b> </span><span class="s1">– our promise to you to always provide:</span></p>\n\n<ul>\n	<li class="li1"><span class="s1">exceptional quality, </span></li>\n	<li class="li1"><span class="s1">the industry’s leading warranty, and </span></li>\n	<li class="li1"><span class="s1">our “best value” guarantee.</span></li>\n</ul>\n<p class="p1"><span class="s1">Nighthawk understands how tire and track failures can bring work to a complete stop, resulting in higher costs and lower margins.<span class="Apple-converted-space">  </span>Our Dura-Flex®™ Solid Tires and Dura-Core®™Tracks are constructed from our proprietary rubber-compound to withstand all types of terrain and operating conditions.</span></p>\n<p class="p3" style="text-align: center;"><span class="s1"><b><i>Our goal is to eliminate your downtime.</i></b></span></p>\n<p class="p1"><span class="s1">Our team is available by phone at <b>1-855-429-5669 </b>to answer your questions and help you find the best product.</span></p>\n\n<h2 class="p1"></h2>\n<h2 class="p1">Steer Clear of Service Setbacks</h2>\n<p class="p1">We are constantly expanding our local distributor network to ensure our valuable customers have easy access to local service, support, and professional guidance.</p>\n<p class="p3"><span class="s1">In areas, where we do not have a local distributor, we are happy to go the extra mile and service our customers directly. </span></p>', 'About', '', 'inherit', 'closed', 'closed', '', '641-autosave-v1', '', '', '2016-03-25 15:44:38', '2016-03-25 20:44:38', '', 641, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/641-autosave-v1/', 0, 'revision', '', 0),
(754, 1, '2016-03-25 15:39:46', '2016-03-25 20:39:46', '<p class="p1"><span class="s1">Nobody knows quality like Nighthawk.<span class="Apple-converted-space">  </span>Since 2010, we’ve been an industry leader in solid tires and tracks.</span></p>\r\n<p class="p1"><span class="s1">We’re committed to providing extraordinary value to our customers, and built our reputation on delivering products of superior quality and reliability.</span></p>\r\n<p class="p1"><img class="size-medium wp-image-623 aligncenter" src="http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/02/logo_bottom-300x292.png" alt="logo_bottom" width="300" height="292" /></p>\r\n<p class="p1"><span class="s1">We deliver on this commitment with </span><span class="s2"><b><i>The Nighthawk Advantage</i></b> </span><span class="s1">– our promise to you to always provide:</span></p>\r\n\r\n<ul>\r\n	<li class="li1"><span class="s1">exceptional quality, </span></li>\r\n	<li class="li1"><span class="s1">the industry’s leading warranty, and </span></li>\r\n	<li class="li1"><span class="s1">our “best value” guarantee.</span></li>\r\n</ul>\r\n<p class="p1"><span class="s1">Nighthawk understands how tire and track failures can bring work to a complete stop, resulting in higher costs and lower margins.<span class="Apple-converted-space">  </span>Our Dura-Flex®™ Solid Tires and Dura-Core®™Tracks are constructed from our proprietary rubber-compound to withstand all types of terrain and operating conditions.</span></p>\r\n<p class="p3" style="text-align: center;"><span class="s1"><b><i>Our goal is to eliminate your downtime.</i></b></span></p>\r\n<p class="p1"><span class="s1">Our team is available by phone at <b>1-855-429-5669 </b>to answer your questions and help you find the best product.</span></p>', 'About', '', 'inherit', 'closed', 'closed', '', '641-revision-v1', '', '', '2016-03-25 15:39:46', '2016-03-25 20:39:46', '', 641, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/641-revision-v1/', 0, 'revision', '', 0),
(755, 1, '2016-03-25 15:45:17', '2016-03-25 20:45:17', '<p class="p1"><span class="s1">Nobody knows quality like Nighthawk.<span class="Apple-converted-space">  </span>Since 2010, we’ve been an industry leader in solid tires and tracks.</span></p>\r\n<p class="p1"><span class="s1">We’re committed to providing extraordinary value to our customers, and built our reputation on delivering products of superior quality and reliability.</span></p>\r\n<p class="p1"><span class="s1">We deliver on this commitment with </span><span class="s2"><b><i>The Nighthawk Advantage</i></b> </span><span class="s1">– our promise to you to always provide:</span></p>\r\n\r\n<ul>\r\n	<li class="li1"><span class="s1">exceptional quality, </span></li>\r\n	<li class="li1"><span class="s1">the industry’s leading warranty, and </span></li>\r\n	<li class="li1"><span class="s1">our “best value” guarantee.</span></li>\r\n</ul>\r\n<p class="p1"><span class="s1">Nighthawk understands how tire and track failures can bring work to a complete stop, resulting in higher costs and lower margins.<span class="Apple-converted-space">  </span>Our Dura-Flex®™ Solid Tires and Dura-Core®™Tracks are constructed from our proprietary rubber-compound to withstand all types of terrain and operating conditions.</span></p>\r\n<p class="p3" style="text-align: center;"><span class="s1"><b><i>Our goal is to eliminate your downtime.</i></b></span></p>\r\n<p class="p1"><span class="s1">Our team is available by phone at <b>1-855-429-5669 </b>to answer your questions and help you find the best product.</span></p>\r\n\r\n<h2 class="p1"><img class="size-medium wp-image-625 alignright" src="http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/02/Best-Value_-241x300.jpg" alt="Best-Value_" width="241" height="300" /></h2>\r\n<h2 class="p1">Steer Clear of Service Setbacks</h2>\r\n<p class="p1">We are constantly expanding our local distributor network to ensure our valuable customers have easy access to local service, support, and professional guidance.</p>\r\n<p class="p3"><span class="s1">In areas, where we do not have a local distributor, we are happy to go the extra mile and service our customers directly. </span></p>', 'About', '', 'inherit', 'closed', 'closed', '', '641-revision-v1', '', '', '2016-03-25 15:45:17', '2016-03-25 20:45:17', '', 641, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/641-revision-v1/', 0, 'revision', '', 0),
(756, 1, '2016-03-25 15:46:13', '2016-03-25 20:46:13', '<p class="p1"><span class="s1">Nobody knows quality like Nighthawk.<span class="Apple-converted-space">  </span>Since 2010, we’ve been an industry leader in solid tires and tracks.</span></p>\r\n<p class="p1"><span class="s1">We’re committed to providing extraordinary value to our customers, and built our reputation on delivering products of superior quality and reliability.</span></p>\r\n<p class="p1"><span class="s1">We deliver on this commitment with </span><span class="s2"><b><i>The Nighthawk Advantage</i></b> </span><span class="s1">– our promise to you to always provide:</span></p>\r\n\r\n<ul>\r\n	<li class="li1"><span class="s1">exceptional quality, </span></li>\r\n	<li class="li1"><span class="s1">the industry’s leading warranty, and </span></li>\r\n	<li class="li1"><span class="s1">our “best value” guarantee.</span></li>\r\n</ul>\r\n<p class="p1"><span class="s1">Nighthawk understands how tire and track failures can bring work to a complete stop, resulting in higher costs and lower margins.<span class="Apple-converted-space">  </span>Our Dura-Flex®™ Solid Tires and Dura-Core®™Tracks are constructed from our proprietary rubber-compound to withstand all types of terrain and operating conditions.</span></p>\r\n<p class="p3" style="text-align: center;"><span class="s1"><b><i>Our goal is to eliminate your downtime.</i></b></span></p>\r\n<p class="p1"><span class="s1">Our team is available by phone at <b>1-855-429-5669 </b>to answer your questions and help you find the best product.</span></p>\r\n\r\n<h2 class="p1"><img class="size-medium wp-image-625 alignright" src="http://nighthawktires.stagingcloud.us/wp-content/uploads/2016/02/Best-Value_-241x300.jpg" alt="Best-Value_" width="241" height="300" /></h2>\r\n<h2 class="p1">Steer Clear of Service Setbacks</h2>\r\n<p class="p1">We are constantly expanding our local distributor network to ensure our valuable customers have easy access to local service, support, and professional guidance.</p>\r\n<p class="p3"><span class="s1">In areas, where we do not have a local distributor, we are happy to go the extra mile and service our customers directly.</span></p>', 'About', '', 'inherit', 'closed', 'closed', '', '641-revision-v1', '', '', '2016-03-25 15:46:13', '2016-03-25 20:46:13', '', 641, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/641-revision-v1/', 0, 'revision', '', 0),
(757, 1, '2016-03-26 00:39:02', '2016-03-26 05:39:02', '', 'Replace Pneumatic Tire 10x16.5', '', 'inherit', 'closed', 'closed', '', '731-autosave-v1', '', '', '2016-03-26 00:39:02', '2016-03-26 05:39:02', '', 731, 'http://nighthawktires.stagingcloud.us/blog/uncategorized/731-autosave-v1/', 0, 'revision', '', 0),
(758, 1, '2016-03-26 01:09:29', '2016-03-26 06:09:29', '', 'Quote', '', 'publish', 'closed', 'closed', '', 'quote', '', '', '2016-03-26 01:09:29', '2016-03-26 06:09:29', '', 0, 'http://nighthawktires.stagingcloud.us/?p=758', 4, 'nav_menu_item', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form`
#

DROP TABLE IF EXISTS `wp_rg_form`;


#
# Table structure of table `wp_rg_form`
#

CREATE TABLE `wp_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_form`
#
INSERT INTO `wp_rg_form` ( `id`, `title`, `date_created`, `is_active`, `is_trash`) VALUES
(1, 'quote', '2016-02-24 07:51:56', 1, 0),
(2, 'contact us', '2016-03-17 06:59:41', 1, 0) ;

#
# End of data contents of table `wp_rg_form`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form_meta`
#

DROP TABLE IF EXISTS `wp_rg_form_meta`;


#
# Table structure of table `wp_rg_form_meta`
#

CREATE TABLE `wp_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_form_meta`
#
INSERT INTO `wp_rg_form_meta` ( `form_id`, `display_meta`, `entries_grid_meta`, `confirmations`, `notifications`) VALUES
(1, '{"title":"quote","description":"","labelPlacement":"top_label","descriptionPlacement":"below","button":{"type":"text","text":"Send Me a Quote","imageUrl":""},"fields":[{"type":"name","id":1,"label":"","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","nameFormat":"advanced","inputs":[{"id":"1.2","label":"Prefix","name":"","choices":[{"text":"Mr.","value":"Mr.","isSelected":false,"price":""},{"text":"Mrs.","value":"Mrs.","isSelected":false,"price":""},{"text":"Miss","value":"Miss","isSelected":false,"price":""},{"text":"Ms.","value":"Ms.","isSelected":false,"price":""},{"text":"Dr.","value":"Dr.","isSelected":false,"price":""},{"text":"Prof.","value":"Prof.","isSelected":false,"price":""},{"text":"Rev.","value":"Rev.","isSelected":false,"price":""}],"isHidden":true,"inputType":"radio"},{"id":"1.3","label":"First","name":"","isHidden":false,"placeholder":"First Name"},{"id":"1.4","label":"Middle","name":"","isHidden":true},{"id":"1.6","label":"Last","name":"","isHidden":false,"placeholder":"Last Name"},{"id":"1.8","label":"Suffix","name":"","isHidden":true}],"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"defaultValue":"","description":"","formId":1,"pageNumber":1,"inputType":"","cssClass":"","inputName":"","adminOnly":false,"noDuplicates":false,"choices":"","conditionalLogic":"","displayOnly":""},{"type":"email","id":2,"label":"","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":[{"id":"2","label":"Enter Email","name":"","placeholder":"Email"},{"id":"2.2","label":"Confirm Email","name":"","placeholder":"Confirm Email"}],"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"emailConfirmEnabled":true,"formId":1,"pageNumber":1,"description":"","inputType":"","cssClass":"","inputName":"","adminOnly":false,"noDuplicates":false,"defaultValue":"","choices":"","conditionalLogic":"","displayOnly":""},{"type":"phone","id":3,"label":"","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"phoneFormat":"standard","labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"Phone","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":1,"pageNumber":1,"description":"","inputType":"","cssClass":"","inputName":"","adminOnly":false,"noDuplicates":false,"defaultValue":"","choices":"","conditionalLogic":"","displayOnly":""}],"version":"1.9.16.7","id":1,"useCurrentUserAsAuthor":true,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null,"notifications":{"56cd611c49aa4":{"id":"56cd611c49aa4","to":"{admin_email}","name":"Admin Notification","event":"form_submission","toType":"email","subject":"New submission from {form_title}","message":"{all_fields}"}},"confirmations":{"56cd611c4adf0":{"id":"56cd611c4adf0","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}},"subLabelPlacement":"below","cssClass":"","enableHoneypot":false,"enableAnimation":false,"save":{"enabled":false,"button":{"type":"link","text":"Save and Continue Later"}},"limitEntries":false,"limitEntriesCount":"","limitEntriesPeriod":"","limitEntriesMessage":"","scheduleForm":false,"scheduleStart":"","scheduleStartHour":"","scheduleStartMinute":"","scheduleStartAmpm":"","scheduleEnd":"","scheduleEndHour":"","scheduleEndMinute":"","scheduleEndAmpm":"","schedulePendingMessage":"","scheduleMessage":"","requireLogin":false,"requireLoginMessage":""}', NULL, '{"56cd611c4adf0":{"id":"56cd611c4adf0","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}}', '{"56cd611c49aa4":{"id":"56cd611c49aa4","to":"{admin_email}","name":"Admin Notification","event":"form_submission","toType":"email","subject":"New submission from {form_title}","message":"{all_fields}"}}'),
(2, '{"title":"contact us","description":"","labelPlacement":"top_label","descriptionPlacement":"below","button":{"type":"text","text":"Send Now","imageUrl":""},"fields":[{"type":"name","id":1,"label":"","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","nameFormat":"advanced","inputs":[{"id":"1.2","label":"Prefix","name":"","choices":[{"text":"Mr.","value":"Mr.","isSelected":false,"price":""},{"text":"Mrs.","value":"Mrs.","isSelected":false,"price":""},{"text":"Miss","value":"Miss","isSelected":false,"price":""},{"text":"Ms.","value":"Ms.","isSelected":false,"price":""},{"text":"Dr.","value":"Dr.","isSelected":false,"price":""},{"text":"Prof.","value":"Prof.","isSelected":false,"price":""},{"text":"Rev.","value":"Rev.","isSelected":false,"price":""}],"isHidden":true,"inputType":"radio"},{"id":"1.3","label":"First","name":"","isHidden":false,"placeholder":"First Name"},{"id":"1.4","label":"Middle","name":"","isHidden":true},{"id":"1.6","label":"Last","name":"","isHidden":false,"placeholder":"Last Name"},{"id":"1.8","label":"Suffix","name":"","isHidden":true}],"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"defaultValue":"","description":"","formId":2,"pageNumber":1,"inputType":"","cssClass":"","inputName":"","adminOnly":false,"noDuplicates":false,"choices":"","conditionalLogic":"","displayOnly":""},{"type":"email","id":2,"label":"","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"Email","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"emailConfirmEnabled":false,"formId":2,"pageNumber":1,"description":"","inputType":"","cssClass":"","inputName":"","adminOnly":false,"noDuplicates":false,"defaultValue":"","choices":"","conditionalLogic":"","displayOnly":""},{"type":"phone","id":3,"label":"","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"phoneFormat":"standard","labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"Phone","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":2,"pageNumber":1,"description":"","inputType":"","cssClass":"","inputName":"","adminOnly":false,"noDuplicates":false,"defaultValue":"","choices":"","conditionalLogic":"","displayOnly":""},{"type":"textarea","id":4,"label":"","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"Message","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"maxLength":"2000","formId":2,"pageNumber":1,"description":"","inputType":"","cssClass":"","inputName":"","adminOnly":false,"noDuplicates":false,"defaultValue":"","choices":"","conditionalLogic":"","displayOnly":""}],"version":"1.9.16.7","id":2,"useCurrentUserAsAuthor":true,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null,"subLabelPlacement":"below","cssClass":"","enableHoneypot":false,"enableAnimation":false,"save":{"enabled":false,"button":{"type":"link","text":"Save and Continue Later"}},"limitEntries":false,"limitEntriesCount":"","limitEntriesPeriod":"","limitEntriesMessage":"","scheduleForm":false,"scheduleStart":"","scheduleStartHour":"","scheduleStartMinute":"","scheduleStartAmpm":"","scheduleEnd":"","scheduleEndHour":"","scheduleEndMinute":"","scheduleEndAmpm":"","schedulePendingMessage":"","scheduleMessage":"","requireLogin":false,"requireLoginMessage":"","notifications":{"56cd611c49aa4":{"id":"56cd611c49aa4","to":"{admin_email}","name":"Admin Notification","event":"form_submission","toType":"email","subject":"New submission from {form_title}","message":"{all_fields}"}},"confirmations":{"56cd611c4adf0":{"id":"56cd611c4adf0","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}}}', NULL, '{"56cd611c4adf0":{"id":"56cd611c4adf0","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}}', '{"56cd611c49aa4":{"id":"56cd611c49aa4","to":"{admin_email}","name":"Admin Notification","event":"form_submission","toType":"email","subject":"New submission from {form_title}","message":"{all_fields}"}}') ;

#
# End of data contents of table `wp_rg_form_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form_view`
#

DROP TABLE IF EXISTS `wp_rg_form_view`;


#
# Table structure of table `wp_rg_form_view`
#

CREATE TABLE `wp_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `date_created` (`date_created`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_form_view`
#
INSERT INTO `wp_rg_form_view` ( `id`, `form_id`, `date_created`, `ip`, `count`) VALUES
(1, 1, '2016-02-25 04:26:16', '45.64.213.82', 3),
(2, 1, '2016-02-26 13:28:09', '45.64.213.82', 1),
(3, 1, '2016-02-29 12:27:32', '45.64.213.82', 9),
(4, 1, '2016-03-04 04:22:27', '73.55.221.78', 18),
(5, 1, '2016-03-05 04:53:55', '45.64.213.82', 7),
(6, 1, '2016-03-07 07:55:45', '45.64.213.82', 13),
(7, 1, '2016-03-08 09:21:26', '45.64.213.82', 44),
(8, 1, '2016-03-10 09:53:34', '43.254.48.253', 20),
(9, 1, '2016-03-12 04:58:57', '203.88.135.122', 2),
(10, 1, '2016-03-15 12:50:01', '104.209.188.207', 9),
(11, 1, '2016-03-16 15:30:49', '12.96.18.50', 33),
(12, 2, '2016-03-17 08:06:18', '43.254.48.253', 1),
(13, 1, '2016-03-18 15:49:58', '161.69.163.20', 2),
(14, 1, '2016-03-23 11:56:02', '107.178.206.78', 1),
(15, 1, '2016-03-24 12:02:47', '43.254.48.253', 6),
(16, 1, '2016-03-25 14:28:14', '66.102.7.165', 7),
(17, 2, '2016-03-25 17:23:44', '15.211.201.82', 3),
(18, 1, '2016-03-28 01:08:40', '66.102.7.172', 7) ;

#
# End of data contents of table `wp_rg_form_view`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_incomplete_submissions`
#

DROP TABLE IF EXISTS `wp_rg_incomplete_submissions`;


#
# Table structure of table `wp_rg_incomplete_submissions`
#

CREATE TABLE `wp_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_incomplete_submissions`
#

#
# End of data contents of table `wp_rg_incomplete_submissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead`
#

DROP TABLE IF EXISTS `wp_rg_lead`;


#
# Table structure of table `wp_rg_lead`
#

CREATE TABLE `wp_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_lead`
#

#
# End of data contents of table `wp_rg_lead`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_detail`
#

DROP TABLE IF EXISTS `wp_rg_lead_detail`;


#
# Table structure of table `wp_rg_lead_detail`
#

CREATE TABLE `wp_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`),
  KEY `lead_field_value` (`value`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_lead_detail`
#

#
# End of data contents of table `wp_rg_lead_detail`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_detail_long`
#

DROP TABLE IF EXISTS `wp_rg_lead_detail_long`;


#
# Table structure of table `wp_rg_lead_detail_long`
#

CREATE TABLE `wp_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_lead_detail_long`
#

#
# End of data contents of table `wp_rg_lead_detail_long`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_meta`
#

DROP TABLE IF EXISTS `wp_rg_lead_meta`;


#
# Table structure of table `wp_rg_lead_meta`
#

CREATE TABLE `wp_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_lead_meta`
#

#
# End of data contents of table `wp_rg_lead_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_notes`
#

DROP TABLE IF EXISTS `wp_rg_lead_notes`;


#
# Table structure of table `wp_rg_lead_notes`
#

CREATE TABLE `wp_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_lead_notes`
#

#
# End of data contents of table `wp_rg_lead_notes`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_zapier`
#

DROP TABLE IF EXISTS `wp_rg_zapier`;


#
# Table structure of table `wp_rg_zapier`
#

CREATE TABLE `wp_rg_zapier` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_zapier`
#

#
# End of data contents of table `wp_rg_zapier`
# --------------------------------------------------------



#
# Delete any existing table `wp_supsystic_tbl_columns`
#

DROP TABLE IF EXISTS `wp_supsystic_tbl_columns`;


#
# Table structure of table `wp_supsystic_tbl_columns`
#

CREATE TABLE `wp_supsystic_tbl_columns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_id` int(10) unsigned DEFAULT NULL,
  `index` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_supsystic_tbl_columns`
#

#
# End of data contents of table `wp_supsystic_tbl_columns`
# --------------------------------------------------------



#
# Delete any existing table `wp_supsystic_tbl_diagrams`
#

DROP TABLE IF EXISTS `wp_supsystic_tbl_diagrams`;


#
# Table structure of table `wp_supsystic_tbl_diagrams`
#

CREATE TABLE `wp_supsystic_tbl_diagrams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_id` int(10) unsigned DEFAULT NULL,
  `start_row` int(10) unsigned DEFAULT NULL,
  `start_col` int(10) unsigned DEFAULT NULL,
  `end_row` int(10) unsigned DEFAULT NULL,
  `end_col` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_supsystic_tbl_diagrams`
#

#
# End of data contents of table `wp_supsystic_tbl_diagrams`
# --------------------------------------------------------



#
# Delete any existing table `wp_supsystic_tbl_rows`
#

DROP TABLE IF EXISTS `wp_supsystic_tbl_rows`;


#
# Table structure of table `wp_supsystic_tbl_rows`
#

CREATE TABLE `wp_supsystic_tbl_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_id` int(10) unsigned DEFAULT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_supsystic_tbl_rows`
#
INSERT INTO `wp_supsystic_tbl_rows` ( `id`, `table_id`, `data`) VALUES
(86, 1, 'a:2:{s:5:"cells";a:7:{i:0;a:5:{s:6:"hidden";b:0;s:4:"data";s:13:"Tread Pattern";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:1;a:5:{s:6:"hidden";b:0;s:4:"data";s:11:"All Purpose";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:2;a:5:{s:6:"hidden";b:0;s:4:"data";s:11:"All Purpose";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:3;a:5:{s:6:"hidden";b:0;s:4:"data";s:11:"All Purpose";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:4;a:5:{s:6:"hidden";b:0;s:4:"data";s:11:"All Terrain";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:5;a:5:{s:6:"hidden";b:0;s:4:"data";s:11:"All Terrain";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:6;a:5:{s:6:"hidden";b:0;s:4:"data";s:6:"Smooth";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}}s:6:"height";N;}'),
(87, 1, 'a:2:{s:5:"cells";a:7:{i:0;a:5:{s:6:"hidden";b:0;s:4:"data";s:4:"Size";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:1;a:5:{s:6:"hidden";b:0;s:4:"data";s:8:"33x12-16";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:2;a:5:{s:6:"hidden";b:0;s:4:"data";s:8:"33x12-20";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:3;a:5:{s:6:"hidden";b:0;s:4:"data";s:7:"33x9-16";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:4;a:5:{s:6:"hidden";b:0;s:4:"data";s:8:"33x12-18";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:5;a:5:{s:6:"hidden";b:0;s:4:"data";s:8:"33x12-20";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:6;a:5:{s:6:"hidden";b:0;s:4:"data";s:7:"33x9-16";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}}s:6:"height";N;}'),
(88, 1, 'a:2:{s:5:"cells";a:7:{i:0;a:5:{s:6:"hidden";b:0;s:4:"data";s:11:"Tread Depth";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:1;a:5:{s:6:"hidden";b:0;s:4:"data";s:10:"2.28&quot;";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:2;a:5:{s:6:"hidden";b:0;s:4:"data";s:10:"1.57&quot;";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:3;a:5:{s:6:"hidden";b:0;s:4:"data";s:10:"2.38&quot;";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:4;a:5:{s:6:"hidden";b:0;s:4:"data";s:10:"1.97&quot;";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:5;a:5:{s:6:"hidden";b:0;s:4:"data";s:10:"1.57&quot;";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:6;a:5:{s:6:"hidden";b:0;s:4:"data";s:10:"2.38&quot;";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}}s:6:"height";N;}'),
(89, 1, 'a:2:{s:5:"cells";a:7:{i:0;a:5:{s:6:"hidden";b:0;s:4:"data";s:26:"Tread Depth at Safety Line";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:1;a:5:{s:6:"hidden";b:0;s:4:"data";s:10:"3.00&quot;";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:2;a:5:{s:6:"hidden";b:0;s:4:"data";s:10:"2.28&quot;";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:3;a:5:{s:6:"hidden";b:0;s:4:"data";s:10:"2.91&quot;";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:4;a:5:{s:6:"hidden";b:0;s:4:"data";s:10:"2.95&quot;";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:5;a:5:{s:6:"hidden";b:0;s:4:"data";s:10:"2.44&quot;";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:6;a:5:{s:6:"hidden";b:0;s:4:"data";s:10:"2.91&quot;";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}}s:6:"height";N;}'),
(90, 1, 'a:2:{s:5:"cells";a:7:{i:0;a:5:{s:6:"hidden";b:0;s:4:"data";s:8:"Diameter";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:1;a:5:{s:6:"hidden";b:0;s:4:"data";s:10:"32.3&quot;";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:2;a:5:{s:6:"hidden";b:0;s:4:"data";s:10:"32.9&quot;";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:3;a:5:{s:6:"hidden";b:0;s:4:"data";s:10:"33.5&quot;";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:4;a:5:{s:6:"hidden";b:0;s:4:"data";s:10:"32.7&quot;";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:5;a:5:{s:6:"hidden";b:0;s:4:"data";s:10:"33.5&quot;";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}i:6;a:5:{s:6:"hidden";b:0;s:4:"data";s:10:"33.1&quot;";s:4:"meta";a:0:{}s:15:"calculatedValue";N;s:4:"type";s:4:"text";}}s:6:"height";N;}') ;

#
# End of data contents of table `wp_supsystic_tbl_rows`
# --------------------------------------------------------



#
# Delete any existing table `wp_supsystic_tbl_tables`
#

DROP TABLE IF EXISTS `wp_supsystic_tbl_tables`;


#
# Table structure of table `wp_supsystic_tbl_tables`
#

CREATE TABLE `wp_supsystic_tbl_tables` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `meta` text,
  `settings` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_supsystic_tbl_tables`
#
INSERT INTO `wp_supsystic_tbl_tables` ( `id`, `title`, `created_at`, `meta`, `settings`) VALUES
(1, 'Nighthawk Dura-Flex 12x16.5', '2016-03-24 20:41:33', 'a:3:{s:11:"mergedCells";a:0:{}s:12:"columnsWidth";a:7:{i:0;i:250;i:1;i:100;i:2;i:100;i:3;i:100;i:4;i:100;i:5;i:100;i:6;i:100;}s:3:"css";s:361:"/* Here you can add custom CSS for the current table */\n/* Lean more about CSS: https://en.wikipedia.org/wiki/Cascading_Style_Sheets */\n\n/* To prevent the use of styles to other tables use "#supsystic-table-1" as a base selector\nfor example:\n#supsystic-table-1 { ... }\n#supsystic-table-1 tbody { ... }\n#supsystic-table-1 tbody tr { ... }\n*/\n                    ";}', 'a:11:{s:9:&quot;autoIndex&quot;;s:3:&quot;off&quot;;s:8:&quot;language&quot;;a:8:{s:4:&quot;file&quot;;s:7:&quot;default&quot;;s:10:&quot;emptyTable&quot;;s:0:&quot;&quot;;s:4:&quot;info&quot;;s:0:&quot;&quot;;s:9:&quot;infoEmpty&quot;;s:0:&quot;&quot;;s:12:&quot;infoFiltered&quot;;s:0:&quot;&quot;;s:10:&quot;lengthMenu&quot;;s:0:&quot;&quot;;s:6:&quot;search&quot;;s:0:&quot;&quot;;s:11:&quot;zeroRecords&quot;;s:0:&quot;&quot;;}s:8:&quot;features&quot;;a:1:{s:10:&quot;auto_width&quot;;s:2:&quot;on&quot;;}s:12:&quot;sortingOrder&quot;;s:3:&quot;asc&quot;;s:18:&quot;sortingOrderColumn&quot;;s:1:&quot;1&quot;;s:20:&quot;paginationMenuLength&quot;;s:10:&quot;50,100,All&quot;;s:14:&quot;currencyFormat&quot;;s:9:&quot;$1,000.00&quot;;s:13:&quot;percentFormat&quot;;s:6:&quot;10.00%&quot;;s:10:&quot;dateFormat&quot;;s:10:&quot;DD.MM.YYYY&quot;;s:7:&quot;styling&quot;;a:2:{s:6:&quot;border&quot;;s:11:&quot;cell-border&quot;;s:7:&quot;compact&quot;;s:2:&quot;on&quot;;}s:14:&quot;responsiveMode&quot;;s:1:&quot;0&quot;;}') ;

#
# End of data contents of table `wp_supsystic_tbl_tables`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 23, 0),
(16, 23, 0),
(17, 23, 0),
(18, 23, 0),
(19, 23, 0),
(20, 24, 0),
(21, 24, 0),
(22, 24, 0),
(182, 2, 0),
(182, 13, 0),
(493, 2, 0),
(493, 18, 0),
(494, 2, 0),
(494, 21, 0),
(495, 2, 0),
(495, 15, 0),
(496, 2, 0),
(496, 17, 0),
(497, 2, 0),
(497, 16, 0),
(498, 2, 0),
(498, 20, 0),
(539, 2, 0),
(539, 3, 0),
(539, 4, 0),
(539, 5, 0),
(539, 6, 0),
(539, 7, 0),
(539, 8, 0),
(539, 9, 0),
(539, 10, 0),
(539, 11, 0),
(539, 12, 0),
(539, 14, 0),
(576, 24, 0),
(578, 24, 0),
(579, 24, 0),
(580, 24, 0),
(581, 24, 0),
(589, 23, 0),
(590, 23, 0),
(591, 23, 0),
(592, 23, 0),
(593, 23, 0),
(594, 24, 0),
(595, 24, 0),
(596, 24, 0),
(597, 24, 0),
(599, 24, 0),
(600, 24, 0),
(601, 24, 0),
(602, 24, 0),
(612, 22, 0),
(648, 22, 0),
(650, 22, 0),
(663, 25, 0),
(664, 25, 0),
(665, 25, 0),
(666, 25, 0),
(671, 25, 0),
(693, 26, 0),
(693, 30, 0),
(710, 22, 0),
(728, 22, 0),
(752, 22, 0),
(758, 22, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', 'This is a sample category description, which can be used to boost SEO rankings.  Make sure you have enabled this from the Edit Category screen in your dashboard.', 0, 8),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 1),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 3, 1),
(8, 8, 'category', '', 3, 1),
(9, 9, 'category', '', 3, 1),
(10, 10, 'category', '', 7, 1),
(11, 11, 'category', '', 7, 1),
(12, 12, 'category', '', 7, 1),
(13, 13, 'post_tag', 'This is an sample tag description, which can be used to boost SEO rankings.  Make sure you enabled this from the Edit Post Tags screen in your dashboard.', 0, 1),
(14, 14, 'post_tag', 'This is an sample tag description, which can be used to boost SEO rankings.  Make sure you enabled this from the Edit Post Tags screen in your dashboard.', 0, 1),
(15, 15, 'post_tag', 'This is an sample tag description, which can be used to boost SEO rankings.  Make sure you enabled this from the Edit Post Tags screen in your dashboard.', 0, 1),
(16, 16, 'post_tag', 'This is an sample tag description, which can be used to boost SEO rankings.  Make sure you enabled this from the Edit Post Tags screen in your dashboard.', 0, 1),
(17, 17, 'post_tag', 'This is an sample tag description, which can be used to boost SEO rankings.  Make sure you enabled this from the Edit Post Tags screen in your dashboard.', 0, 1),
(18, 18, 'post_tag', 'This is an sample tag description, which can be used to boost SEO rankings.  Make sure you enabled this from the Edit Post Tags screen in your dashboard.', 0, 1),
(19, 19, 'post_tag', '', 0, 0),
(20, 20, 'post_tag', 'This is an sample tag description, which can be used to boost SEO rankings.  Make sure you enabled this from the Edit Post Tags screen in your dashboard.', 0, 1),
(21, 21, 'post_tag', 'This is an sample tag description, which can be used to boost SEO rankings.  Make sure you enabled this from the Edit Post Tags screen in your dashboard.', 0, 1),
(22, 22, 'nav_menu', '', 0, 7),
(23, 23, 'nav_menu', '', 0, 10),
(24, 24, 'nav_menu', '', 0, 16),
(25, 25, 'nav_menu', '', 0, 5),
(26, 26, 'product_type', '', 0, 1),
(27, 27, 'product_type', '', 0, 0),
(28, 28, 'product_type', '', 0, 0),
(29, 29, 'product_type', '', 0, 0),
(30, 30, 'product_cat', '', 0, 1),
(31, 31, 'product_cat', '', 0, 0) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_termmeta`
#
INSERT INTO `wp_termmeta` ( `meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 22, 'headline', ''),
(2, 22, 'intro_text', ''),
(3, 22, 'display_title', '0'),
(4, 22, 'display_description', '0'),
(5, 22, 'doctitle', ''),
(6, 22, 'description', ''),
(7, 22, 'keywords', ''),
(8, 22, 'layout', ''),
(9, 22, 'noindex', '0'),
(10, 22, 'nofollow', '0'),
(11, 22, 'noarchive', '0'),
(12, 25, 'headline', ''),
(13, 25, 'intro_text', ''),
(14, 25, 'display_title', '0'),
(15, 25, 'display_description', '0'),
(16, 25, 'doctitle', ''),
(17, 25, 'description', ''),
(18, 25, 'keywords', ''),
(19, 25, 'layout', ''),
(20, 25, 'noindex', '0'),
(21, 25, 'nofollow', '0'),
(22, 25, 'noarchive', '0') ;

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Category #1', 'category-1', 0),
(3, 'Category #2', 'category-2', 0),
(4, 'Category #3', 'category-3', 0),
(5, 'Category #4', 'category-4', 0),
(6, 'Category #5', 'category-5', 0),
(7, 'Sub Category 1.1', 'sub-category-1-1', 0),
(8, 'Sub Category 1.2', 'sub-category-1-2', 0),
(9, 'Sub Category 1.3', 'sub-category-1-3', 0),
(10, 'Sub Category 2.1', 'sub-category-2-1', 0),
(11, 'Sub Category 2.2', 'sub-category-2-2', 0),
(12, 'Sub Category 2.3', 'sub-category-2-3', 0),
(13, 'Blockquotes', 'blockquotes', 0),
(14, 'Headlines', 'headlines', 0),
(15, 'Images Centered', 'images-centered', 0),
(16, 'Images Left', 'images-left', 0),
(17, 'Images Right', 'images-right', 0),
(18, 'Ordered Lists', 'ordered-lists', 0),
(19, 'Tables', 'tables', 0),
(20, 'Threaded Comments', 'threaded-comments', 0),
(21, 'Unordered Lists', 'unordered-lists', 0),
(22, 'Primary Menu', 'primary-menu', 0),
(23, 'Footer Menu', 'footer-menu', 0),
(24, 'Secondary Menu', 'secondary-menu', 0),
(25, 'footer menu links', 'footer-menu-links', 0),
(26, 'simple', 'simple', 0),
(27, 'grouped', 'grouped', 0),
(28, 'variable', 'variable', 0),
(29, 'external', 'external', 0),
(30, 'Solid Skid Steer Tires', 'solid-skid-steer-tires', 0),
(31, 'Skid Steer Rubber Tracks', 'skid-steer-rubber-tracks', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'nighthawktiresadmin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'usersnap_admin_pointer0_1_new_items,black_studio_tinymce_widget'),
(13, 1, 'show_welcome_panel', '0'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '723'),
(16, 1, 'wpseo_ignore_tour', '1'),
(17, 1, 'session_tokens', 'a:3:{s:64:"ff270772f242c68ca93bbc436c38b0fa7c7d65ef2379020b2d23808c8bd451cb";a:4:{s:10:"expiration";i:1459402376;s:2:"ip";s:13:"43.254.48.253";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0";s:5:"login";i:1458192776;}s:64:"ee44cb92322752634333ec83a275a278c9b0aea5deed6ae77b8090e927747210";a:4:{s:10:"expiration";i:1459343338;s:2:"ip";s:13:"43.254.48.253";s:2:"ua";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0";s:5:"login";i:1459170538;}s:64:"26bb09759f4875bf92b37632cd36b9b814cf175028cc29f382fb8d1a7792aa47";a:4:{s:10:"expiration";i:1459347148;s:2:"ip";s:13:"43.254.48.253";s:2:"ua";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0";s:5:"login";i:1459174348;}}'),
(18, 1, 'wporg_favorites', ''),
(19, 1, '_yoast_wpseo_profile_updated', '1458122798'),
(20, 2, 'nickname', 'admin'),
(21, 2, 'first_name', 'Brian'),
(22, 2, 'last_name', 'Gardner'),
(23, 2, 'description', ''),
(24, 2, 'rich_editing', 'true'),
(25, 2, 'comment_shortcuts', 'false'),
(26, 2, 'admin_color', 'fresh'),
(27, 2, 'use_ssl', '0'),
(28, 2, 'show_admin_bar_front', 'true'),
(29, 2, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(30, 2, 'wp_user_level', '0'),
(31, 2, 'dismissed_wp_pointers', ''),
(32, 3, 'nickname', 'lmancke'),
(33, 3, 'first_name', 'Lauren'),
(34, 3, 'last_name', 'Mancke'),
(35, 3, 'description', ''),
(36, 3, 'rich_editing', 'true'),
(37, 3, 'comment_shortcuts', 'false'),
(38, 3, 'admin_color', 'fresh'),
(39, 3, 'use_ssl', '0'),
(40, 3, 'show_admin_bar_front', 'true'),
(41, 3, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(42, 3, 'wp_user_level', '0'),
(43, 3, 'dismissed_wp_pointers', ''),
(44, 2, '_yoast_wpseo_profile_updated', '1456122116'),
(45, 2, 'wpseo_title', ''),
(46, 2, 'wpseo_metadesc', ''),
(47, 2, 'wpseo_metakey', ''),
(48, 2, 'wpseo_excludeauthorsitemap', ''),
(49, 2, 'genesis_admin_menu', '1'),
(50, 2, 'genesis_seo_settings_menu', ''),
(51, 2, 'genesis_import_export_menu', '1'),
(52, 2, 'genesis_author_box_single', ''),
(53, 2, 'genesis_author_box_archive', ''),
(54, 2, 'headline', ''),
(55, 2, 'intro_text', ''),
(56, 2, 'doctitle', ''),
(57, 2, 'meta_description', ''),
(58, 2, 'meta_keywords', ''),
(59, 2, 'noindex', ''),
(60, 2, 'nofollow', ''),
(61, 2, 'noarchive', ''),
(62, 2, 'layout', ''),
(63, 2, 'googleplus', ''),
(64, 2, 'twitter', ''),
(65, 2, 'facebook', ''),
(66, 3, '_yoast_wpseo_profile_updated', '1456122135'),
(67, 3, 'wpseo_title', ''),
(68, 3, 'wpseo_metadesc', ''),
(69, 3, 'wpseo_metakey', ''),
(70, 3, 'wpseo_excludeauthorsitemap', ''),
(71, 3, 'genesis_admin_menu', '1'),
(72, 3, 'genesis_seo_settings_menu', ''),
(73, 3, 'genesis_import_export_menu', '1'),
(74, 3, 'genesis_author_box_single', ''),
(75, 3, 'genesis_author_box_archive', ''),
(76, 3, 'headline', ''),
(77, 3, 'intro_text', ''),
(78, 3, 'doctitle', ''),
(79, 3, 'meta_description', ''),
(80, 3, 'meta_keywords', ''),
(81, 3, 'noindex', ''),
(82, 3, 'nofollow', ''),
(83, 3, 'noarchive', ''),
(84, 3, 'layout', ''),
(85, 3, 'googleplus', ''),
(86, 3, 'twitter', ''),
(87, 3, 'facebook', ''),
(88, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&wplink=1&hidetb=1&mfold=o'),
(89, 1, 'wp_user-settings-time', '1458877294'),
(90, 1, 'nav_menu_recently_edited', '22'),
(91, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:15:"title-attribute";i:1;s:11:"link-target";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(92, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(93, 1, 'closedpostboxes_toplevel_page_genesis', 'a:1:{i:0;s:30:"genesis-theme-settings-version";}'),
(94, 1, 'metaboxhidden_toplevel_page_genesis', 'a:0:{}'),
(95, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(96, 1, 'wpseo_seen_about_version', '3.0.7'),
(97, 1, 'wpseo_title', ''),
(98, 1, 'wpseo_metadesc', ''),
(99, 1, 'wpseo_metakey', ''),
(100, 1, 'wpseo_excludeauthorsitemap', ''),
(101, 1, 'genesis_admin_menu', '1') ;
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(102, 1, 'genesis_seo_settings_menu', ''),
(103, 1, 'genesis_import_export_menu', '1'),
(104, 1, 'genesis_author_box_single', ''),
(105, 1, 'genesis_author_box_archive', ''),
(106, 1, 'headline', ''),
(107, 1, 'intro_text', ''),
(108, 1, 'doctitle', ''),
(109, 1, 'meta_description', ''),
(110, 1, 'meta_keywords', ''),
(111, 1, 'noindex', ''),
(112, 1, 'nofollow', ''),
(113, 1, 'noarchive', ''),
(114, 1, 'layout', ''),
(115, 1, 'googleplus', ''),
(116, 1, 'twitter', ''),
(117, 1, 'facebook', ''),
(118, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:0:{}}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'nighthawktiresadmin', '$P$BkrWYkGUEcZBoa7O73uiKDvM5oU7970', 'nighthawktiresadmin', 'jpeterson@develare.com', '', '2016-02-22 05:17:21', '', 0, 'nighthawktiresadmin'),
(2, 'admin', '$P$B/Hh/zaPO/D2J/DtndgyZEa1feDez3.', 'admin', 'demo-comments@studiopress.com', '', '2016-02-22 06:21:12', '', 0, 'Brian Gardner'),
(3, 'lmancke', '$P$BjHaR8kqJA/08hIM5h2ctzSdV.qvo.1', 'lmancke', 'support+demo@copyblogger.com', '', '2016-02-22 06:21:12', '', 0, 'Lauren Mancke') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_api_keys`
#

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;


#
# Table structure of table `wp_woocommerce_api_keys`
#

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_api_keys`
#

#
# End of data contents of table `wp_woocommerce_api_keys`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_attribute_taxonomies`
#

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;


#
# Table structure of table `wp_woocommerce_attribute_taxonomies`
#

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_attribute_taxonomies`
#

#
# End of data contents of table `wp_woocommerce_attribute_taxonomies`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_downloadable_product_permissions`
#

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;


#
# Table structure of table `wp_woocommerce_downloadable_product_permissions`
#

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_downloadable_product_permissions`
#

#
# End of data contents of table `wp_woocommerce_downloadable_product_permissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_order_itemmeta`
#

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;


#
# Table structure of table `wp_woocommerce_order_itemmeta`
#

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_order_itemmeta`
#

#
# End of data contents of table `wp_woocommerce_order_itemmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_order_items`
#

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;


#
# Table structure of table `wp_woocommerce_order_items`
#

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_order_items`
#

#
# End of data contents of table `wp_woocommerce_order_items`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_sessions`
#

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;


#
# Table structure of table `wp_woocommerce_sessions`
#

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_sessions`
#
INSERT INTO `wp_woocommerce_sessions` ( `session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(2, '1', 'a:18:{s:4:"cart";s:6:"a:0:{}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";i:0;s:5:"total";i:0;s:8:"subtotal";i:0;s:15:"subtotal_ex_tax";i:0;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";i:0;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";}', 1459343346) ;

#
# End of data contents of table `wp_woocommerce_sessions`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_tax_rate_locations`
#

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;


#
# Table structure of table `wp_woocommerce_tax_rate_locations`
#

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_tax_rate_locations`
#

#
# End of data contents of table `wp_woocommerce_tax_rate_locations`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_tax_rates`
#

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;


#
# Table structure of table `wp_woocommerce_tax_rates`
#

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`(191)),
  KEY `tax_rate_state` (`tax_rate_state`(191)),
  KEY `tax_rate_class` (`tax_rate_class`(191)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_tax_rates`
#
INSERT INTO `wp_woocommerce_tax_rates` ( `tax_rate_id`, `tax_rate_country`, `tax_rate_state`, `tax_rate`, `tax_rate_name`, `tax_rate_priority`, `tax_rate_compound`, `tax_rate_shipping`, `tax_rate_order`, `tax_rate_class`) VALUES
(1, 'US', 'TX', '6.2500', 'State Tax', 1, 0, 1, 0, '') ;

#
# End of data contents of table `wp_woocommerce_tax_rates`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_termmeta`
#

DROP TABLE IF EXISTS `wp_woocommerce_termmeta`;


#
# Table structure of table `wp_woocommerce_termmeta`
#

CREATE TABLE `wp_woocommerce_termmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `woocommerce_term_id` (`woocommerce_term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_termmeta`
#
INSERT INTO `wp_woocommerce_termmeta` ( `meta_id`, `woocommerce_term_id`, `meta_key`, `meta_value`) VALUES
(1, 30, 'order', '0'),
(2, 31, 'order', '0'),
(3, 30, 'product_count_product_cat', '1') ;

#
# End of data contents of table `wp_woocommerce_termmeta`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#


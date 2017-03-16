-- phpMyAdmin SQL Dump
-- version 4.1.14.8
-- http://www.phpmyadmin.net
--
-- Client :  db632646606.db.1and1.com
-- Généré le :  Jeu 16 Mars 2017 à 09:23
-- Version du serveur :  5.5.54-0+deb7u2-log
-- Version de PHP :  5.4.45-0+deb7u7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `db632646606`
--

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_assets`
--

CREATE TABLE IF NOT EXISTS `ki4ne_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=93 ;

--
-- Contenu de la table `ki4ne_assets`
--

INSERT INTO `ki4ne_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 179, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 58, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 59, 60, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 61, 62, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 63, 64, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 65, 66, 1, 'com_login', 'com_login', '{}'),
(13, 1, 67, 68, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 69, 70, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 71, 72, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 73, 76, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 77, 78, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 79, 140, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 141, 144, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 145, 146, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 147, 148, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 149, 150, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 151, 152, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 153, 156, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 157, 158, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 142, 143, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 154, 155, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 159, 160, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 161, 162, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 163, 164, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 165, 166, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 167, 168, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 169, 170, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 80, 81, 2, 'com_modules.module.1', 'Menu principal', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(40, 18, 82, 83, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 84, 85, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 86, 87, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 88, 89, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 90, 91, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 92, 93, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 94, 95, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 96, 97, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 98, 99, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 100, 101, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 102, 103, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 104, 105, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 106, 107, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 108, 109, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 18, 110, 111, 2, 'com_modules.module.87', 'Popular Tags', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(55, 18, 112, 113, 2, 'com_modules.module.88', 'Site Information', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(56, 18, 114, 115, 2, 'com_modules.module.89', 'Release News', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 18, 116, 117, 2, 'com_modules.module.90', 'Derniers articles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(58, 18, 118, 119, 2, 'com_modules.module.91', 'User Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(59, 18, 120, 121, 2, 'com_modules.module.92', 'Image Module', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(60, 18, 122, 123, 2, 'com_modules.module.93', 'Search', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(61, 27, 19, 20, 3, 'com_content.article.1', 'Comment débuter ?', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(62, 1, 171, 172, 1, '#__ucm_content.1', '#__ucm_content.1', '[]'),
(63, 70, 23, 24, 3, 'com_content.article.2', 'Accueil', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(64, 71, 39, 40, 3, 'com_content.article.3', 'Nos services', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(65, 72, 43, 44, 3, 'com_content.article.4', 'Nos offres et tarifs', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(66, 73, 47, 48, 3, 'com_content.article.5', 'Contact et ressources', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(67, 74, 28, 29, 4, 'com_content.article.6', 'Pôle administratif', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(68, 75, 32, 33, 4, 'com_content.article.7', 'Pôle Web', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(69, 76, 36, 37, 4, 'com_content.article.8', 'Pôle combiné', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(70, 8, 22, 25, 2, 'com_content.category.8', 'Accueil', '{}'),
(71, 8, 26, 41, 2, 'com_content.category.9', 'Nos services', '{}'),
(72, 8, 42, 45, 2, 'com_content.category.10', 'Nos offres et tarifs', '{}'),
(73, 8, 46, 49, 2, 'com_content.category.11', 'Contact et ressources', '{}'),
(74, 71, 27, 30, 3, 'com_content.category.12', 'Pôle administratif', '{}'),
(75, 71, 31, 34, 3, 'com_content.category.13', 'Pôle Web', '{}'),
(76, 71, 35, 38, 3, 'com_content.category.14', 'Pôle combiné', '{}'),
(77, 78, 55, 56, 3, 'com_content.article.9', 'Mentions légales', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(78, 8, 54, 57, 2, 'com_content.category.15', 'Mentions légales', '{}'),
(79, 8, 50, 53, 2, 'com_content.category.16', 'Contact', '{}'),
(80, 79, 51, 52, 3, 'com_content.article.10', 'Contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(81, 18, 124, 125, 2, 'com_modules.module.94', 'Des suggestions ?', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(82, 1, 173, 174, 1, 'com_ajaxdropfilesfp', 'com_ajaxdropfilesfp', '{}'),
(83, 18, 126, 127, 2, 'com_modules.module.95', 'GalleryFP - Light', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(84, 16, 74, 75, 2, 'com_menus.menu.3', 'footer', '{}'),
(85, 18, 128, 129, 2, 'com_modules.module.96', 'Footer', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(86, 18, 130, 131, 2, 'com_modules.module.97', 'SP Quick Contact', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(87, 18, 132, 133, 2, 'com_modules.module.98', 'Fabrik Form Module', '{}'),
(88, 18, 134, 135, 2, 'com_modules.module.99', 'Fabrik List Module', '{}'),
(89, 1, 175, 176, 1, 'com_fabrik', 'com_fabrik', '{}'),
(90, 1, 177, 178, 1, 'com_jquickcontact', 'com_jquickcontact', '{}'),
(91, 18, 136, 137, 2, 'com_modules.module.100', 'Rapid Contact', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(92, 18, 138, 139, 2, 'com_modules.module.101', 'RSContact', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}');

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_associations`
--

CREATE TABLE IF NOT EXISTS `ki4ne_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_banner_clients`
--

CREATE TABLE IF NOT EXISTS `ki4ne_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `ki4ne_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_banners`
--

CREATE TABLE IF NOT EXISTS `ki4ne_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_categories`
--

CREATE TABLE IF NOT EXISTS `ki4ne_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Contenu de la table `ki4ne_categories`
--

INSERT INTO `ki4ne_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 29, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 496, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'non-categorise', 'com_content', 'Non catégorisé', 'non-categorise', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 496, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'non-categorise', 'com_banners', 'Non catégorisé', 'non-categorise', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 496, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'non-categorise', 'com_contact', 'Non catégorisé', 'non-categorise', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 496, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'non-categorise', 'com_newsfeeds', 'Non catégorisé', 'non-categorise', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 496, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'non-categorise', 'com_users', 'Non catégorisé', 'non-categorise', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 496, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 70, 1, 11, 12, 1, 'accueil', 'com_content', 'Accueil', 'accueil', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 496, '2016-09-12 07:28:22', 0, '2016-09-12 07:28:22', 0, '*', 1),
(9, 71, 1, 13, 20, 1, 'nos-services', 'com_content', 'Nos services', 'nos-services', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 496, '2016-09-12 07:28:41', 0, '2016-09-12 07:28:41', 0, '*', 1),
(10, 72, 1, 21, 22, 1, 'nos-offres-et-tarifs', 'com_content', 'Nos offres et tarifs', 'nos-offres-et-tarifs', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 496, '2016-09-12 07:28:55', 0, '2016-09-12 07:28:55', 0, '*', 1),
(11, 73, 1, 23, 24, 1, 'contact-et-ressources', 'com_content', 'Contact et ressources', 'contact-et-ressources', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 496, '2016-09-12 07:29:15', 496, '2016-09-14 07:53:55', 0, '*', 1),
(12, 74, 9, 14, 15, 2, 'nos-services/pole-administratif', 'com_content', 'Pôle administratif', 'pole-administratif', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 496, '2016-09-12 07:29:27', 496, '2016-09-12 07:30:20', 0, '*', 1),
(13, 75, 9, 16, 17, 2, 'nos-services/pole-web', 'com_content', 'Pôle Web', 'pole-web', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 496, '2016-09-12 07:29:45', 496, '2016-09-12 07:30:36', 0, '*', 1),
(14, 76, 9, 18, 19, 2, 'nos-services/pole-combine', 'com_content', 'Pôle combiné', 'pole-combine', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 496, '2016-09-12 07:29:57', 496, '2016-09-12 07:30:54', 0, '*', 1),
(15, 78, 1, 27, 28, 1, 'mentions-legales', 'com_content', 'Mentions légales', 'mentions-legales', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 496, '2016-09-12 07:54:15', 496, '2016-09-14 07:54:49', 0, '*', 1),
(16, 79, 1, 25, 26, 1, 'contact', 'com_content', 'Contact', 'contact', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 496, '2016-09-12 07:54:58', 496, '2016-09-14 07:54:25', 0, '*', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_contact_details`
--

CREATE TABLE IF NOT EXISTS `ki4ne_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `suburb` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_content`
--

CREATE TABLE IF NOT EXISTS `ki4ne_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `urls` text COLLATE utf8_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Contenu de la table `ki4ne_content`
--

INSERT INTO `ki4ne_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 61, 'Comment débuter ?', 'comment-debuter', '<p>La création d''un site web avec Joomla est simple, le déploiement de ce site exemple vous y aidera. <br />Les quelques principes de base présentés ci-dessous vous guideront dans la compréhension de ce logiciel.</p><h3>Qu''est-ce qu''un Système de Gestion de Contenu ?</h3><p>Un   système de gestion de contenu (SGC ou CMS de l''anglais Content  Management System) est un logiciel qui vous permet de créer  et gérer  des pages Web facilement, séparant la création des contenus de la  gestion technique nécessaire à une diffusion sur le web.</p><p>Le  contenu rédactionnel est stocké et restitué par une base de données, l''aspect (police, taille, couleur, emplacement, etc.) est géré par un  template (habillage du site). Le logiciel Joomla permet d''unir ces deux  structures de manière conviviale et de les rendre accessibles au plus  grand nombre d''utilisateurs.</p><h3>Deux interfaces</h3><p>Un site Joomla est structuré en deux parties distinctes : la partie visible du site appelée «Frontal» de <em>Frontend</em> en anglais et, la partie d''administration pure appelée «Administration» de <em>Administrator</em>.</p><h3>Administration</h3><p>Vous pouvez accéder à l''administration en cliquant sur le sur le lien «Administration» présent dans le module de menu «Menu membre» visible après vous être connecté sur le site ou, en  ajoutant  <em>/administrator</em> dans l''URL après le nom de domaine (exemple : www.mon-domaine.com/administrator).</p><p>Utilisez le nom d''utilisateur et le mot de passe créés lors de l''installation de Joomla.</p><h3>Frontal</h3><p>Si votre profil possède les droits suffisants, vous pouvez créer des articles et les éditer depuis l''interface frontale du site.</p><p>Connectez-vous par le module «Connexion» en utilisant le nom d''utilisateur et le mot de passe créés lors de l''installation de Joomla.</p><h3>Créer un article en frontal</h3><p>Lorsque vous êtes connecté, un nouveau menu nommé «Menu Membres» apparaît. Cliquez sur le lien  «Créer un article» pour afficher l''éditeur de texte et d''insertion de médias.</p><p>Pour enregistrer l''article, vous devez spécifier à quelle catégorie il appartient ainsi que son statut de publication. Pour le modifier, cliquez sur l''icône d''édition <img src="media/system/images/edit.png" border="0" alt="Editer un article" width="18" height="18" style="vertical-align: middle;" />.</p><p>Vous pouvez travailler sur des articles non publiés ou de publication programmée dans le temps et, dans le cadre d''un travail collaboratif, ne les rendre visibles qu''à un groupe d''utilisateurs donnés avant de les rendre publics.</p><h3>En savoir plus</h3><p>Une pleine utilisation de Joomla requiert certaines connaissances approfondies que vous pourrez acquérir dans la <a href="http://docs.joomla.org/" target="_blank">documentation officielle de Joomla</a> ou sur le <a href="http://aide.joomla.fr/" target="_blank">site d''aide francophone</a> et dans le <a href="http://forum.joomla.org/" target="_blank">forum officiel</a> ou le <a href="http://forum.joomla.fr/" target="_blank">forum francophone</a>.</p>', '', 0, 2, '2013-11-16 00:00:00', 496, '', '2016-09-12 07:27:10', 496, 0, '0000-00-00 00:00:00', '2013-11-16 00:00:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 63, 'Accueil', 'accueil', '<h1 style="text-align: center;"><strong>Bienvenue sur le site E-Service Clients SR</strong></h1>\r\n<p> </p>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="images/oadmin.jpg" alt="" width="662" height="290" /></p>\r\n<p><strong><img style="float: left;" src="images/acc1.png" alt="" width="501" height="210" /><img style="float: left;" src="images/acc2.png" alt="" width="524" height="217" /></strong></p>\r\n<p> </p>\r\n<h5 style="text-align: center;"> </h5>\r\n<h5 style="text-align: center;"> </h5>\r\n<h5 style="text-align: center;"> </h5>\r\n<h5 style="text-align: center;"> </h5>\r\n<p> </p>\r\n<center></center>\r\n<h3 style="text-align: center;">Contactez nous par téléphone en cliquant ci-dessous :</h3>\r\n<p style="text-align: center;"><a href="tel:+33659864238"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/phone.png" width="137" height="137" />06.59.86.42.38</a></p>', '', 1, 8, '2016-09-08 13:02:36', 496, '', '2016-10-11 12:07:04', 496, 496, '2016-10-11 12:16:49', '2016-09-08 13:02:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 44, 2, '', '', 1, 572, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 64, 'Nos services', 'nos-services', '<center></center>\r\n<table style="height: 707px; width: 1048px;">\r\n<tbody>\r\n<tr>\r\n<td style="width: 347px; text-align: center;">\r\n<h2>Pôle Administratif</h2>\r\n</td>\r\n<td style="width: 348px;">\r\n<p><img src="images/sadmin.jpg" alt="" width="245" height="245" /></p>\r\n</td>\r\n<td style="width: 330px;">\r\n<p> </p>\r\n<p>- Gestion des courriels<br />- Classement et archivage<br />- Saisie de données<br />- Prise d''appels téléphonique<br />- Démarches et formalités administratives<br />- Mise à jour du contenu</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 347px; text-align: center;">\r\n<h2>Pôle Web</h2>\r\n</td>\r\n<td style="width: 348px;">\r\n<p><img src="images/sweb.jpg" alt="" width="247" height="181" /></p>\r\n</td>\r\n<td style="width: 330px;">- Création de sites Web dynamiques<br />- Création de pages de réseaux sociaux<br />- Hot Line</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 347px; text-align: center;">\r\n<h2>Pôle Combiné</h2>\r\n</td>\r\n<td style="width: 348px;">\r\n<p><img src="images/scomb.jpg" alt="" width="253" height="253" /></p>\r\n</td>\r\n<td style="width: 330px;">\r\n<p> </p>\r\n<p>- Création et/ou développement de site Web<br />- Rédaction de contenu<br />- Gestion des courriels<br />- Mise à jour du contenu<br />- Prise d''appels téléphoniques</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<center></center><center></center><center></center><center></center><center></center><center></center><center></center>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>', '', 1, 9, '2016-09-08 13:06:42', 496, '', '2016-09-15 12:53:16', 496, 0, '0000-00-00 00:00:00', '2016-09-08 13:06:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 47, 3, '', '', 1, 203, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 65, 'Nos offres et tarifs', 'nos-offres-et-tarifs', '<table style="height: 519px; width: 925px;" cellpadding="0">\r\n<tbody>\r\n<tr style="height: 67px;">\r\n<td style="width: 304.733px; height: 67px;"> \r\n<h2 style="text-align: center;">Administration</h2>\r\n</td>\r\n<td style="width: 317.5px; text-align: right; height: 67px;">\r\n<h2 style="text-align: center;">Web</h2>\r\n</td>\r\n<td style="width: 285.833px; height: 67px;">\r\n<h2 style="text-align: center;">Combiné</h2>\r\n</td>\r\n</tr>\r\n<tr style="height: 308px;">\r\n<td style="width: 304.733px; height: 308px;"> <br />\r\n<p style="text-align: center;"><img src="images/oweb.jpg" alt="" width="301" height="301" /></p>\r\n</td>\r\n<td style="width: 317.5px; height: 308px;">\r\n<p style="text-align: center;"> </p>\r\n<p style="text-align: center;"><img src="images/oadmin.jpg" alt="" width="528" height="232" /></p>\r\n</td>\r\n<td style="width: 285.833px; height: 308px;">\r\n<p style="text-align: center;"><img src="images/ocomb.jpg" alt="" width="318" height="317" /></p>\r\n</td>\r\n</tr>\r\n<tr style="height: 32px;">\r\n<td style="width: 304.733px; height: 32px;">\r\n<p style="text-align: left;"> </p>\r\n<p style="text-align: left;">               - Création de site Web dynamiques<br />               - Site responsive<br />               - Création de pages pour réseaux sociaux<br />               - Hotline</p>\r\n<h2 style="text-align: center;"> </h2>\r\n</td>\r\n<td style="width: 317.5px; text-align: left; height: 32px;">\r\n<p>     - Traitement des mails<br />     - Prise d''appels téléphoniques<br />     - Prise de rendez-vous<br />     - Gestion de vos agendas<br />     - Émission de mailings<br />     - Classement/archivage de données              </p>\r\n<p> </p>\r\n</td>\r\n<td style="width: 285.833px; height: 32px;">\r\n<p style="text-align: left;">      - Création/refonte de site Web<br />      - Traitement des flux entrants (appels/mails)<br />      - Traitement de vos commandes sur Back Office<br />      - Analyse transparente de vos activités avec conseils</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h2 style="text-align: center;"> </h2>\r\n<p style="text-align: center;"> </p>\r\n<p> </p>\r\n<h2 style="text-align: center;"> </h2>\r\n<p style="text-align: center;"> </p>\r\n<p> </p>\r\n<center></center><center></center><center></center><center></center><center></center>\r\n<h2 style="text-align: center;"> </h2>\r\n<p style="text-align: center;"> </p>\r\n<p> </p>\r\n<center></center><center></center>', '', 1, 10, '2016-09-08 13:07:02', 496, '', '2016-09-28 07:06:03', 496, 0, '0000-00-00 00:00:00', '2016-09-08 13:07:02', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 36, 7, '', '', 1, 199, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 66, 'Contact et ressources', 'contact', '<div id="contener"><!--?php include(''include/menu.php''); ?-->\r\n<div class="contenu">\r\n<h1 style="text-align: center;">Pour nous contacter :</h1>\r\n<h1 style="text-align: center;">Par téléphone :</h1>\r\n<center><img style="width: 8%;" src="images/tel.png" alt="téléphone" /></center><center>\r\n<ul>01.86.95.30.42</ul>\r\n</center><center>\r\n<ul>OU</ul>\r\n</center><center>\r\n<ul>06.59.86.42.38</ul>\r\n</center>\r\n<h1 style="text-align: center;"> </h1>\r\n<h1 style="text-align: center;"> </h1>\r\n<h1 style="text-align: center;">Par e-mail :</h1>\r\n<p> </p>\r\n<p style="text-align: center;"><a href="mailto:contact@e-serviceclientsr.com">contact@e-serviceclientsr.com</a></p>\r\n<p style="text-align: center;"> </p>\r\n<h1 style="text-align: center;"><strong>Ressources :</strong></h1>\r\n<p style="text-align: center;"><a href="index.php/contact-et-ressources/mentions-legales">Mentions légales</a></p>\r\n</div>\r\n</div>', '', 1, 11, '2016-09-08 13:07:19', 496, '', '2016-09-12 08:02:35', 496, 0, '0000-00-00 00:00:00', '2016-09-08 13:07:19', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 8, '', '', 1, 42, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 67, 'Pôle administratif', 'pole-administratif', '<h1 style="text-align: center;"><strong>Plus d''infos sur le pôle administratif :</strong></h1>', '', 1, 12, '2016-09-12 07:25:23', 496, '', '2016-09-12 07:45:39', 496, 0, '0000-00-00 00:00:00', '2016-09-12 07:25:23', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"1","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 4, '', '', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 68, 'Pôle Web', 'pole-web', '<h1 style="text-align: center;"><strong>Plus d''infos sur le pôle web</strong></h1>', '', 1, 13, '2016-09-12 07:25:50', 496, '', '2016-09-12 07:46:23', 496, 0, '0000-00-00 00:00:00', '2016-09-12 07:25:50', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 5, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 69, 'Pôle combiné', 'pole-combine', '<h1 style="text-align: center;"><strong>Plus d''infos sur le pôle combiné</strong></h1>', '', 1, 14, '2016-09-12 07:26:17', 496, '', '2016-09-12 07:46:03', 496, 0, '0000-00-00 00:00:00', '2016-09-12 07:26:17', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 6, '', '', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 77, 'Mentions légales', 'mentions-legales', '<h1>Mentions légales</h1>\r\n<center><img style="width: 6%;" src="images/logoa.png" /></center><center>\r\n<h2>Informations légales</h2>\r\n</center><center>E SERVICE CLIENTS SR SASU est une société à action simplifiée qui exerce son activité de prestations de services au capital de 500 Euros.<br /> Siège social : 108 rue de la Croix Nivert 75015 PARIS<br /> Email : contact@escsr.com<br /> Numéro de téléphone : 01.86.95.30.42<br /> Inscrite au RCS de PARIS sous le N° 811535301<br /> N° SIRET : FR058811535301<br /> N° TVA INTRACOMMUNAUTAIRE : FR058811535301</center>\r\n<p><br /><br /></p>\r\n<center><img style="width: 6%;" src="images/logoa.png" /></center><center>\r\n<h2>Hébergement</h2>\r\n</center><center>Le prestataire assurant l''hébergement du site est la société OVH - 140 Quai du Sartel - 59100 ROUBAIX</center>\r\n<p><br /><br /></p>\r\n<center><img style="width: 6%;" src="images/logoa.png" /></center><center>\r\n<h2>Publication</h2>\r\n</center><center>Directrice de la publication : Sandrine RALAIARISON, gérante.<br /> Ce site a pour vocation de présenter les services de la société E SERVICE CLIENTS SR. Tous droits réservés. Les textes et les illustrations, sauf mention particulière, sont la propriété exclusive de E SERVICE CLIENTS SR.</center>\r\n<p><br /><br /></p>', '', 1, 15, '2016-09-12 07:53:42', 496, '', '2016-09-12 07:59:55', 496, 0, '0000-00-00 00:00:00', '2016-09-12 07:53:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 2, '', '', 1, 28, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 80, 'Contact', 'contact', '<div id="contener"><!--?php include(''include/menu.php''); ?-->\r\n<div class="contenu">\r\n<h1 style="text-align: center;">Pour nous contacter :</h1>\r\n<h1 style="text-align: center;">Par téléphone :</h1>\r\n<center><a href="tel:+33659864238"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/tel.png" width="66" height="66" /></a></center><center><a href="tel:+33186953042">01.86.95.30.42</a></center><center>\r\n<ul>OU</ul>\r\n</center><center><a href="tel:+33659864238">06.59.86.42.38</a></center>\r\n<h1 style="text-align: center;"> </h1>\r\n<h1 style="text-align: center;">Par e-mail :</h1>\r\n<p> </p>\r\n<p style="text-align: center;">Remplissez le formulaire ç votre gauche, ou envoyez votre message à : <a href="mailto:contact@escsr.com">contact@escsr.com</a></p>\r\n<p style="text-align: center;"> </p>\r\n</div>\r\n</div>', '', 1, 16, '2016-09-12 08:01:22', 496, '', '2016-09-16 08:53:55', 496, 0, '0000-00-00 00:00:00', '2016-09-12 08:01:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 1, '', '', 1, 61, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `ki4ne_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_content_rating`
--

CREATE TABLE IF NOT EXISTS `ki4ne_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_content_types`
--

CREATE TABLE IF NOT EXISTS `ki4ne_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Contenu de la table `ki4ne_content_types`
--

INSERT INTO `ki4ne_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `ki4ne_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Maps items from content tables to tags';

--
-- Contenu de la table `ki4ne_contentitem_tag_map`
--

INSERT INTO `ki4ne_contentitem_tag_map` (`type_alias`, `core_content_id`, `content_item_id`, `tag_id`, `tag_date`, `type_id`) VALUES
('com_content.article', 1, 1, 2, '2016-09-12 07:27:10', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `ki4ne_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_extensions`
--

CREATE TABLE IF NOT EXISTS `ki4ne_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10059 ;

--
-- Contenu de la table `ki4ne_extensions`
--

INSERT INTO `ki4ne_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"fr-FR","site":"fr-FR"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"c066cdcbe1515488295c71c78a7b595b"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.17.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2016","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.4.0","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `ki4ne_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 0, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1478265793}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":2,"lastrun":1473679588,"unique_id":"9ea1dab3fece8fac02bfcb989f95a56aac2cd843","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(602, 'French (fr-FR)', 'language', 'fr-FR', '', 0, 1, 0, 0, '{"name":"French (fr-FR)","type":"language","creationDate":"August 2016","author":"French translation team : joomla.fr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"traduction@joomla.fr","authorUrl":"http:\\/\\/www.joomla.fr","version":"3.6.2.1","description":"French site language for Joomla 3","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(603, 'French (FR)', 'language', 'fr-FR', '', 1, 1, 0, 0, '{"name":"French (FR)","type":"language","creationDate":"June 2016","author":"French translation team : joomla.fr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"traduction@joomla.fr","authorUrl":"http:\\/\\/www.joomla.fr","version":"3.6.2.1","description":"French administrator language for Joomla 3","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(605, 'French Language pack', 'package', 'pkg_fr-FR', '', 0, 1, 1, 0, '{"name":"French Language pack","type":"package","creationDate":"05\\/08\\/2016","author":"French translation team : joomla.fr","copyright":"Copyright (C) 2005 - 2016 Joomla.fr and Open Source Matters, Inc. All rights reserved.","authorEmail":"traduction@joomla.fr","authorUrl":"http:\\/\\/joomla.fr","version":"3.6.2.1","description":"<div style=\\"text-align:left;\\">\\n<h3>Joomla! 3.6.2 Full French (fr-FR) Language Package - Version 3.6.2.1<\\/h3>\\n<h3>Paquet de langue Joomla! 3.6.2 fran\\u00e7ais (fr-FR) complet - Version 3.6.2.1<\\/h3>\\n<\\/div>","group":"","filename":"pkg_fr-FR"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"August 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'AS 002058 Free', 'template', 'as002058free', '', 0, 1, 1, 0, '{"name":"AS 002058 Free","type":"template","creationDate":"2013-10-25","author":"AS Designing","copyright":"AS Designing","authorEmail":"","authorUrl":"http:\\/\\/www.asdesigning.com - http:\\/\\/www.astemplates.com","version":"1.6.0","description":"\\n\\t\\n\\t\\n\\n\\t\\t\\t<img src=\\"..\\/templates\\/as002058free\\/template_thumbnail.png\\" align=\\"left\\" class=\\"template_thumbnail\\" \\n\\t\\t\\t\\t\\tstyle=\\"margin: 0px 0px 10px 0px; display: none;\\" \\/>\\n\\t\\t\\t\\t\\t\\n\\t\\t\\t<h1><span  style=\\"padding-top: 10px; display: block\\">AS Template 002058 - Free Version for Joomla! 3<\\/span><\\/h1>\\n\\t\\t\\t\\n\\t\\t\\t<a href=\\"http:\\/\\/www.astemplates.com\\/joomla-template-documentation\\/209-002058\\" target=\\"_blank\\">Click here<\\/a>  to see the template documentation.\\n\\t\\t\\t<br \\/>Check our <a href=\\"http:\\/\\/blog.astemplates.com\\/category\\/joomla-tutorial\\/\\" target=\\"_blank\\">Joomla Tutorial<\\/a>.<br \\/>\\n\\t\\t\\t\\n\\t\\t\\t<span style=\\"color:orange;\\">\\n\\t\\t\\tFree Version is limited and may not include all configuration parameters and module positions.<br \\/><br \\/>\\n\\t\\t\\t<\\/span>\\n\\t\\t\\t \\n\\t\\t\\t<a href=\\"http:\\/\\/www.astemplates.com\\/joomla-template-details\\/209-002058\\" target=\\"_blank\\">\\n\\t\\t\\t<b style=\\"color:red;  font-size:18px\\">DOWNLOAD full free package from here:<\\/b><\\/a><br \\/>\\n\\t\\t\\t<a href=\\"http:\\/\\/www.astemplates.com\\/joomla-template-details\\/209-002058\\" target=\\"_blank\\">http:\\/\\/www.astemplates.com\\/joomla-template-details\\/209-002058<\\/a>\\n\\t\\t\\t<br \\/><br \\/><br \\/><br \\/>\\n\\n\\t\\t\\t<hr \\/>\\n\\t\\t\\t<br \\/>\\n\\t\\t\\t<h3><b>Most popular AS Templates:<\\/b><\\/h3><br \\/>\\n\\t\\t\\t    <a href=\\"http:\\/\\/www.astemplates.com\\/joomla-template-details\\/170-002046\\" target=\\"_blank\\" style=\\"margin: 10px 20px 20px 0px;\\">\\n\\t\\t\\t\\t<img src=\\"http:\\/\\/www.astemplates.com\\/content\\/templates\\/170\\/template.thumbnail.png\\">\\n\\t\\t\\t\\t<\\/a>\\n\\t\\t\\t    <a href=\\"http:\\/\\/www.astemplates.com\\/joomla-template-details\\/319-002073\\" target=\\"_blank\\" style=\\"margin: 10px 20px 20px 0px;\\">\\n\\t\\t\\t\\t<img src=\\"http:\\/\\/www.astemplates.com\\/content\\/templates\\/319\\/template.thumbnail.png\\">\\n\\t\\t\\t\\t<\\/a>\\n\\t\\t\\t    <a href=\\"http:\\/\\/www.astemplates.com\\/joomla-template-details\\/353-002074\\" target=\\"_blank\\" style=\\"margin: 10px 20px 20px 0px;\\">\\n\\t\\t\\t\\t<img src=\\"http:\\/\\/www.astemplates.com\\/content\\/templates\\/353\\/template.thumbnail.png\\">\\n\\t\\t\\t\\t<\\/a>\\n\\t\\t\\t    <a href=\\"http:\\/\\/www.astemplates.com\\/joomla-template-details\\/157-002044\\" target=\\"_blank\\" style=\\"margin: 10px 20px 20px 0px;\\">\\n\\t\\t\\t\\t<img src=\\"http:\\/\\/www.astemplates.com\\/content\\/templates\\/157\\/template.thumbnail.png\\">\\n\\t\\t\\t\\t<\\/a>\\n<br \\/><br \\/>\\n\\t\\t\\t\\t\\n\\t\\t\\t    <a href=\\"http:\\/\\/www.astemplates.com\\/joomla-template-details\\/238-002066\\" target=\\"_blank\\" style=\\"margin: 10px 20px 20px 0px;\\">\\n\\t\\t\\t\\t<img src=\\"http:\\/\\/www.astemplates.com\\/content\\/templates\\/238\\/template.thumbnail.png\\">\\n\\t\\t\\t\\t<\\/a>\\n\\t\\t\\t    <a href=\\"http:\\/\\/www.astemplates.com\\/joomla-template-details\\/110-002033\\" target=\\"_blank\\" style=\\"margin: 10px 20px 20px 0px;\\">\\n\\t\\t\\t\\t<img src=\\"http:\\/\\/www.astemplates.com\\/content\\/templates\\/110\\/template.thumbnail.png\\">\\n\\t\\t\\t\\t<\\/a>\\n\\t\\t\\t    <a href=\\"http:\\/\\/www.astemplates.com\\/joomla-template-details\\/179-002048\\" target=\\"_blank\\" style=\\"margin: 10px 20px 20px 0px;\\">\\n\\t\\t\\t\\t<img src=\\"http:\\/\\/www.astemplates.com\\/content\\/templates\\/179\\/template.thumbnail.png\\">\\n\\t\\t\\t\\t<\\/a>\\n\\t\\t\\t    <a href=\\"http:\\/\\/www.astemplates.com\\/joomla-template-details\\/212-002057\\" target=\\"_blank\\" style=\\"margin: 10px 20px 20px 0px;\\">\\n\\t\\t\\t\\t<img src=\\"http:\\/\\/www.astemplates.com\\/content\\/templates\\/212\\/template.thumbnail.png\\">\\n\\t\\t\\t\\t<\\/a>\\n\\t\\t\\t<br \\/><br \\/>\\n\\t","group":"","filename":"templateDetails"}', '{"body_font_family":"Tahoma, Geneva, sans-serif, Arial","body_font_size":"12","body_font_color":"","hfont_family":"Michroma","h1_font_size":"","h2_font_size":"","h3_font_size":"","h4_font_size":"","h5_font_size":"","link_font_color":"","hlink_font_color":"","btn_font_color":"","btn_hfont_color":"","btn_gradient_topcolor":"","btn_gradient_bottomcolor":"","logo_size":"3","logo_type":"1","logo_img":"","logo_txt":"","logo_font_family":"Tangerine:700","logo_font_size":"","logo_font_style":"normal","logo_font_weight":"normal","logo_font_color":"","slogan_txt":"","slogan_font_family":"Arial, Helvetica, sans-serif","slogan_font_size":"12","slogan_font_style":"normal","slogan_font_weight":"normal","slogan_font_color":"","aside_left_width":"4","aside_right_width":"3","feature_totop":"1","feature_totop_text":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'plg_system_jsntplframework', 'plugin', 'jsntplframework', 'system', 0, 1, 1, 1, '{"name":"plg_system_jsntplframework","type":"plugin","creationDate":"07\\/15\\/2016","author":"JoomlaShine.com","copyright":"Copyright (C) 2012 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"3.1.6","description":"","group":"","filename":"jsntplframework"}', '{"update-check":1478266553}', '', '', 0, '0000-00-00 00:00:00', 9999, 0),
(10002, 'jsn_artista_free', 'template', 'jsn_artista_free', '', 0, 1, 1, 0, '{"name":"jsn_artista_free","type":"template","creationDate":"04\\/11\\/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2015 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.0.1","description":"TPL_JSN_ARTISTA_FREE_XML_DESCRIPTION","group":"jsntemplate","filename":"templateDetails"}', '[]', 'jsntemplate', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'Car Deluxe', 'template', 'cardeluxe', '', 0, 1, 1, 0, '{"name":"Car Deluxe","type":"template","creationDate":"May 2013","author":"Web Design Builders","copyright":"Copyright (C) Web Design Builders. All Right Reserved.","authorEmail":"mail@webdesignbuilders.net","authorUrl":"http:\\/\\/www.webdesignbuilders.net","version":"1.0","description":"Web Design Builders Free Car Deluxe Joomla 3.6 Templates<br \\/>Partner by Joomla Perfect","group":"","filename":"templateDetails"}', '{"logo":"templates\\/cardeluxe\\/images\\/logo.png"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'Suggest', 'module', 'mod_suggest', '', 0, 1, 0, 0, '{"name":"Suggest","type":"module","creationDate":"February 2016","author":"Sandro","copyright":"Copyright (C) 2006 - 2016 Open Source Matters. All rights reserved.","authorEmail":"sandro@actiaweb.com","authorUrl":"www.actiaweb.com","version":"5.0.0","description":"MOD_SUGGEST","group":"","filename":"mod_suggest"}', '{"mail":"","whantthemailofthesuggestman":"0","libofthelabelforsuggestman":"","button":"","from":"mywebsite@suggestion.com","subject":"Suggestion","emailsend":"email sent","widthbutton":"","btn":"btn","heightbutton":"","buttontextcolor":"","text":"","width":"100","height":"3","challengeorno":"0","challengename":"Challenge","challenge":"0404","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'wt_mino_free', 'template', 'wt_mino_free', '', 0, 1, 1, 0, '{"name":"wt_mino_free","type":"template","creationDate":"Feb 2016","author":"WarpTheme","copyright":"Copyright (C) WarpTheme","authorEmail":"support@warptheme.com","authorUrl":"http:\\/\\/www.warptheme.com","version":"1.0.1","description":"\\n\\t\\t\\n\\t\\t<div class=\\"overview-header\\" style=\\"text-align: left;\\">\\n\\t\\t\\t<h2>\\n\\t\\t\\t  <small style=\\"display: block;\\">One Page Joomla template - <strong>WT Mino<\\/strong><\\/small><\\/h2>\\n\\t\\t\\t<p>Mino - Responsive One Page Joomla template. Mino is a great design idea for website of Creative Corporate, Corporation, Company Profile, Personal Portfolio, and more.<\\/p>\\n\\t\\t\\t<p>Help and Support: Visit <a href=\\"http:\\/\\/warptheme.com\\/\\" target=\\"_blank\\">WarpTheme<\\/a><\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"templateDetails"}', '{"config":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'jsn_fidem_free', 'template', 'jsn_fidem_free', '', 0, 1, 1, 0, '{"name":"jsn_fidem_free","type":"template","creationDate":"07\\/21\\/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.1.0","description":"TPL_JSN_FIDEM_FREE_XML_DESCRIPTION","group":"jsntemplate","filename":"templateDetails"}', '[]', 'jsntemplate', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'jsn_teki_free', 'template', 'jsn_teki_free', '', 0, 1, 1, 0, '{"name":"jsn_teki_free","type":"template","creationDate":"07\\/15\\/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"3.1.0","description":"TPL_JSN_TEKI_FREE_XML_DESCRIPTION","group":"jsntemplate","filename":"templateDetails"}', '[]', 'jsntemplate', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'mx_joomla140', 'template', 'mx_joomla140', '', 0, 1, 1, 0, '{"name":"mx_joomla140","type":"template","creationDate":"2016","author":"mixwebtemplates.com","copyright":"Copyright (C) 2010 - 2016 mixwebtemplates.com. All rights reserved.","authorEmail":"support@mixwebtemplates.com","authorUrl":"http:\\/\\/www.mixwebtemplates.com","version":"3.5.0","description":"\\n\\t\\t\\t<style type=\\"text\\/css\\" media=\\"all\\">\\n\\t\\t\\t\\t<!--\\n\\t\\t\\t\\t#wrap1 {padding:0px 0px 4px 0px;}\\n\\t\\t\\t\\th1 {clear:both;font-family: Georgia, sans-serif;font-size:36px;margin:30px 20px 0px ;padding:0px 0px 14px 10px;color:#369; border-bottom: 1px solid #ccc; font-weight: normal;}\\n\\t\\t\\t\\th4 { border: none;  margin: 0 0 12px; padding:0; font: 20px\\/32px Georgia, sans-serif; color: #333; }\\t\\t\\t\\t\\n\\t\\t\\t\\t.wrap2 {background:#fff;padding: 20px; font-family: Arial; font-size:13px; text-align: justify; color: #4d4d4d; line-height: 24px;}\\n\\t\\t\\t\\t.leftside {margin: 16px 0 0 176px; font-weight:normal!important; }\\n\\t\\t\\t\\t.livedemo { margin-top: 28px; }\\n\\t\\t\\t\\t.param_headings {display:block; font-weight:bold; text-transform:uppercase; font-size:100%; background:#900; color:#fff;padding:5px 15px;}\\n\\t\\t\\t\\t.adminformlist .hasTip {cursor: help;}\\n\\t\\t\\t\\t.panel .title { padding: 9px !important; background: #fafafa !important;}\\n\\t\\t\\t\\t.panel .title:hover, .panel .title:active { padding: 9px !important; background: #f7f7f7 !important; }\\n\\t\\t\\t\\tul.adminformlist li { float: left; margin: 0px; padding: 5px 0 5px 0 !important; width: 100%; clear: left; }\\n\\t\\t\\t\\t* html .clearfix,:first-child+html .clearfix{zoom:1}\\n\\t\\t\\t\\t.line_separator.hasText{color:#000;cursor:pointer;font-size:10px;line-height:1px;padding-left:100px}\\n\\t\\t\\t\\t.line_separator{background:#E5E5E5;clear:both;display:block;height:5px;margin:5px 0}\\n\\t\\t\\t\\t.line_separator.hasText span{background:#E5E5E5;padding:4px 10px}\\n\\t\\t\\t\\t.text-limit{text-align:right}\\n\\t\\t\\t\\t-->\\n\\t\\t\\t<\\/style>\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t<div id=\\"wrap1\\">     \\n\\t\\t\\t<h1><em>mx_joomla140 free<\\/em><\\/h1>\\n\\t\\t\\t<div class=\\"wrap2\\">                  \\t\\t\\t\\t\\t\\t\\n\\t\\t\\t<a title=\\"Visit the official website!\\" href=\\"http:\\/\\/www.mixwebtemplates.com\\/\\" target=\\"_blank\\"> <img style=\\"float:left;border:1px solid #ccc;margin-right:10px;padding:3px\\" src=\\"..\\/templates\\/mx_joomla140\\/template_thumbnail.png\\" border=\\"0\\" alt=\\"Logo\\" \\/><\\/a>   \\n\\t\\t\\t<div class=\\"leftside\\">\\n\\t\\t\\t<h4>Free Joomla Template.<\\/h4> \\n\\t\\t\\t<p>All features are available only in the pro version. <br\\/>\\n\\t\\t\\tPro template has all template features and does not include the extensions. <br\\/> The extension used on the demo and pro template are included on the full package. For additional information visit <a href=\\"http:\\/\\/www.mixwebtemplates.com\\/\\">mixwebtemplates<\\/a><\\/p>\\n\\t\\t\\t<\\/div><\\/div><\\/div>\\n","group":"","filename":"templateDetails"}', '{"layout_type":"3","main_width":"960px","left_width":"25","right_width":"27","sideleft_width":"20","sideright_width":"30","width_unit":"percent","fixed_column_height":"0","logo_type":"image","showMediaLogo":"imglogo","logo_text":"Your LOGO","logo_slogan":"slogan goes here","logo_width":"180","logo_height":"52","social_api_type":"1","socialCode":"social_right","popup_fb":"1","popup_twitter":"1","popup_gplus":"1","popup_pinterest":"1","popup_linkedin":"0","popup_digg":"0","popup_vk":"0","popup_stumbleupon":"0","hide_slider":"0","show_slider_items":"0","styleh":"450","imgh":"350","tstyle":"","fristpost":"","slautorotate":"0","slautordelay":"5000","jqueryparallax":"0","arrowshow":"block","jqueryload":"0","tempcolor":"0","style":"red","MeText":"","MeColor":"#FFFFFF","BgColor":"","BgText":"","BgImage":"","BgPattern":"","TpText":"","TpColor":"","TpImage":"","HdText":"","HdColor":"","BtText":"","BtColor":"","MbColor":"","MbText":"","MbPattern":"","float":"1","show_menu":"1","menutype":"mainmenu","mxmenu":"moo","menu_col_width":"200","show_menu_image":"1","menu_animation":"none","menu_duration":"300","menu_transition":"linear","init_x":"0","init_y":"0","sub_x":"0","sub_y":"0","main_font":"13px","font_h1":"44px","font_h2":"33px","font_h3":"24px","cookie_sett":"0","consenttype":"explicit","cookie_use_ssl":"0","banner_position":"bottom","banner_tag_placement":"bottom-right","refreshOnConsent":"0","direction":"ltr","go_respo":"0","cache_time":"60","compress_css":"0","compress_js":"0","enable_ga":"0","ga_code":"","showcp":"1","copyright":"2016 mixwebtemplates. All Rights Reserved.","designed_by":"1","cpanel_style":"0","copanel":"Top Panel","showtop":"0","show_awesome":"1","ie6warn":"1","jquery":"0","bootstrap":"1","hide_component":"0","hide_menu_items":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'joomspirit_123', 'template', 'joomspirit_123', '', 0, 1, 1, 0, '{"name":"joomspirit_123","type":"template","creationDate":"01\\/08\\/2016","author":"JoomSpirit","copyright":"","authorEmail":"contact@joomspirit.com","authorUrl":"http:\\/\\/www.joomspirit.com","version":"1.0","description":" \\n\\t<link rel=\\"stylesheet\\" href=\\"..\\/templates\\/joomspirit_123\\/css\\/admin.css\\" type=\\"text\\/css\\" \\/>\\n\\t<link href=''http:\\/\\/fonts.googleapis.com\\/css?family=Comfortaa:400,300,700|Abel|Arizonia|Berkshire+Swash|Cookie|Dosis:400,200,300,500,600,700,800|Droid+Sans:400,700|Francois+One|Gruppo|Playball|Italianno|Lato:400,100,300,400italic,300italic,100italic,700,700italic,900,900italic|Lobster|Lora:400,400italic,700,700italic|Montserrat:400,700|Oleo+Script|Open+Sans+Condensed:300,300italic,700|Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800italic,800|Oswald:400,300,700|Oxygen:400,300,700|PT+Sans+Narrow:400,700|PT+Sans:400,400italic,700,700italic|Prosto+One|Quicksand:400,300,700|Roboto+Condensed:400,300,300italic,400italic,700,700italic|Rokkitt:400,700|Share:400,400italic,700,700italic|Source+Sans+Pro:400,200,200italic,300,300italic,400italic,600,600italic,700,700italic,900,900italic|Ubuntu+Condensed|Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic|Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic&subset=latin,cyrillic-ext,latin-ext,cyrillic'' rel=''stylesheet'' type=''text\\/css''>\\n\\tIMPORTANT : Read the settings for this template\\n\\tAll informations is in your manual. You must double click on the file manual.html\\n\\tYou will find in how to configure the template, use the typography and the module positions for your modules.\\n\\t","group":"","filename":"templateDetails"}', '{"color_theme":"theme-dark","scroll_to_top":"yes","sticky_menu":"yes","uppercase":"uppercase-menu-title","search_module":"yes","search_word":"Search ...","border_image":"js-border","hover3d":"no","width_website":"1080px","width_left":"25","width_right":"25","user1_width":"32","user2_width":"32","user4_width":"32","user5_width":"32","website_title":"Template 123","color_website_title":"#ffffff","font_website_title":"Source+Sans+Pro","custom_font_website_title":"","website_title_fontsize":"40px","vertical_position_logo":"30","horizontal_position_logo":"10","color_main_menu_item":"#8c8c8c","color_main_menu_item_active":"#7aa371","color_sub_menu_item_active":"#ffffff","font_menu":"Source+Sans+Pro","custom_font_menu":"","main_menu_fontsize":"105%","text_menu":"menu","color_text_general":"#cccccc","font_content":"Helvetica","custom_font_content":"","fontSize":"0.85em","color_link":"#7aa371","color_link_hover":"#eb9063","colorh1":"#ffffff","font_h1":"Source+Sans+Pro","custom_font_h1":"","h1_fontsize":"210%","h1_shadow":"no","colorh1_slide":"#ffffff","h1_slide_fontsize":"240%","h1_slide_shadow":"dark","color_module_title":"#ffffff","module_title_fontsize":"130%","colorh2":"#028bc0","font_h2":"Source+Sans+Pro","custom_font_h2":"","h2_fontsize":"150%","h3_fontsize":"115%","h4_fontsize":"110%","h5_fontsize":"100%","text_social_icons":"","color_social":"#7aa371","twitter":"","facebook":"","rss":"","linkedin":"","google":"","instagram":"","pinterest":"","renren":"","weibo":"","xing":"","flickr":"","youtube":"","vimeo":"","tumblr":"","custom_icon01":"","custom_icon01_text":"","custom_icon01_img":"","custom_icon02":"","custom_icon02_text":"","custom_icon02_img":"","custom_icon03":"","custom_icon03_text":"","custom_icon03_img":"","custom_icon04":"","custom_icon04_text":"","custom_icon04_img":"","responsive":"yes","responsive_side":"resp-side-right","responsive_users":"resp-users-768","disable_animation":"no","animation_logo":"home-page","animation_left":"yes","animation_right":"yes","animation_top":"no","animation_user1":"no","animation_user2":"no","animation_user3":"no","animation_user4":"yes","animation_user5":"yes","animation_user6":"yes","animation_bottom":"yes","animation_footer":"yes","google_code":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'com_ajaxdropfilesfp', 'component', 'com_ajaxdropfilesfp', '', 1, 1, 0, 0, '{"name":"com_ajaxdropfilesfp","type":"component","creationDate":"Ao\\u00fbt 2016","author":"Fabrice4821","copyright":"(C) 2011 - 2015 GMapFP. All rights reserved.","authorEmail":"webmaster@gmapfp.org","authorUrl":"www.gmapfp.org","version":"J3_6F","description":"COM_AJAXDROPFILESFP_XML_DESCRIPTION","group":"","filename":"ajaxdropfilesfp"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'GalleryFP - Light', 'module', 'mod_galleryfp', '', 0, 1, 0, 0, '{"name":"GalleryFP - Light","type":"module","creationDate":"Ao\\u00fbt 2016","author":"Fabrice4821","copyright":"","authorEmail":"","authorUrl":"","version":"J3_6F","description":"MOD_GALERIE_FP_DESCRIPTION","group":"","filename":"mod_galleryfp"}', '{"proportion":"0.5625","theme":"classic","lightbox":"0","clicknext":"true","autoplay":"false","responive":"1","trueFullscreen":"1","commentaire":"","transition":"pulse","transitionSpeed":"500","thumbcrop":"true","imagePan":"true","showImagenav":"true","thumbnails":"true","carousel":"true","imageCrop":"true","showInfo":"true","showCounter":"true","Background":"","twelve_showFullscreen":"true","twelve_showPopout":"true","twelve_showTooltip":"true","folio_webkitCursor":"true","folio_animate":"true","folio_center":"true","fullscreen_hideDock":"true","azur_toggleCaption":"true","azur_showTooltip":"true","azur_showCaption":"true"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'Packages dinstallation de GalleryFP', 'package', 'pkg_GalleryFP', '', 0, 1, 1, 0, '{"name":"Packages dinstallation de GalleryFP","type":"package","creationDate":"Ao\\u00fbt 2016","author":"Fabrice4821","copyright":"","authorEmail":"","authorUrl":"","version":"J3_6F","description":"Galerie d''image GalleryFP","group":"","filename":"pkg_galleryfp"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'PLG_TOOLTIPGC_XML_NAME', 'plugin', 'tooltipgc', 'system', 0, 1, 1, 0, '{"name":"PLG_TOOLTIPGC_XML_NAME","type":"plugin","creationDate":"D\\u00e9cembre 2010","author":"C\\u00e9dric KEIFLIN et Ghazal","copyright":"Ced1870 et Ghazal","authorEmail":"","authorUrl":"http:\\/\\/www.joomlack.fr","version":"4.0.8","description":"PLG_TOOLTIPGC_XML_DESC","group":"","filename":"tooltipgc"}', '{"fxduration":"300","dureebulle":"500","fxtransition":"linear","stylewidth":"300","padding":"5","tipoffsetx":"0","tipoffsety":"0","opacity":"80","bgcolor1":"#FFFFFF","bgcolor2":"#E3E3E3","roundedcornerstl":"5","roundedcornerstr":"5","roundedcornersbr":"5","roundedcornersbl":"5","shadowcolor":"#444444","shadowblur":"3","shadowspread":"0","shadowoffsetx":"0","shadowoffsety":"0","shadowinset":"0","bordercolor":"#EFEFEF","borderwidth":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'SP Quick Contact', 'module', 'mod_sp_quickcontact', '', 0, 1, 0, 0, '{"name":"SP Quick Contact","type":"module","creationDate":"Aug 2011","author":"JoomShaper.com","copyright":"Copyright (C) 2010 - 2012 JoomShaper.com. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"1.4","description":"SP Quick Contact - Ajax based Quick Contact Module for Joomla!","group":"","filename":"mod_sp_quickcontact"}', '{"email":"","success":"Email was sent successfully.","failed":"Email could not be sent.","formcaptcha":"1","captcha_question":"3 + 4 = ?","captcha_answer":"7","failed_captcha":"You have entered wrong captcha. Please try again.","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'mod_fabrik_form', 'module', 'mod_fabrik_form', '', 0, 1, 0, 0, '{"name":"mod_fabrik_form","type":"module","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"MOD_FABRIK_FORM_XML_DESCRIPTION","group":"","filename":"mod_fabrik_form"}', '{"formid":"0","row_id":"0","usekey":"","template":"","formmodule_useajax":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'mod_fabrik_list', 'module', 'mod_fabrik_list', '', 0, 1, 0, 0, '{"name":"mod_fabrik_list","type":"module","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"MOD_FABRIK_LIST_XML_DESCRIPTION","group":"","filename":"mod_fabrik_list"}', '{"useajax":"0","ajax_links":"","radomizerecords":"0","limit":"0","show_nav":"","fabriklayout":"","show-title":"","show_intro":"1","show_outro":"1","show_filters":"1","resetfilters":"0","clearfilters":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'plg_fabrik_system', 'plugin', 'fabrik', 'system', 0, 1, 1, 0, '{"name":"plg_fabrik_system","type":"plugin","creationDate":"September 2016","author":"Fabrikar.com","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.pollen-8.co.uk","version":"3.5.1","description":"PLG_FABRIK_SYSTEM_DESCRIPTION","group":"","filename":"fabrik"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'System - Fabrik Scheduled Tasks', 'plugin', 'fabrikcron', 'system', 0, 0, 1, 0, '{"name":"System - Fabrik Scheduled Tasks","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.pollen-8.co.uk","version":"3.5.1","description":"Runs Fabrik scheduled tasks","group":"","filename":"fabrikcron"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'plg_fabrik', 'plugin', 'fabrik', 'content', 0, 1, 1, 0, '{"name":"plg_fabrik","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_FABRIK_DESCRIPTION","group":"","filename":"fabrik"}', '{"botRegex":"fabrik"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `ki4ne_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10020, 'plg_fabrik_cron_email', 'plugin', 'email', 'fabrik_cron', 0, 1, 1, 0, '{"name":"plg_fabrik_cron_email","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_FABRIK_CRON_EMAIL_DESCRIPTION","group":"","filename":"email"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'plg_fabrik_cron_php', 'plugin', 'php', 'fabrik_cron', 0, 1, 1, 0, '{"name":"plg_fabrik_cron_php","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_FABRIK_CRON_PHP_DESCRIPTION","group":"","filename":"php"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'plg_fabrik_element_button', 'plugin', 'button', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_button","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_ELEMENT_BUTTON_DESCRIPTION","group":"","filename":"button"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'plg_fabrik_element_checkbox', 'plugin', 'checkbox', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_checkbox","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_ELEMENT_CHECKBOX_DESCRIPTION","group":"","filename":"checkbox"}', '{"defaultFieldType":"TEXT"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'plg_fabrik_element_databasejoin', 'plugin', 'databasejoin', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_databasejoin","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_ELEMENT_DATABASEJOIN_DESCRIPTION","group":"","filename":"databasejoin"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 'plg_fabrik_element_date', 'plugin', 'date', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_date","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_ELEMENT_DATE_DESCRIPTION","group":"","filename":"date"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'plg_fabrik_element_display', 'plugin', 'display', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_display","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_ELEMENT_DISPLAY_DESCRIPTION","group":"","filename":"display"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'plg_fabrik_element_dropdown', 'plugin', 'dropdown', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_dropdown","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_ELEMENT_DROPDOWN_DESCRIPTION","group":"","filename":"dropdown"}', '{"defaultFieldType":"TEXT"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'plg_fabrik_element_field', 'plugin', 'field', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_field","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_ELEMENT_FIELD_DESCRIPTION","group":"","filename":"field"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 'plg_fabrik_element_fileupload', 'plugin', 'fileupload', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_fileupload","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_ELEMENT_FILEUPLOAD_DESCRIPTION","group":"","filename":"fileupload"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 'plg_fabrik_element_googlemap', 'plugin', 'googlemap', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_googlemap","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_ELEMENT_GOOGLEMAP_DESCRIPTION","group":"","filename":"googlemap"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 'plg_fabrik_element_image', 'plugin', 'image', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_image","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_ELEMENT_IMAGE_DESCRIPTION","group":"","filename":"image"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 'plg_fabrik_element_internalid', 'plugin', 'internalid', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_internalid","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_ELEMENT_INTERNALID_DESCRIPTION","group":"","filename":"internalid"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 'plg_fabrik_element_link', 'plugin', 'link', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_link","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_ELEMENT_LINK_DESCRIPTION","group":"","filename":"link"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10034, 'plg_fabrik_element_radiobutton', 'plugin', 'radiobutton', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_radiobutton","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_ELEMENT_RADIOBUTTON_DESCRIPTION","group":"","filename":"radiobutton"}', '{"defaultFieldType":"TEXT"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 'plg_fabrik_element_textarea', 'plugin', 'textarea', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_textarea","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_ELEMENT_TEXTAREA_DESCRIPTION","group":"","filename":"textarea"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10036, 'plg_fabrik_element_user', 'plugin', 'user', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_user","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_ELEMENT_USER_DESCRIPTION","group":"","filename":"user"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10037, 'plg_fabrik_form_email', 'plugin', 'email', 'fabrik_form', 0, 1, 1, 0, '{"name":"plg_fabrik_form_email","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_FORM_EMAIL_DESCRIPTION","group":"","filename":"email"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10038, 'plg_fabrik_form_php', 'plugin', 'php', 'fabrik_form', 0, 1, 1, 0, '{"name":"plg_fabrik_form_php","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_FORM_PHP_DESCRIPTION","group":"","filename":"php"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10039, 'plg_fabrik_form_receipt', 'plugin', 'receipt', 'fabrik_form', 0, 1, 1, 0, '{"name":"plg_fabrik_form_receipt","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_FORM_RECEIPT_DESCRIPTION","group":"","filename":"receipt"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 'plg_fabrik_form_redirect', 'plugin', 'redirect', 'fabrik_form', 0, 1, 1, 0, '{"name":"plg_fabrik_form_redirect","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_FORM_REDIRECT_DESCRIPTION","group":"","filename":"redirect"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 'plg_fabrik_list_copy', 'plugin', 'copy', 'fabrik_list', 0, 1, 1, 0, '{"name":"plg_fabrik_list_copy","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_LIST_COPY_DESCRIPTION","group":"","filename":"copy"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10042, 'plg_fabrik_list_php', 'plugin', 'php', 'fabrik_list', 0, 1, 1, 0, '{"name":"plg_fabrik_list_php","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_LIST_PHP_DESCRIPTION","group":"","filename":"php"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 'plg_fabrik_validationrule_isgreaterorlessthan', 'plugin', 'isgreaterorlessthan', 'fabrik_validationrule', 0, 1, 1, 0, '{"name":"plg_fabrik_validationrule_isgreaterorlessthan","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_VALIDATIONRULE_ISGREATERORLESSTHAN_DESCRIPTION","group":"","filename":"isgreaterorlessthan"}', '{"icon":"star"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 'plg_fabrik_validationrule_notempty', 'plugin', 'notempty', 'fabrik_validationrule', 0, 1, 1, 0, '{"name":"plg_fabrik_validationrule_notempty","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_VALIDATIONRULE_NOTEMPTY_DESCRIPTION","group":"","filename":"notempty"}', '{"icon":"eye-open"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 'plg_fabrik_validationrule_php', 'plugin', 'php', 'fabrik_validationrule', 0, 1, 1, 0, '{"name":"plg_fabrik_validationrule_php","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"hugh.messenger@gmail.com","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_VALIDATIONRULE_PHP_DESCRIPTION","group":"","filename":"php"}', '{"icon":"star"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 'plg_fabrik_validationrule_regex', 'plugin', 'regex', 'fabrik_validationrule', 0, 1, 1, 0, '{"name":"plg_fabrik_validationrule_regex","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_VALIDATIONRULE_REGEX_DESCRIPTION","group":"","filename":"regex"}', '{"icon":"star"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 'plg_fabrik_validationrule_isemail', 'plugin', 'isemail', 'fabrik_validationrule', 0, 1, 1, 0, '{"name":"plg_fabrik_validationrule_isemail","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_VALIDATIONRULE_ISEMAIL_DESCRIPTION","group":"","filename":"isemail"}', '{"icon":"envelope"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10048, 'plg_fabrik_visualization_calendar', 'plugin', 'calendar', 'fabrik_visualization', 0, 1, 1, 0, '{"name":"plg_fabrik_visualization_calendar","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_VISUALIZATION_CALENDAR_DESCRIPTION","group":"","filename":"calendar"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10049, 'plg_fabrik_visualization_chart', 'plugin', 'chart', 'fabrik_visualization', 0, 1, 1, 0, '{"name":"plg_fabrik_visualization_chart","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_VISUALIZATION_CHART_DESCRIPTION","group":"","filename":"chart"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10050, 'plg_fabrik_visualization_googlemap', 'plugin', 'googlemap', 'fabrik_visualization', 0, 1, 1, 0, '{"name":"plg_fabrik_visualization_googlemap","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_VISUALIZATION_GOOGLEMAP_DESCRIPTION","group":"","filename":"googlemap"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10051, 'PLG_FABRIK_VISUALIZATION_FULLCALENDAR', 'plugin', 'fullcalendar', 'fabrik_visualization', 0, 1, 1, 0, '{"name":"PLG_FABRIK_VISUALIZATION_FULLCALENDAR","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"hugh.messenger@gmail.com","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_VISUALIZATION_FULLCALENDAR_DESCRIPTION","group":"","filename":"fullcalendar"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10052, 'plg_fabrik_visualization_media', 'plugin', 'media', 'fabrik_visualization', 0, 1, 1, 0, '{"name":"plg_fabrik_visualization_media","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"hugh.messenger@gmail.com","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_VISUALIZATION_MEDIA_DESCRIPTION","group":"","filename":"media"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10053, 'plg_fabrik_visualization_slideshow', 'plugin', 'slideshow', 'fabrik_visualization', 0, 1, 1, 0, '{"name":"plg_fabrik_visualization_slideshow","type":"plugin","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"hugh.messenger@gmail.com","authorUrl":"www.fabrikar.com","version":"3.5.1","description":"PLG_VISUALIZATION_SLIDESHOW_DESCRIPTION","group":"","filename":"slideshow"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10054, 'com_fabrik', 'component', 'com_fabrik', '', 1, 1, 0, 0, '{"name":"com_fabrik","type":"component","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.pollen-8.co.uk","version":"3.5.1","description":"COM_FABRIK_XML_DESCRIPTION","group":"","filename":"fabrik"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10055, 'Fabrik Package', 'package', 'pkg_fabrik', '', 0, 1, 1, 0, '{"name":"Fabrik Package","type":"package","creationDate":"September 2016","author":"Media A-Team, Inc.","copyright":"Copyright (C) 2005-2016 Media A-Team, Inc. - All rights reserved.","authorEmail":"","authorUrl":"","version":"3.5.1","description":"Fabrik Package","group":"","filename":"pkg_fabrik"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10056, 'com_jquickcontact', 'component', 'com_jquickcontact', '', 1, 1, 0, 0, '{"name":"com_jquickcontact","type":"component","creationDate":"09\\/01\\/2016","author":"Wassim JIED","copyright":"","authorEmail":"jiwassim@gmail.com","authorUrl":"http:\\/\\/coderspirit.blogspot.com","version":"1.3.1","description":"JQuickContact form with captcha for joomla 3.x version 1.3.1 (JqckXmlEngine v 1.0.4)<br\\/>  ","group":"","filename":"jquickcontact"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10057, 'Rapid Contact', 'module', 'mod_rapid_contact', '', 0, 1, 0, 0, '{"name":"Rapid Contact","type":"module","creationDate":"March 2011","author":"Christopher Mavros","copyright":"Copyright (C) 2009-2011 Christopher Mavros. All rights reserved.","authorEmail":"mavrosxristoforos@gmail.com","authorUrl":"http:\\/\\/www.mavrosxristoforos.com\\/","version":"1.3.12","description":"Rapid Contact. Lightweight, fast and easy, configuring a contact form, was never a pleasure before.","group":"","filename":"mod_rapid_contact"}', '{"email_recipient":"email@email.com","from_name":"Rapid Contact","from_email":"rapid_contact@yoursite.com","email_label":"email@site.com","subject_label":"Subject","message_label":"Your Message","button_text":"Send Message","page_text":"Thank you for your contact.","error_text":"Your message could not be sent. Please try again.","no_email":"Please write your email","invalid_email":"Please write a valid email","wrong_antispam":"Wrong Anti-Spam Answer","pre_text":"","thank_text_color":"#000000","error_text_color":"#FF0000","email_width":"10","subject_width":"10","message_width":"7","label_pos":"2","addcss":"","enable_anti_spam":"1","anti_spam_q":"How many eyes has a typical person?","anti_spam_a":"2","anti_spam_position":"1","moduleclass_sfx":"","fixed_url":"0","fixed_url_address":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10058, 'RSContact', 'module', 'mod_rscontact', '', 0, 1, 0, 0, '{"name":"RSContact","type":"module","creationDate":"January 2015","author":"RSJoomla!","copyright":"Copyright (C) 2015","authorEmail":"supporttickets@rsjoomla.com","authorUrl":"www.rsjoomla.com","version":"1.1.7","description":"MOD_RSCONTACT_DESC","group":"","filename":"mod_rscontact"}', '{"salut":"1","name":"1","name_type":"1","addr_1":"1","addr_2":"1","city":"1","state":"1","zip":"1","h_phone":"1","m_phone":"1","w_phone":"1","comp":"1","web":"1","subj":"1","subj_type":"1","subject_input":"","msg":"1","msg_len":"1000","captcha":"0","cf1":"1","cf1_name":"Custom Field 1","cf1_type":"1","cf1_inp":"","cf2":"1","cf2_name":"Custom Field 2","cf2_type":"1","cf2_inp":"","cf3":"1","cf3_name":"Custom Field 3","cf3_type":"1","cf3_inp":"","send_copy":"1","form_pre":"","form_post":"","css":"","js":"","req_marker":"*","label":"1","form_h":"0","auto_width":"1","thank_you":"","mail_to":"","mail_cc":"","mail_bcc":"","email_subj":"You have a new contact request from {your-website}!","mail_msg":"<p> From: {salutation}\\u00a0{first-name} {last-name} {fullname} <\\/p>\\r\\n<p>       Subject: {subject} <\\/p>\\r\\n<p>       Email:\\u00a0{email} <\\/p>\\r\\n<p>       Home Phone: {home-phone} <\\/p>\\r\\n<p>       Mobile Phone: {mobile-phone} <\\/p>\\r\\n<p>       Work Phone:\\u00a0{work-phone} <\\/p>\\r\\n<p>       Address:\\u00a0{address-1} <\\/p>\\r\\n<p>       Address 2: {address-2} <\\/p>\\r\\n<p>       City:\\u00a0{city} <\\/p>\\r\\n<p>       State: {state} <\\/p>\\r\\n<p>       Zip\\/Postal Code: {zip} <\\/p>\\r\\n<p>       Company: {company} <\\/p>\\r\\n<p>       Website: {website} <\\/p>\\r\\n<p>       Message: {message} <\\/p>\\r\\n<p>       {cf1} <\\/p>\\r\\n<p>       {cf2} <\\/p>\\r\\n<p>       {cf3} <\\/p>\\r\\n<hr \\/ >\\r\\n<p>       Username: {username} <\\/p>\\r\\n<p>       User Id: {user-id} <\\/p>\\r\\n<p>       User Email: {user-email} <\\/p>\\r\\n<p>       Date: {date} <\\/p>\\r\\n<p>       Date-Time: {date-time} <\\/p>\\r\\n<p>       IP: {ip} <\\/p>\\r\\n","reply_to":"1","reply_email":"","jquery":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_fabrik_connections`
--

CREATE TABLE IF NOT EXISTS `ki4ne_fabrik_connections` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `host` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `database` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `checked_out` int(4) NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `default` int(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `ki4ne_fabrik_connections`
--

INSERT INTO `ki4ne_fabrik_connections` (`id`, `host`, `user`, `password`, `database`, `description`, `published`, `checked_out`, `checked_out_time`, `default`, `params`) VALUES
(1, 'db632646606.db.1and1.com', 'dbo632646606', 'PiCl.200991', 'db632646606', 'site database', 1, 0, NULL, 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_fabrik_cron`
--

CREATE TABLE IF NOT EXISTS `ki4ne_fabrik_cron` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  `frequency` smallint(6) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(6) NOT NULL,
  `created_by_alias` varchar(30) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(30) NOT NULL,
  `checked_out` int(6) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `plugin` varchar(50) NOT NULL,
  `lastrun` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_fabrik_elements`
--

CREATE TABLE IF NOT EXISTS `ki4ne_fabrik_elements` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `group_id` int(4) NOT NULL,
  `plugin` varchar(100) NOT NULL,
  `label` text,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_alias` varchar(100) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `width` int(4) NOT NULL,
  `height` int(4) NOT NULL DEFAULT '0',
  `default` text NOT NULL,
  `hidden` int(1) NOT NULL,
  `eval` int(1) NOT NULL,
  `ordering` int(4) NOT NULL,
  `show_in_list_summary` int(1) DEFAULT NULL,
  `filter_type` varchar(20) DEFAULT NULL,
  `filter_exact_match` int(1) DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `link_to_detail` int(1) NOT NULL DEFAULT '0',
  `primary_key` int(1) NOT NULL DEFAULT '0',
  `auto_increment` int(1) NOT NULL DEFAULT '0',
  `access` int(1) NOT NULL DEFAULT '0',
  `use_in_page_title` int(1) NOT NULL DEFAULT '0',
  `parent_id` mediumint(6) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_fabrik_form_sessions`
--

CREATE TABLE IF NOT EXISTS `ki4ne_fabrik_form_sessions` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `hash` varchar(255) NOT NULL,
  `user_id` int(6) NOT NULL,
  `form_id` int(6) NOT NULL,
  `row_id` int(10) NOT NULL,
  `last_page` int(4) NOT NULL,
  `referring_url` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `time_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_fabrik_formgroup`
--

CREATE TABLE IF NOT EXISTS `ki4ne_fabrik_formgroup` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `form_id` int(4) NOT NULL,
  `group_id` int(4) NOT NULL,
  `ordering` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_fabrik_forms`
--

CREATE TABLE IF NOT EXISTS `ki4ne_fabrik_forms` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `record_in_database` int(4) NOT NULL,
  `error` varchar(150) NOT NULL,
  `intro` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_alias` varchar(100) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset_button_label` varchar(100) NOT NULL,
  `submit_button_label` varchar(100) NOT NULL,
  `form_template` varchar(255) DEFAULT NULL,
  `view_only_template` varchar(255) DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_fabrik_groups`
--

CREATE TABLE IF NOT EXISTS `ki4ne_fabrik_groups` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `css` text NOT NULL,
  `label` varchar(100) NOT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_alias` varchar(100) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `is_join` int(1) NOT NULL DEFAULT '0',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_fabrik_joins`
--

CREATE TABLE IF NOT EXISTS `ki4ne_fabrik_joins` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `list_id` int(6) NOT NULL,
  `element_id` int(6) NOT NULL,
  `join_from_table` varchar(255) NOT NULL,
  `table_join` varchar(255) NOT NULL,
  `table_key` varchar(255) NOT NULL,
  `table_join_key` varchar(255) NOT NULL,
  `join_type` varchar(255) NOT NULL,
  `group_id` int(10) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_fabrik_jsactions`
--

CREATE TABLE IF NOT EXISTS `ki4ne_fabrik_jsactions` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `element_id` int(10) NOT NULL,
  `action` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_fabrik_lists`
--

CREATE TABLE IF NOT EXISTS `ki4ne_fabrik_lists` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `introduction` text NOT NULL,
  `form_id` int(4) NOT NULL,
  `db_table_name` varchar(255) NOT NULL,
  `db_primary_key` varchar(255) NOT NULL,
  `auto_inc` int(1) NOT NULL,
  `connection_id` int(6) NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(4) NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(4) NOT NULL,
  `checked_out` int(4) NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `access` int(4) NOT NULL,
  `hits` int(4) NOT NULL,
  `rows_per_page` int(5) NOT NULL,
  `template` varchar(255) NOT NULL,
  `order_by` varchar(255) NOT NULL,
  `order_dir` varchar(255) NOT NULL DEFAULT 'ASC',
  `filter_action` varchar(30) NOT NULL,
  `group_by` varchar(255) NOT NULL,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_fabrik_log`
--

CREATE TABLE IF NOT EXISTS `ki4ne_fabrik_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `timedate_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flag` smallint(3) NOT NULL,
  `referring_url` varchar(255) NOT NULL,
  `message_source` varchar(255) NOT NULL,
  `message_type` char(60) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_fabrik_packages`
--

CREATE TABLE IF NOT EXISTS `ki4ne_fabrik_packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `external_ref` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `component_name` varchar(100) NOT NULL,
  `version` varchar(10) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `checked_out` int(4) NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(6) NOT NULL,
  `template` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_fabrik_validations`
--

CREATE TABLE IF NOT EXISTS `ki4ne_fabrik_validations` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `element_id` int(4) NOT NULL,
  `validation_plugin` varchar(100) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `client_side_validation` int(1) NOT NULL DEFAULT '0',
  `checked_out` int(4) NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_fabrik_visualizations`
--

CREATE TABLE IF NOT EXISTS `ki4ne_fabrik_visualizations` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `plugin` varchar(100) NOT NULL,
  `label` varchar(255) NOT NULL,
  `intro_text` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_alias` varchar(100) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `published` int(1) NOT NULL,
  `access` int(6) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_filters`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_links`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `ki4ne_finder_taxonomy`
--

INSERT INTO `ki4ne_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_terms`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ki4ne_finder_terms_common`
--

INSERT INTO `ki4ne_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('alors', 'fr'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('au', 'fr'),
('aucuns', 'fr'),
('aussi', 'fr'),
('autre', 'fr'),
('avant', 'fr'),
('avec', 'fr'),
('avoir', 'fr'),
('be', 'en'),
('bon', 'fr'),
('but', 'en'),
('by', 'en'),
('car', 'fr'),
('ce', 'fr'),
('cela', 'fr'),
('ces', 'fr'),
('ceux', 'fr'),
('chaque', 'fr'),
('ci', 'fr'),
('comme', 'fr'),
('comment', 'fr'),
('dans', 'fr'),
('début', 'fr'),
('dedans', 'fr'),
('dehors', 'fr'),
('depuis', 'fr'),
('des', 'fr'),
('deux', 'fr'),
('devrait', 'fr'),
('doit', 'fr'),
('donc', 'fr'),
('dos', 'fr'),
('droite', 'fr'),
('du', 'fr'),
('elle', 'fr'),
('elles', 'fr'),
('en', 'fr'),
('encore', 'fr'),
('essai', 'fr'),
('est', 'fr'),
('et', 'fr'),
('eu', 'fr'),
('fait', 'fr'),
('faites', 'fr'),
('fois', 'fr'),
('font', 'fr'),
('for', 'en'),
('force', 'fr'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('haut', 'fr'),
('hors', 'fr'),
('how', 'en'),
('ici', 'fr'),
('if', 'en'),
('il', 'fr'),
('ils', 'fr'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('je', 'fr'),
('juste', 'fr'),
('la', 'fr'),
('là', 'fr'),
('le', 'fr'),
('les', 'fr'),
('leur', 'fr'),
('ma', 'fr'),
('maintenant', 'fr'),
('mais', 'fr'),
('me', 'en'),
('même', 'fr'),
('mes', 'fr'),
('mine', 'fr'),
('moins', 'fr'),
('mon', 'fr'),
('more', 'en'),
('most', 'en'),
('mot', 'fr'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('ni', 'fr'),
('no', 'en'),
('nommés', 'fr'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('notre', 'fr'),
('nous', 'fr'),
('nouveaux', 'fr'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('ou', 'fr'),
('où', 'fr'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('par', 'fr'),
('parce', 'fr'),
('parole', 'fr'),
('pas', 'fr'),
('personnes', 'fr'),
('peu', 'fr'),
('peut', 'fr'),
('pièce', 'fr'),
('plupart', 'fr'),
('pour', 'fr'),
('pourquoi', 'fr'),
('quand', 'fr'),
('que', 'fr'),
('quel', 'fr'),
('quelle', 'fr'),
('quelles', 'fr'),
('quels', 'fr'),
('qui', 'fr'),
('sa', 'fr'),
('sans', 'fr'),
('ses', 'fr'),
('seulement', 'fr'),
('she', 'en'),
('should', 'en'),
('si', 'fr'),
('sien', 'fr'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('son', 'fr'),
('sont', 'fr'),
('sous', 'fr'),
('soyez', 'fr'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_finder_types`
--

CREATE TABLE IF NOT EXISTS `ki4ne_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_jquickcontact_captcha`
--

CREATE TABLE IF NOT EXISTS `ki4ne_jquickcontact_captcha` (
  `session_id` varchar(200) NOT NULL,
  `captcha` varchar(6) NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_jquickcontact_forms`
--

CREATE TABLE IF NOT EXISTS `ki4ne_jquickcontact_forms` (
  `jqck_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `jqck_data` text,
  PRIMARY KEY (`jqck_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `ki4ne_jquickcontact_forms`
--

INSERT INTO `ki4ne_jquickcontact_forms` (`jqck_id`, `jqck_data`) VALUES
(1, '<form><extradata><iscontact>1</iscontact><webmaster>contact@escsr.com</webmaster><sendcopy>1</sendcopy><senderfield>3</senderfield><submitposition>5</submitposition></extradata><item><type>DISPLAY</type><label>HTML Before</label><id>1</id><content><![CDATA[<p>Contactez-nous en remplissant le formulaire ci-dessous :</p>]]></content></item><item><type>TEXT</type><label>Nom</label><id>2</id><min>4</min><max>120</max></item><item><type>EMAIL</type><label>Email</label><id>3</id></item><item><type>TEXT</type><label>Sujet</label><id>4</id><min>4</min><max>120</max></item><item><type>RAW</type><label>Contenu</label><id>5</id><min>4</min><max>120</max></item><item><type>JQCK_CAPTCHA</type><label>Verification</label><id>6</id></item><item><type>DISPLAY</type><label>Text after</label><id>7</id><content><![CDATA[]]></content></item></form>');

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_jquickcontact_mails`
--

CREATE TABLE IF NOT EXISTS `ki4ne_jquickcontact_mails` (
  `mail_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `mail_data` text,
  PRIMARY KEY (`mail_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `ki4ne_jquickcontact_mails`
--

INSERT INTO `ki4ne_jquickcontact_mails` (`mail_id`, `mail_data`) VALUES
(1, '<mail><subject><![CDATA[Nouveau mail depuis site web/ New email from website]]></subject><content><![CDATA[Nouveau message de la part de / New message From [:2]<br/>Sujet/Subject : <br/> [:4]<br/>Contenu / Content : <br/> [:5] <br/>IP: [:ip]]]></content></mail>');

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_jsn_tplframework_megamenu`
--

CREATE TABLE IF NOT EXISTS `ki4ne_jsn_tplframework_megamenu` (
  `megamenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `style_id` int(11) DEFAULT NULL,
  `language_code` varchar(250) DEFAULT NULL,
  `menu_type` varchar(250) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` mediumtext,
  PRIMARY KEY (`megamenu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_languages`
--

CREATE TABLE IF NOT EXISTS `ki4ne_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `ki4ne_languages`
--

INSERT INTO `ki4ne_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 2),
(2, 0, 'fr-FR', 'Français (FR)', 'Français (FR)', 'fr', 'fr', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_menu`
--

CREATE TABLE IF NOT EXISTS `ki4ne_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=129 ;

--
-- Contenu de la table `ki4ne_menu`
--

INSERT INTO `ki4ne_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 91, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 43, 48, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 44, 45, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 46, 47, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 49, 52, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 50, 51, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 53, 58, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 54, 55, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 56, 57, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 59, 60, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 61, 62, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 63, 64, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 65, 66, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 67, 68, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 69, 70, 0, '*', 1),
(101, 'mainmenu', 'Accueil', 'accueil', '', 'accueil', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"1","link_titles":"","show_intro":"","info_block_position":"0","info_block_show_title":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 1, '*', 0),
(102, 'usermenu', 'Votre profil', 'votre-profil', '', 'votre-profil', 'index.php?option=com_users&view=profile&layout=edit', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 33, 34, 0, '*', 0),
(103, 'usermenu', 'Administration', '2013-11-16-23-26-41', '', '2013-11-16-23-26-41', 'administrator', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 37, 38, 0, '*', 0),
(104, 'usermenu', 'Créer un article', 'creer-un-article', '', 'creer-un-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"enable_category":"0","catid":"2","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 35, 36, 0, '*', 0),
(106, 'usermenu', 'Paramètres du template', 'parametres-du-template', '', 'parametres-du-template', 'index.php?option=com_config&view=templates&controller=config.display.templates', 'component', 1, 1, 1, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 39, 40, 0, '*', 0),
(107, 'usermenu', 'Paramètres du site', 'parametre-du-site', '', 'parametre-du-site', 'index.php?option=com_config&view=config&controller=config.display.config', 'component', 1, 1, 1, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 0, '*', 0),
(108, 'mainmenu', 'Nos services', 'nos-services', '', 'nos-services', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"","info_block_show_title":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"0","urls_position":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 20, 0, '*', 0),
(109, 'mainmenu', 'Nos offres et tarifs', 'nos-offres-et-tarifs', '', 'nos-offres-et-tarifs', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"2","info_block_show_title":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"0","urls_position":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 21, 22, 0, '*', 0),
(110, 'mainmenu', 'Contact', 'contact', '', 'contact', 'index.php?option=com_content&view=article&id=10', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"2","info_block_show_title":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"0","urls_position":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 27, 28, 0, '*', 0),
(111, 'mainmenu', 'Pôle Web', 'pole-web', '', 'nos-services/pole-web', 'index.php?option=com_content&view=article&id=7', 'component', 1, 108, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"0","show_intro":"0","info_block_position":"2","info_block_show_title":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"0","urls_position":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 14, 15, 0, '*', 0),
(112, 'mainmenu', 'Pôle administratif', 'pole-administratif', '', 'nos-services/pole-administratif', 'index.php?option=com_content&view=article&id=6', 'component', 1, 108, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"0","show_intro":"0","info_block_position":"2","info_block_show_title":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"0","urls_position":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 16, 17, 0, '*', 0),
(113, 'mainmenu', 'Pôle combiné', 'pole-combine', '', 'nos-services/pole-combine', 'index.php?option=com_content&view=article&id=8', 'component', 1, 108, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"0","show_intro":"0","info_block_position":"2","info_block_show_title":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"0","urls_position":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 18, 19, 0, '*', 0),
(114, 'mainmenu', 'Contact et ressources', 'contact-et-ressources', '', 'contact-et-ressources', 'index.php?option=com_content&view=article&id=5', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"0","show_intro":"0","info_block_position":"2","info_block_show_title":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"0","urls_position":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 23, 26, 0, '*', 0),
(115, 'mainmenu', 'Mentions légales', 'mentions-legales', '', 'contact-et-ressources/mentions-legales', 'index.php?option=com_content&view=article&id=9', 'component', 0, 114, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"0","show_intro":"0","info_block_position":"2","info_block_show_title":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"0","urls_position":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 24, 25, 0, '*', 0),
(116, 'footer', 'Mentions légales', 'mentions-legales', '', 'mentions-legales', 'index.php?option=com_content&view=article&id=9', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 71, 72, 0, '*', 0),
(117, 'mainmenu', '06.59.86.42.38', '06-59-86-42-38', '', '06-59-86-42-38', 'index.php?Itemid=', 'alias', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"110","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 31, 32, 0, '*', 0),
(118, 'mainmenu', '  -    ', '2016-09-15-11-01-12', '', '2016-09-15-11-01-12', 'index.php?Itemid=', 'alias', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"110","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 29, 30, 0, '*', 0),
(119, 'main', 'com_fabrik', 'com-fabrik', '', 'com-fabrik', 'index.php?option=com_fabrik', 'component', 0, 1, 1, 10054, 0, '0000-00-00 00:00:00', 0, 1, '../administrator/components/com_fabrik/images/fabrik.png', 0, '{}', 73, 88, 0, '', 1),
(120, 'main', 'com_fabrik_lists', 'com-fabrik-lists', '', 'com-fabrik/com-fabrik-lists', 'index.php?option=com_fabrik&view=lists', 'component', 0, 119, 2, 10054, 0, '0000-00-00 00:00:00', 0, 1, '../administrator/components/com_fabrik/images/lists.png', 0, '{}', 74, 75, 0, '', 1),
(121, 'main', 'com_fabrik_forms', 'com-fabrik-forms', '', 'com-fabrik/com-fabrik-forms', 'index.php?option=com_fabrik&view=forms', 'component', 0, 119, 2, 10054, 0, '0000-00-00 00:00:00', 0, 1, '../administrator/components/com_fabrik/images/forms.png', 0, '{}', 76, 77, 0, '', 1),
(122, 'main', 'com_fabrik_groups', 'com-fabrik-groups', '', 'com-fabrik/com-fabrik-groups', 'index.php?option=com_fabrik&view=groups', 'component', 0, 119, 2, 10054, 0, '0000-00-00 00:00:00', 0, 1, '../administrator/components/com_fabrik/images/groups.png', 0, '{}', 78, 79, 0, '', 1),
(123, 'main', 'com_fabrik_elements', 'com-fabrik-elements', '', 'com-fabrik/com-fabrik-elements', 'index.php?option=com_fabrik&view=elements', 'component', 0, 119, 2, 10054, 0, '0000-00-00 00:00:00', 0, 1, '../administrator/components/com_fabrik/images/elements.png', 0, '{}', 80, 81, 0, '', 1),
(124, 'main', 'com_fabrik_visualizations', 'com-fabrik-visualizations', '', 'com-fabrik/com-fabrik-visualizations', 'index.php?option=com_fabrik&view=visualizations', 'component', 0, 119, 2, 10054, 0, '0000-00-00 00:00:00', 0, 1, '../administrator/components/com_fabrik/images/visualizations.png', 0, '{}', 82, 83, 0, '', 1),
(125, 'main', 'com_fabrik_connections', 'com-fabrik-connections', '', 'com-fabrik/com-fabrik-connections', 'index.php?option=com_fabrik&view=connections', 'component', 0, 119, 2, 10054, 0, '0000-00-00 00:00:00', 0, 1, '../administrator/components/com_fabrik/images/connections.png', 0, '{}', 84, 85, 0, '', 1),
(126, 'main', 'com_fabrik_schedule', 'com-fabrik-schedule', '', 'com-fabrik/com-fabrik-schedule', 'index.php?option=com_fabrik&view=crons', 'component', 0, 119, 2, 10054, 0, '0000-00-00 00:00:00', 0, 1, '../administrator/components/com_fabrik/images/schedules.png', 0, '{}', 86, 87, 0, '', 1),
(128, 'main', 'COM_JQUICKCONTACT_MENU', 'com-jquickcontact-menu', '', 'com-jquickcontact-menu', 'index.php?option=com_jquickcontact', 'component', 0, 1, 1, 10056, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 89, 90, 0, '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_menu_types`
--

CREATE TABLE IF NOT EXISTS `ki4ne_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `ki4ne_menu_types`
--

INSERT INTO `ki4ne_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`) VALUES
(1, 0, 'mainmenu', 'Menu principal', 'Le menu principal du site'),
(2, 0, 'usermenu', 'Menu utilisateur', 'Menu pour les utilisateurs connectés'),
(3, 84, 'footer', 'footer', '');

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_messages`
--

CREATE TABLE IF NOT EXISTS `ki4ne_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `ki4ne_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_modules`
--

CREATE TABLE IF NOT EXISTS `ki4ne_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=102 ;

--
-- Contenu de la table `ki4ne_modules`
--

INSERT INTO `ki4ne_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Menu principal', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Connexion', '', '', 1, 'connexion', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Article populaire', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 42, 'Article ajoutés récemments', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 43, 'Barre d''outils', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Utilisateurs connectés', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Connexion', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Fil de navigation', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Statut multilingue', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Version de Joomla', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 54, 'Tags populaires', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_tags_popular', 1, 1, '{"maximum":"10","timeframe":"alltime","order_value":"count","order_direction":"1","display_count":0,"no_results_text":"0","minsize":1,"maxsize":2,"layout":"_:default","moduleclass_sfx":"","owncache":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 55, 'Informations du site', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats_admin', 3, 1, '{"serverinfo":"1","siteinfo":"1","counter":"0","increase":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(89, 56, 'Mises à jours', '', '', 0, 'postinstall', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/www.joomla.org\\/announcements\\/release-news.feed","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(90, 57, 'Derniers articles', '', '', 1, 'right', 0, '0000-00-00 00:00:00', '2016-09-12 13:29:20', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":[""],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 58, 'Menu utilisateur', '', '', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"usermenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 59, 'Images aléatoire', '', '<p><img src="images/headers/blue-flower.jpg" alt="Blue Flower" /></p>', 0, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 60, 'Recherche', '', '', 0, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"0","button_pos":"right","imagebutton":"1","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 81, 'Des suggestions ?', '', '', 1, 'footer1', 0, '0000-00-00 00:00:00', '2016-09-12 11:08:49', '0000-00-00 00:00:00', 1, 'mod_suggest', 1, 1, '{"mail":"contact@escsr.com","whantthemailofthesuggestman":"1","libofthelabelforsuggestman":"","button":"","from":"mywebsite@suggestion.com","subject":"Suggestion","emailsend":"email sent","widthbutton":"","btn":"btn","heightbutton":"","buttontextcolor":"","text":"","width":"100","height":"3","challengeorno":"0","challengename":"Challenge","challenge":"0404","layout":"_:default","moduleclass_sfx":"","owncache":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 83, 'GalleryFP - Light', '', '', 1, 'top', 0, '0000-00-00 00:00:00', '2016-09-13 08:01:55', '0000-00-00 00:00:00', 0, 'mod_galleryfp', 1, 1, '{"proportion":"0.5625","theme":"classic","lightbox":"1","clicknext":"true","autoplay":"true","responive":"1","trueFullscreen":"1","commentaire":"","commentaires_photos":"","transition":"pulse","transitionSpeed":"500","thumbcrop":"true","imagePan":"true","showImagenav":"true","thumbnails":"true","carousel":"true","imageCrop":"false","showInfo":"true","showCounter":"true","Background":"","twelve_showFullscreen":"true","twelve_showPopout":"true","twelve_showTooltip":"true","folio_webkitCursor":"true","folio_animate":"true","folio_center":"true","fullscreen_hideDock":"true","azur_toggleCaption":"true","azur_showTooltip":"true","azur_showCaption":"true","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 85, 'Footer', '', '', 1, 'bottom_menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"footer","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 86, 'SP Quick Contact', '', '', 1, 'left', 496, '2016-09-30 08:30:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sp_quickcontact', 1, 0, '{"email":"contact@escsr.com","success":"Votre e-mail a \\u00e9t\\u00e9 envoy\\u00e9","failed":"Echec lors de l''envoi de votre e-mail, contactez luisguerra@hotmail.fr ou le 00.00.00.00.00","formcaptcha":"1","captcha_question":"3 + 4 = ?","captcha_answer":"7","failed_captcha":"Mauvaise r\\u00e9ponse, essayez encore !","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 87, 'Fabrik Form Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '2016-09-16 07:25:46', '0000-00-00 00:00:00', 0, 'mod_fabrik_form', 1, 1, '', 0, '*'),
(99, 88, 'Fabrik List Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_fabrik_list', 1, 1, '', 0, '*'),
(100, 91, 'Rapid Contact', '', '', 1, 'bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_rapid_contact', 1, 1, '{"email_recipient":"contact@escsr.com","from_name":"Formulaire ESCSR","from_email":"contact@escsr.com","email_label":"adresse e-mail","subject_label":"Sujet","message_label":"Votre message","button_text":"Envoyer !","page_text":"Merci pour votre message","error_text":"Votre message n''a pas pu \\u00eatre envoy\\u00e9, merci de contacter contact@escsr.com","no_email":"Merci d''entrer votre message","invalid_email":"Merci de renseigner une adresse e-mail valide","wrong_antispam":"Mauvaise r\\u00e9ponse ! Merci de r\\u00e9essayer.","pre_text":"","thank_text_color":"#000000","error_text_color":"#FF0000","email_width":"500","subject_width":"500","message_width":"500","label_pos":"2","addcss":"","enable_anti_spam":"1","anti_spam_q":"4+3 = ?","anti_spam_a":"7","anti_spam_position":"1","moduleclass_sfx":"","fixed_url":"0","fixed_url_address":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(101, 92, 'RSContact', '', '', 1, 'bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_rscontact', 1, 0, '{"salut":"0","name":"1","name_type":"1","addr_1":"0","addr_2":"0","city":"0","state":"0","zip":"0","h_phone":"0","m_phone":"0","w_phone":"0","comp":"0","web":"0","subj":"1","subj_type":"input","subject_input":"","msg":"1","msg_len":"1000","captcha":"1","cf1":"0","cf1_name":"Custom Field 1","cf1_type":"input","cf1_inp":"","cf2":"0","cf2_name":"Custom Field 2","cf2_type":"input","cf2_inp":"","cf3":"0","cf3_name":"Custom Field 3","cf3_type":"input","cf3_inp":"","send_copy":"1","form_pre":"","form_post":"","css":"","js":"","req_marker":"*","label":"1","form_h":"0","auto_width":"1","thank_you":"","mail_to":"contact@escsr.com","mail_cc":"","mail_bcc":"","email_subj":"Formulaire escsr.com","mail_msg":"<p>From: {salutation}\\u00a0{first-name} {last-name} {fullname}<\\/p>\\r\\n<p>Subject: {subject}<\\/p>\\r\\n<p>Email:\\u00a0{email}<\\/p>\\r\\n<p>Home Phone: {home-phone}<\\/p>\\r\\n<p>Mobile Phone: {mobile-phone}<\\/p>\\r\\n<p>Work Phone:\\u00a0{work-phone}<\\/p>\\r\\n<p>Address:\\u00a0{address-1}<\\/p>\\r\\n<p>Address 2: {address-2}<\\/p>\\r\\n<p>City:\\u00a0{city}<\\/p>\\r\\n<p>State: {state}<\\/p>\\r\\n<p>Zip\\/Postal Code: {zip}<\\/p>\\r\\n<p>Company: {company}<\\/p>\\r\\n<p>Website: {website}<\\/p>\\r\\n<p>Message: {message}<\\/p>\\r\\n<p>{cf1}<\\/p>\\r\\n<p>{cf2}<\\/p>\\r\\n<p>{cf3}<\\/p>\\r\\n<hr \\/>\\r\\n<p>Username: {username}<\\/p>\\r\\n<p>User Id: {user-id}<\\/p>\\r\\n<p>User Email: {user-email}<\\/p>\\r\\n<p>Date: {date}<\\/p>\\r\\n<p>Date-Time: {date-time}<\\/p>\\r\\n<p>IP: {ip}<\\/p>","reply_to":"1","reply_email":"","jquery":"1","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_modules_menu`
--

CREATE TABLE IF NOT EXISTS `ki4ne_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ki4ne_modules_menu`
--

INSERT INTO `ki4ne_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 102),
(90, 103),
(90, 104),
(90, 106),
(90, 107),
(90, 110),
(90, 111),
(90, 112),
(90, 113),
(90, 114),
(90, 115),
(91, 0),
(92, 0),
(93, 0),
(94, 110),
(94, 111),
(94, 112),
(94, 113),
(94, 114),
(95, 101),
(95, 102),
(95, 103),
(95, 104),
(95, 106),
(95, 107),
(95, 109),
(96, 0),
(97, 110),
(100, 110),
(101, 110);

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `ki4ne_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_overrider`
--

CREATE TABLE IF NOT EXISTS `ki4ne_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `string` text COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `ki4ne_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `ki4ne_postinstall_messages`
--

INSERT INTO `ki4ne_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_redirect_links`
--

CREATE TABLE IF NOT EXISTS `ki4ne_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_schemas`
--

CREATE TABLE IF NOT EXISTS `ki4ne_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ki4ne_schemas`
--

INSERT INTO `ki4ne_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.6.0-2016-06-05'),
(10054, '3.5');

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_session`
--

CREATE TABLE IF NOT EXISTS `ki4ne_session` (
  `session_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ki4ne_session`
--

INSERT INTO `ki4ne_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('3fdbd4de5c254cff1fdbe791cddac4c9', 0, 1, '1487152668', 'joomla|s:1528:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ4NzE1MjY2NTtzOjQ6Imxhc3QiO2k6MTQ4NzE1MjY2NTtzOjM6Im5vdyI7aToxNDg3MTUyNjY1O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fXM6NjoiZmFicmlrIjtPOjg6InN0ZENsYXNzIjoxOntzOjI6ImpzIjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNjcmlwdHMiO047czo0OiJoZWFkIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6InNjcmlwdHMiO047czo1OiJjYWNoZSI7Tzo4OiJzdGRDbGFzcyI6MTp7czozMjoiNjY2NmNkNzZmOTY5NTY0NjllN2JlMzlkNzUwY2M3ZDkiO3M6NDY5OiJ7IlwvbWVkaWFcL2p1aVwvanNcL2pxdWVyeS5taW4uanMiOnsibWltZSI6InRleHRcL2phdmFzY3JpcHQiLCJkZWZlciI6ZmFsc2UsImFzeW5jIjpmYWxzZX0sIlwvbWVkaWFcL2p1aVwvanNcL2pxdWVyeS1ub2NvbmZsaWN0LmpzIjp7Im1pbWUiOiJ0ZXh0XC9qYXZhc2NyaXB0IiwiZGVmZXIiOmZhbHNlLCJhc3luYyI6ZmFsc2V9LCJcL21lZGlhXC9qdWlcL2pzXC9qcXVlcnktbWlncmF0ZS5taW4uanMiOnsibWltZSI6InRleHRcL2phdmFzY3JpcHQiLCJkZWZlciI6ZmFsc2UsImFzeW5jIjpmYWxzZX0sIlwvbWVkaWFcL3N5c3RlbVwvanNcL2NhcHRpb24uanMiOnsibWltZSI6InRleHRcL2phdmFzY3JpcHQiLCJkZWZlciI6ZmFsc2UsImFzeW5jIjpmYWxzZX0sIlwvbWVkaWFcL2p1aVwvanNcL2Jvb3RzdHJhcC5taW4uanMiOnsibWltZSI6InRleHRcL2phdmFzY3JpcHQiLCJkZWZlciI6ZmFsc2UsImFzeW5jIjpmYWxzZX19Ijt9fXM6NjoiY29uZmlnIjtOO3M6NDoic2hpbSI7TjtzOjg6ImpsYXlvdXRzIjtOO319fX1zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 0, ''),
('8a4d8c4cc5a9e527b7d1ddb85a770184', 0, 1, '1487152669', 'joomla|s:1528:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ4NzE1MjY2OTtzOjQ6Imxhc3QiO2k6MTQ4NzE1MjY2OTtzOjM6Im5vdyI7aToxNDg3MTUyNjY5O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fXM6NjoiZmFicmlrIjtPOjg6InN0ZENsYXNzIjoxOntzOjI6ImpzIjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNjcmlwdHMiO047czo0OiJoZWFkIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6InNjcmlwdHMiO047czo1OiJjYWNoZSI7Tzo4OiJzdGRDbGFzcyI6MTp7czozMjoiNjY2NmNkNzZmOTY5NTY0NjllN2JlMzlkNzUwY2M3ZDkiO3M6NDY5OiJ7IlwvbWVkaWFcL2p1aVwvanNcL2pxdWVyeS5taW4uanMiOnsibWltZSI6InRleHRcL2phdmFzY3JpcHQiLCJkZWZlciI6ZmFsc2UsImFzeW5jIjpmYWxzZX0sIlwvbWVkaWFcL2p1aVwvanNcL2pxdWVyeS1ub2NvbmZsaWN0LmpzIjp7Im1pbWUiOiJ0ZXh0XC9qYXZhc2NyaXB0IiwiZGVmZXIiOmZhbHNlLCJhc3luYyI6ZmFsc2V9LCJcL21lZGlhXC9qdWlcL2pzXC9qcXVlcnktbWlncmF0ZS5taW4uanMiOnsibWltZSI6InRleHRcL2phdmFzY3JpcHQiLCJkZWZlciI6ZmFsc2UsImFzeW5jIjpmYWxzZX0sIlwvbWVkaWFcL3N5c3RlbVwvanNcL2NhcHRpb24uanMiOnsibWltZSI6InRleHRcL2phdmFzY3JpcHQiLCJkZWZlciI6ZmFsc2UsImFzeW5jIjpmYWxzZX0sIlwvbWVkaWFcL2p1aVwvanNcL2Jvb3RzdHJhcC5taW4uanMiOnsibWltZSI6InRleHRcL2phdmFzY3JpcHQiLCJkZWZlciI6ZmFsc2UsImFzeW5jIjpmYWxzZX19Ijt9fXM6NjoiY29uZmlnIjtOO3M6NDoic2hpbSI7TjtzOjg6ImpsYXlvdXRzIjtOO319fX1zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 0, ''),
('c44731242b95f854682db732ee517b58', 0, 1, '1488700581', 'joomla|s:1528:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ4ODcwMDU3ODtzOjQ6Imxhc3QiO2k6MTQ4ODcwMDU3ODtzOjM6Im5vdyI7aToxNDg4NzAwNTc4O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fXM6NjoiZmFicmlrIjtPOjg6InN0ZENsYXNzIjoxOntzOjI6ImpzIjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNjcmlwdHMiO047czo0OiJoZWFkIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6InNjcmlwdHMiO047czo1OiJjYWNoZSI7Tzo4OiJzdGRDbGFzcyI6MTp7czozMjoiNjY2NmNkNzZmOTY5NTY0NjllN2JlMzlkNzUwY2M3ZDkiO3M6NDY5OiJ7IlwvbWVkaWFcL2p1aVwvanNcL2pxdWVyeS5taW4uanMiOnsibWltZSI6InRleHRcL2phdmFzY3JpcHQiLCJkZWZlciI6ZmFsc2UsImFzeW5jIjpmYWxzZX0sIlwvbWVkaWFcL2p1aVwvanNcL2pxdWVyeS1ub2NvbmZsaWN0LmpzIjp7Im1pbWUiOiJ0ZXh0XC9qYXZhc2NyaXB0IiwiZGVmZXIiOmZhbHNlLCJhc3luYyI6ZmFsc2V9LCJcL21lZGlhXC9qdWlcL2pzXC9qcXVlcnktbWlncmF0ZS5taW4uanMiOnsibWltZSI6InRleHRcL2phdmFzY3JpcHQiLCJkZWZlciI6ZmFsc2UsImFzeW5jIjpmYWxzZX0sIlwvbWVkaWFcL3N5c3RlbVwvanNcL2NhcHRpb24uanMiOnsibWltZSI6InRleHRcL2phdmFzY3JpcHQiLCJkZWZlciI6ZmFsc2UsImFzeW5jIjpmYWxzZX0sIlwvbWVkaWFcL2p1aVwvanNcL2Jvb3RzdHJhcC5taW4uanMiOnsibWltZSI6InRleHRcL2phdmFzY3JpcHQiLCJkZWZlciI6ZmFsc2UsImFzeW5jIjpmYWxzZX19Ijt9fXM6NjoiY29uZmlnIjtOO3M6NDoic2hpbSI7TjtzOjg6ImpsYXlvdXRzIjtOO319fX1zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_tags`
--

CREATE TABLE IF NOT EXISTS `ki4ne_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `urls` text COLLATE utf8_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `ki4ne_tags`
--

INSERT INTO `ki4ne_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 3, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 496, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, 2, 1, 'joomla', 'Joomla', 'joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info","image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', '', '{"author":"","robots":""}', 496, '2013-11-16 00:00:00', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_template_styles`
--

CREATE TABLE IF NOT EXISTS `ki4ne_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Contenu de la table `ki4ne_template_styles`
--

INSERT INTO `ki4ne_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'as002058free', 0, '0', 'AS 002058 Free - Par défaut', '{"body_font_family":"Tahoma, Geneva, sans-serif, Arial","body_font_size":"12","body_font_color":"","hfont_family":"Michroma","h1_font_size":"","h2_font_size":"","h3_font_size":"","h4_font_size":"","h5_font_size":"","link_font_color":"","hlink_font_color":"","btn_font_color":"","btn_hfont_color":"","btn_gradient_topcolor":"","btn_gradient_bottomcolor":"","logo_size":"2","logo_type":"1","logo_img":"images\\/escsr.png","logo_txt":"","logo_font_family":"Tahoma, Geneva, sans-serif, Arial","logo_font_size":"40","logo_font_style":"normal","logo_font_weight":"normal","logo_font_color":"","slogan_txt":"Il faut trouver un slogan !","slogan_font_family":"Arial, Helvetica, sans-serif","slogan_font_size":"12","slogan_font_style":"normal","slogan_font_weight":"normal","slogan_font_color":"","aside_left_width":"4","aside_right_width":"3","feature_totop":"1","feature_totop_text":""}'),
(10, 'jsn_artista_free', 0, '0', 'JSN Artista FREE - Par défaut', '{"logoColored":"0","logoFile":"images\\/escsr.png","mobileLogo":"","favicon":"","logoLink":"index.php","logoSlogan":"","templateWidth":{"type":"fixed","fixed":"1140","float":"90"},"showFrontpage":"1","desktopSwitcher":"1","promoColumns":{"01:promo-left":"span3","00:promo":"span6","02:promo-right":"span3"},"mainColumns":{"01:left":"span3","00:content":"span6","02:right":"span3"},"contentColumns":{"01:innerleft":"span3","00:component":"span6","02:innerright":"span3"},"userColumns":{"00:user5":"span4","00:user6":"span4","00:user7":"span4"},"menuSticky":{"mobile":"1","desktop":"0"},"sitetoolsColors":"{\\"list\\":[\\"blue\\",\\"red\\",\\"green\\",\\"violet\\",\\"orange\\",\\"grey\\"],\\"colors\\":[\\"blue\\",\\"red\\",\\"green\\",\\"violet\\",\\"orange\\",\\"grey\\"]}","socialIcons":{"status":["facebook","twitter","youtube"]},"language":""}'),
(11, 'cardeluxe', 0, '0', 'Car Deluxe - Par défaut', '{"logo":"images\\/escsr.png"}'),
(12, 'wt_mino_free', 0, '0', 'wt_mino_free - Par défaut', '{"config":""}'),
(13, 'jsn_fidem_free', 0, '0', 'JSN Fidem FREE - Par défaut', '{"logoColored":"0","logoFile":"","mobileLogo":"","favicon":"","logoLink":"index.php","logoSlogan":"","templateWidth":{"type":"fixed","fixed":"960","float":"90"},"showFrontpage":"1","desktopSwitcher":"1","promoColumns":{"01:promo-left":"span3","00:promo":"span6","02:promo-right":"span3"},"mainColumns":{"01:left":"span3","00:content":"span6","02:right":"span3"},"contentColumns":{"01:innerleft":"span3","00:component":"span6","02:innerright":"span3"},"userColumns":{"00:user5":"span4","00:user6":"span4","00:user7":"span4"},"menuSticky":{"mobile":"1","desktop":"0"},"sitetoolsColors":"{\\"list\\":[\\"blue\\",\\"red\\",\\"green\\",\\"violet\\",\\"orange\\",\\"grey\\"],\\"colors\\":[\\"blue\\",\\"red\\",\\"green\\",\\"violet\\",\\"orange\\",\\"grey\\"]}","socialIcons":{"status":["facebook","twitter","youtube"]},"language":""}'),
(14, 'jsn_teki_free', 0, '0', 'JSN Teki FREE - Par défaut', '[]'),
(15, 'mx_joomla140', 0, '0', 'mx_joomla140 - Par défaut', '{"layout_type":"3","width_unit":"percent","fixed_column_height":"0","logo_type":"image","showMediaLogo":"imglogo","mediaLogo":"","logo_text":"Your LOGO","logo_slogan":"slogan goes here","logo_width":"180","logo_height":"52","social_api_type":"1","popup_fb":"1","popup_twitter":"1","popup_gplus":"1","popup_pinterest":"1","popup_linkedin":"0","popup_digg":"0","popup_vk":"0","popup_stumbleupon":"0","hide_slider":"0","slides":{"dynotitle":["\\u00bb Box title (click to edit, only for backend usage)","\\u00bb Box title (click to edit, only for backend usage)","\\u00bb Box title (click to edit, only for backend usage)"],"vals":["","",""],"img":["images\\/k1.png","images\\/k2.png","images\\/k3.png"],"effectos":["M 0 0 L 0 182 L 90 156.5 L 180 182 L 180 0 L 0 0 z ","M 0 0 L 0 182 L 90 156.5 L 180 182 L 180 0 L 0 0 z ","M 0 0 L 0 182 L 90 156.5 L 180 182 L 180 0 L 0 0 z "],"title":["","",""],"decs":["","",""],"url":{"link":["","",""],"target":["_self","_self","_self"]},"transcol":["wetasphalt","wetasphalt","wetasphalt"],"dadepth":["1.5","1.5","1.5"]},"styleh":"450","imgh":"350","tstyle":"","fristpost":"","slautorotate":"0","slautordelay":"5000","jqueryparallax":"0","arrowshow":"block","jqueryload":"0","tempcolor":"0","style":"red","MeText":"","MeColor":"#ffffff","BgColor":"","BgText":"","BgImage":"","BgPattern":"","TpText":"","TpColor":"","TpImage":"","HdText":"","HdColor":"","BtText":"","BtColor":"","MbColor":"","MbText":"","MbPattern":"","float":"1","direction":"ltr","go_respo":"0","compress_css":"0","compress_js":"0","enable_ga":"0","ga_code":"","showcp":"1","copyright":"2016 mixwebtemplates. All Rights Reserved.","designed_by":"1","cpanel_style":"0","showtop":"0","show_awesome":"1","ie6warn":"1","jquery":"0","bootstrap":"1","hide_component":"0"}'),
(16, 'joomspirit_123', 0, '1', 'joomspirit_123 - Par défaut', '{"color_theme":"theme-light","scroll_to_top":"yes","sticky_menu":"yes","uppercase":"uppercase-menu-title","search_module":"yes","search_word":"Recherche","border_image":"no-js-border","hover3d":"no","width_website":"1080px","width_left":"25","width_right":"25","user1_width":"32","user2_width":"32","user4_width":"32","user5_width":"32","mylogo":"images\\/bantitre.png","website_title":"E-Service Clients SR","color_website_title":"#000071","font_website_title":"Arizonia","custom_font_website_title":"","website_title_fontsize":"30px","vertical_position_logo":"30","horizontal_position_logo":"10","color_main_menu_item":"#00821a","color_main_menu_item_active":"#000071","color_sub_menu_item_active":"#000071","font_menu":"Comfortaa","custom_font_menu":"","main_menu_fontsize":"150%","text_menu":"menu","color_text_general":"#706868","font_content":"Francois+One","custom_font_content":"","fontSize":"0.75em","color_link":"#807272","color_link_hover":"#0b23d6","colorh1":"#000071","font_h1":"Francois+One","custom_font_h1":"","h1_fontsize":"210%","h1_shadow":"no","colorh1_slide":"#000071","h1_slide_fontsize":"240%","h1_slide_shadow":"dark","color_module_title":"#000071","module_title_fontsize":"130%","colorh2":"#000071","font_h2":"Francois+One","custom_font_h2":"","h2_fontsize":"150%","h3_fontsize":"115%","h4_fontsize":"110%","h5_fontsize":"100%","text_social_icons":"","color_social":"#7aa371","twitter":"https:\\/\\/twitter.com\\/eserviceclients","facebook":"https:\\/\\/www.facebook.com\\/E-Service-clients-SR-538574243017403\\/","rss":"","linkedin":"","google":"","instagram":"","pinterest":"","renren":"","weibo":"","xing":"","flickr":"","youtube":"","vimeo":"","tumblr":"","custom_icon01":"","custom_icon01_text":"","custom_icon01_img":"","custom_icon02":"","custom_icon02_text":"","custom_icon02_img":"","custom_icon03":"","custom_icon03_text":"","custom_icon03_img":"","custom_icon04":"","custom_icon04_text":"","custom_icon04_img":"","responsive":"yes","responsive_side":"resp-side-right","responsive_users":"resp-users-768","disable_animation":"no","animation_logo":"home-page","animation_left":"yes","animation_right":"yes","animation_top":"no","animation_user1":"no","animation_user2":"no","animation_user3":"no","animation_user4":"yes","animation_user5":"yes","animation_user6":"yes","animation_bottom":"yes","animation_footer":"yes","google_code":""}');

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_ucm_base`
--

CREATE TABLE IF NOT EXISTS `ki4ne_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ki4ne_ucm_base`
--

INSERT INTO `ki4ne_ucm_base` (`ucm_id`, `ucm_item_id`, `ucm_type_id`, `ucm_language_id`) VALUES
(1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_ucm_content`
--

CREATE TABLE IF NOT EXISTS `ki4ne_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=2 ;

--
-- Contenu de la table `ki4ne_ucm_content`
--

INSERT INTO `ki4ne_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`) VALUES
(1, 'com_content.article', 'Comment débuter ?', 'comment-debuter', '<p>La création d''un site web avec Joomla est simple, le déploiement de ce site exemple vous y aidera. <br />Les quelques principes de base présentés ci-dessous vous guideront dans la compréhension de ce logiciel.</p><h3>Qu''est-ce qu''un Système de Gestion de Contenu ?</h3><p>Un   système de gestion de contenu (SGC ou CMS de l''anglais Content  Management System) est un logiciel qui vous permet de créer  et gérer  des pages Web facilement, séparant la création des contenus de la  gestion technique nécessaire à une diffusion sur le web.</p><p>Le  contenu rédactionnel est stocké et restitué par une base de données, l''aspect (police, taille, couleur, emplacement, etc.) est géré par un  template (habillage du site). Le logiciel Joomla permet d''unir ces deux  structures de manière conviviale et de les rendre accessibles au plus  grand nombre d''utilisateurs.</p><h3>Deux interfaces</h3><p>Un site Joomla est structuré en deux parties distinctes : la partie visible du site appelée «Frontal» de <em>Frontend</em> en anglais et, la partie d''administration pure appelée «Administration» de <em>Administrator</em>.</p><h3>Administration</h3><p>Vous pouvez accéder à l''administration en cliquant sur le sur le lien «Administration» présent dans le module de menu «Menu membre» visible après vous être connecté sur le site ou, en  ajoutant  <em>/administrator</em> dans l''URL après le nom de domaine (exemple : www.mon-domaine.com/administrator).</p><p>Utilisez le nom d''utilisateur et le mot de passe créés lors de l''installation de Joomla.</p><h3>Frontal</h3><p>Si votre profil possède les droits suffisants, vous pouvez créer des articles et les éditer depuis l''interface frontale du site.</p><p>Connectez-vous par le module «Connexion» en utilisant le nom d''utilisateur et le mot de passe créés lors de l''installation de Joomla.</p><h3>Créer un article en frontal</h3><p>Lorsque vous êtes connecté, un nouveau menu nommé «Menu Membres» apparaît. Cliquez sur le lien  «Créer un article» pour afficher l''éditeur de texte et d''insertion de médias.</p><p>Pour enregistrer l''article, vous devez spécifier à quelle catégorie il appartient ainsi que son statut de publication. Pour le modifier, cliquez sur l''icône d''édition <img src="media/system/images/edit.png" border="0" alt="Editer un article" width="18" height="18" style="vertical-align: middle;" />.</p><p>Vous pouvez travailler sur des articles non publiés ou de publication programmée dans le temps et, dans le cadre d''un travail collaboratif, ne les rendre visibles qu''à un groupe d''utilisateurs donnés avant de les rendre publics.</p><h3>En savoir plus</h3><p>Une pleine utilisation de Joomla requiert certaines connaissances approfondies que vous pourrez acquérir dans la <a href="http://docs.joomla.org/" target="_blank">documentation officielle de Joomla</a> ou sur le <a href="http://aide.joomla.fr/" target="_blank">site d''aide francophone</a> et dans le <a href="http://forum.joomla.org/" target="_blank">forum officiel</a> ou le <a href="http://forum.joomla.fr/" target="_blank">forum francophone</a>.</p>', 0, '', 0, 1, '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 0, '{"robots":"","author":"","rights":"","xreference":""}', 496, '', '2013-11-16 00:00:00', 496, '2016-09-12 07:27:10', '*', '2013-11-16 00:00:00', '0000-00-00 00:00:00', 1, 62, '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', 5, 1, 0, '', '', 2, '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_ucm_history`
--

CREATE TABLE IF NOT EXISTS `ki4ne_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=164 ;

--
-- Contenu de la table `ki4ne_ucm_history`
--

INSERT INTO `ki4ne_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 2, 10, 'Initial content', '2013-11-16 00:00:00', 496, 558, 'be28228b479aa67bad3dc1db2975232a033d5f0f', '{"id":2,"parent_id":"1","lft":"1","rgt":2,"level":1,"path":"joomla","title":"Joomla","alias":"joomla","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"0000-00-00 00:00:00","access":1,"params":null,"metadesc":null,"metakey":null,"metadata":null,"created_user_id":"849","created_time":"2013-11-16 00:00:00","created_by_alias":"","modified_user_id":"0","modified_time":"0000-00-00 00:00:00","images":null,"urls":null,"hits":"0","language":"*","version":"1","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00"}', 0),
(2, 1, 1, 'Initial content', '2013-11-16 00:00:00', 496, 4539, '4f6bf8f67e89553853c3b6e8ed0a6111daaa7a2f', '{"id":1,"asset_id":54,"title":"Getting Started","alias":"getting-started","introtext":"<p>It''s easy to get started creating your website. Knowing some of the basics will help.<\\/p>\\r\\n<h3>What is a Content Management System?<\\/h3>\\r\\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.<\\/p>\\r\\n<p>In this site, the content is stored in a <em>database<\\/em>. The look and feel are created by a <em>template<\\/em>. Joomla! brings together the template and your content to create web pages.<\\/p>\\r\\n<h3>Logging in<\\/h3>\\r\\n<p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.<\\/p>\\r\\n<h3>Creating an article<\\/h3>\\r\\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \\"Submit Article\\" link on that menu.<\\/p>\\r\\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.<\\/p>\\r\\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).<\\/div>\\r\\n<h3>Template, site settings, and modules<\\/h3>\\r\\n<p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \\"Template Settings\\" in the user menu.\\u00a0<\\/p>\\r\\n<p>The boxes around the main content of the site are called modules. \\u00a0You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.<\\/p>\\r\\n<p>You can change some site settings such as the site name and description by clicking on the \\"Site Settings\\" link.<\\/p>\\r\\n<p>More advanced options for templates, site settings, modules, and more are available in the site administrator.<\\/p>\\r\\n<h3>Site and Administrator<\\/h3>\\r\\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \\"Site Administrator\\" link on the \\"User Menu\\" menu (visible once you login) or by adding \\/administrator to the end of your domain name. The same user name and password are used for both sites.<\\/p>\\r\\n<h3>Learn more<\\/h3>\\r\\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href=\\"https:\\/\\/docs.joomla.org\\" target=\\"_blank\\">Joomla! documentation site<\\/a> and on the<a href=\\"http:\\/\\/forum.joomla.org\\" target=\\"_blank\\"> Joomla! forums<\\/a>.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-11-16 00:00:00","created_by":"849","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(6, 5, 1, '', '2016-09-08 13:07:19', 496, 1697, 'fc6a94db84ac344a636ab2dd45981ed87e60a380', '{"id":5,"asset_id":66,"title":"Contact","alias":"contact","introtext":"<p>contact<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-09-08 13:07:19","created_by":"496","created_by_alias":"","modified":"2016-09-08 13:07:19","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-09-08 13:07:19","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":4,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 5, 1, '', '2016-09-08 13:25:29', 496, 2374, 'b9df6976a43f1def3a8d0f0ef30393a5202c41e0', '{"id":"5","asset_id":"66","title":"Contact","alias":"contact","introtext":"<div id=\\"contener\\"><!--?php include(''include\\/menu.php''); ?-->\\r\\n<div class=\\"contenu\\">\\r\\n<h1 style=\\"text-align: center;\\">Par t\\u00e9l\\u00e9phone :<\\/h1>\\r\\n<center><img style=\\"width: 8%;\\" src=\\"images\\/tel.png\\" alt=\\"t\\u00e9l\\u00e9phone\\" \\/><\\/center><center>\\r\\n<ul>01.86.95.30.42<\\/ul>\\r\\n<\\/center><center>\\r\\n<ul>OU<\\/ul>\\r\\n<\\/center><center>\\r\\n<ul>06.59.86.42.38<\\/ul>\\r\\n<\\/center>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par e-mail :<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\">contact@e-serviceclientsr.com<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2016-09-08 13:07:19","created_by":"496","created_by_alias":"","modified":"2016-09-08 13:25:29","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-08 13:23:50","publish_up":"2016-09-08 13:07:19","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(11, 6, 1, '', '2016-09-12 07:25:23', 496, 1762, '6e71b7c1efed39bd1c3cbb3f7d15578f23541a15', '{"id":6,"asset_id":67,"title":"P\\u00f4le administratif","alias":"pole-administratif","introtext":"<p>Plus d''infos sur le p\\u00f4le administratif :<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-09-12 07:25:23","created_by":"496","created_by_alias":"","modified":"2016-09-12 07:25:23","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-09-12 07:25:23","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":5,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(12, 7, 1, '', '2016-09-12 07:25:50', 496, 1730, '8a2caef5130ff28c47679747333a7204f3a40ed1', '{"id":7,"asset_id":68,"title":"P\\u00f4le Web","alias":"pole-web","introtext":"<p>Plus d''infos sur le p\\u00f4le web<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-09-12 07:25:50","created_by":"496","created_by_alias":"","modified":"2016-09-12 07:25:50","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-09-12 07:25:50","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":6,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(13, 8, 1, '', '2016-09-12 07:26:17', 496, 1752, 'a28e203644840b822a4b0c2f6200cde68bb232f1', '{"id":8,"asset_id":69,"title":"P\\u00f4le combin\\u00e9","alias":"pole-combine","introtext":"<p>Plus d''infos sur le p\\u00f4le combin\\u00e9<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-09-12 07:26:17","created_by":"496","created_by_alias":"","modified":"2016-09-12 07:26:17","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-09-12 07:26:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":7,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(14, 5, 1, '', '2016-09-12 07:26:50', 496, 2374, '7eebeaf572dfc1e9c56c886cc723a8b5326bea60', '{"id":"5","asset_id":"66","title":"Contact","alias":"contact","introtext":"<div id=\\"contener\\"><!--?php include(''include\\/menu.php''); ?-->\\r\\n<div class=\\"contenu\\">\\r\\n<h1 style=\\"text-align: center;\\">Par t\\u00e9l\\u00e9phone :<\\/h1>\\r\\n<center><img style=\\"width: 8%;\\" src=\\"images\\/tel.png\\" alt=\\"t\\u00e9l\\u00e9phone\\" \\/><\\/center><center>\\r\\n<ul>01.86.95.30.42<\\/ul>\\r\\n<\\/center><center>\\r\\n<ul>OU<\\/ul>\\r\\n<\\/center><center>\\r\\n<ul>06.59.86.42.38<\\/ul>\\r\\n<\\/center>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par e-mail :<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\">contact@e-serviceclientsr.com<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":"1","catid":"2","created":"2016-09-08 13:07:19","created_by":"496","created_by_alias":"","modified":"2016-09-12 07:26:50","modified_by":"496","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2016-09-08 13:07:19","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"2","ordering":3,"metakey":"","metadesc":"","access":"1","hits":"6","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(16, 1, 1, '', '2016-09-12 07:26:55', 496, 5184, '098f65d0190606b495908db3ba282104acf27e76', '{"id":"1","asset_id":"61","title":"Comment d\\u00e9buter ?","alias":"comment-debuter","introtext":"<p>La cr\\u00e9ation d''un site web avec Joomla est simple, le d\\u00e9ploiement de ce site exemple vous y aidera. <br \\/>Les quelques principes de base pr\\u00e9sent\\u00e9s ci-dessous vous guideront dans la compr\\u00e9hension de ce logiciel.<\\/p><h3>Qu''est-ce qu''un Syst\\u00e8me de Gestion de Contenu ?<\\/h3><p>Un   syst\\u00e8me de gestion de contenu (SGC ou CMS de l''anglais Content  Management System) est un logiciel qui vous permet de cr\\u00e9er  et g\\u00e9rer  des pages Web facilement, s\\u00e9parant la cr\\u00e9ation des contenus de la  gestion technique n\\u00e9cessaire \\u00e0 une diffusion sur le web.<\\/p><p>Le  contenu r\\u00e9dactionnel est stock\\u00e9 et restitu\\u00e9 par une base de donn\\u00e9es, l''aspect (police, taille, couleur, emplacement, etc.) est g\\u00e9r\\u00e9 par un  template (habillage du site). Le logiciel Joomla permet d''unir ces deux  structures de mani\\u00e8re conviviale et de les rendre accessibles au plus  grand nombre d''utilisateurs.<\\/p><h3>Deux interfaces<\\/h3><p>Un site Joomla est structur\\u00e9 en deux parties distinctes : la partie visible du site appel\\u00e9e \\u00abFrontal\\u00bb de <em>Frontend<\\/em> en anglais et, la partie d''administration pure appel\\u00e9e \\u00abAdministration\\u00bb de <em>Administrator<\\/em>.<\\/p><h3>Administration<\\/h3><p>Vous pouvez acc\\u00e9der \\u00e0 l''administration en cliquant sur le sur le lien \\u00abAdministration\\u00bb pr\\u00e9sent dans le module de menu \\u00abMenu membre\\u00bb visible apr\\u00e8s vous \\u00eatre connect\\u00e9 sur le site ou, en  ajoutant  <em>\\/administrator<\\/em> dans l''URL apr\\u00e8s le nom de domaine (exemple : www.mon-domaine.com\\/administrator).<\\/p><p>Utilisez le nom d''utilisateur et le mot de passe cr\\u00e9\\u00e9s lors de l''installation de Joomla.<\\/p><h3>Frontal<\\/h3><p>Si votre profil poss\\u00e8de les droits suffisants, vous pouvez cr\\u00e9er des articles et les \\u00e9diter depuis l''interface frontale du site.<\\/p><p>Connectez-vous par le module \\u00abConnexion\\u00bb en utilisant le nom d''utilisateur et le mot de passe cr\\u00e9\\u00e9s lors de l''installation de Joomla.<\\/p><h3>Cr\\u00e9er un article en frontal<\\/h3><p>Lorsque vous \\u00eates connect\\u00e9, un nouveau menu nomm\\u00e9 \\u00abMenu Membres\\u00bb appara\\u00eet. Cliquez sur le lien  \\u00abCr\\u00e9er un article\\u00bb pour afficher l''\\u00e9diteur de texte et d''insertion de m\\u00e9dias.<\\/p><p>Pour enregistrer l''article, vous devez sp\\u00e9cifier \\u00e0 quelle cat\\u00e9gorie il appartient ainsi que son statut de publication. Pour le modifier, cliquez sur l''ic\\u00f4ne d''\\u00e9dition <img src=\\"media\\/system\\/images\\/edit.png\\" border=\\"0\\" alt=\\"Editer un article\\" width=\\"18\\" height=\\"18\\" style=\\"vertical-align: middle;\\" \\/>.<\\/p><p>Vous pouvez travailler sur des articles non publi\\u00e9s ou de publication programm\\u00e9e dans le temps et, dans le cadre d''un travail collaboratif, ne les rendre visibles qu''\\u00e0 un groupe d''utilisateurs donn\\u00e9s avant de les rendre publics.<\\/p><h3>En savoir plus<\\/h3><p>Une pleine utilisation de Joomla requiert certaines connaissances approfondies que vous pourrez acqu\\u00e9rir dans la <a href=\\"http:\\/\\/docs.joomla.org\\/\\" target=\\"_blank\\">documentation officielle de Joomla<\\/a> ou sur le <a href=\\"http:\\/\\/aide.joomla.fr\\/\\" target=\\"_blank\\">site d''aide francophone<\\/a> et dans le <a href=\\"http:\\/\\/forum.joomla.org\\/\\" target=\\"_blank\\">forum officiel<\\/a> ou le <a href=\\"http:\\/\\/forum.joomla.fr\\/\\" target=\\"_blank\\">forum francophone<\\/a>.<\\/p>","fulltext":"","state":"0","catid":"2","created":"2013-11-16 00:00:00","created_by":"496","created_by_alias":"","modified":"2016-09-12 07:26:55","modified_by":"496","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"1","ordering":0,"metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(17, 6, 1, '', '2016-09-12 07:26:55', 496, 1786, 'a04515050bbebdb4c34bb292b00a7c04e9223da6', '{"id":"6","asset_id":"67","title":"P\\u00f4le administratif","alias":"pole-administratif","introtext":"<p>Plus d''infos sur le p\\u00f4le administratif :<\\/p>","fulltext":"","state":"1","catid":"2","created":"2016-09-12 07:25:23","created_by":"496","created_by_alias":"","modified":"2016-09-12 07:26:55","modified_by":"496","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2016-09-12 07:25:23","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"1","ordering":3,"metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(18, 7, 1, '', '2016-09-12 07:27:00', 496, 1754, 'd5a63426c98248ff51d79c26c32ba62c20a70388', '{"id":"7","asset_id":"68","title":"P\\u00f4le Web","alias":"pole-web","introtext":"<p>Plus d''infos sur le p\\u00f4le web<\\/p>","fulltext":"","state":"1","catid":"2","created":"2016-09-12 07:25:50","created_by":"496","created_by_alias":"","modified":"2016-09-12 07:27:00","modified_by":"496","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2016-09-12 07:25:50","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"1","ordering":5,"metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(19, 5, 1, '', '2016-09-12 07:27:00', 496, 2374, 'd7a50c917280f4cb60d752633a4b62222e1167e8', '{"id":"5","asset_id":"66","title":"Contact","alias":"contact","introtext":"<div id=\\"contener\\"><!--?php include(''include\\/menu.php''); ?-->\\r\\n<div class=\\"contenu\\">\\r\\n<h1 style=\\"text-align: center;\\">Par t\\u00e9l\\u00e9phone :<\\/h1>\\r\\n<center><img style=\\"width: 8%;\\" src=\\"images\\/tel.png\\" alt=\\"t\\u00e9l\\u00e9phone\\" \\/><\\/center><center>\\r\\n<ul>01.86.95.30.42<\\/ul>\\r\\n<\\/center><center>\\r\\n<ul>OU<\\/ul>\\r\\n<\\/center><center>\\r\\n<ul>06.59.86.42.38<\\/ul>\\r\\n<\\/center>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par e-mail :<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\">contact@e-serviceclientsr.com<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":"1","catid":"2","created":"2016-09-08 13:07:19","created_by":"496","created_by_alias":"","modified":"2016-09-12 07:27:00","modified_by":"496","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2016-09-08 13:07:19","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"2","ordering":6,"metakey":"","metadesc":"","access":"1","hits":"6","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(20, 7, 1, '', '2016-09-12 07:27:06', 496, 1754, '75c4aab469291d7013520eabf0c35b2c3492b436', '{"id":"7","asset_id":"68","title":"P\\u00f4le Web","alias":"pole-web","introtext":"<p>Plus d''infos sur le p\\u00f4le web<\\/p>","fulltext":"","state":"1","catid":"2","created":"2016-09-12 07:25:50","created_by":"496","created_by_alias":"","modified":"2016-09-12 07:27:06","modified_by":"496","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2016-09-12 07:25:50","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"1","ordering":4,"metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(21, 8, 1, '', '2016-09-12 07:27:10', 496, 1776, 'c1be88dff3bc312f0a7e2f5a28f293a0aec50260', '{"id":"8","asset_id":"69","title":"P\\u00f4le combin\\u00e9","alias":"pole-combine","introtext":"<p>Plus d''infos sur le p\\u00f4le combin\\u00e9<\\/p>","fulltext":"","state":"1","catid":"2","created":"2016-09-12 07:26:17","created_by":"496","created_by_alias":"","modified":"2016-09-12 07:27:10","modified_by":"496","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2016-09-12 07:26:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"1","ordering":5,"metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(22, 8, 5, '', '2016-09-12 07:28:22', 496, 551, '4d3c7db69221c80885937285007a9208d6109bc5', '{"id":8,"asset_id":70,"parent_id":"1","lft":"11","rgt":12,"level":1,"path":null,"extension":"com_content","title":"Accueil","alias":"accueil","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"496","created_time":"2016-09-12 07:28:22","modified_user_id":null,"modified_time":"2016-09-12 07:28:22","hits":"0","language":"*","version":null}', 0),
(23, 9, 5, '', '2016-09-12 07:28:41', 496, 561, '230b407e1ab88400787eb4b6bdfae3d6db812a23', '{"id":9,"asset_id":71,"parent_id":"1","lft":"13","rgt":14,"level":1,"path":null,"extension":"com_content","title":"Nos services","alias":"nos-services","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"496","created_time":"2016-09-12 07:28:41","modified_user_id":null,"modified_time":"2016-09-12 07:28:41","hits":"0","language":"*","version":null}', 0),
(24, 10, 5, '', '2016-09-12 07:28:55', 496, 578, '070193ca2332b3c6dd36d63a4d26bb853a94687e', '{"id":10,"asset_id":72,"parent_id":"1","lft":"15","rgt":16,"level":1,"path":null,"extension":"com_content","title":"Nos offres et tarifs","alias":"nos-offres-et-tarifs","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"496","created_time":"2016-09-12 07:28:55","modified_user_id":null,"modified_time":"2016-09-12 07:28:55","hits":"0","language":"*","version":null}', 0),
(25, 11, 5, '', '2016-09-12 07:29:15', 496, 552, '241cba575ebd40ee092323d1993a773ea6b490c2', '{"id":11,"asset_id":73,"parent_id":"1","lft":"17","rgt":18,"level":1,"path":null,"extension":"com_content","title":"Contact","alias":"contact","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"496","created_time":"2016-09-12 07:29:15","modified_user_id":null,"modified_time":"2016-09-12 07:29:15","hits":"0","language":"*","version":null}', 0),
(26, 12, 5, '', '2016-09-12 07:29:27', 496, 579, '4fd2c10e833c6a4744cd0afb99a4a3768aca3c7a', '{"id":12,"asset_id":74,"parent_id":"1","lft":"19","rgt":20,"level":1,"path":null,"extension":"com_content","title":"P\\u00f4le administratif","alias":"pole-administratif","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"496","created_time":"2016-09-12 07:29:27","modified_user_id":null,"modified_time":"2016-09-12 07:29:27","hits":"0","language":"*","version":null}', 0),
(27, 13, 5, '', '2016-09-12 07:29:45', 496, 559, '66518eb2ab46aa0229db5b63e156402ea469dec3', '{"id":13,"asset_id":75,"parent_id":"1","lft":"21","rgt":22,"level":1,"path":null,"extension":"com_content","title":"P\\u00f4le Web","alias":"pole-web","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"496","created_time":"2016-09-12 07:29:45","modified_user_id":null,"modified_time":"2016-09-12 07:29:45","hits":"0","language":"*","version":null}', 0),
(28, 14, 5, '', '2016-09-12 07:29:57', 496, 572, 'c9b6e69b923e647976a8a0ba83d8f34f7a1f86cb', '{"id":14,"asset_id":76,"parent_id":"1","lft":"23","rgt":24,"level":1,"path":null,"extension":"com_content","title":"P\\u00f4le combin\\u00e9","alias":"pole-combine","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"496","created_time":"2016-09-12 07:29:57","modified_user_id":null,"modified_time":"2016-09-12 07:29:57","hits":"0","language":"*","version":null}', 0),
(29, 12, 5, '', '2016-09-12 07:30:20', 496, 617, 'de296e8ed79f9f3c5c6e09fed62622e7f8dc86be', '{"id":"12","asset_id":"74","parent_id":"9","lft":"14","rgt":15,"level":2,"path":"pole-administratif","extension":"com_content","title":"P\\u00f4le administratif","alias":"pole-administratif","note":"","description":"","published":"1","checked_out":"496","checked_out_time":"2016-09-12 07:30:04","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"496","created_time":"2016-09-12 07:29:27","modified_user_id":"496","modified_time":"2016-09-12 07:30:20","hits":"0","language":"*","version":"1"}', 0),
(30, 13, 5, '', '2016-09-12 07:30:36', 496, 587, 'e29da1fdb50186c5fccc88c4611360b4c8868100', '{"id":"13","asset_id":"75","parent_id":"9","lft":"16","rgt":17,"level":2,"path":"pole-web","extension":"com_content","title":"P\\u00f4le Web","alias":"pole-web","note":"","description":"","published":"1","checked_out":"496","checked_out_time":"2016-09-12 07:30:26","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"496","created_time":"2016-09-12 07:29:45","modified_user_id":"496","modified_time":"2016-09-12 07:30:36","hits":"0","language":"*","version":"1"}', 0),
(31, 14, 5, '', '2016-09-12 07:30:54', 496, 604, 'd9d75bdf17df81b7bc6b51be8a28423da6d65f7a', '{"id":"14","asset_id":"76","parent_id":"9","lft":"18","rgt":19,"level":2,"path":"pole-combine","extension":"com_content","title":"P\\u00f4le combin\\u00e9","alias":"pole-combine","note":"","description":"","published":"1","checked_out":"496","checked_out_time":"2016-09-12 07:30:43","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"496","created_time":"2016-09-12 07:29:57","modified_user_id":"496","modified_time":"2016-09-12 07:30:54","hits":"0","language":"*","version":"1"}', 0),
(34, 6, 1, '', '2016-09-12 07:32:06', 496, 1787, '0afff6363e0d1a74d97b1a91a1619794d392dc4b', '{"id":"6","asset_id":"67","title":"P\\u00f4le administratif","alias":"pole-administratif","introtext":"<p>Plus d''infos sur le p\\u00f4le administratif :<\\/p>","fulltext":"","state":1,"catid":"12","created":"2016-09-12 07:25:23","created_by":"496","created_by_alias":"","modified":"2016-09-12 07:32:06","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-12 07:31:56","publish_up":"2016-09-12 07:25:23","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(35, 7, 1, '', '2016-09-12 07:32:22', 496, 1755, '813a47ad9f149bc1d3f6fc3d63003bd70306ff36', '{"id":"7","asset_id":"68","title":"P\\u00f4le Web","alias":"pole-web","introtext":"<p>Plus d''infos sur le p\\u00f4le web<\\/p>","fulltext":"","state":1,"catid":"13","created":"2016-09-12 07:25:50","created_by":"496","created_by_alias":"","modified":"2016-09-12 07:32:22","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-12 07:32:11","publish_up":"2016-09-12 07:25:50","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(36, 8, 1, '', '2016-09-12 07:32:43', 496, 1777, 'b96fcc9c88a445eaa172712fc5a0679d756478a8', '{"id":"8","asset_id":"69","title":"P\\u00f4le combin\\u00e9","alias":"pole-combine","introtext":"<p>Plus d''infos sur le p\\u00f4le combin\\u00e9<\\/p>","fulltext":"","state":1,"catid":"14","created":"2016-09-12 07:26:17","created_by":"496","created_by_alias":"","modified":"2016-09-12 07:32:43","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-12 07:32:29","publish_up":"2016-09-12 07:26:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"6","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `ki4ne_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(38, 5, 1, '', '2016-09-12 07:33:17', 496, 2375, 'af29acb8d82eacebb1e98ed9556231736e7b44d0', '{"id":"5","asset_id":"66","title":"Contact","alias":"contact","introtext":"<div id=\\"contener\\"><!--?php include(''include\\/menu.php''); ?-->\\r\\n<div class=\\"contenu\\">\\r\\n<h1 style=\\"text-align: center;\\">Par t\\u00e9l\\u00e9phone :<\\/h1>\\r\\n<center><img style=\\"width: 8%;\\" src=\\"images\\/tel.png\\" alt=\\"t\\u00e9l\\u00e9phone\\" \\/><\\/center><center>\\r\\n<ul>01.86.95.30.42<\\/ul>\\r\\n<\\/center><center>\\r\\n<ul>OU<\\/ul>\\r\\n<\\/center><center>\\r\\n<ul>06.59.86.42.38<\\/ul>\\r\\n<\\/center>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par e-mail :<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\">contact@e-serviceclientsr.com<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"11","created":"2016-09-08 13:07:19","created_by":"496","created_by_alias":"","modified":"2016-09-12 07:33:17","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-12 07:33:06","publish_up":"2016-09-08 13:07:19","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"8","metakey":"","metadesc":"","access":"1","hits":"6","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(41, 6, 1, '', '2016-09-12 07:45:39', 496, 1838, '568ec3bb01bb56034680b54c40624c26292b477d', '{"id":"6","asset_id":"67","title":"P\\u00f4le administratif","alias":"pole-administratif","introtext":"<h1 style=\\"text-align: center;\\"><strong>Plus d''infos sur le p\\u00f4le administratif :<\\/strong><\\/h1>","fulltext":"","state":1,"catid":"12","created":"2016-09-12 07:25:23","created_by":"496","created_by_alias":"","modified":"2016-09-12 07:45:39","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-12 07:45:08","publish_up":"2016-09-12 07:25:23","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"1\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(42, 8, 1, '', '2016-09-12 07:46:03', 496, 1827, '294fb583120c5b6b3c3a1d1614a6b345208239b8', '{"id":"8","asset_id":"69","title":"P\\u00f4le combin\\u00e9","alias":"pole-combine","introtext":"<h1 style=\\"text-align: center;\\"><strong>Plus d''infos sur le p\\u00f4le combin\\u00e9<\\/strong><\\/h1>","fulltext":"","state":1,"catid":"14","created":"2016-09-12 07:26:17","created_by":"496","created_by_alias":"","modified":"2016-09-12 07:46:03","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-12 07:45:49","publish_up":"2016-09-12 07:26:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"6","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(43, 7, 1, '', '2016-09-12 07:46:23', 496, 1805, 'b0ca0bfa896c6da5c0c168b8d8b1d9040968490c', '{"id":"7","asset_id":"68","title":"P\\u00f4le Web","alias":"pole-web","introtext":"<h1 style=\\"text-align: center;\\"><strong>Plus d''infos sur le p\\u00f4le web<\\/strong><\\/h1>","fulltext":"","state":1,"catid":"13","created":"2016-09-12 07:25:50","created_by":"496","created_by_alias":"","modified":"2016-09-12 07:46:23","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-12 07:46:09","publish_up":"2016-09-12 07:25:50","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(44, 9, 1, '', '2016-09-12 07:53:42', 496, 3180, 'be47cde87d01e65497c9ff9eb9e8859a0ac593b9', '{"id":9,"asset_id":77,"title":"Mentions l\\u00e9gales","alias":"mentions-legales","introtext":"<h1>Mentions l\\u00e9gales<\\/h1>\\r\\n<center><img style=\\"width: 6%;\\" src=\\"images\\/logoa.png\\" \\/><\\/center><center>\\r\\n<h2>Informations l\\u00e9gales<\\/h2>\\r\\n<\\/center><center>E SERVICE CLIENTS SR SASU est une soci\\u00e9t\\u00e9 \\u00e0 action simplifi\\u00e9e qui exerce son activit\\u00e9 de prestations de services au capital de 500 Euros.<br \\/> Si\\u00e8ge social : 108 rue de la Croix Nivert 75015 PARIS<br \\/> Email : contact@escsr.com<br \\/> Num\\u00e9ro de t\\u00e9l\\u00e9phone : 01.86.95.30.42<br \\/> Inscrite au RCS de PARIS sous le N\\u00b0 811535301<br \\/> N\\u00b0 SIRET : FR058811535301<br \\/> N\\u00b0 TVA INTRACOMMUNAUTAIRE : FR058811535301<\\/center>\\r\\n<p><br \\/><br \\/><\\/p>\\r\\n<center><img style=\\"width: 6%;\\" src=\\"images\\/logoa.png\\" \\/><\\/center><center>\\r\\n<h2>H\\u00e9bergement<\\/h2>\\r\\n<\\/center><center>Le prestataire assurant l''h\\u00e9bergement du site est la soci\\u00e9t\\u00e9 OVH - 140 Quai du Sartel - 59100 ROUBAIX<\\/center>\\r\\n<p><br \\/><br \\/><\\/p>\\r\\n<center><img style=\\"width: 6%;\\" src=\\"images\\/logoa.png\\" \\/><\\/center><center>\\r\\n<h2>Publication<\\/h2>\\r\\n<\\/center><center>Directrice de la publication : Sandrine RALAIARISON, g\\u00e9rante.<br \\/> Ce site a pour vocation de pr\\u00e9senter les services de la soci\\u00e9t\\u00e9 E SERVICE CLIENTS SR. Tous droits r\\u00e9serv\\u00e9s. Les textes et les illustrations, sauf mention particuli\\u00e8re, sont la propri\\u00e9t\\u00e9 exclusive de E SERVICE CLIENTS SR.<\\/center>\\r\\n<p><br \\/><br \\/><\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-09-12 07:53:42","created_by":"496","created_by_alias":"","modified":"2016-09-12 07:53:42","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-09-12 07:53:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":2,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(45, 15, 5, '', '2016-09-12 07:54:15', 496, 575, 'c3fe0567efe9c1329ad6db4829535d5e7d49ec4c', '{"id":15,"asset_id":78,"parent_id":"1","lft":"25","rgt":26,"level":1,"path":null,"extension":"com_content","title":"Mentions l\\u00e9gales","alias":"mentions-legales","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"496","created_time":"2016-09-12 07:54:15","modified_user_id":null,"modified_time":"2016-09-12 07:54:15","hits":"0","language":"*","version":null}', 0),
(46, 11, 5, '', '2016-09-12 07:54:33', 496, 597, 'f2b1114f22cde2da09f450506566b1cd5deb2cdc', '{"id":"11","asset_id":"73","parent_id":"1","lft":"23","rgt":"24","level":"1","path":"contact","extension":"com_content","title":"Contact et ressources","alias":"contact","note":"","description":"","published":"1","checked_out":"496","checked_out_time":"2016-09-12 07:54:24","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"496","created_time":"2016-09-12 07:29:15","modified_user_id":"496","modified_time":"2016-09-12 07:54:33","hits":"0","language":"*","version":"1"}', 0),
(47, 16, 5, '', '2016-09-12 07:54:58', 496, 553, '13c405a48ff2d955dcb47d4b3caa69f6e91b8afa', '{"id":16,"asset_id":79,"parent_id":"11","lft":"24","rgt":25,"level":2,"path":null,"extension":"com_content","title":"Contact","alias":"contact","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"496","created_time":"2016-09-12 07:54:58","modified_user_id":null,"modified_time":"2016-09-12 07:54:58","hits":"0","language":"*","version":null}', 0),
(48, 15, 5, '', '2016-09-12 07:55:12', 496, 612, '22ea805c64735595d2bdec40f5b2d5d032abbb0b', '{"id":"15","asset_id":"78","parent_id":"11","lft":"26","rgt":27,"level":2,"path":"mentions-legales","extension":"com_content","title":"Mentions l\\u00e9gales","alias":"mentions-legales","note":"","description":"","published":"1","checked_out":"496","checked_out_time":"2016-09-12 07:55:03","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"496","created_time":"2016-09-12 07:54:15","modified_user_id":"496","modified_time":"2016-09-12 07:55:12","hits":"0","language":"*","version":"1"}', 0),
(49, 11, 5, '', '2016-09-12 07:55:46', 496, 597, 'edd0a59c03d3924d6c21104e41fcda921d1ed2eb', '{"id":"11","asset_id":"73","parent_id":"1","lft":"23","rgt":"28","level":"1","path":"contact","extension":"com_content","title":"Contact et ressources","alias":"contact","note":"","description":"","published":"1","checked_out":"496","checked_out_time":"2016-09-12 07:55:24","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"496","created_time":"2016-09-12 07:29:15","modified_user_id":"496","modified_time":"2016-09-12 07:55:46","hits":"0","language":"*","version":"1"}', 0),
(50, 9, 1, '', '2016-09-12 07:59:55', 496, 3205, '5f280b25f76daf1cf3651c53a4d929a9d4a64204', '{"id":"9","asset_id":"77","title":"Mentions l\\u00e9gales","alias":"mentions-legales","introtext":"<h1>Mentions l\\u00e9gales<\\/h1>\\r\\n<center><img style=\\"width: 6%;\\" src=\\"images\\/logoa.png\\" \\/><\\/center><center>\\r\\n<h2>Informations l\\u00e9gales<\\/h2>\\r\\n<\\/center><center>E SERVICE CLIENTS SR SASU est une soci\\u00e9t\\u00e9 \\u00e0 action simplifi\\u00e9e qui exerce son activit\\u00e9 de prestations de services au capital de 500 Euros.<br \\/> Si\\u00e8ge social : 108 rue de la Croix Nivert 75015 PARIS<br \\/> Email : contact@escsr.com<br \\/> Num\\u00e9ro de t\\u00e9l\\u00e9phone : 01.86.95.30.42<br \\/> Inscrite au RCS de PARIS sous le N\\u00b0 811535301<br \\/> N\\u00b0 SIRET : FR058811535301<br \\/> N\\u00b0 TVA INTRACOMMUNAUTAIRE : FR058811535301<\\/center>\\r\\n<p><br \\/><br \\/><\\/p>\\r\\n<center><img style=\\"width: 6%;\\" src=\\"images\\/logoa.png\\" \\/><\\/center><center>\\r\\n<h2>H\\u00e9bergement<\\/h2>\\r\\n<\\/center><center>Le prestataire assurant l''h\\u00e9bergement du site est la soci\\u00e9t\\u00e9 OVH - 140 Quai du Sartel - 59100 ROUBAIX<\\/center>\\r\\n<p><br \\/><br \\/><\\/p>\\r\\n<center><img style=\\"width: 6%;\\" src=\\"images\\/logoa.png\\" \\/><\\/center><center>\\r\\n<h2>Publication<\\/h2>\\r\\n<\\/center><center>Directrice de la publication : Sandrine RALAIARISON, g\\u00e9rante.<br \\/> Ce site a pour vocation de pr\\u00e9senter les services de la soci\\u00e9t\\u00e9 E SERVICE CLIENTS SR. Tous droits r\\u00e9serv\\u00e9s. Les textes et les illustrations, sauf mention particuli\\u00e8re, sont la propri\\u00e9t\\u00e9 exclusive de E SERVICE CLIENTS SR.<\\/center>\\r\\n<p><br \\/><br \\/><\\/p>","fulltext":"","state":1,"catid":"15","created":"2016-09-12 07:53:42","created_by":"496","created_by_alias":"","modified":"2016-09-12 07:59:55","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-12 07:59:43","publish_up":"2016-09-12 07:53:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(51, 5, 1, '', '2016-09-12 08:00:28', 496, 2454, 'd450373275ab1f0becf156901b20a3b1c9056b00', '{"id":"5","asset_id":"66","title":"Contact et ressources","alias":"contact","introtext":"<div id=\\"contener\\"><!--?php include(''include\\/menu.php''); ?-->\\r\\n<div class=\\"contenu\\">\\r\\n<h1 style=\\"text-align: center;\\">Pour nous contacter :<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par t\\u00e9l\\u00e9phone :<\\/h1>\\r\\n<center><img style=\\"width: 8%;\\" src=\\"images\\/tel.png\\" alt=\\"t\\u00e9l\\u00e9phone\\" \\/><\\/center><center>\\r\\n<ul>01.86.95.30.42<\\/ul>\\r\\n<\\/center><center>\\r\\n<ul>OU<\\/ul>\\r\\n<\\/center><center>\\r\\n<ul>06.59.86.42.38<\\/ul>\\r\\n<\\/center>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par e-mail :<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\">contact@e-serviceclientsr.com<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"11","created":"2016-09-08 13:07:19","created_by":"496","created_by_alias":"","modified":"2016-09-12 08:00:28","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-12 08:00:00","publish_up":"2016-09-08 13:07:19","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"8","metakey":"","metadesc":"","access":"1","hits":"8","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(52, 10, 1, '', '2016-09-12 08:01:22', 496, 2417, '2f21542ada99741ddb01138b311e31acddc8239f', '{"id":10,"asset_id":80,"title":"Contact","alias":"contact","introtext":"<div id=\\"contener\\"><!--?php include(''include\\/menu.php''); ?-->\\r\\n<div class=\\"contenu\\">\\r\\n<h1 style=\\"text-align: center;\\">Pour nous contacter :<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par t\\u00e9l\\u00e9phone :<\\/h1>\\r\\n<center><img style=\\"width: 8%;\\" src=\\"images\\/tel.png\\" alt=\\"t\\u00e9l\\u00e9phone\\" \\/><\\/center><center>\\r\\n<ul>01.86.95.30.42<\\/ul>\\r\\n<\\/center><center>\\r\\n<ul>OU<\\/ul>\\r\\n<\\/center><center>\\r\\n<ul>06.59.86.42.38<\\/ul>\\r\\n<\\/center>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par e-mail :<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\">contact@e-serviceclientsr.com<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"16","created":"2016-09-12 08:01:22","created_by":"496","created_by_alias":"","modified":"2016-09-12 08:01:22","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-09-12 08:01:22","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":1,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(53, 5, 1, '', '2016-09-12 08:02:35', 496, 2762, '74a9a63e7af5e913a2f424de133b1bafc33a5728', '{"id":"5","asset_id":"66","title":"Contact et ressources","alias":"contact","introtext":"<div id=\\"contener\\"><!--?php include(''include\\/menu.php''); ?-->\\r\\n<div class=\\"contenu\\">\\r\\n<h1 style=\\"text-align: center;\\">Pour nous contacter :<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par t\\u00e9l\\u00e9phone :<\\/h1>\\r\\n<center><img style=\\"width: 8%;\\" src=\\"images\\/tel.png\\" alt=\\"t\\u00e9l\\u00e9phone\\" \\/><\\/center><center>\\r\\n<ul>01.86.95.30.42<\\/ul>\\r\\n<\\/center><center>\\r\\n<ul>OU<\\/ul>\\r\\n<\\/center><center>\\r\\n<ul>06.59.86.42.38<\\/ul>\\r\\n<\\/center>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par e-mail :<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><a href=\\"mailto:contact@e-serviceclientsr.com\\">contact@e-serviceclientsr.com<\\/a><\\/p>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Ressources :<\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\"><a href=\\"index.php\\/contact-et-ressources\\/mentions-legales\\">Mentions l\\u00e9gales<\\/a><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"11","created":"2016-09-08 13:07:19","created_by":"496","created_by_alias":"","modified":"2016-09-12 08:02:35","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-12 08:01:47","publish_up":"2016-09-08 13:07:19","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"8","metakey":"","metadesc":"","access":"1","hits":"11","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(75, 10, 1, '', '2016-09-14 07:30:58', 496, 2391, '5419c189e5e9ea4b07adf5fd17812c3060d35360', '{"id":"10","asset_id":"80","title":"Contact","alias":"contact","introtext":"<div id=\\"contener\\"><!--?php include(''include\\/menu.php''); ?-->\\r\\n<div class=\\"contenu\\">\\r\\n<h1 style=\\"text-align: center;\\">Pour nous contacter :<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par t\\u00e9l\\u00e9phone :<\\/h1>\\r\\n<center><img style=\\"width: 8%;\\" src=\\"images\\/tel.png\\" alt=\\"t\\u00e9l\\u00e9phone\\" \\/><\\/center><center>\\r\\n<ul>01.86.95.30.42<\\/ul>\\r\\n<\\/center><center>\\r\\n<ul>OU<\\/ul>\\r\\n<\\/center><center>\\r\\n<ul>06.59.86.42.38<\\/ul>\\r\\n<\\/center>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par e-mail :<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\">contact@e-serviceclientsr.com<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"16","created":"2016-09-12 08:01:22","created_by":"496","created_by_alias":"","modified":"2016-09-14 07:30:58","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-14 07:30:24","publish_up":"2016-09-12 08:01:22","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(79, 11, 5, '', '2016-09-14 07:53:46', 496, 611, 'e4aacf7cb10b0daef7629e6012d4814f03141cc2', '{"id":"11","asset_id":"73","parent_id":"1","lft":"23","rgt":"28","level":"1","path":"contact","extension":"com_content","title":"Contact et ressources","alias":"contact-et-ressources","note":"","description":"","published":"1","checked_out":"496","checked_out_time":"2016-09-14 07:53:35","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"496","created_time":"2016-09-12 07:29:15","modified_user_id":"496","modified_time":"2016-09-14 07:53:46","hits":"0","language":"*","version":"1"}', 0),
(80, 16, 5, '', '2016-09-14 07:54:13', 496, 602, 'b46d13992412a0985b9e9868d52cd512db0129fb', '{"id":"16","asset_id":"79","parent_id":"1","lft":"27","rgt":28,"level":1,"path":"contact-et-ressources\\/contact","extension":"com_content","title":"Contact","alias":"contact","note":"","description":"","published":"1","checked_out":"496","checked_out_time":"2016-09-14 07:54:03","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"496","created_time":"2016-09-12 07:54:58","modified_user_id":"496","modified_time":"2016-09-14 07:54:13","hits":"0","language":"*","version":"1"}', 0),
(81, 15, 5, '', '2016-09-14 07:54:49', 496, 634, '410d340a9c7908143f1031a14c97d69ee6e3b308', '{"id":"15","asset_id":"78","parent_id":"1","lft":"27","rgt":28,"level":1,"path":"contact-et-ressources\\/mentions-legales","extension":"com_content","title":"Mentions l\\u00e9gales","alias":"mentions-legales","note":"","description":"","published":"1","checked_out":"496","checked_out_time":"2016-09-14 07:54:41","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"496","created_time":"2016-09-12 07:54:15","modified_user_id":"496","modified_time":"2016-09-14 07:54:49","hits":"0","language":"*","version":"1"}', 0),
(82, 10, 1, '', '2016-09-14 09:41:20', 496, 2500, '147ac933a28dfa42a1ad2e21117c556df3bd1685', '{"id":"10","asset_id":"80","title":"Contact","alias":"contact","introtext":"<div id=\\"contener\\"><!--?php include(''include\\/menu.php''); ?-->\\r\\n<div class=\\"contenu\\">\\r\\n<h1 style=\\"text-align: center;\\">Pour nous contacter :<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par t\\u00e9l\\u00e9phone :<\\/h1>\\r\\n<center><a href=\\"tel:+33659864238\\"><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/tel.png\\" width=\\"66\\" height=\\"66\\" \\/><\\/a><\\/center><center><a href=\\"tel:+33186953042\\">01.86.95.30.42<\\/a><\\/center><center>\\r\\n<ul>OU<\\/ul>\\r\\n<\\/center><center><a href=\\"tel:+33659864238\\">06.59.86.42.38<\\/a><\\/center>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par e-mail :<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\">contact@e-serviceclientsr.com<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"16","created":"2016-09-12 08:01:22","created_by":"496","created_by_alias":"","modified":"2016-09-14 09:41:20","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-14 09:34:19","publish_up":"2016-09-12 08:01:22","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"4","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(114, 3, 1, '', '2016-09-15 12:00:48', 496, 3390, 'a514c0bd7c94653c6c64b09403920e43a26ec1fd', '{"id":"3","asset_id":"64","title":"Nos services","alias":"nos-services","introtext":"<center>\\r\\n<table style=\\"height: 239px; width: 1041px;\\">\\r\\n<tbody>\\r\\n<tr style=\\"height: 284px;\\">\\r\\n<td style=\\"width: 408.917px; height: 284px;\\">\\r\\n<p><img src=\\"images\\/sadmin.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 616.583px; height: 284px;\\">- Gestion des courriels<br \\/>- Classement et archivage<br \\/>- Saisie de donn\\u00e9es<br \\/>- Prise d''appels t\\u00e9l\\u00e9phonique<br \\/>- D\\u00e9marches et formalit\\u00e9s administratives<br \\/>- Mise \\u00e0 jour du contenu<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/center><center>\\r\\n<table style=\\"height: 348px; width: 1043px;\\">\\r\\n<tbody>\\r\\n<tr style=\\"height: 238px;\\">\\r\\n<td style=\\"width: 411.217px; height: 238px;\\">\\r\\n<p><img src=\\"images\\/sweb.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 616.283px; height: 238px;\\">- Cr\\u00e9ation de sites Web dynamiques<br \\/>- Cr\\u00e9ation de pages de r\\u00e9seaux sociaux<br \\/>- Hot Line<br \\/><br \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center>\\r\\n<table style=\\"height: 256px; width: 1046px;\\">\\r\\n<tbody>\\r\\n<tr style=\\"height: 201px;\\">\\r\\n<td style=\\"width: 414.25px; height: 201px;\\"><img src=\\"images\\/scomb.jpg\\" alt=\\"\\" \\/><\\/td>\\r\\n<td style=\\"width: 616.25px; height: 201px;\\">\\r\\n<p>- Cr\\u00e9ation et\\/ou d\\u00e9veloppement de site Web<br \\/>- R\\u00e9daction de contenu<br \\/>- Gestion des courriels<br \\/>- Mise \\u00e0 jour du contenu<br \\/>- Prise d''appels t\\u00e9l\\u00e9phoniques<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/center><center><\\/center>","fulltext":"","state":1,"catid":"9","created":"2016-09-08 13:06:42","created_by":"496","created_by_alias":"","modified":"2016-09-15 12:00:48","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-15 11:57:40","publish_up":"2016-09-08 13:06:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":38,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"142","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(115, 3, 1, '', '2016-09-15 12:06:10', 496, 3455, '65da749d53e6246ebfac87397012a5047065413d', '{"id":"3","asset_id":"64","title":"Nos services","alias":"nos-services","introtext":"<center>\\r\\n<table style=\\"height: 239px; width: 1041px;\\">\\r\\n<tbody>\\r\\n<tr style=\\"height: 284px;\\">\\r\\n<td style=\\"width: 250px; height: 284px;\\">\\r\\n<p><img src=\\"images\\/sadmin.jpg\\" alt=\\"\\" width=\\"245\\" height=\\"245\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 774px; height: 284px;\\">- Gestion des courriels<br \\/>- Classement et archivage<br \\/>- Saisie de donn\\u00e9es<br \\/>- Prise d''appels t\\u00e9l\\u00e9phonique<br \\/>- D\\u00e9marches et formalit\\u00e9s administratives<br \\/>- Mise \\u00e0 jour du contenu<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/center><center>\\r\\n<table style=\\"height: 348px; width: 1043px;\\">\\r\\n<tbody>\\r\\n<tr style=\\"height: 238px;\\">\\r\\n<td style=\\"width: 253px; height: 238px;\\">\\r\\n<p><img src=\\"images\\/sweb.jpg\\" alt=\\"\\" width=\\"247\\" height=\\"181\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 774px; height: 238px;\\">- Cr\\u00e9ation de sites Web dynamiques<br \\/>- Cr\\u00e9ation de pages de r\\u00e9seaux sociaux<br \\/>- Hot Line<br \\/><br \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center>\\r\\n<table style=\\"height: 256px; width: 1046px;\\">\\r\\n<tbody>\\r\\n<tr style=\\"height: 201px;\\">\\r\\n<td style=\\"width: 253px; height: 201px;\\"><img src=\\"images\\/scomb.jpg\\" alt=\\"\\" width=\\"253\\" height=\\"253\\" \\/><\\/td>\\r\\n<td style=\\"width: 777px; height: 201px;\\">\\r\\n<p>- Cr\\u00e9ation et\\/ou d\\u00e9veloppement de site Web<br \\/>- R\\u00e9daction de contenu<br \\/>- Gestion des courriels<br \\/>- Mise \\u00e0 jour du contenu<br \\/>- Prise d''appels t\\u00e9l\\u00e9phoniques<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/center><center><\\/center>","fulltext":"","state":1,"catid":"9","created":"2016-09-08 13:06:42","created_by":"496","created_by_alias":"","modified":"2016-09-15 12:06:10","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-15 12:05:29","publish_up":"2016-09-08 13:06:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":39,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"145","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(119, 3, 1, '', '2016-09-15 12:27:24', 496, 3420, 'd668ff309833209e4a8fffb475267a71beefea17', '{"id":"3","asset_id":"64","title":"Nos services","alias":"nos-services","introtext":"<center><\\/center><center>\\r\\n<table style=\\"height: 228px; width: 647px;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"width: 124px; text-align: center;\\">P\\u00f4le Administratif<\\/td>\\r\\n<td style=\\"width: 256px;\\">\\r\\n<p><img src=\\"images\\/sadmin.jpg\\" alt=\\"\\" width=\\"245\\" height=\\"245\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 244px;\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>- Gestion des courriels<br \\/>- Classement et archivage<br \\/>- Saisie de donn\\u00e9es<br \\/>- Prise d''appels t\\u00e9l\\u00e9phonique<br \\/>- D\\u00e9marches et formalit\\u00e9s administratives<br \\/>- Mise \\u00e0 jour du contenu<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 124px; text-align: center;\\">P\\u00f4le Web<\\/td>\\r\\n<td style=\\"width: 256px;\\">\\r\\n<p><img src=\\"images\\/sweb.jpg\\" alt=\\"\\" width=\\"247\\" height=\\"181\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 244px;\\">- Cr\\u00e9ation de sites Web dynamiques<br \\/>- Cr\\u00e9ation de pages de r\\u00e9seaux sociaux<br \\/>- Hot Line<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 124px; text-align: center;\\">P\\u00f4le Combin\\u00e9<\\/td>\\r\\n<td style=\\"width: 256px;\\">\\r\\n<p><img src=\\"images\\/scomb.jpg\\" alt=\\"\\" width=\\"253\\" height=\\"253\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 244px;\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>- Cr\\u00e9ation et\\/ou d\\u00e9veloppement de site Web<br \\/>- R\\u00e9daction de contenu<br \\/>- Gestion des courriels<br \\/>- Mise \\u00e0 jour du contenu<br \\/>- Prise d''appels t\\u00e9l\\u00e9phoniques<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center>\\r\\n<p>rz''r\\"erqweftasqe<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"9","created":"2016-09-08 13:06:42","created_by":"496","created_by_alias":"","modified":"2016-09-15 12:27:24","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-15 12:22:51","publish_up":"2016-09-08 13:06:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":40,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"151","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `ki4ne_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(120, 3, 1, '', '2016-09-15 12:28:00', 496, 3409, '6d298076b4240825dba844a9652830349559a80e', '{"id":"3","asset_id":"64","title":"Nos services","alias":"nos-services","introtext":"<center><\\/center><center>\\r\\n<table style=\\"height: 228px; width: 647px;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"width: 124px; text-align: center;\\">P\\u00f4le Administratif<\\/td>\\r\\n<td style=\\"width: 256px;\\">\\r\\n<p><img src=\\"images\\/sadmin.jpg\\" alt=\\"\\" width=\\"245\\" height=\\"245\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 244px;\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>- Gestion des courriels<br \\/>- Classement et archivage<br \\/>- Saisie de donn\\u00e9es<br \\/>- Prise d''appels t\\u00e9l\\u00e9phonique<br \\/>- D\\u00e9marches et formalit\\u00e9s administratives<br \\/>- Mise \\u00e0 jour du contenu<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 124px; text-align: center;\\">P\\u00f4le Web<\\/td>\\r\\n<td style=\\"width: 256px;\\">\\r\\n<p><img src=\\"images\\/sweb.jpg\\" alt=\\"\\" width=\\"247\\" height=\\"181\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 244px;\\">- Cr\\u00e9ation de sites Web dynamiques<br \\/>- Cr\\u00e9ation de pages de r\\u00e9seaux sociaux<br \\/>- Hot Line<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 124px; text-align: center;\\">P\\u00f4le Combin\\u00e9<\\/td>\\r\\n<td style=\\"width: 256px;\\">\\r\\n<p><img src=\\"images\\/scomb.jpg\\" alt=\\"\\" width=\\"253\\" height=\\"253\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 244px;\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>- Cr\\u00e9ation et\\/ou d\\u00e9veloppement de site Web<br \\/>- R\\u00e9daction de contenu<br \\/>- Gestion des courriels<br \\/>- Mise \\u00e0 jour du contenu<br \\/>- Prise d''appels t\\u00e9l\\u00e9phoniques<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"9","created":"2016-09-08 13:06:42","created_by":"496","created_by_alias":"","modified":"2016-09-15 12:28:00","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-15 12:27:24","publish_up":"2016-09-08 13:06:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":41,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"152","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(122, 3, 1, '', '2016-09-15 12:32:06', 496, 3391, 'aa9b7b1222cdeaaf059be8ad15cde4710e7aa03b', '{"id":"3","asset_id":"64","title":"Nos services","alias":"nos-services","introtext":"<center><\\/center>\\r\\n<table style=\\"height: 228px; width: 647px;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"width: 124px; text-align: center;\\">P\\u00f4le Administratif<\\/td>\\r\\n<td style=\\"width: 256px;\\">\\r\\n<p><img src=\\"images\\/sadmin.jpg\\" alt=\\"\\" width=\\"245\\" height=\\"245\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 244px;\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>- Gestion des courriels<br \\/>- Classement et archivage<br \\/>- Saisie de donn\\u00e9es<br \\/>- Prise d''appels t\\u00e9l\\u00e9phonique<br \\/>- D\\u00e9marches et formalit\\u00e9s administratives<br \\/>- Mise \\u00e0 jour du contenu<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 124px; text-align: center;\\">P\\u00f4le Web<\\/td>\\r\\n<td style=\\"width: 256px;\\">\\r\\n<p><img src=\\"images\\/sweb.jpg\\" alt=\\"\\" width=\\"247\\" height=\\"181\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 244px;\\">- Cr\\u00e9ation de sites Web dynamiques<br \\/>- Cr\\u00e9ation de pages de r\\u00e9seaux sociaux<br \\/>- Hot Line<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 124px; text-align: center;\\">P\\u00f4le Combin\\u00e9<\\/td>\\r\\n<td style=\\"width: 256px;\\">\\r\\n<p><img src=\\"images\\/scomb.jpg\\" alt=\\"\\" width=\\"253\\" height=\\"253\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 244px;\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>- Cr\\u00e9ation et\\/ou d\\u00e9veloppement de site Web<br \\/>- R\\u00e9daction de contenu<br \\/>- Gestion des courriels<br \\/>- Mise \\u00e0 jour du contenu<br \\/>- Prise d''appels t\\u00e9l\\u00e9phoniques<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"9","created":"2016-09-08 13:06:42","created_by":"496","created_by_alias":"","modified":"2016-09-15 12:32:06","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-15 12:31:00","publish_up":"2016-09-08 13:06:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":42,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"153","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(123, 3, 1, '', '2016-09-15 12:32:48', 496, 3445, '2539bbf3f0be24119ac85c7bfbb6ca5aff886ce1', '{"id":"3","asset_id":"64","title":"Nos services","alias":"nos-services","introtext":"<center><\\/center>\\r\\n<table style=\\"height: 228px; width: 647px;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"width: 124px; text-align: center;\\">\\r\\n<h3>P\\u00f4le Administratif<\\/h3>\\r\\n<\\/td>\\r\\n<td style=\\"width: 256px;\\">\\r\\n<p><img src=\\"images\\/sadmin.jpg\\" alt=\\"\\" width=\\"245\\" height=\\"245\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 244px;\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>- Gestion des courriels<br \\/>- Classement et archivage<br \\/>- Saisie de donn\\u00e9es<br \\/>- Prise d''appels t\\u00e9l\\u00e9phonique<br \\/>- D\\u00e9marches et formalit\\u00e9s administratives<br \\/>- Mise \\u00e0 jour du contenu<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 124px; text-align: center;\\">\\r\\n<h3>P\\u00f4le Web<\\/h3>\\r\\n<\\/td>\\r\\n<td style=\\"width: 256px;\\">\\r\\n<p><img src=\\"images\\/sweb.jpg\\" alt=\\"\\" width=\\"247\\" height=\\"181\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 244px;\\">- Cr\\u00e9ation de sites Web dynamiques<br \\/>- Cr\\u00e9ation de pages de r\\u00e9seaux sociaux<br \\/>- Hot Line<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 124px; text-align: center;\\">\\r\\n<h3>P\\u00f4le Combin\\u00e9<\\/h3>\\r\\n<\\/td>\\r\\n<td style=\\"width: 256px;\\">\\r\\n<p><img src=\\"images\\/scomb.jpg\\" alt=\\"\\" width=\\"253\\" height=\\"253\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 244px;\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>- Cr\\u00e9ation et\\/ou d\\u00e9veloppement de site Web<br \\/>- R\\u00e9daction de contenu<br \\/>- Gestion des courriels<br \\/>- Mise \\u00e0 jour du contenu<br \\/>- Prise d''appels t\\u00e9l\\u00e9phoniques<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"9","created":"2016-09-08 13:06:42","created_by":"496","created_by_alias":"","modified":"2016-09-15 12:32:48","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-15 12:32:06","publish_up":"2016-09-08 13:06:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":43,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"154","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(124, 3, 1, '', '2016-09-15 12:33:20', 496, 3445, 'f7823551b63966cbf93416ea67e07fd630397324', '{"id":"3","asset_id":"64","title":"Nos services","alias":"nos-services","introtext":"<center><\\/center>\\r\\n<table style=\\"height: 228px; width: 647px;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"width: 124px; text-align: center;\\">\\r\\n<h2>P\\u00f4le Administratif<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 256px;\\">\\r\\n<p><img src=\\"images\\/sadmin.jpg\\" alt=\\"\\" width=\\"245\\" height=\\"245\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 244px;\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>- Gestion des courriels<br \\/>- Classement et archivage<br \\/>- Saisie de donn\\u00e9es<br \\/>- Prise d''appels t\\u00e9l\\u00e9phonique<br \\/>- D\\u00e9marches et formalit\\u00e9s administratives<br \\/>- Mise \\u00e0 jour du contenu<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 124px; text-align: center;\\">\\r\\n<h2>P\\u00f4le Web<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 256px;\\">\\r\\n<p><img src=\\"images\\/sweb.jpg\\" alt=\\"\\" width=\\"247\\" height=\\"181\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 244px;\\">- Cr\\u00e9ation de sites Web dynamiques<br \\/>- Cr\\u00e9ation de pages de r\\u00e9seaux sociaux<br \\/>- Hot Line<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 124px; text-align: center;\\">\\r\\n<h2>P\\u00f4le Combin\\u00e9<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 256px;\\">\\r\\n<p><img src=\\"images\\/scomb.jpg\\" alt=\\"\\" width=\\"253\\" height=\\"253\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 244px;\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>- Cr\\u00e9ation et\\/ou d\\u00e9veloppement de site Web<br \\/>- R\\u00e9daction de contenu<br \\/>- Gestion des courriels<br \\/>- Mise \\u00e0 jour du contenu<br \\/>- Prise d''appels t\\u00e9l\\u00e9phoniques<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"9","created":"2016-09-08 13:06:42","created_by":"496","created_by_alias":"","modified":"2016-09-15 12:33:20","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-15 12:32:48","publish_up":"2016-09-08 13:06:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":44,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"155","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(125, 3, 1, '', '2016-09-15 12:33:48', 496, 3445, '252d94b63eb59d136f8fb64c4630d42a1ec5753c', '{"id":"3","asset_id":"64","title":"Nos services","alias":"nos-services","introtext":"<center><\\/center>\\r\\n<table style=\\"height: 228px; width: 818px;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"width: 219px; text-align: center;\\">\\r\\n<h2>P\\u00f4le Administratif<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 291px;\\">\\r\\n<p><img src=\\"images\\/sadmin.jpg\\" alt=\\"\\" width=\\"245\\" height=\\"245\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 285px;\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>- Gestion des courriels<br \\/>- Classement et archivage<br \\/>- Saisie de donn\\u00e9es<br \\/>- Prise d''appels t\\u00e9l\\u00e9phonique<br \\/>- D\\u00e9marches et formalit\\u00e9s administratives<br \\/>- Mise \\u00e0 jour du contenu<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 219px; text-align: center;\\">\\r\\n<h2>P\\u00f4le Web<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 291px;\\">\\r\\n<p><img src=\\"images\\/sweb.jpg\\" alt=\\"\\" width=\\"247\\" height=\\"181\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 285px;\\">- Cr\\u00e9ation de sites Web dynamiques<br \\/>- Cr\\u00e9ation de pages de r\\u00e9seaux sociaux<br \\/>- Hot Line<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 219px; text-align: center;\\">\\r\\n<h2>P\\u00f4le Combin\\u00e9<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 291px;\\">\\r\\n<p><img src=\\"images\\/scomb.jpg\\" alt=\\"\\" width=\\"253\\" height=\\"253\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 285px;\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>- Cr\\u00e9ation et\\/ou d\\u00e9veloppement de site Web<br \\/>- R\\u00e9daction de contenu<br \\/>- Gestion des courriels<br \\/>- Mise \\u00e0 jour du contenu<br \\/>- Prise d''appels t\\u00e9l\\u00e9phoniques<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"9","created":"2016-09-08 13:06:42","created_by":"496","created_by_alias":"","modified":"2016-09-15 12:33:48","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-15 12:33:20","publish_up":"2016-09-08 13:06:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":45,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"156","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(126, 3, 1, '', '2016-09-15 12:34:34', 496, 3446, '39c1e144da022f92c8b7f8012e049455ecc40410', '{"id":"3","asset_id":"64","title":"Nos services","alias":"nos-services","introtext":"<center><\\/center>\\r\\n<table style=\\"height: 707px; width: 1048px;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"width: 347px; text-align: center;\\">\\r\\n<h2>P\\u00f4le Administratif<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 348px;\\">\\r\\n<p><img src=\\"images\\/sadmin.jpg\\" alt=\\"\\" width=\\"245\\" height=\\"245\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 330px;\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>- Gestion des courriels<br \\/>- Classement et archivage<br \\/>- Saisie de donn\\u00e9es<br \\/>- Prise d''appels t\\u00e9l\\u00e9phonique<br \\/>- D\\u00e9marches et formalit\\u00e9s administratives<br \\/>- Mise \\u00e0 jour du contenu<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 347px; text-align: center;\\">\\r\\n<h2>P\\u00f4le Web<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 348px;\\">\\r\\n<p><img src=\\"images\\/sweb.jpg\\" alt=\\"\\" width=\\"247\\" height=\\"181\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 330px;\\">- Cr\\u00e9ation de sites Web dynamiques<br \\/>- Cr\\u00e9ation de pages de r\\u00e9seaux sociaux<br \\/>- Hot Line<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 347px; text-align: center;\\">\\r\\n<h2>P\\u00f4le Combin\\u00e9<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 348px;\\">\\r\\n<p><img src=\\"images\\/scomb.jpg\\" alt=\\"\\" width=\\"253\\" height=\\"253\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 330px;\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>- Cr\\u00e9ation et\\/ou d\\u00e9veloppement de site Web<br \\/>- R\\u00e9daction de contenu<br \\/>- Gestion des courriels<br \\/>- Mise \\u00e0 jour du contenu<br \\/>- Prise d''appels t\\u00e9l\\u00e9phoniques<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"9","created":"2016-09-08 13:06:42","created_by":"496","created_by_alias":"","modified":"2016-09-15 12:34:34","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-15 12:33:48","publish_up":"2016-09-08 13:06:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":46,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"157","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(127, 3, 1, '', '2016-09-15 12:42:21', 496, 3496, 'd789ecc6def08be55125a8f5ce03ebdb5d47120c', '{"id":"3","asset_id":"64","title":"Nos services","alias":"nos-services","introtext":"<center><\\/center>\\r\\n<table style=\\"height: 707px; width: 1048px;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"width: 347px; text-align: center;\\">\\r\\n<h2>P\\u00f4le Administratif<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 348px; text-align: center;\\">\\r\\n<h2>P\\u00f4le Web<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 330px; text-align: center;\\">\\r\\n<h2>P\\u00f4le Combin\\u00e9<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 347px; text-align: center;\\">\\r\\n<p><img src=\\"images\\/sadmin.jpg\\" alt=\\"\\" width=\\"304\\" height=\\"304\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 348px;\\">\\r\\n<p><img src=\\"images\\/sweb.jpg\\" alt=\\"\\" width=\\"330\\" height=\\"242\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 330px;\\"><img src=\\"images\\/scomb.jpg\\" alt=\\"\\" width=\\"304\\" height=\\"304\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 347px; text-align: center;\\">\\r\\n<p style=\\"text-align: left;\\">- Gestion des courriels<br \\/>- Classement et archivage<br \\/>- Saisie de donn\\u00e9es<br \\/>- Prise d''appels t\\u00e9l\\u00e9phonique<br \\/>- D\\u00e9marches et formalit\\u00e9s administratives<br \\/>- Mise \\u00e0 jour du contenu<\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 348px;\\">\\r\\n<p>- Cr\\u00e9ation de sites Web dynamiques<br \\/>- Cr\\u00e9ation de pages de r\\u00e9seaux sociaux<br \\/>- Hot Line<\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 330px;\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>- Cr\\u00e9ation et\\/ou d\\u00e9veloppement de site Web<br \\/>- R\\u00e9daction de contenu<br \\/>- Gestion des courriels<br \\/>- Mise \\u00e0 jour du contenu<br \\/>- Prise d''appels t\\u00e9l\\u00e9phoniques<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"9","created":"2016-09-08 13:06:42","created_by":"496","created_by_alias":"","modified":"2016-09-15 12:42:21","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-15 12:34:34","publish_up":"2016-09-08 13:06:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":47,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"163","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(135, 4, 1, '', '2016-09-15 13:19:15', 496, 4765, 'be47409ec21bfd94d1911debd294b9699349ff57', '{"id":"4","asset_id":"65","title":"Nos offres et tarifs","alias":"nos-offres-et-tarifs","introtext":"<table style=\\"height: 553px; width: 1174px;\\" cellpadding=\\"0\\">\\r\\n<tbody>\\r\\n<tr style=\\"height: 67px;\\">\\r\\n<td style=\\"width: 433px; height: 67px;\\">\\u00a0\\r\\n<h2 style=\\"text-align: center;\\">Administration<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 365px; text-align: right; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Web<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 353px; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Combin\\u00e9<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 308px;\\">\\r\\n<td style=\\"width: 433px; height: 308px;\\">\\u00a0<br \\/>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oweb.jpg\\" alt=\\"\\" width=\\"280\\" height=\\"280\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 365px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oadmin.jpg\\" alt=\\"\\" width=\\"528\\" height=\\"232\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 353px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/ocomb.jpg\\" alt=\\"\\" width=\\"341\\" height=\\"340\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 32px;\\">\\r\\n<td style=\\"width: 433px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">- Cr\\u00e9ation de site Web dynamiques<br \\/>- Site responsive<br \\/>- Cr\\u00e9ation de pages pour r\\u00e9seaux sociaux<br \\/>- Hotline<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 365px; text-align: left; height: 32px;\\">\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement des mails<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Prise d''appels t\\u00e9l\\u00e9phoniques<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Prise de rendez-vous<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Gestion de vos agendas<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - \\u00c9mission de mailings<br \\/>\\u00a0 \\u00a0 \\u00a0\\u00a0 - Classement\\/archivage de donn\\u00e9es\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 353px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0\\u00a0 \\u00a0 \\u00a0\\u00a0 - Cr\\u00e9ation\\/refonte de site Web<br \\/>\\u00a0\\u00a0\\u00a0 \\u00a0\\u00a0\\u00a0 - Traitement des flux entrants (appels\\/mails)<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement de vos commandes sur Back Office<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 \\u00a0\\u00a0 - Analyse transparente de vos activit\\u00e9s avec conseils<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center>","fulltext":"","state":1,"catid":"10","created":"2016-09-08 13:07:02","created_by":"496","created_by_alias":"","modified":"2016-09-15 13:19:15","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-15 13:18:29","publish_up":"2016-09-08 13:07:02","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":25,"ordering":"7","metakey":"","metadesc":"","access":"1","hits":"135","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(136, 4, 1, '', '2016-09-15 13:20:15', 496, 5075, 'bec81e21828ed21f35a16ee78c82f5cfeca7ed39', '{"id":"4","asset_id":"65","title":"Nos offres et tarifs","alias":"nos-offres-et-tarifs","introtext":"<table style=\\"height: 553px; width: 1174px;\\" cellpadding=\\"0\\">\\r\\n<tbody>\\r\\n<tr style=\\"height: 67px;\\">\\r\\n<td style=\\"width: 433px; height: 67px;\\">\\u00a0\\r\\n<h2 style=\\"text-align: center;\\">Administration<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 365px; text-align: right; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Web<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 353px; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Combin\\u00e9<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 308px;\\">\\r\\n<td style=\\"width: 433px; height: 308px;\\">\\u00a0<br \\/>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oweb.jpg\\" alt=\\"\\" width=\\"340\\" height=\\"340\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 365px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oadmin.jpg\\" alt=\\"\\" width=\\"528\\" height=\\"232\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 353px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/ocomb.jpg\\" alt=\\"\\" width=\\"341\\" height=\\"340\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 32px;\\">\\r\\n<td style=\\"width: 433px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Cr\\u00e9ation de site Web dynamiques<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Site responsive<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Cr\\u00e9ation de pages pour r\\u00e9seaux sociaux<br \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0 - Hotline<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 365px; text-align: left; height: 32px;\\">\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement des mails<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Prise d''appels t\\u00e9l\\u00e9phoniques<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Prise de rendez-vous<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Gestion de vos agendas<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - \\u00c9mission de mailings<br \\/>\\u00a0 \\u00a0 \\u00a0\\u00a0 - Classement\\/archivage de donn\\u00e9es\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 353px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0\\u00a0 \\u00a0 \\u00a0\\u00a0 - Cr\\u00e9ation\\/refonte de site Web<br \\/>\\u00a0\\u00a0\\u00a0 \\u00a0\\u00a0\\u00a0 - Traitement des flux entrants (appels\\/mails)<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement de vos commandes sur Back Office<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 \\u00a0\\u00a0 - Analyse transparente de vos activit\\u00e9s avec conseils<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center>","fulltext":"","state":1,"catid":"10","created":"2016-09-08 13:07:02","created_by":"496","created_by_alias":"","modified":"2016-09-15 13:20:15","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-15 13:19:15","publish_up":"2016-09-08 13:07:02","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":26,"ordering":"7","metakey":"","metadesc":"","access":"1","hits":"135","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(137, 4, 1, '', '2016-09-15 13:21:11', 496, 4982, '7c1fc9e5830b35aa2601aefee837998485747a28', '{"id":"4","asset_id":"65","title":"Nos offres et tarifs","alias":"nos-offres-et-tarifs","introtext":"<table style=\\"height: 553px; width: 1174px;\\" cellpadding=\\"0\\">\\r\\n<tbody>\\r\\n<tr style=\\"height: 67px;\\">\\r\\n<td style=\\"width: 433px; height: 67px;\\">\\u00a0\\r\\n<h2 style=\\"text-align: center;\\">Administration<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 352px; text-align: right; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Web<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 366px; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Combin\\u00e9<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 308px;\\">\\r\\n<td style=\\"width: 433px; height: 308px;\\">\\u00a0<br \\/>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oweb.jpg\\" alt=\\"\\" width=\\"340\\" height=\\"340\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 352px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oadmin.jpg\\" alt=\\"\\" width=\\"528\\" height=\\"232\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 366px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/ocomb.jpg\\" alt=\\"\\" width=\\"341\\" height=\\"340\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 32px;\\">\\r\\n<td style=\\"width: 433px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Cr\\u00e9ation de site Web dynamiques<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Site responsive<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Cr\\u00e9ation de pages pour r\\u00e9seaux sociaux<br \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0 - Hotline<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 352px; text-align: left; height: 32px;\\">\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement des mails<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - Prise d''appels t\\u00e9l\\u00e9phoniques<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - Prise de rendez-vous<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Gestion de vos agendas<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - \\u00c9mission de mailings<br \\/>\\u00a0 \\u00a0\\u00a0 - Classement\\/archivage de donn\\u00e9es\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 366px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0\\u00a0 \\u00a0\\u00a0 - Cr\\u00e9ation\\/refonte de site Web<br \\/>\\u00a0\\u00a0\\u00a0 \\u00a0 - Traitement des flux entrants (appels\\/mails)<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement de vos commandes sur Back Office<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Analyse transparente de vos activit\\u00e9s avec conseils<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center>","fulltext":"","state":1,"catid":"10","created":"2016-09-08 13:07:02","created_by":"496","created_by_alias":"","modified":"2016-09-15 13:21:11","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-15 13:20:15","publish_up":"2016-09-08 13:07:02","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":27,"ordering":"7","metakey":"","metadesc":"","access":"1","hits":"136","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `ki4ne_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(138, 4, 1, '', '2016-09-15 13:22:07', 496, 4982, '1e00723a94fb5d19c0e9b60b029d93e164a1b92b', '{"id":"4","asset_id":"65","title":"Nos offres et tarifs","alias":"nos-offres-et-tarifs","introtext":"<table style=\\"height: 553px; width: 1174px;\\" cellpadding=\\"0\\">\\r\\n<tbody>\\r\\n<tr style=\\"height: 67px;\\">\\r\\n<td style=\\"width: 416px; height: 67px;\\">\\u00a0\\r\\n<h2 style=\\"text-align: center;\\">Administration<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 369px; text-align: right; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Web<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 366px; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Combin\\u00e9<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 308px;\\">\\r\\n<td style=\\"width: 416px; height: 308px;\\">\\u00a0<br \\/>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oweb.jpg\\" alt=\\"\\" width=\\"340\\" height=\\"340\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 369px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oadmin.jpg\\" alt=\\"\\" width=\\"528\\" height=\\"232\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 366px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/ocomb.jpg\\" alt=\\"\\" width=\\"341\\" height=\\"340\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 32px;\\">\\r\\n<td style=\\"width: 416px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Cr\\u00e9ation de site Web dynamiques<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Site responsive<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Cr\\u00e9ation de pages pour r\\u00e9seaux sociaux<br \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0 - Hotline<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 369px; text-align: left; height: 32px;\\">\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement des mails<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - Prise d''appels t\\u00e9l\\u00e9phoniques<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - Prise de rendez-vous<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Gestion de vos agendas<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - \\u00c9mission de mailings<br \\/>\\u00a0 \\u00a0\\u00a0 - Classement\\/archivage de donn\\u00e9es\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 366px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0\\u00a0 \\u00a0\\u00a0 - Cr\\u00e9ation\\/refonte de site Web<br \\/>\\u00a0\\u00a0\\u00a0 \\u00a0 - Traitement des flux entrants (appels\\/mails)<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement de vos commandes sur Back Office<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Analyse transparente de vos activit\\u00e9s avec conseils<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center>","fulltext":"","state":1,"catid":"10","created":"2016-09-08 13:07:02","created_by":"496","created_by_alias":"","modified":"2016-09-15 13:22:07","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-15 13:21:11","publish_up":"2016-09-08 13:07:02","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":28,"ordering":"7","metakey":"","metadesc":"","access":"1","hits":"137","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(139, 4, 1, '', '2016-09-15 13:26:29', 496, 4982, '455a916cab4a5637679a3077ec3e95f3692bc329', '{"id":"4","asset_id":"65","title":"Nos offres et tarifs","alias":"nos-offres-et-tarifs","introtext":"<table style=\\"height: 553px; width: 1174px;\\" cellpadding=\\"0\\">\\r\\n<tbody>\\r\\n<tr style=\\"height: 67px;\\">\\r\\n<td style=\\"width: 402px; height: 67px;\\">\\u00a0\\r\\n<h2 style=\\"text-align: center;\\">Administration<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 360px; text-align: right; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Web<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 389px; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Combin\\u00e9<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 308px;\\">\\r\\n<td style=\\"width: 402px; height: 308px;\\">\\u00a0<br \\/>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oweb.jpg\\" alt=\\"\\" width=\\"340\\" height=\\"340\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 360px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oadmin.jpg\\" alt=\\"\\" width=\\"528\\" height=\\"232\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 389px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/ocomb.jpg\\" alt=\\"\\" width=\\"341\\" height=\\"340\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 32px;\\">\\r\\n<td style=\\"width: 402px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Cr\\u00e9ation de site Web dynamiques<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Site responsive<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Cr\\u00e9ation de pages pour r\\u00e9seaux sociaux<br \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0 - Hotline<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 360px; text-align: left; height: 32px;\\">\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement des mails<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - Prise d''appels t\\u00e9l\\u00e9phoniques<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - Prise de rendez-vous<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Gestion de vos agendas<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - \\u00c9mission de mailings<br \\/>\\u00a0 \\u00a0\\u00a0 - Classement\\/archivage de donn\\u00e9es\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 389px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0\\u00a0 \\u00a0\\u00a0 - Cr\\u00e9ation\\/refonte de site Web<br \\/>\\u00a0\\u00a0\\u00a0 \\u00a0 - Traitement des flux entrants (appels\\/mails)<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement de vos commandes sur Back Office<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Analyse transparente de vos activit\\u00e9s avec conseils<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center>","fulltext":"","state":1,"catid":"10","created":"2016-09-08 13:07:02","created_by":"496","created_by_alias":"","modified":"2016-09-15 13:26:29","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-15 13:25:32","publish_up":"2016-09-08 13:07:02","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":30,"ordering":"7","metakey":"","metadesc":"","access":"1","hits":"141","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(140, 4, 1, '', '2016-09-15 13:27:32', 496, 4982, 'c16a0eed4176106f3811f4f6151f5f7d905b8184', '{"id":"4","asset_id":"65","title":"Nos offres et tarifs","alias":"nos-offres-et-tarifs","introtext":"<table style=\\"height: 553px; width: 1174px;\\" cellpadding=\\"0\\">\\r\\n<tbody>\\r\\n<tr style=\\"height: 67px;\\">\\r\\n<td style=\\"width: 402px; height: 67px;\\">\\u00a0\\r\\n<h2 style=\\"text-align: center;\\">Administration<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 360px; text-align: right; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Web<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 389px; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Combin\\u00e9<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 308px;\\">\\r\\n<td style=\\"width: 402px; height: 308px;\\">\\u00a0<br \\/>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oweb.jpg\\" alt=\\"\\" width=\\"277\\" height=\\"277\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 360px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oadmin.jpg\\" alt=\\"\\" width=\\"528\\" height=\\"232\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 389px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/ocomb.jpg\\" alt=\\"\\" width=\\"300\\" height=\\"299\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 32px;\\">\\r\\n<td style=\\"width: 402px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Cr\\u00e9ation de site Web dynamiques<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Site responsive<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Cr\\u00e9ation de pages pour r\\u00e9seaux sociaux<br \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0 - Hotline<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 360px; text-align: left; height: 32px;\\">\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement des mails<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - Prise d''appels t\\u00e9l\\u00e9phoniques<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - Prise de rendez-vous<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Gestion de vos agendas<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - \\u00c9mission de mailings<br \\/>\\u00a0 \\u00a0\\u00a0 - Classement\\/archivage de donn\\u00e9es\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 389px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0\\u00a0 \\u00a0\\u00a0 - Cr\\u00e9ation\\/refonte de site Web<br \\/>\\u00a0\\u00a0\\u00a0 \\u00a0 - Traitement des flux entrants (appels\\/mails)<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement de vos commandes sur Back Office<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Analyse transparente de vos activit\\u00e9s avec conseils<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center>","fulltext":"","state":1,"catid":"10","created":"2016-09-08 13:07:02","created_by":"496","created_by_alias":"","modified":"2016-09-15 13:27:32","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-15 13:26:29","publish_up":"2016-09-08 13:07:02","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":31,"ordering":"7","metakey":"","metadesc":"","access":"1","hits":"142","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(141, 4, 1, '', '2016-09-15 13:28:36', 496, 4982, 'ac6f36eeb30e04241d2a28ed4118a2f596e4d274', '{"id":"4","asset_id":"65","title":"Nos offres et tarifs","alias":"nos-offres-et-tarifs","introtext":"<table style=\\"height: 553px; width: 1174px;\\" cellpadding=\\"0\\">\\r\\n<tbody>\\r\\n<tr style=\\"height: 67px;\\">\\r\\n<td style=\\"width: 402px; height: 67px;\\">\\u00a0\\r\\n<h2 style=\\"text-align: center;\\">Administration<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 360px; text-align: right; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Web<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 389px; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Combin\\u00e9<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 308px;\\">\\r\\n<td style=\\"width: 402px; height: 308px;\\">\\u00a0<br \\/>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oweb.jpg\\" alt=\\"\\" width=\\"301\\" height=\\"301\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 360px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oadmin.jpg\\" alt=\\"\\" width=\\"528\\" height=\\"232\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 389px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/ocomb.jpg\\" alt=\\"\\" width=\\"318\\" height=\\"317\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 32px;\\">\\r\\n<td style=\\"width: 402px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Cr\\u00e9ation de site Web dynamiques<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Site responsive<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Cr\\u00e9ation de pages pour r\\u00e9seaux sociaux<br \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0 - Hotline<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 360px; text-align: left; height: 32px;\\">\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement des mails<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - Prise d''appels t\\u00e9l\\u00e9phoniques<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - Prise de rendez-vous<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Gestion de vos agendas<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - \\u00c9mission de mailings<br \\/>\\u00a0 \\u00a0\\u00a0 - Classement\\/archivage de donn\\u00e9es\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 389px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0\\u00a0 \\u00a0\\u00a0 - Cr\\u00e9ation\\/refonte de site Web<br \\/>\\u00a0\\u00a0\\u00a0 \\u00a0 - Traitement des flux entrants (appels\\/mails)<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement de vos commandes sur Back Office<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Analyse transparente de vos activit\\u00e9s avec conseils<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center>","fulltext":"","state":1,"catid":"10","created":"2016-09-08 13:07:02","created_by":"496","created_by_alias":"","modified":"2016-09-15 13:28:36","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-15 13:27:32","publish_up":"2016-09-08 13:07:02","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":32,"ordering":"7","metakey":"","metadesc":"","access":"1","hits":"143","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(142, 4, 1, '', '2016-09-15 13:47:51', 496, 4970, 'd3467c43054b27f18374821ad7f4cb0f3f6c0661', '{"id":"4","asset_id":"65","title":"Nos offres et tarifs","alias":"nos-offres-et-tarifs","introtext":"<table style=\\"height: 553px; width: 1174px;\\" cellpadding=\\"0\\">\\r\\n<tbody>\\r\\n<tr style=\\"height: 67px;\\">\\r\\n<td style=\\"width: 402px; height: 67px;\\">\\u00a0\\r\\n<h2 style=\\"text-align: center;\\">Administration<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 360px; text-align: right; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Web<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 389px; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Combin\\u00e9<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 308px;\\">\\r\\n<td style=\\"width: 402px; height: 308px;\\">\\u00a0<br \\/>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oweb.jpg\\" alt=\\"\\" width=\\"301\\" height=\\"301\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 360px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oadmin.jpg\\" alt=\\"\\" width=\\"528\\" height=\\"232\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 389px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/ocomb.jpg\\" alt=\\"\\" width=\\"318\\" height=\\"317\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 32px;\\">\\r\\n<td style=\\"width: 402px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Cr\\u00e9ation de site Web dynamiques<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Site responsive<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Cr\\u00e9ation de pages pour r\\u00e9seaux sociaux<br \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0 - Hotline<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 360px; text-align: left; height: 32px;\\">\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement des mails<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - Prise d''appels t\\u00e9l\\u00e9phoniques<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - Prise de rendez-vous<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - Gestion de vos agendas<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - \\u00c9mission de mailings<br \\/>\\u00a0 \\u00a0\\u00a0 - Classement\\/archivage de donn\\u00e9es\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 389px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0\\u00a0 \\u00a0\\u00a0 - Cr\\u00e9ation\\/refonte de site Web<br \\/>\\u00a0\\u00a0\\u00a0 \\u00a0 - Traitement des flux entrants (appels\\/mails)<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement de vos commandes sur Back Office<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Analyse transparente de vos activit\\u00e9s avec conseils<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center>","fulltext":"","state":1,"catid":"10","created":"2016-09-08 13:07:02","created_by":"496","created_by_alias":"","modified":"2016-09-15 13:47:51","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-15 13:28:36","publish_up":"2016-09-08 13:07:02","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":33,"ordering":"7","metakey":"","metadesc":"","access":"1","hits":"144","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(143, 10, 1, '', '2016-09-16 06:51:15', 496, 2574, '6e4c62101a589b087522d1b339a8a476a4d64432', '{"id":"10","asset_id":"80","title":"Contact","alias":"contact","introtext":"<div id=\\"contener\\"><!--?php include(''include\\/menu.php''); ?-->\\r\\n<div class=\\"contenu\\">\\r\\n<h1 style=\\"text-align: center;\\">Pour nous contacter :<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par t\\u00e9l\\u00e9phone :<\\/h1>\\r\\n<center><a href=\\"tel:+33659864238\\"><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/tel.png\\" width=\\"66\\" height=\\"66\\" \\/><\\/a><\\/center><center><a href=\\"tel:+33186953042\\">01.86.95.30.42<\\/a><\\/center><center>\\r\\n<ul>OU<\\/ul>\\r\\n<\\/center><center><a href=\\"tel:+33659864238\\">06.59.86.42.38<\\/a><\\/center>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par e-mail :<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\">Remplissez le formulaire \\u00e0 gauche de la page, ou envoyez votre message \\u00e0 : contact@escsr.com<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"16","created":"2016-09-12 08:01:22","created_by":"496","created_by_alias":"","modified":"2016-09-16 06:51:15","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-16 06:50:31","publish_up":"2016-09-12 08:01:22","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"16","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(144, 10, 1, '', '2016-09-16 07:25:31', 496, 2639, 'cf0184bb8410c3a702ecad1cc10eb8069c3cb8e1', '{"id":"10","asset_id":"80","title":"Contact","alias":"contact","introtext":"<div id=\\"contener\\"><!--?php include(''include\\/menu.php''); ?-->\\r\\n<div class=\\"contenu\\">\\r\\n<h1 style=\\"text-align: center;\\">Pour nous contacter :<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par t\\u00e9l\\u00e9phone :<\\/h1>\\r\\n<center><a href=\\"tel:+33659864238\\"><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/tel.png\\" width=\\"66\\" height=\\"66\\" \\/><\\/a><\\/center><center><a href=\\"tel:+33186953042\\">01.86.95.30.42<\\/a><\\/center><center>\\r\\n<ul>OU<\\/ul>\\r\\n<\\/center><center><a href=\\"tel:+33659864238\\">06.59.86.42.38<\\/a><\\/center>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par e-mail :<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\">Remplissez le formulaire, ou envoyez votre message \\u00e0 : <a href=\\"mailto:contact@escsr.com\\">contact@escsr.com<\\/a><\\/p>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"16","created":"2016-09-12 08:01:22","created_by":"496","created_by_alias":"","modified":"2016-09-16 07:25:31","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-16 07:09:11","publish_up":"2016-09-12 08:01:22","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"18","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(145, 10, 1, '', '2016-09-16 08:53:55', 496, 2659, '80d0370532bb3ba5da9bc86b3e27b11b476d738e', '{"id":"10","asset_id":"80","title":"Contact","alias":"contact","introtext":"<div id=\\"contener\\"><!--?php include(''include\\/menu.php''); ?-->\\r\\n<div class=\\"contenu\\">\\r\\n<h1 style=\\"text-align: center;\\">Pour nous contacter :<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par t\\u00e9l\\u00e9phone :<\\/h1>\\r\\n<center><a href=\\"tel:+33659864238\\"><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/tel.png\\" width=\\"66\\" height=\\"66\\" \\/><\\/a><\\/center><center><a href=\\"tel:+33186953042\\">01.86.95.30.42<\\/a><\\/center><center>\\r\\n<ul>OU<\\/ul>\\r\\n<\\/center><center><a href=\\"tel:+33659864238\\">06.59.86.42.38<\\/a><\\/center>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\">Par e-mail :<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\">Remplissez le formulaire \\u00e7 votre gauche, ou envoyez votre message \\u00e0 : <a href=\\"mailto:contact@escsr.com\\">contact@escsr.com<\\/a><\\/p>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"16","created":"2016-09-12 08:01:22","created_by":"496","created_by_alias":"","modified":"2016-09-16 08:53:55","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-16 08:53:38","publish_up":"2016-09-12 08:01:22","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"33","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(152, 4, 1, '', '2016-09-28 07:05:18', 496, 4968, '1b736adabd76bad1bf34ddff2115db1df90d1797', '{"id":4,"asset_id":"65","title":"Nos offres et tarifs","alias":"nos-offres-et-tarifs","introtext":"<table style=\\"height: 553px; width: 1024px;\\" cellpadding=\\"0\\">\\r\\n<tbody>\\r\\n<tr style=\\"height: 67px;\\">\\r\\n<td style=\\"width: 338px; height: 67px;\\">\\u00a0\\r\\n<h2 style=\\"text-align: center;\\">Administration<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 347px; text-align: right; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Web<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 316px; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Combin\\u00e9<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 308px;\\">\\r\\n<td style=\\"width: 338px; height: 308px;\\">\\u00a0<br \\/>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oweb.jpg\\" alt=\\"\\" width=\\"301\\" height=\\"301\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 347px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oadmin.jpg\\" alt=\\"\\" width=\\"528\\" height=\\"232\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 316px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/ocomb.jpg\\" alt=\\"\\" width=\\"318\\" height=\\"317\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 32px;\\">\\r\\n<td style=\\"width: 338px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Cr\\u00e9ation de site Web dynamiques<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Site responsive<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Cr\\u00e9ation de pages pour r\\u00e9seaux sociaux<br \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0 - Hotline<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 347px; text-align: left; height: 32px;\\">\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement des mails<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - Prise d''appels t\\u00e9l\\u00e9phoniques<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - Prise de rendez-vous<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - Gestion de vos agendas<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - \\u00c9mission de mailings<br \\/>\\u00a0 \\u00a0\\u00a0 - Classement\\/archivage de donn\\u00e9es\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 316px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0\\u00a0 \\u00a0\\u00a0 - Cr\\u00e9ation\\/refonte de site Web<br \\/>\\u00a0\\u00a0\\u00a0 \\u00a0 - Traitement des flux entrants (appels\\/mails)<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement de vos commandes sur Back Office<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Analyse transparente de vos activit\\u00e9s avec conseils<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center>","fulltext":"","state":1,"catid":"10","created":"2016-09-08 13:07:02","created_by":"496","created_by_alias":"","modified":"2016-09-28 07:05:18","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-28 07:04:51","publish_up":"2016-09-08 13:07:02","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":35,"ordering":"7","metakey":"","metadesc":"","access":"1","hits":"169","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(153, 4, 1, '', '2016-09-28 07:06:03', 496, 4997, '062c98369c9dacf4811979156c6e496f0a6ded52', '{"id":4,"asset_id":"65","title":"Nos offres et tarifs","alias":"nos-offres-et-tarifs","introtext":"<table style=\\"height: 519px; width: 925px;\\" cellpadding=\\"0\\">\\r\\n<tbody>\\r\\n<tr style=\\"height: 67px;\\">\\r\\n<td style=\\"width: 304.733px; height: 67px;\\">\\u00a0\\r\\n<h2 style=\\"text-align: center;\\">Administration<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 317.5px; text-align: right; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Web<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 285.833px; height: 67px;\\">\\r\\n<h2 style=\\"text-align: center;\\">Combin\\u00e9<\\/h2>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 308px;\\">\\r\\n<td style=\\"width: 304.733px; height: 308px;\\">\\u00a0<br \\/>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oweb.jpg\\" alt=\\"\\" width=\\"301\\" height=\\"301\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 317.5px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/oadmin.jpg\\" alt=\\"\\" width=\\"528\\" height=\\"232\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 285.833px; height: 308px;\\">\\r\\n<p style=\\"text-align: center;\\"><img src=\\"images\\/ocomb.jpg\\" alt=\\"\\" width=\\"318\\" height=\\"317\\" \\/><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\"height: 32px;\\">\\r\\n<td style=\\"width: 304.733px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Cr\\u00e9ation de site Web dynamiques<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Site responsive<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Cr\\u00e9ation de pages pour r\\u00e9seaux sociaux<br \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0 - Hotline<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<\\/td>\\r\\n<td style=\\"width: 317.5px; text-align: left; height: 32px;\\">\\r\\n<p>\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement des mails<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - Prise d''appels t\\u00e9l\\u00e9phoniques<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - Prise de rendez-vous<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - Gestion de vos agendas<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0 - \\u00c9mission de mailings<br \\/>\\u00a0 \\u00a0\\u00a0 - Classement\\/archivage de donn\\u00e9es\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<td style=\\"width: 285.833px; height: 32px;\\">\\r\\n<p style=\\"text-align: left;\\">\\u00a0\\u00a0 \\u00a0\\u00a0 - Cr\\u00e9ation\\/refonte de site Web<br \\/>\\u00a0\\u00a0\\u00a0 \\u00a0 - Traitement des flux entrants (appels\\/mails)<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Traitement de vos commandes sur Back Office<br \\/>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 - Analyse transparente de vos activit\\u00e9s avec conseils<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center><center><\\/center><center><\\/center><center><\\/center>\\r\\n<h2 style=\\"text-align: center;\\">\\u00a0<\\/h2>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center><center><\\/center>","fulltext":"","state":1,"catid":"10","created":"2016-09-08 13:07:02","created_by":"496","created_by_alias":"","modified":"2016-09-28 07:06:03","modified_by":"496","checked_out":"496","checked_out_time":"2016-09-28 07:05:18","publish_up":"2016-09-08 13:07:02","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":36,"ordering":"7","metakey":"","metadesc":"","access":"1","hits":"171","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `ki4ne_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(154, 2, 1, '', '2016-10-11 09:49:10', 496, 3330, 'c88aa36316c0439dfa2ddeeec3a3e8c19e779254', '{"id":2,"asset_id":"63","title":"Accueil","alias":"accueil","introtext":"<h1 style=\\"text-align: center;\\"><strong>Bienvenue sur le site E-Service Client SR<\\/strong><\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><strong><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/title.jpg\\" alt=\\"\\" width=\\"800\\" height=\\"268\\" \\/><\\/strong><\\/p>\\r\\n<h1>\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Externalit\\u00e9 : <\\/strong><\\/h1>\\r\\n<h3>- Pas de charge sociales<br \\/>- Pas de contrainte de cong\\u00e9s pay\\u00e9s<br \\/>- Tout est transparent<br \\/>- Toutes les t\\u00e2ches bureautiques et\\/ou administratives, chronophages, volumineuses dans vos charges administratives mais INCONTOURNABLES<\\/h3>\\r\\n<h1>\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Libert\\u00e9 :<\\/strong><\\/h1>\\r\\n<h3>A vous de nous d\\u00e9terminer la charge de travail, le temps, et cela sans engagement !<\\/h3>\\r\\n<h1>\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Flexibilit\\u00e9 :<\\/strong><\\/h1>\\r\\n<h3>Plages horaires modulables en fonction de vos besoins<\\/h3>\\r\\n<h1>\\u00a0<\\/h1>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Objectivit\\u00e9 :<\\/strong><\\/h1>\\r\\n<h3>Nos services vous permettent d''optimiser votre temps de travail et donc de vous concentrer sur votre c\\u0153ur de m\\u00e9tier.<\\/h3>\\r\\n<center><\\/center>\\r\\n<h3 style=\\"text-align: center;\\">Contactez nous par t\\u00e9l\\u00e9phone en cliquant ci-dessous :<\\/h3>\\r\\n<p style=\\"text-align: center;\\"><a href=\\"tel:+33659864238\\"><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/phone.png\\" width=\\"137\\" height=\\"137\\" \\/>06.59.86.42.38<\\/a><\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-09-08 13:02:36","created_by":"496","created_by_alias":"","modified":"2016-10-11 09:49:10","modified_by":"496","checked_out":"496","checked_out_time":"2016-10-11 09:27:58","publish_up":"2016-09-08 13:02:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":33,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"347","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(155, 2, 1, '', '2016-10-11 09:52:29', 496, 3486, '6107abee109019046845c195de33dce7a604b1e1', '{"id":2,"asset_id":"63","title":"Accueil","alias":"accueil","introtext":"<h1 style=\\"text-align: center;\\"><strong>Bienvenue sur le site E-Service Client SR<\\/strong><\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><strong><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/title.jpg\\" alt=\\"\\" width=\\"800\\" height=\\"268\\" \\/><\\/strong><\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Externalit\\u00e9 :<\\/strong><\\/h1>\\r\\n<h5 style=\\"text-align: center;\\">- Pas de charge sociales<br \\/>- Pas de contrainte de cong\\u00e9s pay\\u00e9s<br \\/>- Tout est transparent<br \\/>- Toutes les t\\u00e2ches bureautiques et\\/ou administratives, chronophages, volumineuses dans vos charges administratives mais INCONTOURNABLES<\\/h5>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Libert\\u00e9 :<\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">A vous de nous d\\u00e9terminer la charge de travail, le temps, et cela sans engagement !<\\/p>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Flexibilit\\u00e9 :<\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">Plages horaires modulables en fonction de vos besoins<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Objectivit\\u00e9 : <\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">Nos services vous permettent d''optimiser votre temps de travail et donc de vous concentrer sur votre c\\u0153ur de m\\u00e9tier.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h3>\\u00a0<\\/h3>\\r\\n<center><\\/center>\\r\\n<h3 style=\\"text-align: center;\\">Contactez nous par t\\u00e9l\\u00e9phone en cliquant ci-dessous :<\\/h3>\\r\\n<p style=\\"text-align: center;\\"><a href=\\"tel:+33659864238\\"><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/phone.png\\" width=\\"137\\" height=\\"137\\" \\/>06.59.86.42.38<\\/a><\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-09-08 13:02:36","created_by":"496","created_by_alias":"","modified":"2016-10-11 09:52:29","modified_by":"496","checked_out":"496","checked_out_time":"2016-10-11 09:49:10","publish_up":"2016-09-08 13:02:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":34,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"348","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(156, 2, 1, '', '2016-10-11 09:54:18', 496, 3451, 'ce302a508426e2bd75beb840280c72a26c5765be', '{"id":2,"asset_id":"63","title":"Accueil","alias":"accueil","introtext":"<h1 style=\\"text-align: center;\\"><strong>Bienvenue sur le site E-Service Client SR<\\/strong><\\/h1>\\r\\n<p><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/oadmin.jpg\\" alt=\\"\\" width=\\"662\\" height=\\"290\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Externalit\\u00e9 :<\\/strong><\\/h1>\\r\\n<h5 style=\\"text-align: center;\\">- Pas de charge sociales<br \\/>- Pas de contrainte de cong\\u00e9s pay\\u00e9s<br \\/>- Tout est transparent<br \\/>- Toutes les t\\u00e2ches bureautiques et\\/ou administratives, chronophages, volumineuses dans vos charges administratives mais INCONTOURNABLES<\\/h5>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Libert\\u00e9 :<\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">A vous de nous d\\u00e9terminer la charge de travail, le temps, et cela sans engagement !<\\/p>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Flexibilit\\u00e9 :<\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">Plages horaires modulables en fonction de vos besoins<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Objectivit\\u00e9 : <\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">Nos services vous permettent d''optimiser votre temps de travail et donc de vous concentrer sur votre c\\u0153ur de m\\u00e9tier.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h3>\\u00a0<\\/h3>\\r\\n<center><\\/center>\\r\\n<h3 style=\\"text-align: center;\\">Contactez nous par t\\u00e9l\\u00e9phone en cliquant ci-dessous :<\\/h3>\\r\\n<p style=\\"text-align: center;\\"><a href=\\"tel:+33659864238\\"><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/phone.png\\" width=\\"137\\" height=\\"137\\" \\/>06.59.86.42.38<\\/a><\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-09-08 13:02:36","created_by":"496","created_by_alias":"","modified":"2016-10-11 09:54:18","modified_by":"496","checked_out":"496","checked_out_time":"2016-10-11 09:52:29","publish_up":"2016-09-08 13:02:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":35,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"350","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(157, 2, 1, '', '2016-10-11 10:05:25', 496, 3565, 'a14e145561c9444924fdf2d7d9bdfb07993f86d1', '{"id":2,"asset_id":"63","title":"Accueil","alias":"accueil","introtext":"<h1 style=\\"text-align: center;\\"><strong>Bienvenue sur le site E-Service Client SR<\\/strong><\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/oadmin.jpg\\" alt=\\"\\" width=\\"662\\" height=\\"290\\" \\/><\\/p>\\r\\n<p><strong><img src=\\"images\\/accueilimg.png\\" alt=\\"\\" \\/><\\/strong><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Externalit\\u00e9 :<\\/strong><\\/h1>\\r\\n<h5 style=\\"text-align: center;\\">- Pas de charge sociales<br \\/>- Pas de contrainte de cong\\u00e9s pay\\u00e9s<br \\/>- Tout est transparent<br \\/>- Toutes les t\\u00e2ches bureautiques et\\/ou administratives, chronophages, volumineuses dans vos charges administratives mais INCONTOURNABLES<\\/h5>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Libert\\u00e9 :<\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">A vous de nous d\\u00e9terminer la charge de travail, le temps, et cela sans engagement !<\\/p>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Flexibilit\\u00e9 :<\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">Plages horaires modulables en fonction de vos besoins<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Objectivit\\u00e9 : <\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">Nos services vous permettent d''optimiser votre temps de travail et donc de vous concentrer sur votre c\\u0153ur de m\\u00e9tier.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h3>\\u00a0<\\/h3>\\r\\n<center><\\/center>\\r\\n<h3 style=\\"text-align: center;\\">Contactez nous par t\\u00e9l\\u00e9phone en cliquant ci-dessous :<\\/h3>\\r\\n<p style=\\"text-align: center;\\"><a href=\\"tel:+33659864238\\"><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/phone.png\\" width=\\"137\\" height=\\"137\\" \\/>06.59.86.42.38<\\/a><\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-09-08 13:02:36","created_by":"496","created_by_alias":"","modified":"2016-10-11 10:05:25","modified_by":"496","checked_out":"496","checked_out_time":"2016-10-11 09:54:18","publish_up":"2016-09-08 13:02:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":36,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"352","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(158, 2, 1, '', '2016-10-11 10:43:14', 496, 3601, '842c258fa7415110c153e9beb0cd7b60053152db', '{"id":2,"asset_id":"63","title":"Accueil","alias":"accueil","introtext":"<h1 style=\\"text-align: center;\\"><strong>Bienvenue sur le site E-Service Client SR<\\/strong><\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/oadmin.jpg\\" alt=\\"\\" width=\\"662\\" height=\\"290\\" \\/><\\/p>\\r\\n<p><strong><img src=\\"images\\/acc1.png\\" alt=\\"\\" \\/><img src=\\"images\\/acc2.png\\" alt=\\"\\" \\/><\\/strong><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Externalit\\u00e9 :<\\/strong><\\/h1>\\r\\n<h5 style=\\"text-align: center;\\">- Pas de charge sociales<br \\/>- Pas de contrainte de cong\\u00e9s pay\\u00e9s<br \\/>- Tout est transparent<br \\/>- Toutes les t\\u00e2ches bureautiques et\\/ou administratives, chronophages, volumineuses dans vos charges administratives mais INCONTOURNABLES<\\/h5>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Libert\\u00e9 :<\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">A vous de nous d\\u00e9terminer la charge de travail, le temps, et cela sans engagement !<\\/p>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Flexibilit\\u00e9 :<\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">Plages horaires modulables en fonction de vos besoins<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Objectivit\\u00e9 : <\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">Nos services vous permettent d''optimiser votre temps de travail et donc de vous concentrer sur votre c\\u0153ur de m\\u00e9tier.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h3>\\u00a0<\\/h3>\\r\\n<center><\\/center>\\r\\n<h3 style=\\"text-align: center;\\">Contactez nous par t\\u00e9l\\u00e9phone en cliquant ci-dessous :<\\/h3>\\r\\n<p style=\\"text-align: center;\\"><a href=\\"tel:+33659864238\\"><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/phone.png\\" width=\\"137\\" height=\\"137\\" \\/>06.59.86.42.38<\\/a><\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-09-08 13:02:36","created_by":"496","created_by_alias":"","modified":"2016-10-11 10:43:14","modified_by":"496","checked_out":"496","checked_out_time":"2016-10-11 10:05:25","publish_up":"2016-09-08 13:02:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":37,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"356","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(159, 2, 1, '', '2016-10-11 10:43:48', 496, 3659, '74a39b40be7a880738e000b71294323b0c41b96d', '{"id":2,"asset_id":"63","title":"Accueil","alias":"accueil","introtext":"<h1 style=\\"text-align: center;\\"><strong>Bienvenue sur le site E-Service Client SR<\\/strong><\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/oadmin.jpg\\" alt=\\"\\" width=\\"662\\" height=\\"290\\" \\/><\\/p>\\r\\n<p><strong><img src=\\"images\\/acc1.png\\" alt=\\"\\" width=\\"582\\" height=\\"244\\" \\/><img src=\\"images\\/acc2.png\\" alt=\\"\\" width=\\"541\\" height=\\"224\\" \\/><\\/strong><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Externalit\\u00e9 :<\\/strong><\\/h1>\\r\\n<h5 style=\\"text-align: center;\\">- Pas de charge sociales<br \\/>- Pas de contrainte de cong\\u00e9s pay\\u00e9s<br \\/>- Tout est transparent<br \\/>- Toutes les t\\u00e2ches bureautiques et\\/ou administratives, chronophages, volumineuses dans vos charges administratives mais INCONTOURNABLES<\\/h5>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Libert\\u00e9 :<\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">A vous de nous d\\u00e9terminer la charge de travail, le temps, et cela sans engagement !<\\/p>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Flexibilit\\u00e9 :<\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">Plages horaires modulables en fonction de vos besoins<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Objectivit\\u00e9 : <\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">Nos services vous permettent d''optimiser votre temps de travail et donc de vous concentrer sur votre c\\u0153ur de m\\u00e9tier.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h3>\\u00a0<\\/h3>\\r\\n<center><\\/center>\\r\\n<h3 style=\\"text-align: center;\\">Contactez nous par t\\u00e9l\\u00e9phone en cliquant ci-dessous :<\\/h3>\\r\\n<p style=\\"text-align: center;\\"><a href=\\"tel:+33659864238\\"><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/phone.png\\" width=\\"137\\" height=\\"137\\" \\/>06.59.86.42.38<\\/a><\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-09-08 13:02:36","created_by":"496","created_by_alias":"","modified":"2016-10-11 10:43:48","modified_by":"496","checked_out":"496","checked_out_time":"2016-10-11 10:43:14","publish_up":"2016-09-08 13:02:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":38,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"358","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(160, 2, 1, '', '2016-10-11 10:44:14', 496, 3659, '724ca57b1653518df752e00efa445d18d570b0e5', '{"id":2,"asset_id":"63","title":"Accueil","alias":"accueil","introtext":"<h1 style=\\"text-align: center;\\"><strong>Bienvenue sur le site E-Service Client SR<\\/strong><\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/oadmin.jpg\\" alt=\\"\\" width=\\"662\\" height=\\"290\\" \\/><\\/p>\\r\\n<p><strong><img src=\\"images\\/acc1.png\\" alt=\\"\\" width=\\"553\\" height=\\"232\\" \\/><img src=\\"images\\/acc2.png\\" alt=\\"\\" width=\\"553\\" height=\\"229\\" \\/><\\/strong><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Externalit\\u00e9 :<\\/strong><\\/h1>\\r\\n<h5 style=\\"text-align: center;\\">- Pas de charge sociales<br \\/>- Pas de contrainte de cong\\u00e9s pay\\u00e9s<br \\/>- Tout est transparent<br \\/>- Toutes les t\\u00e2ches bureautiques et\\/ou administratives, chronophages, volumineuses dans vos charges administratives mais INCONTOURNABLES<\\/h5>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Libert\\u00e9 :<\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">A vous de nous d\\u00e9terminer la charge de travail, le temps, et cela sans engagement !<\\/p>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Flexibilit\\u00e9 :<\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">Plages horaires modulables en fonction de vos besoins<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Objectivit\\u00e9 : <\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">Nos services vous permettent d''optimiser votre temps de travail et donc de vous concentrer sur votre c\\u0153ur de m\\u00e9tier.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h3>\\u00a0<\\/h3>\\r\\n<center><\\/center>\\r\\n<h3 style=\\"text-align: center;\\">Contactez nous par t\\u00e9l\\u00e9phone en cliquant ci-dessous :<\\/h3>\\r\\n<p style=\\"text-align: center;\\"><a href=\\"tel:+33659864238\\"><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/phone.png\\" width=\\"137\\" height=\\"137\\" \\/>06.59.86.42.38<\\/a><\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-09-08 13:02:36","created_by":"496","created_by_alias":"","modified":"2016-10-11 10:44:14","modified_by":"496","checked_out":"496","checked_out_time":"2016-10-11 10:43:48","publish_up":"2016-09-08 13:02:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":39,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"361","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(161, 2, 1, '', '2016-10-11 10:45:24', 496, 3887, '496d912e3c9438d732bceed7b75efc58534b0e7f', '{"id":2,"asset_id":"63","title":"Accueil","alias":"accueil","introtext":"<h1 style=\\"text-align: center;\\"><strong>Bienvenue sur le site E-Service Client SR<\\/strong><\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/oadmin.jpg\\" alt=\\"\\" width=\\"662\\" height=\\"290\\" \\/><\\/p>\\r\\n<p><strong><img style=\\"float: left;\\" src=\\"images\\/acc1.png\\" alt=\\"\\" width=\\"477\\" height=\\"200\\" \\/><img style=\\"float: left;\\" src=\\"images\\/acc2.png\\" alt=\\"\\" width=\\"466\\" height=\\"193\\" \\/><\\/strong><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h5 style=\\"text-align: center;\\">\\u00a0<\\/h5>\\r\\n<h5 style=\\"text-align: center;\\">\\u00a0<\\/h5>\\r\\n<h5 style=\\"text-align: center;\\">\\u00a0<\\/h5>\\r\\n<h5 style=\\"text-align: center;\\">\\u00a0<\\/h5>\\r\\n<h5 style=\\"text-align: center;\\"><strong>Externalit\\u00e9 :<\\/strong><\\/h5>\\r\\n<h5 style=\\"text-align: center;\\">- Pas de charge sociales<br \\/>- Pas de contrainte de cong\\u00e9s pay\\u00e9s<br \\/>- Tout est transparent<br \\/>- Toutes les t\\u00e2ches bureautiques et\\/ou administratives, chronophages, volumineuses dans vos charges administratives mais INCONTOURNABLES<\\/h5>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Libert\\u00e9 :<\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">A vous de nous d\\u00e9terminer la charge de travail, le temps, et cela sans engagement !<\\/p>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Flexibilit\\u00e9 :<\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">Plages horaires modulables en fonction de vos besoins<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Objectivit\\u00e9 : <\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">Nos services vous permettent d''optimiser votre temps de travail et donc de vous concentrer sur votre c\\u0153ur de m\\u00e9tier.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h3>\\u00a0<\\/h3>\\r\\n<center><\\/center>\\r\\n<h3 style=\\"text-align: center;\\">Contactez nous par t\\u00e9l\\u00e9phone en cliquant ci-dessous :<\\/h3>\\r\\n<p style=\\"text-align: center;\\"><a href=\\"tel:+33659864238\\"><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/phone.png\\" width=\\"137\\" height=\\"137\\" \\/>06.59.86.42.38<\\/a><\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-09-08 13:02:36","created_by":"496","created_by_alias":"","modified":"2016-10-11 10:45:24","modified_by":"496","checked_out":"496","checked_out_time":"2016-10-11 10:44:14","publish_up":"2016-09-08 13:02:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":40,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"362","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(162, 2, 1, '', '2016-10-11 10:45:50', 496, 3887, '03fda1bd666c939fa4b6b0fb7857c40ef3cab811', '{"id":2,"asset_id":"63","title":"Accueil","alias":"accueil","introtext":"<h1 style=\\"text-align: center;\\"><strong>Bienvenue sur le site E-Service Client SR<\\/strong><\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/oadmin.jpg\\" alt=\\"\\" width=\\"662\\" height=\\"290\\" \\/><\\/p>\\r\\n<p><strong><img style=\\"float: left;\\" src=\\"images\\/acc1.png\\" alt=\\"\\" width=\\"501\\" height=\\"210\\" \\/><img style=\\"float: left;\\" src=\\"images\\/acc2.png\\" alt=\\"\\" width=\\"524\\" height=\\"217\\" \\/><\\/strong><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h5 style=\\"text-align: center;\\">\\u00a0<\\/h5>\\r\\n<h5 style=\\"text-align: center;\\">\\u00a0<\\/h5>\\r\\n<h5 style=\\"text-align: center;\\">\\u00a0<\\/h5>\\r\\n<h5 style=\\"text-align: center;\\">\\u00a0<\\/h5>\\r\\n<h5 style=\\"text-align: center;\\"><strong>Externalit\\u00e9 :<\\/strong><\\/h5>\\r\\n<h5 style=\\"text-align: center;\\">- Pas de charge sociales<br \\/>- Pas de contrainte de cong\\u00e9s pay\\u00e9s<br \\/>- Tout est transparent<br \\/>- Toutes les t\\u00e2ches bureautiques et\\/ou administratives, chronophages, volumineuses dans vos charges administratives mais INCONTOURNABLES<\\/h5>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Libert\\u00e9 :<\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">A vous de nous d\\u00e9terminer la charge de travail, le temps, et cela sans engagement !<\\/p>\\r\\n<p style=\\"text-align: center;\\">\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Flexibilit\\u00e9 :<\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">Plages horaires modulables en fonction de vos besoins<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\"><strong>Objectivit\\u00e9 : <\\/strong><\\/h1>\\r\\n<p style=\\"text-align: center;\\">Nos services vous permettent d''optimiser votre temps de travail et donc de vous concentrer sur votre c\\u0153ur de m\\u00e9tier.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h3>\\u00a0<\\/h3>\\r\\n<center><\\/center>\\r\\n<h3 style=\\"text-align: center;\\">Contactez nous par t\\u00e9l\\u00e9phone en cliquant ci-dessous :<\\/h3>\\r\\n<p style=\\"text-align: center;\\"><a href=\\"tel:+33659864238\\"><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/phone.png\\" width=\\"137\\" height=\\"137\\" \\/>06.59.86.42.38<\\/a><\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-09-08 13:02:36","created_by":"496","created_by_alias":"","modified":"2016-10-11 10:45:50","modified_by":"496","checked_out":"496","checked_out_time":"2016-10-11 10:45:24","publish_up":"2016-09-08 13:02:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":41,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"364","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(163, 2, 1, '', '2016-10-11 12:06:32', 496, 2776, 'a9019e0281750ee829f75a7b4d6eb78ec2e34371', '{"id":2,"asset_id":"63","title":"Accueil","alias":"accueil","introtext":"<h1 style=\\"text-align: center;\\"><strong>Bienvenue sur le site E-Service Clients SR<\\/strong><\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/oadmin.jpg\\" alt=\\"\\" width=\\"662\\" height=\\"290\\" \\/><\\/p>\\r\\n<p><strong><img style=\\"float: left;\\" src=\\"images\\/acc1.png\\" alt=\\"\\" width=\\"501\\" height=\\"210\\" \\/><img style=\\"float: left;\\" src=\\"images\\/acc2.png\\" alt=\\"\\" width=\\"524\\" height=\\"217\\" \\/><\\/strong><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h5 style=\\"text-align: center;\\">\\u00a0<\\/h5>\\r\\n<h5 style=\\"text-align: center;\\">\\u00a0<\\/h5>\\r\\n<h5 style=\\"text-align: center;\\">\\u00a0<\\/h5>\\r\\n<h5 style=\\"text-align: center;\\">\\u00a0<\\/h5>\\r\\n<p>\\u00a0<\\/p>\\r\\n<center><\\/center>\\r\\n<h3 style=\\"text-align: center;\\">Contactez nous par t\\u00e9l\\u00e9phone en cliquant ci-dessous :<\\/h3>\\r\\n<p style=\\"text-align: center;\\"><a href=\\"tel:+33659864238\\"><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/phone.png\\" width=\\"137\\" height=\\"137\\" \\/>06.59.86.42.38<\\/a><\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-09-08 13:02:36","created_by":"496","created_by_alias":"","modified":"2016-10-11 12:06:32","modified_by":"496","checked_out":"496","checked_out_time":"2016-10-11 12:05:45","publish_up":"2016-09-08 13:02:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":43,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"366","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_update_sites`
--

CREATE TABLE IF NOT EXISTS `ki4ne_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `location` text COLLATE utf8_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Update Sites' AUTO_INCREMENT=7 ;

--
-- Contenu de la table `ki4ne_update_sites`
--

INSERT INTO `ki4ne_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1478266588, ''),
(2, 'Joomla! Extension Directory', 'collection', 'https://update.joomla.org/jed/list.xml', 1, 1478266589, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, ''),
(5, 'Tooltip GC Update', 'extension', 'http://update.joomlack.fr/plg_tooltipgc_update.xml', 1, 0, ''),
(6, 'Fabrik31', 'collection', 'http://fabrikar.com/update/fabrik31/package_list.xml', 1, 1478266589, '');

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `ki4ne_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Links extensions to update sites';

--
-- Contenu de la table `ki4ne_update_sites_extensions`
--

INSERT INTO `ki4ne_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 802),
(4, 28),
(5, 605),
(5, 10013),
(6, 10054),
(6, 10055);

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_updates`
--

CREATE TABLE IF NOT EXISTS `ki4ne_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Available Updates' AUTO_INCREMENT=98 ;

--
-- Contenu de la table `ki4ne_updates`
--

INSERT INTO `ki4ne_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.6.4', '', 'https://update.joomla.org/core/sts/extension_sts.xml', '', ''),
(2, 6, 0, 'JSocial: Fabrik User Plugin', '', 'fabrik', 'plugin', 'community', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_jsocial_fabrik.xml', '', ''),
(3, 6, 0, 'Fabrik Search Plugin', '', 'fabrik', 'plugin', 'search', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_fabrik_search.xml', '', ''),
(4, 6, 0, 'Fabrik element: access', '', 'access', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_access.xml', '', ''),
(5, 6, 0, 'Fabrik element: attending', '', 'attending', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_attending.xml', '', ''),
(6, 6, 0, 'Fabrik element: birthday', '', 'birthday', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_birthday.xml', '', ''),
(7, 6, 0, 'Fabrik element: calc', '', 'calc', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_calc.xml', '', ''),
(8, 6, 0, 'Fabrik element: captcha', '', 'captcha', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_captcha.xml', '', ''),
(9, 6, 0, 'Fabrik element: cascadingdropdown', '', 'cascadingdropdown', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_cascadingdropdown.xml', '', ''),
(10, 6, 0, 'Fabrik element: colourpicker', '', 'colourpicker', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_colourpicker.xml', '', ''),
(11, 6, 0, 'Fabrik element: count', '', 'count', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_count.xml', '', ''),
(12, 6, 0, 'Fabrik element: digsig', '', 'digsig', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_digsig.xml', '', ''),
(13, 6, 0, 'Fabrik element: fbcomment', '', 'fbcomment', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_fbcomment.xml', '', ''),
(14, 6, 0, 'Fabrik element: fblike', '', 'fblike', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_fblike.xml', '', ''),
(15, 6, 0, 'Fabrik element: folder', '', 'folder', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_folder.xml', '', ''),
(16, 6, 0, 'Fabrik element: googleometer', '', 'googleometer', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_googleometer.xml', '', ''),
(17, 6, 0, 'Fabrik element: ip', '', 'ip', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_ip.xml', '', ''),
(18, 6, 0, 'Fabrik element: jsperiodical', '', 'jsperiodical', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_jsperiodical.xml', '', ''),
(19, 6, 0, 'Fabrik element: notes', '', 'notes', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_notes.xml', '', ''),
(20, 6, 0, 'Fabrik element: password', '', 'password', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_password.xml', '', ''),
(21, 6, 0, 'Fabrik element: picklist', '', 'picklist', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_picklist.xml', '', ''),
(22, 6, 0, 'Fabrik element: rating', '', 'rating', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_rating.xml', '', ''),
(23, 6, 0, 'Fabrik element: slider', '', 'slider', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_slider.xml', '', ''),
(24, 6, 0, 'Fabrik element: spotify', '', 'spotify', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_spotify.xml', '', ''),
(25, 6, 0, 'Fabrik element: tags', '', 'tags', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_tags.xml', '', ''),
(26, 6, 0, 'Fabrik element: thumbs', '', 'thumbs', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_thumbs.xml', '', ''),
(27, 6, 0, 'Fabrik element: time', '', 'time', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_time.xml', '', ''),
(28, 6, 0, 'Fabrik element: timer', '', 'timer', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_timer.xml', '', ''),
(29, 6, 0, 'Fabrik element: timestamp', '', 'timestamp', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_timestamp.xml', '', ''),
(30, 6, 0, 'Fabrik element: usergroup', '', 'usergroup', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_usergroup.xml', '', ''),
(31, 6, 0, 'Fabrik element: viewlevel', '', 'viewlevel', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_viewlevel.xml', '', ''),
(32, 6, 0, 'Fabrik element: yesno', '', 'yesno', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_yesno.xml', '', ''),
(33, 6, 0, 'Fabrik element: youtube', '', 'youtube', 'plugin', 'fabrik_element', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_element_youtube.xml', '', ''),
(34, 6, 0, 'Fabrik cron: gcalsync', '', 'gcalsync', 'plugin', 'fabrik_cron', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_cron_gcalsync.xml', '', ''),
(35, 6, 0, 'Fabrik cron: geocode', '', 'geocode', 'plugin', 'fabrik_cron', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_cron_geocode.xml', '', ''),
(36, 6, 0, 'Fabrik cron: gmail', '', 'gmail', 'plugin', 'fabrik_cron', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_cron_gmail.xml', '', ''),
(37, 6, 0, 'Fabrik cron: importcsv', '', 'importcsv', 'plugin', 'fabrik_cron', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_cron_importcsv.xml', '', ''),
(38, 6, 0, 'Fabrik cron: notification', '', 'notification', 'plugin', 'fabrik_cron', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_cron_notification.xml', '', ''),
(39, 6, 0, 'Fabrik form: alphauserpoints', '', 'alphauserpoints', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_alphauserpoints.xml', '', ''),
(40, 6, 0, 'Fabrik form: article', '', 'article', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_article.xml', '', ''),
(41, 6, 0, 'Fabrik form: autofill', '', 'autofill', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_autofill.xml', '', ''),
(42, 6, 0, 'Fabrik form: clone', '', 'clone', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_clone.xml', '', ''),
(43, 6, 0, 'Fabrik form: comment', '', 'comment', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_comment.xml', '', ''),
(44, 6, 0, 'Fabrik form: confirmation', '', 'confirmation', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_confirmation.xml', '', ''),
(45, 6, 0, 'Fabrik form: exif', '', 'exif', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_exif.xml', '', ''),
(46, 6, 0, 'Fabrik form: ftp', '', 'ftp', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_ftp.xml', '', ''),
(47, 6, 0, 'Fabrik form: j2store', '', 'j2store', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_j2store.xml', '', ''),
(48, 6, 0, 'Fabrik form: juser', '', 'juser', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_juser.xml', '', ''),
(49, 6, 0, 'Fabrik form: kunena', '', 'kunena', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_kunena.xml', '', ''),
(50, 6, 0, 'Fabrik form: limit', '', 'limit', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_limit.xml', '', ''),
(51, 6, 0, 'Fabrik form: logs', '', 'logs', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_logs.xml', '', ''),
(52, 6, 0, 'Fabrik form: mailchimp', '', 'mailchimp', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_mailchimp.xml', '', ''),
(53, 6, 0, 'Fabrik form: notification', '', 'notification', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_notification.xml', '', ''),
(54, 6, 0, 'Fabrik form: paginate', '', 'paginate', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_paginate.xml', '', ''),
(55, 6, 0, 'Fabrik form: paypal', '', 'paypal', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_paypal.xml', '', ''),
(56, 6, 0, 'Fabrik form: rest', '', 'rest', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_rest.xml', '', ''),
(57, 6, 0, 'Fabrik form: salesforce', '', 'salesforce', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_salesforce.xml', '', ''),
(58, 6, 0, 'Fabrik form: sms', '', 'sms', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_sms.xml', '', ''),
(59, 6, 0, 'Fabrik form: subscriptions', '', 'subscriptions', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_subscriptions.xml', '', ''),
(60, 6, 0, 'Fabrik form: twitter', '', 'twitter', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_twitter.xml', '', ''),
(61, 6, 0, 'Fabrik form: upsert', '', 'upsert', 'plugin', 'fabrik_form', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_form_upsert.xml', '', ''),
(62, 6, 0, 'Fabrik list: article', '', 'article', 'plugin', 'fabrik_list', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_list_article.xml', '', ''),
(63, 6, 0, 'Fabrik list: candeleterow', '', 'candeleterow', 'plugin', 'fabrik_list', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_list_candeleterow.xml', '', ''),
(64, 6, 0, 'Fabrik list: caneditrow', '', 'caneditrow', 'plugin', 'fabrik_list', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_list_caneditrow.xml', '', ''),
(65, 6, 0, 'Fabrik list: download', '', 'download', 'plugin', 'fabrik_list', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_list_download.xml', '', ''),
(66, 6, 0, 'Fabrik list: email', '', 'email', 'plugin', 'fabrik_list', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_list_email.xml', '', ''),
(67, 6, 0, 'Fabrik list: inlineedit', '', 'inlineedit', 'plugin', 'fabrik_list', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_list_inlineedit.xml', '', ''),
(68, 6, 0, 'Fabrik list: js', '', 'js', 'plugin', 'fabrik_list', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_list_js.xml', '', ''),
(69, 6, 0, 'Fabrik list: listcsv', '', 'listcsv', 'plugin', 'fabrik_list', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_list_listcsv.xml', '', ''),
(70, 6, 0, 'Fabrik list: order', '', 'order', 'plugin', 'fabrik_list', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_list_order.xml', '', ''),
(71, 6, 0, 'Fabrik list: php_events', '', 'php_events', 'plugin', 'fabrik_list', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_list_php_events.xml', '', ''),
(72, 6, 0, 'Fabrik list: pivot', '', 'pivot', 'plugin', 'fabrik_list', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_list_pivot.xml', '', ''),
(73, 6, 0, 'Fabrik list: radius_lookup', '', 'radius_lookup', 'plugin', 'fabrik_list', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_list_radius_lookup.xml', '', ''),
(74, 6, 0, 'Fabrik list: radius_search', '', 'radius_search', 'plugin', 'fabrik_list', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_list_radius_search.xml', '', ''),
(75, 6, 0, 'Fabrik list: update_col', '', 'update_col', 'plugin', 'fabrik_list', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_list_update_col.xml', '', ''),
(76, 6, 0, 'Fabrik list: webservice', '', 'webservice', 'plugin', 'fabrik_list', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_list_webservice.xml', '', ''),
(77, 6, 0, 'Fabrik validationrule: akismet', '', 'akismet', 'plugin', 'fabrik_validationrul', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_akismet.xml', '', ''),
(78, 6, 0, 'Fabrik validationrule: areuniquevalues', '', 'areuniquevalues', 'plugin', 'fabrik_validationrul', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_areuniquevalues.xml', '', ''),
(79, 6, 0, 'Fabrik validationrule: emailexists', '', 'emailexists', 'plugin', 'fabrik_validationrul', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_emailexists.xml', '', ''),
(80, 6, 0, 'Fabrik validationrule: isalphanumeric', '', 'isalphanumeric', 'plugin', 'fabrik_validationrul', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_isalphanumeric.xml', '', ''),
(81, 6, 0, 'Fabrik validationrule: isnot', '', 'isnot', 'plugin', 'fabrik_validationrul', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_isnot.xml', '', ''),
(82, 6, 0, 'Fabrik validationrule: isnumeric', '', 'isnumeric', 'plugin', 'fabrik_validationrul', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_isnumeric.xml', '', ''),
(83, 6, 0, 'Fabrik validationrule: isuniquevalue', '', 'isuniquevalue', 'plugin', 'fabrik_validationrul', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_isuniquevalue.xml', '', ''),
(84, 6, 0, 'Fabrik validationrule: openprovider', '', 'openprovider', 'plugin', 'fabrik_validationrul', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_openprovider.xml', '', ''),
(85, 6, 0, 'Fabrik validationrule: rsa_id', '', 'rsa_id', 'plugin', 'fabrik_validationrul', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_rsa_id.xml', '', ''),
(86, 6, 0, 'Fabrik validationrule: specialchars', '', 'specialchars', 'plugin', 'fabrik_validationrul', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_specialchars.xml', '', ''),
(87, 6, 0, 'Fabrik validationrule: userexists', '', 'userexists', 'plugin', 'fabrik_validationrul', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_userexists.xml', '', ''),
(88, 6, 0, 'Fabrik visualization: approvals', '', 'approvals', 'plugin', 'fabrik_visualization', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_visualization_approvals.xml', '', ''),
(89, 6, 0, 'Fabrik visualization: coverflow', '', 'coverflow', 'plugin', 'fabrik_visualization', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_visualization_coverflow.xml', '', ''),
(90, 6, 0, 'Fabrik visualization: fusionchart', '', 'fusionchart', 'plugin', 'fabrik_visualization', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_visualization_fusionchart.xml', '', ''),
(91, 6, 0, 'Fabrik visualization: fusion_gantt_chart', '', 'fusion_gantt_chart', 'plugin', 'fabrik_visualization', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_visualization_fusion_gantt_chart.xml', '', ''),
(92, 6, 0, 'Fabrik visualization: nvd3_chart', '', 'nvd3_chart', 'plugin', 'fabrik_visualization', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_visualization_nvd3_chart.xml', '', ''),
(93, 6, 0, 'Fabrik visualization: timeline', '', 'timeline', 'plugin', 'fabrik_visualization', 0, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/plg_visualization_timeline.xml', '', ''),
(94, 6, 0, 'Fabrik Admin Form Module', '', 'mod_fabrik_form', 'module', '', 1, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/mod_fabrik_admin_form.xml', '', ''),
(95, 6, 0, 'Fabrik Admin List Module', '', 'mod_fabrik_list', 'module', '', 1, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/mod_fabrik_admin_list.xml', '', ''),
(96, 6, 0, 'Fabrik Admin QuickIcon Module', '', 'mod_fabrik_quickicon', 'module', '', 1, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/mod_fabrik_admin_quickicon.xml', '', ''),
(97, 6, 0, 'Fabrik Admin Visualization Module', '', 'mod_fabrik_visualization', 'module', '', 1, '3.5.1', '', 'http://fabrikar.com/update/fabrik31/mod_fabrik_admin_visualization.xml', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_user_keys`
--

CREATE TABLE IF NOT EXISTS `ki4ne_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_user_notes`
--

CREATE TABLE IF NOT EXISTS `ki4ne_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_user_profiles`
--

CREATE TABLE IF NOT EXISTS `ki4ne_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `ki4ne_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ki4ne_user_usergroup_map`
--

INSERT INTO `ki4ne_user_usergroup_map` (`user_id`, `group_id`) VALUES
(496, 8);

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_usergroups`
--

CREATE TABLE IF NOT EXISTS `ki4ne_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Contenu de la table `ki4ne_usergroups`
--

INSERT INTO `ki4ne_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Enregistré'),
(3, 2, 9, 14, 'Auteur'),
(4, 3, 10, 13, 'Rédacteur'),
(5, 4, 11, 12, 'Validateur'),
(6, 1, 4, 7, 'Gestionnaire'),
(7, 6, 5, 6, 'Administrateur'),
(8, 1, 16, 17, 'Super Utilisateur'),
(9, 1, 2, 3, 'Invité');

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_users`
--

CREATE TABLE IF NOT EXISTS `ki4ne_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=497 ;

--
-- Contenu de la table `ki4ne_users`
--

INSERT INTO `ki4ne_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(496, 'Super Utilisateur', 'pierrrec', 'pierre.clement@escsr.com', '$2y$10$p6seADyVqELWXn1SVHTq3.KoZ5cR5VW2/Fb84wECS1z94t2UgzIJa', 0, 1, '2016-09-08 12:38:41', '2016-11-04 13:36:21', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_utf8_conversion`
--

CREATE TABLE IF NOT EXISTS `ki4ne_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ki4ne_utf8_conversion`
--

INSERT INTO `ki4ne_utf8_conversion` (`converted`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `ki4ne_viewlevels`
--

CREATE TABLE IF NOT EXISTS `ki4ne_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Contenu de la table `ki4ne_viewlevels`
--

INSERT INTO `ki4ne_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Accès public', 0, '[1]'),
(2, 'Accès enregistré', 2, '[6,2,8]'),
(3, 'Accès spécial', 3, '[6,3,8]'),
(5, 'Accès invité', 1, '[9]'),
(6, 'Accès super utilisateur', 4, '[8]');

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `contenu` longtext COLLATE latin1_general_cs NOT NULL,
  `date_modif` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Contenu de la table `pages`
--

INSERT INTO `pages` (`id`, `titre`, `contenu`, `date_modif`) VALUES
(1, 'Bienvenue', '.', '1899-11-30 00:00:00'),
(2, 'Qui sommes-nous ?', '.', '1899-11-30 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Maio-2021 às 22:15
-- Versão do servidor: 10.4.16-MariaDB
-- versão do PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cursoudemy`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpcrs_commentmeta`
--

CREATE TABLE `wpcrs_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpcrs_comments`
--

CREATE TABLE `wpcrs_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wpcrs_comments`
--

INSERT INTO `wpcrs_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-04-27 21:19:29', '2021-04-28 00:19:29', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpcrs_links`
--

CREATE TABLE `wpcrs_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpcrs_options`
--

CREATE TABLE `wpcrs_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wpcrs_options`
--

INSERT INTO `wpcrs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/cursoudemy', 'yes'),
(2, 'home', 'http://localhost/cursoudemy', 'yes'),
(3, 'blogname', 'Curso Udemy', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'luizsantanak@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '5', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:47:\"show-current-template/show-current-template.php\";i:3;s:63:\"social-icons-widget-by-wpzoom/social-icons-widget-by-wpzoom.php\";i:4;s:41:\"wp-responsive-menu/wp-responsive-menu.php\";i:5;s:58:\"wp-responsive-recent-post-slider/wp-recent-post-slider.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:76:\"C:\\xampp\\htdocs\\cursoudemy/wp-content/plugins/advanced-custom-fields/acf.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'curso', 'yes'),
(41, 'stylesheet', 'curso', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:10:\"Categorias\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:6:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:130:\"&nbsp;\r\n<blockquote id=\"output\" class=\"page-generator__lorem\">[contact-form-7 id=\"25\" title=\"Formulário da Sidebar\"]</blockquote>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:10:\"Web Design\";s:4:\"text\";s:215:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor <em>incididunt</em> ut labore et dolore magna aliqua. Nisl rhoncus mattis rhoncus urna neque viverra. Et tortor consequat id porta nibh.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:14:\"Midias Sociais\";s:4:\"text\";s:179:\"Nec feugiat nisl pretium fusce id velit. Vulputate sapien nec sagittis aliquam. Elementum facilisis leo vel fringilla est. Magna etiam tempor orci eu lobortis elementum.\r\n\r\n&nbsp;\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:19:\"Desenvolvimento Web\";s:4:\"text\";s:129:\"Netium fusce id velit. Vulputate sapien nec sagittis aliquam. Elementum facilisis leo vel fringilla est. Magna etiam tempor orci.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '8', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1635121168', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wpcrs_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'pt_BR', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:3:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:3;a:3:{s:5:\"title\";s:8:\"Arquivos\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar-2\";a:2:{i:0;s:10:\"archives-3\";i:1;s:12:\"categories-3\";}s:10:\"services-1\";a:2:{i:0;s:13:\"media_image-2\";i:1;s:6:\"text-3\";}s:10:\"services-2\";a:2:{i:0;s:13:\"media_image-3\";i:1;s:6:\"text-4\";}s:10:\"services-3\";a:2:{i:0;s:13:\"media_image-4\";i:1;s:6:\"text-5\";}s:12:\"social-media\";a:1:{i:0;s:26:\"zoom-social-icons-widget-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:8:{i:1621279171;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1621297170;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1621297171;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1621297181;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1621297186;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1621297370;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1621469970;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:4:{i:2;a:15:{s:4:\"size\";s:4:\"full\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:13:\"attachment_id\";i:80;s:3:\"url\";s:68:\"http://localhost/cursoudemy/wp-content/uploads/2021/05/service-1.png\";s:5:\"title\";s:0:\"\";}i:3;a:15:{s:4:\"size\";s:4:\"full\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:13:\"attachment_id\";i:81;s:3:\"url\";s:68:\"http://localhost/cursoudemy/wp-content/uploads/2021/05/service-2.png\";s:5:\"title\";s:0:\"\";}i:4;a:15:{s:4:\"size\";s:4:\"full\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:13:\"attachment_id\";i:82;s:3:\"url\";s:68:\"http://localhost/cursoudemy/wp-content/uploads/2021/05/service-3.png\";s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1619642464;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(136, 'can_compress_scripts', '1', 'no'),
(148, 'finished_updating_comment_type', '1', 'yes'),
(153, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"luizsantanak@gmail.com\";s:7:\"version\";s:5:\"5.7.2\";s:9:\"timestamp\";i:1620922679;}', 'no'),
(155, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}', 'yes'),
(165, 'current_theme', 'Curso Uddemy', 'yes'),
(166, 'theme_mods_curso', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:12:\"my_main_menu\";i:12;s:14:\"my_footer_menu\";i:12;s:11:\"footer_menu\";i:12;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:21:\"random-uploaded-image\";s:11:\"set_address\";s:243:\"!1m18!1m12!1m3!1d3657.195696784533!2d-46.6558819!3d-23.561414!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce59ceb1eb771f0xe904f6a669744da1!2sMuseudeArtedeSoPauloAssisChateaubriand!5e0!3m2!1spt-BR!2sbr!4v1621024165065!5m2!1spt-BR!2sbr\";s:13:\"set_copyright\";s:36:\"Copyright 2021 - All rights reserved\";s:11:\"custom_logo\";i:116;}', 'yes'),
(167, 'theme_switched', '', 'yes'),
(176, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":5,\"critical\":0}', 'yes'),
(220, 'recovery_mode_email_last_sent', '1621022716', 'yes'),
(221, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:1;i:12;}}', 'yes'),
(256, 'recently_activated', 'a:0:{}', 'yes'),
(269, 'acf_version', '5.9.5', 'yes'),
(270, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.4.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1620080609;s:7:\"version\";s:5:\"5.4.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(526, 'category_children', 'a:0:{}', 'yes'),
(542, 'wpos_anylc_redirect', '', 'yes'),
(543, 'wpos_anylc_site_uid', 'd51489fd46c978b30e2dc32191848a06', 'yes'),
(544, 'wpos_anylc_pdt_18', 'a:1:{s:6:\"status\";i:2;}', 'yes'),
(571, 'widget_zoom-social-icons-widget', 'a:2:{i:2;a:15:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:16:\"show_icon_labels\";s:5:\"false\";s:12:\"open_new_tab\";s:4:\"true\";s:9:\"no_follow\";s:4:\"true\";s:9:\"no_opener\";s:4:\"true\";s:11:\"no_referrer\";s:4:\"true\";s:17:\"icon_padding_size\";i:6;s:14:\"icon_font_size\";i:18;s:19:\"global_color_picker\";s:7:\"#1e73be\";s:25:\"global_color_picker_hover\";s:7:\"#1e73be\";s:10:\"icon_style\";s:11:\"with-canvas\";s:14:\"icon_alignment\";s:4:\"none\";s:17:\"icon_canvas_style\";s:6:\"square\";s:6:\"fields\";a:2:{i:0;a:7:{s:3:\"url\";s:52:\"https://www.facebook.com/jobs/category/manufacturing\";s:5:\"label\";s:8:\"Facebook\";s:4:\"icon\";s:8:\"facebook\";s:8:\"icon_kit\";s:7:\"socicon\";s:12:\"color_picker\";s:7:\"#1877F2\";s:18:\"color_picker_hover\";s:7:\"#1877F2\";s:10:\"aria_label\";s:0:\"\";}i:1;a:7:{s:3:\"url\";s:28:\"https://twitter.com/elonmusk\";s:5:\"label\";s:7:\"Twitter\";s:4:\"icon\";s:7:\"twitter\";s:8:\"icon_kit\";s:7:\"socicon\";s:12:\"color_picker\";s:7:\"#1da1f2\";s:18:\"color_picker_hover\";s:7:\"#1da1f2\";s:10:\"aria_label\";s:0:\"\";}}}s:12:\"_multiwidget\";i:1;}', 'yes'),
(572, '_site_transient_timeout_zoom-social-pointer', '1636577026', 'no'),
(573, '_site_transient_zoom-social-pointer', '1', 'no'),
(575, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1621267703;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}', 'no'),
(577, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1621267709;s:7:\"checked\";a:2:{s:5:\"curso\";s:3:\"1.0\";s:13:\"twentysixteen\";s:3:\"2.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.4.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(578, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1621267709;s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.4.1\";s:47:\"show-current-template/show-current-template.php\";s:5:\"0.4.6\";s:63:\"social-icons-widget-by-wpzoom/social-icons-widget-by-wpzoom.php\";s:5:\"4.1.2\";s:41:\"wp-responsive-menu/wp-responsive-menu.php\";s:5:\"3.1.4\";s:58:\"wp-responsive-recent-post-slider/wp-recent-post-slider.php\";s:3:\"2.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.4.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.4.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"show-current-template/show-current-template.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/show-current-template\";s:4:\"slug\";s:21:\"show-current-template\";s:6:\"plugin\";s:47:\"show-current-template/show-current-template.php\";s:11:\"new_version\";s:5:\"0.4.6\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/show-current-template/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/show-current-template.0.4.6.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/show-current-template/assets/icon-256x256.png?rev=976031\";s:2:\"1x\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";s:3:\"svg\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:63:\"social-icons-widget-by-wpzoom/social-icons-widget-by-wpzoom.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:43:\"w.org/plugins/social-icons-widget-by-wpzoom\";s:4:\"slug\";s:29:\"social-icons-widget-by-wpzoom\";s:6:\"plugin\";s:63:\"social-icons-widget-by-wpzoom/social-icons-widget-by-wpzoom.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/social-icons-widget-by-wpzoom/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/social-icons-widget-by-wpzoom.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/social-icons-widget-by-wpzoom/assets/icon-256x256.png?rev=2427281\";s:2:\"1x\";s:82:\"https://ps.w.org/social-icons-widget-by-wpzoom/assets/icon-128x128.png?rev=2427281\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/social-icons-widget-by-wpzoom/assets/banner-1544x500.png?rev=2427281\";s:2:\"1x\";s:84:\"https://ps.w.org/social-icons-widget-by-wpzoom/assets/banner-772x250.png?rev=2427281\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wp-responsive-menu/wp-responsive-menu.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wp-responsive-menu\";s:4:\"slug\";s:18:\"wp-responsive-menu\";s:6:\"plugin\";s:41:\"wp-responsive-menu/wp-responsive-menu.php\";s:11:\"new_version\";s:5:\"3.1.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wp-responsive-menu/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-responsive-menu.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/wp-responsive-menu/assets/icon-256x256.png?rev=2246917\";s:2:\"1x\";s:71:\"https://ps.w.org/wp-responsive-menu/assets/icon-128x128.png?rev=2246917\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/wp-responsive-menu/assets/banner-772x250.png?rev=2246917\";}s:11:\"banners_rtl\";a:0:{}}s:58:\"wp-responsive-recent-post-slider/wp-recent-post-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:46:\"w.org/plugins/wp-responsive-recent-post-slider\";s:4:\"slug\";s:32:\"wp-responsive-recent-post-slider\";s:6:\"plugin\";s:58:\"wp-responsive-recent-post-slider/wp-recent-post-slider.php\";s:11:\"new_version\";s:3:\"2.7\";s:3:\"url\";s:63:\"https://wordpress.org/plugins/wp-responsive-recent-post-slider/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/wp-responsive-recent-post-slider.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:85:\"https://ps.w.org/wp-responsive-recent-post-slider/assets/icon-128x128.png?rev=1402785\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:87:\"https://ps.w.org/wp-responsive-recent-post-slider/assets/banner-772x250.png?rev=1711324\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(579, 'wpr_optionsframework', 'a:1:{s:2:\"id\";s:15:\"wprmenu_options\";}', 'yes'),
(580, 'wprmenu_options', 'a:88:{s:7:\"enabled\";s:1:\"1\";s:16:\"wpr_live_preview\";s:1:\"1\";s:21:\"search_box_menu_block\";s:1:\"1\";s:17:\"wpr_enable_widget\";b:0;s:18:\"search_box_menubar\";b:0;s:7:\"rtlview\";b:0;s:14:\"submenu_opened\";b:0;s:24:\"fullwidth_menu_container\";b:0;s:4:\"menu\";s:2:\"12\";s:4:\"hide\";s:10:\".main-menu\";s:15:\"search_box_text\";s:9:\"Search...\";s:9:\"bar_title\";s:4:\"MENU\";s:8:\"bar_logo\";s:0:\"\";s:12:\"bar_logo_pos\";s:4:\"left\";s:9:\"logo_link\";s:27:\"http://localhost/cursoudemy\";s:5:\"swipe\";b:0;s:7:\"zooming\";b:0;s:12:\"parent_click\";b:0;s:23:\"wpr_enable_external_css\";b:0;s:17:\"wpr_enable_minify\";b:0;s:14:\"wpr_custom_css\";s:0:\"\";s:27:\"content_before_menu_element\";s:0:\"\";s:26:\"content_after_menu_element\";s:0:\"\";s:18:\"header_menu_height\";s:2:\"42\";s:9:\"menu_type\";s:7:\"default\";s:15:\"custom_menu_top\";s:1:\"0\";s:15:\"menu_symbol_pos\";s:4:\"left\";s:16:\"custom_menu_left\";s:1:\"0\";s:20:\"custom_menu_bg_color\";s:7:\"#cccccc\";s:19:\"menu_icon_animation\";s:17:\"hamburger--slider\";s:10:\"slide_type\";s:9:\"bodyslide\";s:8:\"position\";s:4:\"left\";s:10:\"from_width\";s:3:\"767\";s:8:\"how_wide\";s:2:\"80\";s:14:\"menu_max_width\";s:3:\"400\";s:15:\"menu_title_size\";s:2:\"20\";s:17:\"menu_title_weight\";s:6:\"normal\";s:14:\"menu_font_size\";s:2:\"15\";s:16:\"menu_font_weight\";s:6:\"normal\";s:19:\"menu_font_text_type\";s:9:\"uppercase\";s:17:\"submenu_alignment\";s:4:\"left\";s:18:\"sub_menu_font_size\";s:2:\"15\";s:20:\"sub_menu_font_weight\";s:6:\"normal\";s:23:\"sub_menu_font_text_type\";s:9:\"uppercase\";s:30:\"cart_contents_bubble_text_size\";s:2:\"12\";s:23:\"menu_border_bottom_show\";b:0;s:23:\"menu_border_top_opacity\";s:4:\"0.05\";s:26:\"menu_border_bottom_opacity\";s:4:\"0.05\";s:7:\"menu_bg\";s:0:\"\";s:12:\"menu_bg_size\";s:5:\"cover\";s:11:\"menu_bg_rep\";s:6:\"repeat\";s:11:\"menu_bar_bg\";s:0:\"\";s:16:\"menu_bar_bg_size\";s:5:\"cover\";s:15:\"menu_bar_bg_rep\";s:6:\"repeat\";s:14:\"enable_overlay\";s:1:\"1\";s:31:\"menu_background_overlay_opacity\";s:4:\"0.83\";s:22:\"hide_menubar_on_scroll\";s:1:\"1\";s:16:\"order_menu_items\";s:0:\"\";s:21:\"widget_menu_font_size\";s:2:\"28\";s:24:\"widget_menu_top_position\";s:1:\"0\";s:22:\"widget_menu_icon_color\";s:7:\"#ffffff\";s:29:\"widget_menu_icon_active_color\";s:7:\"#ffffff\";s:20:\"widget_menu_bg_color\";s:7:\"#c82d2d\";s:22:\"widget_menu_text_color\";s:7:\"#ffffff\";s:26:\"widget_menu_open_direction\";s:4:\"left\";s:7:\"bar_bgd\";s:7:\"#c92c2c\";s:9:\"bar_color\";s:7:\"#ffffff\";s:8:\"menu_bgd\";s:7:\"#c82d2d\";s:10:\"menu_color\";s:7:\"#ffffff\";s:16:\"menu_color_hover\";s:7:\"#ffffff\";s:15:\"menu_textovrbgd\";s:7:\"#d53f3f\";s:17:\"active_menu_color\";s:7:\"#ffffff\";s:20:\"active_menu_bg_color\";s:7:\"#d53f3f\";s:15:\"menu_icon_color\";s:7:\"#ffffff\";s:21:\"menu_icon_hover_color\";s:7:\"#ffffff\";s:15:\"menu_border_top\";s:7:\"#ffffff\";s:18:\"menu_border_bottom\";s:7:\"#ffffff\";s:17:\"social_icon_color\";s:7:\"#ffffff\";s:23:\"social_icon_hover_color\";s:7:\"#ffffff\";s:17:\"search_icon_color\";s:7:\"#ffffff\";s:23:\"search_icon_hover_color\";s:7:\"#ffffff\";s:16:\"google_font_type\";s:8:\"standard\";s:18:\"google_font_family\";s:28:\"Arial, Helvetica, sans-serif\";s:22:\"google_web_font_family\";s:7:\"ABeeZee\";s:14:\"menu_icon_type\";s:7:\"default\";s:21:\"custom_menu_font_size\";s:2:\"40\";s:20:\"custom_menu_icon_top\";s:2:\"-7\";s:21:\"social_icon_font_size\";s:2:\"16\";}', 'yes'),
(587, '_site_transient_timeout_theme_roots', '1621269508', 'no'),
(588, '_site_transient_theme_roots', 'a:2:{s:5:\"curso\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpcrs_postmeta`
--

CREATE TABLE `wpcrs_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wpcrs_postmeta`
--

INSERT INTO `wpcrs_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_edit_lock', '1620083807:1'),
(7, 8, '_edit_lock', '1620252293:1'),
(8, 10, '_edit_lock', '1620156205:1'),
(9, 12, '_edit_lock', '1621021121:1'),
(50, 18, '_edit_lock', '1621015533:1'),
(52, 1, '_wp_trash_meta_status', 'publish'),
(53, 1, '_wp_trash_meta_time', '1619965234'),
(54, 1, '_wp_desired_post_slug', 'ola-mundo'),
(55, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(56, 21, '_edit_lock', '1621015609:1'),
(58, 23, '_edit_lock', '1621015340:1'),
(60, 23, '_edit_last', '1'),
(62, 21, '_edit_last', '1'),
(64, 18, '_edit_last', '1'),
(66, 25, '_form', '<h2>Contato</h2>\n<p>Entre em contato conosco.</h2>\n\n<label> Seu nome\n    [text* your-name placeholder \"Nome\"] </label>\n\n<label> Seu e-mail\n    [email* your-email placeholder \"E-mail\"] </label>\n\n<label> Assunto\n    [text* your-subject placeholder \"Assunto\"] </label>\n\n<label> Sua mensagem (opcional)\n    [textarea your-message placeholder \"Mensagem\"] </label>\n\n[submit \"Enviar\"]'),
(67, 25, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <luizsantanak@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:178:\"De: [your-name] <[your-email]>\nAssunto: [your-subject]\n\nCorpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(68, 25, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <luizsantanak@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:122:\"Corpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(69, 25, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:27:\"Agradecemos a sua mensagem.\";s:12:\"mail_sent_ng\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:16:\"validation_error\";s:63:\"Um ou mais campos possuem um erro. Verifique e tente novamente.\";s:4:\"spam\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:12:\"accept_terms\";s:72:\"Você deve aceitar os termos e condições antes de enviar sua mensagem.\";s:16:\"invalid_required\";s:24:\"O campo é obrigatório.\";s:16:\"invalid_too_long\";s:23:\"O campo é muito longo.\";s:17:\"invalid_too_short\";s:23:\"O campo é muito curto.\";s:13:\"upload_failed\";s:49:\"Ocorreu um erro desconhecido ao enviar o arquivo.\";s:24:\"upload_file_type_invalid\";s:59:\"Você não tem permissão para enviar esse tipo de arquivo.\";s:21:\"upload_file_too_large\";s:26:\"O arquivo é muito grande.\";s:23:\"upload_failed_php_error\";s:36:\"Ocorreu um erro ao enviar o arquivo.\";s:12:\"invalid_date\";s:34:\"O formato de data está incorreto.\";s:14:\"date_too_early\";s:44:\"A data é anterior à mais antiga permitida.\";s:13:\"date_too_late\";s:44:\"A data é posterior à maior data permitida.\";s:14:\"invalid_number\";s:34:\"O formato de número é inválido.\";s:16:\"number_too_small\";s:46:\"O número é menor do que o mínimo permitido.\";s:16:\"number_too_large\";s:46:\"O número é maior do que o máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:39:\"A resposta para o quiz está incorreta.\";s:13:\"invalid_email\";s:45:\"O endereço de e-mail informado é inválido.\";s:11:\"invalid_url\";s:19:\"A URL é inválida.\";s:11:\"invalid_tel\";s:35:\"O número de telefone é inválido.\";}'),
(70, 25, '_additional_settings', ''),
(71, 25, '_locale', 'pt_BR'),
(76, 27, '_menu_item_type', 'post_type'),
(77, 27, '_menu_item_menu_item_parent', '0'),
(78, 27, '_menu_item_object_id', '5'),
(79, 27, '_menu_item_object', 'page'),
(80, 27, '_menu_item_target', ''),
(81, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(82, 27, '_menu_item_xfn', ''),
(83, 27, '_menu_item_url', ''),
(85, 28, '_menu_item_type', 'post_type'),
(86, 28, '_menu_item_menu_item_parent', '0'),
(87, 28, '_menu_item_object_id', '8'),
(88, 28, '_menu_item_object', 'page'),
(89, 28, '_menu_item_target', ''),
(90, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 28, '_menu_item_xfn', ''),
(92, 28, '_menu_item_url', ''),
(94, 29, '_menu_item_type', 'post_type'),
(95, 29, '_menu_item_menu_item_parent', '0'),
(96, 29, '_menu_item_object_id', '12'),
(97, 29, '_menu_item_object', 'page'),
(98, 29, '_menu_item_target', ''),
(99, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(100, 29, '_menu_item_xfn', ''),
(101, 29, '_menu_item_url', ''),
(103, 30, '_menu_item_type', 'post_type'),
(104, 30, '_menu_item_menu_item_parent', '0'),
(105, 30, '_menu_item_object_id', '10'),
(106, 30, '_menu_item_object', 'page'),
(107, 30, '_menu_item_target', ''),
(108, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(109, 30, '_menu_item_xfn', ''),
(110, 30, '_menu_item_url', ''),
(112, 5, '_wp_page_template', 'templates/home.php'),
(113, 8, '_wp_page_template', 'templates/blog.php'),
(114, 12, '_wp_page_template', 'templates/general-template.php'),
(118, 10, '_wp_page_template', 'templates/general-template.php'),
(123, 37, '_wp_attached_file', '2021/05/halo-infinite-scaled.jpg'),
(124, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:32:\"2021/05/halo-infinite-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"halo-infinite-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"halo-infinite-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"halo-infinite-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"halo-infinite-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:26:\"halo-infinite-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:27:\"halo-infinite-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:17:\"halo-infinite.jpg\";}'),
(125, 38, '_wp_attached_file', '2021/05/targon-celestial.jpg'),
(126, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1600;s:4:\"file\";s:28:\"2021/05/targon-celestial.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"targon-celestial-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"targon-celestial-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"targon-celestial-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"targon-celestial-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:29:\"targon-celestial-1536x960.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:30:\"targon-celestial-2048x1280.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 39, '_wp_attached_file', '2021/05/girl-looking-scaled.jpg'),
(128, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:31:\"2021/05/girl-looking-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"girl-looking-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"girl-looking-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"girl-looking-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"girl-looking-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"girl-looking-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:26:\"girl-looking-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"girl-looking.jpg\";}'),
(129, 40, '_wp_attached_file', '2021/05/monster-hunter-scaled.jpg'),
(130, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:33:\"2021/05/monster-hunter-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"monster-hunter-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"monster-hunter-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"monster-hunter-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"monster-hunter-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"monster-hunter-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:28:\"monster-hunter-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:18:\"monster-hunter.jpg\";}'),
(131, 41, '_wp_attached_file', '2021/05/cropped-halo-infinite-scaled-1.jpg'),
(132, 41, '_wp_attachment_context', 'custom-header'),
(133, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:225;s:4:\"file\";s:42:\"2021/05/cropped-halo-infinite-scaled-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"cropped-halo-infinite-scaled-1-300x35.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:35;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"cropped-halo-infinite-scaled-1-1024x120.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"cropped-halo-infinite-scaled-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"cropped-halo-infinite-scaled-1-768x90.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:43:\"cropped-halo-infinite-scaled-1-1536x180.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:37;}'),
(134, 41, '_wp_attachment_custom_header_last_used_curso', '1620234623'),
(135, 41, '_wp_attachment_is_custom_header', 'curso'),
(136, 42, '_wp_attached_file', '2021/05/cropped-monster-hunter-scaled-1.jpg'),
(137, 42, '_wp_attachment_context', 'custom-header'),
(138, 42, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:225;s:4:\"file\";s:43:\"2021/05/cropped-monster-hunter-scaled-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"cropped-monster-hunter-scaled-1-300x35.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:35;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"cropped-monster-hunter-scaled-1-1024x120.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"cropped-monster-hunter-scaled-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"cropped-monster-hunter-scaled-1-768x90.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:44:\"cropped-monster-hunter-scaled-1-1536x180.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:40;}'),
(139, 42, '_wp_attachment_custom_header_last_used_curso', '1620234639'),
(140, 42, '_wp_attachment_is_custom_header', 'curso'),
(141, 43, '_wp_attached_file', '2021/05/cropped-girl-looking-scaled-1.jpg'),
(142, 43, '_wp_attachment_context', 'custom-header'),
(143, 43, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:225;s:4:\"file\";s:41:\"2021/05/cropped-girl-looking-scaled-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"cropped-girl-looking-scaled-1-300x35.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:35;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"cropped-girl-looking-scaled-1-1024x120.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-girl-looking-scaled-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"cropped-girl-looking-scaled-1-768x90.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:42:\"cropped-girl-looking-scaled-1-1536x180.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:39;}'),
(144, 43, '_wp_attachment_custom_header_last_used_curso', '1620234681'),
(145, 43, '_wp_attachment_is_custom_header', 'curso'),
(146, 44, '_edit_lock', '1620235456:1'),
(147, 45, '_wp_attached_file', '2021/05/1065466.png'),
(148, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3840;s:6:\"height\";i:2160;s:4:\"file\";s:19:\"2021/05/1065466.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"1065466-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"1065466-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"1065466-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"1065466-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"1065466-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:21:\"1065466-2048x1152.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 46, '_wp_attached_file', '2021/05/cropped-1065466.png'),
(150, 46, '_wp_attachment_context', 'custom-header'),
(151, 46, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:225;s:4:\"file\";s:27:\"2021/05/cropped-1065466.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-1065466-300x35.png\";s:5:\"width\";i:300;s:6:\"height\";i:35;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"cropped-1065466-1024x120.png\";s:5:\"width\";i:1024;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-1065466-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"cropped-1065466-768x90.png\";s:5:\"width\";i:768;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:28:\"cropped-1065466-1536x180.png\";s:5:\"width\";i:1536;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:45;}'),
(152, 46, '_wp_attachment_custom_header_last_used_curso', '1620235460'),
(153, 46, '_wp_attachment_is_custom_header', 'curso'),
(154, 44, '_wp_trash_meta_status', 'publish'),
(155, 44, '_wp_trash_meta_time', '1620235460'),
(156, 47, '_wp_trash_meta_status', 'publish'),
(157, 47, '_wp_trash_meta_time', '1620235550'),
(158, 8, '_edit_last', '1'),
(159, 18, '_thumbnail_id', '49'),
(160, 49, '_wp_attached_file', '2021/05/IMG_20210114_092537.png'),
(161, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:31:\"2021/05/IMG_20210114_092537.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"IMG_20210114_092537-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"IMG_20210114_092537-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"IMG_20210114_092537-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"IMG_20210114_092537-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"IMG_20210114_092537-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(164, 21, '_thumbnail_id', '49'),
(166, 23, '_thumbnail_id', '49'),
(167, 50, '_edit_lock', '1621015330:1'),
(170, 52, '_edit_lock', '1621015314:1'),
(173, 54, '_edit_lock', '1621015299:1'),
(176, 56, '_edit_lock', '1621015233:1'),
(179, 58, '_edit_lock', '1621015212:1'),
(182, 60, '_edit_lock', '1621015337:1'),
(186, 63, '_wp_attached_file', '2021/05/bf5photo-scaled.jpg'),
(187, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:27:\"2021/05/bf5photo-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"bf5photo-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"bf5photo-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"bf5photo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"bf5photo-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"bf5photo-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"bf5photo-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"bf5photo.jpg\";}'),
(191, 60, '_oembed_e86bc95b8e506c691246f310050c5d91', '<iframe title=\"bbno$ - man in the mirror (prod. lentra) [OFFICIAL MUSIC VIDEO]\" width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/4LMu5oLrMTo?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(192, 60, '_oembed_time_e86bc95b8e506c691246f310050c5d91', '1621015097'),
(194, 58, '_oembed_e782adc888b818df0234376397a1b9a8', '<iframe title=\"bbno$ - slop prod. Y2K (OFFICIAL MUSIC VIDEO)\" width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/-t473d1fH1A?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(195, 58, '_oembed_time_e782adc888b818df0234376397a1b9a8', '1620333712'),
(198, 71, '_wp_attached_file', '2021/05/cafe-1872888_1920.jpg'),
(199, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:1920;s:4:\"file\";s:29:\"2021/05/cafe-1872888_1920.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cafe-1872888_1920-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"cafe-1872888_1920-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cafe-1872888_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"cafe-1872888_1920-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:31:\"cafe-1872888_1920-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(201, 74, '_wp_attached_file', '2021/05/vintage-791942_1920.jpg'),
(202, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1282;s:6:\"height\";i:1920;s:4:\"file\";s:31:\"2021/05/vintage-791942_1920.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"vintage-791942_1920-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"vintage-791942_1920-684x1024.jpg\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"vintage-791942_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"vintage-791942_1920-768x1150.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"vintage-791942_1920-1026x1536.jpg\";s:5:\"width\";i:1026;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 75, '_wp_attached_file', '2021/05/vintage-791942_1920-1.jpg'),
(204, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1282;s:6:\"height\";i:1920;s:4:\"file\";s:33:\"2021/05/vintage-791942_1920-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"vintage-791942_1920-1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"vintage-791942_1920-1-684x1024.jpg\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"vintage-791942_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"vintage-791942_1920-1-768x1150.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:35:\"vintage-791942_1920-1-1026x1536.jpg\";s:5:\"width\";i:1026;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 80, '_wp_attached_file', '2021/05/service-1.png'),
(215, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:21:\"2021/05/service-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"service-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(216, 81, '_wp_attached_file', '2021/05/service-2.png'),
(217, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:21:\"2021/05/service-2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"service-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(218, 82, '_wp_attached_file', '2021/05/service-3.png'),
(219, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:21:\"2021/05/service-3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"service-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(223, 60, '_oembed_25a0770b5134449fc59617918f5e6259', '<iframe title=\"bbno$ x diamond pistols - help herself\" width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/I6RVE0xYjoI?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(224, 60, '_oembed_time_25a0770b5134449fc59617918f5e6259', '1620680902'),
(225, 52, '_edit_last', '1'),
(228, 50, '_edit_last', '1'),
(230, 56, '_edit_last', '1'),
(232, 54, '_edit_last', '1'),
(238, 96, '_wp_attached_file', '2021/05/board-453758_1920.jpg'),
(239, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1304;s:4:\"file\";s:29:\"2021/05/board-453758_1920.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"board-453758_1920-300x204.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:204;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"board-453758_1920-1024x695.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:695;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"board-453758_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"board-453758_1920-768x522.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:522;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:31:\"board-453758_1920-1536x1043.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1043;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(241, 56, '_thumbnail_id', '49'),
(243, 99, '_wp_attached_file', '2021/05/ipad-606764_1920.jpg'),
(244, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1275;s:4:\"file\";s:28:\"2021/05/ipad-606764_1920.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"ipad-606764_1920-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"ipad-606764_1920-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"ipad-606764_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"ipad-606764_1920-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"ipad-606764_1920-1536x1020.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1020;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(246, 54, '_thumbnail_id', '49'),
(248, 52, '_thumbnail_id', '49'),
(249, 102, '_wp_attached_file', '2021/05/mobile-616012_1920.jpg'),
(250, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1275;s:4:\"file\";s:30:\"2021/05/mobile-616012_1920.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"mobile-616012_1920-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"mobile-616012_1920-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"mobile-616012_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"mobile-616012_1920-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"mobile-616012_1920-1536x1020.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1020;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(252, 50, '_thumbnail_id', '49'),
(254, 103, '_edit_lock', '1621018747:1'),
(256, 105, '_edit_lock', '1621015073:1'),
(259, 103, '_edit_last', '1'),
(261, 103, '_wp_old_date', '2021-05-13'),
(263, 105, '_thumbnail_id', '49'),
(265, 60, '_thumbnail_id', '49'),
(267, 58, '_thumbnail_id', '49'),
(273, 103, '_thumbnail_id', '49'),
(274, 111, '_form', '<label> Seu nome\n    [text* your-name placeholder \"Nome\"] </label>\n\n<label> Seu e-mail\n    [email* your-email placeholder \"E-mail\"] </label>\n\n<label> Assunto\n    [text* your-subject placeholder \"Assunto\"] </label>\n\n<label> Sua mensagem (opcional)\n    [textarea your-message placeholder \"Mensagem\"] </label>\n\n[submit \"Enviar\"]'),
(275, 111, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <luizsantanak@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:178:\"De: [your-name] <[your-email]>\nAssunto: [your-subject]\n\nCorpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(276, 111, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <luizsantanak@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:122:\"Corpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(277, 111, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:27:\"Agradecemos a sua mensagem.\";s:12:\"mail_sent_ng\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:16:\"validation_error\";s:63:\"Um ou mais campos possuem um erro. Verifique e tente novamente.\";s:4:\"spam\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:12:\"accept_terms\";s:72:\"Você deve aceitar os termos e condições antes de enviar sua mensagem.\";s:16:\"invalid_required\";s:24:\"O campo é obrigatório.\";s:16:\"invalid_too_long\";s:23:\"O campo é muito longo.\";s:17:\"invalid_too_short\";s:23:\"O campo é muito curto.\";s:13:\"upload_failed\";s:49:\"Ocorreu um erro desconhecido ao enviar o arquivo.\";s:24:\"upload_file_type_invalid\";s:59:\"Você não tem permissão para enviar esse tipo de arquivo.\";s:21:\"upload_file_too_large\";s:26:\"O arquivo é muito grande.\";s:23:\"upload_failed_php_error\";s:36:\"Ocorreu um erro ao enviar o arquivo.\";s:12:\"invalid_date\";s:34:\"O formato de data está incorreto.\";s:14:\"date_too_early\";s:44:\"A data é anterior à mais antiga permitida.\";s:13:\"date_too_late\";s:44:\"A data é posterior à maior data permitida.\";s:14:\"invalid_number\";s:34:\"O formato de número é inválido.\";s:16:\"number_too_small\";s:46:\"O número é menor do que o mínimo permitido.\";s:16:\"number_too_large\";s:46:\"O número é maior do que o máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:39:\"A resposta para o quiz está incorreta.\";s:13:\"invalid_email\";s:45:\"O endereço de e-mail informado é inválido.\";s:11:\"invalid_url\";s:19:\"A URL é inválida.\";s:11:\"invalid_tel\";s:35:\"O número de telefone é inválido.\";}'),
(278, 111, '_additional_settings', ''),
(279, 111, '_locale', 'pt_BR'),
(280, 113, '_wp_trash_meta_status', 'publish'),
(281, 113, '_wp_trash_meta_time', '1621024198'),
(282, 114, '_wp_trash_meta_status', 'publish'),
(283, 114, '_wp_trash_meta_time', '1621024257'),
(284, 115, '_wp_trash_meta_status', 'publish'),
(285, 115, '_wp_trash_meta_time', '1621275379'),
(286, 49, '_wp_attachment_image_alt', 'Curso WP'),
(287, 116, '_wp_attached_file', '2021/05/cropped-IMG_20210114_092537.png'),
(288, 116, '_wp_attachment_context', 'custom-logo'),
(289, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:110;s:4:\"file\";s:39:\"2021/05/cropped-IMG_20210114_092537.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"cropped-IMG_20210114_092537-150x110.png\";s:5:\"width\";i:150;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(290, 117, '_wp_trash_meta_status', 'publish'),
(291, 117, '_wp_trash_meta_time', '1621275854');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpcrs_posts`
--

CREATE TABLE `wpcrs_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wpcrs_posts`
--

INSERT INTO `wpcrs_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-04-27 21:19:29', '2021-04-28 00:19:29', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'trash', 'open', 'open', '', 'ola-mundo__trashed', '', '', '2021-05-02 11:20:35', '2021-05-02 14:20:35', '', 0, 'http://localhost/cursoudemy/?p=1', 0, 'post', '', 1),
(5, 1, '2021-04-30 18:12:53', '2021-04-30 21:12:53', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-05-03 20:14:47', '2021-05-03 23:14:47', '', 0, 'http://localhost/cursoudemy/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-04-30 18:12:53', '2021-04-30 21:12:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-04-30 18:12:53', '2021-04-30 21:12:53', '', 5, 'http://localhost/cursoudemy/?p=6', 0, 'revision', '', 0),
(8, 1, '2021-04-30 18:13:29', '2021-04-30 21:13:29', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-05-05 19:02:56', '2021-05-05 22:02:56', '', 0, 'http://localhost/cursoudemy/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-04-30 18:13:29', '2021-04-30 21:13:29', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-04-30 18:13:29', '2021-04-30 21:13:29', '', 8, 'http://localhost/cursoudemy/?p=9', 0, 'revision', '', 0),
(10, 1, '2021-04-30 18:13:55', '2021-04-30 21:13:55', '<!-- wp:paragraph -->\n<p>Existem muitas variações disponíveis de passagens de Lorem Ipsum, mas a maioria sofreu algum tipo de alteração, seja por inserção de passagens com humor, ou palavras aleatórias que não parecem nem um pouco convincentes. Se você pretende usar uma passagem de Lorem Ipsum, precisa ter certeza de que não há algo embaraçoso escrito escondido no meio do texto. Todos os geradores de Lorem Ipsum na internet tendem a repetir pedaços predefinidos conforme necessário, fazendo deste o primeiro gerador de Lorem Ipsum autêntico da internet. Ele usa um dicionário com mais de 200 palavras em Latim combinado com um punhado de modelos de estrutura de frases para gerar um Lorem Ipsum com aparência razoável, livre de repetições, inserções de humor, palavras não características, etc.</p>\n<!-- /wp:paragraph -->', 'Sobre', '', 'publish', 'closed', 'closed', '', 'sobre', '', '', '2021-05-04 16:25:42', '2021-05-04 19:25:42', '', 0, 'http://localhost/cursoudemy/?page_id=10', 0, 'page', '', 0),
(11, 1, '2021-04-30 18:13:55', '2021-04-30 21:13:55', '', 'Sobre', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-04-30 18:13:55', '2021-04-30 21:13:55', '', 10, 'http://localhost/cursoudemy/?p=11', 0, 'revision', '', 0),
(12, 1, '2021-04-30 18:14:09', '2021-04-30 21:14:09', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:contact-form-7/contact-form-selector {\"id\":111,\"title\":\"Formulário do Contato\"} -->\n<div class=\"wp-block-contact-form-7-contact-form-selector\">[contact-form-7 id=\"111\" title=\"Formulário do Contato\"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->\n\n<!-- wp:paragraph -->\n<p>Ao contrário do que se acredita, Lorem Ipsum não é simplesmente um texto randômico. Com mais de 2000 anos, suas raízes podem ser encontradas em uma obra de literatura latina clássica datada de 45 AC. Richard McClintock, um professor de latim do Hampden-Sydney College na Virginia, pesquisou uma das mais obscuras palavras em latim, consectetur, oriunda de uma passagem de Lorem Ipsum, e, procurando por entre citações da palavra na literatura clássica, descobriu a sua indubitável origem. Lorem Ipsum vem das seções 1.10.32 e 1.10.33 do \"de Finibus Bonorum et Malorum\" (Os Extremos do Bem e do Mal), de Cícero, escrito em 45 AC. Este livro é um tratado de teoria da ética muito popular na época da Renascença. A primeira linha de Lorem Ipsum, \"Lorem Ipsum dolor sit amet...\" vem de uma linha na seção 1.10.32.</p>\n<!-- /wp:paragraph -->', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2021-05-14 16:41:01', '2021-05-14 19:41:01', '', 0, 'http://localhost/cursoudemy/?page_id=12', 0, 'page', '', 0),
(13, 1, '2021-04-30 18:14:09', '2021-04-30 21:14:09', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-04-30 18:14:09', '2021-04-30 21:14:09', '', 12, 'http://localhost/cursoudemy/?p=13', 0, 'revision', '', 0),
(18, 1, '2021-05-02 11:20:17', '2021-05-02 14:20:17', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->', 'Como criar um portfólio ?', '', 'publish', 'open', 'open', '', 'web-design', '', '', '2021-05-10 18:34:07', '2021-05-10 21:34:07', '', 0, 'http://localhost/cursoudemy/?p=18', 0, 'post', '', 0),
(19, 1, '2021-05-02 11:20:17', '2021-05-02 14:20:17', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->', 'Web Design', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2021-05-02 11:20:17', '2021-05-02 14:20:17', '', 18, 'http://localhost/cursoudemy/?p=19', 0, 'revision', '', 0),
(20, 1, '2021-05-02 11:20:35', '2021-05-02 14:20:35', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-05-02 11:20:35', '2021-05-02 14:20:35', '', 1, 'http://localhost/cursoudemy/?p=20', 0, 'revision', '', 0),
(21, 1, '2021-05-02 11:21:00', '2021-05-02 14:21:00', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->', 'Como criar uma conta de sucesso ?', '', 'publish', 'open', 'open', '', 'redes-sociais', '', '', '2021-05-10 18:17:24', '2021-05-10 21:17:24', '', 0, 'http://localhost/cursoudemy/?p=21', 0, 'post', '', 0),
(22, 1, '2021-05-02 11:21:00', '2021-05-02 14:21:00', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->', 'Redes Sociais', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-05-02 11:21:00', '2021-05-02 14:21:00', '', 21, 'http://localhost/cursoudemy/?p=22', 0, 'revision', '', 0),
(23, 1, '2021-05-02 11:21:35', '2021-05-02 14:21:35', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->', 'HTML5, CSS & JS para iniciantes!', '', 'publish', 'open', 'open', '', 'desenvolvimento-web', '', '', '2021-05-10 18:17:07', '2021-05-10 21:17:07', '', 0, 'http://localhost/cursoudemy/?p=23', 0, 'post', '', 0),
(24, 1, '2021-05-02 11:21:35', '2021-05-02 14:21:35', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->', 'Desenvolvimento Web', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-05-02 11:21:35', '2021-05-02 14:21:35', '', 23, 'http://localhost/cursoudemy/?p=24', 0, 'revision', '', 0),
(25, 1, '2021-05-03 19:23:29', '2021-05-03 22:23:29', '<h2>Contato</h2>\r\n<p>Entre em contato conosco.</h2>\r\n\r\n<label> Seu nome\r\n    [text* your-name placeholder \"Nome\"] </label>\r\n\r\n<label> Seu e-mail\r\n    [email* your-email placeholder \"E-mail\"] </label>\r\n\r\n<label> Assunto\r\n    [text* your-subject placeholder \"Assunto\"] </label>\r\n\r\n<label> Sua mensagem (opcional)\r\n    [textarea your-message placeholder \"Mensagem\"] </label>\r\n\r\n[submit \"Enviar\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <luizsantanak@gmail.com>\n[_site_admin_email]\nDe: [your-name] <[your-email]>\r\nAssunto: [your-subject]\r\n\r\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <luizsantanak@gmail.com>\n[your-email]\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nAgradecemos a sua mensagem.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nUm ou mais campos possuem um erro. Verifique e tente novamente.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nVocê deve aceitar os termos e condições antes de enviar sua mensagem.\nO campo é obrigatório.\nO campo é muito longo.\nO campo é muito curto.\nOcorreu um erro desconhecido ao enviar o arquivo.\nVocê não tem permissão para enviar esse tipo de arquivo.\nO arquivo é muito grande.\nOcorreu um erro ao enviar o arquivo.\nO formato de data está incorreto.\nA data é anterior à mais antiga permitida.\nA data é posterior à maior data permitida.\nO formato de número é inválido.\nO número é menor do que o mínimo permitido.\nO número é maior do que o máximo permitido.\nA resposta para o quiz está incorreta.\nO endereço de e-mail informado é inválido.\nA URL é inválida.\nO número de telefone é inválido.', 'Formulário da Sidebar', '', 'publish', 'closed', 'closed', '', 'formulario-de-contato-1', '', '', '2021-05-14 16:16:20', '2021-05-14 19:16:20', '', 0, 'http://localhost/cursoudemy/?post_type=wpcf7_contact_form&#038;p=25', 0, 'wpcf7_contact_form', '', 0),
(27, 1, '2021-05-03 19:50:04', '2021-05-03 22:50:04', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2021-05-03 19:50:04', '2021-05-03 22:50:04', '', 0, 'http://localhost/cursoudemy/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2021-05-03 19:50:04', '2021-05-03 22:50:04', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2021-05-03 19:50:04', '2021-05-03 22:50:04', '', 0, 'http://localhost/cursoudemy/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2021-05-03 19:50:04', '2021-05-03 22:50:04', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2021-05-03 19:50:04', '2021-05-03 22:50:04', '', 0, 'http://localhost/cursoudemy/?p=29', 3, 'nav_menu_item', '', 0),
(30, 1, '2021-05-03 19:50:04', '2021-05-03 22:50:04', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2021-05-03 19:50:04', '2021-05-03 22:50:04', '', 0, 'http://localhost/cursoudemy/?p=30', 4, 'nav_menu_item', '', 0),
(33, 1, '2021-05-04 16:24:36', '2021-05-04 19:24:36', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-05-04 16:24:36', '2021-05-04 19:24:36', '', 12, 'http://localhost/cursoudemy/?p=33', 0, 'revision', '', 0),
(34, 1, '2021-05-04 16:25:06', '2021-05-04 19:25:06', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ao contrário do que se acredita, Lorem Ipsum não é simplesmente um texto randômico. Com mais de 2000 anos, suas raízes podem ser encontradas em uma obra de literatura latina clássica datada de 45 AC. Richard McClintock, um professor de latim do Hampden-Sydney College na Virginia, pesquisou uma das mais obscuras palavras em latim, consectetur, oriunda de uma passagem de Lorem Ipsum, e, procurando por entre citações da palavra na literatura clássica, descobriu a sua indubitável origem. Lorem Ipsum vem das seções 1.10.32 e 1.10.33 do \"de Finibus Bonorum et Malorum\" (Os Extremos do Bem e do Mal), de Cícero, escrito em 45 AC. Este livro é um tratado de teoria da ética muito popular na época da Renascença. A primeira linha de Lorem Ipsum, \"Lorem Ipsum dolor sit amet...\" vem de uma linha na seção 1.10.32.</p>\n<!-- /wp:paragraph -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-05-04 16:25:06', '2021-05-04 19:25:06', '', 12, 'http://localhost/cursoudemy/?p=34', 0, 'revision', '', 0),
(35, 1, '2021-05-04 16:25:42', '2021-05-04 19:25:42', '<!-- wp:paragraph -->\n<p>Existem muitas variações disponíveis de passagens de Lorem Ipsum, mas a maioria sofreu algum tipo de alteração, seja por inserção de passagens com humor, ou palavras aleatórias que não parecem nem um pouco convincentes. Se você pretende usar uma passagem de Lorem Ipsum, precisa ter certeza de que não há algo embaraçoso escrito escondido no meio do texto. Todos os geradores de Lorem Ipsum na internet tendem a repetir pedaços predefinidos conforme necessário, fazendo deste o primeiro gerador de Lorem Ipsum autêntico da internet. Ele usa um dicionário com mais de 200 palavras em Latim combinado com um punhado de modelos de estrutura de frases para gerar um Lorem Ipsum com aparência razoável, livre de repetições, inserções de humor, palavras não características, etc.</p>\n<!-- /wp:paragraph -->', 'Sobre', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-05-04 16:25:42', '2021-05-04 19:25:42', '', 10, 'http://localhost/cursoudemy/?p=35', 0, 'revision', '', 0),
(37, 1, '2021-05-04 21:19:57', '2021-05-05 00:19:57', '', 'halo-infinite', '', 'inherit', 'open', 'closed', '', 'halo-infinite', '', '', '2021-05-04 21:19:57', '2021-05-05 00:19:57', '', 0, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/halo-infinite.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2021-05-04 21:20:23', '2021-05-05 00:20:23', '', 'targon-celestial', '', 'inherit', 'open', 'closed', '', 'targon-celestial', '', '', '2021-05-04 21:20:23', '2021-05-05 00:20:23', '', 0, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/targon-celestial.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2021-05-04 21:25:55', '2021-05-05 00:25:55', '', 'girl-looking', '', 'inherit', 'open', 'closed', '', 'girl-looking', '', '', '2021-05-04 21:25:55', '2021-05-05 00:25:55', '', 0, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/girl-looking.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2021-05-04 21:26:11', '2021-05-05 00:26:11', '', 'monster-hunter', '', 'inherit', 'open', 'closed', '', 'monster-hunter', '', '', '2021-05-04 21:26:11', '2021-05-05 00:26:11', '', 0, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/monster-hunter.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2021-05-05 14:10:21', '2021-05-05 17:10:21', '', 'cropped-halo-infinite-scaled-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-halo-infinite-scaled-1-jpg', '', '', '2021-05-05 14:10:21', '2021-05-05 17:10:21', '', 0, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/cropped-halo-infinite-scaled-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2021-05-05 14:10:37', '2021-05-05 17:10:37', '', 'cropped-monster-hunter-scaled-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-monster-hunter-scaled-1-jpg', '', '', '2021-05-05 14:10:37', '2021-05-05 17:10:37', '', 0, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/cropped-monster-hunter-scaled-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2021-05-05 14:11:19', '2021-05-05 17:11:19', '', 'cropped-girl-looking-scaled-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-girl-looking-scaled-1-jpg', '', '', '2021-05-05 14:11:19', '2021-05-05 17:11:19', '', 0, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/cropped-girl-looking-scaled-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2021-05-05 14:24:19', '2021-05-05 17:24:19', '{\n    \"curso::header_image\": {\n        \"value\": \"http://localhost/cursoudemy/wp-content/uploads/2021/05/cropped-1065466.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-05 17:12:23\"\n    },\n    \"curso::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/cursoudemy/wp-content/uploads/2021/05/cropped-1065466.png\",\n            \"thumbnail_url\": \"http://localhost/cursoudemy/wp-content/uploads/2021/05/cropped-1065466.png\",\n            \"timestamp\": 1620234740935,\n            \"attachment_id\": 46,\n            \"width\": 1920,\n            \"height\": 225\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-05 17:12:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9b429b85-6dc7-47fa-9823-fef39c2ddee4', '', '', '2021-05-05 14:24:19', '2021-05-05 17:24:19', '', 0, 'http://localhost/cursoudemy/?p=44', 0, 'customize_changeset', '', 0),
(45, 1, '2021-05-05 14:12:01', '2021-05-05 17:12:01', '', '1065466', '', 'inherit', 'open', 'closed', '', '1065466', '', '', '2021-05-05 14:12:01', '2021-05-05 17:12:01', '', 0, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/1065466.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2021-05-05 14:12:19', '2021-05-05 17:12:19', '', 'cropped-1065466.png', '', 'inherit', 'open', 'closed', '', 'cropped-1065466-png', '', '', '2021-05-05 14:12:19', '2021-05-05 17:12:19', '', 0, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/cropped-1065466.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2021-05-05 14:25:50', '2021-05-05 17:25:50', '{\n    \"curso::header_image\": {\n        \"value\": \"random-uploaded-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-05 17:25:50\"\n    },\n    \"curso::header_image_data\": {\n        \"value\": \"random-uploaded-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-05 17:25:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a986d02b-b6ff-4362-982d-baf7d1290dfa', '', '', '2021-05-05 14:25:50', '2021-05-05 17:25:50', '', 0, 'http://localhost/cursoudemy/2021/05/05/a986d02b-b6ff-4362-982d-baf7d1290dfa/', 0, 'customize_changeset', '', 0),
(49, 1, '2021-05-05 19:16:35', '2021-05-05 22:16:35', 'Curso WP', 'IMG_20210114_092537', '', 'inherit', 'open', 'closed', '', 'img_20210114_092537', '', '', '2021-05-17 15:23:49', '2021-05-17 18:23:49', '', 18, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/IMG_20210114_092537.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2021-05-06 17:04:54', '2021-05-06 20:04:54', '<!-- wp:paragraph -->\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur.</p>\n<!-- /wp:paragraph -->', 'Desenvolvimento Web - Iniciante ao avançado.', '', 'publish', 'open', 'open', '', 'desenvolvimento-web-post-1', '', '', '2021-05-14 15:04:32', '2021-05-14 18:04:32', '', 0, 'http://localhost/cursoudemy/?p=50', 0, 'post', '', 0),
(51, 1, '2021-05-06 17:04:54', '2021-05-06 20:04:54', '', 'Desenvolvimento Web - Post 1', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2021-05-06 17:04:54', '2021-05-06 20:04:54', '', 50, 'http://localhost/cursoudemy/?p=51', 0, 'revision', '', 0),
(52, 1, '2021-05-06 17:05:45', '2021-05-06 20:05:45', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"dropCap\":true,\"style\":{\"typography\":{\"fontSize\":15}}} -->\n<p class=\"has-drop-cap\" style=\"font-size:15px\">\"Wut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Desenvolvimento Web - Dicas de como estudar!', '', 'publish', 'open', 'open', '', 'desenvolvimento-web-post-2', '', '', '2021-05-14 15:04:16', '2021-05-14 18:04:16', '', 0, 'http://localhost/cursoudemy/?p=52', 0, 'post', '', 0),
(53, 1, '2021-05-06 17:05:45', '2021-05-06 20:05:45', '', 'Desenvolvimento Web - Post 2', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2021-05-06 17:05:45', '2021-05-06 20:05:45', '', 52, 'http://localhost/cursoudemy/?p=53', 0, 'revision', '', 0),
(54, 1, '2021-05-06 17:34:11', '2021-05-06 20:34:11', '<!-- wp:image {\"id\":49,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/cursoudemy/wp-content/uploads/2021/05/IMG_20210114_092537-1024x576.png\" alt=\"\" class=\"wp-image-49\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.&nbsp;</p>\n<!-- /wp:paragraph -->', 'Portfólio Web Design - Infinity.', '', 'publish', 'open', 'open', '', 'web-design-portfolio-1', '', '', '2021-05-14 15:04:00', '2021-05-14 18:04:00', '', 0, 'http://localhost/cursoudemy/?p=54', 0, 'post', '', 0),
(55, 1, '2021-05-06 17:34:11', '2021-05-06 20:34:11', '', 'Web Design - Portfólio 1', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2021-05-06 17:34:11', '2021-05-06 20:34:11', '', 54, 'http://localhost/cursoudemy/?p=55', 0, 'revision', '', 0),
(56, 1, '2021-05-06 17:34:58', '2021-05-06 20:34:58', '<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\n<!-- /wp:paragraph -->', 'Portfólio Web Design - Lorem Ipsum.', '', 'publish', 'open', 'open', '', 'web-design-portfolio-2', '', '', '2021-05-14 15:02:53', '2021-05-14 18:02:53', '', 0, 'http://localhost/cursoudemy/?p=56', 0, 'post', '', 0),
(57, 1, '2021-05-06 17:34:58', '2021-05-06 20:34:58', '', 'Web Design - Portfólio 2', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2021-05-06 17:34:58', '2021-05-06 20:34:58', '', 56, 'http://localhost/cursoudemy/?p=57', 0, 'revision', '', 0),
(58, 1, '2021-05-06 17:35:49', '2021-05-06 20:35:49', '<!-- wp:embed {\"url\":\"https://www.youtube.com/watch?v=-t473d1fH1A\\u0026ab_channel=bbno%24\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=-t473d1fH1A&amp;ab_channel=bbno%24\n</div></figure>\n<!-- /wp:embed -->', 'BBNO$ - slop prod. Y2K (OFFICIAL MUSIC VIDEO)', '', 'publish', 'open', 'open', '', 'midias-sociais-tutorial-1', '', '', '2021-05-14 15:02:33', '2021-05-14 18:02:33', '', 0, 'http://localhost/cursoudemy/?p=58', 0, 'post', '', 0),
(59, 1, '2021-05-06 17:35:49', '2021-05-06 20:35:49', '', 'Midias Sociais - Tutorial 1', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2021-05-06 17:35:49', '2021-05-06 20:35:49', '', 58, 'http://localhost/cursoudemy/?p=59', 0, 'revision', '', 0),
(60, 1, '2021-05-06 17:36:39', '2021-05-06 20:36:39', '<!-- wp:embed {\"url\":\"https://www.youtube.com/watch?v=I6RVE0xYjoI\\u0026ab_channel=bbno%24\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=I6RVE0xYjoI&amp;ab_channel=bbno%24\n</div></figure>\n<!-- /wp:embed -->', 'bbno$ x diamond pistols - help herself', '', 'publish', 'open', 'open', '', 'midias-sociais-tutorial-2', '', '', '2021-05-14 15:01:46', '2021-05-14 18:01:46', '', 0, 'http://localhost/cursoudemy/?p=60', 0, 'post', '', 0),
(61, 1, '2021-05-06 17:36:39', '2021-05-06 20:36:39', '', 'Midias Sociais - Tutorial 2', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2021-05-06 17:36:39', '2021-05-06 20:36:39', '', 60, 'http://localhost/cursoudemy/?p=61', 0, 'revision', '', 0),
(63, 1, '2021-05-06 17:38:55', '2021-05-06 20:38:55', '', 'bf5photo', '', 'inherit', 'open', 'closed', '', 'bf5photo', '', '', '2021-05-06 17:38:55', '2021-05-06 20:38:55', '', 58, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/bf5photo.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2021-05-06 17:39:05', '2021-05-06 20:39:05', '<!-- wp:image {\"id\":63,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/cursoudemy/wp-content/uploads/2021/05/bf5photo-1024x576.jpg\" alt=\"\" class=\"wp-image-63\"/></figure>\n<!-- /wp:image -->', 'Midias Sociais - Tutorial 1', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2021-05-06 17:39:05', '2021-05-06 20:39:05', '', 58, 'http://localhost/cursoudemy/?p=64', 0, 'revision', '', 0),
(65, 1, '2021-05-06 17:39:29', '2021-05-06 20:39:29', '<!-- wp:image {\"id\":63,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/cursoudemy/wp-content/uploads/2021/05/bf5photo-1024x576.jpg\" alt=\"\" class=\"wp-image-63\"/></figure>\n<!-- /wp:image -->', 'Midias Sociais - Tutorial 2', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2021-05-06 17:39:29', '2021-05-06 20:39:29', '', 60, 'http://localhost/cursoudemy/?p=65', 0, 'revision', '', 0),
(66, 1, '2021-05-06 17:40:49', '2021-05-06 20:40:49', '<!-- wp:embed {\"url\":\"https://www.youtube.com/watch?v=4LMu5oLrMTo\\u0026list=RDMMeVg0aWb-Ez8\\u0026index=6\\u0026ab_channel=bbno%24\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=4LMu5oLrMTo&amp;list=RDMMeVg0aWb-Ez8&amp;index=6&amp;ab_channel=bbno%24\n</div></figure>\n<!-- /wp:embed -->', 'Midias Sociais - Tutorial 2', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2021-05-06 17:40:49', '2021-05-06 20:40:49', '', 60, 'http://localhost/cursoudemy/?p=66', 0, 'revision', '', 0),
(67, 1, '2021-05-06 17:41:52', '2021-05-06 20:41:52', '<!-- wp:embed {\"url\":\"https://www.youtube.com/watch?v=-t473d1fH1A\\u0026ab_channel=bbno%24\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=-t473d1fH1A&amp;ab_channel=bbno%24\n</div></figure>\n<!-- /wp:embed -->', 'Midias Sociais - Tutorial 1', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2021-05-06 17:41:52', '2021-05-06 20:41:52', '', 58, 'http://localhost/cursoudemy/?p=67', 0, 'revision', '', 0),
(68, 1, '2021-05-06 17:42:52', '2021-05-06 20:42:52', '<!-- wp:image {\"id\":49,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/cursoudemy/wp-content/uploads/2021/05/IMG_20210114_092537-1024x576.png\" alt=\"\" class=\"wp-image-49\"/></figure>\n<!-- /wp:image -->', 'Web Design - Portfólio 2', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2021-05-06 17:42:52', '2021-05-06 20:42:52', '', 56, 'http://localhost/cursoudemy/?p=68', 0, 'revision', '', 0),
(69, 1, '2021-05-06 17:43:36', '2021-05-06 20:43:36', '<!-- wp:image {\"id\":49,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/cursoudemy/wp-content/uploads/2021/05/IMG_20210114_092537-1024x576.png\" alt=\"\" class=\"wp-image-49\"/></figure>\n<!-- /wp:image -->', 'Web Design - Portfólio 1', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2021-05-06 17:43:36', '2021-05-06 20:43:36', '', 54, 'http://localhost/cursoudemy/?p=69', 0, 'revision', '', 0),
(71, 1, '2021-05-06 17:52:06', '2021-05-06 20:52:06', '', 'cafe-1872888_1920', '', 'inherit', 'open', 'closed', '', 'cafe-1872888_1920', '', '', '2021-05-06 17:52:06', '2021-05-06 20:52:06', '', 52, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/cafe-1872888_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2021-05-06 17:52:30', '2021-05-06 20:52:30', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":71,\"width\":405,\"height\":607,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image size-large is-resized is-style-rounded\"><img src=\"http://localhost/cursoudemy/wp-content/uploads/2021/05/cafe-1872888_1920-683x1024.jpg\" alt=\"\" class=\"wp-image-71\" width=\"405\" height=\"607\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"dropCap\":true,\"style\":{\"typography\":{\"fontSize\":15}}} -->\n<p class=\"has-drop-cap\" style=\"font-size:15px\">\"Wut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Desenvolvimento Web - Post 2', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2021-05-06 17:52:30', '2021-05-06 20:52:30', '', 52, 'http://localhost/cursoudemy/?p=72', 0, 'revision', '', 0),
(74, 1, '2021-05-06 17:53:42', '2021-05-06 20:53:42', '', 'vintage-791942_1920', '', 'inherit', 'open', 'closed', '', 'vintage-791942_1920', '', '', '2021-05-06 17:53:42', '2021-05-06 20:53:42', '', 50, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/vintage-791942_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2021-05-06 17:54:07', '2021-05-06 20:54:07', '', 'vintage-791942_1920-1', '', 'inherit', 'open', 'closed', '', 'vintage-791942_1920-1', '', '', '2021-05-06 17:54:07', '2021-05-06 20:54:07', '', 50, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/vintage-791942_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2021-05-06 17:55:13', '2021-05-06 20:55:13', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:quote {\"align\":\"left\"} -->\n<blockquote class=\"wp-block-quote has-text-align-left\"><p><em>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain.</em></p></blockquote>\n<!-- /wp:quote --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":75,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"http://localhost/cursoudemy/wp-content/uploads/2021/05/vintage-791942_1920-1-684x1024.jpg\" alt=\"\" class=\"wp-image-75\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Desenvolvimento Web - Post 1', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2021-05-06 17:55:13', '2021-05-06 20:55:13', '', 50, 'http://localhost/cursoudemy/?p=76', 0, 'revision', '', 0),
(78, 1, '2021-05-06 20:08:24', '2021-05-06 23:08:24', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"dropCap\":true,\"style\":{\"typography\":{\"fontSize\":15}}} -->\n<p class=\"has-drop-cap\" style=\"font-size:15px\">\"Wut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Desenvolvimento Web - Post 2', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2021-05-06 20:08:24', '2021-05-06 23:08:24', '', 52, 'http://localhost/cursoudemy/?p=78', 0, 'revision', '', 0),
(79, 1, '2021-05-06 20:09:24', '2021-05-06 23:09:24', '<!-- wp:paragraph -->\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur.</p>\n<!-- /wp:paragraph -->', 'Desenvolvimento Web - Post 1', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2021-05-06 20:09:24', '2021-05-06 23:09:24', '', 50, 'http://localhost/cursoudemy/?p=79', 0, 'revision', '', 0),
(80, 1, '2021-05-07 16:35:38', '2021-05-07 19:35:38', '', 'service-1', '', 'inherit', 'open', 'closed', '', 'service-1', '', '', '2021-05-07 16:35:38', '2021-05-07 19:35:38', '', 0, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/service-1.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2021-05-07 16:36:51', '2021-05-07 19:36:51', '', 'service-2', '', 'inherit', 'open', 'closed', '', 'service-2', '', '', '2021-05-07 16:36:51', '2021-05-07 19:36:51', '', 0, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/service-2.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2021-05-07 16:44:26', '2021-05-07 19:44:26', '', 'service-3', '', 'inherit', 'open', 'closed', '', 'service-3', '', '', '2021-05-07 16:44:26', '2021-05-07 19:44:26', '', 0, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/service-3.png', 0, 'attachment', 'image/png', 0),
(83, 1, '2021-05-10 18:05:03', '2021-05-10 21:05:03', '<!-- wp:embed {\"url\":\"https://www.youtube.com/watch?v=4LMu5oLrMTo\\u0026list=RDMMeVg0aWb-Ez8\\u0026index=6\\u0026ab_channel=bbno%24\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=4LMu5oLrMTo&amp;list=RDMMeVg0aWb-Ez8&amp;index=6&amp;ab_channel=bbno%24\n</div></figure>\n<!-- /wp:embed -->', 'BBNO$ lança sua nova musica!', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2021-05-10 18:05:03', '2021-05-10 21:05:03', '', 60, 'http://localhost/cursoudemy/?p=83', 0, 'revision', '', 0),
(84, 1, '2021-05-10 18:06:01', '2021-05-10 21:06:01', '<!-- wp:embed {\"url\":\"https://www.youtube.com/watch?v=-t473d1fH1A\\u0026ab_channel=bbno%24\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=-t473d1fH1A&amp;ab_channel=bbno%24\n</div></figure>\n<!-- /wp:embed -->', 'BBNO$ - slop prod. Y2K (OFFICIAL MUSIC VIDEO)', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2021-05-10 18:06:01', '2021-05-10 21:06:01', '', 58, 'http://localhost/cursoudemy/?p=84', 0, 'revision', '', 0),
(86, 1, '2021-05-10 18:08:21', '2021-05-10 21:08:21', '<!-- wp:embed {\"url\":\"https://www.youtube.com/watch?v=I6RVE0xYjoI\\u0026ab_channel=bbno%24\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=I6RVE0xYjoI&amp;ab_channel=bbno%24\n</div></figure>\n<!-- /wp:embed -->', 'bbno$ x diamond pistols - help herself', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2021-05-10 18:08:21', '2021-05-10 21:08:21', '', 60, 'http://localhost/cursoudemy/?p=86', 0, 'revision', '', 0),
(87, 1, '2021-05-10 18:13:38', '2021-05-10 21:13:38', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"dropCap\":true,\"style\":{\"typography\":{\"fontSize\":15}}} -->\n<p class=\"has-drop-cap\" style=\"font-size:15px\">\"Wut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Desenvolvimento Web - Como estudar ?', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2021-05-10 18:13:38', '2021-05-10 21:13:38', '', 52, 'http://localhost/cursoudemy/?p=87', 0, 'revision', '', 0),
(88, 1, '2021-05-10 18:14:00', '2021-05-10 21:14:00', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"dropCap\":true,\"style\":{\"typography\":{\"fontSize\":15}}} -->\n<p class=\"has-drop-cap\" style=\"font-size:15px\">\"Wut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Desenvolvimento Web - Dicas de como estudar!', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2021-05-10 18:14:00', '2021-05-10 21:14:00', '', 52, 'http://localhost/cursoudemy/?p=88', 0, 'revision', '', 0),
(89, 1, '2021-05-10 18:14:31', '2021-05-10 21:14:31', '<!-- wp:paragraph -->\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur.</p>\n<!-- /wp:paragraph -->', 'Desenvolvimento Web - Iniciante ao avançado.', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2021-05-10 18:14:31', '2021-05-10 21:14:31', '', 50, 'http://localhost/cursoudemy/?p=89', 0, 'revision', '', 0),
(90, 1, '2021-05-10 18:14:52', '2021-05-10 21:14:52', '<!-- wp:image {\"id\":49,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/cursoudemy/wp-content/uploads/2021/05/IMG_20210114_092537-1024x576.png\" alt=\"\" class=\"wp-image-49\"/></figure>\n<!-- /wp:image -->', 'Web Design - Lorem Ipsum.', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2021-05-10 18:14:52', '2021-05-10 21:14:52', '', 56, 'http://localhost/cursoudemy/?p=90', 0, 'revision', '', 0),
(91, 1, '2021-05-10 18:15:33', '2021-05-10 21:15:33', '<!-- wp:image {\"id\":49,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/cursoudemy/wp-content/uploads/2021/05/IMG_20210114_092537-1024x576.png\" alt=\"\" class=\"wp-image-49\"/></figure>\n<!-- /wp:image -->', 'Portfólio Web Design - Infinity.', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2021-05-10 18:15:33', '2021-05-10 21:15:33', '', 54, 'http://localhost/cursoudemy/?p=91', 0, 'revision', '', 0),
(92, 1, '2021-05-10 18:15:43', '2021-05-10 21:15:43', '<!-- wp:image {\"id\":49,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/cursoudemy/wp-content/uploads/2021/05/IMG_20210114_092537-1024x576.png\" alt=\"\" class=\"wp-image-49\"/></figure>\n<!-- /wp:image -->', 'Portfólio Web Design - Lorem Ipsum.', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2021-05-10 18:15:43', '2021-05-10 21:15:43', '', 56, 'http://localhost/cursoudemy/?p=92', 0, 'revision', '', 0);
INSERT INTO `wpcrs_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(93, 1, '2021-05-10 18:17:07', '2021-05-10 21:17:07', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->', 'HTML5, CSS & JS para iniciantes!', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-05-10 18:17:07', '2021-05-10 21:17:07', '', 23, 'http://localhost/cursoudemy/?p=93', 0, 'revision', '', 0),
(94, 1, '2021-05-10 18:17:24', '2021-05-10 21:17:24', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->', 'Como criar uma conta de sucesso ?', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-05-10 18:17:24', '2021-05-10 21:17:24', '', 21, 'http://localhost/cursoudemy/?p=94', 0, 'revision', '', 0),
(95, 1, '2021-05-10 18:34:07', '2021-05-10 21:34:07', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->', 'Como criar um portfólio ?', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2021-05-10 18:34:07', '2021-05-10 21:34:07', '', 18, 'http://localhost/cursoudemy/?p=95', 0, 'revision', '', 0),
(96, 1, '2021-05-10 20:06:08', '2021-05-10 23:06:08', '', 'board-453758_1920', '', 'inherit', 'open', 'closed', '', 'board-453758_1920', '', '', '2021-05-10 20:06:08', '2021-05-10 23:06:08', '', 56, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/board-453758_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2021-05-10 20:07:51', '2021-05-10 23:07:51', '<!-- wp:image {\"id\":49,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/cursoudemy/wp-content/uploads/2021/05/IMG_20210114_092537-1024x576.png\" alt=\"\" class=\"wp-image-49\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\n<!-- /wp:paragraph -->', 'Portfólio Web Design - Lorem Ipsum.', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2021-05-10 20:07:51', '2021-05-10 23:07:51', '', 56, 'http://localhost/cursoudemy/?p=98', 0, 'revision', '', 0),
(99, 1, '2021-05-10 21:46:16', '2021-05-11 00:46:16', '', 'ipad-606764_1920', '', 'inherit', 'open', 'closed', '', 'ipad-606764_1920', '', '', '2021-05-10 21:46:16', '2021-05-11 00:46:16', '', 54, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/ipad-606764_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2021-05-10 21:46:41', '2021-05-11 00:46:41', '<!-- wp:image {\"id\":49,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/cursoudemy/wp-content/uploads/2021/05/IMG_20210114_092537-1024x576.png\" alt=\"\" class=\"wp-image-49\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. </p>\n<!-- /wp:paragraph -->', 'Portfólio Web Design - Infinity.', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2021-05-10 21:46:41', '2021-05-11 00:46:41', '', 54, 'http://localhost/cursoudemy/?p=101', 0, 'revision', '', 0),
(102, 1, '2021-05-11 17:58:20', '2021-05-11 20:58:20', '', 'mobile-616012_1920', '', 'inherit', 'open', 'closed', '', 'mobile-616012_1920', '', '', '2021-05-11 17:58:20', '2021-05-11 20:58:20', '', 50, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/mobile-616012_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2021-02-13 13:29:10', '2021-02-13 16:29:10', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nisi sed sollicitudin pellentesque. Nunc posuere purus rhoncus pulvinar aliquam. Ut aliquet tristique nisl vitae volutpat. Nulla aliquet porttitor venenatis. Donec a dui et dui fringilla consectetur id nec massa.&nbsp;</p>\n<!-- /wp:paragraph -->', 'Post - 010', '', 'publish', 'open', 'open', '', 'post-010', '', '', '2021-05-14 15:08:08', '2021-05-14 18:08:08', '', 0, 'http://localhost/cursoudemy/?p=103', 0, 'post', '', 0),
(104, 1, '2021-05-13 13:29:10', '2021-05-13 16:29:10', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nisi sed sollicitudin pellentesque. Nunc posuere purus rhoncus pulvinar aliquam. Ut aliquet tristique nisl vitae volutpat. Nulla aliquet porttitor venenatis. Donec a dui et dui fringilla consectetur id nec massa. </p>\n<!-- /wp:paragraph -->', 'Post - 010', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2021-05-13 13:29:10', '2021-05-13 16:29:10', '', 103, 'http://localhost/cursoudemy/?p=104', 0, 'revision', '', 0),
(105, 1, '2021-05-13 13:31:08', '2021-05-13 16:31:08', '<!-- wp:paragraph -->\n<p>Aliquam erat volutpat. Sed ut dui ut lacus dictum fermentum vel tincidunt neque. Sed sed lacinia lectus. Duis sit amet sodales felis. Duis nunc eros, mattis at dui ac, convallis semper risus. In adipiscing ultrices tellus, in suscipit massa vehicula eu.</p>\n<!-- /wp:paragraph -->', 'Post - 011', '', 'publish', 'open', 'open', '', 'post-011', '', '', '2021-05-14 14:58:02', '2021-05-14 17:58:02', '', 0, 'http://localhost/cursoudemy/?p=105', 0, 'post', '', 0),
(106, 1, '2021-05-13 13:31:08', '2021-05-13 16:31:08', '<!-- wp:paragraph -->\n<p>Aliquam erat volutpat. Sed ut dui ut lacus dictum fermentum vel tincidunt neque. Sed sed lacinia lectus. Duis sit amet sodales felis. Duis nunc eros, mattis at dui ac, convallis semper risus. In adipiscing ultrices tellus, in suscipit massa vehicula eu.</p>\n<!-- /wp:paragraph -->', 'Post - 011', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2021-05-13 13:31:08', '2021-05-13 16:31:08', '', 105, 'http://localhost/cursoudemy/?p=106', 0, 'revision', '', 0),
(107, 1, '2021-05-13 14:35:51', '2021-05-13 17:35:51', '<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\n<!-- /wp:paragraph -->', 'Portfólio Web Design - Lorem Ipsum.', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2021-05-13 14:35:51', '2021-05-13 17:35:51', '', 56, 'http://localhost/cursoudemy/?p=107', 0, 'revision', '', 0),
(108, 1, '2021-05-14 14:17:40', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-14 14:17:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/cursoudemy/?post_type=acf-field-group&p=108', 0, 'acf-field-group', '', 0),
(109, 1, '2021-05-14 15:04:00', '2021-05-14 18:04:00', '<!-- wp:image {\"id\":49,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/cursoudemy/wp-content/uploads/2021/05/IMG_20210114_092537-1024x576.png\" alt=\"\" class=\"wp-image-49\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.&nbsp;</p>\n<!-- /wp:paragraph -->', 'Portfólio Web Design - Infinity.', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2021-05-14 15:04:00', '2021-05-14 18:04:00', '', 54, 'http://localhost/cursoudemy/?p=109', 0, 'revision', '', 0),
(110, 1, '2021-05-14 15:08:08', '2021-05-14 18:08:08', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nisi sed sollicitudin pellentesque. Nunc posuere purus rhoncus pulvinar aliquam. Ut aliquet tristique nisl vitae volutpat. Nulla aliquet porttitor venenatis. Donec a dui et dui fringilla consectetur id nec massa.&nbsp;</p>\n<!-- /wp:paragraph -->', 'Post - 010', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2021-05-14 15:08:08', '2021-05-14 18:08:08', '', 103, 'http://localhost/cursoudemy/?p=110', 0, 'revision', '', 0),
(111, 1, '2021-05-14 16:17:19', '2021-05-14 19:17:19', '<label> Seu nome\r\n    [text* your-name placeholder \"Nome\"] </label>\r\n\r\n<label> Seu e-mail\r\n    [email* your-email placeholder \"E-mail\"] </label>\r\n\r\n<label> Assunto\r\n    [text* your-subject placeholder \"Assunto\"] </label>\r\n\r\n<label> Sua mensagem (opcional)\r\n    [textarea your-message placeholder \"Mensagem\"] </label>\r\n\r\n[submit \"Enviar\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <luizsantanak@gmail.com>\n[_site_admin_email]\nDe: [your-name] <[your-email]>\r\nAssunto: [your-subject]\r\n\r\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <luizsantanak@gmail.com>\n[your-email]\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nAgradecemos a sua mensagem.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nUm ou mais campos possuem um erro. Verifique e tente novamente.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nVocê deve aceitar os termos e condições antes de enviar sua mensagem.\nO campo é obrigatório.\nO campo é muito longo.\nO campo é muito curto.\nOcorreu um erro desconhecido ao enviar o arquivo.\nVocê não tem permissão para enviar esse tipo de arquivo.\nO arquivo é muito grande.\nOcorreu um erro ao enviar o arquivo.\nO formato de data está incorreto.\nA data é anterior à mais antiga permitida.\nA data é posterior à maior data permitida.\nO formato de número é inválido.\nO número é menor do que o mínimo permitido.\nO número é maior do que o máximo permitido.\nA resposta para o quiz está incorreta.\nO endereço de e-mail informado é inválido.\nA URL é inválida.\nO número de telefone é inválido.', 'Formulário do Contato', '', 'publish', 'closed', 'closed', '', 'formulario-da-sidebar_copy', '', '', '2021-05-14 16:40:39', '2021-05-14 19:40:39', '', 0, 'http://localhost/cursoudemy/?post_type=wpcf7_contact_form&#038;p=111', 0, 'wpcf7_contact_form', '', 0),
(112, 1, '2021-05-14 16:41:01', '2021-05-14 19:41:01', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:contact-form-7/contact-form-selector {\"id\":111,\"title\":\"Formulário do Contato\"} -->\n<div class=\"wp-block-contact-form-7-contact-form-selector\">[contact-form-7 id=\"111\" title=\"Formulário do Contato\"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->\n\n<!-- wp:paragraph -->\n<p>Ao contrário do que se acredita, Lorem Ipsum não é simplesmente um texto randômico. Com mais de 2000 anos, suas raízes podem ser encontradas em uma obra de literatura latina clássica datada de 45 AC. Richard McClintock, um professor de latim do Hampden-Sydney College na Virginia, pesquisou uma das mais obscuras palavras em latim, consectetur, oriunda de uma passagem de Lorem Ipsum, e, procurando por entre citações da palavra na literatura clássica, descobriu a sua indubitável origem. Lorem Ipsum vem das seções 1.10.32 e 1.10.33 do \"de Finibus Bonorum et Malorum\" (Os Extremos do Bem e do Mal), de Cícero, escrito em 45 AC. Este livro é um tratado de teoria da ética muito popular na época da Renascença. A primeira linha de Lorem Ipsum, \"Lorem Ipsum dolor sit amet...\" vem de uma linha na seção 1.10.32.</p>\n<!-- /wp:paragraph -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-05-14 16:41:01', '2021-05-14 19:41:01', '', 12, 'http://localhost/cursoudemy/?p=112', 0, 'revision', '', 0),
(113, 1, '2021-05-14 17:29:58', '2021-05-14 20:29:58', '{\n    \"curso::set_address\": {\n        \"value\": \"<iframe src=\\\"https://www.google.com/maps/embed?pb=\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"></iframe>\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-14 20:29:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6fe167c3-8fbb-4f46-a353-9fe7dde1ae07', '', '', '2021-05-14 17:29:58', '2021-05-14 20:29:58', '', 0, 'http://localhost/cursoudemy/2021/05/14/6fe167c3-8fbb-4f46-a353-9fe7dde1ae07/', 0, 'customize_changeset', '', 0),
(114, 1, '2021-05-14 17:30:57', '2021-05-14 20:30:57', '{\n    \"curso::set_address\": {\n        \"value\": \"!1m18!1m12!1m3!1d3657.195696784533!2d-46.6558819!3d-23.561414!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce59ceb1eb771f%3A0xe904f6a669744da1!2sMuseu%20de%20Arte%20de%20S%C3%A3o%20Paulo%20Assis%20Chateaubriand!5e0!3m2!1spt-BR!2sbr!4v1621024165065!5m2!1spt-BR!2sbr\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-14 20:30:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a45abc67-c6ee-4c15-ace9-55aa44319ea4', '', '', '2021-05-14 17:30:57', '2021-05-14 20:30:57', '', 0, 'http://localhost/cursoudemy/2021/05/14/a45abc67-c6ee-4c15-ace9-55aa44319ea4/', 0, 'customize_changeset', '', 0),
(115, 1, '2021-05-17 15:16:19', '2021-05-17 18:16:19', '{\n    \"curso::set_copyright\": {\n        \"value\": \"Copyright 2021 - All rights reserved\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-17 18:16:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '54a74b15-c38d-4863-8182-361f76d6187a', '', '', '2021-05-17 15:16:19', '2021-05-17 18:16:19', '', 0, 'http://localhost/cursoudemy/2021/05/17/54a74b15-c38d-4863-8182-361f76d6187a/', 0, 'customize_changeset', '', 0),
(116, 1, '2021-05-17 15:24:05', '2021-05-17 18:24:05', 'http://localhost/cursoudemy/wp-content/uploads/2021/05/cropped-IMG_20210114_092537.png', 'cropped-IMG_20210114_092537.png', '', 'inherit', 'open', 'closed', '', 'cropped-img_20210114_092537-png', '', '', '2021-05-17 15:24:05', '2021-05-17 18:24:05', '', 0, 'http://localhost/cursoudemy/wp-content/uploads/2021/05/cropped-IMG_20210114_092537.png', 0, 'attachment', 'image/png', 0),
(117, 1, '2021-05-17 15:24:14', '2021-05-17 18:24:14', '{\n    \"curso::custom_logo\": {\n        \"value\": 116,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-17 18:24:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bb847d75-af2a-43e0-baf1-8e95908865d9', '', '', '2021-05-17 15:24:14', '2021-05-17 18:24:14', '', 0, 'http://localhost/cursoudemy/2021/05/17/bb847d75-af2a-43e0-baf1-8e95908865d9/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpcrs_termmeta`
--

CREATE TABLE `wpcrs_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpcrs_terms`
--

CREATE TABLE `wpcrs_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wpcrs_terms`
--

INSERT INTO `wpcrs_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(3, 'photoshop', 'photoshop', 0),
(4, 'adobe', 'adobe', 0),
(5, 'Facebook', 'facebook', 0),
(6, 'twitter', 'twitter', 0),
(7, 'algoritmo', 'algoritmo', 0),
(8, 'php', 'php', 0),
(9, 'Web Design', 'web-design', 0),
(10, 'Midia Social', 'midia-social', 0),
(11, 'Desenvolvimento Web', 'desenvolvimento-web', 0),
(12, 'Menu Topo', 'menu-topo', 0),
(13, 'post-format-image', 'post-format-image', 0),
(14, 'post-format-video', 'post-format-video', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpcrs_term_relationships`
--

CREATE TABLE `wpcrs_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wpcrs_term_relationships`
--

INSERT INTO `wpcrs_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 3, 0),
(18, 4, 0),
(18, 9, 0),
(21, 5, 0),
(21, 6, 0),
(21, 10, 0),
(23, 7, 0),
(23, 8, 0),
(23, 11, 0),
(27, 12, 0),
(28, 12, 0),
(29, 12, 0),
(30, 12, 0),
(50, 11, 0),
(52, 11, 0),
(54, 9, 0),
(54, 13, 0),
(56, 9, 0),
(56, 13, 0),
(58, 10, 0),
(58, 14, 0),
(60, 10, 0),
(60, 14, 0),
(103, 1, 0),
(105, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpcrs_term_taxonomy`
--

CREATE TABLE `wpcrs_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wpcrs_term_taxonomy`
--

INSERT INTO `wpcrs_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(3, 3, 'post_tag', '', 0, 1),
(4, 4, 'post_tag', '', 0, 1),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'category', 'Posts sobre o tema Web Design\r\n', 0, 3),
(10, 10, 'category', 'Posts sobre o tema Midia Social', 0, 3),
(11, 11, 'category', 'Posts sobre o tema Desenvolvimento Web\r\n', 0, 3),
(12, 12, 'nav_menu', '', 0, 4),
(13, 13, 'post_format', '', 0, 2),
(14, 14, 'post_format', '', 0, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpcrs_usermeta`
--

CREATE TABLE `wpcrs_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wpcrs_usermeta`
--

INSERT INTO `wpcrs_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Kochinski'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wpcrs_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wpcrs_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"8f16f6ec49f5320e6b1f47a3fc73ebae74b0eeec1959575911daf6b1053066eb\";a:4:{s:10:\"expiration\";i:1622234625;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\";s:5:\"login\";i:1621025025;}}'),
(17, 1, 'wpcrs_dashboard_quick_press_last_post_id', '77'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '12'),
(21, 1, 'wpcrs_user-settings', 'libraryContent=browse&editor=tinymce&widgets_access=off&unfold=1&mfold=o'),
(22, 1, 'wpcrs_user-settings-time', '1620927236'),
(23, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:23:\"submitdiv,pageparentdiv\";s:6:\"normal\";s:46:\"commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(24, 1, 'screen_layout_page', '2'),
(25, 1, 'closedpostboxes_page', 'a:0:{}'),
(26, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(27, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"5.4\";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpcrs_users`
--

CREATE TABLE `wpcrs_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wpcrs_users`
--

INSERT INTO `wpcrs_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Kochinski', '$P$BKa4q9PMGqr7iX.fQrqCj6sNGwsrQ1/', 'kochinski', 'luizsantanak@gmail.com', 'http://localhost/cursoudemy', '2021-04-28 00:19:29', '', 0, 'Kochinski');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `wpcrs_commentmeta`
--
ALTER TABLE `wpcrs_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wpcrs_comments`
--
ALTER TABLE `wpcrs_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices para tabela `wpcrs_links`
--
ALTER TABLE `wpcrs_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `wpcrs_options`
--
ALTER TABLE `wpcrs_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices para tabela `wpcrs_postmeta`
--
ALTER TABLE `wpcrs_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wpcrs_posts`
--
ALTER TABLE `wpcrs_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices para tabela `wpcrs_termmeta`
--
ALTER TABLE `wpcrs_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wpcrs_terms`
--
ALTER TABLE `wpcrs_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices para tabela `wpcrs_term_relationships`
--
ALTER TABLE `wpcrs_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices para tabela `wpcrs_term_taxonomy`
--
ALTER TABLE `wpcrs_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices para tabela `wpcrs_usermeta`
--
ALTER TABLE `wpcrs_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wpcrs_users`
--
ALTER TABLE `wpcrs_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wpcrs_commentmeta`
--
ALTER TABLE `wpcrs_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wpcrs_comments`
--
ALTER TABLE `wpcrs_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wpcrs_links`
--
ALTER TABLE `wpcrs_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wpcrs_options`
--
ALTER TABLE `wpcrs_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=591;

--
-- AUTO_INCREMENT de tabela `wpcrs_postmeta`
--
ALTER TABLE `wpcrs_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT de tabela `wpcrs_posts`
--
ALTER TABLE `wpcrs_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT de tabela `wpcrs_termmeta`
--
ALTER TABLE `wpcrs_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wpcrs_terms`
--
ALTER TABLE `wpcrs_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `wpcrs_term_taxonomy`
--
ALTER TABLE `wpcrs_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `wpcrs_usermeta`
--
ALTER TABLE `wpcrs_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `wpcrs_users`
--
ALTER TABLE `wpcrs_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

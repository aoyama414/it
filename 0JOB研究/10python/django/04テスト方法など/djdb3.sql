-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1:33060
-- 生成日時: 2020-12-28 06:53:38
-- サーバのバージョン： 5.7.31-log
-- PHP のバージョン: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `djdb3`
--
DROP DATABASE IF EXISTS `djdb3`;
CREATE DATABASE IF NOT EXISTS `djdb3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `djdb3`;

-- --------------------------------------------------------

--
-- テーブルの構造 `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `account_emailaddress`
--

INSERT INTO `account_emailaddress` (`id`, `email`, `verified`, `primary`, `user_id`) VALUES
(1, 'aoyama414@gmail.com', 0, 0, '137ea991d78f47e48c0ec667e3333b4e');

-- --------------------------------------------------------

--
-- テーブルの構造 `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add user', 1, 'add_user'),
(2, 'Can change user', 1, 'change_user'),
(3, 'Can delete user', 1, 'delete_user'),
(4, 'Can view user', 1, 'view_user'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add site', 7, 'add_site'),
(26, 'Can change site', 7, 'change_site'),
(27, 'Can delete site', 7, 'delete_site'),
(28, 'Can view site', 7, 'view_site'),
(29, 'Can add email address', 8, 'add_emailaddress'),
(30, 'Can change email address', 8, 'change_emailaddress'),
(31, 'Can delete email address', 8, 'delete_emailaddress'),
(32, 'Can view email address', 8, 'view_emailaddress'),
(33, 'Can add email confirmation', 9, 'add_emailconfirmation'),
(34, 'Can change email confirmation', 9, 'change_emailconfirmation'),
(35, 'Can delete email confirmation', 9, 'delete_emailconfirmation'),
(36, 'Can view email confirmation', 9, 'view_emailconfirmation'),
(37, 'Can add social account', 10, 'add_socialaccount'),
(38, 'Can change social account', 10, 'change_socialaccount'),
(39, 'Can delete social account', 10, 'delete_socialaccount'),
(40, 'Can view social account', 10, 'view_socialaccount'),
(41, 'Can add social application', 11, 'add_socialapp'),
(42, 'Can change social application', 11, 'change_socialapp'),
(43, 'Can delete social application', 11, 'delete_socialapp'),
(44, 'Can view social application', 11, 'view_socialapp'),
(45, 'Can add social application token', 12, 'add_socialtoken'),
(46, 'Can change social application token', 12, 'change_socialtoken'),
(47, 'Can delete social application token', 12, 'delete_socialtoken'),
(48, 'Can view social application token', 12, 'view_socialtoken'),
(49, 'Can add profile', 13, 'add_profile'),
(50, 'Can change profile', 13, 'change_profile'),
(51, 'Can delete profile', 13, 'delete_profile'),
(52, 'Can view profile', 13, 'view_profile');

-- --------------------------------------------------------

--
-- テーブルの構造 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-12-16 00:32:33.804615', '137ea991-d78f-47e4-8c0e-c667e3333b4e', 'aoyama414@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Last name\", \"First name\", \"User permissions\"]}}]', 1, '137ea991d78f47e48c0ec667e3333b4e'),
(2, '2020-12-17 22:08:12.563609', '1', '127.0.0.1:8000', 2, '[{\"changed\": {\"fields\": [\"Domain name\", \"Display name\"]}}]', 7, '137ea991d78f47e48c0ec667e3333b4e'),
(3, '2020-12-23 00:10:20.344087', '1', 'aoyama', 2, '[{\"changed\": {\"fields\": [\"Sites\"]}}]', 11, '137ea991d78f47e48c0ec667e3333b4e');

-- --------------------------------------------------------

--
-- テーブルの構造 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(8, 'account', 'emailaddress'),
(9, 'account', 'emailconfirmation'),
(2, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'sites', 'site'),
(10, 'socialaccount', 'socialaccount'),
(11, 'socialaccount', 'socialapp'),
(12, 'socialaccount', 'socialtoken'),
(13, 'users', 'profile'),
(1, 'users', 'user');

-- --------------------------------------------------------

--
-- テーブルの構造 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-12-15 22:38:45.096268'),
(2, 'contenttypes', '0002_remove_content_type_name', '2020-12-15 22:38:46.682371'),
(3, 'auth', '0001_initial', '2020-12-15 22:38:49.067311'),
(4, 'auth', '0002_alter_permission_name_max_length', '2020-12-15 22:38:53.914680'),
(5, 'auth', '0003_alter_user_email_max_length', '2020-12-15 22:38:54.000942'),
(6, 'auth', '0004_alter_user_username_opts', '2020-12-15 22:38:54.057886'),
(7, 'auth', '0005_alter_user_last_login_null', '2020-12-15 22:38:54.108915'),
(8, 'auth', '0006_require_contenttypes_0002', '2020-12-15 22:38:54.159795'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2020-12-15 22:38:54.209447'),
(10, 'auth', '0008_alter_user_username_max_length', '2020-12-15 22:38:54.264477'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2020-12-15 22:38:54.320443'),
(12, 'auth', '0010_alter_group_name_max_length', '2020-12-15 22:38:54.518216'),
(13, 'auth', '0011_update_proxy_permissions', '2020-12-15 22:38:54.599187'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2020-12-15 22:38:54.656182'),
(15, 'users', '0001_initial', '2020-12-15 22:38:56.146099'),
(16, 'admin', '0001_initial', '2020-12-15 22:39:09.204741'),
(17, 'admin', '0002_logentry_remove_auto_add', '2020-12-15 22:39:13.979754'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2020-12-15 22:39:14.052027'),
(19, 'sessions', '0001_initial', '2020-12-15 22:39:14.704422'),
(20, 'sites', '0001_initial', '2020-12-15 22:39:15.859527'),
(21, 'sites', '0002_alter_domain_unique', '2020-12-15 22:39:16.941664'),
(22, 'account', '0001_initial', '2020-12-22 23:12:18.813902'),
(23, 'account', '0002_email_max_length', '2020-12-22 23:12:21.152390'),
(24, 'socialaccount', '0001_initial', '2020-12-22 23:12:24.134156'),
(25, 'socialaccount', '0002_token_max_lengths', '2020-12-22 23:12:30.603675'),
(26, 'socialaccount', '0003_extra_data_default_dict', '2020-12-22 23:12:30.708308'),
(28, 'users', '0002_profile', '2020-12-28 04:07:02.354074');

-- --------------------------------------------------------

--
-- テーブルの構造 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1m7bf734e87zdz8bgp5lrz97zvz9grrj', '.eJxVjUsOgzAMRO-SdYkSEuK4y-57BuTYpvQjkPisqt69ILFoZzvvzbxNS-vSt-usU3sXczY-gBKirwRyV0XQWGV2WnFKoGFLiWpOv1ohfuqwu_Kg4TZaHodluhe7I_ZoZ3sdRV-Xg_0b6GnuNzs3DrK4gK6UJArEwrUrUqfIdUS_XWf2XVIS7KLz0UNDgKFRhxjAm88X13dAZQ:1kr9FA:AaQPd8HPXm4RBDpuzQOgQKwaAXQc5esbWzLH7wDg6wU', '2021-01-04 00:40:08.998517'),
('1xhksq9si10tyxrjr5q2la89jziltq1y', '.eJxVjUsOgzAMRO-SdYkSEuK4y-57BuTYpvQjkPisqt69ILFoZzvvzbxNS-vSt-usU3sXczY-gBKirwRyV0XQWGV2WnFKoGFLiWpOv1ohfuqwu_Kg4TZaHodluhe7I_ZoZ3sdRV-Xg_0b6GnuNzs3DrK4gK6UJArEwrUrUqfIdUS_XWf2XVIS7KLz0UNDgKFRhxjAm88X13dAZQ:1kpOxC:d9L-Taf-8P_f1XmEcp-a8fORlXkvBHnPYWBB8u89hZo', '2020-12-30 05:02:22.867186'),
('5qhaawisagrir81l4q80b9bg34i7guys', '.eJxVjUsOgzAMRO-SdYkSEuK4y-57BuTYpvQjkPisqt69ILFoZzvvzbxNS-vSt-usU3sXczY-gBKirwRyV0XQWGV2WnFKoGFLiWpOv1ohfuqwu_Kg4TZaHodluhe7I_ZoZ3sdRV-Xg_0b6GnuNzs3DrK4gK6UJArEwrUrUqfIdUS_XWf2XVIS7KLz0UNDgKFRhxjAm88X13dAZQ:1kphba:5V6zmGOIz3XdeAzScP5U7RMYgFYj_SjxJMWmkve-02c', '2020-12-31 00:57:18.873966'),
('5z5xutkgnpbdhqcvclbb4to9m3pokmz1', '.eJxVjUsOgzAMRO-SdYkSEuK4y-57BuTYpvQjkPisqt69ILFoZzvvzbxNS-vSt-usU3sXczY-gBKirwRyV0XQWGV2WnFKoGFLiWpOv1ohfuqwu_Kg4TZaHodluhe7I_ZoZ3sdRV-Xg_0b6GnuNzs3DrK4gK6UJArEwrUrUqfIdUS_XWf2XVIS7KLz0UNDgKFRhxjAm88X13dAZQ:1kquGn:81zbfUfG9Fq0mAa4JC7whAQLAEG-YWujwyLnrLJ5baY', '2021-01-03 08:40:49.332167'),
('6easm450iqazwbvvrmstitkqg00r0fpo', '.eJxVjUsOgzAMRO-SdYkSEuK4y-57BuTYpvQjkPisqt69ILFoZzvvzbxNS-vSt-usU3sXczY-gBKirwRyV0XQWGV2WnFKoGFLiWpOv1ohfuqwu_Kg4TZaHodluhe7I_ZoZ3sdRV-Xg_0b6GnuNzs3DrK4gK6UJArEwrUrUqfIdUS_XWf2XVIS7KLz0UNDgKFRhxjAm88X13dAZQ:1kq6rH:_8Nd91F6RrG_ziC-JGqY_3kpyAU08ah4YlsDQ-viv30', '2021-01-01 03:55:11.285286'),
('7uu9u9ctoyxhkvsyb66lxhv4ozqxueuc', '.eJxVjUsOgzAMRO-SdYkSEuK4y-57BuTYpvQjkPisqt69ILFoZzvvzbxNS-vSt-usU3sXczY-gBKirwRyV0XQWGV2WnFKoGFLiWpOv1ohfuqwu_Kg4TZaHodluhe7I_ZoZ3sdRV-Xg_0b6GnuNzs3DrK4gK6UJArEwrUrUqfIdUS_XWf2XVIS7KLz0UNDgKFRhxjAm88X13dAZQ:1kquGB:ey6SM__H_4d0sw4k2mWMs7OdodUIgAP7DIqPSzna42I', '2021-01-03 08:40:11.916528'),
('8lgteqh00hf247rv4a9g5obwvisj4b9z', '.eJxVjUsOgzAMRO-SdYkSEuK4y-57BuTYpvQjkPisqt69ILFoZzvvzbxNS-vSt-usU3sXczY-gBKirwRyV0XQWGV2WnFKoGFLiWpOv1ohfuqwu_Kg4TZaHodluhe7I_ZoZ3sdRV-Xg_0b6GnuNzs3DrK4gK6UJArEwrUrUqfIdUS_XWf2XVIS7KLz0UNDgKFRhxjAm88X13dAZQ:1kq2Xm:BDZmNmpBsNk7mKYicrlsQLCcK9attf5d9zhZEX5vwHM', '2020-12-31 23:18:46.323605'),
('962749x1uw05xmshwgqte89tcrxv9aty', '.eJxVjUsOgzAMRO-SdYkSEuK4y-57BuTYpvQjkPisqt69ILFoZzvvzbxNS-vSt-usU3sXczY-gBKirwRyV0XQWGV2WnFKoGFLiWpOv1ohfuqwu_Kg4TZaHodluhe7I_ZoZ3sdRV-Xg_0b6GnuNzs3DrK4gK6UJArEwrUrUqfIdUS_XWf2XVIS7KLz0UNDgKFRhxjAm88X13dAZQ:1kq1Uo:_KPpKpkaMRIqIMTZd9wogaTRkQVmFV0pq0hZvznHc2Y', '2020-12-31 22:11:38.697981'),
('dofeqii4o800177hh44zyriet2p175vs', '.eJxVjUsOgzAMRO-SdYkSEuK4y-57BuTYpvQjkPisqt69ILFoZzvvzbxNS-vSt-usU3sXczY-gBKirwRyV0XQWGV2WnFKoGFLiWpOv1ohfuqwu_Kg4TZaHodluhe7I_ZoZ3sdRV-Xg_0b6GnuNzs3DrK4gK6UJArEwrUrUqfIdUS_XWf2XVIS7KLz0UNDgKFRhxjAm88X13dAZQ:1kq202:4NJC4sdIbk2-3K7byg-FcwdSi9zl3Tc-v-nmDH2eMkU', '2020-12-31 22:43:54.375467'),
('etlzm60o5aohp8g447qxe51ks4twvkwf', '.eJxVjUsOgzAMRO-SdYkSEuK4y-57BuTYpvQjkPisqt69ILFoZzvvzbxNS-vSt-usU3sXczY-gBKirwRyV0XQWGV2WnFKoGFLiWpOv1ohfuqwu_Kg4TZaHodluhe7I_ZoZ3sdRV-Xg_0b6GnuNzs3DrK4gK6UJArEwrUrUqfIdUS_XWf2XVIS7KLz0UNDgKFRhxjAm88X13dAZQ:1kphY0:eXJjYL80OeyW853TwrhEglDQ5eRg-ic5iYH_tFvuYKU', '2020-12-31 00:53:36.936242'),
('fbavzll0zrz2dh4b46l6mlh6cu3jlhxs', '.eJxVjUsOgzAMRO-SdYkSEuK4y-57BuTYpvQjkPisqt69ILFoZzvvzbxNS-vSt-usU3sXczY-gBKirwRyV0XQWGV2WnFKoGFLiWpOv1ohfuqwu_Kg4TZaHodluhe7I_ZoZ3sdRV-Xg_0b6GnuNzs3DrK4gK6UJArEwrUrUqfIdUS_XWf2XVIS7KLz0UNDgKFRhxjAm88X13dAZQ:1kq2iO:CUKVL292ZR7gZVVq0gGjXHrlSCfABsg_ZYmh0oN2p1A', '2020-12-31 23:29:44.201752'),
('hrw0zmrjgjhqaf7cxhbudek6o25b6ob1', '.eJxVjUsOgzAMRO-SdYkSEuK4y-57BuTYpvQjkPisqt69ILFoZzvvzbxNS-vSt-usU3sXczY-gBKirwRyV0XQWGV2WnFKoGFLiWpOv1ohfuqwu_Kg4TZaHodluhe7I_ZoZ3sdRV-Xg_0b6GnuNzs3DrK4gK6UJArEwrUrUqfIdUS_XWf2XVIS7KLz0UNDgKFRhxjAm88X13dAZQ:1kq2UD:0jlcO--ddHs9eE-4NW3YA6nOy8DAF502YgapEVXzEqY', '2020-12-31 23:15:05.878808'),
('im16ai6ncth5vu8czro3pjpbz0sv162n', '.eJxVjDkOwjAUBe_iGlsx3inpOUP0N5MASqQsFeLuJFIKeO3MvLdqYV26dp1lantWF2VdEijFak65ap_E60yNaIoxiduGXtTpN0Ogpwx7yw8Y7qOhcVimHs2umIPO5jayvK6H-3fQwdxtNQKkSCE5rD6xDSF57wAKEVZwwJEtEObCUCo3cC7oqGAOTbDeilT1-QIKKkI9:1krAiC:IuPUBqoyq7qBl48O4JjswPAweoOIMjFOkbrm-_oHOfs', '2021-01-04 02:14:12.007907'),
('m51nb187plfbnwqn267mlp6frvmztdge', '.eJxVjUsOgzAMRO-SdYkSEuK4y-57BuTYpvQjkPisqt69ILFoZzvvzbxNS-vSt-usU3sXczY-gBKirwRyV0XQWGV2WnFKoGFLiWpOv1ohfuqwu_Kg4TZaHodluhe7I_ZoZ3sdRV-Xg_0b6GnuNzs3DrK4gK6UJArEwrUrUqfIdUS_XWf2XVIS7KLz0UNDgKFRhxjAm88X13dAZQ:1kpJ0h:J3B0rx4F3vXwdMqPdFrkueYgyeRWgdQr3WpxbhZIk8c', '2020-12-29 22:41:35.898201'),
('n98zihskf47rf50xczt7j0rquv6mm4e4', '.eJxVjEsOgzAMBe-SdYMSYuyky-57BuQ4pvQjkPisqt69ILFo33Zm3tu0vC59u846tfdizsYHUk7J20Kxs0AKNopTK4ikYVsGNaffLLM8ddjb8uDhNlYyDst0z9WuVAedq-tY9HU53L-Dnud-q12jvhboYmAMhSkTKgStvSNsiBUQOTc-CAhQpIKUGgmopU7oioD5fAHKGUBw:1ktjgM:2ozLYHwG2czscsHS7Z9gVUTBXs_7zqeqYOeAYo2S4zQ', '2021-01-11 03:58:54.473966'),
('oev078do5zr3hbbjm3pr61lv003vvslf', '.eJxVjUsOgzAMRO-SdYkSEuK4y-57BuTYpvQjkPisqt69ILFoZzvvzbxNS-vSt-usU3sXczY-gBKirwRyV0XQWGV2WnFKoGFLiWpOv1ohfuqwu_Kg4TZaHodluhe7I_ZoZ3sdRV-Xg_0b6GnuNzs3DrK4gK6UJArEwrUrUqfIdUS_XWf2XVIS7KLz0UNDgKFRhxjAm88X13dAZQ:1kq6hC:4czchc22LLEZ5j8mIggnGBcLcEX553HxKwKhw7mdc3Q', '2021-01-01 03:44:46.159853'),
('os24mrn24vo5jsh68djyuxupdpkoim7w', '.eJxVjUsOgzAMRO-SdYkSEuK4y-57BuTYpvQjkPisqt69ILFoZzvvzbxNS-vSt-usU3sXczY-gBKirwRyV0XQWGV2WnFKoGFLiWpOv1ohfuqwu_Kg4TZaHodluhe7I_ZoZ3sdRV-Xg_0b6GnuNzs3DrK4gK6UJArEwrUrUqfIdUS_XWf2XVIS7KLz0UNDgKFRhxjAm88X13dAZQ:1kqAD2:W683Znkc-XmIJrb5bNDJKsGkNffcXCCPBCBrA7-Ioxg', '2021-01-01 07:29:52.724776'),
('qb2f4u7ldpr8ivjmhr3d8ccwarlxhebf', '.eJxVjUsOgzAMRO-SdYkSEuK4y-57BuTYpvQjkPisqt69ILFoZzvvzbxNS-vSt-usU3sXczY-gBKirwRyV0XQWGV2WnFKoGFLiWpOv1ohfuqwu_Kg4TZaHodluhe7I_ZoZ3sdRV-Xg_0b6GnuNzs3DrK4gK6UJArEwrUrUqfIdUS_XWf2XVIS7KLz0UNDgKFRhxjAm88X13dAZQ:1kqAdv:gdZPkpgsaTuHlDV9ovE8XIij_ZEL8llnLj4IZMj4M28', '2021-01-01 07:57:39.231103'),
('qchme8hv02w5lg3ec0m9c1wwj3cbb0yh', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZmEwZ2gtZDZiM2IzMjA0MWYzMmVjM2U1YWRiMjgwYWRkYTRhYTMifQ:1krVoV:yToCwRW-YM2jAmxImkzHR6u9eeFnix1FaVKDQvmE9qo', '2021-01-05 00:46:07.279829'),
('rrx1k38du8s34x3hgl0uxirw1ogjwjcb', '.eJxVjUsOgzAMRO-SdYkSEuK4y-57BuTYpvQjkPisqt69ILFoZzvvzbxNS-vSt-usU3sXczY-gBKirwRyV0XQWGV2WnFKoGFLiWpOv1ohfuqwu_Kg4TZaHodluhe7I_ZoZ3sdRV-Xg_0b6GnuNzs3DrK4gK6UJArEwrUrUqfIdUS_XWf2XVIS7KLz0UNDgKFRhxjAm88X13dAZQ:1kphjQ:IiY7Uhl2ZrHP5NEe47WkQWTGto1E0GAJ9eYsQLVxEsU', '2020-12-31 01:05:24.487625'),
('ul7pw7v08npadagsdr0ytuq3tesjr2hw', 'eyJzb2NpYWxhY2NvdW50X3N0YXRlIjpbeyJwcm9jZXNzIjoibG9naW4iLCJzY29wZSI6IiIsImF1dGhfcGFyYW1zIjoiIn0sIkVvMjFid2pQZ1NRcCJdfQ:1krrlR:yqc9LYXM_k3FTPKxl-IkV1JG0_P6a58MXOSG-ZG5BmQ', '2021-01-06 00:12:25.066858'),
('vqhv4iwq0vabvvdh7s6lj5thyaawcu87', '.eJxVjEsOgzAMBe-SdYMSYuyky-57BuQ4pvQjkPisqt69ILFo33Zm3tu0vC59u846tfdizsYHUk7J20Kxs0AKNopTK4ikYVsGNaffLLM8ddjb8uDhNlYyDst0z9WuVAedq-tY9HU53L-Dnud-q12jvhboYmAMhSkTKgStvSNsiBUQOTc-CAhQpIKUGgmopU7oioD5fAHKGUBw:1krqtV:KbvMhiPQt-oz3c9sKQU3GvMzXdaI58AumQbHkQc3R_U', '2021-01-05 23:16:41.176250'),
('w5mckd4eq71b0swts30had88p0lp5bha', '.eJxVjUsOgzAMRO-SdYkSEuK4y-57BuTYpvQjkPisqt69ILFoZzvvzbxNS-vSt-usU3sXczY-gBKirwRyV0XQWGV2WnFKoGFLiWpOv1ohfuqwu_Kg4TZaHodluhe7I_ZoZ3sdRV-Xg_0b6GnuNzs3DrK4gK6UJArEwrUrUqfIdUS_XWf2XVIS7KLz0UNDgKFRhxjAm88X13dAZQ:1kpTpi:c42qwKZrPio-c3ZmGI-T9bZ7sdAA-Rsl6AJeDMtQQ5I', '2020-12-30 10:14:58.589676'),
('yk7iy5aj5ywrz96do6lacce7ed1oexpg', '.eJxVjUsOgzAMRO-SdYkSEuK4y-57BuTYpvQjkPisqt69ILFoZzvvzbxNS-vSt-usU3sXczY-gBKirwRyV0XQWGV2WnFKoGFLiWpOv1ohfuqwu_Kg4TZaHodluhe7I_ZoZ3sdRV-Xg_0b6GnuNzs3DrK4gK6UJArEwrUrUqfIdUS_XWf2XVIS7KLz0UNDgKFRhxjAm88X13dAZQ:1krA8e:Fh7dVDU2JU-2Xo9LJoD7nVPWtDM-OP4T3fja0iD1oGM', '2021-01-04 01:37:28.499578');

-- --------------------------------------------------------

--
-- テーブルの構造 `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, '127.0.0.1:8000', '青山システムズ');

-- --------------------------------------------------------

--
-- テーブルの構造 `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `socialaccount_socialapp`
--

INSERT INTO `socialaccount_socialapp` (`id`, `provider`, `name`, `client_id`, `secret`, `key`) VALUES
(1, 'github', 'aoyama', '4b2f1bfc07633540f638', '91192c152f22f9fb92166af958d820c5ba0b9f00', '');

-- --------------------------------------------------------

--
-- テーブルの構造 `socialaccount_socialapp_sites`
--

CREATE TABLE `socialaccount_socialapp_sites` (
  `id` int(11) NOT NULL,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `socialaccount_socialapp_sites`
--

INSERT INTO `socialaccount_socialapp_sites` (`id`, `socialapp_id`, `site_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `users_profile`
--

CREATE TABLE `users_profile` (
  `id` int(11) NOT NULL,
  `gendar` varchar(3) NOT NULL,
  `job` varchar(50) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `tel_number` varchar(15) DEFAULT NULL,
  `postal_code` varchar(7) DEFAULT NULL,
  `address1` varchar(10) NOT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `address3` varchar(150) DEFAULT NULL,
  `picture` varchar(100) NOT NULL,
  `salt` varchar(100) DEFAULT NULL,
  `secret_key` varchar(100) DEFAULT NULL,
  `first_buy_date` datetime(6) NOT NULL,
  `last_buy_date` datetime(6) NOT NULL,
  `buy_times` decimal(6,0) DEFAULT NULL,
  `buy_total` decimal(10,0) DEFAULT NULL,
  `point` decimal(6,0) DEFAULT NULL,
  `note` varchar(200) NOT NULL,
  `reset_key` datetime(6) NOT NULL,
  `location` varchar(30) NOT NULL,
  `favorite_words` varchar(50) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `user_id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `users_user`
--

CREATE TABLE `users_user` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `id` char(32) NOT NULL,
  `email` varchar(254) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `users_user`
--

INSERT INTO `users_user` (`password`, `last_login`, `is_superuser`, `id`, `email`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`) VALUES
('pbkdf2_sha256$216000$r8nKpMpUdhWv$Up32HWDMNBihQkrgBVanlilWujvPNyEgOwfIh6evxpg=', '2020-12-28 03:58:54.158812', 1, '137ea991d78f47e48c0ec667e3333b4e', 'aoyama414@gmail.com', 'yoshihiro', 'aoyama', 1, 1, '2020-12-15 22:40:54.961835');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_user_groups`
--

CREATE TABLE `users_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` char(32) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `users_user_user_permissions`
--

CREATE TABLE `users_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` char(32) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `users_user_user_permissions`
--

INSERT INTO `users_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, '137ea991d78f47e48c0ec667e3333b4e', 1),
(2, '137ea991d78f47e48c0ec667e3333b4e', 2),
(3, '137ea991d78f47e48c0ec667e3333b4e', 3),
(4, '137ea991d78f47e48c0ec667e3333b4e', 4),
(5, '137ea991d78f47e48c0ec667e3333b4e', 5),
(6, '137ea991d78f47e48c0ec667e3333b4e', 6),
(7, '137ea991d78f47e48c0ec667e3333b4e', 7),
(8, '137ea991d78f47e48c0ec667e3333b4e', 8),
(9, '137ea991d78f47e48c0ec667e3333b4e', 9),
(10, '137ea991d78f47e48c0ec667e3333b4e', 10),
(11, '137ea991d78f47e48c0ec667e3333b4e', 11),
(12, '137ea991d78f47e48c0ec667e3333b4e', 12),
(13, '137ea991d78f47e48c0ec667e3333b4e', 13),
(14, '137ea991d78f47e48c0ec667e3333b4e', 14),
(15, '137ea991d78f47e48c0ec667e3333b4e', 15),
(16, '137ea991d78f47e48c0ec667e3333b4e', 16),
(17, '137ea991d78f47e48c0ec667e3333b4e', 17),
(18, '137ea991d78f47e48c0ec667e3333b4e', 18),
(19, '137ea991d78f47e48c0ec667e3333b4e', 19),
(20, '137ea991d78f47e48c0ec667e3333b4e', 20),
(21, '137ea991d78f47e48c0ec667e3333b4e', 21),
(22, '137ea991d78f47e48c0ec667e3333b4e', 22),
(23, '137ea991d78f47e48c0ec667e3333b4e', 23),
(24, '137ea991d78f47e48c0ec667e3333b4e', 24),
(25, '137ea991d78f47e48c0ec667e3333b4e', 25),
(26, '137ea991d78f47e48c0ec667e3333b4e', 26),
(27, '137ea991d78f47e48c0ec667e3333b4e', 27),
(28, '137ea991d78f47e48c0ec667e3333b4e', 28);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk_users_user_id` (`user_id`);

--
-- テーブルのインデックス `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- テーブルのインデックス `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- テーブルのインデックス `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- テーブルのインデックス `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- テーブルのインデックス `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`);

--
-- テーブルのインデックス `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- テーブルのインデックス `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- テーブルのインデックス `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- テーブルのインデックス `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_socialaccount_user_id_8146e70c_fk_users_user_id` (`user_id`);

--
-- テーブルのインデックス `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  ADD KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`);

--
-- テーブルのインデックス `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- テーブルのインデックス `users_profile`
--
ALTER TABLE `users_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- テーブルのインデックス `users_user`
--
ALTER TABLE `users_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- テーブルのインデックス `users_user_groups`
--
ALTER TABLE `users_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  ADD KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`);

--
-- テーブルのインデックス `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  ADD KEY `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` (`permission_id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルの AUTO_INCREMENT `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- テーブルの AUTO_INCREMENT `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルの AUTO_INCREMENT `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- テーブルの AUTO_INCREMENT `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- テーブルの AUTO_INCREMENT `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルの AUTO_INCREMENT `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルの AUTO_INCREMENT `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルの AUTO_INCREMENT `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `users_profile`
--
ALTER TABLE `users_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `users_user_groups`
--
ALTER TABLE `users_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- テーブルの制約 `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- テーブルの制約 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- テーブルの制約 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- テーブルの制約 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- テーブルの制約 `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- テーブルの制約 `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`),
  ADD CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- テーブルの制約 `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);

--
-- テーブルの制約 `users_profile`
--
ALTER TABLE `users_profile`
  ADD CONSTRAINT `users_profile_user_id_2112e78d_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- テーブルの制約 `users_user_groups`
--
ALTER TABLE `users_user_groups`
  ADD CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- テーブルの制約 `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  ADD CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

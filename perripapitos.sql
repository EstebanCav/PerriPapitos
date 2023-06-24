-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2023 a las 00:11:13
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `perripapitos`
--
CREATE DATABASE IF NOT EXISTS `perripapitos` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `perripapitos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL,
  `language_chooser_control` varchar(20) NOT NULL,
  `list_filter_highlight` tinyint(1) NOT NULL,
  `list_filter_removal_links` tinyint(1) NOT NULL,
  `show_fieldsets_as_tabs` tinyint(1) NOT NULL,
  `show_inlines_as_tabs` tinyint(1) NOT NULL,
  `css_generic_link_active_color` varchar(10) NOT NULL,
  `collapsible_stacked_inlines` tinyint(1) NOT NULL,
  `collapsible_stacked_inlines_collapsed` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines_collapsed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`, `logo_max_height`, `logo_max_width`, `foldable_apps`, `language_chooser_control`, `list_filter_highlight`, `list_filter_removal_links`, `show_fieldsets_as_tabs`, `show_inlines_as_tabs`, `css_generic_link_active_color`, `collapsible_stacked_inlines`, `collapsible_stacked_inlines_collapsed`, `collapsible_tabular_inlines`, `collapsible_tabular_inlines_collapsed`) VALUES
(1, 'Django', 1, 'Administración de Django', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1, 'default-select', 1, 0, 0, 0, '#29B864', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'cliente'),
(3, 'vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44),
(50, 2, 37),
(51, 2, 38),
(52, 2, 39),
(53, 2, 40),
(54, 2, 41),
(55, 2, 42),
(56, 2, 43),
(57, 2, 44),
(74, 3, 29),
(75, 3, 30),
(76, 3, 31),
(61, 3, 32),
(62, 3, 33),
(63, 3, 34),
(64, 3, 35),
(65, 3, 36),
(66, 3, 37),
(67, 3, 38),
(68, 3, 39),
(69, 3, 40),
(70, 3, 41),
(71, 3, 42),
(72, 3, 43),
(73, 3, 44);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add Theme', 1, 'add_theme'),
(2, 'Can change Theme', 1, 'change_theme'),
(3, 'Can delete Theme', 1, 'delete_theme'),
(4, 'Can view Theme', 1, 'view_theme'),
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
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add tipo producto', 8, 'add_tipoproducto'),
(30, 'Can change tipo producto', 8, 'change_tipoproducto'),
(31, 'Can delete tipo producto', 8, 'delete_tipoproducto'),
(32, 'Can view tipo producto', 8, 'view_tipoproducto'),
(33, 'Can add producto', 9, 'add_producto'),
(34, 'Can change producto', 9, 'change_producto'),
(35, 'Can delete producto', 9, 'delete_producto'),
(36, 'Can view producto', 9, 'view_producto'),
(37, 'Can add item_carrito', 10, 'add_item_carrito'),
(38, 'Can change item_carrito', 10, 'change_item_carrito'),
(39, 'Can delete item_carrito', 10, 'delete_item_carrito'),
(40, 'Can view item_carrito', 10, 'view_item_carrito'),
(41, 'Can add suscripcion', 11, 'add_suscripcion'),
(42, 'Can change suscripcion', 11, 'change_suscripcion'),
(43, 'Can delete suscripcion', 11, 'delete_suscripcion'),
(44, 'Can view suscripcion', 11, 'view_suscripcion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$216000$PzHji9dALQ5C$PD8JIIDBoW2+gZB4qpWeyzxEU32SrGCSKZzbW1FLoj0=', '2023-06-24 21:46:27.000000', 1, 'esteban', '', '', 'est.cavieres@duocuc.cl', 1, 1, '2023-06-06 16:10:51.000000'),
(3, 'pbkdf2_sha256$216000$kzOeGR2zdpuO$0b1Qc2peOYfjeqws832oNc+xHOrgQYM5w60eIBZvuHA=', '2023-06-06 17:13:41.862834', 0, 'admin', '', '', '', 0, 1, '2023-06-06 17:12:56.974188'),
(4, 'pbkdf2_sha256$216000$gZWC3pEPujiI$4MS4rPjrd2GTpTDGRga+Ul0c3ur+7ufnRIonjxEinT4=', '2023-06-24 19:45:35.048698', 0, 'hola', '', '', '', 0, 1, '2023-06-24 19:43:46.933571'),
(5, 'pbkdf2_sha256$216000$mDMEEsVXSfDL$UPtDQ2uVbP6nZKP6k/qKv8UXGpZp420aBtDdj6TM3eM=', '2023-06-24 19:45:49.689579', 0, 'hola1234', '', '', '', 0, 1, '2023-06-24 19:45:17.458466'),
(6, 'pbkdf2_sha256$216000$Kh7icI5ZAsor$OIF+H3X5XgBicLbi92JW6zD04GA/UQVI1O9YMmI7PJ8=', NULL, 0, 'asdasdasd', '', '', '', 0, 1, '2023-06-24 19:47:19.318494'),
(7, 'pbkdf2_sha256$216000$OnZETssIdgD6$DNQqTdi+ZtuS+pEwmFRyiaoSjxlzKZf+sB4e/gmhH6g=', NULL, 0, 'hola12345', '', '', '', 0, 1, '2023-06-24 19:53:36.645267'),
(8, 'pbkdf2_sha256$216000$rlt7pVMBTLl9$6eR8oAyIOgnyJdG1GgbeE1cCcRsn3CS3XRe2SSSCkAI=', NULL, 0, 'hola123456', '', '', '', 0, 1, '2023-06-24 19:56:29.368013'),
(9, 'pbkdf2_sha256$216000$o1YSim76kuMg$kQp6QDJp23d50JplTq0g10IQ/YYEr0VdhZkSDbvkBaE=', '2023-06-24 20:43:33.470883', 0, 'pitolin', '', '', '', 0, 1, '2023-06-24 20:03:40.123661');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(2, 2, 1),
(5, 2, 2),
(6, 2, 3),
(1, 9, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_tipoproducto`
--

CREATE TABLE `core_tipoproducto` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `core_tipoproducto`
--

INSERT INTO `core_tipoproducto` (`id`, `descripcion`) VALUES
(1, 'Correa'),
(2, 'Bandana'),
(3, 'Identificador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_item_carrito`
--

CREATE TABLE `db_item_carrito` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `db_item_carrito`
--

INSERT INTO `db_item_carrito` (`id`, `Nombre`, `precio`, `imagen`) VALUES
(1, 'Identificador', 123123, 'identificador_hueso_UmU32TK.jpg'),
(2, 'Correa', 123132, 'Correa_pecho_1rvBnZG.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_producto`
--

CREATE TABLE `db_producto` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `Stock` int(11) NOT NULL,
  `Descripcion` varchar(250) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `Fecha_creacion` date NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `update_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `db_producto`
--

INSERT INTO `db_producto` (`id`, `Nombre`, `precio`, `Stock`, `Descripcion`, `tipo_id`, `Fecha_creacion`, `imagen`, `update_at`) VALUES
(2, 'Bandana', 2990, 3, 'aadsadsasdasdads', 2, '2023-06-13', 'bandana_print_l4O6aiP.png', '2023-06-06'),
(3, 'Correa', 123132, 12, 'asdasdasdasd', 1, '2022-12-13', 'Correa_pecho_1rvBnZG.jpg', '2023-06-06'),
(4, 'Identificador', 123123, 12, 'sdadsasdad', 3, '2023-06-19', 'identificador_hueso_UmU32TK.jpg', '2023-06-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_suscripcion`
--

CREATE TABLE `db_suscripcion` (
  `suscripcion_check` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-06-06 16:13:47.947552', '1', 'Correa', 1, '[{\"added\": {}}]', 8, 2),
(2, '2023-06-06 16:13:52.466642', '2', 'Bandana', 1, '[{\"added\": {}}]', 8, 2),
(3, '2023-06-06 16:13:58.994886', '3', 'Identificador', 1, '[{\"added\": {}}]', 8, 2),
(4, '2023-06-06 16:14:24.666213', '1', 'Elias alcaide', 1, '[{\"added\": {}}]', 9, 2),
(5, '2023-06-06 16:15:52.191992', '1', 'Elias alcaide', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 9, 2),
(6, '2023-06-06 16:30:35.742957', '2', 'Bandana', 1, '[{\"added\": {}}]', 9, 2),
(7, '2023-06-06 16:30:57.618943', '3', 'Correa', 1, '[{\"added\": {}}]', 9, 2),
(8, '2023-06-06 16:31:23.427231', '4', 'Identificador', 1, '[{\"added\": {}}]', 9, 2),
(9, '2023-06-06 16:47:55.561248', '1', 'user', 3, '', 5, 2),
(10, '2023-06-06 17:12:57.034202', '3', 'admin', 1, '[{\"added\": {}}]', 5, 2),
(11, '2023-06-24 20:00:24.609859', '1', 'admin', 1, '[{\"added\": {}}]', 4, 2),
(12, '2023-06-24 20:01:08.397078', '2', 'cliente', 1, '[{\"added\": {}}]', 4, 2),
(13, '2023-06-24 20:02:41.165815', '2', 'cliente', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 4, 2),
(14, '2023-06-24 20:02:57.391685', '3', 'vendedor', 1, '[{\"added\": {}}]', 4, 2),
(15, '2023-06-24 20:04:56.706929', '2', 'esteban', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 2),
(16, '2023-06-24 20:06:04.742947', '2', 'esteban', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 2),
(17, '2023-06-24 21:46:56.931714', '2', 'esteban', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(1, 'admin_interface', 'theme'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(10, 'core', 'item_carrito'),
(9, 'core', 'producto'),
(11, 'core', 'suscripcion'),
(8, 'core', 'tipoproducto'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-06 16:07:52.007022'),
(2, 'auth', '0001_initial', '2023-06-06 16:07:52.098443'),
(3, 'admin', '0001_initial', '2023-06-06 16:07:52.393377'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-06 16:07:52.475897'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-06 16:07:52.483898'),
(6, 'admin_interface', '0001_initial', '2023-06-06 16:07:52.514904'),
(7, 'admin_interface', '0002_add_related_modal', '2023-06-06 16:07:52.583817'),
(8, 'admin_interface', '0003_add_logo_color', '2023-06-06 16:07:52.607504'),
(9, 'admin_interface', '0004_rename_title_color', '2023-06-06 16:07:52.622510'),
(10, 'admin_interface', '0005_add_recent_actions_visible', '2023-06-06 16:07:52.642226'),
(11, 'admin_interface', '0006_bytes_to_str', '2023-06-06 16:07:52.686236'),
(12, 'admin_interface', '0007_add_favicon', '2023-06-06 16:07:52.706639'),
(13, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2023-06-06 16:07:52.739062'),
(14, 'admin_interface', '0009_add_enviroment', '2023-06-06 16:07:52.773794'),
(15, 'admin_interface', '0010_add_localization', '2023-06-06 16:07:52.787798'),
(16, 'admin_interface', '0011_add_environment_options', '2023-06-06 16:07:52.874752'),
(17, 'admin_interface', '0012_update_verbose_names', '2023-06-06 16:07:52.882754'),
(18, 'admin_interface', '0013_add_related_modal_close_button', '2023-06-06 16:07:52.902977'),
(19, 'admin_interface', '0014_name_unique', '2023-06-06 16:07:52.918982'),
(20, 'admin_interface', '0015_add_language_chooser_active', '2023-06-06 16:07:52.940296'),
(21, 'admin_interface', '0016_add_language_chooser_display', '2023-06-06 16:07:52.964604'),
(22, 'admin_interface', '0017_change_list_filter_dropdown', '2023-06-06 16:07:52.970605'),
(23, 'admin_interface', '0018_theme_list_filter_sticky', '2023-06-06 16:07:52.992328'),
(24, 'admin_interface', '0019_add_form_sticky', '2023-06-06 16:07:53.032337'),
(25, 'admin_interface', '0020_module_selected_colors', '2023-06-06 16:07:53.077340'),
(26, 'admin_interface', '0021_file_extension_validator', '2023-06-06 16:07:53.085341'),
(27, 'admin_interface', '0022_add_logo_max_width_and_height', '2023-06-06 16:07:53.123348'),
(28, 'admin_interface', '0023_theme_foldable_apps', '2023-06-06 16:07:53.143838'),
(29, 'admin_interface', '0024_remove_theme_css', '2023-06-06 16:07:53.157845'),
(30, 'admin_interface', '0025_theme_language_chooser_control', '2023-06-06 16:07:53.177850'),
(31, 'admin_interface', '0026_theme_list_filter_highlight', '2023-06-06 16:07:53.199285'),
(32, 'admin_interface', '0027_theme_list_filter_removal_links', '2023-06-06 16:07:53.219558'),
(33, 'admin_interface', '0028_theme_show_fieldsets_as_tabs_and_more', '2023-06-06 16:07:53.257525'),
(34, 'admin_interface', '0029_theme_css_generic_link_active_color', '2023-06-06 16:07:53.277442'),
(35, 'admin_interface', '0030_theme_collapsible_stacked_inlines_and_more', '2023-06-06 16:07:53.350267'),
(36, 'contenttypes', '0002_remove_content_type_name', '2023-06-06 16:07:53.398418'),
(37, 'auth', '0002_alter_permission_name_max_length', '2023-06-06 16:07:53.440687'),
(38, 'auth', '0003_alter_user_email_max_length', '2023-06-06 16:07:53.481869'),
(39, 'auth', '0004_alter_user_username_opts', '2023-06-06 16:07:53.490870'),
(40, 'auth', '0005_alter_user_last_login_null', '2023-06-06 16:07:53.525778'),
(41, 'auth', '0006_require_contenttypes_0002', '2023-06-06 16:07:53.530778'),
(42, 'auth', '0007_alter_validators_add_error_messages', '2023-06-06 16:07:53.539781'),
(43, 'auth', '0008_alter_user_username_max_length', '2023-06-06 16:07:53.555396'),
(44, 'auth', '0009_alter_user_last_name_max_length', '2023-06-06 16:07:53.570581'),
(45, 'auth', '0010_alter_group_name_max_length', '2023-06-06 16:07:53.613264'),
(46, 'auth', '0011_update_proxy_permissions', '2023-06-06 16:07:53.623706'),
(47, 'auth', '0012_alter_user_first_name_max_length', '2023-06-06 16:07:53.647679'),
(48, 'core', '0001_initial', '2023-06-06 16:07:53.682731'),
(49, 'core', '0002_auto_20230504_1234', '2023-06-06 16:07:53.902812'),
(50, 'core', '0003_auto_20230519_1605', '2023-06-06 16:07:53.931794'),
(51, 'core', '0004_item_carrito', '2023-06-06 16:07:53.949228'),
(52, 'core', '0005_auto_20230520_1508', '2023-06-06 16:07:53.961800'),
(53, 'core', '0006_suscripcion', '2023-06-06 16:07:53.978611'),
(54, 'core', '0007_auto_20230521_1739', '2023-06-06 16:07:53.993801'),
(55, 'sessions', '0001_initial', '2023-06-06 16:07:54.010415');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6jkpmb3ejknqnmdohydhejollwlecb21', '.eJxVjEEOwiAUBe_C2hBAaMGl-56BPD4gVUOT0q6Md1eSLnT7Zua9mMe-Fb-3tPo5sgtT7PS7BdAj1Q7iHfW2cFrqts6Bd4UftPFpiel5Pdy_g4JWvrUTJEfAWAA6KKJopRmFFhpySIKUQSbpSGqbuyNyCMaSGuzZkQLY-wPxgThs:1qDAwN:ESDMplJCJqiD_zdfZHFzcdA0yh0TzDL8P1DkJiViJcI', '2023-07-08 21:37:07.378666'),
('735nuemfk6tt5eqoy1nolhqkbjxw54g2', '.eJxVjEEOwiAUBe_C2hBAaMGl-56BPD4gVUOT0q6Md1eSLnT7Zua9mMe-Fb-3tPo5sgtT7PS7BdAj1Q7iHfW2cFrqts6Bd4UftPFpiel5Pdy_g4JWvrUTJEfAWAA6KKJopRmFFhpySIKUQSbpSGqbuyNyCMaSGuzZkQLY-wPxgThs:1qDB5P:iOIjKJeFpmCuP1mkTuBIKmvc6jsJZ4VxuOaTH_nzP0A', '2023-07-08 21:46:27.995980');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `db_item_carrito`
--
ALTER TABLE `db_item_carrito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `db_producto`
--
ALTER TABLE `db_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_producto_tipo_id_e0e92ad1_fk` (`tipo_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `db_item_carrito`
--
ALTER TABLE `db_item_carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `db_producto`
--
ALTER TABLE `db_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `db_producto`
--
ALTER TABLE `db_producto`
  ADD CONSTRAINT `core_producto_tipo_id_e0e92ad1_fk` FOREIGN KEY (`tipo_id`) REFERENCES `core_tipoproducto` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

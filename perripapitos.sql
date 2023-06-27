-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2023 a las 19:10:32
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

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
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(3, 'admin'),
(1, 'cliente'),
(2, 'vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(7, 1, 28),
(1, 1, 32),
(2, 1, 33),
(3, 1, 35),
(4, 1, 36),
(5, 1, 40),
(6, 1, 44),
(17, 2, 25),
(18, 2, 26),
(19, 2, 27),
(20, 2, 28),
(21, 2, 29),
(22, 2, 30),
(23, 2, 31),
(8, 2, 32),
(9, 2, 37),
(10, 2, 38),
(11, 2, 39),
(12, 2, 40),
(13, 2, 41),
(14, 2, 42),
(15, 2, 43),
(16, 2, 44),
(24, 3, 1),
(25, 3, 2),
(26, 3, 3),
(27, 3, 4),
(28, 3, 5),
(29, 3, 6),
(30, 3, 7),
(31, 3, 8),
(32, 3, 9),
(33, 3, 10),
(34, 3, 11),
(35, 3, 12),
(36, 3, 13),
(37, 3, 14),
(38, 3, 15),
(39, 3, 16),
(40, 3, 17),
(41, 3, 18),
(42, 3, 19),
(43, 3, 20),
(44, 3, 21),
(45, 3, 22),
(46, 3, 23),
(47, 3, 24),
(48, 3, 25),
(49, 3, 26),
(50, 3, 27),
(51, 3, 28),
(52, 3, 29),
(53, 3, 30),
(54, 3, 31),
(55, 3, 32),
(56, 3, 33),
(57, 3, 34),
(58, 3, 35),
(59, 3, 36),
(60, 3, 37),
(61, 3, 38),
(62, 3, 39),
(63, 3, 40),
(64, 3, 41),
(65, 3, 42),
(66, 3, 43),
(67, 3, 44);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add tipo producto', 7, 'add_tipoproducto'),
(26, 'Can change tipo producto', 7, 'change_tipoproducto'),
(27, 'Can delete tipo producto', 7, 'delete_tipoproducto'),
(28, 'Can view tipo producto', 7, 'view_tipoproducto'),
(29, 'Can add producto', 8, 'add_producto'),
(30, 'Can change producto', 8, 'change_producto'),
(31, 'Can delete producto', 8, 'delete_producto'),
(32, 'Can view producto', 8, 'view_producto'),
(33, 'Can add item_carrito', 9, 'add_item_carrito'),
(34, 'Can change item_carrito', 9, 'change_item_carrito'),
(35, 'Can delete item_carrito', 9, 'delete_item_carrito'),
(36, 'Can view item_carrito', 9, 'view_item_carrito'),
(37, 'Can add suscripcion', 10, 'add_suscripcion'),
(38, 'Can change suscripcion', 10, 'change_suscripcion'),
(39, 'Can delete suscripcion', 10, 'delete_suscripcion'),
(40, 'Can view suscripcion', 10, 'view_suscripcion'),
(41, 'Can add tipo suscripcion', 11, 'add_tiposuscripcion'),
(42, 'Can change tipo suscripcion', 11, 'change_tiposuscripcion'),
(43, 'Can delete tipo suscripcion', 11, 'delete_tiposuscripcion'),
(44, 'Can view tipo suscripcion', 11, 'view_tiposuscripcion'),
(45, 'Can add comentario', 12, 'add_comentario'),
(46, 'Can change comentario', 12, 'change_comentario'),
(47, 'Can delete comentario', 12, 'delete_comentario'),
(48, 'Can view comentario', 12, 'view_comentario'),
(49, 'Can add historial compra', 13, 'add_historialcompra'),
(50, 'Can change historial compra', 13, 'change_historialcompra'),
(51, 'Can delete historial compra', 13, 'delete_historialcompra'),
(52, 'Can view historial compra', 13, 'view_historialcompra');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$oVzs0jwe8onu$WqJtyCym1g4/EJUt4+lTH8HzTwp+Z64y4aTPHP9WBR0=', '2023-06-26 00:03:43.430704', 1, 'eliasalcaide', '', '', '', 1, 1, '2023-06-25 01:53:51.000000'),
(2, 'pbkdf2_sha256$216000$6xVd7qtbN9ew$El2bTEL9L71xs4J7nc12J7u+RoQZ3ZOQhM8hSBGkr2I=', '2023-06-27 16:03:24.267170', 0, 'kevin', '', '', '', 0, 1, '2023-06-25 02:06:32.000000'),
(3, 'pbkdf2_sha256$216000$QKvHm4GXhDGL$JUB2s7jMmCrs9L8ze14mPIl5mOr1wp7dv09LLQpyVCk=', '2023-06-25 02:56:59.919111', 0, 'vendedor1', '', '', '', 0, 1, '2023-06-25 02:38:29.000000'),
(4, 'pbkdf2_sha256$216000$N7bbyzoqHXrS$n5UXgUUKIZwHm3eufBnr7DQjWmeGI4au1oKALJqHouU=', NULL, 0, 'admin', '', '', '', 0, 1, '2023-06-25 03:00:31.000000'),
(5, 'pbkdf2_sha256$216000$437yMLUbRt27$FbnFgFPpugo0cVd0ZNYmOJ1e5GDUMGSI7GRP7ltLkzI=', '2023-06-27 15:48:23.447275', 1, 'admin1', '', '', 'admin1@gmail.com', 1, 1, '2023-06-25 20:04:21.000000'),
(6, 'pbkdf2_sha256$216000$RTB7ADpl9RCn$hUBY1ciLinubDkS3sPyEeKusvKLSwx8lX6kDZa0XcNw=', '2023-06-25 22:45:53.605916', 0, 'hola123', '', '', '', 0, 1, '2023-06-25 22:45:24.181570'),
(7, 'pbkdf2_sha256$216000$a9kpXq9PemTu$nAEg4irLfjs3/U2y0sEc7PG1sGjRd9WanYuus9pyHTw=', '2023-06-25 22:51:10.593949', 0, 'adsasdasd', '', '', '', 0, 1, '2023-06-25 22:50:05.212352'),
(8, 'pbkdf2_sha256$216000$k192TBklZFyV$jHPTKM/Soy9PssKyQpz1tPkXhfakwxy1gr2UmJD2BPc=', '2023-06-27 15:47:44.975947', 0, 'Cliente1', '', '', '', 0, 1, '2023-06-27 15:47:44.851330');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(3, 1, 1),
(4, 1, 2),
(5, 1, 3),
(1, 2, 1),
(2, 3, 2),
(6, 4, 1),
(7, 4, 2),
(8, 4, 3),
(9, 5, 1),
(10, 5, 2),
(11, 5, 3),
(12, 7, 1),
(13, 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
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
(45, 4, 1),
(46, 4, 2),
(47, 4, 3),
(48, 4, 4),
(49, 4, 5),
(50, 4, 6),
(51, 4, 7),
(52, 4, 8),
(53, 4, 9),
(54, 4, 10),
(55, 4, 11),
(56, 4, 12),
(57, 4, 13),
(58, 4, 14),
(59, 4, 15),
(60, 4, 16),
(61, 4, 17),
(62, 4, 18),
(63, 4, 19),
(64, 4, 20),
(65, 4, 21),
(66, 4, 22),
(67, 4, 23),
(68, 4, 24),
(69, 4, 25),
(70, 4, 26),
(71, 4, 27),
(72, 4, 28),
(73, 4, 29),
(74, 4, 30),
(75, 4, 31),
(76, 4, 32),
(77, 4, 33),
(78, 4, 34),
(79, 4, 35),
(80, 4, 36),
(81, 4, 37),
(82, 4, 38),
(83, 4, 39),
(84, 4, 40),
(85, 4, 41),
(86, 4, 42),
(87, 4, 43),
(88, 4, 44);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_suscripcion`
--

CREATE TABLE `core_suscripcion` (
  `id` int(11) NOT NULL,
  `suscripcion_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_suscripcion`
--

INSERT INTO `core_suscripcion` (`id`, `suscripcion_id`, `usuario_id`) VALUES
(46, 3, 5),
(47, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_tipoproducto`
--

CREATE TABLE `core_tipoproducto` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_tipoproducto`
--

INSERT INTO `core_tipoproducto` (`id`, `descripcion`) VALUES
(1, 'Correa'),
(2, 'Bandana'),
(3, 'Identificador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_tiposuscripcion`
--

CREATE TABLE `core_tiposuscripcion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_tiposuscripcion`
--

INSERT INTO `core_tiposuscripcion` (`id`, `nombre`, `precio`) VALUES
(1, 'Plata', 1000),
(2, 'oro', 2000),
(3, 'Diamante', 3000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_item_carrito`
--

CREATE TABLE `db_item_carrito` (
  `id` int(11) NOT NULL,
  `items` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `db_item_carrito`
--

INSERT INTO `db_item_carrito` (`id`, `items`, `producto_id`, `usuario_id`) VALUES
(22, 2, 2, 2);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `db_producto`
--

INSERT INTO `db_producto` (`id`, `Nombre`, `precio`, `Stock`, `Descripcion`, `tipo_id`, `Fecha_creacion`, `imagen`, `update_at`) VALUES
(1, 'arnes UK', 1000, 46, 'Perfecto para vivir en UK', 1, '2023-06-25', 'arnes_uk_vrT8tUS.jpg', '2023-06-25'),
(2, 'Bandana azul', 1500, 28, 'Perfecta para camuflarse con el agua, cuidado con ahogarse', 2, '2023-06-25', 'bandana_azul_qVOzWMi.jpg', '2023-06-27'),
(3, 'Identificador negro', 1400, 87, 'Identificador perfecto para ver como se llama tu perro', 3, '2023-06-25', 'identificador_negro_iUiGpX1.jpeg', '2023-06-25'),
(4, 'Bandana sandia', 500, 70, 'Bandana con estilo de sandia, perfecto para que tu mascota parezca una sandia, cuidado con comertela', 2, '2023-06-26', 'bandana_sandia_4K9j582.jpg', '2023-06-25'),
(5, 'Bandana tigre', 1500, 100, 'Bandana con estilo de tigre, perfecta para que tu perro asuste a los demás perros, cuidado con que se ponga a pelear que puede que te demanden por daño a otra mascota. Saludos!!!', 2, '2023-06-26', 'bandana_print_PiystP6.png', '2023-06-25'),
(6, 'Arnes', 1500, 100, 'Correa tipo arnés, perfecto para mantener a tu perro bajo control y así mismo poder sacarlo a pasear.', 1, '2023-06-26', 'Correa_pecho_NSCoVX4_NFVLlIA.jpg', '2023-06-25');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-06-25 01:57:43.121250', '1', 'Plata', 1, '[{\"added\": {}}]', 11, 1),
(2, '2023-06-25 01:57:51.736192', '2', 'oro', 1, '[{\"added\": {}}]', 11, 1),
(3, '2023-06-25 01:58:00.311721', '3', 'Diamante', 1, '[{\"added\": {}}]', 11, 1),
(4, '2023-06-25 02:06:32.161343', '2', 'kevin', 1, '[{\"added\": {}}]', 4, 1),
(5, '2023-06-25 02:06:35.921794', '2', 'kevin', 2, '[]', 4, 1),
(6, '2023-06-25 02:08:59.529212', '1', 'cliente', 1, '[{\"added\": {}}]', 3, 1),
(7, '2023-06-25 02:09:39.985854', '2', 'vendedor', 1, '[{\"added\": {}}]', 3, 1),
(8, '2023-06-25 02:09:48.122593', '3', 'admin', 1, '[{\"added\": {}}]', 3, 1),
(9, '2023-06-25 02:09:57.303642', '2', 'kevin', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(10, '2023-06-25 02:38:29.871438', '3', 'vendedor1', 1, '[{\"added\": {}}]', 4, 1),
(11, '2023-06-25 02:38:45.720315', '3', 'vendedor1', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(12, '2023-06-25 03:00:05.657152', '1', 'eliasalcaide', 2, '[{\"changed\": {\"fields\": [\"Groups\", \"User permissions\"]}}]', 4, 1),
(13, '2023-06-25 03:00:31.722812', '4', 'admin', 1, '[{\"added\": {}}]', 4, 1),
(14, '2023-06-25 03:00:38.176380', '4', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\", \"User permissions\"]}}]', 4, 1),
(15, '2023-06-25 03:00:54.894815', '1', 'Correa', 1, '[{\"added\": {}}]', 7, 1),
(16, '2023-06-25 03:01:13.959526', '2', 'Bandanas', 1, '[{\"added\": {}}]', 7, 1),
(17, '2023-06-25 03:01:18.901562', '3', 'Identificador', 1, '[{\"added\": {}}]', 7, 1),
(18, '2023-06-25 03:01:23.019166', '2', 'Bandana', 2, '[{\"changed\": {\"fields\": [\"Descripcion\"]}}]', 7, 1),
(19, '2023-06-25 03:08:00.189871', '1', 'arnes UK', 1, '[{\"added\": {}}]', 8, 1),
(20, '2023-06-25 03:08:38.002283', '2', 'Bandana azul', 1, '[{\"added\": {}}]', 8, 1),
(21, '2023-06-25 03:09:30.595055', '3', 'Identificador negro', 1, '[{\"added\": {}}]', 8, 1),
(22, '2023-06-25 05:55:23.564626', '1', 'kevin', 3, '', 10, 1),
(23, '2023-06-25 05:56:00.285434', '5', 'kevin', 3, '', 10, 1),
(24, '2023-06-25 21:41:37.697457', '5', 'admin1', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 5),
(25, '2023-06-25 23:12:04.762413', '5', 'item_carrito object (5)', 2, '[{\"changed\": {\"fields\": [\"Items\"]}}]', 9, 5),
(26, '2023-06-25 23:12:41.387315', '5', 'item_carrito object (5)', 2, '[{\"changed\": {\"fields\": [\"Items\"]}}]', 9, 5),
(27, '2023-06-25 23:13:11.141921', '4', 'item_carrito object (4)', 2, '[{\"changed\": {\"fields\": [\"Items\"]}}]', 9, 5),
(28, '2023-06-26 02:44:11.435930', '4', 'Bandana sandia', 1, '[{\"added\": {}}]', 8, 1),
(29, '2023-06-26 02:45:38.589844', '5', 'Bandana tigre', 1, '[{\"added\": {}}]', 8, 1),
(30, '2023-06-26 02:46:33.515275', '6', 'Arnes', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(12, 'core', 'comentario'),
(13, 'core', 'historialcompra'),
(9, 'core', 'item_carrito'),
(8, 'core', 'producto'),
(10, 'core', 'suscripcion'),
(7, 'core', 'tipoproducto'),
(11, 'core', 'tiposuscripcion'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-25 01:02:21.348115'),
(2, 'auth', '0001_initial', '2023-06-25 01:02:21.429898'),
(3, 'admin', '0001_initial', '2023-06-25 01:02:21.726977'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-25 01:02:21.804680'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-25 01:02:21.811665'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-25 01:02:21.862599'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-25 01:02:21.899315'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-25 01:02:21.915271'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-25 01:02:21.922254'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-25 01:02:21.956198'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-25 01:02:21.959189'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-25 01:02:21.965173'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-25 01:02:21.980133'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-25 01:02:21.994096'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-25 01:02:22.009057'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-25 01:02:22.016037'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-25 01:02:22.030997'),
(18, 'core', '0001_initial', '2023-06-25 01:02:22.056928'),
(19, 'core', '0002_auto_20230504_1234', '2023-06-25 01:02:22.281340'),
(20, 'core', '0003_auto_20230519_1605', '2023-06-25 01:02:22.339229'),
(21, 'core', '0004_item_carrito', '2023-06-25 01:02:22.352199'),
(22, 'core', '0005_auto_20230520_1508', '2023-06-25 01:02:22.359176'),
(23, 'sessions', '0001_initial', '2023-06-25 01:02:22.371144'),
(24, 'core', '0006_suscripcion_tiposuscripcion', '2023-06-25 01:51:06.004462'),
(25, 'core', '0007_auto_20230625_1448', '2023-06-25 18:48:57.426523'),
(26, 'core', '0008_auto_20230625_1545', '2023-06-25 19:46:04.257906'),
(27, 'core', '0009_auto_20230625_1547', '2023-06-25 19:47:34.713726'),
(28, 'core', '0010_comentario', '2023-06-25 22:09:19.571442'),
(29, 'core', '0011_auto_20230625_2133', '2023-06-26 01:33:43.505064'),
(30, 'core', '0012_auto_20230625_2142', '2023-06-26 01:42:42.724951');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0eyxqwokhht41rj5ryzc7gfhu5rsoks7', '.eJxVjEEOwiAQRe_C2hCYDjK4dO8ZmhlAqRpISrsy3l2bdKHb_977LzXyupRx7Xkep6ROCtThdxOOj1w3kO5cb03HVpd5Er0peqddX1rKz_Pu_h0U7uVb-wxE1uUQgD1CQsdEYKOgkwHhSgk9HBGcoQjGGXASkSSkiEO2KOr9AbK-NrI:1qDHgV:3w5-xkDFSXy6S30tSAvN9XmvzfAhy9eH9oNlutCk5fI', '2023-07-09 04:49:11.693349'),
('404jimghie35a97j95q11zo5v59i9pon', '.eJxVjEEOwiAQRe_C2hCYDjK4dO8ZmhlAqRpISrsy3l2bdKHb_977LzXyupRx7Xkep6ROCtThdxOOj1w3kO5cb03HVpd5Er0peqddX1rKz_Pu_h0U7uVb-wxE1uUQgD1CQsdEYKOgkwHhSgk9HBGcoQjGGXASkSSkiEO2KOr9AbK-NrI:1qEBA4:_xwrdQjKcz4Zd1QN0a3vMD65amHhKXIgDbbwrP4w_70', '2023-07-11 16:03:24.270170'),
('4qnb84m37doj9hbm74ruayv3sc12n9z2', '.eJxVjEEOwiAQAP_C2RCWwkI9eu8bCLAgVQNJaU_GvxuSHvQ6M5k3c_7Yizt62txK7MqAXX5Z8PGZ6hD08PXeeGx139bAR8JP2_nSKL1uZ_s3KL6XscVsNQSMUeYAJikyQBmFoewVaorWhElJoYTFDIQkJ40qizn6mRIk9vkC6AY4BQ:1qDVPq:7WucLV1X8gTJ4MBht9Nq8f80IPYY1BqOXrUkUe8iWIM', '2023-07-09 19:28:54.448324'),
('f7kfojselwws5nne1eg9rs7ww4jfh5wu', '.eJxVjM0KAiEURt_FdYj_Ssv2PYPc69WcCoVxZhW9ewmzqNUH3zmcF4uwbzXuI69xIXZmlp1-P4T0yG0CukO7dZ5629YF-VT4QQe_dsrPy-H-BSqMOrPSI4AlnIsuCCdUcZaScdI6ob9Aq-wCFSgiY1A-KSKB3hovjdbs_QHp4De6:1qDYs3:iDeViqMA7v68x2M0bkpxSeEOjXLxpO_Tn7wtnH5HvCs', '2023-07-09 23:10:15.091312'),
('uzha1fvzmh34ll4e27zelgxrb0co21c2', '.eJxVjEEOwiAQAP_C2RCWwkI9eu8bCLAgVQNJaU_GvxuSHvQ6M5k3c_7Yizt62txK7MqAXX5Z8PGZ6hD08PXeeGx139bAR8JP2_nSKL1uZ_s3KL6XscVsNQSMUeYAJikyQBmFoewVaorWhElJoYTFDIQkJ40qizn6mRIk9vkC6AY4BQ:1qDZhn:qJFzPlb_lWWPKWbkppDKbKqhG-mMrv_0C4Rld6I2Sd4', '2023-07-10 00:03:43.432698');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_compra`
--

CREATE TABLE `historial_compra` (
  `items` int(11) NOT NULL,
  `precio_total` decimal(10,2) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `fecha_compra` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historial_compra`
--

INSERT INTO `historial_compra` (`items`, `precio_total`, `producto_id`, `usuario_id`, `codigo`, `fecha_compra`) VALUES
(1, '1500.00', 2, 1, '1586598635', '2023-06-26 02:27:30.105483'),
(4, '6000.00', 2, 1, '2485375905', '2023-06-26 02:05:45.757692'),
(2, '3000.00', 2, 5, '3239557716', '2023-06-26 02:05:45.748713'),
(3, '4200.00', 3, 5, '5739952396', '2023-06-26 02:05:45.752706'),
(1, '1000.00', 1, 1, '7311699128', '2023-06-26 02:27:30.141982'),
(1, '1000.00', 1, 1, '7403660397', '2023-06-26 02:08:43.831841');

--
-- Índices para tablas volcadas
--

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
-- Indices de la tabla `core_suscripcion`
--
ALTER TABLE `core_suscripcion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_id` (`usuario_id`),
  ADD KEY `core_suscripcion_suscripcion_id_6a460276_fk_core_tipo` (`suscripcion_id`);

--
-- Indices de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_tiposuscripcion`
--
ALTER TABLE `core_tiposuscripcion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `db_item_carrito`
--
ALTER TABLE `db_item_carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `db_item_carrito_producto_id_44361e86_fk_db_producto_id` (`producto_id`),
  ADD KEY `db_item_carrito_usuario_id_e8799e07_fk_auth_user_id` (`usuario_id`);

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
-- Indices de la tabla `historial_compra`
--
ALTER TABLE `historial_compra`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `historial_compra_producto_id_a2c0a5d5_fk_db_producto_id` (`producto_id`),
  ADD KEY `historial_compra_usuario_id_acf4dafd_fk_auth_user_id` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `core_suscripcion`
--
ALTER TABLE `core_suscripcion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `core_tiposuscripcion`
--
ALTER TABLE `core_tiposuscripcion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `db_item_carrito`
--
ALTER TABLE `db_item_carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `db_producto`
--
ALTER TABLE `db_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
-- Filtros para la tabla `core_suscripcion`
--
ALTER TABLE `core_suscripcion`
  ADD CONSTRAINT `core_suscripcion_suscripcion_id_6a460276_fk_core_tipo` FOREIGN KEY (`suscripcion_id`) REFERENCES `core_tiposuscripcion` (`id`),
  ADD CONSTRAINT `core_suscripcion_usuario_id_e497b785_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `db_item_carrito`
--
ALTER TABLE `db_item_carrito`
  ADD CONSTRAINT `db_item_carrito_producto_id_44361e86_fk_db_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `db_producto` (`id`),
  ADD CONSTRAINT `db_item_carrito_usuario_id_e8799e07_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

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

--
-- Filtros para la tabla `historial_compra`
--
ALTER TABLE `historial_compra`
  ADD CONSTRAINT `historial_compra_producto_id_a2c0a5d5_fk_db_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `db_producto` (`id`),
  ADD CONSTRAINT `historial_compra_usuario_id_acf4dafd_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-08-2023 a las 11:01:48
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `factura_api`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ayudantes`
--

CREATE TABLE `ayudantes` (
  `id` int(11) NOT NULL,
  `nombreApellido` text NOT NULL,
  `cedula` int(11) NOT NULL,
  `telefono` text NOT NULL,
  `idUsuario` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ayudantes`
--

INSERT INTO `ayudantes` (`id`, `nombreApellido`, `cedula`, `telefono`, `idUsuario`, `createdAt`, `updatedAt`) VALUES
(3, 'MICHELDYS NATERA', 18073922, '2222222', 'root', '2023-04-08 15:07:32', '2023-04-08 15:07:32'),
(5, 'leonardo sdsdsd', 18073923, 'ewewe', '', '2023-08-07 23:21:55', '2023-08-07 23:21:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categorias` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categorias`, `createdAt`, `updatedAt`) VALUES
(1, 'COMPACTADORA', '2023-02-20 18:50:05', '2023-02-20 18:50:05'),
(2, 'SUPERVISORA', '2023-02-20 18:50:05', '2023-02-20 18:50:05'),
(3, 'CISTERNA', '2023-02-20 18:50:49', '2023-02-20 18:50:49'),
(4, 'AUXILIO VIAL', '2023-02-20 18:50:49', '2023-02-20 18:50:49'),
(27, 'JEFE DE CONTRATO', '2023-02-20 19:17:12', '2023-02-20 19:17:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `choferes`
--

CREATE TABLE `choferes` (
  `id` int(11) NOT NULL,
  `nombreApellido` text NOT NULL,
  `cedula` int(11) NOT NULL,
  `telefono` text NOT NULL,
  `idUsuario` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `choferes`
--

INSERT INTO `choferes` (`id`, `nombreApellido`, `cedula`, `telefono`, `idUsuario`, `createdAt`, `updatedAt`) VALUES
(3, 'PEDRO PEREZ', 123654, '65656565', 'root', '2023-08-07 23:11:13', '2023-08-07 23:11:13'),
(5, 'ddd', 233, '33', '', '2023-08-09 08:30:19', '2023-08-09 08:30:19'),
(6, 'zds', 23, '23', '', '2023-08-09 08:31:39', '2023-08-09 08:31:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `nombreEmpresa` text NOT NULL,
  `rifEmpresa` text NOT NULL,
  `telefonoEmpresa` text NOT NULL,
  `emailEmpresa` text NOT NULL,
  `direccionEmpresa` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `nombreEmpresa`, `rifEmpresa`, `telefonoEmpresa`, `emailEmpresa`, `direccionEmpresa`, `createdAt`, `updatedAt`) VALUES
(8, 'sdsd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', '2023-02-12 00:49:56', '2023-02-12 00:49:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id` int(11) NOT NULL,
  `idSalida` int(11) NOT NULL,
  `fecha` int(11) NOT NULL,
  `hora` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id` int(11) NOT NULL,
  `marca` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE `modelos` (
  `id` int(11) NOT NULL,
  `modelo` text NOT NULL,
  `updatedAt` datetime NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modelos`
--

INSERT INTO `modelos` (`id`, `modelo`, `updatedAt`, `createdAt`) VALUES
(1, 'FORD-1721', '2023-02-20 21:11:33', '2023-02-20 21:11:33'),
(2, 'Mack Granite', '2023-08-01 04:05:17', '2023-08-01 04:05:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `id` int(11) NOT NULL,
  `ruta` text NOT NULL,
  `codRuta` varchar(4) NOT NULL,
  `idSupervisor` int(11) NOT NULL,
  `idUsuario` text NOT NULL,
  `idSector` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`id`, `ruta`, `codRuta`, `idSupervisor`, `idUsuario`, `idSector`, `createdAt`, `updatedAt`) VALUES
(10, '333333', '3333', 1, '', 1, '2023-08-08 01:29:47', '2023-08-08 01:29:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidas`
--

CREATE TABLE `salidas` (
  `id` int(11) NOT NULL,
  `unidad` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `pvr` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `pvrSalida` text NOT NULL,
  `correlativo` text NOT NULL,
  `idUsuario` text NOT NULL,
  `updatedAt` datetime NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `salidas`
--

INSERT INTO `salidas` (`id`, `unidad`, `pvr`, `pvrSalida`, `correlativo`, `idUsuario`, `updatedAt`, `createdAt`) VALUES
(39, '11', '{\"unidad\":11,\"placa\":\"xyt-520\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687307756627}', '', '1687307756627', 'root', '2023-06-21 00:35:56', '2023-06-21 00:35:56'),
(40, '11', '{\"unidad\":11,\"placa\":\"xyt-520\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687308175554}', '', '1687308175554', 'root', '2023-06-21 00:42:55', '2023-06-21 00:42:55'),
(41, '10', '{\"unidad\":10,\"placa\":\"CFGDDD\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687308531178,\"combustible\":\"1\",\"kilometraje\":\"1\",\"fecha\":\"2023-06-20\",\"hora\":\"20:48\"}', '', '1687308531178', 'root', '2023-06-21 00:48:51', '2023-06-21 00:48:51'),
(42, '10', '{\"unidad\":10,\"placa\":\"CFGDDD\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687309078105,\"salida\":[]}', '', '1687309078105', 'root', '2023-06-21 00:57:58', '2023-06-21 00:57:58'),
(43, '12', '{\"unidad\":12,\"placa\":\"zczxc\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"CISTERNA\",\"idUsuario\":\"root\",\"correlativo\":1687309671889,\"salida\":[]}', '', '1687309671889', 'root', '2023-06-21 01:07:51', '2023-06-21 01:07:51'),
(44, '11', '{\"unidad\":11,\"placa\":\"xyt-520\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687309969442,\"combustible\":\"1\",\"kilometraje\":\"1\",\"fecha\":\"2023-06-20\",\"hora\":\"21:12\"}', '', '1687309969442', 'root', '2023-06-21 01:12:49', '2023-06-21 01:12:49'),
(45, '11', '{\"unidad\":11,\"placa\":\"xyt-520\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687310046144,\"salida\":[]}', '', '1687310046144', 'root', '2023-06-21 01:14:06', '2023-06-21 01:14:06'),
(46, '11', '{\"unidad\":11,\"placa\":\"xyt-520\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687310845353,\"combustible\":\"1\",\"kilometraje\":\"1\",\"fecha\":\"2023-06-20\",\"hora\":\"21:27\"}', '', '1687310845353', 'root', '2023-06-21 01:27:25', '2023-06-21 01:27:25'),
(47, '10', '{\"unidad\":10,\"placa\":\"CFGDDD\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687312375417,\"combustible\":\"2\",\"kilometraje\":\"2\",\"fecha\":\"2023-05-31\",\"hora\":\"21:54\"}', '', '1687312375417', 'root', '2023-06-21 01:52:55', '2023-06-21 01:52:55'),
(48, '11', '{\"unidad\":11,\"placa\":\"xyt-520\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687312726911,\"salida\":\"21:59\"}', '', '1687312726911', 'root', '2023-06-21 01:58:46', '2023-06-21 01:58:46'),
(49, '10', '{\"unidad\":10,\"placa\":\"CFGDDD\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687313169910,\"salida\":[[]]}', '', '1687313169910', 'root', '2023-06-21 02:06:09', '2023-06-21 02:06:09'),
(50, '10', '{\"unidad\":10,\"placa\":\"CFGDDD\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687313485510}', '', '1687313485510', 'root', '2023-06-21 02:11:25', '2023-06-21 02:11:25'),
(51, '10', '{\"unidad\":10,\"placa\":\"CFGDDD\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687313629470}', '', '1687313629470', 'root', '2023-06-21 02:13:49', '2023-06-21 02:13:49'),
(52, '11', '{\"unidad\":11,\"placa\":\"xyt-520\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687313807502}', '', '1687313807502', 'root', '2023-06-21 02:16:47', '2023-06-21 02:16:47'),
(53, '11', '{\"unidad\":11,\"placa\":\"xyt-520\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687313893094,\"salida\":[]}', '', '1687313893094', 'root', '2023-06-21 02:18:13', '2023-06-21 02:18:13'),
(54, '11', '{\"unidad\":11,\"placa\":\"xyt-520\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687314138622,\"salida\":[]}', '', '1687314138622', 'root', '2023-06-21 02:22:18', '2023-06-21 02:22:18'),
(55, '11', '{\"unidad\":11,\"placa\":\"xyt-520\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687314279845,\"salida\":[]}', '', '1687314279845', 'root', '2023-06-21 02:24:39', '2023-06-21 02:24:39'),
(56, '11', '{\"unidad\":11,\"placa\":\"xyt-520\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687314383087,\"salida\":[]}', '', '1687314383087', 'root', '2023-06-21 02:26:23', '2023-06-21 02:26:23'),
(57, '11', '{\"unidad\":11,\"placa\":\"xyt-520\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687314480174,\"salida\":[]}', '', '1687314480174', 'root', '2023-06-21 02:28:00', '2023-06-21 02:28:00'),
(58, '11', '{\"unidad\":11,\"placa\":\"xyt-520\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687314837525,\"salida\":{\"combustible\":\"3\",\"kilometraje\":\"3\"}}', '', '1687314837525', 'root', '2023-06-21 02:33:57', '2023-06-21 02:33:57'),
(59, '11', '{\"unidad\":11,\"placa\":\"xyt-520\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687315479056,\"key\":\"22:44\"}', '', '1687315479056', 'root', '2023-06-21 02:44:39', '2023-06-21 02:44:39'),
(60, '10', '{\"unidad\":10,\"placa\":\"CFGDDD\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687609517028,\"chofer\":{\"id\":2,\"nombreApellido\":\"LEONARDO ESPINA\",\"cedula\":18073921,\"telefono\":\"222222\",\"idUsuario\":\"root\",\"createdAt\":\"2023-03-13T17:59:44.000Z\",\"updatedAt\":\"2023-04-05T15:25:51.000Z\"},\"ayudante\":{\"id\":3,\"nombreApellido\":\"MICHELDYS NATERA\",\"cedula\":18073922,\"telefono\":\"2222222\",\"idUsuario\":\"root\",\"createdAt\":\"2023-04-08T15:07:32.000Z\",\"updatedAt\":\"2023-04-08T15:07:32.000Z\"},\"ruta\":{\"id\":3,\"ruta\":\"SAN EL TIGRE\",\"codRuta\":\"C-23\",\"idUsuario\":\"root\",\"idSupervisor\":true,\"idSector\":1,\"createdAt\":\"2023-03-03T12:30:31.000Z\",\"updatedAt\":\"2023-03-03T12:30:31.000Z\",\"supervisore\":{\"id\":1,\"nombreApellido\":\"dfsdf\",\"cedula\":3333,\"telefono\":3333,\"idUsuario\":\"root\",\"jefe\":\"no\",\"createdAt\":\"2023-02-26T15:07:46.000Z\",\"updatedAt\":\"2023-02-26T15:07:46.000Z\"}},\"salida\":{\"combustible\":\"1\",\"kilometraje\":\"1\",\"fecha\":\"2023-06-02\",\"hora\":\"08:26\"},\"salidaCondicion\":{\"0\":{\"id\":1,\"condicion\":\"Cauchos #1\",\"listaTipoCondicion\":\"Buena\",\"listaObservacion\":\"sfsdf\"}},\"entrada\":{\"combustible\":\"1\",\"kilometraje\":\"1\",\"fecha\":\"2023-06-24\",\"hora\":\"08:25\"},\"entradaCondicion\":{\"0\":{\"id\":3,\"condicion\":\"Cauchos #3\",\"listaTipoCondicion\":\"Regular\",\"listaObservacion\":\"sdfd\"}}}', '', '1687609517028', 'root', '2023-06-24 12:25:17', '2023-06-24 12:25:17'),
(61, '10', '{\"unidad\":10,\"placa\":\"CFGDDD\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687619429844,\"chofer\":{\"id\":2,\"nombreApellido\":\"LEONARDO ESPINA\",\"cedula\":18073921,\"telefono\":\"222222\",\"idUsuario\":\"root\",\"createdAt\":\"2023-03-13T17:59:44.000Z\",\"updatedAt\":\"2023-04-05T15:25:51.000Z\"},\"ayudante\":{\"id\":3,\"nombreApellido\":\"MICHELDYS NATERA\",\"cedula\":18073922,\"telefono\":\"2222222\",\"idUsuario\":\"root\",\"createdAt\":\"2023-04-08T15:07:32.000Z\",\"updatedAt\":\"2023-04-08T15:07:32.000Z\"},\"ruta\":{\"id\":3,\"ruta\":\"SAN EL TIGRE\",\"codRuta\":\"C-23\",\"idUsuario\":\"root\",\"idSupervisor\":true,\"idSector\":1,\"createdAt\":\"2023-03-03T12:30:31.000Z\",\"updatedAt\":\"2023-03-03T12:30:31.000Z\",\"supervisore\":{\"id\":1,\"nombreApellido\":\"dfsdf\",\"cedula\":3333,\"telefono\":3333,\"idUsuario\":\"root\",\"jefe\":\"no\",\"createdAt\":\"2023-02-26T15:07:46.000Z\",\"updatedAt\":\"2023-02-26T15:07:46.000Z\"}},\"salida\":{\"kilometraje\":\"2\",\"fecha\":\"2023-05-31\",\"combustible\":\"2\",\"hora\":\"11:10\"},\"salidaCondicion\":{\"0\":{\"id\":1,\"condicion\":\"Cauchos #1\",\"listaTipoCondicion\":\"Regular\",\"listaObservacion\":\"22\"}},\"entrada\":{\"combustible\":\"3\",\"kilometraje\":\"3\",\"fecha\":\"2023-06-07\",\"hora\":\"11:12\"},\"entradaCondicion\":{\"0\":{\"id\":2,\"condicion\":\"Cauchos #2\",\"listaTipoCondicion\":\"Regular\",\"listaObservacion\":\"2\"}}}', '', '1687619429844', 'root', '2023-06-24 15:10:29', '2023-06-24 15:10:29'),
(62, '10', '{\"unidad\":10,\"placa\":\"CFGDDD\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687621420166,\"chofer\":{\"id\":2,\"nombreApellido\":\"LEONARDO ESPINA\",\"cedula\":18073921,\"telefono\":\"222222\",\"idUsuario\":\"root\",\"createdAt\":\"2023-03-13T17:59:44.000Z\",\"updatedAt\":\"2023-04-05T15:25:51.000Z\"},\"ayudante\":{\"id\":3,\"nombreApellido\":\"MICHELDYS NATERA\",\"cedula\":18073922,\"telefono\":\"2222222\",\"idUsuario\":\"root\",\"createdAt\":\"2023-04-08T15:07:32.000Z\",\"updatedAt\":\"2023-04-08T15:07:32.000Z\"},\"ruta\":{\"id\":3,\"ruta\":\"SAN EL TIGRE\",\"codRuta\":\"C-23\",\"idUsuario\":\"root\",\"idSupervisor\":true,\"idSector\":1,\"createdAt\":\"2023-03-03T12:30:31.000Z\",\"updatedAt\":\"2023-03-03T12:30:31.000Z\",\"supervisore\":{\"id\":1,\"nombreApellido\":\"dfsdf\",\"cedula\":3333,\"telefono\":3333,\"idUsuario\":\"root\",\"jefe\":\"no\",\"createdAt\":\"2023-02-26T15:07:46.000Z\",\"updatedAt\":\"2023-02-26T15:07:46.000Z\"}},\"salida\":{\"combustible\":\"235\",\"kilometraje\":\"235\",\"fecha\":\"2023-06-24\",\"hora\":\"11:42\"},\"salidaCondicion\":{\"0\":{\"id\":1,\"condicion\":\"Cauchos #1\",\"listaTipoCondicion\":\"Buena\",\"listaObservacion\":\"Sin observaciones \"},\"1\":{\"id\":2,\"condicion\":\"Cauchos #2\",\"listaTipoCondicion\":\"Mala\",\"listaObservacion\":\"Problemas con el caucho\"}},\"entrada\":{\"combustible\":\"256\",\"kilometraje\":\"235\",\"fecha\":\"2023-06-24\",\"hora\":\"11:43\"},\"entradaCondicion\":{\"0\":{\"id\":5,\"condicion\":\"Carroceria\",\"listaTipoCondicion\":\"Buena\",\"listaObservacion\":\"N/A\"}}}', '', '1687621420166', 'root', '2023-06-24 15:45:03', '2023-06-24 15:45:03'),
(63, '10', '{\"unidad\":10,\"placa\":\"CFGDDD\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687621906128,\"chofer\":{\"id\":2,\"nombreApellido\":\"LEONARDO ESPINA\",\"cedula\":18073921,\"telefono\":\"222222\",\"idUsuario\":\"root\",\"createdAt\":\"2023-03-13T17:59:44.000Z\",\"updatedAt\":\"2023-04-05T15:25:51.000Z\"},\"ayudante\":{\"id\":3,\"nombreApellido\":\"MICHELDYS NATERA\",\"cedula\":18073922,\"telefono\":\"2222222\",\"idUsuario\":\"root\",\"createdAt\":\"2023-04-08T15:07:32.000Z\",\"updatedAt\":\"2023-04-08T15:07:32.000Z\"},\"ruta\":{\"id\":3,\"ruta\":\"SAN EL TIGRE\",\"codRuta\":\"C-23\",\"idUsuario\":\"root\",\"idSupervisor\":true,\"idSector\":1,\"createdAt\":\"2023-03-03T12:30:31.000Z\",\"updatedAt\":\"2023-03-03T12:30:31.000Z\",\"supervisore\":{\"id\":1,\"nombreApellido\":\"dfsdf\",\"cedula\":3333,\"telefono\":3333,\"idUsuario\":\"root\",\"jefe\":\"no\",\"createdAt\":\"2023-02-26T15:07:46.000Z\",\"updatedAt\":\"2023-02-26T15:07:46.000Z\"}},\"salida\":{\"combustible\":\"2356\",\"kilometraje\":\"6565\",\"fecha\":\"2023-06-24\",\"hora\":\"11:51\"},\"salidaCondicion\":{\"0\":{\"id\":1,\"condicion\":\"Cauchos #1\",\"listaTipoCondicion\":\"Buena\",\"listaObservacion\":\"N/A\"}},\"entrada\":{\"combustible\":\"655\",\"kilometraje\":\"465\",\"fecha\":\"2023-06-24\",\"hora\":\"11:51\"},\"entradaCondicion\":{\"0\":{\"id\":1,\"condicion\":\"Cauchos #1\",\"listaTipoCondicion\":\"Buena\",\"listaObservacion\":\"N/A\"}}}', '', '1687621906128', 'root', '2023-06-24 15:51:46', '2023-06-24 15:51:46'),
(64, '10', '{\"unidad\":10,\"placa\":\"CFGDDD\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687622285622,\"chofer\":{\"id\":2,\"nombreApellido\":\"LEONARDO ESPINA\",\"cedula\":18073921,\"telefono\":\"222222\",\"idUsuario\":\"root\",\"createdAt\":\"2023-03-13T17:59:44.000Z\",\"updatedAt\":\"2023-04-05T15:25:51.000Z\"},\"ayudante\":{\"id\":3,\"nombreApellido\":\"MICHELDYS NATERA\",\"cedula\":18073922,\"telefono\":\"2222222\",\"idUsuario\":\"root\",\"createdAt\":\"2023-04-08T15:07:32.000Z\",\"updatedAt\":\"2023-04-08T15:07:32.000Z\"},\"ruta\":{\"id\":4,\"ruta\":\"CCC\",\"codRuta\":\"C-50\",\"idUsuario\":\"root\",\"idSupervisor\":true,\"idSector\":1,\"createdAt\":\"2023-03-07T18:19:06.000Z\",\"updatedAt\":\"2023-03-07T18:19:06.000Z\",\"supervisore\":{\"id\":1,\"nombreApellido\":\"dfsdf\",\"cedula\":3333,\"telefono\":3333,\"idUsuario\":\"root\",\"jefe\":\"no\",\"createdAt\":\"2023-02-26T15:07:46.000Z\",\"updatedAt\":\"2023-02-26T15:07:46.000Z\"}},\"salida\":{\"combustible\":\"253\",\"kilometraje\":\"256\",\"fecha\":\"2023-06-24\",\"hora\":\"11:56\"},\"salidaCondicion\":{\"0\":{\"id\":1,\"condicion\":\"Cauchos #1\",\"listaTipoCondicion\":\"Regular\",\"listaObservacion\":\"Dañado\"},\"1\":{\"id\":5,\"condicion\":\"Carroceria\",\"listaTipoCondicion\":\"Mala\",\"listaObservacion\":\"Dañado\"}},\"entrada\":{\"combustible\":\"2563\",\"kilometraje\":\"254\",\"fecha\":\"2023-06-24\",\"hora\":\"11:57\"},\"entradaCondicion\":{\"0\":{\"id\":1,\"condicion\":\"Cauchos #1\",\"listaTipoCondicion\":\"Regular\",\"listaObservacion\":\"Ningún \"}}}', '', '1687622285622', 'root', '2023-06-24 15:59:28', '2023-06-24 15:59:28'),
(65, '10', '{\"unidad\":10,\"placa\":\"CFGDDD\",\"marca\":\"FORD-1721\",\"tipoUnidad\":\"COMPACTADORA\",\"idUsuario\":\"root\",\"correlativo\":1687622638571,\"chofer\":{\"id\":2,\"nombreApellido\":\"LEONARDO ESPINA\",\"cedula\":18073921,\"telefono\":\"222222\",\"idUsuario\":\"root\",\"createdAt\":\"2023-03-13T17:59:44.000Z\",\"updatedAt\":\"2023-04-05T15:25:51.000Z\"},\"ayudante\":{\"id\":3,\"nombreApellido\":\"MICHELDYS NATERA\",\"cedula\":18073922,\"telefono\":\"2222222\",\"idUsuario\":\"root\",\"createdAt\":\"2023-04-08T15:07:32.000Z\",\"updatedAt\":\"2023-04-08T15:07:32.000Z\"},\"ruta\":{\"id\":3,\"ruta\":\"SAN EL TIGRE\",\"codRuta\":\"C-23\",\"idUsuario\":\"root\",\"idSupervisor\":true,\"idSector\":1,\"createdAt\":\"2023-03-03T12:30:31.000Z\",\"updatedAt\":\"2023-03-03T12:30:31.000Z\",\"supervisore\":{\"id\":1,\"nombreApellido\":\"dfsdf\",\"cedula\":3333,\"telefono\":3333,\"idUsuario\":\"root\",\"jefe\":\"no\",\"createdAt\":\"2023-02-26T15:07:46.000Z\",\"updatedAt\":\"2023-02-26T15:07:46.000Z\"}},\"salida\":{\"combustible\":\"254\",\"kilometraje\":\"236\",\"fecha\":\"2023-06-24\",\"hora\":\"12:02\"},\"salidaCondicion\":{\"0\":{\"id\":1,\"condicion\":\"Cauchos #1\",\"listaTipoCondicion\":\"Buena\",\"listaObservacion\":\"Ninguno\"},\"1\":{\"id\":2,\"condicion\":\"Cauchos #2\",\"listaTipoCondicion\":\"Mala\",\"listaObservacion\":\"Dañado\"}},\"entrada\":{\"combustible\":\"214\",\"kilometraje\":\"258\",\"fecha\":\"2023-06-24\",\"hora\":\"12:03\"},\"entradaCondicion\":{\"0\":{\"id\":5,\"condicion\":\"Carroceria\",\"listaTipoCondicion\":\"Buena\",\"listaObservacion\":\"Ninguno\"},\"1\":{\"id\":4,\"condicion\":\"Cauchos #4\",\"listaTipoCondicion\":\"Regular\",\"listaObservacion\":\"Liso\"}}}', '', '1687622638571', 'root', '2023-06-24 16:05:22', '2023-06-24 16:05:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sectores`
--

CREATE TABLE `sectores` (
  `id` int(11) NOT NULL,
  `sector` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sectores`
--

INSERT INTO `sectores` (`id`, `sector`, `createdAt`, `updatedAt`) VALUES
(1, 'PUERTO ORDAZ', '2023-02-26 22:46:17', '2023-02-26 22:46:17'),
(2, 'SAN FELIX', '2023-02-26 22:46:17', '2023-02-26 22:46:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supervisores`
--

CREATE TABLE `supervisores` (
  `id` int(11) NOT NULL,
  `nombreApellido` text NOT NULL,
  `cedula` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `jefe` varchar(3) NOT NULL,
  `idUsuario` text NOT NULL,
  `updatedAt` datetime NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `supervisores`
--

INSERT INTO `supervisores` (`id`, `nombreApellido`, `cedula`, `telefono`, `jefe`, `idUsuario`, `updatedAt`, `createdAt`) VALUES
(1, 'Perdo Perer', 3333, 3333, 'no', 'root', '2023-02-26 15:07:46', '2023-02-26 15:07:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipofallas`
--

CREATE TABLE `tipofallas` (
  `id` int(11) NOT NULL,
  `fallas` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipofallas`
--

INSERT INTO `tipofallas` (`id`, `fallas`, `createdAt`, `updatedAt`) VALUES
(1, 'DISPONIBLE', '2023-02-21 00:17:38', '2023-02-21 00:17:38'),
(2, 'FALLA MECANICA', '2023-02-21 00:17:38', '2023-02-21 00:17:38'),
(3, 'FUERA DE SEDE', '2023-02-21 00:18:20', '2023-02-21 00:18:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuarios`
--

CREATE TABLE `tipousuarios` (
  `id` int(11) NOT NULL,
  `nameuser` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `menu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipousuarios`
--

INSERT INTO `tipousuarios` (`id`, `nameuser`, `createdAt`, `updatedAt`, `ruta`, `menu`) VALUES
(1, 'estudiante', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '/estudiantes', 'menuAlumnos'),
(2, 'profesor', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '/profesores', 'menuProfesor'),
(3, 'administrador', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '/administrador', 'menuAdministrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idUser` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `idUser`, `createdAt`, `updatedAt`) VALUES
(1, 'leonardo', 'espina', 'root', '$2a$08$LfZfM09aGTc51IAlUpzAvOrC3CBpEHxV8E3sNqXDSt3XuSr5dftd2', 1, '2022-09-19 23:59:00', '2022-09-19 23:59:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` int(11) NOT NULL,
  `placa` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `unidad` text NOT NULL,
  `idModelo` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `idUser` int(11) DEFAULT 1,
  `idEstado` int(1) NOT NULL DEFAULT 1,
  `idMarca` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `placa`, `unidad`, `idModelo`, `idCategoria`, `idUser`, `idEstado`, `idMarca`, `createdAt`, `updatedAt`) VALUES
(37, 'Y5500', '1148', 2, 2, 1, 1, 0, '2023-08-07 23:09:38', '2023-08-07 23:10:05'),
(38, 'sdfsd', 'fsdf', 1, 1, 1, 1, 0, '2023-08-09 08:07:25', '2023-08-09 08:07:25'),
(39, '44', '44', 1, 1, 1, 1, 0, '2023-08-09 08:09:40', '2023-08-09 08:09:40'),
(40, 'sss', 'sds', 1, 1, 1, 1, 0, '2023-08-09 08:13:26', '2023-08-09 08:13:26'),
(41, '4422', '44', 1, 2, 1, 1, 0, '2023-08-09 08:14:45', '2023-08-09 08:14:45');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ayudantes`
--
ALTER TABLE `ayudantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `choferes`
--
ALTER TABLE `choferes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `salidas`
--
ALTER TABLE `salidas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sectores`
--
ALTER TABLE `sectores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `supervisores`
--
ALTER TABLE `supervisores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipofallas`
--
ALTER TABLE `tipofallas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipousuarios`
--
ALTER TABLE `tipousuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`) USING BTREE;

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ayudantes`
--
ALTER TABLE `ayudantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `choferes`
--
ALTER TABLE `choferes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `rutas`
--
ALTER TABLE `rutas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `salidas`
--
ALTER TABLE `salidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `tipousuarios`
--
ALTER TABLE `tipousuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

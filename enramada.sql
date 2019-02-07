-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-02-2019 a las 18:14:50
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `enramada`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alimentos`
--

CREATE TABLE `alimentos` (
  `codigo_al` varchar(20) NOT NULL DEFAULT '',
  `tipo_al` varchar(50) DEFAULT NULL,
  `nombre_al` varchar(50) DEFAULT NULL,
  `precio_al` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alimentos`
--

INSERT INTO `alimentos` (`codigo_al`, `tipo_al`, `nombre_al`, `precio_al`) VALUES
('AL0001', 'GASEOSAS', 'COCA COLA', '1.00'),
('AL0002', 'GASEOSAS', 'FANTA', '1.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `codigo_cli` text CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `producto_cli` varchar(50) DEFAULT NULL,
  `cantidad_cli` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_venta`
--

CREATE TABLE `registro_venta` (
  `numero` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,2) DEFAULT NULL,
  `fecha` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registro_venta`
--

INSERT INTO `registro_venta` (`numero`, `total`, `fecha`) VALUES
('00000001', '2.00', '06/02/2019'),
('00000002', '2.00', '07/02/2019'),
('00000003', '2.00', '07/02/2019');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `codigo_us` varchar(20) NOT NULL DEFAULT '',
  `nombre_us` varchar(50) DEFAULT NULL,
  `sexo_us` varchar(10) DEFAULT NULL,
  `tipo_us` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`codigo_us`, `nombre_us`, `sexo_us`, `tipo_us`, `pass`) VALUES
('US0001', 'FREDDY', 'MASCULINO', 'ADMINISTRADOR', 'nose'),
('US0003', 'DANIEL', 'MASCULINO', 'NORMAL', 'nose');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alimentos`
--
ALTER TABLE `alimentos`
  ADD PRIMARY KEY (`codigo_al`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codigo_cli`(50));

--
-- Indices de la tabla `registro_venta`
--
ALTER TABLE `registro_venta`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`codigo_us`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

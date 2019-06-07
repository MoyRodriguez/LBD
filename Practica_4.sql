-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 06-06-2019 a las 20:18:33
-- Versión del servidor: 5.7.19
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Practica_4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Boleto`
--

CREATE TABLE `Boleto` (
  `Boleto_id` int(11) NOT NULL,
  `Evento_id` int(11) NOT NULL,
  `Lugar_Evento_Bol` int(11) NOT NULL,
  `Area_Bol` tinyint(4) NOT NULL,
  `Seccion_Bol` tinyint(4) NOT NULL,
  `Fila_Bol` tinyint(4) NOT NULL,
  `Num_Asi_Bol` tinyint(4) NOT NULL,
  `Precio_Bol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ciudad`
--

CREATE TABLE `Ciudad` (
  `Ciudad_id` int(11) NOT NULL,
  `Nombre_Ciu` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Abreviatura_Ciu` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Estado_Ciu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Estado`
--

CREATE TABLE `Estado` (
  `Estado_id` int(11) NOT NULL,
  `Nombre_Est` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Abreviatura_Est` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Lada` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Estatus_Asiento`
--

CREATE TABLE `Estatus_Asiento` (
  `Est_Asi_id` int(11) NOT NULL,
  `Evento_EstAsi` int(11) NOT NULL,
  `Local_EstAsi` int(11) NOT NULL,
  `Area_EstAsi` tinyint(4) NOT NULL,
  `Seccion_EstAsi` tinyint(4) NOT NULL,
  `Fila_EstASi` tinyint(4) NOT NULL,
  `Num_Asiento_EstAsi` tinyint(4) NOT NULL,
  `Estatus_EstASi` varchar(15) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Evento`
--

CREATE TABLE `Evento` (
  `Evento_id` int(11) NOT NULL,
  `Nombre_Eve` varchar(40) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Tipo_Evento` int(11) NOT NULL,
  `Fecha_Evento` date NOT NULL,
  `Local_Eve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Forma_Pago`
--

CREATE TABLE `Forma_Pago` (
  `F_Pago_id` int(11) NOT NULL,
  `Nombre_Pag` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Especificacion` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Local_Evento`
--

CREATE TABLE `Local_Evento` (
  `Local_Evento_id` int(11) NOT NULL,
  `Nombre_LocEve` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Direccion_LocEve` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Asientos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Taquilla`
--

CREATE TABLE `Taquilla` (
  `Taquilla_id` int(11) NOT NULL,
  `Nombre_Taq` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Direccion_Taq` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Gerente_Taq` int(11) NOT NULL,
  `Ciudad_Taq` int(11) NOT NULL,
  `Estado_Taq` int(11) NOT NULL,
  `Num_Tel` int(11) NOT NULL,
  `Lada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ticket`
--

CREATE TABLE `Ticket` (
  `Ticket_id` int(11) NOT NULL,
  `Local_Tick` int(11) NOT NULL,
  `Evento_Tick` int(11) NOT NULL,
  `Cant_Bol_Tick` smallint(6) NOT NULL,
  `Fecha_Tick` date NOT NULL,
  `Subtotal` smallint(6) NOT NULL,
  `Cargo_Servicios` smallint(6) NOT NULL,
  `Total` int(11) NOT NULL,
  `Forma_Pago` int(11) NOT NULL,
  `Cambio` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tipo_Asento`
--

CREATE TABLE `Tipo_Asento` (
  `T_Asiento_id` int(11) NOT NULL,
  `Area_Asiento` varchar(10) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Seccion_Asiento` tinyint(4) NOT NULL,
  `Fila_Asiento` tinyint(4) NOT NULL,
  `Num_Asiento` int(11) NOT NULL,
  `Estatus_id` varchar(15) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Precio_Asiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tipo_Evento`
--

CREATE TABLE `Tipo_Evento` (
  `T_Evento_id` int(11) NOT NULL,
  `Nombre_Tev` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Boleto`
--
ALTER TABLE `Boleto`
  ADD PRIMARY KEY (`Boleto_id`),
  ADD KEY `Evento_id` (`Evento_id`),
  ADD KEY `Lugar_Evento_Bol` (`Lugar_Evento_Bol`);

--
-- Indices de la tabla `Ciudad`
--
ALTER TABLE `Ciudad`
  ADD PRIMARY KEY (`Ciudad_id`),
  ADD KEY `Estado_Ciu` (`Estado_Ciu`);

--
-- Indices de la tabla `Estado`
--
ALTER TABLE `Estado`
  ADD PRIMARY KEY (`Estado_id`);

--
-- Indices de la tabla `Estatus_Asiento`
--
ALTER TABLE `Estatus_Asiento`
  ADD PRIMARY KEY (`Est_Asi_id`),
  ADD KEY `Evento_EstAsi` (`Evento_EstAsi`),
  ADD KEY `Local_EstAsi` (`Local_EstAsi`);

--
-- Indices de la tabla `Evento`
--
ALTER TABLE `Evento`
  ADD PRIMARY KEY (`Evento_id`),
  ADD KEY `Tipo_Evento` (`Tipo_Evento`),
  ADD KEY `Local_Eve` (`Local_Eve`);

--
-- Indices de la tabla `Forma_Pago`
--
ALTER TABLE `Forma_Pago`
  ADD PRIMARY KEY (`F_Pago_id`);

--
-- Indices de la tabla `Local_Evento`
--
ALTER TABLE `Local_Evento`
  ADD PRIMARY KEY (`Local_Evento_id`),
  ADD KEY `Asientos` (`Asientos`);

--
-- Indices de la tabla `Taquilla`
--
ALTER TABLE `Taquilla`
  ADD PRIMARY KEY (`Taquilla_id`),
  ADD KEY `Ciudad_Taq` (`Ciudad_Taq`);

--
-- Indices de la tabla `Ticket`
--
ALTER TABLE `Ticket`
  ADD PRIMARY KEY (`Ticket_id`),
  ADD KEY `Local_Tick` (`Local_Tick`),
  ADD KEY `Evento_Tick` (`Evento_Tick`),
  ADD KEY `Forma_Pago` (`Forma_Pago`);

--
-- Indices de la tabla `Tipo_Asento`
--
ALTER TABLE `Tipo_Asento`
  ADD PRIMARY KEY (`T_Asiento_id`);

--
-- Indices de la tabla `Tipo_Evento`
--
ALTER TABLE `Tipo_Evento`
  ADD PRIMARY KEY (`T_Evento_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Boleto`
--
ALTER TABLE `Boleto`
  MODIFY `Boleto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Ciudad`
--
ALTER TABLE `Ciudad`
  MODIFY `Ciudad_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Estado`
--
ALTER TABLE `Estado`
  MODIFY `Estado_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Estatus_Asiento`
--
ALTER TABLE `Estatus_Asiento`
  MODIFY `Est_Asi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Evento`
--
ALTER TABLE `Evento`
  MODIFY `Evento_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Forma_Pago`
--
ALTER TABLE `Forma_Pago`
  MODIFY `F_Pago_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Local_Evento`
--
ALTER TABLE `Local_Evento`
  MODIFY `Local_Evento_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Taquilla`
--
ALTER TABLE `Taquilla`
  MODIFY `Taquilla_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Ticket`
--
ALTER TABLE `Ticket`
  MODIFY `Ticket_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Tipo_Asento`
--
ALTER TABLE `Tipo_Asento`
  MODIFY `T_Asiento_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Tipo_Evento`
--
ALTER TABLE `Tipo_Evento`
  MODIFY `T_Evento_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Boleto`
--
ALTER TABLE `Boleto`
  ADD CONSTRAINT `boleto_ibfk_1` FOREIGN KEY (`Lugar_Evento_Bol`) REFERENCES `Local_Evento` (`Local_Evento_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Ciudad`
--
ALTER TABLE `Ciudad`
  ADD CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`Estado_Ciu`) REFERENCES `Estado` (`Estado_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Estatus_Asiento`
--
ALTER TABLE `Estatus_Asiento`
  ADD CONSTRAINT `estatus_asiento_ibfk_1` FOREIGN KEY (`Local_EstAsi`) REFERENCES `Local_Evento` (`Local_Evento_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `estatus_asiento_ibfk_2` FOREIGN KEY (`Evento_EstAsi`) REFERENCES `Evento` (`Evento_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Evento`
--
ALTER TABLE `Evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`Local_Eve`) REFERENCES `Local_Evento` (`Local_Evento_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `evento_ibfk_2` FOREIGN KEY (`Tipo_Evento`) REFERENCES `Tipo_Evento` (`T_Evento_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Local_Evento`
--
ALTER TABLE `Local_Evento`
  ADD CONSTRAINT `local_evento_ibfk_1` FOREIGN KEY (`Asientos`) REFERENCES `Tipo_Asento` (`T_Asiento_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Taquilla`
--
ALTER TABLE `Taquilla`
  ADD CONSTRAINT `taquilla_ibfk_1` FOREIGN KEY (`Ciudad_Taq`) REFERENCES `Ciudad` (`Ciudad_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Ticket`
--
ALTER TABLE `Ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`Forma_Pago`) REFERENCES `Forma_Pago` (`F_Pago_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`Evento_Tick`) REFERENCES `Evento` (`Evento_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`Local_Tick`) REFERENCES `Taquilla` (`Taquilla_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

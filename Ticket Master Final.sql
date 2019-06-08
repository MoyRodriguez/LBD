-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 08-06-2019 a las 08:16:11
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
  `Area_Bol` varchar(10) COLLATE utf8mb4_spanish2_ci NOT NULL,
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

--
-- Volcado de datos para la tabla `Ciudad`
--

INSERT INTO `Ciudad` (`Ciudad_id`, `Nombre_Ciu`, `Abreviatura_Ciu`, `Estado_Ciu`) VALUES
(1, 'San Marcos', 'SNM', 1),
(2, 'Mexicali', 'Mex', 2),
(3, 'La Paz', 'LPZ', 3),
(4, 'San Francisco de Campeche', 'SFC', 4),
(5, 'Tuxtla Gutiérrez', 'TXG', 5),
(6, 'Chihuahua', 'CHH', 6),
(7, 'Ciudad de México', 'CDMX', 7),
(8, 'Saltillo', 'SLT', 8),
(9, 'Colima', 'COL', 9),
(10, 'Victoria de Durango', 'DUR', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empleados`
--

CREATE TABLE `Empleados` (
  `id_empleado` int(11) NOT NULL,
  `nombreemp` varchar(25) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellidoPemp` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellidoMemp` varchar(35) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `Empleados`
--

INSERT INTO `Empleados` (`id_empleado`, `nombreemp`, `apellidoPemp`, `apellidoMemp`) VALUES
(300, 'Mariana', 'Rodriguez', 'Gonzalez'),
(301, 'Barbara Viridiana', 'Espinosa', 'Lara'),
(302, 'Gerardo Mauricio', 'Tello', 'Escobar'),
(303, 'Ivan', 'Carrillo', 'Aguilar'),
(304, 'Alejandro', 'Saldaña', 'Cabañas'),
(305, 'Monica', 'Lopez', 'Castillo'),
(306, 'Adan', 'Zuñiga', 'Garza'),
(307, 'Diego', 'Vitela', 'Herrera'),
(308, 'Pancracio', 'Garza', 'Garza'),
(309, 'Alejandro', 'Sifuentes', 'Rios'),
(310, 'Judith Alejandra', 'Candelaria', 'Sanchez'),
(311, 'Daniela Ivon', 'Delgado', 'Avalos'),
(312, 'Aneth Mariane', 'Mendez', 'Gonzalez'),
(313, 'Jesus Angel', 'Garza', 'Treviño'),
(314, 'Andrea Anahi', 'Herbert', 'Perez'),
(315, 'Javier', 'Rios', 'Rios'),
(316, 'Pamela', 'Vera', 'Lopez'),
(317, 'Jaime Humberto', 'Garcia', 'Gaytan'),
(318, 'Andrea', 'Flores', 'Flores'),
(319, 'Ana Ofelia', 'Lugo', 'Contreras'),
(320, 'Evelin Citlali Anes', 'Castro', 'Perez'),
(321, 'Sara Daniela', 'Elizondo', 'Guajardo'),
(322, 'Jesus Heriberto', 'Gomez', 'Mercado'),
(323, 'Steve', 'Jhanson', 'Martins'),
(324, 'Mario Alberto', 'Charles', 'Martínez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empleados_T`
--

CREATE TABLE `Empleados_T` (
  `id_emplead` int(11) NOT NULL,
  `nombre_emple` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido_P_emple` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido_M_emple` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `tel_emple` int(11) NOT NULL,
  `direccion_emple` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL
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

--
-- Volcado de datos para la tabla `Estado`
--

INSERT INTO `Estado` (`Estado_id`, `Nombre_Est`, `Abreviatura_Est`, `Lada`) VALUES
(1, 'Aguascalientes', 'AGU', 1),
(2, 'Baja California', 'BCN', 2),
(3, 'Baja California Sur', 'BCS', 3),
(4, 'Campeche', 'CAM', 4),
(5, 'Chiapas', 'CHP', 5),
(6, 'Chihuahua', 'CHH', 6),
(7, 'Ciudad de México', 'CDMX', 7),
(8, 'Coahuila', 'COA', 8),
(9, 'Colima', 'COL', 9),
(10, 'Durango', 'DUR', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Estatus_Asiento`
--

CREATE TABLE `Estatus_Asiento` (
  `Est_Asi_id` int(11) NOT NULL,
  `Evento_EstAsi` int(11) NOT NULL,
  `Local_EstAsi` int(11) NOT NULL,
  `Area_EstAsi` varchar(10) COLLATE utf8mb4_spanish2_ci NOT NULL,
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

--
-- Volcado de datos para la tabla `Evento`
--

INSERT INTO `Evento` (`Evento_id`, `Nombre_Eve`, `Tipo_Evento`, `Fecha_Evento`, `Local_Eve`) VALUES
(1, 'Juan Gabriel', 1, '2019-06-27', 2),
(2, 'Sebastian yactura', 2, '2019-08-16', 4),
(3, 'Franc', 6, '2019-08-30', 1),
(4, 'Tec', 9, '2019-09-05', 2),
(5, 'John miltn', 10, '2019-10-24', 4),
(6, 'Tigres del norte', 7, '2019-10-31', 5),
(7, 'fgsg', 10, '2019-11-01', 10),
(8, 'tegdfg', 10, '2019-11-02', 9),
(9, 'ttgvv', 5, '2019-11-21', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Forma_Pago`
--

CREATE TABLE `Forma_Pago` (
  `F_Pago_id` int(11) NOT NULL,
  `Nombre_Pag` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Especificacion` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `Forma_Pago`
--

INSERT INTO `Forma_Pago` (`F_Pago_id`, `Nombre_Pag`, `Especificacion`) VALUES
(1, 'Efetivo', 'Inmediato'),
(2, 'Tarjeta Debito', 'Inmediato'),
(3, 'Tarjeta Credito', 'Inmediato'),
(4, 'oxxo', 'Inmediato'),
(5, 'Seven', 'Inmediato'),
(6, 'Transferencia', 'Inmediato'),
(7, 'Internet', 'Inmediato'),
(8, 'Banco', 'Inmediato'),
(9, 'Bitcoin', '3 dias'),
(10, 'Spei', '3 dias');

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

--
-- Volcado de datos para la tabla `Local_Evento`
--

INSERT INTO `Local_Evento` (`Local_Evento_id`, `Nombre_LocEve`, `Direccion_LocEve`, `Asientos`) VALUES
(1, 'Arena Mty', 'Fundidra', 5000),
(2, 'Arena Cdmx', 'centr', 314),
(3, 'bellas artes', 'centr', 123),
(4, 'Banamex', 'adlf mate', 1050),
(5, 'plaza toros', 'jshqsugd', 342),
(6, 'ewea', 'eerg', 314),
(7, 'artes', 'mayo 232', 1024),
(8, 'sdfsd', 'fdw', 3452),
(9, 'fwefef', 'wefwef', 5000),
(10, 'fwefw', 'fwefwef', 314);

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

--
-- Volcado de datos para la tabla `Taquilla`
--

INSERT INTO `Taquilla` (`Taquilla_id`, `Nombre_Taq`, `Direccion_Taq`, `Gerente_Taq`, `Ciudad_Taq`, `Estado_Taq`, `Num_Tel`, `Lada`) VALUES
(12, 'dfsdf', 'ssdfdfsd', 32, 7, 4, 234234, 234),
(22, 'Center', 'Av_Adlfo_Lopez_1050', 222, 2, 3, 4234234, 324),
(33, 'Center', 'Av_Adlfo_Lopez_1050', 222, 2, 3, 4234234, 324),
(44, 'Zocalo', 'Zona Centro', 234, 7, 7, 4534235, 511),
(55, 'Roma', 'Col Roma', 252, 7, 7, 23523434, 511),
(66, 'Trost', 'Muralla', 451, 4, 6, 125435, 231),
(77, 'Mirador', 'Col Mirador', 34, 8, 2, 4232323, 342),
(88, 'Independencia', 'Col Fundadores', 423, 5, 10, 342352, 323),
(99, 'Celaya', 'Plaza Galerias', 52, 9, 9, 1231254, 231),
(100, 'Palacio', 'SeGob', 32, 7, 7, 3422, 511);

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

--
-- Volcado de datos para la tabla `Tipo_Asento`
--

INSERT INTO `Tipo_Asento` (`T_Asiento_id`, `Area_Asiento`, `Seccion_Asiento`, `Fila_Asiento`, `Num_Asiento`, `Estatus_id`, `Precio_Asiento`) VALUES
(123, 'Prefetente', 4, 4, 100, 'Disponible', 3200),
(154, 'Gen Pref', 6, 9, 354, 'Disponible', 1200),
(234, 'rthe', 5, 3, 232, 'Disponible', 400),
(314, 'Vip', 1, 1, 50, 'Disponible', 5550),
(342, 'Numerado', 7, 5, 300, 'Disponible', 2200),
(1024, 'Esquina', 7, 9, 23, 'Disponible', 800),
(1050, 'Ctad', 5, 6, 356, 'Disponible', 1000),
(3452, 'gee5g', 52, 34, 23, 'Disponible', 300),
(4252, 'gd2', 1, 13, 10, 'Disponible', 250),
(5000, 'bbees', 2, 5, 235, 'Disponible', 600);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tipo_Evento`
--

CREATE TABLE `Tipo_Evento` (
  `T_Evento_id` int(11) NOT NULL,
  `Nombre_Tev` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `Tipo_Evento`
--

INSERT INTO `Tipo_Evento` (`T_Evento_id`, `Nombre_Tev`) VALUES
(1, 'Concierto'),
(2, 'Palenque'),
(3, 'Show Comedia'),
(4, 'Teatro'),
(5, 'Presentacion'),
(6, 'Stan-Up'),
(7, 'Baile'),
(8, 'Festival'),
(9, 'Graducacion'),
(10, 'otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE `Usuarios` (
  `Usuario_id` int(11) NOT NULL,
  `Nombre_Usu` varchar(15) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Contraseña_Usu` varchar(16) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Puesto_Usu` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Estatus_Usu` varchar(10) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista1`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista1` (
`Nombre_LocEve` varchar(30)
,`Direccion_LocEve` varchar(30)
,`Asientos` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista2`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista2` (
`Nombre_LocEve` varchar(30)
,`Direccion_LocEve` varchar(30)
,`Asientos` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista3`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista3` (
`Nombre_LocEve` varchar(30)
,`Direccion_LocEve` varchar(30)
,`Asientos` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista4`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista4` (
`Nombre_Eve` varchar(40)
,`Fecha_Evento` date
,`Local_Eve` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista5`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista5` (
`Nombre_Eve` varchar(40)
,`Fecha_Evento` date
,`Local_Eve` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista6`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista6` (
`Nombre_Eve` varchar(40)
,`Fecha_Evento` date
,`Local_Eve` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista7`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista7` (
`Nombre_Eve` varchar(40)
,`Fecha_Evento` date
,`Local_Eve` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista8`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista8` (
`Nombre_Taq` varchar(30)
,`Direccion_Taq` varchar(30)
,`Num_Tel` int(11)
,`Lada` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista9`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista9` (
`Nombre_Taq` varchar(30)
,`Direccion_Taq` varchar(30)
,`Num_Tel` int(11)
,`Lada` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista10`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista10` (
`Area_Asiento` varchar(10)
,`Seccion_Asiento` tinyint(4)
,`Fila_Asiento` tinyint(4)
,`Num_Asiento` int(11)
,`Precio_Asiento` int(11)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista1`
--
DROP TABLE IF EXISTS `vista1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista1`  AS  select `local_evento`.`Nombre_LocEve` AS `Nombre_LocEve`,`local_evento`.`Direccion_LocEve` AS `Direccion_LocEve`,`local_evento`.`Asientos` AS `Asientos` from `local_evento` where (`local_evento`.`Local_Evento_id` = '1') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista2`
--
DROP TABLE IF EXISTS `vista2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista2`  AS  select `local_evento`.`Nombre_LocEve` AS `Nombre_LocEve`,`local_evento`.`Direccion_LocEve` AS `Direccion_LocEve`,`local_evento`.`Asientos` AS `Asientos` from `local_evento` where (`local_evento`.`Local_Evento_id` = '2') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista3`
--
DROP TABLE IF EXISTS `vista3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista3`  AS  select `local_evento`.`Nombre_LocEve` AS `Nombre_LocEve`,`local_evento`.`Direccion_LocEve` AS `Direccion_LocEve`,`local_evento`.`Asientos` AS `Asientos` from `local_evento` where (`local_evento`.`Local_Evento_id` = '3') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista4`
--
DROP TABLE IF EXISTS `vista4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista4`  AS  select `evento`.`Nombre_Eve` AS `Nombre_Eve`,`evento`.`Fecha_Evento` AS `Fecha_Evento`,`evento`.`Local_Eve` AS `Local_Eve` from `evento` where (`evento`.`Tipo_Evento` = 'Concierto') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista5`
--
DROP TABLE IF EXISTS `vista5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista5`  AS  select `evento`.`Nombre_Eve` AS `Nombre_Eve`,`evento`.`Fecha_Evento` AS `Fecha_Evento`,`evento`.`Local_Eve` AS `Local_Eve` from `evento` where (`evento`.`Tipo_Evento` = 'Festival') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista6`
--
DROP TABLE IF EXISTS `vista6`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista6`  AS  select `evento`.`Nombre_Eve` AS `Nombre_Eve`,`evento`.`Fecha_Evento` AS `Fecha_Evento`,`evento`.`Local_Eve` AS `Local_Eve` from `evento` where (`evento`.`Tipo_Evento` = 'Show Comedia') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista7`
--
DROP TABLE IF EXISTS `vista7`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista7`  AS  select `evento`.`Nombre_Eve` AS `Nombre_Eve`,`evento`.`Fecha_Evento` AS `Fecha_Evento`,`evento`.`Local_Eve` AS `Local_Eve` from `evento` where (`evento`.`Tipo_Evento` = 'Teatro') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista8`
--
DROP TABLE IF EXISTS `vista8`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista8`  AS  select `taquilla`.`Nombre_Taq` AS `Nombre_Taq`,`taquilla`.`Direccion_Taq` AS `Direccion_Taq`,`taquilla`.`Num_Tel` AS `Num_Tel`,`taquilla`.`Lada` AS `Lada` from `taquilla` where (`taquilla`.`Ciudad_Taq` = '7') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista9`
--
DROP TABLE IF EXISTS `vista9`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista9`  AS  select `taquilla`.`Nombre_Taq` AS `Nombre_Taq`,`taquilla`.`Direccion_Taq` AS `Direccion_Taq`,`taquilla`.`Num_Tel` AS `Num_Tel`,`taquilla`.`Lada` AS `Lada` from `taquilla` where (`taquilla`.`Ciudad_Taq` = '9') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista10`
--
DROP TABLE IF EXISTS `vista10`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista10`  AS  select `tipo_asento`.`Area_Asiento` AS `Area_Asiento`,`tipo_asento`.`Seccion_Asiento` AS `Seccion_Asiento`,`tipo_asento`.`Fila_Asiento` AS `Fila_Asiento`,`tipo_asento`.`Num_Asiento` AS `Num_Asiento`,`tipo_asento`.`Precio_Asiento` AS `Precio_Asiento` from `tipo_asento` where (`tipo_asento`.`Estatus_id` = 'Disponible') ;

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
-- Indices de la tabla `Empleados`
--
ALTER TABLE `Empleados`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `Empleados_T`
--
ALTER TABLE `Empleados_T`
  ADD PRIMARY KEY (`id_emplead`);

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
  ADD KEY `Ciudad_Taq` (`Ciudad_Taq`),
  ADD KEY `Estado_Taq` (`Estado_Taq`),
  ADD KEY `Gerente_Taq` (`Gerente_Taq`);

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
-- Indices de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`Usuario_id`),
  ADD KEY `empleado` (`empleado`);

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
  MODIFY `Ciudad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Empleados`
--
ALTER TABLE `Empleados`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT de la tabla `Empleados_T`
--
ALTER TABLE `Empleados_T`
  MODIFY `id_emplead` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Estado`
--
ALTER TABLE `Estado`
  MODIFY `Estado_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Estatus_Asiento`
--
ALTER TABLE `Estatus_Asiento`
  MODIFY `Est_Asi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Evento`
--
ALTER TABLE `Evento`
  MODIFY `Evento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `Forma_Pago`
--
ALTER TABLE `Forma_Pago`
  MODIFY `F_Pago_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Local_Evento`
--
ALTER TABLE `Local_Evento`
  MODIFY `Local_Evento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Taquilla`
--
ALTER TABLE `Taquilla`
  MODIFY `Taquilla_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `Ticket`
--
ALTER TABLE `Ticket`
  MODIFY `Ticket_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Tipo_Asento`
--
ALTER TABLE `Tipo_Asento`
  MODIFY `T_Asiento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5001;

--
-- AUTO_INCREMENT de la tabla `Tipo_Evento`
--
ALTER TABLE `Tipo_Evento`
  MODIFY `T_Evento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  MODIFY `Usuario_id` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `taquilla_ibfk_1` FOREIGN KEY (`Ciudad_Taq`) REFERENCES `Ciudad` (`Ciudad_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `taquilla_ibfk_2` FOREIGN KEY (`Estado_Taq`) REFERENCES `Ciudad` (`Estado_Ciu`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Ticket`
--
ALTER TABLE `Ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`Forma_Pago`) REFERENCES `Forma_Pago` (`F_Pago_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`Evento_Tick`) REFERENCES `Evento` (`Evento_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`Local_Tick`) REFERENCES `Taquilla` (`Taquilla_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`empleado`) REFERENCES `Empleados_T` (`id_emplead`) ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`Usuario_id`) REFERENCES `Taquilla` (`Gerente_Taq`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

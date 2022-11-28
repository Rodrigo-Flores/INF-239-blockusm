-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2022 a las 07:50:50
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blockusm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas_rentadas`
--

CREATE TABLE `peliculas_rentadas` (
  `id` int(11) NOT NULL,
  `id_pelicula` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `rentada` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peliculas_rentadas`
--

INSERT INTO `peliculas_rentadas` (`id`, `id_pelicula`, `id_usuario`, `rentada`) VALUES
(1, 3, 1, 1),
(2, 12, 1, 1),
(3, 19, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `peliculas_rentadas`
--
ALTER TABLE `peliculas_rentadas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pelicula` (`id_pelicula`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `peliculas_rentadas`
--
ALTER TABLE `peliculas_rentadas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `peliculas_rentadas`
--
ALTER TABLE `peliculas_rentadas`
  ADD CONSTRAINT `peliculas_rentadas_ibfk_1` FOREIGN KEY (`id_pelicula`) REFERENCES `peliculas` (`id`),
  ADD CONSTRAINT `peliculas_rentadas_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

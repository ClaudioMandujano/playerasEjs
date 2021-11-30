-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 30-11-2021 a las 20:27:53
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `productos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `category` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `price` float NOT NULL,
  `description` varchar(250) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imagen` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `description`, `imagen`) VALUES
(1, 'Vans', 'running', 25000, 'deporte diario', './images/5.png'),
(2, 'nike air', 'casual', 20000, 'Confort', './images/2.png'),
(3, 'converse', 'casual', 10000, 'Confort plus', './images/1.png'),
(4, 'Prune', 'Verde', 11000, 'Sport', './images/4.png'),
(5, 'Ray Ban', 'casual', 10500, 'Aviador', './images/6.png'),
(6, 'Buzo Nike', 'Hombre', 5990, 'El mejor', './images/product_9.png'),
(8, 'Tommy Hilfiger', 'Hombre', 12.376, 'Sweater Rojo', './images/3.png'),
(9, 'Louis Vuitton', 'Mujer', 15660, 'des Garçons', './images/8.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

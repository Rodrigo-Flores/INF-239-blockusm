-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2022 a las 22:21:40
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
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `ejemplares_disponibles` int(11) NOT NULL,
  `ejemplares_totales` int(11) NOT NULL,
  `publico` varchar(2) NOT NULL,
  `duracion` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `reparto` varchar(100) NOT NULL,
  `calificacion_media` int(11) NOT NULL,
  `veces_rentada` int(11) NOT NULL,
  `calificacion_media_usmtomatoes` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `genero`, `descripcion`, `ejemplares_disponibles`, `ejemplares_totales`, `publico`, `duracion`, `precio`, `reparto`, `calificacion_media`, `veces_rentada`, `calificacion_media_usmtomatoes`, `imagen`) VALUES
(1, 'The Godfather', 'Drama', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 10, 10, 'R', 175, 100, 'Marlon Brando, Al Pacino, James Caan', 9, 0, 9, 'https://www.imdb.com/title/tt0068646/mediaviewer/rm1015628032'),
(2, 'The Dark Knight', 'Action, Crime, Drama', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, the caped crusader must come to terms with one of the greatest psychological tests of his ability to fight injustice.', 10, 10, 'PG', 152, 150, 'Christian Bale, Heath Ledger, Aaron Eckhart', 9, 0, 9, 'https://www.imdb.com/title/tt0468569/mediaviewer/rm1653267456'),
(3, 'The Lord of the Rings: The Return of the King', 'Adventure, Drama, Fantasy', 'Gandalf and Aragorn lead the World of', 10, 10, 'PG', 201, 200, 'Elijah Wood, Viggo Mortensen, Ian McKellen', 9, 0, 9, 'https://www.imdb.com/title/tt0167260/mediaviewer/rm1015628032'),
(4, 'The Shawshank Redemption', 'Drama, Crime', 'Two imprisoned', 10, 10, 'R', 142, 250, 'Tim Robbins, Morgan Freeman, Bob Gunton', 9, 0, 9, 'https://www.imdb.com/title/tt0111161/mediaviewer/rm1015628032'),
(5, 'The Lord of the Rings: The Fellowship of the Ring', 'Adventure, Drama, Fantasy', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.', 10, 10, 'PG', 178, 300, 'Elijah Wood, Ian McKellen, Orlando Bloom', 9, 0, 9, 'https://www.imdb.com/title/tt0120737/mediaviewer/rm1015628032'),
(6, 'The Lord of the Rings: The Two Towers', 'Adventure, Drama, Fantasy', 'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron\'s new ally, Saruman, and his hordes of Isengard.', 10, 10, 'PG', 179, 350, 'Elijah Wood, Ian McKellen, Viggo Mortensen', 9, 0, 9, 'https://www.imdb.com/title/tt0167261/mediaviewer/rm1015628032'),
(7, 'The Matrix', 'Action, Sci-Fi', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 10, 10, 'R', 136, 400, 'Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss', 9, 0, 9, 'https://www.imdb.com/title/tt0133093/mediaviewer/rm1015628032'),
(8, 'Inception', 'Action, Adventure, Sci-Fi', 'A thief, who steals corporate secrets through use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.', 10, 10, 'PG', 148, 450, 'Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page', 9, 0, 9, 'https://www.imdb.com/title/tt1375666/mediaviewer/rm1015628032'),
(9, 'Fight Club', 'Drama', 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.', 10, 10, 'R', 139, 500, 'Brad Pitt, Edward Norton, Meat Loaf', 9, 0, 9, 'https://www.imdb.com/title/tt0137523/mediaviewer/rm1015628032'),
(10, 'Forrest Gump', 'Drama, Romance', 'Forrest Gump, while not intelligent, has accidentally been present at many historic moments, but his true love, Jenny Curran, eludes him.', 10, 10, 'PG', 142, 550, 'Tom Hanks, Robin Wright, Gary Sinise', 9, 0, 9, 'https://www.imdb.com/title/tt0109830/mediaviewer/rm1015628032'),
(11, 'Interestellar', 'Adventure, Drama, Sci-Fi', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.', 10, 10, 'PG', 169, 650, 'Matthew McConaughey, Anne Hathaway, Jessica Chastain', 9, 0, 9, 'https://www.imdb.com/title/tt0816692/mediaviewer/rm1015628032'),
(12, 'The Last Samurai', 'Action, Drama, History', 'An American military advisor embraces the Samurai culture he was hired to destroy after he is captured in battle.', 10, 10, 'R', 154, 700, 'Tom Cruise, Ken Watanabe, Timothy Spall', 9, 0, 9, 'https://www.imdb.com/title/tt0325710/mediaviewer/rm1015628032'),
(13, 'Hidden Figures', 'Biography, Drama, History', 'The story of a team of woman mathematicians who served a vital role in NASA during the early years of the U.S. space program.', 10, 10, 'PG', 127, 750, 'Taraji P. Henson, Octavia Spencer, Janelle Monáe', 9, 0, 9, 'https://www.imdb.com/title/tt4846340/mediaviewer/rm1015628032'),
(14, 'The Martian', 'Adventure, Drama, Sci-Fi', 'An astronaut becomes stranded on Mars after his team assume him dead, and must rely on his ingenuity to find a way to signal to Earth that he is alive.', 10, 10, 'PG', 144, 800, 'Matt Damon, Jessica Chastain, Kristen Wiig', 9, 0, 9, 'https://www.imdb.com/title/tt3659388/mediaviewer/rm1015628032'),
(15, 'The Imitation Game', 'Biography, Drama, Thriller', 'During World War II, the English mathematical genius Alan Turing tries to crack the German Enigma code with help from fellow mathematicians.', 10, 10, 'PG', 114, 850, 'Benedict Cumberbatch, Keira Knightley, Matthew Goode', 9, 0, 9, 'https://www.imdb.com/title/tt2084970/mediaviewer/rm1015628032'),
(16, 'The Wolf of Wall Street', 'Biography, Comedy, Crime', 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.', 10, 10, 'R', 180, 900, 'Leonardo DiCaprio, Jonah Hill, Margot Robbie', 9, 0, 9, 'https://www.imdb.com/title/tt0993846/mediaviewer/rm1015628032'),
(17, 'The Godfather', 'Crime, Drama', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 10, 10, 'R', 175, 950, 'Marlon Brando, Al Pacino, James Caan', 9, 0, 9, 'https://www.imdb.com/title/tt0068646/mediaviewer/rm1015628032'),
(18, 'The Godfather: Part II', 'Crime, Drama', 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.', 10, 10, 'R', 202, 1000, 'Al Pacino, Robert De Niro, Robert Duvall', 9, 0, 9, 'https://www.imdb.com/title/tt0071562/mediaviewer/rm1015628032'),
(19, 'Bridge of Spies', 'Drama, History, Thriller', 'During the Cold War, an American lawyer is recruited to defend an arrested Soviet spy in court, and then help the CIA facilitate an exchange of the spy for the Soviet captured American U2 spy plane pilot, Francis Gary Powers.', 10, 10, 'PG', 142, 1050, 'Tom Hanks, Mark Rylance, Alan Alda', 9, 0, 9, 'https://www.imdb.com/title/tt3682448/mediaviewer/rm1015628032'),
(20, 'The Mole Agent', 'Comedy, Crime, Drama', 'A Chilean detective is sent to a small town in the north of the country to investigate a old woman', 10, 10, 'PG', 100, 1100, 'Maite Alberdi, Sergio Chamy, Romulo Aitken', 9, 0, 9, 'https://www.imdb.com/title/tt11394298/mediaviewer/rm2054660865/?ref_=tt_ov_i');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `user_name` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `saldo` int(11) NOT NULL DEFAULT 500,
  `seguidores` int(11) NOT NULL DEFAULT 0,
  `seguidos` int(11) NOT NULL DEFAULT 0,
  `descripcion` varchar(100) NOT NULL DEFAULT 'Sin descripción',
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`user_name`, `nombre`, `saldo`, `seguidores`, `seguidos`, `descripcion`, `password`) VALUES
('rodrigo', 'Rodrigo Flores', 500, 0, 0, 'sus', '123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

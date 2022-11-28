-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2022 a las 07:50:40
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
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `genero`, `descripcion`, `ejemplares_disponibles`, `ejemplares_totales`, `publico`, `duracion`, `precio`, `reparto`, `calificacion_media`, `veces_rentada`, `calificacion_media_usmtomatoes`, `imagen`) VALUES
(1, 'The Godfather', 'Drama', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 10, 10, 'R', 175, 100, 'Marlon Brando, Al Pacino, James Caan', 9, 0, 9, 'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg'),
(2, 'The Dark Knight', 'Action, Crime, Drama', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, the caped crusader must come to terms with one of the greatest psychological tests of his ability to fight injustice.', 10, 10, 'PG', 152, 150, 'Christian Bale, Heath Ledger, Aaron Eckhart', 9, 0, 9, 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg'),
(3, 'The Lord of the Rings: The Return of the King', 'Adventure, Drama, Fantasy', 'Gandalf and Aragorn lead the World of', 10, 10, 'PG', 201, 200, 'Elijah Wood, Viggo Mortensen, Ian McKellen', 9, 0, 9, 'https://images-na.ssl-images-amazon.com/images/S/pv-target-images/44f7e18d9bc7942f3ebaf39869014b9f137b14e67fd2a8564f42ebaa84613ea7._RI_V_TTW_.jpg'),
(4, 'The Shawshank Redemption', 'Drama, Crime', 'Two imprisoned', 10, 10, 'R', 142, 250, 'Tim Robbins, Morgan Freeman, Bob Gunton', 9, 0, 9, 'https://pics.filmaffinity.com/Cadena_perpetua-576140557-large.jpg'),
(5, 'The Lord of the Rings: The Fellowship of the Ring', 'Adventure, Drama, Fantasy', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.', 10, 10, 'PG', 178, 300, 'Elijah Wood, Ian McKellen, Orlando Bloom', 9, 0, 9, 'https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_.jpg'),
(6, 'The Lord of the Rings: The Two Towers', 'Adventure, Drama, Fantasy', 'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron\'s new ally, Saruman, and his hordes of Isengard.', 10, 10, 'PG', 179, 350, 'Elijah Wood, Ian McKellen, Viggo Mortensen', 9, 0, 9, 'https://m.media-amazon.com/images/M/MV5BZGMxZTdjZmYtMmE2Ni00ZTdkLWI5NTgtNjlmMjBiNzU2MmI5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg'),
(7, 'The Matrix', 'Action, Sci-Fi', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 10, 10, 'R', 136, 400, 'Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss', 9, 0, 9, 'https://pics.filmaffinity.com/Matrix-430409153-large.jpg'),
(8, 'Inception', 'Action, Adventure, Sci-Fi', 'A thief, who steals corporate secrets through use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.', 10, 10, 'PG', 148, 450, 'Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page', 9, 0, 9, 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_.jpg'),
(9, 'Fight Club', 'Drama', 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.', 10, 10, 'R', 139, 500, 'Brad Pitt, Edward Norton, Meat Loaf', 9, 0, 9, 'https://m.media-amazon.com/images/M/MV5BNDIzNDU0YzEtYzE5Ni00ZjlkLTk5ZjgtNjM3NWE4YzA3Nzk3XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg'),
(10, 'Forrest Gump', 'Drama, Romance', 'Forrest Gump, while not intelligent, has accidentally been present at many historic moments, but his true love, Jenny Curran, eludes him.', 10, 10, 'PG', 142, 550, 'Tom Hanks, Robin Wright, Gary Sinise', 9, 0, 9, 'https://pics.filmaffinity.com/Forrest_Gump-212765827-large.jpg'),
(11, 'Interestellar', 'Adventure, Drama, Sci-Fi', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.', 10, 10, 'PG', 169, 650, 'Matthew McConaughey, Anne Hathaway, Jessica Chastain', 9, 0, 9, 'https://pics.filmaffinity.com/Interstellar-366875261-large.jpg'),
(12, 'The Last Samurai', 'Action, Drama, History', 'An American military advisor embraces the Samurai culture he was hired to destroy after he is captured in battle.', 10, 10, 'R', 154, 700, 'Tom Cruise, Ken Watanabe, Timothy Spall', 9, 0, 9, 'https://m.media-amazon.com/images/M/MV5BMzkyNzQ1Mzc0NV5BMl5BanBnXkFtZTcwODg3MzUzMw@@._V1_.jpg'),
(13, 'Hidden Figures', 'Biography, Drama, History', 'The story of a team of woman mathematicians who served a vital role in NASA during the early years of the U.S. space program.', 10, 10, 'PG', 127, 750, 'Taraji P. Henson, Octavia Spencer, Janelle Monáe', 9, 0, 9, 'https://m.media-amazon.com/images/M/MV5BMzg2Mzg4YmUtNDdkNy00NWY1LWE3NmEtZWMwNGNlMzE5YzU3XkEyXkFqcGdeQXVyMjA5MTIzMjQ@._V1_FMjpg_UX1000_.jpg'),
(14, 'The Martian', 'Adventure, Drama, Sci-Fi', 'An astronaut becomes stranded on Mars after his team assume him dead, and must rely on his ingenuity to find a way to signal to Earth that he is alive.', 10, 10, 'PG', 144, 800, 'Matt Damon, Jessica Chastain, Kristen Wiig', 9, 0, 9, 'https://pics.filmaffinity.com/Marte_The_Martian-654445335-large.jpg'),
(15, 'The Imitation Game', 'Biography, Drama, Thriller', 'During World War II, the English mathematical genius Alan Turing tries to crack the German Enigma code with help from fellow mathematicians.', 10, 10, 'PG', 114, 850, 'Benedict Cumberbatch, Keira Knightley, Matthew Goode', 9, 0, 9, 'https://m.media-amazon.com/images/M/MV5BOTgwMzFiMWYtZDhlNS00ODNkLWJiODAtZDVhNzgyNzJhYjQ4L2ltYWdlXkEyXkFqcGdeQXVyNzEzOTYxNTQ@._V1_.jpg'),
(16, 'The Wolf of Wall Street', 'Biography, Comedy, Crime', 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.', 10, 10, 'R', 180, 900, 'Leonardo DiCaprio, Jonah Hill, Margot Robbie', 9, 0, 9, 'https://m.media-amazon.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_.jpg'),
(17, 'The Godfather: Part II', 'Crime, Drama', 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.', 10, 10, 'R', 202, 1000, 'Al Pacino, Robert De Niro, Robert Duvall', 9, 0, 9, 'https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg'),
(18, 'Bridge of Spies', 'Drama, History, Thriller', 'During the Cold War, an American lawyer is recruited to defend an arrested Soviet spy in court, and then help the CIA facilitate an exchange of the spy for the Soviet captured American U2 spy plane pilot, Francis Gary Powers.', 10, 10, 'PG', 142, 1050, 'Tom Hanks, Mark Rylance, Alan Alda', 9, 0, 9, 'https://m.media-amazon.com/images/M/MV5BMjIxOTI0MjU5NV5BMl5BanBnXkFtZTgwNzM4OTk4NTE@._V1_.jpg'),
(19, 'The Mole Agent', 'Comedy, Crime, Drama', 'A Chilean detective is sent to a small town in the north of the country to investigate a old woman', 10, 10, 'PG', 100, 1100, 'Maite Alberdi, Sergio Chamy, Romulo Aitken', 9, 0, 9, 'https://m.media-amazon.com/images/M/MV5BMzI1NDk4NTYtNzZjNy00MjA5LWE2MTQtOTU1ZjA4OTc4MWM5XkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg'),
(20, 'Spider-Man: Into the Spider-Verse\r\n', 'Animation,Action,Adventure', 'New York City teenager Miles Morales struggles to live up to the expectations of his father, police officer Jefferson Davis, who sees Spider-Man as a menace. Miles adjusts to prep school, and visits his uncle Aaron Davis, who takes him to an abandoned subway station to paint graffiti. Miles is bitten by a radioactive spider and gains spider-like abilities similar to Spider-Man.', 25, 50, 'PG', 117, 150, 'Shameik Moore\r\nJake Johnson Hailee Steinfeld\r\n', 0, 0, 9, 'https://m.media-amazon.com/images/M/MV5BMjMwNDkxMTgzOF5BMl5BanBnXkFtZTgwNTkwNTQ3NjM@._V1_.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

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

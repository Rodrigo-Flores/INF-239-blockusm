-- Los usuarios cuentan con un nombre, saldo por defecto de 500, n ́umero de seguidores, numero de cuentas seguidas y una descripci ́on personal;

CREATE TABLE usuarios (
    id INT NOT NULL AUTO_INCREMENT,
    user_name VARCHAR(50) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    saldo INT NOT NULL DEFAULT 500,
    seguidores INT NOT NULL DEFAULT 0,
    seguidos INT NOT NULL DEFAULT 0,
    descripcion VARCHAR(100) NOT NULL DEFAULT 'Sin descripción',
    password VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

-- Las pel ́ıculas cuentan con g ́eneros, descripci ́on, ejemplares;
-- disponibles, ejemplares totales, p ́ublico (G, PG o R), duraci ́on, precio, reparto, calificaci ́on me-;
-- dia seg ́un el sitio, veces rentada en el sitio, calificaci ́on media seg ́un usmtomatoes y una imagen;
-- que representa el contenido multimedia;

CREATE TABLE peliculas (
    id INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    descripcion VARCHAR(500) NOT NULL,
    ejemplares_disponibles INT NOT NULL,
    ejemplares_totales INT NOT NULL,
    publico VARCHAR(2) NOT NULL,
    duracion INT NOT NULL,
    precio INT NOT NULL,
    reparto VARCHAR(100) NOT NULL,
    calificacion_media INT NOT NULL,
    veces_rentada INT NOT NULL,
    calificacion_media_usmtomatoes INT NOT NULL,
    imagen VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

-- insert peliculas;
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('The Godfather', 'Drama', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 10, 10, 'R', 175, 100, 'Marlon Brando, Al Pacino, James Caan', 9, 0, 9, 'https://www.imdb.com/title/tt0068646/mediaviewer/rm1015628032');
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('The Dark Knight', 'Action, Crime, Drama', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, the caped crusader must come to terms with one of the greatest psychological tests of his ability to fight injustice.', 10, 10, 'PG', 152, 150, 'Christian Bale, Heath Ledger, Aaron Eckhart', 9, 0, 9, 'https://www.imdb.com/title/tt0468569/mediaviewer/rm1653267456');
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('The Lord of the Rings: The Return of the King', 'Adventure, Drama, Fantasy', 'Gandalf and Aragorn lead the World of', 10, 10, 'PG', 201, 200, 'Elijah Wood, Viggo Mortensen, Ian McKellen', 9, 0, 9, 'https://www.imdb.com/title/tt0167260/mediaviewer/rm1015628032');
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('The Shawshank Redemption', 'Drama, Crime', 'Two imprisoned', 10, 10, 'R', 142, 250, 'Tim Robbins, Morgan Freeman, Bob Gunton', 9, 0, 9, 'https://www.imdb.com/title/tt0111161/mediaviewer/rm1015628032');
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('The Lord of the Rings: The Fellowship of the Ring', 'Adventure, Drama, Fantasy', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.', 10, 10, 'PG', 178, 300, 'Elijah Wood, Ian McKellen, Orlando Bloom', 9, 0, 9, 'https://www.imdb.com/title/tt0120737/mediaviewer/rm1015628032');
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('The Lord of the Rings: The Two Towers', 'Adventure, Drama, Fantasy', 'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron''s new ally, Saruman, and his hordes of Isengard.', 10, 10, 'PG', 179, 350, 'Elijah Wood, Ian McKellen, Viggo Mortensen', 9, 0, 9, 'https://www.imdb.com/title/tt0167261/mediaviewer/rm1015628032');
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('The Matrix', 'Action, Sci-Fi', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 10, 10, 'R', 136, 400, 'Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss', 9, 0, 9, 'https://www.imdb.com/title/tt0133093/mediaviewer/rm1015628032');
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('Inception', 'Action, Adventure, Sci-Fi', 'A thief, who steals corporate secrets through use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.', 10, 10, 'PG', 148, 450, 'Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page', 9, 0, 9, 'https://www.imdb.com/title/tt1375666/mediaviewer/rm1015628032');
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('Fight Club', 'Drama', 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.', 10, 10, 'R', 139, 500, 'Brad Pitt, Edward Norton, Meat Loaf', 9, 0, 9, 'https://www.imdb.com/title/tt0137523/mediaviewer/rm1015628032');
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('Forrest Gump', 'Drama, Romance', 'Forrest Gump, while not intelligent, has accidentally been present at many historic moments, but his true love, Jenny Curran, eludes him.', 10, 10, 'PG', 142, 550, 'Tom Hanks, Robin Wright, Gary Sinise', 9, 0, 9, 'https://www.imdb.com/title/tt0109830/mediaviewer/rm1015628032');
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('Interestellar', 'Adventure, Drama, Sci-Fi', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity''s survival.', 10, 10, 'PG', 169, 650, 'Matthew McConaughey, Anne Hathaway, Jessica Chastain', 9, 0, 9, 'https://www.imdb.com/title/tt0816692/mediaviewer/rm1015628032');
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('The Last Samurai', 'Action, Drama, History', 'An American military advisor embraces the Samurai culture he was hired to destroy after he is captured in battle.', 10, 10, 'R', 154, 700, 'Tom Cruise, Ken Watanabe, Timothy Spall', 9, 0, 9, 'https://www.imdb.com/title/tt0325710/mediaviewer/rm1015628032');
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('Hidden Figures', 'Biography, Drama, History', 'The story of a team of woman mathematicians who served a vital role in NASA during the early years of the U.S. space program.', 10, 10, 'PG', 127, 750, 'Taraji P. Henson, Octavia Spencer, Janelle Monáe', 9, 0, 9, 'https://www.imdb.com/title/tt4846340/mediaviewer/rm1015628032');
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('The Martian', 'Adventure, Drama, Sci-Fi', 'An astronaut becomes stranded on Mars after his team assume him dead, and must rely on his ingenuity to find a way to signal to Earth that he is alive.', 10, 10, 'PG', 144, 800, 'Matt Damon, Jessica Chastain, Kristen Wiig', 9, 0, 9, 'https://www.imdb.com/title/tt3659388/mediaviewer/rm1015628032');
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('The Imitation Game', 'Biography, Drama, Thriller', 'During World War II, the English mathematical genius Alan Turing tries to crack the German Enigma code with help from fellow mathematicians.', 10, 10, 'PG', 114, 850, 'Benedict Cumberbatch, Keira Knightley, Matthew Goode', 9, 0, 9, 'https://www.imdb.com/title/tt2084970/mediaviewer/rm1015628032');
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('The Wolf of Wall Street', 'Biography, Comedy, Crime', 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.', 10, 10, 'R', 180, 900, 'Leonardo DiCaprio, Jonah Hill, Margot Robbie', 9, 0, 9, 'https://www.imdb.com/title/tt0993846/mediaviewer/rm1015628032');
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('The Godfather', 'Crime, Drama', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 10, 10, 'R', 175, 950, 'Marlon Brando, Al Pacino, James Caan', 9, 0, 9, 'https://www.imdb.com/title/tt0068646/mediaviewer/rm1015628032');
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('The Godfather: Part II', 'Crime, Drama', 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.', 10, 10, 'R', 202, 1000, 'Al Pacino, Robert De Niro, Robert Duvall', 9, 0, 9, 'https://www.imdb.com/title/tt0071562/mediaviewer/rm1015628032');
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('Bridge of Spies', 'Drama, History, Thriller', 'During the Cold War, an American lawyer is recruited to defend an arrested Soviet spy in court, and then help the CIA facilitate an exchange of the spy for the Soviet captured American U2 spy plane pilot, Francis Gary Powers.', 10, 10, 'PG', 142, 1050, 'Tom Hanks, Mark Rylance, Alan Alda', 9, 0, 9, 'https://www.imdb.com/title/tt3682448/mediaviewer/rm1015628032');
INSERT INTO peliculas (titulo, genero, descripcion, ejemplares_disponibles, ejemplares_totales, publico, duracion, precio, reparto, calificacion_media, veces_rentada, calificacion_media_usmtomatoes, imagen) VALUES ('The Mole Agent', 'Comedy, Crime, Drama', 'A Chilean detective is sent to a small town in the north of the country to investigate a old woman', 10, 10, 'PG', 100, 1100, 'Maite Alberdi, Sergio Chamy, Romulo Aitken', 9, 0, 9, 'https://www.imdb.com/title/tt11394298/mediaviewer/rm2054660865/?ref_=tt_ov_i');

-- crear tabla de renta de peliculas_rentadas in mysql format phpmyadmin
CREATE TABLE peliculas_rentadas (
    id INT NOT NULL AUTO_INCREMENT,
    id_pelicula INT NOT NULL,
    id_usuario INT NOT NULL,
    rentada BOOLEAN NOT NULL DEFAULT 1,
    PRIMARY KEY (id),
    FOREIGN KEY (id_pelicula) REFERENCES peliculas(id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

CREATE TABLE seguidores (
    id INT NOT NULL AUTO_INCREMENT,
    id_usuario_seguidor INT NOT NULL,
    id_usuario_seguido INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_usuario_seguidor) REFERENCES usuarios(id),
    FOREIGN KEY (id_usuario_seguido) REFERENCES usuarios(id)
);

-- crear tabla de renta de peliculas_rentadas in mysql format phpmyadmin
CREATE TABLE peliculas_resenias (
    id INT NOT NULL AUTO_INCREMENT,
    id_pelicula INT NOT NULL,
    id_usuario INT NOT NULL,
    resenia VARCHAR(5000) DEFAULT NULL,
    calificacion INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_pelicula) REFERENCES peliculas(id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);


-- select a pelicula from foreign key from peliculas_rentadas y peliculas
SELECT peliculas_rentadas.id, peliculas_rentadas.id_pelicula, peliculas_rentadas.id_usuario, peliculas_rentadas.rentada, peliculas.titulo, peliculas.genero, peliculas.descripcion, peliculas.ejemplares_disponibles, peliculas.ejemplares_totales, peliculas.publico, peliculas.duracion, peliculas.precio, peliculas.reparto, peliculas.calificacion_media, peliculas.veces_rentada, peliculas.calificacion_media_usmtomatoes, peliculas.imagen FROM peliculas_rentadas INNER JOIN peliculas ON peliculas_rentadas.id_pelicula = peliculas.id;

-- create many views
CREATE VIEW peliculas_rentadas_view AS
SELECT peliculas_rentadas.id, peliculas_rentadas.id_pelicula, peliculas_rentadas.id_usuario, peliculas_rentadas.rentada, peliculas.titulo, peliculas.genero, peliculas.descripcion, peliculas.ejemplares_disponibles, peliculas.ejemplares_totales, peliculas.publico, peliculas.duracion, peliculas.precio, peliculas.reparto, peliculas.calificacion_media, peliculas.veces_rentada, peliculas.calificacion_media_usmtomatoes, peliculas.imagen FROM peliculas_rentadas INNER JOIN peliculas ON peliculas_rentadas.id_pelicula = peliculas.id;

CREATE VIEW peliculas_resenias_view AS
SELECT peliculas_resenias.id, peliculas_resenias.id_pelicula, peliculas_resenias.id_usuario, peliculas_resenias.resenia, peliculas_resenias.calificacion, peliculas.titulo, peliculas.genero, peliculas.descripcion, peliculas.ejemplares_disponibles, peliculas.ejemplares_totales, peliculas.publico, peliculas.duracion, peliculas.precio, peliculas.reparto, peliculas.calificacion_media, peliculas.veces_rentada, peliculas.calificacion_media_usmtomatoes, peliculas.imagen FROM peliculas_resenias INNER JOIN peliculas ON peliculas_resenias.id_pelicula = peliculas.id;

-- create store procedure mysql syntax rentar_pelicula
DELIMITER $$
CREATE PROCEDURE rentar_pelicula (IN id_pelicula INT, IN id_usuario INT)
BEGIN
    INSERT INTO peliculas_rentadas (id_pelicula, id_usuario) VALUES (id_pelicula, id_usuario);
END$$
DELIMITER ;

-- create store procedure mysql syntax devolver_pelicula
DELIMITER $$
CREATE PROCEDURE devolver_pelicula (IN id_pelicula INT, IN id_usuario INT)
BEGIN
    DELETE FROM peliculas_rentadas WHERE id_pelicula = id_pelicula AND id_usuario = id_usuario;
END$$
DELIMITER ;

-- create trigger mysql syntax
DELIMITER $$
CREATE TRIGGER rentar_pelicula_trigger AFTER INSERT ON peliculas_rentadas
FOR EACH ROW
BEGIN
    UPDATE peliculas SET ejemplares_disponibles = ejemplares_disponibles - 1 WHERE id = NEW.id_pelicula;
END$$
DELIMITER ;

-- create trigger mysql syntax
DELIMITER $$
CREATE TRIGGER devolver_pelicula_trigger AFTER DELETE ON peliculas_rentadas
FOR EACH ROW
BEGIN
    UPDATE peliculas SET ejemplares_disponibles = ejemplares_disponibles + 1 WHERE id = OLD.id_pelicula;
END$$
DELIMITER ;
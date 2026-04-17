-- TABLA CONTENIDOS
CREATE TABLE contenidos (
    id_contenido SERIAL PRIMARY KEY,
    titulo VARCHAR(150),
    tipo VARCHAR(20), -- pelicula o serie
    genero VARCHAR(50),
    anio INT
);

INSERT INTO contenidos (titulo, tipo, genero, anio) VALUES
('Stranger Things', 'serie', 'Ciencia ficción', 2016),
('Inception', 'pelicula', 'Ciencia ficción', 2010),
('Breaking Bad', 'serie', 'Drama', 2008),
('The Dark Knight', 'pelicula', 'Acción', 2008),
('Game of Thrones', 'serie', 'Fantasía', 2011);

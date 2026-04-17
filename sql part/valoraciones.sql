-- TABLA VALORACIONES
CREATE TABLE valoraciones (
    id_valoracion SERIAL PRIMARY KEY,
    id_usuario INT REFERENCES usuarios(id_usuario),
    id_contenido INT REFERENCES contenidos(id_contenido),
    puntuacion INT CHECK (puntuacion BETWEEN 1 AND 5),
    comentario TEXT
);

INSERT INTO valoraciones (id_usuario, id_contenido, puntuacion, comentario) VALUES
(1, 1, 5, 'Stranger Things es genial'),
(2, 2, 4, 'Inception muy buena'),
(1, 2, 5, 'Peliculón de Nolan'),
(2, 1, 5, 'Me encantó Stranger Things'),
(1, 3, 3, 'Normalito');

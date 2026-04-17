-- TABLA VALORACIONES
CREATE TABLE valoraciones (
    id_valoracion SERIAL PRIMARY KEY,
    id_usuario INT REFERENCES usuarios(id_usuario),
    id_contenido INT REFERENCES contenidos(id_contenido),
    puntuacion INT CHECK (puntuacion BETWEEN 1 AND 5),
    comentario TEXT
);
-- TABLA VISUALIZACIONES
CREATE TABLE visualizaciones (
    id_visualizacion SERIAL PRIMARY KEY,
    id_usuario INT REFERENCES usuarios(id_usuario),
    id_contenido INT REFERENCES contenidos(id_contenido),
    fecha_visualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO visualizaciones (id_usuario, id_contenido, fecha_visualizacion) VALUES
(1,  1,  '2024-11-01 08:15:00'),
(2,  2,  '2024-11-01 09:42:00'),
(3,  3,  '2024-11-02 10:05:00'),
(1,  1,  '2024-11-02 11:30:00'),
(4,  2,  '2024-11-03 13:00:00');

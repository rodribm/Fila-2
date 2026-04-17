/* CONTENIDO MÁS POPULAR */

SELECT 
    c.titulo, 
    COUNT(v.id_visualizacion) AS total_visualizaciones
FROM Contenidos AS c
INNER JOIN Visualizaciones AS v 
	ON c.id_contenido = v.id_contenido
GROUP BY c.titulo
ORDER BY total_visualizaciones DESC;

/* PUNTUACIÓN MEDIA DE CADA CONTENIDO */

SELECT 
    c.titulo, 
    AVG(val.puntuacion) AS puntuacion_media
FROM Contenidos AS c
INNER JOIN Valoraciones AS val 
	ON c.id_contenido = val.id_contenido
GROUP BY c.titulo;

/* CONTENIDO QUE NO SE HA VISTO */

SELECT 
    c.titulo, 
    c.tipo, 
    c.genero
FROM Contenidos AS c
LEFT JOIN Visualizaciones AS v 
	ON c.id_contenido = v.id_contenido
WHERE v.id_visualizacion IS NULL;

/* PROMEDIO DE VALORACIÓN POR USUARIO*/

SELECT 
    u.nombre, 
    AVG(val.puntuacion) AS nota_media_dada,
    COUNT(val.id_valoracion) AS total_valoraciones
FROM Usuarios AS u
INNER JOIN Valoraciones AS val
	ON u.id_usuario = val.id_usuario
GROUP BY u.nombre
ORDER BY nota_media_dada DESC;

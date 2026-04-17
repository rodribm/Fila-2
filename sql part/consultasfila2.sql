/* CONTENIDO MÁS POPULAR */

SELECT 
    c.titulo, 
    COUNT(v.visualizacion_id) AS total_visualizaciones
FROM Contenidos AS c
INNER JOIN Visualizaciones AS v 
	ON c.contenido_id = v.contenido_id
GROUP BY c.titulo
ORDER BY total_visualizaciones DESC;

/* PUNTUACIÓN MEDIA DE CADA CONTENIDO */

SELECT 
    c.titulo, 
    AVG(val.puntuacion) AS puntuacion_media
FROM Contenidos AS c
INNER JOIN Valoraciones AS val 
	ON c.contenido_id = val.contenido_id
GROUP BY c.titulo;

/* CONTENIDO QUE NO SE HA VISTO */

SELECT 
    c.titulo, 
    c.tipo, 
    c.genero
FROM Contenidos AS c
LEFT JOIN Visualizaciones AS v 
	ON c.contenido_id = v.contenido_id
WHERE v.visualizacion_id IS NULL;

/* PROMEDIO DE VALORACIÓN POR USUARIO*/

SELECT 
    u.nombre, 
    AVG(val.puntuacion) AS nota_media_dada,
    COUNT(val.valoracion_id) AS total_valoraciones
FROM Usuarios AS u
INNER JOIN Valoraciones AS val
	ON u.usuario_id = val.usuario_id
GROUP BY u.nombre
ORDER BY nota_media_dada DESC;
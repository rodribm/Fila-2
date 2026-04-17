
CREATE TABLE usuarios (
    id_usuario SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    fecha_registro DATE DEFAULT CURRENT_DATE
);

INSERT INTO usuarios (nombre, email) VALUES
('Carlos Rodrigues', 'carlos@email.com'),
('Lucia Madueño', 'lucia@email.com'),
('Ana Torres', 'ana@email.com'),
('David Ruiz', 'david@email.com');
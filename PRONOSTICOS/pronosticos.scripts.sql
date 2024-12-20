drop table if exists equipos;
CREATE TABLE equipos (
	id SERIAL NOT NULL,
    codigo CHAR(3) NOT NULL,
	codigo_num INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    constraint equipos_pk PRIMARY KEY (id)
);

INSERT INTO equipos (codigo, codigo_num, nombre)
VALUES
    ('ARG', 032, 'Argentina'),
    ('BOL', 068, 'Bolivia'),
    ('BRA', 076, 'Brasil'),
    ('CHL', 152, 'Chile'),
    ('COL', 170, 'Colombia'),
    ('ECU', 218, 'Ecuador'),
    ('PRY', 600, 'Paraguay'),
    ('PER', 604, 'Perú'),
    ('URY', 858, 'Uruguay'),
    ('VEN', 862, 'Venezuela');

DROP TABLE IF EXISTS partidos;
CREATE TABLE partidos (
    id SERIAL NOT NULL,
    equipo_local INT NOT NULL,
    equipo_visitante INT NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    estadio VARCHAR(100) NOT NULL,
    constraint partidos_pk PRIMARY KEY (id),
    constraint partidos_equipos_local_fk FOREIGN KEY (equipo_local) REFERENCES equipos (id),
    constraint partidos_equipos_visitante_fk FOREIGN KEY (equipo_visitante) REFERENCES equipos (id)
);

INSERT INTO partidos (equipo_local, equipo_visitante, fecha, hora, estadio) 
VALUES 
(1, 2, '2024-06-15', '18:00', 'Estadio Monumental'),
(3, 4, '2024-06-16', '20:00', 'Maracana'),
(5, 6, '2024-06-17', '18:00', 'Atahualpa'),
(7, 8, '2024-06-18', '20:00', 'Estadio Nacional'),
(9, 10, '2024-06-19', '18:00', 'Centenario');

DROP TABLE IF EXISTS usuarios;
CREATE TABLE usuarios (
    id SERIAL NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    contraseña VARCHAR(100) NOT NULL,
    constraint usuarios_pk PRIMARY KEY (id)
);

INSERT INTO usuarios (nombre, correo, contraseña) 
VALUES 
('Juan Pérez', 'juanperez@gmail.com', '12345'),
('María López', 'marialopez@gmail.com', 'abcdef'),
('Carlos Gómez', 'carlosgomez@gmail.com', 'qwerty');

DROP TABLE IF EXISTS pronosticos;
CREATE TABLE pronosticos (
    id SERIAL NOT NULL,
    usuario_id INT NOT NULL,
    partido_id INT NOT NULL,
    goles_local INT NOT NULL,
    goles_visitante INT NOT NULL,
    constraint pronosticos_pk PRIMARY KEY (id),
    constraint pronosticos_usuario_fk FOREIGN KEY (usuario_id) REFERENCES usuarios (id),
    constraint pronosticos_partido_fk FOREIGN KEY (partido_id) REFERENCES partidos (id)
);

INSERT INTO pronosticos (usuario_id, partido_id, goles_local, goles_visitante) 
VALUES 
(1, 1, 2, 1),
(2, 2, 1, 3),
(3, 3, 0, 0),
(1, 4, 1, 2),
(2, 5, 3, 1);

DROP TABLE IF EXISTS resultados;
CREATE TABLE resultados (
    id SERIAL NOT NULL,
    partido_id INT NOT NULL,
    goles_local INT NOT NULL,
    goles_visitante INT NOT NULL,
    constraint resultados_pk PRIMARY KEY (id),
    constraint resultados_partido_fk FOREIGN KEY (partido_id) REFERENCES partidos (id)
);

INSERT INTO resultados (partido_id, goles_local, goles_visitante) 
VALUES 
(1, 2, 1),
(2, 1, 3),
(3, 0, 0),
(4, 1, 2),
(5, 3, 1);

SELECT * FROM equipos;

SELECT p.id, e1.nombre AS equipo_local, e2.nombre AS equipo_visitante, p.fecha, p.hora, p.estadio 
FROM partidos p
INNER JOIN equipos e1 ON p.equipo_local = e1.id
INNER JOIN equipos e2 ON p.equipo_visitante = e2.id;

SELECT u.nombre AS usuario, e1.nombre AS equipo_local, e2.nombre AS equipo_visitante, pr.goles_local, pr.goles_visitante 
FROM pronosticos pr
INNER JOIN usuarios u ON pr.usuario_id = u.id
INNER JOIN partidos p ON pr.partido_id = p.id
INNER JOIN equipos e1 ON p.equipo_local = e1.id
INNER JOIN equipos e2 ON p.equipo_visitante = e2.id
WHERE u.id = 1;

SELECT u.nombre AS usuario, e1.nombre AS equipo_local, e2.nombre AS equipo_visitante, 
       pr.goles_local AS pronostico_local, pr.goles_visitante AS pronostico_visitante, 
       r.goles_local AS resultado_local, r.goles_visitante AS resultado_visitante,
       CASE 
           WHEN pr.goles_local = r.goles_local AND pr.goles_visitante = r.goles_visitante THEN 'ACIERTO'
           ELSE 'FALLO'
       END AS estado
FROM pronosticos pr
INNER JOIN usuarios u ON pr.usuario_id = u.id
INNER JOIN partidos p ON pr.partido_id = p.id
INNER JOIN equipos e1 ON p.equipo_local = e1.id
INNER JOIN equipos e2 ON p.equipo_visitante = e2.id
INNER JOIN resultados r ON p.id = r.partido_id;
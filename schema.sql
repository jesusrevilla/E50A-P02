DROP TABLE IF EXISTS ESTUDIANTE;
DROP TABLE IF EXISTS CURSO;
DROP TABLE IF EXISTS PROFESOR;
DROP TABLE IF EXISTS INSCRIPCION;
DROP TABLE IF EXISTS ENSEÑA;

-- student entity
CREATE TABLE ESTUDIANTE (
    id_estudiante SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL
);

-- course entity
CREATE TABLE CURSO (
    id_curso SERIAL PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    creditos INT NOT NULL
);

-- teacher entity
CREATE TABLE PROFESOR (
    id_profesor SERIAL PRIMARY KEY,
    nombre_profesor VARCHAR(100) NOT NULL,
    departamento VARCHAR(100) NOT NULL
);

-- inscription entity
CREATE TABLE INSCRIPCION (
    id_estudiante INT NOT NULL,
    id_curso INT NOT NULL,
    fecha_inscripcion DATE NOT NULL,
    PRIMARY KEY (id_estudiante, id_curso),
    FOREIGN KEY (id_estudiante) REFERENCES ESTUDIANTE(id_estudiante),
    FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);

-- teaching entity
CREATE TABLE ENSEÑA (
    id_profesor INT NOT NULL,
    id_curso INT NOT NULL,
    PRIMARY KEY (id_profesor, id_curso),
    FOREIGN KEY (id_profesor) REFERENCES PROFESOR(id_profesor),
    FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);

INSERT INTO ESTUDIANTE (nombre, apellido, fecha_nacimiento) VALUES
('Juan', 'Pérez', '2000-05-10'),
('María', 'González', '2001-02-20'),
('Carlos', 'López', '1999-11-15');

INSERT INTO CURSO (nombre_curso, creditos) VALUES
('Introducción a la programación', 4),
('Cálculo I', 5),
('Física General', 4);

INSERT INTO PROFESOR (nombre_profesor, departamento) VALUES
('Ana Rodríguez', 'Ciencias de la Computación'),
('Luis Sánchez', 'Matemáticas'),
('Sofía Martínez', 'Física');

INSERT INTO INSCRIPCION (id_estudiante, id_curso, fecha_inscripcion) VALUES
(1, 1, '2023-08-20'),
(2, 2, '2023-08-20'),
(3, 3, '2023-08-20');

INSERT INTO ENSEÑA (id_profesor, id_curso) VALUES
(1, 1),
(2, 2),
(3, 3);

SELECT * FROM ESTUDIANTE;
SELECT * FROM CURSO;
SELECT * FROM PROFESOR;
SELECT * FROM INSCRIPCION;
SELECT * FROM ENSEÑA;

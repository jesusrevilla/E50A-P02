
CREATE TABLE ESTUDIANTE (
    id_estudiante SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    fecha_nacimiento DATE
);

CREATE TABLE CURSO (
    id_curso SERIAL PRIMARY KEY,
    nombre_curso VARCHAR(50),
    creditos INT
);

CREATE TABLE PROFESOR (
    id_profesor SERIAL PRIMARY KEY,
    nombre_profesor VARCHAR(50),
    departamento VARCHAR(50)
);

CREATE TABLE INSCRIPCION (
    id_estudiante INT REFERENCES ESTUDIANTE(id_estudiante),
    id_curso INT REFERENCES CURSO(id_curso),
    fecha_inscripcion DATE,
    PRIMARY KEY (id_estudiante, id_curso) -- Clave primaria compuesta
);

CREATE TABLE ENSEÑA (
    id_profesor INT REFERENCES PROFESOR(id_profesor),
    id_curso INT REFERENCES CURSO(id_curso),
    PRIMARY KEY (id_profesor, id_curso) -- Clave primaria compuesta
);

-- Inserción de Datos

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

-- Template
-- DDL Data Definition Language --
-- Alejandro Araujo Orellana 177890 --

-- student entity
CREATE TABLE ESTUDIANTE (
  id_estudiante SERIAL PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  fecha_nacimiento VARCHAR(50) NOT NULL
);

-- course entity
CREATE TABLE CURSO (
  id_curso SERIAL PRIMARY KEY,
  nombre_curso VARCHAR(50) NOT NULL,
  creditos VARCHAR(50) NOT NULL
);

-- teacher entity
CREATE TABLE PROFESOR (
  id_profesor SERIAL PRIMARY KEY,
  nombre_profesor VARCHAR(30) NOT NULL,
  departamento VARCHAR(50) NOT NULL
);

-- inscription entity
CREATE TABLE INSCRIPCION (
  id_estudiante INT REFERENCES ESTUDIANTE(id_estudiante) NOT NULL,
  id_curso INT REFERENCES CURSO(id_curso) NOT NULL,
  fecha_inscripcion DATE DEFAULT CURRENT_DATE
);

-- teaching entity
CREATE TABLE ENSENIA (
  id_profesor INT REFERENCES PROFESOR(id_profesor) NOT NULL,
  id_curso INT REFERENCES CURSO(id_curso) NOT NULL
);

--

-- insert into student
INSERT INTO ESTUDIANTE (nombre, apellido, fecha_nacimiento) VALUES
('Juan', 'Pérez', '2000-05-10'),
('María', 'González', '2001-02-20'),
('Carlos', 'López', '1999-11-15');

-- insert courses
INSERT INTO CURSO (nombre_curso, creditos) VALUES
('Introducción a la programación', 4),
('Cálculo I', 5),
('Física General', 4);

--insert teachers
INSERT INTO PROFESOR (nombre_profesor, departamento) VALUES
('Ana Rodríguez', 'Ciencias de la Computación'),
('Luis Sánchez', 'Matemáticas'),
('Sofía Martínez', 'Física');

--insert inscriptions
INSERT INTO INSCRIPCION (id_estudiante, id_curso, fecha_inscripcion) VALUES
(1, 1, '2023-08-20'),
(2, 2, '2023-08-20'),
(3, 3, '2023-08-20');

--insert teaching
INSERT INTO ENSENIA (id_profesor, id_curso) VALUES
(1, 1),
(2, 2),
(3, 3);

--

SELECT *
FROM ESTUDIANTE;
SELECT *
FROM CURSO;
SELECT *
FROM PROFESOR;
SELECT *
FROM INSCRIPCION;
SELECT *
FROM ENSENIA;

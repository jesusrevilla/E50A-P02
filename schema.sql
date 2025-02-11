--Christian Alejandro Cárdenas Rucoba
--07 de Febrero, 2025
-- Tabla ESTUDIANTE
CREATE TABLE ESTUDIANTE (
  id_estudiante SERIAL PRIMARY KEY,
  nombre TEXT NOT NULL,
  apellido TEXT NOT NULL,
  fecha_nacimiento date NOT NULL
);
-- Tabla CURSO
CREATE TABLE CURSO (
  id_curso SERIAL PRIMARY KEY,
  nombre_curso TEXT NOT NULL,
  creditos int NOT NULL
);
-- Tabla PROFESOR
CREATE TABLE PROFESOR (
  id_profesor SERIAL PRIMARY KEY,
  nombre_profesor TEXT NOT NULL,
  departamento TEXT NOT NULL
);
-- Tabla INSCRIPCION
CREATE TABLE INSCRIPCION (
  id_estudiante SERIAL,
  id_curso INTEGER NOT NULL,
  fecha_inscripcion date NOT NULL
);

CREATE TABLE ENSEÑA (
  id_profesor INTEGER NOT NULL,
  id_curso INTEGER NOT NULL
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

--fetch
SELECT * FROM ESTUDIANTE;
SELECT * FROM CURSO;
SELECT * FROM PROFESOR;
SELECT * FROM INSCRIPCION;
SELECT * FROM ENSEÑA;


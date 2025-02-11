-- DDL Data Definition Language --

-- Tabla de PROFESOR
CREATE TABLE PROFESOR (
  id_profesor INT PRIMARY KEY,
  nombre_profesor VARCHAR(50) NOT NULL,
  departamento VARCHAR(50) NOT NULL
);

-- Tabla de ESTUDIANTE
CREATE TABLE ESTUDIANTE (
  id_estudiante INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  fecha_nacimiento DATE
);

-- Tabla de CURSO
CREATE TABLE CURSO (
  id_curso INT PRIMARY KEY,
  nombre_curso VARCHAR(50) NOT NULL,
  creditos INT NOT NULL
);

-- Tabla de INSCRIPCION (relación entre ESTUDIANTE y CURSO)
CREATE TABLE INSCRIPCION (
  id_estudiante INT,
  id_curso INT,
  fecha_inscripcion DATE NOT NULL,
  PRIMARY KEY (id_estudiante, id_curso),
  FOREIGN KEY (id_estudiante) REFERENCES ESTUDIANTE(id_estudiante) ON DELETE CASCADE,
  FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso) ON DELETE CASCADE
);

-- Tabla de ENSEÑA (relación entre PROFESOR y CURSO)
CREATE TABLE ENSEÑA (
  id_profesor INT,
  id_curso INT,
  PRIMARY KEY (id_profesor, id_curso),
  FOREIGN KEY (id_profesor) REFERENCES PROFESOR(id_profesor) ON DELETE CASCADE,
  FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso) ON DELETE CASCADE
);
-- Insertar en la tabla ESTUDIANTE
INSERT INTO ESTUDIANTE (id_estudiante, nombre, apellido, fecha_nacimiento) VALUES
(1, 'Juan', 'Pérez', '2000-05-10'),
(2, 'María', 'González', '2001-02-20'),
(3, 'Carlos', 'López', '1999-11-15');
SELECT * FROM ESTUDIANTE;

-- Insertar en la tabla CURSO
INSERT INTO CURSO (id_curso, nombre_curso, creditos) VALUES
(1, 'Introducción a la programación', 4),
(2, 'Cálculo I', 5),
(3, 'Física General', 4);
SELECT * FROM CURSO;

-- Insertar en la tabla PROFESOR
INSERT INTO PROFESOR (id_profesor, nombre_profesor, departamento) VALUES
(1, 'Ana Rodríguez', 'Ciencias de la Computación'),
(2, 'Luis Sánchez', 'Matemáticas'),
(3, 'Sofía Martínez', 'Física');
SELECT * FROM PROFESOR;

-- Insertar en la tabla INSCRIPCION
INSERT INTO INSCRIPCION (id_estudiante, id_curso, fecha_inscripcion) VALUES
(1, 1, '2023-08-20'),
(2, 2, '2023-08-20'),
(3, 3, '2023-08-20');
SELECT * FROM INSCRIPCION;


-- Insertar en la tabla ENSEÑA
INSERT INTO ENSEÑA (id_profesor, id_curso) VALUES
(1, 1),
(2, 2),
(3, 3);
SELECT * FROM ENSEÑA;

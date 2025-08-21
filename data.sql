-- Tabla ESTUDIANTE
CREATE TABLE ESTUDIANTE (
  id_estudiante INTEGER PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  apellido VARCHAR(30) NOT NULL,
  fecha_nacimiento DATE NOT NULL
);

-- Tabla CURSO
CREATE TABLE CURSO (
  id_curso INTEGER PRIMARY KEY,
  nombre_curso VARCHAR(30) NOT NULL,
  creditos INTEGER NOT NULL
);

-- Tabla PROFESOR
CREATE TABLE PROFESOR (
  id_profesor INTEGER PRIMARY KEY,
  nombre_profesor VARCHAR(30) NOT NULL,
  departamento VARCHAR(30) NOT NULL
);

-- Tabla INSCRIPCION
CREATE TABLE INSCRIPCION (
  id_estudiante INTEGER NOT NULL,
  id_curso INTEGER NOT NULL,
  fecha_inscripcion DATE NOT NULL,
  PRIMARY KEY (id_estudiante, id_curso),
  FOREIGN KEY (id_estudiante) REFERENCES ESTUDIANTE(id_estudiante),
  FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);

-- Tabla ENSEÑA
CREATE TABLE ENSEÑA (
  id_profesor INTEGER NOT NULL,
  id_curso INTEGER NOT NULL,
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

-- Mostrar los datos insertados
SELECT * FROM ESTUDIANTE;
SELECT * FROM CURSO;
SELECT * FROM PROFESOR;
SELECT * FROM INSCRIPCION;
SELECT * FROM ENSEÑA;

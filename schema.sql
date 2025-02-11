-- DDL Data Definition Language --

-- profesor entity
CREATE TABLE profesor (
  id_profesor SERIAL PRIMARY KEY,
  nombre_profesor VARCHAR(50) NOT NULL,
  departamento VARCHAR(50) NOT NULL
);

-- estudiante entity
CREATE TABLE estudiante (
  id_estudiante SERIAL PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  fecha_nacimiento DATE NOT NULL
);

-- curso entity
CREATE TABLE curso (
  id_curso SERIAL PRIMARY KEY,
  nombre_curso VARCHAR(50)NOT NULL,
  creditos INT NOT NULL
);

-- inscripcion entity
CREATE TABLE inscripcion (
  id_estudiante INT NOT NULL,
  id_curso INT NOT NULL,
  fecha_inscripcion DATE DEFAULT CURRENT_DATE,
  FOREIGN KEY (id_estudiante) REFERENCES estudiante(id_estudiante),
  FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

--enseña entity
CREATE TABLE ensena(
  id_profesor INT NOT NULL,
  id_curso INT NOT NULL,
  FOREIGN KEY (id_profesor) REFERENCES profesor(id_profesor),
  FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
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
INSERT INTO ENSENA (id_profesor, id_curso) VALUES
(1, 1),
(2, 2),
(3, 3);


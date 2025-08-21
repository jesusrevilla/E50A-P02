-- Template
-- estudiante
CREATE TABLE estudiante(
  id_estudiante SERIAL PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  apellido VARCHAR(30) NOT NULL,
  fecha_nacimiento DATE NOT NULL
);
 
-- Curso
CREATE TABLE curso(
  id_curso SERIAL PRIMARY KEY,
  nombre_curso VARCHAR(30) NOT NULL,
  creditos INT
);
 
-- Profesor
CREATE TABLE profesor(
  id_profesor SERIAL PRIMARY KEY,
  nombre_profesor VARCHAR(30) NOT NULL,
  departamento VARCHAR(30) NOT NULL
);
 
-- Inscripcion
CREATE TABLE inscripcion(
  id_estudiante INT REFERENCES estudiante(id_estudiante),
  id_curso INT REFERENCES curso(id_curso),
  fecha_inscripcion DATE,
  PRIMARY KEY (id_estudiante, id_curso)
);
 
-- Ensena
CREATE TABLE ensena(
  id_profesor INT REFERENCES profesor(id_profesor),
  id_curso INT REFERENCES curso(id_curso),
  PRIMARY KEY (id_profesor, id_curso)
);

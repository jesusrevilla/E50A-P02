

CREATE TABLE ESTUDIANTE (
  id_estudiante SERIAL PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  apellido VARCHAR(30) NOT NULL,
  fecha_nacimiento DATE NOT NULL
);

CREATE TABLE CURSO (
  id_curso SERIAL PRIMARY KEY,
  nombre_curso VARCHAR(50) NOT NULL,
  creditos INT NOT NULL
);

CREATE TABLE PROFESOR (
  id_profesor SERIAL PRIMARY KEY,
  nombre_profesor VARCHAR(80) NOT NULL,
  departamento VARCHAR(30) NOT NULL
);

CREATE TABLE INSCRIPCION(
  PRIMARY KEY (id_estudiante, id_curso),
  id_estudiante INT REFERENCES ESTUDIANTE(id_estudiante) NOT NULL,
  id_curso INT REFERENCES CURSO(id_curso) NOT NULL,
  fecha_inscripcion DATE NOT NULL
);
 

CREATE TABLE ENSEÑA(
  PRIMARY KEY (id_profesor, id_curso),
  id_profesor INT REFERENCES PROFESOR(id_profesor) NOT NULL,
  id_curso INT REFERENCES CURSO(id_curso) NOT NULL
);

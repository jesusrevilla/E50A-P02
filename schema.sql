-- Template

CREATE TABLE ESTUDIANTE (
  id_estudiante SERIAL PRIMARY KEY,
  nombre TEXT NOT NULL,
  apellido TEXT NOT NULL,
  fecha_nacimiento DATE NOT NULL
);

CREATE TABLE CURSO (
  id_curso SERIAL PRIMARY KEY,
  nombre_curso TEXT NOT NULL,
  creditos TEXT NOT NULL
);

CREATE TABLE PROFESOR (
  id_profesor SERIAL PRIMARY KEY,
  nombre_profesor TEXT NOT NULL,
  departamento TEXT NOT NULL
);

CREATE TABLE INSCRIPCION (
  id_estudiante INT REFERENCES ESTUDIANTE(id_estudiante) NOT NULL,
  id_curso INT REFERENCES CURSO(id_curso) NOT NULL,
  fecha_inscripcion DATE NOT NULL
);

CREATE TABLE ENSEÑA (
  id_profesor INT REFERENCES PROFESOR(id_profesor) NOT NULL,
  id_curso INT REFERENCES CURSO(id_curso) NOT NULL
);

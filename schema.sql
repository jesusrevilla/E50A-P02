-- Template
CREATE TABLE ESTUDIANTE (
  id_estudiante SERIAL PRIMARY KEY,
  nombre TEXT NOT NULL,
  apellido TEXT NOT NULL,
  fecha_nacimiento DATE NOT NULL
);

CREATE TABLE CURSO(
  id_curso SERIAL PRIMARY KEY,
  nombre_curso TEXT NOT NULL,
  creditos INTEGER NOT NULL
);

CREATE TABLE PROFESOR(
  id_profesor SERIAL PRIMARY KEY,
  nombre_profesor TEXT NOT NULL,
  departamento TEXT NOT NULL
);

CREATE TABLE INSCRIPCION(
  id_inscripcion SERIAL PRIMARY KEY,
  id_estudiante INTEGER,
  id_curso INTEGER,
  FOREIGN KEY (id_estudiante) REFERENCES ESTUDIANTE(id_estudiante),
  FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso),
  fecha_inscripcion DATE NOT NULL
);

CREATE TABLE ENSEÑA(
  id_enseña SERIAL PRIMARY KEY,
  id_profesor INTEGER,
  id_curso INTEGER,
  FOREIGN KEY (id_profesor) REFERENCES PROFESOR,
  FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);


-- Template
CREATE TABLE ESTUDIANTE(
  id_estudiante SERIAL PRIMARY KEY
  nombre VARCHAR(35) NOT NULL,
  apellido VARCHAR(40) NOT NULL,
  fecha_nacimiento DATE NOT NULL
);

CREATE TABLE CURSO (
  id_curso SERIAL NOT NULL,
  nombre_curso VARCHAR(50) NOT NULL,
  creditos INT(10) NOT NULL
);

CREATE TABLE PROFESOR (
  id_profesor SERIAL NOT NULL,
  nombre_profesor VARCHAR(50) NOT NULL,
  departamento VARCHAR(40) NOT NULL
);

CREATE TABLE INSCRIPCION (
  id_estudiante INT NOT NULL,
  id_curso INT NOT NULL,
  fecha_incripcion INT NOT NULL,
  PRIMARY KEY (id_estudiante, id_curso),
  FOREIGN KEY (id_estudiante) REFERENCES ESTUDIANTE(id_estudiante),
  FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);

CREATE TABLE ENSEÑA(
  id_profesor INT NOT NULL,
  id_curso INT NOT NULL,
  PRIMARY KEY (id_profesor, id_curso),
  FOREIGN KEY (id_profesor) REFERENCES PROFESOR(id_profesor),
  FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);

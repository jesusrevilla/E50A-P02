CREATE TABLE ESTUDIANTE (
  id_estudiante SERIAL PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  fecha_nacimiento DATE NOT NULL
);

CREATE TABLE CURSO (
  id_curso SERIAL PRIMARY KEY,
  nombre_curso VARCHAR(50) NOT NULL,
  creditos INT NOT NULL
);

CREATE TABLE PROFESOR (
  id_profesor SERIAL PRIMARY KEY,
  nombre_profesor VARCHAR(60) NOT NULL,
  departamento VARCHAR(50) NOT NULL
);

CREATE TABLE INSCRIPCION (
  id_estudiante INT,
  id_curso INT,
  FOREIGN KEY (id_estudiante) REFERENCES estudiante(id_estudiante),
  FOREIGN KEY (id_curso) REFERENCES curso(id_curso),
  fecha_inscripcion DATE NOT NULL
);

CREATE TABLE ENSEÑA (
  id_profesor INT,
  id_curso INT,
  FOREIGN KEY (id_profesor) REFERENCES profesor(id_profesor),
  FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);



-- Template
CREATE TABLE ESTUDIANTE(
  id_estudiante SERIAL PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  fecha_nacimiento DATE NOT NULL
);

CREATE TABLE CURSO(
  id_curso SERIAL PRIMARY KEY,
  nombre_curso VARCHAR(50) NOT NULL,
  creditos INT NOT NULL
);

CREATE TABLE PROFESOR(
  id_profesor SERIAL PRIMARY KEY,
  nombre_profesor VARCHAR(50) NOT NULL,
  departamento VARCHAR(50) NOT NULL
);

CREATE TABLE INSCRIPCION(
  id_inscripcion SERIAL PRIMARY KEY,
  id_estudiante SERIAL REFERENCES estudiante(id_estudiante) NOT NULL,
  id_curso SERIAL REFERENCES curso(id_curso) NOT NULL,
  fecha_inscripcion TIMESTAMP NOT NULL
);

CREATE TABLE ENSEÑA(
  id_enseña SERIAL PRIMARY KEY,
  id_profesor SERIAL REFERENCES profesor(id_profesor) NOT NULL,
  id_curso  SERIAL REFERENCES curso(id_curso) NOT NULL
);

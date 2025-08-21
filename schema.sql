-- Template
CREATE TABLE estudiante(
  id_estudiante SERIAL PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  apellido VARCHAR(30) NOT NULL,
  fecha_nacimiento TIMESTAMP NOT NULL
);

CREATE TABLE curso(
  id_curso SERIAL PRIMARY KEY,
  nombre_curso VARCHAR(30) NOT NULL,
  creditos INTEGER NOT NULL
);

CREATE TABLE profesor(
  id_profesor SERIAL PRIMARY KEY,
  nombre_profesor VARCHAR(30) NOT NULL,
  departamento VARCHAR(30) NOT NULL
);

CREATE TABLE inscripcion(
  id_estudiante INTEGER REFERENCES estudiante(id_estudiante) NOT NULL,
  id_curso INTEGER REFERENCES curso(id_curso) NOT NULL,
  fecha_inscripcion TIMESTAMP NOT NULL,
  PRIMARY KEY(id_estudiante, id_curso)
);

CREATE TABLE ENSEÑA(
  id_profesor INTEGER REFERENCES profesor(id_profesor) NOT NULL,
  id_curso INTEGER REFERENCES curso(id_curso) NOT NULL,
  PRIMARY KEY(id_profesor, id_curso)
);

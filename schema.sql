-- create 
CREATE TABLE estudiante(
  id_estudiante SERIAL PRIMARY KEY,
  nombre VARCHAR NOT NULL,
  apellido VARCHAR NOT NULL,
  fecha_nacimiento DATE NOT NULL
);

CREATE TABLE curso(
  id_curso SERIAL PRIMARY KEY,
  nombre_curso VARCHAR NOT NULL,
  creditos INT NOT NULL
);

CREATE TABLE profesor(
  id_profesor SERIAL PRIMARY KEY,
  nombre_profesor VARCHAR NOT NULL,
  departamento VARCHAR NOT NULL
);

CREATE TABLE inscripcion(
  id_inscripcion SERIAL PRIMARY KEY,
  id_estudiante  INT REFERENCES estudiante(id_estudiante) NOT NULL,
  id_curso INT REFERENCES curso(id_curso) NOT NULL,
  fecha_inscripcion DATE NOT NULL
);

CREATE TABLE ensena(
  id_ensena SERIAL PRIMARY KEY,
  id_profesor  INT REFERENCES profesor(id_profesor) NOT NULL,
  id_curso INT REFERENCES curso(id_curso) NOT NULL
);


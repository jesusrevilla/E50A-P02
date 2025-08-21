-- Template
-- tabla estudiante
CREATE TABLE estudiante(
  id_estudiante SERIAL PRIMARY KEY,
  nombre VARCHAR(40) NOT NULL,
  apellido VARCHAR(40) NOT NULL,
  fecha_nacimiento DATE NOT NULL
);

-- tabla curso
CREATE TABLE curso(
  id_curso SERIAL PRIMARY KEY,
  nombre_curso VARCHAR(40) NOT NULL,
  creditos INTEGER NOT NULL
);

-- tabla profesor
CREATE TABLE profesor(
  id_profesor SERIAL PRIMARY KEY,
  nombre_profesor VARCHAR(40) NOT NULL,
  departamento VARCHAR(40) NOT NULL
);

-- tabla inscripcion
CREATE TABLE inscripcion(
  id_inscripcion SERIAL PRIMARY KEY,
  id_estudiante SERIAL,
  id_curso SERIAL,
  fecha_inscripcion DATE NOT NULL,
  FOREIGN KEY(id_estudiante) references estudiante(id_estudiante),
  FOREIGN KEY(id_curso) references curso(id_curso)
);

-- tabla enseña
CREATE TABLE ensenia (
  id_enseña SERIAL PRIMARY KEY,
  id_profesor SERIAL,
  id_curso SERIAL,
  FOREIGN KEY(id_profesor) references profesor(id_profesor),
  FOREIGN KEY(id_curso) references curso(id_curso)
);


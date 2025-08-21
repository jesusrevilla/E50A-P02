CREATE TABLE ESTUDIANTE (
  id_estudiante SERIAL PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  apellido VARCHAR(30) NOT NULL,
  fecha_nacimiento DATE NOT NULL
);

CREATE TABLE CURSO (
  id_curso  SERIAL PRIMARY KEY,
  nombre_curso VARCHAR(50) NOT NULL,
  creditos integer NOT NULL
);

CREATE TABLE PROFESOR (
  id_profesor   SERIAL PRIMARY KEY,
  nombre_profesor VARCHAR(30) NOT NULL,
  departamento varchar(30) NOT NULL
);

CREATE TABLE INSCRIPCION (
  id_estudiante integer NOT NULL, 
  id_curso integer NOT NULL, 
  fecha_inscripcion DATE NOT NULL,
  PRIMARY KEY (id_estudiante, id_curso), 
  FOREIGN KEY (id_estudiante) references ESTUDIANTE(id_estudiante),
  FOREIGN KEY (id_curso ) references CURSO(id_curso)
);

CREATE TABLE ENSEÑA (
  id_profesor   SERIAL NOT NULL,
  id_curso integer NOT NULL, 
  PRIMARY KEY (id_profesor, id_curso), 
  FOREIGN KEY (id_profesor ) references PROFESOR(id_profesor),
  FOREIGN KEY (id_curso ) references CURSO(id_curso)
);

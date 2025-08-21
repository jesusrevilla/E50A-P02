CREATE TABLE ESTUDIANTE (
  id_estudiante SERIAL PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  fecha_nacimiento DATE NOT NULL
); 

CREATE TABLE CURSO(
  id_curso SERIAL PRIMARY KEY,
  nombre_curso VARCHAR(50) NOT NULL,
  creditos INTEGER NOT NULL
);

CREATE TABLE PROFESOR(
  id_profesor SERIAL PRIMARY KEY,
  nombre_profesor VARCHAR(100) NOT NULL,
  departamento VARCHAR(50) NOT NULL
);

CREATE TABLE INSCRIPCION(
   id_estudiante INTEGER REFERENCES ESTUDIANTE(id_estudiante) NOT NULL,
   id_curso SERIAL REFERENCES CURSO(id_curso) NOT NULL,
   fecha_inscripcion DATE NOT NULL,
   PRIMARY KEY(id_estudiante, id_curso)
);

CREATE TABLE ENSEÑA(
  id_profesor INTEGER REFERENCES PROFESOR(id_profesor) NOT NULL,
  id_curso SERIAL REFERENCES CURSO(id_curso) NOT NULL,
  PRIMARY KEY(id_profesor,id_curso)
);




-- Estudiantes
CREATE TABLE ESTUDIANTE (
  id_estudiante SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  fecha_nacimiento DATE NOT NULL
);

-- Cursos
CREATE TABLE CURSO (
  id_curso SERIAL PRIMARY KEY,
  nombre_curso VARCHAR(200) NOT NULL,
  creditos INT NOT NULL CHECK (creditos > 0)
);

CREATE TABLE PROFESOR (
  id_profesor SERIAL PRIMARY KEY,
  nombre_profesor VARCHAR(150) NOT NULL,
  departamento VARCHAR(150) NOT NULL
);

CREATE TABLE INSCRIPCION (
  id_estudiante INT NOT NULL,
  id_curso INT NOT NULL,
  fecha_inscripcion DATE NOT NULL,
  PRIMARY KEY (id_estudiante, id_curso),
  FOREIGN KEY (id_estudiante) REFERENCES ESTUDIANTE(id_estudiante),
  FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);

-- Relación profesor-imparte-curso
CREATE TABLE ENSEÑA (
  id_profesor INT NOT NULL,
  id_curso INT NOT NULL,
  PRIMARY KEY (id_profesor, id_curso),
  FOREIGN KEY (id_profesor) REFERENCES PROFESOR(id_profesor),
  FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);
